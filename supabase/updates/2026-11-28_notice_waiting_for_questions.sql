-- Message at the top of every paid student's exams page (9 Nov, 11 pm):
-- the questions are not loaded yet. Replaces the timetable message only if
-- the administrator has not written a different one. Safe to run again.
set lock_timeout = '10s';

update public.exam_settings
   set council_notice = 'PLEASE HOLD ON: We have about 4 sets of exam questions ready, and we are waiting to know which set will be picked. JAMB makes the final selection and sends it to the exam centres, so once we know which one it is, we will upload the right set. Kindly hold on a bit so we get the right one. If you have not sent your exam number yet, please send it below. Times: Paper 1 Monday 9 Nov · Paper 2 Tuesday 10 Nov · OSCE (practical) Thursday 12 Nov — each 11:00 pm to 2:00 am.'
 where id = 1 and council_notice in (
   'Paper 1: TONIGHT, Monday 9 November · Paper 2: Tuesday 10 November · OSCE (practical): Thursday 12 November — each from 11:00 pm to 2:00 am.',
   'Paper 1: TONIGHT, Monday 9 November · Paper 2: Tuesday 10 November · OSCE (practical): Thursday 12 November — each from 10:00 pm to 2:00 am.');

select 'message' as item, (select council_notice from public.exam_settings where id = 1) as value;
