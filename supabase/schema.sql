-- CCN Council Prep Pro — Supabase schema
-- Run this once in the Supabase SQL Editor (Project -> SQL Editor -> New query),
-- top to bottom, on a fresh project.

create extension if not exists pgcrypto;

-- ===================== PROFILES =====================
create table public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  email text not null,
  name text default '',
  hospital text default '',
  school text default '',
  level text default '',
  photo_url text,
  role text not null default 'user' check (role in ('user','admin')),
  disabled boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create or replace function public.handle_new_user()
returns trigger language plpgsql security definer set search_path = public as $$
begin
  insert into public.profiles (id, email) values (new.id, new.email);
  return new;
end; $$;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();

create or replace function public.is_admin()
returns boolean language sql security definer set search_path = public stable as $$
  select coalesce(
    (select role = 'admin' and not disabled from public.profiles where id = auth.uid()),
    false
  );
$$;

create or replace function public.prevent_role_escalation()
returns trigger language plpgsql security definer set search_path = public as $$
begin
  if not public.is_admin() then
    if new.role is distinct from old.role or new.disabled is distinct from old.disabled then
      raise exception 'Only admins can change role or disabled status';
    end if;
  end if;
  return new;
end; $$;

create trigger trg_prevent_role_escalation
  before update on public.profiles
  for each row execute function public.prevent_role_escalation();

alter table public.profiles enable row level security;
create policy "profiles_select_own_or_admin" on public.profiles
  for select using (id = auth.uid() or public.is_admin());
create policy "profiles_update_own" on public.profiles
  for update using (id = auth.uid()) with check (id = auth.uid());
create policy "profiles_admin_update" on public.profiles
  for update using (public.is_admin());

-- ===================== QUESTIONS =====================
create table public.questions (
  id integer primary key,
  topic text not null,
  source text,
  q text not null,
  opts jsonb not null,
  ans_idx smallint not null,
  exp text,
  category text,
  category_icon text,
  is_active boolean not null default true,
  created_by uuid references public.profiles(id),
  updated_by uuid references public.profiles(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
alter table public.questions enable row level security;
create policy "questions_select_active" on public.questions
  for select using (auth.role() = 'authenticated' and is_active = true);
create policy "questions_admin_all" on public.questions
  for all using (public.is_admin()) with check (public.is_admin());

-- ===================== STUDY NOTES =====================
create table public.study_notes (
  id serial primary key,
  banner text not null unique,
  bullets jsonb not null,
  sort_order integer not null default 0
);
alter table public.study_notes enable row level security;
create policy "study_notes_select_all" on public.study_notes
  for select using (auth.role() = 'authenticated');
create policy "study_notes_admin_write" on public.study_notes
  for all using (public.is_admin()) with check (public.is_admin());

-- ===================== PER-USER DATA =====================
create table public.bookmarks (
  user_id uuid not null references public.profiles(id) on delete cascade,
  question_id integer not null references public.questions(id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (user_id, question_id)
);
alter table public.bookmarks enable row level security;
create policy "bookmarks_own" on public.bookmarks
  for all using (user_id = auth.uid()) with check (user_id = auth.uid());
create policy "bookmarks_admin_read" on public.bookmarks
  for select using (public.is_admin());
create policy "bookmarks_admin_delete" on public.bookmarks
  for delete using (public.is_admin());

create table public.wrong_bank (
  user_id uuid not null references public.profiles(id) on delete cascade,
  question_id integer not null references public.questions(id) on delete cascade,
  count integer not null default 1,
  last_wrong_at timestamptz not null default now(),
  primary key (user_id, question_id)
);
alter table public.wrong_bank enable row level security;
create policy "wrong_bank_own" on public.wrong_bank
  for all using (user_id = auth.uid()) with check (user_id = auth.uid());
create policy "wrong_bank_admin_read" on public.wrong_bank
  for select using (public.is_admin());
create policy "wrong_bank_admin_delete" on public.wrong_bank
  for delete using (public.is_admin());

create table public.attempts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  taken_at timestamptz not null default now(),
  total integer not null,
  correct integer not null,
  pct numeric(5,2) not null,
  time_sec integer not null,
  category text,
  by_source jsonb not null default '{}'::jsonb
);
create index attempts_user_idx on public.attempts(user_id, taken_at desc);
alter table public.attempts enable row level security;
create policy "attempts_own_select" on public.attempts for select using (user_id = auth.uid());
create policy "attempts_own_insert" on public.attempts for insert with check (user_id = auth.uid());
create policy "attempts_admin_select" on public.attempts for select using (public.is_admin());
create policy "attempts_admin_delete" on public.attempts for delete using (public.is_admin());

create table public.in_progress (
  user_id uuid primary key references public.profiles(id) on delete cascade,
  snapshot jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.in_progress enable row level security;
create policy "in_progress_own" on public.in_progress
  for all using (user_id = auth.uid()) with check (user_id = auth.uid());

create table public.daily_challenge_results (
  user_id uuid not null references public.profiles(id) on delete cascade,
  day date not null,
  pct numeric(5,2) not null,
  taken_at timestamptz not null default now(),
  primary key (user_id, day)
);
alter table public.daily_challenge_results enable row level security;
create policy "daily_own" on public.daily_challenge_results
  for all using (user_id = auth.uid()) with check (user_id = auth.uid());

create table public.note_bookmarks (
  user_id uuid not null references public.profiles(id) on delete cascade,
  banner text not null,
  primary key (user_id, banner)
);
alter table public.note_bookmarks enable row level security;
create policy "note_bookmarks_own" on public.note_bookmarks
  for all using (user_id = auth.uid()) with check (user_id = auth.uid());

create table public.note_highlights (
  user_id uuid not null references public.profiles(id) on delete cascade,
  note_key text not null,
  primary key (user_id, note_key)
);
alter table public.note_highlights enable row level security;
create policy "note_highlights_own" on public.note_highlights
  for all using (user_id = auth.uid()) with check (user_id = auth.uid());

-- ===================== LEADERBOARD =====================
create table public.leaderboard_entries (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  attempt_id uuid references public.attempts(id) on delete set null,
  name text not null,
  pct numeric(5,2) not null,
  correct integer not null,
  total integer not null,
  created_at timestamptz not null default now()
);
create index leaderboard_pct_idx on public.leaderboard_entries(pct desc);
alter table public.leaderboard_entries enable row level security;
create policy "leaderboard_select_all" on public.leaderboard_entries
  for select using (auth.role() = 'authenticated');
create policy "leaderboard_insert_own" on public.leaderboard_entries
  for insert with check (user_id = auth.uid());
create policy "leaderboard_admin_delete" on public.leaderboard_entries
  for delete using (public.is_admin());

-- ===================== STORAGE (profile photos) =====================
insert into storage.buckets (id, name, public) values ('avatars', 'avatars', true)
  on conflict (id) do nothing;
create policy "avatar_public_read" on storage.objects for select using (bucket_id = 'avatars');
create policy "avatar_own_write" on storage.objects for insert
  with check (bucket_id = 'avatars' and (storage.foldername(name))[1] = auth.uid()::text);
create policy "avatar_own_update" on storage.objects for update
  using (bucket_id = 'avatars' and (storage.foldername(name))[1] = auth.uid()::text);
create policy "avatar_own_delete" on storage.objects for delete
  using (bucket_id = 'avatars' and (storage.foldername(name))[1] = auth.uid()::text);

-- ===================== ADMIN RESULTS VIEW =====================
create or replace view public.admin_user_stats as
select
  p.id as user_id,
  p.name,
  p.email,
  p.role,
  p.disabled,
  count(a.id) as attempt_count,
  round(avg(a.pct)::numeric, 1) as avg_pct,
  max(a.taken_at) as last_active
from public.profiles p
left join public.attempts a on a.user_id = p.id
group by p.id;

alter view public.admin_user_stats set (security_invoker = true);
