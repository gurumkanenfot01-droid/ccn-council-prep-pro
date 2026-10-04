-- Make someone a teacher (they can then see the Teacher dashboard,
-- mark assignments, post announcements and add new days).
--
-- 1. The person first creates an account in the app.
-- 2. Put their email between the quotes below, then Run this in the
--    Supabase SQL Editor.

insert into public.teachers (user_id)
select id from auth.users where lower(email) = lower('PUT-THE-EMAIL-HERE')
on conflict (user_id) do nothing;

-- To check who the teachers are:
-- select u.email from public.teachers t join auth.users u on u.id = t.user_id;
