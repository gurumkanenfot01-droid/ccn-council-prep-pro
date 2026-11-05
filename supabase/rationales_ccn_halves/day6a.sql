-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 6, part A (questions 1–100)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$Amiodarone is given as a 150 mg IV bolus over 10 minutes, followed by a maintenance infusion of 1 mg/min for 6 hours, then 0.5 mg/min for the next 18 hours. What is the total dose of amiodarone infused over the full 24-hour period (including the bolus)?$x$, $x$1050 mg$x$, $x$✅ Correct answer: 1050 mg
Add up each part of the amiodarone regimen. STEP 1 — Bolus: 150 mg. STEP 2 — First infusion: 1 mg/min for 6 hours = 1 × 60 × 6 = 360 mg. STEP 3 — Second infusion: 0.5 mg/min for the next 18 hours = 0.5 × 60 × 18 = 540 mg. STEP 4 — Total: 150 + 360 + 540 = 1,050 mg in 24 hours. (Strictly, the bolus takes 10 minutes, but the question asks for the total of all parts.) This is the standard IV amiodarone regimen for stable VT or AF with a pulse.

❌ Why the other options are wrong:
• 660 mg — 660 mg forgets the 540 mg second infusion part (150 + 360 + 150 by mistake) — it is too low.
• 900 mg — 900 mg leaves out the 150 mg bolus (360 + 540).
• 1200 mg — 1,200 mg would be obtained by wrongly running 1 mg/min for 18 hours or similar miscalculation.

⭐ Key point: Amiodarone is irritant to veins — give through a central line where possible (or a large peripheral vein with an in-line filter) and monitor BP, heart rate and QT.$x$, null),
(2, $x$Diazepam injection is available as 10 mg in 2 mL. The prescription is 7.5 mg. What volume should be given?$x$, $x$1.5 mL$x$, $x$✅ Correct answer: 1.5 mL
Use the formula: VOLUME = (DOSE WANTED ÷ DOSE IN STOCK) × VOLUME OF STOCK. Here: (7.5 mg ÷ 10 mg) × 2 mL = 0.75 × 2 = 1.5 mL. Check: 10 mg is in 2 mL, so 5 mg is in 1 mL; 7.5 mg is one and a half times 5 mg, so 1.5 mL. ✓

❌ Why the other options are wrong:
• 0.8 mL — 0.8 mL would give only 4 mg.
• 2.7 mL — 2.7 mL would give 13.5 mg — an overdose.
• 3 mL — 3 mL would give 15 mg — double the dose.

⭐ Key point: "What you WANT over what you HAVE, times the volume it's in" (D/H × V). Always do a "common sense" check: is the answer more or less than the stock volume?$x$, null),
(3, $x$Soluble insulin 50 units is made up to 50 mL with normal saline. The order is 5 units/hour. What rate should be set?$x$, $x$5 mL/hr$x$, $x$✅ Correct answer: 5 mL/hr
First work out the CONCENTRATION: 50 units in 50 mL = 1 unit per mL. To give 5 units per hour, you need 5 mL per hour. Formula: Rate (mL/hr) = Dose per hour ÷ Concentration = 5 units/hr ÷ 1 unit/mL = 5 mL/hr.

❌ Why the other options are wrong:
• 20 mL/hr — 20 mL/hr would give 20 units/hr — four times the dose; dangerous hypoglycaemia.
• 2.5 mL/hr — 2.5 mL/hr would give only 2.5 units/hr.
• 10 mL/hr — 10 mL/hr would give 10 units/hr — double the dose.

⭐ Key point: The standard "1 unit per mL" insulin infusion makes the pump rate equal to the units per hour. Check blood glucose hourly and watch potassium.$x$, null),
(4, $x$Vancomycin is prescribed at 15 mg/kg per dose for a patient weighing 80 kg. What single dose should be given?$x$, $x$1,200 mg$x$, $x$✅ Correct answer: 1,200 mg
Many ICU drugs are prescribed PER KILOGRAM of body weight, so the dose matches the patient's size. Formula: DOSE = mg/kg × WEIGHT (kg). Here: 15 mg/kg × 80 kg = 1,200 mg for each dose. Step-by-step check: 15 × 80 = (10 × 80) + (5 × 80) = 800 + 400 = 1,200 mg. ✓ Use the patient's ACTUAL, MEASURED weight (not a guess), because a wrong weight gives a wrong dose. Vancomycin is a "high-alert" antibiotic: too little fails to treat serious infections like MRSA; too much damages the kidneys and ears.

❌ Why the other options are wrong:
• 600 mg — 600 mg is only 7.5 mg/kg — half the dose; the infection may not be treated.
• 1,350 mg — 1,350 mg is about 16.9 mg/kg — slightly too much (it matches a weight of 90 kg).
• 1,320 mg — 1,320 mg is 16.5 mg/kg (or 15 mg/kg for 88 kg) — the wrong number was used.

⭐ Key point: Give vancomycin slowly (no faster than 1 g per hour) to avoid the "red man" infusion reaction, and check TROUGH levels and kidney function to adjust later doses.$x$, null),
(5, $x$Using the Parkland formula for a 70 kg patient with 40% TBSA burns, how much fluid should be given in the first 8 hours after the burn?$x$, $x$5,600 mL$x$, $x$✅ Correct answer: 5,600 mL
PARKLAND FORMULA: Total fluid in 24 hours = 4 mL × weight (kg) × %TBSA burned. Here: 4 × 70 × 40 = 11,200 mL. HALF of this is given in the FIRST 8 HOURS FROM THE TIME OF THE BURN: 11,200 ÷ 2 = 5,600 mL. The other half (5,600 mL) is given over the next 16 hours.

❌ Why the other options are wrong:
• 3,733.3 mL — 3,733.3 mL is one-third of 11,200 — not the Parkland split.
• 2,800 mL — 2,800 mL is one-quarter.
• 11,200 mL — 11,200 mL is the full 24-hour total, not the first 8 hours.

⭐ Key point: Use Ringer's lactate/Hartmann's. Adjust the rate according to urine output (target 0.5–1 mL/kg/hr in adults; 1 mL/kg/hr in children).$x$, null),
(6, $x$A patient weighs 55 lb. A drug is prescribed at 10 mg/kg. What dose should be given?$x$, $x$250 mg$x$, $x$✅ Correct answer: 250 mg
Convert pounds (lb) to kilograms: 1 kg = 2.2 lb, so kg = lb ÷ 2.2. 55 lb ÷ 2.2 = 25 kg. Dose = 10 mg/kg × 25 kg = 250 mg.

❌ Why the other options are wrong:
• 113.6 mg — 113.6 mg comes from wrongly dividing 250 by 2.2 again (double conversion).
• 500 mg — 500 mg would be 20 mg/kg.
• 550 mg — 550 mg comes from using pounds as if they were kg (10 × 55).

⭐ Key point: Always use weight in KILOGRAMS for drug calculations. Forgetting to convert pounds to kg causes a dose more than double the correct amount.$x$, null),
(7, $x$500 mL of Hartmann's solution is prescribed to run over 8 hours using a giving set with a drop factor of 15 drops/mL. What is the correct drip rate?$x$, $x$16 drops/min$x$, $x$✅ Correct answer: 16 drops/min
DROPS PER MINUTE = (VOLUME in mL × DROP FACTOR) ÷ TIME in MINUTES. Here: (500 × 15) ÷ (8 × 60) = 7,500 ÷ 480 = 15.6 ≈ 16 drops/min.

❌ Why the other options are wrong:
• 32 drops/min — 32 drops/min would finish the bag in about 4 hours.
• 62 drops/min — 62 drops/min (500 ÷ 8 = 62.5 mL/hr) is the mL/hr rate, not drops/min.
• 21 drops/min — 21 drops/min would finish in about 6 hours.

⭐ Key point: Round to the nearest whole drop. Check the drop factor on the giving-set packet (10, 15 or 20 for adult sets; 60 for paediatric/micro-drip sets).$x$, null),
(8, $x$Dopamine 400 mg is diluted to 250 mL and prescribed at 12 mcg/kg/min for a patient weighing 75 kg. At what rate (mL/hr) should the infusion pump be set?$x$, $x$33.8 mL/hr$x$, $x$✅ Correct answer: 33.8 mL/hr
STEP 1 — Concentration: 400 mg in 250 mL = 1.6 mg/mL = 1,600 mcg/mL. STEP 2 — Dose per hour: 12 mcg/kg/min × 75 kg × 60 min = 54,000 mcg/hr. STEP 3 — Rate: 54,000 ÷ 1,600 = 33.75 ≈ 33.8 mL/hr.

❌ Why the other options are wrong:
• 4.5 mL/hr — 4.5 mL/hr would give only about 1.6 mcg/kg/min.
• 0.6 mL/hr — 0.6 mL/hr is far too low (a units error).
• 67.5 mL/hr — 67.5 mL/hr is double the correct rate (24 mcg/kg/min).

⭐ Key point: Formula: Rate (mL/hr) = Dose (mcg/kg/min) × Weight (kg) × 60 ÷ Concentration (mcg/mL).$x$, null),
(9, $x$Ceftazidime 40 mg/kg/day is prescribed in divided doses every 8 hours for an infant weighing 10 kg. How much is each dose?$x$, $x$133.3 mg$x$, $x$✅ Correct answer: 133.3 mg
STEP 1 — Daily dose: 40 mg/kg/day × 10 kg = 400 mg per day. STEP 2 — Divide into doses: every 8 hours = 3 doses per day (24 ÷ 8 = 3). STEP 3 — Each dose: 400 ÷ 3 = 133.3 mg.

❌ Why the other options are wrong:
• 100 mg — 100 mg would be four doses a day (6-hourly).
• 400 mg — 400 mg is the whole day's dose, not each dose — a triple overdose.
• 13.3 mg — 13.3 mg is a decimal place error (ten times too little).

⭐ Key point: When a drug is prescribed "per day in divided doses", first calculate the daily total, then divide by the number of doses.$x$, null),
(10, $x$A patient opens the eyes to voice, is fully orientated and localises to pain. What is the Glasgow Coma Scale score?$x$, $x$13/15$x$, $x$✅ Correct answer: 13/15
GLASGOW COMA SCALE (GCS) = EYES + VERBAL + MOTOR. EYES: opens to VOICE = 3 (spontaneous 4, voice 3, pain 2, none 1). VERBAL: fully ORIENTATED = 5 (orientated 5, confused 4, inappropriate words 3, sounds 2, none 1). MOTOR: LOCALISES to pain = 5 (obeys commands 6, localises 5, withdraws 4, abnormal flexion 3, extension 2, none 1). Total: 3 + 5 + 5 = 13/15.

❌ Why the other options are wrong:
• 14/15 — 14/15 would need eyes opening spontaneously or obeying commands.
• 12/15 — 12/15 underscores one component.
• 15/15 — 15/15 requires eyes open spontaneously, orientated, AND obeying commands.

⭐ Key point: Report GCS by components (e.g. E3 V5 M5 = 13), because the parts give more information than the total. Intubated patients are scored "VT".$x$, null),
(11, $x$Heparin 25,000 units in 500 mL is ordered at 800 units/hour. What rate (mL/hr) should be set on the pump?$x$, $x$16 mL/hr$x$, $x$✅ Correct answer: 16 mL/hr
Heparin infusions are prescribed in UNITS PER HOUR. STEP 1 — Find the CONCENTRATION: 25,000 units ÷ 500 mL = 50 units in every 1 mL. STEP 2 — Divide the dose by the concentration: 800 units/hr ÷ 50 units/mL = 16 mL/hr. Check: 16 mL × 50 units = 800 units. ✓ Heparin is a HIGH-ALERT medicine: a pump error can cause fatal bleeding (too much) or new clots (too little).

❌ Why the other options are wrong:
• 50 mL/hr — 50 mL/hr would give 2,500 units/hr — more than three times the dose, with a high risk of bleeding.
• 32 mL/hr — 32 mL/hr would give 1,600 units/hr — double the dose.
• 8 mL/hr — 8 mL/hr would give 400 units/hr — half the dose, so the clot may grow.

⭐ Key point: Always double-check heparin calculations and pump settings with a second nurse, follow the unit's heparin nomogram, and check the aPTT (or anti-Xa) 6 hours after any rate change.$x$, null),
(12, $x$500 mL of 5% dextrose is prescribed to run over 24 hours using a giving set with a drop factor of 10 drops/mL. What is the correct drip rate?$x$, $x$3 drops/min$x$, $x$✅ Correct answer: 3 drops/min
DROPS PER MINUTE = (VOLUME × DROP FACTOR) ÷ TIME (minutes). Here: (500 × 10) ÷ (24 × 60) = 5,000 ÷ 1,440 = 3.47 ≈ 3 drops/min.

❌ Why the other options are wrong:
• 21 drops/min — 21 drops/min (500 ÷ 24 = 20.8 mL/hr) is the mL/hr rate, not drops/min.
• 6 drops/min — 6 drops/min would finish the bag in about 14 hours.
• 5 drops/min — 5 drops/min would finish in about 17 hours.

⭐ Key point: Very slow drip rates like this are hard to control by gravity — an infusion pump is safer.$x$, null),
(13, $x$A 50 year old patient weighing 60kg with 36% secondary degree burns needs fluid replacement therapy in ICU. Using Parkland formula, calculate the total fluid he will need in 24 hours?$x$, $x$8640ml$x$, $x$✅ Correct answer: 8640ml
PARKLAND FORMULA: Total fluid in 24 hours = 4 mL × weight (kg) × %TBSA. Here: 4 × 60 × 36 = 8,640 mL. Half (4,320 mL) is given in the first 8 hours, and the rest (4,320 mL) over the next 16 hours.

❌ Why the other options are wrong:
• 4320ml — 4,320 mL is only the first-8-hour half.
• 2160ml — 2,160 mL is a quarter of the total (2 mL formula with an error).
• 12000ml — 12,000 mL does not match the formula.

⭐ Key point: Only partial-thickness (second-degree) and full-thickness (third-degree) burns are counted in the TBSA; superficial (first-degree) burns are not counted.$x$, null),
(14, $x$A patient has burns to the anterior trunk, entire right arm, and anterior left leg. Using the Rule of Nines, the TBSA burned is:$x$, $x$36%$x$, $x$✅ Correct answer: 36%
RULE OF NINES (adult): head and neck 9%; each arm 9%; front of trunk 18%; back of trunk 18%; each leg 18% (front 9%, back 9%); perineum 1%. Here: anterior trunk = 18%; entire right arm = 9%; anterior left leg = 9%. Total: 18 + 9 + 9 = 36%.

❌ Why the other options are wrong:
• 27% — 27% misses one 9% area.
• 54% — 54% counts the whole left leg (18%) and the whole trunk front and back.
• 45% — 45% overcounts.

⭐ Key point: The rule of nines is less accurate in children (larger head); use the Lund and Browder chart for children. The patient's palm (including fingers) is about 1% TBSA for small or scattered burns.$x$, null),
(15, $x$Dobutamine 500 mg is diluted to 250 mL and prescribed at 5 mcg/kg/min for a patient weighing 60 kg. At what rate (mL/hr) should the infusion pump be set?$x$, $x$9 mL/hr$x$, $x$✅ Correct answer: 9 mL/hr
STEP 1 — Concentration: 500 mg in 250 mL = 2 mg/mL = 2,000 mcg/mL. STEP 2 — Dose per hour: 5 mcg/kg/min × 60 kg × 60 min = 18,000 mcg/hr. STEP 3 — Rate: 18,000 ÷ 2,000 = 9 mL/hr.

❌ Why the other options are wrong:
• 18 mL/hr — 18 mL/hr is double the correct rate (10 mcg/kg/min).
• 1.5 mL/hr — 1.5 mL/hr is far too low.
• 0.1 mL/hr — 0.1 mL/hr is a units error.

⭐ Key point: Dobutamine usual range: 2.5–20 mcg/kg/min. Watch for tachycardia, arrhythmias and hypotension.$x$, null),
(16, $x$How many grams of glucose are in 1000 mL of 10% dextrose?$x$, $x$100 g$x$, $x$✅ Correct answer: 100 g
A PERCENTAGE solution (% w/v) means GRAMS per 100 mL. So 10% dextrose = 10 g in every 100 mL. In 1,000 mL: 10 × 10 = 100 g of glucose.

❌ Why the other options are wrong:
• 50 g — 50 g is in 1,000 mL of 5% dextrose.
• 10,000 g — 10,000 g is a gross error (ten kilograms).
• 1,000 g — 1,000 g is ten times too much.

⭐ Key point: 1 g of glucose gives about 4 kcal, so 1 L of 10% dextrose gives about 400 kcal; 5% dextrose gives about 200 kcal per litre.$x$, null),
(17, $x$A head-injured patient has BP 120/60 mmHg and ICP 35 mmHg. What is the cerebral perfusion pressure (CPP)?$x$, $x$45 mmHg$x$, $x$✅ Correct answer: 45 mmHg
CEREBRAL PERFUSION PRESSURE (CPP) = MEAN ARTERIAL PRESSURE (MAP) − INTRACRANIAL PRESSURE (ICP). STEP 1 — MAP = (systolic + 2 × diastolic) ÷ 3 = (120 + 120) ÷ 3 = 240 ÷ 3 = 80 mmHg. STEP 2 — CPP = 80 − 35 = 45 mmHg. This is LOW (target CPP is usually 60–70 mmHg), so the brain is at risk of ischaemia; ICP is also high (normal 5–15 mmHg; treat above 20–22).

❌ Why the other options are wrong:
• 25 mmHg — 25 mmHg uses the diastolic pressure (60 − 35) instead of MAP.
• 85 mmHg — 85 mmHg uses systolic minus ICP (120 − 35).
• 115 mmHg — 115 mmHg is not a valid calculation.

⭐ Key point: Improve CPP by lowering ICP (head-up 30°, sedation, osmotherapy, CSF drainage) and/or raising MAP (fluids, vasopressors).$x$, null),
(18, $x$An adult has burns to the whole left leg, the whole left arm and the head and neck. Using the Rule of Nines, what is the TBSA burned?$x$, $x$36%$x$, $x$✅ Correct answer: 36%
The RULE OF NINES divides an adult's body surface into areas of 9% (or multiples of 9): head and neck 9%; each whole arm 9%; front of trunk 18%; back of trunk 18%; each whole leg 18%; perineum 1% — total 100%. Here: WHOLE LEFT LEG = 18%; WHOLE LEFT ARM = 9%; HEAD AND NECK = 9%. Total = 18 + 9 + 9 = 36% TBSA. Only partial-thickness and full-thickness burns are counted; simple redness (superficial burns) is not. Burns above 15–20% TBSA in adults need formal IV fluid resuscitation (e.g. Parkland formula).

❌ Why the other options are wrong:
• 40.5% — 40.5% adds an extra 4.5% (half an arm) that was not burned.
• 45% — 45% adds an extra 9%.
• 27% — 27% wrongly counts the leg as 9% instead of 18%.

⭐ Key point: For children, use the Lund and Browder chart, because a child's head is a larger part of the body (up to about 18% in infants) and the legs are smaller.$x$, null),
(19, $x$A 90 kg man with 45% TBSA burns arrives 2 hours after the injury and has had no IV fluid. Using the Parkland formula, at what rate should the first half of the fluid run?$x$, $x$1,350 mL/hr$x$, $x$✅ Correct answer: 1,350 mL/hr
STEP 1 — Total 24-hour fluid (Parkland): 4 × 90 × 45 = 16,200 mL. STEP 2 — First half: 8,100 mL, to be given in the first 8 hours FROM THE TIME OF THE BURN. STEP 3 — He arrived 2 hours after the burn with no fluid, so 8,100 mL must be given in the remaining 6 hours. STEP 4 — Rate: 8,100 ÷ 6 = 1,350 mL/hr.

❌ Why the other options are wrong:
• 2,700 mL/hr — 2,700 mL/hr would give 8,100 mL in 3 hours.
• 675 mL/hr — 675 mL/hr is the rate for the second half over 12 hours.
• 1,012.5 mL/hr — 1,012.5 mL/hr is 8,100 ÷ 8 — it ignores the 2 hours already lost.

⭐ Key point: The 8-hour clock starts at the time of the burn, not arrival. Very high rates need large-bore access and close monitoring for over-resuscitation.$x$, null),
(20, $x$Glyceryl trinitrate (nitroglycerin) is mixed as 50 mg in 250 mL D5W and ordered to infuse at 20 mcg/min. What rate should the pump deliver, in mL/hr?$x$, $x$6 mL/hr$x$, $x$✅ Correct answer: 6 mL/hr
STEP 1 — Concentration: 50 mg in 250 mL = 0.2 mg/mL = 200 mcg/mL. STEP 2 — Dose per hour: 20 mcg/min × 60 = 1,200 mcg/hr. STEP 3 — Rate: 1,200 ÷ 200 = 6 mL/hr.

❌ Why the other options are wrong:
• 3 mL/hr — 3 mL/hr gives only 10 mcg/min.
• 24 mL/hr — 24 mL/hr gives 80 mcg/min.
• 12 mL/hr — 12 mL/hr gives 40 mcg/min.

⭐ Key point: GTN (not weight-based here) is titrated to chest pain and BP. Watch for hypotension and headache; avoid with sildenafil.$x$, null),
(21, $x$An oxygen cylinder contains 460 litres of oxygen. The patient needs 15 L/min during transfer. Approximately how long will it last?$x$, $x$About 31 minutes$x$, $x$✅ Correct answer: About 31 minutes
TIME = VOLUME ÷ FLOW RATE. 460 L ÷ 15 L/min = 30.7 minutes ≈ ABOUT 31 MINUTES.

❌ Why the other options are wrong:
• About 61 minutes — 61 minutes would be at 7.5 L/min.
• About 115 minutes — 115 minutes would be at 4 L/min.
• About 5 minutes — 5 minutes is far too short.

⭐ Key point: Always take a spare cylinder (or a larger one) for transfers, as cylinders should not be run completely empty — keep a safety margin (e.g. plan for 1.5–2 times the expected journey time).$x$, null),
(22, $x$A loading dose of phenytoin at 18 mg/kg is ordered for a 70 kg patient. What is the total loading dose in milligrams?$x$, $x$1260 mg$x$, $x$✅ Correct answer: 1260 mg
A LOADING DOSE is a larger first dose that quickly brings the drug level in the blood up to the effective (therapeutic) range. It is calculated by weight: DOSE = mg/kg × WEIGHT. Here: 18 mg/kg × 70 kg = 1,260 mg. Check: (18 × 70) = (20 × 70) − (2 × 70) = 1,400 − 140 = 1,260 mg. ✓ Phenytoin loading is used in status epilepticus (after benzodiazepines) to stop seizures and prevent recurrence.

❌ Why the other options are wrong:
• 1400 mg — 1,400 mg is 20 mg/kg — slightly too much.
• 700 mg — 700 mg is only 10 mg/kg — not enough to reach a therapeutic level.
• 980 mg — 980 mg is 14 mg/kg — not enough.

⭐ Key point: Give IV phenytoin no faster than 50 mg/min in adults (25 mg/min in elderly or cardiac patients) with continuous ECG and BP monitoring — fast infusion can cause hypotension, bradycardia and cardiac arrest. Mix only with 0.9% saline (it precipitates in dextrose) and use a filter. Watch the IV site — extravasation can cause severe tissue damage ("purple glove syndrome").$x$, null),
(23, $x$What is the 24-hour maintenance fluid requirement for a child weighing 22 kg (Holliday–Segar method)?$x$, $x$1,540 mL$x$, $x$✅ Correct answer: 1,540 mL
HOLLIDAY–SEGAR method: 100 mL/kg for the FIRST 10 kg; 50 mL/kg for the NEXT 10 kg (11–20 kg); 20 mL/kg for EACH kg ABOVE 20 kg. For 22 kg: first 10 kg = 1,000 mL; next 10 kg = 500 mL; remaining 2 kg = 2 × 20 = 40 mL. Total: 1,000 + 500 + 40 = 1,540 mL in 24 hours.

❌ Why the other options are wrong:
• 2,200 mL — 2,200 mL is 100 mL/kg for all 22 kg.
• 1,100 mL — 1,100 mL is 50 mL/kg for all 22 kg.
• 1,740 mL — 1,740 mL miscalculates the last part (2 × 120).

⭐ Key point: The hourly equivalent is the 4-2-1 rule: 40 + 20 + 2 = 62 mL/hr (≈ 1,488 mL/day — slightly different due to rounding).$x$, null),
(24, $x$Over 24 hours a patient received 2,400 mL IV fluid and 0 mL orally. Output was urine 1,500 mL, nasogastric aspirate 0 mL and wound drain 100 mL. What is the 24-hour fluid balance?$x$, $x$+800 mL$x$, $x$✅ Correct answer: +800 mL
FLUID BALANCE = TOTAL INPUT − TOTAL OUTPUT. Input: IV 2,400 mL + oral 0 = 2,400 mL. Output: urine 1,500 + NG 0 + drain 100 = 1,600 mL. Balance: 2,400 − 1,600 = +800 mL (POSITIVE balance — more in than out).

❌ Why the other options are wrong:
• +4,000 mL — +4,000 mL adds input and output together.
• +900 mL — +900 mL forgets the drain output (2,400 − 1,500).
• -800 mL — −800 mL reverses the sign.

⭐ Key point: Remember insensible losses (skin, breathing — about 500–800 mL/day, more with fever) are not measured, so the true balance is less positive.$x$, null),
(25, $x$Using the 4-2-1 rule, what is the hourly maintenance fluid rate for a child weighing 12 kg?$x$, $x$44 mL/hr$x$, $x$✅ Correct answer: 44 mL/hr
The 4-2-1 RULE (hourly maintenance): 4 mL/kg/hr for the FIRST 10 kg; 2 mL/kg/hr for the NEXT 10 kg; 1 mL/kg/hr for each kg ABOVE 20 kg. For 12 kg: first 10 kg = 40 mL/hr; next 2 kg = 2 × 2 = 4 mL/hr. Total: 44 mL/hr.

❌ Why the other options are wrong:
• 48 mL/hr — 48 mL/hr is 4 mL/kg for all 12 kg.
• 24 mL/hr — 24 mL/hr is 2 mL/kg for all 12 kg.
• 54 mL/hr — 54 mL/hr adds incorrectly.

⭐ Key point: Many sick children need restricted fluids (e.g. two-thirds of maintenance) because of increased ADH secretion; follow local guidelines.$x$, null),
(26, $x$1,500 mL of Hartmann's solution is prescribed to run over 12 hours using a giving set with a drop factor of 10 drops/mL. What is the correct drip rate?$x$, $x$21 drops/min$x$, $x$✅ Correct answer: 21 drops/min
DROPS PER MINUTE = (VOLUME × DROP FACTOR) ÷ TIME (minutes). Here: (1,500 × 10) ÷ (12 × 60) = 15,000 ÷ 720 = 20.8 ≈ 21 drops/min.

❌ Why the other options are wrong:
• 125 drops/min — 125 drops/min (1,500 ÷ 12 = 125) is the mL/hr rate, not drops/min.
• 31 drops/min — 31 drops/min would finish in about 8 hours.
• 42 drops/min — 42 drops/min would finish in about 6 hours.

⭐ Key point: With a drop factor of 10, drops/min = mL/hr ÷ 6. With 15, divide by 4. With 20, divide by 3. With 60, drops/min = mL/hr.$x$, null),
(27, $x$Noradrenaline (norepinephrine) 8 mg is diluted to 250 mL and prescribed at 0.15 mcg/kg/min for a patient weighing 60 kg. At what rate (mL/hr) should the infusion pump be set?$x$, $x$16.9 mL/hr$x$, $x$✅ Correct answer: 16.9 mL/hr
STEP 1 — Concentration: 8 mg in 250 mL = 0.032 mg/mL = 32 mcg/mL. STEP 2 — Dose per hour: 0.15 mcg/kg/min × 60 kg × 60 min = 540 mcg/hr. STEP 3 — Rate: 540 ÷ 32 = 16.875 ≈ 16.9 mL/hr.

❌ Why the other options are wrong:
• 0.3 mL/hr — 0.3 mL/hr is a units error.
• 33.8 mL/hr — 33.8 mL/hr is double (0.3 mcg/kg/min).
• 2.8 mL/hr — 2.8 mL/hr is far too low.

⭐ Key point: Noradrenaline should be given through a central line where possible; extravasation can cause tissue necrosis.$x$, null),
(28, $x$An adrenaline (epinephrine) infusion is mixed as 4 mg in 500 mL D5W and ordered to run at 0.1 mcg/kg/min for a 75 kg patient. What is the correct infusion rate in mL/hr?$x$, $x$56.25 mL/hr$x$, $x$✅ Correct answer: 56.25 mL/hr
STEP 1 — Concentration: 4 mg in 500 mL = 0.008 mg/mL = 8 mcg/mL. STEP 2 — Dose per hour: 0.1 mcg/kg/min × 75 kg × 60 = 450 mcg/hr. STEP 3 — Rate: 450 ÷ 8 = 56.25 mL/hr.

❌ Why the other options are wrong:
• 7.5 mL/hr — 7.5 mL/hr is the dose in mcg/min (0.1 × 75), not mL/hr.
• 112.5 mL/hr — 112.5 mL/hr is double.
• 28.1 mL/hr — 28.1 mL/hr is half.

⭐ Key point: Adrenaline at this dilution needs a high volume; more concentrated solutions are often used in ICU to reduce fluid load.$x$, null),
(29, $x$Dobutamine 500 mg is diluted to 250 mL and prescribed at 15 mcg/kg/min for a patient weighing 60 kg. At what rate (mL/hr) should the infusion pump be set?$x$, $x$27 mL/hr$x$, $x$✅ Correct answer: 27 mL/hr
STEP 1 — Concentration: 500 mg in 250 mL = 2,000 mcg/mL. STEP 2 — Dose per hour: 15 mcg/kg/min × 60 kg × 60 = 54,000 mcg/hr. STEP 3 — Rate: 54,000 ÷ 2,000 = 27 mL/hr.

❌ Why the other options are wrong:
• 4.5 mL/hr — 4.5 mL/hr is far too low.
• 54 mL/hr — 54 mL/hr is double (30 mcg/kg/min).
• 0.5 mL/hr — 0.5 mL/hr is a units error.

⭐ Key point: Compare with question 15: at the same concentration and weight, 5 mcg/kg/min = 9 mL/hr, so 15 mcg/kg/min = 27 mL/hr (three times).$x$, null),
(30, $x$Glyceryl trinitrate (GTN) 50 mg in 500 mL is ordered at 10 mcg/min. What pump rate (mL/hr) will deliver this dose?$x$, $x$6 mL/hr$x$, $x$✅ Correct answer: 6 mL/hr
Nitrates such as GTN are prescribed in MICROGRAMS per MINUTE, but pumps run in mL per HOUR, so units must be converted. STEP 1 — Concentration: 50 mg in 500 mL = 0.1 mg/mL = 100 micrograms/mL (1 mg = 1,000 micrograms). STEP 2 — Dose per HOUR: 10 micrograms/min × 60 minutes = 600 micrograms/hr. STEP 3 — Rate: 600 ÷ 100 = 6 mL/hr. Check: 6 mL/hr × 100 mcg/mL = 600 mcg/hr ÷ 60 = 10 mcg/min. ✓

❌ Why the other options are wrong:
• 12 mL/hr — 12 mL/hr would give 20 mcg/min — double the dose; risk of hypotension.
• 3 mL/hr — 3 mL/hr would give 5 mcg/min — half the dose.
• 0.1 mL/hr — 0.1 mL/hr is the concentration in mg/mL, not a pump rate.

⭐ Key point: GTN is titrated to symptom relief (chest pain, breathlessness) and BP — check BP every 5–15 minutes when changing the rate. Stop or reduce if systolic BP falls below about 90 mmHg. Never give with sildenafil or tadalafil (severe hypotension).$x$, null),
(31, $x$Dobutamine 250 mg is diluted to 250 mL and prescribed at 10 mcg/kg/min for a patient weighing 60 kg. At what rate (mL/hr) should the infusion pump be set?$x$, $x$36 mL/hr$x$, $x$✅ Correct answer: 36 mL/hr
STEP 1 — Concentration: 250 mg in 250 mL = 1 mg/mL = 1,000 mcg/mL. STEP 2 — Dose per hour: 10 mcg/kg/min × 60 kg × 60 = 36,000 mcg/hr. STEP 3 — Rate: 36,000 ÷ 1,000 = 36 mL/hr.

❌ Why the other options are wrong:
• 72 mL/hr — 72 mL/hr is double.
• 0.6 mL/hr — 0.6 mL/hr is the dose in mg/min (10 × 60 ÷ 1000), not mL/hr.
• 6 mL/hr — 6 mL/hr is too low.

⭐ Key point: Shortcut for a 1 mg/mL solution: Rate (mL/hr) = mcg/kg/min × weight × 0.06.$x$, null),
(32, $x$Over 24 hours a patient received 2,500 mL IV fluid and 800 mL orally. Output was urine 1,500 mL, nasogastric aspirate 600 mL and wound drain 350 mL. What is the 24-hour fluid balance?$x$, $x$+850 mL$x$, $x$✅ Correct answer: +850 mL
FLUID BALANCE = INPUT − OUTPUT. Input: IV 2,500 + oral 800 = 3,300 mL. Output: urine 1,500 + NG 600 + drain 350 = 2,450 mL. Balance: 3,300 − 2,450 = +850 mL.

❌ Why the other options are wrong:
• +1,800 mL — +1,800 mL forgets the NG and drain losses (3,300 − 1,500).
• +5,750 mL — +5,750 mL adds input and output.
• -850 mL — −850 mL reverses the sign.

⭐ Key point: Include ALL inputs (IV, oral, NG feeds, drug infusions) and ALL outputs (urine, drains, NG aspirate, vomit, stool) in the fluid chart.$x$, null),
(33, $x$20 mmol of potassium chloride in 500 mL normal saline is prescribed over 4 hours. What is the pump rate and how much potassium is given each hour?$x$, $x$125 mL/hr, giving 5 mmol K⁺ per hour$x$, $x$✅ Correct answer: 125 mL/hr, giving 5 mmol K⁺ per hour
STEP 1 — Rate: 500 mL ÷ 4 hours = 125 mL/hr. STEP 2 — Potassium per hour: 20 mmol ÷ 4 hours = 5 mmol/hr. Check: 20 mmol in 500 mL = 0.04 mmol/mL × 125 mL/hr = 5 mmol/hr. ✓

❌ Why the other options are wrong:
• 125 mL/hr, giving 4 mmol K⁺ per hour — 4 mmol/hr is wrong (20 ÷ 5).
• 2.1 mL/hr, giving 5 mmol K⁺ per hour — 2.1 mL/hr is far too slow.
• 250 mL/hr, giving 10 mmol K⁺ per hour — 250 mL/hr would run in 2 hours, giving 10 mmol/hr.

⭐ Key point: Peripheral potassium is usually given at no more than 10 mmol/hr; faster rates need a central line and ECG monitoring. Always use a pump, and never give potassium as an IV bolus.$x$, null),
(34, $x$One litre of IV fluid is to infuse over 10 hours using a macrodrip set with a drop factor of 10 gtt/mL. What is the correct rate in drops per minute?$x$, $x$17 gtt/min$x$, $x$✅ Correct answer: 17 gtt/min
For a gravity drip (no pump), count DROPS per minute. Formula: DROPS/MIN = (VOLUME in mL × DROP FACTOR) ÷ TIME in MINUTES. Here: volume = 1,000 mL; drop factor = 10 drops (gtt) per mL (a "macrodrip" set); time = 10 hours × 60 = 600 minutes. Calculation: (1,000 × 10) ÷ 600 = 10,000 ÷ 600 = 16.7, which rounds to 17 gtt/min. Check: 17 drops/min ÷ 10 drops/mL = 1.7 mL/min × 600 min ≈ 1,020 mL. ✓

❌ Why the other options are wrong:
• 100 gtt/min — 100 gtt/min is the rate in mL/HOUR (1,000 ÷ 10 = 100), not drops per minute — it would empty the bag in about 1.7 hours.
• 25 gtt/min — 25 gtt/min would finish the bag in about 6.7 hours.
• 10 gtt/min — 10 gtt/min would take about 16.7 hours.

⭐ Key point: With a 10 gtt/mL set, a quick shortcut is drops/min = mL/hr ÷ 6. Count the drops for a full minute, and recheck the rate regularly because gravity drips change when the patient moves.$x$, null),
(35, $x$An adult has burns to the whole right leg and the perineum. Using the Rule of Nines, what is the TBSA burned?$x$, $x$19%$x$, $x$✅ Correct answer: 19%
RULE OF NINES (adult): each WHOLE LEG = 18% (front 9% + back 9%); the PERINEUM (genital area) = 1%. Here: whole right leg 18% + perineum 1% = 19% TBSA. A burn of 19% in an adult usually needs IV fluid resuscitation. PERINEAL burns are also important because of the high risk of infection (contamination with urine and stool) — they are a reason for referral to a burns centre regardless of size.

❌ Why the other options are wrong:
• 28% — 28% adds an extra 9% that was not burned.
• 23.5% — 23.5% adds an extra 4.5%.
• 10% — 10% counts the leg as only 9%.

⭐ Key point: Burns that should be referred to a specialist burns unit include those affecting the face, hands, feet, genitalia/perineum, major joints, circumferential burns, inhalation injury, electrical and chemical burns, and large TBSA burns.$x$, null),
(36, $x$A patient's blood pressure is 164/58 mmHg. What is the mean arterial pressure (MAP)?$x$, $x$93 mmHg$x$, $x$✅ Correct answer: 93 mmHg
MEAN ARTERIAL PRESSURE (MAP) = (SYSTOLIC + 2 × DIASTOLIC) ÷ 3, or DIASTOLIC + ⅓ × (SYSTOLIC − DIASTOLIC). Here: (164 + 2 × 58) ÷ 3 = (164 + 116) ÷ 3 = 280 ÷ 3 = 93.3 ≈ 93 mmHg.

❌ Why the other options are wrong:
• 129 mmHg — 129 mmHg is far too high; it would be closer to the systolic value and ignores that diastole lasts longer.
• 106 mmHg — 106 mmHg is a calculation error.
• 111 mmHg — 111 mmHg is the simple average of systolic and diastolic ((164 + 58) ÷ 2), which is wrong — the heart spends longer in diastole.

⭐ Key point: A MAP of at least 65 mmHg is usually needed to perfuse vital organs.$x$, null),
(37, $x$250 mL of normal saline is running at 63 mL/hr. How long will it take to finish?$x$, $x$3 h 58 min$x$, $x$✅ Correct answer: 3 h 58 min
To find how long an infusion will last: TIME = VOLUME ÷ RATE. Here: 250 mL ÷ 63 mL/hr = 3.968 hours. Convert the decimal part to minutes by multiplying by 60: 0.968 × 60 = 58 minutes. So the bag will run for about 3 HOURS 58 MINUTES. Check: 63 mL/hr × 3.97 hr ≈ 250 mL. ✓ Knowing when a bag will finish helps the nurse prepare the next infusion in time, so important therapy is not interrupted.

❌ Why the other options are wrong:
• 15 h — 15 hours is far too long (it would mean a rate of about 17 mL/hr).
• 4 h 58 min — 4 hours 58 minutes is one hour too long.
• 3 h 28 min — 3 hours 28 minutes is 30 minutes too short (it confuses 0.47 with 0.968).

⭐ Key point: A common mistake is reading "3.97 hours" as "3 hours 97 minutes" — always multiply the decimal part by 60.$x$, null),
(38, $x$Morphine injection is available as 10 mg in 1 mL. The prescription is 2.5 mg. What volume should be given?$x$, $x$0.25 mL$x$, $x$✅ Correct answer: 0.25 mL
VOLUME = (DOSE WANTED ÷ DOSE IN STOCK) × VOLUME. Here: (2.5 mg ÷ 10 mg) × 1 mL = 0.25 mL.

❌ Why the other options are wrong:
• 0.5 mL — 0.5 mL would give 5 mg (double).
• 4 mL — 4 mL is the stock ÷ wanted (wrong way round).
• 0.2 mL — 0.2 mL would give 2 mg.

⭐ Key point: Use a 1 mL syringe for small volumes to measure accurately. Morphine is a controlled drug — check with a second nurse and record in the controlled drugs register.$x$, null),
(39, $x$Amoxicillin suspension is available as 250 mg in 5 mL. The prescription is 750 mg. What volume should be given?$x$, $x$15 mL$x$, $x$✅ Correct answer: 15 mL
For oral liquid medicines, use: VOLUME = (DOSE WANTED ÷ DOSE IN STOCK) × VOLUME OF STOCK. Here: (750 mg ÷ 250 mg) × 5 mL = 3 × 5 = 15 mL. Check: each 5 mL contains 250 mg, so 15 mL contains 3 × 250 = 750 mg. ✓

❌ Why the other options are wrong:
• 30 mL — 30 mL would give 1,500 mg — double the dose.
• 3 mL — 3 mL forgets to multiply by the 5 mL stock volume — only 150 mg.
• 1.7 mL — 1.7 mL is a calculation error (only about 85 mg).

⭐ Key point: Measure liquid medicines with an ORAL syringe or a marked medicine cup — never with a household spoon (sizes vary). Oral syringes should be clearly labelled "oral" so they are not confused with IV syringes.$x$, null),
(40, $x$An oxygen cylinder contains 680 litres of oxygen. The patient needs 4 L/min during transfer. Approximately how long will it last?$x$, $x$About 170 minutes$x$, $x$✅ Correct answer: About 170 minutes
Oxygen cylinder duration: TIME = AMOUNT OF OXYGEN ÷ FLOW RATE. Here: 680 litres ÷ 4 L/min = 170 minutes, which is about 2 hours 50 minutes. Check: 4 L/min × 170 min = 680 L. ✓ In practice, cylinders should not be used down to empty — keep a safety margin (e.g. change the cylinder when about a quarter full), and allow for delays during transfer.

❌ Why the other options are wrong:
• About 45 minutes — 45 minutes would correspond to about 15 L/min.
• About 340 minutes — 340 minutes would be at 2 L/min.
• About 28 minutes — 28 minutes would be at about 24 L/min.

⭐ Key point: Before any transfer, check the cylinder pressure gauge, calculate how long it will last, and take at least one full spare cylinder. Ventilators that use oxygen to drive them consume extra oxygen.$x$, null),
(41, $x$Norepinephrine is mixed as 4 mg in 250 mL D5W and ordered at 8 mcg/min. What infusion rate in mL/hr should be programmed on the pump?$x$, $x$30 mL/hr$x$, $x$✅ Correct answer: 30 mL/hr
STEP 1 — Concentration: 4 mg in 250 mL = 0.016 mg/mL = 16 mcg/mL. STEP 2 — Dose per hour: 8 mcg/min × 60 = 480 mcg/hr. STEP 3 — Rate: 480 ÷ 16 = 30 mL/hr.

❌ Why the other options are wrong:
• 60 mL/hr — 60 mL/hr gives 16 mcg/min (double).
• 8 mL/hr — 8 mL/hr is the dose in mcg/min, not mL/hr.
• 15 mL/hr — 15 mL/hr gives 4 mcg/min (half).

⭐ Key point: Non-weight-based noradrenaline doses (mcg/min) are common in some units; always check which units the prescription uses.$x$, null),
(42, $x$Phenobarbital injection is available as 200 mg in 1 mL. The prescription is 150 mg. What volume should be given?$x$, $x$0.75 mL$x$, $x$✅ Correct answer: 0.75 mL
VOLUME = (DOSE WANTED ÷ DOSE IN STOCK) × VOLUME. Here: (150 mg ÷ 200 mg) × 1 mL = 0.75 × 1 = 0.75 mL. Check: 200 mg is in 1 mL, so 100 mg is in 0.5 mL and 50 mg is in 0.25 mL; 150 mg = 0.5 + 0.25 = 0.75 mL. ✓ Since the dose wanted is LESS than the stock strength, the volume must be LESS than 1 mL — a quick "common sense" check.

❌ Why the other options are wrong:
• 1.5 mL — 1.5 mL would give 300 mg — double the dose.
• 0.8 mL — 0.8 mL would give 160 mg — slightly too much.
• 1.3 mL — 1.3 mL is stock ÷ wanted (200 ÷ 150) — the formula upside down.

⭐ Key point: Use a 1 mL syringe for small volumes. Phenobarbital can cause sedation, respiratory depression and hypotension — monitor breathing, SpO2 and BP, especially if benzodiazepines have also been given.$x$, null),
(43, $x$An adult has burns to the perineum and the whole left arm. Using the Rule of Nines, what is the TBSA burned?$x$, $x$10%$x$, $x$✅ Correct answer: 10%
RULE OF NINES (adult): the PERINEUM = 1%; each WHOLE ARM = 9% (front 4.5% + back 4.5%). Here: perineum 1% + whole left arm 9% = 10% TBSA. Although 10% is a moderate burn by size, the PERINEAL involvement makes it a burn needing specialist care (high infection risk, possible need for urinary catheter).

❌ Why the other options are wrong:
• 14.5% — 14.5% adds an extra 4.5%.
• 1% — 1% counts only the perineum and forgets the arm.
• 19% — 19% wrongly counts the arm as 18% (a leg value).

⭐ Key point: The patient's PALM (including fingers) is about 1% of their TBSA — useful for estimating small or patchy burns.$x$, null),
(44, $x$A 14 kg child in shock is prescribed a 20 mL/kg bolus of normal saline. What volume should be given?$x$, $x$280 mL$x$, $x$✅ Correct answer: 280 mL
Fluid boluses in children are calculated by weight: VOLUME = mL/kg × WEIGHT. Here: 20 mL/kg × 14 kg = 280 mL of 0.9% sodium chloride. Check: 20 × 14 = (20 × 10) + (20 × 4) = 200 + 80 = 280 mL. ✓ Give it quickly (over 5–10 minutes in shock, using a syringe or pressure bag), then REASSESS: heart rate, capillary refill, BP, conscious level, urine output, and look for signs of overload (crackles, enlarged liver).

❌ Why the other options are wrong:
• 420 mL — 420 mL is 30 mL/kg — too much for a single bolus.
• 140 mL — 140 mL is only 10 mL/kg (sometimes used in cardiac disease or severe malnutrition, but not here).
• 560 mL — 560 mL is 40 mL/kg — far too much at once.

⭐ Key point: Some guidelines (e.g. for children with severe malnutrition or heart disease, or in some low-resource settings) recommend smaller boluses (10 mL/kg); follow local protocols and reassess after every bolus.$x$, null),
(45, $x$An adult has burns to the whole left arm and the whole right leg. Using the Rule of Nines, what is the TBSA burned?$x$, $x$27%$x$, $x$✅ Correct answer: 27%
RULE OF NINES (adult): each WHOLE ARM = 9%; each WHOLE LEG = 18%. Here: whole left arm 9% + whole right leg 18% = 27% TBSA. A 27% burn in an adult is a MAJOR burn requiring IV fluid resuscitation (Parkland formula), urinary catheter, close monitoring and referral to a burns centre.

❌ Why the other options are wrong:
• 31.5% — 31.5% adds an extra 4.5%.
• 36% — 36% adds an extra 9%.
• 18% — 18% counts only the leg.

⭐ Key point: Circumferential burns of a limb can cause compartment syndrome — check pulses and sensation, and escharotomy may be needed.$x$, null),
(46, $x$1,000 mL of 5% dextrose is prescribed to run over 12 hours using a giving set with a drop factor of 15 drops/mL. What is the correct drip rate?$x$, $x$21 drops/min$x$, $x$✅ Correct answer: 21 drops/min
DROPS PER MINUTE = (VOLUME × DROP FACTOR) ÷ TIME IN MINUTES. Here: (1,000 mL × 15 drops/mL) ÷ (12 hours × 60) = 15,000 ÷ 720 = 20.8, which rounds to 21 drops/min. Check: 21 drops/min ÷ 15 = 1.4 mL/min × 720 min ≈ 1,008 mL. ✓

❌ Why the other options are wrong:
• 42 drops/min — 42 drops/min is double — the bag would finish in about 6 hours.
• 28 drops/min — 28 drops/min would finish in about 9 hours.
• 83 drops/min — 83 drops/min is the rate in mL/HOUR (1,000 ÷ 12 = 83.3), not drops per minute.

⭐ Key point: With a 15 drops/mL set, drops/min = mL/hr ÷ 4 (83 ÷ 4 ≈ 21). Always read the drop factor on the giving-set packet.$x$, null),
(47, $x$An adult has burns to the front of the right arm and the front of the left leg. Using the Rule of Nines, what is the TBSA burned?$x$, $x$13.5%$x$, $x$✅ Correct answer: 13.5%
RULE OF NINES: when only the FRONT or BACK of a limb is burned, use HALF of that limb's value. Each arm = 9%, so the FRONT of the right arm = 4.5%. Each leg = 18%, so the FRONT of the left leg = 9%. Total: 4.5 + 9 = 13.5% TBSA.

❌ Why the other options are wrong:
• 18% — 18% counts both whole limbs (wrongly) — or adds 9 + 9.
• 22.5% — 22.5% counts the whole leg (18%) plus the front of the arm (4.5%).
• 4.5% — 4.5% counts only the front of the arm.

⭐ Key point: Accurate burn size matters because fluid needs are calculated from it — an overestimate causes fluid overload, an underestimate causes shock and kidney injury.$x$, null),
(48, $x$An adult has burns to the front of the right leg, the front of the trunk (chest and abdomen) and the back of the trunk. Using the Rule of Nines, what is the TBSA burned?$x$, $x$45%$x$, $x$✅ Correct answer: 45%
RULE OF NINES: FRONT of the right leg = 9% (half of 18%); FRONT of the trunk (chest and abdomen) = 18%; BACK of the trunk = 18%. Total: 9 + 18 + 18 = 45% TBSA. This is a very large burn needing urgent fluid resuscitation, airway assessment, analgesia, warmth and transfer to a burns unit.

❌ Why the other options are wrong:
• 36% — 36% misses the front of the leg (9%).
• 54% — 54% wrongly counts the whole leg (18%).
• 49.5% — 49.5% adds an extra 4.5%.

⭐ Key point: Large burns cause massive fluid shifts, hypothermia, infection risk and a high metabolic rate — they need ICU-level care.$x$, null),
(49, $x$A 70 kg patient has passed 120 mL of urine in the last 6 hours. What is the urine output and how is it interpreted?$x$, $x$0.29 mL/kg/hr — oliguria$x$, $x$✅ Correct answer: 0.29 mL/kg/hr — oliguria
URINE OUTPUT (mL/kg/hr) = VOLUME ÷ HOURS ÷ WEIGHT. Here: 120 mL ÷ 6 hours = 20 mL/hr; 20 ÷ 70 kg = 0.29 mL/kg/hr. Normal adult urine output is at least 0.5 mL/kg/hr. Below this is OLIGURIA.

❌ Why the other options are wrong:
• 20 mL/kg/hr — adequate — 20 mL/kg/hr is a units error.
• 1.71 mL/kg/hr — adequate — 1.71 mL/kg/hr is wrong (120 ÷ 70).
• 0.29 mL/kg/hr — adequate — 0.29 is correct, but it is NOT adequate — it shows oliguria.

⭐ Key point: Oliguria for 6 hours or more is a KDIGO criterion for acute kidney injury. Check the catheter, fluid status and BP.$x$, null),
(50, $x$Glyceryl trinitrate (GTN) 50 mg in 500 mL is ordered at 15 mcg/min. What pump rate (mL/hr) will deliver this dose?$x$, $x$9 mL/hr$x$, $x$✅ Correct answer: 9 mL/hr
STEP 1 — Concentration: 50 mg in 500 mL = 0.1 mg/mL = 100 micrograms/mL. STEP 2 — Dose per hour: 15 micrograms/min × 60 = 900 micrograms/hr. STEP 3 — Rate: 900 ÷ 100 = 9 mL/hr. Check: 9 mL/hr × 100 mcg/mL = 900 mcg/hr ÷ 60 = 15 mcg/min. ✓ Compare with Q30: 10 mcg/min = 6 mL/hr, so 15 mcg/min = 9 mL/hr (one and a half times).

❌ Why the other options are wrong:
• 4.5 mL/hr — 4.5 mL/hr gives only 7.5 mcg/min.
• 18 mL/hr — 18 mL/hr gives 30 mcg/min — double.
• 0.1 mL/hr — 0.1 mL/hr is the concentration in mg/mL, not a pump rate.

⭐ Key point: Shortcut for a 100 mcg/mL solution: mL/hr = mcg/min × 0.6. Monitor BP closely during GTN titration.$x$, null),
(51, $x$40 mmol of potassium chloride in 1000 mL normal saline is prescribed over 4 hours. What is the pump rate and how much potassium is given each hour?$x$, $x$250 mL/hr, giving 10 mmol K⁺ per hour$x$, $x$✅ Correct answer: 250 mL/hr, giving 10 mmol K⁺ per hour
STEP 1 — Rate: 1,000 mL ÷ 4 hours = 250 mL/hr. STEP 2 — Potassium per hour: 40 mmol ÷ 4 hours = 10 mmol/hr. Check: 40 mmol/1,000 mL = 0.04 mmol/mL × 250 = 10 mmol/hr. ✓

❌ Why the other options are wrong:
• 250 mL/hr, giving 4 mmol K⁺ per hour — 4 mmol/hr is wrong.
• 4.2 mL/hr, giving 10 mmol K⁺ per hour — 4.2 mL/hr is far too slow.
• 500 mL/hr, giving 20 mmol K⁺ per hour — 500 mL/hr would run in 2 hours, giving 20 mmol/hr (dangerous peripherally).

⭐ Key point: 10 mmol/hr is generally the maximum rate via a peripheral line. Check potassium levels and kidney function before and during replacement.$x$, null),
(52, $x$A patient's blood pressure is 126/84 mmHg. What is the mean arterial pressure (MAP)?$x$, $x$98 mmHg$x$, $x$✅ Correct answer: 98 mmHg
MEAN ARTERIAL PRESSURE (MAP) is the average pressure in the arteries during one heartbeat. Because the heart spends about TWO-THIRDS of each beat in DIASTOLE, the diastolic pressure counts double. Formula: MAP = (SYSTOLIC + 2 × DIASTOLIC) ÷ 3. Here: (126 + 2 × 84) ÷ 3 = (126 + 168) ÷ 3 = 294 ÷ 3 = 98 mmHg. Another way: MAP = diastolic + ⅓ of pulse pressure = 84 + (42 ÷ 3) = 84 + 14 = 98. ✓

❌ Why the other options are wrong:
• 112 mmHg — 112 mmHg is not correct.
• 105 mmHg — 105 mmHg is the simple average of systolic and diastolic ((126 + 84) ÷ 2) — wrong, because diastole lasts longer.
• 42 mmHg — 42 mmHg is the PULSE PRESSURE (126 − 84), not the MAP.

⭐ Key point: A MAP of at least 65 mmHg is usually needed to perfuse the brain, kidneys and heart; it is the target in septic shock.$x$, null),
(53, $x$Using the 4-2-1 rule, what is the hourly maintenance fluid rate for a child weighing 25 kg?$x$, $x$65 mL/hr$x$, $x$✅ Correct answer: 65 mL/hr
4-2-1 RULE for a 25 kg child: first 10 kg = 4 × 10 = 40 mL/hr; next 10 kg = 2 × 10 = 20 mL/hr; remaining 5 kg = 1 × 5 = 5 mL/hr. Total: 40 + 20 + 5 = 65 mL/hr.

❌ Why the other options are wrong:
• 100 mL/hr — 100 mL/hr is 4 mL/kg for all 25 kg.
• 50 mL/hr — 50 mL/hr is 2 mL/kg for all 25 kg.
• 75 mL/hr — 75 mL/hr is incorrect.

⭐ Key point: For any child over 20 kg: 60 mL/hr + 1 mL/hr per kg above 20.$x$, null),
(54, $x$A patient weighs 154 lb. A drug is prescribed at 10 mg/kg. What dose should be given?$x$, $x$700 mg$x$, $x$✅ Correct answer: 700 mg
Drug doses are calculated in KILOGRAMS. STEP 1 — Convert pounds to kilograms: 1 kg = 2.2 lb, so 154 lb ÷ 2.2 = 70 kg. STEP 2 — Dose: 10 mg/kg × 70 kg = 700 mg. Check: 70 × 2.2 = 154 lb. ✓

❌ Why the other options are wrong:
• 318.2 mg — 318.2 mg results from dividing by 2.2 TWICE (700 ÷ 2.2) — a double conversion error, giving less than half the dose.
• 1,400 mg — 1,400 mg is 20 mg/kg — double the dose.
• 1,540 mg — 1,540 mg uses the weight in POUNDS as if it were kg (10 × 154) — more than double the dose.

⭐ Key point: Always record weight in kg on the drug chart. Confusing pounds and kg is a well-known cause of serious overdoses, especially in children.$x$, null),
(55, $x$A 55 kg man with 30% TBSA burns arrives 3 hours after the injury and has had no IV fluid. Using the Parkland formula, at what rate should the first half of the fluid run?$x$, $x$660 mL/hr$x$, $x$✅ Correct answer: 660 mL/hr
STEP 1 — Total (Parkland): 4 × 55 × 30 = 6,600 mL. STEP 2 — First half: 3,300 mL, due in the first 8 hours from the burn. STEP 3 — Arrived 3 hours after the burn with no fluid, so 3,300 mL must run over the remaining 5 hours. STEP 4 — Rate: 3,300 ÷ 5 = 660 mL/hr.

❌ Why the other options are wrong:
• 412.5 mL/hr — 412.5 mL/hr is 3,300 ÷ 8 (ignores lost time).
• 275 mL/hr — 275 mL/hr is the second-half rate (3,300 ÷ 12).
• 1,320 mL/hr — 1,320 mL/hr is double.

⭐ Key point: Late arrival means the first-half fluid must be given faster.$x$, null),
(56, $x$Using the 4-2-1 rule, what is the hourly maintenance fluid rate for a child weighing 22 kg?$x$, $x$62 mL/hr$x$, $x$✅ Correct answer: 62 mL/hr
The 4-2-1 RULE gives HOURLY maintenance fluids: 4 mL/kg/hr for the FIRST 10 kg; 2 mL/kg/hr for the NEXT 10 kg (11–20 kg); 1 mL/kg/hr for each kg ABOVE 20 kg. For 22 kg: first 10 kg = 4 × 10 = 40 mL/hr; next 10 kg = 2 × 10 = 20 mL/hr; last 2 kg = 1 × 2 = 2 mL/hr. Total = 40 + 20 + 2 = 62 mL/hr.

❌ Why the other options are wrong:
• 44 mL/hr — 44 mL/hr is 2 mL/kg for all 22 kg.
• 72 mL/hr — 72 mL/hr is a calculation error.
• 88 mL/hr — 88 mL/hr is 4 mL/kg for all 22 kg — too much fluid.

⭐ Key point: For any child above 20 kg, a shortcut is: 60 mL/hr + 1 mL/hr for each kg above 20 (here 60 + 2 = 62). Critically ill children often need fluid restriction (e.g. two-thirds of maintenance) because of increased ADH.$x$, null),
(57, $x$Ibuprofen is prescribed at 10 mg/kg per dose (maximum single dose 400 mg) for a patient weighing 70 kg. What single dose should be given?$x$, $x$400 mg$x$, $x$✅ Correct answer: 400 mg
STEP 1 — Weight-based dose: 10 mg/kg × 70 kg = 700 mg. STEP 2 — Check against the MAXIMUM SINGLE DOSE: 400 mg. Because 700 mg is MORE than the maximum, the dose must be CAPPED at 400 mg. Giving 700 mg would exceed the safe limit and increase the risk of side effects (stomach bleeding, kidney injury, worsening asthma).

❌ Why the other options are wrong:
• 700 mg — 700 mg exceeds the maximum single dose.
• 233.3 mg — 233.3 mg is a calculation error.
• 770 mg — 770 mg exceeds the maximum single dose.

⭐ Key point: Always check the maximum dose — weight-based calculations in adults or large children can exceed safe limits. Ibuprofen should be avoided in kidney injury, active GI bleeding, and late pregnancy.$x$, null),
(58, $x$A 90 kg man with 30% TBSA burns arrives 1 hour after the injury and has had no IV fluid. Using the Parkland formula, at what rate should the first half of the fluid run?$x$, $x$771.4 mL/hr$x$, $x$✅ Correct answer: 771.4 mL/hr
STEP 1 — Total (Parkland): 4 × 90 × 30 = 10,800 mL. STEP 2 — First half: 5,400 mL in the first 8 hours from the burn. STEP 3 — Arrived 1 hour after the burn, so 7 hours remain. STEP 4 — Rate: 5,400 ÷ 7 = 771.4 mL/hr.

❌ Why the other options are wrong:
• 450 mL/hr — 450 mL/hr is the second-half rate (5,400 ÷ 12).
• 675 mL/hr — 675 mL/hr is 5,400 ÷ 8 (ignores the lost hour).
• 1,542.9 mL/hr — 1,542.9 mL/hr is double.

⭐ Key point: Recheck urine output hourly and adjust.$x$, null),
(59, $x$Magnesium sulfate is available as 40 g in 1000 mL. A loading dose of 4 g is ordered to be infused over 20 minutes. How many millilitres are needed, and at what pump rate (mL/hr)?$x$, $x$100 mL needed, at a rate of 300 mL/hr$x$, $x$✅ Correct answer: 100 mL needed, at a rate of 300 mL/hr
STEP 1 — Concentration: 40 g in 1,000 mL = 0.04 g/mL (40 mg/mL). STEP 2 — Volume for 4 g: 4 ÷ 0.04 = 100 mL. STEP 3 — Rate: 100 mL over 20 minutes = 100 ÷ (20/60) = 100 × 3 = 300 mL/hr.

❌ Why the other options are wrong:
• 40 mL needed, at a rate of 120 mL/hr — 40 mL at 120 mL/hr contains only 1.6 g.
• 400 mL needed, at a rate of 1200 mL/hr — 400 mL contains 16 g — a dangerous overdose.
• 100 mL needed, at a rate of 200 mL/hr — 100 mL at 200 mL/hr would take 30 minutes, not 20.

⭐ Key point: Monitor reflexes, breathing rate and urine output during magnesium therapy; have calcium gluconate ready.$x$, null),
(60, $x$Which acid–base disturbance is most likely to result from the following? Hypokalaemia from diuretics.$x$, $x$Metabolic alkalosis$x$, $x$✅ Correct answer: Metabolic alkalosis
Loop and thiazide DIURETICS cause loss of potassium, chloride and hydrogen ions in the urine, and volume contraction. With low potassium, hydrogen ions move into cells and the kidneys excrete more hydrogen, so the blood becomes alkaline: METABOLIC ALKALOSIS (high pH, high bicarbonate). This is called "contraction alkalosis" with hypokalaemia.

❌ Why the other options are wrong:
• Respiratory alkalosis — Respiratory alkalosis is caused by hyperventilation.
• Metabolic acidosis — Metabolic acidosis is caused by acid gain or bicarbonate loss (e.g. diarrhoea, DKA).
• Respiratory acidosis — Respiratory acidosis is caused by hypoventilation.

⭐ Key point: Treat by replacing potassium and chloride (e.g. KCl) and correcting volume.$x$, null),
(61, $x$Arterial blood gas for an anxious young woman who is hyperventilating and has tingling around her mouth pH 7.50, PaCO2 22 mmHg, HCO3⁻ 24 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory alkalosis$x$, $x$✅ Correct answer: Uncompensated respiratory alkalosis
STEP 1 — pH 7.50 = ALKALOSIS (normal 7.35–7.45). STEP 2 — PaCO2 22 mmHg is LOW (normal 35–45) → RESPIRATORY cause (blowing off CO2 by hyperventilation). STEP 3 — HCO3⁻ 24 is NORMAL (22–26) → the kidneys have NOT compensated yet. So: UNCOMPENSATED RESPIRATORY ALKALOSIS. The tingling around the mouth is from low ionised calcium caused by alkalosis.

❌ Why the other options are wrong:
• Fully compensated metabolic acidosis — Fully compensated metabolic acidosis would have a normal pH and low HCO3⁻.
• Uncompensated respiratory acidosis — Respiratory acidosis has a LOW pH and HIGH PaCO2.
• Partially compensated respiratory alkalosis — Partial compensation would show a LOW HCO3⁻.

⭐ Key point: Treat anxiety-related hyperventilation with reassurance and slow breathing; exclude serious causes (PE, asthma, sepsis).$x$, null),
(62, $x$Arterial blood gas for a patient with severe diarrhoea who has just arrived pH 7.29, PaCO2 42 mmHg, HCO3⁻ 17 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic acidosis$x$, $x$✅ Correct answer: Uncompensated metabolic acidosis
STEP 1 — pH 7.29 = ACIDOSIS. STEP 2 — HCO3⁻ 17 is LOW → METABOLIC cause (diarrhoea loses bicarbonate). STEP 3 — PaCO2 42 is NORMAL → the lungs have NOT yet compensated. So: UNCOMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Fully compensated metabolic acidosis — Full compensation would bring pH into the normal range.
• Fully compensated respiratory acidosis — Respiratory acidosis would show a HIGH PaCO2.
• Partially compensated metabolic alkalosis — Metabolic alkalosis would have a HIGH pH and HIGH HCO3⁻.

⭐ Key point: Respiratory compensation for metabolic acidosis (deep, rapid Kussmaul breathing) usually starts within minutes to hours.$x$, null),
(63, $x$Sodium bicarbonate during cardiac arrest is most appropriate for:$x$, $x$Known severe hyperkalemia or tricyclic antidepressant overdose$x$, $x$✅ Correct answer: Known severe hyperkalemia or tricyclic antidepressant overdose
SODIUM BICARBONATE is NOT given routinely in cardiac arrest — it can worsen intracellular acidosis, cause hypernatraemia and shift the oxygen curve. It is given in specific situations: known severe HYPERKALAEMIA (it moves potassium into cells) and TRICYCLIC ANTIDEPRESSANT OVERDOSE (it overcomes sodium channel blockade). It may also be considered in severe metabolic acidosis.

❌ Why the other options are wrong:
• Replacing epinephrine when unavailable — Bicarbonate is not a substitute for adrenaline.
• Routine use in every cardiac arrest to correct acidosis — Routine use in every arrest is not recommended.
• Ventricular fibrillation as a first-line agent — In VF, the first-line treatments are defibrillation, adrenaline and amiodarone.

⭐ Key point: Do not give bicarbonate through the same line as adrenaline or calcium without flushing — they precipitate or inactivate each other.$x$, null),
(64, $x$Arterial blood gas for a patient admitted minutes ago after a prolonged seizure pH 7.26, PaCO2 39 mmHg, HCO3⁻ 16 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic acidosis$x$, $x$✅ Correct answer: Uncompensated metabolic acidosis
STEP 1 — pH 7.26 = ACIDOSIS. STEP 2 — HCO3⁻ 16 is LOW → METABOLIC (lactic acidosis from muscle activity during the seizure). STEP 3 — PaCO2 39 is NORMAL → NOT compensated. So: UNCOMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Partially compensated respiratory alkalosis — Partially compensated respiratory alkalosis would have a high pH.
• Partially compensated metabolic acidosis — Partial compensation would show a LOW PaCO2.
• Uncompensated respiratory acidosis — Respiratory acidosis would have a HIGH PaCO2.

⭐ Key point: Post-seizure lactic acidosis usually clears within an hour once the seizure stops.$x$, null),
(65, $x$A negative base excess (base deficit) on an ABG indicates:$x$, $x$A relative deficit of buffer base, consistent with a metabolic acidosis component$x$, $x$✅ Correct answer: A relative deficit of buffer base, consistent with a metabolic acidosis component
BASE EXCESS (BE) shows how much acid or base must be added to return the blood pH to normal, reflecting the METABOLIC part of acid-base status. Normal BE is −2 to +2 mmol/L. A NEGATIVE BE (BASE DEFICIT, e.g. −8) means there is a DEFICIT of BUFFER BASE (bicarbonate) — consistent with METABOLIC ACIDOSIS (e.g. lactic acidosis, DKA, diarrhoea).

❌ Why the other options are wrong:
• Respiratory alkalosis specifically — Respiratory alkalosis is shown by low PaCO2, not by base excess.
• A relative excess of bicarbonate/buffer base, consistent with alkalosis — A POSITIVE BE indicates excess base (metabolic alkalosis).
• Normal acid-base status — A significant negative BE is not normal.

⭐ Key point: Base deficit is used in trauma and sepsis as a marker of tissue hypoperfusion and severity.$x$, null),
(66, $x$Arterial blood gas for a patient with COPD admitted with an infective exacerbation pH 7.34, PaCO2 70 mmHg, HCO3⁻ 34 mmol/L. What is the correct interpretation?$x$, $x$Partially compensated respiratory acidosis$x$, $x$✅ Correct answer: Partially compensated respiratory acidosis
STEP 1 — pH 7.34 = mildly ACIDOTIC. STEP 2 — PaCO2 70 is HIGH → RESPIRATORY ACIDOSIS (COPD causes CO2 retention). STEP 3 — HCO3⁻ 34 is HIGH → the kidneys have retained bicarbonate to compensate, but the pH is still below normal → PARTIALLY COMPENSATED RESPIRATORY ACIDOSIS.

❌ Why the other options are wrong:
• Uncompensated respiratory alkalosis — Respiratory alkalosis would have a high pH and low PaCO2.
• Uncompensated respiratory acidosis — Uncompensated would show a normal HCO3⁻.
• Mixed respiratory and metabolic acidosis — Mixed acidosis would show a LOW HCO3⁻.

⭐ Key point: In COPD, target SpO2 88–92%, and consider NIV if pH < 7.35 with high PaCO2.$x$, null),
(67, $x$Results: Na⁺ 141, Cl⁻ 105, HCO3⁻ 14 mmol/L. What is the anion gap and its interpretation?$x$, $x$22 mmol/L — raised (high anion gap)$x$, $x$✅ Correct answer: 22 mmol/L — raised (high anion gap)
ANION GAP = Na⁺ − (Cl⁻ + HCO3⁻) = 141 − (105 + 14) = 141 − 119 = 22 mmol/L. Normal anion gap is about 8–12 (up to 16 if potassium is included). So 22 is RAISED — a HIGH ANION GAP METABOLIC ACIDOSIS (e.g. lactic acidosis, DKA, renal failure, toxins).

❌ Why the other options are wrong:
• 50 mmol/L — raised (high anion gap) — 50 mmol/L is a calculation error.
• 36 mmol/L — raised (high anion gap) — 36 mmol/L is a calculation error.
• 22 mmol/L — normal — 22 is correct, but it is RAISED, not normal.

⭐ Key point: Causes of high anion gap acidosis: "MUDPILES" — Methanol, Uraemia, DKA, Paracetamol/Propylene glycol, Iron/Isoniazid, Lactic acidosis, Ethylene glycol, Salicylates.$x$, null),
(68, $x$Arterial blood gas for an anxious young woman who is hyperventilating and has tingling around her mouth pH 7.51, PaCO2 22 mmHg, HCO3⁻ 24 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory alkalosis$x$, $x$✅ Correct answer: Uncompensated respiratory alkalosis
STEP 1 — pH 7.51 = ALKALOSIS. STEP 2 — PaCO2 22 is LOW → RESPIRATORY (hyperventilation). STEP 3 — HCO3⁻ 24 is NORMAL → NOT compensated. So: UNCOMPENSATED RESPIRATORY ALKALOSIS.

❌ Why the other options are wrong:
• Partially compensated respiratory acidosis — Respiratory acidosis would show a low pH and high PaCO2.
• Partially compensated metabolic alkalosis — Metabolic alkalosis would show a high HCO3⁻.
• Partially compensated respiratory alkalosis — Partial compensation would show a low HCO3⁻.

⭐ Key point: Perioral tingling and carpopedal spasm are caused by alkalosis lowering ionised calcium.$x$, null),
(69, $x$Arterial blood gas for a patient admitted minutes ago after a prolonged seizure pH 7.27, PaCO2 39 mmHg, HCO3⁻ 14 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic acidosis$x$, $x$✅ Correct answer: Uncompensated metabolic acidosis
STEP 1 — pH 7.27 = ACIDOSIS. STEP 2 — HCO3⁻ 14 is LOW → METABOLIC (lactic acidosis after seizure). STEP 3 — PaCO2 39 is NORMAL → NOT compensated. So: UNCOMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Fully compensated metabolic acidosis — Full compensation would bring pH to normal and lower the PaCO2.
• Partially compensated respiratory alkalosis — Respiratory alkalosis would have a high pH.
• Uncompensated metabolic alkalosis — Metabolic alkalosis would have a high pH and high HCO3⁻.

⭐ Key point: Check lactate and glucose after prolonged seizures.$x$, null),
(70, $x$Arterial blood gas for a patient with chronic kidney disease on the renal ward pH 7.36, PaCO2 30 mmHg, HCO3⁻ 14 mmol/L. What is the correct interpretation?$x$, $x$Fully compensated metabolic acidosis$x$, $x$✅ Correct answer: Fully compensated metabolic acidosis
STEP 1 — pH 7.36 = NORMAL (low-normal, on the acidic side). STEP 2 — HCO3⁻ 14 is LOW → METABOLIC ACIDOSIS (CKD — the kidneys can't excrete acid or make bicarbonate). STEP 3 — PaCO2 30 is LOW → the lungs are blowing off CO2 to compensate. Because the pH is back within the normal range, this is FULLY COMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Fully compensated respiratory acidosis — Respiratory acidosis would have a HIGH PaCO2.
• Uncompensated metabolic alkalosis — Metabolic alkalosis would have a HIGH HCO3⁻.
• Mixed respiratory and metabolic acidosis — Mixed acidosis would have a HIGH PaCO2 with low HCO3⁻.

⭐ Key point: In compensated states, the pH tends to lie on the side of the primary problem (7.36 = acidic side → primary acidosis).$x$, null),
(71, $x$Arterial blood gas for an anxious young woman who is hyperventilating and has tingling around her mouth pH 7.53, PaCO2 22 mmHg, HCO3⁻ 23 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory alkalosis$x$, $x$✅ Correct answer: Uncompensated respiratory alkalosis
Use the three-step method. STEP 1 — pH: 7.53 is above 7.45, so the blood is ALKALOTIC. STEP 2 — Which system caused it? PaCO2 22 mmHg is LOW (normal 35–45). Low CO2 makes the blood alkaline, so the cause is RESPIRATORY (she is breathing fast and "blowing off" CO2 because of anxiety). STEP 3 — Compensation: HCO3⁻ 23 mmol/L is NORMAL (22–26), so the kidneys have NOT yet started to lower bicarbonate (renal compensation takes 2–3 days). Answer: UNCOMPENSATED RESPIRATORY ALKALOSIS. The tingling around the mouth happens because alkalosis lowers the IONISED calcium in the blood.

❌ Why the other options are wrong:
• Partially compensated respiratory alkalosis — PARTIALLY compensated would need a LOW HCO3⁻ (below 22) with the pH still abnormal.
• Uncompensated metabolic alkalosis — METABOLIC alkalosis needs a HIGH HCO3⁻ (above 26); here it is normal.
• Fully compensated respiratory acidosis — Respiratory ACIDOSIS needs a LOW pH and HIGH PaCO2 — the opposite of this gas.

⭐ Key point: Treat panic hyperventilation with calm reassurance and slow breathing, but first exclude serious causes such as pulmonary embolism, asthma, sepsis and DKA.$x$, null),
(72, $x$Arterial blood gas for a patient with severe diarrhoea who has just arrived pH 7.26, PaCO2 44 mmHg, HCO3⁻ 14 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic acidosis$x$, $x$✅ Correct answer: Uncompensated metabolic acidosis
STEP 1 — pH 7.26 is below 7.35: ACIDOSIS. STEP 2 — HCO3⁻ 14 mmol/L is LOW (normal 22–26): a METABOLIC cause. Severe DIARRHOEA loses bicarbonate-rich fluid from the bowel. STEP 3 — PaCO2 44 mmHg is NORMAL (35–45): the lungs have NOT yet compensated by blowing off CO2. Answer: UNCOMPENSATED METABOLIC ACIDOSIS. (Expected compensation by Winter's formula would be a PaCO2 of 1.5 × 14 + 8 = 29 ± 2 mmHg.)

❌ Why the other options are wrong:
• Partially compensated respiratory acidosis — Respiratory acidosis would need a HIGH PaCO2 as the main problem.
• Fully compensated metabolic acidosis — FULLY compensated would bring the pH back into the normal range with a low PaCO2.
• Partially compensated respiratory alkalosis — Respiratory alkalosis would show a HIGH pH and LOW PaCO2.

⭐ Key point: Diarrhoea causes a NORMAL anion gap (hyperchloraemic) acidosis. Treat with fluid and electrolyte replacement (including potassium).$x$, null),
(73, $x$Arterial blood gas for a patient on continuous nasogastric suction for 3 days pH 7.56, PaCO2 43 mmHg, HCO3⁻ 36 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic alkalosis$x$, $x$✅ Correct answer: Uncompensated metabolic alkalosis
STEP 1 — pH 7.56 is above 7.45: ALKALOSIS. STEP 2 — HCO3⁻ 36 mmol/L is HIGH: a METABOLIC cause. Continuous NASOGASTRIC SUCTION removes stomach acid (HCl), so the body loses hydrogen and chloride ions and bicarbonate rises. STEP 3 — PaCO2 43 mmHg is NORMAL: the lungs have NOT compensated (compensation would be slow, shallow breathing to retain CO2). Answer: UNCOMPENSATED METABOLIC ALKALOSIS.

❌ Why the other options are wrong:
• Mixed respiratory and metabolic acidosis — Mixed acidosis would show a LOW pH.
• Partially compensated metabolic alkalosis — PARTIALLY compensated would need a HIGH PaCO2 (above 45) with the pH still high.
• Fully compensated respiratory acidosis — Respiratory acidosis would show a LOW pH and HIGH PaCO2.

⭐ Key point: NG losses also cause low potassium and chloride. Replace losses with 0.9% saline plus potassium chloride.$x$, null),
(74, $x$A patient with metabolic acidosis has HCO3⁻ 8 mmol/L and PaCO2 20 mmHg. Using Winter's formula, what does this show?$x$, $x$Appropriate respiratory compensation — a pure metabolic acidosis$x$, $x$✅ Correct answer: Appropriate respiratory compensation — a pure metabolic acidosis
WINTER'S FORMULA predicts the PaCO2 the lungs SHOULD reach when compensating for a metabolic acidosis: Expected PaCO2 = (1.5 × HCO3⁻) + 8 ± 2. Here: (1.5 × 8) + 8 = 12 + 8 = 20 ± 2 = 18–22 mmHg. The ACTUAL PaCO2 is 20 mmHg — exactly within the expected range. So the lungs are compensating APPROPRIATELY, and this is a PURE (simple) METABOLIC ACIDOSIS with no extra respiratory problem.

❌ Why the other options are wrong:
• PaCO2 is higher than expected — an added respiratory acidosis — A PaCO2 HIGHER than 22 would mean an added respiratory acidosis (e.g. the patient is tiring).
• PaCO2 is lower than expected — an added respiratory alkalosis — A PaCO2 LOWER than 18 would mean an added respiratory alkalosis.
• The kidneys are compensating for a respiratory acidosis — The kidneys compensate for RESPIRATORY problems; here the primary problem is metabolic.

⭐ Key point: Winter's formula only applies to METABOLIC ACIDOSIS. Use it to detect hidden mixed disorders.$x$, null),
(75, $x$Arterial blood gas for a patient with severe pain after a fracture breathing at 32/min pH 7.50, PaCO2 30 mmHg, HCO3⁻ 26 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory alkalosis$x$, $x$✅ Correct answer: Uncompensated respiratory alkalosis
STEP 1 — pH 7.50: ALKALOSIS. STEP 2 — PaCO2 30 mmHg is LOW: a RESPIRATORY cause (severe pain makes the patient breathe fast at 32/min, blowing off CO2). STEP 3 — HCO3⁻ 26 mmol/L is at the top of NORMAL: the kidneys have NOT compensated. Answer: UNCOMPENSATED RESPIRATORY ALKALOSIS.

❌ Why the other options are wrong:
• Uncompensated metabolic acidosis — Metabolic acidosis would show a LOW pH and LOW HCO3⁻.
• Fully compensated respiratory acidosis — Respiratory acidosis would show a LOW pH and HIGH PaCO2.
• Partially compensated respiratory alkalosis — PARTIAL compensation would need a LOW HCO3⁻.

⭐ Key point: Treat the cause — give adequate analgesia. Pain, anxiety, fever, hypoxia, sepsis and PE can all cause hyperventilation.$x$, null),
(76, $x$Arterial blood gas for a post-operative patient still drowsy from anaesthesia with shallow breathing pH 7.29, PaCO2 54 mmHg, HCO3⁻ 25 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory acidosis$x$, $x$✅ Correct answer: Uncompensated respiratory acidosis
STEP 1 — pH 7.29: ACIDOSIS. STEP 2 — PaCO2 54 mmHg is HIGH: a RESPIRATORY cause. The patient is drowsy from anaesthetic drugs (opioids, residual sedatives) and breathing shallowly, so CO2 builds up (HYPOVENTILATION). STEP 3 — HCO3⁻ 25 mmol/L is NORMAL: the kidneys have not compensated (it takes days). Answer: UNCOMPENSATED (ACUTE) RESPIRATORY ACIDOSIS.

❌ Why the other options are wrong:
• Uncompensated metabolic acidosis — Metabolic acidosis needs a LOW HCO3⁻.
• Fully compensated metabolic acidosis — FULLY compensated metabolic acidosis would have a normal pH and low HCO3⁻.
• Fully compensated respiratory acidosis — FULLY compensated respiratory acidosis would have a normal pH and HIGH HCO3⁻.

⭐ Key point: Treat by stimulating and positioning the patient, encouraging deep breathing, reversing opioids (naloxone) if needed, and supporting ventilation if the patient remains drowsy.$x$, null),
(77, $x$Results: Na⁺ 138, Cl⁻ 98, HCO3⁻ 10 mmol/L. What is the anion gap and its interpretation?$x$, $x$30 mmol/L — raised (high anion gap)$x$, $x$✅ Correct answer: 30 mmol/L — raised (high anion gap)
ANION GAP = Na⁺ − (Cl⁻ + HCO3⁻). Here: 138 − (98 + 10) = 138 − 108 = 30 mmol/L. The normal anion gap is about 8–12 mmol/L (up to 16 if potassium is included). 30 is clearly RAISED, showing a HIGH ANION GAP METABOLIC ACIDOSIS — extra unmeasured acids (e.g. lactate, ketones, toxins, uraemic acids) are present.

❌ Why the other options are wrong:
• 30 mmol/L — normal — 30 is correct, but it is NOT normal.
• 40 mmol/L — raised (high anion gap) — 40 mmol/L is a calculation error.
• 50 mmol/L — raised (high anion gap) — 50 mmol/L is a calculation error.

⭐ Key point: Common causes in ICU: lactic acidosis (shock, sepsis), DKA, kidney failure, and poisoning (methanol, ethylene glycol, salicylates).$x$, null),
(78, $x$Arterial blood gas for an obese patient with obesity hypoventilation syndrome and a chest infection pH 7.34, PaCO2 63 mmHg, HCO3⁻ 33 mmol/L. What is the correct interpretation?$x$, $x$Partially compensated respiratory acidosis$x$, $x$✅ Correct answer: Partially compensated respiratory acidosis
STEP 1 — pH 7.34: slightly ACIDOTIC. STEP 2 — PaCO2 63 mmHg is HIGH: a RESPIRATORY cause (obesity hypoventilation — the heavy chest wall and abdomen limit breathing, so CO2 builds up). STEP 3 — HCO3⁻ 33 mmol/L is HIGH: the kidneys have retained bicarbonate over time to buffer the CO2, but the pH is still below 7.35. Answer: PARTIALLY COMPENSATED RESPIRATORY ACIDOSIS (likely chronic with an acute worsening from the chest infection).

❌ Why the other options are wrong:
• Uncompensated respiratory alkalosis — Respiratory alkalosis would have a HIGH pH.
• Uncompensated respiratory acidosis — UNCOMPENSATED would show a normal HCO3⁻.
• Uncompensated metabolic acidosis — Metabolic acidosis would have a LOW HCO3⁻.

⭐ Key point: These patients often need non-invasive ventilation (BiPAP) and controlled oxygen therapy (target SpO2 88–92%).$x$, null),
(79, $x$Arterial blood gases (ABGs) show respiratory alkalosis, and CO2 is very low that is 25 mm of Hg while on ventilator setting respiratory rate is set at 22b/m. What would you do with respiratory rate?$x$, $x$Decrease respiratory rate$x$, $x$✅ Correct answer: Decrease respiratory rate
RESPIRATORY ALKALOSIS with a LOW PaCO2 (25 mmHg) in a ventilated patient means the ventilator is "BLOWING OFF" TOO MUCH CO2 — the patient is being OVER-VENTILATED. Minute ventilation = rate × tidal volume, so to raise the CO2 back towards normal (35–45), the nurse/doctor should DECREASE THE RESPIRATORY RATE (or the tidal volume). A rough guide: new rate = current rate × current PaCO2 ÷ target PaCO2 = 22 × 25 ÷ 40 ≈ 14 breaths/min.

❌ Why the other options are wrong:
• Do not change the rate — Not changing the rate leaves the patient alkalotic, which can cause arrhythmias, low potassium and calcium, and reduced brain blood flow.
• None of them — "None of them" is wrong because decreasing the rate is the correct action.
• Increase respiratory rate — Increasing the rate would lower the CO2 even further and worsen the alkalosis.

⭐ Key point: Check whether the patient is triggering extra breaths (pain, anxiety, fever) before changing settings; ventilator changes are made per the doctor's order or unit protocol.$x$, null),
(80, $x$Arterial blood gas for an anxious young woman who is hyperventilating and has tingling around her mouth pH 7.51, PaCO2 31 mmHg, HCO3⁻ 26 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory alkalosis$x$, $x$✅ Correct answer: Uncompensated respiratory alkalosis
STEP 1 — pH 7.51: ALKALOSIS. STEP 2 — PaCO2 31 mmHg is LOW: RESPIRATORY cause (anxious hyperventilation). STEP 3 — HCO3⁻ 26 mmol/L is NORMAL (upper limit): no renal compensation yet. Answer: UNCOMPENSATED RESPIRATORY ALKALOSIS.

❌ Why the other options are wrong:
• Partially compensated metabolic alkalosis — Metabolic alkalosis would need a HIGH HCO3⁻ as the primary change.
• Partially compensated respiratory alkalosis — PARTIAL compensation would need a LOW HCO3⁻.
• Fully compensated metabolic acidosis — Metabolic acidosis would have a LOW pH.

⭐ Key point: Any time the pH is abnormal and only ONE value (PaCO2 or HCO3⁻) is abnormal, the disorder is uncompensated.$x$, null),
(81, $x$Arterial blood gas for a patient on continuous nasogastric suction for 3 days pH 7.51, PaCO2 37 mmHg, HCO3⁻ 36 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic alkalosis$x$, $x$✅ Correct answer: Uncompensated metabolic alkalosis
STEP 1 — pH 7.51: ALKALOSIS. STEP 2 — HCO3⁻ 36 mmol/L is HIGH: METABOLIC cause (NG suction removing stomach acid). STEP 3 — PaCO2 37 mmHg is NORMAL: the lungs have not compensated. Answer: UNCOMPENSATED METABOLIC ALKALOSIS.

❌ Why the other options are wrong:
• Partially compensated respiratory acidosis — Respiratory acidosis would have a LOW pH and HIGH PaCO2.
• Partially compensated metabolic alkalosis — PARTIAL compensation would need a HIGH PaCO2 (above 45).
• Uncompensated metabolic acidosis — Metabolic acidosis would have a LOW pH and LOW HCO3⁻.

⭐ Key point: Metabolic alkalosis from vomiting or NG loss is "chloride-responsive" — it improves with IV 0.9% saline and potassium replacement.$x$, null),
(82, $x$Arterial blood gas for a ventilated patient whose set rate is too high pH 7.55, PaCO2 26 mmHg, HCO3⁻ 23 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory alkalosis$x$, $x$✅ Correct answer: Uncompensated respiratory alkalosis
STEP 1 — pH 7.55: ALKALOSIS. STEP 2 — PaCO2 26 mmHg is LOW: RESPIRATORY cause — the ventilator rate is set too high, so too much CO2 is removed. STEP 3 — HCO3⁻ 23 mmol/L is NORMAL: no compensation. Answer: UNCOMPENSATED RESPIRATORY ALKALOSIS. The fix is to reduce the ventilator rate or tidal volume.

❌ Why the other options are wrong:
• Partially compensated respiratory alkalosis — PARTIAL compensation would need a LOW HCO3⁻.
• Uncompensated respiratory acidosis — Respiratory acidosis would have a LOW pH and HIGH PaCO2.
• Partially compensated metabolic acidosis — Metabolic acidosis would have a LOW pH.

⭐ Key point: Over-ventilation can cause cerebral vasoconstriction, low potassium, low ionised calcium and arrhythmias.$x$, null),
(83, $x$Arterial blood gas for a ventilated patient whose set rate is too high pH 7.53, PaCO2 26 mmHg, HCO3⁻ 25 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory alkalosis$x$, $x$✅ Correct answer: Uncompensated respiratory alkalosis
STEP 1 — pH 7.53: ALKALOSIS. STEP 2 — PaCO2 26 mmHg is LOW: RESPIRATORY cause (the ventilator rate is too high). STEP 3 — HCO3⁻ 25 mmol/L is NORMAL: no compensation. Answer: UNCOMPENSATED RESPIRATORY ALKALOSIS.

❌ Why the other options are wrong:
• Partially compensated respiratory alkalosis — PARTIAL compensation would show a LOW HCO3⁻.
• Mixed respiratory and metabolic acidosis — Mixed acidosis would show a LOW pH.
• Partially compensated metabolic alkalosis — Metabolic alkalosis would show a HIGH HCO3⁻.

⭐ Key point: Recheck the ABG about 20–30 minutes after a ventilator change.$x$, null),
(84, $x$Arterial blood gas for a patient with chronic kyphoscoliosis who feels well pH 7.36, PaCO2 62 mmHg, HCO3⁻ 34 mmol/L. What is the correct interpretation?$x$, $x$Fully compensated respiratory acidosis$x$, $x$✅ Correct answer: Fully compensated respiratory acidosis
STEP 1 — pH 7.36: NORMAL (but on the ACIDIC side of 7.40). STEP 2 — PaCO2 62 mmHg is HIGH (respiratory acidosis) and HCO3⁻ 34 mmol/L is HIGH (metabolic alkalosis). Which is the primary problem? The pH is on the acidic side, so the PRIMARY problem is the one that causes acidosis — the HIGH CO2 (chronic hypoventilation from kyphoscoliosis restricting the chest). STEP 3 — The kidneys have raised bicarbonate enough to bring the pH back into the normal range. Answer: FULLY COMPENSATED RESPIRATORY ACIDOSIS. The patient "feels well", which fits a chronic, stable state.

❌ Why the other options are wrong:
• Uncompensated respiratory acidosis — UNCOMPENSATED would have an abnormal pH and normal HCO3⁻.
• Fully compensated metabolic acidosis — Metabolic acidosis would need a LOW HCO3⁻.
• Uncompensated respiratory alkalosis — Respiratory alkalosis would need a LOW PaCO2.

⭐ Key point: Full compensation brings the pH into 7.35–7.45; the side of 7.40 it lies on shows the primary disorder.$x$, null),
(85, $x$A patient with poorly controlled diabetes presents with fruity breath odor, Kussmaul respirations, and severe hyperglycemia. Kussmaul respirations occur as a compensatory response to which acid-base disturbance?$x$, $x$Metabolic acidosis, with deep rapid breathing to blow off CO2 and raise pH$x$, $x$✅ Correct answer: Metabolic acidosis, with deep rapid breathing to blow off CO2 and raise pH
In DIABETIC KETOACIDOSIS (DKA), lack of insulin causes the body to burn fat, producing KETONE acids. These acids lower the bicarbonate and pH: METABOLIC ACIDOSIS. The respiratory centre responds by making the patient breathe DEEPLY and RAPIDLY (KUSSMAUL RESPIRATIONS) to BLOW OFF CO2, which helps RAISE the pH towards normal. The fruity (acetone) breath is from ketones.

❌ Why the other options are wrong:
• Metabolic alkalosis — Metabolic alkalosis would cause slow, shallow breathing (to retain CO2), not Kussmaul breathing.
• Respiratory alkalosis — Respiratory alkalosis is CAUSED by hyperventilation; Kussmaul breathing here is a RESPONSE to acidosis.
• Respiratory acidosis — Respiratory acidosis is caused by HYPOventilation.

⭐ Key point: Treat DKA with IV fluids, fixed-rate insulin, potassium replacement and close monitoring of glucose, ketones, pH and electrolytes.$x$, null),
(86, $x$Results: Na⁺ 140, Cl⁻ 109, HCO3⁻ 10 mmol/L. What is the anion gap and its interpretation?$x$, $x$21 mmol/L — raised (high anion gap)$x$, $x$✅ Correct answer: 21 mmol/L — raised (high anion gap)
ANION GAP = Na⁺ − (Cl⁻ + HCO3⁻) = 140 − (109 + 10) = 140 − 119 = 21 mmol/L. Normal is about 8–12 mmol/L (up to 16 with potassium). 21 is RAISED: a HIGH ANION GAP METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• 31 mmol/L — raised (high anion gap) — 31 mmol/L is a calculation error.
• 21 mmol/L — normal — 21 is correct, but it is RAISED, not normal.
• 41 mmol/L — raised (high anion gap) — 41 mmol/L is a calculation error.

⭐ Key point: When the anion gap is raised, check lactate, ketones, creatinine/urea, and consider toxins (osmolar gap).$x$, null),
(87, $x$A stable patient with severe COPD is likely to show which arterial blood gas pattern at baseline?$x$, $x$Chronic hypercapnia with compensatory elevation of bicarbonate and near-normal pH$x$, $x$✅ Correct answer: Chronic hypercapnia with compensatory elevation of bicarbonate and near-normal pH
In STABLE, severe COPD, the damaged lungs cannot remove CO2 efficiently, so the PaCO2 stays HIGH all the time (CHRONIC HYPERCAPNIA). Over days to weeks, the KIDNEYS RETAIN BICARBONATE to buffer the extra acid, raising HCO3⁻ (e.g. 30–36 mmol/L). This brings the pH back to NEAR-NORMAL (often 7.35–7.40). So the baseline gas is a COMPENSATED RESPIRATORY ACIDOSIS.

❌ Why the other options are wrong:
• Marked hypocapnia with elevated pH — Marked hypocapnia (low CO2) with high pH is respiratory alkalosis, not typical of COPD.
• Normal PaCO2 with severe metabolic acidosis — COPD causes high CO2, not normal CO2 with severe metabolic acidosis.
• Acute respiratory alkalosis with low bicarbonate — Acute respiratory alkalosis with low bicarbonate is not the usual COPD pattern.

⭐ Key point: Knowing a patient's baseline gas helps: in an exacerbation, the CO2 rises further and the pH falls (acute-on-chronic respiratory acidosis).$x$, null),
(88, $x$Arterial blood gas for a patient on high-dose furosemide with a low potassium pH 7.48, PaCO2 51 mmHg, HCO3⁻ 36 mmol/L. What is the correct interpretation?$x$, $x$Partially compensated metabolic alkalosis$x$, $x$✅ Correct answer: Partially compensated metabolic alkalosis
STEP 1 — pH 7.48: ALKALOSIS. STEP 2 — HCO3⁻ 36 mmol/L is HIGH: METABOLIC ALKALOSIS (FUROSEMIDE causes loss of hydrogen, chloride and potassium in urine, and volume contraction). STEP 3 — PaCO2 51 mmHg is HIGH: the lungs are compensating by HYPOVENTILATING to retain CO2, but the pH is still above 7.45. Answer: PARTIALLY COMPENSATED METABOLIC ALKALOSIS.

❌ Why the other options are wrong:
• Mixed respiratory and metabolic acidosis — Mixed acidosis would have a LOW pH.
• Fully compensated respiratory acidosis — FULLY compensated respiratory acidosis would have a normal pH on the acidic side.
• Uncompensated metabolic alkalosis — UNCOMPENSATED would have a normal PaCO2.

⭐ Key point: Correct the low potassium and chloride; consider reducing the diuretic dose.$x$, null),
(89, $x$Arterial blood gas for a patient just resuscitated from a cardiac arrest pH 7.07, PaCO2 61 mmHg, HCO3⁻ 16 mmol/L. What is the correct interpretation?$x$, $x$Mixed respiratory and metabolic acidosis$x$, $x$✅ Correct answer: Mixed respiratory and metabolic acidosis
STEP 1 — pH 7.07: severe ACIDOSIS. STEP 2 — PaCO2 61 mmHg is HIGH (RESPIRATORY ACIDOSIS — no effective breathing during arrest) AND HCO3⁻ 16 mmol/L is LOW (METABOLIC ACIDOSIS — lactic acid from poor tissue perfusion during arrest). STEP 3 — BOTH values are pushing the pH DOWN in the same direction, so neither is compensating for the other. Answer: MIXED RESPIRATORY AND METABOLIC ACIDOSIS. This explains the very low pH.

❌ Why the other options are wrong:
• Partially compensated metabolic acidosis — Partial compensation of metabolic acidosis would require a LOW PaCO2.
• Uncompensated respiratory alkalosis — Respiratory alkalosis would have a HIGH pH.
• Partially compensated metabolic alkalosis — Metabolic alkalosis would have a HIGH pH and HIGH HCO3⁻.

⭐ Key point: After cardiac arrest, ensure adequate ventilation (normal CO2), restore perfusion and oxygenation; the lactic acidosis usually improves as circulation recovers.$x$, null),
(90, $x$Hypokalemia tends to promote metabolic alkalosis in part because it:$x$, $x$Promotes an intracellular shift of hydrogen ions and enhances renal hydrogen ion secretion and ammoniagenesis$x$, $x$✅ Correct answer: Promotes an intracellular shift of hydrogen ions and enhances renal hydrogen ion secretion and ammoniagenesis
HYPOKALAEMIA promotes METABOLIC ALKALOSIS in two main ways: (1) when blood potassium is low, potassium moves OUT of cells and HYDROGEN IONS move INTO cells to keep the electrical balance — so the blood loses hydrogen ions and becomes alkaline; (2) the KIDNEYS respond by SECRETING MORE HYDROGEN ions into the urine and increasing AMMONIA production (ammoniagenesis), which generates more new bicarbonate. Both effects raise plasma bicarbonate.

❌ Why the other options are wrong:
• Directly raises plasma bicarbonate through increased dietary intake — Diet does not directly raise plasma bicarbonate in this way.
• Suppresses aldosterone secretion — Hypokalaemia does not suppress aldosterone; actually, high aldosterone causes potassium loss.
• Increases respiratory rate, lowering PaCO2 and directly raising pH — Hypokalaemia does not increase respiratory rate to cause alkalosis.

⭐ Key point: Metabolic alkalosis is difficult to correct until potassium (and chloride) are replaced.$x$, null),
(91, $x$Arterial blood gas for a ventilated patient whose set rate is too high pH 7.57, PaCO2 24 mmHg, HCO3⁻ 22 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory alkalosis$x$, $x$✅ Correct answer: Uncompensated respiratory alkalosis
STEP 1 — pH 7.57: ALKALOSIS. STEP 2 — PaCO2 24 mmHg is LOW: RESPIRATORY cause (ventilator rate set too high). STEP 3 — HCO3⁻ 22 mmol/L is at the low end of NORMAL: no compensation. Answer: UNCOMPENSATED RESPIRATORY ALKALOSIS.

❌ Why the other options are wrong:
• Partially compensated respiratory alkalosis — PARTIAL compensation would show a LOW HCO3⁻ (below 22).
• Mixed respiratory and metabolic acidosis — Mixed acidosis would show a LOW pH.
• Uncompensated metabolic acidosis — Metabolic acidosis would show a LOW pH.

⭐ Key point: Reduce minute ventilation (rate or tidal volume) and recheck the ABG.$x$, null),
(92, $x$Arterial blood gas for a patient admitted minutes ago after a prolonged seizure pH 7.25, PaCO2 40 mmHg, HCO3⁻ 17 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic acidosis$x$, $x$✅ Correct answer: Uncompensated metabolic acidosis
STEP 1 — pH 7.25: ACIDOSIS. STEP 2 — HCO3⁻ 17 mmol/L is LOW: METABOLIC (lactic acidosis from intense muscle activity during the seizure). STEP 3 — PaCO2 40 mmHg is NORMAL: no respiratory compensation yet. Answer: UNCOMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Fully compensated metabolic acidosis — FULL compensation would bring the pH into normal range with a low PaCO2.
• Partially compensated respiratory acidosis — Respiratory acidosis would have a HIGH PaCO2.
• Partially compensated respiratory alkalosis — Respiratory alkalosis would have a HIGH pH.

⭐ Key point: Post-seizure lactic acidosis usually resolves within an hour without bicarbonate.$x$, null),
(93, $x$Arterial blood gas for an obese patient with obesity hypoventilation syndrome and a chest infection pH 7.30, PaCO2 62 mmHg, HCO3⁻ 31 mmol/L. What is the correct interpretation?$x$, $x$Partially compensated respiratory acidosis$x$, $x$✅ Correct answer: Partially compensated respiratory acidosis
STEP 1 — pH 7.30: ACIDOSIS. STEP 2 — PaCO2 62 mmHg is HIGH: RESPIRATORY ACIDOSIS (obesity hypoventilation plus chest infection). STEP 3 — HCO3⁻ 31 mmol/L is HIGH: renal compensation has begun, but the pH is still low. Answer: PARTIALLY COMPENSATED RESPIRATORY ACIDOSIS.

❌ Why the other options are wrong:
• Fully compensated respiratory acidosis — FULLY compensated would have a normal pH.
• Uncompensated respiratory alkalosis — Respiratory alkalosis would have a HIGH pH.
• Partially compensated metabolic alkalosis — Metabolic alkalosis would have a HIGH pH.

⭐ Key point: Consider NIV and treat the infection; avoid excessive oxygen.$x$, null),
(94, $x$Arterial blood gas for a patient with severe diarrhoea who has just arrived pH 7.30, PaCO2 41 mmHg, HCO3⁻ 18 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic acidosis$x$, $x$✅ Correct answer: Uncompensated metabolic acidosis
STEP 1 — pH 7.30: ACIDOSIS. STEP 2 — HCO3⁻ 18 mmol/L is LOW: METABOLIC (diarrhoea loses bicarbonate). STEP 3 — PaCO2 41 mmHg is NORMAL: no respiratory compensation yet. Answer: UNCOMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Partially compensated metabolic acidosis — PARTIAL compensation would require a LOW PaCO2.
• Uncompensated respiratory acidosis — Respiratory acidosis needs a HIGH PaCO2.
• Partially compensated respiratory alkalosis — Respiratory alkalosis would have a HIGH pH.

⭐ Key point: Compensation for metabolic acidosis is respiratory (fast, deep breathing) and usually begins within hours.$x$, null),
(95, $x$The expected respiratory compensation for metabolic alkalosis is:$x$, $x$Hypoventilation, retaining CO2 to help lower pH toward normal$x$, $x$✅ Correct answer: Hypoventilation, retaining CO2 to help lower pH toward normal
In METABOLIC ALKALOSIS, the blood has too much bicarbonate and the pH is high. The lungs compensate by HYPOVENTILATING (slower, shallower breathing), which RETAINS CO2. Extra CO2 forms carbonic acid, which helps LOWER the pH back towards normal. This compensation is limited because hypoventilation also lowers oxygen; PaCO2 rarely rises above about 55 mmHg for compensation alone.

❌ Why the other options are wrong:
• Immediate renal correction only — The kidneys are the main correctors, but respiratory compensation also occurs quickly.
• Hyperventilation to blow off more CO2 — Hyperventilation would lower CO2 and worsen the alkalosis.
• No respiratory change occurs — A respiratory change does occur.

⭐ Key point: Expected PaCO2 in metabolic alkalosis ≈ 0.7 × HCO3⁻ + 20 (± 5).$x$, null),
(96, $x$Arterial blood gas for a patient admitted minutes ago after a prolonged seizure pH 7.21, PaCO2 43 mmHg, HCO3⁻ 13 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic acidosis$x$, $x$✅ Correct answer: Uncompensated metabolic acidosis
STEP 1 — pH 7.21: ACIDOSIS. STEP 2 — HCO3⁻ 13 mmol/L is LOW: METABOLIC (lactic acidosis after the seizure). STEP 3 — PaCO2 43 mmHg is NORMAL: not compensated. Answer: UNCOMPENSATED METABOLIC ACIDOSIS. (Using Winter's formula, expected PaCO2 = 1.5 × 13 + 8 = 27.5 ± 2; a PaCO2 of 43 is higher than expected, suggesting the post-ictal patient is not breathing deeply enough — but among the options given, "uncompensated metabolic acidosis" is the best answer.)

❌ Why the other options are wrong:
• Uncompensated respiratory alkalosis — Respiratory alkalosis would have a HIGH pH.
• Partially compensated respiratory acidosis — Respiratory acidosis needs a HIGH PaCO2 as the primary change.
• Mixed respiratory and metabolic acidosis — A MIXED acidosis would need a clearly HIGH PaCO2 (above 45).

⭐ Key point: Monitor the airway and breathing in post-ictal patients — drowsiness can cause hypoventilation.$x$, null),
(97, $x$Which condition would result in an elevated anion gap in ABG results?$x$, $x$Diabetic ketoacidosis$x$, $x$✅ Correct answer: Diabetic ketoacidosis
DIABETIC KETOACIDOSIS (DKA) produces KETONE acids (beta-hydroxybutyrate and acetoacetate), which are "unmeasured anions". They use up bicarbonate without raising chloride, so the ANION GAP RISES (HIGH ANION GAP METABOLIC ACIDOSIS).

❌ Why the other options are wrong:
• Renal tubular acidosis — Renal tubular acidosis causes a NORMAL anion gap (hyperchloraemic) acidosis.
• Drug-induced metabolic alkalosis — Metabolic alkalosis does not cause a raised anion gap acidosis.
• Hyperkalemia — Hyperkalaemia does not itself cause an elevated anion gap.

⭐ Key point: Monitor the anion gap in DKA — its closure is a sign of resolution.$x$, null),
(98, $x$Which acid–base disturbance is most likely to result from the following? Opioid overdose with respiratory depression.$x$, $x$Respiratory acidosis$x$, $x$✅ Correct answer: Respiratory acidosis
OPIOIDS (e.g. morphine, heroin, fentanyl) depress the breathing centre in the brainstem, causing slow, shallow breathing (HYPOVENTILATION). CO2 builds up in the blood, causing RESPIRATORY ACIDOSIS (low pH, high PaCO2). Pinpoint pupils and drowsiness are other signs.

❌ Why the other options are wrong:
• Metabolic alkalosis — Metabolic alkalosis is caused by acid loss (vomiting) or bicarbonate gain.
• Respiratory alkalosis — Respiratory alkalosis is caused by HYPERventilation.
• Metabolic acidosis — Metabolic acidosis is caused by acid gain or bicarbonate loss (although severe hypoxia can add lactic acidosis).

⭐ Key point: Treat with airway support, bag-mask ventilation and NALOXONE; watch for re-sedation as naloxone wears off.$x$, null),
(99, $x$Results: Na⁺ 140, Cl⁻ 103, HCO3⁻ 14 mmol/L. What is the anion gap and its interpretation?$x$, $x$23 mmol/L — raised (high anion gap)$x$, $x$✅ Correct answer: 23 mmol/L — raised (high anion gap)
ANION GAP = Na⁺ − (Cl⁻ + HCO3⁻) = 140 − (103 + 14) = 140 − 117 = 23 mmol/L. Normal is 8–12 (up to 16 with potassium), so 23 is RAISED: HIGH ANION GAP METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• 51 mmol/L — raised (high anion gap) — 51 mmol/L is a calculation error.
• 23 mmol/L — normal — 23 is correct, but it is RAISED, not normal.
• 37 mmol/L — raised (high anion gap) — 37 mmol/L is a calculation error.

⭐ Key point: In low albumin states, the anion gap is underestimated; correct by adding about 2.5 for every 10 g/L fall in albumin below 40.$x$, null),
(100, $x$A patient with ARDS on mechanical ventilation has a plateau pressure consistently above 30cmH2O. The nurse understands this is concerning because:$x$, $x$It increases the risk of ventilator-induced lung injury (barotrauma), and settings should be adjusted to keep plateau pressure below this threshold$x$, $x$✅ Correct answer: It increases the risk of ventilator-induced lung injury (barotrauma), and settings should be adjusted to keep plateau pressure below this threshold
PLATEAU PRESSURE reflects the pressure in the ALVEOLI at the end of inspiration. When it is consistently ABOVE 30 cmH2O, the alveoli are being OVER-STRETCHED. This increases the risk of VENTILATOR-INDUCED LUNG INJURY: BAROTRAUMA (pneumothorax, pneumomediastinum, surgical emphysema) and VOLUTRAUMA (inflammation and leakage from over-distension). Lung-protective ventilation keeps plateau pressure at or below 30 cmH2O (by reducing tidal volume towards 4–6 mL/kg PBW).

❌ Why the other options are wrong:
• It has no clinical significance — A high plateau pressure IS clinically significant.
• It indicates the patient is ready for extubation — It does not indicate readiness for extubation.
• It indicates optimal lung compliance — High plateau pressure indicates POOR (low) compliance, not optimal compliance.

⭐ Key point: Also keep the driving pressure (plateau − PEEP) at or below 15 cmH2O.$x$, null)
),
upd as (
  update public.questions qq
     set exp = r.exp,
         ans_idx = coalesce((select (t.i - 1)::int from jsonb_array_elements_text(qq.opts) with ordinality t(v, i) where t.v = r.fixed_answer), qq.ans_idx)
    from r
   where qq.q = r.q
     and qq.opts ->> qq.ans_idx = r.answer
  returning r.n
)
select count(distinct n) as "questions updated (should be 100)", count(*) as "rows changed" from upd;
