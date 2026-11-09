-- 1. Close every mock exam (all sections except Council Exams) — done ONCE.
--    Students taking a mock exam right now are submitted with what they have
--    answered. The administrator can reopen any exam later on the Exams page;
--    running this file again does not close it a second time.
-- 2. Codes never mix: an exam is only shown to, and can only be started by,
--    a code from the same section (a Council code sees only Council exams, a
--    mock code only that section's mocks). Restated here so it is certain.
-- Safe to run again.
set lock_timeout = '10s';

create or replace function public.exam__can_access(e public.exam_exams, p_candidate uuid) returns boolean
language sql stable security definer set search_path = public as $$
  select (e.all_candidates or exists (select 1 from exam_allowed a where a.exam_id = e.id and a.candidate_id = p_candidate))
     and not exists (select 1 from exam_blocked b where b.exam_id = e.id and b.candidate_id = p_candidate)
     and coalesce(e.specialty, 'ccn') = coalesce((select c.specialty from exam_candidates c where c.id = p_candidate), 'ccn')
     and (e.is_test or coalesce((select c.full_access from exam_candidates c where c.id = p_candidate), true))
$$;
revoke all on function public.exam__can_access(public.exam_exams, uuid) from public, anon, authenticated;

alter table public.exam_settings add column if not exists mocks_closed_at timestamptz;
insert into public.exam_settings(id) values (1) on conflict (id) do nothing;

do $$
declare n int;
begin
  if (select mocks_closed_at from exam_settings where id = 1) is not null then
    raise notice 'mock exams were already closed once — not closing again';
    return;
  end if;
  update exam_exams set closed = true where coalesce(specialty, 'ccn') <> 'council' and not closed;
  get diagnostics n = row_count;
  update exam_settings set mocks_closed_at = now() where id = 1;
  raise notice 'closed % mock exam(s)', n;
end $$;

select 'mock exams' as item,
  (select count(*) filter (where closed) || ' closed, ' || count(*) filter (where not closed) || ' open'
   from public.exam_exams where coalesce(specialty, 'ccn') <> 'council') as value
union all
select 'council exams', (select count(*) filter (where not closed) || ' open' from public.exam_exams where specialty = 'council');
