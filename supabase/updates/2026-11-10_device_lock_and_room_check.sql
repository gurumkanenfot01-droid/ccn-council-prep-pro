-- One device per exam + ear check / room scan photos. Safe to run again.
--
-- * One device: the exam page claims the session for its device. If the same exam is
--   opened on another device (or another browser tab), the new device takes over, the
--   old one is locked, and the switch counts as one warning.
-- * Ear check and room scan (Maximum security): photos taken just before the exam are
--   kept on the student's timeline for the administrator (they are not warnings).
set lock_timeout = '10s';

create table if not exists public.exam_session_device (
  session_id uuid primary key references public.exam_sessions(id) on delete cascade,
  device text not null,
  claimed_at timestamptz not null default now()
);
alter table public.exam_session_device enable row level security;
drop policy if exists exam_session_device_admin_all on public.exam_session_device;
create policy exam_session_device_admin_all on public.exam_session_device
  for all using (public.exam_is_admin()) with check (public.exam_is_admin());

-- Claim (or take over) the session for this device.
create or replace function public.exam_claim_device(p_token uuid, p_device text) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions;
  e public.exam_exams;
  prev text;
begin
  if p_device is null or length(p_device) not between 8 and 64 then return jsonb_build_object('error', 'bad_device'); end if;
  select * into s from exam_sessions where token = p_token;
  if s.id is null then return jsonb_build_object('error', 'invalid_session'); end if;
  if s.status <> 'in_progress' then return jsonb_build_object('status', s.status); end if;
  select device into prev from exam_session_device where session_id = s.id for update;
  if prev is null then
    insert into exam_session_device(session_id, device) values (s.id, p_device)
      on conflict (session_id) do update set device = excluded.device, claimed_at = now();
  elsif prev <> p_device then
    update exam_session_device set device = p_device, claimed_at = now() where session_id = s.id;
    insert into exam_events(exam_id, candidate_id, session_id, type, detail, counted)
      values (s.exam_id, s.candidate_id, s.id, 'device_switch', 'The exam was opened on another device or browser tab', true);
    update exam_sessions set warnings = warnings + 1, last_seen_at = now() where id = s.id returning * into s;
    select * into e from exam_exams where id = s.exam_id;
    if s.status = 'in_progress' and s.warnings >= e.max_warnings then
      perform exam__finish(s.id, 'auto_submitted', format('Reached the limit of %s warnings', e.max_warnings));
    end if;
  end if;
  return jsonb_build_object('ok', true);
end; $$;

-- Is this device still the one writing the exam?
create or replace function public.exam_device_ok(p_token uuid, p_device text) returns jsonb
language plpgsql stable security definer set search_path = public as $$
declare
  cur text;
begin
  select d.device into cur from exam_sessions s join exam_session_device d on d.session_id = s.id where s.token = p_token;
  return jsonb_build_object('current', cur is null or cur = p_device);
end; $$;

-- Ear check / room scan photos (not warnings). At most 12 per session.
create or replace function public.exam_record_check(p_token uuid, p_kind text, p_photo text) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions;
begin
  if p_kind not in ('ear_check', 'room_scan') then return jsonb_build_object('error', 'bad_kind'); end if;
  select * into s from exam_sessions where token = p_token;
  if s.id is null then return jsonb_build_object('error', 'invalid_session'); end if;
  if (select count(*) from exam_events where session_id = s.id and type in ('ear_check', 'room_scan')) >= 12 then
    return jsonb_build_object('error', 'too_many');
  end if;
  insert into exam_events(exam_id, candidate_id, session_id, type, detail, photo, counted)
    values (s.exam_id, s.candidate_id, s.id, p_kind,
            case p_kind when 'ear_check' then 'Ear check before the exam' else 'Room scan before the exam' end,
            exam__clean_photo(p_photo), false);
  return jsonb_build_object('ok', true);
end; $$;

revoke all on function public.exam_claim_device(uuid, text) from public;
revoke all on function public.exam_device_ok(uuid, text) from public;
revoke all on function public.exam_record_check(uuid, text, text) from public;
grant execute on function public.exam_claim_device(uuid, text) to anon, authenticated;
grant execute on function public.exam_device_ok(uuid, text) to anon, authenticated;
grant execute on function public.exam_record_check(uuid, text, text) to anon, authenticated;

select 'device lock and room check' as item, 'ready' as value;
