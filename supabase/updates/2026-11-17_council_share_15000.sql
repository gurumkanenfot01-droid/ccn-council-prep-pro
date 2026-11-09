-- Council: students who paid 15,000 get 80% of the questions (was 75%).
-- Only changes students still on 75% with 15,000 paid, so a share the
-- administrator set by hand is kept. Safe to run again.
set lock_timeout = '10s';

update public.exam_candidates set question_share = 80
where specialty = 'council' and amount_paid = 15000 and question_share = 75;

select 'council 15,000 share' as item,
  (select string_agg(full_name || ' ' || question_share || '%', ', ' order by full_name)
   from public.exam_candidates where specialty = 'council' and amount_paid = 15000) as value;
