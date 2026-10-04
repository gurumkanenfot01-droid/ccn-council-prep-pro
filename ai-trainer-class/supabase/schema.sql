-- AI Trainer Class: everything the app needs in Supabase.
--
-- How to use: Supabase dashboard -> SQL Editor -> New query -> paste this
-- whole file -> Run. It is safe to run again (it only adds what is missing).
--
-- After you create your own account in the app, make yourself the teacher
-- with the last block at the bottom of this file (teacher.sql).

-- ============================================================ profiles
create table if not exists public.profiles (
  id uuid primary key references auth.users on delete cascade,
  name text not null default '',
  email text,
  city text default '',
  goal text default '',
  daily_goal int default 10,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- A profile is made automatically when someone signs up.
create or replace function public.handle_new_user() returns trigger
language plpgsql security definer set search_path = public as $$
begin
  insert into public.profiles (id, name, email)
  values (new.id, coalesce(new.raw_user_meta_data->>'name', ''), new.email)
  on conflict (id) do nothing;
  return new;
end $$;
drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created after insert on auth.users
  for each row execute function public.handle_new_user();

-- ============================================================ teachers
-- Only rows added from this SQL editor make someone a teacher; the app
-- cannot add or remove teachers.
create table if not exists public.teachers (
  user_id uuid primary key references auth.users on delete cascade,
  created_at timestamptz not null default now()
);

create or replace function public.is_teacher() returns boolean
language sql stable security definer set search_path = public as $$
  select exists (select 1 from public.teachers where user_id = auth.uid());
$$;

-- ============================================================ progress
-- One row per learner. "data" holds the whole saved progress; the numbers
-- next to it are copies for the leaderboard and the teacher dashboard.
create table if not exists public.progress (
  user_id uuid primary key references auth.users on delete cascade,
  data jsonb not null default '{}'::jsonb,
  xp int not null default 0,
  tasks_done int not null default 0,
  lessons_done int not null default 0,
  streak int not null default 0,
  week_count int not null default 0,
  last_active date,
  updated_at timestamptz not null default now()
);

-- ============================================================ announcements
create table if not exists public.announcements (
  id bigint generated always as identity primary key,
  title text not null,
  body text not null default '',
  created_at timestamptz not null default now(),
  created_by uuid default auth.uid() references auth.users on delete set null
);

-- ============================================================ assignments
create table if not exists public.submissions (
  id bigint generated always as identity primary key,
  user_id uuid not null default auth.uid() references auth.users on delete cascade,
  day int not null,
  title text not null default '',
  answer text not null default '',
  file_path text,
  file_name text,
  status text not null default 'submitted' check (status in ('submitted', 'marked')),
  score int check (score between 0 and 100),
  feedback text,
  created_at timestamptz not null default now(),
  marked_at timestamptz
);
create index if not exists submissions_user_idx on public.submissions (user_id);

-- ============================================================ days added from the app
create table if not exists public.days (
  day int primary key,
  info jsonb not null,
  data jsonb not null,
  docs jsonb not null default '{}'::jsonb,
  published boolean not null default true,
  updated_at timestamptz not null default now()
);

-- ============================================================ class leaderboard
-- Shows only first names and scores, and only to signed-in learners.
create or replace function public.class_leaderboard()
returns table (name text, xp int, streak int, tasks_done int, week_count int, is_me boolean)
language sql stable security definer set search_path = public as $$
  select
    coalesce(nullif(split_part(trim(p.name), ' ', 1), ''), 'Learner'),
    g.xp,
    case when g.last_active >= current_date - 1 then g.streak else 0 end,
    g.tasks_done,
    case when g.last_active >= current_date - 6 then g.week_count else 0 end,
    g.user_id = auth.uid()
  from public.progress g
  join public.profiles p on p.id = g.user_id
  where auth.uid() is not null
  order by g.xp desc
  limit 200;
$$;

-- ============================================================ security rules (RLS)
alter table public.profiles enable row level security;
alter table public.teachers enable row level security;
alter table public.progress enable row level security;
alter table public.announcements enable row level security;
alter table public.submissions enable row level security;
alter table public.days enable row level security;

drop policy if exists "profiles: read own or teacher" on public.profiles;
create policy "profiles: read own or teacher" on public.profiles for select to authenticated
  using (id = auth.uid() or public.is_teacher());
drop policy if exists "profiles: add own" on public.profiles;
create policy "profiles: add own" on public.profiles for insert to authenticated with check (id = auth.uid());
drop policy if exists "profiles: change own" on public.profiles;
create policy "profiles: change own" on public.profiles for update to authenticated
  using (id = auth.uid()) with check (id = auth.uid());

drop policy if exists "teachers: see own row" on public.teachers;
create policy "teachers: see own row" on public.teachers for select to authenticated using (user_id = auth.uid());

drop policy if exists "progress: read own or teacher" on public.progress;
create policy "progress: read own or teacher" on public.progress for select to authenticated
  using (user_id = auth.uid() or public.is_teacher());
drop policy if exists "progress: add own" on public.progress;
create policy "progress: add own" on public.progress for insert to authenticated with check (user_id = auth.uid());
drop policy if exists "progress: change own" on public.progress;
create policy "progress: change own" on public.progress for update to authenticated
  using (user_id = auth.uid()) with check (user_id = auth.uid());

drop policy if exists "announcements: everyone reads" on public.announcements;
create policy "announcements: everyone reads" on public.announcements for select to anon, authenticated using (true);
drop policy if exists "announcements: teacher adds" on public.announcements;
create policy "announcements: teacher adds" on public.announcements for insert to authenticated with check (public.is_teacher());
drop policy if exists "announcements: teacher changes" on public.announcements;
create policy "announcements: teacher changes" on public.announcements for update to authenticated using (public.is_teacher());
drop policy if exists "announcements: teacher deletes" on public.announcements;
create policy "announcements: teacher deletes" on public.announcements for delete to authenticated using (public.is_teacher());

drop policy if exists "submissions: read own or teacher" on public.submissions;
create policy "submissions: read own or teacher" on public.submissions for select to authenticated
  using (user_id = auth.uid() or public.is_teacher());
drop policy if exists "submissions: hand in own" on public.submissions;
create policy "submissions: hand in own" on public.submissions for insert to authenticated
  with check (user_id = auth.uid() and status = 'submitted' and score is null and feedback is null);
drop policy if exists "submissions: teacher marks" on public.submissions;
create policy "submissions: teacher marks" on public.submissions for update to authenticated using (public.is_teacher());
drop policy if exists "submissions: delete unmarked own" on public.submissions;
create policy "submissions: delete unmarked own" on public.submissions for delete to authenticated
  using ((user_id = auth.uid() and status = 'submitted') or public.is_teacher());

drop policy if exists "days: everyone reads published" on public.days;
create policy "days: everyone reads published" on public.days for select to anon, authenticated
  using (published or public.is_teacher());
drop policy if exists "days: teacher adds" on public.days;
create policy "days: teacher adds" on public.days for insert to authenticated with check (public.is_teacher());
drop policy if exists "days: teacher changes" on public.days;
create policy "days: teacher changes" on public.days for update to authenticated using (public.is_teacher());
drop policy if exists "days: teacher deletes" on public.days;
create policy "days: teacher deletes" on public.days for delete to authenticated using (public.is_teacher());

-- Let the app reach the tables (the security rules above still decide which rows).
-- Needed when "Automatically expose new tables" was switched off for the project.
grant usage on schema public to anon, authenticated;
grant select, insert, update, delete on public.profiles, public.progress, public.announcements, public.submissions, public.days to authenticated;
grant select on public.teachers to authenticated;
grant select on public.announcements, public.days to anon;
grant usage, select on all sequences in schema public to authenticated;

grant execute on function public.is_teacher() to anon, authenticated;
grant execute on function public.class_leaderboard() to authenticated;

-- ============================================================ file storage
-- "content": pictures of days added from the app (anyone can view).
-- "submissions": files learners hand in (only the learner and teachers can open).
insert into storage.buckets (id, name, public) values ('content', 'content', true)
  on conflict (id) do nothing;
insert into storage.buckets (id, name, public, file_size_limit) values ('submissions', 'submissions', false, 10485760)
  on conflict (id) do nothing;

drop policy if exists "content: anyone views" on storage.objects;
create policy "content: anyone views" on storage.objects for select to anon, authenticated
  using (bucket_id = 'content');
drop policy if exists "content: teacher uploads" on storage.objects;
create policy "content: teacher uploads" on storage.objects for insert to authenticated
  with check (bucket_id = 'content' and public.is_teacher());
drop policy if exists "content: teacher replaces" on storage.objects;
create policy "content: teacher replaces" on storage.objects for update to authenticated
  using (bucket_id = 'content' and public.is_teacher());

drop policy if exists "submissions: learner uploads own" on storage.objects;
create policy "submissions: learner uploads own" on storage.objects for insert to authenticated
  with check (bucket_id = 'submissions' and (storage.foldername(name))[1] = auth.uid()::text);
drop policy if exists "submissions: learner or teacher opens" on storage.objects;
create policy "submissions: learner or teacher opens" on storage.objects for select to authenticated
  using (bucket_id = 'submissions' and ((storage.foldername(name))[1] = auth.uid()::text or public.is_teacher()));
