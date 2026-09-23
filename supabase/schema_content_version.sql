-- CCN Council Prep Pro — content fingerprint for client-side caching
-- Run this once in the Supabase SQL Editor.
--
-- The app used to download the entire question bank and study notes every time
-- it opened, which was nearly all of the project's egress. Now it first calls
-- content_version() (a few bytes), and only re-downloads when the fingerprint
-- differs from the copy it already has saved on the device.
--
-- The fingerprint is an md5 over every visible row, so ANY change — new seed
-- batch, answer-key fix, edited explanation, deactivated question — changes it
-- automatically. No manual version bump is needed after editing content.
--
-- SECURITY INVOKER: it runs under the caller's RLS, so it only fingerprints the
-- rows that user could download anyway (active questions, for signed-in users).
--
-- Until this is run, the app just falls back to downloading everything on each
-- open, exactly as before.

create or replace function public.content_version()
returns jsonb
language sql stable security invoker set search_path = public as $$
  select jsonb_build_object(
    'questions', (select md5(coalesce(string_agg(md5(q::text), '' order by q.id), '')) from public.questions q where q.is_active),
    'notes',     (select md5(coalesce(string_agg(md5(n::text), '' order by n.id), '')) from public.study_notes n)
  );
$$;

revoke all on function public.content_version() from public, anon;
grant execute on function public.content_version() to authenticated;
