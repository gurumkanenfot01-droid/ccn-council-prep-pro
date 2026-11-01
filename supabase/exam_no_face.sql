-- Per-student "No face" setting. Run once in the Supabase SQL Editor (safe to run again).
-- Lets the admin turn off face registration and face checks for chosen students only
-- (Students tab: "No face" button). Everyone else keeps the Exam Room face setting.
alter table public.exam_candidates add column if not exists no_face boolean not null default false;


create or replace function public.exam__face_mode(p_candidate uuid) returns text
language sql stable security definer set search_path = public as $$
  select case when coalesce((select no_face from public.exam_candidates where id = p_candidate), false)
                   and public.exam__face_mode() <> 'mic' then 'off'
              else public.exam__face_mode() end
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
    'face_mode', exam__face_mode(c.id),
    'require_app', coalesce((select require_app from exam_settings where id = 1), false),
    'specialty', c.specialty,
    'full_access', c.full_access,
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

create or replace function public.exam_enroll(p_code text, p_descriptor float8[], p_photo text, p_name text default null) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  c public.exam_candidates;
  nm text := regexp_replace(trim(coalesce(p_name, '')), '\s+', ' ', 'g');
  mode text;
  new_status text;
begin
  if exam__throttled() then return exam__err('too_many_attempts'); end if;
  c := exam__candidate(p_code);
  if c.id is null then return exam__err('invalid_code'); end if;
  mode := exam__face_mode(c.id);
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
  if c.face_status = 'approved' or (c.face_status = 'pending' and mode in ('full', 'start')) then return exam__err('already_enrolled'); end if;
  if not exam__valid_descriptor(p_descriptor) then return exam__err('bad_face_data'); end if;
  if exam__clean_photo(p_photo) is null then return exam__err('bad_photo'); end if;
  new_status := case when mode in ('easy', 'start') then 'approved' else 'pending' end;
  update exam_candidates
     set face_descriptor = p_descriptor, face_photo = p_photo, face_status = new_status, enrolled_at = now(),
         full_name = case when name_pending then nm else full_name end,
         name_pending = false
   where id = c.id;
  return jsonb_build_object('face_status', new_status);
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
  mode text;
  how text;
begin
  if exam__throttled() then return exam__err('too_many_attempts'); end if;
  c := exam__candidate(p_code);
  if c.id is null then return exam__err('invalid_code'); end if;
  mode := exam__face_mode(c.id);
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
    'deadline', s.deadline, 'server_time', now(), 'warnings', s.warnings, 'face_mode', exam__face_mode(s.candidate_id));
end; $$;

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
  -- Camera / microphone switched off (as last reported by the student's page): no answering.
  if s.live_status->>'mic' = 'false' or s.live_status->>'locked' = 'true'
     or (exam__face_mode(s.candidate_id) <> 'mic' and s.live_status->>'camera' = 'false') then
    return exam__err('devices_off');
  end if;
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

create or replace function public.exam_step(p_token uuid, p_question_id integer, p_choice integer) returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions := exam__session(p_token);
  e public.exam_exams;
  pos integer;
  v_ans integer;
  changed integer := 0;
  late boolean;
begin
  late := s.status = 'auto_submitted' and s.ended_reason = 'Time is up' and s.ended_at > now() - interval '3 minutes';
  if s.status <> 'in_progress' and not late then return exam__result(s); end if;
  select * into e from exam_exams where id = s.exam_id;
  if not late and e.paused then return exam__err('exam_paused'); end if;
  if not late and p_choice is not null and (s.live_status->>'mic' = 'false' or s.live_status->>'locked' = 'true'
     or (exam__face_mode(s.candidate_id) <> 'mic' and s.live_status->>'camera' = 'false')) then
    return exam__err('devices_off');
  end if;
  pos := array_position(s.question_order, p_question_id);
  if pos is null or pos > s.current_index + 1 then return exam__err('not_current_question'); end if;

  if p_choice is not null and p_choice between 0 and 3 then
    select ans_idx into v_ans from questions where id = p_question_id;
    insert into exam_answers(session_id, question_id, chosen, correct)
      values (s.id, p_question_id, p_choice, p_choice = v_ans)
      on conflict (session_id, question_id) do update set chosen = excluded.chosen, correct = excluded.correct
      where exam_answers.chosen is null;
    get diagnostics changed = row_count;
    if changed > 0 then
      update exam_sessions set answered = answered + 1, score = score + (case when p_choice = v_ans then 1 else 0 end), last_seen_at = now()
       where id = s.id returning * into s;
    end if;
  end if;
  if late then return exam__result(s); end if;

  if pos = s.current_index + 1 then
    if p_choice is null then
      insert into exam_answers(session_id, question_id, chosen, correct) values (s.id, p_question_id, null, false)
        on conflict do nothing;
    end if;
    if s.current_index + 1 >= s.total then
      perform exam__finish(s.id, 'submitted', 'Completed');
      select * into s from exam_sessions where id = s.id;
      return exam__result(s);
    end if;
    update exam_sessions set current_index = current_index + 1, current_shown_at = now(), last_seen_at = now()
     where id = s.id returning * into s;
  end if;
  return jsonb_build_object('ok', true, 'index', s.current_index, 'total', s.total,
    'deadline', s.deadline, 'server_time', now(), 'warnings', s.warnings);
end; $$;

create or replace function public.exam_heartbeat(p_token uuid, p_descriptor float8[] default null, p_photo text default null, p_status jsonb default null)
returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions := exam__session(p_token);
  c public.exam_candidates;
  e public.exam_exams;
  dist float8;
  msg text;
  msg_secs integer;
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

  if p_descriptor is not null and exam__valid_descriptor(p_descriptor) and exam__face_mode(s.candidate_id) = 'full' then
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
  msg_secs := s.admin_message_seconds;
  update exam_sessions
     set last_seen_at = now(), admin_message = null, admin_message_seconds = null,
         live_status = case when p_status is not null and length(p_status::text) < 500 then p_status else live_status end,
         last_photo = coalesce(photo, last_photo),
         last_photo_at = case when photo is not null then now() else last_photo_at end
   where id = s.id;

  return jsonb_build_object(
    'status', 'in_progress', 'paused', e.paused, 'deadline', s.deadline, 'server_time', now(),
    'warnings', s.warnings, 'max_warnings', e.max_warnings, 'message', msg, 'message_seconds', msg_secs,
    'face_fail_streak', s.face_fail_streak, 'face_mode', exam__face_mode(s.candidate_id),
    'watch', coalesce(s.watch_until > now(), false));
end; $$;

create or replace function public.exam_report(p_token uuid, p_type text, p_detail text default '', p_photo text default null)
returns jsonb
language plpgsql security definer set search_path = public as $$
declare
  s public.exam_sessions := exam__session(p_token);
  e public.exam_exams;
  instant boolean := p_type in ('multiple_faces', 'phone');
  counted_types text[] := array['multiple_faces', 'no_face', 'looking_away', 'phone', 'dark', 'noise',
                                'tab_away', 'window_blur', 'fullscreen_exit', 'screenshot_key',
                                'copy_attempt', 'camera_off', 'mic_off', 'devtools'];
begin
  if s.status <> 'in_progress' then return exam__result(s); end if;
  if not (p_type = any(counted_types)) then return exam__err('unknown_event'); end if;
  select * into e from exam_exams where id = s.exam_id;

  -- Microphone-only, face-off or face-at-start mode: camera/face reports (e.g. from a page opened before
  -- the switch) are ignored and never count as warnings.
  -- (A phone held up to the camera still counts whenever the camera is on.)
  -- Looking away / down (e.g. at paper for calculations) never counts, in any mode.
  if (exam__face_mode(s.candidate_id) in ('mic', 'off', 'start') and p_type in ('multiple_faces', 'no_face', 'looking_away', 'dark', 'camera_off'))
     or (exam__face_mode(s.candidate_id) = 'mic' and p_type = 'phone') or p_type = 'looking_away' then
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
    perform exam__finish(s.id, 'terminated', case when p_type = 'phone' then 'A phone was held up to the camera' else 'Another person was seen with the student' end);
  elsif s.warnings >= e.max_warnings then
    perform exam__finish(s.id, 'auto_submitted', format('Reached the limit of %s warnings', e.max_warnings));
  end if;
  select * into s from exam_sessions where id = s.id;
  if s.status <> 'in_progress' then return exam__result(s); end if;
  return jsonb_build_object('status', s.status, 'warnings', s.warnings, 'max_warnings', e.max_warnings);
end; $$;

revoke all on function public.exam__face_mode(uuid) from public, anon, authenticated;
select 'No-face option is ready' as status;
