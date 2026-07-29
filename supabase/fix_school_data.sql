-- CCN Council Prep Pro — Clean up "school" field on profiles
--
-- Context: the school field used to be free text, so the same real school
-- ended up split across many different spellings (e.g. LUTH shows up as
-- "LUTH", "Lagos University Teaching Hospital", "Lagos university teaching
-- hospital (LUTH)", etc). The profile screen now uses a proper click-to-
-- select dropdown, but existing accounts still have their old free-text
-- values. This migration is a one-time cleanup, safe to re-run (idempotent).

-- Step 1: merge unambiguous free-text variants into the canonical dropdown
-- value they clearly refer to. Only exact, unambiguous matches — nothing
-- guessed.
update public.profiles set school = 'Lagos University Teaching Hospital (LUTH), Lagos'
  where school in (
    'Lagos University Teaching Hospital',
    'Lagos University Teaching Hospital (LUTH)',
    'LUTH',
    'Lagos university teaching hospital',
    'Lagos University teaching hospital'
  );

update public.profiles set school = 'Jos University Teaching Hospital (JUTH), Jos'
  where school in (
    'Critical care Nursing program, college of nursing sciences Jos university teaching hospital',
    'CCN Jos'
  );

update public.profiles set school = 'Alex Ekwueme Federal University Teaching Hospital (AEFUTHA), Abakaliki'
  where school in (
    'AEFUTHA',
    'College of Nursing Sciences, Alex-Ekwueme Federal University Teaching Hospital, Abakaliki',
    'College of nursing science, alex ekwueme federal teaching hospital Abakiliki Ebonyi State',
    'College of nursing science, alex ekwueme federal teaching hospital, Abakiliki Ebonyi State'
  );

update public.profiles set school = 'University of Abuja Teaching Hospital (UATH), Gwagwalada'
  where school in (
    'College of nursing science school of post basic critical care nursing gwagwalada.',
    'College of nursing science school of post basic critical care nursing gwagwalada'
  );

-- Step 2: accounts that signed up before the paid version existed were,
-- as a matter of fact, essentially all JUTH/Jos students. For accounts
-- created on/before the grandfather cutoff (2026-07-21) that still have no
-- usable school on file — blank, or one of the generic/non-specific values
-- nobody could otherwise identify — assign JUTH. This never overwrites an
-- account that already has a specific, different school on file.
update public.profiles
set school = 'Jos University Teaching Hospital (JUTH), Jos'
where created_at <= '2026-07-21 23:59:59+00'
  and (
    school is null
    or trim(school) = ''
    or school in (
      'Post basic critical care',
      'Critical care nursing',
      'Critical Care Nursing',
      'College of Nursing Sciences Critical Care Nursing',
      'School of Critical-Care Nursing'
    )
  );

-- Verify: re-run the same grouped count the Admin Overview screen uses.
select coalesce(nullif(trim(school), ''), 'Not set') as school, count(*)
from public.profiles
group by 1
order by 2 desc;
