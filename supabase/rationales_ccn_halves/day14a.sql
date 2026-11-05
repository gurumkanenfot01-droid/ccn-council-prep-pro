-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 14, part A (questions 1–100)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).
--   Q33: correct answer changed to: Nasotracheal intubation
--   Q48: correct answer changed to: <40bpm
--   Q55: correct answer changed to: 1.4ml
--   Q73: correct answer changed to: 5


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$The gag reflex primarily depends on which cranial nerve(s)?$x$, $x$Cranial nerves IX and X$x$, $x$✅ Correct answer: Cranial nerves IX and X
The gag reflex protects the airway. Touching the back of the throat sends a SENSORY signal through the GLOSSOPHARYNGEAL nerve (CN IX) to the brainstem. The MOTOR response (the throat muscles contracting) comes through the VAGUS nerve (CN X). Both are needed, and both come from the medulla.

❌ Why the other options are wrong:
• Cranial nerve VII only — CN VII (facial) controls facial expression and taste at the front of the tongue.
• Cranial nerves I and II — CN I (smell) and CN II (sight) aren't involved.
• Cranial nerve XII only — CN XII (hypoglossal) moves the tongue, but isn't the main gag nerve.

⭐ Key point: An absent gag reflex in an unconscious patient means a high risk of aspiration. It is also part of brainstem death testing.$x$, null),
(2, $x$The osmolality of the renal interstitium increases from the cortex toward the tip of the inner medulla, reaching approximately what value in a maximally concentrating human kidney?$x$, $x$About 1200 mOsm/kg$x$, $x$✅ Correct answer: About 1200 mOsm/kg
The loop of Henle creates a gradient of increasing saltiness (osmolality) in the kidney interstitium: about 300 mOsm/kg in the cortex, rising to about 1200 mOsm/kg at the tip of the inner medulla (papilla) in a maximally concentrating kidney. This lets ADH concentrate urine up to about 1200 mOsm/kg.

❌ Why the other options are wrong:
• About 300 mOsm/kg — 300 mOsm/kg is the value in the cortex (like plasma).
• About 600 mOsm/kg at the papilla — 600 mOsm/kg is only about halfway.
• About 2500 mOsm/kg — 2500 mOsm/kg is far higher than the human kidney can reach.

⭐ Key point: Loop diuretics (furosemide) wash out this gradient, so the kidney can't concentrate urine.$x$, null),
(3, $x$In a patient undergoing surgery, it was vital to aspirate the contents of the upper gastrointestinal tract. After the operation, the following values were acquired from an arterial blood sample: pH 7.55, PCO2 52 mm Hg and HCO3- 40 mmol/l. What is the underlying disorder?$x$, $x$Metabolic Alkalosis$x$, $x$✅ Correct answer: Metabolic Alkalosis
Step 1: pH 7.55 is HIGH, so ALKALOSIS. Step 2: HCO₃⁻ 40 is HIGH (pH and HCO₃⁻ both up), so it is METABOLIC. Step 3: PCO₂ 52 is high, which is the lungs COMPENSATING by retaining CO₂. Cause: aspiration (suction) of the upper GI tract removed acidic stomach contents (HCl), leaving excess bicarbonate.

❌ Why the other options are wrong:
• Metabolic Acidosis — Metabolic acidosis would have a LOW pH and LOW HCO₃⁻.
• Respiratory Acidosis — Respiratory acidosis would have a LOW pH.
• Respiratory Alkalosis — Respiratory alkalosis would have a LOW PCO₂.

⭐ Key point: NG suction and vomiting cause hypochloraemic, hypokalaemic metabolic alkalosis. Replace chloride (saline) and potassium.$x$, null),
(4, $x$A patient with blood group O negative is often called the:$x$, $x$Universal donor$x$, $x$✅ Correct answer: Universal donor
O-negative red cells have NO A or B antigens and NO Rh(D) antigen, so they can be given to almost any patient without causing a major ABO or Rh reaction. O-negative is therefore called the UNIVERSAL (red cell) DONOR, and it is used in emergencies before the patient's blood group is known.

❌ Why the other options are wrong:
• Universal recipient — The universal recipient is AB-positive.
• Least compatible donor — O-negative is the MOST compatible donor, not the least.
• Rh-positive donor — O-negative is Rh-NEGATIVE, not positive.

⭐ Key point: For plasma it is reversed: AB plasma is the universal plasma donor.$x$, null),
(5, $x$The approximate total body water content of an adult woman is:$x$, $x$50%$x$, $x$✅ Correct answer: 50%
Total body water is about 60% of body weight in adult MEN and about 50–55% in adult WOMEN. Women have more body fat, and fat contains less water than muscle. Water content also falls with age and obesity.

❌ Why the other options are wrong:
• 80% — 80% is too high for adults (newborns are about 75–80%).
• 70% — 70% is too high for adult women.
• 60% — 60% is the value for adult men.

⭐ Key point: Two-thirds of body water is inside the cells (ICF) and one-third outside (ECF: interstitial fluid and plasma).$x$, null),
(6, $x$Which of the following is NOT a hormone?$x$, $x$Renin$x$, $x$✅ Correct answer: Renin
RENIN is an ENZYME, not a hormone. It is released by the kidney's juxtaglomerular cells and converts angiotensinogen into angiotensin I, which then becomes angiotensin II (a hormone). All the other options are hormones.

❌ Why the other options are wrong:
• Atrial natriuretic peptide — Atrial natriuretic peptide IS a hormone, from the heart's atria; it makes the kidneys excrete sodium.
• Prolactin — Prolactin IS a hormone, from the anterior pituitary; it controls milk production.
• Thymosin — Thymosin IS a hormone, from the thymus; it helps develop T-cells.

⭐ Key point: RAAS: renin (enzyme) → angiotensin I → angiotensin II (via ACE) → aldosterone and vasoconstriction.$x$, null),
(7, $x$Filtration of blood in the nephron primarily occurs at the:$x$, $x$Glomerulus$x$, $x$✅ Correct answer: Glomerulus
FILTRATION of blood happens at the GLOMERULUS, a tuft of capillaries inside Bowman's capsule. High pressure pushes water, salts, glucose, urea and small molecules through the capillary wall into the capsule (the filtrate). Blood cells and large proteins stay in the blood.

❌ Why the other options are wrong:
• Collecting duct — The collecting duct concentrates urine under ADH.
• Loop of Henle — The loop of Henle creates the concentration gradient.
• Distal convoluted tubule — The distal tubule fine-tunes sodium, potassium and acid.

⭐ Key point: Normal GFR is about 120 mL/min (180 L/day), and about 99% of the filtrate is reabsorbed.$x$, null),
(8, $x$An elementary student, was rushed to the hospital due to vomiting and a decreased level of consciousness. The patient displays slow and deep (Kussmaul breathing), and he is lethargic and irritable in response to stimulation. He appears to be dehydrated—his eyes are sunken and mucous membranes are dry—and he has a two-week history of polydipsia, polyuria, and weight loss. Measurement of arterial blood gas shows pH 7.0, PaO2 90 mm Hg, PaCO2 23 mm Hg, and HCO3 12 mmol/L; other results are Na+ 126 mmol/L, K+ 5 mmol/L, and Cl- 95 mmol/L. What is your assessment?$x$, $x$Metabolic Acidosis, Partially, Compensated$x$, $x$✅ Correct answer: Metabolic Acidosis, Partially, Compensated
Step 1: pH 7.0 is very LOW, so ACIDOSIS. Step 2: HCO₃⁻ 12 is LOW, so it is METABOLIC (DKA, with polyuria, polydipsia, weight loss and Kussmaul breathing). Step 3: PaCO₂ 23 is low, meaning the lungs are blowing off CO₂ to COMPENSATE. The pH is still abnormal, so it is PARTIALLY compensated metabolic acidosis.

❌ Why the other options are wrong:
• Respiratory Acidosis, Partially Compensated — Respiratory acidosis would have a HIGH PaCO₂.
• Metabolic Alkalosis, Uncompensated — Metabolic alkalosis would have a HIGH pH and HCO₃⁻.
• Respiratory Acidosis, Uncompensated — Respiratory acidosis would have a HIGH PaCO₂ again.

⭐ Key point: Anion gap here = 126 − (95 + 12) = 19, which is high, as expected in DKA.$x$, null),
(9, $x$Which nerve innervates the diaphragm?$x$, $x$Phrenic nerve$x$, $x$✅ Correct answer: Phrenic nerve
The PHRENIC nerve (from spinal roots C3, C4 and C5) supplies the DIAPHRAGM, the main muscle of breathing. "C3, 4, 5 keeps the diaphragm alive." Spinal cord injury at or above C3–C5 can paralyse the diaphragm and stop breathing.

❌ Why the other options are wrong:
• Median nerve — The median nerve supplies the forearm and hand.
• Radial nerve — The radial nerve supplies the back of the arm and hand.
• Vagus nerve — The vagus nerve supplies the heart, lungs and gut (autonomic), not the diaphragm muscle.

⭐ Key point: Phrenic nerve injury (after neck or heart surgery) causes a raised hemidiaphragm on X-ray.$x$, null),
(10, $x$How many pulmonary veins empty into the right atrium?$x$, $x$None$x$, $x$✅ Correct answer: None
There are FOUR pulmonary veins (two from each lung). They carry OXYGENATED blood from the lungs to the LEFT ATRIUM. NONE empty into the right atrium. The right atrium receives deoxygenated blood from the superior and inferior vena cava and the coronary sinus.

❌ Why the other options are wrong:
• Four — Four is the total number, but they drain into the LEFT atrium.
• Two — Two drain from each lung, into the left atrium.
• One — One is incorrect.

⭐ Key point: Pulmonary veins carry oxygenated blood (the exception to "veins carry deoxygenated blood"); pulmonary arteries carry deoxygenated blood.$x$, null),
(11, $x$The thick ascending limb of the loop of Henle actively reabsorbs sodium, potassium, and chloride via which transporter, the target of loop diuretics?$x$, $x$Na+-K+-2Cl- cotransporter (NKCC2)$x$, $x$✅ Correct answer: Na+-K+-2Cl- cotransporter (NKCC2)
The thick ascending limb of the loop of Henle reabsorbs sodium, potassium and chloride together using the Na⁺-K⁺-2Cl⁻ COTRANSPORTER (NKCC2). LOOP DIURETICS (furosemide, bumetanide) block NKCC2, so large amounts of salt and water are lost in the urine, making them very powerful diuretics.

❌ Why the other options are wrong:
• Sodium-glucose cotransporter (SGLT2) — SGLT2 is in the proximal tubule; SGLT2 inhibitors (gliflozins) block it.
• Epithelial sodium channel (ENaC) — ENaC is in the collecting duct; amiloride blocks it.
• Na+-Cl- cotransporter (NCC) — NCC is in the distal tubule; thiazides block it.

⭐ Key point: Loop diuretic side effects: low potassium, magnesium and calcium, dehydration, and ototoxicity at high doses.$x$, null),
(12, $x$Which pH finding would be consistent with respiratory alkalosis?$x$, $x$7.49$x$, $x$✅ Correct answer: 7.49
Respiratory alkalosis is caused by hyperventilation (anxiety, pain, early sepsis, PE, high altitude), which lowers PaCO₂. Less CO₂ means less acid, so the pH RISES above 7.45. A pH of 7.49 is alkalotic.

❌ Why the other options are wrong:
• 7.35 — 7.35 is the lower limit of normal.
• 7.29 — 7.29 is acidotic.
• 7.45 — 7.45 is the upper limit of normal.

⭐ Key point: Normal pH 7.35–7.45. Below 7.35 is acidosis; above 7.45 is alkalosis.$x$, null),
(13, $x$A patient with hypokalemia (K⁺ 2.8 mEq/L) is receiving IV potassium. Which nursing action is essential?$x$, $x$Monitor serum K⁺ every 2 hours$x$, $x$✅ Correct answer: Monitor serum K⁺ every 2 hours
When giving IV potassium, check the serum K⁺ REGULARLY (about every 2–4 hours during rapid replacement) to avoid overcorrection to dangerous HYPERKALAEMIA. Also use an infusion pump, continuous ECG monitoring for faster rates, and watch the IV site (potassium irritates veins).

❌ Why the other options are wrong:
• Infuse at 20 mEq/hr via central line — 20 mmol/hour via a central line is possible with monitoring, but monitoring K⁺ is the essential action.
• Administer as an IV bolus — IV potassium must NEVER be given as a bolus; it can cause cardiac arrest.
• Dilute in 50 mL D5W over 10 minutes — 50 mL over 10 minutes is far too fast.

⭐ Key point: Peripheral K⁺ is usually no more than 10 mmol/hour. Always use pre-diluted solutions.$x$, null),
(14, $x$A patient with syndrome of inappropriate ADH secretion (SIADH) causing symptomatic hyponatremia is treated with fluid restriction. Which additional mechanism-based therapy directly antagonizes ADH's renal action?$x$, $x$Vasopressin receptor antagonists (vaptans)$x$, $x$✅ Correct answer: Vasopressin receptor antagonists (vaptans)
In SIADH, excess ADH acts on V2 receptors in the kidney collecting ducts to keep water. VASOPRESSIN RECEPTOR ANTAGONISTS ("vaptans", such as tolvaptan and conivaptan) BLOCK these V2 receptors, so the kidneys excrete more free water (aquaresis) and the sodium rises.

❌ Why the other options are wrong:
• Exogenous desmopressin (DDAVP) — Desmopressin acts LIKE ADH and would worsen SIADH.
• IV isotonic saline as first-line for all severities — Isotonic saline isn't first-line for all SIADH and can worsen hyponatraemia.
• Loop diuretics as monotherapy without sodium replacement — Loop diuretics alone without sodium replacement can worsen hyponatraemia.

⭐ Key point: With vaptans, sodium can rise too fast. Monitor sodium closely to avoid osmotic demyelination.$x$, null),
(15, $x$A patient develops tingling of fingers, muscle cramps, and carpopedal spasm after thyroidectomy. The nurse should suspect:$x$, $x$Hypocalcaemia$x$, $x$✅ Correct answer: Hypocalcaemia
After thyroidectomy, the PARATHYROID glands (behind the thyroid) may be damaged or removed, so PTH falls and blood CALCIUM drops (HYPOCALCAEMIA). Low calcium makes nerves and muscles overexcitable: tingling around the mouth and fingers, muscle cramps, CARPOPEDAL SPASM (Trousseau's sign), facial twitching (Chvostek's sign), and in severe cases laryngospasm and seizures.

❌ Why the other options are wrong:
• Hyperkalemia — High potassium causes weakness and ECG changes, not spasms.
• Hypercalcaemia — High calcium causes weakness, constipation and confusion, not spasms.
• Hyponatremia — Low sodium causes confusion and seizures, not carpopedal spasm.

⭐ Key point: Treat with IV calcium gluconate 10%, and keep it available after thyroid and parathyroid surgery.$x$, null),
(16, $x$Which organs are both involved in the synthesis of calcitriol and erythropoietin?$x$, $x$Liver and kidneys$x$, $x$✅ Correct answer: Liver and kidneys
CALCITRIOL (active vitamin D) needs two steps: the LIVER adds a hydroxyl group (25-hydroxylation), then the KIDNEY adds another (1-hydroxylation). ERYTHROPOIETIN (which stimulates red cell production) is made mainly by the KIDNEYS, with a smaller amount from the LIVER. So the liver and kidneys are involved in both.

❌ Why the other options are wrong:
• Thyroid and thymus — The thyroid and thymus don't make either.
• Anterior and posterior pituitary — The pituitary doesn't make either.
• Parathyroids and pancreatic islets — The parathyroids stimulate calcitriol production but don't make erythropoietin.

⭐ Key point: In CKD, low calcitriol causes low calcium and bone disease, and low erythropoietin causes anaemia.$x$, null),
(17, $x$A patient has measured Na⁺ 128 mmol/L with blood glucose 40 mmol/L (720 mg/dL). The corrected sodium is about:$x$, $x$143 mmol/L$x$, $x$✅ Correct answer: 143 mmol/L
High glucose draws water from the cells into the blood, DILUTING the sodium (pseudo-hyponatraemia, or translocational hyponatraemia). To find the true (corrected) sodium, add about 2.4 mmol/L for every 5.5 mmol/L of glucose above normal. Glucose 40 is about 34.5 above 5.5 → 34.5 ÷ 5.5 ≈ 6.3 × 2.4 ≈ 15. Corrected Na⁺ = 128 + 15 ≈ 143 mmol/L.

❌ Why the other options are wrong:
• 160 mmol/L — 160 mmol/L is too high a correction.
• 118 mmol/L — 118 mmol/L subtracts instead of adding.
• 128 mmol/L — 128 mmol/L ignores the correction.

⭐ Key point: In DKA and HHS, watch the corrected sodium. If it rises as glucose falls, the patient is losing free water.$x$, null),
(18, $x$In chronic severe hyponatraemia, sodium should not be raised by more than about:$x$, $x$8–10 mmol/L in the first 24 hours$x$, $x$✅ Correct answer: 8–10 mmol/L in the first 24 hours
In chronic severe hyponatraemia, brain cells have adapted. If sodium is corrected too quickly, osmotic demyelination syndrome (central pontine myelinolysis) can cause paralysis, swallowing difficulty or death. Sodium should NOT be raised by more than about 8–10 mmol/L in the first 24 hours (6–8 in high-risk patients).

❌ Why the other options are wrong:
• 2 mmol/L in the first week — 2 mmol/L in a week is far too slow.
• 15 mmol/L in the first hour — 15 mmol/L in an hour is dangerously fast.
• 20–25 mmol/L in the first 24 hours — 20–25 mmol/L in 24 hours is far too fast.

⭐ Key point: For severe symptoms (seizures), raise sodium by 4–6 mmol/L quickly with 3% saline, then stay within the 24-hour limit.$x$, null),
(19, $x$The electrolyte abnormality most typical of refeeding syndrome in a starved ICU patient is:$x$, $x$Hypophosphataemia$x$, $x$✅ Correct answer: Hypophosphataemia
In REFEEDING syndrome, a starved patient's body switches back to carbohydrate metabolism when feeding starts. Insulin rises, driving glucose, PHOSPHATE, potassium and magnesium into the cells. Blood phosphate drops sharply (HYPOPHOSPHATAEMIA), causing muscle weakness, respiratory failure, heart failure, confusion and seizures.

❌ Why the other options are wrong:
• Hypercalcaemia — Hypercalcaemia isn't typical of refeeding.
• Hyperkalaemia — Potassium FALLS (hypokalaemia), it doesn't rise.
• Hypernatraemia — Hypernatraemia isn't typical; sodium and water retention can occur, but not high sodium.

⭐ Key point: Prevent refeeding: identify at-risk patients, give thiamine, start slowly (10–20 kcal/kg/day), and check and replace phosphate, potassium and magnesium daily.$x$, null),
(20, $x$A patient has Hb 10 g/dL, SaO₂ 100% and PaO₂ 100 mmHg. The arterial oxygen content (CaO₂) is about:$x$, $x$13.7 mL O₂ per dL of blood$x$, $x$✅ Correct answer: 13.7 mL O₂ per dL of blood
Arterial oxygen content (CaO₂) = (1.34 × Hb × SaO₂) + (0.003 × PaO₂). Here: (1.34 × 10 × 1.0) + (0.003 × 100) = 13.4 + 0.3 = 13.7 mL O₂/dL. Most oxygen is carried by HAEMOGLOBIN; dissolved oxygen (from PaO₂) adds very little.

❌ Why the other options are wrong:
• 1.34 mL O₂ per dL of blood — 1.34 is just the oxygen-binding constant.
• 10.0 mL O₂ per dL of blood — 10.0 is the haemoglobin value.
• 20.1 mL O₂ per dL of blood — 20.1 is the normal CaO₂ with Hb 15 g/dL.

⭐ Key point: To improve oxygen delivery, correcting low haemoglobin is often more effective than raising PaO₂ above normal.$x$, null),
(21, $x$Systemic carbon monoxide poisoning in burns patients is best treated with:$x$, $x$Humidified 100% oxygen$x$, $x$✅ Correct answer: Humidified 100% oxygen
Carbon monoxide (CO) binds haemoglobin about 240 times more strongly than oxygen, forming carboxyhaemoglobin (COHb), which can't carry oxygen. Breathing 100% OXYGEN (humidified, via a non-rebreather mask or ETT) speeds CO removal: its half-life falls from about 4–5 hours on room air to about 1 hour on 100% oxygen.

❌ Why the other options are wrong:
• Room air only — Room air takes much longer to remove CO.
• Bronchodilators alone — Bronchodilators don't remove CO.
• Antibiotics — Antibiotics don't treat CO poisoning.

⭐ Key point: Pulse oximeters give FALSELY normal SpO₂ in CO poisoning. Measure COHb on a co-oximetry blood gas. Hyperbaric oxygen is used if available.$x$, null),
(22, $x$A patient is experiencing respiratory failure. Arterial Blood Gas (ABG) results show a PaO₂ of 55 mmHg. Which type of respiratory failure is this most likely to be?$x$, $x$Type I (Hypoxemic) Respiratory Failure$x$, $x$✅ Correct answer: Type I (Hypoxemic) Respiratory Failure
TYPE I (hypoxaemic) respiratory failure means a LOW PaO₂ (below 60 mmHg or 8 kPa) with a NORMAL or LOW PaCO₂. It is caused by problems with oxygen transfer: pneumonia, pulmonary oedema, ARDS, PE. A PaO₂ of 55 mmHg is hypoxaemic, and with no raised CO₂ mentioned, this is most likely type I.

❌ Why the other options are wrong:
• Mixed Respiratory Failure — Mixed failure needs both low O₂ and a raised CO₂ in a specific context.
• There is not enough information to determine the type — Strictly, the PaCO₂ is needed to be certain, but the question looks for the type based on low PaO₂.
• Type II (Hypercapnic) Respiratory Failure — Type II requires a HIGH PaCO₂ (above 45–50 mmHg).

⭐ Key point: Type I = oxygenation failure. Type II = ventilation failure (high CO₂). Always check PaCO₂.$x$, null),
(23, $x$Decreasing level of consciousness in a severe asthmatic patient is classified as:$x$, $x$An absolute indication for intubation$x$, $x$✅ Correct answer: An absolute indication for intubation
In severe asthma, a FALLING level of consciousness means the patient is exhausted, with rising CO₂ and hypoxia, and can no longer protect the airway or keep breathing. It is an ABSOLUTE indication for intubation and ventilation, and a sign of imminent respiratory arrest.

❌ Why the other options are wrong:
• A relative indication for intubation — It isn't relative; it demands immediate action.
• A sign of improvement — It's a sign of deterioration, not improvement.
• Not related to asthma severity — It IS related to asthma severity (a life-threatening feature).

⭐ Key point: Other life-threatening asthma signs: silent chest, cyanosis, exhaustion, bradycardia, hypotension, PEF below 33%, SpO₂ below 92%, and a normal or rising PaCO₂.$x$, null),
(24, $x$The nurse is monitoring the drainage from a UWSD. The nurse should report which of the following findings to the physician immediately?$x$, $x$A sudden increase of bloody drainage$x$, $x$✅ Correct answer: A sudden increase of bloody drainage
A SUDDEN INCREASE in BLOODY (especially bright red) drainage from a chest drain suggests active BLEEDING (haemorrhage), for example from a damaged vessel. It can quickly cause shock. Report it IMMEDIATELY (typically more than 100–200 mL/hour, or more than 1500 mL at insertion).

❌ Why the other options are wrong:
• Clear, serous fluid — Clear serous fluid is normal drainage for an effusion.
• The presence of a small amount of drainage — A small amount of drainage is expected.
• Intermittent bubbling in the water-seal chamber — Intermittent bubbling (with breathing or coughing) is normal with a pneumothorax.

⭐ Key point: Record drainage hourly. Also report sudden cessation with distress (blockage) or new continuous bubbling (air leak).$x$, null),
(25, $x$Severe subcutaneous emphysema after chest trauma raises suspicion of:$x$, $x$Tracheobronchial injury$x$, $x$✅ Correct answer: Tracheobronchial injury
Subcutaneous (surgical) emphysema is air under the skin, which feels like crackling (crepitus) when pressed. SEVERE or rapidly spreading subcutaneous emphysema after chest trauma suggests a large air leak from the AIRWAY: a TRACHEOBRONCHIAL INJURY (a torn trachea or bronchus), or a pneumothorax with a lung tear.

❌ Why the other options are wrong:
• Pericardial tamponade — Tamponade causes low BP, raised JVP and muffled heart sounds.
• Normal healing — Severe emphysema isn't part of normal healing.
• Simple rib fracture — A simple rib fracture may cause mild local emphysema, but severe emphysema suggests airway injury.

⭐ Key point: Tracheobronchial injury can cause a persistent large air leak despite a chest drain. It needs bronchoscopy and surgical repair.$x$, null),
(26, $x$A 7-year-old client is brought to the E.R. He’s tachypneic and afebrile and has a respiratory rate of 36 breaths/minute and a nonproductive cough. He recently had a cold. From his history, the client may have which of the following?$x$, $x$Acute asthma$x$, $x$✅ Correct answer: Acute asthma
A 7-year-old with fast breathing (RR 36), NO fever, a dry (non-productive) cough, and a recent cold (a viral trigger) most likely has ACUTE ASTHMA. Viral infections are common triggers. Listen for wheeze and check for a history of atopy.

❌ Why the other options are wrong:
• Chronic obstructive pulmonary disease (COPD) — COPD occurs in adults, usually smokers.
• Emphysema — Emphysema is an adult disease (part of COPD).
• Bronchial pneumonia — Bronchial pneumonia usually causes FEVER and a productive cough.

⭐ Key point: Treat acute asthma in children: salbutamol (spacer or nebuliser), oral prednisolone, oxygen if SpO₂ is below 94%, and escalate if severe.$x$, null),
(27, $x$In acute severe asthma, steroids should ideally be administered within:$x$, $x$1 hour$x$, $x$✅ Correct answer: 1 hour
In acute severe asthma, steroids (oral prednisolone 40–50 mg, or IV hydrocortisone 100 mg) reduce airway inflammation, but they take several hours to work. They should be given EARLY, ideally within 1 HOUR of arrival, so their effect starts as soon as possible.

❌ Why the other options are wrong:
• 24 hours — 24 hours is too late.
• 6 hours — 6 hours is too late.
• 10 minutes — 10 minutes is ideal but not the standard target.

⭐ Key point: Asthma emergency treatment: oxygen, salbutamol, ipratropium, steroids within 1 hour, and IV magnesium if severe.$x$, null),
(28, $x$An ABG analysis report shows: pH - 7.30; PCO2 - 35mmHg; HCO3- -18mEq/L. These findings are suggestive of$x$, $x$Metabolic acidosis$x$, $x$✅ Correct answer: Metabolic acidosis
Step 1: pH 7.30 is LOW, so ACIDOSIS. Step 2: HCO₃⁻ 18 is LOW, so it is METABOLIC. Step 3: PCO₂ 35 is at the lower end of normal, so there is little respiratory compensation yet. This is METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Metabolic alkalosis — Metabolic alkalosis would have a HIGH pH and HCO₃⁻.
• Respiratory alkalosis — Respiratory alkalosis would have a HIGH pH and LOW PCO₂.
• Respiratory acidosis — Respiratory acidosis would have a HIGH PCO₂.

⭐ Key point: ROME: Respiratory = Opposite (pH and PCO₂ move opposite ways); Metabolic = Equal (pH and HCO₃⁻ move the same way).$x$, null),
(29, $x$Which client is at greater risk for respiratory depression while receiving opioids for analgesia?$x$, $x$A child with an arm fracture and cystic fibrosis$x$, $x$✅ Correct answer: A child with an arm fracture and cystic fibrosis
A child with CYSTIC FIBROSIS already has damaged lungs, thick secretions and reduced respiratory reserve. Opioids depress the breathing centre and the cough reflex, so this child is at the greatest risk of respiratory depression, CO₂ retention and retained secretions. Children are also more sensitive to opioids per kilogram.

❌ Why the other options are wrong:
• A young female client with advanced multiple myeloma — A young woman with myeloma may be opioid-tolerant from long-term use.
• A client with a heroin addiction and back pain — A person with heroin addiction is usually TOLERANT to opioids.
• An elderly chronic pain client with a hip fracture — An elderly person with chronic pain is at risk, but long-term users may be tolerant; the child with lung disease is highest risk.

⭐ Key point: Monitor respiratory rate, sedation level and SpO₂ in high-risk patients on opioids, and keep naloxone available.$x$, null),
(30, $x$A patient with respiratory failure has a PaO₂ of 45 mmHg despite receiving oxygen via a non-rebreather mask. The nurse anticipates that the next step in the patient's care will be:$x$, $x$Intubation and mechanical ventilation$x$, $x$✅ Correct answer: Intubation and mechanical ventilation
A PaO₂ of 45 mmHg while on a non-rebreather mask (the highest-concentration oxygen without ventilation) shows SEVERE respiratory failure that isn't responding to oxygen alone. The next step is INTUBATION and MECHANICAL VENTILATION (or NIV in selected cases) to support oxygenation and breathing.

❌ Why the other options are wrong:
• Weaning the patient from oxygen — Weaning from oxygen is the opposite of what is needed.
• Transferring the patient to a regular medical floor — Transfer to a regular ward is unsafe.
• Increasing the oxygen flow rate to 15 L/min — A non-rebreather is already at 15 L/min; more flow won't help much.

⭐ Key point: Signs that oxygen therapy is failing: rising RR, falling SpO₂ despite high FiO₂, exhaustion, confusion, rising CO₂.$x$, null),
(31, $x$For severe choking in a conscious adult, management alternates between:$x$, $x$5 back slaps and 5 abdominal thrusts$x$, $x$✅ Correct answer: 5 back slaps and 5 abdominal thrusts
For severe choking (the person can't speak, cough or breathe) in a conscious ADULT, alternate 5 BACK BLOWS (between the shoulder blades with the heel of the hand) with 5 ABDOMINAL THRUSTS (Heimlich manoeuvre). Each method uses a different force to dislodge the object. Continue until it clears or the person becomes unconscious (then start CPR).

❌ Why the other options are wrong:
• 10 chest compressions and rescue breaths — Chest compressions with rescue breaths are for UNCONSCIOUS patients (CPR).
• Head-tilt chin-lift and jaw thrust — Head-tilt chin-lift and jaw thrust open the airway; they don't clear a foreign body.
• Recovery position and CPR — The recovery position and CPR are for unconscious patients.

⭐ Key point: For infants under 1 year, use 5 back blows and 5 CHEST thrusts (not abdominal thrusts). If the person becomes unconscious, start CPR.$x$, null),
(32, $x$In a ventilated life-threatening asthma patient, an inspiratory pressure target is generally set at:$x$, $x$30–35cmH2O$x$, $x$✅ Correct answer: 30–35cmH2O
In ventilated life-threatening asthma, the airways are very narrow, so high pressures are needed. With pressure-controlled ventilation, the inspiratory pressure target is usually around 30–35 cmH₂O. This gives enough ventilation while trying to limit barotrauma.

❌ Why the other options are wrong:
• 80–90cmH2O — 80–90 cmH₂O would cause barotrauma (pneumothorax).
• 10–15cmH2O — 10–15 cmH₂O is too low to ventilate tight airways.
• 50–60cmH2O — 50–60 cmH₂O is too high.

⭐ Key point: Asthma ventilation: low rate, long expiratory time, small tidal volumes, minimal PEEP, and permissive hypercapnia, with a watch for auto-PEEP.$x$, null),
(33, $x$Which route of intubation is preferable in children undergoing intensive care and requiring prolonged intubation?$x$, $x$Tracheostomy$x$, $x$✅ Correct answer: Nasotracheal intubation
For children who need PROLONGED intubation in intensive care, NASOTRACHEAL intubation is traditionally preferred. The tube is held more firmly by the nose, moves less with mouth and head movement, is better tolerated (less gagging and biting), allows easier mouth care, and reduces the risk of accidental extubation. (The old answer key said "tracheostomy"; a tracheostomy is a surgical airway, not a route of intubation, so the key has been corrected to nasotracheal.)

❌ Why the other options are wrong:
• Laryngotracheal intubation — Laryngotracheal intubation isn't a standard route category.
• Tracheostomy — Tracheostomy is a surgical airway considered for VERY prolonged ventilation, not a route of intubation.
• Orotracheal intubation — Orotracheal intubation is used for emergencies but is less stable for long-term use in children.

⭐ Key point: Avoid nasal routes in suspected basal skull fracture and coagulopathy (risk of nosebleeds).$x$, $x$Nasotracheal intubation$x$),
(34, $x$Patient was wheeled into ICU from A&E unit, during assessment percussing the chest bilaterally provided hyper-resonance or dullness, this is an evidence for internal injuries such as:$x$, $x$Pneumothorax$x$, $x$✅ Correct answer: Pneumothorax
Percussing the chest gives clues about what's inside. HYPER-RESONANCE (a hollow, drum-like sound) means extra air, as in PNEUMOTHORAX. DULLNESS means fluid or solid tissue, as in haemothorax, effusion or consolidation. After trauma, hyper-resonance with reduced breath sounds strongly suggests pneumothorax.

❌ Why the other options are wrong:
• Atelectasis — Atelectasis causes dullness, not hyper-resonance.
• Asthma — Asthma may cause slight hyper-resonance but isn't an internal injury.
• Haematoma — A haematoma causes dullness, but the question's hyper-resonance points to pneumothorax.

⭐ Key point: After chest trauma: hyper-resonance = pneumothorax; stony dullness = haemothorax or effusion.$x$, null),
(35, $x$The critical care nurse while managing patient's airways knows that, the most appropriate head position to prevent falling of tongue thus preventing obstruction of the upper airway is:$x$, $x$Sniffing position$x$, $x$✅ Correct answer: Sniffing position
The SNIFFING position (the neck slightly bent forward and the head tilted back, like sniffing the morning air) lines up the mouth, pharynx and larynx, and lifts the tongue away from the back of the throat, opening the upper airway. It is used for airway management and intubation.

❌ Why the other options are wrong:
• Right lateral position — The right lateral position is a recovery position option, but not the classic head position for airway alignment.
• Dorsal position — The dorsal (supine) position alone lets the tongue fall back.
• Left lateral position — The left lateral position is a recovery position, used to drain secretions.

⭐ Key point: For an unconscious patient who is breathing, the recovery (lateral) position protects the airway. For airway opening, use head tilt–chin lift or jaw thrust.$x$, null),
(36, $x$Concerning pressure-control versus volume-control ventilation:$x$, $x$Volume control will provide a set tidal volume.$x$, $x$✅ Correct answer: Volume control will provide a set tidal volume.
VOLUME-CONTROL ventilation delivers a SET TIDAL VOLUME with each breath. The pressure needed to deliver it changes with lung stiffness (compliance) and airway resistance. In pressure control, the PRESSURE is set and the tidal volume varies with compliance.

❌ Why the other options are wrong:
• Lung compliance is irrelevant with pressure control. — Lung compliance matters greatly in pressure control (it determines the tidal volume).
• Paediatric ventilation never uses pressure control ventilation. — Pressure control IS commonly used in paediatric ventilation.
• Pressure control will provide a set tidal volume. — Pressure control does NOT guarantee a set tidal volume.

⭐ Key point: Volume control: watch the peak and plateau pressures. Pressure control: watch the tidal volume and minute volume.$x$, null),
(37, $x$Tidal volume 500 mL, plateau pressure 30 cmH₂O and PEEP 10 cmH₂O give a static compliance of:$x$, $x$25 mL/cmH₂O$x$, $x$✅ Correct answer: 25 mL/cmH₂O
Static compliance = tidal volume ÷ (plateau pressure − PEEP) = 500 ÷ (30 − 10) = 500 ÷ 20 = 25 mL/cmH₂O. Normal compliance is about 50–100 mL/cmH₂O, so this shows STIFF lungs (as in ARDS or pulmonary oedema).

❌ Why the other options are wrong:
• 12.5 mL/cmH₂O — 12.5 comes from a calculation error.
• 16.7 mL/cmH₂O — 16.7 = 500 ÷ 30, which ignores PEEP.
• 50 mL/cmH₂O — 50 mL/cmH₂O is normal, not the result here.

⭐ Key point: Driving pressure = plateau − PEEP (here 20). Keep it below 15 if possible to protect the lungs.$x$, null),
(38, $x$In ARDS, driving pressure (plateau minus PEEP) is linked to survival when kept:$x$, $x$Below about 15 cmH₂O$x$, $x$✅ Correct answer: Below about 15 cmH₂O
DRIVING PRESSURE (plateau pressure minus PEEP) reflects how much the lungs are stretched with each breath relative to their size. Studies show that keeping it BELOW about 15 cmH₂O is linked to BETTER SURVIVAL in ARDS. A high driving pressure means more stress and injury to the lungs.

❌ Why the other options are wrong:
• Above about 25 cmH₂O — Above 25 cmH₂O is linked to higher mortality.
• Above the peak pressure — Driving pressure can't be above peak pressure.
• Exactly equal to the PEEP — Driving pressure equal to PEEP makes no sense.

⭐ Key point: Lower the driving pressure by reducing tidal volume or optimising PEEP.$x$, null),
(39, $x$Prone positioning in moderate–severe ARDS is recommended when PaO₂/FiO₂ is below 150 mmHg, for at least:$x$, $x$16 hours a day$x$, $x$✅ Correct answer: 16 hours a day
In moderate to severe ARDS (P/F ratio below 150 mmHg), PRONE positioning (lying face down) improves oxygenation and survival. It must be done for long periods: at least 16 HOURS a day. It works by opening collapsed lung areas at the back and improving V/Q matching.

❌ Why the other options are wrong:
• 1 hour a day — 1 hour a day is too short to work.
• 4 hours a week — 4 hours a week is far too short.
• 30 minutes after each meal — 30 minutes after meals is unrelated to ARDS treatment.

⭐ Key point: Nursing in prone position: protect the eyes, face and pressure areas, secure the ETT and lines, and continue enteral feeding with caution.$x$, null),
(40, $x$A ventilated patient has PaO₂ 90 mmHg on FiO₂ 0.6 with PEEP 8. By the Berlin definition this ARDS is:$x$, $x$Moderate (P/F ratio 100–200)$x$, $x$✅ Correct answer: Moderate (P/F ratio 100–200)
P/F ratio = PaO₂ ÷ FiO₂ = 90 ÷ 0.6 = 150 mmHg. By the Berlin definition (with PEEP 5 or above): mild 200–300, MODERATE 100–200, severe 100 or less. A P/F of 150 means MODERATE ARDS.

❌ Why the other options are wrong:
• Severe (P/F ratio below 100) — Severe ARDS is a P/F of 100 or less.
• Not ARDS, as P/F is above 300 — The P/F is 150, not above 300.
• Mild (P/F ratio 200–300) — Mild ARDS is 200–300.

⭐ Key point: A P/F below 150 means moderate to severe ARDS: consider prone positioning and neuromuscular blockade.$x$, null),
(41, $x$A nurse notices frequent artifacts on the ECG monitor for a client whose leads are connected by cable to a console at the bedside. The nurse examines the client to determine the cause. Which of the following items is unlikely to be responsible for the artifact?$x$, $x$Tightly secured cable connections.$x$, $x$✅ Correct answer: Tightly secured cable connections.
Artefact (interference) on the ECG comes from things that disturb the electrical signal: patient MOVEMENT (shivering, tremor), electrodes on HAIRY skin (poor contact), electrodes on the LIMBS (more muscle movement), loose connections and dried gel. TIGHTLY SECURED cable connections REDUCE artefact, so they are UNLIKELY to be the cause.

❌ Why the other options are wrong:
• Leads applied over hairy areas. — Hairy areas DO cause artefact (poor contact).
• Frequent movement of the client. — Frequent movement DOES cause artefact.
• Leads applied to the limbs. — Limb leads DO cause more artefact from muscle movement.

⭐ Key point: Reduce artefact: clip hair, clean and dry the skin, use fresh electrodes, place them over bone on the chest, and secure the cables.$x$, null),
(42, $x$A patient is on the AC volume ventilation after open heart surgery, which of the following is to be taken care of during this mode to pneumothorax?$x$, $x$high peak inspiratory pressure$x$, $x$✅ Correct answer: high peak inspiratory pressure
In assist-control volume ventilation, the machine forces a set volume into the lungs. If the lungs are stiff or the volume is too large, the PEAK INSPIRATORY PRESSURE rises, increasing the risk of BAROTRAUMA and PNEUMOTHORAX (especially after open heart surgery, with fragile lungs and chest drains). Watch the peak and plateau pressures closely.

❌ Why the other options are wrong:
• keeping the patient sedated — Sedation is used for comfort, but it isn't the main way to prevent pneumothorax.
• delivering low PEEP — Low PEEP doesn't cause pneumothorax (high PEEP increases the risk).
• patient effort to breath more comfortable — Patient comfort with breathing isn't the key monitoring point for pneumothorax.

⭐ Key point: Signs of pneumothorax on a ventilator: rising peak pressures, falling SpO₂, falling BP, absent breath sounds on one side.$x$, null),
(43, $x$Chest tube drainage exceeding approximately 200–300mL per hour after coronary artery bypass surgery should prompt concern for:$x$, $x$Postoperative haemorrhage requiring urgent evaluation$x$, $x$✅ Correct answer: Postoperative haemorrhage requiring urgent evaluation
After CABG, some chest drain bleeding is normal, but output of more than about 200–300 mL per HOUR (or 400 mL in the first hour, or persistent output over 100–200 mL/hour) suggests ongoing surgical BLEEDING (POSTOPERATIVE HAEMORRHAGE). It may need correction of clotting, blood transfusion and a return to theatre.

❌ Why the other options are wrong:
• Resolution of the surgical procedure — High drainage doesn't mean the procedure has resolved.
• Chest tube malfunction only, with no clinical significance — High drainage is clinically significant, not just a tube problem.
• Normal expected postoperative drainage — This volume is above normal expected drainage.

⭐ Key point: Also watch for SUDDEN cessation of drainage with low BP and rising CVP, which suggests cardiac tamponade from blocked drains.$x$, null),
(44, $x$Which of the following is not a common potential side effect of Class II Antiarrhythmic drugs (e.g. propranolol, atenolol, carvedilol)?$x$, $x$Hepatotoxicity$x$, $x$✅ Correct answer: Hepatotoxicity
Class II antiarrhythmics are BETA-BLOCKERS (propranolol, atenolol, carvedilol, metoprolol). They block the heart's beta-receptors, causing BRADYCARDIA (slow heart), HYPOTENSION (low BP) and NEGATIVE INOTROPY (weaker contraction). They can also cause bronchospasm, tiredness and hide hypoglycaemia. HEPATOTOXICITY (liver damage) is NOT a typical side effect.

❌ Why the other options are wrong:
• Hypotension — Hypotension IS a common side effect.
• Negative inotropes — Negative inotropy IS a common effect.
• Bradycardia — Bradycardia IS a common side effect.

⭐ Key point: Avoid beta-blockers in severe asthma, acute heart failure with shock, and high-degree heart block.$x$, null),
(45, $x$As a nurse performing cardio-pulmonary resuscitation on a cardiac arrest patient, you are aware that the correct cardiac compression to optimised cardiac function is:$x$, $x$120 Compressions per minute$x$, $x$✅ Correct answer: 120 Compressions per minute
Current guidelines recommend chest compressions at 100–120 per MINUTE, with the aim of about 120/min at the upper end. The keyed answer is 120. Push 5–6 cm deep in adults, allow full chest recoil, and minimise pauses.

❌ Why the other options are wrong:
• 110 compressions per minute — 110 per minute is within the range, but the keyed answer is the upper target.
• 115 compressions per minute — 115 per minute is within the range, but not the keyed answer.
• 100 Compressions per minute — 100 per minute is the lower limit, not the optimum here.

⭐ Key point: Change the person doing compressions every 2 minutes to avoid fatigue. Use capnography to check compression quality.$x$, null),
(46, $x$ST-segment elevation in leads II, III, and aVF is most consistent with a myocardial infarction affecting the:$x$, $x$Inferior wall$x$, $x$✅ Correct answer: Inferior wall
Leads II, III and aVF view the INFERIOR wall of the left ventricle. ST elevation in these leads means an INFERIOR MI, usually caused by blockage of the right coronary artery. Watch for bradycardia, heart block and right ventricular infarction.

❌ Why the other options are wrong:
• Anterior wall — An anterior MI shows changes in V1–V4.
• Lateral wall — A lateral MI shows changes in I, aVL, V5–V6.
• Posterior wall exclusively — A posterior MI shows ST depression in V1–V3 with tall R waves.

⭐ Key point: In an inferior MI, check right-sided leads (V4R). If the RV is involved, give fluids and avoid nitrates.$x$, null),
(47, $x$The action to be taken by critical care nurse before administering morphine 4.0 mg intravenously to a patient complaining of incisional pain is$x$, $x$Assess the patient's respiratory status.$x$, $x$✅ Correct answer: Assess the patient's respiratory status.
IV MORPHINE can cause RESPIRATORY DEPRESSION (slow, shallow breathing), especially in the elderly, the opioid-naive, and patients with lung disease or on other sedatives. Before giving it, ASSESS RESPIRATORY STATUS: rate, depth, SpO₂ and sedation level. Don't give it if the respiratory rate is low or the patient is very drowsy.

❌ Why the other options are wrong:
• Monitor the patient's heart rate. — Heart rate is important, but respiratory status is the priority for opioids.
• Clarify the order with the prescriber. — Clarifying the order isn't needed unless the order is unclear.
• Assess the patient's incision. — Assessing the incision is useful but isn't the safety priority before giving morphine.

⭐ Key point: After IV morphine, monitor respiratory rate, sedation and SpO₂, and keep naloxone available.$x$, null),
(48, $x$A heart rate below what value is used as an ICU admission threshold?$x$, $x$<55bpm$x$, $x$✅ Correct answer: <40bpm
ICU admission and outreach ("call criteria") use physiological thresholds that suggest a patient is dangerously unstable. A heart rate BELOW 40 bpm (or above 140–150) is commonly used. Such a slow rate may cause low cardiac output and signals conditions like complete heart block, hypoxia or drug toxicity. (The old answer key said below 55 bpm; the usual threshold is below 40, so the key has been corrected.)

❌ Why the other options are wrong:
• <90bpm — Below 90 bpm is normal.
• <55bpm — Below 55 bpm is mild bradycardia and often normal (for example in athletes).
• <70bpm — Below 70 bpm is normal.

⭐ Key point: Other common triggers: systolic BP below 90, RR below 8 or above 30, SpO₂ below 90%, a fall in GCS of 2 or more, seizures.$x$, $x$<40bpm$x$),
(49, $x$The classic triad of fat embolism syndrome is:$x$, $x$Confusion, dyspnoea, petechiae$x$, $x$✅ Correct answer: Confusion, dyspnoea, petechiae
Fat embolism syndrome happens 24–72 hours after long bone or pelvic fractures. Fat droplets from the marrow travel to small vessels. The classic TRIAD: 1) DYSPNOEA (breathlessness and hypoxia, as fat blocks lung capillaries), 2) CONFUSION (neurological: drowsiness, agitation), and 3) PETECHIAE (a pinpoint rash on the chest, armpits and conjunctiva).

❌ Why the other options are wrong:
• Hypotension, tachycardia, pallor — Low BP, fast pulse and pallor describe shock.
• Fever, cough, chest pain — Fever, cough and chest pain describe pneumonia.
• Jaundice, ascites, confusion — Jaundice, ascites and confusion describe liver failure.

⭐ Key point: Prevent with early fracture fixation. Treatment is supportive (oxygen, ventilation if needed).$x$, null),
(50, $x$A nurse is assessing Blood pressure of the patient, she knows that the invasive method of measuring Blood pressure is:$x$, $x$Arterial line$x$, $x$✅ Correct answer: Arterial line
An ARTERIAL LINE is a catheter placed in an artery (usually the radial) and connected to a pressure transducer. It measures BP DIRECTLY and CONTINUOUSLY (beat by beat), making it the INVASIVE method of BP measurement. It's used in shock, on vasopressors, and when frequent ABGs are needed.

❌ Why the other options are wrong:
• Cardiac Monitor — A cardiac monitor shows the ECG, not invasive BP.
• PA catheter — A PA catheter measures pressures in the pulmonary artery, not systemic BP.
• Blood pressure cuff — A BP cuff is NON-invasive.

⭐ Key point: Arterial line care: level and zero the transducer, keep the pressure bag at 300 mmHg, check hand perfusion, and label the line clearly.$x$, null),
(51, $x$A nurse monitors a thyroidectomy patient for thyroid crisis. The most important vital sign to observe is:$x$, $x$Pulse rate$x$, $x$✅ Correct answer: Pulse rate
Thyroid crisis (storm) after thyroidectomy releases a flood of thyroid hormone, causing a very fast heart rate (tachycardia above 140, AF), fever, agitation and heart failure. The PULSE RATE is the most important vital sign to watch, because tachycardia is usually the earliest and most telling sign.

❌ Why the other options are wrong:
• Blood pressure — BP may change, but tachycardia appears earlier.
• Respiratory rate — Respiratory rate is important but is not the key early sign.
• Temperature — Temperature rises in thyroid storm, but tachycardia is often noticed first.

⭐ Key point: Thyroid storm treatment: beta-blockers (propranolol), anti-thyroid drugs (PTU), iodine, steroids and cooling.$x$, null),
(52, $x$The purpose of inserting central venous pressure (CVP) into the major vein of body such as jugular vein, subclavian vein, and femoral is to monitor the pressure in;$x$, $x$Right ventricle$x$, $x$✅ Correct answer: Right ventricle
A CVP catheter sits in the superior vena cava near the right atrium. It measures RIGHT ATRIAL pressure, which reflects the FILLING pressure of the RIGHT VENTRICLE (right ventricular end-diastolic pressure, because the tricuspid valve is open in diastole). It guides fluid status and right heart function.

❌ Why the other options are wrong:
• Pulmonary artery — The pulmonary artery is measured with a PA catheter.
• Left atrium — The left atrium is estimated by the wedge pressure (PAWP).
• Left ventricle — The left ventricle is estimated indirectly by the wedge pressure.

⭐ Key point: Normal CVP is 2–8 mmHg. A high CVP means fluid overload, right heart failure or tamponade; a low CVP means hypovolaemia.$x$, null),
(53, $x$A nurse is caring for a post- CABG patient. While performing hemodynamic monitoring, he noted that Pulmonary Artery pressure is 31/18. The nurse would understand which of the following abnormality as the cause of the this PA pressure reading:$x$, $x$Left side heart failure$x$, $x$✅ Correct answer: Left side heart failure
Normal pulmonary artery pressure is about 15–25 / 8–15 mmHg. A PA pressure of 31/18 is RAISED. After CABG, the commonest cause is LEFT SIDED HEART FAILURE: the weakened left ventricle can't pump effectively, so pressure backs up into the left atrium, the lung veins and the pulmonary artery (post-capillary pulmonary hypertension).

❌ Why the other options are wrong:
• Pulmonary valve stenosis — Pulmonary valve stenosis causes a pressure DROP across the valve, with low PA pressure.
• Right sided heart failure — Right heart failure alone doesn't raise PA pressure (the RV can't generate pressure).
• Pulmonary infection — A lung infection can raise PA pressure slightly, but LV failure is the most likely cause here.

⭐ Key point: Check the wedge pressure: a high PAWP confirms the left heart is the cause.$x$, null),
(54, $x$Malignant hypertension is defined as a medical emergency involving:$x$, $x$SBP>180, DBP>120, plus organ damage$x$, $x$✅ Correct answer: SBP>180, DBP>120, plus organ damage
MALIGNANT hypertension (a hypertensive emergency) is very high BP (typically systolic above 180 and/or diastolic above 120 mmHg) WITH acute ORGAN DAMAGE: the brain (encephalopathy, stroke), eyes (papilloedema, retinal haemorrhages), kidneys (AKI), and heart (pulmonary oedema, ACS).

❌ Why the other options are wrong:
• Low blood pressure with organ damage — Low BP with organ damage is shock.
• Only diastolic pressure elevation — It involves both systolic and diastolic pressure.
• Any blood pressure reading above normal — Any high reading without organ damage isn't malignant hypertension.

⭐ Key point: Lower BP gradually: by no more than 25% in the first hour, using IV drugs in the ICU.$x$, null),
(55, $x$Inj. Digoxin ampoules available contains 500 micrograms in 2ml. What volume is needed when 350 microgram is prescribed?$x$, $x$0.7ml$x$, $x$✅ Correct answer: 1.4ml
The stock is 500 micrograms in 2 mL, so the concentration is 500 ÷ 2 = 250 micrograms per mL. Volume needed = dose wanted ÷ concentration = 350 ÷ 250 = 1.4 mL. Using the formula (want ÷ have) × volume: (350 ÷ 500) × 2 = 0.7 × 2 = 1.4 mL. (The old answer key said 0.7 mL, which is the wrong answer; it has been corrected to 1.4 mL.)

❌ Why the other options are wrong:
• 0.7ml — 0.7 mL forgets to multiply by the 2 mL stock volume (it would give only 175 micrograms).
• 1.4µg — "1.4 µg" uses the wrong unit; the answer is a volume in mL.
• 0.7µg — "0.7 µg" is the wrong number and the wrong unit.

⭐ Key point: Formula: (Dose wanted ÷ Stock strength) × Stock volume. Always check the answer makes sense: 350 is less than 500, so the volume must be less than 2 mL.$x$, $x$1.4ml$x$),
(56, $x$A patient's ECG shows ST-segment depression in the anterior leads during an episode of chest pain, which resolves when the pain resolves. This pattern most likely represents:$x$, $x$Myocardial ischaemia$x$, $x$✅ Correct answer: Myocardial ischaemia
ST-segment DEPRESSION that appears DURING chest pain and goes away when the pain goes is the classic sign of reversible MYOCARDIAL ISCHAEMIA (lack of oxygen to the heart muscle, not yet an infarction), as in angina or NSTE-ACS.

❌ Why the other options are wrong:
• Normal variant with no clinical significance — It isn't a normal variant; it's linked to symptoms.
• Old, resolved myocardial infarction with no current significance — An old MI shows Q waves, not transient ST depression.
• Ventricular hypertrophy only — Ventricular hypertrophy can cause fixed ST changes (strain), not changes that come and go with pain.

⭐ Key point: Dynamic ST changes with chest pain need urgent assessment: troponin, aspirin, anticoagulation and cardiology review.$x$, null),
(57, $x$An arterial line trace becomes over-damped. The nurse expects:$x$, $x$Falsely low systolic and falsely high diastolic readings$x$, $x$✅ Correct answer: Falsely low systolic and falsely high diastolic readings
An OVER-DAMPED arterial line (from air bubbles, clots, kinks, soft tubing or a low flush bag) blunts the waveform. The SYSTOLIC reads FALSELY LOW and the DIASTOLIC reads FALSELY HIGH (the MAP is usually still roughly correct). The trace looks flattened, with a poor dicrotic notch.

❌ Why the other options are wrong:
• A correct systolic but zero diastolic reading — A correct systolic with zero diastolic doesn't describe damping.
• An accurate trace but a slow heart rate display — An over-damped trace isn't accurate.
• Falsely high systolic and falsely low diastolic readings — Falsely high systolic and falsely low diastolic describes UNDER-damping.

⭐ Key point: Check damping with the fast-flush (square wave) test, then remove bubbles, flush and check the system.$x$, null),
(58, $x$The fast-flush (square wave) test on a pressure line checks:$x$, $x$The dynamic response (damping) of the system$x$, $x$✅ Correct answer: The dynamic response (damping) of the system
The fast-flush (square wave) test checks the DYNAMIC RESPONSE (damping) of the pressure monitoring system. Pull the flush valve briefly, release it, and watch the trace: an optimally damped system shows 1–2 oscillations before returning to the waveform. More oscillations = under-damped; a slow return with no oscillation = over-damped.

❌ Why the other options are wrong:
• Whether the catheter tip is intravascular — It doesn't check whether the catheter is in the vessel.
• The correct zero level of the transducer — Zeroing is a separate procedure.
• The patient's fluid responsiveness — Fluid responsiveness is tested by PLR or PPV.

⭐ Key point: Do the square wave test at the start of each shift and whenever the waveform looks wrong.$x$, null),
(59, $x$If a CVP transducer is placed below the phlebostatic axis, the reading will be:$x$, $x$Falsely high$x$, $x$✅ Correct answer: Falsely high
The transducer must be at the level of the right atrium (the phlebostatic axis: 4th intercostal space, mid-axillary line). If it is placed BELOW this level, the column of fluid above it adds extra pressure, so the reading is FALSELY HIGH. If it is placed above, the reading is falsely low.

❌ Why the other options are wrong:
• Unchanged — The reading will change.
• Zero — It won't read zero.
• Falsely low — Falsely low readings happen when the transducer is ABOVE the axis.

⭐ Key point: Every 1 cm difference in height changes the reading by about 0.74 mmHg. Re-level after every position change.$x$, null),
(60, $x$After cardiac surgery, chest drain output suddenly stops while CVP rises and BP falls with pulsus paradoxus. The nurse suspects:$x$, $x$Cardiac tamponade from clotted drains$x$, $x$✅ Correct answer: Cardiac tamponade from clotted drains
After cardiac surgery, if chest drain output SUDDENLY STOPS (the drains are blocked by clot) while CVP RISES, BP FALLS and PULSUS PARADOXUS appears, blood is collecting around the heart and squeezing it: CARDIAC TAMPONADE. It is a life-threatening emergency.

❌ Why the other options are wrong:
• Hypovolaemia needing fluid restriction — Hypovolaemia would cause LOW CVP, and fluid restriction would be wrong.
• Right-sided pneumothorax only — A pneumothorax doesn't usually cause pulsus paradoxus with a rising CVP and blocked drains.
• Recovery of normal clotting function — Stopped drainage with collapse isn't recovery.

⭐ Key point: Milk or strip the drains as per policy, call the surgeon immediately, and prepare for re-sternotomy.$x$, null),
(61, $x$A patient in the ICU develops new-onset agitation, disorientation, and pulling at lines, fluctuating throughout the day. The nurse should assess for:$x$, $x$ICU delirium, using a validated delirium assessment tool$x$, $x$✅ Correct answer: ICU delirium, using a validated delirium assessment tool
New-onset AGITATION, DISORIENTATION, pulling at lines, with symptoms that FLUCTUATE through the day, are classic signs of ICU DELIRIUM (acute brain dysfunction). The nurse should assess with a validated tool such as CAM-ICU or ICDSC, then look for causes (infection, drugs, hypoxia, pain, metabolic problems).

❌ Why the other options are wrong:
• Normal ICU behaviour requiring no assessment — This behaviour needs assessment.
• Nothing — this is expected and not clinically significant — It is clinically significant; delirium increases mortality.
• Definite dementia with no other cause considered — Dementia is chronic, not sudden and fluctuating.

⭐ Key point: Delirium prevention: reorientation, sleep, early mobility, pain control, less sedation, family involvement.$x$, null),
(62, $x$Upper motor neuron impairment produces which change in muscle tone?$x$, $x$Spasticity$x$, $x$✅ Correct answer: Spasticity
Upper motor neurone (UMN) lesions (stroke, spinal cord injury) remove the brain's control over spinal reflexes. Muscle tone INCREASES, causing SPASTICITY: resistance that increases with faster movement ("clasp-knife"), along with brisk reflexes and a Babinski sign.

❌ Why the other options are wrong:
• Flaccidity — Flaccidity (floppy tone) is a LOWER motor neurone sign.
• "Cog-wheel" rigidity — Cog-wheel rigidity is seen in Parkinson's disease.
• Myoclonus — Myoclonus is sudden jerking movements, not a tone change.

⭐ Key point: In acute spinal cord injury, tone is initially flaccid (spinal shock), then becomes spastic over weeks.$x$, null),
(63, $x$What is the generally recommended target cerebral perfusion pressure (CPP) in the management of severe traumatic brain injury?$x$, $x$60-70 mmHg$x$, $x$✅ Correct answer: 60-70 mmHg
In severe traumatic brain injury, the brain needs enough blood flow. Guidelines recommend keeping CEREBRAL PERFUSION PRESSURE (CPP = MAP − ICP) at 60–70 mmHg. Too low causes brain ischaemia; too high (above 70) can increase complications like ARDS.

❌ Why the other options are wrong:
• 90-100 mmHg — 90–100 mmHg is too high.
• Greater than 100 mmHg — Above 100 is too high.
• 40-50 mmHg — 40–50 mmHg is too low and risks brain ischaemia.

⭐ Key point: Keep ICP below 22 mmHg and CPP at 60–70. Avoid hypotension (systolic below 110 in head injury).$x$, null),
(64, $x$Which brainstem structure contains the primary neurons responsible for the automatic, rhythmic control of breathing?$x$, $x$The medulla oblongata$x$, $x$✅ Correct answer: The medulla oblongata
The MEDULLA OBLONGATA (in the brainstem) contains the respiratory centres (the dorsal and ventral respiratory groups) that automatically set the rhythm of breathing. It responds to CO₂ and pH changes through the central chemoreceptors. The pons fine-tunes the pattern.

❌ Why the other options are wrong:
• The cerebellum — The cerebellum controls balance and coordination.
• The hypothalamus — The hypothalamus controls temperature, hunger and hormones.
• The occipital cortex — The occipital cortex processes vision.

⭐ Key point: Damage to the medulla (herniation, brainstem stroke) causes abnormal breathing or apnoea.$x$, null),
(65, $x$Which of the following is a meningeal sign?$x$, $x$Kernig$x$, $x$✅ Correct answer: Kernig
KERNIG's sign is a MENINGEAL sign. With the patient lying flat and the hip bent to 90°, straightening the knee causes pain or resistance in the back of the thigh and the back. It is caused by inflamed meninges and nerve roots being stretched. It is seen in meningitis and subarachnoid haemorrhage.

❌ Why the other options are wrong:
• Babinski — Babinski is an upper motor neurone sign.
• Romberg — Romberg tests balance (proprioception).
• Lasègue — Lasègue (straight leg raise) tests sciatic nerve or lumbar root irritation.

⭐ Key point: Other meningeal signs: neck stiffness, Brudzinski's sign, photophobia.$x$, null),
(66, $x$Which pathological reflex occurs in central paralysis (upper motor neuron lesion)?$x$, $x$Babinski$x$, $x$✅ Correct answer: Babinski
The BABINSKI reflex (the big toe goes up and the toes fan out when the sole is stroked) is the classic PATHOLOGICAL reflex of an UPPER MOTOR NEURONE (central) lesion: damage to the corticospinal tract from stroke, brain injury, MS or spinal cord injury.

❌ Why the other options are wrong:
• Brudzinski — Brudzinski's sign is a meningeal sign.
• Neri — Neri's sign is a less common test for nerve root irritation.
• Brown-Séquard — Brown-Séquard is a syndrome (hemisection of the spinal cord), not a reflex.

⭐ Key point: A positive Babinski is normal in babies under about 1–2 years.$x$, null),
(67, $x$A patient is assessed as GCS E3 V4 M5. The total GCS score is:$x$, $x$12$x$, $x$✅ Correct answer: 12
Add the three parts: Eye opening E3 (opens eyes to speech) + Verbal V4 (confused conversation) + Motor M5 (localises to pain) = 3 + 4 + 5 = 12. A GCS of 12 is a MODERATE head injury (9–12).

❌ Why the other options are wrong:
• 10 — 10 is wrong; it doesn't match the sum.
• 8 — 8 would be severe.
• 15 — 15 is normal (E4 V5 M6).

⭐ Key point: GCS: Eyes 1–4, Verbal 1–5, Motor 1–6. Total 3–15. Always report the individual parts, not just the total.$x$, null),
(68, $x$Normal intracranial pressure in an adult is generally considered to be:$x$, $x$0–15 mmHg$x$, $x$✅ Correct answer: 0–15 mmHg
Normal intracranial pressure in adults is about 0–15 mmHg (some sources say 5–15). Pressures above 20–22 mmHg need treatment, because they reduce brain perfusion and risk herniation.

❌ Why the other options are wrong:
• Above 25 mmHg at baseline — Above 25 mmHg at baseline is HIGH.
• 50–60 mmHg — 50–60 mmHg is dangerously high.
• 30–40 mmHg — 30–40 mmHg is dangerously high.

⭐ Key point: CPP = MAP − ICP. Keep ICP below 22 and CPP at 60–70 mmHg.$x$, null),
(69, $x$Which is NOT an ancillary investigation for brainstem death?$x$, $x$Electromyography$x$, $x$✅ Correct answer: Electromyography
Ancillary (supportive) tests for brainstem death show NO BLOOD FLOW to the brain (cerebral angiography, transcranial Doppler, CT angiography, nuclear perfusion scan) or NO BRAIN ELECTRICAL ACTIVITY (EEG). ELECTROMYOGRAPHY (EMG) tests MUSCLE and peripheral nerve activity, not the brain, so it is NOT an ancillary test for brainstem death.

❌ Why the other options are wrong:
• Cerebral angiography — Cerebral angiography IS an ancillary test (no brain blood flow).
• Electroencephalography — EEG IS an ancillary test (no brain electrical activity).
• Transcranial Doppler — Transcranial Doppler IS an ancillary test (reverberating or absent flow).

⭐ Key point: In most countries, brainstem death is diagnosed clinically. Ancillary tests are used when clinical tests can't be fully completed.$x$, null),
(70, $x$Voluntary control of breathing (e.g. holding one's breath) originates in the:$x$, $x$Cerebral cortex$x$, $x$✅ Correct answer: Cerebral cortex
Breathing is automatic (controlled by the medulla), but we can also control it VOLUNTARILY: holding our breath, breathing faster, speaking, singing. This voluntary control comes from the CEREBRAL CORTEX (motor cortex), which can temporarily override the brainstem.

❌ Why the other options are wrong:
• Medulla oblongata — The medulla controls AUTOMATIC breathing.
• Pons only — The pons fine-tunes breathing but isn't the voluntary centre.
• Spinal cord — The spinal cord carries signals but doesn't originate voluntary control.

⭐ Key point: We can't hold our breath until we die: rising CO₂ eventually forces the medulla to make us breathe.$x$, null),
(71, $x$A client is undergoing a comphrensive admission assessment, the critical care nurse knows that, the single most significant indicator of cerebral perfusion and functioning is called$x$, $x$Level of consciousness$x$, $x$✅ Correct answer: Level of consciousness
LEVEL OF CONSCIOUSNESS (LOC) is the single most sensitive and earliest indicator of how well the brain is perfused and functioning. A subtle change (restlessness, confusion, drowsiness) often appears before other signs of deterioration such as pupil changes or Cushing's triad.

❌ Why the other options are wrong:
• Intra cranial pressure — ICP is a measured value, not the clinical indicator.
• Glasgow coma scale — The GCS is a tool for MEASURING level of consciousness.
• Pupils dilatation — Pupil dilatation is a later sign of brain compression.

⭐ Key point: Report ANY change in level of consciousness promptly. It is often the first sign of trouble.$x$, null),
(72, $x$A polyneuropathic pattern of sensory loss presents as:$x$, $x$Numbness and pain in the distal parts of the extremities$x$, $x$✅ Correct answer: Numbness and pain in the distal parts of the extremities
Polyneuropathy (damage to many peripheral nerves, as in diabetes, alcohol, B12 deficiency or drugs) affects the LONGEST nerves first. Symptoms start in the feet and hands, giving a symmetrical "glove-and-stocking" pattern of NUMBNESS, PAIN, tingling and burning in the DISTAL parts of the limbs.

❌ Why the other options are wrong:
• Numbness and analgesia in half of the body — Numbness of half the body suggests a brain lesion (a stroke).
• Analgesia and sensory ataxia in the proximal parts of the extremities — Proximal sensory loss doesn't fit polyneuropathy.
• Pain and sensory ataxia in half of the body — Pain and ataxia in half the body suggest a central lesion.

⭐ Key point: Protect numb feet: check them daily, wear proper footwear, and test bath water temperature.$x$, null),
(73, $x$One of the tools used for monitoring a polytrauma patient is Glasgow Coma scale. The second parameter has a total of what score?$x$, $x$6$x$, $x$✅ Correct answer: 5
The Glasgow Coma Scale has three parameters in this order: 1) EYE opening (maximum 4), 2) VERBAL response (maximum 5), 3) MOTOR response (maximum 6). The SECOND parameter, verbal response, has a maximum score of 5: orientated (5), confused (4), inappropriate words (3), incomprehensible sounds (2), none (1). (The old answer key said 6, which is the motor maximum; it has been corrected to 5.)

❌ Why the other options are wrong:
• 3 — 3 isn't the maximum of any GCS part.
• 6 — 6 is the maximum of the THIRD parameter (motor).
• 15 — 15 is the total maximum GCS.

⭐ Key point: Total GCS ranges from 3 to 15. A GCS of 8 or less means severe injury.$x$, $x$5$x$),
(74, $x$Which of these drugs is used as an antidote for paralytic agents$x$, $x$Neostigmin$x$, $x$✅ Correct answer: Neostigmin
NEOSTIGMINE is an anticholinesterase. It stops the breakdown of acetylcholine at the neuromuscular junction, so more acetylcholine is available to compete with NON-DEPOLARISING muscle relaxants (paralytic agents like rocuronium, vecuronium, atracurium), REVERSING their effect. It is given with glycopyrrolate or atropine to block its effects on the heart and gut.

❌ Why the other options are wrong:
• Atropine — Atropine is given WITH neostigmine to prevent bradycardia, but it doesn't reverse paralysis.
• Adrenaline — Adrenaline isn't a reversal agent.
• Atracurium — Atracurium IS a paralytic agent, not an antidote.

⭐ Key point: Sugammadex directly binds rocuronium and vecuronium and reverses them faster, even from deep block.$x$, null),
(75, $x$The validated clinical tools used in ICU for detecting delirium are:$x$, $x$CAM-ICU and ICDSC$x$, $x$✅ Correct answer: CAM-ICU and ICDSC
The two validated tools for detecting delirium in ICU patients (including those on ventilators) are the CAM-ICU (Confusion Assessment Method for the ICU) and the ICDSC (Intensive Care Delirium Screening Checklist). They check for acute change, inattention, disorganised thinking and altered consciousness.

❌ Why the other options are wrong:
• Braden and Waterlow scales — Braden and Waterlow assess pressure ulcer risk.
• MMSE and AVPU — MMSE assesses cognition (dementia) and needs a verbal patient; AVPU assesses consciousness.
• RASS and GCS — RASS assesses sedation level, and GCS assesses consciousness; neither detects delirium.

⭐ Key point: Use RASS first (the patient must be rousable, RASS −3 or higher) before doing CAM-ICU.$x$, null),
(76, $x$A patient exhibits rhythmic jerking of all four limbs with impaired awareness that correlates with epileptiform discharges on EEG. This is best classified as which of the following?$x$, $x$A convulsive seizure$x$, $x$✅ Correct answer: A convulsive seizure
RHYTHMIC jerking of all four limbs with IMPAIRED AWARENESS, with matching EPILEPTIFORM DISCHARGES on EEG, is a CONVULSIVE (generalised tonic-clonic) SEIZURE: abnormal, excessive electrical activity in the brain causing visible convulsions.

❌ Why the other options are wrong:
• Rigors from fever — Rigors (shivering with fever) don't cause epileptiform EEG changes.
• Decerebrate posturing only — Decerebrate posturing is rigid extension, not rhythmic jerking.
• A simple faint (vasovagal syncope) — A vasovagal faint is brief loss of consciousness without epileptiform EEG activity.

⭐ Key point: Seizures lasting more than 5 minutes are status epilepticus: give benzodiazepines.$x$, null),
(77, $x$Nimodipine is given after aneurysmal subarachnoid haemorrhage to:$x$, $x$Reduce delayed cerebral ischaemia from vasospasm$x$, $x$✅ Correct answer: Reduce delayed cerebral ischaemia from vasospasm
After aneurysmal subarachnoid haemorrhage (SAH), the blood around the brain arteries can cause them to spasm (VASOSPASM) from day 3–14, reducing blood flow and causing DELAYED CEREBRAL ISCHAEMIA (stroke-like deficits). NIMODIPINE (a calcium channel blocker, 60 mg orally every 4 hours for 21 days) improves outcomes by reducing this.

❌ Why the other options are wrong:
• Lower ICP by reducing CSF production — Nimodipine doesn't lower ICP by reducing CSF.
• Prevent rebleeding by clotting the aneurysm — Nimodipine doesn't prevent rebleeding; securing the aneurysm (coiling or clipping) does.
• Treat seizures in the first week — Nimodipine isn't an anti-seizure drug.

⭐ Key point: Watch for hypotension with nimodipine. Keep the patient normovolaemic, and avoid hypotension, which worsens ischaemia.$x$, null),
(78, $x$Hyperventilation to lower PaCO₂ in traumatic brain injury should be used:$x$, $x$Only briefly as a rescue for signs of herniation$x$, $x$✅ Correct answer: Only briefly as a rescue for signs of herniation
Lowering PaCO₂ by hyperventilation narrows the brain's blood vessels (vasoconstriction), which quickly lowers ICP, but it also REDUCES brain blood flow and can cause ISCHAEMIA. It should be used ONLY BRIEFLY as a RESCUE measure for signs of impending herniation (such as a blown pupil, Cushing's triad), while other treatments are started. The normal target is PaCO₂ 4.5–5.0 kPa (35–40 mmHg).

❌ Why the other options are wrong:
• Routinely to keep PaCO₂ below 3 kPa — Routine PaCO₂ below 3 kPa (22 mmHg) causes dangerous brain ischaemia.
• For all patients in the first 24 hours — Routine hyperventilation in all patients in the first 24 hours is harmful.
• Instead of sedation and head elevation — It doesn't replace sedation and head elevation.

⭐ Key point: Avoid hypocapnia, hypoxia and hypotension in brain injury.$x$, null),
(79, $x$After a head injury, urine output rises to 400 mL/h with low urine specific gravity and serum Na⁺ 152 mmol/L. The nurse suspects:$x$, $x$Diabetes insipidus; expect desmopressin$x$, $x$✅ Correct answer: Diabetes insipidus; expect desmopressin
After head injury, damage to the hypothalamus or pituitary can stop ADH release: cranial DIABETES INSIPIDUS. Without ADH, the kidneys pass large volumes of DILUTE urine (400 mL/hour, low specific gravity), so the blood becomes concentrated, with high SODIUM (152). Treatment is DESMOPRESSIN (synthetic ADH) and replacing fluid losses.

❌ Why the other options are wrong:
• Acute tubular necrosis; expect dialysis — ATN causes LOW urine output usually, and wouldn't cause high sodium this way.
• SIADH; expect fluid restriction — SIADH causes LOW urine output and LOW sodium.
• Cerebral salt wasting; expect hypertonic saline — Cerebral salt wasting causes LOW sodium.

⭐ Key point: DI: very high urine output, urine SG below 1.005, serum Na above 145. Monitor urine output hourly and sodium regularly.$x$, null),
(80, $x$Cerebral salt wasting differs from SIADH because in cerebral salt wasting the patient is:$x$, $x$Hypovolaemic and needs sodium and fluid replacement$x$, $x$✅ Correct answer: Hypovolaemic and needs sodium and fluid replacement
Both cerebral salt wasting (CSW) and SIADH cause low sodium after brain injury, but CSW patients are HYPOVOLAEMIC (dehydrated): the kidneys lose both salt AND water. Treatment is SODIUM and FLUID REPLACEMENT (0.9% or hypertonic saline, fludrocortisone). Fluid restriction would worsen dehydration and brain ischaemia.

❌ Why the other options are wrong:
• Hypervolaemic and needs loop diuretics — CSW patients are dry, not overloaded; diuretics would be harmful.
• Normonatraemic and needs no treatment — They have LOW sodium, not normal.
• Euvolaemic and needs strict fluid restriction — Euvolaemia with fluid restriction is the SIADH treatment.

⭐ Key point: Telling them apart: check fluid status (weight, CVP, urea, fluid balance). Dry = CSW; normal or wet = SIADH.$x$, null),
(81, $x$Daily weight monitoring in a patient with renal or cardiac fluid balance concerns is valuable because:$x$, $x$Rapid weight change closely reflects fluid gain or loss$x$, $x$✅ Correct answer: Rapid weight change closely reflects fluid gain or loss
DAILY WEIGHT is valuable because rapid weight change closely reflects FLUID gain or loss (1 kg ≈ 1 L of fluid). In heart or kidney patients, a sudden gain (such as more than 1–2 kg in a day) suggests fluid retention; a loss suggests diuresis or dehydration.

❌ Why the other options are wrong:
• It replaces the need for intake/output charting entirely — It doesn't replace intake/output charting; both are used together.
• It has no correlation with fluid status — It correlates closely with fluid status.
• It only reflects nutritional status — Short-term changes reflect FLUID, not nutrition (nutritional changes are slower).

⭐ Key point: Weigh at the same time each day, on the same scales, with the same clothing.$x$, null),
(82, $x$Which serum marker is increasingly used as an earlier and more specific indicator of reduced GFR than creatinine, particularly in patients with reduced muscle mass?$x$, $x$Cystatin C$x$, $x$✅ Correct answer: Cystatin C
CYSTATIN C is a protein made at a CONSTANT rate by all nucleated cells and filtered by the kidneys. Its blood level rises EARLIER than creatinine when GFR falls, and it isn't affected by muscle mass. This makes it useful in the elderly, malnourished, amputees and ICU patients with low muscle mass, where creatinine can look falsely normal.

❌ Why the other options are wrong:
• C-reactive protein — CRP is an inflammation marker.
• Alkaline phosphatase — Alkaline phosphatase is a liver and bone enzyme.
• Troponin — Troponin is a heart muscle marker.

⭐ Key point: Creatinine depends on muscle mass. In frail or wasted patients, a normal creatinine may hide reduced kidney function.$x$, null),
(83, $x$Which viral hepatitis is the most common viral cause of fulminant hepatic failure?$x$, $x$Hepatitis B$x$, $x$✅ Correct answer: Hepatitis B
HEPATITIS B is the most common VIRAL cause of fulminant (acute) liver failure worldwide, and in Nigeria. Acute infection, flare-ups of chronic infection, or reactivation (with chemotherapy or steroids) can cause sudden severe liver failure.

❌ Why the other options are wrong:
• Hepatitis C — Hepatitis C rarely causes fulminant failure.
• Hepatitis A — Hepatitis A can cause it but is less common than B.
• Hepatitis E only — Hepatitis E can cause it (especially in pregnancy), but B is more common overall.

⭐ Key point: Hepatitis B is preventable by vaccination. All health workers should be vaccinated and check their antibody levels.$x$, null),
(84, $x$The nurse is preparing to change the dressing on a central line used for TPN. What type of dressing is most appropriate?$x$, $x$A transparent, semipermeable membrane dressing$x$, $x$✅ Correct answer: A transparent, semipermeable membrane dressing
A TRANSPARENT, semipermeable membrane dressing is preferred for central lines (including TPN lines). It lets the nurse SEE the insertion site for redness, swelling or pus without removing the dressing, keeps the site sealed against bacteria, and allows moisture to escape. Change it every 7 days, or sooner if loose, wet or soiled.

❌ Why the other options are wrong:
• A simple gauze dressing — Gauze hides the site and must be changed every 2 days.
• A bandage with adhesive tape — A bandage with tape isn't sterile or sealed.
• An occlusive dressing with petroleum jelly — Petroleum jelly isn't used on central line sites.

⭐ Key point: Use chlorhexidine-impregnated dressings or sponges where available to further reduce infection.$x$, null),
(85, $x$A client with cirrhosis is taught about thiamine-rich foods. Which food shows the best understanding?$x$, $x$Pork$x$, $x$✅ Correct answer: Pork
Patients with cirrhosis (especially alcohol-related) are often THIAMINE (vitamin B1) deficient, which can cause Wernicke's encephalopathy. PORK is one of the richest food sources of thiamine. Others: whole grains, legumes (beans, peas), nuts and fortified cereals.

❌ Why the other options are wrong:
• Chicken — Chicken contains some thiamine but much less than pork.
• Broccoli — Broccoli contains small amounts.
• Milk — Milk contains small amounts.

⭐ Key point: In alcohol-related liver disease, give thiamine supplements, especially before glucose.$x$, null),
(86, $x$A nurse finds the TPN bag has been hanging for 26 hours. The most appropriate nursing action is to:$x$, $x$Discard the current bag and obtain a new one$x$, $x$✅ Correct answer: Discard the current bag and obtain a new one
TPN is rich in nutrients, so bacteria and fungi can grow in it once it is opened. TPN bags (and giving sets) should hang for no more than 24 HOURS. A bag hanging for 26 hours must be DISCARDED and replaced with a new bag to prevent bloodstream infection.

❌ Why the other options are wrong:
• Clamp the line and flush it with saline — Clamping and flushing doesn't fix the contamination risk; a new bag is needed.
• Slow the infusion rate until the new bag arrives — Slowing the rate continues the infection risk.
• Continue the infusion as it is still safe — After 24 hours it isn't safe.

⭐ Key point: To avoid hypoglycaemia while waiting, give 10% dextrose until the new bag arrives (if TPN is stopped).$x$, null),
(87, $x$Protein reintroduction in PSE patients is generally recommended at:$x$, $x$20–50g/day$x$, $x$✅ Correct answer: 20–50g/day
In hepatic (portosystemic) encephalopathy, old practice was to severely restrict protein to reduce ammonia. Current advice is NOT to restrict protein severely, because malnutrition worsens outcomes. In this question's keyed answer, protein is REINTRODUCED at a moderate level (20–50 g/day), then increased gradually as tolerated. Modern guidelines aim for a normal protein intake (1.2–1.5 g/kg/day).

❌ Why the other options are wrong:
• No restriction needed — No restriction at all isn't the keyed answer, though modern practice is close to normal intake.
• 100–150g/day — 100–150 g/day is high for initial reintroduction.
• 0–10g/day — 0–10 g/day would cause malnutrition and muscle wasting.

⭐ Key point: Treat hepatic encephalopathy with lactulose (2–3 soft stools a day) and rifaximin, and correct the triggers (bleeding, infection, constipation, sedatives).$x$, null),
(88, $x$The recommended dose of neomycin in the management of PSE is:$x$, $x$1g every 6 hours$x$, $x$✅ Correct answer: 1g every 6 hours
Neomycin is an antibiotic poorly absorbed from the gut. It reduces the bacteria that produce ammonia, lowering blood ammonia in hepatic (portosystemic) encephalopathy. The traditional dose is 1 g orally every 6 hours (4 g/day), for short courses.

❌ Why the other options are wrong:
• 100mg every 6 hours — 100 mg every 6 hours is too little.
• 10g once daily — 10 g once daily is too much.
• 500mg once weekly — 500 mg once weekly is far too little.

⭐ Key point: Neomycin can cause kidney damage and deafness. Rifaximin is now preferred, as it is safer.$x$, null),
(89, $x$To inhibit pancreatic secretions, which pharmacologic agent would you anticipate administering to a patient with acute pancreatitis?$x$, $x$Somatostatin$x$, $x$✅ Correct answer: Somatostatin
SOMATOSTATIN (or its analogue octreotide) inhibits the release of pancreatic enzymes. In acute pancreatitis, reducing pancreatic secretion may lessen autodigestion of the pancreas. (Evidence for routine use is mixed; mainstays are fluids, pain relief and nutrition.)

❌ Why the other options are wrong:
• Pancrelipase — Pancrelipase REPLACES pancreatic enzymes; it doesn't inhibit secretion.
• Pepcid — Pepcid (famotidine) reduces stomach acid, not pancreatic secretion directly.
• Nitroglycerin — Nitroglycerin is a vasodilator, not used for pancreatitis.

⭐ Key point: Acute pancreatitis care: aggressive IV fluids, strong analgesia, early enteral feeding, and monitoring for complications.$x$, null),
(90, $x$Which combination of medications places a critically ill patient at greatest risk of prerenal AKI due to loss of compensatory glomerular autoregulation?$x$, $x$ACE inhibitors and NSAIDs$x$, $x$✅ Correct answer: ACE inhibitors and NSAIDs
The kidney keeps its filtration rate stable (autoregulation) by adjusting two arterioles: it WIDENS the afferent (incoming) arteriole using prostaglandins, and TIGHTENS the efferent (outgoing) arteriole using angiotensin II. NSAIDs block prostaglandins (the afferent arteriole narrows), and ACE inhibitors block angiotensin II (the efferent arteriole relaxes). Together, they remove both protections, causing a big fall in GFR (pre-renal AKI), especially in dehydration.

❌ Why the other options are wrong:
• Calcium channel blockers and insulin — Calcium channel blockers and insulin don't cause this.
• Proton pump inhibitors and antihistamines — PPIs and antihistamines don't cause this (PPIs can rarely cause interstitial nephritis).
• Beta blockers and statins — Beta-blockers and statins don't cause this.

⭐ Key point: The "triple whammy" (ACE inhibitor or ARB + diuretic + NSAID) is especially dangerous for the kidneys.$x$, null),
(91, $x$A bilirubin level above what value is used as a transplant criterion in FHF?$x$, $x$>300 micromol/L$x$, $x$✅ Correct answer: >300 micromol/L
The King's College criteria for liver transplant in non-paracetamol acute liver failure include a BILIRUBIN above 300 µmol/L (17.5 mg/dL), with other factors (INR above 3.5, age, cause, and time from jaundice to encephalopathy). Very high bilirubin shows severe liver dysfunction.

❌ Why the other options are wrong:
• >50 micromol/L — Above 50 µmol/L is mild jaundice.
• >100 micromol/L — Above 100 µmol/L is moderate jaundice.
• >1000 micromol/L — Above 1000 µmol/L is too high a threshold.

⭐ Key point: Also in King's criteria: INR above 6.5 alone, or 3 of 5 factors (age, cause, jaundice-to-encephalopathy time, INR, bilirubin).$x$, null),
(92, $x$A patient with an NG tube to suction has metabolic alkalosis. The nurse anticipates:$x$, $x$Hypokalemia$x$, $x$✅ Correct answer: Hypokalemia
NG suction removes stomach fluid containing hydrochloric acid (H⁺ and Cl⁻), and also some potassium. Losing acid causes METABOLIC ALKALOSIS. In alkalosis, potassium moves into cells, and the kidneys excrete more potassium to save hydrogen ions, causing HYPOKALAEMIA.

❌ Why the other options are wrong:
• Hypercalcemia — Hypercalcaemia isn't typical.
• Hypermagnesemia — Hypermagnesaemia isn't typical.
• Hypernatremia — Hypernatraemia isn't the expected finding.

⭐ Key point: Replace NG losses with saline plus potassium chloride.$x$, null),
(93, $x$Which patient would require the least amount of, or no, heparin anticoagulation during hemodialysis?$x$, $x$A patient who is actively bleeding or recently had surgery$x$, $x$✅ Correct answer: A patient who is actively bleeding or recently had surgery
During haemodialysis, heparin is normally used to stop the blood clotting in the circuit. In patients with ACTIVE BLEEDING or RECENT SURGERY (high bleeding risk), heparin would be dangerous, so dialysis is done with LITTLE OR NO HEPARIN (heparin-free dialysis with saline flushes, or regional citrate anticoagulation).

❌ Why the other options are wrong:
• A patient with a well-functioning arteriovenous fistula — A good fistula doesn't reduce the need for anticoagulation.
• A patient with no bleeding risk undergoing routine outpatient dialysis — Patients with no bleeding risk can have standard heparin.
• A patient with a normal platelet count and coagulation studies — Normal clotting means standard heparin is appropriate.

⭐ Key point: Watch the circuit closely for clotting in heparin-free dialysis.$x$, null),
(94, $x$A 35 year old male is presented to ER with Necrotic Diabetic foot. The physician advised for admission. In which level of care the patient will be admitted?$x$, $x$Level 1$x$, $x$✅ Correct answer: Level 1
A patient with a NECROTIC DIABETIC FOOT needs hospital care (antibiotics, glucose control, wound care, possible surgery), but without organ failure, they don't need ICU or HDU. This fits LEVEL 1 care: ward care with extra observation and support (they may deteriorate, for example into sepsis).

❌ Why the other options are wrong:
• Level 0 — Level 0 is routine ward care without extra monitoring.
• Level 2 — Level 2 (HDU) is for single organ support.
• Level 3 — Level 3 (ICU) is for advanced organ support.

⭐ Key point: If the patient develops sepsis with organ dysfunction, escalate to Level 2 or 3.$x$, null),
(95, $x$A patient's TPN is discontinued. What is the most appropriate nursing action to prevent a rapid drop in blood glucose (hypoglycemia)?$x$, $x$Hanging a bag of D10W (10% Dextrose in Water)$x$, $x$✅ Correct answer: Hanging a bag of D10W (10% Dextrose in Water)
TPN contains a lot of glucose, so the pancreas makes extra insulin. If TPN stops suddenly, the high insulin continues for a while and blood glucose can DROP dangerously (rebound HYPOGLYCAEMIA). Hanging 10% DEXTROSE (D10W) temporarily, or tapering the TPN rate gradually over 1–2 hours, prevents this.

❌ Why the other options are wrong:
• Administering a dose of insulin — Insulin would worsen hypoglycaemia.
• Immediately capping the central line — Capping the line immediately stops glucose suddenly.
• Decreasing the TPN rate to half for 24 hours — Halving the rate for 24 hours isn't the usual approach (tapering is over 1–2 hours).

⭐ Key point: Check blood glucose 30–60 minutes after stopping TPN.$x$, null),
(96, $x$During CRRT with regional citrate anticoagulation, the nurse must closely monitor:$x$, $x$Systemic and post-filter ionised calcium$x$, $x$✅ Correct answer: Systemic and post-filter ionised calcium
Citrate anticoagulation in CRRT works by binding CALCIUM in the circuit, which stops clotting. Monitor POST-FILTER ionised calcium (to check citrate is working, target about 0.25–0.35 mmol/L) and SYSTEMIC (patient) ionised calcium (to ensure the patient has enough, target about 1.0–1.2 mmol/L), with calcium replaced by infusion.

❌ Why the other options are wrong:
• Urine specific gravity every hour — Urine specific gravity isn't relevant.
• Serum troponin every hour — Troponin isn't related to citrate.
• Serum amylase and lipase every 6 hours — Amylase and lipase aren't related.

⭐ Key point: Citrate accumulation (liver failure) shows a low ionised calcium with a high total calcium (total/ionised ratio above 2.5) and metabolic acidosis.$x$, null),
(97, $x$In pre-renal AKI, urine tests usually show:$x$, $x$Urine Na⁺ below 20 mmol/L and FENa below 1%$x$, $x$✅ Correct answer: Urine Na⁺ below 20 mmol/L and FENa below 1%
In PRE-RENAL AKI (from dehydration, low BP), the kidney tubules are still healthy, so they hold on to SODIUM to restore volume. Urine sodium is LOW (below 20 mmol/L), and the fractional excretion of sodium (FENa) is below 1%. The urine is concentrated, and the urine sediment is bland.

❌ Why the other options are wrong:
• Muddy brown granular casts — Muddy brown casts suggest ATN.
• Red cell casts and heavy proteinuria — Red cell casts and heavy proteinuria suggest glomerulonephritis.
• Urine Na⁺ above 40 mmol/L and FENa above 2% — High urine sodium and FENa above 2% suggest ATN (damaged tubules).

⭐ Key point: Diuretics raise urine sodium, making FENa unreliable; use the fractional excretion of urea instead.$x$, null),
(98, $x$Abdominal compartment syndrome is defined as intra-abdominal (bladder) pressure above 20 mmHg with:$x$, $x$New organ dysfunction$x$, $x$✅ Correct answer: New organ dysfunction
Abdominal compartment syndrome (ACS) is defined as intra-abdominal pressure (bladder pressure) ABOVE 20 mmHg (sustained) WITH NEW ORGAN DYSFUNCTION: kidney failure (low urine output), breathing problems (high airway pressures), low cardiac output, or gut ischaemia.

❌ Why the other options are wrong:
• A normal urine output — ACS usually causes LOW urine output.
• Bowel sounds present — Bowel sounds don't define ACS.
• A soft abdomen on palpation — The abdomen is usually TENSE and distended, not soft.

⭐ Key point: Measure bladder pressure at end-expiration, supine, zeroed at the mid-axillary line. Treat by decompression (NG and rectal tubes, drainage, surgery).$x$, null),
(99, $x$Suspected variceal bleeding in a cirrhotic patient should be treated before endoscopy with:$x$, $x$Terlipressin and IV antibiotics$x$, $x$✅ Correct answer: Terlipressin and IV antibiotics
Variceal bleeding in cirrhosis is an emergency. Before endoscopy, give TERLIPRESSIN (a vasopressin analogue that lowers portal pressure and reduces bleeding) and IV ANTIBIOTICS (such as ceftriaxone; infection is common and increases rebleeding and death). Then do endoscopic band ligation. Transfuse cautiously to Hb 7–8 g/dL.

❌ Why the other options are wrong:
• Heparin infusion and aspirin — Heparin and aspirin would worsen bleeding.
• Oral lactulose alone — Lactulose treats encephalopathy, not the bleeding.
• Large-volume saline to Hb above 12 g/dL — Over-transfusion (to Hb above 12) RAISES portal pressure and increases bleeding.

⭐ Key point: Other measures: protect the airway, correct clotting if needed, and use a Sengstaken–Blakemore tube as a bridge for uncontrolled bleeding.$x$, null),
(100, $x$In severe acute pancreatitis, the preferred nutrition route when tolerated is:$x$, $x$Early enteral feeding (nasogastric or nasojejunal)$x$, $x$✅ Correct answer: Early enteral feeding (nasogastric or nasojejunal)
In severe acute pancreatitis, EARLY ENTERAL feeding (via a nasogastric or nasojejunal tube, started within 24–72 hours) is preferred over TPN. It protects the gut barrier, reduces bacterial translocation and infected necrosis, and lowers infection and mortality.

❌ Why the other options are wrong:
• Oral fatty meals to stimulate the pancreas — Fatty meals by mouth may not be tolerated in severe disease.
• Routine parenteral nutrition from day one — Routine TPN from day one has more infections and complications.
• Nil by mouth with no feeding for 2 weeks — Prolonged starvation (2 weeks) harms the gut and nutrition.

⭐ Key point: Use TPN only if enteral feeding fails or isn't tolerated. Start oral feeding when pain settles.$x$, null)
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
