-- Council exams open at 11:00 pm (not 10:00 pm), still closing at 2:00 am (WAT):
--   Paper 1   Monday 9 November 11:00 pm   – Tuesday 10 November 2:00 am
--   Paper 2   Tuesday 10 November 11:00 pm – Wednesday 11 November 2:00 am
--   OSCE      Thursday 12 November 11:00 pm – Friday 13 November 2:00 am
-- Only exams still at 10:00 pm are moved; later changes on the Exams page are
-- kept. The students' message is updated if it still says 10:00 pm. Safe to run again.
set lock_timeout = '10s';

update public.exam_exams e
   set starts_at = v.new_start
  from (values
    ('Council Exam — Paper 1', timestamptz '2026-11-09 22:00 +01', timestamptz '2026-11-09 23:00 +01'),
    ('Council Exam — Paper 2', timestamptz '2026-11-10 22:00 +01', timestamptz '2026-11-10 23:00 +01'),
    ('Council Exam — OSCE',    timestamptz '2026-11-12 22:00 +01', timestamptz '2026-11-12 23:00 +01')
  ) v(title, old_start, new_start)
 where e.specialty = 'council' and e.title = v.title and e.starts_at = v.old_start;

update public.exam_settings
   set council_notice = 'Paper 1: TONIGHT, Monday 9 November · Paper 2: Tuesday 10 November · OSCE (practical): Thursday 12 November — each from 11:00 pm to 2:00 am.'
 where id = 1 and council_notice = 'Paper 1: TONIGHT, Monday 9 November · Paper 2: Tuesday 10 November · OSCE (practical): Thursday 12 November — each from 10:00 pm to 2:00 am.';

select 'council exam times' as item,
  (select string_agg(title || ': ' || to_char(starts_at at time zone 'Africa/Lagos', 'Dy DD Mon HH12:MI am') || ' – '
                     || to_char(ends_at at time zone 'Africa/Lagos', 'Dy HH12:MI am'), '; ' order by starts_at)
   from public.exam_exams where specialty = 'council') as value
union all
select 'message', (select council_notice from public.exam_settings where id = 1);
