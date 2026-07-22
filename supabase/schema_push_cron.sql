-- CCN Council Prep Pro — automated daily push reminder
-- Run this once in the Supabase SQL Editor, after schema_push_notifications.sql
-- and after the send-push Edge Function is deployed with its secrets set
-- (see supabase/functions/send-push/index.ts).
--
-- BEFORE RUNNING: replace the two placeholders below —
--   <YOUR_PROJECT_REF>  - from Settings > API > Project URL, e.g. abcdefgh
--   <YOUR_CRON_SECRET>  - the exact value you set for the CRON_SECRET
--                         Edge Function secret (must match exactly)

create extension if not exists pg_cron with schema extensions;
create extension if not exists pg_net with schema extensions;

-- Fires once a day at 18:00 UTC (7:00 PM WAT, Nigeria time) and sends a
-- reminder push to every subscriber who has notifications turned on.
select cron.schedule(
  'ccn-daily-reminder',
  '0 18 * * *',
  $$
  select net.http_post(
    url := 'https://<YOUR_PROJECT_REF>.supabase.co/functions/v1/send-push',
    headers := jsonb_build_object(
      'Content-Type', 'application/json',
      'x-cron-secret', '<YOUR_CRON_SECRET>'
    ),
    body := jsonb_build_object(
      'title', 'Time for today''s CCN practice',
      'body', 'A few questions a day keeps you exam-ready — open the app and keep your streak going.'
    )
  );
  $$
);

-- To check it's registered:
--   select * from cron.job;
-- To see run history / catch failures:
--   select * from cron.job_run_details order by start_time desc limit 20;
-- To change the time or message later, unschedule and re-run this file with edits:
--   select cron.unschedule('ccn-daily-reminder');
