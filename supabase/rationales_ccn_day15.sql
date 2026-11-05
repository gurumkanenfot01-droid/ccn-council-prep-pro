-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 15 (200 questions)
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

⭐ Key point: Also treat low sodium, low glucose and the trigger (infection, cold exposure, sedatives).$x$, null),
(101, $x$A patient with a high spinal cord injury develops hypotension WITH bradycardia (rather than the expected compensatory tachycardia). This is most consistent with:$x$, $x$Neurogenic shock$x$, $x$✅ Correct answer: Neurogenic shock
A high spinal cord injury (above T6) cuts the sympathetic nerves that control the blood vessels and heart. The vessels DILATE (low BP), and the unopposed vagus nerve SLOWS the heart. So the patient has HYPOTENSION with BRADYCARDIA (instead of the usual fast pulse in shock), and warm, dry skin: NEUROGENIC SHOCK.

❌ Why the other options are wrong:
• Hypovolaemic shock — Hypovolaemic shock causes a FAST pulse and cold skin.
• Cardiogenic shock — Cardiogenic shock usually causes a fast pulse with signs of heart failure.
• Septic shock — Septic shock usually causes a fast pulse.

⭐ Key point: In trauma, always look for bleeding too, as both can coexist. Treat neurogenic shock with fluids, vasopressors and atropine.$x$, null),
(102, $x$A widened mediastinum after chest trauma raises suspicion of:$x$, $x$Thoracic aortic disruption$x$, $x$✅ Correct answer: Thoracic aortic disruption
A WIDENED MEDIASTINUM (more than 8 cm on a chest X-ray) after chest trauma, especially a high-speed deceleration injury (car crash, fall), is the most important X-ray sign of THORACIC AORTIC DISRUPTION (a tear of the aorta). It is life-threatening and needs urgent CT angiography and surgical or endovascular repair.

❌ Why the other options are wrong:
• Simple rib fracture — A simple rib fracture doesn't widen the mediastinum.
• Normal anatomical variant — After trauma, a wide mediastinum shouldn't be dismissed as normal.
• Minor bruising only — Minor bruising doesn't cause mediastinal widening.

⭐ Key point: Other signs: loss of the aortic knuckle, a deviated trachea or NG tube to the right, and left haemothorax. Keep SBP 100–120 until repair.$x$, null),
(103, $x$A patient with a spinal cord injury above T6 develops sudden severe hypertension, a pounding headache, bradycardia, and flushing above the level of injury after the bladder becomes distended. Which NANDA-I diagnosis best matches this presentation?$x$, $x$Autonomic Dysreflexia$x$, $x$✅ Correct answer: Autonomic Dysreflexia
The patient ALREADY has the signs (sudden severe hypertension, pounding headache, bradycardia, flushing above the injury) after a trigger (a distended bladder), with a spinal injury above T6. This is the actual NANDA-I diagnosis AUTONOMIC DYSREFLEXIA. Act at once: sit the patient up, empty the bladder, and check for other triggers.

❌ Why the other options are wrong:
• Risk for Autonomic Dysreflexia — "Risk for Autonomic Dysreflexia" is used BEFORE it happens; here it is already happening.
• Ineffective Cerebral Tissue Perfusion — Ineffective cerebral tissue perfusion doesn't describe the full syndrome.
• Decreased Cardiac Output — Decreased cardiac output doesn't describe this problem.

⭐ Key point: Common triggers: a full bladder (a blocked catheter), constipation, pressure ulcers and tight clothing.$x$, null),
(104, $x$For small or patchy burns, a quick estimate of surface area can be made using:$x$, $x$The patient's own palm ≈ 1% TBSA$x$, $x$✅ Correct answer: The patient's own palm ≈ 1% TBSA
For small or patchy (scattered) burns, the PALM METHOD gives a quick estimate. The patient's own palm (including the fingers) is about 1% of their total body surface area. Count how many "palms" the burns cover.

❌ Why the other options are wrong:
• No estimation method exists — Estimation methods DO exist.
• Lund and Browder chart only in adults — The Lund–Browder chart is accurate for all ages, but the question asks for a quick method for small burns.
• The Rule of Nines only — The Rule of Nines is used for large burns; it is less practical for small, patchy ones.

⭐ Key point: Use the Lund–Browder chart for children (their heads are bigger and their legs smaller).$x$, null),
(105, $x$A 24 year old male is presented to ER with head injury. The patient has Tracheostomy intact. Heart Rate is below 50/min.Physician advised to administer Atropine 1 mg immediately. The only route of administering medication is Trachea now. Along with Atropine what other medications can be administered through Trachea;$x$, $x$Adrenaline$x$, $x$✅ Correct answer: Adrenaline
When there is NO IV or IO access, some drugs can be given down the ETT or tracheostomy and absorbed through the lungs. Remember NAVEL: Naloxone, Atropine, Vasopressin, Epinephrine (ADRENALINE), and Lidocaine. So adrenaline can also be given through the trachea (at a higher dose, about 2–2.5 times the IV dose, diluted in saline).

❌ Why the other options are wrong:
• Calcium — Calcium is irritant and is NOT given by the tracheal route.
• NaHCO3 — Sodium bicarbonate damages the lungs and is NOT given by this route.
• Amiodarone, — Amiodarone is NOT given by the tracheal route.

⭐ Key point: The tracheal route is a last resort. Intraosseous (IO) access is preferred when IV access fails.$x$, null),
(106, $x$Compartment syndrome causing pain on passive stretch of the affected muscle is significant because it is:$x$, $x$Often one of the earliest warning signs$x$, $x$✅ Correct answer: Often one of the earliest warning signs
In compartment syndrome, the swollen muscles are squeezed inside their tight fascial compartments, cutting off blood flow. PAIN OUT OF PROPORTION to the injury, especially pain on PASSIVE STRETCH of the muscles (moving the fingers or toes), is often one of the EARLIEST and most reliable warning signs. Pulses are often still present until late.

❌ Why the other options are wrong:
• Only seen after the compartment has already been decompressed — It occurs before decompression, not only after.
• Never associated with compartment syndrome — It IS associated with compartment syndrome.
• A late, unreliable sign — It is an EARLY sign, not a late one (pulselessness and paralysis are late).

⭐ Key point: The 6 Ps: Pain, Pain on passive stretch, Pallor, Paraesthesia, Paralysis, Pulselessness (late). Treat with fasciotomy.$x$, null),
(107, $x$The overarching principle guiding resource allocation in a mass casualty disaster response is:$x$, $x$Achieve the greatest good for the greatest number of casualties$x$, $x$✅ Correct answer: Achieve the greatest good for the greatest number of casualties
In a mass casualty disaster, resources (staff, beds, blood, operating theatres) are limited. The guiding principle is to do THE GREATEST GOOD FOR THE GREATEST NUMBER of casualties. Triage prioritises patients who are most likely to survive with treatment, rather than spending all resources on one patient who is unlikely to survive.

❌ Why the other options are wrong:
• Treat the most severely injured patient first no matter what — Treating the most severely injured first, no matter what, can waste resources on unsurvivable injuries.
• Treat only patients who can pay for care — Ability to pay is not an ethical basis for disaster care.
• Treat whoever arrived first, regardless of severity — First-come, first-served doesn't consider severity.

⭐ Key point: Triage categories: red (immediate), yellow (delayed), green (minor), black (dead or expectant).$x$, null),
(108, $x$The critical care nurse knows simultaneous injury of different regions of the body of which one or the combination of these injuries is life threatening, is popularly known as:$x$, $x$Polytrauma$x$, $x$✅ Correct answer: Polytrauma
POLYTRAUMA means simultaneous injuries to two or more body regions or systems (such as the head, chest, abdomen, pelvis and limbs), where at least one injury, or the combination, is life-threatening. These patients need a coordinated trauma team approach (ATLS).

❌ Why the other options are wrong:
• Very severe trauma — "Very severe trauma" isn't the recognised term.
• Poly head injuries — "Poly head injuries" isn't a recognised term.
• Severe multiple injuries — "Severe multiple injuries" is descriptive, but the recognised term is polytrauma.

⭐ Key point: Polytrauma patients need a primary survey (ABCDE), resuscitation, then a secondary survey (head to toe).$x$, null),
(109, $x$The correct first aid for a chemical burn is:$x$, $x$Copious irrigation with water$x$, $x$✅ Correct answer: Copious irrigation with water
For chemical burns, the first aid is COPIOUS IRRIGATION with large volumes of running WATER (for at least 20–30 minutes, longer for alkalis), after brushing off any dry chemical powder and removing contaminated clothing. Water dilutes and washes away the chemical, stopping the burning.

❌ Why the other options are wrong:
• Apply a neutralising agent immediately — Neutralising agents can cause a heat-producing reaction, worsening the burn.
• Apply ice directly — Ice can cause cold injury.
• Cover with a dry dressing only — A dry dressing alone leaves the chemical on the skin.

⭐ Key point: Alkali burns (cement, lye) are often more damaging than acids and need longer irrigation. Protect yourself with PPE.$x$, null),
(110, $x$Voltage above what threshold is classified as 'high voltage' in electrical burns?$x$, $x$1000V$x$, $x$✅ Correct answer: 1000V
Electrical injuries are classified by voltage. HIGH VOLTAGE is above 1000 VOLTS (1 kV), as in power lines and industrial sources. High voltage causes deep tissue damage along the path of the current, cardiac arrhythmias, compartment syndrome, rhabdomyolysis and kidney injury, even if the skin burns look small.

❌ Why the other options are wrong:
• 10,000V — 10,000 V is high voltage, but the threshold is 1000 V.
• 100V — 100 V is low voltage.
• 100,000V — 100,000 V is far above the threshold.

⭐ Key point: All electrical injuries need an ECG, and high-voltage injuries need cardiac monitoring, CK and urine checks.$x$, null),
(111, $x$A prolonged capillary refill time (greater than 2–3 seconds) in a shocked patient suggests:$x$, $x$Reduced peripheral perfusion$x$, $x$✅ Correct answer: Reduced peripheral perfusion
A capillary refill time longer than 2–3 seconds means the blood is slow to return to the skin after pressure. This shows REDUCED PERIPHERAL PERFUSION from vasoconstriction (the body diverting blood to vital organs in shock) or low cardiac output.

❌ Why the other options are wrong:
• Adequate peripheral perfusion — A prolonged refill means POOR, not adequate, perfusion.
• Only a cold ambient room temperature, never clinical significance — A cold room can prolong it, but in a shocked patient it is clinically significant.
• Improved cardiac output — It suggests REDUCED, not improved, cardiac output.

⭐ Key point: Check capillary refill on the sternum or fingertip (press for 5 seconds). Use it together with other signs of perfusion.$x$, null),
(112, $x$Because of extensive skin loss, TENS patients are managed most similarly to which other critical care population?$x$, $x$Major burn patients$x$, $x$✅ Correct answer: Major burn patients
In TEN (toxic epidermal necrolysis), large areas of skin peel away, causing massive FLUID loss, heat loss, protein loss, pain and a high risk of INFECTION, just like a major burn. These patients are therefore managed like MAJOR BURN patients, ideally in a burns unit or ICU.

❌ Why the other options are wrong:
• Uncomplicated cellulitis patients — Uncomplicated cellulitis is a localised skin infection.
• Stable post-operative orthopedic patients — Stable post-operative orthopaedic patients don't have widespread skin loss.
• Chronic wound outpatients — Chronic wound outpatients don't have acute, widespread skin loss.

⭐ Key point: TEN care: stop the causing drug, warm the room, fluids, non-adherent dressings, eye and mouth care, nutrition and pain relief.$x$, null),
(113, $x$A 30 years old male admitted to ICU with RTA (road traffic accident), she is unconscious and is on ventilator with Tidal volume=550 and FiO2=90%. She has CVP line inserted because of failure to insert I/V cannula, IV bolus of 1 litre and blood was infused. You are measuring his CVP which is 12cm of H2O, what does this indicate?$x$, $x$Hypervolemia$x$, $x$✅ Correct answer: Hypervolemia
Normal CVP is about 3–10 cmH₂O (or 2–8 mmHg). A CVP of 12 cmH₂O (about 9 mmHg) after 1 litre of fluid and blood is above the normal range and, in this question, indicates HYPERVOLAEMIA (volume overload). The trend after a fluid challenge is more useful than a single reading.

❌ Why the other options are wrong:
• Normal volume — Normal volume would be within 3–10 cmH₂O.
• Hypovolemia — Hypovolaemia would give a LOW CVP.
• Mixed state — "Mixed state" isn't a recognised interpretation.

⭐ Key point: Always note whether the CVP is in mmHg or cmH₂O (1 mmHg ≈ 1.36 cmH₂O).$x$, null),
(114, $x$A 30-year-old man with a stab wound to the neck is alert but bleeding actively in the resuscitation bay. You should first:$x$, $x$Apply direct pressure to the site$x$, $x$✅ Correct answer: Apply direct pressure to the site
Active bleeding from a neck wound needs immediate DIRECT PRESSURE on the bleeding site. This is the quickest and most effective way to control external haemorrhage, while help is called and resuscitation is prepared. Don't probe or explore the wound in the resuscitation bay.

❌ Why the other options are wrong:
• Locally explore the wound to find the bleeding point — Locally exploring the wound can dislodge clots and cause catastrophic bleeding.
• Clamp the bleeding vessels blindly — Blind clamping can damage vessels and nerves (and airway structures).
• Place two large-bore IV cannulae and give O-negative blood — IV access and blood are needed, but stopping the bleeding with pressure comes first.

⭐ Key point: Neck wounds can also threaten the airway (expanding haematoma). Watch for stridor and voice change.$x$, null),
(115, $x$For monitoring global perfusion, venous oxygen saturation is NOT reliably measured from a:$x$, $x$Femoral venous catheter$x$, $x$✅ Correct answer: Femoral venous catheter
Global venous oxygen saturation (ScvO₂ or SvO₂) reflects oxygen use by the whole body. It is measured from a catheter in the SUPERIOR VENA CAVA (ScvO₂) or PULMONARY ARTERY (SvO₂). A FEMORAL venous catheter samples blood from the LEGS only, which doesn't reflect the whole body.

❌ Why the other options are wrong:
• Central venous catheter in the superior vena cava — An SVC catheter is reliable for ScvO₂.
• Pulmonary artery catheter — A PA catheter gives true mixed venous SvO₂.
• Continuous oximetric central catheter — A continuous oximetric central catheter measures ScvO₂ continuously.

⭐ Key point: Normal ScvO₂ is above 70%; SvO₂ is 60–80%. Low values suggest poor oxygen delivery.$x$, null),
(116, $x$A patient with carbon monoxide poisoning from smoke inhalation should be treated with:$x$, $x$Humidified 100% oxygen$x$, $x$✅ Correct answer: Humidified 100% oxygen
Carbon monoxide binds haemoglobin about 240 times more strongly than oxygen. HUMIDIFIED 100% OXYGEN (via a non-rebreather mask or ETT) speeds up its removal from haemoglobin (its half-life falls from about 4–5 hours on room air to about 1 hour on 100% oxygen) and treats tissue hypoxia.

❌ Why the other options are wrong:
• IV antibiotics as the primary treatment — Antibiotics don't treat CO poisoning.
• Room air only — Room air removes CO slowly.
• No oxygen therapy is needed — Oxygen IS needed.

⭐ Key point: Pulse oximeters read FALSELY normal in CO poisoning. Measure COHb on co-oximetry.$x$, null),
(117, $x$After a high-voltage electrical burn with dark red urine, the target urine output is about:$x$, $x$1–1.5 mL/kg/h until the urine clears$x$, $x$✅ Correct answer: 1–1.5 mL/kg/h until the urine clears
High-voltage electrical burns damage muscles, releasing MYOGLOBIN, which turns the urine dark red or brown. Myoglobin can block the kidney tubules and cause AKI. Fluids are given to keep the urine output higher than in ordinary burns, about 1–1.5 mL/kg/hour (or 100 mL/hour in adults), until the urine clears.

❌ Why the other options are wrong:
• 5 mL/kg/h using diuretics only — 5 mL/kg/hour with diuretics only is excessive and doesn't replace fluid.
• 0.1 mL/kg/h to protect the kidneys — 0.1 mL/kg/hour is far too low and would harm the kidneys.
• 0.3 mL/kg/h with fluid restriction — 0.3 mL/kg/hour with fluid restriction would harm the kidneys.

⭐ Key point: Also monitor the ECG (arrhythmias), CK, potassium, and limbs for compartment syndrome.$x$, null),
(118, $x$Adult anaphylaxis is first treated with IM adrenaline at a dose of:$x$, $x$0.5 mg (0.5 mL of 1:1000) into the anterolateral thigh$x$, $x$✅ Correct answer: 0.5 mg (0.5 mL of 1:1000) into the anterolateral thigh
Adult anaphylaxis is treated FIRST with IM ADRENALINE 0.5 mg (0.5 mL of 1:1000) into the ANTEROLATERAL THIGH (outer middle thigh). The thigh muscle absorbs it quickly. Repeat after 5 minutes if there's no improvement.

❌ Why the other options are wrong:
• 5 mg (5 mL of 1:1000) IV push — 5 mg IV push is a massive, dangerous overdose.
• 1 mg (10 mL of 1:10,000) intramuscularly in the deltoid — 1 mg of 1:10,000 is the cardiac arrest dose and concentration, given IV, not IM.
• 0.05 mg (0.5 mL of 1:10,000) subcutaneously — 0.05 mg subcutaneously is too little and absorbed too slowly.

⭐ Key point: Then give high-flow oxygen, IV fluids, and lie the patient flat with the legs raised (or sitting if breathless).$x$, null),
(119, $x$The current ATLS site for needle decompression of tension pneumothorax in adults is:$x$, $x$4th–5th intercostal space, anterior to mid-axillary line$x$, $x$✅ Correct answer: 4th–5th intercostal space, anterior to mid-axillary line
Current ATLS guidance for needle decompression in ADULTS recommends the 4th–5th INTERCOSTAL SPACE, just ANTERIOR to the MID-AXILLARY line. The chest wall is thinner here than at the 2nd ICS mid-clavicular line, so the needle is more likely to reach the pleural space. (The 2nd ICS mid-clavicular line is still used in children.)

❌ Why the other options are wrong:
• Just above the umbilicus — Above the umbilicus is in the abdomen.
• 2nd intercostal space in the lateral chest — The 2nd ICS in the lateral chest isn't the recommended site.
• 7th intercostal space, posterior axillary line — The 7th ICS posterior axillary line risks injuring abdominal organs.

⭐ Key point: Follow needle decompression with a chest drain.$x$, null),
(120, $x$A FAST ultrasound scan in trauma looks for free fluid in the pericardium, right and left upper quadrants and:$x$, $x$Pelvis$x$, $x$✅ Correct answer: Pelvis
FAST (Focused Assessment with Sonography for Trauma) is a quick bedside ultrasound looking for FREE FLUID (usually blood) in four areas: the PERICARDIUM, the RIGHT upper quadrant (Morison's pouch, between the liver and kidney), the LEFT upper quadrant (around the spleen), and the PELVIS (behind the bladder).

❌ Why the other options are wrong:
• Thyroid — The thyroid isn't part of FAST.
• Spinal canal — The spinal canal isn't part of FAST.
• Brain — The brain isn't part of FAST.

⭐ Key point: Extended FAST (eFAST) also checks both chest sides for pneumothorax and haemothorax.$x$, null),
(121, $x$A pregnant patient presents with severe, constant abdominal pain, a tense/rigid uterus, and dark vaginal bleeding. This presentation is most concerning for:$x$, $x$Placental abruption$x$, $x$✅ Correct answer: Placental abruption
Severe, constant abdominal pain, a TENSE, RIGID ("woody"), tender uterus, and DARK vaginal bleeding in late pregnancy are classic signs of PLACENTAL ABRUPTION (premature separation of a normally sited placenta). The bleeding may be partly hidden behind the placenta, so the shock may be worse than the visible blood loss suggests.

❌ Why the other options are wrong:
• Normal labour onset — Normal labour has contractions that come and go, not constant pain and a rigid uterus.
• Placenta praevia — Placenta praevia causes PAINLESS, bright red bleeding with a soft uterus.
• Braxton Hicks contractions — Braxton Hicks contractions are painless and irregular, without bleeding.

⭐ Key point: Abruption is an emergency: risk of fetal death, DIC and haemorrhage. Resuscitate and deliver.$x$, null),
(122, $x$The compression depth recommended for an infant during CPR is approximately:$x$, $x$4cm$x$, $x$✅ Correct answer: 4cm
For an INFANT, chest compressions should be about ONE-THIRD of the chest depth, approximately 4 cm. Use two thumbs (encircling technique) or two fingers on the lower half of the sternum, at 100–120 compressions per minute.

❌ Why the other options are wrong:
• 5–6cm — 5–6 cm is the depth for ADULTS.
• 1cm — 1 cm is too shallow to circulate blood.
• 8cm — 8 cm is far too deep for an infant.

⭐ Key point: For a child (1 year to puberty), compress about 5 cm (one-third of the chest depth).$x$, null),
(123, $x$Rh incompatibility is of particular clinical concern in pregnancy when:$x$, $x$An Rh-negative mother carries an Rh-positive fetus$x$, $x$✅ Correct answer: An Rh-negative mother carries an Rh-positive fetus
Rh incompatibility matters when an Rh-NEGATIVE mother carries an Rh-POSITIVE baby. Fetal red cells entering her blood can make her produce anti-D antibodies. In a later pregnancy with an Rh-positive baby, these antibodies cross the placenta and destroy the baby's red cells (haemolytic disease of the newborn).

❌ Why the other options are wrong:
• The mother is blood type O — Blood group O alone isn't the Rh issue (ABO incompatibility is a different, milder problem).
• An Rh-positive mother carries an Rh-negative fetus — An Rh-positive mother with an Rh-negative baby isn't a problem.
• Both parents are Rh-negative — If both parents are Rh-negative, the baby is Rh-negative, so there's no problem.

⭐ Key point: Give anti-D immunoglobulin to Rh-negative mothers at 28 weeks, after delivery (if the baby is Rh-positive), and after any sensitising event.$x$, null),
(124, $x$MEOWS stands for:$x$, $x$Modified Early Obstetric Warning Score$x$, $x$✅ Correct answer: Modified Early Obstetric Warning Score
MEOWS stands for MODIFIED EARLY OBSTETRIC WARNING SCORE. It is a chart that scores vital signs (BP, pulse, RR, SpO₂, temperature, consciousness) adjusted for pregnancy, to detect early deterioration in pregnant and postnatal women and trigger urgent review.

❌ Why the other options are wrong:
• Maternal Early Warning Signs — Maternal Early Warning Signs isn't the correct term.
• Modified Early Obstetric Warning Signs — "Signs" isn't correct; it is a "Score".
• Moment Evaluation of Obstetric Syndrome — "Moment Evaluation of Obstetric Syndrome" isn't a real term.

⭐ Key point: Pregnancy changes normal vital signs, so obstetric-specific warning charts are used.$x$, null),
(125, $x$Which of the following is not an obstetric cause of disseminated intravascular coagulopathy;$x$, $x$Uterine inversion$x$, $x$✅ Correct answer: Uterine inversion
Obstetric causes of DIC include PLACENTAL ABRUPTION, AMNIOTIC FLUID EMBOLISM, PRE-ECLAMPSIA, ECLAMPSIA and HELLP, severe PPH, sepsis, and retained dead fetus. UTERINE INVERSION causes shock and haemorrhage, but it is not typically listed as a direct cause of DIC.

❌ Why the other options are wrong:
• Pre-eclampsia/eclampsia — Pre-eclampsia and eclampsia ARE causes of DIC.
• Amniotic fluid embolism — Amniotic fluid embolism IS a major cause of DIC.
• Abruptio placentae — Abruptio placentae IS a major cause of DIC.

⭐ Key point: Uterine inversion is an emergency: replace the uterus immediately and treat shock.$x$, null),
(126, $x$An acute event involving the cardiorespiratory and/or central nervous system that causes reduced or absent consciousness in pregnancy is:$x$, $x$Maternal collapse$x$, $x$✅ Correct answer: Maternal collapse
MATERNAL COLLAPSE is an acute event involving the cardiorespiratory and/or central nervous systems, causing reduced or absent consciousness (and potentially death) at any stage of pregnancy and up to 6 weeks after delivery. Causes include haemorrhage, PE, AFE, eclampsia, sepsis and cardiac disease.

❌ Why the other options are wrong:
• Ectopic pregnancy — Ectopic pregnancy is a cause of collapse, not the definition.
• Placenta praevia — Placenta praevia causes bleeding, not the definition of collapse.
• Hyperemesis gravidarum — Hyperemesis gravidarum is severe vomiting.

⭐ Key point: Maternal collapse: call for help, left lateral tilt or manual uterine displacement, ABCDE, CPR if needed, and perimortem caesarean by 5 minutes.$x$, null),
(127, $x$A 35year old para 7+2 [6alive] ,just had a spontaneous vaginal delivery of a live baby boy, she is lying on bed not talking, on examination her pulse rate is 100b/m, blood pressure 50/?, the possible cause is: ___________$x$, $x$Thromboembolism$x$, $x$✅ Correct answer: Thromboembolism
This grand multiparous woman (para 7) collapsed just after delivery with a fast pulse and very LOW BP (50 systolic). The commonest cause in a grand multipara is POSTPARTUM HAEMORRHAGE (uterine atony), which must be checked first (uterus, blood loss). Among the options given, the keyed answer is THROMBOEMBOLISM (such as amniotic fluid embolism or pulmonary embolism), which causes sudden collapse after delivery.

❌ Why the other options are wrong:
• Inadequate history during antenatal booking — Inadequate antenatal booking history doesn't cause collapse.
• Inadequate history of onset of labor — Inadequate history of labour onset doesn't cause collapse.
• Not regular in antenatal visit prenatally — Irregular antenatal visits don't directly cause collapse.

⭐ Key point: Postpartum collapse: check for PPH first (rub the uterus, check blood loss), then think of AFE, PE, sepsis and eclampsia.$x$, null),
(128, $x$The commonest surgical procedure used to treat ruptured tubal pregnancy is$x$, $x$Salpingectomy$x$, $x$✅ Correct answer: Salpingectomy
For a RUPTURED tubal (ectopic) pregnancy with bleeding, the standard surgery is SALPINGECTOMY: removal of the affected fallopian tube. It stops the bleeding quickly and removes the pregnancy. It can be done by laparotomy (if unstable) or laparoscopy.

❌ Why the other options are wrong:
• Salpingo-oophorectomy — Salpingo-oophorectomy removes the ovary too, which is usually unnecessary.
• Total hysterectomy — Total hysterectomy is far too extensive.
• oophorectomy — Oophorectomy (removing the ovary) doesn't treat a tubal pregnancy.

⭐ Key point: Ruptured ectopic with shock: resuscitate, cross-match blood, and take to theatre urgently.$x$, null),
(129, $x$Which drug is contraindicated for controlling postpartum bleeding in a woman with eclampsia?$x$, $x$Ergometrine$x$, $x$✅ Correct answer: Ergometrine
ERGOMETRINE strongly tightens blood vessels (vasoconstriction), causing a sharp rise in BP. In a woman with ECLAMPSIA (already very high BP), this can cause stroke, worsening seizures, or heart problems. It is CONTRAINDICATED in eclampsia, pre-eclampsia, hypertension and heart disease.

❌ Why the other options are wrong:
• Carboprost — Carboprost is avoided in asthma, but is fine in eclampsia.
• Misoprostol — Misoprostol is safe in eclampsia.
• Oxytocin — Oxytocin is the FIRST-LINE drug and safe in eclampsia.

⭐ Key point: Syntometrine (oxytocin plus ergometrine) also contains ergometrine, so avoid it in hypertension.$x$, null),
(130, $x$A child weighing 18 kg is prescribed an antibiotic at 10 mg/kg/day divided every 8 hours. How many milligrams should be given per dose?$x$, $x$60 mg$x$, $x$✅ Correct answer: 60 mg
Step 1: total daily dose = 18 kg × 10 mg/kg/day = 180 mg/day. Step 2: "divided every 8 hours" = 3 doses a day (24 ÷ 8 = 3). Step 3: dose per administration = 180 ÷ 3 = 60 mg.

❌ Why the other options are wrong:
• 180 mg — 180 mg is the total daily dose, not each dose.
• 30 mg — 30 mg would be 6 doses a day (every 4 hours).
• 90 mg — 90 mg would be 2 doses a day (every 12 hours).

⭐ Key point: Always check whether the order is "per dose" or "per day divided".$x$, null),
(131, $x$Which statement about pre-eclampsia is correct?$x$, $x$It is mainly a disease of primigravidae$x$, $x$✅ Correct answer: It is mainly a disease of primigravidae
PRE-ECLAMPSIA is mainly a disease of FIRST pregnancies (PRIMIGRAVIDAE). Other risk factors: a new partner, previous pre-eclampsia, multiple pregnancy, age over 40, obesity, chronic hypertension, diabetes and kidney disease.

❌ Why the other options are wrong:
• BP >140/110 defines severe disease — Severe pre-eclampsia is BP of 160/110 or above, not 140/110.
• MgSO4 is used to lower blood pressure in emergencies — Magnesium sulphate PREVENTS SEIZURES; it isn't used to lower BP (labetalol, hydralazine and nifedipine are used).
• Oedema is required for diagnosis — Oedema is NOT required for diagnosis (it is common in normal pregnancy).

⭐ Key point: Pre-eclampsia = new hypertension after 20 weeks plus proteinuria or organ dysfunction.$x$, null),
(132, $x$Common causes of antepartum haemorrhage from 24 weeks' gestation include which of the following?$x$, $x$placenta praevia$x$, $x$✅ Correct answer: placenta praevia
Antepartum haemorrhage (bleeding from 24 weeks until birth) is commonly caused by PLACENTA PRAEVIA (a low-lying placenta, causing painless bleeding) and PLACENTAL ABRUPTION (painful bleeding). In this question, the keyed answer is placenta praevia, a leading recognised cause.

❌ Why the other options are wrong:
• Uterine rupture — Uterine rupture is a rare cause, usually during labour.
• Placenta abruption — Abruption is also a common cause; the question accepts placenta praevia as its answer.
• Normal period — A normal period doesn't occur in pregnancy.

⭐ Key point: Never do a vaginal examination in antepartum haemorrhage until placenta praevia has been excluded by ultrasound.$x$, null),
(133, $x$A child in septic shock needs a fluid bolus of:$x$, $x$10 mL/kg of crystalloid, then reassess$x$, $x$✅ Correct answer: 10 mL/kg of crystalloid, then reassess
For a child in septic shock, give a fluid BOLUS of 10 mL/kg of isotonic CRYSTALLOID (0.9% saline or balanced solution), then REASSESS (heart rate, capillary refill, BP, liver size, crackles) before giving more. Repeat as needed (up to 40–60 mL/kg), watching for fluid overload.

❌ Why the other options are wrong:
• 100 mL/kg of 5% dextrose quickly — 100 mL/kg of 5% dextrose is dangerous (hyperglycaemia, low sodium, overload).
• 1 mL/kg of blood only — 1 mL/kg of blood only is far too little.
• 50 mL/kg of 0.18% saline — 0.18% saline is hypotonic and unsafe for resuscitation.

⭐ Key point: Give antibiotics within 1 hour, and start inotropes if the child stays shocked after 40–60 mL/kg.$x$, null),
(134, $x$The defibrillation energy for a child in VF is:$x$, $x$4 J/kg$x$, $x$✅ Correct answer: 4 J/kg
For a child in VF or pulseless VT, the defibrillation energy is 4 JOULES per KILOGRAM (for example, 4 × 20 kg = 80 J). Then resume CPR immediately for 2 minutes before checking the rhythm.

❌ Why the other options are wrong:
• 360 J for all ages — 360 J for all ages is an old adult monophasic dose, far too high for children.
• 40 J/kg — 40 J/kg is ten times too high.
• 0.4 J/kg — 0.4 J/kg is ten times too low.

⭐ Key point: Use paediatric pads (or adult pads placed front and back) in small children.$x$, null),
(135, $x$The IV adrenaline dose in paediatric cardiac arrest is:$x$, $x$10 mcg/kg (0.1 mL/kg of 1:10,000)$x$, $x$✅ Correct answer: 10 mcg/kg (0.1 mL/kg of 1:10,000)
In paediatric cardiac arrest, the IV or IO adrenaline dose is 10 MICROGRAMS per KILOGRAM, which is 0.1 mL/kg of 1:10,000 adrenaline. Repeat every 3–5 minutes. Example: a 20 kg child gets 200 micrograms (2 mL of 1:10,000).

❌ Why the other options are wrong:
• 1 mg/kg (10 mL/kg of 1:10,000) — 1 mg/kg is a massive overdose.
• 0.1 mcg/kg (0.001 mL/kg of 1:1000) — 0.1 mcg/kg is far too little.
• 100 mcg/kg (1 mL/kg of 1:1000) — 100 mcg/kg is ten times too much (an old high-dose regimen no longer used).

⭐ Key point: Paediatric cardiac arrest doses: adrenaline 10 mcg/kg, amiodarone 5 mg/kg, defibrillation 4 J/kg.$x$, null),
(136, $x$For a 4-year-old, the uncuffed endotracheal tube size (age ÷ 4 + 4) is:$x$, $x$5.0 mm internal diameter$x$, $x$✅ Correct answer: 5.0 mm internal diameter
Formula for uncuffed ETT size (internal diameter) in children over 1 year: age ÷ 4 + 4. For a 4-year-old: 4 ÷ 4 + 4 = 1 + 4 = 5.0 mm. (For cuffed tubes: age ÷ 4 + 3.5 = 4.5 mm.)

❌ Why the other options are wrong:
• 3.0 mm internal diameter — 3.0 mm is the size for a newborn.
• 8.0 mm internal diameter — 8.0 mm is an adult male size.
• 7.5 mm internal diameter — 7.5 mm is an adult size.

⭐ Key point: Oral tube length is about age ÷ 2 + 12 cm (14 cm for a 4-year-old). Keep half a size above and below ready.$x$, null),
(137, $x$In children aged 1–10 years, hypotension is a systolic BP below:$x$, $x$70 + (2 × age in years) mmHg$x$, $x$✅ Correct answer: 70 + (2 × age in years) mmHg
In children aged 1–10 years, HYPOTENSION is a systolic BP below 70 + (2 × age in years) mmHg. Example: a 5-year-old is hypotensive below 70 + 10 = 80 mmHg. Hypotension is a LATE sign of shock in children; tachycardia and poor perfusion appear first.

❌ Why the other options are wrong:
• 100 + (age in years) mmHg — 100 + age is closer to the expected normal systolic BP, not the hypotension threshold.
• 50 mmHg at any age — 50 mmHg is too low as a general threshold.
• 90 mmHg at any age — 90 mmHg is the adult threshold.

⭐ Key point: Children compensate for shock well. When BP falls, they are close to cardiac arrest.$x$, null),
(138, $x$A child with croup has stridor at rest. The nurse expects:$x$, $x$Oral dexamethasone and nebulised adrenaline$x$, $x$✅ Correct answer: Oral dexamethasone and nebulised adrenaline
Croup with STRIDOR AT REST is moderate to severe. The nurse expects ORAL DEXAMETHASONE (0.15–0.6 mg/kg), which reduces airway swelling over hours, and NEBULISED ADRENALINE (which shrinks the swelling quickly, within 10–30 minutes, but wears off after about 2 hours). Keep the child calm on the parent's lap.

❌ Why the other options are wrong:
• Throat swab and oral antibiotics only — Croup is viral; antibiotics don't help.
• Immediate chest physiotherapy — Chest physiotherapy isn't useful and may upset the child.
• Nebulised salbutamol alone — Salbutamol doesn't help croup (the problem is upper airway swelling, not bronchospasm).

⭐ Key point: Observe for at least 2–4 hours after nebulised adrenaline, as the stridor may return.$x$, null),
(139, $x$A drooling, toxic-looking child sitting forward with stridor may have epiglottitis. The nurse should:$x$, $x$Keep the child calm and upright and not examine the throat$x$, $x$✅ Correct answer: Keep the child calm and upright and not examine the throat
EPIGLOTTITIS is a life-threatening swelling of the epiglottis. The child is toxic, drooling, sitting forward (tripod position) with stridor. KEEP THE CHILD CALM and UPRIGHT (on the parent's lap), and DON'T examine the throat or do painful procedures. Upsetting the child can cause sudden complete airway obstruction. Call senior anaesthetic and ENT help to secure the airway in theatre.

❌ Why the other options are wrong:
• Lie the child flat and inspect the throat — Lying flat and inspecting the throat can cause complete obstruction.
• Take all blood samples first, then act — Blood tests can upset the child; secure the airway first.
• Give a sedative to stop the child crying — Sedation can depress breathing and cause obstruction.

⭐ Key point: Hib vaccination has made epiglottitis rare in children.$x$, null),
(140, $x$Children in DKA are at risk of cerebral oedema, so management includes:$x$, $x$Slow fluid replacement over 48 hours and no insulin bolus$x$, $x$✅ Correct answer: Slow fluid replacement over 48 hours and no insulin bolus
Children with DKA are at risk of CEREBRAL OEDEMA, especially if fluids are given too fast or glucose falls too quickly. Management includes SLOW fluid replacement over 48 HOURS, NO insulin bolus (start the infusion at 0.05–0.1 units/kg/hour, 1–2 hours after fluids begin), and close neurological monitoring.

❌ Why the other options are wrong:
• An insulin bolus of 1 unit/kg at the start — An insulin bolus increases the risk of cerebral oedema and low potassium.
• Hypotonic fluid to correct sodium quickly — Hypotonic fluids increase the risk of cerebral oedema.
• Rapid 20 mL/kg fluid boluses repeated hourly — Rapid repeated boluses increase the risk of cerebral oedema.

⭐ Key point: Warning signs of cerebral oedema: headache, slowing heart rate, rising BP, falling GCS, irritability. Treat with mannitol or 3% saline.$x$, null),
(141, $x$The specific antidote for opioid overdose (e.g. morphine, fentanyl) is:$x$, $x$Naloxone$x$, $x$✅ Correct answer: Naloxone
NALOXONE is the specific antidote for OPIOID overdose (morphine, heroin, fentanyl, tramadol). It blocks opioid receptors, reversing respiratory depression and sedation within minutes. Typical dose: 0.4 mg IV (or IM or intranasal), repeated as needed.

❌ Why the other options are wrong:
• N-acetylcysteine — N-acetylcysteine is for paracetamol overdose.
• Activated charcoal — Activated charcoal reduces gut absorption of some drugs; it isn't an antidote.
• Flumazenil — Flumazenil reverses benzodiazepines.

⭐ Key point: Naloxone wears off before many opioids, so watch for re-sedation and repeat doses or start an infusion.$x$, null),
(142, $x$Zopiclone, a cyclopyrrolone-class Z-drug similar to zolpidem, is particularly associated with which distinctive adverse effect?$x$, $x$A metallic or bitter taste after use$x$, $x$✅ Correct answer: A metallic or bitter taste after use
ZOPICLONE (a "Z-drug" sleeping tablet) is well known for causing a distinctive METALLIC or BITTER TASTE in the mouth, which can last into the next day. Other side effects: drowsiness, dizziness, and the risk of dependence.

❌ Why the other options are wrong:
• Serotonin syndrome — Serotonin syndrome is linked to serotonergic drugs (SSRIs, tramadol).
• Severe hepatotoxicity in most patients — Severe liver damage in most patients isn't typical.
• Malignant hyperthermia — Malignant hyperthermia is linked to volatile anaesthetics and suxamethonium.

⭐ Key point: Z-drugs can cause falls and confusion in the elderly. Avoid long-term use.$x$, null),
(143, $x$A patient presents with pinpoint pupils, respiratory rate of 6 breaths/min, decreased level of consciousness, and bradycardia. Which toxidrome does this most likely represent?$x$, $x$Opioid toxidrome$x$, $x$✅ Correct answer: Opioid toxidrome
The OPIOID toxidrome (the classic pattern of opioid overdose): PINPOINT pupils (miosis), RESPIRATORY DEPRESSION (here RR 6), decreased level of CONSCIOUSNESS, and often bradycardia and hypotension. Treat with naloxone and support breathing.

❌ Why the other options are wrong:
• Cholinergic toxidrome — The cholinergic toxidrome also causes small pupils, but with SLUDGE signs (salivation, diarrhoea, sweating).
• Anticholinergic toxidrome — The anticholinergic toxidrome causes DILATED pupils, a fast pulse, hot dry skin and confusion.
• Sympathomimetic toxidrome — The sympathomimetic toxidrome (cocaine, amphetamines) causes dilated pupils, a fast pulse, high BP and agitation.

⭐ Key point: Toxidromes help identify a poison quickly when the cause is unknown.$x$, null),
(144, $x$The concentration of epinephrine used for endoscopic injection in bleeding ulcers is:$x$, $x$1:10,000$x$, $x$✅ Correct answer: 1:10,000
During endoscopy for a bleeding peptic ulcer, adrenaline (epinephrine) diluted to 1:10,000 (0.1 mg/mL) is injected around the bleeding point. It narrows the vessels and compresses the tissue, slowing the bleeding. It is combined with another method (heat or clips) for lasting haemostasis.

❌ Why the other options are wrong:
• 1:1,000,000 — 1:1,000,000 is too dilute to be effective.
• 1:100,000 — 1:100,000 is weaker than the standard concentration.
• 1:1,000 — 1:1,000 is too concentrated and could cause dangerous systemic effects.

⭐ Key point: After endoscopic treatment, give high-dose IV PPI to reduce the risk of rebleeding.$x$, null),
(145, $x$Which volatile anaesthetic agent is most associated with sensitizing the myocardium to catecholamines, predisposing to arrhythmias, particularly if epinephrine is administered concurrently?$x$, $x$Halothane$x$, $x$✅ Correct answer: Halothane
HALOTHANE (an older volatile anaesthetic) strongly SENSITISES the heart muscle to CATECHOLAMINES (adrenaline). If adrenaline is given (such as in local anaesthetic to reduce bleeding), dangerous ARRHYTHMIAS (ventricular ectopics, VT, VF) can occur. Halothane is now rarely used in many countries but may still appear in exams.

❌ Why the other options are wrong:
• Sevoflurane — Sevoflurane causes much less sensitisation.
• Nitrous oxide — Nitrous oxide doesn't significantly sensitise the heart.
• Desflurane — Desflurane causes less sensitisation than halothane.

⭐ Key point: Halothane can also cause "halothane hepatitis" (liver damage), especially with repeated exposure.$x$, null),
(146, $x$Which class of immunosuppressant medications, including tacrolimus and cyclosporine, inhibits calcineurin to reduce T-cell activation but carries a significant risk of nephrotoxicity?$x$, $x$Calcineurin inhibitors$x$, $x$✅ Correct answer: Calcineurin inhibitors
CALCINEURIN INHIBITORS (tacrolimus and ciclosporin) block calcineurin, an enzyme that activates T-cells, reducing the immune response and preventing transplant rejection. A major side effect is NEPHROTOXICITY (kidney damage), as well as high BP, tremor, high potassium and diabetes.

❌ Why the other options are wrong:
• Induction antibody agents — Induction antibody agents (such as basiliximab) are used at the time of transplant.
• Corticosteroids — Corticosteroids have different side effects (diabetes, osteoporosis).
• Antimetabolites, such as mycophenolate — Antimetabolites (mycophenolate, azathioprine) mainly suppress the bone marrow.

⭐ Key point: Monitor tacrolimus and ciclosporin blood levels, kidney function, potassium and BP.$x$, null),
(147, $x$A patient on fentanyl PCA has a respiratory rate of 8/min and is somnolent. Which antidote should the nurse administer?$x$, $x$Naloxone$x$, $x$✅ Correct answer: Naloxone
A respiratory rate of 8 and sleepiness on fentanyl PCA show OPIOID-INDUCED respiratory depression. The antidote is NALOXONE (given in small doses, such as 40–100 micrograms IV, repeated, to reverse breathing problems without completely removing pain relief). Stop the PCA, stimulate the patient, give oxygen and support breathing.

❌ Why the other options are wrong:
• Romazicon — Romazicon is flumazenil, a benzodiazepine antagonist.
• Flumazenil — Flumazenil reverses benzodiazepines, not opioids.
• Physostigmine — Physostigmine reverses anticholinergic toxicity.

⭐ Key point: Monitor patients on PCA: respiratory rate, sedation score and SpO₂, especially in the first 24 hours.$x$, null),
(148, $x$The pharmacy needs 500 mL of a 5% dextrose solution but only has 50% dextrose stock solution and sterile water available. How much of the 50% stock solution is needed?$x$, $x$50 mL of stock, diluted with 450 mL water$x$, $x$✅ Correct answer: 50 mL of stock, diluted with 450 mL water
Use the dilution formula C1 × V1 = C2 × V2. Stock concentration (C1) = 50%, needed concentration (C2) = 5%, needed volume (V2) = 500 mL. 50 × V1 = 5 × 500 → V1 = 2500 ÷ 50 = 50 mL of stock. Then add 500 − 50 = 450 mL of sterile water to make 500 mL of 5% dextrose.

❌ Why the other options are wrong:
• 100 mL of stock, diluted with 400 mL water — 100 mL of stock would give 10% dextrose.
• 250 mL of stock, diluted with 250 mL water — 250 mL of stock would give 25% dextrose.
• 5 mL of stock, diluted with 495 mL water — 5 mL of stock would give 0.5% dextrose.

⭐ Key point: Check: 50 mL of 50% contains 25 g of dextrose; 25 g in 500 mL = 5 g per 100 mL = 5%.$x$, null),
(149, $x$A nurse must give a 40 mg IV push dose over 4 minutes. The drug is supplied as 40 mg in 4 mL. At what rate, in mL/min, should the nurse push the medication?$x$, $x$1 mL/min$x$, $x$✅ Correct answer: 1 mL/min
The concentration is 40 mg in 4 mL = 10 mg/mL. To give the whole 40 mg (4 mL) over 4 minutes: 4 mL ÷ 4 minutes = 1 mL per minute.

❌ Why the other options are wrong:
• 10 mL/min — 10 mL/min would give 4 mL in 24 seconds, too fast.
• 0.5 mL/min — 0.5 mL/min would take 8 minutes.
• 4 mL/min — 4 mL/min would give the whole dose in 1 minute, too fast.

⭐ Key point: Use a timer or count seconds when giving slow IV push drugs. Some drugs are dangerous if pushed too fast.$x$, null),
(150, $x$A patient taking ibuprofen 400 mg twice daily for chronic back pain develops leg oedema. This is most likely caused by:$x$, $x$A decrease in renal function$x$, $x$✅ Correct answer: A decrease in renal function
NSAIDs (like ibuprofen) block prostaglandins that keep the kidney's afferent arterioles open. Kidney blood flow and filtration (GFR) fall, especially in the elderly or dehydrated. The kidneys retain salt and water, causing OEDEMA, and kidney function DECREASES (rising creatinine).

❌ Why the other options are wrong:
• A low creatinine level — Kidney damage RAISES creatinine, not lowers it.
• An increase in plasma proteins — NSAIDs don't increase plasma proteins.
• An increased glomerular filtration rate — NSAIDs DECREASE, not increase, GFR.

⭐ Key point: Avoid NSAIDs in kidney disease, heart failure, dehydration, and with ACE inhibitors and diuretics (the "triple whammy").$x$, null),
(151, $x$Compared with the other agents listed, which is most likely to cause direct, dose-dependent myocardial contractile depression rather than predominantly vasodilation?$x$, $x$Halothane$x$, $x$✅ Correct answer: Halothane
HALOTHANE directly DEPRESSES heart muscle CONTRACTILITY in a dose-dependent way (a negative inotropic effect), lowering cardiac output and BP. Newer agents (isoflurane, desflurane, sevoflurane) lower BP mainly by VASODILATION, with less direct heart depression.

❌ Why the other options are wrong:
• Isoflurane — Isoflurane mainly causes vasodilation.
• Desflurane — Desflurane mainly causes vasodilation (and can raise heart rate).
• Sevoflurane at low concentrations — Sevoflurane at low doses causes mild vasodilation with little heart depression.

⭐ Key point: Halothane is the classic answer for myocardial depression, arrhythmias with adrenaline, and hepatitis.$x$, null),
(152, $x$A patient with myasthenia gravis is prescribed neostigmine. The nurse should monitor for:$x$, $x$Cholinergic crisis$x$, $x$✅ Correct answer: Cholinergic crisis
NEOSTIGMINE (an anticholinesterase) increases acetylcholine at the neuromuscular junction, improving muscle strength in myasthenia gravis. Too much causes a CHOLINERGIC CRISIS: excessive acetylcholine leads to WEAKNESS (including the breathing muscles), plus SLUDGE signs (salivation, sweating, diarrhoea), small pupils and a slow pulse.

❌ Why the other options are wrong:
• Neuroleptic malignant syndrome — Neuroleptic malignant syndrome is caused by antipsychotics.
• Thyroid storm — Thyroid storm is a thyroid emergency.
• Serotonin syndrome — Serotonin syndrome is caused by serotonergic drugs.

⭐ Key point: Myasthenic crisis (too little drug) and cholinergic crisis (too much) both cause weakness. SLUDGE signs suggest cholinergic crisis.$x$, null),
(153, $x$A thyroidectomy patient complains of palpitations and anxiety preoperatively. The nurse should administer:$x$, $x$Propanolol$x$, $x$✅ Correct answer: Propanolol
Before thyroid surgery, palpitations and anxiety come from excess thyroid hormone stimulating the sympathetic system (like adrenaline). PROPRANOLOL (a non-selective beta-blocker) controls these symptoms: it slows the heart rate, reduces tremor and anxiety, and also reduces conversion of T4 to active T3.

❌ Why the other options are wrong:
• Dopamine — Dopamine would increase heart rate and palpitations.
• Adrenaline — Adrenaline would worsen palpitations and anxiety.
• Morphine — Morphine doesn't treat the cause and could depress breathing.

⭐ Key point: Patients should be euthyroid before thyroid surgery, to prevent thyroid storm.$x$, null),
(154, $x$Which of the following is not an ideal characteristic of a volatile anaesthetic agent?$x$, $x$Flammable$x$, $x$✅ Correct answer: Flammable
An ideal volatile anaesthetic would be pleasant to breathe, cheap, NON-FLAMMABLE, stable, have a fast onset and recovery, cause minimal side effects, and be safe for all ages. FLAMMABILITY is dangerous (fires and explosions in theatre, as with old agents like ether and cyclopropane), so it isn't an ideal characteristic.

❌ Why the other options are wrong:
• Odourless or pleasant to inhale — Being odourless or pleasant to inhale IS ideal (for gas induction).
• Cheap to manufacture — Being cheap IS ideal.
• Safe for all ages and in pregnancy — Being safe for all ages and in pregnancy IS ideal.

⭐ Key point: Modern volatile agents (sevoflurane, desflurane, isoflurane) are non-flammable.$x$, null),
(155, $x$The concentration of inhalational anaesthetic at which a patient responds purposefully to verbal command during emergence is referred to as:$x$, $x$MAC-awake$x$, $x$✅ Correct answer: MAC-awake
MAC-AWAKE is the concentration of inhaled anaesthetic at which 50% of patients open their eyes or respond PURPOSEFULLY to a VERBAL COMMAND during emergence. It is about 0.3–0.5 times the standard MAC. It helps understand awareness and recovery.

❌ Why the other options are wrong:
• MAC95 — MAC95 is the concentration that prevents movement to incision in 95% of patients.
• Blood-gas MAC — "Blood-gas MAC" isn't a standard term.
• MAC-BAR — MAC-BAR is the concentration that blocks the adrenergic (stress) response to incision.

⭐ Key point: Standard MAC = the concentration preventing movement to surgical incision in 50% of patients.$x$, null),
(156, $x$A patient on dopamine at 15 mcg/kg/min is likely to experience:$x$, $x$Vasoconstriction$x$, $x$✅ Correct answer: Vasoconstriction
Dopamine's effects depend on the dose. Low dose (1–5 mcg/kg/min): dopamine receptors. Medium (5–10): beta-1 receptors (increased contractility and heart rate). HIGH dose (above 10 mcg/kg/min, such as 15): ALPHA receptors, causing VASOCONSTRICTION (raised SVR and BP), which can reduce blood flow to the limbs and organs.

❌ Why the other options are wrong:
• Bronchospasm — Bronchospasm isn't a typical dopamine effect.
• Renal artery dilation — Renal artery dilation is the old idea of a LOW-dose effect (not proven to protect the kidneys).
• Hyperglycemia — Hyperglycaemia isn't the main dose-related effect.

⭐ Key point: Noradrenaline is now preferred over dopamine for septic shock (fewer arrhythmias).$x$, null),
(157, $x$Rocuronium-induced neuromuscular block can be rapidly reversed by:$x$, $x$Sugammadex$x$, $x$✅ Correct answer: Sugammadex
SUGAMMADEX is a modified cyclodextrin that ENCAPSULATES (binds and traps) rocuronium (and vecuronium) molecules in the blood, quickly reversing even DEEP neuromuscular block within minutes. It works much faster and more reliably than neostigmine.

❌ Why the other options are wrong:
• Neostigmine alone at any depth of block — Neostigmine works only for SHALLOW block (when some recovery has begun), not at any depth.
• Suxamethonium — Suxamethonium is a muscle relaxant, not a reversal agent.
• Dantrolene — Dantrolene treats malignant hyperthermia.

⭐ Key point: Sugammadex is also used in "can't intubate, can't oxygenate" situations after rocuronium. It may reduce hormonal contraceptive effectiveness.$x$, null),
(158, $x$A patient on heparin has platelets falling by more than 50% with new thrombosis. The nurse expects to:$x$, $x$Stop all heparin, including flushes, and start a non-heparin anticoagulant$x$, $x$✅ Correct answer: Stop all heparin, including flushes, and start a non-heparin anticoagulant
A platelet fall of more than 50% with NEW THROMBOSIS while on heparin suggests HEPARIN-INDUCED THROMBOCYTOPENIA (HIT). STOP ALL HEPARIN immediately, including heparin flushes and heparin-coated lines, and start a NON-HEPARIN anticoagulant (argatroban, fondaparinux, bivalirudin) to treat and prevent clots.

❌ Why the other options are wrong:
• Give a platelet transfusion and keep the heparin — Platelet transfusion can worsen clotting in HIT, and continuing heparin is dangerous.
• Switch to low molecular weight heparin injections — LMWH cross-reacts with HIT antibodies and must also be avoided.
• Increase the heparin dose to treat the new clot — More heparin would make HIT worse.

⭐ Key point: HIT causes CLOTS, not bleeding. It typically appears 5–10 days after starting heparin.$x$, null),
(159, $x$In shockable cardiac arrest, the first dose of amiodarone is:$x$, $x$300 mg IV after the third shock$x$, $x$✅ Correct answer: 300 mg IV after the third shock
In shockable cardiac arrest (VF or pulseless VT), give AMIODARONE 300 mg IV AFTER the THIRD shock. A further 150 mg may be given after the fifth shock. It helps stabilise the heart rhythm and improve the chance of successful defibrillation.

❌ Why the other options are wrong:
• 50 mg IV after every shock — 50 mg after every shock isn't the regimen.
• 900 mg IV after the first shock — 900 mg after the first shock is far too much and too early.
• 150 mg IV before the first shock — 150 mg before the first shock is the wrong dose and timing.

⭐ Key point: Give adrenaline 1 mg after the third shock as well, then every 3–5 minutes.$x$, null),
(160, $x$Once-daily dosing of gentamicin is used because aminoglycosides:$x$, $x$Kill bacteria in a concentration-dependent way$x$, $x$✅ Correct answer: Kill bacteria in a concentration-dependent way
Aminoglycosides (gentamicin) kill bacteria in a CONCENTRATION-DEPENDENT way: higher peak levels kill more bacteria. They also have a "post-antibiotic effect" (bacteria stay suppressed after levels fall). Once-daily dosing gives a high peak (better killing) and a low trough (less kidney and ear toxicity, because the drug has time to clear).

❌ Why the other options are wrong:
• Are not toxic to the kidney or ear — Aminoglycosides ARE toxic to the kidneys and ears.
• Are best given as a continuous infusion — Continuous infusion isn't used; it would keep levels constantly raised and increase toxicity.
• Kill bacteria in a time-dependent way only — Time-dependent killing applies to beta-lactams (penicillins, cephalosporins), not aminoglycosides.

⭐ Key point: Check gentamicin levels and kidney function, and adjust the dosing interval in kidney impairment.$x$, null),
(161, $x$A nursing manager is using a concurrent audit to identify potential issues with patient care. The advantage of a concurrent audit is that it allows for:$x$, $x$Immediate intervention to correct a problem$x$, $x$✅ Correct answer: Immediate intervention to correct a problem
A CONCURRENT audit is done WHILE the patient is still receiving care. Its main advantage is that problems can be found and CORRECTED IMMEDIATELY, before the patient is harmed or discharged.

❌ Why the other options are wrong:
• The collection of a large amount of data from many patients at once — Collecting lots of data from many patients at once suits a retrospective audit.
• A review of care after the patient has been discharged — Reviewing after discharge is a RETROSPECTIVE audit.
• A historical analysis of care over a long period — Historical analysis over a long period is retrospective.

⭐ Key point: Concurrent audits help real-time quality improvement; retrospective audits show long-term patterns.$x$, null),
(162, $x$A ward sister reviews a currently admitted patient's chart mid-treatment to check whether nursing care so far meets set standards, allowing immediate correction if needed. This exemplifies:$x$, $x$Concurrent audit$x$, $x$✅ Correct answer: Concurrent audit
Reviewing a CURRENTLY ADMITTED patient's chart DURING treatment to check whether care meets standards, so corrections can be made IMMEDIATELY, is a CONCURRENT AUDIT.

❌ Why the other options are wrong:
• Retrospective audit — A retrospective audit reviews care AFTER discharge.
• Risk transfer — Risk transfer is a risk management strategy (such as insurance).
• Sentinel event review — A sentinel event review investigates a serious incident.

⭐ Key point: Audit types: concurrent (during care), retrospective (after care), prospective (before care, policy review).$x$, null),
(163, $x$He was the first to systematically describe management behaviour and also pioneered the identification of the principles and skills that underlie effective management.$x$, $x$Henri Fayol$x$, $x$✅ Correct answer: Henri Fayol
HENRI FAYOL (a French mining engineer, 1841–1925) was the first to systematically describe management behaviour. He identified the FUNCTIONS of management (planning, organising, commanding, coordinating, controlling) and 14 PRINCIPLES of management (division of labour, authority, discipline, unity of command and others). He is called the father of modern (administrative) management.

❌ Why the other options are wrong:
• F. Taylor — F. Taylor is the father of SCIENTIFIC management (efficiency, time-and-motion studies).
• Max waber — Max Weber developed the theory of BUREAUCRACY.
• Gashinge et all. — "Gashinge et al." isn't a recognised management theorist.

⭐ Key point: Classical management theorists: Taylor (scientific), Fayol (administrative), Weber (bureaucratic).$x$, null),
(164, $x$Which leadership style is most appropriate during cardiopulmonary resuscitation?$x$, $x$Autocratic$x$, $x$✅ Correct answer: Autocratic
During CPR, decisions must be made quickly and tasks coordinated precisely. The AUTOCRATIC (directive) leadership style, with one team leader giving clear, direct instructions, is most effective in this emergency. Team members follow instructions while giving feedback (closed-loop communication).

❌ Why the other options are wrong:
• Laissez-faire — Laissez-faire gives little direction, which is dangerous in an emergency.
• Transformational — Transformational leadership is best for long-term change and motivation, not emergencies.
• Democratic — Democratic leadership takes time for discussion, which isn't possible in CPR.

⭐ Key point: Good resuscitation leaders stay "hands off", watch the whole picture, and assign clear roles.$x$, null),
(165, $x$A competent patient's living will refuses aggressive cancer treatment, but the physician insists on chemotherapy for the patient's benefit. The physician is exercising:$x$, $x$Paternalism$x$, $x$✅ Correct answer: Paternalism
PATERNALISM is overriding a competent patient's known wishes "for their own good". The patient's living will REFUSES aggressive cancer treatment, but the physician insists on chemotherapy for the patient's benefit. This overrides the patient's AUTONOMY, which is paternalism.

❌ Why the other options are wrong:
• Veracity — Veracity means truthfulness.
• Ideal beneficence — "Ideal beneficence" isn't a standard term; real beneficence respects the patient's values.
• Respect for autonomy — Respect for autonomy would mean honouring the living will.

⭐ Key point: A competent patient's valid refusal (including an advance directive) must be respected.$x$, null),
(166, $x$The Critical care unit manager as an overall seer of the unit activities can employed one of the following as a principle of organizing the unit to achieve the organizational objectives.$x$, $x$Balance$x$, $x$✅ Correct answer: Balance
The unit manager organises the ICU to meet its objectives using principles of organising. BALANCE is one such principle: keeping activities, staff, workload and resources in proportion (for example, balancing skill mix, patient acuity and staff numbers across shifts) so the unit runs smoothly.

❌ Why the other options are wrong:
• Planning — Planning is a management FUNCTION, not an organising principle.
• Directing — Directing is a management FUNCTION.
• Motivation — Motivation is part of directing, not an organising principle.

⭐ Key point: Other organising principles: unity of command, span of control, division of work, and delegation.$x$, null),
(167, $x$Which level of management is responsible for implementing programs that are intended to carry out the broader objectives of an organization set by executives?$x$, $x$middle managers$x$, $x$✅ Correct answer: middle managers
MIDDLE MANAGERS (such as departmental heads or nursing service managers) translate the broad goals set by top executives into specific PROGRAMMES and PLANS, and oversee first-line managers who carry them out.

❌ Why the other options are wrong:
• chief financial managers — Chief financial managers are part of top management.
• first level managers — First-level managers (such as ward sisters) supervise day-to-day operations.
• supervisory managers — Supervisory managers are first-line managers.

⭐ Key point: Levels of management: top (strategic), middle (tactical, implementing programmes), first-line (operational, day-to-day).$x$, null),
(168, $x$Conflict arising from unclear or overlapping job expectations between two staff members is known as:$x$, $x$Role conflict$x$, $x$✅ Correct answer: Role conflict
ROLE CONFLICT arises when job expectations are UNCLEAR, OVERLAPPING or contradictory, so two staff members don't know who is responsible for what, or are expected to do incompatible things. Clear job descriptions and role definitions help prevent it.

❌ Why the other options are wrong:
• Distributive conflict — Distributive conflict is about dividing limited resources.
• Intrapersonal conflict — Intrapersonal conflict is within one person (inner conflict).
• Intragroup conflict — Intragroup conflict is between members of the same group, often over goals or personalities, not specifically unclear roles.

⭐ Key point: Resolve conflict early: clarify roles, communicate openly, and use collaborative problem-solving.$x$, null),
(169, $x$A hospital's quality assurance team is performing a prospective audit. This audit would involve:$x$, $x$Reviewing and establishing new policies and procedures before they are implemented$x$, $x$✅ Correct answer: Reviewing and establishing new policies and procedures before they are implemented
A PROSPECTIVE audit looks FORWARD: it reviews and evaluates new policies, procedures and plans BEFORE they are implemented, to make sure they are sound and will meet standards. It helps prevent problems before they happen.

❌ Why the other options are wrong:
• Reviewing the outcomes of a patient's treatment after they leave the hospital — Reviewing outcomes after discharge is a retrospective audit.
• Examining the care provided to a patient in real-time — Real-time review during care is a concurrent audit.
• Analyzing a patient's chart after a critical event has occurred — Analysing a chart after a critical event is a retrospective review.

⭐ Key point: Prospective = before; concurrent = during; retrospective = after.$x$, null),
(170, $x$As an ICU manager you are aware that a formal document that most supervisors or managers keep for future reference is called$x$, $x$Incident report$x$, $x$✅ Correct answer: Incident report
An INCIDENT REPORT is a formal document recording an unexpected event (an error, fall, near miss, equipment failure) with the facts, time, people involved, and actions taken. Supervisors and managers keep it for FUTURE REFERENCE: analysis, learning, risk management and possible legal use.

❌ Why the other options are wrong:
• Incident reporting — "Incident reporting" is the process, not the document itself.
• Report writing — Report writing is a general skill.
• Incident writing — "Incident writing" isn't a recognised term.

⭐ Key point: Incident reports are NOT kept in the patient's notes. Record the facts of the event and care given in the notes.$x$, null),
(171, $x$The type of audit that involves reviewing a patient's chart while they are still in the hospital is called a:$x$, $x$Concurrent audit$x$, $x$✅ Correct answer: Concurrent audit
A CONCURRENT audit reviews a patient's chart and care WHILE the patient is STILL IN HOSPITAL receiving care. This allows problems to be identified and corrected in real time.

❌ Why the other options are wrong:
• Outcome audit — An outcome audit focuses on results of care.
• Prospective audit — A prospective audit evaluates policies before implementation.
• Retrospective audit — A retrospective audit reviews charts after discharge.

⭐ Key point: Concurrent auditing can include direct observation, interviews and chart review.$x$, null),
(172, $x$The last function in the sequence, which culminates in the attainment of organization objectives, is:$x$, $x$controlling$x$, $x$✅ Correct answer: controlling
The functions of management: PLANNING, ORGANISING, (staffing), DIRECTING (leading, coordinating), and CONTROLLING. CONTROLLING is the LAST function: it measures performance, compares it with standards and objectives, and corrects deviations, so the organisation attains its objectives. It then feeds back into new planning.

❌ Why the other options are wrong:
• coordinating — Coordinating comes before controlling.
• organizing — Organising is the second function.
• planning — Planning is the FIRST function.

⭐ Key point: Controlling tools include audits, budgets, performance appraisals and quality indicators.$x$, null),
(173, $x$The Belmont Report's 3 core ethical principles are:$x$, $x$Autonomy, Beneficence, Justice$x$, $x$✅ Correct answer: Autonomy, Beneficence, Justice
The BELMONT REPORT (1979, USA) set out three core ethical principles for research involving people: 1) RESPECT FOR PERSONS (AUTONOMY: informed consent, protecting vulnerable people), 2) BENEFICENCE (maximise benefits, minimise harm), 3) JUSTICE (fair selection of participants, fair sharing of the burdens and benefits of research).

❌ Why the other options are wrong:
• Honesty, Accuracy, Transparency — Honesty, accuracy and transparency are research integrity values, not the Belmont principles.
• Consent, Privacy, Fairness — Consent, privacy and fairness are related ideas, but not the three principles.
• Safety, Dignity, Respect — Safety, dignity and respect are general values.

⭐ Key point: Ethical research needs informed consent, an ethics committee approval, confidentiality, and the right to withdraw.$x$, null),
(174, $x$Which management principle promotes employee participation in decision-making?$x$, $x$Decentralization$x$, $x$✅ Correct answer: Decentralization
DECENTRALISATION spreads decision-making authority DOWN to lower levels of the organisation (unit managers, staff nurses). This promotes employee PARTICIPATION in decisions, faster local decisions, and staff motivation.

❌ Why the other options are wrong:
• Discipline — Discipline means respect for rules and agreements.
• Centralization — Centralisation keeps decision-making at the TOP.
• Unity of command — Unity of command means each employee has one boss.

⭐ Key point: Shared governance in nursing is a form of decentralised decision-making.$x$, null),
(175, $x$Which document outlines the duties and responsibilities of a staff nurse?$x$, $x$Job description$x$, $x$✅ Correct answer: Job description
A JOB DESCRIPTION is a formal document that outlines the DUTIES, RESPONSIBILITIES, qualifications, reporting relationships and working conditions of a specific job, such as a staff nurse. It guides practice, recruitment and performance appraisal.

❌ Why the other options are wrong:
• Nursing care plan — A nursing care plan outlines care for a specific patient.
• Ward report — A ward report communicates the state of the ward.
• Duty roster — A duty roster shows staff work schedules.

⭐ Key point: Job descriptions should be reviewed regularly and given to new staff at induction.$x$, null),
(176, $x$Clinical audit in the ICU is an important part of:$x$, $x$Clinical governance$x$, $x$✅ Correct answer: Clinical governance
CLINICAL AUDIT is a key part of CLINICAL GOVERNANCE, the framework through which health services ensure high-quality, safe care and remain accountable. Other parts include risk management, education and training, research and evidence-based practice, patient involvement, and staff management.

❌ Why the other options are wrong:
• Building maintenance — Building maintenance isn't clinical governance.
• Payroll management — Payroll management isn't clinical governance.
• Hospital marketing — Hospital marketing isn't clinical governance.

⭐ Key point: The audit cycle: set a standard, measure practice, compare, make changes, and re-audit.$x$, null),
(177, $x$Which handover practice is most likely to improve safety in ICU?$x$, $x$A structured bedside handover with a checklist$x$, $x$✅ Correct answer: A structured bedside handover with a checklist
A STRUCTURED BEDSIDE handover with a CHECKLIST improves safety. Using a structured format (such as SBAR) makes sure important information isn't missed. At the bedside, both nurses can see the patient and check lines, pumps, drains, the ventilator and alarms together.

❌ Why the other options are wrong:
• Skipping handover when the unit is busy — Skipping handover leads to errors and missed information.
• Handing over by text message only — Text messages are incomplete, insecure and risk confidentiality breaches.
• A quick corridor chat with no notes — A quick corridor chat misses details and breaches confidentiality.

⭐ Key point: Poor communication at handover is a leading cause of adverse events.$x$, null),
(178, $x$A 'par level' stock system in ICU ensures that:$x$, $x$A minimum stock of each item is kept at all times$x$, $x$✅ Correct answer: A minimum stock of each item is kept at all times
A "PAR LEVEL" system sets a MINIMUM stock level for each item (drugs, consumables) in the unit. When stock falls to this level, it is reordered. This ensures items are ALWAYS AVAILABLE, preventing shortages of emergency drugs and supplies.

❌ Why the other options are wrong:
• Each nurse buys their own supplies — Nurses don't buy their own supplies.
• Items are ordered only after they run out — Ordering only after items run out causes dangerous shortages.
• Expired stock is used first — Using expired stock is unsafe; use the oldest in-date stock first (FIFO).

⭐ Key point: Check emergency trolley stock and expiry dates daily.$x$, null),
(179, $x$Buying a new ventilator for the ICU falls under the:$x$, $x$Capital budget$x$, $x$✅ Correct answer: Capital budget
A new ventilator is an expensive, long-lasting piece of equipment (lasting many years). It falls under the CAPITAL BUDGET, which covers major purchases (equipment, buildings, renovations) that cost a lot and last a long time.

❌ Why the other options are wrong:
• Petty cash budget — Petty cash covers small, everyday expenses.
• Operating budget — The operating budget covers recurring costs (consumables, utilities, drugs).
• Personnel budget — The personnel budget covers staff salaries and benefits.

⭐ Key point: Capital purchases usually need a business case justifying the need and benefits.$x$, null),
(180, $x$The ABCDEF bundle used in ICU is mainly aimed at:$x$, $x$Reducing delirium, weakness and time on the ventilator$x$, $x$✅ Correct answer: Reducing delirium, weakness and time on the ventilator
The ABCDEF bundle aims to reduce ICU DELIRIUM, ICU-acquired WEAKNESS, and TIME ON THE VENTILATOR. A: Assess, prevent and manage pain. B: Both spontaneous awakening and breathing trials (SAT and SBT). C: Choice of analgesia and sedation. D: Delirium assessment, prevention and management. E: Early mobility and exercise. F: Family engagement and empowerment.

❌ Why the other options are wrong:
• Increasing the use of physical restraints — The bundle REDUCES restraints.
• Shortening the family visiting hours — It encourages family involvement, not shorter visiting.
• Reducing staff numbers on night shifts — It isn't about reducing staff numbers.

⭐ Key point: Using the full bundle is linked to better survival, less delirium and fewer ventilator days.$x$, null),
(181, $x$Which contrast media type is preferred in high-risk patients such as those with renal failure, cardiac failure, or diabetes mellitus?$x$, $x$Non-ionic (Low Osmolar) contrast media$x$, $x$✅ Correct answer: Non-ionic (Low Osmolar) contrast media
In high-risk patients (kidney failure, heart failure, diabetes, dehydration), NON-IONIC LOW-OSMOLAR contrast media (LOCM) are preferred. They have lower osmolality and don't break into charged particles, so they cause fewer side effects, less contrast-induced kidney injury, and fewer allergic-type reactions than ionic high-osmolar agents.

❌ Why the other options are wrong:
• Barium sulfate only — Barium is used for GI studies, not IV contrast.
• Ionic (High Osmolar) contrast media — Ionic high-osmolar contrast causes MORE side effects.
• No contrast is ever needed in high-risk patients — Contrast can still be used in high-risk patients if needed, with precautions.

⭐ Key point: Also hydrate well, use the lowest dose, stop nephrotoxic drugs, and check creatinine after contrast.$x$, null),
(182, $x$A nurse assesses a client's exercise habits, activities of daily living, and any factors that interfere with the client's desired activity level (such as dyspnea or chest pain). This corresponds to which Gordon functional health pattern?$x$, $x$Activity-exercise pattern$x$, $x$✅ Correct answer: Activity-exercise pattern
Gordon's ACTIVITY-EXERCISE pattern assesses the patient's exercise habits, activities of daily living (ADLs), leisure activities, and factors that limit activity (breathlessness, chest pain, fatigue, weakness).

❌ Why the other options are wrong:
• Self-perception-self-concept pattern — The self-perception–self-concept pattern assesses how the patient views themselves.
• Nutritional-metabolic pattern — The nutritional-metabolic pattern assesses diet, fluid and metabolism.
• Sleep-rest pattern — The sleep-rest pattern assesses sleep and rest.

⭐ Key point: Gordon's 11 functional health patterns give a complete, holistic nursing assessment.$x$, null),
(183, $x$A researcher writes: 'What are the lived experiences of family members of patients admitted to the ICU?' This is best classified as a$x$, $x$Qualitative research question$x$, $x$✅ Correct answer: Qualitative research question
An open-ended question exploring "LIVED EXPERIENCES" (what it is like for family members) is a QUALITATIVE RESEARCH QUESTION. Qualitative research explores meanings, feelings and experiences using interviews and observation, not numbers. This type of question suits phenomenology.

❌ Why the other options are wrong:
• Null hypothesis — A null hypothesis states there is no difference or relationship.
• Statistical hypothesis requiring inferential testing — A statistical hypothesis needs numbers and testing.
• Directional hypothesis — A directional hypothesis predicts the direction of a relationship.

⭐ Key point: Qualitative research asks "what", "how" and "why" about experiences. Quantitative research measures and tests.$x$, null),
(184, $x$A researcher wants to explore in depth the coping strategies of five ICU nurses who have personally experienced a patient's cardiac arrest during their shift, deliberately selecting nurses with this specific experience. This is an example of$x$, $x$Purposive sampling$x$, $x$✅ Correct answer: Purposive sampling
PURPOSIVE sampling means DELIBERATELY choosing participants who have specific knowledge or experience relevant to the research question (here, nurses who have experienced a patient's cardiac arrest). It is common in qualitative research.

❌ Why the other options are wrong:
• Simple random sampling — Simple random sampling gives everyone an equal chance of selection.
• Cluster sampling — Cluster sampling randomly selects whole groups.
• Systematic sampling — Systematic sampling selects every kth person.

⭐ Key point: Qualitative studies use small, information-rich samples; quantitative studies use larger, random samples to generalise.$x$, null),
(185, $x$Per current evidence-based critical care nutrition guidance, gastric residual volume (GRV) monitoring should generally prompt the nurse to hold or reassess feeding when the volume exceeds approximately:$x$, $x$500 mL$x$, $x$✅ Correct answer: 500 mL
Current critical care nutrition guidelines suggest holding or reassessing enteral feeding when the gastric residual volume (GRV) is above about 500 mL (in 6 hours), unless there are other signs of intolerance. Stopping feeds for smaller volumes leads to underfeeding without reducing pneumonia.

❌ Why the other options are wrong:
• 50 mL — 50 mL is far too low a threshold.
• 1500 mL — 1500 mL is far too high.
• GRV should never be checked regardless of volume — GRV may still be checked as per local policy; some units no longer routinely check it.

⭐ Key point: If GRV is high: use prokinetics (metoclopramide, erythromycin), check the head-of-bed elevation, consider post-pyloric feeding.$x$, null),
(186, $x$Mr Zee says his heart pounds and he is short of breath on the stairs. The nurse then auscultates the heart and checks the pulse. The nurse is:$x$, $x$Validating data$x$, $x$✅ Correct answer: Validating data
Mr Zee REPORTS (subjective data) a pounding heart and breathlessness. The nurse then auscultates the heart and checks the pulse (objective data) to CONFIRM the complaint. Checking that data are accurate by comparing subjective and objective information is VALIDATING DATA.

❌ Why the other options are wrong:
• Collecting data — Collecting data is gathering information; this step goes further to confirm it.
• Processing data into information — Processing data into information is analysis.
• Organising data — Organising data is grouping it into categories.

⭐ Key point: Validation prevents errors in nursing diagnosis, for example confirming a pain complaint with observation.$x$, null),
(187, $x$A nurse reviewing an electronic health record to identify a client's past surgical history and allergies is using which source and method of data collection?$x$, $x$Secondary source, record review method$x$, $x$✅ Correct answer: Secondary source, record review method
The electronic health record is a SECONDARY SOURCE of data (information not obtained directly from the patient). Reviewing it to find past surgical history and allergies is the RECORD REVIEW method of data collection.

❌ Why the other options are wrong:
• Secondary source, physical examination method — Physical examination is a method used with the patient (a primary source), not the record.
• Primary source, observation method — Observation of the patient is a primary source method.
• Primary source, interview method — Interviewing the patient is a primary source method.

⭐ Key point: The patient is the PRIMARY source. Family, records, and other professionals are SECONDARY sources.$x$, null),
(188, $x$A patient's marital status (single, married, divorced, widowed) recorded in a research questionnaire is measured on which scale?$x$, $x$Nominal$x$, $x$✅ Correct answer: Nominal
Marital status (single, married, divorced, widowed) consists of CATEGORIES with NO natural order or numerical value. This is a NOMINAL scale.

❌ Why the other options are wrong:
• Ratio — Ratio scales have equal intervals and a true zero (such as weight).
• Ordinal — Ordinal scales have ordered categories (such as pain mild, moderate, severe).
• Interval — Interval scales have equal intervals without a true zero (such as temperature in °C).

⭐ Key point: Nominal data are summarised with counts and percentages, and analysed with chi-square tests.$x$, null),
(189, $x$Which of the following data collection methods relies most heavily on the nurse's use of the senses (sight, hearing, smell, touch) without direct questioning of the client?$x$, $x$Observation$x$, $x$✅ Correct answer: Observation
OBSERVATION uses the nurse's SENSES (sight, hearing, smell, touch) to gather data about the patient WITHOUT asking questions, for example noticing skin colour, breathing pattern, facial expressions, smells (ketones, infection) and sounds (wheeze).

❌ Why the other options are wrong:
• Consultation with the physician — Consultation with the physician gathers information from another professional.
• Chart review — Chart review uses written records.
• Interview — An interview involves questioning the patient.

⭐ Key point: Assessment methods: observation, interview, physical examination (inspection, palpation, percussion, auscultation) and record review.$x$, null),
(190, $x$______ describes the present state of affairs as it exists without having any control over variables.$x$, $x$Descriptive research$x$, $x$✅ Correct answer: Descriptive research
DESCRIPTIVE research describes the PRESENT state of affairs, as it exists, WITHOUT CONTROLLING or manipulating any variables. It answers "what is happening?" (such as surveys of nurses' knowledge).

❌ Why the other options are wrong:
• Distinctive research — "Distinctive research" isn't a recognised research type.
• Applied research — Applied research aims to solve practical problems (it can be of any design).
• Analytical research — Analytical research explains relationships and causes, often testing hypotheses.

⭐ Key point: Descriptive studies often come first, identifying problems that later experimental studies can test.$x$, null),
(191, $x$The assessment approach in which the cardiovascular system is assessed before the genito-urinary system is the:$x$, $x$Body systems approach$x$, $x$✅ Correct answer: Body systems approach
The BODY SYSTEMS approach assesses one body SYSTEM at a time (cardiovascular, respiratory, neurological, gastrointestinal, genitourinary and so on). Assessing the cardiovascular system before the genitourinary system follows this approach.

❌ Why the other options are wrong:
• Systematic approach — "Systematic approach" is general and doesn't specify the order by system.
• Cephalocaudal approach — The cephalocaudal (head-to-toe) approach examines from head down, by body region.
• Approach by order of priority — The order-of-priority approach assesses the most urgent problems first (ABCDE).

⭐ Key point: ICU assessment often combines ABCDE (priority) with a systems review (body systems).$x$, null),
(192, $x$A literature review that is organized by grouping studies according to recurring topics or findings, rather than simply listing them chronologically, is following a$x$, $x$Thematic organization approach$x$, $x$✅ Correct answer: Thematic organization approach
A THEMATIC organisation groups studies by recurring THEMES or topics (such as "barriers to pain assessment" or "nurse education"), comparing and contrasting their findings. It gives a clearer, more analytical literature review than listing studies one by one in date order.

❌ Why the other options are wrong:
• Random and unstructured approach — A random, unstructured approach lacks clarity.
• Purely alphabetical listing with no analysis — An alphabetical list with no analysis doesn't synthesise the literature.
• Approach that ignores all study findings — Ignoring study findings defeats the purpose of a review.

⭐ Key point: A good literature review summarises, compares, critiques, and identifies gaps that the new study will address.$x$, null),
(193, $x$Before a data collection tool (such as a questionnaire) is used in the main study, it should first undergo:$x$, $x$Pilot testing to check its clarity, validity, and reliability$x$, $x$✅ Correct answer: Pilot testing to check its clarity, validity, and reliability
Before a data collection tool (questionnaire) is used in the main study, it should be PILOT TESTED on a small group similar to the study population. This checks that the questions are CLEAR and understood, that the tool is VALID (measures what it should) and RELIABLE (consistent), and how long it takes. Problems are fixed before the main study.

❌ Why the other options are wrong:
• Immediate distribution to all participants without review — Distributing without review risks poor-quality data.
• Full statistical analysis of anticipated results — Statistical analysis is done after data collection.
• Translation into as many languages as possible regardless of relevance — Translation is only needed where relevant to the population.

⭐ Key point: Pilot study participants are usually not included in the main study.$x$, null),
(194, $x$A survey of ICU nurses' knowledge and attitudes toward pain assessment in non-verbal patients, without any intervention, best exemplifies a$x$, $x$Descriptive research design$x$, $x$✅ Correct answer: Descriptive research design
A survey that DESCRIBES nurses' existing knowledge and attitudes WITHOUT any intervention or manipulation is a DESCRIPTIVE research design. It shows the current situation.

❌ Why the other options are wrong:
• Quasi-experimental research design with two groups — A quasi-experimental design involves an intervention without random assignment.
• True experimental research design — A true experiment involves an intervention with random assignment and a control group.
• Case-control design — A case-control design compares people with and without an outcome to find causes.

⭐ Key point: Descriptive surveys are often used to identify education needs before an intervention study.$x$, null),
(195, $x$A jejunal (post-pyloric) feeding tube is generally preferred over a gastric feeding tube in which situation?$x$, $x$A patient with gastroparesis or a high risk of aspiration$x$, $x$✅ Correct answer: A patient with gastroparesis or a high risk of aspiration
A post-pyloric (jejunal) feeding tube places feed BEYOND the stomach, into the small bowel. It is preferred when the stomach empties poorly (GASTROPARESIS) or the patient has a HIGH RISK OF ASPIRATION (repeated vomiting, reflux, high gastric residuals), because feed is less likely to reflux into the lungs.

❌ Why the other options are wrong:
• A patient with a normal swallow evaluation — A normal swallow means oral or gastric feeding is fine.
• A patient with normal gastric emptying and low aspiration risk — Normal gastric emptying and low aspiration risk mean gastric feeding is fine.
• A patient who will be extubated within 24 hours — A patient about to be extubated may soon eat orally.

⭐ Key point: Post-pyloric tubes are placed endoscopically, under fluoroscopy, or with special bedside techniques. Confirm position by X-ray.$x$, null),
(196, $x$Ionic (High Osmolar) contrast media, compared to non-ionic (Low Osmolar) contrast media, are associated with:$x$, $x$More side effects but lower cost$x$, $x$✅ Correct answer: More side effects but lower cost
IONIC (high-osmolar) contrast media break into charged particles and are much more concentrated than blood. They cause MORE SIDE EFFECTS (pain, heat, nausea, allergic-type reactions, kidney injury) than non-ionic low-osmolar agents, but are CHEAPER.

❌ Why the other options are wrong:
• No side effects at any dose — Non-ionic low-osmolar agents have fewer side effects and a higher cost; this option describes those.
• Fewer side effects and higher cost — All contrast can cause side effects.
• Identical side-effect profile and cost — They don't have identical side effects or cost.

⭐ Key point: Most hospitals now use non-ionic low-osmolar contrast for IV studies because it is safer.$x$, null),
(197, $x$ICU-acquired weakness is best reduced by:$x$, $x$Early mobilisation and minimising sedation$x$, $x$✅ Correct answer: Early mobilisation and minimising sedation
ICU-acquired weakness is reduced by EARLY MOBILISATION (passive then active exercises, sitting, standing, walking as soon as safe) and MINIMISING SEDATION (so patients can take part). Physiotherapy can start safely even in ventilated patients.

❌ Why the other options are wrong:
• Routine deep sedation for all patients — Deep sedation increases weakness.
• Strict bed rest until ICU discharge — Strict bed rest increases weakness.
• Higher doses of steroids — Steroids can CAUSE muscle weakness (steroid myopathy).

⭐ Key point: Also: control glucose, give adequate nutrition, and avoid prolonged muscle relaxants.$x$, null),
(198, $x$In an electronic health record, an audit trail is used to:$x$, $x$Record who accessed or changed each record and when$x$, $x$✅ Correct answer: Record who accessed or changed each record and when
An AUDIT TRAIL in an electronic health record automatically RECORDS WHO accessed or changed each record, WHAT they did, and WHEN. It supports confidentiality (detecting inappropriate access) and accountability (tracking changes).

❌ Why the other options are wrong:
• Speed up the hospital computer system — It doesn't speed up the computer system.
• Print discharge summaries automatically — It doesn't print discharge summaries.
• Delete old patient files automatically — It doesn't delete files.

⭐ Key point: Only access records of patients you are caring for. Inappropriate access is detected through audit trails.$x$, null),
(199, $x$A potassium result of 6.9 mmol/L comes back from a difficult blood draw in a patient with a normal ECG. The nurse should suspect:$x$, $x$A haemolysed sample; arrange a repeat sample$x$, $x$✅ Correct answer: A haemolysed sample; arrange a repeat sample
A very high potassium (6.9) from a DIFFICULT blood draw, with a NORMAL ECG, suggests a HAEMOLYSED sample. When red cells are damaged during collection (a small needle, squeezing, a long tourniquet time, shaking), they release potassium, giving a falsely high result (pseudohyperkalaemia). Arrange a REPEAT sample, while still checking the ECG and the patient.

❌ Why the other options are wrong:
• Normal value for an ICU patient — 6.9 isn't normal for any patient.
• Definite hyperkalaemia; give insulin at once — Giving insulin for a likely false result could cause dangerous hypoglycaemia and hypokalaemia.
• Laboratory error in sodium only — The question is about potassium, not sodium.

⭐ Key point: If the repeat sample confirms high potassium, or the ECG changes, treat urgently.$x$, null),
(200, $x$Procalcitonin is used in ICU mainly to help:$x$, $x$Guide when to stop antibiotics in bacterial infection$x$, $x$✅ Correct answer: Guide when to stop antibiotics in bacterial infection
PROCALCITONIN is a blood marker that rises in BACTERIAL infections (much less in viral infections). In ICU, it is mainly used to help decide WHEN TO STOP antibiotics: falling levels (for example by 80% or more, or below 0.5 ng/mL) support stopping earlier, which reduces antibiotic use and resistance.

❌ Why the other options are wrong:
• Measure kidney function in AKI — It doesn't measure kidney function.
• Monitor anticoagulation with heparin — It doesn't monitor heparin.
• Diagnose an acute myocardial infarction — Troponin, not procalcitonin, is used for MI.

⭐ Key point: Procalcitonin supports, but doesn't replace, clinical judgement in sepsis.$x$, null)
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
