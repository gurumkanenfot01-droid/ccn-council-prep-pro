-- 1. Nenfort Gurumka: paid in full → a council code with full access and full
--    questions, collectable on the claim page. (Kept if already there.)
-- 2. Ende Anna: her face record shows another person. This only REPORTS whose
--    face it matches (in the update log). Nothing about her is changed here: the
--    administrator resets her on the Students page (More → Reset face, New code,
--    Sign out from all devices). Safe to run again.
set lock_timeout = '10s';

-- 1. Nenfort Gurumka
do $$
declare
  w text[] := exam__name_words('NENFORT GURUMKA');
  ids uuid[];
  code text;
  alphabet constant text := 'ABCDEFGHJKMNPQRSTUVWXYZ23456789';
begin
  select array_agg(x.id) into ids from exam_candidates x
  where x.specialty = 'council' and not x.name_pending
    and exam__words_found(w, exam__name_words(x.full_name)) = cardinality(w);
  if cardinality(ids) >= 1 then
    update exam_candidates set claimable = true, full_access = true, question_share = null where id = any(ids);
    raise notice 'Nenfort Gurumka already had a council code — marked as paid in full';
  else
    loop
      code := (select string_agg(substr(alphabet, 1 + floor(random() * length(alphabet))::int, 1), '') from generate_series(1, 8));
      exit when not exists (select 1 from exam_candidates where access_code = code);
    end loop;
    insert into exam_candidates(full_name, access_code, specialty, full_access, batch, claimable, amount_paid)
    values ('Nenfort Gurumka', code, 'council', true, 'Council – paid', true, 20000);
    raise notice 'Nenfort Gurumka added (code %)', code;
  end if;
end $$;

-- 2. Ende Anna: whose face is on her record?
select 'Ende Anna record' as item,
  coalesce((select string_agg(format('code %s, face %s (registered %s), code collected %s time(s), exam number "%s"',
       access_code, face_status, coalesce(to_char(enrolled_at at time zone 'Africa/Lagos', 'DD Mon HH12:MI am'), '—'),
       claim_count, exam_number), '; ')
     from exam_candidates where specialty = 'council' and full_name ilike 'ende anna%'), 'not found') as value
union all
select 'face matches', coalesce((
  select string_agg(format('%s (%s, distance %s)', o.full_name, o.specialty, round(sqrt(d)::numeric, 3)), '; ' order by d)
  from exam_candidates a
  cross join lateral (
    select x.full_name, x.specialty,
           (select sum((p - q) * (p - q)) from unnest(a.face_descriptor, x.face_descriptor) t(p, q)) d
    from exam_candidates x
    where x.id <> a.id and x.face_descriptor is not null and cardinality(x.face_descriptor) = 128) o
  where a.specialty = 'council' and a.full_name ilike 'ende anna%' and a.face_descriptor is not null and o.d < 0.36),
  'no other registered student has this face');

select 'paid students' as item, (select count(*) from public.exam_candidates where specialty = 'council' and claimable and active)::text as value;
