set lock_timeout = '5s';
alter table public.exam_candidates add column if not exists anytime boolean not null default false;
create or replace function public.exam__anytime(p_candidate uuid) returns boolean
language sql stable security definer set search_path = public as $$
  select coalesce((select anytime from public.exam_candidates where id = p_candidate), false)
$$;
create or replace function public.exam__can_self_retake(e public.exam_exams, s public.exam_sessions) returns boolean
language sql stable security definer set search_path = public as $$
  select s.id is not null
     and s.status in ('submitted', 'auto_submitted')
     and not e.paused
     and (exam__anytime(s.candidate_id)
          or ((select count(*) from exam_sessions x where x.exam_id = e.id and x.candidate_id = s.candidate_id) < e.attempts_allowed
              and not e.closed and now() >= e.starts_at and now() < e.ends_at))
$$;
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
    elsif e.closed and not exam__anytime(s.candidate_id) then
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
create or replace function public.exam__on_close() returns trigger
language plpgsql security definer set search_path = public as $$
begin
  if new.closed and not coalesce(old.closed, false) then
    update exam_sessions
       set status = 'auto_submitted', ended_reason = 'Exam closed by the administrator', ended_at = now()
     where exam_id = new.id and status = 'in_progress' and not exam__anytime(candidate_id);
  end if;
  return new;
end; $$;
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
  if e.id is null or not exam__can_access(e, c.id) then
    return exam__err('exam_not_found');
  end if;
  if c.name_pending then return exam__err('name_required'); end if;
  if exam__needs_app(p_user_agent) then return exam__err('app_required'); end if;
  if mode in ('full', 'start') then
    if mode = 'full' and c.face_status <> 'approved' then return exam__err('face_not_approved'); end if;
    if mode = 'start' and c.face_status not in ('approved', 'pending') then return exam__err('face_not_registered'); end if;
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
    if not c.anytime then
      if e.closed then return exam__err('exam_closed'); end if;
      if now() < e.starts_at then return exam__err('exam_not_started'); end if;
      if now() >= e.ends_at then return exam__err('exam_ended'); end if;
    end if;
    if e.paused then return exam__err('exam_paused'); end if;
    if cardinality(e.question_ids) = 0 then return exam__err('exam_has_no_questions'); end if;
    -- Draw this student's random set from the pool; keep the pool's order unless shuffling.
    select * into plan from exam__plan(e, c.id);
    select array_agg(x order by case when e.shuffle then random() else pos end) into ord
      from (select x, pos from unnest(e.question_ids) with ordinality u(x, pos) order by random() limit plan.n) pick;
    insert into exam_sessions(exam_id, candidate_id, question_order, deadline, total, user_agent, last_photo, last_photo_at, attempt)
      values (e.id, c.id, ord, case when c.anytime then now() + make_interval(mins => plan.minutes)
                                    else least(now() + make_interval(mins => plan.minutes), e.ends_at) end,
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
