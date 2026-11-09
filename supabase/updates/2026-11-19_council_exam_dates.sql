-- Council exam dates (Nigeria time, WAT = UTC+1), each 11:00 pm to 2:00 am:
--   Paper 1  Tuesday 10 November 2026
--   Paper 2  Wednesday 11 November 2026
--   OSCE     Friday 13 November 2026
-- The exams are opened (shown on students' exam lists with a countdown);
-- nobody can start before 11:00 pm, and every attempt ends by 2:00 am.
-- (Replaced by 2026-11-22_council_exam_dates_tonight.sql.) Only exams still on
-- their first placeholder dates (created 9 Nov, before 6 pm) are changed, so times
-- the administrator sets later on the Exams page are kept. Safe to run again.
set lock_timeout = '10s';

update public.exam_exams e
   set starts_at = v.starts_at, ends_at = v.ends_at, closed = false
  from (values
    ('Council Exam — Paper 1', timestamptz '2026-11-10 23:00 +01', timestamptz '2026-11-11 02:00 +01'),
    ('Council Exam — Paper 2', timestamptz '2026-11-11 23:00 +01', timestamptz '2026-11-12 02:00 +01'),
    ('Council Exam — OSCE',    timestamptz '2026-11-13 23:00 +01', timestamptz '2026-11-14 02:00 +01')
  ) v(title, starts_at, ends_at)
 where e.specialty = 'council' and e.title = v.title and e.starts_at < timestamptz '2026-11-09 18:00 +01';

select 'council exam dates' as item,
  (select string_agg(title || ': ' || to_char(starts_at at time zone 'Africa/Lagos', 'Dy DD Mon HH12:MI am') || ' – '
                     || to_char(ends_at at time zone 'Africa/Lagos', 'HH12:MI am') || case when closed then ' (closed)' else '' end, '; ' order by starts_at)
   from public.exam_exams where specialty = 'council') as value;
