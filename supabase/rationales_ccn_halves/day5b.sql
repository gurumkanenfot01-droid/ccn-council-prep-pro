-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 5, part B (questions 101–200)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
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
select count(distinct n) as "questions updated (should be 100)", count(*) as "rows changed" from upd;
