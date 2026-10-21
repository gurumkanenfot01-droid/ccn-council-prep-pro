-- CCN Council Prep Pro: admin "Set password"
-- Run this once in the Supabase SQL Editor (safe to run again).
--
-- Lets an admin set a new password for a student from Manage Users, for when the
-- password-reset email doesn't arrive. It also marks the email as confirmed, so a
-- student stuck on "confirm your email" can log in straight away.
--
-- SECURITY DEFINER so it can update auth.users, but it checks public.is_admin()
-- first, so a non-admin calling it over the REST API gets an error and nothing
-- changes. Passwords are stored bcrypt-hashed, exactly as Supabase Auth does.

create extension if not exists pgcrypto with schema extensions;

create or replace function public.admin_set_user_password(p_user_id uuid, p_password text)
returns void
language plpgsql security definer set search_path = public, extensions as $$
begin
  if not public.is_admin() then
    raise exception 'Only admins can set passwords';
  end if;
  if p_password is null or char_length(p_password) < 6 then
    raise exception 'Password must be at least 6 characters';
  end if;
  update auth.users
     set encrypted_password = extensions.crypt(p_password, extensions.gen_salt('bf')),
         email_confirmed_at = coalesce(email_confirmed_at, now()),
         updated_at = now()
   where id = p_user_id;
  if not found then
    raise exception 'User not found';
  end if;
end; $$;

revoke all on function public.admin_set_user_password(uuid, text) from public, anon;
grant execute on function public.admin_set_user_password(uuid, text) to authenticated;
