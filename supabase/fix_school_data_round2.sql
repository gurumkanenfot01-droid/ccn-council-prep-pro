-- CCN Council Prep Pro — School data cleanup, round 2
--
-- The first pass (fix_school_data.sql) matched free-text values exactly,
-- and a handful of rows had slightly different spacing/wording than what
-- was matched, so they were left behind. This round uses flexible
-- (case-insensitive, substring) matching instead so formatting differences
-- can't cause a miss. Safe to re-run.

-- Bare "LUTH", any casing/spacing
update public.profiles set school = 'Lagos University Teaching Hospital (LUTH), Lagos'
where trim(school) ilike 'luth';

-- Any remaining "Lagos ... teaching hospital" phrasing, any casing
update public.profiles set school = 'Lagos University Teaching Hospital (LUTH), Lagos'
where school ilike '%lagos%teaching hospital%'
  and school <> 'Lagos University Teaching Hospital (LUTH), Lagos';

-- Anything mentioning "Jos university teaching hospital" as a longer description
update public.profiles set school = 'Jos University Teaching Hospital (JUTH), Jos'
where school ilike '%jos%university teaching hospital%'
  and school <> 'Jos University Teaching Hospital (JUTH), Jos';

-- Anything mentioning "Ekwueme" (unique enough to AEFUTHA to be a safe match)
update public.profiles set school = 'Alex Ekwueme Federal University Teaching Hospital (AEFUTHA), Abakaliki'
where school ilike '%ekwueme%'
  and school <> 'Alex Ekwueme Federal University Teaching Hospital (AEFUTHA), Abakaliki';

-- Anything mentioning "Gwagwalada" (unique to UATH)
update public.profiles set school = 'University of Abuja Teaching Hospital (UATH), Gwagwalada'
where school ilike '%gwagwalada%'
  and school <> 'University of Abuja Teaching Hospital (UATH), Gwagwalada';

-- Verify again
select coalesce(nullif(trim(school), ''), 'Not set') as school, count(*)
from public.profiles
group by 1
order by 2 desc;
