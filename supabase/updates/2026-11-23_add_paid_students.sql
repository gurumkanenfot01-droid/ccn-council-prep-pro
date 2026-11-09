-- Four more paid Council students (added 9 November). Each gets a code with
-- full access and full questions, and can collect it on the claim page by
-- typing their name. A student who already has a council code keeps it and is
-- marked as paid. Running this again adds nobody twice.
set lock_timeout = '10s';

do $$
declare
  paid text[] := array['MTSWENEM IGBAHEMBA JACOB', 'SHIRSHA JOYCE IEMBER', 'BENJAMIN AGYO', 'UMAR BEBEJI'];
  n text;
  w text[];
  ids uuid[];
  code text;
  alphabet constant text := 'ABCDEFGHJKMNPQRSTUVWXYZ23456789';
  added int := 0;
  marked int := 0;
begin
  foreach n in array paid loop
    w := exam__name_words(n);
    select array_agg(x.id) into ids from exam_candidates x
    where x.specialty = 'council' and not x.name_pending
      and cardinality(exam__name_words(x.full_name)) >= 2
      and (exam__words_found(w, exam__name_words(x.full_name)) = cardinality(w)
        or exam__words_found(exam__name_words(x.full_name), w) = cardinality(exam__name_words(x.full_name)));
    if cardinality(ids) >= 1 then
      update exam_candidates set claimable = true where id = any(ids) and not claimable;
      if found then marked := marked + 1; end if;
    else
      loop
        code := (select string_agg(substr(alphabet, 1 + floor(random() * length(alphabet))::int, 1), '')
                 from generate_series(1, 8));
        exit when not exists (select 1 from exam_candidates where access_code = code);
      end loop;
      insert into exam_candidates(full_name, access_code, specialty, full_access, batch, claimable)
      values (initcap(lower(n)), code, 'council', true, 'Council – paid', true);
      added := added + 1;
    end if;
  end loop;
  raise notice 'new paid students: % added, % already there and marked as paid', added, marked;
end $$;

select 'paid students' as item,
  (select count(*) from public.exam_candidates where specialty = 'council' and claimable and active)::text || ' can claim; new: ' ||
  (select string_agg(full_name || ' ' || access_code, ', ') from public.exam_candidates
    where specialty = 'council' and full_name in ('Mtswenem Igbahemba Jacob', 'Shirsha Joyce Iember', 'Benjamin Agyo', 'Umar Bebeji')) as value;
