-- "Close the site" switch for students. While closed, the student pages (sign
-- in, claim page, exams) show only a "closed for now" message; the admin page
-- keeps working. Set to CLOSED once now (9 Nov, as asked); afterwards the
-- administrator opens/closes it on the Students page and re-running this file
-- does not change it. Safe to run again.
set lock_timeout = '10s';

alter table public.exam_settings add column if not exists site_closed boolean;
update public.exam_settings set site_closed = true where id = 1 and site_closed is null;   -- closed now, once
alter table public.exam_settings alter column site_closed set default false;
update public.exam_settings set site_closed = false where site_closed is null;
alter table public.exam_settings alter column site_closed set not null;
alter table public.exam_settings add column if not exists site_closed_message text not null
  default 'The exam site is closed for now. Please check back later — we will let you know in the group when it opens.';
insert into public.exam_settings(id, site_closed) values (1, true) on conflict (id) do nothing;

create or replace function public.exam_site_status() returns jsonb
language sql stable security definer set search_path = public as $$
  select coalesce((select jsonb_build_object('closed', site_closed, 'message', site_closed_message)
                   from exam_settings where id = 1), jsonb_build_object('closed', false))
$$;
revoke all on function public.exam_site_status() from public;
grant execute on function public.exam_site_status() to anon, authenticated;

select 'student site' as item, (select case when site_closed then 'CLOSED' else 'open' end from public.exam_settings where id = 1) as value;
