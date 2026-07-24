-- CCN Council Prep Pro — referral tracking + admin question-review log
-- Run this once in the Supabase SQL Editor, after schema.sql and schema_founder_admin.sql.

-- ===================== ADMIN "SHOW MY SCORE" TOGGLE =====================
-- Lets an admin choose whether their own exam stats show on their own Home
-- dashboard (some admins/the founder may not want their personal numbers
-- visible even to themselves in the everyday UI).
alter table public.profiles add column if not exists show_score_on_dashboard boolean not null default true;

-- ===================== REFERRALS =====================
alter table public.profiles add column if not exists referral_code text;
alter table public.profiles add column if not exists referred_by uuid references public.profiles(id);

create or replace function public.generate_referral_code()
returns text language plpgsql as $$
declare
  code text;
  taken boolean;
begin
  loop
    code := upper(substr(md5(random()::text || clock_timestamp()::text), 1, 6));
    select exists(select 1 from public.profiles where referral_code = code) into taken;
    exit when not taken;
  end loop;
  return code;
end;
$$;

create or replace function public.set_referral_code()
returns trigger language plpgsql as $$
begin
  if new.referral_code is null then
    new.referral_code := public.generate_referral_code();
  end if;
  return new;
end;
$$;

drop trigger if exists trg_set_referral_code on public.profiles;
create trigger trg_set_referral_code
  before insert on public.profiles
  for each row execute function public.set_referral_code();

-- backfill anyone who signed up before this migration
update public.profiles set referral_code = public.generate_referral_code() where referral_code is null;

do $$
begin
  if not exists (
    select 1 from pg_constraint where conname = 'profiles_referral_code_unique'
  ) then
    alter table public.profiles add constraint profiles_referral_code_unique unique (referral_code);
  end if;
end $$;

-- referred_by can only be set once (never overwritten) and never to yourself —
-- keeps the referral count honest without needing to lock the column down.
create or replace function public.guard_referred_by()
returns trigger language plpgsql as $$
begin
  if new.referred_by is distinct from old.referred_by then
    if old.referred_by is not null then
      raise exception 'Referrer is already set and cannot be changed';
    end if;
    if new.referred_by = new.id then
      raise exception 'Cannot refer yourself';
    end if;
  end if;
  return new;
end;
$$;

drop trigger if exists trg_guard_referred_by on public.profiles;
create trigger trg_guard_referred_by
  before update on public.profiles
  for each row execute function public.guard_referred_by();

-- ===================== ADMIN QUESTION REVIEW LOG =====================
-- Lets an admin step through the question bank (answer + explanation shown
-- immediately) without ever seeing the same question twice once reviewed.
create table if not exists public.question_reviews (
  admin_id uuid not null references public.profiles(id) on delete cascade,
  question_id integer not null references public.questions(id) on delete cascade,
  reviewed_at timestamptz not null default now(),
  primary key (admin_id, question_id)
);
alter table public.question_reviews enable row level security;
drop policy if exists "question_reviews_own" on public.question_reviews;
create policy "question_reviews_own" on public.question_reviews
  for all using (admin_id = auth.uid() and public.is_admin())
  with check (admin_id = auth.uid() and public.is_admin());
