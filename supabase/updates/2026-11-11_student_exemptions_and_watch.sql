-- Gentler or closer monitoring for individual students. Safe to run again.
--   exempt_checks  checks that never count for this student:
--                    dark     camera dark (no light at night) — the black-picture lock is off too
--                    no_face  face not visible / looking away
--                    people   another person in view (e.g. children) — never ends the exam
--                    noise    talking or noise (e.g. children at home)
--   watch          watch this student closely (shown first on the Live monitor)
set lock_timeout = '10s';

alter table public.exam_candidates add column if not exists exempt_checks text[] not null default '{}';
alter table public.exam_candidates add column if not exists watch boolean not null default false;
alter table public.exam_candidates drop constraint if exists exam_candidates_exempt_checks_check;
alter table public.exam_candidates add constraint exam_candidates_exempt_checks_check
  check (exempt_checks <@ array['dark', 'no_face', 'people', 'noise']::text[]);

create or replace function public.exam_my_security(p_code text) returns jsonb
language plpgsql stable security definer set search_path = public as $$
declare
  c public.exam_candidates;
begin
  select * into c from exam_candidates where access_code = upper(trim(coalesce(p_code, ''))) and active;
  return jsonb_build_object('level', c.security_level, 'max_warnings', c.max_warnings_override,
    'app_only', coalesce(c.app_only, false), 'exempt', coalesce(to_jsonb(c.exempt_checks), '[]'::jsonb));
end; $$;
revoke all on function public.exam_my_security(text) from public;
grant execute on function public.exam_my_security(text) to anon, authenticated;

select 'student exemptions and watch' as item, 'ready' as value;
