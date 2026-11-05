-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 15, part A (questions 1–100)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).
--   Q28: correct answer changed to: Place the patient on oxygen.
--   Q56: correct answer changed to: Pulse oximeter
--   Q67: correct answer changed to: Status epilepticus


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$After a chest injury, ABGs show pH 7.26, PaCO2 52 mmHg, HCO3 25 mmol/L. This is:$x$, $x$Respiratory acidosis$x$, $x$✅ Correct answer: Respiratory acidosis
Step 1: pH 7.26 is LOW, so ACIDOSIS. Step 2: PaCO₂ 52 is HIGH (pH and PaCO₂ move in opposite directions), so it is RESPIRATORY. Step 3: HCO₃⁻ 25 is normal, so the kidneys haven't compensated yet: an ACUTE (uncompensated) respiratory acidosis. After a chest injury, pain, rib fractures, flail chest or pneumothorax cause hypoventilation.

❌ Why the other options are wrong:
• Metabolic alkalosis — Metabolic alkalosis would have a HIGH pH and HIGH HCO₃⁻.
• Respiratory alkalosis — Respiratory alkalosis would have a HIGH pH and LOW PaCO₂.
• Metabolic acidosis — Metabolic acidosis would have a LOW HCO₃⁻.

⭐ Key point: Treat the cause: pain relief (allows deep breathing), drain a pneumothorax, and support ventilation if needed.$x$, null),
(2, $x$Chvostek's and Trousseau's signs are clinical indicators of:$x$, $x$Hypocalcaemia$x$, $x$✅ Correct answer: Hypocalcaemia
CHVOSTEK's sign: tapping the facial nerve in front of the ear causes twitching of the face. TROUSSEAU's sign: inflating a BP cuff above systolic for 3 minutes causes spasm of the hand and wrist (carpal spasm). Both show NERVE and MUSCLE overexcitability caused by HYPOCALCAEMIA (low calcium).

❌ Why the other options are wrong:
• Hypomagnesaemia exclusively — Low magnesium can cause these signs too, but they are classic signs of low calcium; "exclusively magnesium" is wrong.
• Hyperkalaemia — High potassium causes weakness and ECG changes, not these signs.
• Hypernatraemia — High sodium causes confusion and seizures, not these signs.

⭐ Key point: Hypocalcaemia causes tingling, cramps, tetany, laryngospasm, seizures and a long QT. Treat with IV calcium gluconate.$x$, null),
(3, $x$Clotting factors are primarily synthesised by the:$x$, $x$Liver$x$, $x$✅ Correct answer: Liver
The LIVER makes most clotting factors: fibrinogen (I), prothrombin (II), V, VII, IX, X, XI and others. Factors II, VII, IX and X also need VITAMIN K. That's why liver disease causes bleeding and a raised INR.

❌ Why the other options are wrong:
• Spleen — The spleen stores platelets and removes old blood cells.
• Kidneys — The kidneys make erythropoietin and renin, not clotting factors.
• Pancreas — The pancreas makes digestive enzymes and insulin.

⭐ Key point: In liver failure, a high INR doesn't always correct with vitamin K, because the liver can't make the factors. FFP or PCC may be needed for bleeding.$x$, null),
(4, $x$Accidental removal of the parathyroid glands during thyroidectomy results in:$x$, $x$Hypocalcaemia$x$, $x$✅ Correct answer: Hypocalcaemia
The parathyroid glands (usually four, behind the thyroid) make PARATHYROID HORMONE (PTH), which keeps blood calcium normal. If they are accidentally removed or damaged during thyroidectomy, PTH falls and HYPOCALCAEMIA develops (usually within 24–48 hours), with tingling, cramps, Chvostek's and Trousseau's signs, and laryngospasm in severe cases.

❌ Why the other options are wrong:
• Hyperthyroidism — Removing the parathyroids doesn't cause hyperthyroidism.
• Hyperkalaemia — It doesn't cause high potassium.
• Hypoglycaemia — It doesn't cause low glucose.

⭐ Key point: Check calcium after thyroid surgery and keep IV calcium gluconate available.$x$, null),
(5, $x$A postoperative patient with hypocalcemia (ionized Ca²⁺ 0.8 mmol/L) exhibits carpopedal spasm and laryngeal stridor. Which action takes priority?$x$, $x$Infuse 10% calcium gluconate IV$x$, $x$✅ Correct answer: Infuse 10% calcium gluconate IV
Ionised calcium of 0.8 mmol/L (normal 1.1–1.3) with CARPOPEDAL SPASM and LARYNGEAL STRIDOR is severe, symptomatic hypocalcaemia. Laryngospasm can block the airway. The priority is IV 10% CALCIUM GLUCONATE (10–20 mL slowly over 10 minutes, then an infusion), with cardiac monitoring.

❌ Why the other options are wrong:
• Apply a nasal cannula at 2 L/min — Low-flow oxygen doesn't treat the cause of stridor here.
• Give vitamin D supplements — Vitamin D takes days to work.
• Administer oral calcium carbonate — Oral calcium is too slow for an emergency.

⭐ Key point: Give IV calcium slowly; fast injection can cause arrhythmias. Check magnesium too (low magnesium causes low calcium).$x$, null),
(6, $x$In a patient with hyperkalemia, which ECG change warrants IMMEDIATE intervention?$x$, $x$Peaked T waves$x$, $x$✅ Correct answer: Peaked T waves
PEAKED T WAVES are an early ECG sign of hyperkalaemia, but any ECG change in high potassium means the heart is affected and IMMEDIATE treatment is needed (calcium gluconate to protect the heart, then insulin with glucose). Without treatment, changes can quickly progress to a wide QRS, a sine-wave pattern, VF or asystole.

❌ Why the other options are wrong:
• ST-segment depression — ST depression isn't a typical sign of hyperkalaemia.
• Sinus tachycardia — Sinus tachycardia isn't a sign of hyperkalaemia.
• First-degree AV block — First-degree AV block can occur, but peaked T waves are the classic warning sign.

⭐ Key point: Hyperkalaemia ECG changes in order: peaked T → flat P → long PR → wide QRS → sine wave → VF or asystole.$x$, null),
(7, $x$A patient with hypermagnesemia (Mg²⁺ 4.5 mg/dL) has hypotension and absent deep tendon reflexes. Which intervention is MOST appropriate?$x$, $x$Give calcium chloride 10% IV$x$, $x$✅ Correct answer: Give calcium chloride 10% IV
High magnesium blocks nerve and muscle transmission and relaxes blood vessels, causing ABSENT reflexes, weakness, HYPOTENSION, slow pulse and respiratory depression. CALCIUM (calcium chloride or gluconate IV) directly opposes magnesium's effects on the heart and muscles. It is the first, most important treatment.

❌ Why the other options are wrong:
• Administer magnesium sulfate IV — More magnesium would worsen toxicity.
• Infuse 0.9% normal saline bolus — Saline can help the kidneys excrete magnesium, but isn't the most urgent step.
• Start furosemide 40 mg IV — Furosemide increases magnesium excretion but works too slowly for a symptomatic patient.

⭐ Key point: Stop all magnesium, give IV calcium, and consider dialysis in severe toxicity with kidney failure.$x$, null),
(8, $x$The kidney has more of which structure than any of the others listed?$x$, $x$Afferent arterioles$x$, $x$✅ Correct answer: Afferent arterioles
Each kidney has about 1 million NEPHRONS, and each nephron has its own AFFERENT ARTERIOLE (the small artery bringing blood into the glomerulus). So there are far more afferent arterioles than arcuate arteries, medullary pyramids or minor calyces.

❌ Why the other options are wrong:
• Arcuate arteries — Arcuate arteries are fewer (dozens).
• Medullary pyramids — Medullary pyramids number about 8–18 per kidney.
• Minor calyces — Minor calyces number about 8–18 per kidney.

⭐ Key point: The afferent arteriole widens and narrows to keep GFR stable (autoregulation).$x$, null),
(9, $x$Positive Chvostek's sign indicates:$x$, $x$Hypocalcaemia$x$, $x$✅ Correct answer: Hypocalcaemia
A positive CHVOSTEK's sign (twitching of the facial muscles when the facial nerve in front of the ear is tapped) shows nerve overexcitability caused by HYPOCALCAEMIA.

❌ Why the other options are wrong:
• Hypernatremia — High sodium doesn't cause Chvostek's sign.
• Hypercalcaemia — HIGH calcium causes weakness, not twitching.
• Hypokalemia — Low potassium causes weakness, not Chvostek's sign.

⭐ Key point: Trousseau's sign (carpal spasm with a BP cuff) is more specific for hypocalcaemia than Chvostek's.$x$, null),
(10, $x$A patient with heart failure and severe hyponatremia (Na⁺ 115 mEq/L) develops seizures. Which intervention should the nurse initiate FIRST?$x$, $x$Administer 3% hypertonic saline IV$x$, $x$✅ Correct answer: Administer 3% hypertonic saline IV
A sodium of 115 with SEIZURES is severe, symptomatic hyponatraemia; brain cells are swelling. The FIRST step is 3% HYPERTONIC SALINE IV (often 150 mL over 10–20 minutes, repeated as needed) to raise sodium by 4–6 mmol/L quickly and stop the seizures. Then correct slowly (no more than 8–10 mmol/L in 24 hours).

❌ Why the other options are wrong:
• Start oral sodium chloride tablets — Oral salt tablets work too slowly for seizures.
• Give furosemide 40 mg IV — Furosemide alone doesn't raise sodium quickly enough.
• Restrict oral fluid intake to 500 mL/day — Fluid restriction is too slow for a seizing patient.

⭐ Key point: Monitor sodium every 2–4 hours to avoid over-correction (osmotic demyelination).$x$, null),
(11, $x$A completely normal pH on an ABG:$x$, $x$Does NOT rule out a mixed disorder$x$, $x$✅ Correct answer: Does NOT rule out a mixed disorder
A NORMAL pH doesn't always mean everything is normal. Two OPPOSING disorders (for example respiratory acidosis plus metabolic alkalosis, or metabolic acidosis plus respiratory alkalosis) can cancel each other out, giving a normal pH. So a normal pH does NOT rule out a MIXED acid–base disorder. Always check the PaCO₂ and HCO₃⁻.

❌ Why the other options are wrong:
• Only occurs in healthy people — A normal pH can occur in sick people with mixed disorders.
• Always rules out any acid-base disorder — It doesn't always rule out a disorder.
• Means PaCO2 and HCO3 must also be normal — PaCO₂ and HCO₃⁻ can both be abnormal with a normal pH.

⭐ Key point: If PaCO₂ and HCO₃⁻ are both abnormal but the pH is normal, suspect a mixed disorder.$x$, null),
(12, $x$The process by which water and diffusible substances move together across a membrane in response to fluid pressure is:$x$, $x$Filtration$x$, $x$✅ Correct answer: Filtration
FILTRATION is the movement of water and small dissolved substances TOGETHER across a membrane, driven by FLUID (hydrostatic) PRESSURE. Example: in the glomerulus, blood pressure pushes water and solutes out into Bowman's capsule. In capillaries, it pushes fluid into the tissues.

❌ Why the other options are wrong:
• Diffusion — Diffusion moves solutes from high to low concentration (no pressure needed).
• Active transport — Active transport uses energy (ATP) to move substances against a concentration gradient.
• Osmosis — Osmosis moves WATER across a membrane toward higher solute concentration.

⭐ Key point: Filtration = pressure-driven; diffusion = concentration-driven; osmosis = water moving to concentrated areas.$x$, null),
(13, $x$Characteristic ECG changes of hypokalaemia include:$x$, $x$Flattened T waves and prominent U waves$x$, $x$✅ Correct answer: Flattened T waves and prominent U waves
Low potassium slows the heart's recovery (repolarisation). The ECG shows FLATTENED or inverted T WAVES, prominent U WAVES (an extra wave after the T), ST depression, and a longer QU interval. Severe hypokalaemia can cause dangerous arrhythmias.

❌ Why the other options are wrong:
• Shortened QT interval — A shortened QT is seen in HIGH calcium.
• Peaked T waves and widened QRS — Peaked T waves and a wide QRS are signs of HIGH potassium.
• Complete absence of P waves in all cases — Absent P waves occur in severe hyperkalaemia or AF.

⭐ Key point: Replace potassium carefully (IV no faster than 10 mmol/hour peripherally) and check magnesium.$x$, null),
(14, $x$A patient with hypercalcemia is prescribed calcitonin. The nurse should monitor for:$x$, $x$Tachyphylaxis$x$, $x$✅ Correct answer: Tachyphylaxis
CALCITONIN lowers calcium quickly (it reduces bone breakdown and increases kidney calcium excretion), but its effect fades after about 48 hours because the body stops responding: TACHYPHYLAXIS. The nurse should monitor for this loss of effect (calcium rising again). Bisphosphonates are given at the same time for a longer-lasting effect.

❌ Why the other options are wrong:
• Hyperphosphatemia — Calcitonin doesn't cause high phosphate.
• Hypoglycemia — It doesn't usually cause hypoglycaemia.
• Hypocalcemia — Hypocalcaemia is possible but uncommon; tachyphylaxis is the expected issue.

⭐ Key point: Hypercalcaemia treatment: IV saline (first), calcitonin (fast but short-acting), and bisphosphonates (slow but long-acting).$x$, null),
(15, $x$A potassium chloride infusion of 40 mEq is ordered in 500 mL of NS to run over 4 hours via a peripheral line. What is the resulting rate of potassium delivery in mEq/hr, and is this within the generally accepted peripheral IV limit of 10 mEq/hr?$x$, $x$10 mEq/hr; at the upper safe peripheral limit$x$, $x$✅ Correct answer: 10 mEq/hr; at the upper safe peripheral limit
Rate of potassium = total dose ÷ time = 40 mmol ÷ 4 hours = 10 mmol per hour. This is AT the usual maximum safe rate for a PERIPHERAL line (10 mmol/hour), so it is acceptable, but at the upper limit.

❌ Why the other options are wrong:
• 20 mEq/hr; exceeds the peripheral limit — 20 mmol/hour would need 40 mmol over 2 hours.
• 5 mEq/hr; well within the peripheral limit — 5 mmol/hour would need 40 mmol over 8 hours.
• 40 mEq/hr; grossly exceeds the peripheral limit — 40 mmol/hour would be 40 mmol in 1 hour, which is dangerous.

⭐ Key point: Faster potassium (up to 20 mmol/hour or more) needs a central line and continuous ECG monitoring.$x$, null),
(16, $x$Renal autoregulation maintains a relatively constant glomerular filtration rate across which approximate range of mean arterial pressure?$x$, $x$80-180 mmHg$x$, $x$✅ Correct answer: 80-180 mmHg
The kidneys protect their filtration through AUTOREGULATION. They widen or narrow the afferent arteriole (myogenic response) and use tubuloglomerular feedback to keep renal blood flow and GFR roughly constant when the mean arterial pressure is between about 80 and 180 mmHg. Below about 80, GFR falls with BP.

❌ Why the other options are wrong:
• 60-80 mmHg — 60–80 mmHg is below the autoregulation range.
• 40-60 mmHg — 40–60 mmHg is far too low.
• 180-220 mmHg — 180–220 mmHg is above the range.

⭐ Key point: In chronic hypertension, the autoregulation range shifts higher, so these patients may need a higher MAP to protect the kidneys.$x$, null),
(17, $x$On room air at sea level a patient has PaO₂ 60 mmHg and PaCO₂ 40 mmHg. The A–a gradient is about:$x$, $x$40 mmHg, raised, suggesting V/Q mismatch or shunt$x$, $x$✅ Correct answer: 40 mmHg, raised, suggesting V/Q mismatch or shunt
Alveolar oxygen (PAO₂) = FiO₂ × (barometric pressure − water vapour pressure) − PaCO₂ ÷ 0.8. Here: 0.21 × (760 − 47) − 40 ÷ 0.8 = 150 − 50 = about 100 mmHg. A–a gradient = PAO₂ − PaO₂ = 100 − 60 = 40 mmHg. This is RAISED (normal is about 5–15 in young adults), suggesting a problem with gas transfer: V/Q mismatch or shunt (pneumonia, PE, oedema).

❌ Why the other options are wrong:
• 10 mmHg, normal for a young adult — 10 mmHg would be normal, but the calculation gives 40.
• 0 mmHg, normal, showing pure hypoventilation — 0 mmHg would mean perfect gas exchange (pure hypoventilation gives a normal gradient, not zero).
• 150 mmHg, equal to the inspired oxygen pressure — 150 mmHg is the inspired oxygen pressure, not the gradient.

⭐ Key point: Normal A–a gradient increases with age: roughly (age ÷ 4) + 4. A normal gradient with hypoxia suggests hypoventilation.$x$, null),
(18, $x$Hypokalaemia that does not correct despite potassium replacement should prompt the nurse to check:$x$, $x$Serum magnesium, as low Mg²⁺ causes renal K⁺ loss$x$, $x$✅ Correct answer: Serum magnesium, as low Mg²⁺ causes renal K⁺ loss
Magnesium is needed for the kidney to hold on to potassium. When magnesium is LOW, the kidneys keep losing potassium, so the hypokalaemia won't correct even with replacement. Check SERUM MAGNESIUM and replace it first (or at the same time); then the potassium will rise.

❌ Why the other options are wrong:
• Serum urea, as it pushes K⁺ into cells — Urea doesn't push potassium into cells.
• Serum sodium, as high Na⁺ blocks K⁺ uptake — Sodium doesn't block potassium uptake in this way.
• Serum albumin, as it binds most of the K⁺ — Albumin doesn't bind most potassium.

⭐ Key point: Low potassium and low magnesium often occur together (diuretics, diarrhoea, alcohol, refeeding).$x$, null),
(19, $x$A patient with persistent vomiting has metabolic alkalosis and urine chloride below 20 mmol/L. This alkalosis is:$x$, $x$Saline-responsive; treat with 0.9% saline and potassium$x$, $x$✅ Correct answer: Saline-responsive; treat with 0.9% saline and potassium
Persistent vomiting causes loss of acid (HCl) and fluid, creating metabolic alkalosis with low chloride. A URINE CHLORIDE BELOW 20 mmol/L shows the kidneys are holding on to chloride (chloride and volume depletion). This is SALINE-RESPONSIVE alkalosis: treat with 0.9% SALINE (replacing chloride and volume) plus POTASSIUM.

❌ Why the other options are wrong:
• Saline-resistant; treat with spironolactone only — Saline-RESISTANT alkalosis has a HIGH urine chloride (such as mineralocorticoid excess).
• Respiratory in origin; treat with rebreathing — The cause is metabolic, not respiratory.
• Due to mineralocorticoid excess; treat with surgery — Mineralocorticoid excess causes saline-resistant alkalosis with high urine chloride.

⭐ Key point: Urine chloride below 20 = saline-responsive (vomiting, NG suction, diuretics after stopping). Above 20 = saline-resistant (Conn's syndrome, Cushing's, severe low potassium).$x$, null),
(20, $x$The Haldane effect describes:$x$, $x$Deoxygenated haemoglobin carrying more CO₂ than oxygenated Hb$x$, $x$✅ Correct answer: Deoxygenated haemoglobin carrying more CO₂ than oxygenated Hb
The HALDANE effect: DEOXYGENATED haemoglobin carries MORE CO₂ than oxygenated haemoglobin. In the tissues, haemoglobin releases oxygen and picks up more CO₂. In the lungs, haemoglobin picks up oxygen and releases CO₂. In COPD patients given too much oxygen, haemoglobin releases its CO₂, which partly explains why their CO₂ can rise.

❌ Why the other options are wrong:
• CO₂ diffusing 20 times faster than oxygen — CO₂ diffusing faster than oxygen (about 20 times) is a fact about diffusion, not the Haldane effect.
• Hypoxic vasoconstriction in poorly ventilated lung — Hypoxic pulmonary vasoconstriction is a different mechanism.
• Oxygen release from Hb increasing as pH falls — Oxygen release from haemoglobin as pH falls is the BOHR effect.

⭐ Key point: Bohr effect = acid helps haemoglobin release O₂. Haldane effect = O₂ helps haemoglobin release CO₂.$x$, null),
(21, $x$20, PCO2 55 mm hg, PO2 65 mm hg, HCO3 22 m mol. What does this mean?$x$, $x$Respiratory acidosis$x$, $x$✅ Correct answer: Respiratory acidosis
Read the values (the pH is shown as ".20", meaning 7.20). pH 7.20 is LOW, so ACIDOSIS. PCO₂ 55 is HIGH, so it is RESPIRATORY. HCO₃⁻ 22 is normal (no kidney compensation yet). PO₂ 65 is low (hypoxaemia). This is acute RESPIRATORY ACIDOSIS with hypoxaemia: type 2 respiratory failure.

❌ Why the other options are wrong:
• Metabolic acidosis — Metabolic acidosis would have a LOW HCO₃⁻.
• Metabolic alkalosis — Metabolic alkalosis would have a HIGH pH and HCO₃⁻.
• Respiratory alkalosis — Respiratory alkalosis would have a HIGH pH and LOW PCO₂.

⭐ Key point: Treat acute respiratory acidosis by improving ventilation (treat the cause, NIV, or intubation).$x$, null),
(22, $x$Which of the following mode of Mechanical Ventilation cannot be used for weaning off patients from Mechanical Ventilation:$x$, $x$Controlled Mechanical ventilation (CMV)$x$, $x$✅ Correct answer: Controlled Mechanical ventilation (CMV)
CONTROLLED MECHANICAL VENTILATION (CMV) delivers ALL breaths at a set rate and volume; the patient can't trigger breaths or breathe on their own. Because the patient does no breathing work, CMV can't be used to assess or train the breathing muscles, so it is unsuitable for weaning.

❌ Why the other options are wrong:
• Synchronized intermittent mandatory ventilation (SIMV) — SIMV allows spontaneous breaths between mandatory breaths; it has been used for weaning.
• Pressure support ventilation (PSV) — PSV supports the patient's own breaths; it is the main weaning mode.
• Assist-control ventilation (ACV) — Assist-control lets the patient trigger breaths and can be used before weaning trials.

⭐ Key point: Weaning usually uses pressure support ventilation with gradual reduction, or T-piece spontaneous breathing trials.$x$, null),
(23, $x$The peak inspiratory pressure safety limit during mechanical ventilation for asthma is:$x$, $x$<40cmH2O$x$, $x$✅ Correct answer: <40cmH2O
In ventilated severe asthma, the lungs are over-inflated and fragile. High peak pressures risk BAROTRAUMA (pneumothorax, pneumomediastinum). The peak inspiratory pressure is usually kept BELOW about 40 cmH₂O (and plateau pressure below 30) to reduce this risk.

❌ Why the other options are wrong:
• <20cmH2O — Below 20 cmH₂O is too low for narrowed asthmatic airways.
• <60cmH2O — Below 60 cmH₂O allows dangerously high pressures.
• No limit needed — A limit IS needed.

⭐ Key point: Asthma ventilation: low rate, long expiratory time, small tidal volumes, and permissive hypercapnia.$x$, null),
(24, $x$Needle decompression for tension pneumothorax is performed at the:$x$, $x$2nd ICS midclavicular line$x$, $x$✅ Correct answer: 2nd ICS midclavicular line
Needle decompression for TENSION PNEUMOTHORAX is classically done at the 2nd INTERCOSTAL SPACE in the MID-CLAVICULAR line (just above the 3rd rib), using a large-bore cannula. Current ATLS guidance prefers the 4th–5th intercostal space in the mid-axillary line in adults (thinner chest wall). Either way, a chest drain must follow.

❌ Why the other options are wrong:
• 2nd ICS posterior axillary line — The 2nd ICS posterior axillary line isn't the standard site.
• 5th ICS anterior axillary line — The 5th ICS ANTERIOR axillary line is near the newer site, but the classic keyed answer is the 2nd ICS mid-clavicular line.
• Xiphoid process — The xiphoid process is the site for pericardiocentesis.

⭐ Key point: Tension pneumothorax is a clinical diagnosis. Decompress immediately; don't wait for an X-ray.$x$, null),
(25, $x$Which ventilator practice should be avoided in a hemodynamically unstable patient with status asthmaticus, due to risk of breath stacking?$x$, $x$High respiratory rates with short expiratory time$x$, $x$✅ Correct answer: High respiratory rates with short expiratory time
In status asthmaticus, the narrowed airways need a LONG time to breathe out. HIGH respiratory rates with SHORT expiratory times don't allow full exhalation, so air builds up with each breath (BREATH STACKING, auto-PEEP). This raises intrathoracic pressure, reduces venous return, and can cause hypotension, barotrauma and cardiac arrest.

❌ Why the other options are wrong:
• Low tidal volume ventilation — Low tidal volume ventilation is RECOMMENDED in asthma.
• A permissive hypercapnia strategy — Permissive hypercapnia is RECOMMENDED (accepting high CO₂ to avoid over-inflation).
• Adequate sedation to reduce patient-ventilator dyssynchrony — Adequate sedation is RECOMMENDED to reduce dyssynchrony.

⭐ Key point: If a ventilated asthmatic suddenly becomes hypotensive, disconnect them from the ventilator briefly to let trapped air escape.$x$, null),
(26, $x$A nurse is caring for a patient with a hemothorax. What is the most appropriate action if the patient's chest tube drainage decreases significantly and the patient's condition worsens?$x$, $x$Notify the physician immediately$x$, $x$✅ Correct answer: Notify the physician immediately
In a haemothorax, a SUDDEN DECREASE in chest drain output while the patient's condition WORSENS (more breathlessness, low BP, falling SpO₂) suggests the tube is BLOCKED (by clot), so blood is collecting in the chest, or there is ongoing bleeding. NOTIFY THE PHYSICIAN IMMEDIATELY for urgent assessment.

❌ Why the other options are wrong:
• Milk the tubing to dislodge the clot — Milking or stripping tubing may be done per local policy, but notifying the doctor is the priority with a deteriorating patient.
• Clamp the chest tube to prevent further drainage — Clamping would trap blood and air in the chest.
• Increase the suction to the UWSD system — Increasing suction won't clear a blocked tube and isn't the right action.

⭐ Key point: A drain that stops draining with a worsening patient is an emergency (blocked drain, tension, tamponade).$x$, null),
(27, $x$How many bronchopulmonary segments does the right lung have?$x$, $x$10$x$, $x$✅ Correct answer: 10
The RIGHT lung has 3 lobes and 10 bronchopulmonary segments: upper lobe 3, middle lobe 2, lower lobe 5. The LEFT lung has 2 lobes and usually 8–10 segments (some segments are combined).

❌ Why the other options are wrong:
• 12 — 12 is too many.
• 8 — 8 is the number often given for the left lung.
• 6 — 6 is too few.

⭐ Key point: Each segment has its own bronchus and artery, so it can be drained (postural drainage) or surgically removed separately.$x$, null),
(28, $x$A 40-year-old woman is involved in an equestrian accident. She presents with chest pain, shortness of breath, and difficulty breathing. Her arterial oxygen saturation is 85% and her respiratory rate is 40b/minute. A chest tube is placed and the nurse observes a return of 300 mls blood into the system. What is the nurse's next line of action?$x$, $x$Clamp the tube and notify surgeon immediately.$x$, $x$✅ Correct answer: Place the patient on oxygen.
This patient is HYPOXIC (SpO₂ 85%) and breathing fast (RR 40) after chest trauma. Following ABCDE, the immediate priority is to give high-flow OXYGEN. A first drainage of 300 mL of blood is NOT massive (massive haemothorax is 1500 mL or more at insertion, or more than 200 mL/hour for 2–4 hours), and chest drains should NOT be clamped (clamping traps blood and air). Continue to monitor drainage and inform the surgeon. (The old answer key said "clamp the tube", which is unsafe; it has been corrected.)

❌ Why the other options are wrong:
• Explain to the patient what is going on to alley anxiety. — Explanation reduces anxiety but doesn't treat hypoxia.
• Clamp the tube and notify surgeon immediately. — Clamping the tube is unsafe, and 300 mL isn't massive bleeding.
• Call for a chest x-ray. — A chest X-ray is useful later, but oxygen comes first.

⭐ Key point: Massive haemothorax: 1500 mL or more on insertion, or ongoing more than 200 mL/hour. This needs blood transfusion and surgery (thoracotomy).$x$, $x$Place the patient on oxygen.$x$),
(29, $x$A minimum respiratory rate of what value should be maintained during MgSO4 therapy?$x$, $x$>12/min$x$, $x$✅ Correct answer: >12/min
During magnesium sulphate therapy, the RESPIRATORY RATE must stay ABOVE 12 breaths per minute. A rate below 12 suggests magnesium toxicity depressing breathing. Stop the infusion, give oxygen, check reflexes and magnesium level, and give calcium gluconate if needed.

❌ Why the other options are wrong:
• >6/min — Above 6/min is too low a threshold; toxicity would already be dangerous.
• No specific value is required — A specific value IS required.
• >30/min — Above 30/min isn't the safety threshold.

⭐ Key point: Also check hourly: knee reflexes present and urine output above 30 mL/hour.$x$, null),
(30, $x$In metabolic acidosis, the expected respiratory compensation (fall in PaCO2) is calculated as:$x$, $x$1.25 × the HCO3 fall$x$, $x$✅ Correct answer: 1.25 × the HCO3 fall
In metabolic acidosis, the lungs compensate by breathing faster to lower PaCO₂. A rule of thumb: the PaCO₂ falls by about 1.25 mmHg for every 1 mmol/L fall in HCO₃⁻. Winter's formula is another way: expected PaCO₂ = 1.5 × HCO₃⁻ + 8 (±2).

❌ Why the other options are wrong:
• 2 × the pH change — 2 × the pH change isn't the compensation formula.
• 0.1 × the HCO3 fall — 0.1 × the HCO₃⁻ fall is too small.
• No compensation ever occurs — Compensation DOES occur, through the lungs within minutes.

⭐ Key point: If the actual PaCO₂ is higher than expected, there is also respiratory acidosis (the patient is tiring).$x$, null),
(31, $x$ARDS in the context of orthopaedic trauma most often develops as a complication of:$x$, $x$Fat embolism or severe polytrauma$x$, $x$✅ Correct answer: Fat embolism or severe polytrauma
In orthopaedic trauma, ARDS most often develops after FAT EMBOLISM (fat from long bone fractures damaging the lung capillaries) or SEVERE POLYTRAUMA (massive bleeding, transfusion, shock and inflammation). These cause widespread lung inflammation and leaky capillaries.

❌ Why the other options are wrong:
• Simple plaster cast application — A plaster cast doesn't cause ARDS.
• Isolated finger fractures — Isolated finger fractures don't cause ARDS.
• Routine elective joint replacement with no complications — Uncomplicated elective joint replacement rarely causes ARDS.

⭐ Key point: Early fixation of long bone fractures reduces fat embolism and ARDS.$x$, null),
(32, $x$A nurse is assessing a patient with respiratory failure. The nurse notes that the patient's respiratory rate is 35 breaths per minute. This is an example of:$x$, $x$Tachypnea$x$, $x$✅ Correct answer: Tachypnea
TACHYPNOEA means an abnormally FAST breathing rate, usually above 20 breaths per minute in adults. A rate of 35 is tachypnoea, a sign of respiratory distress (and often the earliest sign of deterioration).

❌ Why the other options are wrong:
• Eupnea — Eupnoea is NORMAL breathing (12–20/min).
• Bradypnea — Bradypnoea is SLOW breathing (below 12/min).
• Apnea — Apnoea is NO breathing.

⭐ Key point: Respiratory rate is one of the most sensitive early warning signs of deterioration. Always count it for a full minute.$x$, null),
(33, $x$This occurs when air enters the pleura but cannot escape, resulting in one-way valve effect, thus produces shift in the mediastinum.$x$, $x$Tension pneumothorax$x$, $x$✅ Correct answer: Tension pneumothorax
A TENSION PNEUMOTHORAX happens when air enters the pleural space but CAN'T ESCAPE (a one-way valve effect). Pressure builds up with each breath, collapsing the lung and SHIFTING the MEDIASTINUM (heart, trachea and great vessels) to the opposite side. This reduces blood return to the heart and causes shock. It is an emergency.

❌ Why the other options are wrong:
• Traumatic pneumothorax — A traumatic pneumothorax is caused by injury but isn't necessarily under tension.
• Primary spontaneous pneumothorax — A primary spontaneous pneumothorax occurs in healthy people (often tall, thin young men) and usually isn't tension.
• Secondary spontaneous pneumothorax — A secondary spontaneous pneumothorax occurs with lung disease (such as COPD) and isn't necessarily tension.

⭐ Key point: Signs: distress, absent breath sounds, hyper-resonance, tracheal deviation away, raised JVP, low BP. Decompress immediately.$x$, null),
(34, $x$During insertion of a subclavian central line for TPN, the patient suddenly develops sharp chest pain, dyspnea, and decreased breath sounds on the affected side. The nurse should suspect:$x$, $x$Pneumothorax$x$, $x$✅ Correct answer: Pneumothorax
During SUBCLAVIAN (or jugular) central line insertion, the needle can puncture the top of the lung, causing a PNEUMOTHORAX. Sudden sharp chest pain, breathlessness and reduced breath sounds on the same side are classic signs.

❌ Why the other options are wrong:
• Catheter occlusion — Catheter occlusion stops the line working; it doesn't cause chest pain and breathlessness.
• Hyperglycemia — Hyperglycaemia doesn't cause these sudden symptoms.
• Air embolism — Air embolism can cause sudden breathlessness and chest pain, but reduced breath sounds on one side point to pneumothorax.

⭐ Key point: Always get a chest X-ray after subclavian or jugular line insertion. Ultrasound guidance reduces this risk.$x$, null),
(35, $x$A patient is receiving oxygen via a non-rebreather mask. The nurse notices the reservoir bag is completely deflating with each inspiration. The most appropriate nursing action is to:$x$, $x$Increase the oxygen flow rate to the mask$x$, $x$✅ Correct answer: Increase the oxygen flow rate to the mask
The reservoir bag of a non-rebreather mask should stay at least partly INFLATED throughout breathing (about one-third to one-half full on inspiration). If it COLLAPSES completely with each breath in, the patient isn't getting enough oxygen. INCREASE the OXYGEN FLOW (usually to 15 L/min) so the bag stays inflated.

❌ Why the other options are wrong:
• Clamp the oxygen tubing — Clamping the tubing would stop the oxygen.
• Replace the mask with a simple face mask — A simple face mask gives LESS oxygen.
• Loosen the mask to allow more room air to enter — Loosening the mask lets in room air, lowering the oxygen concentration.

⭐ Key point: Fill the reservoir bag before putting the mask on the patient, and use 10–15 L/min.$x$, null),
(36, $x$A patient requires mechanical ventilation for airway protection due to a decreased level of consciousness (GCS 6) after a head injury. This is an example of which broad indication for ventilation?$x$, $x$Inability to protect the airway$x$, $x$✅ Correct answer: Inability to protect the airway
A GCS of 6 means the patient can't protect their airway: the gag and cough reflexes are weak, and the tongue may block the throat. Intubation and ventilation are needed to PROTECT THE AIRWAY from obstruction and aspiration, even if oxygenation and CO₂ are initially normal.

❌ Why the other options are wrong:
• Primary ventilatory (CO2) failure — Primary ventilatory failure is when CO₂ rises because of poor breathing.
• Primary oxygenation failure — Primary oxygenation failure is when O₂ is low despite oxygen.
• Post-anesthesia recovery only — This isn't post-anaesthesia recovery.

⭐ Key point: Indications for intubation: can't protect the airway, can't oxygenate, can't ventilate, or the expected clinical course (such as transfer or worsening).$x$, null),
(37, $x$During a spontaneous breathing trial, the rapid shallow breathing index (f/VT) that predicts weaning failure is above:$x$, $x$105 breaths/min/L$x$, $x$✅ Correct answer: 105 breaths/min/L
The rapid shallow breathing index (RSBI) = respiratory rate ÷ tidal volume in litres. An RSBI ABOVE 105 predicts WEANING FAILURE: the patient is breathing fast and shallow. For example, RR 35 with VT 0.25 L = 140, which is likely to fail.

❌ Why the other options are wrong:
• 25 breaths/min/L — 25 is far below the cut-off.
• 50 breaths/min/L — 50 is a good value.
• 10 breaths/min/L — 10 is unrealistically low.

⭐ Key point: RSBI below 105 predicts success, but use it with clinical judgement.$x$, null),
(38, $x$A ventilated patient suddenly desaturates. The 'DOPE' mnemonic for the cause stands for:$x$, $x$Displacement, Obstruction, Pneumothorax, Equipment failure$x$, $x$✅ Correct answer: Displacement, Obstruction, Pneumothorax, Equipment failure
DOPE helps troubleshoot sudden desaturation in a ventilated patient. D = DISPLACEMENT of the tube (into the oesophagus, a main bronchus or out). O = OBSTRUCTION (secretions, kink, biting). P = PNEUMOTHORAX (especially tension). E = EQUIPMENT failure (ventilator, oxygen supply, circuit).

❌ Why the other options are wrong:
• Disconnection, Oxygen, PEEP, Exhaustion — Disconnection, Oxygen, PEEP, Exhaustion isn't DOPE.
• Drugs, Oxygen, Pressure, Electrolytes — Drugs, Oxygen, Pressure, Electrolytes isn't DOPE.
• Dehydration, Oedema, Pneumonia, Embolism — Dehydration, Oedema, Pneumonia, Embolism isn't DOPE.

⭐ Key point: First step: disconnect from the ventilator and hand-ventilate with 100% oxygen while checking DOPE.$x$, null),
(39, $x$Shortly after extubation a patient develops stridor. The first-line nursing treatment is:$x$, $x$Sit upright, give oxygen and nebulised adrenaline$x$, $x$✅ Correct answer: Sit upright, give oxygen and nebulised adrenaline
STRIDOR after extubation is usually caused by LARYNGEAL OEDEMA (swelling of the larynx from the tube). First-line treatment: SIT the patient UPRIGHT, give OXYGEN (humidified), and give NEBULISED ADRENALINE (which shrinks the swollen tissue). IV steroids (dexamethasone) may also be given. Prepare for reintubation if it worsens.

❌ Why the other options are wrong:
• Give oral antibiotics and observe for a day — Antibiotics don't treat swelling, and observing for a day is unsafe.
• Deflate the cuff of the removed tube — The tube has already been removed; its cuff can't be deflated.
• Lie flat and give a large IV fluid bolus — Lying flat and a fluid bolus would worsen airway swelling and breathing.

⭐ Key point: A cuff-leak test before extubation can identify patients at risk of post-extubation stridor.$x$, null),
(40, $x$In pressure-controlled ventilation, if lung compliance falls the nurse expects:$x$, $x$Delivered tidal volume to fall at the same set pressure$x$, $x$✅ Correct answer: Delivered tidal volume to fall at the same set pressure
In PRESSURE-CONTROLLED ventilation, the PRESSURE is FIXED. The tidal volume delivered depends on lung compliance. If compliance FALLS (stiffer lungs, such as with ARDS, pneumothorax or abdominal distension), the same pressure delivers LESS VOLUME. Watch for low tidal volume and low minute volume alarms.

❌ Why the other options are wrong:
• The respiratory rate to fall automatically — The respiratory rate doesn't change automatically.
• Delivered tidal volume to rise automatically — Tidal volume FALLS, not rises.
• Peak pressure to rise above the set level — Peak pressure stays at the set level in pressure control.

⭐ Key point: Pressure control: watch the volumes. Volume control: watch the pressures.$x$, null),
(41, $x$A woman with severe mitral stenosis and mitral regurgitation has a pulmonary artery catheter inserted. The physician orders pulmonary artery pressure monitoring, including pulmonary capillary wedge pressures. The purpose of this is to help assess the:$x$, $x$Pressure from fluid within the left ventricle.$x$, $x$✅ Correct answer: Pressure from fluid within the left ventricle.
The pulmonary capillary wedge pressure (PCWP) reflects LEFT ATRIAL pressure, which (when the mitral valve is open in diastole) reflects LEFT VENTRICULAR filling pressure (preload). In mitral valve disease, it helps assess how much pressure is building up behind the valve and guides fluid and drug therapy.

❌ Why the other options are wrong:
• Peripheral arterial pressure. — Peripheral arterial pressure is measured by an arterial line.
• Degree of coronary artery stenosis. — Coronary artery narrowing is assessed by coronary angiography.
• Oxygen and carbon dioxide concentration is the blood. — Blood gases are measured by an ABG.

⭐ Key point: In mitral stenosis, PCWP overestimates LV filling, because pressure builds up behind the narrowed valve.$x$, null),
(42, $x$A patient has a PAWP of 22 mmHg, cardiac index of 1.8 L/min/m2, and elevated SVR. This hemodynamic profile is most consistent with:$x$, $x$Cardiogenic shock$x$, $x$✅ Correct answer: Cardiogenic shock
A HIGH wedge pressure (PAWP 22, normal 6–12) means blood is backing up behind a failing LEFT VENTRICLE. A LOW CARDIAC INDEX (1.8, normal 2.5–4.0) means the heart isn't pumping enough. HIGH SVR shows the vessels are clamping down to compensate. This is CARDIOGENIC SHOCK.

❌ Why the other options are wrong:
• Distributive shock — Distributive (septic) shock has LOW SVR.
• Hypovolemic shock — Hypovolaemic shock has LOW PAWP.
• Normal hemodynamics — These values aren't normal.

⭐ Key point: Treat cardiogenic shock: inotropes, careful fluids, reperfusion (PCI for MI), mechanical support (IABP).$x$, null),
(43, $x$A 2-year old was admitted for digoxin toxicity. BP is 94/60 mmhg, capillary refill time is 2 seconds and the ECG reveals 1st degree AV block with a heart rate of 60. The critical care nurse should:$x$, $x$Continue to monitor.$x$, $x$✅ Correct answer: Continue to monitor.
This child with digoxin toxicity has a STABLE BP (94/60), normal capillary refill (2 seconds), and only FIRST-DEGREE AV block with a heart rate of 60. First-degree block alone is usually benign, and the child is well perfused. The right action is to CONTINUE MONITORING closely (ECG, potassium, digoxin level, signs of deterioration).

❌ Why the other options are wrong:
• Prepare for cardioversion. — Cardioversion is dangerous in digoxin toxicity (it can trigger VF) and isn't indicated.
• Administer atropine. — Atropine isn't needed; the child is stable.
• Administer vasovagal maneuvers. — Vagal manoeuvres would slow the heart further.

⭐ Key point: Signs of serious digoxin toxicity: severe bradycardia, high-degree heart block, ventricular arrhythmias, high potassium. Treat with Digibind (digoxin-specific antibody).$x$, null),
(44, $x$Which ECG finding, though neither sensitive nor specific, is classically associated with acute PE and right heart strain?$x$, $x$S1Q3T3 pattern$x$, $x$✅ Correct answer: S1Q3T3 pattern
The S1Q3T3 pattern (a deep S wave in lead I, a Q wave and inverted T wave in lead III) reflects RIGHT HEART STRAIN from a large pulmonary embolism. It is classically associated with PE, but it is neither sensitive nor specific. The commonest ECG finding in PE is sinus tachycardia.

❌ Why the other options are wrong:
• Delta wave — A delta wave is seen in Wolff–Parkinson–White syndrome.
• Prolonged QT interval — A prolonged QT is seen with drugs and electrolyte problems.
• U waves — U waves are seen in hypokalaemia.

⭐ Key point: Other PE ECG findings: sinus tachycardia, right bundle branch block, right axis deviation, T inversion in V1–V4.$x$, null),
(45, $x$Which gas is used to inflate balloon during diastole in Intra-aortic Balloon pump (IABP) machine?$x$, $x$Helium$x$, $x$✅ Correct answer: Helium
The IABP balloon is inflated with HELIUM gas. Helium is very light (low density), so it moves in and out of the balloon very quickly, allowing rapid inflation and deflation with each heartbeat. It is also quickly absorbed into the blood if the balloon ruptures, reducing the risk of gas embolism.

❌ Why the other options are wrong:
• Chlorine — Chlorine is a toxic gas.
• Iodine — Iodine isn't a gas used in medical balloons.
• Hydrogen — Hydrogen is explosive and dangerous.

⭐ Key point: If blood appears in the IABP gas tubing, the balloon has ruptured: stop the pump and inform the doctor immediately.$x$, null),
(46, $x$When is the use of spironolactone possibly contraindicated?$x$, $x$In hyperkalaemia patients$x$, $x$✅ Correct answer: In hyperkalaemia patients
Spironolactone is a POTASSIUM-SPARING diuretic: it blocks aldosterone, so the kidneys keep potassium. In a patient who already has HYPERKALAEMIA (high potassium), it can raise potassium to dangerous levels and cause cardiac arrest. It is contraindicated in hyperkalaemia.

❌ Why the other options are wrong:
• In patients with refractory congestive heart failure — Spironolactone is USED in refractory heart failure (it reduces mortality).
• When also prescribing furosemide — It is often combined with furosemide (which balances potassium loss).
• In hypernatremia patients — High sodium isn't a contraindication.

⭐ Key point: Avoid combining spironolactone with ACE inhibitors and potassium supplements without close monitoring.$x$, null),
(47, $x$Propranolol prophylaxis for variceal bleeding aims to reduce heart rate by approximately:$x$, $x$25% or to 55bpm$x$, $x$✅ Correct answer: 25% or to 55bpm
Non-selective beta-blockers (propranolol, nadolol) reduce portal pressure in cirrhosis, lowering the risk of variceal bleeding. The dose is increased until the resting heart rate falls by about 25% or to about 55 bpm, which indicates enough beta-blockade, as long as BP stays acceptable.

❌ Why the other options are wrong:
• 10% or to 90bpm — 10% or 90 bpm isn't enough reduction.
• No specific target — A target IS used.
• 50% or to 40bpm — 50% or 40 bpm is too much (dangerous bradycardia).

⭐ Key point: Endoscopic band ligation is an alternative or addition for large varices.$x$, null),
(48, $x$On the day of surgery, a patient's regular β-blocker medication should generally be:$x$, $x$Continued$x$, $x$✅ Correct answer: Continued
Regular BETA-BLOCKERS should generally be CONTINUED on the day of surgery (taken with a sip of water). Stopping them suddenly can cause REBOUND effects: fast heart rate, high BP, angina or MI. Continuing them protects the heart during the stress of surgery.

❌ Why the other options are wrong:
• Stopped abruptly — Stopping abruptly causes rebound tachycardia and ischaemia.
• Doubled in dose — Doubling the dose isn't recommended.
• Replaced with a diuretic — Replacing it with a diuretic isn't appropriate.

⭐ Key point: Other drugs usually continued: statins and most anti-epileptics. Often held: ACE inhibitors, diuretics, oral hypoglycaemics (check local policy).$x$, null),
(49, $x$On the day of surgery, diuretics are generally:$x$, $x$Usually withheld$x$, $x$✅ Correct answer: Usually withheld
DIURETICS are usually WITHHELD on the morning of surgery. Patients are already fasting (with less fluid intake), and anaesthesia lowers BP. Diuretics could add to dehydration, low BP, and electrolyte problems (low potassium).

❌ Why the other options are wrong:
• Continued as normal — Continuing as normal risks dehydration and low potassium.
• Doubled in dose — Doubling the dose is never appropriate here.
• Given intravenously regardless of oral status — IV diuretics aren't routinely given before surgery.

⭐ Key point: Restart diuretics after surgery when the patient is eating and drinking and fluid balance is stable.$x$, null),
(50, $x$Which of the following is NOT a reversible cause of Cardiac Arrest?$x$, $x$Hypertension$x$, $x$✅ Correct answer: Hypertension
The reversible causes of cardiac arrest are the 4 Hs and 4 Ts. 4 Hs: HYPOXIA, HYPOVOLAEMIA, HYPO/HYPERKALAEMIA (and other metabolic causes), HYPOTHERMIA. 4 Ts: TENSION PNEUMOTHORAX, TAMPONADE, TOXINS, THROMBOSIS (coronary or pulmonary). HYPERTENSION is NOT one of them.

❌ Why the other options are wrong:
• Hypoxia — Hypoxia IS a reversible cause.
• Hypovolemia — Hypovolaemia IS a reversible cause.
• Tension pneumothorax — Tension pneumothorax IS a reversible cause.

⭐ Key point: During CPR, actively look for and treat the 4 Hs and 4 Ts.$x$, null),
(51, $x$A patient with cirrhosis and a GI bleed carries higher rebleeding risk mainly because of:$x$, $x$Portal hypertension and poor clotting$x$, $x$✅ Correct answer: Portal hypertension and poor clotting
Cirrhosis causes PORTAL HYPERTENSION (high pressure in the portal vein), which creates fragile, enlarged veins (VARICES) in the oesophagus and stomach that bleed easily. The damaged liver also makes fewer CLOTTING factors and the spleen traps platelets, so bleeding is harder to stop and more likely to recur.

❌ Why the other options are wrong:
• Improved clotting function — Clotting is WORSE, not improved, in cirrhosis.
• Lower blood pressure at baseline only — Low BP alone isn't the main reason.
• No increased risk compared to others — The risk IS higher than in other patients.

⭐ Key point: Prevent rebleeding: beta-blockers, band ligation, and treating the cause (stopping alcohol).$x$, null),
(52, $x$Rapid deflation of Balloon of IABP will decrease:$x$, $x$After Load$x$, $x$✅ Correct answer: After Load
The IABP DEFLATES rapidly just before the heart contracts (systole). This suddenly lowers the pressure in the aorta, so the left ventricle pushes blood out against less resistance: AFTERLOAD is REDUCED. This lowers the heart's oxygen needs and improves cardiac output.

❌ Why the other options are wrong:
• Contraction — Deflation doesn't decrease contraction.
• Pre-load — Deflation doesn't mainly affect preload.
• Heart Rate — Deflation doesn't directly change heart rate.

⭐ Key point: IABP: inflate in diastole (improves coronary flow), deflate before systole (reduces afterload).$x$, null),
(53, $x$Elective surgery is generally considered for cancellation when blood pressure exceeds:$x$, $x$SBP >180 AND DBP >110$x$, $x$✅ Correct answer: SBP >180 AND DBP >110
Elective (non-urgent) surgery is often postponed if the BP is very high, commonly a SYSTOLIC above 180 AND a DIASTOLIC above 110 mmHg (or systolic 200 or more alone). Very high BP increases the risk of stroke, MI, bleeding and BP swings during anaesthesia. The BP is controlled first.

❌ Why the other options are wrong:
• SBP >120 AND DBP >80 — 120/80 is normal BP.
• Any blood pressure above normal — Any BP above normal doesn't justify cancellation.
• SBP >100 alone — A systolic above 100 alone is normal.

⭐ Key point: Emergency surgery isn't delayed for high BP; it is managed during the operation.$x$, null),
(54, $x$A nurse is assessing an electrocardiogram rhythm strip. The P waves and QRS complexes are regular. The PR interval is 0.16 second, and QRS complexes measure 0.06 second. The overall heart rate is 64 beats per minute. The nurse assesses the cardiac rhythm as:$x$, $x$Normal sinus rhythm$x$, $x$✅ Correct answer: Normal sinus rhythm
Check each part: rhythm REGULAR; rate 64 (normal 60–100); PR interval 0.16 s (normal 0.12–0.20); QRS 0.06 s (normal, under 0.12). Every value is normal, so this is NORMAL SINUS RHYTHM.

❌ Why the other options are wrong:
• Sinus bradycardia — Sinus bradycardia has a rate BELOW 60.
• Sick sinus syndrome — Sick sinus syndrome shows alternating slow and fast rhythms, or pauses.
• First-degree heart block — First-degree heart block has a PR interval ABOVE 0.20 s.

⭐ Key point: ECG interpretation: rate, rhythm, P waves, PR interval, QRS width, ST segment, T waves.$x$, null),
(55, $x$A 50-year old man is admitted to the trauma resuscitation unit. He is intubated on arrival. What is the next step in the primary survey?$x$, $x$Listen to lung sounds to assess for ventilation.$x$, $x$✅ Correct answer: Listen to lung sounds to assess for ventilation.
In the primary survey (ABCDE), after the airway is secured by intubation, the next step is BREATHING: confirm the tube is working by LISTENING to LUNG SOUNDS on both sides (and checking chest rise and capnography). This checks for correct tube placement and problems like pneumothorax.

❌ Why the other options are wrong:
• Obtain a chest x-ray to determine tube placement — A chest X-ray is useful, but comes after the clinical check.
• Initiate large-bore intravenous catheter placement and replace fluid. — Circulation (IV lines, fluids) comes after breathing.
• Assess the patient's blood pressure and peripheral pulses. — Assessing BP and pulses is circulation, which follows breathing.

⭐ Key point: Confirm ETT placement with waveform capnography (the gold standard) plus clinical signs.$x$, null),
(56, $x$Which of the following should be the first monitor attached to the patient on arrival in the post anaesthesia care area (PACU):$x$, $x$Cardiac monitor$x$, $x$✅ Correct answer: Pulse oximeter
On arrival in the PACU (recovery), the PULSE OXIMETER is usually the first monitor attached. Oxygenation and the airway are the top priority after anaesthesia (hypoxia from airway obstruction, residual drugs or hypoventilation is the commonest early danger), and the oximeter also shows the heart rate. ECG and BP monitoring follow immediately. (The old answer key said "cardiac monitor"; airway and oxygenation come first, so the key has been corrected to pulse oximeter.)

❌ Why the other options are wrong:
• Temperature monitoring device — Temperature monitoring is important but isn't the first priority.
• Non-invasive blood pressure — Non-invasive BP is important but comes after oxygenation.
• Cardiac monitor — A cardiac monitor is important but follows pulse oximetry in airway-first priority.

⭐ Key point: PACU priorities: airway, breathing (SpO₂, RR), circulation (HR, BP, ECG), consciousness, pain, temperature and the surgical site.$x$, $x$Pulse oximeter$x$),
(57, $x$With an intra-aortic balloon pump, the balloon should inflate at:$x$, $x$The dicrotic notch (aortic valve closure)$x$, $x$✅ Correct answer: The dicrotic notch (aortic valve closure)
The IABP balloon should INFLATE at the DICROTIC NOTCH on the arterial waveform, which marks AORTIC VALVE CLOSURE (the start of diastole). Inflating then pushes blood back into the coronary arteries, improving heart muscle blood flow. It deflates just before the next systole.

❌ Why the other options are wrong:
• The upstroke of the arterial waveform — Inflating on the upstroke (systole) would block the heart's ejection, which is dangerous.
• The peak of the R wave on the ECG — Inflating at the peak of the R wave is wrong timing (the R wave triggers deflation timing).
• The start of atrial contraction (P wave) — Inflating at the P wave is wrong timing.

⭐ Key point: Wrong timing harms the heart. Early inflation raises afterload; late deflation increases cardiac work.$x$, null),
(58, $x$ST depression in V1–V3 with tall R waves in a patient with chest pain suggests:$x$, $x$Posterior MI; record leads V7–V9$x$, $x$✅ Correct answer: Posterior MI; record leads V7–V9
ST DEPRESSION in V1–V3 with TALL R WAVES in a patient with chest pain suggests a POSTERIOR MI. The front leads see the back of the heart "in reverse". Record posterior leads (V7–V9): ST elevation there confirms a posterior STEMI, which needs urgent reperfusion (PCI).

❌ Why the other options are wrong:
• Anterior wall ischaemia only — Anterior ischaemia doesn't explain the tall R waves.
• Normal early repolarisation — Early repolarisation causes ST elevation, not depression.
• Right bundle branch block only — Right bundle branch block causes a wide QRS with an RSR' pattern.

⭐ Key point: A posterior MI is often missed. Think of it when there is ST depression in V1–V3.$x$, null),
(59, $x$The first-line drug for torsades de pointes with a pulse is:$x$, $x$IV magnesium sulfate 2 g$x$, $x$✅ Correct answer: IV magnesium sulfate 2 g
IV MAGNESIUM SULPHATE (2 g over 10–15 minutes) is the first-line treatment for torsades de pointes with a pulse, even if the magnesium level is normal. It stabilises the heart muscle membrane. Also STOP QT-prolonging drugs and CORRECT potassium. Pulseless torsades is defibrillated.

❌ Why the other options are wrong:
• IV adenosine 6 mg — Adenosine is for SVT, not torsades.
• Oral digoxin 250 mcg — Digoxin doesn't treat torsades.
• IV amiodarone 900 mg — Amiodarone prolongs QT and can worsen torsades.

⭐ Key point: Torsades is associated with long QT (drugs, low K, low Mg, congenital). Overdrive pacing or isoprenaline may help recurrent episodes.$x$, null),
(60, $x$Beck's triad of cardiac tamponade is:$x$, $x$Hypotension, raised neck veins and muffled heart sounds$x$, $x$✅ Correct answer: Hypotension, raised neck veins and muffled heart sounds
BECK'S TRIAD of cardiac tamponade: 1) HYPOTENSION (the squeezed heart can't fill and pump), 2) RAISED neck veins (JVP; blood can't enter the heart), 3) MUFFLED heart sounds (fluid around the heart). Pulsus paradoxus is another sign.

❌ Why the other options are wrong:
• Hypertension, bradycardia and irregular breathing — Hypertension, bradycardia and irregular breathing is Cushing's triad (raised ICP).
• Chest pain, ST elevation and raised troponin — Chest pain, ST elevation and raised troponin describe MI.
• Fever, new murmur and splinter haemorrhages — Fever, a new murmur and splinter haemorrhages describe infective endocarditis.

⭐ Key point: Treat tamponade urgently with pericardiocentesis or surgical drainage.$x$, null),
(61, $x$Which does NOT need to be excluded before testing for brain death?$x$, $x$Limb fractures$x$, $x$✅ Correct answer: Limb fractures
Before brainstem death testing, conditions that can mimic brainstem death must be EXCLUDED: DRUGS (sedatives, opioids, neuromuscular blockers), HYPOTHERMIA (below 34 °C), and severe METABOLIC and ELECTROLYTE disturbances (sodium, glucose, potassium) or endocrine problems. LIMB FRACTURES don't affect brainstem function, so they don't need to be excluded.

❌ Why the other options are wrong:
• Electrolyte imbalances — Electrolyte imbalances MUST be excluded.
• Hypothermia — Hypothermia MUST be excluded.
• Drug intoxication — Drug intoxication MUST be excluded.

⭐ Key point: Brainstem death tests are done by two experienced doctors, on two occasions.$x$, null),
(62, $x$Bilateral damage to the spinal cord at the cervical level may produce:$x$, $x$tetraplegia$x$, $x$✅ Correct answer: tetraplegia
The cervical spinal cord carries nerves for the ARMS and LEGS (and breathing). BILATERAL (both sides) damage at the cervical level causes paralysis of ALL FOUR limbs: TETRAPLEGIA (quadriplegia). High cervical injuries (C3–C5) can also paralyse the diaphragm.

❌ Why the other options are wrong:
• monoplegia — Monoplegia is paralysis of ONE limb.
• hemiplegia — Hemiplegia is paralysis of ONE SIDE of the body (often a stroke).
• paraplegia — Paraplegia is paralysis of the LEGS (thoracic or lumbar injury).

⭐ Key point: "C3, 4, 5 keeps the diaphragm alive." High cervical injuries need breathing support.$x$, null),
(63, $x$The nurse is providing skin care for an unconscious patient. What is the most effective intervention to prevent pressure ulcers?$x$, $x$Repositioning the patient every 2 hours$x$, $x$✅ Correct answer: Repositioning the patient every 2 hours
REPOSITIONING the patient every 2 HOURS is the most effective way to prevent pressure ulcers. It relieves pressure on bony areas (sacrum, heels, hips), restoring blood flow before tissue damage occurs. Use pressure-relieving mattresses too.

❌ Why the other options are wrong:
• Applying a thick layer of lotion to the skin — Thick lotion doesn't relieve pressure and may make the skin too moist.
• Using a firm mattress on the bed — A firm mattress INCREASES pressure; a pressure-relieving mattress is needed.
• Massaging reddened areas of the skin — MASSAGING red areas damages fragile tissue and should be avoided.

⭐ Key point: Use the Braden scale to assess risk. Keep skin clean and dry, and ensure good nutrition.$x$, null),
(64, $x$Central paresis and loss of proprioception on one side with loss of pain and temperature sensation on the opposite side form which syndrome?$x$, $x$Brown-Séquard$x$, $x$✅ Correct answer: Brown-Séquard
BROWN-SÉQUARD syndrome happens with damage to ONE SIDE (hemisection) of the spinal cord (such as from a stab wound). On the SAME side: weakness (central paresis) and loss of position and vibration sense. On the OPPOSITE side: loss of pain and temperature sensation (because these fibres cross over soon after entering the cord).

❌ Why the other options are wrong:
• Strümpell–Lorrain — Strümpell–Lorrain disease is hereditary spastic paraplegia.
• Argyll Robertson — Argyll Robertson pupils are seen in neurosyphilis.
• Lambert–Eaton — Lambert–Eaton syndrome is a neuromuscular junction disorder linked to cancer.

⭐ Key point: Brown-Séquard has the best prognosis of the incomplete spinal cord syndromes.$x$, null),
(65, $x$A nurse is positioning an unconscious patient. The patient's head should be maintained in a:$x$, $x$Neutral, midline position$x$, $x$✅ Correct answer: Neutral, midline position
An unconscious patient's head should be kept in a NEUTRAL, MIDLINE position (not turned or bent). This keeps the AIRWAY OPEN and allows good VENOUS DRAINAGE from the brain through the jugular veins, which helps prevent raised ICP.

❌ Why the other options are wrong:
• Hyperextended position — Hyperextension can strain the neck and may close the airway in some patients.
• Flexed position on the chest — Flexion onto the chest can block the airway and jugular veins.
• Rotated position to the side — Rotation to the side compresses the jugular veins and raises ICP.

⭐ Key point: Keep the head of the bed up at 30° and avoid tight ETT ties or collars that compress the neck veins.$x$, null),
(66, $x$If a patient continues seizing despite first- and second-line drugs, the next step generally involves:$x$, $x$Escalating to general anaesthesia/ICU-level care$x$, $x$✅ Correct answer: Escalating to general anaesthesia/ICU-level care
If seizures continue despite first-line (benzodiazepines) and second-line drugs (phenytoin, levetiracetam, valproate), this is REFRACTORY status epilepticus. The next step is GENERAL ANAESTHESIA (propofol, midazolam infusion, or thiopentone) with intubation and ventilation in ICU, and continuous EEG monitoring if available.

❌ Why the other options are wrong:
• Discharging the patient home — Discharging the patient is dangerous.
• Simply waiting for the seizure to stop on its own — Waiting risks brain damage and death.
• No further treatment is available — Further treatment IS available.

⭐ Key point: Prolonged seizures cause brain injury, hyperthermia, acidosis and rhabdomyolysis. Treat aggressively.$x$, null),
(67, $x$This disease condition consists of train of severe seizures with relatively short intervals or no interval between, the patient becomes exhausted and frequently hyperthermia. Death not uncommonly occurs during the attacks.$x$, $x$Persistent convulsion$x$, $x$✅ Correct answer: Status epilepticus
STATUS EPILEPTICUS is a continuous seizure, or a series of seizures without recovery between them, lasting more than 5 minutes. The patient becomes exhausted, may develop hyperthermia, acidosis and rhabdomyolysis, and death can occur. It is a medical emergency. (The old answer key said "persistent convulsion", which isn't the medical term; it has been corrected to status epilepticus.)

❌ Why the other options are wrong:
• Persistent convulsion — "Persistent convulsion" describes the event loosely but isn't the recognised diagnosis.
• Poor epilepsy — "Poor epilepsy" isn't a medical term.
• Meningeal irritation — Meningeal irritation is a sign of meningitis, not repeated seizures.

⭐ Key point: Treatment: ABC, check glucose, benzodiazepine, second-line IV drug, then anaesthesia if refractory.$x$, $x$Status epilepticus$x$),
(68, $x$The onset of delirium is usually rapid, within:$x$, $x$Hours to a few days$x$, $x$✅ Correct answer: Hours to a few days
Delirium has a RAPID ONSET, developing over HOURS to a FEW DAYS, and FLUCTUATES through the day. It is caused by an acute problem (infection, drugs, hypoxia, metabolic changes). DEMENTIA, in contrast, develops slowly over months to years.

❌ Why the other options are wrong:
• Months to years — Months to years describes dementia.
• 30 minutes to 1 hour — 30 minutes to 1 hour is too fast for typical delirium onset.
• Weeks to months — Weeks to months describes a slower process.

⭐ Key point: Delirium is often reversible if the cause is found and treated. Screen ICU patients every shift.$x$, null),
(69, $x$A seizure that stops on its own after 3 minutes and the patient regains consciousness would be classified as:$x$, $x$Not status epilepticus$x$, $x$✅ Correct answer: Not status epilepticus
Status epilepticus is a seizure lasting MORE THAN 5 MINUTES, or repeated seizures without recovery between them. A seizure that STOPS ON ITS OWN after 3 minutes, with the patient waking up, is NOT status epilepticus. It is a single seizure.

❌ Why the other options are wrong:
• Cannot be determined — It can be classified from the information given.
• Epilepsy by definition — A single seizure doesn't define epilepsy (two or more unprovoked seizures are needed).
• Status epilepticus — It doesn't meet the 5-minute status definition.

⭐ Key point: Treat seizures lasting more than 5 minutes with benzodiazepines. Investigate the cause of any first seizure.$x$, null),
(70, $x$The presence of dysphagia suggests damage to cranial nerves:$x$, $x$IX-X$x$, $x$✅ Correct answer: IX-X
DYSPHAGIA (difficulty swallowing) suggests damage to the GLOSSOPHARYNGEAL (CN IX) and VAGUS (CN X) nerves, which supply the throat (pharynx) and larynx muscles and control swallowing and the gag reflex.

❌ Why the other options are wrong:
• V-VII — CN V–VII control chewing (V) and facial movement (VII), not mainly swallowing.
• III-VI — CN III–VI control eye movements.
• VII-XI — CN VII–XI is a broad group; the key swallowing nerves are IX and X.

⭐ Key point: Patients with dysphagia are at high risk of aspiration. Do a swallow assessment before giving oral food, fluids or drugs.$x$, null),
(71, $x$A nurse is caring for an unconscious patient. Which of the following is a priority nursing intervention to prevent complications?$x$, $x$Performing frequent oral care and airway suctioning$x$, $x$✅ Correct answer: Performing frequent oral care and airway suctioning
In an unconscious patient, the AIRWAY is the priority. They can't clear secretions or protect against aspiration. Frequent ORAL CARE (reduces bacteria and VAP) and AIRWAY SUCTIONING (removes secretions) prevent aspiration pneumonia and airway obstruction.

❌ Why the other options are wrong:
• Leaving the patient in the same position for extended periods — Leaving the patient in one position causes pressure ulcers and lung collapse.
• Administering oral fluids every hour — Oral fluids in an unconscious patient cause aspiration.
• Encouraging the patient to cough and deep breathe — An unconscious patient can't cough and deep breathe on request.

⭐ Key point: Unconscious patient care: airway, breathing, circulation, eyes, mouth, skin, nutrition, elimination, mobility and family support.$x$, null),
(72, $x$Arranged from outermost to innermost, the correct order of the three meningeal layers surrounding the brain and spinal cord is$x$, $x$dura mater, arachnoid mater, pia mater$x$, $x$✅ Correct answer: dura mater, arachnoid mater, pia mater
The three meninges, from OUTSIDE to INSIDE: DURA mater (the tough outer layer), ARACHNOID mater (the middle, web-like layer), PIA mater (the thin inner layer stuck to the brain). Remember "DAP": Dura, Arachnoid, Pia. CSF flows in the subarachnoid space, between the arachnoid and pia.

❌ Why the other options are wrong:
• dura mater, pia mater, arachnoid mater — Dura, pia, arachnoid is the wrong order.
• arachnoid mater, dura mater, pia mater — Arachnoid, dura, pia is the wrong order.
• pia mater, arachnoid mater, dura mater — Pia, arachnoid, dura is the reverse order (inside to outside).

⭐ Key point: Bleeds: extradural (between skull and dura), subdural (between dura and arachnoid), subarachnoid (in the CSF space).$x$, null),
(73, $x$Xanthochromia (yellow discoloration) of the cerebrospinal fluid on lumbar puncture is most suggestive of which condition?$x$, $x$Subarachnoid hemorrhage$x$, $x$✅ Correct answer: Subarachnoid hemorrhage
XANTHOCHROMIA is yellow discolouration of the CSF caused by the breakdown of red blood cells into BILIRUBIN. It appears about 6–12 hours after bleeding into the CSF, and is the classic sign of SUBARACHNOID HAEMORRHAGE (helping to distinguish it from a traumatic "bloody tap" during the LP).

❌ Why the other options are wrong:
• Guillain-Barre syndrome — Guillain–Barré syndrome shows high protein with normal cells, not xanthochromia.
• Normal CSF findings — Normal CSF is clear and colourless.
• Bacterial meningitis only — Bacterial meningitis gives cloudy CSF with many white cells.

⭐ Key point: Do the LP at least 12 hours after headache onset to detect xanthochromia if CT is negative.$x$, null),
(74, $x$What is the main target of neuromuscular blockers?$x$, $x$Motor end plate$x$, $x$✅ Correct answer: Motor end plate
Neuromuscular blockers (muscle relaxants like rocuronium, vecuronium, suxamethonium) act at the MOTOR END PLATE (the neuromuscular junction), where nerve signals pass to the muscle. They block acetylcholine receptors there, causing paralysis.

❌ Why the other options are wrong:
• Synoptic vesicles — Synaptic vesicles store acetylcholine in the nerve ending; blockers don't target them.
• Central nervous system (CNS) — They don't act on the CNS (patients remain conscious if not sedated).
• Muscle membrane — They act at the end plate receptors, not the whole muscle membrane.

⭐ Key point: Neuromuscular blockers cause NO sedation or pain relief. Always give sedation and analgesia with them, to prevent awareness.$x$, null),
(75, $x$When assessing the neurological status of an unconscious patient, which component of the Glasgow Coma Scale (GCS) is used to evaluate eye opening?$x$, $x$Eye Opening$x$, $x$✅ Correct answer: Eye Opening
The GCS has three parts: EYE OPENING (1–4), VERBAL response (1–5) and MOTOR response (1–6). EYE OPENING is the part used to assess whether and how the eyes open (spontaneously, to voice, to pain, or not at all).

❌ Why the other options are wrong:
• Pupillary Response — Pupillary response is checked separately; it isn't part of the GCS.
• Motor Response — Motor response assesses movement.
• Verbal Response — Verbal response assesses speech.

⭐ Key point: Record pupils (size, reaction) alongside the GCS in neurological observations.$x$, null),
(76, $x$An epidural hematoma classically results from injury to which structure, located in the potential space between the skull and the dura mater?$x$, $x$The middle meningeal artery$x$, $x$✅ Correct answer: The middle meningeal artery
An EPIDURAL (extradural) haematoma is usually caused by a skull fracture (often the temporal bone at the pterion) that tears the MIDDLE MENINGEAL ARTERY. Arterial blood collects between the skull and the dura, forming a lens-shaped (biconvex) clot on CT. A lucid interval is common.

❌ Why the other options are wrong:
• The superior sagittal sinus — The superior sagittal sinus is a large vein; damage causes venous bleeding.
• The internal carotid artery — The internal carotid artery isn't the classic cause.
• A bridging vein — Bridging veins cause SUBDURAL haematomas.

⭐ Key point: Extradural haematoma needs urgent surgical evacuation. Outcomes are good if treated quickly.$x$, null),
(77, $x$In Guillain–Barré syndrome, elective intubation should be considered when vital capacity falls below:$x$, $x$15–20 mL/kg$x$, $x$✅ Correct answer: 15–20 mL/kg
In Guillain–Barré syndrome, breathing muscles can weaken quickly. VITAL CAPACITY (VC) is measured regularly. Elective intubation is considered when VC falls BELOW about 15–20 mL/kg (or there is a rapid fall, a weak cough, or bulbar weakness), before respiratory failure happens.

❌ Why the other options are wrong:
• 50 mL/kg — 50 mL/kg is near normal.
• 70 mL/kg — 70 mL/kg is normal.
• 100 mL/kg — 100 mL/kg is above normal.

⭐ Key point: SpO₂ falls LATE in neuromuscular weakness. Rely on vital capacity, not oxygen saturation.$x$, null),
(78, $x$Which nursing measure helps reduce raised ICP in a ventilated head-injured patient?$x$, $x$Head up 30°, neck midline, loose tube ties$x$, $x$✅ Correct answer: Head up 30°, neck midline, loose tube ties
To reduce raised ICP: keep the HEAD UP at 30° (helps venous drainage), the NECK in the MIDLINE (no twisting that blocks the jugular veins), and the ETT ties LOOSE (tight ties compress the neck veins). Also avoid hypoxia, high CO₂, fever, hypotension, and coughing or straining.

❌ Why the other options are wrong:
• Head flat with tight tube ties — A flat head and tight ties INCREASE ICP.
• Frequent, long suction sessions — Frequent, long suction RAISES ICP.
• Neck flexed down onto the chest — Flexing the neck onto the chest blocks venous drainage and raises ICP.

⭐ Key point: Cluster care carefully, give sedation before suction if ICP rises, and keep suction passes under 10 seconds.$x$, null),
(79, $x$For an external ventricular drain, the zero reference point is usually the:$x$, $x$Tragus of the ear (level of the foramen of Monro)$x$, $x$✅ Correct answer: Tragus of the ear (level of the foramen of Monro)
For an external ventricular drain (EVD), the zero reference point is the TRAGUS of the ear (approximating the level of the FORAMEN OF MONRO, the opening between the ventricles). The drip chamber is set at a prescribed height (such as 10–20 cmH₂O) above this point.

❌ Why the other options are wrong:
• Umbilicus with the patient flat — The umbilicus isn't the reference.
• Phlebostatic axis at the 4th intercostal space — The phlebostatic axis is for CVP and arterial lines, not EVDs.
• Sternal notch with the patient upright — The sternal notch isn't the reference.

⭐ Key point: CLAMP the EVD before moving or repositioning the patient, then re-level and unclamp, to avoid over- or under-drainage.$x$, null),
(80, $x$A new unilateral fixed dilated pupil in a head-injured patient most likely indicates:$x$, $x$Compression of cranial nerve III by uncal herniation on that side$x$, $x$✅ Correct answer: Compression of cranial nerve III by uncal herniation on that side
A NEW, UNILATERAL, FIXED, DILATED pupil in a head-injured patient means the OCULOMOTOR nerve (CN III) is being compressed, usually by UNCAL HERNIATION: part of the brain (the uncus) is pushed down through the tentorium by rising ICP. This is a NEUROSURGICAL EMERGENCY.

❌ Why the other options are wrong:
• A normal pupil response to the bright pen torch — A normal pupil constricts to light; a fixed dilated pupil is abnormal.
• Opioid toxicity, which affects both pupils equally — Opioids cause small (pinpoint) pupils on both sides.
• Optic nerve damage on the opposite side of the head — Optic nerve damage on the opposite side doesn't cause a fixed dilated pupil this way.

⭐ Key point: Inform the team immediately, prepare for urgent CT and surgery, and start ICP-lowering measures (mannitol or hypertonic saline).$x$, null),
(81, $x$Which class of antibiotics is well known for nephrotoxic potential requiring renal dose adjustment and trough level monitoring in ICU patients?$x$, $x$Aminoglycosides$x$, $x$✅ Correct answer: Aminoglycosides
AMINOGLYCOSIDES (gentamicin, amikacin) build up in kidney tubule cells, causing NEPHROTOXICITY (acute tubular necrosis). They are also toxic to the ears (OTOTOXICITY: hearing loss, balance problems). Doses are adjusted for kidney function, and TROUGH (pre-dose) levels are monitored.

❌ Why the other options are wrong:
• First-generation cephalosporins — First-generation cephalosporins are rarely nephrotoxic.
• Macrolides — Macrolides (erythromycin) aren't typically nephrotoxic.
• Penicillins — Penicillins are rarely nephrotoxic (occasional interstitial nephritis).

⭐ Key point: Aminoglycosides are often given once daily to reduce toxicity. Avoid them with other nephrotoxins.$x$, null),
(82, $x$Preoperative preparation for thyroidectomy includes administering Lugol's iodine to:$x$, $x$Decrease gland vascularity$x$, $x$✅ Correct answer: Decrease gland vascularity
LUGOL'S IODINE is given for about 10–14 days before thyroidectomy in hyperthyroid patients (especially Graves' disease). It DECREASES the BLOOD SUPPLY (vascularity) of the thyroid and makes it FIRMER, reducing bleeding during surgery. It also briefly blocks thyroid hormone release.

❌ Why the other options are wrong:
• Reduce laryngeal spasm — It doesn't reduce laryngeal spasm.
• Increase hormone release — It REDUCES, not increases, hormone release.
• Induce euthyroid state — Anti-thyroid drugs (carbimazole) achieve the euthyroid state; iodine's main pre-op role is reducing vascularity.

⭐ Key point: Patients must be euthyroid (normal thyroid levels) before surgery, to avoid thyroid storm.$x$, null),
(83, $x$A farmer presents with goitre and reports eating cassava regularly. Which mechanism explains his condition?$x$, $x$Cassava inhibits iodine trapping$x$, $x$✅ Correct answer: Cassava inhibits iodine trapping
Cassava contains cyanogenic compounds (linamarin), which release cyanide and then THIOCYANATE in the body. Thiocyanate blocks the thyroid's ability to TRAP IODINE, so less thyroid hormone is made. TSH rises and the gland enlarges (GOITRE), especially where iodine is already lacking (as in parts of Nigeria).

❌ Why the other options are wrong:
• Cassava enhances thyroglobulin coupling — Cassava doesn't enhance thyroglobulin coupling.
• Cassava reduces TRH secretion — It doesn't directly reduce TRH.
• Cassava increases TSH secretion — TSH rises as a RESULT of low hormone; cassava doesn't directly increase TSH secretion.

⭐ Key point: Proper cassava processing (soaking, fermenting, cooking) removes most cyanide. Iodised salt prevents goitre.$x$, null),
(84, $x$Chronic transplant rejection typically develops over:$x$, $x$Months to years$x$, $x$✅ Correct answer: Months to years
CHRONIC transplant rejection develops slowly over MONTHS to YEARS. It involves gradual scarring and narrowing of the blood vessels and tissue of the transplanted organ, leading to slow loss of function. It is the main cause of long-term graft loss.

❌ Why the other options are wrong:
• Minutes to hours — Minutes to hours describes HYPERACUTE rejection.
• 1–4 days — 1–4 days is too short.
• Days to weeks — Days to weeks describes ACUTE rejection.

⭐ Key point: Lifelong immunosuppression, good drug adherence, and regular monitoring reduce rejection.$x$, null),
(85, $x$When administering a TPN solution, a nurse must verify that it contains all the prescribed components. What are the three main macronutrients provided in TPN?$x$, $x$Dextrose, amino acids, and lipids$x$, $x$✅ Correct answer: Dextrose, amino acids, and lipids
The three main MACRONUTRIENTS in TPN: DEXTROSE (carbohydrate, the main energy source), AMINO ACIDS (protein, for building and repairing tissue), and LIPIDS (fats, for energy and essential fatty acids). Electrolytes, vitamins and trace elements are added as micronutrients.

❌ Why the other options are wrong:
• Carbohydrates, proteins, and fats — Carbohydrates, proteins and fats is the general description, but the TPN components are specifically dextrose, amino acids and lipids.
• Sodium, potassium, and chloride — Sodium, potassium and chloride are electrolytes (micronutrients), not macronutrients.
• Water, electrolytes, and vitamins — Water, electrolytes and vitamins aren't the main macronutrients.

⭐ Key point: TPN is given through a central line, because it is very concentrated (hyperosmolar).$x$, null),
(86, $x$Pre-operative anti-thyroid drug (ATD) treatment before thyroid surgery is typically given for:$x$, $x$4–6 weeks$x$, $x$✅ Correct answer: 4–6 weeks
Before thyroid surgery for hyperthyroidism, ANTI-THYROID DRUGS (carbimazole or propylthiouracil) are given for about 4–6 WEEKS (often 6–8 weeks) to make the patient EUTHYROID (normal thyroid hormone levels). Operating on an uncontrolled hyperthyroid patient risks thyroid storm.

❌ Why the other options are wrong:
• 1–2 years — 1–2 years is the length of a full medical treatment course, not pre-operative preparation.
• No pre-operative treatment is needed — Pre-operative treatment IS needed.
• 1–2 days — 1–2 days isn't long enough to normalise hormone levels.

⭐ Key point: Beta-blockers control symptoms (fast heart rate, tremor) while anti-thyroid drugs take effect.$x$, null),
(87, $x$A patient on TPN is showing signs of fluid volume excess. Which of the following nursing interventions is most appropriate?$x$, $x$Notifying the provider to decrease the fluid rate$x$, $x$✅ Correct answer: Notifying the provider to decrease the fluid rate
Signs of fluid volume EXCESS (crackles, oedema, weight gain, raised BP, breathlessness) in a patient on TPN mean the total fluid is too much. The nurse should NOTIFY the PROVIDER so the fluid rate or TPN volume can be REDUCED (a more concentrated TPN may be ordered, or diuretics given).

❌ Why the other options are wrong:
• Increasing the TPN infusion rate — Increasing the rate would worsen overload.
• Monitoring the patient's blood glucose levels — Glucose monitoring is routine but doesn't treat fluid overload.
• Administering a bolus of intravenous fluids — An IV fluid bolus would worsen overload.

⭐ Key point: Monitor daily weight, fluid balance and signs of overload in patients on TPN.$x$, null),
(88, $x$A patient has an elevated TSH with a low free T4. This laboratory pattern is most consistent with which condition?$x$, $x$Primary hypothyroidism$x$, $x$✅ Correct answer: Primary hypothyroidism
In PRIMARY HYPOTHYROIDISM, the THYROID gland itself fails, so free T4 is LOW. The pituitary senses this and releases MORE TSH to stimulate the thyroid, so TSH is HIGH. High TSH with low T4 is the classic pattern.

❌ Why the other options are wrong:
• Secondary (central) hypothyroidism — Secondary (central) hypothyroidism has LOW TSH with low T4 (the pituitary fails).
• Subclinical hyperthyroidism — Subclinical hyperthyroidism has low TSH with normal T4.
• Primary hyperthyroidism — Primary hyperthyroidism has LOW TSH with HIGH T4.

⭐ Key point: The commonest cause of primary hypothyroidism worldwide is iodine deficiency; in iodine-sufficient areas it is Hashimoto's thyroiditis.$x$, null),
(89, $x$A patient presents with palpitations, tremor, exophthalmos, and weight loss. The most probable diagnosis is:$x$, $x$Toxic goitre$x$, $x$✅ Correct answer: Toxic goitre
Palpitations, tremor, weight loss and EXOPHTHALMOS (bulging eyes) are signs of HYPERTHYROIDISM. With a goitre, this is a TOXIC GOITRE (toxic diffuse goitre, Graves' disease, which classically causes exophthalmos). The gland makes too much thyroid hormone.

❌ Why the other options are wrong:
• Thyroid cyst — A thyroid cyst is a fluid-filled lump, usually without hormone excess.
• Hashimoto's disease — Hashimoto's disease usually causes HYPOthyroidism.
• Simple goitre — A simple goitre doesn't cause hyperthyroid symptoms.

⭐ Key point: Treatment options: anti-thyroid drugs, radioactive iodine, or surgery (thyroidectomy).$x$, null),
(90, $x$The most life-threatening intraoperative complication of thyroidectomy is:$x$, $x$Hemorrhage$x$, $x$✅ Correct answer: Hemorrhage
The thyroid has a very rich blood supply. HAEMORRHAGE during or after thyroidectomy is the most life-threatening complication: bleeding into the closed space of the neck can form a haematoma that COMPRESSES the TRACHEA and blocks the airway within minutes.

❌ Why the other options are wrong:
• Hypocalcaemia — Hypocalcaemia is common but usually develops after surgery and is treatable.
• Hoarseness — Hoarseness (recurrent laryngeal nerve injury) is serious but less immediately life-threatening.
• Hypothyroidism — Hypothyroidism develops later and is easily treated.

⭐ Key point: If a neck haematoma causes breathing difficulty, open the wound (remove the clips or sutures) at the bedside to release the pressure, and call for help.$x$, null),
(91, $x$During thyroid surgery, which structure must be preserved to prevent hypocalcaemia?$x$, $x$Parathyroid glands$x$, $x$✅ Correct answer: Parathyroid glands
The PARATHYROID glands (usually four) sit behind or within the thyroid. They make PTH, which controls blood CALCIUM. They must be PRESERVED during thyroid surgery to prevent HYPOCALCAEMIA.

❌ Why the other options are wrong:
• Submandibular duct — The submandibular duct is in the floor of the mouth, not near the thyroid.
• Recurrent laryngeal nerve — The recurrent laryngeal nerve must also be preserved, but to prevent HOARSENESS, not hypocalcaemia.
• Carotid artery — The carotid artery isn't related to calcium.

⭐ Key point: After thyroidectomy, watch for tingling, cramps and Chvostek's and Trousseau's signs (hypocalcaemia).$x$, null),
(92, $x$Lugol's iodine is used pre-operatively in thyroid surgery at a dose of:$x$, $x$2–5 drops for 10–15 days$x$, $x$✅ Correct answer: 2–5 drops for 10–15 days
Before thyroid surgery, LUGOL'S IODINE is given at about 2–5 drops (or 0.1–0.3 mL) THREE times a day for 10–15 DAYS. This short course reduces the gland's blood supply and makes it firmer, making surgery safer.

❌ Why the other options are wrong:
• It is not used pre-operatively — It IS used before surgery.
• 50 drops for 1 day — 50 drops for 1 day is the wrong dose and duration.
• 1 drop for 1 year — 1 drop for 1 year is the wrong regimen.

⭐ Key point: Iodine's effect wears off after about 2 weeks ("escape"), so surgery is timed accordingly.$x$, null),
(93, $x$The central control pathway for thyroid hormone production follows the sequence:$x$, $x$Hypothalamus → TRH → Pituitary → TSH → Thyroid$x$, $x$✅ Correct answer: Hypothalamus → TRH → Pituitary → TSH → Thyroid
Thyroid hormone is controlled by a feedback loop. The HYPOTHALAMUS releases TRH (thyrotropin-releasing hormone), which tells the PITUITARY to release TSH (thyroid-stimulating hormone), which tells the THYROID to make T3 and T4. High T3 and T4 then switch off TRH and TSH (negative feedback).

❌ Why the other options are wrong:
• Thyroid → TSH → Pituitary → TRH → Hypothalamus — That sequence is backwards.
• Pituitary → Hypothalamus → TSH → TRH → Thyroid — That sequence is in the wrong order.
• TSH → Hypothalamus → TRH → Pituitary → Thyroid — That sequence is in the wrong order.

⭐ Key point: The same pattern applies to other hormones, such as the hypothalamus → pituitary → adrenal axis (CRH → ACTH → cortisol).$x$, null),
(94, $x$A patient with fulminant hepatic failure develops worsening confusion and asterixis (flapping tremor). This presentation is most consistent with:$x$, $x$Hepatic encephalopathy$x$, $x$✅ Correct answer: Hepatic encephalopathy
In liver failure, the liver can't clear AMMONIA and other toxins, which reach the brain and cause HEPATIC ENCEPHALOPATHY. Signs: confusion, drowsiness, personality change, and ASTERIXIS (a flapping tremor of the outstretched hands), progressing to coma. Cerebral oedema can develop in fulminant failure.

❌ Why the other options are wrong:
• Hypoglycaemia unrelated to liver disease — Hypoglycaemia can cause confusion but doesn't cause asterixis.
• Simple fatigue — Fatigue doesn't cause asterixis.
• A normal finding with no significance — These are significant, not normal, findings.

⭐ Key point: Treat with lactulose (2–3 soft stools a day) and rifaximin, and correct the triggers (bleeding, infection, constipation, electrolytes).$x$, null),
(95, $x$To reduce aspiration risk during nasogastric tube feeding, the head of bed should be maintained at:$x$, $x$Elevated 30–45 degrees$x$, $x$✅ Correct answer: Elevated 30–45 degrees
Raising the HEAD OF BED to 30–45° during and after NG feeding uses gravity to keep stomach contents down, reducing reflux and ASPIRATION into the lungs.

❌ Why the other options are wrong:
• Prone position — Prone positioning isn't routine during feeding and needs special care.
• Flat, 0 degrees — Lying flat increases aspiration.
• Trendelenburg position — Head-down (Trendelenburg) greatly increases aspiration.

⭐ Key point: Also check tube position before feeding and monitor for vomiting or abdominal distension.$x$, null),
(96, $x$When giving lactulose for hepatic encephalopathy, the nurse aims for:$x$, $x$2–3 soft stools per day$x$, $x$✅ Correct answer: 2–3 soft stools per day
LACTULOSE treats hepatic encephalopathy by drawing water into the bowel (softening stools), speeding the passage of stool, and acidifying the colon, which turns ammonia into ammonium that can't be absorbed. The aim is 2–3 SOFT STOOLS a day.

❌ Why the other options are wrong:
• No stools to prevent fluid loss — No stools would let ammonia build up.
• 10 or more liquid stools daily — 10 or more liquid stools cause dehydration and low potassium, which can worsen encephalopathy.
• One hard stool every 3 days — A hard stool every 3 days means constipation, which worsens encephalopathy.

⭐ Key point: Look for and treat precipitants: GI bleeding, infection, constipation, sedatives, dehydration and electrolyte imbalance.$x$, null),
(97, $x$The antidote for paracetamol (acetaminophen) overdose is:$x$, $x$IV N-acetylcysteine$x$, $x$✅ Correct answer: IV N-acetylcysteine
N-ACETYLCYSTEINE (NAC) is the antidote for paracetamol overdose. It replenishes glutathione, which detoxifies the harmful paracetamol metabolite (NAPQI) and protects the liver. It is most effective within 8 hours of ingestion, but is given even later. The treatment nomogram guides its use.

❌ Why the other options are wrong:
• IV flumazenil — Flumazenil reverses benzodiazepines.
• IV naloxone — Naloxone reverses opioids.
• IV protamine sulfate — Protamine reverses heparin.

⭐ Key point: Monitor LFTs, INR, glucose and kidney function. Paracetamol liver damage may not appear for 24–72 hours.$x$, null),
(98, $x$For septic shock that stays refractory despite fluids and vasopressors, guidelines suggest:$x$, $x$IV hydrocortisone about 200 mg per day$x$, $x$✅ Correct answer: IV hydrocortisone about 200 mg per day
In septic shock that remains REFRACTORY despite fluids and vasopressors, guidelines suggest IV HYDROCORTISONE about 200 mg per DAY (50 mg every 6 hours, or a continuous infusion). It helps restore vascular responsiveness to vasopressors and shortens the duration of shock.

❌ Why the other options are wrong:
• IV dexamethasone 40 mg as a single bolus — A single 40 mg dexamethasone bolus isn't the recommended regimen.
• Oral prednisolone 5 mg daily — Oral prednisolone 5 mg is too little and too slow.
• IV methylprednisolone 1 g daily for 3 days — Methylprednisolone 1 g daily is far too high (it is a pulse dose for other conditions).

⭐ Key point: Monitor glucose closely with steroids, and stop them when vasopressors are no longer needed.$x$, null),
(99, $x$In thyroid storm, iodine (e.g. Lugol's) should be given:$x$, $x$At least 1 hour after the antithyroid drug$x$, $x$✅ Correct answer: At least 1 hour after the antithyroid drug
In thyroid storm, the ANTI-THYROID drug (PTU or carbimazole) is given FIRST to block the making of new hormone. IODINE (Lugol's) is given at least 1 HOUR AFTER. If iodine is given first, the thyroid uses it as raw material to make even MORE hormone, worsening the storm.

❌ Why the other options are wrong:
• Instead of beta-blockers — Iodine doesn't replace beta-blockers; they control the heart rate and symptoms.
• Only if the patient is hypothermic — Iodine isn't given only in hypothermia.
• Before any antithyroid drug — Iodine BEFORE anti-thyroid drugs can worsen the storm.

⭐ Key point: Thyroid storm treatment: beta-blockers, anti-thyroid drugs, iodine (after 1 hour), steroids and cooling.$x$, null),
(100, $x$Treatment of myxoedema coma includes IV levothyroxine, IV hydrocortisone and:$x$, $x$Passive rewarming and support of breathing$x$, $x$✅ Correct answer: Passive rewarming and support of breathing
Myxoedema coma (severe hypothyroidism) is treated with IV LEVOTHYROXINE (or T3), IV HYDROCORTISONE (until adrenal insufficiency is excluded), PASSIVE REWARMING (warm blankets, warm room), and SUPPORT OF BREATHING (ventilation if CO₂ is high). Active rapid rewarming can cause vasodilation and circulatory collapse.

❌ Why the other options are wrong:
• Immediate propranolol infusion — Propranolol would worsen the slow heart rate and low BP.
• Strict fluid boluses of 5% dextrose — 5% dextrose boluses can worsen low sodium.
• Rapid active external rewarming — Rapid active external rewarming can cause shock from vasodilation.

⭐ Key point: Also treat low sodium, low glucose and the trigger (infection, cold exposure, sedatives).$x$, null)
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
