-- Council Exams section + per-student security. Safe to run again.
--
-- * Council Exams: a new section (specialty 'council') with three exams — Paper 1, Paper 2 and OSCE.
--   They start CLOSED with no questions; they are opened when their questions are loaded.
-- * Per-student security (set on the admin Students page):
--     security_level         relaxed | normal | strict | maximum   (null = use the exam's setting)
--     max_warnings_override  this student's own warning limit      (null = use the exam's limit)
--     app_only               this student must use the Android/Windows exam app
--   The warning limit is enforced by the database (trigger below), not only by the page.
-- * Exams may now also use the new 'maximum' strictness.
set lock_timeout = '10s';

alter table public.exam_candidates add column if not exists security_level text;
alter table public.exam_candidates add column if not exists max_warnings_override integer;
alter table public.exam_candidates add column if not exists app_only boolean not null default false;

alter table public.exam_candidates drop constraint if exists exam_candidates_security_level_check;
alter table public.exam_candidates add constraint exam_candidates_security_level_check
  check (security_level is null or security_level in ('relaxed', 'normal', 'strict', 'maximum'));
alter table public.exam_candidates drop constraint if exists exam_candidates_max_warnings_override_check;
alter table public.exam_candidates add constraint exam_candidates_max_warnings_override_check
  check (max_warnings_override is null or max_warnings_override between 1 and 500);

-- Allow 'maximum' as an exam strictness (replaces whatever check exists on proctor_level).
do $$
declare r record;
begin
  for r in select conname from pg_constraint
           where conrelid = 'public.exam_exams'::regclass and contype = 'c'
             and pg_get_constraintdef(oid) ilike '%proctor_level%'
  loop
    execute format('alter table public.exam_exams drop constraint %I', r.conname);
  end loop;
end $$;
alter table public.exam_exams add constraint exam_exams_proctor_level_check
  check (proctor_level in ('relaxed', 'normal', 'strict', 'maximum'));

-- The student's own security settings, read by the exam page after login.
-- Same reply shape for any code, so it says nothing about whether a code exists.
create or replace function public.exam_my_security(p_code text) returns jsonb
language plpgsql stable security definer set search_path = public as $$
declare
  c public.exam_candidates;
begin
  select * into c from exam_candidates where access_code = upper(trim(coalesce(p_code, ''))) and active;
  return jsonb_build_object('level', c.security_level, 'max_warnings', c.max_warnings_override, 'app_only', coalesce(c.app_only, false));
end; $$;
revoke all on function public.exam_my_security(text) from public;
grant execute on function public.exam_my_security(text) to anon, authenticated;

-- A student's own warning limit: when their warnings reach it, the exam is submitted.
create or replace function public.exam__student_warn_limit() returns trigger
language plpgsql security definer set search_path = public as $$
declare
  lim integer;
begin
  select max_warnings_override into lim from exam_candidates where id = new.candidate_id;
  if lim is not null and new.warnings >= lim then
    perform exam__finish(new.id, 'auto_submitted', format('Reached this student''s limit of %s warnings', lim));
  end if;
  return null;
end; $$;
drop trigger if exists exam_sessions_student_warn_limit on public.exam_sessions;
create trigger exam_sessions_student_warn_limit
  after update of warnings on public.exam_sessions
  for each row when (new.warnings > old.warnings and new.status = 'in_progress')
  execute function public.exam__student_warn_limit();

-- Council Exams: Paper 1, Paper 2 and OSCE (closed until their questions are loaded).
insert into public.exam_exams (title, instructions, starts_at, ends_at, duration_minutes, question_ids,
  show_answers, show_score, max_warnings, shuffle, closed, all_candidates, attempts_allowed, proctor_level, specialty)
select t.title, t.instructions, now(), now() + interval '90 days', t.minutes, '{}',
       false, true, 10, true, true, true, 1, 'strict', 'council'
from (values
  ('Council Exam — Paper 1', 'Council examination, Paper 1. Answer every question. You cannot go back to a question once you move on.', 180),
  ('Council Exam — Paper 2', 'Council examination, Paper 2. Answer every question. You cannot go back to a question once you move on.', 180),
  ('Council Exam — OSCE', 'Council examination, OSCE (Objective Structured Clinical Examination). Read each station carefully before you answer.', 120)
) as t(title, instructions, minutes)
where not exists (select 1 from public.exam_exams e where e.specialty = 'council' and e.title = t.title);

select 'council exams' as item, count(*)::text as value from public.exam_exams where specialty = 'council'
union all
select 'student security columns', count(*)::text from information_schema.columns
 where table_schema = 'public' and table_name = 'exam_candidates' and column_name in ('security_level', 'max_warnings_override', 'app_only');
