-- CCN Council Prep Pro — fix questions with a repeated option
--
-- Went looking for a real "picks the right answer, app marks it wrong"
-- bug (not a content/explanation issue) by scanning every question in the
-- bank (8,929 rows total) for options that repeat word-for-word within the
-- same question. Found 3. When the same text appears twice among the 4
-- choices and only ONE of the two copies is the credited answer, a user
-- can click the "right-looking" text and still be marked wrong, purely
-- because they landed on the un-credited copy — and since options are
-- shuffled per session, which copy shows up where is different every time,
-- making it look random/unfair. This fixes all 3. Run once in the SQL
-- Editor.

-- id 717 (General Critical Care): "Hypovolemic shock" was listed twice
-- (as both option A and D). The four classic shock types are Hypovolemic,
-- Cardiogenic, Obstructive and Distributive — replacing the duplicate with
-- the missing one, Distributive shock. Correct answer (Cardiogenic, index
-- 2 / option C) is unchanged.
update public.questions
set opts = '["Hypovolemic shock", "Obstructive shock", "Cardiogenic shock", "Distributive shock"]'::jsonb
where id = 717;

-- id 862 (Gombe Paper 1, Henderson's fundamental needs): "16" was listed
-- twice (as both option A and C). Correct answer (14, index 3 / option D)
-- is unchanged — replacing the duplicate distractor with a different number.
update public.questions
set opts = '["16", "12", "10", "14"]'::jsonb
where id = 862;

-- id 1735 (PQ2, physical assessment): "Palpation" was listed twice (option
-- A and C), with only C credited — a genuine coin-flip for anyone who
-- picked "Palpation." On top of the duplicate, the question's premise
-- doesn't hold up: Inspection, Palpation, Percussion and Auscultation are
-- all standard, necessary parts of a physical assessment, so there's no
-- single defensible "not necessary" answer to key it to. Deactivating
-- rather than guessing, same approach used for the unfixable Pre-Council
-- questions earlier.
update public.questions set is_active = false where id = 1735;
