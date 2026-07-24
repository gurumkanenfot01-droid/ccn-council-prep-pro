-- CCN Council Prep Pro — corrections to flagged Pre-Council answer keys
-- Run this once in the Supabase SQL Editor, after fix_precouncil_explanations.sql.
--
-- While writing explanations for the 952 uploaded past-exam questions, a
-- handful of answer keys from the source documents turned out to be
-- medically/factually backwards, or the option text itself was corrupted
-- during extraction. This corrects the clear-cut cases and deactivates the
-- ones too broken to salvage (matching the earlier precedent of deactivating
-- one unusable question during the category audit).

-- ===================== ANSWER KEY CORRECTIONS =====================
-- id 4925: acid-base regulation "except" — Kidneys ARE a regulator; Heart is not.
update public.questions set ans_idx = 0 where id = 4925;

-- id 5254: thrombolysis indications "except" — STEMI is the classic indication;
-- NSTEMI is the actual contraindication/exception.
update public.questions set ans_idx = 3 where id = 5254;

-- id 5340, 5343: bronchodilator classes "except" — anticholinergics ARE
-- bronchodilators; beta blockers cause bronchoconstriction and are the
-- real exception.
update public.questions set ans_idx = 3 where id in (5340, 5343);

-- id 5373: describes status epilepticus exactly, but picked the vague
-- paraphrase over the actual medical term offered as an option.
update public.questions set ans_idx = 1 where id = 5373;

-- id 5398: describes the textbook definition of self-awareness, not self-confidence.
update public.questions set ans_idx = 2 where id = 5398;

-- id 5051: successive footnotes to the same work use "ibid," not "et al."
update public.questions set ans_idx = 3 where id = 5051;

-- id 5188: asks the second-largest RAM unit among Byte/MB/GB/TB — picked
-- Byte, the smallest. Gigabyte is second-largest.
update public.questions set ans_idx = 1 where id = 5188;

-- id 5009: question explicitly says "bleeding due to warfarin" — active
-- bleeding needs Vitamin K reversal, not just stopping the drug.
update public.questions set ans_idx = 1 where id = 5009;

-- id 4890: Play-way method is the standard best-practice teaching approach
-- for young children learning letters, not brainstorming.
update public.questions set ans_idx = 0 where id = 4890;

-- id 5170: standard computer architecture term is ALU (Arithmetic Logic
-- Unit), not the non-standard "AU."
update public.questions set ans_idx = 2 where id = 5170;

-- id 5105: "Better co-operation" is an outcome, not a step in the
-- classic need-drive-behavior-satisfaction motivation cycle; tension
-- fits within that cycle (as part of the drive state) and is not the
-- true exception here.
update public.questions set ans_idx = 3 where id = 5105;

-- id 5157: Pattern Theory is a real, commonly cited historical pain
-- theory; "Perception Theory" is not a standard named theory the way
-- Specificity, Pattern, and Gate Control are.
update public.questions set ans_idx = 3 where id = 5157;

-- ===================== DEACTIVATIONS (unusable / unfixable) =====================
-- id 5018: question stem doesn't match its own answer options — a
-- scanning/merge artifact from the source document.
-- id 4930: one option is corrupted, unreadable text ("Metaboliis").
-- id 4777: the question itself is ambiguously worded (missing a clear
-- "select the true/false statement" instruction), so no answer choice
-- can be confidently corrected without the original source document.
-- id 5329: none of the four options accurately describes classic MI
-- pain: the "correct" option as worded is backwards (MI pain does NOT
-- resolve with rest), and no other option fits either, so marking any
-- of them correct would teach something false.
update public.questions set is_active = false where id in (5018, 4930, 4777, 5329);
