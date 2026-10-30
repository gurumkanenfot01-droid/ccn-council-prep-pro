set lock_timeout = '10s';
alter table public.exam_candidates add column if not exists specialty text not null default 'ccn';
alter table public.exam_exams add column if not exists specialty text not null default 'ccn';
create or replace function public.exam__can_access(e public.exam_exams, p_candidate uuid) returns boolean
language sql stable security definer set search_path = public as $$
  select (e.all_candidates or exists (select 1 from exam_allowed a where a.exam_id = e.id and a.candidate_id = p_candidate))
     and not exists (select 1 from exam_blocked b where b.exam_id = e.id and b.candidate_id = p_candidate)
     and coalesce(e.specialty, 'ccn') = coalesce((select c.specialty from exam_candidates c where c.id = p_candidate), 'ccn')
$$;
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
    'require_app', coalesce((select require_app from exam_settings where id = 1), false),
    'specialty', c.specialty,
    'require_desktop_app', coalesce((select require_desktop_app from exam_settings where id = 1), false),
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
        'anytime', c.anytime,
        'attempts_used', (select count(*) from exam_sessions x where x.exam_id = e.id and x.candidate_id = c.id),
        'can_retake', exam__can_self_retake(e, s)
      ) order by e.starts_at)
      from exam_exams e
      left join exam_sessions s on s.exam_id = e.id and s.candidate_id = c.id and not s.archived
      where exam__can_access(e, c.id)
        and (c.anytime
             or (((not e.closed and e.ends_at > now()) or s.id is not null)
                 and e.ends_at > now() - interval '7 days'))
    ), '[]'::jsonb));
end; $$;
select 'specialties ready' as result;
