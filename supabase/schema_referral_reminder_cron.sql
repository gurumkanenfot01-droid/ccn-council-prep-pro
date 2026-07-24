-- CCN Council Prep Pro — automated weekly referral reminder
-- Run this once in the Supabase SQL Editor, after schema_push_cron.sql
-- (needs the same pg_cron/pg_net extensions and the send-push Edge Function
-- already deployed with its secrets set).
--
-- BEFORE RUNNING: replace the two placeholders below with the exact same
-- values you used in schema_push_cron.sql —
--   <YOUR_PROJECT_REF>  - from Settings > API > Project URL, e.g. abcdefgh
--   <YOUR_CRON_SECRET>  - the exact value you set for the CRON_SECRET
--                         Edge Function secret (must match exactly)
--
-- Fires once a week (Friday 17:00 UTC / 6:00 PM WAT) and asks only
-- currently-active paying subscribers to share their referral link —
-- see Profile > Invite Friends in the app. Not sent to free/trial members,
-- since asking someone who hasn't paid yet to recommend the app doesn't
-- make sense.

select cron.schedule(
  'ccn-weekly-referral-reminder',
  '0 17 * * 5',
  $$
  select net.http_post(
    url := 'https://<YOUR_PROJECT_REF>.supabase.co/functions/v1/send-push',
    headers := jsonb_build_object(
      'Content-Type', 'application/json',
      'x-cron-secret', '<YOUR_CRON_SECRET>'
    ),
    body := jsonb_build_object(
      'title', 'Know someone else studying for CCN Council?',
      'body', 'Share your invite link with a course-mate from Profile > Invite Friends — you''ll both be glad you did.',
      'audience', 'subscribers'
    )
  );
  $$
);

-- To check it's registered:
--   select * from cron.job;
-- To see run history / catch failures:
--   select * from cron.job_run_details order by start_time desc limit 20;
-- To change the day/time or message later, unschedule and re-run this file with edits:
--   select cron.unschedule('ccn-weekly-referral-reminder');
