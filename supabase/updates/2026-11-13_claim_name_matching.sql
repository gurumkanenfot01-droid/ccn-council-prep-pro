-- Claim page: accept names written almost any way. Safe to run again.
--   * any order, any capitals, extra spaces, dots, commas and hyphens ignored
--   * titles (Mr, Mrs, Miss, Dr, Nurse, …) and single initials ("K.") ignored
--   * spelling mistakes: 1 letter in names of 4–6 letters, 2 letters in longer
--     names (a wrong, missing, extra or swapped letter each count as one)
--   * short forms: "Chris" for Christopher, "Joshua" or "Eweto" for Joshua-Eweto
--   * joined names: "KevinJoy" or "JoshuaEweto"
--   * extra names not on the list are fine, as long as at least two names
--     match and more names match than don't
-- Two names are still needed, so a first name alone (which classmates may
-- share) never gives out someone's code.
set lock_timeout = '10s';

-- Edit distance with swapped letters counted as one (names are short).
create or replace function public.exam__name_dist(a text, b text) returns integer
language plpgsql immutable as $$
declare
  la int := length(a); lb int := length(b);
  d int[]; i int; j int; cost int; w int := lb + 1;
begin
  if a = b then return 0; end if;
  if la = 0 or lb = 0 then return greatest(la, lb); end if;
  d := array_fill(0, array[(la + 1) * (lb + 1)]);
  for i in 0..la loop d[i * w + 1] := i; end loop;
  for j in 0..lb loop d[j + 1] := j; end loop;
  for i in 1..la loop
    for j in 1..lb loop
      cost := case when substr(a, i, 1) = substr(b, j, 1) then 0 else 1 end;
      d[i * w + j + 1] := least(d[(i - 1) * w + j + 1] + 1, d[i * w + j] + 1, d[(i - 1) * w + j] + cost);
      if i > 1 and j > 1 and substr(a, i, 1) = substr(b, j - 1, 1) and substr(a, i - 1, 1) = substr(b, j, 1) then
        d[i * w + j + 1] := least(d[i * w + j + 1], d[(i - 2) * w + j - 1] + 1);
      end if;
    end loop;
  end loop;
  return d[la * w + lb + 1];
end; $$;

-- One typed word against one name on the list.
create or replace function public.exam__name_word_ok(t text, w text) returns boolean
language sql immutable as $$
  select t = w
      or (least(length(t), length(w)) >= 4
          and exam__name_dist(t, w) <= case when least(length(t), length(w)) >= 7 then 2 else 1 end)
      or (length(t) >= 4 and length(w) > length(t) and (left(w, length(t)) = t or right(w, length(t)) = t))
$$;

-- Words a student typed, cleaned: no titles, no single letters.
create or replace function public.exam__typed_words(p_name text) returns text[]
language sql immutable as $$
  select coalesce(array_agg(distinct w), '{}') from unnest(exam__name_words(left(p_name, 120))) w
  where length(w) >= 2
    and w not in ('MR', 'MRS', 'MISS', 'MS', 'DR', 'NURSE', 'RN', 'SR', 'SISTER', 'BRO', 'BROTHER', 'MASTER', 'MADAM', 'MAM', 'SIR', 'NAME', 'MY', 'IS', 'I', 'AM')
$$;

-- How many typed words match the student's name (also two names written as one).
create or replace function public.exam__claim_found(typed text[], words text[]) returns integer
language sql immutable as $$
  select count(*)::int from unnest(typed) t
  where exists (select 1 from unnest(words) w where exam__name_word_ok(t, w))
     or exists (select 1 from unnest(words) with ordinality a(w1, i), unnest(words) with ordinality b(w2, j)
                where i <> j and length(t) >= 6 and exam__name_dist(t, w1 || w2) <= 1)
$$;

create or replace function public.exam_claim_code(p_name text) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  typed text[];
  need int;
  best int;
  pick uuid;
  hits int;
  c public.exam_candidates;
begin
  if exam__throttled() then return exam__err('too_many_attempts'); end if;
  typed := exam__typed_words(p_name);
  if cardinality(typed) < 2 then return exam__err('need_full_name'); end if;
  need := greatest(2, cardinality(typed) / 2 + 1);

  select max(f) into best from (
    select exam__claim_found(typed, exam__name_words(x.full_name)) f from exam_candidates x
    where x.specialty = 'council' and x.claimable and x.active and not x.name_pending) m;
  if coalesce(best, 0) < need then
    insert into exam_login_attempts(ip, ok) values (exam__client_ip(), false);
    return exam__err('not_found');
  end if;
  select count(*), (array_agg(x.id))[1] into hits, pick from exam_candidates x
  where x.specialty = 'council' and x.claimable and x.active and not x.name_pending
    and exam__claim_found(typed, exam__name_words(x.full_name)) = best;
  if hits > 1 then return exam__err('ambiguous'); end if;

  update exam_candidates set claimed_at = now(), claim_count = claim_count + 1
  where id = pick and claimed_at is null
  returning * into c;
  if c.id is null then
    insert into exam_login_attempts(ip, ok) values (exam__client_ip(), false);
    return exam__err('already_claimed');
  end if;
  insert into exam_login_attempts(ip, ok) values (exam__client_ip(), true);
  return jsonb_build_object('code', c.access_code, 'name', c.full_name);
end; $$;
revoke all on function public.exam_claim_code(text) from public;
grant execute on function public.exam_claim_code(text) to anon, authenticated;
revoke all on function public.exam__name_dist(text, text), public.exam__name_word_ok(text, text),
  public.exam__typed_words(text), public.exam__claim_found(text[], text[]) from public;

select 'claim page name matching' as item, 'ready' as value;
