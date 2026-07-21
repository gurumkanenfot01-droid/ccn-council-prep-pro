-- CCN Council Prep Pro — legacy content flag for the grandfathered-access model
-- Run this once in the Supabase SQL Editor.
--
-- Model:
--   - Existing members (profiles.created_at at or before the cutoff below) keep free
--     access to everything that exists in the bank AS OF running this migration
--     (is_legacy = true), plus OSCE Prep / Viva / Mock Papers. They only need to
--     subscribe to access content added AFTER this point (is_legacy = false, the
--     default for every new row going forward — new seed batches need no special
--     handling, they're paid-only automatically).
--   - Brand new signups (after the cutoff date used in the app) get the same small
--     free preview as before (Mixed Revision, Daily Challenge, Weak Topics,
--     Bookmarks, Wrong Answers) and must subscribe for everything else, same as
--     the existing paywall already enforces.
--   - Subscribers bypass all of this regardless of when they joined.

alter table public.questions add column if not exists is_legacy boolean not null default false;

-- Mark every question that exists right now as legacy (free for existing members).
update public.questions set is_legacy = true where is_legacy = false;
