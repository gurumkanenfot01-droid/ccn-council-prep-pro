-- CCN Council Prep Pro — founder/admin privacy
-- Run this once in the Supabase SQL Editor, after schema.sql.
--
-- Model: a single "founder" account (identified by email, since there's only
-- ever one) can see every admin's exam results in Admin > All Users Results,
-- including other admins'. Regular (non-founder) admins can see all normal
-- members' results as before, but NOT any admin-role account's exam results
-- — including their own peers' and the founder's. This keeps each admin's
-- personal performance private from other admins, matching how a founder
-- account's activity shouldn't be visible to staff admins added later.
--
-- IMPORTANT: replace the email below with the actual founder account email
-- if it's ever different from what's already on file.

create or replace function public.is_founder()
returns boolean language sql security definer set search_path = public stable as $$
  select coalesce(
    (select role = 'admin' and not disabled and email = 'gurumkanenfot01@gmail.com'
     from public.profiles where id = auth.uid()),
    false
  );
$$;

drop policy if exists "attempts_admin_select" on public.attempts;
create policy "attempts_admin_select" on public.attempts
  for select using (
    public.is_founder()
    or (
      public.is_admin()
      and not exists (
        select 1 from public.profiles p where p.id = attempts.user_id and p.role = 'admin'
      )
    )
  );
