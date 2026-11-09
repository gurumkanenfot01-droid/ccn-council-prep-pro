-- Council: a message shown at the top of every council student's exams page
-- (e.g. when the exams are open). The administrator edits it on the Students
-- page. Safe to run again.
set lock_timeout = '10s';

alter table public.exam_settings add column if not exists council_notice text not null
  default 'Your exams will be available from 11:00 pm to 2:00 am.';
insert into public.exam_settings(id) values (1) on conflict (id) do nothing;

-- The student's share of the questions, plus the message (for council students only).
create or replace function public.exam_my_plan(p_code text) returns jsonb
language sql stable security definer set search_path = public as $$
  select coalesce((select jsonb_build_object(
                     'share', coalesce(c.question_share, 100), 'specialty', c.specialty,
                     'notice', case when c.specialty = 'council' then (select st.council_notice from exam_settings st where st.id = 1) end)
                   from exam_candidates c where c.access_code = upper(trim(coalesce(p_code, ''))) and c.active), '{}'::jsonb)
$$;
revoke all on function public.exam_my_plan(text) from public;
grant execute on function public.exam_my_plan(text) to anon, authenticated;

select 'council notice' as item, (select council_notice from public.exam_settings where id = 1) as value;
