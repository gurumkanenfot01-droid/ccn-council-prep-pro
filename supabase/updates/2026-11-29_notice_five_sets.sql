-- Students' message (9 Nov, late): the final decision is not made yet.
-- Replaces the "please hold on" message only if the administrator has not
-- written a different one. Safe to run again.
set lock_timeout = '10s';

update public.exam_settings
   set council_notice = 'UPDATE: The final decision has not been made yet. We currently have 5 sets of 500 questions, and none of them is tagged yet for tomorrow or the day after. The JAMB server decides which set goes to the exam centres. Until then, please send your exam number below (if you have not already) — everything will be taken care of directly as we wait for what is sent to the exam centres, so we can get access. Times: Paper 1 Monday 9 Nov · Paper 2 Tuesday 10 Nov · OSCE (practical) Thursday 12 Nov — each 11:00 pm to 2:00 am.'
 where id = 1 and council_notice like 'PLEASE HOLD ON: We have about 4 sets of exam questions ready%';

select 'message' as item, (select council_notice from public.exam_settings where id = 1) as value;
