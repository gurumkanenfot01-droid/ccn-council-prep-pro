-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 14 (200 questions)
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

⭐ Key point: Use TPN only if enteral feeding fails or isn't tolerated. Start oral feeding when pain settles.$x$, null),
(101, $x$According to the Parkland formula, how much fluid is a nurse required to administer to a patient weighing 70 kg with 30% total body surface area (TBSA) burns in the first 8 hours?$x$, $x$4200 mL$x$, $x$✅ Correct answer: 4200 mL
Parkland formula: 4 mL × weight (kg) × %TBSA = total fluid for the FIRST 24 hours. 4 × 70 × 30 = 8400 mL. HALF of this is given in the FIRST 8 HOURS (counted from the time of the burn, not arrival): 8400 ÷ 2 = 4200 mL. The other half (4200 mL) is given over the next 16 hours.

❌ Why the other options are wrong:
• 2100 mL — 2100 mL is a quarter of the total (an error).
• 8400 mL — 8400 mL is the TOTAL for 24 hours, not the first 8 hours.
• 2800 mL — 2800 mL comes from a calculation error.

⭐ Key point: Use Hartmann's (Ringer's lactate). Adjust the rate to keep urine output at 0.5–1 mL/kg/hour in adults.$x$, null),
(102, $x$Inhalational injury is responsible for approximately what percentage of burns deaths?$x$, $x$90%$x$, $x$✅ Correct answer: 90%
Inhalation injury (smoke and heat damage to the airways and lungs, plus carbon monoxide and cyanide poisoning) is the main cause of death in burns and house fires. In this question's key it accounts for about 90% of burn deaths, especially in fires in enclosed spaces. It greatly increases mortality compared with a burn of the same size without inhalation injury.

❌ Why the other options are wrong:
• 50% — 50% underestimates it in this question.
• 10% — 10% underestimates it.
• 100% — 100% is incorrect; other causes (shock, sepsis, organ failure) also cause deaths.

⭐ Key point: Suspect inhalation injury with enclosed-space fires, facial burns, soot in the mouth, a hoarse voice and stridor. Give 100% oxygen and consider early intubation.$x$, null),
(103, $x$Rubbing frozen tissue during frostbite management is:$x$, $x$Never done — it worsens tissue damage$x$, $x$✅ Correct answer: Never done — it worsens tissue damage
In frostbite, ice crystals form in and around the cells, making the tissue very fragile. RUBBING or massaging the frozen part damages the tissue further (and snow rubbing adds more cold injury). It is NEVER done. Instead, rewarm rapidly in warm water (37–39 °C) for 15–30 minutes, give analgesia, and protect the area.

❌ Why the other options are wrong:
• Only done on the hands — It isn't done on any area, including the hands.
• Recommended to restore circulation — Rubbing worsens damage; it doesn't restore circulation.
• Only done if pain-free — It isn't done even if pain-free.

⭐ Key point: Don't rewarm if there is a risk of refreezing (rewarming then refreezing causes more damage).$x$, null),
(104, $x$A patient with a large burn is being monitored for infection. The nurse should be aware that the primary source of infection in a burn patient is:$x$, $x$The burn wound itself$x$, $x$✅ Correct answer: The burn wound itself
A burn wound is the PRIMARY source of infection in burn patients. The skin barrier is destroyed, and the dead tissue (eschar) and protein-rich fluid are an ideal environment for bacteria, which come from the patient's own skin and gut, and from the environment. The wound becomes colonised within days, and invasive wound infection can lead to sepsis.

❌ Why the other options are wrong:
• The hospital environment — The hospital environment contributes but isn't the primary source.
• The patient's visitors — Visitors can bring germs but aren't the main source.
• The patient's own skin flora — The patient's own skin flora colonises the wound, but the wound itself is the main site.

⭐ Key point: Burn wound care: aseptic dressings, topical antimicrobials (such as silver sulfadiazine), early excision and grafting, and monitoring for sepsis.$x$, null),
(105, $x$Which of the following is the most widely used method of gut decontamination in modern poisoning management, when indicated?$x$, $x$Single-dose activated charcoal$x$, $x$✅ Correct answer: Single-dose activated charcoal
SINGLE-DOSE ACTIVATED CHARCOAL (50 g in adults, 1 g/kg in children) is the most widely used gut decontamination method. It binds many drugs in the gut and stops absorption. It works best within 1 hour of ingestion and in patients with a protected airway.

❌ Why the other options are wrong:
• Gastric lavage as routine for all poisonings — Gastric lavage is no longer routine; it has more risks (aspiration) and limited benefit.
• Whole bowel irrigation for all ingestions — Whole bowel irrigation is only for special cases (iron, lithium, body packers, slow-release drugs).
• Induced vomiting with ipecac — Ipecac-induced vomiting is NOT recommended (aspiration risk, no benefit).

⭐ Key point: Charcoal doesn't bind iron, lithium, alcohols, acids, alkalis or hydrocarbons.$x$, null),
(106, $x$The target urine output in an adult burns patient during fluid resuscitation is:$x$, $x$0.5–1.0ml/kg/hr$x$, $x$✅ Correct answer: 0.5–1.0ml/kg/hr
Urine output is the best bedside guide to whether burn fluid resuscitation is adequate. The target in adults is 0.5–1.0 mL/kg/hour (about 30–50 mL/hour for 70 kg). Children: 1 mL/kg/hour. In electrical burns with myoglobinuria: 1–2 mL/kg/hour (dark urine) to protect the kidneys.

❌ Why the other options are wrong:
• 5ml/kg/hr — 5 mL/kg/hour is too high and means over-resuscitation.
• 2–3ml/kg/hr — 2–3 mL/kg/hour is too high for routine adult burns.
• 0.1–0.2ml/kg/hr — 0.1–0.2 mL/kg/hour is far too low (kidney failure risk).

⭐ Key point: Insert a urinary catheter in major burns and measure output hourly. Too much fluid causes "fluid creep" (oedema, compartment syndromes).$x$, null),
(107, $x$A nurse is providing wound care for a patient with a burn. The main goal of burn wound care is to:$x$, $x$Prevent infection and promote healing$x$, $x$✅ Correct answer: Prevent infection and promote healing
The main GOALS of burn wound care are to PREVENT INFECTION (the main cause of death after the first days) and PROMOTE HEALING (moist wound environment, removing dead tissue, grafting deep burns). Care also aims to reduce pain, maintain function, and limit scarring.

❌ Why the other options are wrong:
• Promote the formation of eschar — Eschar (dead tissue) is removed, not encouraged, because it harbours bacteria.
• Keep the wound wet to prevent infection — A moist environment helps healing, but a "wet" wound doesn't prevent infection.
• Only use topical antibiotics — Topical antibiotics are one tool, not the only goal.

⭐ Key point: Change dressings with aseptic technique, give analgesia before dressing changes, and assess the wound for signs of infection.$x$, null),
(108, $x$A poly-trauma patient with multiple long bone fractures develops sudden dyspnoea, a petechial rash, and confusion 24-48 hours after injury. This presentation should raise suspicion for:$x$, $x$Fat embolism syndrome$x$, $x$✅ Correct answer: Fat embolism syndrome
Sudden breathlessness, a PETECHIAL rash (pinpoint spots on the chest, armpits and conjunctiva) and CONFUSION 24–72 hours after MULTIPLE LONG BONE fractures is the classic picture of FAT EMBOLISM SYNDROME. Fat droplets from the bone marrow travel to the lungs, brain and skin.

❌ Why the other options are wrong:
• Anaesthetic death — "Anaesthetic death" isn't a diagnosis that fits these signs.
• Chronic bronchitis exacerbation — Chronic bronchitis doesn't present this way after trauma.
• A simple wound infection — A wound infection doesn't cause a petechial rash and confusion this quickly.

⭐ Key point: Treat fat embolism with supportive care: oxygen, ventilation if needed, fluids. Early fixation of fractures reduces the risk.$x$, null),
(109, $x$A 23 year old young adult presented to ER Road Traffic accident (RTA).He has poly traumas and massive bleeding. The characteristic of the blood is dark red in color and steady in flow. Which type of hemorrhage is this?$x$, $x$Venous Hemorrhage$x$, $x$✅ Correct answer: Venous Hemorrhage
VENOUS bleeding is DARK RED (low oxygen) and flows STEADILY, because veins are under lower pressure. ARTERIAL bleeding is BRIGHT RED (oxygenated) and SPURTS with each heartbeat, because arteries are under high pressure. Capillary bleeding oozes.

❌ Why the other options are wrong:
• Arterial Hemorrhage — Arterial bleeding is bright red and spurting.
• Internal Hemorrhage — "Internal" describes where the bleeding is, not its type; here it is visible.
• External Hemorrhage — "External" describes location; the colour and flow tell you it is venous.

⭐ Key point: Control external bleeding with direct pressure first. Use a tourniquet for life-threatening limb bleeding.$x$, null),
(110, $x$Which of the following is an orthopaedic-specific indication for ICU admission?$x$, $x$Fat embolism syndrome$x$, $x$✅ Correct answer: Fat embolism syndrome
FAT EMBOLISM SYNDROME is a serious, systemic, potentially life-threatening complication of long bone and pelvic fractures. It can cause respiratory failure (ARDS-like), confusion and coma, needing ventilation and organ support. It is an orthopaedic-specific reason for ICU admission.

❌ Why the other options are wrong:
• Minor wrist fracture — A minor wrist fracture is managed in clinic or on the ward.
• Isolated ankle sprain — An ankle sprain is managed as an outpatient.
• Uncomplicated cast application — An uncomplicated cast doesn't need ICU care.

⭐ Key point: Other orthopaedic reasons for ICU: major polytrauma, massive bleeding (pelvic fractures), compartment syndrome with rhabdomyolysis, and spinal cord injury.$x$, null),
(111, $x$After a burn, a client has BP 70/40, HR 140, RR 25, pallor and weak pedal pulses. The nurse's first action is to:$x$, $x$Start intravenous fluids$x$, $x$✅ Correct answer: Start intravenous fluids
After a burn, low BP (70/40), fast heart rate (140), fast breathing, pallor and weak pulses mean HYPOVOLAEMIC (burn) SHOCK from fluid leaking out of the vessels. The FIRST action is to START IV FLUIDS (large-bore cannulas, Hartmann's) to restore circulating volume.

❌ Why the other options are wrong:
• Check pulses with a Doppler — A Doppler pulse check doesn't treat shock.
• Obtain a complete blood count — A blood count can wait; treatment comes first.
• Obtain an ECG — An ECG can wait; fluid resuscitation is the priority.

⭐ Key point: Follow ABCDE: secure the airway (watch for inhalation injury), give oxygen, then start fluids using the Parkland formula.$x$, null),
(112, $x$Diaphragmatic injury should be suspected with penetrating trauma at or below the:$x$, $x$5th intercostal space$x$, $x$✅ Correct answer: 5th intercostal space
The diaphragm rises as high as the 4th–5th intercostal space during expiration. Any penetrating wound (stab, gunshot) at or below the 5TH INTERCOSTAL SPACE (or the nipple line in front, the scapular tip behind) can injure the diaphragm and the abdominal organs below it (liver, spleen, stomach).

❌ Why the other options are wrong:
• Diaphragmatic injury is never related to wound location — Wound location DOES matter for diaphragm injury.
• 2nd intercostal space — The 2nd intercostal space is too high to reach the diaphragm.
• 10th intercostal space — The 10th intercostal space is below most of the diaphragm's range.

⭐ Key point: Diaphragmatic injuries may be missed initially. Bowel can herniate into the chest later. Laparoscopy or CT helps diagnose them.$x$, null),
(113, $x$The first-line vasopressor recommended in septic shock, according to major guidelines, is:$x$, $x$Norepinephrine$x$, $x$✅ Correct answer: Norepinephrine
NOREPINEPHRINE (noradrenaline) is the FIRST-LINE vasopressor in septic shock in all major guidelines (Surviving Sepsis Campaign). It mainly constricts blood vessels (alpha-1) to raise BP, with little rise in heart rate, and is linked to fewer arrhythmias and better outcomes than dopamine.

❌ Why the other options are wrong:
• Vasopressin as first choice — Vasopressin is ADDED second, to reduce the noradrenaline dose.
• Phenylephrine as first choice — Phenylephrine isn't first-line (it can lower cardiac output).
• Dopamine — Dopamine causes more arrhythmias and is no longer first-line.

⭐ Key point: Target MAP of 65 mmHg or more. Ideally give through a central line, but it can be started peripherally in a large vein briefly.$x$, null),
(114, $x$The monophasic shock energy is used:$x$, $x$200-300 J$x$, $x$✅ Correct answer: 200-300 J
MONOPHASIC defibrillators send current in one direction and need HIGHER energy than biphasic machines. They usually deliver 200–360 J for defibrillation; this question's key uses 200–300 J. Many guidelines recommend 360 J for monophasic shocks in VF and pulseless VT.

❌ Why the other options are wrong:
• 100-200 J — 100–200 J is lower, closer to biphasic energies.
• 150-200 J — 150–200 J is the typical BIPHASIC range.
• 120-200 J — 120–200 J is the typical BIPHASIC range.

⭐ Key point: Biphasic defibrillators are more effective at lower energy (150–200 J). Follow the manufacturer's recommended setting.$x$, null),
(115, $x$In the trauma patient, which route of nutrition support is generally preferred over parenteral nutrition when the gastrointestinal tract is functional, primarily because of superior outcomes related to gut integrity?$x$, $x$Enteral nutrition$x$, $x$✅ Correct answer: Enteral nutrition
In trauma patients with a working gut, ENTERAL nutrition (via the gut) is preferred over parenteral nutrition. It maintains the gut lining (reducing bacterial translocation and infection), supports immunity, is cheaper and has fewer complications. "If the gut works, use it."

❌ Why the other options are wrong:
• Intravenous dextrose alone — IV dextrose alone doesn't provide complete nutrition.
• Parenteral nutrition — Parenteral nutrition has more infections and metabolic complications.
• Oral rehydration solution alone — Oral rehydration solution provides fluid and electrolytes, not nutrition.

⭐ Key point: Start enteral feeding within 24–48 hours of injury once the patient is stable.$x$, null),
(116, $x$Which of the following is the initial analgesic drug of choice for a patient who is in severe pain, with a score of 9 out of 10, due to a fracture?$x$, $x$IV opiate$x$, $x$✅ Correct answer: IV opiate
For SEVERE pain (9/10) from a fracture, the first-line analgesic is an IV OPIOID (such as morphine titrated in small doses). It works quickly and strongly. Combine it with non-drug measures (splinting, elevation) and other analgesics (paracetamol).

❌ Why the other options are wrong:
• Splint — A splint is important for comfort but isn't an analgesic drug.
• IV paracetamol — IV paracetamol helps mild to moderate pain but isn't enough alone for 9/10 pain.
• Rectal NSAID — Rectal NSAIDs are slower and may be avoided in trauma (bleeding, kidney risk).

⭐ Key point: Titrate IV morphine in small doses (1–2 mg every few minutes) to effect, and monitor respiratory rate and sedation.$x$, null),
(117, $x$The 'lethal triad' in major trauma is:$x$, $x$Hypothermia, acidosis and coagulopathy$x$, $x$✅ Correct answer: Hypothermia, acidosis and coagulopathy
The "LETHAL TRIAD" in major trauma is HYPOTHERMIA, ACIDOSIS and COAGULOPATHY. Each worsens the others: cold slows clotting enzymes and platelets, acidosis (from shock) impairs clotting, and ongoing bleeding worsens shock, acidosis and cooling. Breaking the cycle is key to survival.

❌ Why the other options are wrong:
• Hypertension, bradycardia and apnoea — Hypertension, bradycardia and apnoea is Cushing's triad.
• Hypoxia, hypercapnia and hypotension — Hypoxia, hypercapnia and hypotension isn't the trauma triad.
• Fever, tachycardia and leucocytosis — Fever, tachycardia and leucocytosis are signs of inflammation or infection.

⭐ Key point: Prevent the triad: warm the patient, fluids and blood, stop bleeding early (damage control surgery), and give blood products in balanced ratios.$x$, null),
(118, $x$In penetrating torso trauma without head injury, permissive hypotension aims for a systolic BP of about:$x$, $x$80–90 mmHg until bleeding is controlled$x$, $x$✅ Correct answer: 80–90 mmHg until bleeding is controlled
In PERMISSIVE HYPOTENSION, BP is kept lower than normal (systolic about 80–90 mmHg, enough to perfuse the brain and heart) until the bleeding is surgically controlled. Raising BP too high with lots of fluid can dislodge clots, dilute clotting factors, and increase bleeding. It is NOT used in head injury, where higher BP is needed to protect the brain.

❌ Why the other options are wrong:
• 140–160 mmHg using vasopressors — 140–160 mmHg is too high and would increase bleeding.
• 50 mmHg using no fluids at all — 50 mmHg is too low and risks organ damage.
• 120 mmHg using large crystalloid volumes — 120 mmHg with large crystalloid volumes increases bleeding.

⭐ Key point: In TBI, keep systolic BP at 110 mmHg or above (higher in older patients).$x$, null),
(119, $x$A trauma patient has HR 130, falling systolic BP, RR 35 and confusion. The estimated blood loss class is:$x$, $x$Class III (30–40% of blood volume)$x$, $x$✅ Correct answer: Class III (30–40% of blood volume)
ATLS haemorrhage Class III (30–40% blood loss, about 1500–2000 mL): heart rate above 120 (here 130), FALLING systolic BP, respiratory rate 30–40 (here 35), and anxious or confused mental state. Class III is the first class where BP falls, and it usually needs blood transfusion.

❌ Why the other options are wrong:
• No loss; this is anxiety — These signs show significant bleeding, not anxiety.
• Class II (15–30% with normal BP) — Class II has a NORMAL systolic BP.
• Class I (up to 15% of blood volume) — Class I has nearly normal signs.

⭐ Key point: Falling BP is a late sign of blood loss. Act on tachycardia and narrowing pulse pressure early.$x$, null),
(120, $x$A burns patient from a house fire has soot in the mouth, a hoarse voice and singed nasal hair. The nurse should prepare for:$x$, $x$Early intubation before airway oedema develops$x$, $x$✅ Correct answer: Early intubation before airway oedema develops
Soot in the mouth, a hoarse voice and singed nasal hair after a house fire suggest INHALATION INJURY. Heat and smoke cause rapid SWELLING of the upper airway, which can block it within hours, especially as fluids are given. EARLY INTUBATION (before oedema develops) by an experienced operator secures the airway safely.

❌ Why the other options are wrong:
• Delaying airway care until fluids are given — Delaying airway care risks complete obstruction.
• Discharge after 4 hours of observation — Early discharge is dangerous; swelling progresses over 24 hours.
• Nasal cannula oxygen at 1 L/min only — Low-flow oxygen is inadequate; give 100% oxygen (CO poisoning) and secure the airway.

⭐ Key point: Other signs of airway burn: stridor, wheeze, carbonaceous sputum, facial burns, and burns in an enclosed space.$x$, null),
(121, $x$Concerning convulsions in eclampsia, which is correct?$x$, $x$Strict monitoring of respiratory rate and urine output is essential$x$, $x$✅ Correct answer: Strict monitoring of respiratory rate and urine output is essential
Magnesium sulphate is cleared by the KIDNEYS. If urine output falls, magnesium builds up, causing toxicity: loss of reflexes, RESPIRATORY DEPRESSION and cardiac arrest. Strict monitoring of RESPIRATORY RATE, URINE OUTPUT and reflexes (hourly) is essential.

❌ Why the other options are wrong:
• Diazepam is the first-line anticonvulsant — MAGNESIUM SULPHATE (not diazepam) is the first-line anticonvulsant in eclampsia.
• The total MgSO4 loading dose is 15 g — The usual loading dose is 4 g IV (Pritchard total initial dose is 14 g), not 15 g.
• After MgSO4 at 34 weeks the pregnancy should continue to 40 weeks — After eclampsia, delivery is planned once the mother is stable; continuing to 40 weeks isn't appropriate.

⭐ Key point: Hold magnesium if RR is below 12, urine output below 30 mL/hour, or reflexes are absent. Antidote: calcium gluconate 10%.$x$, null),
(122, $x$A nurse is providing family-centered NICU care. The primary goal of family-centered care is to:$x$, $x$Involve the parents as partners in the newborn's care$x$, $x$✅ Correct answer: Involve the parents as partners in the newborn's care
Family-centred care in the NICU sees the PARENTS as PARTNERS in their baby's care. They are given information, involved in decisions and care (feeding, skin-to-skin contact, kangaroo care), and supported emotionally. This improves bonding, breastfeeding, and parental confidence.

❌ Why the other options are wrong:
• Keep the parents separated from the newborn to prevent infection — Separating parents harms bonding and isn't necessary with good infection control.
• Allow the parents to make all of the medical decisions — Parents share decisions with the team; they don't make all medical decisions alone.
• Only communicate with the parents when they ask a question — Communication should be proactive and regular, not only on request.

⭐ Key point: Kangaroo mother care (skin-to-skin) improves temperature control, breastfeeding and survival in low birth weight babies.$x$, null),
(123, $x$Which statement about intussusception is FALSE?$x$, $x$It is mostly found in adolescents$x$, $x$✅ Correct answer: It is mostly found in adolescents
The question asks for the FALSE statement. Intussusception is MOSTLY found in INFANTS and toddlers (3 months to 3 years, peak 6–18 months), NOT adolescents. In adolescents and adults it is rare and usually has a lead point (a polyp or tumour).

❌ Why the other options are wrong:
• The proximal bowel telescopes into the distal bowel — It is TRUE that the proximal bowel telescopes into the distal bowel.
• It usually occurs in healthy babies without a demonstrable cause — It is TRUE that it usually occurs in healthy babies without a clear cause (often after a viral illness).
• It most commonly occurs at the ileocolic junction — It is TRUE that it most commonly occurs at the ileocolic junction.

⭐ Key point: Classic triad: colicky pain, a sausage-shaped mass, and redcurrant jelly stools.$x$, null),
(124, $x$Amniotic fluid embolism is definitively confirmed by:$x$, $x$Autopsy$x$, $x$✅ Correct answer: Autopsy
Amniotic fluid embolism (AFE) is a CLINICAL diagnosis during life (sudden collapse, hypoxia, hypotension and DIC in labour, after excluding other causes). There is no reliable test to confirm it while the patient is alive. Definitive confirmation is at AUTOPSY, finding fetal cells and debris (squames) in the mother's lung blood vessels.

❌ Why the other options are wrong:
• Clinical symptoms alone — Clinical symptoms suggest AFE but don't definitively confirm it.
• Ultrasound — Ultrasound doesn't diagnose AFE.
• Routine blood test — No routine blood test confirms AFE.

⭐ Key point: AFE is rare but has a high mortality. Treat with resuscitation, ventilation, circulatory support, and massive transfusion for DIC.$x$, null),
(125, $x$The most critical period of the puerperium is:$x$, $x$The early (immediate) period$x$, $x$✅ Correct answer: The early (immediate) period
The puerperium is the 6 weeks after birth. The most CRITICAL period is the EARLY (immediate) period, especially the first 24 hours, when the risks of PPH, eclampsia, shock and amniotic fluid embolism are highest. Close monitoring (vital signs, uterine tone, blood loss) is essential.

❌ Why the other options are wrong:
• Active management of the third stage — Active management of the third stage is a delivery procedure, not a puerperium period.
• The postnatal family-planning visit — The postnatal family-planning visit is later and lower risk.
• The whole 6 weeks equally — The risk is NOT equal throughout; it is highest early.

⭐ Key point: Monitor the mother closely in the first hours: pulse, BP, uterine tone, lochia and bladder.$x$, null),
(126, $x$HELLP syndrome is:$x$, $x$A complication of severe pre-eclampsia$x$, $x$✅ Correct answer: A complication of severe pre-eclampsia
HELLP syndrome (Haemolysis, Elevated Liver enzymes, Low Platelets) is a severe complication of PRE-ECLAMPSIA (though it can occur without high BP). It causes RUQ or epigastric pain, nausea, and can lead to DIC, liver rupture and death. Delivery is the main treatment.

❌ Why the other options are wrong:
• A form of gestational hypertension only — It isn't just gestational hypertension; it involves blood and liver damage.
• A type of fetal growth restriction — It isn't a type of fetal growth restriction (though IUGR may occur).
• An inherited maternal coagulopathy — It isn't inherited; it is a complication of pregnancy.

⭐ Key point: Check platelets and liver enzymes in pre-eclampsia. Platelets below 100 × 10⁹/L are a warning sign.$x$, null),
(127, $x$Which statement about hypertensive disorders of pregnancy is true?$x$, $x$Placental pathology is implicated in the aetiology of pre-eclampsia$x$, $x$✅ Correct answer: Placental pathology is implicated in the aetiology of pre-eclampsia
Pre-eclampsia is caused mainly by ABNORMAL PLACENTATION: the spiral arteries of the uterus don't remodel properly, so the placenta gets poor blood flow. The stressed placenta releases factors that damage the mother's blood vessel lining throughout the body, causing high BP, protein in the urine and organ damage.

❌ Why the other options are wrong:
• Gestational hypertension means any BP ≥140/90 at any time in pregnancy — Gestational hypertension is NEW high BP after 20 weeks WITHOUT protein or organ damage, not "any BP at any time".
• Prolonged barrier contraception is protective — Barrier contraception may actually increase risk (limited exposure to partner's sperm antigens); it isn't protective.
• The Korotkoff V sound marks systolic pressure — The Korotkoff V sound (disappearance) marks DIASTOLIC pressure, not systolic.

⭐ Key point: Low-dose aspirin from 12 weeks reduces pre-eclampsia in high-risk women.$x$, null),
(128, $x$This describe the premature separation of a normally situated placenta occurring after the 28th week of pregnancy.$x$, $x$Abruption placentae$x$, $x$✅ Correct answer: Abruption placentae
ABRUPTIO PLACENTAE (placental abruption) is the PREMATURE SEPARATION of a NORMALLY SITED placenta from the uterine wall after 28 weeks (or after 20 weeks in some definitions). It causes painful bleeding (which may be concealed), a tense, tender uterus, fetal distress and possibly DIC.

❌ Why the other options are wrong:
• Placenta praevia — Placenta praevia is an ABNORMALLY low-lying placenta.
• Placenta accrete — Placenta accreta is abnormal invasion into the uterine wall.
• Placenta circumventer — Placenta circumvallata is an abnormal shape of the placental edge.

⭐ Key point: Risk factors for abruption: hypertension, trauma, cocaine, smoking, previous abruption.$x$, null),
(129, $x$The most common presentation of a pre-eclamptic patient is:$x$, $x$No symptoms$x$, $x$✅ Correct answer: No symptoms
Most women with pre-eclampsia have NO SYMPTOMS. It is usually found at a routine antenatal check by finding HIGH BP and PROTEIN in the urine. That's why regular antenatal visits are so important. Symptoms (headache, visual changes, epigastric pain, swelling) appear when it becomes severe.

❌ Why the other options are wrong:
• Dyspareunia — Dyspareunia (painful intercourse) is unrelated.
• Abdominal pain — Abdominal (epigastric) pain is a sign of SEVERE disease or HELLP.
• Convulsions — Convulsions mean ECLAMPSIA, a late complication.

⭐ Key point: Check BP and urine for protein at every antenatal visit.$x$, null),
(130, $x$A nurse is assessing a newborn for signs of birth asphyxia. Which of the following is a key sign?$x$, $x$Poor muscle tone and a low Apgar score$x$, $x$✅ Correct answer: Poor muscle tone and a low Apgar score
Birth asphyxia (lack of oxygen around birth) causes a baby that is FLOPPY (poor muscle tone), with poor breathing, a slow heart rate, and a LOW APGAR score. The baby may need resuscitation and may develop hypoxic-ischaemic encephalopathy (HIE).

❌ Why the other options are wrong:
• A vigorous kick and a respiratory rate of 40 breaths per minute — A vigorous kick and normal breathing describe a healthy baby.
• A pink color and a strong cry — A pink colour and strong cry describe a healthy baby.
• A heart rate of 120 beats per minute — A heart rate of 120 is normal.

⭐ Key point: Severe birth asphyxia may be treated with therapeutic cooling (if available) to protect the brain.$x$, null),
(131, $x$Management of hyperemesis gravidarum involves:$x$, $x$Vitamin B6 combined with doxylamine$x$, $x$✅ Correct answer: Vitamin B6 combined with doxylamine
For nausea and vomiting in pregnancy and hyperemesis gravidarum, VITAMIN B6 (PYRIDOXINE) combined with DOXYLAMINE (an antihistamine) is a safe and effective first-line treatment. Severe cases need IV fluids (0.9% saline with potassium), thiamine, other antiemetics, and thromboprophylaxis.

❌ Why the other options are wrong:
• Mandatory IM analgin — IM analgin (metamizole) isn't a treatment for hyperemesis.
• Nil by mouth until discharge — Nil by mouth until discharge isn't recommended; oral intake is reintroduced as tolerated.
• Dextrose water as the preferred fluid — Dextrose solutions without thiamine can trigger Wernicke's encephalopathy; saline is preferred.

⭐ Key point: Give thiamine to women with prolonged vomiting before giving dextrose.$x$, null),
(132, $x$A nurse is providing care for a newborn who is at risk for hypothermia. The most effective nursing intervention is to:$x$, $x$Place the newborn under a radiant warmer$x$, $x$✅ Correct answer: Place the newborn under a radiant warmer
A RADIANT WARMER provides direct heat to the baby (especially preterm, low birth weight or sick babies), preventing heat loss while allowing access for care. It is a highly effective way to prevent hypothermia, along with drying, skin-to-skin contact and a hat.

❌ Why the other options are wrong:
• Keep the newborn's crib away from any heat sources — Keeping the crib away from heat sources isn't a warming measure.
• Bathe the newborn immediately after birth — Immediate bathing causes heat loss.
• Wrap the newborn in a cold towel — A cold towel causes heat loss.

⭐ Key point: Newborns lose heat by evaporation, conduction, convection and radiation. Keep the delivery room warm (25–28 °C).$x$, null),
(133, $x$Severe hypertension in pre-eclampsia (≥160/110 mmHg) is treated urgently with:$x$, $x$IV labetalol or hydralazine, or oral nifedipine$x$, $x$✅ Correct answer: IV labetalol or hydralazine, or oral nifedipine
Severe hypertension in pre-eclampsia (160/110 mmHg or above) must be treated URGENTLY (within 30–60 minutes) to prevent STROKE. First-line drugs: IV LABETALOL, IV HYDRALAZINE, or ORAL NIFEDIPINE (immediate-release). The target is about 140–150/90–100.

❌ Why the other options are wrong:
• No treatment until after the delivery — Waiting until after delivery risks maternal stroke.
• IV furosemide alone, repeated hourly — Furosemide doesn't treat pre-eclampsia hypertension (it may worsen low blood volume).
• ACE inhibitors such as oral lisinopril — ACE inhibitors are contraindicated in pregnancy (harm to the fetus).

⭐ Key point: Avoid dropping BP too quickly; it can reduce placental blood flow and harm the baby.$x$, null),
(134, $x$Peripartum cardiomyopathy is heart failure that develops:$x$, $x$Late in pregnancy or within 5 months after delivery$x$, $x$✅ Correct answer: Late in pregnancy or within 5 months after delivery
PERIPARTUM CARDIOMYOPATHY is heart failure caused by weak heart muscle (ejection fraction below 45%) that develops in the LAST MONTH of pregnancy or within 5 MONTHS after delivery, with no other cause. It presents with breathlessness, orthopnoea, cough and swelling, often mistaken for normal pregnancy symptoms.

❌ Why the other options are wrong:
• Only in women over 50 years of age — It occurs in women of childbearing age, not only over 50.
• Only after a twin or triplet pregnancy — It isn't limited to multiple pregnancies (though twins are a risk factor).
• Only in the first trimester of pregnancy — It occurs late in pregnancy or after delivery, not in the first trimester.

⭐ Key point: Diagnose with echocardiography. Treat with heart failure drugs (some are avoided in pregnancy) and anticoagulation if the EF is very low.$x$, null),
(135, $x$In neonatal resuscitation, chest compressions start when heart rate stays below 60/min despite:$x$, $x$30 seconds of effective ventilation$x$, $x$✅ Correct answer: 30 seconds of effective ventilation
In neonatal resuscitation, ventilation is the key step. If the heart rate stays BELOW 60/min despite 30 SECONDS of EFFECTIVE VENTILATION (with the chest visibly moving), start CHEST COMPRESSIONS at a 3:1 ratio with ventilation (90 compressions and 30 breaths per minute).

❌ Why the other options are wrong:
• 5 minutes of free-flow oxygen — Free-flow oxygen alone isn't effective ventilation.
• One minute of drying only — Drying alone isn't enough to decide on compressions.
• Two doses of adrenaline — Adrenaline comes AFTER compressions, not before.

⭐ Key point: Recheck the heart rate every 30 seconds. If it stays below 60 despite compressions, give adrenaline via an umbilical venous catheter.$x$, null),
(136, $x$The usual threshold for treating neonatal hypoglycaemia is blood glucose below:$x$, $x$2.6 mmol/L (about 45 mg/dL)$x$, $x$✅ Correct answer: 2.6 mmol/L (about 45 mg/dL)
The usual threshold for treating neonatal hypoglycaemia is a blood glucose below 2.6 mmol/L (about 45 mg/dL). Babies at risk: preterm, small or large for gestational age, infants of diabetic mothers, those who are cold or sick, and those with poor feeding.

❌ Why the other options are wrong:
• 1.0 mmol/L only if the baby has seizures — 1.0 mmol/L is dangerously low; treatment should start well before this.
• 5.5 mmol/L (about 100 mg/dL) — 5.5 mmol/L is normal.
• 8.0 mmol/L (about 145 mg/dL) — 8.0 mmol/L is high.

⭐ Key point: Treat with feeding first if the baby is well. If glucose is very low or the baby is symptomatic, give 2 mL/kg of 10% dextrose IV and an infusion.$x$, null),
(137, $x$Newborn resuscitation begins with:$x$, $x$Five inflation breaths of 2–3 seconds each$x$, $x$✅ Correct answer: Five inflation breaths of 2–3 seconds each
Newborn resuscitation begins (after drying, warming and opening the airway) with FIVE INFLATION BREATHS, each lasting 2–3 SECONDS at 30 cmH₂O (25 in preterm babies). These long breaths push fluid out of the lungs and fill them with air for the first time. Then reassess heart rate and chest movement.

❌ Why the other options are wrong:
• Immediate chest compressions at 120/min — Chest compressions start only if the heart rate stays below 60 despite effective ventilation.
• IV adrenaline before any breaths — Adrenaline is given late, after ventilation and compressions.
• Deep suction of the stomach for one minute — Deep stomach suction isn't part of initial resuscitation (it can cause bradycardia).

⭐ Key point: Most babies respond to effective ventilation alone. Check that the chest is moving.$x$, null),
(138, $x$Oxygen saturation targets of about 91–95% in preterm infants help prevent:$x$, $x$Retinopathy of prematurity$x$, $x$✅ Correct answer: Retinopathy of prematurity
Preterm babies' retinas are still developing. TOO MUCH oxygen damages the growing blood vessels in the retina, causing RETINOPATHY OF PREMATURITY (ROP), which can lead to blindness. Keeping SpO₂ at about 91–95% reduces ROP while still preventing harm from too little oxygen.

❌ Why the other options are wrong:
• Umbilical cord infection — Umbilical infection isn't related to oxygen targets.
• Neonatal hypoglycaemia — Hypoglycaemia isn't related to oxygen targets.
• Physiological neonatal jaundice — Jaundice isn't related to oxygen targets.

⭐ Key point: Preterm babies need eye screening for ROP. Avoid both hyperoxia and hypoxia.$x$, null),
(139, $x$Respiratory distress syndrome in a 28-week preterm baby is mainly due to:$x$, $x$Surfactant deficiency$x$, $x$✅ Correct answer: Surfactant deficiency
In respiratory distress syndrome (RDS), preterm babies (especially below 32–34 weeks) don't make enough SURFACTANT, the substance that keeps the alveoli open. Without it, the alveoli collapse, causing breathing difficulty, grunting, recession and hypoxia.

❌ Why the other options are wrong:
• Meconium aspiration — Meconium aspiration affects term or post-term babies.
• Congenital heart disease — Congenital heart disease is a different cause of cyanosis.
• Excess surfactant — RDS is due to too LITTLE surfactant, not too much.

⭐ Key point: Prevent and treat RDS with antenatal steroids, CPAP, and surfactant given via the ETT.$x$, null),
(140, $x$The estimated weight of a 5-year-old child using (age + 4) × 2 is:$x$, $x$18 kg$x$, $x$✅ Correct answer: 18 kg
The formula weight (kg) = (age + 4) × 2 estimates the weight of children aged 1–10 years in emergencies. For a 5-year-old: (5 + 4) × 2 = 9 × 2 = 18 kg.

❌ Why the other options are wrong:
• 25 kg — 25 kg comes from a calculation error.
• 10 kg — 10 kg is too low (more like a 1-year-old).
• 30 kg — 30 kg is too high.

⭐ Key point: Use the estimate for emergency drug and fluid doses only when the child can't be weighed. Use the actual weight when possible.$x$, null),
(141, $x$The specific antidote for benzodiazepine overdose is:$x$, $x$Flumazenil$x$, $x$✅ Correct answer: Flumazenil
FLUMAZENIL is a competitive antagonist at the benzodiazepine receptor (GABA-A). It reverses the sedation and respiratory depression caused by benzodiazepines (midazolam, diazepam). The dose is 200 micrograms IV, then 100 micrograms every minute as needed.

❌ Why the other options are wrong:
• Naloxone — Naloxone reverses OPIOIDS.
• Protamine sulfate — Protamine reverses HEPARIN.
• Dantrolene — Dantrolene treats malignant hyperthermia.

⭐ Key point: Use flumazenil cautiously: it can trigger SEIZURES in long-term benzodiazepine users or in mixed overdoses (such as with tricyclics).$x$, null),
(142, $x$The nurse is caring for a patient who is on a continuous infusion of Propofol. The nurse should be aware that the infusion should be changed every:$x$, $x$12 hours$x$, $x$✅ Correct answer: 12 hours
Propofol is a lipid emulsion that supports rapid bacterial growth once opened. Propofol infusions (the bottle or syringe and the tubing) should be changed every 12 HOURS (or as per the manufacturer's instructions) to prevent bloodstream infection. Use strict aseptic technique.

❌ Why the other options are wrong:
• 48 hours — 48 hours is too long.
• 24 hours — 24 hours is too long for propofol (it's the time for TPN with lipids).
• 72 hours — 72 hours is far too long.

⭐ Key point: Discard any unused propofol from an opened vial or syringe after 6–12 hours, depending on local policy.$x$, null),
(143, $x$A patient receiving cyclosporine post-transplant has hypertension. Which drug is CONTRAINDICATED?$x$, $x$Verapamil$x$, $x$✅ Correct answer: Verapamil
Ciclosporin is broken down by the liver enzyme CYP3A4. VERAPAMIL (a non-dihydropyridine calcium channel blocker) INHIBITS CYP3A4, so ciclosporin levels RISE, risking toxicity (kidney damage, high BP, tremor). Verapamil is the drug to avoid in this question.

❌ Why the other options are wrong:
• Lisinopril — Lisinopril (an ACE inhibitor) can be used with caution (watch potassium and kidney function).
• Amlodipine — Amlodipine is commonly used in transplant patients for BP.
• Nifedipine — Nifedipine is also a dihydropyridine used for BP.

⭐ Key point: Many drugs interact with ciclosporin and tacrolimus. Always check interactions and monitor drug levels.$x$, null),
(144, $x$A nurse mistakenly calculates a dopamine infusion using the patient's weight in pounds (80 lb) instead of converting to kilograms (36.4 kg) first. If the ordered dose is 5 mcg/kg/min with a concentration of 1600 mcg/mL, by roughly what factor will the error inflate the calculated rate compared to the correct rate?$x$, $x$Approximately 2.2 times too high$x$, $x$✅ Correct answer: Approximately 2.2 times too high
The dose depends on weight in KILOGRAMS. 80 lb = 36.4 kg. Using 80 (pounds) instead of 36.4 (kg) makes the weight figure 80 ÷ 36.4 = 2.2 times too big. The infusion rate is directly proportional to weight, so the rate would be about 2.2 TIMES TOO HIGH, a dangerous overdose.

❌ Why the other options are wrong:
• Approximately 10 times too high — 10 times too high is wrong; the factor is 2.2.
• No difference, the rate is unaffected — There IS a difference.
• Approximately half the correct rate — It would be HIGHER, not half.

⭐ Key point: Always weigh in kilograms. 1 kg = 2.2 lb. Double-check weight-based infusions with a second nurse.$x$, null),
(145, $x$The nurse is caring for a patient on a continuous sedative infusion. The nurse should be aware that which of the following is a major complication of prolonged sedation?$x$, $x$Delirium and an increased length of stay in the ICU$x$, $x$✅ Correct answer: Delirium and an increased length of stay in the ICU
Prolonged deep sedation causes DELIRIUM, longer ventilation, ICU-acquired weakness, pressure ulcers, VAP, and a LONGER ICU STAY. Guidelines recommend light sedation, daily sedation holds, and using propofol or dexmedetomidine rather than benzodiazepines.

❌ Why the other options are wrong:
• A decreased need for mechanical ventilation — Prolonged sedation INCREASES the need for ventilation.
• Increased mobility and decreased risk of pressure ulcers — It DECREASES mobility and increases pressure ulcers.
• An increased level of consciousness — It decreases, not increases, the level of consciousness.

⭐ Key point: Target light sedation (RASS 0 to −1) unless there is a reason for deeper sedation.$x$, null),
(146, $x$A nurse is managing the pain of a patient who is sedated. The nurse knows that the most effective way to assess a sedated patient's pain is by:$x$, $x$Using a behavioral pain scale, such as the BPS or CPOT$x$, $x$✅ Correct answer: Using a behavioral pain scale, such as the BPS or CPOT
Sedated or ventilated patients often can't report pain. Use a validated BEHAVIOURAL pain scale: the BPS (Behavioural Pain Scale: facial expression, upper limb movement, ventilator compliance) or the CPOT (Critical-Care Pain Observation Tool). These detect pain reliably.

❌ Why the other options are wrong:
• Assessing the patient's heart rate and blood pressure — Heart rate and BP can change for many reasons and are unreliable pain indicators on their own.
• Assuming the patient is not in pain since they are sedated — Sedated patients CAN feel pain; never assume they don't.
• Asking the patient to rate their pain on a scale of 1-10 — Sedated patients usually can't rate their pain on a number scale.

⭐ Key point: Treat pain first ("analgesia first" sedation). Pain causes agitation, which is often mistaken for a need for more sedation.$x$, null),
(147, $x$Which action should the nurse take when preparing patient-controlled analgesia for a postoperative patient?$x$, $x$Ask another nurse to double-check the setup before patient use.$x$, $x$✅ Correct answer: Ask another nurse to double-check the setup before patient use.
Patient-controlled analgesia (PCA) delivers opioids, and programming errors can cause fatal overdoses. Having a SECOND NURSE DOUBLE-CHECK the setup (the drug, concentration, bolus dose, lockout time and hourly limit) before use is a key safety step.

❌ Why the other options are wrong:
• Caution the patient to limit the number of times he presses the dosing button. — Patients should press the button when they need pain relief; don't tell them to limit it.
• Provide clear, simple instructions for dosing if the patient is cognitively impaired — PCA isn't suitable for cognitively impaired patients who can't use it correctly.
• Instruct the patient to administer a dose only when experiencing pain. — Patients can also press it before painful activities (such as physiotherapy or coughing), not only when in pain.

⭐ Key point: Only the PATIENT should press the button, never family or staff ("PCA by proxy" causes overdoses).$x$, null),
(148, $x$What is the antidote for a cholinergic crisis caused by anticholinesterase medication overdose?$x$, $x$Atropine$x$, $x$✅ Correct answer: Atropine
A CHOLINERGIC crisis is too much acetylcholine (from an overdose of anticholinesterase drugs like neostigmine or pyridostigmine, or from organophosphates). It causes SLUDGE (salivation, lacrimation, urination, diarrhoea, GI cramps, emesis), slow pulse, bronchospasm and weakness. ATROPINE blocks the muscarinic effects.

❌ Why the other options are wrong:
• Flumazenil — Flumazenil reverses benzodiazepines.
• Naloxone — Naloxone reverses opioids.
• Protamine sulfate — Protamine reverses heparin.

⭐ Key point: Cholinergic crisis can look like myasthenic crisis; both cause weakness, but cholinergic crisis has SLUDGE signs and small pupils.$x$, null),
(149, $x$A patient on warfarin has an INR of 8.0. Which reversal agent is used for active bleeding?$x$, $x$FFP$x$, $x$✅ Correct answer: FFP
An INR of 8.0 with ACTIVE BLEEDING needs IMMEDIATE replacement of clotting factors. FRESH FROZEN PLASMA (FFP) provides all clotting factors and works immediately; it is the keyed answer here. IV vitamin K (5–10 mg) should also be given, because it takes 6–24 hours but gives lasting reversal. Where available, prothrombin complex concentrate (PCC) is preferred, as it works faster and needs a smaller volume.

❌ Why the other options are wrong:
• Vitamin K IV — Vitamin K alone works too slowly for active bleeding (but should also be given).
• Protamine sulfate — Protamine reverses heparin, not warfarin.
• Andexanet alfa — Andexanet alfa reverses factor Xa inhibitors (apixaban, rivaroxaban), not warfarin.

⭐ Key point: Warfarin reversal for major bleeding: PCC (or FFP) plus IV vitamin K.$x$, null),
(150, $x$A nurse is monitoring a sedated patient in the ICU using the Richmond Agitation-Sedation Scale (RASS). A score of 0 on the RASS indicates:$x$, $x$Alert and calm$x$, $x$✅ Correct answer: Alert and calm
The Richmond Agitation-Sedation Scale (RASS) runs from +4 (combative) to −5 (unrousable). A score of 0 means the patient is ALERT AND CALM: the ideal target for many ICU patients.

❌ Why the other options are wrong:
• Unarousable — Unrousable is −5.
• Agitated or restless — Agitated or restless is +1 to +2.
• Light sedation — Light sedation is −1 to −2.

⭐ Key point: The usual ICU target is RASS 0 to −1 (alert and calm to drowsy), unless deeper sedation is needed.$x$, null),
(151, $x$What is the first-line antidote for suspected opioid overdose causing respiratory depression?$x$, $x$Naloxone$x$, $x$✅ Correct answer: Naloxone
NALOXONE is the first-line antidote for opioid overdose. It competitively blocks opioid receptors, reversing respiratory depression, sedation and pinpoint pupils within 1–2 minutes when given IV. The usual dose is 0.4 mg IV (or IM, intranasal), repeated as needed.

❌ Why the other options are wrong:
• N-acetylcysteine — N-acetylcysteine is the antidote for paracetamol.
• Atropine — Atropine treats bradycardia and organophosphate poisoning.
• Flumazenil — Flumazenil reverses benzodiazepines.

⭐ Key point: Naloxone lasts a shorter time than many opioids (30–90 minutes), so monitor for re-sedation and give repeat doses or an infusion.$x$, null),
(152, $x$Clinically significant carbon monoxide production within an anaesthesia circuit is most associated with which agent reacting with desiccated (dried-out) CO2 absorbent?$x$, $x$Desflurane$x$, $x$✅ Correct answer: Desflurane
When CO₂ absorbent (soda lime) in the anaesthetic circuit becomes very DRY (desiccated), it can react with some volatile agents to produce CARBON MONOXIDE. DESFLURANE produces the most (isoflurane less, sevoflurane very little). This can cause CO poisoning in the patient.

❌ Why the other options are wrong:
• Sevoflurane — Sevoflurane produces Compound A (not much CO) with dry absorbent.
• Propofol — Propofol is an IV drug, not used in the circuit.
• Oxygen alone — Oxygen alone doesn't produce CO.

⭐ Key point: Prevent CO production: change absorbent regularly, and turn off the fresh gas flow when the machine isn't in use (it dries the absorbent).$x$, null),
(153, $x$The oxygen flush valve on an anaesthesia machine delivers pure oxygen directly to the common gas outlet, bypassing the vaporizer, at a flow rate of approximately:$x$, $x$35-75 L/min$x$, $x$✅ Correct answer: 35-75 L/min
The OXYGEN FLUSH valve on an anaesthesia machine delivers 100% oxygen directly to the common gas outlet, bypassing the flowmeters and vaporiser, at a very HIGH flow of about 35–75 L/min. It quickly fills the circuit or breathing bag in an emergency.

❌ Why the other options are wrong:
• 1-2 L/min — 1–2 L/min is a normal low fresh gas flow.
• 100-150 L/min — 100–150 L/min is too high.
• 5-10 L/min — 5–10 L/min is a normal fresh gas flow.

⭐ Key point: Using the flush during inspiration can cause barotrauma; it can also dilute anaesthetic agents and risk awareness.$x$, null),
(154, $x$A commonly used first-line antiemetic for postoperative nausea and vomiting prophylaxis is:$x$, $x$Ondansetron$x$, $x$✅ Correct answer: Ondansetron
ONDANSETRON is a 5-HT3 receptor antagonist, a standard first-line drug to prevent and treat postoperative nausea and vomiting (PONV). It blocks serotonin receptors in the gut and the brain's vomiting centre. The usual dose is 4 mg IV.

❌ Why the other options are wrong:
• Atropine — Atropine is an anticholinergic for bradycardia.
• Morphine — Morphine CAUSES nausea and vomiting.
• Succinylcholine — Succinylcholine is a muscle relaxant.

⭐ Key point: Other PONV drugs: dexamethasone, cyclizine, droperidol. Risk factors: female, non-smoker, previous PONV, postoperative opioids.$x$, null),
(155, $x$Compound A, a potentially nephrotoxic breakdown product identified in animal studies, forms when which agent is used with low fresh gas flows and desiccated CO2 absorbent?$x$, $x$Sevoflurane$x$, $x$✅ Correct answer: Sevoflurane
SEVOFLURANE can break down when it contacts CO₂ absorbents (especially dry ones), producing COMPOUND A, which was toxic to the kidneys in animal studies. This happens more with LOW fresh gas flows. Using adequate gas flows (at least 1–2 L/min) reduces Compound A.

❌ Why the other options are wrong:
• Isoflurane — Isoflurane doesn't produce significant Compound A.
• Desflurane — Desflurane produces carbon monoxide with dry absorbent, not Compound A.
• Nitrous oxide — Nitrous oxide doesn't produce Compound A.

⭐ Key point: There's no clear evidence of kidney harm in humans, but low-flow limits are often still followed.$x$, null),
(156, $x$During adult cardiac arrest, IV adrenaline (epinephrine) is administered at what dose and interval?$x$, $x$1mg every 3–5 minutes$x$, $x$✅ Correct answer: 1mg every 3–5 minutes
In adult cardiac arrest, ADRENALINE 1 mg IV (or IO) is given every 3–5 MINUTES (every second CPR cycle). In non-shockable rhythms (asystole, PEA), give it as soon as possible. In shockable rhythms (VF, pulseless VT), give it after the 3rd shock.

❌ Why the other options are wrong:
• 0.1mg every 1 minute — 0.1 mg every minute is the wrong dose and interval.
• 1mg every 15 minutes — Every 15 minutes is too infrequent.
• 10mg once only — 10 mg once only is a dangerous overdose.

⭐ Key point: Flush each dose with 20 mL of saline and raise the arm (for peripheral access).$x$, null),
(157, $x$Noradrenaline has leaked from a peripheral IV into the tissues. The specific treatment is:$x$, $x$Local infiltration with phentolamine$x$, $x$✅ Correct answer: Local infiltration with phentolamine
Noradrenaline is a strong vasoconstrictor. If it leaks into the tissues (extravasation), it narrows the local blood vessels, causing tissue ischaemia and necrosis (skin death). The specific treatment is LOCAL INFILTRATION with PHENTOLAMINE (an alpha-blocker), which reverses the vasoconstriction. Stop the infusion and leave the cannula in place to aspirate first.

❌ Why the other options are wrong:
• Applying heat and massaging the area — Applying heat and massage can spread the drug.
• Giving IV furosemide — Furosemide doesn't treat extravasation.
• Local injection of more noradrenaline — More noradrenaline would worsen the damage.

⭐ Key point: Prevent extravasation: give vasopressors through a central line where possible, and check peripheral sites frequently.$x$, null),
(158, $x$Flushing and rash on the upper body during IV vancomycin is best managed by:$x$, $x$Slowing the infusion rate$x$, $x$✅ Correct answer: Slowing the infusion rate
"Red man syndrome" (flushing and a rash on the face, neck and upper body, sometimes with itching and low BP) happens when vancomycin is infused too FAST. It is caused by histamine release, not a true allergy. Treat by SLOWING the infusion (over at least 60 minutes, or longer for large doses) and giving antihistamines.

❌ Why the other options are wrong:
• Giving it as an IV push — An IV push would make it worse.
• Doubling the dose — Doubling the dose would make it worse.
• Stopping all antibiotics permanently — Stopping all antibiotics permanently isn't necessary; it's an infusion-rate reaction.

⭐ Key point: Monitor vancomycin trough levels (or AUC) to avoid kidney damage and ototoxicity.$x$, null),
(159, $x$Dexmedetomidine is useful in ICU because it:$x$, $x$Sedates with little respiratory depression$x$, $x$✅ Correct answer: Sedates with little respiratory depression
DEXMEDETOMIDINE is an alpha-2 agonist that provides calm, cooperative ("rousable") sedation with LITTLE RESPIRATORY DEPRESSION. Patients can often be woken and can follow commands. It causes less delirium than benzodiazepines and is useful for weaning and for agitated patients.

❌ Why the other options are wrong:
• Is a long-acting opioid analgesic — It isn't an opioid, though it has some analgesic effect.
• Has no effect on heart rate — It DOES affect heart rate: it causes BRADYCARDIA.
• Causes deep amnesia and apnoea — It doesn't cause deep amnesia or apnoea.

⭐ Key point: Watch for bradycardia and hypotension. It is less suitable when deep sedation is needed.$x$, null),
(160, $x$Ketamine is useful for induction in a shocked asthmatic patient because it:$x$, $x$Maintains blood pressure and causes bronchodilation$x$, $x$✅ Correct answer: Maintains blood pressure and causes bronchodilation
KETAMINE is an NMDA receptor antagonist. It MAINTAINS BLOOD PRESSURE (it stimulates the sympathetic system, making it useful in shocked patients) and causes BRONCHODILATION (useful in asthma). It also preserves airway reflexes better than other induction agents.

❌ Why the other options are wrong:
• Has no effect on airway reflexes — It largely PRESERVES airway reflexes, so the statement "no effect" is wrong.
• Lowers BP and causes bronchospasm — It RAISES BP and causes bronchodilation, not the opposite.
• Reverses opioid-induced breathing problems — It doesn't reverse opioids.

⭐ Key point: Ketamine can cause emergence phenomena (hallucinations, agitation) in adults; benzodiazepines can reduce them. It increases secretions.$x$, null),
(161, $x$Which of the following is a commonly recognized high-risk category for nurses in clinical practice?$x$, $x$Medication administration errors$x$, $x$✅ Correct answer: Medication administration errors
MEDICATION ADMINISTRATION ERRORS are one of the most common high-risk areas in nursing. In ICU, many high-alert drugs (insulin, potassium, opioids, vasopressors, heparin), complex calculations and frequent changes increase the risk. Errors can cause serious harm or death.

❌ Why the other options are wrong:
• Correctly documenting a normal vital sign — Correctly documenting a normal vital sign isn't a risk category.
• Attending a staff meeting — Attending a staff meeting isn't a clinical risk.
• Taking an approved lunch break — An approved break isn't a risk category.

⭐ Key point: Prevent drug errors: the rights of medication administration, double checks, smart pumps, barcode scanning and clear labelling.$x$, null),
(162, $x$A critically-ill patient has a "Living Will" in the chart. The patient's condition has deteriorated, but the spouse wants "everything done" regardless of the patient's wishes. Which ethical principle is the spouse violating?$x$, $x$Autonomy$x$, $x$✅ Correct answer: Autonomy
A LIVING WILL documents the patient's own wishes about treatment if they can't decide for themselves. When the spouse wants "everything done" against these written wishes, the spouse is ignoring the patient's right to decide: a violation of the patient's AUTONOMY.

❌ Why the other options are wrong:
• Beneficence — Beneficence means doing good.
• Non-maleficence — Non-maleficence means avoiding harm.
• Justice — Justice means fairness.

⭐ Key point: A valid advance directive must be respected. Support the family through the decision with clear communication.$x$, null),
(163, $x$The nurse manager wants to assess the compliance of staff with a new hand hygiene protocol. Which type of audit would be most effective for this purpose?$x$, $x$Concurrent audit$x$, $x$✅ Correct answer: Concurrent audit
A CONCURRENT audit happens IN REAL TIME, while care is being given. To check hand hygiene compliance, the manager directly OBSERVES staff during their work and records whether they clean their hands at the right moments. This is the most accurate way to assess current practice.

❌ Why the other options are wrong:
• Retrospective audit — A retrospective audit looks back at records; hand hygiene isn't usually documented.
• Outcome audit — An outcome audit measures results (such as infection rates), not compliance.
• Chart audit — A chart audit reviews records, which don't capture hand hygiene.

⭐ Key point: Use the WHO "5 Moments" observation tool for hand hygiene audits, and feed results back to staff.$x$, null),
(164, $x$Documentation of hourly neurological observations for a patient with a head injury is an example of which type of standard in the Donabedian model?$x$, $x$Process$x$, $x$✅ Correct answer: Process
In the Donabedian model, PROCESS standards describe the activities done in delivering care. Documenting hourly neurological observations for a head-injured patient is a nursing ACTIVITY, so it is a PROCESS standard.

❌ Why the other options are wrong:
• Structure — Structure standards relate to resources (staff, equipment, facilities).
• Outcome — Outcome standards relate to results (recovery, complications).
• Input — "Input" isn't one of the three Donabedian categories.

⭐ Key point: Structure (resources) → Process (what is done) → Outcome (results).$x$, null),
(165, $x$Which ethical principle refers to a patient's right to make their own healthcare decisions?$x$, $x$Autonomy$x$, $x$✅ Correct answer: Autonomy
AUTONOMY is the ethical principle that a competent patient has the RIGHT to make their own healthcare decisions, including accepting or refusing treatment, based on adequate information. It underpins informed consent.

❌ Why the other options are wrong:
• Non-maleficence — Non-maleficence means doing no harm.
• Justice — Justice means fairness.
• Beneficence — Beneficence means doing good.

⭐ Key point: Respect autonomy by giving full information, checking capacity, and accepting the patient's decision, even if you disagree.$x$, null),
(166, $x$Which of the following organizations requires a mechanism for addressing ethical issues?$x$, $x$The Joint Commission$x$, $x$✅ Correct answer: The Joint Commission
The JOINT COMMISSION (the US accreditation body for hospitals) requires healthcare organisations to have a MECHANISM for addressing ETHICAL issues, such as an ethics committee or consultation service. This supports staff, patients and families with ethical dilemmas.

❌ Why the other options are wrong:
• American Hospital Association — The American Hospital Association is a trade association; it doesn't set this requirement.
• American Association of Critical-Care Nurses — AACN is a professional nursing association; it supports ethics, but doesn't require it of hospitals.
• Society of Critical Care Medicine — SCCM is a professional society, not an accreditation body.

⭐ Key point: In Nigeria, hospital ethics committees serve a similar role, especially for research and difficult clinical decisions.$x$, null),
(167, $x$An effective handover should be:$x$, $x$Brief but comprehensive$x$, $x$✅ Correct answer: Brief but comprehensive
An effective handover is BRIEF but COMPREHENSIVE: it conveys all the important information (diagnosis, current condition, treatments, risks, plans and pending tasks) clearly and concisely, often using a structured tool like SBAR. Too long wastes time; too short misses important details.

❌ Why the other options are wrong:
• Conducted without documentation — Handover should be documented and supported by records.
• Based on assumptions — It should be based on facts, not assumptions.
• Done only when convenient — It must happen at every shift change, not only when convenient.

⭐ Key point: Bedside handover lets the incoming nurse see the patient and check equipment, lines and drugs.$x$, null),
(168, $x$Which of the following is ethical issue during CPR:$x$, $x$Family presence during CPR$x$, $x$✅ Correct answer: Family presence during CPR
FAMILY PRESENCE DURING CPR is one of the most debated ethical issues in resuscitation. Benefits: families may cope better, see that everything was done, and be present at death. Concerns: possible distress, interference, and staff discomfort. Many guidelines now support offering it, with a dedicated staff member to support the family.

❌ Why the other options are wrong:
• Refusal and discontinuation of treatment — Refusal and discontinuation of treatment are ethical issues, but the keyed answer focuses on CPR family presence.
• Consent for Treatment — Consent for treatment is an ethical issue, but not specific to CPR here.
• Trained healthcare providers — Trained providers is a staffing matter, not an ethical issue.

⭐ Key point: Offer family presence where appropriate, with a staff member to explain what's happening and support them.$x$, null),
(169, $x$The process of attracting qualified persons to apply for jobs that are open is referred to as:$x$, $x$Recruitment$x$, $x$✅ Correct answer: Recruitment
RECRUITMENT is the process of ATTRACTING qualified people to APPLY for vacant jobs, through advertising, job fairs, referrals, or recruitment agencies. It is followed by SELECTION (choosing the best applicant through interviews and tests).

❌ Why the other options are wrong:
• Training — Training develops existing staff skills.
• Transfer — Transfer moves staff to another position or unit.
• Human resource management — Human resource management is the whole field (recruitment, training, appraisal, welfare), not the specific process.

⭐ Key point: HR process: workforce planning → recruitment → selection → orientation → training → appraisal → retention.$x$, null),
(170, $x$Which ethical principle is demonstrated by respecting a competent patient's informed refusal of treatment?$x$, $x$Autonomy$x$, $x$✅ Correct answer: Autonomy
Respecting a competent patient's informed REFUSAL of treatment demonstrates AUTONOMY: the patient's right to make decisions about their own body and care, even if others disagree.

❌ Why the other options are wrong:
• Justice — Justice is fairness in care and resources.
• Fidelity — Fidelity is keeping promises and being loyal.
• Beneficence — Beneficence is doing good; it may conflict with the patient's refusal, but autonomy takes priority for a competent patient.

⭐ Key point: Make sure the refusal is informed (the patient understands the risks), document it, and continue other care.$x$, null),
(171, $x$It is a specially staffed and equipped area of a hospital that provides a level of care intermediate between intensive care and general ward care. The critical care nurse knows this is:$x$, $x$High dependency unit$x$, $x$✅ Correct answer: High dependency unit
A HIGH DEPENDENCY UNIT (HDU, Level 2 care) is a specially staffed and equipped area that provides care INTERMEDIATE between intensive care and the general ward. It is for patients needing closer monitoring or single-organ support (such as NIV), with a nurse-to-patient ratio of about 1:2.

❌ Why the other options are wrong:
• Critical care unit — A critical care (intensive care) unit provides Level 3 care (1:1).
• General ward — A general ward provides Level 0–1 care.
• Post anaesthesia recovery unit — A post-anaesthesia recovery unit is for immediate recovery after surgery.

⭐ Key point: HDUs help step patients down from ICU and prevent deteriorating ward patients needing ICU.$x$, null),
(172, $x$A family that does not know the patient's end-of-life wishes assumes they know what is best for the patient. This reflects:$x$, $x$Paternalism$x$, $x$✅ Correct answer: Paternalism
PATERNALISM happens when others (family, staff) decide what is "best" for a patient WITHOUT knowing or respecting the patient's own wishes, overriding the patient's autonomy. A family that doesn't know the patient's end-of-life wishes but assumes it knows best is acting paternalistically.

❌ Why the other options are wrong:
• Veracity — Veracity is truthfulness.
• Pragmatism — Pragmatism is a practical approach, not this ethical concept.
• Justice — Justice is fairness.

⭐ Key point: Encourage patients to discuss and document their wishes (advance directives) before they lose capacity.$x$, null),
(173, $x$In functional nursing, care is organized according to:$x$, $x$Nursing tasks$x$, $x$✅ Correct answer: Nursing tasks
In FUNCTIONAL nursing, care is organised by TASKS: one nurse gives all the medications, another does all the dressings, another takes all the vital signs. It is efficient with few staff, but care is fragmented, and no one nurse has the full picture of the patient.

❌ Why the other options are wrong:
• Bed numbers — Bed numbers describe patient allocation, not functional nursing.
• Family preference — Family preference doesn't define a nursing care model.
• Patient diagnosis — Diagnosis-based allocation isn't functional nursing.

⭐ Key point: Other models: team nursing, primary nursing (one nurse responsible for a patient's full care), and patient allocation.$x$, null),
(174, $x$Discipline, as part of the Controlling function of management, should ideally be:$x$, $x$Fair, consistent, and applied according to established policy$x$, $x$✅ Correct answer: Fair, consistent, and applied according to established policy
Discipline is part of the CONTROLLING function of management. It should be FAIR, CONSISTENT (the same rules for everyone), and follow ESTABLISHED POLICY and due process, usually step by step: counselling, verbal warning, written warning, suspension, dismissal.

❌ Why the other options are wrong:
• Used only as a first response before any coaching or feedback — Discipline should usually come AFTER coaching and feedback, not before.
• Avoided entirely regardless of the situation — Avoiding discipline entirely allows poor practice to continue.
• Applied inconsistently depending on personal relationships — Inconsistent discipline based on relationships is unfair and damages morale.

⭐ Key point: The aim of discipline is to correct behaviour, not to punish. Document every step.$x$, null),
(175, $x$A nursing audit reveals that many nurses are not completing the required pain assessment documentation. The next step in quality assurance should be to:$x$, $x$Provide a refresher course on pain assessment and documentation$x$, $x$✅ Correct answer: Provide a refresher course on pain assessment and documentation
If an audit shows poor documentation of pain assessment, the likely cause is a KNOWLEDGE or SKILL gap, or a system issue. The next step in quality improvement is to address the cause: provide a REFRESHER COURSE (education) on pain assessment and documentation, then RE-AUDIT to check improvement.

❌ Why the other options are wrong:
• Punish the nurses who failed to document — Punishing staff discourages honesty and doesn't fix the cause.
• Change the pain assessment policy — The policy may be fine; the problem is compliance.
• Tell the patients to complain if their pain is not assessed — Asking patients to complain isn't a quality improvement method.

⭐ Key point: The audit cycle: standard → measure → compare → change (such as education) → re-audit.$x$, null),
(176, $x$A ward patient's NEWS2 score is 7. The ICU outreach nurse expects:$x$, $x$An emergency response by a critical care team$x$, $x$✅ Correct answer: An emergency response by a critical care team
NEWS2 (National Early Warning Score) adds up points for RR, SpO₂, BP, heart rate, consciousness and temperature. A total of 7 OR MORE means HIGH clinical risk: an EMERGENCY response is needed, with urgent review by a critical care outreach team, continuous monitoring, and consideration of ICU transfer.

❌ Why the other options are wrong:
• Routine 12-hourly observations on the ward — 12-hourly observations are for a score of 0.
• No change, as this score is in the normal range — A score of 7 isn't normal; it is high risk.
• Discharge home later that same evening — Discharge would be unsafe.

⭐ Key point: NEWS2 responses: 0 = routine; 1–4 = ward review; 5–6 (or 3 in one parameter) = urgent review; 7 or more = emergency.$x$, null),
(177, $x$When one ICU bed is free and two patients need it, the bed should go to the patient who:$x$, $x$Is most likely to benefit from ICU care$x$, $x$✅ Correct answer: Is most likely to benefit from ICU care
When ICU beds are limited, they should go to the patient MOST LIKELY to BENEFIT from intensive care: the one whose condition is reversible and who is likely to survive with ICU treatment. This follows the principle of JUSTICE (fair use of scarce resources) and clinical need.

❌ Why the other options are wrong:
• Can pay for the ICU bed in cash today — Ability to pay isn't an ethical basis for allocation.
• Has the highest social status in the town — Social status isn't an ethical basis.
• Arrived at the hospital first that day — First-come, first-served doesn't consider clinical need and benefit.

⭐ Key point: Use clear, written ICU admission criteria and document the decision-making process.$x$, null),
(178, $x$Which practice best reduces burnout and moral distress in ICU nurses?$x$, $x$Regular team debriefing after critical events$x$, $x$✅ Correct answer: Regular team debriefing after critical events
Regular TEAM DEBRIEFING after critical events (deaths, cardiac arrests, difficult cases) helps ICU nurses process emotions, learn from the event, feel supported, and reduce burnout and moral distress. Other helpful measures: adequate staffing, manageable workload, breaks, clinical supervision, and psychological support.

❌ Why the other options are wrong:
• Removing all staff rotation — Removing staff rotation doesn't reduce burnout.
• Banning staff from discussing deaths — Banning discussion of deaths increases distress.
• Longer shifts without breaks — Longer shifts without breaks increase burnout.

⭐ Key point: Signs of burnout: emotional exhaustion, cynicism, and reduced sense of achievement. Seek support early.$x$, null),
(179, $x$Discharging patients from ICU at night is discouraged mainly because it is linked to:$x$, $x$Higher readmission and mortality$x$, $x$✅ Correct answer: Higher readmission and mortality
Discharging patients from ICU at NIGHT is linked to HIGHER READMISSION rates and HIGHER MORTALITY. At night, wards have fewer staff, fewer senior doctors, and handovers may be rushed, so deteriorating patients may be missed. Discharges should be planned in the DAYTIME, with a full handover.

❌ Why the other options are wrong:
• Better sleep for the patient — Night discharge disturbs sleep rather than improving it.
• A lower nursing workload overnight — It doesn't reduce overall workload; it shifts risk to the ward.
• Lower overall hospital costs — It doesn't save costs if patients are readmitted.

⭐ Key point: Night discharge is often caused by bed pressure. Track it as a quality indicator.$x$, null),
(180, $x$Three ICU patients develop the same resistant organism within a week. The manager's first step is to:$x$, $x$Inform infection control and cohort or isolate the patients$x$, $x$✅ Correct answer: Inform infection control and cohort or isolate the patients
Three patients with the same resistant organism within a week suggest a possible OUTBREAK (cross-transmission). The first step is to INFORM the INFECTION CONTROL team and ISOLATE or COHORT the affected patients (with contact precautions) to stop further spread. Then review practices, screen contacts and reinforce hand hygiene and cleaning.

❌ Why the other options are wrong:
• Wait for more cases before taking any action — Waiting for more cases allows further spread.
• Stop the hand hygiene audits to save time — Stopping hand hygiene audits would make things worse.
• Close the whole hospital to new admissions — Closing the whole hospital is excessive as a first step.

⭐ Key point: Outbreak control: identify, isolate, inform, investigate, intensify hand hygiene and cleaning, and monitor.$x$, null),
(181, $x$Which of the following is a risk associated with the use of portable tablets for documentation in a busy clinical setting?$x$, $x$They are susceptible to being lost, stolen, or damaged$x$, $x$✅ Correct answer: They are susceptible to being lost, stolen, or damaged
Portable tablets and mobile devices are easily LOST, STOLEN or DAMAGED in a busy clinical setting. If they contain patient information, this risks a DATA BREACH. Devices need password protection, encryption, remote-wipe ability, and secure storage.

❌ Why the other options are wrong:
• They require constant access to a wired internet connection — Tablets usually use Wi-Fi, not a wired connection.
• The tablets are too heavy for nurses to carry — Tablets aren't too heavy.
• The tablet screen is too small to view information — Screen size may be a minor issue but isn't the main risk.

⭐ Key point: Never store patient data on personal devices. Log out and lock devices when not in use.$x$, null),
(182, $x$In research study where the researcher present what he hopes to achieve at the end of study will be expressed under:$x$, $x$Aims/purpose of the study$x$, $x$✅ Correct answer: Aims/purpose of the study
The AIMS or PURPOSE of a study is the broad statement of what the researcher HOPES TO ACHIEVE by the end of the study. For example: "The aim of this study is to improve pain management in ICU patients."

❌ Why the other options are wrong:
• Statement of the problem — The statement of the problem describes the issue that prompted the study.
• Objectives of the study — Objectives are SPECIFIC, measurable steps to achieve the aim.
• Background of the study — The background gives context and existing knowledge.

⭐ Key point: Aim = the overall goal. Objectives = specific, measurable steps (SMART). Research questions or hypotheses come from the objectives.$x$, null),
(183, $x$Which of the following is a procedure that enables the researcher to organise, interpret, and communicate numerical information?$x$, $x$Statistics$x$, $x$✅ Correct answer: Statistics
STATISTICS is the set of procedures for ORGANISING, SUMMARISING, INTERPRETING and COMMUNICATING numerical data. It has two branches: DESCRIPTIVE statistics (summarising data: mean, median, percentages, charts) and INFERENTIAL statistics (drawing conclusions about a population: t-test, chi-square, p-values).

❌ Why the other options are wrong:
• Descriptive — "Descriptive" is one branch of statistics, not the whole procedure.
• Inferential — "Inferential" is one branch of statistics.
• Means — "Means" is just one measure (the average).

⭐ Key point: Descriptive = describe the sample. Inferential = generalise to the population and test hypotheses.$x$, null),
(184, $x$Which nursing diagnosis format is used when the nurse suspects a problem may exist but needs additional data to confirm or rule it out?$x$, $x$Possible diagnosis$x$, $x$✅ Correct answer: Possible diagnosis
A POSSIBLE nursing diagnosis is used when the nurse SUSPECTS a problem but doesn't yet have ENOUGH DATA to confirm or rule it out. More assessment is needed. For example: "Possible social isolation", which is then confirmed or ruled out.

❌ Why the other options are wrong:
• Actual diagnosis — An actual diagnosis is confirmed by signs and symptoms (defining characteristics).
• Syndrome diagnosis — A syndrome diagnosis groups related diagnoses (such as rape-trauma syndrome).
• Wellness diagnosis — A wellness diagnosis describes readiness to improve a healthy state.

⭐ Key point: Types of nursing diagnosis: actual, risk, possible, syndrome, and health-promotion (wellness).$x$, null),
(185, $x$A nurse made Mr Kay's care plan on admission on Tuesday, then made another care plan for him on Wednesday's shift. Wednesday's plan is a(n):$x$, $x$Ongoing plan$x$, $x$✅ Correct answer: Ongoing plan
The INITIAL care plan is made on ADMISSION (Tuesday). Plans made or updated on LATER shifts (Wednesday), as the nurse gathers new information and the patient's condition changes, are ONGOING care plans. Care planning is continuous and dynamic.

❌ Why the other options are wrong:
• Reviewed plan — "Reviewed plan" isn't the standard term used here.
• Initial plan — The initial plan was made on Tuesday.
• Discharge plan — A discharge plan prepares for leaving hospital.

⭐ Key point: Types of planning: initial (on admission), ongoing (during the stay), and discharge (before leaving).$x$, null),
(186, $x$The New York Heart Association (NYHA) functional classification (Class I-IV) for heart failure severity is an example of which scale of measurement?$x$, $x$Ordinal scale$x$, $x$✅ Correct answer: Ordinal scale
NYHA classes I–IV rank heart failure severity in ORDER (I = no symptoms, IV = symptoms at rest). The categories have a meaningful order, but the GAPS between classes aren't equal or measurable, so this is an ORDINAL scale.

❌ Why the other options are wrong:
• Ratio scale — Ratio scales have equal intervals and a true zero (such as weight).
• Interval scale — Interval scales have equal intervals but no true zero (such as temperature in °C).
• Nominal scale — Nominal scales are categories without order (such as blood group).

⭐ Key point: Other ordinal scales: GCS, pain scores, Likert scales, cancer stages.$x$, null),
(187, $x$Which step of the research process involves condensing raw data into tables, charts, and summary statistics to make it more understandable?$x$, $x$Organisation and analysis of data$x$, $x$✅ Correct answer: Organisation and analysis of data
ORGANISATION and ANALYSIS of data condenses raw data into tables, charts, graphs and summary statistics (descriptive and inferential) so the results can be understood and interpreted. This step follows data collection.

❌ Why the other options are wrong:
• Literature review — The literature review looks at existing research before the study.
• Problem identification — Problem identification is the first step.
• Formulation of research questions — Formulating research questions happens early in the process.

⭐ Key point: After analysis: interpretation of findings, conclusions, recommendations and dissemination (reporting).$x$, null),
(188, $x$Mr john a post-operative patient in ICU developed a severe fever 4 days after the surgery, this is typical of:$x$, $x$Secondary infection$x$, $x$✅ Correct answer: Secondary infection
A new fever appearing several days (3–5 days) after surgery suggests a SECONDARY (hospital-acquired) INFECTION such as a wound infection, pneumonia, UTI or line infection. These are acquired after admission, from surgery, devices or the hospital environment.

❌ Why the other options are wrong:
• Primary infection — "Primary infection" isn't the term used for an infection developing days after surgery.
• Malnutrition — Malnutrition doesn't cause a severe fever on day 4.
• Normal surgical process — A mild fever in the first 24–48 hours can be part of the normal response to surgery, but a SEVERE fever on day 4 isn't.

⭐ Key point: Causes of post-op fever by day ("5 Ws"): Wind (lungs, days 1–2), Water (urine, days 3–5), Wound (days 5–7), Walking (DVT, day 5+), Wonder drugs (any time).$x$, null),
(189, $x$The guiding clinical principle for choosing between enteral and parenteral nutrition in a critically ill patient is best summarized as:$x$, $x$"If the gut works, use it" — enteral nutrition is preferred whenever the GI tract is functional$x$, $x$✅ Correct answer: "If the gut works, use it" — enteral nutrition is preferred whenever the GI tract is functional
The guiding principle in nutrition support is "IF THE GUT WORKS, USE IT". Enteral nutrition is preferred whenever the GI tract is functional, because it maintains gut integrity, supports immunity, has fewer infections and is cheaper. Parenteral nutrition is used only when the gut can't be used or enteral feeding isn't enough.

❌ Why the other options are wrong:
• Parenteral nutrition should always be used first regardless of GI function — Parenteral nutrition shouldn't always be used first.
• Enteral and parenteral nutrition are equally preferred with no clinical rationale for choosing one over the other — They aren't equally preferred; there are clear reasons to prefer enteral.
• Oral intake should always be attempted before any tube feeding is considered, regardless of aspiration risk — Oral intake is preferred when safe, but not "regardless of aspiration risk".

⭐ Key point: Start enteral feeding within 24–48 hours in critically ill patients if possible.$x$, null),
(190, $x$A pleural effusion typically becomes visible on a standard chest X-ray only once fluid volume reaches approximately:$x$, $x$150–300ml$x$, $x$✅ Correct answer: 150–300ml
A pleural effusion usually needs about 150–300 mL of fluid before it can be seen on a standard upright (PA) chest X-ray, as blunting of the costophrenic angle. Smaller amounts may be seen on a lateral X-ray (about 50 mL) or ultrasound (very small volumes).

❌ Why the other options are wrong:
• 2–3 litres — 2–3 litres would cause a large white-out, far above the detection threshold.
• 5–10ml — 5–10 mL is too small to see on X-ray.
• There is no minimum volume — any amount is visible — Small amounts are NOT visible on X-ray.

⭐ Key point: Ultrasound is the most sensitive bedside test for effusions and guides safe drainage.$x$, null),
(191, $x$---------------- is a standard healthcare practice that helps prevent the transfer of germs to or from an open wound and other susceptible areas on a patient's body.$x$, $x$Aseptic Technique$x$, $x$✅ Correct answer: Aseptic Technique
ASEPTIC TECHNIQUE is the standard practice that prevents germs from being transferred to or from open wounds, invasive devices and other susceptible sites. It uses hand hygiene, sterile equipment, a non-touch technique and a clean field (aseptic non-touch technique, ANTT).

❌ Why the other options are wrong:
• Clean Technique — Clean technique reduces germs but isn't strict enough for open wounds and devices.
• Sterile Technique — Sterile technique is a stricter form used mainly in theatre; aseptic technique is the general standard.
• Asepitic Technique — "Asepitic technique" is a misspelling distractor.

⭐ Key point: Use ANTT for IV medicines, line care, catheter insertion and wound dressings.$x$, null),
(192, $x$Which insertion site for a central venous catheter is generally associated with the LOWEST risk of catheter-related bloodstream infection?$x$, $x$Subclavian vein$x$, $x$✅ Correct answer: Subclavian vein
Central venous catheters in the SUBCLAVIAN vein have the LOWEST risk of catheter-related bloodstream infection. The femoral site has the highest risk (more skin bacteria in the groin), and the internal jugular site is intermediate. The subclavian site is easier to keep clean and dressed.

❌ Why the other options are wrong:
• Internal jugular vein with a dressing changed daily — Daily dressing changes on the internal jugular don't make it the lowest-risk site, and frequent changes aren't recommended.
• Any site is equally low-risk once inserted — The sites are NOT equally low-risk.
• Femoral vein — The femoral vein has the HIGHEST infection risk.

⭐ Key point: The subclavian site has a higher pneumothorax risk; use ultrasound guidance and weigh the risks.$x$, null),
(193, $x$Which type of nursing diagnosis describes a problem that is currently present and validated by the existence of defining characteristics (signs and symptoms)?$x$, $x$Actual nursing diagnosis$x$, $x$✅ Correct answer: Actual nursing diagnosis
An ACTUAL nursing diagnosis describes a problem that is PRESENT now, confirmed by defining characteristics (signs and symptoms). It is written in PES format: Problem, Etiology ("related to"), Signs and symptoms ("as evidenced by").

❌ Why the other options are wrong:
• Risk nursing diagnosis — A risk diagnosis describes a problem that might develop (no signs yet).
• Health promotion diagnosis — A health promotion diagnosis describes readiness to improve wellbeing.
• Possible nursing diagnosis — A possible diagnosis means the problem is suspected but not confirmed.

⭐ Key point: Example: "Ineffective airway clearance related to thick secretions as evidenced by coarse crackles and a weak cough."$x$, null),
(194, $x$During electronic health documentation, which computer part allows a critical care nurse to enter patient data?$x$, $x$Input device$x$, $x$✅ Correct answer: Input device
An INPUT DEVICE lets the user enter data into the computer: a keyboard, mouse, touchscreen, scanner (barcode), microphone. During electronic documentation, the nurse uses input devices to enter patient data.

❌ Why the other options are wrong:
• Software — Software is the programs, not a computer part for entering data.
• Operating system — The operating system manages the computer; it isn't an input device.
• Output device — Output devices display or print data (monitor, printer).

⭐ Key point: Input → Processing (CPU) → Output → Storage.$x$, null),
(195, $x$The Glasgow Coma Scale (GCS) score, which ranks a patient's level of consciousness from 3 to 15, is best classified as which scale of measurement?$x$, $x$Ordinal$x$, $x$✅ Correct answer: Ordinal
The GCS ranks levels of consciousness in ORDER (3 = deepest coma, 15 = fully alert), but the differences between scores aren't equal (a change from 3 to 4 isn't the same as from 14 to 15). It is an ORDINAL scale.

❌ Why the other options are wrong:
• Ratio — Ratio scales have a true zero and equal intervals.
• Interval — Interval scales have equal intervals.
• Nominal — Nominal scales are categories without order.

⭐ Key point: Ordinal data are best summarised with the median, not the mean.$x$, null),
(196, $x$For a patient expected to need enteral tube feeding for only 2-3 weeks, the most appropriate feeding access is:$x$, $x$A short-term nasogastric or orogastric tube$x$, $x$✅ Correct answer: A short-term nasogastric or orogastric tube
For SHORT-TERM enteral feeding (less than about 4–6 weeks), a NASOGASTRIC (or orogastric) tube is appropriate. It is simple, non-invasive, quick to insert, and easy to remove. Longer-term feeding (more than 4–6 weeks) is usually given through a gastrostomy (PEG) or jejunostomy.

❌ Why the other options are wrong:
• A percutaneous endoscopic gastrostomy (PEG) tube — A PEG is for long-term feeding (more than 4–6 weeks).
• Total parenteral nutrition — TPN isn't needed if the gut works.
• A surgically placed jejunostomy — A surgical jejunostomy is for long-term feeding or after major upper GI surgery.

⭐ Key point: Orogastric tubes are used in intubated patients and those with basal skull fractures.$x$, null),
(197, $x$The ideal tip position for a central venous catheter is:$x$, $x$The lower superior vena cava at the cavo-atrial junction$x$, $x$✅ Correct answer: The lower superior vena cava at the cavo-atrial junction
The ideal tip position for a central venous catheter (jugular or subclavian) is in the LOWER SUPERIOR VENA CAVA at the CAVO-ATRIAL JUNCTION (where the SVC meets the right atrium). Blood flow there dilutes irritant drugs, and pressure readings are accurate.

❌ Why the other options are wrong:
• Deep in the right ventricle near the apex — Deep in the right ventricle risks arrhythmias and perforation.
• In the left atrium across the septum — The left atrium is abnormal (wrong position).
• In the internal jugular vein near the jaw — High in the internal jugular vein is too short and risks thrombosis or dislodgement.

⭐ Key point: Always check the post-insertion X-ray for tip position and pneumothorax before using the line.$x$, null),
(198, $x$The recommended bedside check of nasogastric tube position before feeding is:$x$, $x$Aspirate pH of 5.5 or below$x$, $x$✅ Correct answer: Aspirate pH of 5.5 or below
The recommended BEDSIDE check of NG tube position is to ASPIRATE fluid and test its pH. A pH of 5.5 OR BELOW confirms stomach acid, so the tube is in the stomach and it is safe to feed. If the pH is above 5.5 or no aspirate is obtained, confirm with X-ray.

❌ Why the other options are wrong:
• Placing the tube end in water to look for bubbles — Bubbles in water aren't a reliable test.
• Patient comfort with no coughing — Patient comfort doesn't confirm position.
• The 'whoosh' test with air and a stethoscope — The "whoosh" test is UNRELIABLE and must not be used.

⭐ Key point: Acid-suppressing drugs (PPIs) can raise gastric pH, so an X-ray may be needed in these patients.$x$, null),
(199, $x$Which is one of the WHO 'five moments' for hand hygiene?$x$, $x$Before an aseptic or clean procedure$x$, $x$✅ Correct answer: Before an aseptic or clean procedure
The WHO "Five Moments" for hand hygiene: 1) BEFORE touching a patient, 2) BEFORE a CLEAN or ASEPTIC procedure, 3) AFTER body fluid exposure risk, 4) AFTER touching a patient, 5) AFTER touching the patient's surroundings.

❌ Why the other options are wrong:
• Only after removing gloves at home — After removing gloves at home isn't one of the five moments.
• Only at the start of the shift — The start of the shift isn't one of the five moments.
• Before entering the hospital car park — Before entering the car park isn't one of the five moments.

⭐ Key point: Hand hygiene is the single most important measure to prevent hospital-acquired infections.$x$, null),
(200, $x$After a needlestick injury from a patient with HIV, the nurse should first wash the wound, report it, and start post-exposure prophylaxis:$x$, $x$As soon as possible, ideally within hours and no later than 72 hours$x$, $x$✅ Correct answer: As soon as possible, ideally within hours and no later than 72 hours
After a needlestick from an HIV-positive source: let the wound bleed, wash with soap and water, REPORT it, and start POST-EXPOSURE PROPHYLAXIS (PEP) AS SOON AS POSSIBLE, ideally within hours (within 1–2 hours) and NO LATER than 72 HOURS. PEP is a 28-day course of antiretroviral drugs.

❌ Why the other options are wrong:
• Only after 1 week, if symptoms of infection appear — Waiting 1 week for symptoms is too late; PEP must start within 72 hours.
• Only if the source patient agrees to it — PEP shouldn't depend on the source patient's agreement.
• Only after their own HIV test comes back positive — Waiting for your own positive HIV test defeats the purpose of prevention.

⭐ Key point: Also assess hepatitis B and C risk, take baseline blood tests, and follow up at 6 weeks, 3 months and 6 months.$x$, null)
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
