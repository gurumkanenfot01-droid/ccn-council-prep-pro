-- More rules the administrator can switch off for one student (exempt_checks):
--   turning     head turned away for more than 45 s (Council)
--   phone       a phone in view of the camera
--   fullscreen  laptop lock: full screen, one screen, mouse on the exam (Council)
-- Safe to run again.
set lock_timeout = '10s';

alter table public.exam_candidates drop constraint if exists exam_candidates_exempt_checks_check;
alter table public.exam_candidates add constraint exam_candidates_exempt_checks_check
  check (exempt_checks <@ array['dark', 'no_face', 'people', 'noise', 'turning', 'phone', 'fullscreen']::text[]);

select 'student rules' as item, 'dark, no_face, people, noise, turning, phone, fullscreen' as value;
