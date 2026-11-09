-- Council Exams: each student gets a share of the questions, by what they paid.
--   question_share   percent of the questions a full-paying student gets (null = all)
--   amount_paid      naira, for the administrator's reference
-- 20,000 or more → 100% · 15,000 → 80% · 7,000–10,000 → 50% · 5,000 → 25%
-- The six added later (Kasang, Pate, Panji, Etek, Clementina, Mercy) → 80%.
-- A number set for one exam in the student's Rules still wins over the share.
-- Mock exam students have no share, so nothing changes for them. Safe to run again.
set lock_timeout = '10s';

alter table public.exam_candidates add column if not exists question_share integer
  check (question_share is null or question_share between 1 and 100);
alter table public.exam_candidates add column if not exists amount_paid integer;

-- How many questions this student gets, and their time.
create or replace function public.exam__plan(e public.exam_exams, p_candidate uuid) returns table (n integer, minutes integer)
language sql stable security definer set search_path = public as $$
  select least(cardinality(e.question_ids),
               coalesce(l.question_count,
                        greatest(1, ceil(coalesce(e.questions_per_student, cardinality(e.question_ids))
                                         * coalesce(c.question_share, 100) / 100.0)::int))),
         coalesce(l.duration_minutes, e.duration_minutes)
  from (select 1) one
  left join exam_question_limits l on l.exam_id = e.id and l.candidate_id = p_candidate
  left join exam_candidates c on c.id = p_candidate
$$;

-- The student's own share, shown on their exam list.
create or replace function public.exam_my_plan(p_code text) returns jsonb
language sql stable security definer set search_path = public as $$
  select coalesce((select jsonb_build_object('share', coalesce(question_share, 100), 'specialty', specialty)
                   from exam_candidates where access_code = upper(trim(coalesce(p_code, ''))) and active), '{}'::jsonb)
$$;
revoke all on function public.exam_my_plan(text) from public;
grant execute on function public.exam_my_plan(text) to anon, authenticated;

-- The class list (set once; later changes are made on the admin page).
do $$
declare
  r record;
  w text[];
  n int := 0;
begin
  if exists (select 1 from exam_candidates where specialty = 'council' and question_share is not null) then
    raise notice 'question shares already set — not changing them';
    return;
  end if;
  for r in select * from (values
    ('ABISABO OYOJI', 20000, 100), ('AGAYO VIVIAN', 20000, 100), ('AHMED AISHA', 10000, 50),
    ('AKOR MAXIMUS', 20000, 100), ('AWOKSON SAUL GILBERT', 20000, 100), ('BLESSING JERRY', 10000, 50),
    ('EDURA DOMINION CLETUS', 5000, 25), ('EIMUEN CHRISTOPHER', 10000, 50), ('ENDE ANNA', 90000, 100),
    ('JOHN JENNIFER', 20000, 100), ('JOSHUA-EWETO LOIS', 20000, 100), ('KWASAU PHILIP JADACKSON', 20000, 100),
    ('LERAMO STANLEY', 20000, 100), ('MALLAN SAMUEL ALFRED', 20000, 100), ('MARKUS MURNA', 20000, 100),
    ('NANRET HASEL', 20000, 100), ('SHADRACK JANE', 20000, 100), ('VIRGINIA IDOGBE LOVETH', 20000, 100),
    ('YAKUBU NERAT SYLVIA', 15000, 80), ('ANANG FRANCIS', 10000, 50), ('JESSICA ILIYA', 15000, 80),
    ('JANET ILIYA', 15000, 80), ('SADIYA SULEIMAN', 10000, 50),
    ('KASANG KEVIN JOY', null, 80), ('ISSAC NUHU PATE', null, 80), ('PYELSHAK GODWIN PANJI', null, 80),
    ('BOT ETEK JERRY', null, 80), ('DABOK CLEMENTINA MOENMI', null, 80), ('MALLE MERCY ASHEADZI', null, 80)
  ) v(name, amount, share) loop
    w := exam__name_words(r.name);
    update exam_candidates x set question_share = r.share, amount_paid = r.amount
    where x.specialty = 'council' and not x.name_pending
      and cardinality(exam__name_words(x.full_name)) >= 2
      and (exam__words_found(w, exam__name_words(x.full_name)) = cardinality(w)
        or exam__words_found(exam__name_words(x.full_name), w) = cardinality(exam__name_words(x.full_name)));
    if found then n := n + 1; else raise notice 'not found: %', r.name; end if;
  end loop;
  raise notice 'question shares set for % of 29 students', n;
end $$;

select 'council question share' as item,
  (select string_agg(s || '%: ' || c, ', ' order by s desc) from
    (select coalesce(question_share, 100) s, count(*) c from public.exam_candidates
     where specialty = 'council' and claimable group by 1) t) as value;
