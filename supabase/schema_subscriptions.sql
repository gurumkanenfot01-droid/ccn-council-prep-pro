-- CCN Council Prep Pro — subscriptions add-on schema
-- Run this once in the Supabase SQL Editor, after the base schema.sql.
--
-- Design note: there is deliberately NO insert/update/delete policy for regular
-- authenticated users on this table. The only way a row can be created is via the
-- verify-paystack-payment Edge Function, which authenticates to Postgres with the
-- service_role key (bypasses RLS) and only runs after independently verifying the
-- payment with Paystack's secret key. This means a user cannot grant themselves a
-- subscription by calling the Supabase REST API directly, no matter what they send.

create table public.subscriptions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  plan text not null check (plan in ('6month', '1year')),
  status text not null default 'active' check (status in ('active', 'expired')),
  paystack_reference text not null unique,
  amount_kobo integer not null,
  starts_at timestamptz not null default now(),
  expires_at timestamptz not null,
  created_at timestamptz not null default now()
);

create index subscriptions_user_idx on public.subscriptions(user_id, expires_at desc);

alter table public.subscriptions enable row level security;

create policy "subscriptions_own_select" on public.subscriptions
  for select using (user_id = auth.uid());
create policy "subscriptions_admin_select" on public.subscriptions
  for select using (public.is_admin());
