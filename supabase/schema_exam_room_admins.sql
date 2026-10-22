-- CCN Exam Room: Exam-Room-only administrators.
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- People listed in exam_admins can use the Exam Room admin page (students, exams, monitoring,
-- results) but are NOT admins of the main CCN Council Prep Pro app. Full app admins keep access too.
--
-- To add Exam Room admins, the person must first have an account in the main app, then run:
--   insert into public.exam_admins (user_id)
--   select id from public.profiles where lower(email) in ('first.person@gmail.com', 'second.person@gmail.com')
--   on conflict do nothing;
-- To remove one:
--   delete from public.exam_admins where user_id = (select id from public.profiles where lower(email) = 'first.person@gmail.com');

create table if not exists public.exam_admins (
  user_id uuid primary key references public.profiles(id) on delete cascade,
  added_at timestamptz not null default now()
);
alter table public.exam_admins enable row level security;
drop policy if exists exam_admins_admin_all on public.exam_admins;
create policy exam_admins_admin_all on public.exam_admins
  for all using (public.is_admin()) with check (public.is_admin());
drop policy if exists exam_admins_select_own on public.exam_admins;
create policy exam_admins_select_own on public.exam_admins
  for select using (user_id = auth.uid());
grant select, insert, update, delete on public.exam_admins to authenticated;

-- True for full app admins and for enabled Exam Room admins.
create or replace function public.exam_is_admin() returns boolean
language sql security definer set search_path = public stable as $$
  select public.is_admin() or exists (
    select 1 from public.exam_admins a join public.profiles p on p.id = a.user_id
    where a.user_id = auth.uid() and not p.disabled
  );
$$;
grant execute on function public.exam_is_admin() to authenticated;

-- Exam Room tables: let Exam Room admins manage them.
do $$
declare t text;
begin
  foreach t in array array['exam_candidates','exam_exams','exam_allowed','exam_question_limits','exam_sessions','exam_answers','exam_events','exam_login_attempts'] loop
    if to_regclass('public.' || t) is not null then
      execute format('drop policy if exists %I on public.%I', t || '_admin_all', t);
      execute format('create policy %I on public.%I for all using (public.exam_is_admin()) with check (public.exam_is_admin())', t || '_admin_all', t);
    end if;
  end loop;
end $$;

-- Exam Room admin actions (allow retake, extra time, manual warning): accept Exam Room admins.
do $$
declare f record; src text;
begin
  for f in select p.oid from pg_proc p join pg_namespace n on n.oid = p.pronamespace
           where n.nspname = 'public' and p.proname like 'exam\_admin\_%' loop
    src := pg_get_functiondef(f.oid);
    if position('public.is_admin()' in src) > 0 then
      execute replace(src, 'public.is_admin()', 'public.exam_is_admin()');
    end if;
  end loop;
end $$;

-- Let Exam Room admins see the question bank when building exams.
drop policy if exists questions_select_exam_admin on public.questions;
create policy questions_select_exam_admin on public.questions
  for select using (public.exam_is_admin());
