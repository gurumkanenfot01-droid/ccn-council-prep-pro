-- CCN Council Prep Pro — admin-granted subscriptions
-- Run this once in the Supabase SQL Editor, after schema_subscriptions.sql.
--
-- Lets an admin grant (or revoke) paid access from the Manage Users screen, e.g.
-- for someone who paid by bank transfer or a complimentary account.
--
-- The subscriptions table still has no insert/update policy for regular users.
-- These functions are SECURITY DEFINER so they can write the row, but each one
-- checks public.is_admin() first, so a non-admin calling them over the REST API
-- gets an error and nothing is written.

create or replace function public.admin_grant_subscription(p_user_id uuid, p_plan text)
returns timestamptz
language plpgsql security definer set search_path = public as $$
declare
  v_days integer;
  v_base timestamptz;
  v_expires timestamptz;
begin
  if not public.is_admin() then
    raise exception 'Only admins can grant subscriptions';
  end if;

  v_days := case p_plan when '6month' then 182 when '1year' then 365 end;
  if v_days is null then
    raise exception 'Unknown plan: %', p_plan;
  end if;

  if not exists (select 1 from public.profiles where id = p_user_id) then
    raise exception 'User not found';
  end if;

  -- Extend from an existing still-active subscription's expiry, if any, so grants
  -- stack the same way paid renewals do.
  select max(expires_at) into v_base
  from public.subscriptions
  where user_id = p_user_id and status = 'active' and expires_at > now();

  v_expires := coalesce(v_base, now()) + make_interval(days => v_days);

  insert into public.subscriptions (user_id, plan, status, paystack_reference, amount_kobo, starts_at, expires_at)
  values (p_user_id, p_plan, 'active', 'admin-grant-' || gen_random_uuid(), 0, now(), v_expires);

  return v_expires;
end; $$;

create or replace function public.admin_revoke_subscription(p_user_id uuid)
returns void
language plpgsql security definer set search_path = public as $$
begin
  if not public.is_admin() then
    raise exception 'Only admins can revoke subscriptions';
  end if;

  update public.subscriptions set status = 'expired'
  where user_id = p_user_id and status = 'active';
end; $$;

revoke all on function public.admin_grant_subscription(uuid, text) from public, anon;
revoke all on function public.admin_revoke_subscription(uuid) from public, anon;
grant execute on function public.admin_grant_subscription(uuid, text) to authenticated;
grant execute on function public.admin_revoke_subscription(uuid) to authenticated;
