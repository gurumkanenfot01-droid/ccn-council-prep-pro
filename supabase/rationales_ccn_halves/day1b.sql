-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 1, part B (questions 101–200)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(101, $x$A patient is on a ventilator for respiratory failure. The nurse knows that a high pressure alarm on the ventilator may indicate:$x$, $x$A kinked endotracheal tube or the patient is coughing$x$, $x$✅ Correct answer: A kinked endotracheal tube or the patient is coughing
The high-pressure alarm sounds when the pressure needed to deliver the breath rises above the set limit. Something is blocking or resisting airflow: a kinked or bitten ETT, secretions (needs suction), coughing, the patient fighting the ventilator, bronchospasm, a pneumothorax, or water in the tubing. Check the patient first, then the tube, then the circuit.

❌ Why the other options are wrong:
• A leak in the circuit — A leak in the circuit causes a LOW-pressure alarm (pressure can't build up).
• The patient is disconnected from the ventilator — Disconnection causes a LOW-pressure or low-volume alarm.
• The patient's lung has re-expanded — Re-expansion of the lung would improve compliance and lower pressure, not trigger a high-pressure alarm.

⭐ Key point: HIGH pressure = something blocking (kink, secretions, cough, biting, bronchospasm, pneumothorax). LOW pressure = something leaking (disconnection, cuff leak, circuit leak).$x$, null),
(102, $x$End-tidal CO2 (capnography) waveform loss or a sudden flat waveform in an intubated patient most urgently suggests:$x$, $x$Tube displacement/dislodgement (e.g., esophageal intubation or extubation) or complete obstruction$x$, $x$✅ Correct answer: Tube displacement/dislodgement (e.g., esophageal intubation or extubation) or complete obstruction
Waveform capnography shows CO₂ in every breath. A normal square waveform proves the tube is in the trachea and the patient is being ventilated. A SUDDEN loss or flat line in an intubated patient most urgently means: the tube has come out or moved into the oesophagus (no CO₂ from the lungs), the tube is completely blocked, the circuit has disconnected, or cardiac arrest. Check the patient at once ("no trace = wrong place").

❌ Why the other options are wrong:
• Normal ventilator function — Normal ventilator function would show a regular square waveform, not a flat line.
• Improved lung compliance — Better lung compliance would still show a normal waveform.
• Adequate ventilation — Adequate ventilation shows CO₂ on every breath; a flat line means none is reaching the sensor.

⭐ Key point: Respond with DOPE (Displacement, Obstruction, Pneumothorax, Equipment): check the tube position, the patient's chest movement and the pulse, and hand-ventilate with 100% O₂.$x$, null),
(103, $x$When intubating a patient with suspected cervical spine injury, the recommended technique to protect the spine is:$x$, $x$Manual in-line stabilization with the anterior portion of the cervical collar removed during the procedure$x$, $x$✅ Correct answer: Manual in-line stabilization with the anterior portion of the cervical collar removed during the procedure
In suspected cervical spine injury, the head and neck must not move during intubation. An assistant holds the head in line with the body, using both hands on each side (manual in-line stabilisation, MILS). The FRONT of the hard collar is opened or removed so the mouth can open wide enough for the laryngoscope. Video laryngoscopes help get a good view with less neck movement.

❌ Why the other options are wrong:
• Full neck extension for optimal glottic view — Full neck extension could worsen a spinal injury and cause paralysis.
• Flexion of the neck — Flexing the neck could also move an unstable fracture.
• Leaving the patient fully upright — Sitting the patient upright does not protect the spine and makes intubation harder.

⭐ Key point: Treat every major trauma patient as having a C-spine injury until it is cleared. Use jaw thrust (not head tilt) to open the airway.$x$, null),
(104, $x$Signs of weaning intolerance during a trial include all of the following EXCEPT:$x$, $x$Improved mentation and stable heart rate$x$, $x$✅ Correct answer: Improved mentation and stable heart rate
The question asks which is NOT a sign of failing a weaning trial. Improved mentation (more alert) with a stable heart rate is a GOOD sign that the patient is tolerating the trial. Signs of failure include fast breathing (RR above 35), accessory muscle use, see-saw (paradoxical) breathing, sweating, anxiety or agitation, a rise in HR or BP of more than 20%, falling SpO₂ (below 90%) and rising CO₂.

❌ Why the other options are wrong:
• Use of accessory muscles and paradoxical (abdominal) breathing — Accessory muscle use and paradoxical breathing ARE signs of failure (respiratory muscle fatigue).
• Diaphoresis and anxiety — Sweating (diaphoresis) and anxiety ARE signs of failure.
• Significant increase in heart rate or blood pressure — A significant rise in HR or BP IS a sign of failure.

⭐ Key point: If a spontaneous breathing trial fails, put the patient back on comfortable support, look for the reason (fluid overload, secretions, weakness, low phosphate, sedation), and try again the next day.$x$, null),
(105, $x$If a ventilated patient acutely desaturates and the cause is not immediately identified, an appropriate first-line nursing action while troubleshooting is to:$x$, $x$Disconnect from the ventilator and manually ventilate with a bag-valve device on 100% oxygen while assessing for the cause$x$, $x$✅ Correct answer: Disconnect from the ventilator and manually ventilate with a bag-valve device on 100% oxygen while assessing for the cause
When a ventilated patient suddenly desaturates and you don't know why, take the ventilator out of the problem. DISCONNECT the patient and hand-ventilate with a bag-valve device on 100% oxygen. This checks whether the problem is the ventilator or the patient. Squeezing the bag also tells you about the airway: a hard bag suggests blockage or pneumothorax. Then work through DOPE and call for help.

❌ Why the other options are wrong:
• Leave the patient on the ventilator and wait — Waiting while the patient's oxygen falls can lead to cardiac arrest.
• Immediately extubate — Extubating without a clear reason may remove a working airway and make things worse.
• Turn off all alarms to focus — Alarms are important information; turning them off is unsafe.

⭐ Key point: Keep a bag-valve-mask connected to oxygen at EVERY ventilated patient's bedside, always checked and ready.$x$, null),
(106, $x$Diffusion hypoxia after discontinuing nitrous oxide anaesthesia is best prevented by:$x$, $x$Administering 100% oxygen for several minutes at the end of the case before returning to room air$x$, $x$✅ Correct answer: Administering 100% oxygen for several minutes at the end of the case before returning to room air
Nitrous oxide is very soluble in blood. When it is stopped at the end of anaesthesia, large amounts rush OUT of the blood into the alveoli and dilute the oxygen there. If the patient breathes room air at that moment, the alveolar oxygen can drop dangerously, causing hypoxia (diffusion hypoxia, the Fink effect). Giving 100% oxygen for 5–10 minutes after stopping nitrous oxide prevents this.

❌ Why the other options are wrong:
• Rapidly increasing volatile agent concentration — Increasing the volatile agent deepens anaesthesia and doesn't solve the oxygen dilution.
• Hyperventilating the patient with room air — Hyperventilating with room air would still give low oxygen.
• Administering naloxone — Naloxone reverses opioids; it doesn't prevent diffusion hypoxia.

⭐ Key point: Nitrous oxide also expands gas-filled spaces, so avoid it in pneumothorax, bowel obstruction, middle-ear surgery and air embolism.$x$, null),
(107, $x$A patient develops rapidly rising temperature, severe muscle rigidity, tachycardia, and hypercarbia shortly after receiving succinylcholine. The priority treatment is:$x$, $x$Dantrolene, which reduces calcium release from the sarcoplasmic reticulum$x$, $x$✅ Correct answer: Dantrolene, which reduces calcium release from the sarcoplasmic reticulum
These signs (rapidly rising temperature, muscle rigidity including the jaw, fast heart rate, rising EtCO₂ and acidosis) after suxamethonium or a volatile gas are MALIGNANT HYPERTHERMIA. It is an inherited muscle disorder in which calcium floods out of the muscle stores, causing uncontrolled contraction and heat production. DANTROLENE 2.5 mg/kg IV (repeated as needed) is the specific treatment; it stops the calcium release from the sarcoplasmic reticulum.

❌ Why the other options are wrong:
• Naloxone — Naloxone reverses opioids and has no effect here.
• Neostigmine — Neostigmine reverses non-depolarising muscle relaxants and does not treat MH.
• Flumazenil — Flumazenil reverses benzodiazepines and has no effect here.

⭐ Key point: MH management: stop the trigger, call for help, give 100% oxygen at high flow, give dantrolene, cool the patient, treat high potassium and acidosis, and monitor urine (rhabdomyolysis). Warn the family about genetic testing.$x$, null),
(108, $x$What is Mendelson's syndrome?$x$, $x$Chemical pneumonitis resulting from aspiration of acidic gastric contents into the lungs$x$, $x$✅ Correct answer: Chemical pneumonitis resulting from aspiration of acidic gastric contents into the lungs
Mendelson's syndrome is a CHEMICAL pneumonitis caused by inhaling acidic stomach contents into the lungs, classically during general anaesthesia in obstetrics (Curtis Mendelson, 1946). Stomach acid (especially with pH below 2.5 and volume over 25 mL) burns the lung lining, causing wheeze, breathlessness, hypoxia and ARDS within hours.

❌ Why the other options are wrong:
• Bacterial pneumonia acquired during mechanical ventilation — VAP is a bacterial infection after 48 hours of ventilation, not chemical aspiration.
• An allergic reaction to inhalational anaesthetic agents — An allergic reaction to anaesthetic gases is a different problem.
• Pulmonary embolism occurring after prolonged bed rest — PE after bed rest is a blood clot, not aspiration.

⭐ Key point: Prevent aspiration with fasting, antacids or H₂ blockers (ranitidine or sodium citrate in obstetrics), rapid sequence induction, and extubating only when the patient is awake.$x$, null),
(109, $x$Pulmonary oxygen toxicity is most likely to develop with which exposure pattern?$x$, $x$FiO2 greater than about 60% sustained for more than 24-48 hours$x$, $x$✅ Correct answer: FiO2 greater than about 60% sustained for more than 24-48 hours
Oxygen toxicity damages the lung lining when a high oxygen concentration (FiO₂ above about 60%) is breathed for a long time (more than 24–48 hours). Free radicals injure the alveoli, causing inflammation, fluid leak and eventually fibrosis, much like ARDS. Absorption collapse (atelectasis) can also happen, because nitrogen is washed out of the alveoli.

❌ Why the other options are wrong:
• Brief exposure to 100% oxygen for less than 5 minutes during pre-oxygenation — A brief exposure to 100% oxygen (such as pre-oxygenation for intubation) is safe.
• FiO2 of 21% (room air) for any duration — Room air (21%) does not cause oxygen toxicity.
• Intermittent low-flow nasal cannula oxygen at 2 L/min — Low-flow 2 L/min nasal oxygen gives only about 28% and does not cause toxicity.

⭐ Key point: Give the LOWEST FiO₂ that achieves the target SpO₂ (usually 94–98%, or 88–92% in CO₂ retainers). Use PEEP to allow a lower FiO₂ in ventilated patients.$x$, null),
(110, $x$What is the currently recommended target temperature range for targeted temperature management after cardiac arrest?$x$, $x$32 to 36 degrees C$x$, $x$✅ Correct answer: 32 to 36 degrees C
After return of circulation following cardiac arrest, patients who remain unconscious are kept at a controlled temperature to protect the brain. Current guidance is a target between 32 and 36 °C for at least 24 hours, and above all to AVOID FEVER (above 37.7 °C) for at least 72 hours. Fever after cardiac arrest worsens brain damage.

❌ Why the other options are wrong:
• 40 to 42 degrees C — 40–42 °C is hyperthermia, which harms the brain.
• 20 to 25 degrees C — 20–25 °C is severe hypothermia and causes arrhythmias and cardiac arrest.
• 38 to 39 degrees C — 38–39 °C is fever, which is exactly what should be prevented.

⭐ Key point: During cooling, watch for shivering (treat with sedation or paralysis), bradycardia, low potassium (which rises on rewarming), high glucose, bleeding and infection. Rewarm slowly, at about 0.25–0.5 °C per hour.$x$, null),
(111, $x$Which parameter setting is primarily responsible for oxygenation rather than ventilation (CO2 removal)?$x$, $x$FiO2 and PEEP$x$, $x$✅ Correct answer: FiO2 and PEEP
Oxygenation (getting O₂ into the blood) is controlled mainly by FiO₂ (the oxygen concentration) and PEEP (keeps the alveoli open for gas exchange and increases surface area). Ventilation (removing CO₂) is controlled by MINUTE ventilation: respiratory rate × tidal volume. So to raise a low PaO₂, increase FiO₂ or PEEP; to lower a high PaCO₂, increase the rate or tidal volume.

❌ Why the other options are wrong:
• Respiratory rate — Respiratory rate mainly changes CO₂ removal (ventilation).
• Tidal volume — Tidal volume mainly changes CO₂ removal (ventilation).
• I:E ratio — I:E ratio has some effect on oxygenation but is not the main control; it is adjusted for special cases.

⭐ Key point: O₂ problem → change FiO₂ or PEEP. CO₂ problem → change rate or tidal volume. Memorise this for ventilator questions.$x$, null),
(112, $x$What is the standard adult IV/IO dose of epinephrine during cardiac arrest, repeated every 3 to 5 minutes?$x$, $x$1 mg$x$, $x$✅ Correct answer: 1 mg
In adult cardiac arrest, the dose of adrenaline (epinephrine) is 1 mg IV or IO (10 mL of 1:10,000), repeated every 3–5 minutes (every other 2-minute CPR cycle). In non-shockable rhythms (asystole, PEA) give it as soon as possible. In VF/pulseless VT, give it after the 3rd shock. Flush with 20 mL of saline.

❌ Why the other options are wrong:
• 0.1 mg — 0.1 mg is too small for an adult; doses of about this size are used for children (10 mcg/kg).
• 10 mg — 10 mg is ten times too high and dangerous.
• 100 mcg given only once — 100 mcg given once is too small and is not repeated as recommended.

⭐ Key point: Adrenaline 1 mg every 3–5 minutes. Amiodarone 300 mg after the 3rd shock, then 150 mg after the 5th. Anaphylaxis is different: 0.5 mg IM of 1:1000.$x$, null),
(113, $x$Which is a qSOFA criterion for sepsis?$x$, $x$All of the above$x$, $x$✅ Correct answer: All of the above
qSOFA (quick SOFA) is a bedside screen outside ICU for patients with suspected infection who are at risk of poor outcomes. It has three items, scoring 1 each: respiratory rate of 22/min or more, systolic BP of 100 mmHg or less, and altered mental state (GCS below 15). A score of 2 or more suggests a higher risk of death and needs urgent review. All three listed criteria are part of qSOFA.

❌ Why the other options are wrong:
• RR >22/min — Fast breathing alone is only one of the three criteria.
• SBP <100 mmHg — Low systolic BP alone is only one of the three criteria.
• Altered mental status — Altered mental status alone is only one of the three criteria.

⭐ Key point: Remember qSOFA as "HAT": Hypotension (SBP ≤100), Altered mentation, Tachypnoea (RR ≥22). Do not wait for a high score to give antibiotics if sepsis is suspected.$x$, null),
(114, $x$What is the typical initial fluid resuscitation approach for a patient in hypovolemic shock?$x$, $x$A rapid bolus of isotonic crystalloid solution while closely monitoring the hemodynamic response$x$, $x$✅ Correct answer: A rapid bolus of isotonic crystalloid solution while closely monitoring the hemodynamic response
Hypovolaemic shock means there is not enough fluid in the blood vessels. The first treatment is to replace volume quickly with an isotonic crystalloid (0.9% saline or Hartmann's), for example a 500 mL bolus over 15 minutes (or 20 mL/kg), then reassess HR, BP, capillary refill, urine output and mental state. Repeat if needed. If the cause is bleeding, give BLOOD early and stop the bleeding.

❌ Why the other options are wrong:
• Withholding fluids until blood pressure normalizes spontaneously — Waiting for the BP to recover by itself lets organs suffer and the patient may die.
• Administering diuretics to reduce circulating volume — Diuretics REMOVE fluid and would make hypovolaemia worse.
• A slow maintenance-rate infusion of hypotonic fluid — A slow drip of hypotonic fluid (5% dextrose) does not stay in the vessels and is far too slow.

⭐ Key point: Use two large-bore cannulas (14–16 G). In trauma, limit crystalloid and give blood products early (permissive hypotension, except in head injury).$x$, null),
(115, $x$A patient with multiple organ dysfunction syndrome (MODS) following sepsis requires nursing care primarily focused on:$x$, $x$Comprehensive, systematic monitoring and support of all affected organ systems$x$, $x$✅ Correct answer: Comprehensive, systematic monitoring and support of all affected organ systems
In MODS, two or more organ systems fail together (such as lungs, kidneys, liver, heart, blood clotting and brain), usually after sepsis or major trauma. Each failing organ affects the others, so care must be COMPREHENSIVE and SYSTEMATIC: assess and support every system ("head to toe" or "A to E") — ventilation, haemodynamics, kidney replacement, nutrition, glucose control, infection control, skin, and family support.

❌ Why the other options are wrong:
• A single-organ focus only, ignoring other systems — Focusing on one organ misses the others failing alongside it.
• No specific monitoring beyond routine vital signs — Routine vital signs alone are not enough; MODS needs invasive monitoring and lab checks.
• Withholding all interventions — Withholding care is not appropriate unless a decision about end-of-life care has been made with the family.

⭐ Key point: Mortality rises with each failing organ. Use the SOFA score to track the organs, and treat the cause (source control of infection).$x$, null),
(116, $x$A patient with pelvic fracture is at risk for:$x$, $x$A and B$x$, $x$✅ Correct answer: A and B
Pelvic fractures cause both. MASSIVE HAEMORRHAGE: the pelvis has large veins and arteries, and the pelvic space can hold several litres of blood. Unstable fractures (open book) can cause rapid shock and death. FAT EMBOLISM: fat from the bone marrow of large fractured bones (pelvis, femur) can enter the bloodstream and travel to the lungs, brain and skin, usually 24–72 hours later.

❌ Why the other options are wrong:
• Fat embolism — Fat embolism alone is only part of the answer.
• Massive hemorrhage — Massive haemorrhage alone is only part of the answer.
• Neurogenic shock — Neurogenic shock comes from spinal cord injury, not pelvic fracture.

⭐ Key point: Fat embolism triad: breathing difficulty (hypoxia), confusion, and a petechial rash (armpits, chest, conjunctiva). Early fixation of fractures reduces the risk.$x$, null),
(117, $x$A patient with multiple trauma has a pelvic fracture suspected on examination. The nurse should avoid which action that could worsen bleeding?$x$, $x$Repeatedly 'springing' or manually testing pelvic stability, which can dislodge clots and worsen haemorrhage$x$, $x$✅ Correct answer: Repeatedly 'springing' or manually testing pelvic stability, which can dislodge clots and worsen haemorrhage
Repeatedly pressing or "springing" the pelvis to check if it is stable can move the broken bone ends, tear vessels and dislodge clots that are slowing the bleeding. This can turn a controlled bleed into a fatal one. If a pelvic fracture is suspected (from the mechanism or signs), apply a pelvic binder and get imaging; avoid repeated examinations.

❌ Why the other options are wrong:
• Applying a pelvic binder as indicated — Applying a pelvic binder at the level of the greater trochanters is CORRECT; it reduces pelvic volume and bleeding.
• Monitoring vital signs closely — Monitoring vital signs is correct and essential.
• Preparing for possible blood transfusion — Preparing blood products is correct, because large blood loss is expected.

⭐ Key point: Also avoid log-rolling patients with a suspected pelvic fracture more than needed, and do not insert a urinary catheter if there is blood at the urethral meatus (urethral injury) until it is checked.$x$, null),
(118, $x$A patient s/p TURP has pink-tinged urine and bladder spasms. This is:$x$, $x$Normal$x$, $x$✅ Correct answer: Normal
After transurethral resection of the prostate (TURP), PINK-tinged urine (light bleeding) and BLADDER SPASMS (from the catheter balloon and the raw area) are expected in the first days. Continuous bladder irrigation through a three-way catheter keeps clots from forming, and anticholinergic drugs (such as oxybutynin) ease the spasms.

❌ Why the other options are wrong:
• Indicative of infection — Infection would cause fever, cloudy smelly urine and rising inflammatory markers, not just pink urine.
• Sign of hemorrhage — Haemorrhage would show bright red urine with clots, falling BP and rising HR; pink urine is not haemorrhage.
• Urinary retention — Retention would cause a full painful bladder with little drainage; check the catheter is draining.

⭐ Key point: After TURP, report bright red urine or clots, a blocked catheter (no drainage with pain), and signs of TURP syndrome (confusion, low sodium, low BP).$x$, null),
(119, $x$A patient with facial burns, singed nasal hair, and hoarseness of voice after a house fire should be closely monitored for:$x$, $x$Inhalational airway injury, with high risk of rapid airway obstruction$x$, $x$✅ Correct answer: Inhalational airway injury, with high risk of rapid airway obstruction
Facial burns, singed nasal hairs, soot in the mouth, a hoarse voice, cough with black sputum, and a history of a fire in an ENCLOSED space all suggest INHALATION INJURY. Heat and smoke cause swelling of the upper airway that can rapidly block it within hours, especially once IV fluids start. These patients need early assessment by an anaesthetist and often EARLY intubation before the airway closes. Also check for carbon monoxide and cyanide poisoning.

❌ Why the other options are wrong:
• No specific concern beyond the visible burns — There IS a specific concern: the airway can be lost quickly.
• Simple anxiety — Anxiety does not explain singed nasal hair and hoarseness.
• Only skin infection risk — Infection is a later risk; the immediate danger is airway obstruction.

⭐ Key point: Give 100% oxygen (also treats CO poisoning; SpO₂ is falsely normal in CO poisoning). Watch for stridor, which is a late, dangerous sign.$x$, null),
(120, $x$To prevent pressure ulcers, a critically ill patient should be turned every:$x$, $x$2 hours$x$, $x$✅ Correct answer: 2 hours
Turning the patient every 2 hours relieves pressure on bony areas (sacrum, heels, hips, back of the head) before the skin and tissue are damaged by lack of blood flow. Pressure ulcers can start within 1–2 hours of unrelieved pressure in critically ill patients, who are immobile, poorly perfused and often on vasopressors. Turn the patient alternately (left 30°, back, right 30°), use pressure-relieving mattresses, and check the skin each time.

❌ Why the other options are wrong:
• 30 minutes — Every 30 minutes is impractical and would disturb rest and sleep.
• 1 hour — Every hour is more often than usually needed (though some very high-risk patients need it).
• 6 hours — Every 6 hours is far too long; ulcers would develop.

⭐ Key point: Use the Braden scale (a score of 18 or less means at risk), keep the skin clean and dry, ensure good nutrition, and remember devices (ETT, NG tube, masks) can also cause pressure ulcers.$x$, null),
(121, $x$The general adaptation syndrome of stress includes all of the following EXCEPT:$x$, $x$A period of fast recovery$x$, $x$✅ Correct answer: A period of fast recovery
Hans Selye's general adaptation syndrome has THREE stages: 1) ALARM (fight or flight: adrenaline and cortisol released, fast heart and breathing), 2) RESISTANCE (the body adapts and copes with the ongoing stressor), 3) EXHAUSTION (resources run out, leading to illness, burnout or even death if the stress continues). "A period of fast recovery" is not one of the stages.

❌ Why the other options are wrong:
• An alarm reaction (fight-or-flight) — The alarm reaction IS the first stage.
• A resistance phase — The resistance phase IS the second stage.
• A period of exhaustion — The exhaustion phase IS the third stage.

⭐ Key point: Critical illness keeps patients in prolonged stress (high cortisol, high glucose, muscle breakdown). Staff are also at risk of exhaustion and burnout.$x$, null),
(122, $x$A critically ill patient in septic shock remains hypotensive despite adequate fluid resuscitation and high-dose vasopressors. Which endocrine abnormality should be considered and evaluated?$x$, $x$Critical illness-related corticosteroid insufficiency (relative adrenal insufficiency)$x$, $x$✅ Correct answer: Critical illness-related corticosteroid insufficiency (relative adrenal insufficiency)
In severe sepsis, the adrenal glands may not produce enough cortisol for the body's needs, or the tissues may not respond to it. This is called critical illness-related corticosteroid insufficiency (relative adrenal insufficiency). Without enough cortisol, the blood vessels respond poorly to vasopressors and BP stays low. Low-dose hydrocortisone (200 mg/day) is recommended in septic shock needing ongoing vasopressors.

❌ Why the other options are wrong:
• Primary hyperaldosteronism — Primary hyperaldosteronism causes HIGH BP and low potassium, not refractory shock.
• Hyperthyroidism — Hyperthyroidism causes fast heart rate and high output, but it is not the classic cause here.
• Growth hormone excess — Growth hormone excess (acromegaly) is a chronic condition, not a cause of shock.

⭐ Key point: Signs that point to adrenal insufficiency: low BP not responding to fluids and vasopressors, low sodium, high potassium, low glucose and a history of steroid use.$x$, null),
(123, $x$The following are indication of monitoring intra-abdominal pressure except:$x$, $x$Laparotomy closed with normal tension$x$, $x$✅ Correct answer: Laparotomy closed with normal tension
The question asks which is NOT an indication for monitoring intra-abdominal pressure. Measuring IAP (via the bladder) is recommended for patients at risk of intra-abdominal hypertension: shock needing large-volume resuscitation, damage control laparotomy, major burns (above 25% TBSA), severe pancreatitis, massive transfusion, and abdominal surgery closed under tension. A laparotomy closed with NORMAL tension is low risk, so it is not an indication.

❌ Why the other options are wrong:
• Shock requiring resuscitation. — Shock needing large fluid resuscitation IS an indication (the gut swells).
• Damage control laparotomy — Damage control laparotomy IS an indication (packs, swollen bowel).
• Major burns \> 25% — Major burns above 25% IS an indication (huge fluid volumes cause gut and wall oedema).

⭐ Key point: Normal IAP is 5–7 mmHg. IAH is 12 mmHg or more. Abdominal compartment syndrome is above 20 mmHg with new organ failure, which needs decompression.$x$, null),
(124, $x$Which of the following best describes the purpose of stress-ulcer prophylaxis (e.g. proton pump inhibitors) in critically ill patients?$x$, $x$To reduce the risk of stress-related gastrointestinal bleeding in high-risk ICU patients$x$, $x$✅ Correct answer: To reduce the risk of stress-related gastrointestinal bleeding in high-risk ICU patients
Critically ill patients, especially those ventilated for more than 48 hours or with clotting problems, can develop stress ulcers in the stomach because blood flow to the stomach lining is reduced. These can bleed. Stress ulcer prophylaxis with a PPI (omeprazole, pantoprazole) or H₂ blocker reduces stomach acid and lowers the risk of significant upper GI bleeding. Early enteral feeding also helps protect the stomach.

❌ Why the other options are wrong:
• To treat active pneumonia — Stress ulcer drugs do not treat pneumonia; reducing stomach acid may even slightly increase pneumonia risk.
• To lower blood glucose — PPIs do not lower blood glucose.
• To prevent deep vein thrombosis — DVT is prevented with LMWH or heparin and mechanical devices, not PPIs.

⭐ Key point: Review stress ulcer prophylaxis daily and stop it when the patient no longer has risk factors; long-term use increases C. difficile and pneumonia risk.$x$, null),
(125, $x$Hemorrhagic discoloration of the flanks is known as$x$, $x$Grey-Turner's sign$x$, $x$✅ Correct answer: Grey-Turner's sign
Grey-Turner's sign is bruising (bluish discolouration) of the FLANKS. Blood from the retroperitoneum tracks along the tissue planes to the skin of the sides, typically 24–48 hours after the bleed. It is seen in severe (haemorrhagic) acute pancreatitis, ruptured abdominal aortic aneurysm, and retroperitoneal bleeding (including ruptured ectopic pregnancy).

❌ Why the other options are wrong:
• Grey-Prumer's sign — "Grey-Prumer's sign" does not exist; it is a made-up distractor.
• Cullen's sign — Cullen's sign is bruising around the UMBILICUS (navel), not the flanks.
• Kullen's sign — "Kullen's sign" is a misspelling distractor of Cullen's sign.

⭐ Key point: Grey-Turner = flanks; Cullen = umbilicus. Both suggest bleeding in the abdomen or retroperitoneum (pancreatitis, ruptured ectopic, AAA).$x$, null),
(126, $x$A hallmark early clinical clue suggesting necrotising fasciitis, distinguishing it from simple cellulitis, is:$x$, $x$Pain out of proportion to visible skin findings$x$, $x$✅ Correct answer: Pain out of proportion to visible skin findings
Necrotising fasciitis is a fast-spreading bacterial infection of the deep tissues (fascia) that destroys tissue under the skin before the skin itself looks very bad. The early classic clue is severe PAIN OUT OF PROPORTION to what you can see on the skin. Later signs include rapid spread, tense swelling, dusky or purple skin, blisters, crepitus (gas under the skin), numbness and sepsis. It is a surgical emergency.

❌ Why the other options are wrong:
• Mild, well-localised redness with minimal pain — Mild, well-localised redness with little pain fits simple cellulitis, not necrotising fasciitis.
• Slow onset over several weeks — Necrotising fasciitis spreads over HOURS, not weeks.
• Complete absence of systemic symptoms — Patients quickly become very unwell (fever, fast pulse, low BP, confusion); systemic symptoms are usually present.

⭐ Key point: Treatment is urgent surgical debridement (removing dead tissue) plus broad-spectrum IV antibiotics and sepsis care. Delay increases death and amputation.$x$, null),
(127, $x$The 'Golden Hour' concept in trauma care refers to:$x$, $x$The first 60 minutes after major trauma, during which rapid assessment and definitive care most improve survival$x$, $x$✅ Correct answer: The first 60 minutes after major trauma, during which rapid assessment and definitive care most improve survival
The "golden hour" is the first 60 minutes after a major injury. During this time, rapid assessment (primary survey ABCDE), resuscitation, stopping bleeding and getting the patient to definitive care (surgery, CT, ICU) give the best chance of survival. Many trauma deaths from bleeding and airway problems are preventable if treated quickly.

❌ Why the other options are wrong:
• The first hour after hospital discharge — The time after hospital discharge has nothing to do with the golden hour.
• The hour before surgery begins — The hour before surgery is not the definition; the clock starts at the time of INJURY.
• A 60-minute waiting period before treatment can start — The golden hour is about acting FAST, not waiting.

⭐ Key point: Trauma deaths come in three peaks: immediate (unsurvivable), early (minutes to hours, the golden hour, preventable), and late (days to weeks, from sepsis and multi-organ failure).$x$, null),
(128, $x$A common complication of severe hypothermia is:$x$, $x$Cardiac arrest (arrhythmias)$x$, $x$✅ Correct answer: Cardiac arrest (arrhythmias)
In severe hypothermia (core temperature below 28–30 °C), the heart becomes cold and very irritable. The heart rate slows, and the risk of arrhythmias rises sharply: atrial fibrillation, then VF, then asystole. Even moving the patient roughly can trigger VF. The ECG may show J (Osborn) waves. Cardiac arrest is the most serious complication.

❌ Why the other options are wrong:
• Hyperactivity — Hypothermia causes slowing and drowsiness, not hyperactivity.
• Increased body temperature — Hypothermia means LOW body temperature, by definition.
• Rapid breathing — Breathing becomes slow and shallow in severe hypothermia, not rapid.

⭐ Key point: Handle hypothermic patients gently, rewarm (warm fluids, forced-air warming, ECMO in severe cases), and remember "no one is dead until warm and dead". Defibrillation and drugs work poorly below 30 °C.$x$, null),
(129, $x$A properly functioning underwater-seal drain typically shows:$x$, $x$Fluctuation (tidaling) and intermittent bubbling with respiration$x$, $x$✅ Correct answer: Fluctuation (tidaling) and intermittent bubbling with respiration
In a working underwater-seal drain, the water level in the water-seal chamber rises and falls with breathing (swinging or tidaling), because pressure in the chest changes with each breath. This proves the tube is open and connected to the pleural space. INTERMITTENT bubbling, especially on coughing or breathing out, is expected while air is still leaving the chest after a pneumothorax.

❌ Why the other options are wrong:
• Continuous bubbling in the water-seal chamber — CONTINUOUS bubbling in the water-seal chamber suggests an air leak (from the lung or the system) and must be checked.
• No movement at all in the water-seal chamber — No movement at all suggests the tube is blocked or kinked, or the lung has fully re-expanded.
• A water level that never moves — A water level that never moves means no swinging, so the drain may not be working.

⭐ Key point: Swinging = the drain is open. No swing = check for kinks, clots, or lung re-expansion. Continuous bubbling = look for an air leak. Never lift the bottle above the chest.$x$, null),
(130, $x$A key element of the "ventilator bundle" (VAP prevention bundle) includes all of the following EXCEPT:$x$, $x$Routine daily scheduled ventilator circuit changes$x$, $x$✅ Correct answer: Routine daily scheduled ventilator circuit changes
The question asks which is NOT part of the VAP bundle. Routine, scheduled ventilator circuit changes do NOT reduce VAP. Breaking the circuit may actually increase contamination. Circuits are changed only when visibly soiled or faulty. The VAP bundle includes head-of-bed elevation, daily sedation holds with weaning assessment, peptic ulcer and DVT prophylaxis, and chlorhexidine oral care.

❌ Why the other options are wrong:
• Head-of-bed elevation 30-45 degrees — Head-of-bed elevation to 30–45° IS part of the bundle; it reduces aspiration.
• Daily sedation vacation and readiness-to-wean assessment — Daily sedation vacation and readiness-to-wean assessment IS part of the bundle; it shortens ventilation.
• Peptic ulcer disease and deep vein thrombosis prophylaxis — Peptic ulcer and DVT prophylaxis ARE part of the original IHI ventilator bundle.

⭐ Key point: Other VAP measures: subglottic suction, cuff pressure 20–30 cmH₂O, closed suction, hand hygiene, and early extubation.$x$, null),
(131, $x$All are signs of ruptured ectopic pregnancy EXCEPT:$x$, $x$Hyperglycaemia$x$, $x$✅ Correct answer: Hyperglycaemia
The question asks which is NOT a sign of a ruptured ectopic pregnancy. Hyperglycaemia (high blood sugar) has no link with it. A ruptured ectopic causes internal bleeding into the abdomen: sudden lower abdominal pain (often one-sided), vaginal bleeding (usually light), shoulder-tip pain (blood irritating the diaphragm), dizziness, and signs of shock.

❌ Why the other options are wrong:
• Tachycardia, shock, pallor and collapse — Tachycardia, shock, pallor and collapse ARE signs; they come from internal bleeding.
• Abdominal pain — Abdominal pain IS a sign, often the first symptom.
• Vaginal bleeding — Vaginal bleeding IS a sign, though often less than the internal bleeding.

⭐ Key point: Any woman of childbearing age with abdominal pain and shock has a ruptured ectopic until proven otherwise. Do a pregnancy test, resuscitate, cross-match, and arrange emergency surgery.$x$, null),
(132, $x$A pregnant patient at 32 weeks presents with painless, bright red vaginal bleeding. This presentation is most concerning for:$x$, $x$Placenta praevia$x$, $x$✅ Correct answer: Placenta praevia
Placenta praevia means the placenta lies low in the uterus, over or near the cervix. As the lower uterus stretches in the third trimester, the placenta separates and bleeds. The classic sign is PAINLESS, BRIGHT RED vaginal bleeding, often recurrent, with a soft, non-tender uterus. The baby's head may not be engaged, or the lie may be abnormal.

❌ Why the other options are wrong:
• Placental abruption — Placental abruption causes PAINFUL bleeding with a hard, tender ("woody") uterus.
• Normal spotting in pregnancy — Bleeding at 32 weeks is never "normal spotting"; it must be investigated.
• Round ligament pain — Round ligament pain causes sharp groin pain, not bleeding.

⭐ Key point: In placenta praevia NEVER do a vaginal examination (it can cause torrential bleeding). Confirm with ultrasound, resuscitate, and plan a caesarean section.$x$, null),
(133, $x$What are the symptoms of premature rupture of membranes?$x$, $x$All of the options$x$, $x$✅ Correct answer: All of the options
Premature rupture of membranes (PROM) is when the amniotic sac breaks before labour starts. Women may notice a sudden GUSH of fluid or a slow, constant leak or trickle that they can't control. Normal amniotic fluid is clear (or pale straw-coloured) and odourless. All the options describe PROM, so "all of the options" is correct.

❌ Why the other options are wrong:
• Feeling a gush of fluid from the vagina — A gush of fluid is one sign, but not the only one listed.
• Slow leak or trickle of fluid — A slow leak or trickle is one sign, but not the only one listed.
• The fluid is clear and odourless — Clear, odourless fluid is one feature, but not the only one listed.

⭐ Key point: Green fluid = meconium (fetal distress). Foul-smelling fluid with fever = chorioamnionitis (infection). After PROM, avoid digital vaginal exams, check for infection, and give antibiotics as per protocol.$x$, null),
(134, $x$A cervical incompetence diagnosis in a pregnant patient primarily increases the risk of:$x$, $x$Second-trimester pregnancy loss or preterm birth from painless cervical dilation$x$, $x$✅ Correct answer: Second-trimester pregnancy loss or preterm birth from painless cervical dilation
Cervical incompetence (cervical insufficiency) means the cervix is weak and opens painlessly in the second trimester, without contractions. The pregnancy can be lost suddenly (second-trimester miscarriage) or the baby born very early. Treatment includes cervical cerclage (a stitch around the cervix) or vaginal progesterone, with monitoring of cervical length by ultrasound.

❌ Why the other options are wrong:
• Post-term pregnancy — Cervical incompetence leads to EARLY birth, not post-term pregnancy.
• Gestational diabetes — Gestational diabetes is a metabolic condition, not related to the cervix.
• Multiple pregnancy — Multiple pregnancy is a cause of preterm birth, not a result of cervical incompetence.

⭐ Key point: History is the clue: repeated painless second-trimester losses. The cerclage stitch is removed at about 36–37 weeks or when labour starts.$x$, null),
(135, $x$A Rhesus-negative mother delivers a Rhesus-positive baby. The nurse anticipates administration of:$x$, $x$Anti-D immunoglobulin to the mother to prevent sensitisation in future pregnancies$x$, $x$✅ Correct answer: Anti-D immunoglobulin to the mother to prevent sensitisation in future pregnancies
When an Rh-negative mother delivers an Rh-positive baby, some of the baby's red cells enter her blood. Her immune system can make anti-D antibodies (sensitisation). In a FUTURE pregnancy with an Rh-positive baby, these antibodies cross the placenta and destroy the baby's red cells (haemolytic disease of the newborn). Giving ANTI-D immunoglobulin to the MOTHER within 72 hours of delivery removes the baby's cells before her body reacts.

❌ Why the other options are wrong:
• No specific treatment is needed — Without treatment, the next Rh-positive baby is at serious risk.
• Anti-D immunoglobulin to the baby — Anti-D is given to the MOTHER, not the baby.
• Oxytocin to the mother for this purpose — Oxytocin contracts the uterus; it does not prevent Rh sensitisation.

⭐ Key point: Also give anti-D after any sensitising event (miscarriage, ectopic, amniocentesis, abdominal trauma, bleeding) and routinely at 28 weeks in many units.$x$, null),
(136, $x$The most common cause of postpartum haemorrhage, among the 4 Ts, is:$x$, $x$Tone (uterine atony)$x$, $x$✅ Correct answer: Tone (uterine atony)
After birth, the uterus must contract firmly to squeeze shut the blood vessels where the placenta was attached. If it stays soft and relaxed (uterine ATONY), blood pours out. Poor TONE causes about 70% of PPH. Risk factors include a big baby, twins, polyhydramnios, long or very fast labour, grand multiparity, infection and drugs that relax the uterus.

❌ Why the other options are wrong:
• Trauma — Trauma (tears of the cervix, vagina or perineum, uterine rupture) causes about 20%.
• Tissue — Tissue (retained placenta or membranes) causes about 10%.
• Thrombin — Thrombin (clotting problems such as DIC) causes about 1%.

⭐ Key point: First steps for atonic PPH: call for help, rub the uterus (fundal massage), give oxytocin, empty the bladder, start IV fluids, and give tranexamic acid.$x$, null),
(137, $x$What important modification should be made when performing CPR on a pregnant patient in later pregnancy?$x$, $x$Manual left uterine displacement to relieve aortocaval compression and improve venous return$x$, $x$✅ Correct answer: Manual left uterine displacement to relieve aortocaval compression and improve venous return
After about 20 weeks, the pregnant uterus presses on the inferior vena cava and aorta when the woman lies on her back (aortocaval compression). This sharply reduces blood returning to the heart, so CPR would be ineffective. Pushing the uterus to the LEFT by hand (manual left uterine displacement) while doing chest compressions relieves the pressure. A left lateral tilt of 15–30° is an alternative.

❌ Why the other options are wrong:
• Place the patient in the prone position — The prone position (face down) makes CPR impossible.
• Avoid performing chest compressions entirely — Chest compressions are still essential in pregnancy.
• Compress the abdomen instead of the chest — Compressions are always on the CHEST (lower half of the sternum), never the abdomen.

⭐ Key point: In maternal cardiac arrest, if there is no return of circulation within 4 minutes, prepare for a perimortem caesarean section by 5 minutes. This helps both mother and baby.$x$, null),
(138, $x$Tracheo-oesophageal fistula is often associated with which other congenital anomaly?$x$, $x$Oesophageal atresia$x$, $x$✅ Correct answer: Oesophageal atresia
Tracheo-oesophageal fistula (TOF) is an abnormal connection between the trachea and the oesophagus. In about 85% of cases, it occurs together with oesophageal ATRESIA, where the upper oesophagus ends in a blind pouch. The baby has frothy saliva, chokes and coughs or turns blue on feeding, and an NG tube cannot be passed into the stomach.

❌ Why the other options are wrong:
• Cleft lip only — Cleft lip can occur with other anomalies, but it is not the classic partner of TOF.
• Club foot only — Club foot is a limb anomaly, not typically linked with TOF.
• Polydactyly only — Polydactyly (extra fingers) is not typically linked with TOF.

⭐ Key point: TOF may be part of VACTERL (Vertebral, Anal, Cardiac, Tracheo-oesophageal, Renal, Limb anomalies). Keep the baby nil by mouth, head up, with continuous suction of the upper pouch until surgery.$x$, null),
(139, $x$Thiamine (vitamin B1) deficiency results in which potential maternal complication of hyperemesis gravidarum?$x$, $x$Wernicke encephalopathy$x$, $x$✅ Correct answer: Wernicke encephalopathy
In hyperemesis gravidarum, prolonged vomiting and poor intake use up thiamine (vitamin B1) stores, especially if IV glucose is given without thiamine. Thiamine deficiency causes Wernicke's encephalopathy: confusion, ataxia (unsteady walking), and eye problems (nystagmus, ophthalmoplegia). It can lead to permanent memory loss (Korsakoff syndrome) or death.

❌ Why the other options are wrong:
• Renal failure — Renal failure can come from dehydration, but it is not caused by thiamine deficiency.
• Esophageal rupture — Oesophageal rupture (Boerhaave syndrome) can follow forceful vomiting, but not thiamine deficiency.
• Osmotic demyelination syndrome — Osmotic demyelination comes from correcting low sodium too fast, not thiamine deficiency.

⭐ Key point: Give THIAMINE before or with IV glucose in any malnourished patient (hyperemesis, alcohol misuse, starvation), and replace fluids and electrolytes.$x$, null),
(140, $x$A nurse is performing neonatal resuscitation. The newborn's heart rate is below 60 beats per minute after 30 seconds of effective positive-pressure ventilation. The next step is to:$x$, $x$Initiate chest compressions$x$, $x$✅ Correct answer: Initiate chest compressions
Neonatal resuscitation focuses on ventilation, because most newborns need only effective breaths. If the heart rate is still BELOW 60 beats per minute after 30 seconds of EFFECTIVE ventilation (chest is moving), START CHEST COMPRESSIONS. The ratio is 3 compressions to 1 breath (90 compressions and 30 breaths per minute), using two thumbs on the lower third of the sternum, and increase oxygen to 100%.

❌ Why the other options are wrong:
• Continue positive-pressure ventilation for another 30 seconds — Continuing ventilation alone wastes time once the heart rate is below 60 with good ventilation.
• Administer epinephrine — Adrenaline is given only if the heart rate stays below 60 after about 30 seconds of good compressions and ventilation.
• Stop resuscitation and call the physician — Stopping resuscitation is wrong; call for help while continuing.

⭐ Key point: Newborn steps: dry, warm and stimulate; open the airway; give 5 inflation breaths; ventilate; compressions if HR is below 60; then drugs through an umbilical venous catheter.$x$, null),
(141, $x$The most widely used effective treatment for neonatal jaundice is:$x$, $x$Phototherapy$x$, $x$✅ Correct answer: Phototherapy
Phototherapy uses blue-green light (wavelength about 460–490 nm) to change bilirubin in the skin into a water-soluble form that the baby can pass in urine and stool without needing the liver. It is safe, non-invasive and effective for most babies with significant jaundice. Exchange transfusion is kept for very high or rapidly rising bilirubin.

❌ Why the other options are wrong:
• Blood transfusion — Blood transfusion does not lower bilirubin (exchange transfusion is a different, specialised procedure).
• Antibiotics — Antibiotics treat infection, which is only sometimes a cause of jaundice.
• Liver transplant — A liver transplant is only for rare liver diseases such as biliary atresia that fails surgery.

⭐ Key point: Phototherapy care: cover the eyes, expose as much skin as possible, turn the baby, give extra fluids or feeds, monitor temperature, and check bilirubin regularly. Jaundice within 24 hours of birth is always abnormal.$x$, null),
(142, $x$Pyloric stenosis in infants classically presents with:$x$, $x$Projectile, non-bilious vomiting typically starting around 3–6 weeks of age$x$, $x$✅ Correct answer: Projectile, non-bilious vomiting typically starting around 3–6 weeks of age
Pyloric stenosis is thickening of the pylorus muscle (the stomach outlet), which blocks food from leaving the stomach. It usually starts at 3–6 weeks of age, often in first-born boys. Vomiting is PROJECTILE (forceful) and NON-BILIOUS (milky, not green), because the blockage is above where bile enters. The baby is hungry after vomiting, and an "olive" mass may be felt in the upper abdomen.

❌ Why the other options are wrong:
• Bilious vomiting from birth — Bilious (green) vomiting from birth suggests an obstruction BELOW the bile duct (such as duodenal atresia or malrotation).
• Chronic diarrhoea — Chronic diarrhoea is not a feature; babies are usually constipated.
• Bloody stools with fever — Bloody stools with fever suggest infection or intussusception.

⭐ Key point: Vomiting stomach acid causes a hypochloraemic, hypokalaemic METABOLIC ALKALOSIS. Correct fluids and electrolytes FIRST, then do surgery (pyloromyotomy).$x$, null),
(143, $x$Intussusception in infants classically presents with:$x$, $x$Episodic colicky abdominal pain, vomiting, and 'redcurrant jelly' stools$x$, $x$✅ Correct answer: Episodic colicky abdominal pain, vomiting, and 'redcurrant jelly' stools
Intussusception is when one part of the bowel telescopes into the next part, usually at the ileocaecal junction, in babies aged 3 months to 3 years. It causes episodes of severe colicky pain (the baby screams and draws up the legs, then is quiet between episodes), vomiting, and later "redcurrant jelly" stools (blood and mucus). A sausage-shaped mass may be felt in the abdomen.

❌ Why the other options are wrong:
• Painless abdominal distension only — It is very painful, not painless distension.
• Chronic constipation with no acute symptoms — It is an acute emergency, not chronic constipation.
• A silent, asymptomatic abdominal mass — The baby is clearly unwell, so it is not a silent, asymptomatic mass.

⭐ Key point: Treat with IV fluids, an NG tube, and air or contrast enema reduction. Surgery is needed if the enema fails or the bowel perforates.$x$, null),
(144, $x$Regarding the newborn which of this is correct?$x$, $x$The term newborn may be small for gestational age$x$, $x$✅ Correct answer: The term newborn may be small for gestational age
Small for gestational age (SGA) means a baby's weight is below the 10th centile FOR ITS GESTATIONAL AGE. A TERM baby (37–42 weeks) can still be SGA if it did not grow well in the womb (placental problems, maternal smoking, pre-eclampsia, infection). This statement is correct.

❌ Why the other options are wrong:
• Preterms are babies delivered before 40 weeks of delivery — Preterm means born BEFORE 37 completed weeks, not before 40 weeks.
• All preterms are low birth weight — Not all preterm babies are low birth weight; a baby at 36 weeks can weigh more than 2500 g.
• All preterms are small for gestational age — Not all preterm babies are SGA; many preterm babies are an appropriate weight for their age.

⭐ Key point: Low birth weight is below 2500 g, very low is below 1500 g, extremely low is below 1000 g. SGA babies are at risk of low glucose, hypothermia and polycythaemia.$x$, null),
(145, $x$Which is part of pre-operative care for a child with Hirschsprung's disease?$x$, $x$Giving bowel washouts/enemas$x$, $x$✅ Correct answer: Giving bowel washouts/enemas
In Hirschsprung's disease, part of the bowel (usually the rectum and sigmoid colon) has no nerve cells, so it cannot relax and push stool along. Stool builds up above it, causing distension, constipation and risk of enterocolitis. Before surgery, regular bowel WASHOUTS (saline rectal irrigations) or enemas are given to empty the bowel, relieve distension and reduce infection risk.

❌ Why the other options are wrong:
• CT scan — A CT scan is not routine before surgery; diagnosis is by rectal biopsy and contrast enema.
• Shaving the axillary hair — Shaving the axillary hair is not relevant to bowel surgery.
• Obtaining consent from the child himself — A child cannot legally give consent; parents or guardians consent.

⭐ Key point: Signs of Hirschsprung's: failure to pass meconium within 48 hours, distended abdomen, bilious vomiting. Watch for enterocolitis (fever, explosive foul diarrhoea), which is dangerous.$x$, null),
(146, $x$Fluid therapy in a severely dehydrated child typically begins with:$x$, $x$A rapid IV fluid bolus for severe dehydration, followed by ongoing maintenance and deficit replacement$x$, $x$✅ Correct answer: A rapid IV fluid bolus for severe dehydration, followed by ongoing maintenance and deficit replacement
A severely dehydrated child (lethargic, weak pulse, cold hands, slow capillary refill, sunken eyes) is in or near shock. The first step is a RAPID IV (or IO) fluid bolus of isotonic crystalloid (0.9% saline or Hartmann's), commonly 10–20 mL/kg, repeated after reassessment. After the circulation is restored, the remaining deficit and maintenance fluids are replaced over 24–48 hours.

❌ Why the other options are wrong:
• Oral fluids only, regardless of severity — Oral fluids alone are for mild to moderate dehydration; severe dehydration needs IV fluids.
• Withholding all fluids until specialist review — Withholding fluid in severe dehydration can be fatal.
• Only subcutaneous fluids — Subcutaneous fluids are too slow for severe dehydration and shock.

⭐ Key point: The WHO plan for severe dehydration (Plan C) is 100 mL/kg of Ringer's lactate in phases. Watch for overload in malnourished children and those with heart disease.$x$, null),
(147, $x$A characteristic sign of croup is:$x$, $x$A barking cough with inspiratory stridor$x$, $x$✅ Correct answer: A barking cough with inspiratory stridor
Croup (laryngotracheobronchitis) is a viral infection (usually parainfluenza) of the larynx and trachea in children aged 6 months to 3 years. Swelling below the vocal cords narrows the airway, causing a BARKING ("seal-like") cough, hoarse voice and INSPIRATORY STRIDOR (a harsh sound when breathing in). It is often worse at night, with a mild fever.

❌ Why the other options are wrong:
• A productive cough with green sputum — A productive cough with green sputum suggests a chest infection.
• Expiratory wheeze only — Expiratory wheeze suggests asthma or bronchiolitis (lower airway).
• High fever with drooling — High fever with drooling suggests EPIGLOTTITIS, which is more serious.

⭐ Key point: Treat croup with oral dexamethasone (0.15 mg/kg); give nebulised adrenaline for severe stridor. Keep the child calm on the parent's lap.$x$, null),
(148, $x$Febrile convulsions in young children are most commonly associated with:$x$, $x$A rapid rise in body temperature, often with a viral infection$x$, $x$✅ Correct answer: A rapid rise in body temperature, often with a viral infection
Febrile convulsions are seizures caused by fever in children aged 6 months to 5 years without brain infection. They are linked to a RAPID RISE in temperature, usually from a viral infection (such as an ear or throat infection, or roseola). Most are short (under 5 minutes) generalised seizures, and the child recovers fully.

❌ Why the other options are wrong:
• Chronic malnutrition alone — Chronic malnutrition alone does not cause febrile convulsions.
• Congenital heart disease exclusively — Congenital heart disease is not specifically linked to febrile convulsions.
• Vitamin overdose — Vitamin overdose is not a cause.

⭐ Key point: Care: keep the child safe, place in recovery position, time the seizure, give a benzodiazepine if it lasts over 5 minutes, and look for the cause of fever (exclude meningitis). Reassure parents that most children grow out of it.$x$, null),
(149, $x$A sickle cell disease patient presented with chest pain, low Spo2, cough, dyspnea, which of these is the cause?$x$, $x$Acute Chest Syndrome$x$, $x$✅ Correct answer: Acute Chest Syndrome
Acute chest syndrome is a serious complication of sickle cell disease. Sickled cells block the small lung vessels (plus infection or fat embolism), causing chest pain, cough, breathlessness, low SpO₂, fever, and a NEW shadow on the chest X-ray. It is the leading cause of death in sickle cell disease and needs urgent treatment.

❌ Why the other options are wrong:
• Acute Asthmatic — Acute asthma causes wheeze and breathlessness, but this picture in sickle cell disease points to acute chest syndrome.
• Vaso-Occlusive Crisis — A vaso-occlusive crisis causes pain (often bones and joints) but not hypoxia with lung signs.
• Acute Anaemia — Acute anaemia causes tiredness, pallor and breathlessness, but not chest pain with a new lung shadow.

⭐ Key point: Treatment: oxygen, pain relief, IV fluids (careful), antibiotics, incentive spirometry, and blood or exchange transfusion if severe. Monitor SpO₂ closely.$x$, null),
(150, $x$Sudden Infant Death Syndrome (SIDS) risk is reduced by which key recommendation?$x$, $x$Placing infants to sleep supine (on their back)$x$, $x$✅ Correct answer: Placing infants to sleep supine (on their back)
Placing babies to sleep on their BACK (supine) is the most important way to reduce SIDS ("Back to Sleep"). Other safe sleep advice: a firm flat mattress, no pillows, toys or loose bedding, the baby's feet at the foot of the cot, room-sharing (not bed-sharing) for the first 6 months, a smoke-free home, breastfeeding, and no overheating.

❌ Why the other options are wrong:
• Placing infants to sleep prone (on their stomach) — Sleeping prone (on the stomach) INCREASES the risk of SIDS.
• Co-sleeping in the same bed as an adult at all times — Bed-sharing with adults increases the risk, especially if the adult smokes, drinks or takes sedatives.
• Using soft, loose bedding in the crib — Soft, loose bedding increases the risk of suffocation and SIDS.

⭐ Key point: SIDS peaks at 2–4 months of age. Teach all parents safe sleep before discharge.$x$, null),
(151, $x$Florence Nightingale's Environmental Theory, published in 'Notes on Nursing,' primarily focuses on which idea?$x$, $x$Nursing should focus on manipulating the client's environment to place the body in the best condition for nature to act and for healing to occur$x$, $x$✅ Correct answer: Nursing should focus on manipulating the client's environment to place the body in the best condition for nature to act and for healing to occur
Florence Nightingale's Environmental Theory says the nurse's main job is to manage the patient's ENVIRONMENT — fresh air, light, warmth, cleanliness, quiet, clean water, drainage and good food — so that nature can heal the body. She believed disease was helped or hindered by surroundings. Her ideas began modern infection control and patient comfort.

❌ Why the other options are wrong:
• Nursing should focus exclusively on administering medications prescribed by physicians — Giving medications is part of nursing, but Nightingale's theory is about the environment, not drug administration.
• Illness is caused solely by genetic predisposition and cannot be influenced by environment — Nightingale believed the environment strongly affects health, so illness is not "solely genetic".
• The nurse's primary role is to perform invasive procedures independent of physicians — Performing invasive procedures independently is not her theory.

⭐ Key point: Nightingale is called the founder of modern nursing; she wrote "Notes on Nursing" (1859) and improved care in the Crimean War through hygiene.$x$, null),
(152, $x$Which of the following is one of Henderson's 14 basic needs related to physiological function?$x$, $x$Breathe normally$x$, $x$✅ Correct answer: Breathe normally
Virginia Henderson described 14 basic needs that the nurse helps patients meet when they cannot meet them alone. The FIRST is "Breathe normally". Others include: eat and drink adequately, eliminate, move and keep a good posture, sleep and rest, dress, keep body temperature normal, keep clean, avoid danger, communicate, worship, work, play and learn.

❌ Why the other options are wrong:
• Achieve self-actualization — Self-actualisation is the top of Maslow's hierarchy, not one of Henderson's needs.
• Maintain the flexible line of defense — The flexible line of defence comes from Neuman's Systems Model.
• Engage in role-function adaptation — Role-function adaptation comes from Roy's Adaptation Model.

⭐ Key point: Henderson's definition of nursing: helping the person "perform those activities contributing to health or its recovery that he would perform unaided if he had the necessary strength, will or knowledge".$x$, null),
(153, $x$Orem identified three types of nursing systems. One of them is:$x$, $x$Wholly compensatory$x$, $x$✅ Correct answer: Wholly compensatory
Dorothea Orem's self-care deficit theory describes three nursing systems depending on how much the patient can do for themselves. 1) WHOLLY COMPENSATORY: the nurse does everything (an unconscious, ventilated ICU patient). 2) Partly compensatory: the nurse and patient share care. 3) Supportive-educative: the patient can do the care with teaching and support.

❌ Why the other options are wrong:
• Team nursing — Team nursing is a way of organising staff, not one of Orem's systems.
• Primary nursing — Primary nursing is a care delivery model, not one of Orem's systems.
• Individualised client care — Individualised client care is a general concept, not one of Orem's three systems.

⭐ Key point: Most ICU patients start in the wholly compensatory system and move toward supportive-educative as they recover.$x$, null),
(154, $x$In Sister Callista Roy's Adaptation Model, the person is viewed as:$x$, $x$A biopsychosocial adaptive system that receives input (stimuli) and produces output in the form of adaptive or ineffective responses$x$, $x$✅ Correct answer: A biopsychosocial adaptive system that receives input (stimuli) and produces output in the form of adaptive or ineffective responses
In Callista Roy's Adaptation Model, the person is an ADAPTIVE SYSTEM. Stimuli (focal, contextual and residual) are the input. The person's coping processes (the regulator, which is physiological, and the cognator, which is mental and emotional) process these stimuli. The output is behaviour, which is either ADAPTIVE (healthy) or INEFFECTIVE. Adaptation happens in four modes: physiological, self-concept, role function, and interdependence.

❌ Why the other options are wrong:
• A passive recipient of environmental changes with no internal processing mechanisms — Roy sees the person as active, not a passive recipient.
• A system defined solely by 14 basic needs — The 14 basic needs belong to Henderson, not Roy.
• An energy field indistinguishable from the environment — An energy field indistinguishable from the environment is Martha Rogers' view.

⭐ Key point: The goal of nursing in Roy's model is to promote adaptation in the four modes.$x$, null),
(155, $x$The following Stressors that disrupt the system according Neumann's model include ------ ------$x$, $x$Intra-personal, inter- personal, and extra personal stressors.$x$, $x$✅ Correct answer: Intra-personal, inter- personal, and extra personal stressors.
In Betty Neuman's Systems Model, stressors are classified by where they come from. INTRApersonal stressors arise within the person (such as pain or fear). INTERpersonal stressors arise between people (such as conflict with family or staff). EXTRApersonal stressors arise from outside the person (such as finances or the hospital environment). Stressors can break through the lines of defence and cause illness.

❌ Why the other options are wrong:
• The primary, secondary, and tertiary stressor. — Primary, secondary and tertiary are levels of PREVENTION (interventions) in Neuman's model, not types of stressors.
• The individuals, families, and groups stressor — Individuals, families and groups are possible CLIENTS in her model, not stressors.
• Physiological, sociocultural, and developmental stressor — Physiological, sociocultural and developmental are VARIABLES of the client system, not stressor categories.

⭐ Key point: Neuman's model includes the flexible line of defence (outer), the normal line of defence, lines of resistance, and the basic core structure.$x$, null),
(156, $x$A nurse using Rogers' Science of Unitary Human Beings as a guiding framework would most likely incorporate which of the following into practice?$x$, $x$Therapeutic touch or other modalities intended to promote harmonious patterning of the human and environmental energy fields$x$, $x$✅ Correct answer: Therapeutic touch or other modalities intended to promote harmonious patterning of the human and environmental energy fields
Martha Rogers' Science of Unitary Human Beings sees each person as an energy field that is constantly exchanging energy with the environmental energy field. The nurse aims to promote harmony between the two fields. Practices like THERAPEUTIC TOUCH, relaxation, music and imagery come from this view.

❌ Why the other options are wrong:
• Strict enforcement of the 14 basic needs checklist — The 14 basic needs checklist belongs to Henderson.
• Ranking patient needs using Maslow's pyramid exclusively — Maslow's pyramid is a psychology theory, not Rogers' framework.
• Assessment limited only to the 11 functional health patterns — The 11 functional health patterns belong to Marjory Gordon.

⭐ Key point: Key Rogers concepts are energy fields, openness, pattern and pandimensionality (the principles of homeodynamics).$x$, null),
(157, $x$Marjory Gordon's Functional Health Patterns framework is primarily used by nurses to:$x$, $x$Organize a systematic, holistic nursing assessment across defined categories of client behavior over time$x$, $x$✅ Correct answer: Organize a systematic, holistic nursing assessment across defined categories of client behavior over time
Marjory Gordon's 11 Functional Health Patterns give nurses a structured way to do a HOLISTIC nursing assessment. They cover health perception and management, nutrition and metabolism, elimination, activity and exercise, sleep and rest, cognition and perception, self-perception, role and relationships, sexuality and reproduction, coping and stress, and values and beliefs. The data then guide nursing diagnoses.

❌ Why the other options are wrong:
• Diagnose medical conditions independently of physicians — Nurses do not diagnose medical conditions with this framework; they make NURSING diagnoses.
• Replace the nursing process entirely with a single-step evaluation — It supports the nursing process; it does not replace it.
• Calculate a client's position on the health-illness continuum numerically — It does not calculate a numerical position on a health–illness scale.

⭐ Key point: Gordon's patterns are widely used to organise admission assessments and link well with NANDA nursing diagnoses.$x$, null),
(158, $x$According to Maslow's hierarchy, the most basic needs are:$x$, $x$Physiological needs$x$, $x$✅ Correct answer: Physiological needs
Maslow's hierarchy has five levels, from the bottom up: PHYSIOLOGICAL needs (air, water, food, sleep, elimination), then safety and security, love and belonging, esteem, and self-actualisation at the top. The physiological needs are the most basic and must be met first. In nursing, this is why AIRWAY, BREATHING and CIRCULATION come first when prioritising care.

❌ Why the other options are wrong:
• Safety and security needs — Safety and security are the second level.
• Self-actualisation needs — Self-actualisation is the TOP (highest) level.
• Social needs — Social (love and belonging) needs are the third level.

⭐ Key point: In exam questions about priority, choose the answer that meets a physiological need (especially oxygen and airway) before psychological or educational needs.$x$, null),
(159, $x$The standard format for writing a 'problem-focused' (actual) NANDA-I nursing diagnosis is often referred to as the PES format, meaning:$x$, $x$Problem, Etiology, Signs and symptoms (defining characteristics)$x$, $x$✅ Correct answer: Problem, Etiology, Signs and symptoms (defining characteristics)
A problem-focused (actual) NANDA-I nursing diagnosis is written in PES format. P is the PROBLEM (the NANDA label, such as "Ineffective airway clearance"). E is the ETIOLOGY ("related to" thick secretions and weak cough). S is the SIGNS and SYMPTOMS, the defining characteristics ("as evidenced by" coarse crackles and SpO₂ 88%).

❌ Why the other options are wrong:
• Plan, Evaluate, Solve — Plan, Evaluate, Solve is not the PES format.
• Patient, Environment, Standard — Patient, Environment, Standard is not the PES format.
• Priority, Evidence, Solution — Priority, Evidence, Solution is not the PES format.

⭐ Key point: A RISK nursing diagnosis has no "S" part (the problem hasn't happened yet), for example "Risk for infection related to central venous catheter".$x$, null),
(160, $x$Standardised nursing terminologies such as NANDA, NIC, and NOC exist to:$x$, $x$Provide a consistent language for nursing diagnoses, interventions, and outcomes$x$, $x$✅ Correct answer: Provide a consistent language for nursing diagnoses, interventions, and outcomes
Standardised nursing languages give nurses a common, consistent vocabulary. NANDA-I covers nursing DIAGNOSES, NIC (Nursing Interventions Classification) covers nursing INTERVENTIONS, and NOC (Nursing Outcomes Classification) covers patient OUTCOMES. Using them improves communication, documentation, electronic records, research and showing the value of nursing care.

❌ Why the other options are wrong:
• Make documentation more variable between institutions — They make documentation MORE consistent, not more variable.
• Replace physician orders — They describe nursing care; they don't replace physician orders.
• Track hospital finances — They are not tools for tracking hospital finances.

⭐ Key point: Remember the trio: NANDA = diagnosis, NIC = intervention, NOC = outcome.$x$, null),
(161, $x$Which of the following goal statements is correctly written in SMART format?$x$, $x$"Client will ambulate the length of the hallway (20 meters) without shortness of breath by the end of the 3-day shift"$x$, $x$✅ Correct answer: "Client will ambulate the length of the hallway (20 meters) without shortness of breath by the end of the 3-day shift"
A SMART goal is Specific, Measurable, Achievable, Realistic and Time-bound. "Client will ambulate the length of the hallway (20 metres) without shortness of breath by the end of the 3-day shift" says who (the client), what (walk), how much (20 metres), under what condition (without shortness of breath) and by when (end of 3 days). It is patient-centred and measurable.

❌ Why the other options are wrong:
• "Client will feel better soon" — "Feel better soon" is vague and not measurable or time-bound.
• "Nurse will help the client walk" — "Nurse will help the client walk" is a nursing action (intervention), not a patient goal.
• "Client's pain will improve" — "Pain will improve" has no measure (such as a pain score) and no time frame.

⭐ Key point: Write goals about the PATIENT, with an action verb, a measurable criterion and a time frame. Another useful format is RUMBA.$x$, null),
(162, $x$A retrospective nursing audit involves reviewing records:$x$, $x$After the patient has been discharged$x$, $x$✅ Correct answer: After the patient has been discharged
A RETROSPECTIVE audit looks BACK at care after it has finished, by reviewing the patient's records after discharge. It checks whether care met the set standards (for example, whether every patient had a VTE assessment). It is easy to do but can't change care for that patient.

❌ Why the other options are wrong:
• During the care of the patient — Reviewing during the patient's care is a CONCURRENT audit.
• Before the patient is admitted to the hospital — Before admission there is no care to audit.
• To plan the patient's care before it begins — Planning care before it begins is care planning, not an audit.

⭐ Key point: Concurrent audit = during care (can correct problems as they happen). Retrospective audit = after discharge (looks for patterns to improve future care).$x$, null),
(163, $x$A 'null hypothesis' (H0) states that$x$, $x$There is no statistically significant relationship or difference between the variables being studied$x$, $x$✅ Correct answer: There is no statistically significant relationship or difference between the variables being studied
The null hypothesis (H₀) states that there is NO relationship or difference between the variables being studied. For example: "There is no difference in VAP rates between patients who receive chlorhexidine mouth care and those who don't." Statistical tests check whether the data are strong enough to REJECT the null hypothesis (usually p below 0.05).

❌ Why the other options are wrong:
• There is definitely a significant relationship between the variables — Stating there IS a significant relationship describes the alternative (research) hypothesis.
• The researcher's prediction is automatically correct — No hypothesis is "automatically correct"; it must be tested with data.
• Data collection is unnecessary — Data are always needed to test a hypothesis.

⭐ Key point: H₀ = no difference. H₁ (alternative) = there is a difference. Rejecting H₀ wrongly is a Type I error; failing to reject a false H₀ is a Type II error.$x$, null),
(164, $x$Which variable is NOT manipulated by the researcher but measured as the outcome?$x$, $x$Dependent variable$x$, $x$✅ Correct answer: Dependent variable
The DEPENDENT variable is the outcome that is MEASURED. Its value "depends" on the independent variable. The researcher doesn't change it directly. Example: in a study of whether early mobilisation shortens ICU stay, the length of stay is the dependent variable.

❌ Why the other options are wrong:
• Extraneous variable — An extraneous variable is an outside factor that might affect the result and needs controlling.
• Independent variable — The independent variable is the one the researcher manipulates or changes (the cause), such as early mobilisation.
• Internal variable — "Internal variable" is not a standard research term.

⭐ Key point: Independent = cause (what you change). Dependent = effect (what you measure).$x$, null),
(165, $x$Probability sampling gives every member of the population:$x$, $x$An equal chance of being selected$x$, $x$✅ Correct answer: An equal chance of being selected
In PROBABILITY (random) sampling, every member of the population has a known, usually EQUAL, chance of being chosen, as in drawing names from a hat or using random number tables. This reduces selection bias and allows the results to be generalised to the whole population. Types include simple random, stratified random, systematic and cluster sampling.

❌ Why the other options are wrong:
• Equal representation — Equal representation isn't guaranteed; random sampling gives an equal CHANCE, but the sample may not match the population perfectly.
• Guaranteed selection — No one is guaranteed to be chosen in random sampling.
• No chance of selection — With no chance of selection, there would be no sampling at all.

⭐ Key point: Non-probability sampling (convenience, purposive, snowball, quota) is common in qualitative research but cannot be generalised as confidently.$x$, null),
(166, $x$A patient's body weight measured in kilograms is an example of which scale of measurement?$x$, $x$Ratio$x$, $x$✅ Correct answer: Ratio
Weight in kilograms is RATIO data. It has equal intervals between values and a TRUE ZERO (0 kg means no weight), so you can say "80 kg is twice as heavy as 40 kg". Other ratio examples: height, age, urine output, heart rate.

❌ Why the other options are wrong:
• Nominal — Nominal data are names or categories without order (blood group, gender).
• Ordinal — Ordinal data have an order but unequal gaps (pain scored mild, moderate, severe; GCS).
• Interval — Interval data have equal gaps but NO true zero (temperature in °C, where 0 °C is not "no temperature").

⭐ Key point: Remember NOIR: Nominal, Ordinal, Interval, Ratio, from least to most information.$x$, null),
(167, $x$The following are Sources of literature review EXCEPT$x$, $x$Social medias$x$, $x$✅ Correct answer: Social medias
The question asks which is NOT a proper source for a literature review. Social media (Facebook, WhatsApp, Instagram, TikTok) is not a reliable academic source: posts are not peer-reviewed and often contain opinions or misinformation. Good sources include journal articles, dissertations and theses, books, existing theories, reports and reputable internet databases (PubMed, CINAHL, Cochrane).

❌ Why the other options are wrong:
• dissertations — Dissertations ARE a valid source (they are reviewed academic work).
• existing theory — Existing theory IS a valid source and often frames the study.
• Internet — The internet can be a valid source when using reputable databases and websites (journals, WHO, government sites).

⭐ Key point: Prefer primary sources (original research reports) and recent, peer-reviewed literature (usually within the last 5–10 years).$x$, null),
(168, $x$The "mean" of a data set is:$x$, $x$The sum of all values divided by the number of values$x$, $x$✅ Correct answer: The sum of all values divided by the number of values
The MEAN is the arithmetic average: add up all the values and divide by how many values there are. Example: heart rates 70, 80 and 90 give (70 + 80 + 90) ÷ 3 = 80. The mean uses every value but is pulled by extreme values (outliers).

❌ Why the other options are wrong:
• The most frequently occurring value — The most frequently occurring value is the MODE.
• The middle value when data are arranged in order — The middle value when the data are in order is the MEDIAN.
• The difference between the highest and lowest values — The difference between the highest and lowest values is the RANGE.

⭐ Key point: For skewed data (such as length of hospital stay), the median describes the middle better than the mean.$x$, null),
(169, $x$In most nursing and health research, a result is typically considered "statistically significant" when the p-value is:$x$, $x$Less than or equal to 0.05$x$, $x$✅ Correct answer: Less than or equal to 0.05
A p-value of 0.05 or less (p ≤ 0.05) is the usual cut-off for statistical significance in health research. It means there is a 5% or smaller probability that the result happened by chance if the null hypothesis were true. So the researcher rejects the null hypothesis and accepts that there is likely a real difference or relationship.

❌ Why the other options are wrong:
• Greater than 0.05 — A p-value above 0.05 is NOT significant; the result could easily be chance.
• Equal to 1.0 — p = 1.0 means no evidence at all against the null hypothesis.
• Greater than 0.5 — p above 0.5 is far from significant.

⭐ Key point: Statistical significance doesn't always mean clinical importance. Also look at the size of the effect and the confidence interval.$x$, null),
(170, $x$The Chi-square test is most appropriately used to analyse:$x$, $x$The relationship or association between two categorical (nominal) variables$x$, $x$✅ Correct answer: The relationship or association between two categorical (nominal) variables
The chi-square (χ²) test analyses the relationship between CATEGORICAL (nominal or ordinal) variables, using counts or frequencies in a table. Example: is there an association between gender (male/female) and developing VAP (yes/no)? It compares the observed numbers with the numbers expected if there were no relationship.

❌ Why the other options are wrong:
• The correlation between two continuous variables — The correlation between two continuous variables uses Pearson's r (or Spearman's).
• The mean difference between two groups — The mean difference between two groups uses a t-test (or ANOVA for three or more groups).
• The standard deviation of a single sample — The standard deviation describes the spread of one sample; it is not a chi-square test.

⭐ Key point: Choose the test by data type: categories → chi-square; means of 2 groups → t-test; means of 3+ groups → ANOVA; relationship between 2 continuous variables → correlation.$x$, null),
(171, $x$A quasi-experimental design differs from a true experimental design mainly because it$x$, $x$Lacks random assignment of subjects to groups, though it may still involve manipulation of the independent variable$x$, $x$✅ Correct answer: Lacks random assignment of subjects to groups, though it may still involve manipulation of the independent variable
A true experiment has three features: manipulation of the independent variable, a control group, and RANDOM assignment of participants to groups. A quasi-experimental design still tests an intervention but LACKS random assignment (and sometimes a control group), often because randomising is not possible or ethical in real wards. This makes it weaker for proving cause and effect.

❌ Why the other options are wrong:
• Never involves any form of intervention — Quasi-experiments DO involve an intervention.
• Always has a larger sample size than true experiments — Sample size is not what defines the design.
• Cannot be used to study cause-and-effect relationships at all — They can suggest cause and effect, though less strongly than RCTs.

⭐ Key point: The randomised controlled trial (RCT) is the strongest single study design for testing treatments. A systematic review of RCTs sits at the top of the evidence hierarchy.$x$, null),
(172, $x$A pilot study provides the opportunity to:$x$, $x$Test the research instrument$x$, $x$✅ Correct answer: Test the research instrument
A pilot study is a small trial run done before the main study. Its main purpose is to TEST the research instrument (questionnaire, checklist, equipment) and procedures: are the questions clear, how long does it take, does data collection work, is the tool reliable? Problems are fixed before the full study, saving time and money.

❌ Why the other options are wrong:
• Publish the results early — Pilot results are not meant for early publication; they test feasibility.
• Test the research subjects — Pilot studies test the methods, not the research subjects themselves.
• Understand the research problem — The research problem should be understood before the pilot, from the literature review.

⭐ Key point: Participants in the pilot are usually NOT included in the main study sample.$x$, null),
(173, $x$'Reliability' of a research instrument refers to$x$, $x$The consistency and stability with which the instrument produces the same results on repeated administration$x$, $x$✅ Correct answer: The consistency and stability with which the instrument produces the same results on repeated administration
RELIABILITY is how CONSISTENT and STABLE an instrument is: it gives the same result when used again under the same conditions, or by different people. Example: a reliable pain scale gives similar scores if the patient's pain hasn't changed. Types include test–retest, inter-rater reliability and internal consistency (Cronbach's alpha, aim for 0.7 or above).

❌ Why the other options are wrong:
• The degree to which the instrument measures the intended concept accurately — Measuring the intended concept accurately is VALIDITY, not reliability.
• The cost of producing and distributing the instrument — The cost of an instrument is unrelated to reliability.
• The number of items contained in a questionnaire — The number of items does not define reliability.

⭐ Key point: Reliability = consistency. Validity = accuracy (measures what it should). A tool can be reliable but not valid, but it cannot be valid without being reliable.$x$, null),
(174, $x$The first and most important function of a manager is:$x$, $x$Planning$x$, $x$✅ Correct answer: Planning
PLANNING is the first and most basic function of management. It means deciding in advance what to do, how, when and by whom: setting goals and objectives, and choosing the best methods. All the other functions (organising, staffing, directing, controlling) depend on the plan. Without planning, work is reactive and disorganised.

❌ Why the other options are wrong:
• Delegation — Delegation is a part of directing and organising; it follows planning.
• Funding — Funding (budgeting) is part of planning, not the first function itself.
• Supervision — Supervision is part of directing and controlling, which come after planning.

⭐ Key point: Fayol's functions of management, in order: Planning, Organising, Commanding (Directing), Coordinating, Controlling.$x$, null),
(175, $x$Henri Fayol's 14 principles include the following EXCEPT:$x$, $x$Strategic management$x$, $x$✅ Correct answer: Strategic management
The question asks which is NOT one of Fayol's 14 principles. "Strategic management" is a modern management concept, not one of Henri Fayol's 14 principles (1916). His principles include division of labour, authority and responsibility, discipline, unity of command, unity of direction, subordination of individual interest, remuneration, centralisation, scalar chain, order, equity, stability of tenure, initiative, and esprit de corps.

❌ Why the other options are wrong:
• Division of labour — Division of labour IS one of his principles (specialisation improves efficiency).
• Discipline — Discipline IS one of his principles (respect for rules and agreements).
• Unity of command — Unity of command IS one of his principles (each worker has only one boss).

⭐ Key point: Fayol is the father of administrative (modern) management; Taylor is the father of scientific management.$x$, null),
(176, $x$The ‘father’ of Scientific Management is:$x$, $x$Frederick W. Taylor$x$, $x$✅ Correct answer: Frederick W. Taylor
Frederick Winslow Taylor is the "father of scientific management" (Principles of Scientific Management, 1911). He used time-and-motion studies to find the "one best way" to do each task, selected and trained workers scientifically, and linked pay to output (piece-rate). His ideas aimed to increase efficiency and productivity.

❌ Why the other options are wrong:
• Henry Gantt — Henry Gantt was Taylor's associate and created the Gantt chart for scheduling.
• W. Edwards Deming — W. Edwards Deming is linked with Total Quality Management and the PDSA cycle.
• Henry Ford — Henry Ford introduced the moving assembly line in car manufacturing.

⭐ Key point: Classical management thinkers: Taylor (scientific management), Fayol (administrative management), Weber (bureaucracy).$x$, null),
(177, $x$In Herzberg's theory, the following are motivators EXCEPT:$x$, $x$Money (salary)$x$, $x$✅ Correct answer: Money (salary)
Herzberg's two-factor theory separates MOTIVATORS (which create satisfaction and drive people to work harder: achievement, recognition, responsibility, the work itself, advancement and growth) from HYGIENE factors (which prevent dissatisfaction but don't motivate: salary/money, working conditions, company policy, supervision, job security, relationships). Money is a HYGIENE factor, so it is the exception.

❌ Why the other options are wrong:
• Recognition — Recognition IS a motivator.
• Achievement — Achievement IS a motivator.
• Challenging work — Challenging work (the work itself) IS a motivator.

⭐ Key point: Poor pay causes dissatisfaction, but good pay alone does not motivate long-term. Recognition and growth do.$x$, null),
(178, $x$Which leadership style is most appropriate during a mass casualty emergency?$x$, $x$Autocratic$x$, $x$✅ Correct answer: Autocratic
In a mass casualty emergency there is no time for discussion. Quick, clear decisions and firm direction are needed to save lives. The AUTOCRATIC (authoritarian) style, where the leader makes decisions and gives direct orders, is most effective in emergencies, cardiac arrests and situations with inexperienced staff.

❌ Why the other options are wrong:
• Democratic — The democratic style involves the team in decisions; it is good for planning but too slow in a crisis.
• Laissez-faire — The laissez-faire style gives little direction; it would be dangerous in an emergency.
• Affiliative — The affiliative style focuses on harmony and feelings, not quick decisions.

⭐ Key point: No leadership style is best for everything. Choose based on the situation (situational leadership). Transformational leadership is best for long-term improvement.$x$, null),
(179, $x$A nurse delegates the administration of intravenous medication to a nursing assistant. This action is:$x$, $x$Inappropriate because it exceeds the assistant's scope of practice$x$, $x$✅ Correct answer: Inappropriate because it exceeds the assistant's scope of practice
Giving IV medication requires knowledge, judgement and skills (drug calculations, checking compatibility, monitoring for reactions) that are within the scope of a registered nurse, not a nursing assistant. Delegating it is INAPPROPRIATE and unsafe. If harm occurs, the nurse who delegated is accountable.

❌ Why the other options are wrong:
• Appropriate — It is not appropriate, because the task is outside the assistant's role.
• Acceptable if supervised — Supervision cannot make a task acceptable if it is outside the person's legal scope.
• Recommended during emergencies — Emergencies do not allow staff to work outside their scope of practice.

⭐ Key point: The 5 rights of delegation: right task, right circumstance, right person, right direction or communication, right supervision. You can delegate tasks, but not accountability.$x$, null),
(180, $x$Which of this budget is not part types of budget?$x$, $x$Supplementary budget$x$, $x$✅ Correct answer: Supplementary budget
The main types of budgets in health care management are the OPERATIONAL (operating) budget for day-to-day running costs, the CAPITAL budget for large, long-lasting items like equipment and buildings, and the PERSONNEL budget for staff salaries and benefits (often part of the operating budget). A "supplementary budget" is a government term for extra funds added during the year, not a standard type of nursing unit budget.

❌ Why the other options are wrong:
• Personnel budget — The personnel budget IS a type (salaries, overtime, benefits).
• Operational budget — The operational budget IS a type (supplies, utilities, daily running).
• Capital budget — The capital budget IS a type (ventilators, monitors, building works).

⭐ Key point: Other budget approaches: zero-based budgeting (justify every item from zero), incremental budgeting (add a percentage to last year's budget), and flexible budgeting.$x$, null),
(181, $x$According to adult learning principles (andragogy), adults learn best when the content is:$x$, $x$Relevant, problem-centred, and builds on their prior experience$x$, $x$✅ Correct answer: Relevant, problem-centred, and builds on their prior experience
Malcolm Knowles' principles of adult learning (andragogy) say adults learn best when learning is RELEVANT to their work or life, PROBLEM-CENTRED (solving real problems) and builds on their EXPERIENCE. Adults are self-directed, motivated by internal factors, and want to know WHY they need to learn something. Use case studies, discussion, simulation and hands-on practice.

❌ Why the other options are wrong:
• Abstract, theoretical, and disconnected from real experience — Abstract theory disconnected from experience is less effective for adults.
• Delivered purely through passive lecture with no interaction — Passive lectures with no interaction ignore adults' experience and self-direction.
• Identical regardless of the learner's background — Adults differ; teaching should consider each learner's background.

⭐ Key point: Pedagogy = teaching children (teacher-directed). Andragogy = teaching adults (self-directed, experience-based).$x$, null),
(182, $x$A method of Teaching includes all the following Except....$x$, $x$Tertiary$x$, $x$✅ Correct answer: Tertiary
The question asks which is NOT a teaching method. "Tertiary" means third level (as in tertiary education or tertiary hospitals); it is not a method of teaching. Teaching methods include explanation, lecture, demonstration (with return demonstration), discussion, role play, simulation, case study, tutorials and e-learning.

❌ Why the other options are wrong:
• Explanation — Explanation IS a teaching method.
• Lecturing — Lecturing IS a teaching method (good for large groups and knowledge).
• Demonstration — Demonstration IS a teaching method (best for practical skills).

⭐ Key point: For skills, use demonstration and return demonstration. For attitudes, use discussion and role play. For knowledge, use lectures, reading and e-learning.$x$, null),
(183, $x$Evaluation that occurs continuously throughout the implementation of care (e.g., during each shift) is called:$x$, $x$Formative (ongoing) evaluation$x$, $x$✅ Correct answer: Formative (ongoing) evaluation
FORMATIVE evaluation happens CONTINUOUSLY during care, for example each shift: checking the patient's response and adjusting the plan as you go. It "forms" the care while it is happening. In nursing, ongoing reassessment (such as pain scores after analgesia) is formative evaluation.

❌ Why the other options are wrong:
• Summative evaluation — Summative evaluation happens at the END (for example at discharge) to judge the final outcome.
• Structure evaluation — Structure evaluation looks at resources (staff, equipment, buildings), not ongoing patient care.
• Terminal evaluation — Terminal evaluation is another name for evaluation at the end, which is summative.

⭐ Key point: Formative = during (to improve). Summative = at the end (to judge the result).$x$, null),
(184, $x$An incident report should be completed when:$x$, $x$A medication error occurs$x$, $x$✅ Correct answer: A medication error occurs
An incident report is completed for any event that caused, or could have caused, harm to a patient, visitor or staff member, or that is not consistent with routine care. A MEDICATION ERROR is a classic example. Others: falls, needlestick injuries, equipment failures, wrong-patient procedures and near misses. The report is used to learn and improve the system, not to blame.

❌ Why the other options are wrong:
• A patient is discharged — Discharge is routine and needs no incident report.
• A nurse resumes duty — Resuming duty is routine.
• The ward is cleaned — Cleaning the ward is routine.

⭐ Key point: The incident report is NOT placed in the patient's notes, and the notes don't say "incident form completed"; record the facts of what happened and the care given.$x$, null),
(185, $x$The Nursing and Midwifery Council of Nigeria (NMCN), as a professional regulatory body, is primarily responsible for:$x$, $x$Setting nursing education standards, registering/licensing nurses, and enforcing professional discipline$x$, $x$✅ Correct answer: Setting nursing education standards, registering/licensing nurses, and enforcing professional discipline
The Nursing and Midwifery Council of Nigeria (NMCN) is the government body that regulates nursing and midwifery in Nigeria. Its roles: setting and monitoring standards of nursing and midwifery education, accrediting schools, conducting licensing examinations (including post-basic council exams), registering and licensing nurses and midwives, renewing licences, and DISCIPLINING professional misconduct to protect the public.

❌ Why the other options are wrong:
• Only organising nursing conferences — Organising conferences is not its main legal function.
• Managing hospital construction budgets — Hospital construction budgets are not its responsibility.
• Setting national drug prices — Drug prices are not set by the NMCN.

⭐ Key point: The professional association and union for nurses is NANNM (National Association of Nigerian Nurses and Midwives), which is different from the regulator, the NMCN.$x$, null),
(186, $x$The doctrine of 'Res Ipsa Loquitur' ('the thing speaks for itself') applies when:$x$, $x$An injury is of a type that would not normally occur without someone's negligence (e.g. a retained surgical instrument)$x$, $x$✅ Correct answer: An injury is of a type that would not normally occur without someone's negligence (e.g. a retained surgical instrument)
Res ipsa loquitur ("the thing speaks for itself") is a legal rule used when the injury is of a kind that would NOT normally happen without negligence, the thing that caused it was under the professional's control, and the patient did not contribute. A swab or instrument left inside after surgery is the classic example. The patient doesn't have to prove exactly how the negligence happened.

❌ Why the other options are wrong:
• A patient explicitly consents to a risky procedure — A patient consenting to a risky procedure doesn't apply here; consent relates to known risks, not negligence.
• A nurse documents care accurately — Accurate documentation is good practice and not related to this doctrine.
• A patient refuses treatment — A patient's refusal of treatment is about autonomy and consent.

⭐ Key point: Prevent such events with surgical safety checklists, swab and instrument counts, and correct-site marking.$x$, null),
(187, $x$The four elements that must be proven to establish nursing negligence are:$x$, $x$Duty, breach of duty, causation, and damages$x$, $x$✅ Correct answer: Duty, breach of duty, causation, and damages
To prove negligence, all FOUR elements must be shown. 1) DUTY of care existed (a nurse–patient relationship). 2) BREACH of that duty (care fell below the expected standard). 3) CAUSATION (the breach directly caused the harm). 4) DAMAGES (actual harm or loss occurred). If any element is missing, negligence is not proven.

❌ Why the other options are wrong:
• Consent, capacity, competence, and cost — Consent, capacity, competence and cost relate to consent and resources, not negligence.
• Autonomy, beneficence, non-maleficence, and justice — Autonomy, beneficence, non-maleficence and justice are ETHICAL principles.
• Assessment, diagnosis, planning, and evaluation — Assessment, diagnosis, planning and evaluation are steps of the NURSING PROCESS.

⭐ Key point: Good documentation, following policies, staying within your scope and keeping up to date are the nurse's best protection against negligence claims.$x$, null),
(188, $x$'Battery' in a legal/nursing context refers to:$x$, $x$Unlawful physical contact with a patient without consent$x$, $x$✅ Correct answer: Unlawful physical contact with a patient without consent
Battery is unlawful, intentional TOUCHING of a person without their consent, even if no harm is done and even if the touching was meant to help. Examples: giving an injection, inserting a catheter or doing a procedure when the patient has refused or not consented. Assault is threatening to touch, causing fear of being touched.

❌ Why the other options are wrong:
• A device that powers medical equipment — A battery that powers equipment is the everyday meaning, not the legal one.
• A type of medication error — A medication error is a different issue (possible negligence).
• A category of documentation — Battery is not a documentation category.

⭐ Key point: Always get valid consent before touching or treating a patient, and respect refusal. In emergencies with no capacity, act in the patient's best interests.$x$, null),
(189, $x$For informed consent to be legally valid, it must include all of the following EXCEPT:$x$, $x$Approval from a family member instead of the patient, when the patient has full capacity$x$, $x$✅ Correct answer: Approval from a family member instead of the patient, when the patient has full capacity
The question asks which is NOT needed for valid consent. If the adult patient has full capacity, only THEY can consent. A family member's approval cannot replace the patient's own decision. Valid consent needs adequate INFORMATION (risks, benefits, alternatives), CAPACITY (able to understand, retain, weigh and communicate) and VOLUNTARY agreement (no pressure).

❌ Why the other options are wrong:
• Adequate information given to the patient — Adequate information IS required.
• Patient capacity to understand the information — Patient capacity IS required.
• Voluntary agreement, free from coercion — Voluntary agreement IS required.

⭐ Key point: Family can be involved and consulted, but they cannot consent for or overrule a competent adult. Consent for children is given by parents or guardians.$x$, null),
(190, $x$'Veracity' as an ethical principle in nursing means:$x$, $x$Truthfulness and honesty with patients$x$, $x$✅ Correct answer: Truthfulness and honesty with patients
VERACITY means TRUTHFULNESS: being honest with patients, not lying or deceiving them, and giving information they need to make decisions. It builds trust and supports autonomy (informed consent). It also means being honest when errors occur (duty of candour).

❌ Why the other options are wrong:
• Loyalty and faithfulness to commitments — Loyalty and faithfulness to commitments is FIDELITY.
• Fairness in resource distribution — Fairness in distributing resources is JUSTICE.
• Avoiding harm — Avoiding harm is NON-MALEFICENCE.

⭐ Key point: Ethical principles: autonomy, beneficence, non-maleficence, justice, veracity (truth), fidelity (keeping promises) and confidentiality.$x$, null),
(191, $x$A Do-Not-Resuscitate (DNR) order should be:$x$, $x$Clearly documented in the medical record and communicated to the entire care team$x$, $x$✅ Correct answer: Clearly documented in the medical record and communicated to the entire care team
A DNR (DNACPR) order must be CLEARLY DOCUMENTED in the patient's record (on the proper form, signed and dated by the senior doctor responsible) and COMMUNICATED to the whole team at handover, so everyone knows not to start CPR. It should be discussed with the patient (if they have capacity) and/or the family, and reviewed regularly.

❌ Why the other options are wrong:
• Assumed automatically for all elderly patients — A DNR is never automatic for elderly patients; age alone is not a reason.
• Kept verbal only, never written — A verbal-only DNR is unsafe and legally risky.
• Decided solely by the nurse without physician or patient/family involvement — The nurse cannot decide alone; a senior doctor makes the decision with the patient or family.

⭐ Key point: DNR means no CPR only. All other care (pain relief, oxygen, feeding, antibiotics, dignity) continues unless separately decided.$x$, null),
(192, $x$The Good Samaritan act covers:$x$, $x$Protection from civil liability when emergency care is provided in good faith$x$, $x$✅ Correct answer: Protection from civil liability when emergency care is provided in good faith
Good Samaritan laws protect people who give EMERGENCY care in GOOD FAITH, outside their job (such as at a roadside accident), from civil liability (being sued), as long as they act within their training, without payment, and without gross negligence. These laws encourage health workers and the public to help in emergencies.

❌ Why the other options are wrong:
• Residents of long-term care facilities — Residents of long-term care facilities are covered by care standards, not specifically this law.
• Passerby in car accidents — Passersby are covered only when they help in good faith; the law protects helpers, not people simply present.
• Nurses who choose not to provide care in an emergency — Refusing to help in an emergency is not protected, and it may raise ethical issues.

⭐ Key point: When helping at the roadside, stay within your skills, get consent if possible, hand over to emergency services, and document what you did afterwards.$x$, null),
(193, $x$If you make a mistake in a record how should it be corrected?$x$, $x$Put a single line through the record$x$, $x$✅ Correct answer: Put a single line through the record
To correct an error in a record, draw a SINGLE LINE through the wrong entry so it can still be read. Write "error" (or "written in error"), and add your initials or signature, the date and the time. Then write the correct information. This keeps the record honest and shows exactly what was changed.

❌ Why the other options are wrong:
• With correction fluid — Correction fluid hides the original entry, which looks like falsification of records.
• Scribble it out — Scribbling out makes the original unreadable and looks like tampering.
• Tell your mentor — Telling your mentor alone does not correct the record legally.

⭐ Key point: Never erase, tear out pages, or leave blank spaces. For electronic records, use the system's correction or amendment function.$x$, null),
(194, $x$A conscious, competent adult patient refuses a blood transfusion on religious grounds despite life-threatening anaemia. The nurse's ethically and legally appropriate response is to:$x$, $x$Respect the patient's autonomous refusal after ensuring they are fully informed, and document thoroughly$x$, $x$✅ Correct answer: Respect the patient's autonomous refusal after ensuring they are fully informed, and document thoroughly
A conscious adult with capacity has the legal and ethical right to refuse ANY treatment, even life-saving treatment, including a blood transfusion for religious reasons (such as Jehovah's Witnesses). This respects AUTONOMY. The nurse makes sure the patient is fully informed of the risks, explores alternatives (iron, erythropoietin, cell salvage, tranexamic acid), and DOCUMENTS the refusal carefully. Care continues.

❌ Why the other options are wrong:
• Administer the transfusion anyway, since the situation is life-threatening — Giving blood anyway would be battery and a violation of autonomy.
• Have a family member override the patient's decision — Family members cannot override a competent adult's decision.
• Discharge the patient immediately with no further care — Discharging the patient without care is abandonment; other care continues.

⭐ Key point: An advance decision (such as a "no blood" card) must also be respected. For children, the courts can authorise transfusion in an emergency.$x$, null),
(195, $x$Which of the following is a recognised advantage of the Subjective Global Assessment (SGA) over purely laboratory-based nutritional assessment?$x$, $x$It reliably predicts nutrition-related clinical outcomes and is not confounded by fluid shifts or acute-phase inflammatory changes the way serum albumin can be$x$, $x$✅ Correct answer: It reliably predicts nutrition-related clinical outcomes and is not confounded by fluid shifts or acute-phase inflammatory changes the way serum albumin can be
Subjective Global Assessment (SGA) is a bedside nutrition assessment based on history (weight loss, intake, gut symptoms, function) and examination (loss of fat and muscle, oedema). It predicts nutrition-related outcomes well. Unlike serum albumin, it is NOT distorted by fluid shifts or acute inflammation: albumin falls in critical illness because of inflammation and dilution, not just malnutrition.

❌ Why the other options are wrong:
• It requires no clinician training — SGA DOES need training to do well.
• It does not require any patient history — SGA DEPENDS on the patient's history; it is not done without it.
• It replaces the need for anthropometric data entirely — SGA uses clinical examination of body composition; it does not replace all anthropometric data.

⭐ Key point: In critically ill patients, albumin and prealbumin are poor nutrition markers. Use clinical tools (SGA, NUTRIC score) instead.$x$, null),
(196, $x$A patient on TPN is at risk for refeeding syndrome. The nurse should be most vigilant for which of the following electrolyte imbalances?$x$, $x$Hypophosphatemia$x$, $x$✅ Correct answer: Hypophosphatemia
In refeeding syndrome, starved patients are suddenly given nutrition (enteral or TPN). Insulin rises and drives glucose, PHOSPHATE, potassium and magnesium into the cells. Serum phosphate can fall dangerously, causing muscle weakness (including the diaphragm, leading to breathing failure and failure to wean), heart failure, arrhythmias, confusion, seizures and death. HYPOPHOSPHATAEMIA is the hallmark.

❌ Why the other options are wrong:
• Hypernatremia — Sodium can shift, but high sodium is not the typical refeeding problem.
• Hyperkalemia — Potassium FALLS (hypokalaemia), it doesn't rise.
• Hypocalcemia — Calcium can be affected but is not the key electrolyte in refeeding.

⭐ Key point: Prevent refeeding: identify at-risk patients (low BMI, little intake for 5 days or more, alcohol misuse), give thiamine before feeding, start slowly (10–20 kcal/kg/day), and check phosphate, potassium and magnesium daily.$x$, null),
(197, $x$Enteral nutrition is generally preferred over parenteral nutrition when:$x$, $x$The gut is functioning$x$, $x$✅ Correct answer: The gut is functioning
"If the gut works, use it." Enteral nutrition (via the gut, by mouth or tube) is preferred whenever the gastrointestinal tract is FUNCTIONING. It keeps the gut lining healthy, supports gut immunity, reduces infections and bacterial translocation, has fewer complications than TPN (no line infections, fewer metabolic problems), and is cheaper.

❌ Why the other options are wrong:
• The gut has completely failed — If the gut has completely failed (obstruction, severe ileus, short bowel), parenteral nutrition is used.
• Never — parenteral is always preferred — Parenteral is NOT always preferred; it is the second choice.
• Only in paediatric patients — Enteral feeding is preferred in adults and children alike.

⭐ Key point: Start enteral feeding within 24–48 hours in ICU when the patient is haemodynamically stable. Use parenteral nutrition only if enteral feeding is impossible or not enough.$x$, null),
(198, $x$A nasogastric tube's position should be confirmed before feeding by:$x$, $x$pH testing of aspirate and/or X-ray confirmation$x$, $x$✅ Correct answer: pH testing of aspirate and/or X-ray confirmation
Before the first feed (and before each feed or drug), the NG tube position must be checked. Approved methods: aspirate gastric fluid and test its pH with pH paper (pH 5.5 or below means the stomach), or, if no aspirate or pH is above 5.5, get a CHEST X-RAY read by a competent person. The X-ray is the gold standard, especially in ventilated or unconscious patients.

❌ Why the other options are wrong:
• Auscultation ('whoosh test') alone — The "whoosh test" (listening for air) is UNRELIABLE and must never be used; it can sound the same if the tube is in the lung.
• The patient's verbal comfort report only — The patient's comfort tells you nothing about position; tubes in the lung may cause no symptoms.
• Tube colour — The tube's colour does not show where it is.

⭐ Key point: Feeding through a misplaced NG tube (in the lung) is a "never event". Mark the tube's length at the nostril and recheck it before use.$x$, null),
(199, $x$Manual hyperinflation$x$, $x$Technique is used in the management of ventilated patients$x$, $x$✅ Correct answer: Technique is used in the management of ventilated patients
Manual hyperinflation (MHI) is a chest physiotherapy technique used in VENTILATED (intubated) patients. The patient is disconnected and given slow, deep breaths with a manual bag (larger than normal tidal volume), followed by a short inspiratory hold and then a quick release. This mimics a cough, re-expands collapsed lung areas, and moves secretions up to be suctioned.

❌ Why the other options are wrong:
• Involve the use of expiratory pause of 5-10 seconds — The hold is short (inspiratory pause of 2–3 seconds), not a 5–10 second expiratory pause.
• Is used to provide fast and slow expiratory breath — MHI uses a slow deep breath in and a FAST release, not "fast and slow expiratory breaths".
• Technique is not used in the management of patient's self-ventilating — It is used mainly in intubated patients, but this statement is weaker than the correct one, which describes its main use.

⭐ Key point: Avoid MHI in unstable patients, those with high PEEP needs, undrained pneumothorax, bronchospasm or raised ICP. Monitor BP and SpO₂ during it.$x$, null),
(200, $x$Electrotherapy equipment includes:$x$, $x$Transcutaneous electrical nerve stimulation (TENS)$x$, $x$✅ Correct answer: Transcutaneous electrical nerve stimulation (TENS)
Electrotherapy uses electrical energy to treat patients, mainly for pain relief and muscle stimulation. TENS (transcutaneous electrical nerve stimulation) sends mild electrical pulses through skin pads. These block pain signals (the "gate control" theory) and may release endorphins. It is used for pain after surgery, in labour and in chronic pain.

❌ Why the other options are wrong:
• MRI — MRI is a diagnostic imaging scanner using magnets, not a therapy.
• Mammogram — A mammogram is an X-ray of the breast for diagnosis.
• Spirometer — A spirometer measures lung volumes and flow (a diagnostic or monitoring tool).

⭐ Key point: Do not use TENS over a pacemaker, the front of the neck, broken skin or the pregnant abdomen (except approved labour use), or in patients with epilepsy (over the head).$x$, null)
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
