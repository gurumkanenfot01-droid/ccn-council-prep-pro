-- Council Exams: students who have paid get their access code by typing their
-- name on the claim page (/#/claim). Safe to run again.
--   claimable    this student may get their code by typing their name (paid)
--   claimed_at   last time the code was shown on the claim page
--   claim_count  how many times it was shown (more than 1 = check it was the right person)
set lock_timeout = '10s';

alter table public.exam_candidates add column if not exists claimable boolean not null default false;
alter table public.exam_candidates add column if not exists claimed_at timestamptz;
alter table public.exam_candidates add column if not exists claim_count integer not null default 0;

-- Name → its words: upper case, letters only ("Joshua-Eweto Lois" → {JOSHUA, EWETO, LOIS}).
create or replace function public.exam__name_words(p_name text) returns text[]
language sql immutable as $$
  select coalesce(array_agg(w), '{}') from (
    select w from regexp_split_to_table(upper(regexp_replace(coalesce(p_name, ''), '[^A-Za-z]+', ' ', 'g')), ' ') w
    where w <> '') x
$$;

-- Same word, allowing one typing mistake (one letter wrong, missing or extra)
-- in words of 4 letters or more: ISSAC = ISAAC, CLEMENTIN = CLEMENTINA.
create or replace function public.exam__word_near(a text, b text) returns boolean
language plpgsql immutable as $$
declare
  la int := length(a); lb int := length(b); i int := 1;
begin
  if a = b then return true; end if;
  if least(la, lb) < 4 or abs(la - lb) > 1 then return false; end if;
  while i <= least(la, lb) and substr(a, i, 1) = substr(b, i, 1) loop i := i + 1; end loop;
  if la = lb then return substr(a, i + 1) = substr(b, i + 1); end if;
  if la > lb then return substr(a, i + 1) = substr(b, i); end if;
  return substr(a, i) = substr(b, i + 1);
end; $$;

-- How many of the typed words are found in the student's name (any order).
create or replace function public.exam__words_found(typed text[], words text[]) returns integer
language sql immutable as $$
  select count(*)::int from unnest(typed) t where exists (select 1 from unnest(words) w where exam__word_near(t, w))
$$;

-- The claim page: the student types their name and gets their council code.
-- At least two words of their name must match, in any order; with three or
-- more words typed, one extra word (e.g. a name not on the list) is allowed.
-- Wrong names count towards the same 15-in-10-minutes limit as wrong codes.
create or replace function public.exam_claim_code(p_name text) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  typed text[];
  need int;
  pick uuid;
  hits int;
  c public.exam_candidates;
begin
  if exam__throttled() then return exam__err('too_many_attempts'); end if;
  typed := (select coalesce(array_agg(distinct w), '{}') from unnest(exam__name_words(left(p_name, 120))) w);
  if cardinality(typed) < 2 then return exam__err('need_full_name'); end if;
  need := case when cardinality(typed) >= 3 then cardinality(typed) - 1 else cardinality(typed) end;

  select count(*), (array_agg(h.id))[1] into hits, pick
  from (select x.id, exam__words_found(typed, exam__name_words(x.full_name)) as found
        from exam_candidates x
        where x.specialty = 'council' and x.claimable and x.active and not x.name_pending) h
  where h.found >= need
    and h.found = (select max(exam__words_found(typed, exam__name_words(y.full_name)))
                   from exam_candidates y
                   where y.specialty = 'council' and y.claimable and y.active and not y.name_pending);

  if coalesce(hits, 0) = 0 then
    insert into exam_login_attempts(ip, ok) values (exam__client_ip(), false);
    return exam__err('not_found');
  end if;
  if hits > 1 then return exam__err('ambiguous'); end if;

  update exam_candidates set claimed_at = now(), claim_count = claim_count + 1
  where id = pick
  returning * into c;
  insert into exam_login_attempts(ip, ok) values (exam__client_ip(), true);
  return jsonb_build_object('code', c.access_code, 'name', c.full_name);
end; $$;
revoke all on function public.exam_claim_code(text) from public;
grant execute on function public.exam_claim_code(text) to anon, authenticated;
revoke all on function public.exam__name_words(text), public.exam__word_near(text, text), public.exam__words_found(text[], text[]) from public;

-- The students who have paid (class list, November 2026). A student who
-- already has a council code keeps it and is marked as paid; anyone else gets
-- a new code with full access. Running this again adds nobody twice.
do $$
declare
  paid text[] := array[
    'ABISABO OYOJI', 'AGAYO VIVIAN', 'AHMED AISHA', 'AKOR MAXIMUS', 'AWOKSON SAUL GILBERT',
    'BLESSING JERRY', 'DABOK CLEMENTINA MOENMI', 'EDURA DOMINION CLETUS', 'EIMUEN CHRISTOPHER',
    'ENDE ANNA', 'JOHN JENNIFER', 'JOSHUA-EWETO LOIS', 'KASANG KEVIN JOY', 'KWASAU PHILIP JADACKSON',
    'LERAMO STANLEY', 'MALLAN SAMUEL ALFRED', 'MALLE MERCY ASHEADZI', 'MARKUS MURNA', 'NANRET HASEL',
    'ISSAC NUHU PATE', 'PYELSHAK GODWIN PANJI', 'SHADRACK JANE', 'VIRGINIA IDOGBE LOVETH',
    'YAKUBU NERAT SYLVIA', 'BOT ETEK JERRY', 'ANANG FRANCIS', 'JESSICA ILIYA', 'JANET ILIYA',
    'SADIYA SULEIMAN'];
  n text;
  w text[];
  ids uuid[];
  code text;
  alphabet constant text := 'ABCDEFGHJKMNPQRSTUVWXYZ23456789';
  marked int := 0;
  added int := 0;
begin
  foreach n in array paid loop
    w := exam__name_words(n);
    -- An existing council student with the same name: every word of the shorter
    -- name is in the longer one, in any order ("Kasang Kevin" = "KASANG KEVIN JOY").
    select array_agg(x.id) into ids from exam_candidates x
    where x.specialty = 'council' and not x.name_pending
      and cardinality(exam__name_words(x.full_name)) >= 2
      and (exam__words_found(w, exam__name_words(x.full_name)) = cardinality(w)
        or exam__words_found(exam__name_words(x.full_name), w) = cardinality(exam__name_words(x.full_name)));
    if cardinality(ids) >= 1 then
      update exam_candidates set claimable = true where id = any(ids) and not claimable;
      if found then marked := marked + 1; end if;
    else
      loop
        code := (select string_agg(substr(alphabet, 1 + floor(random() * length(alphabet))::int, 1), '')
                 from generate_series(1, 8));
        exit when not exists (select 1 from exam_candidates where access_code = code);
      end loop;
      insert into exam_candidates(full_name, access_code, specialty, full_access, batch, claimable)
      values (initcap(lower(n)), code, 'council', true, 'Council – paid', true);
      added := added + 1;
    end if;
  end loop;
  raise notice 'council paid list: % new codes, % existing codes marked as paid', added, marked;
end $$;

select 'council claim by name' as item,
  (select count(*) from public.exam_candidates where specialty = 'council' and claimable and active)::text || ' paid students can claim' as value;
