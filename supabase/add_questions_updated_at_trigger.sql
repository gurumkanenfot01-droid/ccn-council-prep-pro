-- CCN Council Prep Pro — auto-stamp questions.updated_at on every change
--
-- Needed for the new egress-saving cache in the app: instead of every
-- login re-downloading the entire question bank (the main driver of the
-- Supabase egress overage), the app now first asks "how many active
-- questions are there, and when was the newest one last touched?" — a tiny
-- reply — and only re-downloads the full bank if that's changed since the
-- device's last visit. For that check to be trustworthy, updated_at has to
-- actually change whenever a row does, including from a plain SQL Editor
-- UPDATE (like the answer-key/explanation fixes run here before), not just
-- from the admin screen. Run once in the SQL Editor.

create or replace function public.bump_questions_updated_at()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists trg_questions_updated_at on public.questions;
create trigger trg_questions_updated_at
  before update on public.questions
  for each row execute function public.bump_questions_updated_at();
