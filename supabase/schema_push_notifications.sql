-- CCN Council Prep Pro — push notifications add-on schema
-- Run this once in the Supabase SQL Editor, after schema.sql (needs public.is_admin()).
--
-- Stores one row per browser/device subscription. A user can have several
-- (phone + laptop, etc.) — endpoint is unique so re-subscribing the same
-- device just updates its keys instead of duplicating.

create table public.push_subscriptions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  endpoint text not null unique,
  p256dh text not null,
  auth text not null,
  created_at timestamptz not null default now()
);

create index push_subscriptions_user_idx on public.push_subscriptions(user_id);

alter table public.push_subscriptions enable row level security;

-- Regular users manage only their own device subscriptions.
create policy "push_subscriptions_own_select" on public.push_subscriptions
  for select using (user_id = auth.uid());
create policy "push_subscriptions_own_insert" on public.push_subscriptions
  for insert with check (user_id = auth.uid());
create policy "push_subscriptions_own_delete" on public.push_subscriptions
  for delete using (user_id = auth.uid());

-- Admins can see how many subscriptions exist (for the broadcast panel), but
-- the actual sending happens from the send-push Edge Function using the
-- service_role key, not through a client-side "select all + send" policy.
create policy "push_subscriptions_admin_select" on public.push_subscriptions
  for select using (public.is_admin());
