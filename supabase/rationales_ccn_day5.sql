-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 5 (200 questions)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$A 6 kg child in shock is prescribed a 20 mL/kg bolus of normal saline. What volume should be given?$x$, $x$120 mL$x$, $x$✅ Correct answer: 120 mL
Fluid boluses for children in shock are worked out by WEIGHT, because a child's blood volume is about 70–80 mL/kg. Formula: VOLUME = mL/kg × WEIGHT. Here: 20 mL/kg × 6 kg = 120 mL of 0.9% sodium chloride. Check: 20 × 6 = 120. ✓ For a 6 kg baby, 120 mL is about a quarter of the whole blood volume, so it is a significant amount. Give it quickly (over 5–10 minutes, using a syringe push or pressure bag), then REASSESS heart rate, capillary refill time, BP, conscious level, urine output and signs of overload (crackles, enlarged liver) before giving any more.

❌ Why the other options are wrong:
• 240 mL — 240 mL is 40 mL/kg — double the dose; too much for one bolus in a small baby.
• 60 mL — 60 mL is only 10 mL/kg — half the prescribed dose.
• 180 mL — 180 mL is 30 mL/kg — more than prescribed.

⭐ Key point: In children with severe malnutrition or heart disease, smaller boluses (10 mL/kg) are given more slowly, because their hearts can easily fail with fluid overload.$x$, null),
(2, $x$A 75 kg man with 35% TBSA burns arrives 1 hour after the injury and has had no IV fluid. Using the Parkland formula, at what rate should the first half of the fluid run?$x$, $x$750 mL/hr$x$, $x$✅ Correct answer: 750 mL/hr
The PARKLAND FORMULA estimates burn fluid for the first 24 hours: 4 mL × WEIGHT (kg) × %TBSA. STEP 1 — Total: 4 × 75 × 35 = 10,500 mL. STEP 2 — HALF of this (5,250 mL) must be given in the first 8 HOURS counted FROM THE TIME OF THE BURN (not from arrival). STEP 3 — He arrived 1 hour after the burn with no fluid, so only 7 hours remain to give 5,250 mL. STEP 4 — Rate: 5,250 ÷ 7 = 750 mL/hr. The second half (5,250 mL) is then given over the next 16 hours (about 328 mL/hr).

❌ Why the other options are wrong:
• 1,500 mL/hr — 1,500 mL/hr is double the correct rate.
• 656.2 mL/hr — 656.2 mL/hr is 5,250 ÷ 8 — it ignores the hour already lost.
• 437.5 mL/hr — 437.5 mL/hr is 10,500 ÷ 24 — an even rate over the whole day, which under-resuscitates in the critical early hours.

⭐ Key point: Parkland is only a starting point — adjust the rate hourly to keep urine output at 0.5–1 mL/kg/hr in adults. Use Hartmann's (Ringer's lactate).$x$, null),
(3, $x$Amoxicillin suspension is available as 250 mg in 5 mL. The prescription is 500 mg. What volume should be given?$x$, $x$10 mL$x$, $x$✅ Correct answer: 10 mL
For oral liquids: VOLUME = (DOSE WANTED ÷ DOSE IN STOCK) × STOCK VOLUME. Here: (500 mg ÷ 250 mg) × 5 mL = 2 × 5 = 10 mL. Check: 5 mL contains 250 mg, so 10 mL contains 500 mg. ✓ A useful "sense check": the dose wanted is double the stock strength, so the volume must be double the stock volume.

❌ Why the other options are wrong:
• 2 mL — 2 mL forgets to multiply by the 5 mL stock volume (only 100 mg).
• 2.5 mL — 2.5 mL would give only 125 mg (a quarter of the dose).
• 20 mL — 20 mL would give 1,000 mg — double the dose.

⭐ Key point: Shake suspensions well before measuring (the drug settles at the bottom), and use an oral syringe for accuracy.$x$, null),
(4, $x$Using the 4-2-1 rule, what is the hourly maintenance fluid rate for a child weighing 32 kg?$x$, $x$72 mL/hr$x$, $x$✅ Correct answer: 72 mL/hr
The 4-2-1 RULE gives HOURLY maintenance fluid: 4 mL/kg/hr for the FIRST 10 kg; 2 mL/kg/hr for the NEXT 10 kg (11–20 kg); 1 mL/kg/hr for EVERY kg ABOVE 20 kg. For 32 kg: first 10 kg = 40 mL/hr; next 10 kg = 20 mL/hr; remaining 12 kg = 12 mL/hr. Total = 40 + 20 + 12 = 72 mL/hr. Shortcut for anyone above 20 kg: 60 + (weight − 20) = 60 + 12 = 72 mL/hr.

❌ Why the other options are wrong:
• 82 mL/hr — 82 mL/hr adds 10 mL/hr too much.
• 128 mL/hr — 128 mL/hr is 4 mL/kg for all 32 kg — nearly double.
• 64 mL/hr — 64 mL/hr is 2 mL/kg for all 32 kg.

⭐ Key point: Maintenance fluid is only for patients who cannot drink enough. Sick children often need less (two-thirds of maintenance) because stress increases ADH, which holds water and risks hyponatraemia.$x$, null),
(5, $x$An adult has burns to the whole left leg and the perineum. Using the Rule of Nines, what is the TBSA burned?$x$, $x$19%$x$, $x$✅ Correct answer: 19%
RULE OF NINES (adult): each WHOLE LEG = 18% (front 9% + back 9%); the PERINEUM = 1%. Here: whole left leg 18% + perineum 1% = 19% TBSA. A 19% burn in an adult needs IV fluid resuscitation, and the perineal burn needs specialist burns care because of high infection risk (contamination from urine and faeces) and the likely need for a urinary catheter.

❌ Why the other options are wrong:
• 28% — 28% adds an extra 9%.
• 23.5% — 23.5% adds an extra 4.5%.
• 10% — 10% counts the leg as only 9%.

⭐ Key point: Do not include simple redness (superficial/first-degree burns) when calculating %TBSA for fluid resuscitation.$x$, null),
(6, $x$1,000 mL of Ringer's lactate is prescribed to run over 6 hours using a giving set with a drop factor of 10 drops/mL. What is the correct drip rate?$x$, $x$28 drops/min$x$, $x$✅ Correct answer: 28 drops/min
DROPS PER MINUTE = (VOLUME × DROP FACTOR) ÷ TIME IN MINUTES. Here: (1,000 mL × 10 drops/mL) ÷ (6 hours × 60) = 10,000 ÷ 360 = 27.8, which rounds to 28 drops/min. Check: the hourly rate is 1,000 ÷ 6 = 167 mL/hr; with a 10-drop set, drops/min = mL/hr ÷ 6 = 167 ÷ 6 ≈ 28. ✓

❌ Why the other options are wrong:
• 56 drops/min — 56 drops/min is double — the bag would finish in 3 hours.
• 42 drops/min — 42 drops/min would finish in about 4 hours.
• 167 drops/min — 167 drops/min is the rate in mL/HOUR, not drops per minute.

⭐ Key point: Count drops for a full minute when setting a gravity drip, and recheck regularly — gravity rates change with the patient's position and the height of the bag.$x$, null),
(7, $x$A head-injured patient has BP 140/80 mmHg and ICP 30 mmHg. What is the cerebral perfusion pressure (CPP)?$x$, $x$70 mmHg$x$, $x$✅ Correct answer: 70 mmHg
CEREBRAL PERFUSION PRESSURE (CPP) is the pressure pushing blood into the brain: CPP = MAP − ICP. STEP 1 — MAP = (systolic + 2 × diastolic) ÷ 3 = (140 + 160) ÷ 3 = 300 ÷ 3 = 100 mmHg. STEP 2 — CPP = 100 − 30 = 70 mmHg. A CPP of 60–70 mmHg is the usual target in traumatic brain injury, so CPP is acceptable here — BUT the ICP of 30 mmHg is HIGH (normal 5–15; treatment usually starts above 20–22 mmHg), so measures to lower ICP are still needed.

❌ Why the other options are wrong:
• 110 mmHg — 110 mmHg is systolic minus ICP (140 − 30) — wrong, it should use MAP.
• 50 mmHg — 50 mmHg is diastolic minus ICP (80 − 30).
• 130 mmHg — 130 mmHg is not a valid calculation.

⭐ Key point: To lower ICP: head up 30°, neck straight, avoid hypoxia and high CO2, sedation and analgesia, treat fever and seizures, osmotherapy (mannitol or hypertonic saline), CSF drainage.$x$, null),
(8, $x$A patient weighs 33 lb. A drug is prescribed at 5 mg/kg. What dose should be given?$x$, $x$75 mg$x$, $x$✅ Correct answer: 75 mg
STEP 1 — Convert pounds to kilograms: kg = lb ÷ 2.2. 33 lb ÷ 2.2 = 15 kg. STEP 2 — Dose: 5 mg/kg × 15 kg = 75 mg. Check: 15 × 2.2 = 33 lb. ✓

❌ Why the other options are wrong:
• 165 mg — 165 mg uses the weight in POUNDS as if it were kg (5 × 33) — more than double.
• 150 mg — 150 mg is 10 mg/kg — double the dose.
• 34.1 mg — 34.1 mg divides by 2.2 twice — less than half the dose.

⭐ Key point: A weight of 33 lb is a young child (about 3–4 years). Errors with pounds and kilograms are especially dangerous in children; always confirm the weight in kg.$x$, null),
(9, $x$Cefuroxime 90 mg/kg/day is prescribed in divided doses every 6 hours for an infant weighing 15 kg. How much is each dose?$x$, $x$337.5 mg$x$, $x$✅ Correct answer: 337.5 mg
STEP 1 — Daily dose: 90 mg/kg/day × 15 kg = 1,350 mg per day. STEP 2 — "Every 6 hours" = 4 doses a day (24 ÷ 6 = 4). STEP 3 — Each dose: 1,350 ÷ 4 = 337.5 mg. Check: 337.5 × 4 = 1,350. ✓

❌ Why the other options are wrong:
• 22.5 mg — 22.5 mg is far too little (a decimal or division error).
• 1,350 mg — 1,350 mg is the WHOLE DAY's dose — giving it every 6 hours would be four times the prescribed amount.
• 270 mg — 270 mg would be the dose if it were divided into 5 doses.

⭐ Key point: When a prescription says "mg/kg/DAY in divided doses", calculate the daily total first, then divide by the number of doses. When it says "mg/kg/DOSE", multiply by weight only.$x$, null),
(10, $x$A patient does not open the eyes at all, uses inappropriate words and flexes abnormally to pain (decorticate). What is the Glasgow Coma Scale score?$x$, $x$7/15$x$, $x$✅ Correct answer: 7/15
GLASGOW COMA SCALE = EYES (1–4) + VERBAL (1–5) + MOTOR (1–6). EYES — does NOT open at all = 1. VERBAL — INAPPROPRIATE WORDS (random words, no conversation) = 3 (orientated 5, confused 4, inappropriate words 3, incomprehensible sounds 2, none 1). MOTOR — ABNORMAL FLEXION to pain (DECORTICATE posturing — arms bent in towards the chest) = 3 (obeys 6, localises 5, normal withdrawal 4, abnormal flexion 3, extension 2, none 1). Total: 1 + 3 + 3 = 7/15. A GCS of 8 or less means severe brain injury and usually the need to secure the airway.

❌ Why the other options are wrong:
• 8/15 — 8/15 overscores one component by 1.
• 9/15 — 9/15 overscores by 2.
• 6/15 — 6/15 underscores by 1.

⭐ Key point: Decorticate (abnormal flexion) = 3; decerebrate (extension) = 2. Always report the parts (E1 V3 M3) — the motor score is the best predictor of outcome.$x$, null),
(11, $x$1,000 mL of 5% dextrose is prescribed to run over 8 hours using a giving set with a drop factor of 10 drops/mL. What is the correct drip rate?$x$, $x$21 drops/min$x$, $x$✅ Correct answer: 21 drops/min
DROPS PER MINUTE = (VOLUME × DROP FACTOR) ÷ TIME IN MINUTES. Here: (1,000 × 10) ÷ (8 × 60) = 10,000 ÷ 480 = 20.8, which rounds to 21 drops/min. Check: 1,000 ÷ 8 = 125 mL/hr; 125 ÷ 6 ≈ 21. ✓

❌ Why the other options are wrong:
• 31 drops/min — 31 drops/min would finish the bag in about 5.4 hours.
• 42 drops/min — 42 drops/min is double — finished in 4 hours.
• 125 drops/min — 125 drops/min is the rate in mL/HOUR.

⭐ Key point: 5% dextrose is mainly "free water" — after the glucose is used, the water spreads to all body compartments, so large volumes can cause hyponatraemia; it is not a resuscitation fluid.$x$, null),
(12, $x$500 mL of normal saline is running at 150 mL/hr. How long will it take to finish?$x$, $x$3 h 20 min$x$, $x$✅ Correct answer: 3 h 20 min
TIME = VOLUME ÷ RATE. Here: 500 mL ÷ 150 mL/hr = 3.333 hours. Convert the decimal part into minutes: 0.333 × 60 = 20 minutes. So the bag will run for 3 HOURS 20 MINUTES. Check: 150 mL/hr × 3⅓ hr = 500 mL. ✓

❌ Why the other options are wrong:
• 18 h — 18 hours is far too long.
• 3 h 50 min — 3 h 50 min is 30 minutes too long.
• 4 h 20 min — 4 h 20 min is an hour too long.

⭐ Key point: Never write "3.33 hours" as "3 hours 33 minutes" — always multiply the decimal part by 60 to get minutes.$x$, null),
(13, $x$1,500 mL of 5% dextrose is prescribed to run over 10 hours using a giving set with a drop factor of 20 drops/mL. What is the correct drip rate?$x$, $x$50 drops/min$x$, $x$✅ Correct answer: 50 drops/min
DROPS PER MINUTE = (VOLUME × DROP FACTOR) ÷ TIME IN MINUTES. Here: (1,500 × 20) ÷ (10 × 60) = 30,000 ÷ 600 = 50 drops/min. Check: hourly rate = 1,500 ÷ 10 = 150 mL/hr; with a 20-drop set, drops/min = mL/hr ÷ 3 = 50. ✓

❌ Why the other options are wrong:
• 150 drops/min — 150 drops/min is the rate in mL/HOUR.
• 38 drops/min — 38 drops/min would finish in about 13 hours.
• 100 drops/min — 100 drops/min is double the correct rate.

⭐ Key point: Drop factor shortcuts: 10 drops/mL → ÷6; 15 → ÷4; 20 → ÷3; 60 (micro-drip) → drops/min equals mL/hr.$x$, null),
(14, $x$An adult has burns to the back of the trunk, the head and neck and the perineum. Using the Rule of Nines, what is the TBSA burned?$x$, $x$28%$x$, $x$✅ Correct answer: 28%
RULE OF NINES (adult): BACK of the trunk = 18%; HEAD and NECK = 9%; PERINEUM = 1%. Total: 18 + 9 + 1 = 28% TBSA. Head and neck burns are dangerous because of the risk of airway swelling (especially with inhalation injury) — check for hoarseness, stridor, singed nasal hair and soot in the mouth; early intubation may be needed.

❌ Why the other options are wrong:
• 32.5% — 32.5% adds an extra 4.5%.
• 19% — 19% misses the head and neck (or counts the back as 9%).
• 37% — 37% adds an extra 9%.

⭐ Key point: Facial, perineal and circumferential burns need referral to a burns centre regardless of their size.$x$, null),
(15, $x$Heparin 20,000 units in 500 mL is ordered at 1,500 units/hour. What rate (mL/hr) should be set on the pump?$x$, $x$37.5 mL/hr$x$, $x$✅ Correct answer: 37.5 mL/hr
STEP 1 — Concentration: 20,000 units ÷ 500 mL = 40 units per mL. STEP 2 — Rate: 1,500 units/hr ÷ 40 units/mL = 37.5 mL/hr. Check: 37.5 × 40 = 1,500 units. ✓ (Note this bag is a different strength from other heparin bags — always calculate from the bag in your hand.)

❌ Why the other options are wrong:
• 15 mL/hr — 15 mL/hr would give only 600 units/hr.
• 40 mL/hr — 40 mL/hr confuses the concentration (40 units/mL) with the rate — it gives 1,600 units/hr.
• 75 mL/hr — 75 mL/hr would give 3,000 units/hr — double the dose, with a serious risk of bleeding.

⭐ Key point: Heparin is a high-alert drug: independent double-check by two nurses, label the line clearly, and monitor aPTT/anti-Xa and platelets.$x$, null),
(16, $x$Adrenaline (epinephrine) 4 mg is diluted to 250 mL and prescribed at 0.05 mcg/kg/min for a patient weighing 55 kg. At what rate (mL/hr) should the infusion pump be set?$x$, $x$10.3 mL/hr$x$, $x$✅ Correct answer: 10.3 mL/hr
STEP 1 — Concentration: 4 mg in 250 mL = 0.016 mg/mL = 16 micrograms/mL. STEP 2 — Dose per hour: 0.05 mcg/kg/min × 55 kg × 60 min = 165 micrograms/hr. STEP 3 — Rate: 165 ÷ 16 = 10.3 mL/hr. Check: 10.3 × 16 = 165 mcg/hr ÷ 60 = 2.75 mcg/min ÷ 55 kg = 0.05 mcg/kg/min. ✓

❌ Why the other options are wrong:
• 20.6 mL/hr — 20.6 mL/hr is double the dose (0.1 mcg/kg/min).
• 1.9 mL/hr — 1.9 mL/hr is far too low.
• 0.2 mL/hr — 0.2 mL/hr is a units error.

⭐ Key point: Formula: mL/hr = (mcg/kg/min × kg × 60) ÷ mcg/mL. Adrenaline should be given through a central line where possible and titrated to the target MAP.$x$, null),
(17, $x$Dopamine is ordered at 10 mcg/kg/min for a 60 kg patient. What is this dose expressed in mg/hr?$x$, $x$36 mg/hr$x$, $x$✅ Correct answer: 36 mg/hr
To convert micrograms per kg per MINUTE into milligrams per HOUR: STEP 1 — Per minute for the whole patient: 10 mcg/kg/min × 60 kg = 600 micrograms/min. STEP 2 — Per hour: 600 × 60 = 36,000 micrograms/hr. STEP 3 — Convert to milligrams (÷1,000): 36,000 ÷ 1,000 = 36 mg/hr.

❌ Why the other options are wrong:
• 60 mg/hr — 60 mg/hr is a calculation error.
• 3.6 mg/hr — 3.6 mg/hr is ten times too small (a decimal place error).
• 6 mg/hr — 6 mg/hr forgets one multiplication by 60 (it is mg per 10 minutes).

⭐ Key point: Remember the conversions: 1 mg = 1,000 micrograms; 1 hour = 60 minutes. Many drug errors come from mixing up mg and micrograms — write "micrograms" in full, not "µg", to avoid confusion.$x$, null),
(18, $x$Metronidazole infusion is available as 500 mg in 100 mL. The prescription is 400 mg. What volume should be given?$x$, $x$80 mL$x$, $x$✅ Correct answer: 80 mL
VOLUME = (DOSE WANTED ÷ DOSE IN STOCK) × STOCK VOLUME. Here: (400 mg ÷ 500 mg) × 100 mL = 0.8 × 100 = 80 mL. Check: 500 mg in 100 mL = 5 mg/mL; 400 mg ÷ 5 mg/mL = 80 mL. ✓ So 20 mL of the bag must be removed and discarded (or set the pump to deliver only 80 mL).

❌ Why the other options are wrong:
• 125 mL — 125 mL is stock ÷ wanted × volume — the formula upside down.
• 0.8 mL — 0.8 mL forgets to multiply by 100 mL.
• 160 mL — 160 mL would give 800 mg — double.

⭐ Key point: When giving part of a bag, set the "volume to be infused" (VTBI) on the pump carefully so the pump stops at the right amount.$x$, null),
(19, $x$1,000 mL of Hartmann's solution is prescribed to run over 8 hours using a giving set with a drop factor of 15 drops/mL. What is the correct drip rate?$x$, $x$31 drops/min$x$, $x$✅ Correct answer: 31 drops/min
DROPS PER MINUTE = (VOLUME × DROP FACTOR) ÷ TIME IN MINUTES. Here: (1,000 × 15) ÷ (8 × 60) = 15,000 ÷ 480 = 31.25, which rounds to 31 drops/min. Check: 125 mL/hr ÷ 4 = 31. ✓

❌ Why the other options are wrong:
• 42 drops/min — 42 drops/min would finish in 6 hours.
• 125 drops/min — 125 drops/min is the rate in mL/HOUR.
• 62 drops/min — 62 drops/min is double.

⭐ Key point: Hartmann's (compound sodium lactate) is a balanced crystalloid often preferred over 0.9% saline for large-volume resuscitation (less hyperchloraemic acidosis).$x$, null),
(20, $x$A patient's blood pressure is 138/94 mmHg. What is the mean arterial pressure (MAP)?$x$, $x$109 mmHg$x$, $x$✅ Correct answer: 109 mmHg
MEAN ARTERIAL PRESSURE (MAP) = (SYSTOLIC + 2 × DIASTOLIC) ÷ 3. Here: (138 + 2 × 94) ÷ 3 = (138 + 188) ÷ 3 = 326 ÷ 3 = 108.7, which rounds to 109 mmHg. Diastole counts twice because the heart spends about two-thirds of each cycle in diastole.

❌ Why the other options are wrong:
• 123 mmHg — 123 mmHg is too high (close to systolic).
• 44 mmHg — 44 mmHg is the PULSE PRESSURE (138 − 94).
• 116 mmHg — 116 mmHg is the simple average ((138 + 94) ÷ 2) — not the correct MAP formula.

⭐ Key point: MAP below 65 mmHg means organs (kidneys, brain, heart) may not be perfused adequately.$x$, null),
(21, $x$40 mmol of potassium chloride in 1000 mL normal saline is prescribed over 5 hours. What is the pump rate and how much potassium is given each hour?$x$, $x$200 mL/hr, giving 8 mmol K⁺ per hour$x$, $x$✅ Correct answer: 200 mL/hr, giving 8 mmol K⁺ per hour
STEP 1 — Pump rate: 1,000 mL ÷ 5 hours = 200 mL/hr. STEP 2 — Potassium per hour: 40 mmol ÷ 5 hours = 8 mmol/hr. Check: 40 mmol/1,000 mL = 0.04 mmol/mL × 200 mL/hr = 8 mmol/hr. ✓ 8 mmol/hr is within the usual safe limit for a peripheral line (no more than 10 mmol/hr).

❌ Why the other options are wrong:
• 200 mL/hr, giving 4 mmol K⁺ per hour — 4 mmol/hr is wrong — half the true amount.
• 400 mL/hr, giving 16 mmol K⁺ per hour — 400 mL/hr would run the bag in 2.5 hours, giving 16 mmol/hr — too fast for a peripheral line.
• 3.3 mL/hr, giving 8 mmol K⁺ per hour — 3.3 mL/hr is far too slow; it would take about 300 hours.

⭐ Key point: Always give IV potassium by pump, never as a push. Check potassium and creatinine before and during replacement; correct magnesium too.$x$, null),
(22, $x$Ibuprofen is prescribed at 10 mg/kg per dose (maximum single dose 400 mg) for a patient weighing 60 kg. What single dose should be given?$x$, $x$400 mg$x$, $x$✅ Correct answer: 400 mg
STEP 1 — Weight-based dose: 10 mg/kg × 60 kg = 600 mg. STEP 2 — Compare with the MAXIMUM SINGLE DOSE: 400 mg. Since 600 mg is MORE than 400 mg, the dose must be CAPPED at 400 mg. Exceeding the maximum increases the risk of stomach bleeding, kidney injury and other side effects without extra benefit.

❌ Why the other options are wrong:
• 200 mg — 200 mg is too low (half the maximum).
• 660 mg — 660 mg exceeds the maximum.
• 600 mg — 600 mg is the weight-based dose, but it exceeds the 400 mg maximum.

⭐ Key point: Always check two things in weight-based dosing: the calculation AND the maximum dose.$x$, null),
(23, $x$20 mmol of potassium chloride in 1000 mL normal saline is prescribed over 4 hours. What is the pump rate and how much potassium is given each hour?$x$, $x$250 mL/hr, giving 5 mmol K⁺ per hour$x$, $x$✅ Correct answer: 250 mL/hr, giving 5 mmol K⁺ per hour
STEP 1 — Pump rate: 1,000 mL ÷ 4 hours = 250 mL/hr. STEP 2 — Potassium per hour: 20 mmol ÷ 4 hours = 5 mmol/hr. Check: 20 mmol/1,000 mL = 0.02 mmol/mL × 250 = 5 mmol/hr. ✓

❌ Why the other options are wrong:
• 4.2 mL/hr, giving 5 mmol K⁺ per hour — 4.2 mL/hr is far too slow.
• 500 mL/hr, giving 10 mmol K⁺ per hour — 500 mL/hr would run the bag in 2 hours, giving 10 mmol/hr.
• 250 mL/hr, giving 2 mmol K⁺ per hour — 2 mmol/hr is wrong.

⭐ Key point: A large volume with dilute potassium (20 mmol/L) is suitable for peripheral use, but watch for fluid overload in heart or kidney failure.$x$, null),
(24, $x$A nurse is asked to prepare an infusion so that a patient weighing 90 kg receives dopamine at 3 mcg/kg/min. The available bag is 800 mg in 500 mL D5W. What is the required infusion rate in mL/hr?$x$, $x$10.1 mL/hr$x$, $x$✅ Correct answer: 10.1 mL/hr
STEP 1 — Concentration: 800 mg in 500 mL = 1.6 mg/mL = 1,600 micrograms/mL. STEP 2 — Dose per hour: 3 mcg/kg/min × 90 kg × 60 = 16,200 micrograms/hr. STEP 3 — Rate: 16,200 ÷ 1,600 = 10.1 mL/hr. Check: 10.1 × 1,600 = 16,160 ≈ 16,200. ✓

❌ Why the other options are wrong:
• 20.3 mL/hr — 20.3 mL/hr is double the dose.
• 8.4 mL/hr — 8.4 mL/hr would give about 2.5 mcg/kg/min.
• 16.9 mL/hr — 16.9 mL/hr would give about 5 mcg/kg/min.

⭐ Key point: Low-dose dopamine (1–5 mcg/kg/min) does NOT protect the kidneys — this old idea has been disproven.$x$, null),
(25, $x$Over 24 hours a patient received 2,400 mL IV fluid and 300 mL orally. Output was urine 2,200 mL, nasogastric aspirate 0 mL and wound drain 250 mL. What is the 24-hour fluid balance?$x$, $x$+250 mL$x$, $x$✅ Correct answer: +250 mL
FLUID BALANCE = TOTAL INPUT − TOTAL OUTPUT. Input: IV 2,400 + oral 300 = 2,700 mL. Output: urine 2,200 + NG 0 + drain 250 = 2,450 mL. Balance: 2,700 − 2,450 = +250 mL (slightly positive).

❌ Why the other options are wrong:
• +5,150 mL — +5,150 mL adds input and output together.
• +500 mL — +500 mL forgets the drain output (2,700 − 2,200).
• -250 mL — −250 mL reverses the sign.

⭐ Key point: Remember insensible losses (about 500–800 mL/day from skin and breathing, more with fever, sweating or a high respiratory rate), so a balance of +250 mL may actually be slightly negative.$x$, null),
(26, $x$Soluble insulin 50 units is made up to 50 mL with normal saline. The order is 8 units/hour. What rate should be set?$x$, $x$8 mL/hr$x$, $x$✅ Correct answer: 8 mL/hr
STEP 1 — Concentration: 50 units in 50 mL = 1 unit per mL. STEP 2 — Rate: 8 units/hr ÷ 1 unit/mL = 8 mL/hr. With this standard 1 unit/mL dilution, the pump rate in mL/hr equals the dose in units/hr.

❌ Why the other options are wrong:
• 32 mL/hr — 32 mL/hr would give 32 units/hr — four times the dose; severe hypoglycaemia risk.
• 16 mL/hr — 16 mL/hr would give double.
• 4 mL/hr — 4 mL/hr would give half.

⭐ Key point: Use only an insulin syringe or pre-filled syringe when preparing insulin; write "units" in full (never "U", which can be misread as 0).$x$, null),
(27, $x$Ceftazidime 60 mg/kg/day is prescribed in divided doses every 6 hours for an infant weighing 9 kg. How much is each dose?$x$, $x$135 mg$x$, $x$✅ Correct answer: 135 mg
STEP 1 — Daily dose: 60 mg/kg/day × 9 kg = 540 mg per day. STEP 2 — Every 6 hours = 4 doses. STEP 3 — Each dose: 540 ÷ 4 = 135 mg.

❌ Why the other options are wrong:
• 540 mg — 540 mg is the whole day's dose — four times too much per dose.
• 15 mg — 15 mg is a calculation error.
• 108 mg — 108 mg would be dividing into 5 doses.

⭐ Key point: Paediatric doses must be calculated carefully and double-checked; small errors cause big relative overdoses in infants.$x$, null),
(28, $x$A 65 kg man with 60% TBSA burns arrives 2 hours after the injury and has had no IV fluid. Using the Parkland formula, at what rate should the first half of the fluid run?$x$, $x$1,300 mL/hr$x$, $x$✅ Correct answer: 1,300 mL/hr
STEP 1 — Total (Parkland): 4 × 65 × 60 = 15,600 mL in 24 hours. STEP 2 — First half: 7,800 mL in the first 8 hours from the burn. STEP 3 — Arrived 2 hours after the burn with no fluid, so 6 hours remain. STEP 4 — Rate: 7,800 ÷ 6 = 1,300 mL/hr.

❌ Why the other options are wrong:
• 975 mL/hr — 975 mL/hr is 7,800 ÷ 8 — it ignores the 2 hours lost.
• 2,600 mL/hr — 2,600 mL/hr is double.
• 650 mL/hr — 650 mL/hr is the rate for the second half over 12 hours.

⭐ Key point: A 60% burn is massive; very high fluid volumes are needed, through large-bore cannulas or a central line, with an arterial line and urinary catheter for monitoring.$x$, null),
(29, $x$500 mL of normal saline is running at 50 mL/hr. How long will it take to finish?$x$, $x$10 h$x$, $x$✅ Correct answer: 10 h
To find how long an infusion will last, use: TIME = VOLUME ÷ RATE. Here: 500 mL ÷ 50 mL/hr = 10 hours exactly. Check: 50 mL every hour × 10 hours = 500 mL. ✓ Knowing the finish time lets the nurse plan the next bag, check that the infusion is running as expected (if much more or less fluid has gone in than expected, the pump or line may be faulty), and record accurate fluid balance.

❌ Why the other options are wrong:
• 11 h — 11 hours is one hour too long (it would match a rate of about 45 mL/hr).
• 6 h — 6 hours would only be correct at about 83 mL/hr.
• 10 h 30 min — 10 h 30 min adds 30 minutes that are not there.

⭐ Key point: Write the start time and the expected finish time on the bag label, and check the volume remaining against the fluid chart each hour.$x$, null),
(30, $x$How many grams of glucose are in 50 mL of 10% dextrose?$x$, $x$5 g$x$, $x$✅ Correct answer: 5 g
A % (w/v) solution means GRAMS per 100 mL. 10% dextrose = 10 g in 100 mL. So 50 mL contains half of that: 10 ÷ 2 = 5 g of glucose. Check: 50 mL × (10 g ÷ 100 mL) = 5 g. ✓ This is useful in treating hypoglycaemia: e.g. 50 mL of 10% dextrose delivers 5 g glucose (and 50 mL of 50% dextrose delivers 25 g).

❌ Why the other options are wrong:
• 50 g — 50 g would be in 500 mL of 10% dextrose.
• 2.5 g — 2.5 g would be in 50 mL of 5% dextrose.
• 500 g — 500 g is a gross error.

⭐ Key point: For hypoglycaemia in adults, 10% dextrose (e.g. 150–200 mL) is preferred over 50% dextrose because it is less damaging to veins.$x$, null),
(31, $x$An infusion is being given via a microdrip set, where the drop factor is 60 gtt/mL, at a pump-set rate of 45 mL/hr. If the pump failed and this had to be run by gravity, what would the drop rate be in gtt/min?$x$, $x$45 gtt/min$x$, $x$✅ Correct answer: 45 gtt/min
A MICRODRIP (paediatric) set delivers 60 DROPS per mL. Formula: drops/min = (mL/hr × drop factor) ÷ 60 minutes = (45 × 60) ÷ 60 = 45 drops/min. With a 60-drop set, the drops per minute ALWAYS EQUAL the mL per hour — a handy shortcut.

❌ Why the other options are wrong:
• 75 gtt/min — 75 drops/min is a calculation error.
• 60 gtt/min — 60 drops/min is the drop factor, not the rate.
• 15 gtt/min — 15 drops/min would be the rate for a 20-drop set (45 ÷ 3).

⭐ Key point: Micro-drip sets are used for small, precise volumes (children, drug infusions) when a pump is not available.$x$, null),
(32, $x$Using the Parkland formula for a 65 kg patient with 35% TBSA burns, how much fluid should be given in the first 8 hours after the burn?$x$, $x$4,550 mL$x$, $x$✅ Correct answer: 4,550 mL
PARKLAND: Total 24-hour fluid = 4 × weight × %TBSA = 4 × 65 × 35 = 9,100 mL. HALF is given in the FIRST 8 HOURS from the time of the burn: 9,100 ÷ 2 = 4,550 mL. The other 4,550 mL is given over the next 16 hours.

❌ Why the other options are wrong:
• 9,100 mL — 9,100 mL is the whole 24-hour total.
• 2,275 mL — 2,275 mL is a quarter.
• 3,033.3 mL — 3,033.3 mL is a third.

⭐ Key point: Children also need maintenance fluid (with glucose) in addition to the Parkland volume.$x$, null),
(33, $x$Dopamine 400 mg is diluted to 250 mL and prescribed at 3 mcg/kg/min for a patient weighing 60 kg. At what rate (mL/hr) should the infusion pump be set?$x$, $x$6.8 mL/hr$x$, $x$✅ Correct answer: 6.8 mL/hr
STEP 1 — Concentration: 400 mg in 250 mL = 1.6 mg/mL = 1,600 mcg/mL. STEP 2 — Dose per hour: 3 mcg/kg/min × 60 kg × 60 = 10,800 mcg/hr. STEP 3 — Rate: 10,800 ÷ 1,600 = 6.75 ≈ 6.8 mL/hr.

❌ Why the other options are wrong:
• 1.1 mL/hr — 1.1 mL/hr is far too low.
• 13.5 mL/hr — 13.5 mL/hr is double.
• 0.1 mL/hr — 0.1 mL/hr is a units error.

⭐ Key point: Dopamine can cause tachyarrhythmias and tissue necrosis if it extravasates — use a central line where possible.$x$, null),
(34, $x$An adult has burns to the perineum, the whole left arm and the whole right leg. Using the Rule of Nines, what is the TBSA burned?$x$, $x$28%$x$, $x$✅ Correct answer: 28%
RULE OF NINES (adult): PERINEUM = 1%; each WHOLE ARM = 9%; each WHOLE LEG = 18%. Here: perineum 1% + whole left arm 9% + whole right leg 18% = 28% TBSA. A 28% burn in an adult is a MAJOR burn: start IV fluid resuscitation (Parkland), insert a urinary catheter to monitor urine output hourly, give strong analgesia, keep the patient warm, and refer to a burns unit. Perineal involvement adds a high infection risk.

❌ Why the other options are wrong:
• 32.5% — 32.5% adds an extra 4.5% (half an arm).
• 37% — 37% adds an extra 9%.
• 19% — 19% leaves out the arm.

⭐ Key point: Re-assess the burn size after the wounds have been cleaned — soot and dirt can make areas look burned when they are not, and blisters may hide deeper burns.$x$, null),
(35, $x$Over 24 hours a patient received 2,400 mL IV fluid and 300 mL orally. Output was urine 1,500 mL, nasogastric aspirate 400 mL and wound drain 0 mL. What is the 24-hour fluid balance?$x$, $x$+800 mL$x$, $x$✅ Correct answer: +800 mL
FLUID BALANCE = INPUT − OUTPUT. Input: IV 2,400 + oral 300 = 2,700 mL. Output: urine 1,500 + NG 400 + drain 0 = 1,900 mL. Balance: 2,700 − 1,900 = +800 mL.

❌ Why the other options are wrong:
• -800 mL — −800 mL reverses the sign.
• +1,200 mL — +1,200 mL forgets the NG losses (2,700 − 1,500).
• +4,600 mL — +4,600 mL adds input and output.

⭐ Key point: NG aspirate is rich in sodium, potassium, chloride and acid — large losses need replacement and can cause metabolic alkalosis.$x$, null),
(36, $x$A 70 kg patient with 50% TBSA burns requires fluid resuscitation. The Parkland formula calculates the 24-hour fluid as:$x$, $x$14,000 mL$x$, $x$✅ Correct answer: 14,000 mL
PARKLAND FORMULA: 24-hour fluid = 4 mL × weight (kg) × %TBSA = 4 × 70 × 50 = 14,000 mL (14 litres). Half (7,000 mL) is given in the first 8 hours after the burn, and the other half over the next 16 hours.

❌ Why the other options are wrong:
• 3,500 mL — 3,500 mL is a quarter.
• 28,000 mL — 28,000 mL is double (8 mL formula).
• 7,000 mL — 7,000 mL is only the first-8-hour half.

⭐ Key point: Over-resuscitation ("fluid creep") causes oedema, abdominal compartment syndrome and lung problems — titrate to urine output.$x$, null),
(37, $x$An 80 kg patient has passed 240 mL of urine in the last 3 hours. What is the urine output and how is it interpreted?$x$, $x$1 mL/kg/hr — adequate$x$, $x$✅ Correct answer: 1 mL/kg/hr — adequate
URINE OUTPUT (mL/kg/hr) = VOLUME ÷ HOURS ÷ WEIGHT. Here: 240 mL ÷ 3 hours = 80 mL/hr; 80 ÷ 80 kg = 1 mL/kg/hr. The minimum acceptable adult urine output is 0.5 mL/kg/hr, so 1 mL/kg/hr is ADEQUATE.

❌ Why the other options are wrong:
• 80 mL/kg/hr — adequate — 80 mL/kg/hr is a units error.
• 1 mL/kg/hr — oliguria — 1 mL/kg/hr is correct, but it is NOT oliguria.
• 3 mL/kg/hr — adequate — 3 mL/kg/hr is a calculation error.

⭐ Key point: Oliguria = less than 0.5 mL/kg/hr for 6 hours or more (KDIGO AKI criterion).$x$, null),
(38, $x$Ampicillin 30 mg/kg/day is prescribed in divided doses every 6 hours for an infant weighing 9 kg. How much is each dose?$x$, $x$67.5 mg$x$, $x$✅ Correct answer: 67.5 mg
STEP 1 — Daily dose: 30 mg/kg/day × 9 kg = 270 mg per day. STEP 2 — "Every 6 hours" means 4 doses in 24 hours (24 ÷ 6 = 4). STEP 3 — Each dose: 270 ÷ 4 = 67.5 mg. Check: 67.5 × 4 = 270. ✓ In infants, small arithmetic errors make large relative overdoses, so every paediatric calculation should be independently double-checked.

❌ Why the other options are wrong:
• 270 mg — 270 mg is the WHOLE day's dose — giving it every 6 hours would be four times too much.
• 7.5 mg — 7.5 mg is a calculation error — far too little to treat infection.
• 54 mg — 54 mg would be the dose if divided into 5 doses.

⭐ Key point: "mg/kg/DAY" = calculate the daily total, then divide by the number of doses. "mg/kg/DOSE" = multiply by weight only. Read the prescription carefully.$x$, null),
(39, $x$Aminophylline is ordered as a loading dose of 5 mg/kg over 30 minutes for a 60 kg patient, supplied as 250 mg in 100 mL. What volume should be given, and at what rate over the 30 minutes?$x$, $x$120 mL total, at a rate of 240 mL/hr$x$, $x$✅ Correct answer: 120 mL total, at a rate of 240 mL/hr
STEP 1 — Dose: 5 mg/kg × 60 kg = 300 mg. STEP 2 — Concentration: 250 mg in 100 mL = 2.5 mg/mL. STEP 3 — Volume: 300 ÷ 2.5 = 120 mL. STEP 4 — Rate over 30 minutes: 120 mL ÷ 0.5 hr = 240 mL/hr.

❌ Why the other options are wrong:
• 60 mL total, at a rate of 120 mL/hr — 60 mL is only 150 mg.
• 300 mL total, at a rate of 600 mL/hr — 300 mL is the dose in mg confused with mL.
• 120 mL total, at a rate of 60 mL/hr — 120 mL at 60 mL/hr would take 2 hours, not 30 minutes.

⭐ Key point: Aminophylline has a narrow therapeutic range — monitor for nausea, arrhythmias and seizures, and omit the loading dose if the patient already takes theophylline.$x$, null),
(40, $x$An adult has burns to the whole left leg, the whole right arm, the front of the trunk (chest and abdomen) and the perineum. Using the Rule of Nines, what is the TBSA burned?$x$, $x$46%$x$, $x$✅ Correct answer: 46%
RULE OF NINES (adult): WHOLE LEFT LEG = 18%; WHOLE RIGHT ARM = 9%; FRONT of the TRUNK (chest and abdomen) = 18%; PERINEUM = 1%. Total: 18 + 9 + 18 + 1 = 46% TBSA. A burn of nearly half the body surface is life-threatening: massive fluid shifts, shock, hypothermia, infection and a very high metabolic rate. These patients need ICU or burns-unit care, large-bore IV access, high-volume Parkland resuscitation, airway assessment, and early nutrition.

❌ Why the other options are wrong:
• 37% — 37% misses 9% (e.g. the arm).
• 55% — 55% adds an extra 9%.
• 50.5% — 50.5% adds an extra 4.5%.

⭐ Key point: Mortality rises with burn size, age and inhalation injury. Circumferential chest burns can restrict breathing and may need escharotomy.$x$, null),
(41, $x$Dobutamine 250 mg is diluted to 250 mL and prescribed at 2.5 mcg/kg/min for a patient weighing 60 kg. At what rate (mL/hr) should the infusion pump be set?$x$, $x$9 mL/hr$x$, $x$✅ Correct answer: 9 mL/hr
STEP 1 — Concentration: 250 mg in 250 mL = 1 mg/mL = 1,000 mcg/mL. STEP 2 — Dose per hour: 2.5 mcg/kg/min × 60 kg × 60 = 9,000 mcg/hr. STEP 3 — Rate: 9,000 ÷ 1,000 = 9 mL/hr.

❌ Why the other options are wrong:
• 1.5 mL/hr — 1.5 mL/hr is far too low.
• 0.1 mL/hr — 0.1 mL/hr is a units error.
• 18 mL/hr — 18 mL/hr is double.

⭐ Key point: Shortcut for 1 mg/mL: mL/hr = mcg/kg/min × weight × 0.06 (2.5 × 60 × 0.06 = 9).$x$, null),
(42, $x$Glyceryl trinitrate (GTN) 50 mg in 500 mL is ordered at 8 mcg/min. What pump rate (mL/hr) will deliver this dose?$x$, $x$4.8 mL/hr$x$, $x$✅ Correct answer: 4.8 mL/hr
GTN is prescribed in MICROGRAMS per MINUTE, but pumps run in mL per HOUR. STEP 1 — Concentration: 50 mg in 500 mL = 0.1 mg/mL = 100 micrograms/mL. STEP 2 — Dose per HOUR: 8 micrograms/min × 60 = 480 micrograms/hr. STEP 3 — Rate: 480 ÷ 100 = 4.8 mL/hr. Check: 4.8 mL/hr × 100 = 480 mcg/hr ÷ 60 = 8 mcg/min. ✓

❌ Why the other options are wrong:
• 0.1 mL/hr — 0.1 mL/hr is the CONCENTRATION (mg/mL), not a rate.
• 2.4 mL/hr — 2.4 mL/hr gives only 4 mcg/min — half the dose.
• 9.6 mL/hr — 9.6 mL/hr gives 16 mcg/min — double the dose, risking hypotension.

⭐ Key point: Shortcut for a 100 mcg/mL bag: mL/hr = mcg/min × 0.6. Monitor BP every 5–15 minutes while titrating GTN.$x$, null),
(43, $x$750 mL of normal saline is running at 125 mL/hr. How long will it take to finish?$x$, $x$6 h$x$, $x$✅ Correct answer: 6 h
TIME = VOLUME ÷ RATE. Here: 750 mL ÷ 125 mL/hr = 6 hours exactly. Check: 125 × 6 = 750. ✓ The nurse can use this to plan when to prepare the next bag and to check that the correct amount has been given at each hour.

❌ Why the other options are wrong:
• 10 h — 10 hours would be at 75 mL/hr.
• 6 h 30 min — 6 h 30 min adds 30 minutes that are not there.
• 7 h — 7 hours would be at about 107 mL/hr.

⭐ Key point: Common error: confusing the RATE (mL/hr) with the TIME. Always write the units next to each number.$x$, null),
(44, $x$Propofol (10 mg/mL) is ordered at 30 mcg/kg/min for an 80 kg patient. What infusion rate in mL/hr should be programmed?$x$, $x$14.4 mL/hr$x$, $x$✅ Correct answer: 14.4 mL/hr
Propofol 1% = 10 mg/mL. STEP 1 — Dose per hour: 30 mcg/kg/min × 80 kg × 60 = 144,000 mcg/hr = 144 mg/hr. STEP 2 — Rate: 144 mg/hr ÷ 10 mg/mL = 14.4 mL/hr. (Equivalent to 1.8 mg/kg/hr.)

❌ Why the other options are wrong:
• 24 mL/hr — 24 mL/hr would be 50 mcg/kg/min.
• 7.2 mL/hr — 7.2 mL/hr is half the dose.
• 28.8 mL/hr — 28.8 mL/hr is double.

⭐ Key point: Propofol provides about 1.1 kcal/mL (fat) — count it in nutrition. Watch for hypotension, and for propofol infusion syndrome at high doses for long periods. Change the infusion set every 12 hours (lipid supports bacterial growth).$x$, null),
(45, $x$A 50 kg man with 40% TBSA burns arrives 4 hours after the injury and has had no IV fluid. Using the Parkland formula, at what rate should the first half of the fluid run?$x$, $x$1,000 mL/hr$x$, $x$✅ Correct answer: 1,000 mL/hr
STEP 1 — Total (Parkland): 4 × 50 × 40 = 8,000 mL. STEP 2 — First half: 4,000 mL in the first 8 hours from the burn. STEP 3 — Arrived 4 hours after the burn with no fluid, so 4 hours remain. STEP 4 — Rate: 4,000 ÷ 4 = 1,000 mL/hr.

❌ Why the other options are wrong:
• 333.3 mL/hr — 333.3 mL/hr is the second-half rate (4,000 ÷ 12).
• 500 mL/hr — 500 mL/hr is 4,000 ÷ 8 — ignores the 4 hours lost.
• 2,000 mL/hr — 2,000 mL/hr is double.

⭐ Key point: Delayed resuscitation increases the risk of kidney injury and shock; start fluids as soon as possible after a major burn.$x$, null),
(46, $x$A 50 kg patient has passed 200 mL of urine in the last 3 hours. What is the urine output and how is it interpreted?$x$, $x$1.33 mL/kg/hr — adequate$x$, $x$✅ Correct answer: 1.33 mL/kg/hr — adequate
URINE OUTPUT = VOLUME ÷ HOURS ÷ WEIGHT = 200 mL ÷ 3 hr ÷ 50 kg = 66.7 mL/hr ÷ 50 = 1.33 mL/kg/hr. This is above the minimum of 0.5 mL/kg/hr, so it is ADEQUATE.

❌ Why the other options are wrong:
• 4 mL/kg/hr — adequate — 4 mL/kg/hr is a calculation error.
• 1.33 mL/kg/hr — oliguria — 1.33 is correct, but it is NOT oliguria.
• 66.7 mL/kg/hr — adequate — 66.7 mL/kg/hr confuses mL/hr with mL/kg/hr.

⭐ Key point: In burns, the target is 0.5–1 mL/kg/hr (adults); higher output may mean over-resuscitation.$x$, null),
(47, $x$A 60 kg man with 20% TBSA burns arrives 1 hour after the injury and has had no IV fluid. Using the Parkland formula, at what rate should the first half of the fluid run?$x$, $x$342.9 mL/hr$x$, $x$✅ Correct answer: 342.9 mL/hr
STEP 1 — Total (Parkland): 4 × 60 × 20 = 4,800 mL. STEP 2 — First half: 2,400 mL in the first 8 hours. STEP 3 — Arrived 1 hour after the burn, so 7 hours remain. STEP 4 — Rate: 2,400 ÷ 7 = 342.9 mL/hr.

❌ Why the other options are wrong:
• 685.7 mL/hr — 685.7 mL/hr is double.
• 300 mL/hr — 300 mL/hr is 2,400 ÷ 8 — ignores the lost hour.
• 200 mL/hr — 200 mL/hr is the 24-hour average.

⭐ Key point: In adults, formal fluid resuscitation is usually needed for burns above 15–20% TBSA.$x$, null),
(48, $x$Hydrocortisone (reconstituted) is available as 100 mg in 2 mL. The prescription is 50 mg. What volume should be given?$x$, $x$1 mL$x$, $x$✅ Correct answer: 1 mL
VOLUME = (DOSE WANTED ÷ DOSE IN STOCK) × STOCK VOLUME. Here: (50 mg ÷ 100 mg) × 2 mL = 0.5 × 2 = 1 mL. Check: 100 mg is in 2 mL, so 50 mg (half) is in 1 mL (half). ✓ HYDROCORTISONE is used in ICU for refractory septic shock (e.g. 50 mg every 6 hours), adrenal crisis (100 mg IV immediately), and as stress-dose cover in patients on long-term steroids.

❌ Why the other options are wrong:
• 0.5 mL — 0.5 mL would give only 25 mg.
• 2 mL — 2 mL would give 100 mg — double the dose.
• 4 mL — 4 mL is the formula upside down (stock ÷ wanted).

⭐ Key point: Monitor blood glucose during hydrocortisone therapy (it raises glucose) and watch for infection.$x$, null),
(49, $x$Dobutamine is mixed as 250 mg in 250 mL D5W and prescribed at 5 mcg/kg/min for an 80 kg patient. What infusion rate in mL/hr should be set?$x$, $x$24 mL/hr$x$, $x$✅ Correct answer: 24 mL/hr
STEP 1 — Concentration: 250 mg in 250 mL = 1 mg/mL = 1,000 micrograms/mL. STEP 2 — Dose per hour: 5 mcg/kg/min × 80 kg × 60 min = 24,000 micrograms/hr. STEP 3 — Rate: 24,000 ÷ 1,000 = 24 mL/hr. Check: 24 × 1,000 = 24,000 ÷ 60 = 400 mcg/min ÷ 80 = 5 mcg/kg/min. ✓

❌ Why the other options are wrong:
• 12 mL/hr — 12 mL/hr gives 2.5 mcg/kg/min — half.
• 48 mL/hr — 48 mL/hr gives 10 mcg/kg/min — double.
• 20 mL/hr — 20 mL/hr gives about 4.2 mcg/kg/min.

⭐ Key point: With a 1 mg/mL solution: mL/hr = mcg/kg/min × weight × 0.06 (5 × 80 × 0.06 = 24). Watch for tachycardia and arrhythmias on dobutamine.$x$, null),
(50, $x$Noradrenaline 8 mg in 250 mL is ordered at 5 mcg/min. What pump rate (mL/hr) will deliver this dose?$x$, $x$9.4 mL/hr$x$, $x$✅ Correct answer: 9.4 mL/hr
STEP 1 — Concentration: 8 mg in 250 mL = 0.032 mg/mL = 32 micrograms/mL. STEP 2 — Dose per hour: 5 mcg/min × 60 = 300 micrograms/hr. STEP 3 — Rate: 300 ÷ 32 = 9.375 ≈ 9.4 mL/hr. Check: 9.4 × 32 = 300.8 mcg/hr ÷ 60 ≈ 5 mcg/min. ✓

❌ Why the other options are wrong:
• 0.2 mL/hr — 0.2 mL/hr is a units error.
• 4.7 mL/hr — 4.7 mL/hr is half the dose.
• 18.8 mL/hr — 18.8 mL/hr is double the dose.

⭐ Key point: Noradrenaline should run through a dedicated central line lumen; never flush that lumen, as it would give a bolus.$x$, null),
(51, $x$Digoxin loading (digitalizing) dose is calculated as 10 mcg/kg for a 68 kg patient, with 50% given as the first dose and the remainder split into two further doses. What is the total loading dose, and what is the first dose given?$x$, $x$Total 680 mcg; first dose 340 mcg$x$, $x$✅ Correct answer: Total 680 mcg; first dose 340 mcg
STEP 1 — Total loading dose: 10 mcg/kg × 68 kg = 680 micrograms. STEP 2 — First dose = 50% of the total: 680 × 0.5 = 340 micrograms. The remaining 340 micrograms is split into two doses of 170 micrograms, usually given 6–8 hours apart.

❌ Why the other options are wrong:
• Total 340 mcg; first dose 170 mcg — Total 340 is half the correct total.
• Total 680 mcg; first dose 680 mcg — A first dose of 680 gives the whole load at once.
• Total 680 mcg; first dose 170 mcg — A first dose of 170 is only a quarter.

⭐ Key point: Check potassium, kidney function and the ECG before digoxin; hypokalaemia increases toxicity.$x$, null),
(52, $x$Ceftriaxone (reconstituted) is available as 1,000 mg in 10 mL. The prescription is 250 mg. What volume should be given?$x$, $x$2.5 mL$x$, $x$✅ Correct answer: 2.5 mL
VOLUME = (DOSE WANTED ÷ DOSE IN STOCK) × STOCK VOLUME. Here: (250 mg ÷ 1,000 mg) × 10 mL = 0.25 × 10 = 2.5 mL. Check: 1,000 mg in 10 mL = 100 mg/mL; 250 ÷ 100 = 2.5 mL. ✓ Since 250 mg is a quarter of the vial, the volume is a quarter of 10 mL.

❌ Why the other options are wrong:
• 0.2 mL — 0.2 mL would give only 20 mg.
• 5 mL — 5 mL would give 500 mg — double.
• 40 mL — 40 mL is the formula upside down.

⭐ Key point: Ceftriaxone must NOT be mixed with, or given at the same time through the same line as, calcium-containing solutions (e.g. Hartmann's) — especially in newborns, where fatal precipitates have occurred.$x$, null),
(53, $x$A 12 kg child in shock is prescribed a 20 mL/kg bolus of normal saline. What volume should be given?$x$, $x$240 mL$x$, $x$✅ Correct answer: 240 mL
Fluid boluses in children: VOLUME = mL/kg × WEIGHT. Here: 20 mL/kg × 12 kg = 240 mL of 0.9% saline. Check: 20 × 12 = 240. ✓ Give it rapidly, then REASSESS heart rate, capillary refill, BP, conscious level and urine output, and look for signs of fluid overload (crackles, enlarged liver, raised JVP) before giving more.

❌ Why the other options are wrong:
• 360 mL — 360 mL is 30 mL/kg — more than prescribed.
• 480 mL — 480 mL is 40 mL/kg — double.
• 120 mL — 120 mL is only 10 mL/kg — half.

⭐ Key point: If shock persists after 40–60 mL/kg of fluid, start inotropes/vasopressors and involve paediatric intensive care.$x$, null),
(54, $x$An oxygen cylinder contains 1,360 litres of oxygen. The patient needs 5 L/min during transfer. Approximately how long will it last?$x$, $x$About 272 minutes$x$, $x$✅ Correct answer: About 272 minutes
CYLINDER DURATION: TIME = AMOUNT OF OXYGEN ÷ FLOW RATE. Here: 1,360 L ÷ 5 L/min = 272 minutes (about 4 hours 32 minutes). Check: 5 × 272 = 1,360. ✓ In practice, keep a safety margin — do not plan to empty the cylinder completely — and remember that transfers can be delayed.

❌ Why the other options are wrong:
• About 113 minutes — 113 minutes would be at 12 L/min.
• About 45 minutes — 45 minutes would be at about 30 L/min.
• About 544 minutes — 544 minutes would be at 2.5 L/min.

⭐ Key point: Always check the cylinder contents before a transfer and carry a spare. Ventilators driven by oxygen use extra gas.$x$, null),
(55, $x$A head-injured patient has BP 100/55 mmHg and ICP 10 mmHg. What is the cerebral perfusion pressure (CPP)?$x$, $x$60 mmHg$x$, $x$✅ Correct answer: 60 mmHg
STEP 1 — MAP = (100 + 2 × 55) ÷ 3 = 210 ÷ 3 = 70 mmHg. STEP 2 — CPP = MAP − ICP = 70 − 10 = 60 mmHg. This is at the LOWER limit of the usual target (60–70 mmHg) — the BP is low, so raising MAP (fluids, vasopressors) may be needed.

❌ Why the other options are wrong:
• 90 mmHg — 90 mmHg is systolic minus ICP.
• 80 mmHg — 80 mmHg is a calculation error.
• 45 mmHg — 45 mmHg is diastolic minus ICP.

⭐ Key point: Avoid hypotension in brain injury — even one episode of systolic BP below 90 mmHg worsens outcome.$x$, null),
(56, $x$Soluble insulin 100 units is made up to 100 mL with normal saline. The order is 6 units/hour. What rate should be set?$x$, $x$6 mL/hr$x$, $x$✅ Correct answer: 6 mL/hr
STEP 1 — Concentration: 100 units in 100 mL = 1 unit per mL. STEP 2 — Rate: 6 units/hr ÷ 1 unit/mL = 6 mL/hr. With this standard "1 unit per mL" dilution, the pump rate (mL/hr) always equals the dose (units/hr), which reduces calculation errors.

❌ Why the other options are wrong:
• 12 mL/hr — 12 mL/hr gives double the dose — risk of hypoglycaemia.
• 3 mL/hr — 3 mL/hr gives half.
• 24 mL/hr — 24 mL/hr gives four times the dose — dangerous hypoglycaemia.

⭐ Key point: Check blood glucose hourly during insulin infusions, and monitor potassium — insulin moves potassium into cells.$x$, null),
(57, $x$What is the 24-hour maintenance fluid requirement for a child weighing 28 kg (Holliday–Segar method)?$x$, $x$1,660 mL$x$, $x$✅ Correct answer: 1,660 mL
HOLLIDAY–SEGAR (24-hour): first 10 kg × 100 mL = 1,000 mL; next 10 kg × 50 mL = 500 mL; remaining 8 kg × 20 mL = 160 mL. Total: 1,000 + 500 + 160 = 1,660 mL/day.

❌ Why the other options are wrong:
• 2,800 mL — 2,800 mL is 100 mL/kg for all 28 kg.
• 1,400 mL — 1,400 mL is 50 mL/kg for all.
• 1,860 mL — 1,860 mL miscalculates the last part.

⭐ Key point: Equivalent hourly rate by the 4-2-1 rule: 40 + 20 + 8 = 68 mL/hr.$x$, null),
(58, $x$A patient's blood pressure is 176/56 mmHg. What is the mean arterial pressure (MAP)?$x$, $x$96 mmHg$x$, $x$✅ Correct answer: 96 mmHg
MAP = (176 + 2 × 56) ÷ 3 = (176 + 112) ÷ 3 = 288 ÷ 3 = 96 mmHg. Note the wide pulse pressure (176 − 56 = 120), seen in aortic regurgitation, stiff arteries in the elderly, or sepsis.

❌ Why the other options are wrong:
• 136 mmHg — 136 mmHg is too high.
• 116 mmHg — 116 mmHg is the simple average.
• 120 mmHg — 120 mmHg is the pulse pressure.

⭐ Key point: A very low diastolic pressure can reduce coronary perfusion even if MAP looks acceptable.$x$, null),
(59, $x$Arterial blood gas for a patient on high-dose furosemide with a low potassium pH 7.50, PaCO2 54 mmHg, HCO3⁻ 38 mmol/L. What is the correct interpretation?$x$, $x$Partially compensated metabolic alkalosis$x$, $x$✅ Correct answer: Partially compensated metabolic alkalosis
STEP 1 — pH 7.50: ALKALOSIS. STEP 2 — HCO3⁻ 38 is HIGH: METABOLIC ALKALOSIS (furosemide causes loss of H⁺, Cl⁻ and K⁺, plus volume contraction). STEP 3 — PaCO2 54 is HIGH: the lungs are compensating by retaining CO2, but the pH is still high. Answer: PARTIALLY COMPENSATED METABOLIC ALKALOSIS.

❌ Why the other options are wrong:
• Uncompensated metabolic acidosis — Metabolic acidosis would have a LOW pH and LOW HCO3⁻.
• Mixed respiratory and metabolic acidosis — Mixed acidosis would have a LOW pH.
• Uncompensated metabolic alkalosis — Uncompensated would have a NORMAL PaCO2.

⭐ Key point: Replace potassium and chloride; consider acetazolamide in persistent diuretic-induced alkalosis.$x$, null),
(60, $x$Arterial blood gas for a patient who has been at high altitude for several days pH 7.48, PaCO2 26 mmHg, HCO3⁻ 17 mmol/L. What is the correct interpretation?$x$, $x$Partially compensated respiratory alkalosis$x$, $x$✅ Correct answer: Partially compensated respiratory alkalosis
At HIGH ALTITUDE, low oxygen makes people breathe faster, blowing off CO2: RESPIRATORY ALKALOSIS. After SEVERAL DAYS, the kidneys excrete bicarbonate to compensate. STEP 1 — pH 7.48: ALKALOSIS. STEP 2 — PaCO2 26 LOW: RESPIRATORY. STEP 3 — HCO3⁻ 17 LOW: kidneys compensating, but pH still above 7.45. Answer: PARTIALLY COMPENSATED RESPIRATORY ALKALOSIS.

❌ Why the other options are wrong:
• Fully compensated respiratory acidosis — Respiratory acidosis needs a HIGH PaCO2.
• Uncompensated metabolic alkalosis — Metabolic alkalosis needs a HIGH HCO3⁻.
• Uncompensated respiratory alkalosis — Uncompensated would have a normal HCO3⁻.

⭐ Key point: Acetazolamide speeds up this renal compensation and is used to prevent altitude sickness.$x$, null),
(61, $x$Which acid–base disturbance is most likely to result from the following? Over-ventilation on a mechanical ventilator.$x$, $x$Respiratory alkalosis$x$, $x$✅ Correct answer: Respiratory alkalosis
A mechanical ventilator controls how much CO2 is removed through MINUTE VENTILATION (rate × tidal volume). OVER-VENTILATION — rate or tidal volume set too high — removes TOO MUCH CO2, so the PaCO2 FALLS and the pH RISES: RESPIRATORY ALKALOSIS. Effects include cerebral vasoconstriction (less blood flow to the brain), low potassium, low ionised calcium (tingling, spasm), and arrhythmias.

❌ Why the other options are wrong:
• Respiratory acidosis — Respiratory acidosis results from UNDER-ventilation (CO2 builds up).
• Metabolic acidosis — Metabolic acidosis is caused by acid gain or bicarbonate loss, not ventilator settings.
• Metabolic alkalosis — Metabolic alkalosis is caused by acid loss (vomiting, NG suction) or bicarbonate gain.

⭐ Key point: Correct by reducing the rate or tidal volume, and check whether the patient is triggering extra breaths because of pain, anxiety or fever.$x$, null),
(62, $x$Arterial blood gas for a patient with septic shock who is now exhausted and hypoventilating pH 7.10, PaCO2 56 mmHg, HCO3⁻ 14 mmol/L. What is the correct interpretation?$x$, $x$Mixed respiratory and metabolic acidosis$x$, $x$✅ Correct answer: Mixed respiratory and metabolic acidosis
STEP 1 — pH 7.10: severe ACIDOSIS. STEP 2 — HCO3⁻ 14 LOW (METABOLIC acidosis — lactic acid from septic shock) AND PaCO2 56 HIGH (RESPIRATORY acidosis — exhausted, hypoventilating). Both push the pH DOWN. Answer: MIXED RESPIRATORY AND METABOLIC ACIDOSIS. (Winter's: expected PaCO2 = 1.5 × 14 + 8 = 29 ± 2; actual 56 is far higher.)

❌ Why the other options are wrong:
• Partially compensated metabolic acidosis — Partial compensation would need a LOW PaCO2.
• Uncompensated respiratory alkalosis — Respiratory alkalosis has a high pH.
• Uncompensated metabolic alkalosis — Metabolic alkalosis has a high pH.

⭐ Key point: This patient is tiring and needs urgent ventilatory support (intubation) along with sepsis treatment.$x$, null),
(63, $x$Which condition can cause a high anion gap metabolic acidosis?$x$, $x$Lactic acidosis$x$, $x$✅ Correct answer: Lactic acidosis
LACTIC ACIDOSIS occurs when tissues lack oxygen (shock, sepsis, cardiac arrest, seizures, severe anaemia) and switch to ANAEROBIC metabolism, producing LACTIC ACID. Lactate is an "UNMEASURED ANION": it uses up bicarbonate without raising chloride, so the ANION GAP RISES — a HIGH ANION GAP METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Hyperchloremic acidosis — Hyperchloraemic acidosis has a NORMAL anion gap (chloride rises to replace lost bicarbonate).
• Renal tubular acidosis — Renal tubular acidosis causes a NORMAL anion gap acidosis.
• Vomiting — Vomiting causes metabolic ALKALOSIS.

⭐ Key point: Lactate above 2 mmol/L is abnormal; above 4 mmol/L indicates severe hypoperfusion. Falling lactate shows successful resuscitation.$x$, null),
(64, $x$A patient's arterial blood gas shows a metabolic acidosis with a raised anion gap in the setting of acute kidney injury. This is best explained by:$x$, $x$Accumulation of unmeasured acids (e.g. sulfates, phosphates) that the failing kidneys cannot excrete$x$, $x$✅ Correct answer: Accumulation of unmeasured acids (e.g. sulfates, phosphates) that the failing kidneys cannot excrete
In ACUTE KIDNEY INJURY, the kidneys cannot excrete daily acids (sulfates, phosphates, urate and other organic acids) or regenerate bicarbonate. These UNMEASURED ACIDS ACCUMULATE, causing a HIGH ANION GAP METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• No relationship between AKI and acid-base status — AKI clearly affects acid-base status.
• Loss of bicarbonate through the kidneys alone with no other cause — Bicarbonate loss alone would give a normal anion gap.
• Excess bicarbonate production — AKI reduces, not increases, bicarbonate production.

⭐ Key point: Severe acidosis (e.g. pH below 7.15) not responding to treatment is an indication for dialysis.$x$, null),
(65, $x$Arterial blood gas for a patient on continuous nasogastric suction for 3 days pH 7.53, PaCO2 37 mmHg, HCO3⁻ 38 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic alkalosis$x$, $x$✅ Correct answer: Uncompensated metabolic alkalosis
STEP 1 — pH 7.53: ALKALOSIS. STEP 2 — HCO3⁻ 38 HIGH: METABOLIC (NG suction removing acid). STEP 3 — PaCO2 37 NORMAL: no compensation. Answer: UNCOMPENSATED METABOLIC ALKALOSIS.

❌ Why the other options are wrong:
• Fully compensated metabolic acidosis — Fully compensated metabolic acidosis would have a normal pH and low HCO3⁻.
• Partially compensated metabolic alkalosis — Partial compensation would need a HIGH PaCO2.
• Partially compensated metabolic acidosis — Metabolic acidosis would have a low pH.

⭐ Key point: Replace NG losses with saline and potassium; consider a PPI to reduce acid loss.$x$, null),
(66, $x$Arterial blood gas for a patient with acute severe asthma who is now tiring with a quiet chest pH 7.31, PaCO2 65 mmHg, HCO3⁻ 26 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory acidosis$x$, $x$✅ Correct answer: Uncompensated respiratory acidosis
STEP 1 — pH 7.31: ACIDOSIS. STEP 2 — PaCO2 65 HIGH: RESPIRATORY (tiring asthmatic, not breathing enough). STEP 3 — HCO3⁻ 26 NORMAL: no renal compensation yet (acute). Answer: UNCOMPENSATED (ACUTE) RESPIRATORY ACIDOSIS. In asthma, a RISING CO2 and a QUIET CHEST are signs of life-threatening exhaustion.

❌ Why the other options are wrong:
• Uncompensated metabolic alkalosis — Metabolic alkalosis has a high pH.
• Partially compensated respiratory acidosis — Partial compensation would need a HIGH HCO3⁻.
• Partially compensated metabolic acidosis — Metabolic acidosis needs a LOW HCO3⁻.

⭐ Key point: Call ICU urgently — this patient may need intubation.$x$, null),
(67, $x$Arterial blood gas for a patient admitted minutes ago after a prolonged seizure pH 7.26, PaCO2 40 mmHg, HCO3⁻ 18 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic acidosis$x$, $x$✅ Correct answer: Uncompensated metabolic acidosis
STEP 1 — pH 7.26: ACIDOSIS. STEP 2 — HCO3⁻ 18 is LOW: a METABOLIC cause. During a prolonged seizure, the muscles work intensely and produce LACTIC ACID. STEP 3 — PaCO2 40 is NORMAL: the lungs have NOT yet compensated (by breathing faster). Answer: UNCOMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Fully compensated respiratory acidosis — Fully compensated respiratory acidosis would need a HIGH PaCO2 and HIGH HCO3⁻ with a normal pH.
• Uncompensated respiratory acidosis — Uncompensated respiratory acidosis needs a HIGH PaCO2.
• Fully compensated metabolic acidosis — FULLY compensated metabolic acidosis would have a normal pH with a LOW PaCO2.

⭐ Key point: Post-seizure lactic acidosis usually clears within 1–2 hours once the seizure stops — bicarbonate is not needed. Focus on airway, breathing, glucose and stopping seizures.$x$, null),
(68, $x$Arterial blood gas for a patient admitted minutes ago after a prolonged seizure pH 7.24, PaCO2 41 mmHg, HCO3⁻ 13 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic acidosis$x$, $x$✅ Correct answer: Uncompensated metabolic acidosis
STEP 1 — pH 7.24: ACIDOSIS. STEP 2 — HCO3⁻ 13 is LOW: METABOLIC (lactic acid from the seizure). STEP 3 — PaCO2 41 is NORMAL: no respiratory compensation yet. Answer: UNCOMPENSATED METABOLIC ACIDOSIS. (Winter's formula would expect a PaCO2 of 1.5 × 13 + 8 = 27.5 ± 2; the patient is not yet compensating, perhaps because they are post-ictal and breathing slowly.)

❌ Why the other options are wrong:
• Fully compensated metabolic acidosis — FULLY compensated would have a normal pH and low PaCO2.
• Partially compensated metabolic alkalosis — Metabolic alkalosis has a high pH and high HCO3⁻.
• Fully compensated respiratory acidosis — Respiratory acidosis needs a high PaCO2 as the primary change.

⭐ Key point: Post-ictal patients may hypoventilate — keep the airway clear (recovery position, suction) and give oxygen.$x$, null),
(69, $x$A patient with metabolic acidosis has HCO3⁻ 10 mmol/L and PaCO2 31 mmHg. Using Winter's formula, what does this show?$x$, $x$PaCO2 is higher than expected — an added respiratory acidosis$x$, $x$✅ Correct answer: PaCO2 is higher than expected — an added respiratory acidosis
WINTER'S FORMULA: expected PaCO2 = (1.5 × HCO3⁻) + 8 ± 2 = (1.5 × 10) + 8 = 23 ± 2 = 21–25 mmHg. The ACTUAL PaCO2 is 31 mmHg — HIGHER than expected. The lungs are not blowing off enough CO2, so there is an ADDED RESPIRATORY ACIDOSIS (e.g. fatigue, sedation, chest problem).

❌ Why the other options are wrong:
• Appropriate respiratory compensation — a pure metabolic acidosis — Appropriate compensation would be 21–25.
• PaCO2 is lower than expected — an added respiratory alkalosis — A lower PaCO2 (below 21) would indicate an added respiratory alkalosis.
• The kidneys are compensating for a respiratory acidosis — The kidneys compensate for respiratory problems, not the reverse here.

⭐ Key point: An inadequately compensating patient with metabolic acidosis may be tiring and need ventilatory support.$x$, null),
(70, $x$Arterial blood gas for a patient with septic shock who is now exhausted and hypoventilating pH 7.07, PaCO2 68 mmHg, HCO3⁻ 14 mmol/L. What is the correct interpretation?$x$, $x$Mixed respiratory and metabolic acidosis$x$, $x$✅ Correct answer: Mixed respiratory and metabolic acidosis
STEP 1 — pH 7.07: severe ACIDOSIS. STEP 2 — HCO3⁻ 14 LOW (METABOLIC — lactic acidosis) and PaCO2 68 HIGH (RESPIRATORY — exhaustion, hypoventilation). Both lower the pH. Answer: MIXED RESPIRATORY AND METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Partially compensated metabolic alkalosis — Metabolic alkalosis has a high pH.
• Uncompensated respiratory acidosis — Uncompensated respiratory acidosis would have a normal HCO3⁻.
• Uncompensated metabolic acidosis — Uncompensated metabolic acidosis would have a normal PaCO2.

⭐ Key point: Mixed acidosis causes very low pH quickly and is life-threatening — urgent airway and ventilatory support, plus treatment of shock.$x$, null),
(71, $x$For a patient with an acute COPD exacerbation presenting with respiratory acidosis (pH 7.30, PaCO2 60 mmHg) but still conscious and able to protect the airway, which intervention is generally tried before invasive intubation?$x$, $x$Non-invasive positive pressure ventilation (e.g., BiPAP)$x$, $x$✅ Correct answer: Non-invasive positive pressure ventilation (e.g., BiPAP)
This COPD patient has ACUTE HYPERCAPNIC (type 2) respiratory failure — pH 7.30 (acidaemia) with PaCO2 60 mmHg — but is still CONSCIOUS and able to PROTECT THE AIRWAY. This is the classic indication for NON-INVASIVE VENTILATION (NIV/BiPAP) via a tight-fitting face mask. BiPAP gives a higher pressure during inspiration (IPAP), which helps the tired breathing muscles take bigger breaths and blow off CO2, and a lower pressure during expiration (EPAP), which keeps small airways open. Trials show NIV in COPD exacerbations REDUCES the need for intubation, ICU stay and death. Reassess with an ABG after 1–2 hours: if pH and PaCO2 are not improving, intubation should be considered.

❌ Why the other options are wrong:
• High-dose intravenous sedation to reduce work of breathing — High-dose sedation would depress breathing further, worsen CO2 retention and could cause respiratory arrest.
• Immediate elective tracheostomy — Tracheostomy is a long-term airway for prolonged ventilation, not an emergency first step in an alert patient.
• Therapeutic bronchoalveolar lavage — Bronchoalveolar lavage is a diagnostic/therapeutic bronchoscopy procedure, not treatment for hypercapnic failure.

⭐ Key point: Contraindications to NIV: respiratory arrest, unable to protect the airway, vomiting, facial trauma, untreated pneumothorax, severe haemodynamic instability, and copious secretions.$x$, null),
(72, $x$Arterial blood gas for a patient with liver cirrhosis who has been tachypnoeic for days pH 7.47, PaCO2 29 mmHg, HCO3⁻ 19 mmol/L. What is the correct interpretation?$x$, $x$Partially compensated respiratory alkalosis$x$, $x$✅ Correct answer: Partially compensated respiratory alkalosis
STEP 1 — pH 7.47: ALKALOSIS. STEP 2 — PaCO2 29 mmHg is LOW: the cause is RESPIRATORY (the patient is breathing fast — in liver cirrhosis, toxins such as ammonia and hormonal changes stimulate the breathing centre, causing chronic hyperventilation). STEP 3 — HCO3⁻ 19 mmol/L is LOW: the kidneys have started compensating by excreting bicarbonate over the past days, but the pH is still above 7.45. Answer: PARTIALLY COMPENSATED RESPIRATORY ALKALOSIS.

❌ Why the other options are wrong:
• Uncompensated respiratory alkalosis — UNCOMPENSATED would have a NORMAL HCO3⁻ (22–26).
• Mixed respiratory and metabolic acidosis — Mixed acidosis would have a LOW pH.
• Partially compensated metabolic acidosis — Metabolic acidosis would have a LOW pH as the primary disturbance.

⭐ Key point: Respiratory alkalosis is common in liver disease, pregnancy, sepsis (early), anxiety, pulmonary embolism and salicylate poisoning.$x$, null),
(73, $x$Arterial blood gas for a patient with chronic kidney disease on the renal ward pH 7.36, PaCO2 27 mmHg, HCO3⁻ 16 mmol/L. What is the correct interpretation?$x$, $x$Fully compensated metabolic acidosis$x$, $x$✅ Correct answer: Fully compensated metabolic acidosis
STEP 1 — pH 7.36: NORMAL, but on the ACIDIC side of 7.40. STEP 2 — HCO3⁻ 16 is LOW (metabolic acidosis — the failing kidneys cannot excrete acid or make enough bicarbonate) and PaCO2 27 is LOW (respiratory compensation by breathing more). STEP 3 — Because the pH is back within 7.35–7.45, compensation is FULL. The pH being slightly acidic shows the primary problem is the ACIDOSIS. Answer: FULLY COMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Partially compensated respiratory acidosis — Respiratory acidosis needs a HIGH PaCO2.
• Uncompensated respiratory acidosis — Uncompensated respiratory acidosis needs a high PaCO2 with an abnormal pH.
• Partially compensated metabolic acidosis — PARTIAL compensation would leave the pH below 7.35.

⭐ Key point: In CKD, chronic metabolic acidosis is treated with oral sodium bicarbonate and dialysis when severe.$x$, null),
(74, $x$Arterial blood gas for a patient who has been vomiting for a week pH 7.46, PaCO2 53 mmHg, HCO3⁻ 38 mmol/L. What is the correct interpretation?$x$, $x$Partially compensated metabolic alkalosis$x$, $x$✅ Correct answer: Partially compensated metabolic alkalosis
STEP 1 — pH 7.46: ALKALOSIS (just above 7.45). STEP 2 — HCO3⁻ 38 is HIGH: METABOLIC ALKALOSIS (a week of vomiting has removed stomach acid, H⁺ and Cl⁻). STEP 3 — PaCO2 53 is HIGH: the lungs are retaining CO2 (slower, shallower breathing) to compensate, bringing the pH close to normal but not quite into the normal range. Answer: PARTIALLY COMPENSATED METABOLIC ALKALOSIS.

❌ Why the other options are wrong:
• Uncompensated respiratory acidosis — Respiratory acidosis would have a LOW pH.
• Uncompensated metabolic alkalosis — UNCOMPENSATED would have a NORMAL PaCO2.
• Uncompensated respiratory alkalosis — Respiratory alkalosis would have a LOW PaCO2.

⭐ Key point: Vomiting also causes dehydration, hypokalaemia and hypochloraemia — treat with IV 0.9% saline plus potassium chloride.$x$, null),
(75, $x$Renal compensation for chronic respiratory alkalosis involves:$x$, $x$Decreased renal bicarbonate reabsorption, increasing bicarbonate excretion to lower serum bicarbonate$x$, $x$✅ Correct answer: Decreased renal bicarbonate reabsorption, increasing bicarbonate excretion to lower serum bicarbonate
In CHRONIC RESPIRATORY ALKALOSIS (e.g. at altitude, pregnancy, chronic liver disease), the PaCO2 is low and pH is high. The KIDNEYS compensate over 2–3 days by DECREASING BICARBONATE REABSORPTION in the tubules, so more bicarbonate is EXCRETED in the urine. They also secrete fewer hydrogen ions and make less ammonia. This lowers the serum bicarbonate and brings the pH back towards normal.

❌ Why the other options are wrong:
• Increased hydrogen ion secretion — Increased hydrogen ion secretion would raise bicarbonate and worsen alkalosis.
• Increased ammoniagenesis — Increased ammoniagenesis generates new bicarbonate, worsening alkalosis; it is reduced in compensation.
• Increased bicarbonate reabsorption — Increased bicarbonate reabsorption would worsen the alkalosis; this is the compensation for respiratory ACIDOSIS.

⭐ Key point: Expected compensation in chronic respiratory alkalosis: HCO3⁻ falls by about 4–5 mmol/L for every 10 mmHg fall in PaCO2.$x$, null),
(76, $x$Arterial blood gas for a patient with septic shock who is now exhausted and hypoventilating pH 7.09, PaCO2 64 mmHg, HCO3⁻ 18 mmol/L. What is the correct interpretation?$x$, $x$Mixed respiratory and metabolic acidosis$x$, $x$✅ Correct answer: Mixed respiratory and metabolic acidosis
STEP 1 — pH 7.09: severe ACIDOSIS. STEP 2 — HCO3⁻ 18 is LOW (METABOLIC acidosis — lactic acid from septic shock) AND PaCO2 64 is HIGH (RESPIRATORY acidosis — the patient is exhausted and hypoventilating). STEP 3 — Both changes push the pH DOWN; neither compensates for the other. Answer: MIXED RESPIRATORY AND METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Uncompensated respiratory alkalosis — Respiratory alkalosis has a high pH.
• Partially compensated metabolic acidosis — Partial compensation of metabolic acidosis would need a LOW PaCO2.
• Partially compensated respiratory acidosis — Partially compensated respiratory acidosis would need a HIGH HCO3⁻.

⭐ Key point: This patient is in impending respiratory arrest — needs urgent intubation and ventilation, plus treatment of septic shock (antibiotics, fluids, vasopressors).$x$, null),
(77, $x$A patient with metabolic acidosis has HCO3⁻ 10 mmol/L and PaCO2 15 mmHg. Using Winter's formula, what does this show?$x$, $x$PaCO2 is lower than expected — an added respiratory alkalosis$x$, $x$✅ Correct answer: PaCO2 is lower than expected — an added respiratory alkalosis
WINTER'S FORMULA predicts the expected PaCO2 in metabolic acidosis: expected PaCO2 = (1.5 × HCO3⁻) + 8 ± 2. Here: (1.5 × 10) + 8 = 15 + 8 = 23 ± 2 → 21–25 mmHg. The ACTUAL PaCO2 is 15 mmHg — LOWER than expected. The patient is blowing off MORE CO2 than compensation alone explains, so there is an ADDED RESPIRATORY ALKALOSIS (e.g. from sepsis, salicylate poisoning, pain, anxiety, or liver failure).

❌ Why the other options are wrong:
• Appropriate respiratory compensation — a pure metabolic acidosis — Appropriate compensation would be a PaCO2 between 21 and 25.
• PaCO2 is higher than expected — an added respiratory acidosis — An added respiratory acidosis would show a PaCO2 HIGHER than 25.
• The kidneys are compensating for a respiratory acidosis — The kidneys compensate for respiratory problems; here the primary problem is metabolic.

⭐ Key point: Salicylate (aspirin) poisoning classically causes a mixed metabolic acidosis and respiratory alkalosis.$x$, null),
(78, $x$Arterial blood gas for a patient with chronic kidney disease on the renal ward pH 7.36, PaCO2 26 mmHg, HCO3⁻ 18 mmol/L. What is the correct interpretation?$x$, $x$Fully compensated metabolic acidosis$x$, $x$✅ Correct answer: Fully compensated metabolic acidosis
STEP 1 — pH 7.36: NORMAL, on the ACIDIC side. STEP 2 — HCO3⁻ 18 LOW (metabolic acidosis from CKD) and PaCO2 26 LOW (respiratory compensation). STEP 3 — pH is within normal range: FULL compensation. Answer: FULLY COMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Fully compensated respiratory acidosis — Respiratory acidosis needs a HIGH PaCO2.
• Partially compensated respiratory acidosis — Partially compensated respiratory acidosis needs a high PaCO2 and high HCO3⁻.
• Mixed respiratory and metabolic acidosis — Mixed acidosis would show a HIGH PaCO2 with low HCO3⁻ and a low pH.

⭐ Key point: Metabolic acidosis is rarely fully compensated by the lungs alone in acute illness; full compensation suggests a chronic state like CKD.$x$, null),
(79, $x$Type II (hypercapnic) respiratory failure, defined by PaCO2 above about 45-50 mmHg with acidaemia, is most typically caused by:$x$, $x$Alveolar hypoventilation, such as in COPD, neuromuscular disease, or CNS depression$x$, $x$✅ Correct answer: Alveolar hypoventilation, such as in COPD, neuromuscular disease, or CNS depression
TYPE II (HYPERCAPNIC) RESPIRATORY FAILURE is defined by a HIGH PaCO2 (above about 45–50 mmHg) with acidaemia, often with low oxygen too. It is caused by ALVEOLAR HYPOVENTILATION — not enough air moving in and out of the alveoli to remove CO2. Causes: COPD (tired muscles, air trapping), NEUROMUSCULAR DISEASE (Guillain–Barré, myasthenia gravis, motor neurone disease, spinal cord injury), CNS DEPRESSION (opioids, sedatives, head injury), chest wall problems (kyphoscoliosis, obesity hypoventilation, flail chest).

❌ Why the other options are wrong:
• Isolated diffusion impairment from pulmonary fibrosis alone — Isolated diffusion impairment (fibrosis) mainly causes low oxygen (TYPE I) with normal or low CO2.
• A pure right-to-left cardiac shunt — A pure right-to-left shunt causes low oxygen (Type I); CO2 is usually normal or low.
• High-altitude exposure alone — High altitude causes hypoxaemia with LOW CO2 (hyperventilation).

⭐ Key point: Type I = low O2, normal/low CO2 (gas exchange problem). Type II = high CO2 (ventilation/"pump" problem).$x$, null),
(80, $x$A patient with metabolic acidosis has HCO3⁻ 18 mmol/L and PaCO2 43 mmHg. Using Winter's formula, what does this show?$x$, $x$PaCO2 is higher than expected — an added respiratory acidosis$x$, $x$✅ Correct answer: PaCO2 is higher than expected — an added respiratory acidosis
WINTER'S FORMULA: expected PaCO2 = (1.5 × HCO3⁻) + 8 ± 2 = (1.5 × 18) + 8 = 27 + 8 = 35 ± 2 → 33–37 mmHg. The ACTUAL PaCO2 is 43 mmHg — HIGHER than expected. The lungs are NOT blowing off enough CO2, so there is an ADDED RESPIRATORY ACIDOSIS (e.g. fatigue, sedation, chest infection, neuromuscular weakness).

❌ Why the other options are wrong:
• Appropriate respiratory compensation — a pure metabolic acidosis — Appropriate compensation would be 33–37 mmHg.
• PaCO2 is lower than expected — an added respiratory alkalosis — A respiratory alkalosis would show a PaCO2 BELOW 33.
• The kidneys are compensating for a respiratory acidosis — The primary problem is metabolic, not a respiratory acidosis being compensated by the kidneys.

⭐ Key point: A "normal-looking" PaCO2 in a patient with metabolic acidosis is actually abnormal — it means the lungs are failing to compensate.$x$, null),
(81, $x$Arterial blood gas for a patient with severe diarrhoea who has just arrived pH 7.22, PaCO2 43 mmHg, HCO3⁻ 15 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic acidosis$x$, $x$✅ Correct answer: Uncompensated metabolic acidosis
STEP 1 — pH 7.22: ACIDOSIS. STEP 2 — HCO3⁻ 15 LOW: METABOLIC (severe diarrhoea loses bicarbonate). STEP 3 — PaCO2 43 NORMAL: the lungs have NOT compensated yet. Answer: UNCOMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Fully compensated metabolic acidosis — Fully compensated would have a normal pH and low PaCO2.
• Uncompensated metabolic alkalosis — Metabolic alkalosis would have a high pH and high HCO3⁻.
• Fully compensated respiratory acidosis — Respiratory acidosis needs a high PaCO2 as the primary change.

⭐ Key point: Diarrhoea causes a normal anion gap (hyperchloraemic) metabolic acidosis; replace fluids and potassium.$x$, null),
(82, $x$Results: Na⁺ 130, Cl⁻ 97, HCO3⁻ 14 mmol/L. What is the anion gap and its interpretation?$x$, $x$19 mmol/L — raised (high anion gap)$x$, $x$✅ Correct answer: 19 mmol/L — raised (high anion gap)
ANION GAP = Na⁺ − (Cl⁻ + HCO3⁻) = 130 − (97 + 14) = 130 − 111 = 19 mmol/L. Normal is about 8–12 mmol/L (up to 16 if potassium is included). So 19 is RAISED: a HIGH ANION GAP METABOLIC ACIDOSIS — unmeasured acids such as lactate, ketones, uraemic acids or toxins are present.

❌ Why the other options are wrong:
• 33 mmol/L — raised (high anion gap) — 33 mmol/L is a calculation error.
• 19 mmol/L — normal — 19 is correct, but it is RAISED, not normal.
• 47 mmol/L — raised (high anion gap) — 47 mmol/L is a calculation error.

⭐ Key point: Correct the anion gap for low albumin: add about 2.5 mmol/L for every 10 g/L that albumin is below 40 g/L.$x$, null),
(83, $x$A patient with metabolic acidosis has HCO3⁻ 16 mmol/L and PaCO2 24 mmHg. Using Winter's formula, what does this show?$x$, $x$PaCO2 is lower than expected — an added respiratory alkalosis$x$, $x$✅ Correct answer: PaCO2 is lower than expected — an added respiratory alkalosis
WINTER'S FORMULA: expected PaCO2 = (1.5 × 16) + 8 ± 2 = 24 + 8 = 32 ± 2 → 30–34 mmHg. The ACTUAL PaCO2 is 24 mmHg — LOWER than expected. The patient is breathing off extra CO2 beyond normal compensation, indicating an ADDED RESPIRATORY ALKALOSIS (e.g. sepsis, pain, anxiety, salicylates).

❌ Why the other options are wrong:
• PaCO2 is higher than expected — an added respiratory acidosis — An added respiratory acidosis would show a PaCO2 above 34.
• The kidneys are compensating for a respiratory acidosis — The kidneys compensate for respiratory problems; here the primary problem is metabolic.
• Appropriate respiratory compensation — a pure metabolic acidosis — Appropriate compensation would be 30–34.

⭐ Key point: Mixed acid–base problems are common in ICU — always compare the actual compensation with the expected value.$x$, null),
(84, $x$Arterial blood gas for a ventilated patient whose set rate is too high pH 7.57, PaCO2 30 mmHg, HCO3⁻ 25 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated respiratory alkalosis$x$, $x$✅ Correct answer: Uncompensated respiratory alkalosis
STEP 1 — pH 7.57: ALKALOSIS. STEP 2 — PaCO2 30 mmHg LOW: RESPIRATORY (the ventilator rate is set too high, removing too much CO2). STEP 3 — HCO3⁻ 25 NORMAL: no renal compensation. Answer: UNCOMPENSATED RESPIRATORY ALKALOSIS. The fix is to reduce the rate (or tidal volume) and recheck the ABG.

❌ Why the other options are wrong:
• Uncompensated metabolic alkalosis — Metabolic alkalosis needs a HIGH HCO3⁻.
• Fully compensated metabolic acidosis — Fully compensated metabolic acidosis needs a normal pH and low HCO3⁻.
• Partially compensated respiratory alkalosis — Partial compensation would need a LOW HCO3⁻.

⭐ Key point: Over-ventilation causes cerebral vasoconstriction, hypokalaemia and low ionised calcium (arrhythmias).$x$, null),
(85, $x$Arterial blood gas for a patient with chronic kidney disease on the renal ward pH 7.36, PaCO2 26 mmHg, HCO3⁻ 15 mmol/L. What is the correct interpretation?$x$, $x$Fully compensated metabolic acidosis$x$, $x$✅ Correct answer: Fully compensated metabolic acidosis
STEP 1 — pH 7.36: NORMAL, on the ACIDIC side. STEP 2 — HCO3⁻ 15 LOW (metabolic acidosis from CKD) and PaCO2 26 LOW (respiratory compensation). STEP 3 — pH is in the normal range: FULL compensation. Answer: FULLY COMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Partially compensated metabolic alkalosis — Metabolic alkalosis needs a HIGH HCO3⁻.
• Uncompensated metabolic alkalosis — Uncompensated metabolic alkalosis needs a high pH and high HCO3⁻.
• Partially compensated metabolic acidosis — PARTIAL compensation would leave the pH below 7.35.

⭐ Key point: In stable CKD, the body adapts over time — ABG values should be compared with the patient's baseline.$x$, null),
(86, $x$Which acid–base disturbance is most likely to result from the following? Prolonged vomiting with loss of gastric acid.$x$, $x$Metabolic alkalosis$x$, $x$✅ Correct answer: Metabolic alkalosis
PROLONGED VOMITING removes HYDROCHLORIC ACID (H⁺ and Cl⁻) from the stomach. Losing acid makes the blood more alkaline (bicarbonate rises). Dehydration activates aldosterone, causing the kidneys to retain sodium and excrete H⁺ and K⁺, maintaining the alkalosis. Result: HYPOCHLORAEMIC, HYPOKALAEMIC METABOLIC ALKALOSIS.

❌ Why the other options are wrong:
• Respiratory acidosis — Respiratory acidosis is caused by hypoventilation.
• Respiratory alkalosis — Respiratory alkalosis is caused by hyperventilation.
• Metabolic acidosis — Metabolic acidosis is caused by acid gain or bicarbonate loss (e.g. diarrhoea), not vomiting.

⭐ Key point: Treat with IV 0.9% saline and potassium chloride; the kidneys then excrete the excess bicarbonate.$x$, null),
(87, $x$When titrating CRRT replacement fluid and dialysate flow rates for a patient with severe metabolic acidosis, the priority nursing consideration is:$x$, $x$Using a bicarbonate- or lactate-buffered replacement fluid to help correct the acidosis gradually$x$, $x$✅ Correct answer: Using a bicarbonate- or lactate-buffered replacement fluid to help correct the acidosis gradually
CONTINUOUS RENAL REPLACEMENT THERAPY (CRRT) can correct metabolic acidosis by removing acids and adding BUFFER (usually BICARBONATE, sometimes lactate) through the replacement fluid and dialysate. The priority is to use a BUFFERED fluid and correct the acidosis GRADUALLY over hours. Rapid correction can cause problems such as sudden shifts in potassium and calcium, rebound alkalosis, and worsening intracellular acidosis.

❌ Why the other options are wrong:
• Rapidly correcting the entire acid-base deficit within the first hour — Rapid correction within one hour is unsafe.
• Using only solutions with no buffer — Unbuffered solutions would fail to correct the acidosis (and may worsen it).
• Avoiding any buffer to prevent alkalosis — Avoiding buffer would leave the acidosis untreated.

⭐ Key point: Monitor ABGs, potassium, ionised calcium, phosphate and magnesium closely during CRRT.$x$, null),
(88, $x$A patient in acute respiratory failure has ABG results: pH 7.28, PaCO2 60 mmHg, HCO3 26 mEq/L, PaO2 55 mmHg. This is best interpreted as:$x$, $x$Acute (uncompensated) respiratory acidosis with hypoxemia$x$, $x$✅ Correct answer: Acute (uncompensated) respiratory acidosis with hypoxemia
STEP 1 — pH 7.28: ACIDOSIS. STEP 2 — PaCO2 60 HIGH: RESPIRATORY ACIDOSIS. STEP 3 — HCO3⁻ 26 NORMAL: the kidneys have not compensated yet (ACUTE). PaO2 55 mmHg is LOW (normal 80–100): HYPOXAEMIA. Answer: ACUTE (UNCOMPENSATED) RESPIRATORY ACIDOSIS WITH HYPOXAEMIA — this is acute type II respiratory failure.

❌ Why the other options are wrong:
• Fully compensated respiratory acidosis — Fully compensated would have a normal pH and high HCO3⁻.
• Compensated metabolic alkalosis — Metabolic alkalosis would have a high pH and high HCO3⁻.
• Acute metabolic acidosis — Metabolic acidosis needs a LOW HCO3⁻.

⭐ Key point: Treat the cause, give controlled oxygen, and support ventilation (NIV or intubation).$x$, null),
(89, $x$Arterial blood gas for a patient with chronic kyphoscoliosis who feels well pH 7.37, PaCO2 65 mmHg, HCO3⁻ 35 mmol/L. What is the correct interpretation?$x$, $x$Fully compensated respiratory acidosis$x$, $x$✅ Correct answer: Fully compensated respiratory acidosis
STEP 1 — pH 7.37: NORMAL, slightly on the ACIDIC side. STEP 2 — PaCO2 65 HIGH (respiratory acidosis from chronic hypoventilation due to kyphoscoliosis restricting the chest) and HCO3⁻ 35 HIGH (renal compensation). STEP 3 — pH normal: FULL compensation. Answer: FULLY COMPENSATED RESPIRATORY ACIDOSIS. The patient "feels well" because the condition is chronic and stable.

❌ Why the other options are wrong:
• Uncompensated respiratory alkalosis — Respiratory alkalosis needs a LOW PaCO2.
• Partially compensated metabolic alkalosis — Metabolic alkalosis would have a high pH as the primary problem.
• Uncompensated respiratory acidosis — Uncompensated would have an abnormal pH and normal HCO3⁻.

⭐ Key point: These patients may need nocturnal NIV at home; avoid excessive oxygen, which can raise CO2 further.$x$, null),
(90, $x$Arterial blood gas for a patient with septic shock and a lactate of 6 mmol/L pH 7.19, PaCO2 26 mmHg, HCO3⁻ 10 mmol/L. What is the correct interpretation?$x$, $x$Partially compensated metabolic acidosis$x$, $x$✅ Correct answer: Partially compensated metabolic acidosis
STEP 1 — pH 7.19: ACIDOSIS. STEP 2 — HCO3⁻ 10 LOW: METABOLIC (lactic acidosis from septic shock, lactate 6). STEP 3 — PaCO2 26 LOW: the lungs are compensating, but the pH is still low. Answer: PARTIALLY COMPENSATED METABOLIC ACIDOSIS. (Winter's: expected 1.5 × 10 + 8 = 23 ± 2; actual 26 is borderline-high, suggesting the patient may be starting to tire.)

❌ Why the other options are wrong:
• Fully compensated metabolic acidosis — Fully compensated would have a normal pH.
• Uncompensated respiratory alkalosis — Respiratory alkalosis would have a high pH.
• Uncompensated respiratory acidosis — Respiratory acidosis needs a high PaCO2.

⭐ Key point: Treat the shock (fluids, vasopressors, antibiotics, source control); bicarbonate is not routinely given for lactic acidosis.$x$, null),
(91, $x$Results: Na⁺ 130, Cl⁻ 107, HCO3⁻ 12 mmol/L. What is the anion gap and its interpretation?$x$, $x$11 mmol/L — normal$x$, $x$✅ Correct answer: 11 mmol/L — normal
ANION GAP = Na⁺ − (Cl⁻ + HCO3⁻) = 130 − (107 + 12) = 130 − 119 = 11 mmol/L. This is within the NORMAL range (about 8–12). With a low bicarbonate (12), this indicates a NORMAL ANION GAP (HYPERCHLORAEMIC) METABOLIC ACIDOSIS — caused by bicarbonate loss (diarrhoea, ileostomy, renal tubular acidosis) or excess chloride (large volumes of 0.9% saline).

❌ Why the other options are wrong:
• 35 mmol/L — raised (high anion gap) — 35 mmol/L is a calculation error.
• 11 mmol/L — raised (high anion gap) — 11 is correct, but it is NORMAL, not raised.
• 23 mmol/L — raised (high anion gap) — 23 mmol/L is a calculation error.

⭐ Key point: Normal anion gap acidosis: think "HARDUPS" — Hyperalimentation, Acetazolamide, Renal tubular acidosis, Diarrhoea, Ureteric diversion, Pancreatic fistula, Saline.$x$, null),
(92, $x$Arterial blood gas for a patient with septic shock who is now exhausted and hypoventilating pH 7.16, PaCO2 62 mmHg, HCO3⁻ 19 mmol/L. What is the correct interpretation?$x$, $x$Mixed respiratory and metabolic acidosis$x$, $x$✅ Correct answer: Mixed respiratory and metabolic acidosis
STEP 1 — pH 7.16: ACIDOSIS. STEP 2 — HCO3⁻ 19 LOW (METABOLIC acidosis from septic shock) and PaCO2 62 HIGH (RESPIRATORY acidosis from exhaustion). STEP 3 — Both push pH down. Answer: MIXED RESPIRATORY AND METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Fully compensated respiratory acidosis — Fully compensated would have a normal pH.
• Uncompensated respiratory acidosis — Uncompensated respiratory acidosis would have a normal HCO3⁻.
• Partially compensated metabolic acidosis — Partial compensation of metabolic acidosis would need a LOW PaCO2.

⭐ Key point: A rising CO2 in a septic patient signals exhaustion — prepare for intubation.$x$, null),
(93, $x$Arterial blood gas for a patient on high-dose furosemide with a low potassium pH 7.51, PaCO2 53 mmHg, HCO3⁻ 39 mmol/L. What is the correct interpretation?$x$, $x$Partially compensated metabolic alkalosis$x$, $x$✅ Correct answer: Partially compensated metabolic alkalosis
STEP 1 — pH 7.51: ALKALOSIS. STEP 2 — HCO3⁻ 39 HIGH: METABOLIC ALKALOSIS (furosemide causes loss of H⁺, Cl⁻ and K⁺, plus volume contraction). STEP 3 — PaCO2 53 HIGH: the lungs are compensating by retaining CO2, but pH remains high. Answer: PARTIALLY COMPENSATED METABOLIC ALKALOSIS.

❌ Why the other options are wrong:
• Fully compensated respiratory acidosis — Respiratory acidosis would have a low pH.
• Uncompensated metabolic acidosis — Metabolic acidosis would have a low pH and low HCO3⁻.
• Uncompensated metabolic alkalosis — Uncompensated would have a normal PaCO2.

⭐ Key point: Correct potassium and chloride, and review the diuretic dose.$x$, null),
(94, $x$Results: Na⁺ 143, Cl⁻ 95, HCO3⁻ 24 mmol/L. What is the anion gap and its interpretation?$x$, $x$24 mmol/L — raised (high anion gap)$x$, $x$✅ Correct answer: 24 mmol/L — raised (high anion gap)
ANION GAP = Na⁺ − (Cl⁻ + HCO3⁻) = 143 − (95 + 24) = 143 − 119 = 24 mmol/L. This is RAISED (normal 8–12). Interestingly, the bicarbonate is NORMAL (24), so a raised anion gap here suggests a HIDDEN high anion gap metabolic acidosis combined with a metabolic ALKALOSIS (e.g. a patient with DKA who is also vomiting) — the two cancel out in the bicarbonate. The anion gap reveals the hidden acid.

❌ Why the other options are wrong:
• 48 mmol/L — raised (high anion gap) — 48 mmol/L is a calculation error.
• 24 mmol/L — normal — 24 is correct, but it is RAISED, not normal.
• 72 mmol/L — raised (high anion gap) — 72 mmol/L is a calculation error.

⭐ Key point: Always calculate the anion gap — it can uncover a hidden metabolic acidosis even when bicarbonate looks normal.$x$, null),
(95, $x$Arterial blood gas for a patient with chronic kidney disease on the renal ward pH 7.36, PaCO2 26 mmHg, HCO3⁻ 14 mmol/L. What is the correct interpretation?$x$, $x$Fully compensated metabolic acidosis$x$, $x$✅ Correct answer: Fully compensated metabolic acidosis
STEP 1 — pH 7.36: NORMAL, on the ACIDIC side. STEP 2 — HCO3⁻ 14 LOW (METABOLIC acidosis — CKD) and PaCO2 26 LOW (respiratory compensation). STEP 3 — pH normal: FULL compensation. Answer: FULLY COMPENSATED METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Partially compensated respiratory alkalosis — Respiratory alkalosis would have a high pH as the primary problem.
• Partially compensated respiratory acidosis — Respiratory acidosis needs a high PaCO2.
• Partially compensated metabolic acidosis — PARTIAL compensation would leave the pH below 7.35.

⭐ Key point: Check whether the pH is below or above 7.40 to identify the primary problem in fully compensated states.$x$, null),
(96, $x$Arterial blood gas for a patient with chronic kyphoscoliosis who feels well pH 7.38, PaCO2 62 mmHg, HCO3⁻ 34 mmol/L. What is the correct interpretation?$x$, $x$Fully compensated respiratory acidosis$x$, $x$✅ Correct answer: Fully compensated respiratory acidosis
STEP 1 — pH 7.38: NORMAL, on the ACIDIC side. STEP 2 — PaCO2 62 HIGH (respiratory acidosis from chronic kyphoscoliosis) and HCO3⁻ 34 HIGH (renal compensation). STEP 3 — pH normal: FULL compensation. Answer: FULLY COMPENSATED RESPIRATORY ACIDOSIS.

❌ Why the other options are wrong:
• Fully compensated metabolic acidosis — Metabolic acidosis needs a LOW HCO3⁻.
• Partially compensated respiratory acidosis — PARTIAL compensation would leave the pH below 7.35.
• Uncompensated metabolic alkalosis — Metabolic alkalosis would have a high pH.

⭐ Key point: Chronic CO2 retainers rely partly on hypoxic drive; titrate oxygen to SpO2 88–92%.$x$, null),
(97, $x$Which ABG indicates uncompensated respiratory alkalosis?$x$, $x$pH 7.50, PaCO2 30 mmHg, HCO3- 24 mEq/L$x$, $x$✅ Correct answer: pH 7.50, PaCO2 30 mmHg, HCO3- 24 mEq/L
UNCOMPENSATED RESPIRATORY ALKALOSIS means: HIGH pH (above 7.45), LOW PaCO2 (below 35 — the cause), and NORMAL HCO3⁻ (22–26 — no renal compensation yet). Option D (pH 7.50, PaCO2 30, HCO3⁻ 24) fits exactly.

❌ Why the other options are wrong:
• pH 7.50, PaCO2 50 mmHg, HCO3- 30 mEq/L — pH 7.50, PaCO2 50, HCO3⁻ 30 is partially compensated METABOLIC alkalosis (high HCO3⁻ with compensatory high CO2).
• pH 7.30, PaCO2 50 mmHg, HCO3- 26 mEq/L — pH 7.30, PaCO2 50, HCO3⁻ 26 is uncompensated RESPIRATORY ACIDOSIS.
• pH 7.40, PaCO2 30 mmHg, HCO3- 18 mEq/L — pH 7.40, PaCO2 30, HCO3⁻ 18 has a normal pH — fully compensated (respiratory alkalosis or metabolic acidosis).

⭐ Key point: In uncompensated disorders, only ONE value (PaCO2 or HCO3⁻) is abnormal along with the pH.$x$, null),
(98, $x$Arterial blood gas for a patient on continuous nasogastric suction for 3 days pH 7.48, PaCO2 40 mmHg, HCO3⁻ 33 mmol/L. What is the correct interpretation?$x$, $x$Uncompensated metabolic alkalosis$x$, $x$✅ Correct answer: Uncompensated metabolic alkalosis
STEP 1 — pH 7.48: ALKALOSIS. STEP 2 — HCO3⁻ 33 is HIGH: METABOLIC ALKALOSIS. Continuous NASOGASTRIC SUCTION removes stomach acid (H⁺ and Cl⁻), so the blood becomes alkaline. STEP 3 — PaCO2 40 is NORMAL: no respiratory compensation. Answer: UNCOMPENSATED METABOLIC ALKALOSIS.

❌ Why the other options are wrong:
• Partially compensated metabolic acidosis — Metabolic acidosis would have a low pH and low HCO3⁻.
• Fully compensated respiratory acidosis — Respiratory acidosis needs a low pH and high PaCO2.
• Partially compensated metabolic alkalosis — PARTIAL compensation would show a HIGH PaCO2 (above 45).

⭐ Key point: Measure NG losses and replace them with 0.9% saline plus potassium chloride; a PPI reduces acid loss.$x$, null),
(99, $x$During a spontaneous breathing trial a patient breathes at 16/min with a tidal volume of 500 mL. What is the rapid shallow breathing index (RSBI)?$x$, $x$32 — likely to wean successfully$x$, $x$✅ Correct answer: 32 — likely to wean successfully
RSBI = RESPIRATORY RATE ÷ TIDAL VOLUME (in LITRES) = 16 ÷ 0.5 = 32. An RSBI BELOW 105 predicts the patient is LIKELY TO WEAN SUCCESSFULLY.

❌ Why the other options are wrong:
• 8 — likely to fail weaning — 8 is a calculation error (16 ÷ 2).
• 32 — likely to fail weaning — 32 is correct, but it predicts SUCCESS, not failure.
• 31 — likely to wean successfully — 31 is a calculation error.

⭐ Key point: RSBI above 105 = fast, shallow breathing = likely failure. Assess the whole patient, not just RSBI.$x$, null),
(100, $x$A patient's endotracheal tube cuff, inflated with air, is left in place during a prolonged case using nitrous oxide. A recognized risk of this combination is:$x$, $x$Progressive cuff overinflation as nitrous oxide diffuses into the cuff, risking tracheal mucosal ischaemia$x$, $x$✅ Correct answer: Progressive cuff overinflation as nitrous oxide diffuses into the cuff, risking tracheal mucosal ischaemia
NITROUS OXIDE (N2O) is much more soluble in blood than nitrogen. During anaesthesia, it DIFFUSES into air-filled spaces — including the air-filled endotracheal tube CUFF — faster than nitrogen can leave. So the cuff volume and PRESSURE INCREASE progressively. High cuff pressure (above 30 cmH2O) compresses the tracheal blood supply, causing TRACHEAL MUCOSAL ISCHAEMIA, sore throat, ulceration, and later stenosis.

❌ Why the other options are wrong:
• Reduced cuff pressure requiring frequent reinflation — The cuff pressure INCREASES, not decreases.
• Cuff deflation over time — The cuff over-inflates rather than deflates.
• Cuff material degradation — Material degradation is not the issue.

⭐ Key point: Check cuff pressure regularly with a manometer during nitrous oxide anaesthesia, or fill the cuff with saline or the anaesthetic gas mixture.$x$, null),
(101, $x$A ventilated ARDS patient has a plateau pressure of 15 cmH2O and PEEP of 5 cmH2O. What is the driving pressure?$x$, $x$10 cmH2O — within the safe target (≤ 15)$x$, $x$✅ Correct answer: 10 cmH2O — within the safe target (≤ 15)
DRIVING PRESSURE = PLATEAU PRESSURE − PEEP = 15 − 5 = 10 cmH2O. The safe target is 15 cmH2O or LESS, so 10 is WITHIN the safe target. Lower driving pressure means less stretch on the lungs with each breath and a lower risk of ventilator-induced lung injury.

❌ Why the other options are wrong:
• 10 cmH2O — too high (> 15), increasing the risk of lung injury — 10 is correct, but it is SAFE, not too high.
• 20 cmH2O — too high (> 15), increasing the risk of lung injury — 20 adds plateau and PEEP.
• 15 cmH2O — within the safe target (≤ 15) — 15 is the plateau pressure, not the driving pressure.

⭐ Key point: Driving pressure above 15 cmH2O is linked to higher mortality in ARDS.$x$, null),
(102, $x$A potential complication of Assist-Control ventilation in a patient who is tachypneic from anxiety or pain is:$x$, $x$Respiratory alkalosis from hyperventilation, along with breath stacking and auto-PEEP$x$, $x$✅ Correct answer: Respiratory alkalosis from hyperventilation, along with breath stacking and auto-PEEP
In ASSIST-CONTROL (AC) ventilation, EVERY breath the patient triggers is given as a FULL breath (full set volume or pressure). If the patient breathes fast because of ANXIETY or PAIN (e.g. 35/min), each breath delivers a full tidal volume, causing excessive minute ventilation: RESPIRATORY ALKALOSIS (CO2 too low). There may also not be enough time to exhale, causing BREATH STACKING and AUTO-PEEP, which can cause hypotension and barotrauma.

❌ Why the other options are wrong:
• Inability to trigger any breaths — AC does allow patients to trigger breaths.
• Hypoventilation and hypercapnia — Hypoventilation is not the problem with rapid triggering in AC.
• Automatic apnea — AC provides backup breaths, so apnoea is not a risk.

⭐ Key point: Treat the cause of tachypnoea (pain, anxiety, fever, hypoxia) and consider a different mode (e.g. pressure support or SIMV).$x$, null),
(103, $x$A female patient with ARDS is 170 cm tall and weighs 87 kg. Using lung-protective ventilation at 6 mL/kg predicted body weight, what tidal volume should be set?$x$, $x$About 369 mL$x$, $x$✅ Correct answer: About 369 mL
FEMALE PBW = 45.5 + 0.91 × (height in cm − 152.4) = 45.5 + 0.91 × (170 − 152.4) = 45.5 + 0.91 × 17.6 = 45.5 + 16.0 = 61.5 kg. Tidal volume at 6 mL/kg = 6 × 61.5 = 369 mL. Her actual weight (87 kg) is NOT used, because lung size depends on height and sex, not body fat.

❌ Why the other options are wrong:
• About 522 mL — 522 mL is 6 mL/kg of her ACTUAL weight — too high.
• About 492 mL — 492 mL is 8 mL/kg PBW.
• About 615 mL — 615 mL is 10 mL/kg PBW.

⭐ Key point: Using actual weight in obese patients causes over-inflation and lung injury.$x$, null),
(104, $x$For a hemodynamically unstable ARDS patient requiring precise control of airway pressures to minimize barotrauma risk while sedated, which mode is often preferred initially?$x$, $x$Pressure Control Ventilation, or volume control with a plateau pressure limit, with controlled mandatory breaths$x$, $x$✅ Correct answer: Pressure Control Ventilation, or volume control with a plateau pressure limit, with controlled mandatory breaths
For a HAEMODYNAMICALLY UNSTABLE, SEDATED ARDS patient, CONTROLLED MANDATORY ventilation is preferred initially: PRESSURE CONTROL VENTILATION (which limits peak airway pressure) or VOLUME CONTROL with a PLATEAU PRESSURE LIMIT (≤30 cmH2O). This gives precise control of pressures and volumes, minimising barotrauma, while ensuring adequate ventilation.

❌ Why the other options are wrong:
• T-piece trial — A T-piece trial is a weaning test, not for unstable patients.
• CPAP alone — CPAP alone gives no breaths — inadequate for a sedated patient.
• Pressure Support Ventilation with a low backup rate — Pressure support requires a reliable respiratory drive; a low backup rate is unsafe in an unstable, sedated patient.

⭐ Key point: In pressure control, monitor exhaled tidal volume closely — it changes with compliance.$x$, null),
(105, $x$What is the recommended action if a ventilated patient's exhaled tidal volume suddenly drops significantly with a normal peak pressure and an audible air leak at the mouth?$x$, $x$Suspect cuff leak or partial tube displacement and assess cuff pressure and tube position immediately$x$, $x$✅ Correct answer: Suspect cuff leak or partial tube displacement and assess cuff pressure and tube position immediately
A SUDDEN DROP in EXHALED TIDAL VOLUME with a NORMAL (or low) PEAK PRESSURE and an AUDIBLE AIR LEAK at the mouth means gas is escaping around the tube: a CUFF LEAK (under-inflated or damaged cuff) or PARTIAL TUBE DISPLACEMENT (tube pulled up so the cuff is at or above the vocal cords). Immediately check CUFF PRESSURE (20–30 cmH2O) and TUBE POSITION (marking at the teeth/lips, chest movement, breath sounds, capnography).

❌ Why the other options are wrong:
• Increase sedation — Increasing sedation doesn't fix a leak.
• Increase PEEP — Increasing PEEP doesn't fix a leak.
• Assume mucus plug and suction aggressively — A mucus plug causes HIGH pressures, not a leak.

⭐ Key point: If the tube has slipped, call for help — re-positioning or re-intubation may be needed.$x$, null),
(106, $x$The mode of Mechanical Ventilation which does not allow the patient to take spontaneous breaths is:$x$, $x$CMV (Control Mandatory Ventilation)$x$, $x$✅ Correct answer: CMV (Control Mandatory Ventilation)
In CONTROLLED MANDATORY VENTILATION (CMV), the ventilator delivers ALL breaths at a set rate and volume/pressure, and the patient CANNOT TRIGGER any breaths (the trigger is switched off). It is used in deeply sedated or paralysed patients. It is uncomfortable for awake patients ("fighting the ventilator").

❌ Why the other options are wrong:
• AC Mode (Assist Control Mode) — AC allows patients to trigger extra (full) breaths.
• SIMV (Synchronous intermittent Mandatory Ventilation) — SIMV allows spontaneous breaths between mandatory breaths.
• PCV (Pressure Control Mode) — Pressure Control (as commonly used in AC mode) allows patient-triggered breaths.

⭐ Key point: Many modern ventilators use AC rather than pure CMV.$x$, null),
(107, $x$A sudden high-pressure alarm accompanied by absent chest rise, difficulty bagging, and inability to pass a suction catheter most strongly suggests:$x$, $x$Endotracheal tube obstruction (e.g., mucus plug, kinking, biting)$x$, $x$✅ Correct answer: Endotracheal tube obstruction (e.g., mucus plug, kinking, biting)
A SUDDEN HIGH-PRESSURE alarm with ABSENT CHEST RISE, DIFFICULTY BAGGING, and INABILITY TO PASS A SUCTION CATHETER strongly suggests the ENDOTRACHEAL TUBE IS OBSTRUCTED: mucus plug, blood clot, kinking, or the patient biting the tube. If the obstruction can't be cleared, the tube may need replacing.

❌ Why the other options are wrong:
• Correct tube placement with normal function — Correct tube function would allow ventilation and suction.
• Ventilator circuit disconnection — Circuit disconnection causes LOW pressure alarms.
• Tension pneumothorax with hyperresonance — Tension pneumothorax causes high pressures, but a suction catheter would still pass down the tube.

⭐ Key point: Follow DOPE: Displacement, Obstruction, Pneumothorax, Equipment failure.$x$, null),
(108, $x$A key nursing assessment component specific to a patient receiving neuromuscular blockade for ventilator synchrony is:$x$, $x$Using a peripheral nerve stimulator, such as train-of-four, to monitor level of blockade and ensuring adequate concurrent sedation and analgesia$x$, $x$✅ Correct answer: Using a peripheral nerve stimulator, such as train-of-four, to monitor level of blockade and ensuring adequate concurrent sedation and analgesia
Patients receiving NEUROMUSCULAR BLOCKADE (paralysis) CANNOT MOVE, BREATHE, or show signs of distress or pain. Key nursing assessments: use a PERIPHERAL NERVE STIMULATOR (TRAIN-OF-FOUR, TOF) to monitor the depth of blockade (avoid excessive paralysis), and ENSURE ADEQUATE SEDATION and ANALGESIA (paralysed patients can be awake and in pain without showing it). Also: eye care (corneal protection), pressure area care, DVT prevention.

❌ Why the other options are wrong:
• Discontinuing all monitoring since the patient cannot move — Monitoring must continue.
• Assessing verbal pain reports — Paralysed patients cannot report pain verbally.
• Allowing the patient to ambulate — Paralysed patients cannot ambulate.

⭐ Key point: Usually aim for 1–2 twitches out of 4 on TOF. Use BIS monitoring if available to assess sedation depth.$x$, null),
(109, $x$When preoxygenating a trauma patient with facial injuries before intubation, the nurse should be cautious with bag-valve-mask ventilation because:$x$, $x$Excessive ventilation pressure can cause gastric insufflation and increase aspiration risk, and may worsen facial injuries$x$, $x$✅ Correct answer: Excessive ventilation pressure can cause gastric insufflation and increase aspiration risk, and may worsen facial injuries
When BAG-VALVE-MASK ventilating a trauma patient, EXCESSIVE PRESSURE or volume can force air into the STOMACH (GASTRIC INSUFFLATION), increasing the risk of VOMITING and ASPIRATION. In patients with FACIAL INJURIES, mask pressure may worsen injuries, and fractures may prevent a good seal. Use gentle, slow breaths only as needed.

❌ Why the other options are wrong:
• It improves cervical spine stability — BVM doesn't improve cervical spine stability; in-line stabilisation is needed.
• It has no risks — BVM does carry risks.
• It always causes hypoxemia — BVM doesn't always cause hypoxaemia; it can prevent it.

⭐ Key point: Use the minimum pressure needed for chest rise; consider cricoid pressure and early intubation.$x$, null),
(110, $x$A ventilated patient develops a new cardiac dysrhythmia, such as new atrial fibrillation with rapid ventricular response, along with desaturation. The nurse should:$x$, $x$Assess for hypoxemia or ventilatory causes contributing to the dysrhythmia and notify the physician promptly given the combined instability$x$, $x$✅ Correct answer: Assess for hypoxemia or ventilatory causes contributing to the dysrhythmia and notify the physician promptly given the combined instability
In a VENTILATED patient, a NEW ARRHYTHMIA (e.g. rapid AF) together with DESATURATION suggests a COMBINED problem — HYPOXIA, high CO2, electrolyte imbalance, tube problems, pneumothorax, or sepsis can cause both. The nurse should ASSESS for HYPOXAEMIA and VENTILATORY causes (check tube, breath sounds, ventilator, ABG, electrolytes) and NOTIFY THE PHYSICIAN PROMPTLY.

❌ Why the other options are wrong:
• Wait for the next scheduled assessment — Waiting delays treatment of a serious problem.
• Decrease FiO2 — Decreasing FiO2 would worsen hypoxia.
• Treat this as an isolated cardiac issue unrelated to ventilation — The arrhythmia may be caused by ventilation problems, not an isolated cardiac issue.

⭐ Key point: Check potassium and magnesium in new arrhythmias in ICU patients.$x$, null),
(111, $x$A male patient with ARDS is 185 cm tall and weighs 125 kg. Using lung-protective ventilation at 8 mL/kg predicted body weight, what tidal volume should be set?$x$, $x$About 637 mL$x$, $x$✅ Correct answer: About 637 mL
MALE PBW = 50 + 0.91 × (height in cm − 152.4) = 50 + 0.91 × (185 − 152.4) = 50 + 0.91 × 32.6 = 50 + 29.7 = 79.7 kg. Tidal volume at 8 mL/kg = 8 × 79.7 = 637 mL. His actual weight (125 kg) is NOT used.

❌ Why the other options are wrong:
• About 1000 mL — 1,000 mL is 8 mL/kg of actual weight — dangerously high.
• About 797 mL — 797 mL is 10 mL/kg PBW.
• About 478 mL — 478 mL is 6 mL/kg PBW.

⭐ Key point: Tall patients have larger lungs, so their PBW and tidal volumes are larger, regardless of actual weight.$x$, null),
(112, $x$The DOPE mnemonic used to rapidly assess a deteriorating ventilated patient stands for:$x$, $x$Displacement, Obstruction, Pneumothorax, Equipment failure$x$, $x$✅ Correct answer: Displacement, Obstruction, Pneumothorax, Equipment failure
The DOPE mnemonic helps rapidly find the cause of deterioration in a ventilated patient: D = DISPLACEMENT of the tube (extubation, right main bronchus); O = OBSTRUCTION of the tube (secretions, kinking, biting); P = PNEUMOTHORAX (especially tension); E = EQUIPMENT FAILURE (ventilator, circuit, oxygen supply). Some add "S" for Stacked breaths (auto-PEEP).

❌ Why the other options are wrong:
• Distress, Obstruction, Pain, Emergency — "Distress, Obstruction, Pain, Emergency" is incorrect.
• Dislodgement, Oxygen, Pressure, Extubation — "Dislodgement, Oxygen, Pressure, Extubation" is incorrect.
• Displacement, Overventilation, Pneumonia, Edema — "Displacement, Overventilation, Pneumonia, Edema" is incorrect.

⭐ Key point: If in doubt, disconnect from the ventilator and hand-ventilate with 100% oxygen while you work through DOPE.$x$, null),
(113, $x$A patient with severe asthma on the ventilator develops sudden hypotension and difficulty bagging. The nurse should consider disconnecting the patient from the ventilator briefly to allow full exhalation, since this presentation may reflect:$x$, $x$Severe auto-PEEP/breath stacking causing dynamic hyperinflation and reduced venous return$x$, $x$✅ Correct answer: Severe auto-PEEP/breath stacking causing dynamic hyperinflation and reduced venous return
In SEVERE ASTHMA, narrowed airways slow exhalation. If the ventilator gives the next breath before exhalation is complete, air builds up (BREATH STACKING / AUTO-PEEP), causing DYNAMIC HYPERINFLATION. The raised pressure in the chest REDUCES VENOUS RETURN, causing HYPOTENSION, and makes the lungs very stiff (DIFFICULT BAGGING). Briefly DISCONNECTING the ventilator allows trapped air to escape, which can quickly restore BP.

❌ Why the other options are wrong:
• Normal ventilator function — This is not normal ventilator function.
• Improved lung compliance — Compliance is worse, not improved.
• An unrelated cardiac event only — It is not an unrelated cardiac event; it is caused by ventilation.

⭐ Key point: Prevent with a low rate, low tidal volume, long expiratory time, and bronchodilators; accept higher CO2.$x$, null),
(114, $x$A male patient with ARDS is 170 cm tall and weighs 101 kg. Using lung-protective ventilation at 8 mL/kg predicted body weight, what tidal volume should be set?$x$, $x$About 528 mL$x$, $x$✅ Correct answer: About 528 mL
MALE PBW = 50 + 0.91 × (170 − 152.4) = 50 + 0.91 × 17.6 = 50 + 16.0 = 66 kg. Tidal volume at 8 mL/kg = 8 × 66 = 528 mL.

❌ Why the other options are wrong:
• About 660 mL — 660 mL is 10 mL/kg PBW.
• About 808 mL — 808 mL is 8 mL/kg of actual weight (101 kg).
• About 396 mL — 396 mL is 6 mL/kg PBW.

⭐ Key point: Recalculate if the height was estimated — measure the height (e.g. heel to crown) accurately.$x$, null),
(115, $x$Auto-PEEP (intrinsic PEEP), sometimes seen in patients with severe airflow obstruction on a ventilator, occurs when:$x$, $x$Incomplete exhalation traps air in the lungs before the next breath, causing progressive hyperinflation$x$, $x$✅ Correct answer: Incomplete exhalation traps air in the lungs before the next breath, causing progressive hyperinflation
AUTO-PEEP (intrinsic PEEP) occurs when EXHALATION is INCOMPLETE — air is TRAPPED in the lungs before the next breath begins. This causes progressive HYPERINFLATION. It is common in severe airflow obstruction (asthma, COPD), high respiratory rates, and long inspiratory times.

❌ Why the other options are wrong:
• PEEP is set too low — Setting PEEP too low is not the cause.
• There is no relationship to ventilator settings — Auto-PEEP is strongly related to ventilator settings (rate, I:E ratio, tidal volume).
• The patient fully exhales before the next breath is delivered — If the patient fully exhales, there is no auto-PEEP.

⭐ Key point: Detect it with the expiratory flow waveform (not returning to zero) and an end-expiratory hold.$x$, null),
(116, $x$During a spontaneous breathing trial a patient breathes at 28/min with a tidal volume of 250 mL. What is the rapid shallow breathing index (RSBI)?$x$, $x$112 — likely to fail weaning$x$, $x$✅ Correct answer: 112 — likely to fail weaning
RSBI = RESPIRATORY RATE ÷ TIDAL VOLUME (LITRES) = 28 ÷ 0.25 = 112. An RSBI ABOVE 105 suggests RAPID, SHALLOW breathing, so weaning is LIKELY TO FAIL.

❌ Why the other options are wrong:
• 7 — likely to fail weaning — 7 is a calculation error.
• 9 — likely to wean successfully — 9 is a calculation error.
• 112 — likely to wean successfully — 112 is correct, but it predicts FAILURE, not success.

⭐ Key point: Look for reversible causes of weaning failure: fluid overload, weakness, secretions, sedation, anxiety, electrolyte problems.$x$, null),
(117, $x$A ventilated ARDS patient has a plateau pressure of 28 cmH2O and PEEP of 12 cmH2O. What is the driving pressure?$x$, $x$16 cmH2O — too high (> 15), increasing the risk of lung injury$x$, $x$✅ Correct answer: 16 cmH2O — too high (> 15), increasing the risk of lung injury
DRIVING PRESSURE = PLATEAU − PEEP = 28 − 12 = 16 cmH2O. This is ABOVE the safe target of 15 cmH2O, so it is TOO HIGH and increases the risk of lung injury. Consider reducing the tidal volume or adjusting PEEP.

❌ Why the other options are wrong:
• 16 cmH2O — within the safe target (≤ 15) — 16 is correct, but it is NOT within the safe target.
• 28 cmH2O — too high (> 15), increasing the risk of lung injury — 28 is the plateau pressure.
• 40 cmH2O — too high (> 15), increasing the risk of lung injury — 40 adds plateau and PEEP.

⭐ Key point: Even when plateau is below 30, a driving pressure above 15 is a warning sign.$x$, null),
(118, $x$Which mode of mechanical ventilation delivers a preset volume/pressure with every breath, whether patient-triggered or machine-triggered, providing full support?$x$, $x$Assist-Control (AC)$x$, $x$✅ Correct answer: Assist-Control (AC)
In ASSIST-CONTROL (AC) mode, the ventilator delivers a PRESET VOLUME (volume AC) or PRESSURE (pressure AC) with EVERY breath. If the patient does not breathe, the machine gives breaths at the set rate. If the patient TRIGGERS a breath, the ventilator still delivers the FULL set breath. So AC provides FULL ventilatory support and minimises the patient's work of breathing — useful at the start of ventilation, in shock, severe ARDS, or when muscles are fatigued.

❌ Why the other options are wrong:
• CPAP with no additional support — CPAP alone gives NO breaths — only a continuous pressure; the patient does all the breathing work.
• Pressure Support Ventilation alone at low levels — Low-level pressure support only assists breaths the patient starts; it is partial support.
• T-piece trial — A T-piece trial gives NO support — it tests the patient's ability to breathe alone.

⭐ Key point: Watch for respiratory alkalosis and auto-PEEP in AC if the patient breathes fast; consider sedation, analgesia or a mode change.$x$, null),
(119, $x$Pressure support ventilation (PSV) requires which patient characteristic to function safely?$x$, $x$Intact spontaneous respiratory drive$x$, $x$✅ Correct answer: Intact spontaneous respiratory drive
In PRESSURE SUPPORT VENTILATION (PSV), the ventilator only HELPS breaths that the PATIENT STARTS. It gives NO mandatory breaths. If the patient's breathing drive is weak or absent (deep sedation, brain injury, neuromuscular blockade), there will be no breaths and the patient can become apnoeic. So PSV requires an INTACT SPONTANEOUS RESPIRATORY DRIVE. It is mainly used for weaning and in awake, spontaneously breathing patients.

❌ Why the other options are wrong:
• Presence of a tracheostomy only — A tracheostomy is not required; PSV can be used with an ET tube or NIV mask.
• Complete absence of spontaneous breathing — PSV cannot be used when there is no spontaneous breathing.
• Paralysis from neuromuscular blockade — Paralysed patients cannot trigger breaths, so PSV would fail.

⭐ Key point: Always set the apnoea alarm and backup ventilation when using PSV.$x$, null),
(120, $x$A ventilated patient develops sudden respiratory distress, high-pressure alarm, and coarse rhonchi audible without a stethoscope. The most appropriate first nursing action is:$x$, $x$Attempt suctioning to clear the airway$x$, $x$✅ Correct answer: Attempt suctioning to clear the airway
SUDDEN RESPIRATORY DISTRESS with a HIGH-PRESSURE alarm and COARSE RHONCHI (audible without a stethoscope) suggest SECRETIONS blocking the airway. The most appropriate first action is to ATTEMPT SUCTIONING to clear the airway.

❌ Why the other options are wrong:
• Sedate the patient more deeply — Sedation doesn't treat the secretions.
• Immediately call for tube reintubation without assessment — Re-intubation without assessment is premature.
• Increase the FiO2 only — Increasing FiO2 alone doesn't remove the obstruction.

⭐ Key point: Pre-oxygenate before suctioning and limit each pass to 10–15 seconds.$x$, null),
(121, $x$A mechanically ventilated patient's arterial blood gas shows respiratory alkalosis (low PaCO2, high pH). This most likely indicates:$x$, $x$Hyperventilation from excessive minute ventilation (rate/tidal volume too high) or patient-driven tachypnea$x$, $x$✅ Correct answer: Hyperventilation from excessive minute ventilation (rate/tidal volume too high) or patient-driven tachypnea
RESPIRATORY ALKALOSIS (low PaCO2, high pH) in a ventilated patient usually means HYPERVENTILATION: either the ventilator settings (rate or tidal volume) are too high, or the patient is breathing fast (pain, anxiety, fever, hypoxia, sepsis).

❌ Why the other options are wrong:
• Metabolic acidosis compensation — Metabolic acidosis compensation would give a LOW pH.
• Underventilation — Under-ventilation causes respiratory ACIDOSIS.
• Correct ventilator settings requiring no change — The settings need review, not "no change".

⭐ Key point: Reduce minute ventilation if ventilator-driven, or treat the cause of patient tachypnoea.$x$, null),
(122, $x$In SIMV (Synchronized Intermittent Mandatory Ventilation) mode, compared to Assist-Control, the patient:$x$, $x$Can take spontaneous breaths between mandatory synchronized breaths, at their own tidal volume$x$, $x$✅ Correct answer: Can take spontaneous breaths between mandatory synchronized breaths, at their own tidal volume
In SIMV, the ventilator gives a SET NUMBER of mandatory breaths, synchronised with the patient's efforts. BETWEEN these breaths, the patient CAN take SPONTANEOUS breaths at their OWN TIDAL VOLUME (often with pressure support). In AC, every triggered breath gets full support.

❌ Why the other options are wrong:
• Receives full ventilator support for every single breath — Full support for every breath is AC.
• Cannot breathe spontaneously at all — The patient can breathe spontaneously in SIMV.
• Is always fully paralysed — Patients are not paralysed in SIMV.

⭐ Key point: SIMV was used for weaning, but spontaneous breathing trials are more effective.$x$, null),
(123, $x$A hypovolaemic patient becomes hypotensive after intubation and positive-pressure ventilation mainly because:$x$, $x$Increased intrathoracic pressure reduces venous return$x$, $x$✅ Correct answer: Increased intrathoracic pressure reduces venous return
POSITIVE-PRESSURE VENTILATION RAISES the pressure inside the chest. This SQUEEZES the large veins and the right atrium, REDUCING VENOUS RETURN to the heart. In a HYPOVOLAEMIC patient (already low blood volume), this further reduces cardiac output and BP. Induction drugs also cause vasodilation.

❌ Why the other options are wrong:
• Heart rate falls — Heart rate usually doesn't fall.
• Contractility increases — Contractility doesn't increase.
• Afterload falls to zero — Afterload doesn't fall to zero.

⭐ Key point: Give fluids and have vasopressors ready before intubating hypovolaemic patients.$x$, null),
(124, $x$When planning nutrition for a mechanically ventilated COPD patient with difficulty weaning, which principle is important?$x$, $x$Avoid overfeeding, particularly excess carbohydrate, since it increases CO2 production and ventilatory demand$x$, $x$✅ Correct answer: Avoid overfeeding, particularly excess carbohydrate, since it increases CO2 production and ventilatory demand
In ventilated COPD patients, OVERFEEDING — especially EXCESS CARBOHYDRATE — increases CO2 PRODUCTION (carbohydrate metabolism produces more CO2 than fat). This increases the work of breathing and makes WEANING harder.

❌ Why the other options are wrong:
• Provide the highest possible carbohydrate load to maximise energy delivery — A high carbohydrate load increases CO2 production.
• Restrict all protein intake to reduce respiratory workload — Protein is needed for muscle strength.
• Nutrition has no effect on ventilatory demand in COPD — Nutrition does affect ventilatory demand.

⭐ Key point: Provide balanced nutrition (adequate protein, avoid overfeeding).$x$, null),
(125, $x$Current ICU sedation guidelines generally favor propofol or dexmedetomidine over benzodiazepine infusions for most mechanically ventilated adults primarily because benzodiazepines are associated with:$x$, $x$Higher rates of ICU delirium$x$, $x$✅ Correct answer: Higher rates of ICU delirium
Current ICU sedation guidelines (e.g. PADIS 2018) recommend PROPOFOL or DEXMEDETOMIDINE rather than BENZODIAZEPINE infusions (e.g. midazolam) for most ventilated adults. Benzodiazepines are associated with HIGHER RATES OF ICU DELIRIUM, deeper and longer sedation (they accumulate, especially in kidney or liver failure), longer ventilation and longer ICU stay. Delirium is linked to higher mortality and long-term cognitive problems.

❌ Why the other options are wrong:
• Lower cost and easier titration — Benzodiazepines may be cheaper, but they are harder, not easier, to titrate because they accumulate.
• Faster awakening times — Benzodiazepines cause SLOWER, not faster, awakening.
• Reduced risk of hypotension — Propofol and dexmedetomidine also cause hypotension; reduced hypotension is not the reason.

⭐ Key point: Benzodiazepines are still preferred for alcohol withdrawal and seizures. Use light sedation (RASS −2 to 0) and daily sedation interruption where appropriate.$x$, null),
(126, $x$A ventilated patient becomes agitated and is pulling at the endotracheal tube. The nurse's priority assessment is to:$x$, $x$Assess for a treatable cause of agitation such as hypoxia, pain, or ventilator asynchrony before increasing restraint or sedation alone$x$, $x$✅ Correct answer: Assess for a treatable cause of agitation such as hypoxia, pain, or ventilator asynchrony before increasing restraint or sedation alone
AGITATION in a ventilated patient may be caused by HYPOXIA, PAIN, VENTILATOR ASYNCHRONY, a full bladder, delirium, or anxiety. The priority is to ASSESS for a TREATABLE CAUSE before increasing restraints or sedation. Ensure the tube is secure and the patient is safe.

❌ Why the other options are wrong:
• Immediately extubate the patient — Immediate extubation without assessment is unsafe.
• Increase the ventilator rate — Increasing the ventilator rate may worsen asynchrony.
• Apply four-point restraints without further assessment — Restraints without assessment may harm the patient.

⭐ Key point: Use validated tools: CPOT/BPS for pain, RASS for sedation, CAM-ICU for delirium.$x$, null),
(127, $x$When caring for a patient on Pressure Control Ventilation (PCV) for ARDS, the nurse should closely monitor:$x$, $x$Exhaled tidal volume, since it varies with changes in lung compliance and resistance$x$, $x$✅ Correct answer: Exhaled tidal volume, since it varies with changes in lung compliance and resistance
In PRESSURE CONTROL VENTILATION, the ventilator delivers a set PRESSURE; the TIDAL VOLUME VARIES with lung COMPLIANCE and RESISTANCE. If the lungs become stiffer or the airway narrower, the tidal volume falls. So the nurse must closely monitor EXHALED TIDAL VOLUME.

❌ Why the other options are wrong:
• Only respiratory rate — Respiratory rate alone is not enough.
• FiO2 alone — FiO2 alone is not enough.
• Only the set pressure, since volume is irrelevant — Volume is very important.

⭐ Key point: Set appropriate low tidal volume alarms in pressure modes.$x$, null),
(128, $x$Using EtCO2 to guide ventilator adjustments in a patient managed with permissive hypercapnia, such as an ARDS lung-protective strategy, provides the benefit of:$x$, $x$Allowing noninvasive, continuous trending of ventilation adequacy to help balance lung-protective settings against acceptable CO2 elevation$x$, $x$✅ Correct answer: Allowing noninvasive, continuous trending of ventilation adequacy to help balance lung-protective settings against acceptable CO2 elevation
In PERMISSIVE HYPERCAPNIA, higher CO2 is accepted to protect the lungs. EtCO2 allows CONTINUOUS, NON-INVASIVE TRENDING of ventilation, helping the team balance lung-protective settings with acceptable CO2 levels between ABGs.

❌ Why the other options are wrong:
• Forcing normalization of PaCO2 at all times — PaCO2 normalisation isn't the goal.
• Preventing any hypercapnia from occurring — Hypercapnia is accepted, not prevented.
• Eliminating the need to check arterial blood gases entirely — ABGs are still needed (EtCO2 underestimates PaCO2 in lung disease).

⭐ Key point: Track the PaCO2–EtCO2 gradient with paired ABGs.$x$, null),
(129, $x$A mechanically ventilated patient's high-pressure alarm sounds repeatedly. On assessment, breath sounds are decreased on the right with tracheal deviation to the left and hyper-resonance on percussion. The nurse should suspect:$x$, $x$Tension pneumothorax on the right$x$, $x$✅ Correct answer: Tension pneumothorax on the right
High-pressure alarms, DECREASED BREATH SOUNDS on the RIGHT, TRACHEAL DEVIATION to the LEFT (away from the affected side), and HYPER-RESONANCE on the right suggest a TENSION PNEUMOTHORAX on the RIGHT. This is life-threatening; it needs immediate needle decompression and a chest drain.

❌ Why the other options are wrong:
• Mucus plug in the right main bronchus — A mucus plug causes dullness, not hyper-resonance, and doesn't push the trachea away.
• Pulmonary oedema — Pulmonary oedema causes crackles, not tracheal deviation.
• Normal ventilator function — This is not normal.

⭐ Key point: Ventilated patients are at high risk of tension pneumothorax — act on clinical signs.$x$, null),
(130, $x$Stress ulcer (gastrointestinal) prophylaxis is routinely recommended for mechanically ventilated patients because:$x$, $x$Critical illness and mechanical ventilation increase risk of stress-related mucosal bleeding$x$, $x$✅ Correct answer: Critical illness and mechanical ventilation increase risk of stress-related mucosal bleeding
CRITICAL ILLNESS and MECHANICAL VENTILATION (over 48 hours) INCREASE the risk of STRESS-RELATED MUCOSAL BLEEDING in the stomach, because of reduced blood flow to the gut lining. Prophylaxis (PPI or H2 blocker) reduces this risk in high-risk patients.

❌ Why the other options are wrong:
• It prevents ventilator-associated pneumonia directly — It doesn't prevent VAP (it may increase VAP risk).
• It replaces the need for enteral nutrition — It doesn't replace enteral nutrition.
• Ventilated patients are at no increased GI bleeding risk — Ventilated patients ARE at increased risk.

⭐ Key point: Review the need for prophylaxis daily; stop it when risk factors resolve.$x$, null),
(131, $x$A patient came to the ER with Difficulty in breathing; He was intubated and placed on Mechanical ventilation. His ABGs report showed that his PCO2 is 55 mm Hg. To wash out CO2 which of the following parameter(s) should be adjusted:$x$, $x$Vt and R/R$x$, $x$✅ Correct answer: Vt and R/R
CO2 removal depends on MINUTE VENTILATION = TIDAL VOLUME (Vt) × RESPIRATORY RATE (R/R). A PaCO2 of 55 mmHg is high (normal 35–45). To "wash out" CO2, INCREASE the RESPIRATORY RATE and/or TIDAL VOLUME. In practice, the rate is usually increased first (within limits that avoid air trapping), while tidal volume is kept within lung-protective limits (6–8 mL/kg PBW; plateau ≤30 cmH2O). Rough guide: new rate = current rate × current PaCO2 ÷ target PaCO2.

❌ Why the other options are wrong:
• Vt and PEEP — PEEP mainly improves OXYGENATION; tidal volume affects CO2, but PEEP does not significantly.
• Fio2 and R/R — FiO2 affects OXYGEN only; it does not wash out CO2.
• PEEP and FiO2 — PEEP and FiO2 both control OXYGENATION, not ventilation.

⭐ Key point: Remember: OXYGENATION = FiO2 + PEEP; VENTILATION (CO2) = RATE + TIDAL VOLUME.$x$, null),
(132, $x$A patient with COPD exacerbation and cardiogenic pulmonary edema who is alert, cooperative, and hemodynamically stable may first be tried on which form of ventilatory support before invasive intubation?$x$, $x$Noninvasive positive pressure ventilation (BiPAP)$x$, $x$✅ Correct answer: Noninvasive positive pressure ventilation (BiPAP)
For an ALERT, COOPERATIVE, HAEMODYNAMICALLY STABLE patient with COPD exacerbation or CARDIOGENIC PULMONARY OEDEMA, NON-INVASIVE POSITIVE PRESSURE VENTILATION (BiPAP or CPAP) should be tried first. It reduces the work of breathing, improves gas exchange, and reduces the need for intubation.

❌ Why the other options are wrong:
• Immediate invasive mechanical ventilation — Immediate invasive ventilation isn't needed for stable patients.
• High-frequency oscillatory ventilation — High-frequency oscillatory ventilation is a rescue mode for severe ARDS.
• Negative pressure ventilation — Negative pressure ventilation is rarely used today.

⭐ Key point: Monitor closely and intubate if NIV fails.$x$, null),
(133, $x$The mode of Mechanical Ventilation in which there is a Preset Breath rate and tidal volume but the patient is able to initiate extra breath which is assisted by the ventilator is called:$x$, $x$ACV$x$, $x$✅ Correct answer: ACV
In ASSIST-CONTROL VENTILATION (ACV), the clinician sets a MINIMUM (preset) RATE and a TIDAL VOLUME (or pressure). The ventilator delivers these mandatory breaths, but the patient CAN TRIGGER EXTRA breaths; each extra breath is ASSISTED with the FULL set tidal volume. This combines guaranteed minimum ventilation with patient comfort.

❌ Why the other options are wrong:
• CMV — CMV (controlled mandatory ventilation) does NOT allow the patient to trigger any breaths.
• PSV — PSV has no preset rate or tidal volume — the patient controls both.
• SIMV — In SIMV, extra breaths are at the patient's OWN tidal volume (sometimes pressure-supported), not the full set volume.

⭐ Key point: ACV is one of the most common modes for initial ventilation in ICU.$x$, null),
(134, $x$During a spontaneous breathing trial a patient breathes at 16/min with a tidal volume of 400 mL. What is the rapid shallow breathing index (RSBI)?$x$, $x$40 — likely to wean successfully$x$, $x$✅ Correct answer: 40 — likely to wean successfully
RAPID SHALLOW BREATHING INDEX (RSBI) = RESPIRATORY RATE ÷ TIDAL VOLUME (in LITRES). Here: 400 mL = 0.4 L, so 16 ÷ 0.4 = 40. An RSBI BELOW 105 suggests the patient is breathing at a comfortable rate with good-sized breaths, so they are LIKELY TO WEAN SUCCESSFULLY. A high RSBI (fast, shallow breathing) suggests the muscles are tiring.

❌ Why the other options are wrong:
• 25 — likely to wean successfully — 25 is a calculation error.
• 6.4 — likely to fail weaning — 6.4 is a calculation error (16 × 0.4).
• 40 — likely to fail weaning — 40 is correct, but it predicts SUCCESS, not failure.

⭐ Key point: RSBI is measured during a short period of spontaneous breathing (on minimal support). Combine it with other signs: alertness, cough strength, secretions, oxygenation and haemodynamic stability.$x$, null),
(135, $x$A patient on PEEP (Positive End-Expiratory Pressure) develops sudden hypotension after the PEEP level is increased. The most likely explanation is:$x$, $x$Increased intrathoracic pressure reducing venous return and cardiac output$x$, $x$✅ Correct answer: Increased intrathoracic pressure reducing venous return and cardiac output
Increasing PEEP RAISES INTRATHORACIC PRESSURE, which squeezes the veins returning blood to the heart, REDUCING VENOUS RETURN and CARDIAC OUTPUT — causing HYPOTENSION, especially in hypovolaemic patients.

❌ Why the other options are wrong:
• An allergic reaction to the ventilator tubing — An allergic reaction to tubing is not likely.
• PEEP has no cardiovascular effects — PEEP does have cardiovascular effects.
• Coincidental, unrelated hypotension — The timing suggests a link to PEEP.

⭐ Key point: Give fluids and adjust PEEP if hypotension occurs; watch BP after every PEEP change.$x$, null),
(136, $x$A ventilated patient has a tidal volume of 350 mL and a rate of 24 breaths/min. What is the minute ventilation?$x$, $x$8.4 L/min$x$, $x$✅ Correct answer: 8.4 L/min
MINUTE VENTILATION = TIDAL VOLUME × RESPIRATORY RATE. Here: 350 mL × 24 breaths/min = 8,400 mL/min. Convert to litres: 8,400 ÷ 1,000 = 8.4 L/min. This is at the upper end of normal (about 5–8 L/min), but notice the breathing pattern is fast and fairly shallow — more of each breath is "wasted" on dead space, so alveolar ventilation is lower than it appears.

❌ Why the other options are wrong:
• 14.58 L/min — 14.58 L/min is a calculation error.
• 10.8 L/min — 10.8 L/min is a calculation error.
• 84 L/min — 84 L/min is a decimal place error (ten times too high).

⭐ Key point: Alveolar ventilation = (tidal volume − dead space) × rate. With 150 mL dead space: (350 − 150) × 24 = 4.8 L/min.$x$, null),
(137, $x$A patient is extubated successfully but develops increasing stridor and respiratory distress within an hour. The nurse should anticipate:$x$, $x$Post-extubation laryngeal oedema/airway swelling, potentially requiring nebulised adrenaline, steroids, or reintubation$x$, $x$✅ Correct answer: Post-extubation laryngeal oedema/airway swelling, potentially requiring nebulised adrenaline, steroids, or reintubation
After extubation, the larynx may be SWOLLEN (laryngeal oedema) from the tube, causing STRIDOR and respiratory distress within hours. Treatment: NEBULISED ADRENALINE (reduces swelling), STEROIDS (dexamethasone), sitting upright, humidified oxygen, and possibly REINTUBATION.

❌ Why the other options are wrong:
• No specific concern, since extubation was successful — Stridor is a serious concern.
• No monitoring is needed for the next several hours — Close monitoring is needed.
• Discharge planning — Discharge planning is inappropriate.

⭐ Key point: A cuff leak test before extubation helps predict laryngeal oedema.$x$, null),
(138, $x$A ventilated patient with bilateral infiltrates on PEEP 10 cmH2O has PaO2 75 mmHg on FiO2 1.0. Using the P/F ratio, how is this classified?$x$, $x$Severe ARDS$x$, $x$✅ Correct answer: Severe ARDS
P/F RATIO = PaO2 ÷ FiO2. Here: 75 mmHg ÷ 1.0 (100% oxygen) = 75. With bilateral infiltrates on PEEP ≥5 (Berlin definition), a P/F of 100 or less is SEVERE ARDS. This means that even on 100% oxygen, the blood oxygen is very low — there is a lot of shunt (blood passing collapsed or fluid-filled alveoli).

❌ Why the other options are wrong:
• Mild ARDS — Mild ARDS is 200–300.
• Normal oxygenation (no ARDS) — Normal oxygenation would be above about 300–400 (on 100% oxygen a healthy person's PaO2 would be over 500).
• Moderate ARDS — Moderate ARDS is 100–200.

⭐ Key point: Severe ARDS treatments: lung-protective ventilation, higher PEEP, PRONE POSITIONING (16+ hours a day), short-term neuromuscular blockade, conservative fluids, and ECMO referral if refractory.$x$, null),
(139, $x$A patient with pulmonary oedema is started on BiPAP. What is the expected physiological benefit?$x$, $x$Reduces work of breathing and improves alveolar recruitment via positive pressure$x$, $x$✅ Correct answer: Reduces work of breathing and improves alveolar recruitment via positive pressure
BiPAP in PULMONARY OEDEMA: the positive pressure REDUCES the WORK OF BREATHING, RECRUITS (re-opens) alveoli, pushes fluid out of the alveoli, and reduces preload and afterload of the left ventricle, improving heart function.

❌ Why the other options are wrong:
• Increases preload to improve cardiac output — BiPAP reduces preload.
• Eliminates the need for diuretic therapy — It doesn't replace diuretics.
• Increases venous return to the right heart — It reduces venous return.

⭐ Key point: Use BiPAP/CPAP early in cardiogenic pulmonary oedema with IV nitrates.$x$, null),
(140, $x$A mechanically ventilated patient in status asthmaticus develops sudden hypotension and increased peak airway pressures. The nurse should first suspect:$x$, $x$Auto-PEEP causing decreased venous return (breath stacking)$x$, $x$✅ Correct answer: Auto-PEEP causing decreased venous return (breath stacking)
In STATUS ASTHMATICUS on a ventilator, the narrowed airways slow exhalation. If each new breath starts before the last one is fully exhaled, air builds up (AUTO-PEEP / BREATH STACKING). This raises pressure inside the chest, which REDUCES VENOUS RETURN to the heart (causing SUDDEN HYPOTENSION) and makes the lungs stiff (INCREASED PEAK PRESSURES). It can also cause barotrauma (pneumothorax). Immediate action: briefly DISCONNECT the ventilator to let the trapped air escape (and gently press on the chest), then reduce the rate and tidal volume and lengthen expiratory time. Also check for tension pneumothorax.

❌ Why the other options are wrong:
• Hypoglycemia — Hypoglycaemia does not cause high airway pressures.
• Ventilator-associated pneumonia — VAP develops over days, not suddenly with hypotension.
• A normal expected ventilator finding — Sudden hypotension and high pressures are never normal.

⭐ Key point: Prevent with a low rate (10–12), small tidal volume, long expiration (I:E 1:4 or more), aggressive bronchodilators, and permissive hypercapnia.$x$, null),
(141, $x$A ventilated patient has tidal volume 400 mL, plateau pressure 22 cmH2O and PEEP 12 cmH2O. What is the static lung compliance?$x$, $x$40 mL/cmH2O$x$, $x$✅ Correct answer: 40 mL/cmH2O
STATIC COMPLIANCE shows how easily the lungs and chest wall stretch. Formula: COMPLIANCE = TIDAL VOLUME ÷ (PLATEAU PRESSURE − PEEP). Here: 400 mL ÷ (22 − 12) cmH2O = 400 ÷ 10 = 40 mL/cmH2O. The bottom part (22 − 12 = 10) is also the DRIVING PRESSURE, which is within the safe target (≤15). Normal static compliance in a ventilated adult is about 50–100 mL/cmH2O, so 40 shows MILDLY REDUCED compliance (slightly stiff lungs).

❌ Why the other options are wrong:
• 25 mL/cmH2O — 25 mL/cmH2O is a calculation error (400 ÷ 16).
• 18.2 mL/cmH2O — 18.2 mL/cmH2O divides by the plateau pressure alone (400 ÷ 22), forgetting to subtract PEEP.
• 11.8 mL/cmH2O — 11.8 mL/cmH2O divides by plateau plus PEEP (400 ÷ 34) — the wrong formula.

⭐ Key point: Watch compliance trends: a falling value means stiffer lungs (worsening ARDS, oedema, pneumothorax, abdominal distension); a rising value means improvement.$x$, null),
(142, $x$A ventilator is set at 10 breaths/min with an inspiratory time of 1.2 seconds. What is the I:E ratio?$x$, $x$1:4$x$, $x$✅ Correct answer: 1:4
STEP 1 — Total time for ONE breath: 60 seconds ÷ 10 breaths/min = 6 seconds per breath. STEP 2 — Expiratory time = total time − inspiratory time = 6 − 1.2 = 4.8 seconds. STEP 3 — I:E ratio = 1.2 : 4.8. Divide both by 1.2 to simplify: 1 : 4. A long expiratory time like this gives plenty of time to breathe out, which is helpful in asthma and COPD to prevent air trapping.

❌ Why the other options are wrong:
• 1:0.8 — 1:0.8 would mean expiration is SHORTER than inspiration — incorrect.
• 4:1 — 4:1 is an "inverse ratio" (inspiration four times longer than expiration) — incorrect.
• 1:6 — 1:6 is a calculation error.

⭐ Key point: Normal I:E is about 1:2. Increasing the rate or the inspiratory time shortens expiration and raises the risk of auto-PEEP.$x$, null),
(143, $x$A patient with a severe traumatic brain injury requires sedation for ventilator tolerance. The team performs a 'neuro wake-up' assessment periodically. The primary purpose of this is to:$x$, $x$Allow accurate ongoing neurological assessment despite the need for sedation$x$, $x$✅ Correct answer: Allow accurate ongoing neurological assessment despite the need for sedation
Patients with SEVERE TRAUMATIC BRAIN INJURY often need sedation to tolerate the ventilator, control ICP and reduce brain oxygen demand. But sedation HIDES the neurological examination — the team cannot tell if the brain is getting worse (e.g. a new bleed). A "NEURO WAKE-UP" test means briefly stopping or reducing sedation to perform an ACCURATE NEUROLOGICAL ASSESSMENT (GCS, pupils, limb movements, obeying commands), then restarting sedation. It must be done only when the ICP is stable and controlled, because waking can raise ICP.

❌ Why the other options are wrong:
• Discharge the patient sooner regardless of status — Wake-up tests are not done to discharge patients sooner regardless of their state.
• Increase sedation requirements — The purpose is not to increase sedation requirements.
• Reduce the need for any imaging — It does not replace imaging; CT is still needed when deterioration is suspected.

⭐ Key point: Stop the wake-up test immediately if ICP rises significantly, the patient becomes distressed, or vital signs become unstable. Many units use continuous ICP monitoring and pupillometry instead in very unstable patients.$x$, null),
(144, $x$A patient with a subarachnoid haemorrhage is prescribed nimodipine. The rationale for this medication is primarily to:$x$, $x$Reduce the risk of cerebral vasospasm and secondary ischaemic injury$x$, $x$✅ Correct answer: Reduce the risk of cerebral vasospasm and secondary ischaemic injury
After SUBARACHNOID HAEMORRHAGE (SAH), blood around the brain arteries can cause them to narrow — CEREBRAL VASOSPASM — usually between days 4 and 14. This can starve parts of the brain of blood, causing DELAYED CEREBRAL ISCHAEMIA (new confusion, weakness, stroke). NIMODIPINE (a calcium channel blocker, 60 mg orally or by NG tube every 4 hours for 21 days) is given from admission because it IMPROVES OUTCOMES and reduces the risk of ischaemic damage. It acts mainly by protecting brain cells and reducing vasospasm effects.

❌ Why the other options are wrong:
• Lower blood pressure aggressively as the main goal — Lowering BP aggressively is NOT the goal — nimodipine can cause hypotension, which must be AVOIDED as it reduces brain blood flow.
• Reduce intracranial pressure directly — Nimodipine does not directly reduce ICP.
• Treat infection — Nimodipine is not an antibiotic.

⭐ Key point: If nimodipine causes hypotension, the dose may be split (30 mg every 2 hours) rather than stopped. Maintain normal blood volume and sodium.$x$, null),
(145, $x$A patient with known oesophageal varices develops sudden haematemesis and hypotension. The nurse's priority actions include:$x$, $x$Secure IV access, prepare for fluid/blood resuscitation, and avoid over-transfusion which can raise portal pressure$x$, $x$✅ Correct answer: Secure IV access, prepare for fluid/blood resuscitation, and avoid over-transfusion which can raise portal pressure
OESOPHAGEAL VARICES are swollen veins in the oesophagus caused by high pressure in the portal vein (portal hypertension), usually from liver cirrhosis. When they bleed, the patient can lose large volumes of blood quickly (HAEMATEMESIS, HYPOTENSION). Priorities: secure the airway if needed, insert TWO LARGE-BORE IV cannulas, take blood (FBC, clotting, crossmatch), and start FLUID and BLOOD RESUSCITATION. However, AVOID OVER-TRANSFUSION: giving too much volume RAISES PORTAL PRESSURE and can restart or worsen bleeding. A restrictive transfusion target (Hb about 70–80 g/L) is used. Give terlipressin and IV antibiotics, and arrange urgent endoscopy for band ligation.

❌ Why the other options are wrong:
• Encourage oral fluids immediately — Oral fluids are dangerous (aspiration, vomiting) and delay endoscopy.
• Give a laxative to clear the bowel — Laxatives are not the priority; lactulose may be used later to prevent hepatic encephalopathy, but not in an emergency.
• Discharge home with outpatient follow-up — Discharge would be fatal — this is a life-threatening emergency.

⭐ Key point: Variceal bleeding has a high mortality; terlipressin and prophylactic antibiotics (e.g. ceftriaxone) reduce death.$x$, null),
(146, $x$A patient in labour has premature rupture of membranes with meconium-stained liquor. This finding is significant because it may indicate:$x$, $x$Possible fetal distress, requiring closer fetal monitoring$x$, $x$✅ Correct answer: Possible fetal distress, requiring closer fetal monitoring
MECONIUM is the baby's first stool. If it passes into the amniotic fluid before birth (MECONIUM-STAINED LIQUOR — green or brown fluid), it can indicate FETAL DISTRESS: low oxygen causes the fetal bowel to contract and the anal sphincter to relax. It is more common in post-term babies. It also carries a risk of MECONIUM ASPIRATION SYNDROME if the baby inhales it. So CLOSER FETAL MONITORING (continuous CTG), assessment of labour progress, and having a neonatal team ready at delivery are needed.

❌ Why the other options are wrong:
• A sign of maternal infection only — Meconium staining is not mainly a sign of maternal infection (although infection should also be considered with prolonged rupture).
• A completely normal, reassuring finding with no significance — It is not a reassuring finding; it needs attention.
• Definite fetal death, requiring no further action — It does not mean the fetus is dead; the fetal heart should be monitored.

⭐ Key point: Thick meconium is more concerning than thin, light staining. Prolonged rupture of membranes also increases the risk of infection.$x$, null),
(147, $x$A patient with acute respiratory failure requires emergent intubation. Which pre-intubation nursing action is most important to optimize outcomes?$x$, $x$Pre-oxygenate with high-flow oxygen or bag-valve-mask prior to intubation$x$, $x$✅ Correct answer: Pre-oxygenate with high-flow oxygen or bag-valve-mask prior to intubation
During intubation, the patient stops breathing for a period (apnoea). PRE-OXYGENATION — breathing 100% oxygen for 3–5 minutes (via a tight-fitting mask, high-flow oxygen, or non-invasive ventilation) before induction — fills the lungs with oxygen (replaces nitrogen in the functional residual capacity). This creates an oxygen "reservoir" that lets the patient tolerate apnoea for longer before oxygen levels fall dangerously. It is the most important step to prevent hypoxia and cardiac arrest during emergency intubation, especially in critically ill patients who desaturate quickly.

❌ Why the other options are wrong:
• Sedate the patient heavily without any oxygen supplementation — Heavy sedation without oxygen causes severe hypoxia.
• Delay intubation until the patient is fully alert — Delaying intubation until the patient is fully alert is inappropriate in respiratory failure.
• Withhold oxygen until the tube is placed to avoid hyperoxia — Withholding oxygen is dangerous; avoiding hypoxia is far more important than avoiding temporary hyperoxia.

⭐ Key point: Also use apnoeic oxygenation (high-flow nasal oxygen during intubation), position the patient head-up, and have suction, airway adjuncts and a difficult airway plan ready.$x$, null),
(148, $x$A patient on long-term corticosteroid therapy for a chronic condition is admitted critically ill. The nurse should anticipate the need for:$x$, $x$Continued (often increased 'stress-dose') steroid coverage, since abrupt withdrawal risks adrenal crisis$x$, $x$✅ Correct answer: Continued (often increased 'stress-dose') steroid coverage, since abrupt withdrawal risks adrenal crisis
Long-term CORTICOSTEROIDS (e.g. prednisolone for asthma, arthritis or autoimmune disease) SUPPRESS the body's own ADRENAL glands. When a patient becomes CRITICALLY ILL (surgery, sepsis, trauma), the body normally needs much more cortisol to cope with stress — but suppressed adrenals cannot produce it. If steroids are stopped suddenly, or not increased, the patient can develop an ADRENAL CRISIS: severe hypotension resistant to fluids and vasopressors, hypoglycaemia, hyponatraemia, hyperkalaemia, and collapse. So the nurse should anticipate CONTINUED, often INCREASED "STRESS-DOSE" STEROIDS (e.g. IV hydrocortisone 50–100 mg every 6–8 hours, or 200 mg/day infusion).

❌ Why the other options are wrong:
• Switching immediately to an unrelated drug class — Switching to an unrelated drug class does not replace cortisol.
• No special consideration regarding steroid dosing — Steroid dosing must be specially considered.
• Abrupt discontinuation of steroids immediately — Abrupt discontinuation risks adrenal crisis.

⭐ Key point: Patients on long-term steroids should carry a steroid card/alert and follow "sick day rules" (double the dose when ill).$x$, null),
(149, $x$A patient with a suspected overdose of unknown substance is unconscious with a GCS of 6 and shallow, slow respirations. What is the most immediate nursing priority?$x$, $x$Prepare for airway protection (e.g., positioning, suction, possible intubation) and provide ventilatory support$x$, $x$✅ Correct answer: Prepare for airway protection (e.g., positioning, suction, possible intubation) and provide ventilatory support
A GCS of 6 means the patient is deeply unconscious and CANNOT PROTECT THE AIRWAY (risk of obstruction by the tongue and aspiration of vomit). SHALLOW, SLOW BREATHING means RESPIRATORY DEPRESSION with high CO2 and low oxygen. The most immediate priority is AIRWAY and BREATHING: position the patient (head tilt/chin lift, recovery position if appropriate), suction, give oxygen, support breathing with bag-mask ventilation, and prepare for INTUBATION. Also check glucose and consider naloxone if opioid toxicity is possible.

❌ Why the other options are wrong:
• Send the patient for an urgent CT scan of the head — A CT scan is important but must not happen before the airway is secured.
• Administer activated charcoal orally — Activated charcoal must NEVER be given to a patient who cannot protect their airway (aspiration risk).
• Obtain a detailed medication history from family — A medication history is helpful, but ABC comes first.

⭐ Key point: "GCS 8 — intubate": a GCS of 8 or less usually means the airway needs protection.$x$, null),
(150, $x$A patient's renal function tests show a rising creatinine and urea with oliguria following a major surgery complicated by hypotension. This presentation is most consistent with:$x$, $x$Acute kidney injury, likely pre-renal from hypoperfusion$x$, $x$✅ Correct answer: Acute kidney injury, likely pre-renal from hypoperfusion
ACUTE KIDNEY INJURY (AKI) is a sudden fall in kidney function, shown by a RISING CREATININE and UREA and/or REDUCED URINE OUTPUT (oliguria). After MAJOR SURGERY complicated by HYPOTENSION, the kidneys have not received enough blood flow (HYPOPERFUSION), so this is most likely PRE-RENAL AKI. If the hypoperfusion lasts long enough, it can progress to acute tubular necrosis (intrinsic AKI). Treatment: restore circulating volume and BP, stop nephrotoxic drugs, monitor fluid balance and electrolytes.

❌ Why the other options are wrong:
• Diabetes insipidus — Diabetes insipidus causes POLYURIA (large volumes of dilute urine), not oliguria.
• Chronic kidney disease of long standing — Chronic kidney disease develops over months to years.
• Normal post-operative recovery — Rising creatinine with oliguria is not normal recovery.

⭐ Key point: KDIGO AKI criteria: creatinine rise ≥26.5 µmol/L within 48 hours, or ≥1.5 times baseline within 7 days, or urine output <0.5 mL/kg/hr for 6 hours.$x$, null),
(151, $x$A patient receiving IV nitroglycerin for cardiogenic pulmonary oedema develops a blood pressure of 82/50 mmHg. What is the nurse's priority action?$x$, $x$Stop or slow the infusion and reassess blood pressure$x$, $x$✅ Correct answer: Stop or slow the infusion and reassess blood pressure
GLYCERYL TRINITRATE (GTN, nitroglycerin) dilates veins and arteries, which reduces preload and afterload — helpful in pulmonary oedema. But it also LOWERS BP. A BP of 82/50 mmHg (systolic below 90) is too low and may reduce blood flow to the heart, brain and kidneys. The priority is to STOP or SLOW the infusion and REASSESS the BP (it usually recovers quickly because GTN has a short half-life), then notify the doctor.

❌ Why the other options are wrong:
• Administer a fluid bolus and continue the infusion unchanged — A fluid bolus could worsen pulmonary oedema, and continuing the infusion unchanged would keep BP low.
• Switch to sublingual nitroglycerin — Sublingual GTN would lower BP further.
• Increase the infusion rate to improve cardiac output — Increasing the infusion would worsen hypotension.

⭐ Key point: Check BP every 5–15 minutes when starting or changing GTN. Avoid GTN in patients who have taken sildenafil or tadalafil.$x$, null),
(152, $x$A patient's SpO2 reads 99% but the patient appears cyanotic, confused, and has recently been exposed to carbon monoxide. The nurse should recognise that:$x$, $x$Standard pulse oximetry cannot distinguish oxyhaemoglobin from carboxyhaemoglobin, so a falsely reassuring high reading is possible in CO poisoning$x$, $x$✅ Correct answer: Standard pulse oximetry cannot distinguish oxyhaemoglobin from carboxyhaemoglobin, so a falsely reassuring high reading is possible in CO poisoning
CARBON MONOXIDE (CO) binds strongly to haemoglobin, forming CARBOXYHAEMOGLOBIN (COHb), which cannot carry oxygen. STANDARD PULSE OXIMETERS use only two wavelengths of light and CANNOT tell COHb from oxyhaemoglobin — both look "red" to the sensor. So the oximeter shows a FALSELY HIGH SpO2 (e.g. 99%), while the patient is actually severely hypoxic at the tissue level. Confusion is a sign of brain hypoxia. Measure COHb with a CO-oximeter (on a blood gas analyser), and give 100% oxygen via a non-rebreather mask.

❌ Why the other options are wrong:
• The SpO2 reading is definitely accurate and reassuring — The SpO2 reading is NOT reliable in CO poisoning.
• No further assessment is needed given the good SpO2 — Further assessment and treatment are urgently needed.
• Cyanosis always confirms the oximeter is broken — Cyanosis does not mean the oximeter is broken; it shows the patient is unwell (CO victims may also appear cherry-red).

⭐ Key point: Generators, charcoal stoves and fires in closed spaces are common causes of CO poisoning in Nigeria. Consider hyperbaric oxygen for severe cases.$x$, null),
(153, $x$A patient recovering from a head injury is assessed to have decerebrate posturing (extension of all four limbs) in response to painful stimuli. This indicates:$x$, $x$More severe brainstem dysfunction, generally a worse prognosis than decorticate posturing$x$, $x$✅ Correct answer: More severe brainstem dysfunction, generally a worse prognosis than decorticate posturing
DECEREBRATE POSTURING is EXTENSION of all four limbs to painful stimuli (arms straightened and rotated inwards, legs extended, toes pointed). It indicates damage at the level of the BRAINSTEM (midbrain/pons) — LOWER and MORE SEVERE than decorticate posturing (flexion of the arms, which indicates damage above the brainstem). Decerebrate posturing carries a WORSE PROGNOSIS. On the GCS, decerebrate = motor score 2; decorticate = 3.

❌ Why the other options are wrong:
• A better prognosis than decorticate posturing — Decerebrate has a WORSE, not better, prognosis than decorticate.
• Normal neurological function — It is never normal.
• No clinical relevance — It is very clinically relevant — it may signal impending herniation.

⭐ Key point: A change from decorticate to decerebrate posturing is a sign of worsening brain injury — report immediately.$x$, null),
(154, $x$A patient receiving an intra-aortic balloon pump (IABP) suddenly develops a cold, pulseless left leg. The nurse should suspect:$x$, $x$Limb ischaemia from the IABP catheter, requiring urgent assessment and intervention$x$, $x$✅ Correct answer: Limb ischaemia from the IABP catheter, requiring urgent assessment and intervention
An INTRA-AORTIC BALLOON PUMP (IABP) catheter is inserted through the FEMORAL ARTERY into the descending aorta. It can BLOCK or reduce blood flow to the leg, cause clots, or dissect the artery, leading to LIMB ISCHAEMIA: a COLD, PALE, PULSELESS leg with pain, numbness and weakness. This is an emergency — check pulses (Doppler), colour, temperature, sensation and movement, and notify the doctor urgently (the IABP may need removal or repositioning).

❌ Why the other options are wrong:
• An allergic reaction to the dressing — An allergic reaction to the dressing would cause local itching and rash, not a pulseless leg.
• Normal side effect requiring no action — A cold, pulseless leg is never a normal side effect.
• A simple positioning issue with no urgency — It is not a simple positioning issue; it needs urgent action.

⭐ Key point: Check distal pulses and limb perfusion (hourly) in patients with an IABP. Keep the leg straight and avoid hip flexion beyond 30°.$x$, null),
(155, $x$A patient's coagulation panel shows a markedly prolonged PT/INR with normal aPTT. This pattern most specifically suggests an abnormality in:$x$, $x$The extrinsic coagulation pathway (e.g. Factor VII deficiency or warfarin effect)$x$, $x$✅ Correct answer: The extrinsic coagulation pathway (e.g. Factor VII deficiency or warfarin effect)
The PT/INR (prothrombin time) tests the EXTRINSIC pathway (Factor VII) and the common pathway (Factors X, V, II, fibrinogen). The aPTT tests the INTRINSIC pathway (Factors XII, XI, IX, VIII) and the common pathway. A PROLONGED PT/INR with NORMAL aPTT points to a problem in the EXTRINSIC pathway — e.g. FACTOR VII deficiency, WARFARIN effect (Factor VII has the shortest half-life, so it falls first), early VITAMIN K deficiency, or early liver disease.

❌ Why the other options are wrong:
• The intrinsic coagulation pathway only — Intrinsic pathway problems prolong the aPTT (e.g. heparin, haemophilia).
• Platelet function only — Platelet function problems do not prolong the PT/INR.
• No coagulation abnormality — A markedly prolonged PT/INR IS a coagulation abnormality.

⭐ Key point: Warfarin is reversed with vitamin K and prothrombin complex concentrate (PCC).$x$, null),
(156, $x$A patient develops new left-sided facial droop, arm weakness, and slurred speech that resolves completely within 20 minutes. This presentation is most consistent with:$x$, $x$A Transient Ischaemic Attack (TIA), which still requires urgent evaluation given high subsequent stroke risk$x$, $x$✅ Correct answer: A Transient Ischaemic Attack (TIA), which still requires urgent evaluation given high subsequent stroke risk
A TRANSIENT ISCHAEMIC ATTACK (TIA) causes stroke-like symptoms (facial droop, arm weakness, slurred speech) that RESOLVE COMPLETELY, usually within minutes to an hour. Although symptoms go away, a TIA is a WARNING sign: the risk of a full stroke is high, especially in the next 48 hours to 7 days. It needs URGENT evaluation (brain imaging, carotid Doppler, ECG for AF, blood tests) and preventive treatment (antiplatelets, statins, BP control, anticoagulation if AF).

❌ Why the other options are wrong:
• Normal ageing — Stroke-like symptoms are not normal ageing.
• A migraine with no further evaluation needed — Migraine can cause neurological symptoms, but this should not be assumed without evaluation.
• A completed stroke with permanent deficit — A completed stroke has permanent deficits, which are not present here.

⭐ Key point: Use the FAST test (Face, Arms, Speech, Time) to recognise stroke and TIA, and treat every episode as an emergency.$x$, null),
(157, $x$A patient with an infected surgical wound has cultures growing Pseudomonas aeruginosa resistant to multiple antibiotics. The nurse should anticipate:$x$, $x$Contact precautions in addition to standard precautions, given the multidrug-resistant organism$x$, $x$✅ Correct answer: Contact precautions in addition to standard precautions, given the multidrug-resistant organism
MULTIDRUG-RESISTANT (MDR) Pseudomonas aeruginosa can spread from patient to patient via hands, equipment and the environment (it survives in moist areas). The nurse should use CONTACT PRECAUTIONS in addition to standard precautions: single room or cohorting, gloves and gown/apron for contact with the patient or their surroundings, dedicated equipment, strict hand hygiene, and thorough environmental cleaning.

❌ Why the other options are wrong:
• Standard precautions alone are sufficient with no additional measures — Standard precautions alone are not enough for MDR organisms.
• No precautions are necessary since it is only a wound infection — Precautions are necessary to protect other patients.
• Airborne precautions specifically — Pseudomonas is not airborne; airborne precautions are not specifically required.

⭐ Key point: Inform the infection prevention team, and follow antibiotic stewardship guidance.$x$, null),
(158, $x$A patient in the PACU has a pulse oximetry reading of 90% on room air, with shallow respirations and drowsiness after opioid analgesia. The nurse's priority action is to:$x$, $x$Stimulate the patient, apply supplemental oxygen, and consider naloxone per protocol while notifying the anaesthetist$x$, $x$✅ Correct answer: Stimulate the patient, apply supplemental oxygen, and consider naloxone per protocol while notifying the anaesthetist
After OPIOID analgesia, a DROWSY patient with SHALLOW breathing and SpO2 90% on room air has OPIOID-INDUCED RESPIRATORY DEPRESSION. Priority actions: STIMULATE the patient (call their name, gentle shake), encourage deep breaths, open the airway, APPLY SUPPLEMENTAL OXYGEN, monitor respiratory rate, SpO2 and sedation score, and CONSIDER NALOXONE (per protocol) if breathing does not improve, while NOTIFYING THE ANAESTHETIST.

❌ Why the other options are wrong:
• Increase the opioid dose to help the patient rest — Increasing the opioid would worsen respiratory depression.
• Discharge the patient to the ward immediately — Discharging to the ward is unsafe until breathing and sedation improve.
• Document and reassess in one hour — Waiting an hour could allow respiratory arrest.

⭐ Key point: Naloxone may wear off before the opioid — observe closely after reversal.$x$, null),
(159, $x$A patient with suspected mushroom poisoning develops severe gastroenteritis 6-24 hours after ingestion, followed by signs of liver failure over the next several days. Which type of mushroom toxin is most likely responsible?$x$, $x$Amatoxin-containing mushrooms (e.g., Amanita phalloides)$x$, $x$✅ Correct answer: Amatoxin-containing mushrooms (e.g., Amanita phalloides)
AMATOXIN-containing mushrooms (e.g. AMANITA PHALLOIDES, "death cap") cause a typical pattern: a symptom-free delay of 6–24 HOURS, then severe GASTROENTERITIS (vomiting, watery diarrhoea), an apparent improvement, then ACUTE LIVER FAILURE (jaundice, coagulopathy, encephalopathy) over the next few days. Amatoxins block protein synthesis in liver cells. It can be fatal; liver transplant may be needed.

❌ Why the other options are wrong:
• Ibotenic acid-containing mushrooms — Ibotenic acid mushrooms cause early (within 2 hours) neurological symptoms (confusion, hallucinations).
• Muscarine-containing mushrooms — Muscarine mushrooms cause early cholinergic symptoms (sweating, salivation).
• Psilocybin-containing mushrooms — Psilocybin causes hallucinations.

⭐ Key point: Late-onset gastrointestinal symptoms (after 6 hours) after eating wild mushrooms suggest dangerous toxins.$x$, null),
(160, $x$Primary hyperaldosteronism (Conn syndrome) classically presents with which combination of findings?$x$, $x$Hypertension, hypokalemia, and metabolic alkalosis with suppressed plasma renin$x$, $x$✅ Correct answer: Hypertension, hypokalemia, and metabolic alkalosis with suppressed plasma renin
PRIMARY HYPERALDOSTERONISM (CONN SYNDROME) is excess ALDOSTERONE production by the adrenal glands (usually an adenoma). Aldosterone makes the kidneys retain SODIUM and water (causing HYPERTENSION) and excrete POTASSIUM and hydrogen ions (causing HYPOKALAEMIA and METABOLIC ALKALOSIS). The high BP and volume SUPPRESS RENIN.

❌ Why the other options are wrong:
• Hypotension, hyperkalemia, and metabolic acidosis with elevated renin — Hypotension, hyperkalaemia and acidosis describe aldosterone DEFICIENCY (e.g. Addison's).
• Hypertension with elevated renin and elevated aldosterone — Hypertension with high renin and high aldosterone describes SECONDARY hyperaldosteronism (e.g. renal artery stenosis).
• Normal blood pressure with hyperkalemia — Normal BP with hyperkalaemia is not typical.

⭐ Key point: Suspect Conn syndrome in hypertensive patients with low potassium or resistant hypertension.$x$, null),
(161, $x$A patient with acute severe asthma has a silent chest on auscultation. The nurse should interpret this as:$x$, $x$An ominous sign of minimal air movement/impending respiratory failure$x$, $x$✅ Correct answer: An ominous sign of minimal air movement/impending respiratory failure
In ACUTE SEVERE ASTHMA, a SILENT CHEST means so little air is moving that wheeze can no longer be heard. It is an OMINOUS (very dangerous) sign of severe airway obstruction, exhaustion and IMPENDING RESPIRATORY FAILURE. The patient needs urgent senior help and ICU review.

❌ Why the other options are wrong:
• Normal findings for an asthmatic patient — It is not normal in an asthmatic.
• A sign of over-treatment with bronchodilators — It is not a sign of over-treatment.
• A reassuring sign that the asthma is resolving — It is not reassuring.

⭐ Key point: Other life-threatening signs: SpO2 below 92%, PEF below 33%, cyanosis, exhaustion, confusion, hypotension.$x$, null),
(162, $x$A patient with acute cardiogenic pulmonary oedema presents with pink frothy sputum, orthopnea, and bilateral crackles. Which hemodynamic mechanism best explains the fluid accumulation?$x$, $x$Increased pulmonary capillary hydrostatic pressure from left ventricular failure$x$, $x$✅ Correct answer: Increased pulmonary capillary hydrostatic pressure from left ventricular failure
In CARDIOGENIC PULMONARY OEDEMA, the LEFT VENTRICLE FAILS, so pressure builds up in the left atrium and the lung veins. This INCREASED PULMONARY CAPILLARY HYDROSTATIC PRESSURE pushes fluid out of the capillaries into the lung tissue and alveoli, causing PINK FROTHY SPUTUM, ORTHOPNOEA and BILATERAL CRACKLES.

❌ Why the other options are wrong:
• Increased pulmonary capillary permeability from sepsis — Increased capillary permeability is the mechanism in ARDS (non-cardiogenic).
• Decreased plasma oncotic pressure from hypoalbuminemia — Low oncotic pressure causes oedema in liver or kidney disease.
• Lymphatic obstruction from mediastinal malignancy — Lymphatic obstruction is a rare cause.

⭐ Key point: Treat with upright positioning, oxygen/CPAP, IV nitrates and diuretics.$x$, null),
(163, $x$A patient presents with dry flushed skin, dilated pupils, urinary retention, hyperthermia, tachycardia, and confusion after ingesting an unknown substance. This presentation is most consistent with which toxidrome?$x$, $x$Anticholinergic toxidrome$x$, $x$✅ Correct answer: Anticholinergic toxidrome
The ANTICHOLINERGIC TOXIDROME (e.g. from antihistamines, tricyclic antidepressants, atropine, datura plants) causes: DRY FLUSHED SKIN ("dry as a bone, red as a beet"), DILATED PUPILS ("blind as a bat"), HYPERTHERMIA ("hot as a hare"), CONFUSION ("mad as a hatter"), URINARY RETENTION ("full as a flask"), and TACHYCARDIA.

❌ Why the other options are wrong:
• Cholinergic toxidrome — Cholinergic toxidrome causes the OPPOSITE: secretions, small pupils, bradycardia.
• Sedative-hypnotic toxidrome — Sedative-hypnotic toxidrome causes CNS and respiratory depression.
• Opioid toxidrome — Opioid toxidrome causes pinpoint pupils and respiratory depression.

⭐ Key point: The key difference from the sympathomimetic toxidrome is DRY skin (no sweating).$x$, null),
(164, $x$A patient with severe acute pancreatitis has hypocalcaemia. This is primarily explained by:$x$, $x$Calcium being consumed in saponification (fat necrosis) reactions within the abdomen$x$, $x$✅ Correct answer: Calcium being consumed in saponification (fat necrosis) reactions within the abdomen
In SEVERE ACUTE PANCREATITIS, pancreatic enzymes digest fat around the pancreas (FAT NECROSIS). The released fatty acids bind CALCIUM to form insoluble "soaps" (SAPONIFICATION). This removes calcium from the blood, causing HYPOCALCAEMIA. It indicates severe disease.

❌ Why the other options are wrong:
• A pre-existing unrelated condition — It is directly related to the pancreatitis.
• Excess dietary calcium intake — Excess dietary calcium does not cause hypocalcaemia.
• Overactive parathyroid glands — Overactive parathyroid glands cause HIGH calcium.

⭐ Key point: Monitor calcium and correct with IV calcium gluconate if symptomatic.$x$, null),
(165, $x$A patient presents with poisoning from ingestion of a substance containing methanol found in illicitly distilled alcohol ('moonshine'). Which clinical feature is a classic warning sign of methanol toxicity?$x$, $x$Visual disturbances or blindness due to optic nerve toxicity from formic acid accumulation$x$, $x$✅ Correct answer: Visual disturbances or blindness due to optic nerve toxicity from formic acid accumulation
METHANOL (in illicitly distilled alcohol) is converted by the liver to FORMIC ACID, which damages the OPTIC NERVE and retina, causing VISUAL DISTURBANCES ("snowstorm vision", blurred vision) and BLINDNESS. It also causes severe high anion gap metabolic acidosis.

❌ Why the other options are wrong:
• Excessive salivation and lacrimation — Excessive salivation and lacrimation suggest cholinergic poisoning.
• Bright red skin discolouration — Bright red skin suggests cyanide or CO.
• Pinpoint pupils — Pinpoint pupils suggest opioids.

⭐ Key point: Treat with fomepizole or ethanol, bicarbonate, folic acid, and haemodialysis.$x$, null),
(166, $x$A patient with heart failure receiving digoxin has a potassium level of 3.0mmol/L. The nurse should recognise this combination as significant because it:$x$, $x$Increases the risk of digoxin toxicity and arrhythmia$x$, $x$✅ Correct answer: Increases the risk of digoxin toxicity and arrhythmia
DIGOXIN competes with potassium for binding to the sodium-potassium pump in heart cells. When POTASSIUM is LOW (3.0 mmol/L), digoxin binds more strongly, INCREASING TOXICITY and the risk of ARRHYTHMIAS (e.g. ventricular ectopics, bigeminy, VT, heart block).

❌ Why the other options are wrong:
• Reduces the risk of digoxin toxicity — Low potassium increases, not reduces, toxicity.
• Only affects blood pressure, not cardiac rhythm — It affects heart rhythm.
• Has no bearing on digoxin's effect — Potassium has a major effect on digoxin.

⭐ Key point: Keep potassium above 4.0 mmol/L in patients on digoxin.$x$, null),
(167, $x$A patient with cardiac tamponade would be expected to show which combination of findings (Beck's Triad)?$x$, $x$Hypotension, jugular venous distension, muffled heart sounds$x$, $x$✅ Correct answer: Hypotension, jugular venous distension, muffled heart sounds
BECK'S TRIAD indicates CARDIAC TAMPONADE (fluid compressing the heart): HYPOTENSION (low cardiac output), JUGULAR VENOUS DISTENSION (blood backs up), and MUFFLED HEART SOUNDS (fluid dampens sound).

❌ Why the other options are wrong:
• Fever, cough, wheeze — Fever, cough and wheeze suggest respiratory infection.
• Polyuria, polydipsia, weight loss — Polyuria, polydipsia and weight loss suggest diabetes.
• Hypertension, bradycardia, loud heart sounds — Hypertension, bradycardia and loud heart sounds are not tamponade signs.

⭐ Key point: Pulsus paradoxus (BP drop >10 mmHg on inspiration) is another sign. Treat with pericardiocentesis.$x$, null),
(168, $x$A patient six hours post-thyroidectomy develops increasing neck swelling and stridor. The nurse's priority action is to:$x$, $x$Call for immediate help, sit the patient upright, give high-flow oxygen, and prepare for emergency wound release if instructed$x$, $x$✅ Correct answer: Call for immediate help, sit the patient upright, give high-flow oxygen, and prepare for emergency wound release if instructed
INCREASING NECK SWELLING and STRIDOR after THYROIDECTOMY suggest a HAEMATOMA (bleeding) compressing the airway. This is a life-threatening emergency. CALL FOR IMMEDIATE HELP, SIT THE PATIENT UPRIGHT, give HIGH-FLOW OXYGEN, and prepare to RELEASE the wound (open skin and muscle sutures — "SCOOP": skin exposure, cut sutures, open skin, open muscles, pack wound) to evacuate the blood if instructed.

❌ Why the other options are wrong:
• Reassure the patient this is normal post-operative swelling with no action needed — It is not normal swelling.
• Discharge the patient home for outpatient follow-up — Discharge would be fatal.
• Apply a tight neck dressing to control swelling — A tight dressing would worsen airway compression.

⭐ Key point: Keep a suture removal kit at the bedside after thyroid surgery.$x$, null),
(169, $x$A patient's spinal cord injury results in preserved diaphragmatic breathing but loss of intercostal muscle function and all function below the upper chest. This is most consistent with an injury at approximately which level?$x$, $x$C6-C8/T1$x$, $x$✅ Correct answer: C6-C8/T1
The DIAPHRAGM is supplied by the phrenic nerve (C3–C5), so diaphragmatic breathing is PRESERVED in injuries below C5. INTERCOSTAL MUSCLES are supplied by thoracic nerves (T1–T12), so an injury around C6–C8/T1 causes LOSS OF INTERCOSTAL function and function below the upper chest.

❌ Why the other options are wrong:
• C1-C2 — C1–C2 injuries paralyse the diaphragm.
• T12-L1 — T12–L1 injuries preserve the intercostals.
• S2-S4 — S2–S4 injuries affect the bladder, bowel and sexual function.

⭐ Key point: Patients with lower cervical injuries breathe with the diaphragm alone and have a weak cough — monitor vital capacity.$x$, null),
(170, $x$A patient with severe liver disease develops ascites and peripheral oedema. The nurse understands this is partly explained by the liver's reduced synthesis of:$x$, $x$Albumin, reducing plasma oncotic pressure and allowing fluid to shift into tissues/peritoneal cavity$x$, $x$✅ Correct answer: Albumin, reducing plasma oncotic pressure and allowing fluid to shift into tissues/peritoneal cavity
The LIVER makes ALBUMIN, the main protein that holds fluid inside blood vessels (ONCOTIC PRESSURE). In severe liver disease, albumin falls, oncotic pressure drops, and fluid leaks into tissues (PERIPHERAL OEDEMA) and the abdomen (ASCITES). Portal hypertension also contributes.

❌ Why the other options are wrong:
• Insulin only — The liver doesn't make insulin (the pancreas does).
• Red blood cells — Red blood cells are made in bone marrow.
• White blood cells — White blood cells are made in bone marrow.

⭐ Key point: Treat ascites with salt restriction, diuretics (spironolactone), and paracentesis with albumin.$x$, null),
(171, $x$Primary hyperparathyroidism, most commonly caused by a solitary parathyroid adenoma, classically presents with which laboratory pattern?$x$, $x$Elevated serum calcium with elevated or inappropriately normal PTH$x$, $x$✅ Correct answer: Elevated serum calcium with elevated or inappropriately normal PTH
PRIMARY HYPERPARATHYROIDISM (usually a parathyroid adenoma) causes HIGH CALCIUM with HIGH or INAPPROPRIATELY NORMAL PTH. Normally, high calcium suppresses PTH; in this condition, PTH is not suppressed.

❌ Why the other options are wrong:
• Low serum calcium with low PTH — Low calcium with low PTH is hypoparathyroidism.
• Elevated serum calcium with suppressed PTH — High calcium with suppressed PTH suggests other causes (e.g. cancer).
• Low serum calcium with elevated PTH — Low calcium with high PTH is secondary hyperparathyroidism (e.g. kidney disease, vitamin D deficiency).

⭐ Key point: Symptoms: "bones, stones, groans, moans" — bone pain, kidney stones, abdominal pain, depression.$x$, null),
(172, $x$A patient with a severe brain injury is noted to have a rising temperature unrelated to infection. The nurse understands this can occur due to:$x$, $x$Hypothalamic dysfunction from the injury itself, sometimes called 'central fever'$x$, $x$✅ Correct answer: Hypothalamic dysfunction from the injury itself, sometimes called 'central fever'
The HYPOTHALAMUS controls body temperature. In severe brain injury, damage to the hypothalamus can cause FEVER without infection — "CENTRAL" (neurogenic) FEVER. However, infection must still be ruled out.

❌ Why the other options are wrong:
• Simple dehydration only — Dehydration may contribute but is not the only cause.
• No relationship between brain injury and temperature regulation — Brain injury can affect temperature regulation.
• Always indicates infection with no other cause possible — Fever does not always indicate infection.

⭐ Key point: Fever worsens brain injury — keep temperature normal (cooling, antipyretics).$x$, null),
(173, $x$A patient's angina is unrelieved after 3 sublingual nitroglycerin tablets taken 5 minutes apart. The priority nursing action is to:$x$, $x$Notify the provider/activate emergency response and evaluate for acute MI$x$, $x$✅ Correct answer: Notify the provider/activate emergency response and evaluate for acute MI
If chest pain is NOT RELIEVED after 3 sublingual GTN doses 5 minutes apart, it may be an ACUTE MYOCARDIAL INFARCTION (heart attack). NOTIFY THE PROVIDER/ACTIVATE EMERGENCY RESPONSE, perform a 12-lead ECG, give aspirin (if not contraindicated), oxygen if hypoxic, and prepare for cardiac care.

❌ Why the other options are wrong:
• Administer a 4th tablet and wait 15 more minutes — A 4th tablet and waiting delays treatment.
• Encourage the patient to walk to reduce anxiety — Walking increases heart workload.
• Document and reassess in 1 hour — Waiting an hour risks heart muscle death.

⭐ Key point: "Time is muscle" — rapid reperfusion saves heart tissue.$x$, null),
(174, $x$A patient with clear fluid draining from the nose after head trauma should be assessed for:$x$, $x$Cerebrospinal fluid rhinorrhoea, a sign of possible skull base fracture with dural tear$x$, $x$✅ Correct answer: Cerebrospinal fluid rhinorrhoea, a sign of possible skull base fracture with dural tear
CLEAR FLUID from the nose after head trauma may be CEREBROSPINAL FLUID (CSF RHINORRHOEA), indicating a SKULL BASE FRACTURE with a tear in the dura. This increases the risk of MENINGITIS. Test the fluid for glucose or beta-2 transferrin, and avoid nasal tubes and suctioning.

❌ Why the other options are wrong:
• No clinical significance — It is clinically significant.
• A common cold unrelated to the trauma — It is unlikely to be a cold.
• Simple allergic rhinitis with no further concern — Allergic rhinitis is not the cause.

⭐ Key point: Other signs of skull base fracture: raccoon eyes, Battle's sign, haemotympanum, CSF otorrhoea.$x$, null),
(175, $x$A 55 year old male patient is admitted with a massive GI bleed. The patient is at risk for what type of acute kidney injury?$x$, $x$Pre-renal$x$, $x$✅ Correct answer: Pre-renal
A MASSIVE GI BLEED causes HYPOVOLAEMIA (loss of circulating blood). The kidneys receive less blood flow, so the glomerular filtration rate falls — this is PRE-RENAL AKI. At first the kidneys themselves are not damaged; urine output falls, urine is concentrated with low sodium (the kidneys are trying to save water and salt), and the urea rises more than creatinine (also from digested blood in the gut). If hypoperfusion continues, it can progress to acute tubular necrosis (intrinsic damage).

❌ Why the other options are wrong:
• Intrinsic renal — Intrinsic renal AKI is direct damage to the kidney tissue (e.g. ATN, glomerulonephritis, nephrotoxins).
• Intra-renal — Intra-renal is another name for intrinsic renal AKI.
• Post-renal — Post-renal AKI is caused by obstruction to urine outflow (e.g. enlarged prostate, blocked catheter).

⭐ Key point: Rapid restoration of blood volume (fluids and blood transfusion) and stopping the bleeding can reverse pre-renal AKI before permanent damage occurs.$x$, null),
(176, $x$A patient on CRRT (Continuous Renal Replacement Therapy) develops a sudden drop in filter/circuit pressure with visible clotting in the circuit. The nurse's priority action is to:$x$, $x$Assess anticoagulation status, notify the team, and prepare for circuit change per protocol, since a clotted circuit stops effective filtration$x$, $x$✅ Correct answer: Assess anticoagulation status, notify the team, and prepare for circuit change per protocol, since a clotted circuit stops effective filtration
A CLOTTED CRRT circuit STOPS effective filtration and wastes blood (the blood in the circuit is lost). The nurse should ASSESS ANTICOAGULATION (e.g. citrate levels, heparin dose), NOTIFY the team, and PREPARE for a CIRCUIT CHANGE per protocol. Blood may be returned to the patient if possible before the circuit clots completely.

❌ Why the other options are wrong:
• Disconnect the patient permanently from all renal support — Permanently disconnecting renal support is inappropriate.
• Continue therapy unchanged — Continuing unchanged wastes blood.
• Increase the blood flow rate significantly without assessment — Increasing blood flow without assessment is unsafe.

⭐ Key point: Prevent clotting with adequate anticoagulation, good catheter flow, and minimising interruptions.$x$, null),
(177, $x$A patient with a history of asthma receiving nebulized acetylcysteine should be monitored closely for:$x$, $x$Bronchospasm$x$, $x$✅ Correct answer: Bronchospasm
ACETYLCYSTEINE (N-acetylcysteine) given by NEBULISER breaks down thick mucus (mucolytic). However, it can IRRITATE the airways and trigger BRONCHOSPASM — especially in patients with ASTHMA or reactive airways. Signs: wheeze, chest tightness, increased work of breathing, falling SpO2. Many protocols give a bronchodilator (e.g. salbutamol) before or with nebulised acetylcysteine, and monitor closely.

❌ Why the other options are wrong:
• Hypertension — Acetylcysteine does not typically cause hypertension.
• Hyperkalemia — It does not cause hyperkalaemia.
• Serotonin syndrome — It does not cause serotonin syndrome.

⭐ Key point: IV acetylcysteine (for paracetamol overdose) can cause anaphylactoid reactions (rash, bronchospasm, hypotension) — slow or pause the infusion if this occurs.$x$, null),
(178, $x$A patient with pneumonia develops persistent fever, pleuritic chest pain, and a loculated pleural fluid collection with low pH and low glucose on pleural fluid analysis. This is most consistent with:$x$, $x$Empyema (infected pleural effusion)$x$, $x$✅ Correct answer: Empyema (infected pleural effusion)
An EMPYEMA is an INFECTED pleural effusion (pus in the pleural space), usually complicating PNEUMONIA. Features: PERSISTENT FEVER despite antibiotics, PLEURITIC CHEST PAIN, and a LOCULATED (walled-off, divided into pockets) fluid collection on imaging. Pleural fluid analysis shows LOW pH (below 7.2), LOW GLUCOSE (bacteria and white cells consume it), high LDH, and may show pus or organisms on Gram stain.

❌ Why the other options are wrong:
• Pulmonary embolism — Pulmonary embolism may cause a small effusion, but not an infected, loculated collection with low pH and glucose.
• A simple transudative effusion from heart failure — Heart failure causes a TRANSUDATE with normal pH and glucose.
• Chronic bronchitis — Chronic bronchitis does not cause pleural collections.

⭐ Key point: Treat with IV antibiotics AND drainage (chest tube); loculated empyema may need intrapleural fibrinolytics (tPA/DNase) or surgery (VATS).$x$, null),
(179, $x$A patient with a suspected benzodiazepine overdose is being considered for flumazenil administration. Which condition makes flumazenil relatively contraindicated?$x$, $x$Chronic benzodiazepine use or co-ingestion with a pro-convulsant drug such as a tricyclic antidepressant, due to seizure risk$x$, $x$✅ Correct answer: Chronic benzodiazepine use or co-ingestion with a pro-convulsant drug such as a tricyclic antidepressant, due to seizure risk
FLUMAZENIL reverses benzodiazepines, but can trigger SEIZURES in patients with CHRONIC BENZODIAZEPINE USE (sudden withdrawal) or co-ingestion of PRO-CONVULSANT drugs such as TRICYCLIC ANTIDEPRESSANTS (the benzodiazepine was suppressing seizures).

❌ Why the other options are wrong:
• Normal renal function — Normal renal function is not a contraindication.
• Mild drowsiness without respiratory compromise — Mild drowsiness doesn't need flumazenil.
• Known allergy to opioids — Opioid allergy is unrelated.

⭐ Key point: Supportive care (airway, breathing) is usually safer than flumazenil in overdose.$x$, null),
(180, $x$A patient with a newly inserted temporary transvenous pacemaker shows pacer spikes with no captured QRS complex at times, worsening when the patient takes a deep breath. This is most likely due to:$x$, $x$Lead micro-displacement affecting capture with patient movement/position change, requiring evaluation$x$, $x$✅ Correct answer: Lead micro-displacement affecting capture with patient movement/position change, requiring evaluation
FAILURE TO CAPTURE (pacing spikes without QRS complexes) that WORSENS WITH BREATHING suggests the pacing LEAD has MICRO-DISPLACED — it moves away from the heart wall with breathing and position changes.

❌ Why the other options are wrong:
• Battery failure only — Battery failure would cause no spikes or reduced output.
• Improved lead contact — Improved contact would improve capture.
• Normal pacemaker function with no concern — Failure to capture is never normal.

⭐ Key point: Check connections, increase output per protocol, and arrange a chest X-ray.$x$, null),
(181, $x$A patient with suspected food poisoning from Clostridium botulinum presents with descending paralysis, diplopia, and dysphagia, with a clear sensorium. What is the priority nursing concern?$x$, $x$Close monitoring of respiratory function, as respiratory muscle paralysis can develop and require ventilatory support$x$, $x$✅ Correct answer: Close monitoring of respiratory function, as respiratory muscle paralysis can develop and require ventilatory support
BOTULISM causes DESCENDING PARALYSIS (eyes, face, throat, then breathing muscles). The patient remains conscious. The priority is to MONITOR RESPIRATORY FUNCTION (vital capacity, breathing pattern, SpO2), as RESPIRATORY MUSCLE PARALYSIS can develop and require ventilation.

❌ Why the other options are wrong:
• Administering activated charcoal, since this is the priority treatment — Activated charcoal isn't the priority.
• Reassuring the patient that no monitoring is required since consciousness is preserved — Monitoring is essential.
• Restricting fluids to prevent worsening symptoms — Fluid restriction isn't indicated.

⭐ Key point: Give antitoxin early and notify public health.$x$, null),
(182, $x$A patient with a subarachnoid haemorrhage develops new confusion and weakness on day 7, distinct from their baseline post-bleed status. The nurse should have a high suspicion for:$x$, $x$Delayed cerebral ischaemia from vasospasm, a recognised complication in the days following subarachnoid haemorrhage$x$, $x$✅ Correct answer: Delayed cerebral ischaemia from vasospasm, a recognised complication in the days following subarachnoid haemorrhage
After SUBARACHNOID HAEMORRHAGE, blood around the brain arteries triggers VASOSPASM, usually starting around day 3–4, peaking at days 7–10, and resolving by about day 14–21. It can cause DELAYED CEREBRAL ISCHAEMIA (DCI): NEW CONFUSION, reduced consciousness, or FOCAL WEAKNESS that was not present before. On day 7, new confusion and weakness should raise high suspicion. Other causes to exclude: rebleeding, hydrocephalus, hyponatraemia, seizures and infection.

❌ Why the other options are wrong:
• Normal recovery progress — New deficits are not normal recovery.
• An unrelated finding — They are directly related to the SAH.
• Improvement in neurological status — New confusion and weakness show deterioration, not improvement.

⭐ Key point: Prevention: nimodipine for 21 days, maintain normal blood volume and sodium, avoid hypotension. Report any new neurological change immediately — urgent CT/CT angiography may be needed.$x$, null),
(183, $x$A patient is admitted 8 hours after a large intentional paracetamol (acetaminophen) overdose. Which investigation is essential to guide treatment decisions?$x$, $x$A serum paracetamol level plotted on the treatment nomogram against time since ingestion$x$, $x$✅ Correct answer: A serum paracetamol level plotted on the treatment nomogram against time since ingestion
For a paracetamol overdose presenting 8 HOURS after ingestion, a SERUM PARACETAMOL LEVEL (taken at least 4 hours after ingestion) is plotted on the TREATMENT NOMOGRAM against time since ingestion. If above the treatment line, give N-acetylcysteine. (If presenting late or uncertain, start NAC immediately.)

❌ Why the other options are wrong:
• A random blood glucose only — Glucose alone doesn't guide treatment.
• A chest X-ray — Chest X-ray doesn't guide treatment.
• A urine drug screen for opioids — Urine drug screen doesn't measure paracetamol risk.

⭐ Key point: NAC is most effective within 8 hours of ingestion.$x$, null),
(184, $x$A woman in active labour develops a sudden onset of severe abdominal pain, vaginal bleeding, and a change in fetal heart rate pattern to bradycardia after a previous caesarean section. This should raise suspicion for:$x$, $x$Uterine rupture at the site of the previous caesarean scar$x$, $x$✅ Correct answer: Uterine rupture at the site of the previous caesarean scar
UTERINE RUPTURE is a tear in the uterine wall, most commonly through a PREVIOUS CAESAREAN SECTION SCAR during labour (VBAC — vaginal birth after caesarean). Classic features: SUDDEN SEVERE ABDOMINAL PAIN (may persist between contractions), VAGINAL BLEEDING, FETAL HEART RATE ABNORMALITIES (especially sudden BRADYCARDIA — the most common sign), loss of contractions, the presenting part moving back up, and signs of maternal shock.

❌ Why the other options are wrong:
• Braxton Hicks contractions — Braxton Hicks contractions are irregular, painless or mildly uncomfortable "practice" contractions — not this.
• Simple round ligament pain — Round ligament pain is a mild, sharp groin pain in pregnancy, not associated with bleeding and fetal bradycardia.
• Normal labour progress — This is not normal labour progress.

⭐ Key point: Uterine rupture is an emergency: call for help, resuscitate the mother (large-bore IV, blood), and arrange immediate laparotomy to deliver the baby and repair or remove the uterus.$x$, null),
(185, $x$A patient who has been admitted with a gastric ulcer now develops severe epigastric pain that spreads over the entire abdomen. He is very pale and is lying on his side. What should be the nurse's immediate action?$x$, $x$Notify the doctor and check the vitals.$x$, $x$✅ Correct answer: Notify the doctor and check the vitals.
SEVERE EPIGASTRIC PAIN spreading over the WHOLE ABDOMEN in a patient with a GASTRIC ULCER suggests PERFORATION and PERITONITIS. PALLOR suggests shock or bleeding. The immediate action is to NOTIFY THE DOCTOR and CHECK VITAL SIGNS.

❌ Why the other options are wrong:
• Reposition the patient In Semi-Fowler's Position. — Repositioning is not the priority.
• Perform deep palpations on the abdomen. — Deep palpation would cause pain and is unnecessary.
• Immediately administer opioids. — Opioids without assessment may mask signs.

⭐ Key point: Prepare for IV access, fluids, nil by mouth and surgery.$x$, null),
(186, $x$A patient with beta-blocker overdose presents with severe bradycardia and hypotension refractory to atropine. Which agent is most appropriate as a specific treatment?$x$, $x$High-dose insulin with glucose (hyperinsulinaemia-euglycaemia therapy) and/or glucagon$x$, $x$✅ Correct answer: High-dose insulin with glucose (hyperinsulinaemia-euglycaemia therapy) and/or glucagon
BETA-BLOCKER OVERDOSE blocks the beta receptors in the heart, causing severe BRADYCARDIA, heart block and HYPOTENSION (cardiogenic shock). Atropine often fails. Specific treatments include: GLUCAGON — it raises cyclic AMP in heart cells through its own receptors, BYPASSING the blocked beta receptors, increasing heart rate and contractility; and HIGH-DOSE INSULIN with GLUCOSE (hyperinsulinaemia–euglycaemia therapy, HIET) — it helps the stressed heart muscle use glucose for energy, improving contractility. Other options: calcium, vasopressors, pacing, and ECMO.

❌ Why the other options are wrong:
• Naloxone — Naloxone reverses opioids, not beta-blockers.
• Flumazenil — Flumazenil reverses benzodiazepines.
• Activated charcoal given IV — Activated charcoal is given ORALLY (not IV), and only early with a protected airway.

⭐ Key point: During HIET, check glucose every 15–30 minutes and potassium frequently (insulin drives potassium into cells).$x$, null),
(187, $x$A woman with an ectopic pregnancy presents with unilateral lower abdominal pain, vaginal bleeding, and signs of hypovolaemic shock. This presentation should be treated as:$x$, $x$A life-threatening gynaecological emergency requiring urgent assessment and likely surgical intervention$x$, $x$✅ Correct answer: A life-threatening gynaecological emergency requiring urgent assessment and likely surgical intervention
An ECTOPIC PREGNANCY implants outside the uterus, usually in the fallopian tube. As it grows, the tube can RUPTURE, causing MASSIVE INTERNAL BLEEDING into the abdomen. Unilateral lower abdominal pain, vaginal bleeding and signs of HYPOVOLAEMIC SHOCK (tachycardia, hypotension, pallor, collapse, shoulder tip pain from blood irritating the diaphragm) mean a LIFE-THREATENING emergency. Actions: call for help, two large-bore IV cannulas, crossmatch blood, fluid and blood resuscitation, and URGENT SURGERY (laparoscopy or laparotomy).

❌ Why the other options are wrong:
• A urinary tract infection — A UTI does not cause shock with vaginal bleeding in pregnancy.
• Normal early pregnancy discomfort — Shock is never normal pregnancy discomfort.
• A routine outpatient concern — This is not a routine outpatient concern; delay can be fatal.

⭐ Key point: Think of ectopic pregnancy in any woman of childbearing age with abdominal pain or collapse — do a pregnancy test.$x$, null),
(188, $x$A patient develops sudden chest pain and dyspnoea after central line insertion. A chest X-ray shows a hyperlucent area with absent lung markings on the same side. This confirms:$x$, $x$Pneumothorax, a recognised complication of central line insertion$x$, $x$✅ Correct answer: Pneumothorax, a recognised complication of central line insertion
During CENTRAL LINE insertion (especially SUBCLAVIAN and, less often, internal jugular), the needle can puncture the LUNG, letting air into the pleural space — a PNEUMOTHORAX. Symptoms: SUDDEN CHEST PAIN, BREATHLESSNESS, low SpO2, reduced breath sounds. The chest X-ray shows a HYPERLUCENT (darker) area with ABSENT LUNG MARKINGS beyond a visible lung edge on the same side.

❌ Why the other options are wrong:
• Successful catheter placement with no complication — These findings indicate a complication, not successful placement.
• Pleural effusion — A pleural effusion shows WHITE (opaque) fluid, not a hyperlucent area.
• Normal post-procedure findings — These are not normal post-procedure findings.

⭐ Key point: Always obtain a chest X-ray after subclavian or jugular line insertion (to check tip position and exclude pneumothorax). Ultrasound-guided insertion reduces this risk.$x$, null),
(189, $x$A farm worker presents with excessive salivation, lacrimation, urination, diarrhoea, GI cramps, emesis (SLUDGE), miosis, bradycardia, and muscle fasciculations after exposure to a crop spray. Which class of toxin is most likely responsible?$x$, $x$Organophosphate (cholinergic) poisoning$x$, $x$✅ Correct answer: Organophosphate (cholinergic) poisoning
ORGANOPHOSPHATE pesticides (crop sprays) block the enzyme ACETYLCHOLINESTERASE, so ACETYLCHOLINE builds up at nerve endings. This causes CHOLINERGIC overstimulation: muscarinic effects — SLUDGE (Salivation, Lacrimation, Urination, Diarrhoea, GI cramps, Emesis), MIOSIS (pinpoint pupils), BRADYCARDIA, bronchorrhoea and bronchospasm ("killer Bs"); nicotinic effects — MUSCLE FASCICULATIONS, then weakness and paralysis; CNS effects — confusion, seizures, coma.

❌ Why the other options are wrong:
• Anticholinergic poisoning — Anticholinergic poisoning causes the opposite: dry skin, dilated pupils, tachycardia.
• Opioid overdose — Opioids cause pinpoint pupils and drowsiness, but not SLUDGE or fasciculations.
• Sympathomimetic overdose — Sympathomimetics cause dilated pupils, tachycardia and hypertension.

⭐ Key point: Treat with ATROPINE (in doubling doses until the chest is clear) and PRALIDOXIME; remove contaminated clothing and wash the skin; staff wear PPE.$x$, null),
(190, $x$A patient with a large pleural effusion undergoes therapeutic thoracentesis. As a general safety principle, fluid removal in a single session is often limited to approximately:$x$, $x$Around 1–1.5 litres, to reduce the risk of re-expansion pulmonary oedema$x$, $x$✅ Correct answer: Around 1–1.5 litres, to reduce the risk of re-expansion pulmonary oedema
Removing a large volume of pleural fluid too quickly allows the collapsed lung to RE-EXPAND suddenly. The damaged lung capillaries can then leak fluid, causing RE-EXPANSION PULMONARY OEDEMA — breathlessness, cough, frothy sputum and hypoxia. To reduce this risk, fluid removal in a SINGLE SESSION is usually limited to about 1–1.5 LITRES. The procedure should be stopped earlier if the patient develops cough, chest tightness, pain, or hypotension.

❌ Why the other options are wrong:
• 10 litres — Removing 10 litres at once would be very dangerous.
• No limit at all, regardless of volume — There is a recommended limit.
• Only 10ml — 10 mL is far too little to relieve symptoms (but enough for diagnostic analysis).

⭐ Key point: For large effusions, drain slowly over time (e.g. clamping the drain intermittently per protocol) and monitor the patient closely.$x$, null),
(191, $x$A patient with a PAC develops a new PA waveform that shows no dicrotic notch and looks like a damped, flattened line even with the balloon deflated. The FIRST nursing action should be to check:$x$, $x$The transducer connections, tubing for air/clots, and confirm the stopcocks are positioned correctly before escalating$x$, $x$✅ Correct answer: The transducer connections, tubing for air/clots, and confirm the stopcocks are positioned correctly before escalating
A DAMPED PA waveform with no dicrotic notch, even with the balloon deflated, may be due to TECHNICAL problems: loose TRANSDUCER connections, AIR bubbles or CLOTS in the tubing, or STOPCOCKS in the wrong position. Check these FIRST before escalating (it may also indicate catheter migration).

❌ Why the other options are wrong:
• The patient's temperature — Temperature is unrelated.
• The pacemaker settings — Pacemaker settings are unrelated.
• The patient's oral intake — Oral intake is unrelated.

⭐ Key point: Perform a fast-flush test to check the system.$x$, null),
(192, $x$A client on propylthiouracil develops a sore throat and fever. What should the nurse suspect?$x$, $x$Agranulocytosis$x$, $x$✅ Correct answer: Agranulocytosis
PROPYLTHIOURACIL (PTU) and carbimazole are antithyroid drugs. A rare but serious side effect is AGRANULOCYTOSIS — a severe drop in NEUTROPHILS (white cells that fight bacterial infection). It usually occurs in the first few months of therapy. The first signs are often SORE THROAT, FEVER, mouth ulcers or other infections. The nurse should suspect agranulocytosis, advise stopping the drug, and arrange an URGENT full blood count. If confirmed, the patient needs isolation precautions and possibly antibiotics and G-CSF.

❌ Why the other options are wrong:
• Thyroid storm — Thyroid storm causes very high fever, tachycardia, agitation — not mainly a sore throat.
• Myxoedema — Myxoedema is severe HYPOthyroidism.
• Hypocalcaemia — Hypocalcaemia causes tingling and spasms, not sore throat and fever.

⭐ Key point: Teach all patients starting antithyroid drugs to report sore throat, fever or mouth ulcers immediately. PTU can also cause severe liver injury.$x$, null),
(193, $x$A patient with increased intracranial pressure is being nursed. Which positioning is generally recommended to help reduce ICP?$x$, $x$Head of bed elevated 30 degrees, head in neutral alignment$x$, $x$✅ Correct answer: Head of bed elevated 30 degrees, head in neutral alignment
To help REDUCE INTRACRANIAL PRESSURE (ICP), the head of the bed is ELEVATED to about 30 DEGREES and the HEAD is kept in NEUTRAL ALIGNMENT (not turned or flexed). This uses gravity to improve VENOUS DRAINAGE from the brain through the jugular veins, which lowers ICP, while still maintaining enough blood pressure to the brain. Also avoid tight ET tube ties, cervical collars that compress the neck, hip flexion above 90°, and sudden position changes.

❌ Why the other options are wrong:
• Prone position — Prone positioning raises intra-abdominal and intrathoracic pressure, which can raise ICP.
• Trendelenburg (head down) position — Trendelenburg (head-down) increases blood volume in the head and raises ICP.
• Head of bed flat, neck flexed — Lying flat with the neck flexed obstructs venous drainage and raises ICP.

⭐ Key point: Other ICP measures: adequate sedation and analgesia, avoid coughing and straining, keep PaCO2 normal, treat fever and seizures, osmotherapy.$x$, null),
(194, $x$A patient with methanol or ethylene glycol poisoning is being managed. Which agent competitively inhibits alcohol dehydrogenase and is used as an antidote?$x$, $x$Fomepizole (or ethanol as an alternative)$x$, $x$✅ Correct answer: Fomepizole (or ethanol as an alternative)
METHANOL and ETHYLENE GLYCOL are not very toxic themselves. The enzyme ALCOHOL DEHYDROGENASE in the liver converts them into TOXIC METABOLITES: methanol → formic acid (causes blindness and acidosis); ethylene glycol → glycolic and oxalic acid (causes acidosis and kidney failure). FOMEPIZOLE competitively INHIBITS alcohol dehydrogenase, preventing the formation of these toxic acids. ETHANOL (drinking alcohol) works the same way — the enzyme prefers ethanol — and is used if fomepizole is not available.

❌ Why the other options are wrong:
• Atropine — Atropine treats organophosphate (cholinergic) poisoning.
• Naloxone — Naloxone reverses opioid overdose.
• Flumazenil — Flumazenil reverses benzodiazepines.

⭐ Key point: HAEMODIALYSIS removes both the parent alcohols and their toxic acids. Give folic acid (methanol) or thiamine and pyridoxine (ethylene glycol) as co-factors.$x$, null),
(195, $x$A patient with tetanus develops trismus (lockjaw) as an early symptom. The nurse understands this occurs because tetanus toxin:$x$, $x$Blocks inhibitory neurotransmitters (glycine and GABA), causing sustained, uncontrolled muscle contraction$x$, $x$✅ Correct answer: Blocks inhibitory neurotransmitters (glycine and GABA), causing sustained, uncontrolled muscle contraction
TETANUS TOXIN blocks the release of INHIBITORY neurotransmitters (GLYCINE and GABA) in the spinal cord. Without inhibition, muscles CONTRACT continuously, causing TRISMUS (lockjaw), muscle spasms and rigidity.

❌ Why the other options are wrong:
• Only affects the peripheral sensory nerves — It affects motor, not sensory, nerves.
• Directly paralyses the diaphragm first — It doesn't paralyse the diaphragm first.
• Causes generalised sedation — It doesn't cause sedation.

⭐ Key point: Treat with tetanus immunoglobulin, wound care, metronidazole, muscle relaxants, and a quiet, dark environment.$x$, null),
(196, $x$A patient with obstructive uropathy from bilateral ureteral stones is treated with nephrostomy tube placement. What immediate postobstructive complication should the nurse monitor for?$x$, $x$Post-obstructive diuresis with large fluid and electrolyte losses$x$, $x$✅ Correct answer: Post-obstructive diuresis with large fluid and electrolyte losses
When a long-standing URINARY OBSTRUCTION is RELIEVED (e.g. by nephrostomy tubes or catheter), the kidneys may produce VERY LARGE VOLUMES of urine — POST-OBSTRUCTIVE DIURESIS (often above 200 mL/hr). Reasons: excretion of accumulated urea and salt, and the damaged tubules' temporary inability to concentrate urine. This can quickly cause HYPOVOLAEMIA, low BP and ELECTROLYTE LOSSES (sodium, potassium, magnesium).

❌ Why the other options are wrong:
• Spontaneous resolution of chronic kidney disease — Chronic kidney disease does not resolve spontaneously.
• Immediate anuria — Anuria is unlikely immediately after relief of obstruction.
• Hypertension crisis only — Hypertensive crisis is not the main post-obstructive concern; hypovolaemia is.

⭐ Key point: Measure urine output hourly, check electrolytes frequently, and replace fluids (often a proportion of the output) as prescribed.$x$, null),
(197, $x$A patient with severe cirrhosis of the liver develops hepatorenal syndrome. Which of the following nursing assessment data would support this?$x$, $x$Oliguria and azotemia$x$, $x$✅ Correct answer: Oliguria and azotemia
HEPATORENAL SYNDROME (HRS) is kidney failure in a patient with severe liver disease (cirrhosis, ascites). The kidneys themselves are structurally normal, but severe VASOCONSTRICTION of the kidney blood vessels (caused by vasodilation elsewhere and activation of renin-angiotensin and sympathetic systems) reduces blood flow. Typical findings: OLIGURIA (low urine output) and AZOTAEMIA (rising urea and creatinine), with very low urine sodium, and no improvement after stopping diuretics and giving albumin.

❌ Why the other options are wrong:
• Metabolic alkalosis — Metabolic alkalosis is not a key feature of HRS.
• Decreased urinary concentration — Urine in HRS is concentrated (low sodium), not dilute.
• Weight gain of less than 1kg per week — Weight gain reflects ascites; slow weight gain is not a specific marker of HRS.

⭐ Key point: Treatment: terlipressin (or noradrenaline) plus IV albumin; liver transplant is the definitive cure.$x$, null),
(198, $x$A patient under spinal anaesthesia for a caesarean section develops sudden hypotension and nausea. The nurse should recognise this as likely due to:$x$, $x$Sympathetic blockade from the spinal anaesthesia causing vasodilation, typically managed with fluids and/or vasopressors$x$, $x$✅ Correct answer: Sympathetic blockade from the spinal anaesthesia causing vasodilation, typically managed with fluids and/or vasopressors
SPINAL ANAESTHESIA for caesarean section blocks the SYMPATHETIC nerves (which keep blood vessels constricted). The vessels in the lower body DILATE, blood pools, and BP falls (HYPOTENSION). Low BP reduces blood flow to the brain (causing NAUSEA, dizziness) and to the placenta (risking fetal distress). Management: LEFT UTERINE DISPLACEMENT (to relieve aortocaval compression), IV FLUIDS (co-loading), and VASOPRESSORS (phenylephrine first-line, or ephedrine).

❌ Why the other options are wrong:
• An allergic reaction requiring adrenaline — An allergic reaction would typically cause rash, wheeze and swelling — adrenaline is not the first treatment here.
• A sign of successful anaesthesia with no action needed — Hypotension is common but must be treated, not ignored.
• Unrelated cardiac disease — It is not due to unrelated cardiac disease.

⭐ Key point: Nausea after spinal anaesthesia is often the first sign of hypotension — check the BP immediately.$x$, null),
(199, $x$A patient with severe theophylline toxicity develops refractory seizures and life-threatening arrhythmias. Beyond supportive care and multiple-dose activated charcoal, which additional treatment may be indicated in severe cases?$x$, $x$Haemodialysis or haemoperfusion$x$, $x$✅ Correct answer: Haemodialysis or haemoperfusion
THEOPHYLLINE (and aminophylline) has a NARROW THERAPEUTIC RANGE. Severe toxicity causes vomiting, tachycardia, life-threatening ARRHYTHMIAS, hypokalaemia, hyperglycaemia and REFRACTORY SEIZURES. Treatment: supportive care, MULTIPLE-DOSE ACTIVATED CHARCOAL (enhances elimination), and in severe cases (seizures, arrhythmias, very high levels), HAEMODIALYSIS or HAEMOPERFUSION, which rapidly remove theophylline from the blood.

❌ Why the other options are wrong:
• Discontinuation of all monitoring — Discontinuing monitoring would be dangerous.
• Oral rehydration therapy alone — Oral rehydration alone is inadequate.
• Induced vomiting — Induced vomiting is not recommended (aspiration risk, seizures).

⭐ Key point: Many drugs (e.g. ciprofloxacin, erythromycin) increase theophylline levels; smoking reduces them. Monitor levels.$x$, null),
(200, $x$A patient with a pulmonary artery catheter (PAC) in place develops a persistently wedged waveform. The nurse's most appropriate immediate action is to:$x$, $x$Deflate the balloon immediately and reposition/notify the physician, as a permanently wedged catheter risks pulmonary infarction$x$, $x$✅ Correct answer: Deflate the balloon immediately and reposition/notify the physician, as a permanently wedged catheter risks pulmonary infarction
A PERSISTENTLY WEDGED PA catheter waveform means the catheter tip has migrated into a small pulmonary artery, blocking blood flow and risking PULMONARY INFARCTION or rupture. DEFLATE the balloon (if inflated), reposition/pull back per protocol, and NOTIFY THE PHYSICIAN.

❌ Why the other options are wrong:
• Inflate the balloon further to confirm the wedge — Inflating the balloon further risks rupture.
• Ignore it since PAC waveforms fluctuate normally — Ignoring it risks infarction.
• Increase the IV fluid rate — Increasing IV fluids doesn't fix the catheter position.

⭐ Key point: Never leave the balloon inflated; limit wedge readings to brief periods.$x$, null)
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
select count(distinct n) as "questions updated (should be 200)", count(*) as "rows changed" from upd;
