-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 5, part A (questions 1–100)
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

⭐ Key point: Check cuff pressure regularly with a manometer during nitrous oxide anaesthesia, or fill the cuff with saline or the anaesthetic gas mixture.$x$, null)
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
