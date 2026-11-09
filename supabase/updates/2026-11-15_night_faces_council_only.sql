-- The mock exam sections keep their original face matching (threshold 0.5).
-- Only Council Exams students get the night-friendly 0.55 (set on 2026-11-14).
-- Every face check compares the registered face (first argument) with the
-- new reading and then tests "distance > exam__face_threshold()" (0.5), so for
-- a Council student the distance is scaled by 0.5 / 0.55 — the same as a
-- 0.55 threshold. Safe to run again.
set lock_timeout = '10s';

create or replace function public.exam__face_threshold() returns float8
language sql immutable as $$ select 0.5::float8 $$;

create or replace function public.exam__face_distance(a float8[], b float8[]) returns float8
language sql stable security definer set search_path = public as $$
  select sqrt(sum((x - y) * (x - y)))
         * case when exists (select 1 from exam_candidates c where c.face_descriptor = a and c.specialty = 'council')
                then 0.5 / 0.55 else 1 end
  from unnest(a, b) as t(x, y)
$$;
revoke all on function public.exam__face_distance(float8[], float8[]) from public;

select 'night face matching' as item, 'Council Exams only' as value;
