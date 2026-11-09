-- Corrected council exam dates (Nigeria time, WAT = UTC+1). Each paper opens
-- at 10:00 pm (students may start any time from then) and closes at 2:00 am:
--   Paper 1   Monday 9 November 10:00 pm   – Tuesday 10 November 2:00 am
--   Paper 2   Tuesday 10 November 10:00 pm – Wednesday 11 November 2:00 am
--   OSCE      Thursday 12 November 10:00 pm – Friday 13 November 2:00 am
-- Only exams still on the earlier dates (from 2026-11-19) are moved, so a
-- time the administrator changes on the Exams page is kept. Safe to run again.
set lock_timeout = '10s';

update public.exam_exams e
   set starts_at = v.new_start, ends_at = v.new_end, closed = false
  from (values
    ('Council Exam — Paper 1', timestamptz '2026-11-10 23:00 +01', timestamptz '2026-11-09 22:00 +01', timestamptz '2026-11-10 02:00 +01'),
    ('Council Exam — Paper 2', timestamptz '2026-11-11 23:00 +01', timestamptz '2026-11-10 22:00 +01', timestamptz '2026-11-11 02:00 +01'),
    ('Council Exam — OSCE',    timestamptz '2026-11-13 23:00 +01', timestamptz '2026-11-12 22:00 +01', timestamptz '2026-11-13 02:00 +01')
  ) v(title, old_start, new_start, new_end)
 where e.specialty = 'council' and e.title = v.title and e.starts_at = v.old_start;

-- The students' message, if it still has the earlier dates.
update public.exam_settings
   set council_notice = 'Paper 1: TONIGHT, Monday 9 November · Paper 2: Tuesday 10 November · OSCE (practical): Thursday 12 November — each from 10:00 pm to 2:00 am.'
 where id = 1 and council_notice in (
   'Paper 1: Tuesday 10 November · Paper 2: Wednesday 11 November · OSCE: Friday 13 November — each from 11:00 pm to 2:00 am.',
   'Your exams will be available from 11:00 pm to 2:00 am.');

select 'council exam dates' as item,
  (select string_agg(title || ': ' || to_char(starts_at at time zone 'Africa/Lagos', 'Dy DD Mon HH12:MI am') || ' – '
                     || to_char(ends_at at time zone 'Africa/Lagos', 'Dy HH12:MI am') || case when closed then ' (closed)' else '' end, '; ' order by starts_at)
   from public.exam_exams where specialty = 'council') as value
union all
select 'message', (select council_notice from public.exam_settings where id = 1);
