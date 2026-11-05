-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 6, part B (questions 101–200)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(101, $x$A sustained rise in peak and plateau airway pressures unresponsive to suctioning and repositioning should prompt the nurse to:$x$, $x$Notify the physician promptly, as this may indicate worsening lung compliance, pneumothorax, or other significant pathology$x$, $x$✅ Correct answer: Notify the physician promptly, as this may indicate worsening lung compliance, pneumothorax, or other significant pathology
A SUSTAINED RISE in BOTH PEAK and PLATEAU pressures means the LUNGS or CHEST WALL have become STIFFER (reduced COMPLIANCE) — not just a simple airway blockage. If suctioning and repositioning have not helped, the cause may be serious: PNEUMOTHORAX, worsening ARDS or pulmonary oedema, right main bronchus intubation, atelectasis, or abdominal distension. The nurse should NOTIFY THE PHYSICIAN PROMPTLY and assess the patient (breath sounds, chest movement, SpO2, BP, tube position).

❌ Why the other options are wrong:
• Wait until the next shift to report it — Waiting until the next shift delays treatment of potentially life-threatening problems.
• Simply increase sedation and not report it — Increasing sedation without reporting may hide the problem.
• Decrease the tidal volume without an order — Changing tidal volume without an order is outside the nurse's scope (unless covered by protocol).

⭐ Key point: High peak + normal plateau = airway resistance problem. High peak + high plateau = compliance problem.$x$, null),
(102, $x$In a mechanically ventilated ICU patient, delivering salbutamol via a metered-dose inhaler with an inline spacer/adapter is generally preferred over a small-volume nebulizer because it:$x$, $x$Is equally effective when administered correctly, with less risk of ventilator circuit contamination$x$, $x$✅ Correct answer: Is equally effective when administered correctly, with less risk of ventilator circuit contamination
In ventilated patients, bronchodilators can be given by METERED-DOSE INHALER (MDI) with an IN-LINE SPACER/adapter, or by a small-volume nebuliser. When given correctly (actuated at the start of inspiration, multiple puffs), the MDI is EQUALLY EFFECTIVE. It has advantages: it does NOT require opening the circuit (LESS RISK OF CONTAMINATION and loss of PEEP), it is quicker, and dose delivery is more consistent.

❌ Why the other options are wrong:
• Requires disconnecting the ventilator circuit for each dose — An MDI with an in-line spacer does NOT require disconnecting the circuit.
• Delivers a substantially higher total dose of medication — It does not deliver a substantially higher dose; ventilated patients often need higher numbers of puffs.
• Cannot be used safely in ventilated patients — It CAN be used safely in ventilated patients.

⭐ Key point: Remove HMEs from between the MDI/nebuliser and the patient during delivery (or place the device correctly), as they trap the medication.$x$, null),
(103, $x$A female patient with ARDS is 175 cm tall and weighs 101 kg. Using lung-protective ventilation at 8 mL/kg predicted body weight, what tidal volume should be set?$x$, $x$About 529 mL$x$, $x$✅ Correct answer: About 529 mL
Use PREDICTED BODY WEIGHT (PBW) — based on HEIGHT and SEX, not actual weight. FEMALE PBW = 45.5 + 0.91 × (height in cm − 152.4). Here: 175 − 152.4 = 22.6; 0.91 × 22.6 = 20.57; 45.5 + 20.57 = 66.07 kg. Tidal volume at 8 mL/kg = 8 × 66.07 = 528.5 ≈ 529 mL.

❌ Why the other options are wrong:
• About 661 mL — 661 mL is 10 mL/kg PBW (too high).
• About 396 mL — 396 mL is 6 mL/kg PBW (a different target).
• About 808 mL — 808 mL is 8 mL/kg of her ACTUAL weight (101 kg) — dangerously high.

⭐ Key point: Lung-protective ventilation usually starts at 6 mL/kg PBW and stays between 4–8 mL/kg.$x$, null),
(104, $x$Which patient characteristic is most predictive of difficult bag-mask ventilation, independent of intubation difficulty?$x$, $x$Obesity (BMI significantly elevated), presence of a beard, or edentulous state$x$, $x$✅ Correct answer: Obesity (BMI significantly elevated), presence of a beard, or edentulous state
DIFFICULT BAG-MASK VENTILATION is predicted by: OBESITY (high BMI — heavy chest and abdomen, soft tissue in the airway), a BEARD (prevents a good mask seal), being EDENTULOUS (no teeth — cheeks sink in, making a seal difficult), age over 55, history of snoring or sleep apnoea, and limited jaw protrusion. Memory aid: "BOOTS" — Beard, Obese, Older, Toothless, Snores.

❌ Why the other options are wrong:
• Normal Mallampati score — A normal Mallampati score suggests easier intubation and ventilation.
• Short neck circumference only — A short neck may contribute, but neck circumference alone is not the best predictor.
• Full dentition — Full dentition helps the mask seal.

⭐ Key point: Prepare: oropharyngeal/nasopharyngeal airways, two-person technique, and a supraglottic device.$x$, null),
(105, $x$During a spontaneous breathing trial a patient breathes at 16/min with a tidal volume of 350 mL. What is the rapid shallow breathing index (RSBI)?$x$, $x$46 — likely to wean successfully$x$, $x$✅ Correct answer: 46 — likely to wean successfully
RAPID SHALLOW BREATHING INDEX (RSBI) = RESPIRATORY RATE ÷ TIDAL VOLUME in LITRES. Here: 16 ÷ 0.35 = 45.7 ≈ 46. An RSBI BELOW 105 suggests the patient is LIKELY TO WEAN SUCCESSFULLY.

❌ Why the other options are wrong:
• 46 — likely to fail weaning — 46 is correct, but a low RSBI predicts SUCCESS, not failure.
• 5.6 — likely to fail weaning — 5.6 is a calculation error.
• 22 — likely to wean successfully — 22 is a calculation error.

⭐ Key point: RSBI above 105 suggests fast, shallow breathing and likely weaning failure.$x$, null),
(106, $x$A ventilated ARDS patient has a plateau pressure of 26 cmH2O and PEEP of 10 cmH2O. What is the driving pressure?$x$, $x$16 cmH2O — too high (> 15), increasing the risk of lung injury$x$, $x$✅ Correct answer: 16 cmH2O — too high (> 15), increasing the risk of lung injury
DRIVING PRESSURE = PLATEAU PRESSURE − PEEP. Here: 26 − 10 = 16 cmH2O. The target is 15 cmH2O or LESS. A driving pressure above 15 is linked to higher mortality in ARDS, so 16 is slightly TOO HIGH and increases the risk of lung injury — consider reducing the tidal volume.

❌ Why the other options are wrong:
• 26 cmH2O — too high (> 15), increasing the risk of lung injury — 26 is the plateau pressure, not the driving pressure.
• 16 cmH2O — within the safe target (≤ 15) — 16 is correct, but it is ABOVE the safe target, not within it.
• 36 cmH2O — too high (> 15), increasing the risk of lung injury — 36 adds plateau and PEEP.

⭐ Key point: Lung-protective targets: tidal volume 4–8 mL/kg PBW, plateau ≤30, driving pressure ≤15 cmH2O.$x$, null),
(107, $x$The goal of using LOW tidal volume, LOW rate, and LOW PEEP together in ventilated asthma can be summarised as:$x$, $x$'Less trapping' — minimising further air trapping and barotrauma$x$, $x$✅ Correct answer: 'Less trapping' — minimising further air trapping and barotrauma
In ventilated ASTHMA, the narrowed airways slow exhalation, causing AIR TRAPPING (auto-PEEP), which can cause hypotension and pneumothorax. The strategy is to minimise trapping: LOW tidal volume (less air to exhale), LOW rate (more time to exhale), and LOW extrinsic PEEP (less pressure to trap air), accepting a higher CO2 (permissive hypercapnia). This can be summarised as "LESS TRAPPING".

❌ Why the other options are wrong:
• Maximising lung volumes at all costs — Maximising lung volumes would worsen air trapping.
• Ensuring the patient breathes exactly like a healthy person — The aim is not normal breathing, but to avoid harm.
• Achieving the highest possible peak pressures — High peak pressures increase the risk of barotrauma.

⭐ Key point: Watch for auto-PEEP using the flow waveform and an expiratory hold.$x$, null),
(108, $x$In mechanically ventilated patients, monitoring of peak and plateau airway pressures is important because:$x$, $x$A rising peak pressure with a normal plateau pressure suggests increased airway resistance, while a rise in both suggests decreased lung/chest wall compliance$x$, $x$✅ Correct answer: A rising peak pressure with a normal plateau pressure suggests increased airway resistance, while a rise in both suggests decreased lung/chest wall compliance
PEAK pressure reflects both airway RESISTANCE and lung/chest wall COMPLIANCE. PLATEAU pressure reflects only COMPLIANCE (alveolar pressure). A RISING PEAK with a NORMAL PLATEAU suggests INCREASED AIRWAY RESISTANCE (e.g. secretions, bronchospasm, kinked or bitten tube). A rise in BOTH suggests DECREASED COMPLIANCE (e.g. pneumothorax, pulmonary oedema, ARDS, abdominal distension).

❌ Why the other options are wrong:
• Airway pressures have no relationship to lung mechanics — Airway pressures are directly related to lung mechanics.
• High airway pressures always indicate ventilator malfunction and never reflect patient pathology — High pressures usually reflect patient problems, not just equipment.
• These pressures only need to be checked once per week — Airway pressures should be monitored continuously and recorded regularly.

⭐ Key point: Comparing peak and plateau helps quickly identify the cause of a high-pressure alarm.$x$, null),
(109, $x$A capnography waveform showing a gradual upsloping/prolonged expiratory phase (shark-fin pattern) in a ventilated patient suggests:$x$, $x$Bronchospasm/airway narrowing causing delayed expiratory airflow$x$, $x$✅ Correct answer: Bronchospasm/airway narrowing causing delayed expiratory airflow
A "SHARK-FIN" capnograph waveform has a slow, gradually UPSLOPING expiratory phase without a flat plateau. It shows that air is leaving the lungs slowly and unevenly through NARROWED AIRWAYS — BRONCHOSPASM (asthma, COPD) or partial airway obstruction.

❌ Why the other options are wrong:
• Normal airway function — Normal airway function shows a rectangular waveform with a flat plateau.
• Complete ETT obstruction — Complete obstruction would show NO waveform.
• Esophageal intubation — Oesophageal intubation would show a waveform that quickly disappears.

⭐ Key point: Treat bronchospasm and watch the waveform return to a normal shape.$x$, null),
(110, $x$The peak pressure alarm is sounding on the ventilator of a client with a recent tracheostomy. What intervention should be done first?$x$, $x$Assess the client's respiratory status$x$, $x$✅ Correct answer: Assess the client's respiratory status
When ANY ventilator alarm sounds, the FIRST action is to ASSESS THE PATIENT (look, listen, feel — respiratory distress, SpO2, chest movement, breath sounds, colour, tube/tracheostomy position). The patient's condition guides further actions. A peak pressure alarm in a patient with a recent tracheostomy may be due to secretions, biting, coughing, tube displacement, or kinked tubing — but the patient comes first.

❌ Why the other options are wrong:
• Decrease the sensitivity of the alarm — Decreasing alarm sensitivity hides the problem and is unsafe.
• Suction the client — Suctioning may be needed, but only after assessment.
• Ensure that the connecting tubing is not kinked — Checking tubing is important, but assessment of the patient comes first.

⭐ Key point: If you cannot quickly fix a ventilator problem and the patient is distressed, disconnect and hand-ventilate with 100% oxygen while calling for help.$x$, null),
(111, $x$A ventilated patient with bilateral infiltrates on PEEP 10 cmH2O has PaO2 55 mmHg on FiO2 0.4. Using the P/F ratio, how is this classified?$x$, $x$Moderate ARDS$x$, $x$✅ Correct answer: Moderate ARDS
The P/F RATIO compares the oxygen level in the blood (PaO2) with the oxygen given (FiO2). P/F = PaO2 ÷ FiO2. Here: 55 ÷ 0.4 = 137.5. In a patient with BILATERAL infiltrates on at least 5 cmH2O PEEP (Berlin definition of ARDS), severity is: MILD = 200–300; MODERATE = 100–200; SEVERE = 100 or less. 137.5 is MODERATE ARDS. (A healthy person on room air has a P/F around 400–500: 95 ÷ 0.21 ≈ 450.)

❌ Why the other options are wrong:
• Normal oxygenation (no ARDS) — Normal oxygenation would require a P/F above about 300–400.
• Severe ARDS — Severe ARDS would require a P/F of 100 or less.
• Mild ARDS — Mild ARDS is 200–300.

⭐ Key point: Moderate-to-severe ARDS (especially P/F below 150) benefits from prone positioning, higher PEEP, and possibly neuromuscular blockade, along with lung-protective ventilation.$x$, null),
(112, $x$Which complication should the ICU nurse monitor for in a mechanically ventilated patient with severe emphysema due to air trapping?$x$, $x$Auto-PEEP (intrinsic PEEP) and breath stacking$x$, $x$✅ Correct answer: Auto-PEEP (intrinsic PEEP) and breath stacking
In SEVERE EMPHYSEMA, the airways collapse during expiration, so air leaves very slowly. If the next breath begins before the lungs have emptied, air builds up (AIR TRAPPING): AUTO-PEEP (intrinsic PEEP) and BREATH STACKING. This increases lung volume and chest pressure, causing reduced venous return (hypotension), barotrauma (pneumothorax) and increased work of breathing.

❌ Why the other options are wrong:
• Reduced airway resistance — Air trapping does not reduce airway resistance.
• Hyperkalemia from hyperventilation — Hyperventilation does not cause hyperkalaemia; alkalosis lowers potassium.
• Immediate pulmonary oedema — Immediate pulmonary oedema is not the typical complication of air trapping.

⭐ Key point: Reduce auto-PEEP by lowering the rate, shortening inspiratory time, and treating bronchospasm.$x$, null),
(113, $x$A rising PaCO₂ in an asthmatic patient not yet ventilated is a sign of:$x$, $x$Approaching respiratory muscle exhaustion and failure$x$, $x$✅ Correct answer: Approaching respiratory muscle exhaustion and failure
In an asthma attack, patients usually breathe fast and have a LOW PaCO2. A RISING or "NORMAL" PaCO2 is a DANGER SIGN: it means the patient can no longer breathe hard enough — the RESPIRATORY MUSCLES are becoming EXHAUSTED, and RESPIRATORY FAILURE is approaching. The patient may need ICU care and intubation.

❌ Why the other options are wrong:
• A normal, reassuring finding — A rising CO2 is not reassuring.
• Improving ventilation — It shows WORSENING, not improving, ventilation.
• Overtreatment with oxygen — Oxygen does not usually cause CO2 rise in asthma (unlike some COPD patients).

⭐ Key point: Other danger signs: silent chest, exhaustion, confusion, cyanosis, bradycardia, hypotension.$x$, null),
(114, $x$A gradual, progressive decrease in EtCO2 over time in a stable-appearing ventilated patient may indicate:$x$, $x$Hypothermia, hyperventilation, or a developing hypoperfusion state$x$, $x$✅ Correct answer: Hypothermia, hyperventilation, or a developing hypoperfusion state
End-tidal CO2 (EtCO2) reflects CO2 production, blood flow carrying CO2 to the lungs, and ventilation. A GRADUAL DECREASE can mean: HYPOTHERMIA (less CO2 production), HYPERVENTILATION (more CO2 blown off), or a developing HYPOPERFUSION state (reduced cardiac output — less CO2 delivered to the lungs, e.g. hypovolaemia, sepsis, PE).

❌ Why the other options are wrong:
• Rebreathing — Rebreathing raises the baseline and EtCO2.
• Hyperthermia — Hyperthermia increases CO2 production (raises EtCO2).
• Bronchospasm — Bronchospasm changes the shape (shark-fin).

⭐ Key point: A sudden fall in EtCO2 may signal cardiac arrest, massive PE or circuit disconnection.$x$, null),
(115, $x$A ventilator is set at 15 breaths/min with an inspiratory time of 0.8 seconds. What is the I:E ratio?$x$, $x$1:4$x$, $x$✅ Correct answer: 1:4
STEP 1 — Total breath cycle time: 60 seconds ÷ 15 breaths = 4 seconds per breath. STEP 2 — Expiratory time = total time − inspiratory time = 4 − 0.8 = 3.2 seconds. STEP 3 — I:E ratio = 0.8 : 3.2 = 1 : 4.

❌ Why the other options are wrong:
• 1:0.8 — 1:0.8 is incorrect.
• 4:1 — 4:1 is an inverse ratio (longer inspiration than expiration).
• 1:6 — 1:6 is incorrect.

⭐ Key point: Normal I:E is about 1:2. A longer expiratory time (1:3–1:5) is used in asthma and COPD.$x$, null),
(116, $x$A capnography waveform that shows normal morphology but a low, flattened plateau with reduced EtCO2 amplitude in a patient with a large air leak around the tube cuff is explained by:$x$, $x$Dilution of exhaled CO2 sample by entrained room air through the leak, falsely lowering the measured EtCO2$x$, $x$✅ Correct answer: Dilution of exhaled CO2 sample by entrained room air through the leak, falsely lowering the measured EtCO2
When there is a large AIR LEAK around the endotracheal tube cuff, some of the exhaled gas escapes, and the capnography sample may be DILUTED by room air entering through the leak. This makes the EtCO2 reading falsely LOW, with a low, flat plateau, even though the waveform shape remains normal.

❌ Why the other options are wrong:
• Rebreathing — Rebreathing raises the baseline.
• Increased CO2 production — Increased CO2 production would increase EtCO2.
• Esophageal intubation — Oesophageal intubation shows waveforms that disappear.

⭐ Key point: Check cuff pressure (20–30 cmH2O) and tube position.$x$, null),
(117, $x$A ventilated patient has tidal volume 450 mL, plateau pressure 32 cmH2O and PEEP 12 cmH2O. What is the static lung compliance?$x$, $x$22.5 mL/cmH2O$x$, $x$✅ Correct answer: 22.5 mL/cmH2O
STATIC COMPLIANCE measures how easily the lungs and chest wall stretch, without the effect of airflow. Formula: COMPLIANCE = TIDAL VOLUME ÷ (PLATEAU PRESSURE − PEEP). Here: 450 mL ÷ (32 − 12) cmH2O = 450 ÷ 20 = 22.5 mL/cmH2O. Normal static compliance in ventilated adults is about 50–100 mL/cmH2O, so 22.5 shows STIFF lungs (as in ARDS, pulmonary oedema, fibrosis) or a stiff chest wall/abdomen. Note the plateau pressure (32) is also above the safe limit of 30.

❌ Why the other options are wrong:
• 10.2 mL/cmH2O — 10.2 mL/cmH2O is a calculation error.
• 14.1 mL/cmH2O — 14.1 mL/cmH2O divides by the plateau pressure alone (450 ÷ 32), forgetting to subtract PEEP.
• 44.4 mL/cmH2O — 44.4 mL/cmH2O is a calculation error.

⭐ Key point: Falling compliance suggests worsening lung disease, pneumothorax, or abdominal distension; rising compliance suggests improvement.$x$, null),
(118, $x$A short course of continuous cisatracurium infusion may be used in a patient with severe ARDS and ventilator dyssynchrony because it can:$x$, $x$Reduce oxygen consumption and improve ventilator synchrony/lung compliance in carefully selected patients$x$, $x$✅ Correct answer: Reduce oxygen consumption and improve ventilator synchrony/lung compliance in carefully selected patients
In SEVERE ARDS with ventilator dyssynchrony (the patient "fighting" the ventilator), a SHORT course (usually up to 48 hours) of a neuromuscular blocking agent such as CISATRACURIUM may be used in carefully selected patients. It REDUCES OXYGEN CONSUMPTION by the breathing muscles and IMPROVES VENTILATOR SYNCHRONY, allowing lung-protective ventilation and better oxygenation.

❌ Why the other options are wrong:
• Be safely continued indefinitely with no monitoring — It cannot be continued indefinitely; long use causes ICU-acquired weakness.
• Cure the underlying lung injury — It does not cure lung injury.
• Eliminate the need for any sedation — The patient must ALWAYS be adequately sedated — paralysis without sedation is cruel (awareness).

⭐ Key point: Monitor the depth of paralysis (train-of-four), give eye care, prevent pressure injury, and ensure deep sedation.$x$, null),
(119, $x$Biting on the endotracheal tube by an inadequately sedated patient can cause acute obstruction. An appropriate intervention includes:$x$, $x$Inserting a bite block and reassessing sedation/analgesia level$x$, $x$✅ Correct answer: Inserting a bite block and reassessing sedation/analgesia level
A patient BITING on the ET tube can block it, causing high airway pressures, hypoxia and distress. Appropriate interventions: insert a BITE BLOCK (or oral airway) to stop the teeth closing on the tube, and REASSESS SEDATION and ANALGESIA (the patient may be agitated, in pain, or waking).

❌ Why the other options are wrong:
• Deflating the ETT cuff — Deflating the cuff does not stop biting and risks aspiration.
• Immediately extubating the patient — Immediate extubation is not appropriate.
• Increasing the ventilator rate — Increasing the rate does not relieve the obstruction.

⭐ Key point: Never leave a patient biting a tube; complete obstruction causes rapid hypoxia.$x$, null),
(120, $x$A female patient with ARDS is 170 cm tall and weighs 97 kg. Using lung-protective ventilation at 6 mL/kg predicted body weight, what tidal volume should be set?$x$, $x$About 369 mL$x$, $x$✅ Correct answer: About 369 mL
FEMALE PBW = 45.5 + 0.91 × (height in cm − 152.4). Here: 170 − 152.4 = 17.6; 0.91 × 17.6 = 16.0; 45.5 + 16.0 = 61.5 kg. Tidal volume at 6 mL/kg = 6 × 61.5 = 369 mL.

❌ Why the other options are wrong:
• About 582 mL — 582 mL is 6 mL/kg of her ACTUAL weight (97 kg).
• About 615 mL — 615 mL is 10 mL/kg PBW.
• About 492 mL — 492 mL is 8 mL/kg PBW.

⭐ Key point: Always use PBW; using actual weight in obese patients causes dangerous over-inflation.$x$, null),
(121, $x$Which laboratory/clinical finding suggests early ventilator-associated pneumonia in an intubated patient?$x$, $x$New or worsening infiltrate on chest x-ray with fever, leukocytosis, and purulent secretions$x$, $x$✅ Correct answer: New or worsening infiltrate on chest x-ray with fever, leukocytosis, and purulent secretions
VENTILATOR-ASSOCIATED PNEUMONIA (VAP) is pneumonia that develops more than 48 hours after intubation. Signs: a NEW or WORSENING INFILTRATE on chest X-ray, plus FEVER, LEUKOCYTOSIS (high WBC), and PURULENT (thick, yellow-green) SECRETIONS, often with worsening oxygenation.

❌ Why the other options are wrong:
• Clear chest x-ray with normal WBC — A clear X-ray and normal WBC do not suggest VAP.
• Decreased secretions and improved oxygenation — Decreased secretions and improved oxygenation suggest improvement.
• Bradycardia with hypothermia only — Bradycardia and hypothermia alone are non-specific.

⭐ Key point: Take respiratory cultures (e.g. tracheal aspirate) before starting antibiotics.$x$, null),
(122, $x$A patient on mechanical ventilation develops sudden increased work of breathing, tachycardia, and diaphoresis but the ventilator is not alarming. The nurse should:$x$, $x$Immediately assess the patient directly rather than relying solely on the ventilator display, since clinical status can deteriorate before alarms trigger$x$, $x$✅ Correct answer: Immediately assess the patient directly rather than relying solely on the ventilator display, since clinical status can deteriorate before alarms trigger
Ventilator alarms only detect changes in machine parameters. A patient may DETERIORATE (increased work of breathing, tachycardia, sweating — signs of distress) before any alarm sounds. The nurse should IMMEDIATELY ASSESS THE PATIENT directly: airway, breathing, circulation, tube position, secretions, pain, anxiety, ventilator settings, and synchrony.

❌ Why the other options are wrong:
• Increase the FiO2 without further assessment — Increasing FiO2 without assessment may hide the cause.
• Assume the ventilator is malfunctioning and disconnect it — Disconnecting the ventilator without reason could cause harm.
• Wait for an alarm to sound before intervening — Waiting for an alarm delays care.

⭐ Key point: "Treat the patient, not the monitor."$x$, null),
(123, $x$One of the following modes of ventilation has the risk of the patient getting respiratory alkalosis.$x$, $x$Assist Control Mode$x$, $x$✅ Correct answer: Assist Control Mode
In ASSIST-CONTROL (AC) mode, EVERY breath the patient triggers is a FULL mandatory breath (set tidal volume or pressure). If the patient breathes rapidly (from pain, anxiety, fever or sepsis), each extra breath delivers a full volume, causing HYPERVENTILATION and RESPIRATORY ALKALOSIS. It can also cause air trapping.

❌ Why the other options are wrong:
• Pressure Control Mode — Pressure Control delivers a set pressure; the risk depends on the set rate.
• Controlled Mandatory Ventilation — Controlled mandatory ventilation doesn't allow patient-triggered breaths.
• Synchronous Intermittent Mandatory Ventilation — SIMV allows spontaneous breaths at the patient's own volume.

⭐ Key point: If a patient on AC breathes fast, treat the cause (pain, anxiety) and consider changing the mode.$x$, null),
(124, $x$A ventilated patient has a tidal volume of 420 mL and a rate of 24 breaths/min. What is the minute ventilation?$x$, $x$10.08 L/min$x$, $x$✅ Correct answer: 10.08 L/min
MINUTE VENTILATION (VE) is the total volume of air moved in and out of the lungs in one minute. Formula: VE = TIDAL VOLUME × RESPIRATORY RATE. Here: 420 mL × 24 breaths/min = 10,080 mL/min. Convert to litres: 10,080 ÷ 1,000 = 10.08 L/min. Minute ventilation mainly controls CO2 removal: higher VE lowers PaCO2.

❌ Why the other options are wrong:
• 17.5 L/min — 17.5 L/min is a calculation error.
• 12.48 L/min — 12.48 L/min is a calculation error.
• 100.8 L/min — 100.8 L/min is a decimal place error (ten times too high).

⭐ Key point: Normal adult resting minute ventilation is about 5–8 L/min. A high VE need (e.g. above 10 L/min) can indicate high CO2 production (sepsis, fever) or high dead space, and may make weaning harder.$x$, null),
(125, $x$A ventilated patient has tidal volume 480 mL, plateau pressure 22 cmH2O and PEEP 8 cmH2O. What is the static lung compliance?$x$, $x$34.3 mL/cmH2O$x$, $x$✅ Correct answer: 34.3 mL/cmH2O
STATIC COMPLIANCE = TIDAL VOLUME ÷ (PLATEAU PRESSURE − PEEP). Here: 480 mL ÷ (22 − 8) cmH2O = 480 ÷ 14 = 34.3 mL/cmH2O. Check: 14 × 34.3 ≈ 480. ✓ This is BELOW normal (50–100), meaning the lungs are somewhat stiff. The driving pressure (22 − 8 = 14) is within the safe target (≤15).

❌ Why the other options are wrong:
• 21.8 mL/cmH2O — 21.8 mL/cmH2O divides by the plateau alone (480 ÷ 22), forgetting to subtract PEEP.
• 16 mL/cmH2O — 16 mL/cmH2O is a calculation error.
• 29.2 mL/cmH2O — 29.2 mL/cmH2O is a calculation error.

⭐ Key point: Track compliance trends over time to judge whether the lung condition is improving or worsening.$x$, null),
(126, $x$A patient with acute respiratory failure is started on noninvasive positive pressure ventilation. Which finding indicates the trial is failing and intubation should be considered?$x$, $x$Worsening acidosis, a rising PaCO2, or hemodynamic instability despite noninvasive ventilation$x$, $x$✅ Correct answer: Worsening acidosis, a rising PaCO2, or hemodynamic instability despite noninvasive ventilation
NIV is failing if the patient shows: WORSENING ACIDOSIS (falling pH), a RISING PaCO2, increasing breathing difficulty, falling SpO2, worsening consciousness, inability to protect the airway or clear secretions, or HAEMODYNAMIC INSTABILITY. These indicate that intubation should be considered without delay.

❌ Why the other options are wrong:
• Improved oxygen saturation — Improved oxygenation suggests NIV is working.
• A decreasing respiratory rate toward normal — A decreasing respiratory rate suggests improvement.
• Improving mental status — Improving mental status suggests improvement.

⭐ Key point: Reassess blood gases 1–2 hours after starting NIV. Delayed intubation increases mortality.$x$, null),
(127, $x$A ventilated patient who has been sedated and immobile for 10 days is being considered for early mobilisation. The primary rationale is to:$x$, $x$Reduce ICU-acquired weakness, shorten ventilator days, and speed functional recovery$x$, $x$✅ Correct answer: Reduce ICU-acquired weakness, shorten ventilator days, and speed functional recovery
EARLY MOBILISATION in ICU patients REDUCES ICU-ACQUIRED WEAKNESS, SHORTENS the time on the VENTILATOR and in ICU, reduces DELIRIUM, and improves FUNCTIONAL RECOVERY after discharge. It is safe when the patient meets stability criteria.

❌ Why the other options are wrong:
• Increase the risk of complications — Early mobilisation reduces, not increases, complications.
• Replace the need for any physiotherapy input — It requires physiotherapy input, not replaces it.
• Have no measurable effect on outcomes — It has measurable benefits.

⭐ Key point: Mobilisation progresses from in-bed exercises to sitting, standing and walking.$x$, null),
(128, $x$The nurse is assessing an intubated patient's response to increasing FiO2 from 40% to 60% for a SpO2 of 89%. After 10-15 minutes, SpO2 remains 89%. What should the nurse do next?$x$, $x$Reassess the patient thoroughly, including breath sounds, secretions, tube position, and hemodynamics, and notify the physician if hypoxemia persists$x$, $x$✅ Correct answer: Reassess the patient thoroughly, including breath sounds, secretions, tube position, and hemodynamics, and notify the physician if hypoxemia persists
If SpO2 does NOT improve after increasing FiO2, the cause may not simply be low oxygen delivery. The nurse should REASSESS THE PATIENT thoroughly: breath sounds (pneumothorax, collapse), secretions (suction), tube position (displacement, right main bronchus), ventilator circuit, haemodynamics (shock, poor perfusion), and probe placement; then NOTIFY THE PHYSICIAN.

❌ Why the other options are wrong:
• Discontinue PEEP — Discontinuing PEEP would worsen oxygenation.
• Continue increasing FiO2 indefinitely without further assessment — Increasing FiO2 indefinitely without assessment risks oxygen toxicity and misses the cause.
• Decrease FiO2 back to 40% — Decreasing FiO2 would worsen hypoxia.

⭐ Key point: Hypoxia that doesn't respond to oxygen suggests shunt (e.g. collapse, consolidation, ARDS) — PEEP and recruitment may help.$x$, null),
(129, $x$The head of bed for a mechanically ventilated patient should be maintained at what elevation to reduce aspiration and VAP risk, absent contraindications?$x$, $x$30-45 degrees$x$, $x$✅ Correct answer: 30-45 degrees
Keeping the HEAD OF THE BED raised to 30–45 DEGREES (unless contraindicated, e.g. unstable spine or severe hypotension) uses gravity to reduce REFLUX of stomach contents up the oesophagus and their ASPIRATION past the endotracheal tube cuff into the lungs. This is a key part of the VAP prevention bundle. It also improves lung expansion and oxygenation, and can help lower intracranial pressure.

❌ Why the other options are wrong:
• 0-10 degrees — 0–10 degrees is almost flat and increases reflux and aspiration.
• Flat (supine) at all times — Lying flat at all times greatly increases aspiration and VAP risk.
• Trendelenburg position — Trendelenburg (head-down) increases reflux, aspiration and intracranial pressure.

⭐ Key point: Patients often slide down the bed — check the angle regularly (many beds have an angle indicator) and document it. Other VAP bundle elements: daily sedation hold and SBT, oral care, subglottic suction, cuff pressure 20–30 cmH2O.$x$, null),
(130, $x$What is the most effective strategy to prevent oxygen toxicity in a mechanically ventilated patient?$x$, $x$Titrate to the lowest FiO2 that maintains an acceptable target oxygen saturation, weaning as tolerated$x$, $x$✅ Correct answer: Titrate to the lowest FiO2 that maintains an acceptable target oxygen saturation, weaning as tolerated
OXYGEN TOXICITY (lung damage from high FiO2 over long periods) is prevented by TITRATING to the LOWEST FiO2 that maintains the TARGET SpO2 (usually 92–96%, or 88–92% in COPD), and WEANING oxygen as tolerated. Using PEEP can help reduce the FiO2 needed.

❌ Why the other options are wrong:
• Increase FiO2 progressively regardless of oxygen saturation trends — Increasing FiO2 regardless of saturation causes toxicity.
• Maintain FiO2 at 100% throughout the admission to ensure adequate oxygenation — 100% FiO2 for long periods causes lung damage and absorption atelectasis.
• Avoid all pulse oximetry and ABG monitoring to reduce patient disturbance — Monitoring is essential.

⭐ Key point: Prolonged FiO2 above 0.6 increases the risk of toxicity.$x$, null),
(131, $x$A ventilated patient has a tidal volume of 420 mL and a rate of 16 breaths/min. What is the minute ventilation?$x$, $x$6.72 L/min$x$, $x$✅ Correct answer: 6.72 L/min
MINUTE VENTILATION = TIDAL VOLUME × RESPIRATORY RATE. Here: 420 mL × 16 breaths/min = 6,720 mL/min = 6.72 L/min. This is within the normal adult range (about 5–8 L/min). Minute ventilation determines how much CO2 is removed — if PaCO2 is high, minute ventilation can be increased by raising the rate or tidal volume (within safe limits).

❌ Why the other options are wrong:
• 67.2 L/min — 67.2 L/min is a decimal place error (ten times too high).
• 8.32 L/min — 8.32 L/min is a calculation error.
• 26.25 L/min — 26.25 L/min is a calculation error.

⭐ Key point: Alveolar ventilation (the part that reaches the alveoli) = (tidal volume − dead space) × rate — fast, shallow breathing wastes more ventilation on dead space.$x$, null),
(132, $x$In an intubated patient, an increase in peak inspiratory pressure with an unchanged plateau pressure most likely indicates a problem with:$x$, $x$Airway resistance, such as secretions, bronchospasm, or a kinked tube$x$, $x$✅ Correct answer: Airway resistance, such as secretions, bronchospasm, or a kinked tube
An increase in PEAK pressure with an UNCHANGED PLATEAU pressure means the problem is in the AIRWAYS — INCREASED AIRWAY RESISTANCE, such as SECRETIONS, BRONCHOSPASM, a KINKED tube, or the patient biting the tube.

❌ Why the other options are wrong:
• Lung compliance, such as worsening ARDS — Worsening compliance would raise BOTH peak and plateau.
• The set FiO2 — FiO2 does not affect airway pressures.
• The set PEEP — PEEP changes would affect both pressures.

⭐ Key point: Suction, check the tube, and give bronchodilators if needed.$x$, null),
(133, $x$A ventilator mode where the patient controls their own respiratory rate and tidal volume with only pressure support and PEEP applied is best described as:$x$, $x$Pressure Support Ventilation, often combined with CPAP$x$, $x$✅ Correct answer: Pressure Support Ventilation, often combined with CPAP
PRESSURE SUPPORT VENTILATION (PSV), often combined with CPAP/PEEP, is a SPONTANEOUS mode: the PATIENT CONTROLS their own RESPIRATORY RATE and TIDAL VOLUME; the ventilator provides set PRESSURE SUPPORT to help each breath and PEEP to keep the alveoli open. It is commonly used for weaning.

❌ Why the other options are wrong:
• Assist-Control — Assist-Control delivers full mandatory breaths.
• SIMV with 100% mandatory rate — SIMV with 100% mandatory rate is fully controlled.
• Pressure Control Ventilation with a fixed rate — Pressure Control with a fixed rate is controlled by the ventilator.

⭐ Key point: PSV requires an intact respiratory drive; set apnoea backup ventilation.$x$, null),
(134, $x$A curare cleft, a small notch or dip during the alveolar plateau of the capnogram in a mechanically ventilated patient, typically represents:$x$, $x$The patient's spontaneous inspiratory effort occurring during a mandatory ventilator breath, suggesting inadequate paralysis or ventilator asynchrony$x$, $x$✅ Correct answer: The patient's spontaneous inspiratory effort occurring during a mandatory ventilator breath, suggesting inadequate paralysis or ventilator asynchrony
A "CURARE CLEFT" is a small NOTCH or dip in the plateau of the capnogram. It occurs when the patient makes a SPONTANEOUS INSPIRATORY EFFORT during a mandatory breath (e.g. as neuromuscular blockade wears off), drawing fresh gas past the sensor. It suggests INADEQUATE PARALYSIS or VENTILATOR ASYNCHRONY.

❌ Why the other options are wrong:
• Complete airway obstruction — Complete airway obstruction shows no waveform.
• A ventilator malfunction requiring immediate circuit replacement — It is not a ventilator malfunction.
• Esophageal intubation — Oesophageal intubation shows disappearing waveforms.

⭐ Key point: Reassess sedation and paralysis levels; consider a train-of-four test.$x$, null),
(135, $x$A male patient with ARDS is 160 cm tall and weighs 82 kg. Using lung-protective ventilation at 8 mL/kg predicted body weight, what tidal volume should be set?$x$, $x$About 455 mL$x$, $x$✅ Correct answer: About 455 mL
MALE PBW = 50 + 0.91 × (height in cm − 152.4). Here: 160 − 152.4 = 7.6; 0.91 × 7.6 = 6.9; 50 + 6.9 = 56.9 kg. Tidal volume at 8 mL/kg = 8 × 56.9 = 455 mL.

❌ Why the other options are wrong:
• About 341 mL — 341 mL is 6 mL/kg PBW.
• About 656 mL — 656 mL is 8 mL/kg of ACTUAL weight (82 kg).
• About 569 mL — 569 mL is 10 mL/kg PBW.

⭐ Key point: Short patients have small PBWs and need small tidal volumes, regardless of actual weight.$x$, null),
(136, $x$Hypoxaemia caused by true intrapulmonary shunt (blood perfusing completely unventilated alveoli) typically:$x$, $x$Responds poorly to supplemental oxygen because shunted blood never contacts ventilated alveoli$x$, $x$✅ Correct answer: Responds poorly to supplemental oxygen because shunted blood never contacts ventilated alveoli
In TRUE SHUNT, blood passes through areas of lung where the alveoli are completely UNVENTILATED (collapsed or filled with fluid). This blood never contacts oxygen, so it returns to the heart deoxygenated. Increasing FiO2 does NOT help much, because the extra oxygen never reaches these alveoli. Treatment is to RE-OPEN the alveoli (PEEP, recruitment manoeuvres, prone positioning).

❌ Why the other options are wrong:
• Corrects readily with modest increases in FiO2 — Hypoxia from low V/Q (partial ventilation) responds to oxygen; true shunt does not.
• Occurs only with hypoventilation — Shunt is not caused by hypoventilation.
• Is unaffected by PEEP — PEEP DOES affect shunt by re-opening alveoli.

⭐ Key point: Shunt is the main cause of hypoxia in ARDS, pneumonia and atelectasis.$x$, null),
(137, $x$Initial management of hypoxia in a critically ill anaesthetized or ventilated patient should begin with:$x$, $x$Ensuring airway patency and delivering a high fraction of inspired oxygen while identifying the underlying cause$x$, $x$✅ Correct answer: Ensuring airway patency and delivering a high fraction of inspired oxygen while identifying the underlying cause
For HYPOXIA in a critically ill, anaesthetised or ventilated patient, start by ENSURING AIRWAY PATENCY (check the tube or airway, suction) and DELIVERING HIGH FiO2 (100% oxygen), while finding the UNDERLYING CAUSE (DOPES: Displacement, Obstruction, Pneumothorax, Equipment failure, Stacked breaths).

❌ Why the other options are wrong:
• Sedation to reduce oxygen demand — Sedation doesn't treat hypoxia.
• Diuretic administration — Diuretics are only for fluid overload.
• Immediate intubation regardless of the cause — Intubation may be needed, but airway and oxygen come first.

⭐ Key point: Systematic approach: Airway, Breathing, Circulation, then specific causes.$x$, null),
(138, $x$A sudden, sustained loss of the capnography waveform in an intubated, mechanically ventilated patient most urgently suggests:$x$, $x$Accidental extubation, tube dislodgement, or complete airway/circuit disconnection requiring immediate assessment$x$, $x$✅ Correct answer: Accidental extubation, tube dislodgement, or complete airway/circuit disconnection requiring immediate assessment
A SUDDEN LOSS of the capnography waveform in a ventilated patient means no exhaled CO2 is detected. The most urgent causes are: ACCIDENTAL EXTUBATION, TUBE DISLODGEMENT, complete airway obstruction, or CIRCUIT DISCONNECTION. Cardiac arrest is another important cause. This needs IMMEDIATE ASSESSMENT.

❌ Why the other options are wrong:
• A need to increase sedation only — It does not just mean more sedation is needed.
• A benign, expected finding requiring no action — It is never benign.
• Improvement in the patient's respiratory status — It does not indicate improvement.

⭐ Key point: "No trace = wrong place" (or no circulation).$x$, null),
(139, $x$When assessing a mechanically ventilated patient's readiness for a spontaneous breathing trial, the nurse should confirm:$x$, $x$Hemodynamic stability, adequate oxygenation on minimal support, and the ability to initiate spontaneous breaths$x$, $x$✅ Correct answer: Hemodynamic stability, adequate oxygenation on minimal support, and the ability to initiate spontaneous breaths
Before a SPONTANEOUS BREATHING TRIAL (SBT), confirm: the cause of respiratory failure is improving; HAEMODYNAMIC STABILITY (minimal or no vasopressors); ADEQUATE OXYGENATION on minimal support (e.g. FiO2 ≤0.4, PEEP ≤5–8); the ABILITY TO INITIATE SPONTANEOUS BREATHS; adequate consciousness and cough.

❌ Why the other options are wrong:
• The patient requires increasing FiO2 — Increasing FiO2 requirements indicate the patient isn't ready.
• The patient is deeply sedated — Deep sedation prevents spontaneous breathing.
• The patient has a fever — Fever increases oxygen demand and is a relative contraindication.

⭐ Key point: An SBT usually lasts 30–120 minutes on low pressure support or T-piece.$x$, null),
(140, $x$In Volume Control ventilation, a form of AC, if a patient's airway resistance suddenly increases from bronchospasm, what happens to peak airway pressure?$x$, $x$It increases, since the set volume is delivered regardless of resistance$x$, $x$✅ Correct answer: It increases, since the set volume is delivered regardless of resistance
In VOLUME CONTROL, the ventilator always delivers the SET TIDAL VOLUME, regardless of resistance. If airway RESISTANCE suddenly increases (bronchospasm), the ventilator must push harder, so the PEAK AIRWAY PRESSURE INCREASES.

❌ Why the other options are wrong:
• It decreases — Peak pressure does not decrease with increased resistance.
• The ventilator stops delivering volume — The ventilator continues to deliver volume (unless the pressure limit is reached).
• It remains constant — Peak pressure does not stay constant.

⭐ Key point: Set the high-pressure alarm appropriately (usually 10 cmH2O above the usual peak).$x$, null),
(141, $x$A low-pressure or low-exhaled-volume alarm on the ventilator most often signals:$x$, $x$A leak or disconnection in the ventilator circuit or cuff$x$, $x$✅ Correct answer: A leak or disconnection in the ventilator circuit or cuff
A LOW-PRESSURE or LOW EXHALED-VOLUME alarm means the ventilator cannot build up the expected pressure, or less gas is coming back than was delivered — GAS IS ESCAPING somewhere. The commonest causes are a LEAK or DISCONNECTION in the circuit (loose connection, disconnected tubing, open suction port, cracked humidifier chamber), a CUFF LEAK (under-inflated or burst cuff, or the tube slipped up above the vocal cords), a large air leak through a chest drain (bronchopleural fistula), or accidental extubation. The nurse should look at the patient first, then trace the circuit from the patient to the ventilator, check the cuff pressure and tube position, and bag the patient with 100% oxygen if the cause is not found quickly.

❌ Why the other options are wrong:
• Breath stacking — Breath stacking (air trapping) usually causes HIGH pressures and auto-PEEP, not low-pressure alarms.
• Bronchospasm — Bronchospasm causes HIGH peak pressure alarms.
• Mucus plugging — Mucus plugging causes HIGH pressure alarms (or low volume in pressure modes, but not usually a low-pressure alarm).

⭐ Key point: High-pressure alarm = obstruction or stiff lungs (secretions, biting, bronchospasm, pneumothorax, coughing). Low-pressure alarm = leak or disconnection.$x$, null),
(142, $x$A ventilated patient with bilateral infiltrates on PEEP 10 cmH2O has PaO2 75 mmHg on FiO2 0.3. Using the P/F ratio, how is this classified?$x$, $x$Mild ARDS$x$, $x$✅ Correct answer: Mild ARDS
P/F RATIO = PaO2 ÷ FiO2. Here: 75 ÷ 0.3 = 250. The Berlin definition of ARDS (with bilateral infiltrates, PEEP ≥5, within 1 week, not explained by heart failure) grades severity by P/F ratio: MILD 200–300; MODERATE 100–200; SEVERE 100 or less. 250 falls in the MILD range. (Normal P/F on room air is about 400–500.)

❌ Why the other options are wrong:
• Moderate ARDS — Moderate ARDS would need a P/F between 100 and 200.
• Normal oxygenation (no ARDS) — Normal oxygenation would need a P/F above 300 (ideally about 400+).
• Severe ARDS — Severe ARDS would need a P/F of 100 or less.

⭐ Key point: Remember to convert FiO2 to a decimal (30% = 0.3) and use PaO2 in mmHg. If using kPa, multiply by 7.5 first.$x$, null),
(143, $x$A patient on mechanical ventilation for ARDS is being managed with low tidal volumes (around 6ml/kg predicted body weight). The rationale for this strategy is primarily to:$x$, $x$Minimise ventilator-induced lung injury (volutrauma/barotrauma) in already-injured lungs$x$, $x$✅ Correct answer: Minimise ventilator-induced lung injury (volutrauma/barotrauma) in already-injured lungs
In ARDS, large parts of the lungs are collapsed or filled with fluid, leaving only a small area of healthy, open lung (the "baby lung"). Normal-sized breaths would OVER-STRETCH this small area, causing more damage (VOLUTRAUMA — injury from over-distension; BAROTRAUMA — pressure injury such as pneumothorax; and BIOTRAUMA — release of inflammatory chemicals). The ARDSNet trial showed that LOW TIDAL VOLUMES (6 mL/kg PREDICTED body weight) with plateau pressure ≤30 cmH2O REDUCED DEATHS. The aim is to MINIMISE VENTILATOR-INDUCED LUNG INJURY. The patient's CO2 may rise (permissive hypercapnia), which is accepted if the pH stays above about 7.20.

❌ Why the other options are wrong:
• Maximise oxygen delivery regardless of pressure — Oxygen delivery matters, but not "regardless of pressure" — high pressures injure the lungs.
• Increase patient comfort only — Comfort is important, but it is not the main reason for low tidal volumes.
• Reduce the work of the ventilator motor — The goal is lung protection, not reducing the ventilator motor's work.

⭐ Key point: Lung-protective bundle: Vt 6 mL/kg PBW, plateau ≤30, driving pressure ≤15, adequate PEEP, prone positioning for P/F <150.$x$, null),
(144, $x$EtCO2 monitoring benefits nursing assessment of a ventilated patient's dead space and ventilation efficiency because:$x$, $x$A widened gradient between PaCO2 and EtCO2 can indicate increased alveolar dead space, such as from pulmonary embolism, hypoperfusion, or hyperinflation$x$, $x$✅ Correct answer: A widened gradient between PaCO2 and EtCO2 can indicate increased alveolar dead space, such as from pulmonary embolism, hypoperfusion, or hyperinflation
Normally, end-tidal CO2 (EtCO2) is only about 2–5 mmHg lower than arterial PaCO2. If some alveoli are VENTILATED but NOT PERFUSED (ALVEOLAR DEAD SPACE), the air coming from them contains no CO2 and DILUTES the exhaled gas, so the EtCO2 falls while PaCO2 stays high. A WIDENED PaCO2–EtCO2 GRADIENT therefore suggests increased dead space — e.g. PULMONARY EMBOLISM (blocked blood flow), HYPOPERFUSION (low cardiac output, shock), or HYPERINFLATION (high PEEP or air trapping compressing capillaries). Tracking this gradient helps the nurse recognise these problems early.

❌ Why the other options are wrong:
• It is only useful for confirming tube placement — EtCO2 is useful far beyond confirming tube placement (e.g. monitoring CPR quality, ventilation, perfusion).
• It directly measures anatomic dead space volume — EtCO2 does not directly measure the volume of anatomical dead space.
• It has no relationship to dead space — EtCO2 is closely related to dead space, as explained above.

⭐ Key point: A sudden fall in EtCO2 with stable ventilation may signal a massive PE, cardiac arrest or circuit leak.$x$, null),
(145, $x$A patient with long-standing hypertension and diabetes has an eGFR of 25 mL/min/1.73m2 sustained for over three months. This is classified as:$x$, $x$Chronic kidney disease stage 4$x$, $x$✅ Correct answer: Chronic kidney disease stage 4
CHRONIC KIDNEY DISEASE (CKD) is defined as abnormal kidney structure or function lasting MORE THAN 3 MONTHS. It is staged by the eGFR (mL/min/1.73m²): G1 ≥90 (with kidney damage); G2 60–89; G3a 45–59; G3b 30–44; G4 15–29; G5 <15 (kidney failure). An eGFR of 25 sustained for more than 3 months is CKD STAGE 4 (severely reduced function). Hypertension and diabetes are the two commonest causes of CKD.

❌ Why the other options are wrong:
• Nephrotic syndrome — Nephrotic syndrome is defined by heavy proteinuria, low albumin, oedema and high lipids — not by the eGFR level.
• Acute kidney injury — Acute kidney injury develops over hours to days, not over 3 months.
• Chronic kidney disease stage 2 — Stage 2 is an eGFR of 60–89.

⭐ Key point: Stage 4 patients should be prepared for renal replacement therapy (dialysis or transplant planning). Avoid nephrotoxic drugs and adjust drug doses.$x$, null),
(146, $x$A critically ill patient presents with severe tachycardia, fever, agitation, and altered mental status after recent thyroid surgery. Which life-threatening endocrine emergency should be suspected?$x$, $x$Thyroid storm (thyrotoxic crisis)$x$, $x$✅ Correct answer: Thyroid storm (thyrotoxic crisis)
THYROID STORM (thyrotoxic crisis) is a life-threatening surge of thyroid hormone. It can be triggered by THYROID SURGERY (handling the gland releases stored hormone), infection, trauma, or stopping antithyroid drugs. Features: very HIGH FEVER, severe TACHYCARDIA (often atrial fibrillation), heart failure, AGITATION, delirium or ALTERED MENTAL STATUS, vomiting, diarrhoea and jaundice. Treatment: beta-blocker (propranolol), antithyroid drug (propylthiouracil or carbimazole), iodine at least 1 hour later, steroids (hydrocortisone), cooling and supportive ICU care.

❌ Why the other options are wrong:
• Addisonian crisis — Addisonian crisis causes hypotension, low sodium, high potassium and low glucose, usually without high fever and agitation.
• Myxedema coma — Myxoedema coma causes HYPOthermia, bradycardia and drowsiness — the opposite.
• Hypoparathyroid tetany — Hypoparathyroid tetany after thyroidectomy causes tingling, cramps and spasms (low calcium), not fever and tachycardia.

⭐ Key point: Use the Burch–Wartofsky score to assess the likelihood of thyroid storm. Cool the patient, but avoid aspirin (it releases more thyroid hormone from binding proteins).$x$, null),
(147, $x$A patient presents with a decreased level of consciousness, and the treating team suspects a mixed sedative overdose. Which initial assessment priority takes precedence over identifying the specific substance ingested?$x$, $x$Airway, breathing, and circulation (ABCs) with immediate stabilisation of any compromise$x$, $x$✅ Correct answer: Airway, breathing, and circulation (ABCs) with immediate stabilisation of any compromise
In any poisoned or overdosed patient with reduced consciousness, the FIRST priority is AIRWAY, BREATHING and CIRCULATION (ABC) — open and protect the airway (recovery position, suction, airway adjuncts, intubation if needed), support breathing (oxygen, bag-mask ventilation), and support circulation (IV access, fluids for hypotension) — plus check blood glucose. Sedative overdoses kill mainly by airway obstruction, aspiration and respiratory depression. Identifying the exact substance comes AFTER the patient is stabilised.

❌ Why the other options are wrong:
• Obtaining a detailed history of exactly what was ingested and when — Taking a detailed history is important, but it must not delay life-saving actions.
• Sending blood for a full toxicology screen before any intervention — A toxicology screen is helpful later; waiting for it before intervening could be fatal.
• Contacting the patient's next of kin for consent — In an emergency, consent is implied; contacting relatives must not delay treatment.

⭐ Key point: After ABCs, check glucose, give specific antidotes when indicated (e.g. naloxone for opioids), consider activated charcoal if the airway is protected, and consult a poisons centre.$x$, null),
(148, $x$A patient with chronic kidney disease receiving erythropoietin therapy for anaemia should also have which nutrient supplemented to ensure the therapy is effective?$x$, $x$Iron, since adequate iron stores are needed for erythropoietin to be effective$x$, $x$✅ Correct answer: Iron, since adequate iron stores are needed for erythropoietin to be effective
In CKD, the kidneys make too little ERYTHROPOIETIN (EPO) — the hormone that stimulates the bone marrow to produce red blood cells — causing anaemia. EPO therapy (e.g. epoetin) stimulates red cell production, but the marrow needs IRON to make haemoglobin. If iron stores are low, EPO will NOT work well ("EPO resistance"). So IRON is supplemented (often IV iron in dialysis patients), guided by ferritin and transferrin saturation.

❌ Why the other options are wrong:
• Calcium only — Calcium is important in CKD bone disease, but it does not make EPO effective.
• Vitamin A — Vitamin A is not needed for EPO therapy.
• Vitamin C only — Vitamin C may help iron absorption, but iron itself is the essential supplement.

⭐ Key point: Other causes of poor EPO response: infection, inflammation, B12 or folate deficiency, hyperparathyroidism, and inadequate dialysis.$x$, null),
(149, $x$A patient with severe sepsis has a central venous oxygen saturation (ScvO2) that is persistently low despite fluid resuscitation. This finding suggests:$x$, $x$An imbalance between oxygen delivery and tissue oxygen demand/consumption, prompting further optimisation of resuscitation$x$, $x$✅ Correct answer: An imbalance between oxygen delivery and tissue oxygen demand/consumption, prompting further optimisation of resuscitation
CENTRAL VENOUS OXYGEN SATURATION (ScvO2) is measured from blood in the superior vena cava. It reflects the BALANCE between OXYGEN DELIVERY (cardiac output, haemoglobin, SaO2) and OXYGEN CONSUMPTION by the tissues. Normal is about 70% or more. A PERSISTENTLY LOW ScvO2 (below 70%) despite fluids means the tissues are extracting a lot of oxygen because DELIVERY IS NOT ENOUGH for their needs. This prompts further optimisation: more fluids if still responsive, inotropes (e.g. dobutamine) if cardiac output is low, blood transfusion if Hb is very low, and reducing oxygen demand (control fever, pain, agitation).

❌ Why the other options are wrong:
• Complete resolution of shock — Low ScvO2 shows ongoing shock, not resolution.
• No clinical significance — It is clinically significant.
• Excellent tissue oxygen delivery relative to demand — Low ScvO2 means POOR delivery relative to demand, not excellent delivery.

⭐ Key point: A HIGH ScvO2 with high lactate in sepsis may mean the cells cannot use oxygen (cytopathic hypoxia) or there is shunting — interpret with lactate and the clinical picture.$x$, null),
(150, $x$A patient with suspected active pulmonary tuberculosis is admitted to a general ward by mistake. The priority nursing action is to:$x$, $x$Move the patient to a negative-pressure isolation room and initiate airborne precautions with N95 respirators for staff$x$, $x$✅ Correct answer: Move the patient to a negative-pressure isolation room and initiate airborne precautions with N95 respirators for staff
PULMONARY TUBERCULOSIS spreads through the AIR in tiny droplet nuclei that stay suspended for hours and can travel between rooms. A patient with suspected active TB on an open general ward puts other patients (especially immunocompromised ones) and staff at risk. The PRIORITY is to MOVE THE PATIENT to a NEGATIVE-PRESSURE ISOLATION ROOM (or a single room with the door closed and good ventilation if none is available) and start AIRBORNE PRECAUTIONS, with staff wearing fitted N95/FFP3 RESPIRATORS. Give the patient a surgical mask when outside the room. Then collect sputum samples (smear, GeneXpert, culture) and inform the infection control team.

❌ Why the other options are wrong:
• Simply close the patient's door with no other change — Only closing the door is not enough; airborne precautions and proper isolation are needed.
• Leave the patient where they are with no changes — Leaving the patient on the open ward continues the exposure risk.
• Discharge the patient immediately — Discharging a possibly infectious, untreated patient is unsafe for the patient and the community.

⭐ Key point: Contact tracing may be needed for patients and staff exposed on the ward. Isolation usually continues until sputum tests are negative or after about 2 weeks of effective treatment with clinical improvement.$x$, null),
(151, $x$A patient on long-term oral amiodarone should be monitored for which combination of toxicities?$x$, $x$Pulmonary fibrosis, thyroid dysfunction, and hepatotoxicity$x$, $x$✅ Correct answer: Pulmonary fibrosis, thyroid dysfunction, and hepatotoxicity
AMIODARONE contains a lot of iodine and builds up in tissues for months. Long-term toxicities include: PULMONARY FIBROSIS / pneumonitis (cough, breathlessness — can be fatal); THYROID DYSFUNCTION (both hypothyroidism and hyperthyroidism); and HEPATOTOXICITY (raised liver enzymes, hepatitis). Others: corneal microdeposits, slate-grey skin and photosensitivity, peripheral neuropathy, bradycardia and QT prolongation.

❌ Why the other options are wrong:
• Ototoxicity, nephrotoxicity, and red man syndrome — Ototoxicity, nephrotoxicity and red man syndrome are linked to aminoglycosides and vancomycin.
• Serotonin syndrome, tendon rupture, and QT shortening — Serotonin syndrome, tendon rupture (fluoroquinolones) and QT SHORTENING are not amiodarone effects — amiodarone PROLONGS the QT.
• Adrenal suppression, hypoglycemia, and priapism — Adrenal suppression and hypoglycaemia are not typical amiodarone effects; priapism is linked to other drugs.

⭐ Key point: Monitor thyroid function, liver function, chest X-ray/lung function and ECG. Reduce doses of warfarin and digoxin when amiodarone is started.$x$, null),
(152, $x$A patient with severe hypokalaemia (potassium 2.5mmol/L) is prescribed IV potassium replacement. The nurse's priority safety consideration is to:$x$, $x$Ensure it is properly diluted, infused slowly via pump, with continuous cardiac monitoring$x$, $x$✅ Correct answer: Ensure it is properly diluted, infused slowly via pump, with continuous cardiac monitoring
SEVERE HYPOKALAEMIA (2.5 mmol/L) causes muscle weakness and dangerous ARRHYTHMIAS, so it must be corrected — but IV POTASSIUM is also DANGEROUS if given too fast or too concentrated: it can cause cardiac arrest. Safety rules: always DILUTE potassium properly (use pre-mixed bags where possible); give it SLOWLY by INFUSION PUMP (usually no more than 10 mmol/hour peripherally; up to 20 mmol/hour via a central line with ECG monitoring in critical care); use CONTINUOUS CARDIAC MONITORING for high rates; check potassium levels regularly; and also correct low magnesium.

❌ Why the other options are wrong:
• Give it as a rapid IV push for fastest correction — Rapid IV push of potassium can cause fatal cardiac arrest — it is NEVER given as a bolus.
• Skip cardiac monitoring since potassium replacement is always safe — Cardiac monitoring is essential during IV replacement for severe hypokalaemia.
• Give it intramuscularly instead — Intramuscular potassium is not used (painful, unreliable, and can cause tissue damage).

⭐ Key point: Concentrated potassium chloride ampoules should be stored separately and double-checked — they have caused fatal errors.$x$, null),
(153, $x$A patient recovering from DKA treatment develops cerebral oedema, a rare but serious complication most associated with:$x$, $x$Overly rapid correction of hyperglycaemia and fluid shifts, particularly in paediatric patients$x$, $x$✅ Correct answer: Overly rapid correction of hyperglycaemia and fluid shifts, particularly in paediatric patients
CEREBRAL OEDEMA is a rare but serious complication of DKA treatment, mostly in CHILDREN and young adults. It is linked to OVERLY RAPID CORRECTION — giving large volumes of IV fluid quickly and lowering glucose and osmolality too fast. Water moves into the brain cells, which have adapted to the high osmolality, causing them to swell. Warning signs: headache, falling conscious level, irritability, slowing heart rate, rising BP, and abnormal posturing. Treatment: mannitol or hypertonic saline, head-up position, reduce fluid rate, and ICU care.

❌ Why the other options are wrong:
• No relationship to treatment rate — The rate of correction IS related to the risk.
• Undertreatment of DKA — Undertreatment is not the main association.
• Slow, careful correction of fluids and glucose — Slow, careful correction REDUCES the risk.

⭐ Key point: In children with DKA, fluids are given more cautiously, and glucose should fall gradually (e.g. no faster than about 5 mmol/L per hour).$x$, null),
(154, $x$A patient's oxygen saturation probe consistently reads falsely low despite the patient appearing clinically well. The nurse should first consider:$x$, $x$Technical causes such as poor peripheral perfusion, nail polish, motion artefact, or probe malposition before assuming true hypoxaemia$x$, $x$✅ Correct answer: Technical causes such as poor peripheral perfusion, nail polish, motion artefact, or probe malposition before assuming true hypoxaemia
A pulse oximeter can give FALSELY LOW readings for TECHNICAL reasons: POOR PERIPHERAL PERFUSION (cold hands, vasoconstriction, low BP), dark NAIL POLISH or artificial nails, MOTION ARTEFACT (shivering, moving), PROBE MALPOSITION or a probe that is too big/small, bright ambient light, and some abnormal haemoglobins. If the patient looks clinically WELL (pink, alert, breathing comfortably), the nurse should FIRST check these technical causes (look at the waveform quality, reposition or change the probe, warm the hand, try another site such as the ear lobe) — and confirm with an arterial blood gas if in doubt.

❌ Why the other options are wrong:
• Ignoring the reading entirely with no clinical correlation — Readings should never be ignored without clinical correlation.
• Immediately intubating the patient — Intubation is not appropriate for a clinically well patient with a possibly false reading.
• Assuming the reading is always accurate with no further check — Assuming the reading is always accurate risks wrong treatment.

⭐ Key point: Check the plethysmograph (waveform): a poor, irregular waveform suggests an unreliable reading. Pulse oximeters may OVER-estimate oxygen levels in darker-skinned patients — be aware.$x$, null),
(155, $x$A patient's surgical wound shows increasing redness, warmth, and purulent discharge on post-operative day 4, with a fever of 38.6°C. The nurse should suspect:$x$, $x$Surgical site infection, requiring assessment, wound culture, and physician notification$x$, $x$✅ Correct answer: Surgical site infection, requiring assessment, wound culture, and physician notification
A SURGICAL SITE INFECTION (SSI) typically appears 3–7 days after surgery. Signs: increasing REDNESS, WARMTH, SWELLING, PAIN or tenderness, PURULENT (pus) DISCHARGE, wound breakdown, and FEVER (here 38.6 °C). The nurse should ASSESS the wound (size, colour, discharge, odour, edges), take a WOUND SWAB for CULTURE, mark the area of redness, monitor vital signs (sepsis screening), and NOTIFY THE PHYSICIAN (antibiotics, possible opening and drainage of the wound).

❌ Why the other options are wrong:
• A drug reaction — A drug reaction would not cause pus discharge from the wound.
• No clinical significance — These signs are clinically significant.
• Normal wound healing — Normal healing shows decreasing redness, with no pus or fever after day 2–3.

⭐ Key point: Prevent SSI: hand hygiene, aseptic dressing technique, glucose control, nutrition, and keeping dressings clean and dry.$x$, null),
(156, $x$A patient receiving unfractionated heparin for PE has an aPTT of 110 seconds. What is the priority nursing action?$x$, $x$Hold or slow the infusion per protocol and notify the physician$x$, $x$✅ Correct answer: Hold or slow the infusion per protocol and notify the physician
An aPTT of 110 seconds is well ABOVE the usual therapeutic range for heparin (typically about 1.5–2.5 times control, e.g. 60–90 seconds depending on the lab). This means the patient is OVER-ANTICOAGULATED and at high RISK OF BLEEDING. The nurse should HOLD or SLOW the infusion according to the heparin PROTOCOL, assess for bleeding (wounds, urine, stools, gums, neuro status), and NOTIFY THE PHYSICIAN. Repeat the aPTT as per protocol.

❌ Why the other options are wrong:
• Continue the infusion unchanged, as this is therapeutic — Continuing unchanged is unsafe; 110 seconds is too high.
• Administer protamine sulfate immediately without an order — Protamine sulphate reverses heparin, but it is given for significant bleeding and needs a prescription.
• Increase the heparin infusion rate — Increasing the rate would worsen the risk of bleeding.

⭐ Key point: Always check the lab's therapeutic range and the unit's heparin nomogram, and double-check pump settings.$x$, null),
(157, $x$A patient post-thyroidectomy develops perioral tingling and a positive Chvostek's sign. This suggests:$x$, $x$Hypocalcaemia from parathyroid gland disturbance during surgery$x$, $x$✅ Correct answer: Hypocalcaemia from parathyroid gland disturbance during surgery
During THYROIDECTOMY, the nearby PARATHYROID glands (which control blood calcium) may be bruised, have their blood supply disturbed, or be accidentally removed. This causes HYPOCALCAEMIA, usually 24–48 hours after surgery. Signs: PERIORAL TINGLING (around the mouth), tingling in fingers and toes, muscle cramps, a positive CHVOSTEK'S SIGN (tapping the facial nerve in front of the ear causes twitching of the face), a positive TROUSSEAU'S SIGN (carpal spasm when a BP cuff is inflated), and in severe cases laryngospasm, seizures and arrhythmias (long QT).

❌ Why the other options are wrong:
• A wound infection — Wound infection causes redness, swelling and discharge, not tingling and Chvostek's sign.
• Hyperkalaemia — Hyperkalaemia causes muscle weakness and ECG changes (peaked T waves), not perioral tingling and Chvostek's sign.
• Normal recovery with no concern — This is not normal recovery; it needs prompt treatment.

⭐ Key point: Treat with IV calcium gluconate for severe symptoms, then oral calcium and vitamin D. Check calcium levels regularly after thyroid surgery.$x$, null),
(158, $x$A patient with a head injury has a Glasgow Coma Scale score of 10. This is classified as which severity of traumatic brain injury?$x$, $x$Moderate$x$, $x$✅ Correct answer: Moderate
Traumatic brain injury (TBI) is graded by the GLASGOW COMA SCALE (GCS): MILD = GCS 13–15; MODERATE = GCS 9–12; SEVERE = GCS 3–8. A GCS of 10 is MODERATE TBI. These patients can deteriorate, so they need close neurological observation, CT scanning, and neurosurgical review.

❌ Why the other options are wrong:
• Severe — Severe TBI is GCS 8 or less (these patients usually need intubation to protect the airway).
• Vegetative state — A vegetative state is a long-term condition of wakefulness without awareness, not a GCS category.
• Mild — Mild TBI is GCS 13–15.

⭐ Key point: "GCS 8 — intubate." A fall of 2 or more points in GCS needs urgent medical review.$x$, null),
(159, $x$A patient with severe upper GI bleeding is given a proton pump inhibitor (PPI) infusion. The rationale for this treatment is that PPIs:$x$, $x$Raise gastric pH, which stabilises clot formation and reduces rebleeding risk from peptic ulcers$x$, $x$✅ Correct answer: Raise gastric pH, which stabilises clot formation and reduces rebleeding risk from peptic ulcers
In upper GI bleeding from a PEPTIC ULCER, stomach ACID and the enzyme PEPSIN break down blood clots. PPIs (e.g. omeprazole, pantoprazole infusion) strongly suppress acid production and RAISE the GASTRIC pH (to above 6). At this pH, clots are more STABLE and platelets work better, which REDUCES REBLEEDING after endoscopic treatment, and reduces the need for surgery.

❌ Why the other options are wrong:
• Have no role in acute GI bleeding management — PPIs DO have an important role in acute ulcer bleeding.
• Are used only for long-term prevention, never in acute bleeding — PPIs are used in acute bleeding as well as for long-term prevention.
• Directly stop active arterial bleeding without any other intervention — PPIs do not directly stop active arterial bleeding; endoscopic therapy (clips, injection, heat) is needed to stop active bleeding.

⭐ Key point: Management of upper GI bleed: resuscitation (IV access, fluids, blood), risk scoring (Glasgow-Blatchford), urgent endoscopy within 24 hours, PPI after endoscopic treatment, and treat H. pylori.$x$, null),
(160, $x$A patient with myasthenia gravis in a myasthenic crisis presents with worsening muscle weakness and respiratory difficulty. The priority nursing concern is:$x$, $x$Close monitoring of respiratory status/vital capacity, with readiness for ventilatory support$x$, $x$✅ Correct answer: Close monitoring of respiratory status/vital capacity, with readiness for ventilatory support
In MYASTHENIC CRISIS, severe muscle weakness affects the BREATHING muscles (diaphragm, intercostals) and the throat muscles (swallowing, airway protection). This can lead to RESPIRATORY FAILURE quickly. The priority is CLOSE MONITORING of respiratory status — breathing rate, chest movement, SpO2, ability to cough and swallow, and regular VITAL CAPACITY (FVC) and negative inspiratory force measurements — and being READY for VENTILATORY SUPPORT (NIV or intubation). An FVC below 20 mL/kg or a rapid fall indicates the need for ventilation.

❌ Why the other options are wrong:
• Nutritional intake only — Nutrition is important, but breathing comes first.
• Skin integrity only — Skin integrity is important, but not the priority.
• Pain management only — Pain management is not the main issue in myasthenic crisis.

⭐ Key point: SpO2 and blood gases may stay normal until late — rely on FVC. Treatment includes IVIG or plasma exchange; avoid drugs that worsen myasthenia (e.g. aminoglycosides, magnesium, some muscle relaxants).$x$, null),
(161, $x$A patient sustains a rotational acceleration-deceleration injury in a high-speed motor vehicle collision. The initial CT is normal, but the patient remains comatose for several days. Which type of head injury is most consistent with this presentation?$x$, $x$Diffuse axonal injury$x$, $x$✅ Correct answer: Diffuse axonal injury
DIFFUSE AXONAL INJURY (DAI) is caused by ROTATIONAL ACCELERATION-DECELERATION forces (e.g. high-speed car crashes). The brain twists and shears inside the skull, tearing AXONS (nerve fibres) throughout the brain. Classic picture: the patient is in a COMA from the moment of injury, but the INITIAL CT may be NORMAL or show only small bleeds (MRI is more sensitive). Prognosis is often poor.

❌ Why the other options are wrong:
• Concussion — Concussion is a mild, temporary brain dysfunction; patients recover consciousness quickly.
• Depressed skull fracture — Depressed skull fracture would show on CT.
• Epidural hematoma — Epidural haematoma would show as a lens-shaped bleed on CT, often with a lucid interval.

⭐ Key point: DAI is graded by location (grade I: white matter; II: corpus callosum; III: brainstem). Care is supportive: prevent secondary brain injury (oxygen, BP, ICP control).$x$, null),
(162, $x$A patient with sepsis presenting with a CVP of 9mmHg (slightly elevated) should be interpreted with caution because:$x$, $x$Sepsis can present with low, normal, OR high CVP$x$, $x$✅ Correct answer: Sepsis can present with low, normal, OR high CVP
CENTRAL VENOUS PRESSURE (CVP) is influenced by many factors: blood volume, right heart function, venous tone, intrathoracic pressure (ventilation, PEEP), and abdominal pressure. In SEPSIS, the CVP can be LOW (vasodilation, capillary leak, hypovolaemia), NORMAL, or HIGH (right ventricular dysfunction, high PEEP, fluid overload, raised abdominal pressure). So a CVP of 9 mmHg does not reliably tell you whether the patient needs more fluid. Dynamic measures (passive leg raise, stroke volume changes, ultrasound) are better guides.

❌ Why the other options are wrong:
• CVP is irrelevant in sepsis — CVP is not irrelevant; it gives some information, especially trends.
• Sepsis always causes low CVP — Sepsis does not always cause low CVP.
• A CVP of 9 always confirms fluid overload — A CVP of 9 does not confirm fluid overload.

⭐ Key point: Single CVP values are poor predictors of fluid responsiveness; interpret them with the whole clinical picture.$x$, null),
(163, $x$A patient with severe Mendelson's syndrome develops worsening bilateral infiltrates, refractory hypoxaemia, and reduced lung compliance over 24-48 hours. This most likely represents progression to which complication?$x$, $x$Acute respiratory distress syndrome (ARDS)$x$, $x$✅ Correct answer: Acute respiratory distress syndrome (ARDS)
MENDELSON'S SYNDROME (aspiration of acidic stomach contents) causes a chemical injury to the lungs. In severe cases, the injury progresses over 24–48 hours to ACUTE RESPIRATORY DISTRESS SYNDROME (ARDS): worsening BILATERAL INFILTRATES, REFRACTORY HYPOXAEMIA (poor response to oxygen), and REDUCED LUNG COMPLIANCE (stiff lungs), not caused by heart failure.

❌ Why the other options are wrong:
• Bronchiectasis — Bronchiectasis is a chronic condition developing over years.
• Pulmonary embolism — Pulmonary embolism causes sudden hypoxia but not usually bilateral infiltrates and low compliance.
• Chronic bronchitis — Chronic bronchitis is a long-term condition, not an acute complication.

⭐ Key point: Aspiration is a direct (pulmonary) cause of ARDS. Treat with lung-protective ventilation.$x$, null),
(164, $x$A patient presents with poisoning after ingesting rodenticide containing a long-acting anticoagulant (superwarfarin). What is the appropriate treatment if bleeding or a significantly elevated INR develops?$x$, $x$Vitamin K1, with prolonged (potentially weeks-long) therapy due to the long half-life of superwarfarins$x$, $x$✅ Correct answer: Vitamin K1, with prolonged (potentially weeks-long) therapy due to the long half-life of superwarfarins
SUPERWARFARINS (e.g. brodifacoum) in rodent poisons are long-acting anticoagulants that block vitamin K recycling, preventing the liver from making clotting factors II, VII, IX and X. They last MUCH LONGER than warfarin (weeks to months). If bleeding occurs or the INR is significantly raised, treat with VITAMIN K1 (phytomenadione), often in HIGH DOSES and for a PROLONGED period (weeks to months), with regular INR monitoring. For active, severe bleeding, give prothrombin complex concentrate or fresh frozen plasma as well.

❌ Why the other options are wrong:
• A single dose of naloxone — Naloxone reverses opioids, not anticoagulants.
• Immediate whole blood transfusion regardless of INR — Whole blood regardless of INR is not appropriate.
• Activated charcoal alone, with no other treatment — Activated charcoal alone does not treat the anticoagulant effect.

⭐ Key point: Superwarfarin poisoning may be intentional or accidental (e.g. children); suspect it in unexplained bleeding with a high INR.$x$, null),
(165, $x$A patient with an inferior wall MI should be monitored closely for which complication, due to the shared blood supply from the right coronary artery?$x$, $x$Right ventricular infarction and bradyarrhythmias/heart block$x$, $x$✅ Correct answer: Right ventricular infarction and bradyarrhythmias/heart block
The RIGHT CORONARY ARTERY (RCA) supplies the INFERIOR wall of the left ventricle in most people. It also supplies the RIGHT VENTRICLE, the SINOATRIAL (SA) node (in about 60%), and the ATRIOVENTRICULAR (AV) node (in about 90%). So an INFERIOR MI (RCA blockage) can cause RIGHT VENTRICULAR INFARCTION (hypotension, raised JVP, clear lungs) and BRADYARRHYTHMIAS/HEART BLOCK (sinus bradycardia, AV block).

❌ Why the other options are wrong:
• Pulmonary embolism — PE is not directly linked to inferior MI.
• Isolated left bundle branch block — Isolated LBBB is more associated with anterior MI.
• Anterior wall extension — Anterior wall extension is unlikely with RCA occlusion.

⭐ Key point: In inferior MI: record right-sided leads (V4R), avoid nitrates if RV infarction, and have atropine and pacing ready.$x$, null),
(166, $x$A patient with severe hyperglycaemia and altered mental status but minimal ketosis and a blood glucose of 45mmol/L is most likely experiencing:$x$, $x$Hyperglycaemic Hyperosmolar State (HHS)$x$, $x$✅ Correct answer: Hyperglycaemic Hyperosmolar State (HHS)
HYPERGLYCAEMIC HYPEROSMOLAR STATE (HHS) is a diabetic emergency, mostly in type 2 diabetes, with VERY HIGH GLUCOSE (often above 30 mmol/L — here 45), HIGH OSMOLALITY (above 320 mOsm/kg), severe DEHYDRATION, and ALTERED MENTAL STATUS, but with MINIMAL KETOSIS and little or no acidosis (pH above 7.3, bicarbonate above 15).

❌ Why the other options are wrong:
• Diabetic ketoacidosis (DKA) — DKA has significant ketosis and acidosis.
• Hypoglycaemia — Hypoglycaemia is LOW blood glucose.
• Normal glucose variation — 45 mmol/L is not normal.

⭐ Key point: Treat HHS with careful IV fluid replacement, cautious insulin (only after fluids stop lowering glucose), potassium monitoring and VTE prophylaxis.$x$, null),
(167, $x$A patient 3 days post-MI develops a new holosystolic murmur, hypotension, and acute pulmonary edema. This presentation is most consistent with:$x$, $x$Papillary muscle rupture causing acute mitral regurgitation$x$, $x$✅ Correct answer: Papillary muscle rupture causing acute mitral regurgitation
About 2–7 days after an MI, PAPILLARY MUSCLE RUPTURE can occur when the damaged muscle tears. The mitral valve leaflets lose their support, causing SUDDEN, severe ACUTE MITRAL REGURGITATION: a new HOLOSYSTOLIC (pansystolic) MURMUR at the apex, HYPOTENSION (low output), and ACUTE PULMONARY OEDEMA.

❌ Why the other options are wrong:
• Deep vein thrombosis — DVT does not cause a murmur and pulmonary oedema.
• Stable angina — Stable angina is chest pain on exertion without these acute findings.
• Pericarditis — Pericarditis causes chest pain with a pericardial rub, not a holosystolic murmur and pulmonary oedema.

⭐ Key point: This is a surgical emergency: urgent echo, vasodilators, IABP, and valve surgery.$x$, null),
(168, $x$A patient develops a temperature of 39.5 degrees C with tachycardia and jaw muscle rigidity shortly after induction with succinylcholine. What should the nurse suspect first?$x$, $x$Malignant hyperthermia, and the MH protocol should be initiated immediately$x$, $x$✅ Correct answer: Malignant hyperthermia, and the MH protocol should be initiated immediately
MALIGNANT HYPERTHERMIA (MH) is a rare inherited muscle disorder triggered by SUCCINYLCHOLINE and VOLATILE ANAESTHETICS. Early signs: JAW (MASSETER) MUSCLE RIGIDITY, TACHYCARDIA, a rapidly rising END-TIDAL CO2, muscle rigidity, and then a RISING TEMPERATURE (here 39.5 °C), acidosis and hyperkalaemia. It is life-threatening. The MH PROTOCOL must start IMMEDIATELY: stop triggering agents, call for help, hyperventilate with 100% oxygen, give IV DANTROLENE, cool the patient, and treat complications.

❌ Why the other options are wrong:
• A routine post-operative fever, so paracetamol alone should be given — This is not a routine post-operative fever.
• Nothing abnormal; reassess again in 4 hours — Waiting 4 hours could be fatal.
• The jaw rigidity means more succinylcholine is needed to relax the muscle — More succinylcholine would worsen MH.

⭐ Key point: Every theatre should have an MH kit with dantrolene. Test family members for susceptibility.$x$, null),
(169, $x$A patient with acute pancreatitis develops Grey Turner's sign (flank bruising). This finding suggests:$x$, $x$Retroperitoneal haemorrhage, associated with severe pancreatitis$x$, $x$✅ Correct answer: Retroperitoneal haemorrhage, associated with severe pancreatitis
GREY TURNER'S SIGN is BRUISING of the FLANKS. In severe (necrotising or haemorrhagic) pancreatitis, blood from the inflamed pancreas tracks through the RETROPERITONEUM to the flanks. It indicates RETROPERITONEAL HAEMORRHAGE and SEVERE disease, with a worse prognosis.

❌ Why the other options are wrong:
• A benign, unrelated skin condition — It is not a benign skin condition.
• A localised allergic reaction — It is not an allergic reaction.
• Improved prognosis — It indicates a WORSE prognosis, not improved.

⭐ Key point: Cullen's sign is bruising around the umbilicus — also a sign of retroperitoneal or intra-abdominal bleeding.$x$, null),
(170, $x$A patient with end-stage renal disease who missed a scheduled dialysis session presents with tall peaked T waves on ECG and a serum potassium of 7.2 mEq/L. In addition to emergent pharmacologic treatment, which nursing action is highest priority?$x$, $x$Continuous cardiac monitoring and preparation for emergent dialysis$x$, $x$✅ Correct answer: Continuous cardiac monitoring and preparation for emergent dialysis
HYPERKALAEMIA (potassium 7.2 mmol/L) with TALL, PEAKED T WAVES is a MEDICAL EMERGENCY — the heart can suddenly go into ventricular fibrillation or asystole. After urgent drug treatment (IV calcium gluconate to protect the heart, insulin with dextrose and salbutamol to move potassium into cells), the definitive treatment is to REMOVE potassium by DIALYSIS. So the highest priority nursing actions are CONTINUOUS CARDIAC MONITORING and PREPARING for EMERGENCY DIALYSIS.

❌ Why the other options are wrong:
• Encourage oral intake of a high-potassium meal — A high-potassium meal would worsen hyperkalaemia.
• Administer a potassium supplement — Potassium supplements would worsen hyperkalaemia.
• Delay treatment until the next routinely scheduled dialysis session — Waiting for the next scheduled dialysis could be fatal.

⭐ Key point: Educate dialysis patients about potassium-restricted diets and the importance of not missing dialysis sessions.$x$, null),
(171, $x$A patient with flash pulmonary oedema secondary to a hypertensive emergency should receive which class of medication as a primary intervention?$x$, $x$IV vasodilators (e.g., nitroglycerin, nitroprusside) to rapidly reduce afterload$x$, $x$✅ Correct answer: IV vasodilators (e.g., nitroglycerin, nitroprusside) to rapidly reduce afterload
In FLASH PULMONARY OEDEMA from a HYPERTENSIVE EMERGENCY, very high BP (afterload) makes it difficult for the left ventricle to pump blood forward. Pressure backs up into the lungs, causing sudden fluid flooding. The primary treatment is IV VASODILATORS such as NITROGLYCERIN (GTN) or NITROPRUSSIDE, which rapidly REDUCE AFTERLOAD (and preload), allowing the heart to empty and fluid to move out of the lungs. Also give oxygen, CPAP/NIV, and diuretics.

❌ Why the other options are wrong:
• IV antibiotics — Antibiotics treat infection, not pulmonary oedema.
• Oral ACE inhibitors — Oral ACE inhibitors act too slowly in an emergency.
• Beta-blockers to slow heart rate — Beta-blockers could worsen acute heart failure.

⭐ Key point: Sit the patient upright, give high-flow oxygen or CPAP, and start IV nitrates while monitoring BP closely.$x$, null),
(172, $x$A patient with significant renal impairment receiving morphine is at increased risk of prolonged sedation and respiratory depression due to:$x$, $x$Accumulation of the active metabolite morphine-6-glucuronide$x$, $x$✅ Correct answer: Accumulation of the active metabolite morphine-6-glucuronide
MORPHINE is broken down in the liver into metabolites, including MORPHINE-6-GLUCURONIDE (M6G), which is ACTIVE (more potent than morphine itself). M6G is cleared by the KIDNEYS. In RENAL IMPAIRMENT, M6G ACCUMULATES, causing PROLONGED SEDATION and RESPIRATORY DEPRESSION.

❌ Why the other options are wrong:
• Reduced protein binding of morphine — Reduced protein binding is not the main reason.
• Enhanced renal clearance of morphine — Renal clearance is REDUCED, not enhanced.
• Increased hepatic first-pass metabolism — Increased hepatic first-pass metabolism is not the cause.

⭐ Key point: In renal impairment, use reduced doses or alternative opioids (e.g. fentanyl, alfentanil), and monitor sedation and breathing.$x$, null),
(173, $x$A patient on haemodialysis develops hypotension, cramping, and nausea during the session. The nurse's priority action is to:$x$, $x$Slow or stop ultrafiltration, position the patient appropriately, and consider a fluid bolus per protocol$x$, $x$✅ Correct answer: Slow or stop ultrafiltration, position the patient appropriately, and consider a fluid bolus per protocol
INTRADIALYTIC HYPOTENSION happens when fluid is removed (ULTRAFILTRATION) faster than the body can refill the blood vessels. Symptoms: HYPOTENSION, CRAMPING, NAUSEA, dizziness. The nurse should SLOW or STOP ULTRAFILTRATION, POSITION the patient flat with legs raised (Trendelenburg), and consider a small FLUID BOLUS (e.g. saline) according to protocol.

❌ Why the other options are wrong:
• Ignore symptoms since they are expected — These symptoms need action.
• Increase the ultrafiltration rate to relieve symptoms faster — Increasing ultrafiltration would worsen hypotension.
• Immediately terminate dialysis access permanently — Terminating dialysis access permanently is inappropriate.

⭐ Key point: Prevent by limiting fluid gain between sessions, careful target weight setting, and avoiding antihypertensives before dialysis.$x$, null),
(174, $x$A patient with a chronic spinal cord injury at T4 develops a sudden pounding headache, severe hypertension, profuse sweating and flushing above the injury level, and bradycardia after their urinary catheter becomes blocked. This presentation is most consistent with$x$, $x$autonomic dysreflexia$x$, $x$✅ Correct answer: autonomic dysreflexia
AUTONOMIC DYSREFLEXIA occurs in spinal cord injuries at or above T6. A stimulus below the injury (most commonly a BLOCKED URINARY CATHETER or full bladder) triggers a massive sympathetic reflex, causing SEVERE HYPERTENSION. The body tries to lower it, causing BRADYCARDIA, POUNDING HEADACHE, and FLUSHING and SWEATING ABOVE the injury level.

❌ Why the other options are wrong:
• spinal shock — Spinal shock is a temporary loss of reflexes right after injury.
• a simple tension headache — A tension headache does not cause severe hypertension and bradycardia.
• Cushing's triad from raised intracranial pressure — Cushing's triad is caused by raised intracranial pressure, not a blocked catheter.

⭐ Key point: Sit the patient up, find and remove the trigger (check catheter, bowels, skin), and give antihypertensives if needed.$x$, null),
(175, $x$A patient's ECG shows ST-segment depression in the anterior leads during an episode of chest pain, which resolves when the pain resolves. This pattern most likely represents:$x$, $x$Myocardial ischaemia$x$, $x$✅ Correct answer: Myocardial ischaemia
ST-SEGMENT DEPRESSION during chest pain that RESOLVES when the pain goes away indicates MYOCARDIAL ISCHAEMIA — the heart muscle is temporarily short of oxygen (e.g. unstable angina or demand ischaemia). It is a warning sign of coronary artery disease and possible impending MI.

❌ Why the other options are wrong:
• Normal variant with no clinical significance — It is not a normal variant.
• Old, resolved myocardial infarction with no current significance — An old MI shows Q waves, not transient ST depression with pain.
• Ventricular hypertrophy only — Ventricular hypertrophy causes persistent changes, not transient changes with pain.

⭐ Key point: Treat as acute coronary syndrome: aspirin, anticoagulation, nitrates, troponin testing, and cardiology review.$x$, null),
(176, $x$A post-nephrectomy patient's hourly urine output drops significantly with a rising heart rate and falling blood pressure. The nurse should first suspect:$x$, $x$Hypovolaemia/bleeding, requiring urgent assessment and fluid resuscitation$x$, $x$✅ Correct answer: Hypovolaemia/bleeding, requiring urgent assessment and fluid resuscitation
After NEPHRECTOMY (kidney removal), BLEEDING from the renal vessels is a serious risk. FALLING URINE OUTPUT, RISING HEART RATE and FALLING BP are classic signs of HYPOVOLAEMIA from BLEEDING. The nurse should urgently assess (check wound and drains, vital signs, Hb), give IV fluids, notify the surgeon, and prepare for blood transfusion and possible return to theatre.

❌ Why the other options are wrong:
• A urinary tract infection — A UTI would cause fever and urinary symptoms, not shock.
• Normal recovery with no action needed — These are not signs of normal recovery.
• Overhydration — Overhydration would cause high BP and oedema, not hypotension and tachycardia.

⭐ Key point: Monitor the remaining kidney's function closely after nephrectomy.$x$, null),
(177, $x$A postoperative patient experiences sudden onset of severe chest pain and shortness of breath. The nurse suspects:$x$, $x$Pulmonary embolism$x$, $x$✅ Correct answer: Pulmonary embolism
A post-operative patient has a high risk of DEEP VEIN THROMBOSIS (immobility, surgery-related clotting changes). A clot can travel to the lungs, causing PULMONARY EMBOLISM (PE): SUDDEN severe CHEST PAIN (often pleuritic), SHORTNESS OF BREATH, tachycardia, hypoxia, and possibly collapse.

❌ Why the other options are wrong:
• Infection — Infection develops more gradually, with fever.
• Pneumonia — Pneumonia develops over days with fever and cough.
• Heart failure — Heart failure develops more gradually, with orthopnoea and oedema.

⭐ Key point: Prevent with early mobilisation, compression stockings and anticoagulant prophylaxis. Treat suspected PE with oxygen, anticoagulation and CTPA.$x$, null),
(178, $x$A patient is witnessed to regurgitate and aspirate during induction of anaesthesia. What is the immediate first step?$x$, $x$Place the patient head-down in the lateral position and suction the airway immediately$x$, $x$✅ Correct answer: Place the patient head-down in the lateral position and suction the airway immediately
When ASPIRATION is witnessed during induction, the immediate goal is to STOP MORE stomach contents entering the lungs and CLEAR THE AIRWAY: tilt the patient HEAD-DOWN and turn them to the LATERAL (side) position so gravity drains material out of the mouth, and SUCTION the airway immediately. Then secure the airway with a cuffed tube and suction through it before ventilating.

❌ Why the other options are wrong:
• Administer a full dose of intravenous antibiotics before any airway intervention — Antibiotics are not given before airway protection, and are not always needed.
• Delay any intervention until a chest X-ray confirms aspiration — Waiting for an X-ray delays life-saving action.
• Perform saline lavage of the trachea to dilute the acid — Saline lavage spreads the acid further and is not recommended.

⭐ Key point: Steroids are not recommended for aspiration. Monitor for hypoxia and ARDS.$x$, null),
(179, $x$A patient two hours post-laparoscopic nephrectomy reports shoulder tip pain. The nurse should recognize this as most likely related to:$x$, $x$Residual carbon dioxide gas used for pneumoperitoneum during laparoscopy, irritating the diaphragm$x$, $x$✅ Correct answer: Residual carbon dioxide gas used for pneumoperitoneum during laparoscopy, irritating the diaphragm
In LAPAROSCOPIC surgery, CARBON DIOXIDE gas is used to inflate the abdomen (PNEUMOPERITONEUM). After surgery, some residual gas remains and IRRITATES THE DIAPHRAGM. Pain from the diaphragm is "referred" to the SHOULDER TIP via the phrenic nerve (C3–C5). This is common and usually resolves within 24–72 hours.

❌ Why the other options are wrong:
• Myocardial infarction — MI would cause central chest pain, often with sweating and ECG changes.
• Renal colic — Renal colic causes loin-to-groin pain.
• Wound infection — Wound infection causes local pain, redness and discharge, usually after a few days.

⭐ Key point: Shoulder tip pain can be eased by early mobilisation, analgesia, and positioning; but always rule out other causes (e.g. bleeding).$x$, null),
(180, $x$A patient with acute kidney injury develops a serum potassium of 6.8mmol/L with peaked T-waves on ECG. The priority nursing action is to:$x$, $x$Alert the physician immediately and prepare for urgent treatment (e.g. calcium gluconate, insulin/dextrose)$x$, $x$✅ Correct answer: Alert the physician immediately and prepare for urgent treatment (e.g. calcium gluconate, insulin/dextrose)
A potassium of 6.8 mmol/L with PEAKED T WAVES is a MEDICAL EMERGENCY — it can lead to fatal arrhythmias. The priority is to ALERT THE PHYSICIAN IMMEDIATELY and PREPARE for URGENT TREATMENT: IV CALCIUM GLUCONATE (stabilises the heart), INSULIN with DEXTROSE and salbutamol (move potassium into cells), and measures to remove potassium (binders, dialysis). Start continuous ECG monitoring.

❌ Why the other options are wrong:
• Administer a potassium supplement — Potassium supplements would worsen hyperkalaemia.
• Encourage the patient to eat a banana — Bananas are high in potassium.
• Wait for the next scheduled blood draw to confirm — Waiting for the next blood test delays emergency treatment.

⭐ Key point: Stop all potassium-containing fluids and drugs that raise potassium (e.g. ACE inhibitors, spironolactone).$x$, null),
(181, $x$A patient develops fever, tachycardia, tachypnoea, and hypotension not responding to an initial fluid bolus, with a known urinary tract infection. This presentation is most consistent with:$x$, $x$Septic shock$x$, $x$✅ Correct answer: Septic shock
SEPTIC SHOCK is sepsis with circulatory failure: infection (UTI) causing FEVER, TACHYCARDIA, TACHYPNOEA and HYPOTENSION that does NOT RESPOND to an initial fluid bolus. It requires immediate antibiotics, further fluids, vasopressors (noradrenaline), and source control.

❌ Why the other options are wrong:
• Cardiogenic shock — Cardiogenic shock is caused by heart failure, not infection.
• Simple dehydration — Simple dehydration responds to fluids and doesn't cause fever.
• Anxiety attack — An anxiety attack doesn't cause hypotension and fever.

⭐ Key point: Sepsis Six: oxygen, cultures, antibiotics, fluids, lactate, urine output — within 1 hour.$x$, null),
(182, $x$A patient with sedative-hypnotic (e.g., barbiturate or benzodiazepine) overdose typically presents with which combination of findings?$x$, $x$CNS depression, respiratory depression, and hypotension, often with normal or slightly constricted pupils$x$, $x$✅ Correct answer: CNS depression, respiratory depression, and hypotension, often with normal or slightly constricted pupils
SEDATIVE-HYPNOTIC overdose (e.g. barbiturates, benzodiazepines) depresses the brain, causing: CNS DEPRESSION (drowsiness to coma), RESPIRATORY DEPRESSION (slow, shallow breathing), HYPOTENSION, and hypothermia. Pupils are usually NORMAL or slightly CONSTRICTED.

❌ Why the other options are wrong:
• Hypertension and tachyarrhythmia — Hypertension and tachyarrhythmia suggest stimulant toxicity.
• Excessive salivation and muscle fasciculations — Excess salivation and fasciculations suggest cholinergic toxicity (organophosphates).
• Agitation, hyperthermia, and dilated pupils — Agitation, hyperthermia and dilated pupils suggest sympathomimetic toxicity.

⭐ Key point: Flumazenil can reverse benzodiazepines, but may cause seizures — use with caution.$x$, null),
(183, $x$A patient's chest X-ray shows a 'ground glass' appearance bilaterally with worsening hypoxaemia following a recent large-volume blood transfusion. The nurse should consider:$x$, $x$Transfusion-Related Acute Lung Injury (TRALI), a serious transfusion complication$x$, $x$✅ Correct answer: Transfusion-Related Acute Lung Injury (TRALI), a serious transfusion complication
TRANSFUSION-RELATED ACUTE LUNG INJURY (TRALI) occurs within 6 hours of transfusion. Donor antibodies trigger inflammation in the lung capillaries, causing them to leak. Features: BILATERAL "GROUND-GLASS" infiltrates, WORSENING HYPOXAEMIA, fever, and hypotension. It is not caused by volume overload.

❌ Why the other options are wrong:
• No further evaluation necessary — It requires further evaluation.
• Simple volume overload with no other cause needed — Volume overload (TACO) causes hypertension and raised JVP and responds to diuretics.
• Normal expected finding after transfusion — It is not a normal finding.

⭐ Key point: Stop the transfusion, provide oxygen and respiratory support, and report to the blood bank.$x$, null),
(184, $x$A patient on long-term diuretic therapy develops muscle weakness, cramping, and an irregular pulse. The nurse should suspect an electrolyte disturbance, most likely:$x$, $x$Hypokalaemia$x$, $x$✅ Correct answer: Hypokalaemia
Long-term DIURETICS such as FUROSEMIDE (loop) and thiazides make the kidneys excrete more sodium and water, and with them, POTASSIUM. This causes HYPOKALAEMIA (potassium below 3.5 mmol/L). Low potassium affects muscles and nerves: MUSCLE WEAKNESS, CRAMPING, fatigue, constipation (gut muscle), and the heart: an IRREGULAR PULSE (ectopic beats, arrhythmias), with ECG changes (flat T waves, U waves, ST depression, long QT). It also increases the risk of digoxin toxicity.

❌ Why the other options are wrong:
• Hypernatraemia — Hypernatraemia causes thirst, confusion and seizures; diuretics more often cause LOW sodium.
• Hypercalcaemia — Hypercalcaemia causes thirst, polyuria, constipation and confusion (thiazides can raise calcium slightly, but loop diuretics lower it).
• Hyperglycaemia — Hyperglycaemia is not an electrolyte disturbance.

⭐ Key point: Monitor potassium regularly in patients on diuretics; consider oral potassium supplements or a potassium-sparing diuretic (e.g. spironolactone), and correct magnesium too.$x$, null),
(185, $x$A patient with suspected PE has a low Wells score. Which test is the appropriate next step?$x$, $x$D-dimer testing to help rule out PE$x$, $x$✅ Correct answer: D-dimer testing to help rule out PE
For suspected PE with a LOW WELLS SCORE (low probability), the next step is a D-DIMER test. A NEGATIVE D-dimer effectively RULES OUT PE without imaging. If positive, CTPA is done.

❌ Why the other options are wrong:
• Pulmonary angiography — Pulmonary angiography is invasive and rarely used.
• V/Q scan only — V/Q scan is used when CTPA is contraindicated.
• Immediate CT pulmonary angiography regardless of score — Immediate CTPA for all low-risk patients exposes many to unnecessary radiation and contrast.

⭐ Key point: D-dimer is sensitive but not specific — it can be raised in many conditions (surgery, infection, pregnancy).$x$, null),
(186, $x$A patient in cardiogenic shock with low cardiac output and high SVR would most benefit from an agent that:$x$, $x$Increases contractility and reduces afterload, such as dobutamine$x$, $x$✅ Correct answer: Increases contractility and reduces afterload, such as dobutamine
In CARDIOGENIC SHOCK, the heart pumps weakly (LOW CARDIAC OUTPUT). The body tries to keep BP up by constricting vessels (HIGH SVR), but this extra resistance (afterload) makes it even harder for the weak heart to pump. The ideal drug INCREASES CONTRACTILITY (stronger heartbeat) and REDUCES AFTERLOAD (opens vessels slightly) — an "inodilator" such as DOBUTAMINE (β1 stimulation for contractility, mild β2 vasodilation) or milrinone. If BP is very low, noradrenaline may be added to maintain perfusion pressure.

❌ Why the other options are wrong:
• Decreases contractility — Decreasing contractility (e.g. beta-blockers) would worsen cardiac output.
• Further increases SVR/afterload, such as phenylephrine — Phenylephrine increases SVR/afterload, which further reduces cardiac output.
• Causes pure vasoconstriction without inotropic support — Pure vasoconstriction without inotropic support increases the heart's workload and worsens output.

⭐ Key point: Treat the cause (e.g. urgent coronary revascularisation in MI). Mechanical support (IABP, Impella, ECMO) may be needed if drugs fail.$x$, null),
(187, $x$A patient presents with agitation, dilated pupils, tachycardia, hypertension, hyperthermia, and diaphoresis after suspected cocaine or amphetamine use. Which toxidrome is this?$x$, $x$Sympathomimetic toxidrome$x$, $x$✅ Correct answer: Sympathomimetic toxidrome
A TOXIDROME is a group of signs typical of a type of poisoning. The SYMPATHOMIMETIC toxidrome is caused by drugs that stimulate the sympathetic ("fight or flight") nervous system — COCAINE, AMPHETAMINES (including methamphetamine, MDMA/ecstasy) and some others. Features: AGITATION, anxiety, paranoia, DILATED PUPILS (mydriasis), TACHYCARDIA, HYPERTENSION, HYPERTHERMIA, and SWEATING (diaphoresis). Complications: seizures, arrhythmias, MI, stroke and rhabdomyolysis.

❌ Why the other options are wrong:
• Opioid toxidrome — Opioid toxidrome: pinpoint pupils, drowsiness and respiratory depression.
• Anticholinergic toxidrome — Anticholinergic toxidrome: also dilated pupils, tachycardia and hyperthermia — but the skin is DRY and flushed (no sweating), with urinary retention and absent bowel sounds.
• Cholinergic toxidrome — Cholinergic toxidrome: small pupils, salivation, sweating, bradycardia, diarrhoea and bronchorrhoea (e.g. organophosphates).

⭐ Key point: The key difference between sympathomimetic and anticholinergic toxidromes is SWEATING (wet skin = sympathomimetic, dry skin = anticholinergic). Treat with benzodiazepines, cooling and supportive care.$x$, null),
(188, $x$A patient develops signs of sepsis with an unknown source. Blood cultures are drawn from two different sites before starting antibiotics. This practice is done primarily to:$x$, $x$Improve the diagnostic yield and help distinguish true bacteraemia from contamination$x$, $x$✅ Correct answer: Improve the diagnostic yield and help distinguish true bacteraemia from contamination
Taking BLOOD CULTURES from TWO DIFFERENT SITES before antibiotics IMPROVES the chance of DETECTING the organism (higher yield) and helps DISTINGUISH TRUE BACTERAEMIA (organism grows in both sets) from CONTAMINATION (skin organism grows in only one set).

❌ Why the other options are wrong:
• Save laboratory costs — It doesn't save costs.
• Reduce patient discomfort — It doesn't reduce discomfort.
• Delay treatment unnecessarily — It shouldn't delay antibiotics significantly.

⭐ Key point: Use aseptic technique and fill bottles with the correct blood volume.$x$, null),
(189, $x$A patient post-PE thrombolysis develops a sudden severe headache and decreased level of consciousness. The nurse should suspect:$x$, $x$Intracranial hemorrhage$x$, $x$✅ Correct answer: Intracranial hemorrhage
THROMBOLYSIS dissolves clots everywhere, so the most feared complication is BLEEDING — especially INTRACRANIAL HAEMORRHAGE. A SUDDEN SEVERE HEADACHE with DECREASED CONSCIOUSNESS after thrombolysis strongly suggests brain bleeding. Stop the thrombolytic, call for urgent help, and arrange an urgent CT head.

❌ Why the other options are wrong:
• An expected medication side effect requiring no action — It is not an expected side effect.
• Hypoglycemia — Hypoglycaemia doesn't usually cause a sudden severe headache.
• A migraine caused by stress — A migraine is not likely after thrombolysis.

⭐ Key point: Monitor neurological status closely after thrombolysis.$x$, null),
(190, $x$A patient aspirates gastric contents during induction of anaesthesia. Which clinical picture is most typical in the following minutes?$x$, $x$Sudden dyspnoea, wheeze, tachycardia, and falling oxygen saturation$x$, $x$✅ Correct answer: Sudden dyspnoea, wheeze, tachycardia, and falling oxygen saturation
When acidic stomach contents are aspirated during induction, the lungs react within MINUTES: the airways go into spasm (WHEEZE, high airway pressures), the alveoli are irritated and begin to leak, and gas exchange is impaired. Typical picture: SUDDEN DYSPNOEA (or difficulty ventilating if intubated), WHEEZE, TACHYCARDIA, coughing, and a FALLING OXYGEN SATURATION. Over the next hours, chest X-ray infiltrates and a chemical pneumonitis (possibly ARDS) develop.

❌ Why the other options are wrong:
• Isolated bradycardia with normal oxygen saturation — Isolated bradycardia with normal oxygen saturation does not fit aspiration.
• Gradual onset of unilateral leg swelling over several days — Gradual leg swelling over days suggests DVT.
• Painless jaundice developing over the next week — Painless jaundice developing over a week is unrelated to aspiration.

⭐ Key point: Immediate management: head-down and lateral, suction, secure the airway with a cuffed tube, suction the trachea, give 100% oxygen and support ventilation. Antibiotics are not routine unless infection develops.$x$, null),
(191, $x$A patient with severe insensible fluid losses from high fever who produces a small volume of urine with high specific gravity best demonstrates:$x$, $x$Appropriate physiological water conservation via ADH-mediated concentration of urine$x$, $x$✅ Correct answer: Appropriate physiological water conservation via ADH-mediated concentration of urine
With HIGH FEVER, the body loses fluid through sweating and breathing (insensible losses). The body responds by releasing ADH, which makes the kidneys CONSERVE WATER, producing a SMALL VOLUME of CONCENTRATED URINE (high specific gravity). This is an APPROPRIATE PHYSIOLOGICAL response.

❌ Why the other options are wrong:
• Diabetes insipidus — Diabetes insipidus causes large volumes of dilute urine.
• Acute tubular necrosis — ATN causes dilute urine.
• A state of overhydration — Overhydration causes large volumes of dilute urine.

⭐ Key point: Replace insensible losses in febrile patients.$x$, null),
(192, $x$A patient with acute hepatic failure requires monitoring for coagulopathy primarily because:$x$, $x$The liver synthesises most clotting factors, so failure impairs coagulation and increases bleeding risk$x$, $x$✅ Correct answer: The liver synthesises most clotting factors, so failure impairs coagulation and increases bleeding risk
The LIVER makes most CLOTTING FACTORS (including II, V, VII, IX, X, fibrinogen). In acute hepatic failure, production falls, causing COAGULOPATHY (raised INR) and BLEEDING RISK.

❌ Why the other options are wrong:
• The liver has no role in clotting factor production — The liver has a major role in clotting.
• Coagulopathy never occurs in liver disease — Coagulopathy is common in liver disease.
• Only platelets are affected, never clotting factors — Both clotting factors and platelets can be affected.

⭐ Key point: INR is a key marker of liver synthetic function.$x$, null),
(193, $x$A patient receiving a noradrenaline infusion via a peripheral IV develops swelling, pain, and blanching at the insertion site. The nurse should suspect:$x$, $x$Extravasation, requiring the infusion to be stopped, the physician notified, and antidote/local treatment considered per protocol$x$, $x$✅ Correct answer: Extravasation, requiring the infusion to be stopped, the physician notified, and antidote/local treatment considered per protocol
NORADRENALINE is a powerful vasoconstrictor. If it EXTRAVASATES (leaks into tissue), it causes SWELLING, PAIN, and BLANCHING, and can lead to tissue necrosis. STOP the infusion, notify the physician, and consider the antidote (PHENTOLAMINE infiltration) and local treatment per protocol.

❌ Why the other options are wrong:
• Normal, expected finding requiring no action — It's not a normal finding.
• An allergic reaction requiring more noradrenaline — It's not an allergic reaction; more noradrenaline would worsen it.
• Simply that the IV needs a faster flow rate — A faster rate would worsen extravasation.

⭐ Key point: Give noradrenaline through a central line where possible.$x$, null),
(194, $x$A patient with long-standing type 1 diabetes develops recurrent severe hypoglycemia with reduced awareness of warning symptoms. Which pathophysiologic change most likely underlies this 'hypoglycemia unawareness'?$x$, $x$Impaired counter-regulatory glucagon and epinephrine responses from recurrent hypoglycemic episodes blunting the autonomic warning response$x$, $x$✅ Correct answer: Impaired counter-regulatory glucagon and epinephrine responses from recurrent hypoglycemic episodes blunting the autonomic warning response
In long-standing type 1 diabetes, RECURRENT HYPOGLYCAEMIA blunts the COUNTER-REGULATORY responses: the GLUCAGON response is lost, and the ADRENALINE (epinephrine) response is reduced. Without adrenaline, the usual warning symptoms (sweating, tremor, palpitations) don't appear — HYPOGLYCAEMIA UNAWARENESS.

❌ Why the other options are wrong:
• Increased cortisol secretion masking symptoms — Increased cortisol doesn't mask symptoms.
• Increased glucagon secretion causing symptom suppression — Glucagon secretion is reduced, not increased.
• Excess residual insulin secretion from the pancreas — Type 1 diabetes has little residual insulin secretion.

⭐ Key point: Strictly avoiding hypoglycaemia for 2–3 weeks can restore awareness.$x$, null),
(195, $x$A patient with chronic lithium therapy presents with coarse tremor, ataxia, confusion, and hyperreflexia. Serum lithium is significantly elevated. What is the definitive treatment for severe lithium toxicity?$x$, $x$Haemodialysis$x$, $x$✅ Correct answer: Haemodialysis
LITHIUM is used for bipolar disorder and has a NARROW therapeutic range (about 0.4–1.0 mmol/L). Toxicity (often above 1.5–2.0 mmol/L) is often triggered by dehydration, kidney impairment, or drugs that reduce lithium excretion (NSAIDs, ACE inhibitors, thiazide diuretics). Features: coarse TREMOR, ATAXIA, CONFUSION, HYPERREFLEXIA, seizures, and arrhythmias. Lithium is a small, water-soluble ion that is not bound to proteins, so it is very efficiently removed by HAEMODIALYSIS — the DEFINITIVE treatment for severe toxicity (e.g. very high levels, neurological signs, or kidney failure).

❌ Why the other options are wrong:
• Flumazenil — Flumazenil reverses benzodiazepines, not lithium.
• N-acetylcysteine — N-acetylcysteine treats paracetamol overdose.
• Activated charcoal — Activated charcoal does NOT bind lithium (or other metals and ions).

⭐ Key point: In milder toxicity, stop lithium and give IV fluids (0.9% saline) to help the kidneys excrete it. Levels may rebound after dialysis, so recheck.$x$, null),
(196, $x$A patient with decompensated heart failure and hypotension (cardiogenic shock physiology) may benefit from which inotropic agent to improve contractility and cardiac output?$x$, $x$Dobutamine$x$, $x$✅ Correct answer: Dobutamine
In DECOMPENSATED HEART FAILURE with HYPOTENSION (cardiogenic shock physiology), the heart muscle is too weak to pump enough blood. An INOTROPE increases the force of contraction. DOBUTAMINE is a β1-agonist inotrope that INCREASES CONTRACTILITY and CARDIAC OUTPUT, improving organ perfusion. It is often combined with noradrenaline if BP is very low (because dobutamine can cause some vasodilation).

❌ Why the other options are wrong:
• Verapamil — Verapamil (a calcium channel blocker) REDUCES contractility and heart rate — dangerous in heart failure with low BP.
• Metoprolol — Metoprolol (a beta-blocker) REDUCES contractility — harmful in acute cardiogenic shock (although useful in stable chronic heart failure).
• Furosemide — Furosemide (a diuretic) removes fluid but does NOT improve contractility, and can lower BP further.

⭐ Key point: Monitor for tachycardia, arrhythmias and hypotension during dobutamine infusion. Milrinone is an alternative inotrope.$x$, null),
(197, $x$A patient's blood culture grows a common skin organism (coagulase-negative Staphylococcus) from only one of two culture sets drawn. The nurse understands this pattern often suggests:$x$, $x$Possible contamination, requiring clinical correlation rather than automatic treatment$x$, $x$✅ Correct answer: Possible contamination, requiring clinical correlation rather than automatic treatment
COAGULASE-NEGATIVE STAPHYLOCOCCUS is a common SKIN organism. When it grows in only ONE of TWO blood culture sets, it often represents CONTAMINATION. The result needs CLINICAL CORRELATION (e.g. presence of a central line, prosthetic material, signs of infection).

❌ Why the other options are wrong:
• Always indicates central line infection — It doesn't always indicate line infection.
• A laboratory error with no clinical relevance — It's not necessarily a lab error.
• Definite true bacteraemia requiring immediate aggressive treatment with no further consideration — It's not definite bacteraemia.

⭐ Key point: Proper skin disinfection reduces contamination.$x$, null),
(198, $x$A patient with COPD receiving oxygen therapy develops worsening drowsiness and a rising respiratory rate that then slows dramatically. The nurse should suspect:$x$, $x$CO2 narcosis from excessive oxygen therapy suppressing hypoxic respiratory drive$x$, $x$✅ Correct answer: CO2 narcosis from excessive oxygen therapy suppressing hypoxic respiratory drive
In some patients with COPD, giving too much OXYGEN can raise the CO2 level: high oxygen worsens V/Q mismatch (releasing hypoxic vasoconstriction), reduces CO2 carriage by haemoglobin (Haldane effect), and in some patients reduces respiratory drive. The rising CO2 causes CO2 NARCOSIS: DROWSINESS, confusion, and eventually SLOW breathing and respiratory failure.

❌ Why the other options are wrong:
• Normal sleep pattern — It is not normal sleep.
• A simple anxiety reaction — It is not anxiety.
• Improved oxygenation with no concern — It is a dangerous situation.

⭐ Key point: Target SpO2 88–92% in COPD patients at risk of CO2 retention.$x$, null),
(199, $x$A patient with a stroke presents with contralateral homonymous hemianopia and no motor weakness. Which cerebral artery territory is most likely affected?$x$, $x$Posterior cerebral artery$x$, $x$✅ Correct answer: Posterior cerebral artery
The POSTERIOR CEREBRAL ARTERY (PCA) supplies the OCCIPITAL LOBE, which contains the primary VISUAL CORTEX. A PCA stroke damages vision from the opposite side, causing CONTRALATERAL HOMONYMOUS HEMIANOPIA — loss of the same half of the visual field in BOTH eyes (e.g. a right PCA stroke causes loss of the left half of vision in each eye). Because the PCA does not supply the main motor areas, there is usually NO MOTOR WEAKNESS. Macular sparing is common.

❌ Why the other options are wrong:
• Anterior cerebral artery — The anterior cerebral artery supplies the medial frontal and parietal lobes — strokes cause leg weakness more than arm weakness.
• Anterior spinal artery — The anterior spinal artery supplies the front of the spinal cord — blockage causes paralysis and loss of pain/temperature below the lesion.
• Middle cerebral artery — The middle cerebral artery supplies the lateral cortex — strokes cause face and arm weakness, sensory loss, and aphasia or neglect (visual field loss may also occur, but with motor weakness).

⭐ Key point: Patients with hemianopia may bump into objects on the affected side — place the call bell and belongings on the unaffected side, and teach them to turn the head to scan.$x$, null),
(200, $x$A patient shivering on emergence from general anaesthesia most commonly has this symptom because of:$x$, $x$Perioperative hypothermia and altered thermoregulatory set point$x$, $x$✅ Correct answer: Perioperative hypothermia and altered thermoregulatory set point
General anaesthesia IMPAIRS THERMOREGULATION — it widens the temperature range the body tolerates and causes vasodilation, so heat moves from the core to the skin and is lost. Patients also lose heat in cold operating theatres, from exposed skin and open body cavities, and from cold IV fluids. This causes PERIOPERATIVE HYPOTHERMIA. On waking, the brain's normal temperature control returns and triggers SHIVERING to generate heat. Some anaesthetic drugs (e.g. volatile agents) can also cause shivering directly.

❌ Why the other options are wrong:
• Hypoglycaemia — Hypoglycaemia is not the usual cause of post-anaesthetic shivering.
• Anxiety — Anxiety may contribute but is not the main cause.
• Local anaesthetic toxicity — Local anaesthetic toxicity causes metallic taste, tinnitus, seizures and arrhythmias — not shivering.

⭐ Key point: Shivering greatly INCREASES OXYGEN CONSUMPTION and heart workload (dangerous in heart disease). Prevent and treat with active warming (forced-air blankets, warmed fluids), oxygen, and drugs such as pethidine if needed.$x$, null)
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
