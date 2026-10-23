-- CCN Exam Room — proctored exams with access codes and face verification
-- Run this once in the Supabase SQL Editor (same project as CCN Council Prep Pro).
-- Safe to re-run: every object is created with IF NOT EXISTS / OR REPLACE.
--
-- Security model
-- --------------
-- * Students never get a Supabase account. They use a personal access code.
--   Every student action goes through the SECURITY DEFINER functions below,
--   which check the code / session token, the exam's time window and rules
--   ON THE SERVER. The website can be tampered with; these checks can't.
-- * Students get no direct table access at all (RLS on, no student policies).
--   Admins (profiles.role = 'admin', same as the CCN app) get full access.
-- * Questions are released one at a time, only while the exam is open, and
--   never before it starts. Correct answers are only revealed after the
--   student has locked in an answer (and only if the exam allows it).
-- * Face match: the browser turns the live face into 128 numbers (a face
--   descriptor). The registered descriptor never leaves the database; the
--   comparison happens here. Someone else's face can't match without the
--   real student in front of the camera.
-- * Evidence: a small photo is kept at registration, at the start, on every
--   violation and on every failed face match, so an admin can review it.

create extension if not exists pgcrypto;

-- ===================== TABLES =====================

create table if not exists public.exam_candidates (
  id uuid primary key default gen_random_uuid(),
  full_name text not null,
  access_code text not null unique,
  face_descriptor float8[],            -- never returned to the browser
  face_photo text,                     -- small JPEG (data URL) taken at registration
  face_status text not null default 'none'
    check (face_status in ('none', 'pending', 'approved', 'rejected')),
  enrolled_at timestamptz,
  active boolean not null default true,
  note text not null default '',
  created_at timestamptz not null default now()
);

create table if not exists public.exam_exams (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  instructions text not null default '',
  starts_at timestamptz not null,
  ends_at timestamptz not null,
  duration_minutes integer not null default 60 check (duration_minutes between 1 and 600),
  question_ids integer[] not null default '{}',
  per_question_seconds integer check (per_question_seconds is null or per_question_seconds between 10 and 3600),
  show_answers boolean not null default true,    -- reveal correct answer right after each answer
  show_score boolean not null default true,      -- show the score when the exam ends
  max_warnings integer not null default 3 check (max_warnings between 1 and 50),
  shuffle boolean not null default true,
  paused boolean not null default false,         -- admin can hide the questions mid-exam
  closed boolean not null default false,         -- admin can end the exam for everyone
  all_candidates boolean not null default true,  -- false = only students listed in exam_allowed
  attempts_allowed integer not null default 1 check (attempts_allowed between 1 and 50),
  -- How strict the camera/microphone checks are: relaxed | normal | strict
  proctor_level text not null default 'relaxed' check (proctor_level in ('relaxed', 'normal', 'strict')),
  created_at timestamptz not null default now(),
  check (ends_at > starts_at)
);

create table if not exists public.exam_allowed (
  exam_id uuid not null references public.exam_exams(id) on delete cascade,
  candidate_id uuid not null references public.exam_candidates(id) on delete cascade,
  primary key (exam_id, candidate_id)
);

-- How many questions (and minutes) a particular student gets in an exam. Each
-- student draws their own random set of that size from the exam's question pool.
create table if not exists public.exam_question_limits (
  exam_id uuid not null references public.exam_exams(id) on delete cascade,
  candidate_id uuid not null references public.exam_candidates(id) on delete cascade,
  question_count integer not null check (question_count between 1 and 2000),
  duration_minutes integer check (duration_minutes is null or duration_minutes between 1 and 600),
  primary key (exam_id, candidate_id)
);

create table if not exists public.exam_sessions (
  id uuid primary key default gen_random_uuid(),
  exam_id uuid not null references public.exam_exams(id) on delete cascade,
  candidate_id uuid not null references public.exam_candidates(id) on delete cascade,
  token uuid not null unique default gen_random_uuid(),
  question_order integer[] not null,
  started_at timestamptz not null default now(),
  deadline timestamptz not null,
  status text not null default 'in_progress'
    check (status in ('in_progress', 'submitted', 'auto_submitted', 'terminated')),
  ended_reason text,
  ended_at timestamptz,
  current_index integer not null default 0,
  current_shown_at timestamptz,
  total integer not null,
  answered integer not null default 0,
  score integer not null default 0,
  warnings integer not null default 0,
  face_fail_streak integer not null default 0,
  last_seen_at timestamptz not null default now(),
  last_photo text,
  last_photo_at timestamptz,
  admin_message text,
  user_agent text,
  attempt integer not null default 1,
  archived boolean not null default false  -- earlier attempts, kept for the record after a retake
);

create table if not exists public.exam_answers (
  session_id uuid not null references public.exam_sessions(id) on delete cascade,
  question_id integer not null,
  chosen integer,                      -- null = time ran out
  correct boolean not null default false,
  answered_at timestamptz not null default now(),
  primary key (session_id, question_id)
);

create table if not exists public.exam_events (
  id bigserial primary key,
  exam_id uuid references public.exam_exams(id) on delete cascade,
  candidate_id uuid references public.exam_candidates(id) on delete cascade,
  session_id uuid references public.exam_sessions(id) on delete cascade,
  type text not null,
  detail text not null default '',
  photo text,
  counted boolean not null default false,
  created_at timestamptz not null default now()
);

create table if not exists public.exam_login_attempts (
  id bigserial primary key,
  ip text not null,
  ok boolean not null,
  created_at timestamptz not null default now()
);

create index if not exists exam_sessions_exam_idx on public.exam_sessions(exam_id);

-- Retakes (added after the first release; safe to re-run on an existing database).
alter table public.exam_exams add column if not exists attempts_allowed integer not null default 1;
alter table public.exam_sessions add column if not exists attempt integer not null default 1;
alter table public.exam_sessions add column if not exists archived boolean not null default false;
alter table public.exam_exams add column if not exists proctor_level text not null default 'relaxed';
-- Live status sent by the student's browser with each heartbeat, for the admin's monitor:
-- { face: ok|none|multiple|away|dark, noise: false|talking|noise, phone: bool, fullscreen: bool }
alter table public.exam_sessions add column if not exists live_status jsonb;
alter table public.exam_sessions drop constraint if exists exam_sessions_exam_id_candidate_id_key;
-- One current attempt per student per exam; earlier attempts are archived.
create unique index if not exists exam_sessions_current_idx on public.exam_sessions(exam_id, candidate_id) where not archived;
-- Blank access codes: created in bulk without a name; the student types their
-- own name when they register their face. "batch" is an optional label.
alter table public.exam_candidates add column if not exists name_pending boolean not null default false;
alter table public.exam_candidates add column if not exists batch text not null default '';
-- Default number of questions each student draws from the pool (null = all of them).
alter table public.exam_exams add column if not exists questions_per_student integer
  check (questions_per_student is null or questions_per_student between 1 and 2000);
create index if not exists exam_events_session_idx on public.exam_events(session_id, created_at);
create index if not exists exam_events_exam_idx on public.exam_events(exam_id, created_at);
create index if not exists exam_login_attempts_ip_idx on public.exam_login_attempts(ip, created_at);

-- ===================== ACCESS RULES =====================

alter table public.exam_candidates enable row level security;
alter table public.exam_exams enable row level security;
alter table public.exam_allowed enable row level security;
alter table public.exam_question_limits enable row level security;
alter table public.exam_sessions enable row level security;
alter table public.exam_answers enable row level security;
alter table public.exam_events enable row level security;
alter table public.exam_login_attempts enable row level security;

-- Exam Room admins: full app admins, plus people listed in exam_admins, who can
-- run the Exam Room without being admins of the main app.
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

create or replace function public.exam_is_admin() returns boolean
language sql security definer set search_path = public stable as $$
  select public.is_admin() or exists (
    select 1 from public.exam_admins a join public.profiles p on p.id = a.user_id
    where a.user_id = auth.uid() and not p.disabled
  );
$$;
grant execute on function public.exam_is_admin() to authenticated;

-- Let Exam Room admins see the question bank when building exams.
drop policy if exists questions_select_exam_admin on public.questions;
create policy questions_select_exam_admin on public.questions
  for select using (public.exam_is_admin());

-- Exam Room settings (one row). face_mode:
--   full — students register their face once, an admin approves it, and the face is matched
--          at the start of every exam and every minute during it (default)
--   easy — one face photo at registration, approved automatically, no face matching
--   off  — no face registration or matching at all (camera checks during the exam still apply)
--   mic  — no face and no camera at all; only the microphone and screen rules are checked
create table if not exists public.exam_settings (
  id integer primary key default 1 check (id = 1),
  face_mode text not null default 'full',
  updated_at timestamptz not null default now()
);
insert into public.exam_settings (id) values (1) on conflict (id) do nothing;
alter table public.exam_settings drop constraint if exists exam_settings_face_mode_check;
alter table public.exam_settings add constraint exam_settings_face_mode_check
  check (face_mode in ('full', 'easy', 'off', 'mic'));
alter table public.exam_settings enable row level security;
drop policy if exists exam_settings_admin_all on public.exam_settings;
create policy exam_settings_admin_all on public.exam_settings
  for all using (public.exam_is_admin()) with check (public.exam_is_admin());
grant select, insert, update on public.exam_settings to authenticated;

create or replace function public.exam__face_mode() returns text
language sql stable security definer set search_path = public as $$
  select coalesce((select face_mode from public.exam_settings where id = 1), 'full')
$$;

do $$
declare t text;
begin
  foreach t in array array['exam_candidates','exam_exams','exam_allowed','exam_question_limits','exam_sessions','exam_answers','exam_events','exam_login_attempts'] loop
    execute format('drop policy if exists %I on public.%I', t || '_admin_all', t);
    execute format('create policy %I on public.%I for all using (public.exam_is_admin()) with check (public.exam_is_admin())', t || '_admin_all', t);
  end loop;
end $$;

grant select, insert, update, delete on
  public.exam_candidates, public.exam_exams, public.exam_allowed, public.exam_question_limits, public.exam_sessions,
  public.exam_answers, public.exam_events, public.exam_login_attempts
  to authenticated;
grant usage, select on sequence public.exam_events_id_seq, public.exam_login_attempts_id_seq to authenticated;

-- ===================== HELPERS (not callable by students) =====================

-- Face descriptors closer than this are the same person. face-api.js uses 0.6;
-- 0.5 is stricter and still tolerant of phone cameras and normal lighting.
create or replace function public.exam__face_threshold() returns float8
language sql immutable as $$ select 0.5::float8 $$;

create or replace function public.exam__face_distance(a float8[], b float8[]) returns float8
language sql immutable as $$
  select sqrt(sum((x - y) * (x - y))) from unnest(a, b) as t(x, y)
$$;

create or replace function public.exam__valid_descriptor(d float8[]) returns boolean
language sql immutable as $$
  select d is not null and cardinality(d) = 128
    and not exists (select 1 from unnest(d) v where v is null or v = 'NaN'::float8 or abs(v) > 10)
$$;

create or replace function public.exam__clean_photo(p text) returns text
language sql immutable as $$
  select case when p like 'data:image/jpeg;base64,%' and length(p) <= 120000 then p else null end
$$;

create or replace function public.exam__client_ip() returns text
language sql stable as $$
  select coalesce(
    nullif(split_part(coalesce(current_setting('request.headers', true)::json ->> 'x-forwarded-for', ''), ',', 1), ''),
    current_setting('request.headers', true)::json ->> 'cf-connecting-ip',
    'unknown')
$$;

-- Too many wrong codes from this address in the last 10 minutes?
create or replace function public.exam__throttled() returns boolean
language sql stable security definer set search_path = public as $$
  select (select count(*) from exam_login_attempts
          where ip = exam__client_ip() and not ok and created_at > now() - interval '10 minutes') >= 15
$$;

-- Looks up an access code and logs the attempt. Returns an empty row (id is
-- null) for a wrong or disabled code. It never raises, because raising would
-- also undo the logged attempt that slows down code guessing.
create or replace function public.exam__candidate(p_code text) returns public.exam_candidates
language plpgsql security definer set search_path = public as $$
declare
  c public.exam_candidates;
begin
  select * into c from exam_candidates where access_code = upper(trim(coalesce(p_code, '')));
  if c.id is not null and not c.active then c := null; end if;
  insert into exam_login_attempts(ip, ok) values (exam__client_ip(), c.id is not null);
  delete from exam_login_attempts where created_at < now() - interval '1 day';
  return c;
end; $$;

-- Error reply for a student function. Expected problems are returned, not
-- raised, so that anything already recorded (attempts, evidence) is kept.
create or replace function public.exam__err(p_code text) returns jsonb
language sql immutable as $$ select jsonb_build_object('error', p_code) $$;

-- Ends a session (once). Anything not yet answered simply scores zero.
create or replace function public.exam__finish(p_session uuid, p_status text, p_reason text) returns void
language plpgsql security definer set search_path = public as $$
begin
  update exam_sessions
     set status = p_status, ended_reason = p_reason, ended_at = now()
   where id = p_session and status = 'in_progress';
end; $$;

-- Loads an active session by token and applies time rules: past the deadline
-- or exam closed -> auto-submitted; per-question time over -> next question.
create or replace function public.exam__session(p_token uuid) returns public.exam_sessions
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions;
  e public.exam_exams;
begin
  select * into s from exam_sessions where token = p_token;
  if s.id is null then raise exception 'invalid_session'; end if;
  select * into e from exam_exams where id = s.exam_id;

  if s.status = 'in_progress' then
    if now() >= s.deadline then
      perform exam__finish(s.id, 'auto_submitted', 'Time is up');
    elsif e.closed then
      perform exam__finish(s.id, 'auto_submitted', 'Exam closed by the administrator');
    elsif e.per_question_seconds is not null and not e.paused and s.current_shown_at is not null
          and now() > s.current_shown_at + make_interval(secs => e.per_question_seconds + 3) then
      -- The question timed out: record it as unanswered and move on.
      insert into exam_answers(session_id, question_id, chosen, correct)
        values (s.id, s.question_order[s.current_index + 1], null, false)
        on conflict do nothing;
      update exam_sessions set current_index = current_index + 1, current_shown_at = null where id = s.id;
      if s.current_index + 1 >= s.total then
        perform exam__finish(s.id, 'submitted', 'Completed');
      end if;
    end if;
    select * into s from exam_sessions where id = s.id;
  end if;
  return s;
end; $$;

create or replace function public.exam__result(s public.exam_sessions) returns jsonb
language sql stable security definer set search_path = public as $$
  select jsonb_build_object(
    'finished', true,
    'status', s.status,
    'reason', s.ended_reason,
    'answered', s.answered,
    'total', s.total,
    'score', case when e.show_score then s.score end,
    'show_score', e.show_score,
    'warnings', s.warnings)
  from exam_exams e where e.id = s.exam_id
$$;

-- A student may start another attempt by themselves when their last attempt
-- was submitted (normally or at the warning limit), attempts remain and the
-- exam is open. An attempt ended for cheating needs the admin's permission.
create or replace function public.exam__can_self_retake(e public.exam_exams, s public.exam_sessions) returns boolean
language sql stable security definer set search_path = public as $$
  select s.id is not null
     and s.status in ('submitted', 'auto_submitted')
     and (select count(*) from exam_sessions x where x.exam_id = e.id and x.candidate_id = s.candidate_id) < e.attempts_allowed
     and not e.closed and not e.paused and now() >= e.starts_at and now() < e.ends_at
$$;

-- ===================== ADMIN FUNCTIONS =====================

-- Let a student sit the exam again, whatever happened before (submitted,
-- auto-submitted, ended for cheating), as many times as the admin wants.
-- The earlier attempt is kept (archived) with its answers and evidence.
create or replace function public.exam_admin_allow_retake(p_session uuid) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions;
begin
  if not public.exam_is_admin() then raise exception 'admins_only'; end if;
  select * into s from exam_sessions where id = p_session;
  if s.id is null then return exam__err('not_found'); end if;
  if s.status = 'in_progress' then
    perform exam__finish(s.id, 'terminated', 'Ended by the administrator for a retake');
  end if;
  update exam_sessions set archived = true where id = s.id;
  insert into exam_events(exam_id, candidate_id, session_id, type, detail)
    values (s.exam_id, s.candidate_id, s.id, 'retake_allowed', 'Administrator allowed a retake');
  return jsonb_build_object('ok', true);
end; $$;

-- Give a student extra time (e.g. after a power or network problem).
create or replace function public.exam_admin_extend(p_session uuid, p_minutes integer) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions;
begin
  if not public.exam_is_admin() then raise exception 'admins_only'; end if;
  if p_minutes is null or p_minutes not between 1 and 240 then return exam__err('bad_minutes'); end if;
  update exam_sessions set deadline = deadline + make_interval(mins => p_minutes)
   where id = p_session and status = 'in_progress' returning * into s;
  if s.id is null then return exam__err('not_in_progress'); end if;
  insert into exam_events(exam_id, candidate_id, session_id, type, detail)
    values (s.exam_id, s.candidate_id, s.id, 'time_added', format('Administrator added %s minutes', p_minutes));
  update exam_sessions set admin_message = format('The administrator gave you %s extra minutes.', p_minutes) where id = s.id;
  return jsonb_build_object('ok', true, 'deadline', s.deadline);
end; $$;

-- Give a student a warning by hand (counts towards the limit like any other).
create or replace function public.exam_admin_warn(p_session uuid, p_reason text) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions;
  e public.exam_exams;
  reason text := coalesce(nullif(trim(left(p_reason, 200)), ''), 'Rule broken');
begin
  if not public.exam_is_admin() then raise exception 'admins_only'; end if;
  update exam_sessions set warnings = warnings + 1, admin_message = 'Warning from the administrator: ' || reason
   where id = p_session and status = 'in_progress' returning * into s;
  if s.id is null then return exam__err('not_in_progress'); end if;
  select * into e from exam_exams where id = s.exam_id;
  insert into exam_events(exam_id, candidate_id, session_id, type, detail, counted)
    values (s.exam_id, s.candidate_id, s.id, 'admin_warning', reason, true);
  if s.warnings >= e.max_warnings then
    perform exam__finish(s.id, 'auto_submitted', format('Reached the limit of %s warnings', e.max_warnings));
  end if;
  return jsonb_build_object('ok', true, 'warnings', s.warnings);
end; $$;

-- ===================== STUDENT FUNCTIONS =====================

-- This student's share of an exam: number of questions and minutes.
create or replace function public.exam__plan(e public.exam_exams, p_candidate uuid) returns table (n integer, minutes integer)
language sql stable security definer set search_path = public as $$
  select least(cardinality(e.question_ids), coalesce(l.question_count, e.questions_per_student, cardinality(e.question_ids))),
         coalesce(l.duration_minutes, e.duration_minutes)
  from (select 1) one
  left join exam_question_limits l on l.exam_id = e.id and l.candidate_id = p_candidate
$$;

-- Log in with an access code. Returns the student's name, face status and
-- their exams (titles, times and rules only — never questions).
create or replace function public.exam_login(p_code text) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  c public.exam_candidates;
begin
  if exam__throttled() then return exam__err('too_many_attempts'); end if;
  c := exam__candidate(p_code);
  if c.id is null then return exam__err('invalid_code'); end if;
  return jsonb_build_object(
    'name', case when c.name_pending then '' else c.full_name end,
    'name_needed', c.name_pending,
    'face_status', c.face_status,
    'face_mode', exam__face_mode(),
    'server_time', now(),
    'exams', coalesce((
      select jsonb_agg(jsonb_build_object(
        'id', e.id, 'title', e.title, 'instructions', e.instructions,
        'starts_at', e.starts_at, 'ends_at', e.ends_at,
        'duration_minutes', (select minutes from exam__plan(e, c.id)),
        'question_count', (select n from exam__plan(e, c.id)),
        'per_question_seconds', e.per_question_seconds,
        'show_answers', e.show_answers, 'max_warnings', e.max_warnings, 'proctor_level', e.proctor_level,
        'paused', e.paused,
        'session_status', s.status,
        'result', case when s.status is not null and s.status <> 'in_progress' then exam__result(s) end,
        'attempts_allowed', e.attempts_allowed,
        'attempts_used', (select count(*) from exam_sessions x where x.exam_id = e.id and x.candidate_id = c.id),
        'can_retake', exam__can_self_retake(e, s)
      ) order by e.starts_at)
      from exam_exams e
      left join exam_sessions s on s.exam_id = e.id and s.candidate_id = c.id and not s.archived
      where (e.all_candidates or exists (select 1 from exam_allowed a where a.exam_id = e.id and a.candidate_id = c.id))
        and ((not e.closed and e.ends_at > now()) or s.id is not null)
        and e.ends_at > now() - interval '7 days'
    ), '[]'::jsonb));
end; $$;

-- First-time registration. Depends on the face setting (exam_settings.face_mode):
--   full — face photo + descriptor, waits for an admin to approve it
--   easy — face photo + descriptor, approved at once
--   off  — no face; only saves the full name for a blank code
-- For a blank code, the student's full name is required and saved here.
drop function if exists public.exam_enroll(text, float8[], text);
create or replace function public.exam_enroll(p_code text, p_descriptor float8[], p_photo text, p_name text default null) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  c public.exam_candidates;
  nm text := regexp_replace(trim(coalesce(p_name, '')), '\s+', ' ', 'g');
  mode text := exam__face_mode();
  new_status text;
begin
  if exam__throttled() then return exam__err('too_many_attempts'); end if;
  c := exam__candidate(p_code);
  if c.id is null then return exam__err('invalid_code'); end if;
  if c.name_pending and (char_length(nm) not between 3 and 80 or nm !~ '[[:alpha:]].*[[:space:]].*[[:alpha:]]') then
    return exam__err('name_required');
  end if;
  if mode in ('off', 'mic') then
    -- No face needed: just record the name for a blank code.
    update exam_candidates
       set full_name = case when name_pending then nm else full_name end, name_pending = false,
           enrolled_at = coalesce(enrolled_at, now())
     where id = c.id;
    return jsonb_build_object('face_status', c.face_status);
  end if;
  if c.face_status = 'approved' or (c.face_status = 'pending' and mode = 'full') then return exam__err('already_enrolled'); end if;
  if not exam__valid_descriptor(p_descriptor) then return exam__err('bad_face_data'); end if;
  if exam__clean_photo(p_photo) is null then return exam__err('bad_photo'); end if;
  new_status := case when mode = 'easy' then 'approved' else 'pending' end;
  update exam_candidates
     set face_descriptor = p_descriptor, face_photo = p_photo, face_status = new_status, enrolled_at = now(),
         full_name = case when name_pending then nm else full_name end,
         name_pending = false
   where id = c.id;
  return jsonb_build_object('face_status', new_status);
end; $$;

-- Start (or resume) an exam. With face_mode 'full' this needs an approved face that
-- matches now; 'easy' only needs the one-time registration; 'off' needs neither.
create or replace function public.exam_start(p_code text, p_exam_id uuid, p_descriptor float8[], p_photo text, p_user_agent text default '')
returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  c public.exam_candidates;
  e public.exam_exams;
  s public.exam_sessions;
  dist float8;
  ord integer[];
  plan record;
  mode text := exam__face_mode();
  how text;
begin
  if exam__throttled() then return exam__err('too_many_attempts'); end if;
  c := exam__candidate(p_code);
  if c.id is null then return exam__err('invalid_code'); end if;
  select * into e from exam_exams where id = p_exam_id;
  if e.id is null or not (e.all_candidates or exists (select 1 from exam_allowed a where a.exam_id = e.id and a.candidate_id = c.id)) then
    return exam__err('exam_not_found');
  end if;
  if c.name_pending then return exam__err('name_required'); end if;
  if mode = 'full' then
    if c.face_status <> 'approved' then return exam__err('face_not_approved'); end if;
    if not exam__valid_descriptor(p_descriptor) or exam__clean_photo(p_photo) is null then return exam__err('bad_face_data'); end if;
    dist := exam__face_distance(c.face_descriptor, p_descriptor);
    if dist > exam__face_threshold() then
      insert into exam_events(exam_id, candidate_id, type, detail, photo, counted)
        values (e.id, c.id, 'start_face_mismatch', format('Face did not match at start (distance %s)', round(dist::numeric, 3)), exam__clean_photo(p_photo), false);
      return exam__err('face_mismatch');
    end if;
    how := 'face matched';
  elsif mode = 'easy' then
    if c.face_status not in ('approved', 'pending') then return exam__err('face_not_registered'); end if;
    how := 'face photo on file, no matching';
  else
    how := case when mode = 'mic' then 'microphone only, no camera' else 'face checks off' end;
  end if;

  select * into s from exam_sessions where exam_id = e.id and candidate_id = c.id and not archived;
  if s.id is not null then
    s := exam__session(s.token);
    if s.status <> 'in_progress' then
      -- Finished attempt: start a new one only if the exam allows another try
      -- (never after being ended for cheating — that needs the admin).
      if not exam__can_self_retake(e, s) then
        return exam__err(case when s.status = 'terminated' then 'retake_needs_admin' else 'already_taken' end);
      end if;
      update exam_sessions set archived = true where id = s.id;
      s := null;
    end if;
  end if;
  if s.id is not null then
    update exam_sessions set last_seen_at = now(), face_fail_streak = 0 where id = s.id;
    insert into exam_events(exam_id, candidate_id, session_id, type, detail, photo)
      values (e.id, c.id, s.id, 'resume', format('Re-entered the exam (%s)', how), exam__clean_photo(p_photo));
  else
    if e.closed then return exam__err('exam_closed'); end if;
    if now() < e.starts_at then return exam__err('exam_not_started'); end if;
    if now() >= e.ends_at then return exam__err('exam_ended'); end if;
    if e.paused then return exam__err('exam_paused'); end if;
    if cardinality(e.question_ids) = 0 then return exam__err('exam_has_no_questions'); end if;
    -- Draw this student's random set from the pool; keep the pool's order unless shuffling.
    select * into plan from exam__plan(e, c.id);
    select array_agg(x order by case when e.shuffle then random() else pos end) into ord
      from (select x, pos from unnest(e.question_ids) with ordinality u(x, pos) order by random() limit plan.n) pick;
    insert into exam_sessions(exam_id, candidate_id, question_order, deadline, total, user_agent, last_photo, last_photo_at, attempt)
      values (e.id, c.id, ord, least(now() + make_interval(mins => plan.minutes), e.ends_at),
              cardinality(ord), left(coalesce(p_user_agent, ''), 300), exam__clean_photo(p_photo), now(),
              1 + (select count(*) from exam_sessions x where x.exam_id = e.id and x.candidate_id = c.id))
      returning * into s;
    insert into exam_events(exam_id, candidate_id, session_id, type, detail, photo)
      values (e.id, c.id, s.id, 'start', format('Started attempt %s (%s)', s.attempt, how), exam__clean_photo(p_photo));
  end if;

  return jsonb_build_object(
    'token', s.token, 'title', e.title, 'deadline', s.deadline, 'server_time', now(),
    'total', s.total, 'per_question_seconds', e.per_question_seconds,
    'show_answers', e.show_answers, 'max_warnings', e.max_warnings, 'warnings', s.warnings,
    'proctor_level', e.proctor_level, 'face_mode', mode,
    'name', c.full_name, 'code', c.access_code);
end; $$;

-- The current question (without its answer). Sets the question's start time
-- the first time it is shown, which drives the per-question timer.
create or replace function public.exam_question(p_token uuid) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions := exam__session(p_token);
  e public.exam_exams;
  v_q record;
  a public.exam_answers;
  qid integer;
begin
  if s.status <> 'in_progress' then return exam__result(s); end if;
  select * into e from exam_exams where id = s.exam_id;
  if e.paused then
    return jsonb_build_object('paused', true, 'deadline', s.deadline, 'server_time', now(), 'warnings', s.warnings);
  end if;
  if s.current_shown_at is null then
    update exam_sessions set current_shown_at = now() where id = s.id returning * into s;
  end if;
  qid := s.question_order[s.current_index + 1];
  select qq.id, qq.q, qq.opts, qq.category, qq.ans_idx, qq.exp into v_q from questions qq where qq.id = qid;
  select * into a from exam_answers where session_id = s.id and question_id = qid;
  return jsonb_build_object(
    'index', s.current_index, 'total', s.total,
    'question', jsonb_build_object('id', v_q.id, 'q', v_q.q, 'opts', v_q.opts, 'category', v_q.category),
    'answered', a.session_id is not null,
    'chosen', a.chosen,
    'correct', case when a.session_id is not null and e.show_answers then a.correct end,
    'correct_index', case when a.session_id is not null and e.show_answers then v_q.ans_idx end,
    'explanation', case when a.session_id is not null and e.show_answers then v_q.exp end,
    'question_deadline', case when e.per_question_seconds is not null
                         then s.current_shown_at + make_interval(secs => e.per_question_seconds) end,
    'deadline', s.deadline, 'server_time', now(), 'warnings', s.warnings, 'face_mode', exam__face_mode());
end; $$;

-- Lock in an answer to the current question. The first answer counts.
create or replace function public.exam_answer(p_token uuid, p_question_id integer, p_choice integer) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions := exam__session(p_token);
  e public.exam_exams;
  v_q record;
  a public.exam_answers;
begin
  if s.status <> 'in_progress' then return exam__result(s); end if;
  select * into e from exam_exams where id = s.exam_id;
  if e.paused then return exam__err('exam_paused'); end if;
  if p_question_id is distinct from s.question_order[s.current_index + 1] then return exam__err('not_current_question'); end if;
  if p_choice is null or p_choice not between 0 and 3 then return exam__err('bad_choice'); end if;
  select qq.id, qq.ans_idx, qq.exp into v_q from questions qq where qq.id = p_question_id;

  insert into exam_answers(session_id, question_id, chosen, correct)
    values (s.id, v_q.id, p_choice, p_choice = v_q.ans_idx)
    on conflict (session_id, question_id) do nothing
    returning * into a;
  if a.session_id is not null then
    update exam_sessions set answered = answered + 1, score = score + (case when a.correct then 1 else 0 end), last_seen_at = now()
     where id = s.id;
  else
    select * into a from exam_answers where session_id = s.id and question_id = v_q.id;
  end if;

  return jsonb_build_object(
    'recorded', true,
    'chosen', a.chosen,
    'correct', case when e.show_answers then a.correct end,
    'correct_index', case when e.show_answers then v_q.ans_idx end,
    'explanation', case when e.show_answers then v_q.exp end);
end; $$;

-- Move to the next question (only after answering the current one).
create or replace function public.exam_next(p_token uuid) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions := exam__session(p_token);
begin
  if s.status <> 'in_progress' then return exam__result(s); end if;
  if not exists (select 1 from exam_answers where session_id = s.id and question_id = s.question_order[s.current_index + 1]) then
    return exam__err('answer_first');
  end if;
  if s.current_index + 1 >= s.total then
    perform exam__finish(s.id, 'submitted', 'Completed');
    select * into s from exam_sessions where id = s.id;
    return exam__result(s);
  end if;
  update exam_sessions set current_index = current_index + 1, current_shown_at = null where id = s.id;
  -- Send the next question back straight away: one round trip instead of two
  -- on a slow network.
  return exam_question(p_token) || jsonb_build_object('ok', true);
end; $$;

-- Sent every ~15 seconds. Optionally carries a fresh face descriptor + photo
-- for the periodic identity check. Returns anything the admin changed:
-- ended exam, pause, a message to the student.
drop function if exists public.exam_heartbeat(uuid, float8[], text);
create or replace function public.exam_heartbeat(p_token uuid, p_descriptor float8[] default null, p_photo text default null, p_status jsonb default null)
returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions := exam__session(p_token);
  c public.exam_candidates;
  e public.exam_exams;
  dist float8;
  msg text;
  photo text := exam__clean_photo(p_photo);
begin
  if s.status <> 'in_progress' then return exam__result(s); end if;
  select * into e from exam_exams where id = s.exam_id;
  select * into c from exam_candidates where id = s.candidate_id;
  if not c.active then
    perform exam__finish(s.id, 'terminated', 'Access code disabled by the administrator');
    select * into s from exam_sessions where id = s.id;
    return exam__result(s);
  end if;

  if p_descriptor is not null and exam__valid_descriptor(p_descriptor) and exam__face_mode() = 'full' then
    dist := exam__face_distance(c.face_descriptor, p_descriptor);
    if dist > exam__face_threshold() then
      update exam_sessions set face_fail_streak = face_fail_streak + 1 where id = s.id returning * into s;
      insert into exam_events(exam_id, candidate_id, session_id, type, detail, photo, counted)
        values (e.id, c.id, s.id, 'face_mismatch', format('Face did not match the registered student (distance %s)', round(dist::numeric, 3)), photo, true);
      -- Two failed checks in a row = someone else is sitting the exam.
      if s.face_fail_streak >= 2 then
        perform exam__finish(s.id, 'terminated', 'Face did not match the registered student');
        select * into s from exam_sessions where id = s.id;
        return exam__result(s);
      end if;
    else
      update exam_sessions set face_fail_streak = 0 where id = s.id;
    end if;
  end if;

  msg := s.admin_message;
  update exam_sessions
     set last_seen_at = now(), admin_message = null,
         live_status = case when p_status is not null and length(p_status::text) < 500 then p_status else live_status end,
         last_photo = coalesce(photo, last_photo),
         last_photo_at = case when photo is not null then now() else last_photo_at end
   where id = s.id;

  return jsonb_build_object(
    'status', 'in_progress', 'paused', e.paused, 'deadline', s.deadline, 'server_time', now(),
    'warnings', s.warnings, 'max_warnings', e.max_warnings, 'message', msg,
    'face_fail_streak', s.face_fail_streak, 'face_mode', exam__face_mode());
end; $$;

-- Report a rule violation seen by the browser. Most count towards the
-- warning limit; "another person in view" ends the exam at once.
create or replace function public.exam_report(p_token uuid, p_type text, p_detail text default '', p_photo text default null)
returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions := exam__session(p_token);
  e public.exam_exams;
  instant boolean := p_type in ('multiple_faces');
  counted_types text[] := array['multiple_faces', 'no_face', 'looking_away', 'phone', 'dark', 'noise',
                                'tab_away', 'window_blur', 'fullscreen_exit', 'screenshot_key',
                                'copy_attempt', 'camera_off', 'mic_off', 'devtools'];
begin
  if s.status <> 'in_progress' then return exam__result(s); end if;
  if not (p_type = any(counted_types)) then return exam__err('unknown_event'); end if;
  select * into e from exam_exams where id = s.exam_id;

  -- Microphone-only or face-off mode: camera/face reports (e.g. from a page opened before
  -- the switch) are ignored and never count as warnings.
  if exam__face_mode() in ('mic', 'off') and p_type in ('multiple_faces', 'no_face', 'looking_away', 'phone', 'dark', 'camera_off') then
    return jsonb_build_object('status', s.status, 'warnings', s.warnings, 'max_warnings', e.max_warnings, 'ignored', true);
  end if;

  -- One report per kind per 8 seconds, so a single moment isn't counted twice.
  if exists (select 1 from exam_events where session_id = s.id and type = p_type and created_at > now() - interval '8 seconds') then
    return jsonb_build_object('status', s.status, 'warnings', s.warnings, 'max_warnings', e.max_warnings, 'ignored', true);
  end if;

  insert into exam_events(exam_id, candidate_id, session_id, type, detail, photo, counted)
    values (e.id, s.candidate_id, s.id, p_type, left(coalesce(p_detail, ''), 300), exam__clean_photo(p_photo), true);
  update exam_sessions set warnings = warnings + 1, last_seen_at = now() where id = s.id returning * into s;

  if instant then
    perform exam__finish(s.id, 'terminated', 'Another person was seen with the student');
  elsif s.warnings >= e.max_warnings then
    perform exam__finish(s.id, 'auto_submitted', format('Reached the limit of %s warnings', e.max_warnings));
  end if;
  select * into s from exam_sessions where id = s.id;
  if s.status <> 'in_progress' then return exam__result(s); end if;
  return jsonb_build_object('status', s.status, 'warnings', s.warnings, 'max_warnings', e.max_warnings);
end; $$;

-- The student submits early.
create or replace function public.exam_submit(p_token uuid) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions := exam__session(p_token);
begin
  if s.status = 'in_progress' then
    perform exam__finish(s.id, 'submitted', 'Submitted by the student');
    select * into s from exam_sessions where id = s.id;
  end if;
  return exam__result(s);
end; $$;

-- ===================== PERMISSIONS =====================

revoke all on function public.exam_admin_allow_retake(uuid), public.exam_admin_extend(uuid, integer), public.exam_admin_warn(uuid, text) from public, anon;
grant execute on function public.exam_admin_allow_retake(uuid), public.exam_admin_extend(uuid, integer), public.exam_admin_warn(uuid, text) to authenticated;

revoke all on function
  public.exam__can_self_retake(public.exam_exams, public.exam_sessions),
  public.exam__throttled(), public.exam__candidate(text), public.exam__finish(uuid, text, text), public.exam__session(uuid),
  public.exam__result(public.exam_sessions), public.exam__client_ip(),
  public.exam__plan(public.exam_exams, uuid)
  from public, anon, authenticated;

grant execute on function
  public.exam_login(text),
  public.exam_enroll(text, float8[], text, text),
  public.exam_start(text, uuid, float8[], text, text),
  public.exam_question(uuid),
  public.exam_answer(uuid, integer, integer),
  public.exam_next(uuid),
  public.exam_heartbeat(uuid, float8[], text, jsonb),
  public.exam_report(uuid, text, text, text),
  public.exam_submit(uuid)
  to anon, authenticated;
