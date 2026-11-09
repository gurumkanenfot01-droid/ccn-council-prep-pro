-- 1. Pate's council code was used by the administrator for a test run. He gets a
--    new code: the old one stops working, the test face / exam number / test
--    attempts are cleared, and he can collect the new code once on the claim
--    page by typing his name. Done only once (marked in his note).
-- 2. Face matching a little more forgiving (0.5 → 0.55), for dim rooms at night.
--    face-api.js itself uses 0.6, so this is still strict about a different person.
-- Safe to run again.
set lock_timeout = '10s';

create or replace function public.exam__face_threshold() returns float8
language sql immutable as $$ select 0.55::float8 $$;

do $$
declare
  alphabet constant text := 'ABCDEFGHJKMNPQRSTUVWXYZ23456789';
  w text[] := exam__name_words('ISSAC NUHU PATE');
  p record;
  code text;
  n int := 0;
begin
  for p in
    select x.id, x.full_name from exam_candidates x
    where x.specialty = 'council' and not x.name_pending
      and exam__words_found(w, exam__name_words(x.full_name)) = cardinality(w)
      and x.note not like '%[new code after test run]%'
  loop
    loop
      code := (select string_agg(substr(alphabet, 1 + floor(random() * length(alphabet))::int, 1), '')
               from generate_series(1, 8));
      exit when not exists (select 1 from exam_candidates where access_code = code);
    end loop;
    delete from exam_sessions where candidate_id = p.id;
    update exam_candidates
       set access_code = code, claimable = true, claimed_at = null, claim_count = 0, exam_number = '',
           face_status = 'none', face_descriptor = null, face_photo = null, enrolled_at = null,
           note = trim(note || ' [new code after test run]')
     where id = p.id;
    n := n + 1;
    raise notice 'new code for %', p.full_name;
  end loop;
  raise notice 'pate: % code(s) replaced', n;
end $$;

select 'pate new code and night faces' as item, 'ready' as value;
