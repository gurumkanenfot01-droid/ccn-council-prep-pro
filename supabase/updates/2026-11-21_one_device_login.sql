-- Council codes: signed in on ONE device at a time. Safe to run again.
-- The device that signs in first keeps the code while it is open (it checks in
-- every 30 seconds). Another phone or computer is refused until the first one
-- logs out, or has been closed for 2 minutes. The administrator can free a
-- code at once (Students page → More → Sign out from all devices).
-- (Each exam is also locked to one device, as before.)
set lock_timeout = '10s';

alter table public.exam_candidates add column if not exists login_device text;
alter table public.exam_candidates add column if not exists login_seen_at timestamptz;

create or replace function public.exam_login_device(p_code text, p_device text) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  c public.exam_candidates;
  hit uuid;
begin
  if p_device is null or length(p_device) not between 8 and 64 then return jsonb_build_object('error', 'bad_device'); end if;
  select * into c from exam_candidates where access_code = upper(trim(coalesce(p_code, ''))) and active;
  if c.id is null or c.specialty <> 'council' then return jsonb_build_object('ok', true); end if;
  update exam_candidates set login_device = p_device, login_seen_at = now()
   where id = c.id and (login_device is null or login_device = p_device or login_seen_at is null
                        or login_seen_at < now() - interval '2 minutes')
  returning id into hit;
  if hit is null then
    insert into exam_events(candidate_id, type, detail, counted)
      values (c.id, 'second_device', 'Tried to sign in on a second device while the code was in use', false);
    return jsonb_build_object('ok', false, 'blocked', true);
  end if;
  return jsonb_build_object('ok', true);
end; $$;
revoke all on function public.exam_login_device(text, text) from public;
grant execute on function public.exam_login_device(text, text) to anon, authenticated;

create or replace function public.exam_logout_device(p_code text, p_device text) returns jsonb
language sql security definer set search_path = public as $$
  update exam_candidates set login_device = null, login_seen_at = null
   where access_code = upper(trim(coalesce(p_code, ''))) and login_device = p_device;
  select jsonb_build_object('ok', true);
$$;
revoke all on function public.exam_logout_device(text, text) from public;
grant execute on function public.exam_logout_device(text, text) to anon, authenticated;

select 'one device sign-in' as item, 'Council codes' as value;
