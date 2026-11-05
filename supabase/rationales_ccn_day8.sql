-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 8 (200 questions)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$In volume-controlled ventilation (VC-CMV), which of the following is NOT set by the nurse or doctor but changes breath by breath with the patient's lung compliance and airway resistance?$x$, $x$Peak inspiratory pressure$x$, $x$✅ Correct answer: Peak inspiratory pressure
In VOLUME-CONTROLLED ventilation, the clinician SETS the tidal volume, the mandatory rate, the inspiratory flow rate (and pattern), PEEP and FiO2. The ventilator then pushes in that exact volume every breath, and the PRESSURE needed to do so is whatever the lungs demand. So the PEAK INSPIRATORY PRESSURE is NOT set — it changes breath by breath with the patient's lung COMPLIANCE (stiffness) and AIRWAY RESISTANCE. If the lungs become stiffer (e.g. ARDS, pneumothorax) or the airway narrower (e.g. secretions, bronchospasm, biting), the peak pressure rises. This is why the nurse must watch peak pressure and set the high-pressure alarm in volume modes.

❌ Why the other options are wrong:
• Mandatory respiratory rate — The mandatory respiratory rate is SET by the clinician; it is the minimum number of breaths the ventilator gives.
• Inspiratory flow rate — The inspiratory flow rate is SET in volume control (it determines how fast the volume is delivered).
• Tidal volume — Tidal volume is the main SET variable in volume control; it does not change from breath to breath.

⭐ Key point: Volume control: volume fixed, pressure varies — watch the PRESSURE. Pressure control: pressure fixed, volume varies — watch the exhaled TIDAL VOLUME.$x$, null),
(2, $x$A patient on pressure-controlled ventilation (inspiratory pressure 20 cmH₂O, PEEP 8) suddenly drops exhaled tidal volume from 450 mL to 280 mL. The settings are unchanged and the cuff is not leaking. The most likely cause is:$x$, $x$Reduced compliance or raised resistance (e.g. mucus plug, bronchospasm)$x$, $x$✅ Correct answer: Reduced compliance or raised resistance (e.g. mucus plug, bronchospasm)
In PRESSURE-CONTROLLED ventilation, the ventilator delivers a set PRESSURE, and the TIDAL VOLUME that results depends on the patient's lung COMPLIANCE and AIRWAY RESISTANCE. If the settings have not changed and there is no leak, a sudden FALL in exhaled tidal volume (from 450 to 280 mL) means the same pressure now moves less air. This happens when compliance has DECREASED (stiffer lungs, e.g. pneumothorax, worsening oedema, abdominal distension) or RESISTANCE has INCREASED (e.g. a MUCUS PLUG, BRONCHOSPASM, kinked or bitten tube). The nurse should assess the patient: suction, check breath sounds, check the tube for kinks or biting, and look for bronchospasm or pneumothorax.

❌ Why the other options are wrong:
• A trigger sensitivity set too high, causing auto-cycling — A trigger set too sensitive causes auto-cycling (extra breaths), not a smaller tidal volume with each breath.
• A fall in respiratory drive from increased sedation — Reduced respiratory drive from sedation does not reduce the volume of mandatory pressure-controlled breaths, because the ventilator still delivers the set pressure.
• Improved lung compliance as alveoli are recruited by PEEP — Improved compliance from recruitment would INCREASE the tidal volume for the same pressure, not reduce it.

⭐ Key point: In pressure modes, set a LOW tidal volume / low minute volume alarm — it is your warning that compliance or resistance has worsened.$x$, null),
(3, $x$Plateau pressure on a ventilated patient is obtained by:$x$, $x$An end-inspiratory hold of 0.5–1 s with the patient passive$x$, $x$✅ Correct answer: An end-inspiratory hold of 0.5–1 s with the patient passive
PLATEAU PRESSURE is the pressure in the ALVEOLI at the end of inspiration, when there is NO airflow. It is measured by doing an END-INSPIRATORY HOLD (pause) of about 0.5–1 second: the ventilator closes the valves at the end of the breath, so gas stops flowing, and the pressure due to airway resistance disappears. What remains is the pressure needed to keep the lungs stretched — the plateau pressure. The patient must be PASSIVE (not breathing against the ventilator), or the reading is inaccurate. A plateau pressure above 30 cmH2O increases the risk of lung injury (barotrauma, volutrauma).

❌ Why the other options are wrong:
• Reading the highest pressure reached during a normal breath — The highest pressure during a normal breath is the PEAK pressure, which includes the pressure needed to overcome airway resistance.
• Reading the airway pressure at the very start of inspiration — The pressure at the start of inspiration reflects PEEP (plus any auto-PEEP), not plateau pressure.
• An end-expiratory hold of 0.5–1 s with the patient passive — An END-EXPIRATORY hold measures TOTAL PEEP (set PEEP plus auto-PEEP), not plateau pressure.

⭐ Key point: Peak pressure = resistance + compliance; Plateau pressure = compliance (alveolar pressure). Keep plateau pressure at or below 30 cmH2O.$x$, null),
(4, $x$A ventilated patient has a peak airway pressure of 45 cmH₂O and a plateau pressure of 20 cmH₂O. The most likely problem is:$x$, $x$Increased airway resistance (bronchospasm, secretions, biting)$x$, $x$✅ Correct answer: Increased airway resistance (bronchospasm, secretions, biting)
PEAK PRESSURE reflects both airway RESISTANCE and lung COMPLIANCE. PLATEAU PRESSURE reflects only COMPLIANCE (alveolar pressure). The DIFFERENCE between them (peak minus plateau) is caused by AIRWAY RESISTANCE. Here, peak is 45 and plateau is 20, so the difference is 25 cmH2O — very high (normally under about 10). The plateau is normal, so the lungs themselves are not stiff. The problem is INCREASED AIRWAY RESISTANCE: BRONCHOSPASM, SECRETIONS or a mucus plug, a kinked tube, or the patient BITING the tube. Actions: check the tube, suction, give bronchodilators, and insert a bite block if needed.

❌ Why the other options are wrong:
• Decreased lung compliance (ARDS, pulmonary oedema, fibrosis) — Decreased compliance (ARDS, oedema, fibrosis) would raise BOTH peak and plateau pressures, keeping the difference normal.
• Endobronchial intubation into the right main bronchus — Right main bronchus intubation reduces compliance (all the volume goes into one lung), raising the plateau pressure as well.
• Tension pneumothorax with mediastinal shift — A tension pneumothorax reduces compliance and raises both pressures, and is accompanied by hypotension and absent breath sounds.

⭐ Key point: High peak + normal plateau = RESISTANCE problem (airway). High peak + high plateau = COMPLIANCE problem (lungs, chest wall, abdomen).$x$, null),
(5, $x$A ventilated patient has a tidal volume of 500 mL, a plateau pressure of 30 cmH₂O and a PEEP of 10 cmH₂O. Static lung compliance is:$x$, $x$25 mL/cmH₂O$x$, $x$✅ Correct answer: 25 mL/cmH₂O
STATIC COMPLIANCE measures how easily the lungs stretch. It is calculated as: Compliance = Tidal volume ÷ (Plateau pressure − PEEP). Here: 500 mL ÷ (30 − 10) cmH2O = 500 ÷ 20 = 25 mL/cmH2O. Normal static compliance in a ventilated adult is about 50–100 mL/cmH2O, so 25 means the lungs are STIFF (low compliance), as seen in ARDS, pulmonary oedema or fibrosis.

❌ Why the other options are wrong:
• 50 mL/cmH₂O — 50 mL/cmH2O would be obtained if you wrongly divided by 10 (forgetting to subtract PEEP correctly) — it does not match the numbers.
• 12.5 mL/cmH₂O — 12.5 mL/cmH2O would result from dividing 500 by 40 (plateau plus PEEP), which is the wrong formula.
• 16.7 mL/cmH₂O — 16.7 mL/cmH2O would result from dividing 500 by 30 (plateau alone, ignoring PEEP), which is the wrong formula.

⭐ Key point: Falling compliance over time suggests worsening lung disease, pneumothorax, or abdominal distension. Rising compliance suggests improvement or recruitment.$x$, null),
(6, $x$Driving pressure during lung-protective ventilation is calculated as, and should ideally be kept below:$x$, $x$Plateau pressure minus PEEP; below about 15 cmH₂O$x$, $x$✅ Correct answer: Plateau pressure minus PEEP; below about 15 cmH₂O
DRIVING PRESSURE is the pressure that actually stretches the lungs during each breath. It is calculated as PLATEAU PRESSURE MINUS PEEP. It reflects the tidal volume relative to the amount of open, functioning lung ("baby lung" in ARDS). Research shows that a driving pressure ABOVE ABOUT 15 cmH2O is linked to higher mortality in ARDS. Keeping driving pressure below 15 cmH2O, by reducing tidal volume or optimising PEEP, protects the lungs.

❌ Why the other options are wrong:
• Peak pressure minus PEEP; below about 30 cmH₂O — Peak minus PEEP includes airway resistance, so it does not reflect lung stretch. 30 cmH2O is the limit for PLATEAU pressure, not driving pressure.
• Plateau pressure minus PEEP; below about 30 cmH₂O — Plateau minus PEEP is the correct formula, but the target is below about 15, not 30 cmH2O.
• Peak pressure minus plateau pressure; below about 15 cmH₂O — Peak minus plateau reflects AIRWAY RESISTANCE, not driving pressure.

⭐ Key point: Lung-protective ventilation: tidal volume 4–8 mL/kg predicted body weight (start at 6), plateau pressure ≤30 cmH2O, driving pressure ≤15 cmH2O.$x$, null),
(7, $x$A man 170 cm tall who weighs 90 kg develops ARDS. Using predicted body weight (male PBW = 50 + 0.91 × [height in cm − 152.4]), his initial tidal volume at 6 mL/kg is closest to:$x$, $x$400 mL$x$, $x$✅ Correct answer: 400 mL
Lung size depends on HEIGHT and SEX, not on actual weight (fat does not make the lungs bigger). So tidal volume is calculated from PREDICTED BODY WEIGHT (PBW). For a male: PBW = 50 + 0.91 × (height in cm − 152.4). Here: 170 − 152.4 = 17.6; 0.91 × 17.6 = 16.0; 50 + 16.0 = 66 kg. Tidal volume at 6 mL/kg = 6 × 66 = 396 mL, which is closest to 400 mL.

❌ Why the other options are wrong:
• 330 mL — 330 mL would correspond to only 5 mL/kg of PBW — lower than the starting target.
• 540 mL — 540 mL is 6 mL/kg of his ACTUAL weight (90 kg), which would over-distend his lungs.
• 480 mL — 480 mL is about 7.3 mL/kg PBW — higher than the 6 mL/kg starting target.

⭐ Key point: For females: PBW = 45.5 + 0.91 × (height in cm − 152.4). Always measure height accurately; never use actual body weight for tidal volume.$x$, null),
(8, $x$Which ventilator waveform finding indicates air trapping (auto-PEEP)?$x$, $x$The expiratory flow does not return to zero before the next breath begins$x$, $x$✅ Correct answer: The expiratory flow does not return to zero before the next breath begins
AUTO-PEEP (intrinsic PEEP, air trapping) occurs when the patient does not have enough time to breathe out fully before the next breath begins. On the FLOW–TIME waveform, normal expiration shows flow returning to ZERO (the baseline) before the next breath. In air trapping, the EXPIRATORY FLOW DOES NOT RETURN TO ZERO — the next breath starts while air is still flowing out. This trapped air increases pressure in the alveoli, reduces venous return (causing hypotension) and increases the risk of barotrauma.

❌ Why the other options are wrong:
• The expiratory flow returns to zero and stays flat before the next breath — Expiratory flow returning to zero and staying flat is NORMAL — exhalation is complete.
• The inspiratory flow pattern is square (constant) in volume control — A square inspiratory flow pattern is a normal setting in volume control; it does not indicate air trapping.
• The pressure–time curve shows a flat plateau during an inspiratory pause — A flat plateau during an inspiratory pause is used to measure plateau pressure; it does not indicate air trapping.

⭐ Key point: Auto-PEEP is common in asthma and COPD. Measure it with an END-EXPIRATORY hold. Treat by lengthening expiratory time (lower rate, shorter inspiratory time) and treating bronchospasm.$x$, null),
(9, $x$A ventilated patient with severe asthma has rising auto-PEEP and falling blood pressure. The most effective ventilator change is to:$x$, $x$Lower the rate to lengthen expiration, accepting a higher PaCO₂$x$, $x$✅ Correct answer: Lower the rate to lengthen expiration, accepting a higher PaCO₂
In severe asthma, the airways are narrow, so air takes a long time to get out. If the ventilator gives the next breath too soon, air gets TRAPPED (auto-PEEP), which raises chest pressure, reduces blood return to the heart and causes HYPOTENSION. The most effective change is to LOWER THE RESPIRATORY RATE, which gives more time for EXPIRATION (longer expiratory time, e.g. I:E of 1:4 or 1:5). This may cause a higher PaCO2, which is ACCEPTED (PERMISSIVE HYPERCAPNIA), as long as the pH stays safe (above about 7.2).

❌ Why the other options are wrong:
• Raise the rate to wash out the retained CO₂ more quickly — Increasing the rate shortens expiration, worsening air trapping and hypotension.
• Lengthen inspiration by changing I:E from 1:3 to 1:1 — Lengthening inspiration (I:E 1:1) SHORTENS expiration, worsening air trapping.
• Raise the tidal volume to improve alveolar ventilation — Increasing tidal volume adds more air that cannot escape, worsening air trapping.

⭐ Key point: If BP falls severely from air trapping, briefly DISCONNECT the ventilator to let the trapped air out (and press on the chest if needed). Also treat bronchospasm aggressively.$x$, null),
(10, $x$A ventilated patient suddenly triggers the high-pressure alarm. SpO₂ is falling, BP is 70/40 mmHg, breath sounds are absent on the left, and the trachea is deviated to the right. The immediate action is:$x$, $x$Needle decompression of the left chest, followed by a chest drain$x$, $x$✅ Correct answer: Needle decompression of the left chest, followed by a chest drain
These signs show a TENSION PNEUMOTHORAX on the LEFT: high airway pressure, falling SpO2, severe HYPOTENSION (70/40), ABSENT breath sounds on the left, and the TRACHEA pushed to the RIGHT (away from the affected side). Positive-pressure ventilation forces air into the pleural space with every breath, and the pressure builds rapidly, compressing the lung and heart and stopping blood return. This is immediately life-threatening. The treatment is IMMEDIATE NEEDLE DECOMPRESSION of the LEFT chest (2nd intercostal space mid-clavicular line, or 4th–5th intercostal space anterior to mid-axillary line), followed by a CHEST DRAIN. Do not wait for an X-ray — it is a clinical diagnosis.

❌ Why the other options are wrong:
• Disconnect, bag with 100% oxygen, and wait for an urgent chest X-ray before acting — Waiting for an X-ray wastes time; the patient may arrest.
• Pass a suction catheter to clear a possible tube blockage — A blocked tube causes high pressures, but would not cause tracheal deviation and unilateral absent breath sounds.
• Withdraw the endotracheal tube by 2 cm — Withdrawing the tube treats right main bronchus intubation (which reduces breath sounds on the LEFT), but it would not explain tracheal deviation and shock.

⭐ Key point: Tension pneumothorax: trachea deviated AWAY from the affected side, absent breath sounds, hyper-resonance, distended neck veins, hypotension.$x$, null),
(11, $x$The low-pressure and low exhaled-minute-volume alarms sound together, and the patient can be heard making a 'gurgling' sound and vocalising around the tube. The most likely cause is:$x$, $x$A cuff leak or a tube that has slipped up above the cords$x$, $x$✅ Correct answer: A cuff leak or a tube that has slipped up above the cords
When the LOW PRESSURE and LOW EXHALED MINUTE VOLUME alarms sound together, gas is ESCAPING from the system — the ventilator cannot build up pressure, and less air returns. If the patient is making a GURGLING sound and VOCALISING (talking or making sounds), air is passing through the vocal cords. This means the tube's cuff is LEAKING (deflated or damaged), or the TUBE HAS SLIPPED UP so the cuff sits at or above the vocal cords. This is dangerous: the airway is not secure and the tube may come out. Check the tube position at the teeth/lips, check the cuff pressure, call for help, and be ready to re-secure or re-intubate.

❌ Why the other options are wrong:
• The patient biting down on the tube during agitation — Biting the tube causes HIGH pressure alarms, not low pressure.
• Severe bronchospasm with reduced exhaled volumes — Bronchospasm causes HIGH peak pressures.
• A mucus plug partly blocking the endotracheal tube — A mucus plug causes HIGH pressure alarms.

⭐ Key point: A ventilated patient should never be able to talk or vocalise; if they do, suspect a cuff leak or a displaced tube.$x$, null),
(12, $x$The recommended endotracheal tube cuff pressure for an adult is:$x$, $x$20–30 cmH₂O$x$, $x$✅ Correct answer: 20–30 cmH₂O
The ENDOTRACHEAL TUBE CUFF seals the trachea to prevent air leaks and stop secretions from entering the lungs. The recommended pressure is 20–30 cmH2O. Below 20 cmH2O, secretions can leak past the cuff into the lungs (micro-aspiration), increasing the risk of ventilator-associated pneumonia. Above 30 cmH2O, the cuff squeezes the tracheal lining and blocks its blood supply (the capillary perfusion pressure is about 30 cmH2O), which can cause ulceration, tracheal stenosis or tracheo-oesophageal fistula.

❌ Why the other options are wrong:
• 25–35 mmHg — 25–35 mmHg is too high (about 34–48 cmH2O) and risks tracheal damage.
• 10–15 cmH₂O — 10–15 cmH2O is too low and risks aspiration.
• 30–40 cmH₂O — 30–40 cmH2O is too high and risks tracheal ischaemia.

⭐ Key point: Check cuff pressure with a manometer at least every 8 hours (or per policy), and after repositioning or moving the tube. Never estimate it by squeezing the pilot balloon.$x$, null),
(13, $x$The main reason PEEP improves oxygenation in ARDS is that it:$x$, $x$It keeps alveoli open at end-expiration, raising FRC and reducing shunt$x$, $x$✅ Correct answer: It keeps alveoli open at end-expiration, raising FRC and reducing shunt
In ARDS, many alveoli COLLAPSE at the end of each breath (because the lungs are inflamed and surfactant is damaged). Blood passes these collapsed alveoli without picking up oxygen — this is called SHUNT, the main cause of hypoxia in ARDS. PEEP (positive end-expiratory pressure) keeps pressure in the lungs at the end of expiration, so it KEEPS ALVEOLI OPEN, increases the FUNCTIONAL RESIDUAL CAPACITY (FRC — the volume of air in the lungs at the end of expiration), and REDUCES SHUNT, improving oxygenation. It also prevents the repeated opening and closing of alveoli that injures the lung (atelectrauma).

❌ Why the other options are wrong:
• It raises minute ventilation, so more CO₂ is cleared each breath — PEEP does not mainly increase minute ventilation or CO2 clearance; CO2 is controlled by rate and tidal volume.
• It reduces the inspiratory effort needed to trigger each breath — PEEP may help reduce the work of breathing in some patients (e.g. with auto-PEEP), but this is not why it improves oxygenation in ARDS.
• It lowers intrathoracic pressure, improving venous return — PEEP INCREASES intrathoracic pressure, which can REDUCE venous return (and BP).

⭐ Key point: Oxygenation is controlled mainly by FiO2 and PEEP (mean airway pressure). Ventilation (CO2) is controlled by rate and tidal volume.$x$, null),
(14, $x$A ventilated patient has PaO₂ 55 mmHg on FiO₂ 0.6 and PEEP 8 cmH₂O, with PaCO₂ 40 mmHg and pH 7.40. Which change will most directly improve oxygenation?$x$, $x$Increase the PEEP stepwise (with FiO₂ as needed)$x$, $x$✅ Correct answer: Increase the PEEP stepwise (with FiO₂ as needed)
This patient has HYPOXAEMIA (PaO2 55 mmHg on FiO2 0.6) but NORMAL CO2 and pH. So the problem is OXYGENATION, not ventilation. Oxygenation is improved by increasing PEEP (to recruit collapsed alveoli and reduce shunt) and/or FiO2. INCREASING PEEP STEPWISE (with FiO2 as needed, e.g. following the ARDSnet PEEP/FiO2 table) will most directly improve oxygenation. Watch BP (PEEP can reduce venous return) and plateau pressure.

❌ Why the other options are wrong:
• Shorten the inspiratory time — Shortening inspiratory time REDUCES mean airway pressure and may worsen oxygenation.
• Increase the respiratory rate — Increasing the respiratory rate mainly lowers CO2; the CO2 is already normal here.
• Increase the tidal volume to 10 mL/kg — 10 mL/kg tidal volume causes lung injury (volutrauma) in ARDS. Lung-protective ventilation uses about 6 mL/kg.

⭐ Key point: To raise PaO2: increase FiO2 and PEEP (mean airway pressure), consider prone positioning in moderate–severe ARDS. To lower PaCO2: increase rate or tidal volume.$x$, null),
(15, $x$A ventilated patient has a PaCO₂ of 60 mmHg at a set rate of 14 breaths/min. Keeping the tidal volume the same, what rate is needed to bring PaCO₂ to 40 mmHg?$x$, $x$21 breaths/min$x$, $x$✅ Correct answer: 21 breaths/min
PaCO2 is inversely proportional to ALVEOLAR VENTILATION. If tidal volume stays the same, PaCO2 × respiratory rate stays roughly constant. Formula: New rate = (Current PaCO2 × Current rate) ÷ Desired PaCO2. Here: (60 × 14) ÷ 40 = 840 ÷ 40 = 21 breaths/min.

❌ Why the other options are wrong:
• 18 breaths/min — 18 breaths/min is not enough; it would give a PaCO2 of about 47 mmHg (840 ÷ 18).
• 28 breaths/min — 28 breaths/min is too much; it would give a PaCO2 of 30 mmHg (840 ÷ 28) — hyperventilation.
• 9 breaths/min — 9 breaths/min would RAISE the PaCO2 to about 93 mmHg (840 ÷ 9).

⭐ Key point: When increasing the rate, watch for air trapping (auto-PEEP), especially in patients with asthma or COPD.$x$, null),
(16, $x$Which mode delivers a set number of mandatory breaths synchronised to the patient's effort, while allowing spontaneous breaths in between at the patient's own tidal volume (usually pressure-supported)?$x$, $x$Synchronised intermittent mandatory ventilation (SIMV)$x$, $x$✅ Correct answer: Synchronised intermittent mandatory ventilation (SIMV)
SIMV (Synchronised Intermittent Mandatory Ventilation) delivers a SET NUMBER of MANDATORY breaths (volume or pressure controlled), timed (SYNCHRONISED) with the patient's own breathing efforts so they do not "fight" the ventilator. Between these mandatory breaths, the patient can take SPONTANEOUS breaths at their OWN tidal volume, usually helped by pressure support.

❌ Why the other options are wrong:
• Pressure support ventilation (PSV) — Pressure support ventilation (PSV) gives NO mandatory breaths; every breath is started by the patient and supported by a set pressure.
• Assist-control ventilation (A/C) — In Assist-control (A/C), EVERY breath the patient triggers is a FULL mandatory breath (same set volume or pressure); there are no "spontaneous" breaths at the patient's own volume.
• Continuous positive airway pressure (CPAP) — CPAP gives continuous pressure only, with no mandatory breaths; all breaths are spontaneous.

⭐ Key point: SIMV was used for weaning, but evidence shows that PSV and spontaneous breathing trials are more effective for weaning.$x$, null),
(17, $x$In pressure support ventilation (PSV), the ventilator ends inspiration (cycles to expiration) when:$x$, $x$Inspiratory flow falls to a set fraction of peak flow (e.g. 25%)$x$, $x$✅ Correct answer: Inspiratory flow falls to a set fraction of peak flow (e.g. 25%)
PRESSURE SUPPORT VENTILATION (PSV) is a spontaneous mode: the patient triggers each breath, and the ventilator supports it with a set pressure. Inspiration ends (cycles to expiration) when the patient's INSPIRATORY FLOW falls to a set FRACTION of the PEAK FLOW (commonly 25%, called the "expiratory trigger sensitivity" or "flow cycle"). This lets the patient control the length and size of each breath.

❌ Why the other options are wrong:
• The preset tidal volume for that breath has been delivered — Delivery of a preset tidal volume ends a VOLUME-CONTROLLED breath, not a PSV breath.
• Airway pressure rises to reach the high-pressure alarm limit — Reaching the high-pressure alarm limit ends a breath for SAFETY reasons, but it is not the normal cycling mechanism in PSV.
• The preset inspiratory time for that breath has elapsed — A preset inspiratory time ends a PRESSURE-CONTROLLED breath, not a PSV breath.

⭐ Key point: In COPD, a higher flow cycle (e.g. 40–50%) shortens inspiration and gives more time to breathe out.$x$, null),
(18, $x$The ventilator is delivering breaths without any patient effort (auto-triggering). The most common cause is:$x$, $x$A circuit leak or water in the tubing with a very sensitive trigger$x$, $x$✅ Correct answer: A circuit leak or water in the tubing with a very sensitive trigger
AUTO-TRIGGERING happens when the ventilator "thinks" the patient is trying to breathe, but they are not, so it delivers extra breaths. The most common causes are: a CIRCUIT LEAK (e.g. loose connections, cuff leak, chest drain air leak) or WATER (condensation) moving in the tubing, especially when the TRIGGER is set TOO SENSITIVE. Cardiac oscillations (heartbeats) can also cause auto-triggering. This can cause hyperventilation, respiratory alkalosis and air trapping.

❌ Why the other options are wrong:
• A trigger set too insensitive, so efforts are missed — A trigger set too INSENSITIVE causes MISSED patient efforts, not extra breaths.
• Deep sedation causing the ventilator to compensate — Deep sedation reduces the patient's own breathing; the ventilator does not "compensate" by auto-triggering.
• Severe metabolic acidosis driving genuine extra breaths — Metabolic acidosis causes GENUINE extra breathing efforts by the patient, not auto-triggering.

⭐ Key point: Fix auto-triggering: check and fix leaks, drain water from the circuit, and make the trigger less sensitive.$x$, null),
(19, $x$During a spontaneous breathing trial a patient breathes at 30 breaths/min with a tidal volume of 250 mL. The rapid shallow breathing index (RSBI) and its interpretation are:$x$, $x$120 — weaning is likely to fail$x$, $x$✅ Correct answer: 120 — weaning is likely to fail
The RAPID SHALLOW BREATHING INDEX (RSBI) = Respiratory rate (breaths/min) ÷ Tidal volume (in LITRES). Here: 30 ÷ 0.25 = 120. An RSBI ABOVE 105 suggests that WEANING IS LIKELY TO FAIL, because the patient is breathing fast and shallow — a sign of respiratory muscle fatigue.

❌ Why the other options are wrong:
• 7.5 — weaning is likely to succeed — 7.5 is a wrong calculation (tidal volume not converted to litres properly).
• 83 — weaning is likely to succeed — 83 is a wrong calculation and would suggest likely success.
• 120 — weaning is likely to succeed — 120 is the correct calculation, but it indicates likely FAILURE, not success.

⭐ Key point: RSBI below 105 suggests weaning is more likely to succeed. RSBI is only one guide — always assess the whole patient (mental state, cough, secretions, haemodynamics, gases).$x$, null),
(20, $x$A heat and moisture exchanger (HME) is in use on a ventilated patient. It should NOT be used together with:$x$, $x$An active heated humidifier in the same circuit$x$, $x$✅ Correct answer: An active heated humidifier in the same circuit
A HEAT AND MOISTURE EXCHANGER (HME) is a passive device placed near the endotracheal tube. It traps heat and moisture from the patient's exhaled breath and returns them during the next inhalation. It must NOT be used together with an ACTIVE HEATED HUMIDIFIER in the same circuit, because the HME will become SOAKED with water, greatly increasing airway resistance and possibly BLOCKING the airway completely.

❌ Why the other options are wrong:
• A mainstream capnography adaptor — A mainstream capnography adaptor can be used with an HME.
• A bacterial/viral filter on the expiratory limb — A bacterial/viral filter on the expiratory limb can be used with an HME.
• An in-line closed suction catheter — An in-line closed suction catheter can be used with an HME.

⭐ Key point: Change the HME as per the manufacturer's instructions (usually every 24–48 hours), and if it is soiled with secretions. Avoid HMEs in patients with thick secretions, blood in secretions, or large air leaks.$x$, null),
(21, $x$A syringe pump running noradrenaline is mounted high above the patient's heart, and the syringe plunger is not secured in the plunger clamp. The main danger is:$x$, $x$Siphoning: free flow of drug by gravity, giving a bolus$x$, $x$✅ Correct answer: Siphoning: free flow of drug by gravity, giving a bolus
SIPHONING occurs when a syringe pump is mounted HIGH above the patient and the syringe PLUNGER is NOT secured in the plunger clamp. Gravity can pull the drug out of the syringe (free flow), giving an uncontrolled BOLUS of noradrenaline. A bolus of a powerful vasoconstrictor can cause a sudden dangerous rise in BP, arrhythmias and stroke.

❌ Why the other options are wrong:
• Repeated occlusion alarms with no drug being delivered — Repeated occlusion alarms happen when the line is blocked, not when the plunger is loose.
• Reverse flow of blood up the line into the syringe — Blood backflow can happen if the pump is placed BELOW the patient, not above.
• Air embolism from air drawn back into the syringe — Air embolism is not the main danger here.

⭐ Key point: Always secure the plunger and barrel in the pump clamps, use anti-siphon valves, and mount pumps at or near the level of the patient's heart.$x$, null),
(22, $x$A syringe pump alarms 'occlusion' because a three-way tap below it was closed. Before simply opening the tap, the nurse should:$x$, $x$Relieve the built-up line pressure first, to avoid a sudden bolus$x$, $x$✅ Correct answer: Relieve the built-up line pressure first, to avoid a sudden bolus
When a three-way tap is closed, the pump keeps pushing, building up PRESSURE in the line until it alarms "occlusion". If the tap is simply opened, the built-up pressure releases suddenly, delivering a BOLUS of noradrenaline (a dangerous spike in BP). The nurse should first RELIEVE THE BUILT-UP PRESSURE (e.g. use the pump's "back-off" function, or disconnect and release the pressure safely into a waste syringe) BEFORE opening the tap.

❌ Why the other options are wrong:
• Flush the line rapidly with 10 mL saline to clear any clot — Flushing rapidly with 10 mL saline would push a large bolus of noradrenaline into the patient.
• Replace the syringe, as the drug has now been inactivated — The drug has not become inactive; it doesn't need replacing.
• Increase the rate briefly to make up for the missed drug — Increasing the rate to "make up" for missed drug causes a dangerous overdose.

⭐ Key point: Check three-way taps and lines before starting infusions. Place vasoactive drugs on a dedicated lumen.$x$, null),
(23, $x$Which is the safest way to change an almost-empty syringe of noradrenaline for a patient who is pressor-dependent?$x$, $x$Prime a new syringe in a second pump early and switch over, watching the BP$x$, $x$✅ Correct answer: Prime a new syringe in a second pump early and switch over, watching the BP
A patient who is PRESSOR-DEPENDENT can drop their BP dangerously if the noradrenaline stops even for a short time (noradrenaline has a half-life of about 2 minutes). The safest method is to PRIME A NEW SYRINGE in a SECOND PUMP EARLY (before the first syringe runs out) and SWITCH OVER (e.g. "double pumping" — start the new pump and stop the old one as the BP is watched), WATCHING THE BP closely.

❌ Why the other options are wrong:
• Stop the infusion, flush the line with saline, then connect the new syringe — Stopping the infusion and flushing the line would cause a gap in noradrenaline and give a bolus of the drug left in the line.
• Run the new syringe through the lumen used for intermittent drug boluses — Running noradrenaline through a lumen used for boluses risks accidental boluses of noradrenaline when other drugs are given.
• Wait for the 'syringe empty' alarm, then draw up and start the next syringe — Waiting for the "syringe empty" alarm leaves a gap while the new syringe is prepared, causing hypotension.

⭐ Key point: Prepare the next syringe in advance, label clearly, and use a dedicated lumen for vasoactive drugs.$x$, null),
(24, $x$Noradrenaline 4 mg is diluted to 50 mL. What rate (mL/h) delivers 0.1 microgram/kg/min to a 70 kg patient?$x$, $x$5.25 mL/h$x$, $x$✅ Correct answer: 5.25 mL/h
Step 1: Concentration = 4 mg in 50 mL = 4000 micrograms ÷ 50 mL = 80 micrograms/mL. Step 2: Dose needed per minute = 0.1 microgram/kg/min × 70 kg = 7 micrograms/min. Step 3: Dose per hour = 7 × 60 = 420 micrograms/hour. Step 4: Rate = 420 ÷ 80 = 5.25 mL/hour.

❌ Why the other options are wrong:
• 8.4 mL/h — 8.4 mL/h would give about 0.16 microgram/kg/min.
• 0.53 mL/h — 0.53 mL/h is ten times too little (decimal place error).
• 52.5 mL/h — 52.5 mL/h is ten times too much — a dangerous overdose (decimal place error).

⭐ Key point: Formula: Rate (mL/h) = Dose (mcg/kg/min) × Weight (kg) × 60 ÷ Concentration (mcg/mL). Always double-check calculations with another nurse.$x$, null),
(25, $x$Dopamine 200 mg in 50 mL is running at 6 mL/h in an 80 kg patient. What dose is the patient receiving?$x$, $x$5 micrograms/kg/min$x$, $x$✅ Correct answer: 5 micrograms/kg/min
Step 1: Concentration = 200 mg in 50 mL = 4 mg/mL = 4000 micrograms/mL. Step 2: Amount per hour = 6 mL/h × 4000 = 24,000 micrograms/hour. Step 3: Per minute = 24,000 ÷ 60 = 400 micrograms/min. Step 4: Per kg = 400 ÷ 80 kg = 5 micrograms/kg/min.

❌ Why the other options are wrong:
• 3 micrograms/kg/min — 3 micrograms/kg/min is too low; the calculation was done incorrectly.
• 50 micrograms/kg/min — 50 micrograms/kg/min is ten times too high (decimal place error).
• 0.5 micrograms/kg/min — 0.5 micrograms/kg/min is ten times too low (decimal place error).

⭐ Key point: Formula: Dose (mcg/kg/min) = Rate (mL/h) × Concentration (mcg/mL) ÷ (Weight × 60).$x$, null),
(26, $x$One litre of normal saline is to run over 8 hours through a giving set that delivers 20 drops/mL. The drip rate is:$x$, $x$42 drops/min$x$, $x$✅ Correct answer: 42 drops/min
Formula: Drops per minute = (Volume in mL × Drop factor) ÷ (Time in minutes). Here: Volume = 1000 mL, Drop factor = 20 drops/mL, Time = 8 hours × 60 = 480 minutes. Calculation: (1000 × 20) ÷ 480 = 20,000 ÷ 480 = 41.7 ≈ 42 drops/min.

❌ Why the other options are wrong:
• 125 drops/min — 125 drops/min is the hourly rate in mL (1000 ÷ 8 = 125 mL/h), not drops per minute.
• 21 drops/min — 21 drops/min would deliver only about half the volume in 8 hours.
• 63 drops/min — 63 drops/min would deliver the litre in about 5.3 hours (too fast).

⭐ Key point: Standard giving sets deliver 20 drops/mL (some 15); paediatric (micro-drip) sets deliver 60 drops/mL. Always check the packaging.$x$, null),
(27, $x$A patient rescued from a closed room with a charcoal stove is confused, with a pulse oximeter reading of 98%. The reading is unreliable because:$x$, $x$Standard pulse oximeters read carboxyhaemoglobin as oxyhaemoglobin, giving a falsely normal SpO₂$x$, $x$✅ Correct answer: Standard pulse oximeters read carboxyhaemoglobin as oxyhaemoglobin, giving a falsely normal SpO₂
Carbon monoxide (CO) from a charcoal stove in a closed room binds to haemoglobin 200–250 times more strongly than oxygen, forming CARBOXYHAEMOGLOBIN (COHb). Standard pulse oximeters use only two wavelengths of light and CANNOT tell COHb from OXYHAEMOGLOBIN (they absorb light similarly). So the oximeter shows a FALSELY NORMAL SpO2 (e.g. 98%), even though the blood is carrying much less oxygen. The patient is actually hypoxic at the tissue level, causing confusion.

❌ Why the other options are wrong:
• Vasodilation from carbon monoxide improves the oximeter signal — CO doesn't improve the oximeter signal through vasodilation.
• Carbon monoxide shifts the oxygen dissociation curve to the right, raising SpO₂ — CO shifts the oxygen dissociation curve to the LEFT (oxygen is held more tightly and released less to the tissues).
• Carbon monoxide increases the amount of oxygen dissolved in plasma — CO doesn't increase dissolved oxygen in plasma.

⭐ Key point: Measure COHb using a CO-oximeter on an arterial or venous blood gas. Treat with 100% oxygen via a non-rebreather mask (reduces CO half-life from about 4–6 hours to about 60–90 minutes); consider hyperbaric oxygen in severe cases.$x$, null),
(28, $x$After a large dose of a local anaesthetic spray (benzocaine), a patient becomes cyanosed. SpO₂ stays around 85% despite high-flow oxygen, PaO₂ on the blood gas is 300 mmHg, and the blood looks chocolate-brown. The diagnosis and treatment are:$x$, $x$Methaemoglobinaemia — IV methylene blue$x$, $x$✅ Correct answer: Methaemoglobinaemia — IV methylene blue
Some drugs (e.g. benzocaine and other local anaesthetics, dapsone, nitrates) oxidise the iron in haemoglobin from the ferrous (Fe²⁺) to the ferric (Fe³⁺) form, creating METHAEMOGLOBIN, which cannot carry oxygen. Key features: CYANOSIS that doesn't respond to oxygen, SpO2 stuck around 85% (regardless of the true level), a HIGH PaO2 on the blood gas (oxygen is dissolved in plasma normally), and CHOCOLATE-BROWN blood. Treatment: IV METHYLENE BLUE (1–2 mg/kg), which converts methaemoglobin back to normal haemoglobin.

❌ Why the other options are wrong:
• Carbon monoxide poisoning — hyperbaric oxygen — Carbon monoxide poisoning gives a falsely NORMAL SpO2 and cherry-red (not chocolate-brown) blood.
• Sulfhaemoglobinaemia — IV methylene blue — Sulfhaemoglobinaemia does NOT respond to methylene blue.
• Cyanide poisoning — hydroxocobalamin — Cyanide poisoning prevents cells from using oxygen, but the blood is bright red, not chocolate-brown, and SpO2 is usually normal.

⭐ Key point: Methylene blue is contraindicated in G6PD deficiency (common in Nigeria) — it can cause haemolysis. Use exchange transfusion or ascorbic acid instead.$x$, null),
(29, $x$Immediately after intubation, the capnograph shows a few small waveforms that fade to zero over the next five breaths. The most likely explanation is:$x$, $x$Oesophageal intubation$x$, $x$✅ Correct answer: Oesophageal intubation
Capnography detects CO2 in exhaled breath. After CORRECT intubation, the CO2 waveform stays consistent with every breath. If the tube is in the OESOPHAGUS, a small amount of CO2 may be present in the stomach (from swallowed exhaled air or bag-mask ventilation), giving a FEW SMALL WAVEFORMS that quickly FADE TO ZERO within a few breaths. This indicates OESOPHAGEAL INTUBATION — the tube must be removed and the patient re-intubated immediately.

❌ Why the other options are wrong:
• Severe bronchospasm — Severe bronchospasm gives a "shark-fin" shaped waveform, but CO2 is still present with every breath.
• Right main bronchus intubation — Right main bronchus intubation still gives a consistent CO2 trace (one lung is ventilated).
• Hyperventilation — Hyperventilation gives a lower but persistent CO2 trace.

⭐ Key point: "No trace = wrong place." Waveform capnography is the gold standard for confirming tube placement (also during CPR).$x$, null),
(30, $x$A 'shark-fin' capnograph waveform, with a slow sloping upstroke and no flat plateau, indicates:$x$, $x$Lower airway obstruction (bronchospasm or COPD)$x$, $x$✅ Correct answer: Lower airway obstruction (bronchospasm or COPD)
A "SHARK-FIN" capnograph waveform has a slow, SLOPING upstroke and no flat plateau (it looks like a shark's fin). This shows that exhaled air is coming out slowly and unevenly from narrowed airways — LOWER AIRWAY OBSTRUCTION, such as BRONCHOSPASM (asthma) or COPD. The more obstruction, the steeper the slope.

❌ Why the other options are wrong:
• Cardiac arrest with low pulmonary flow — Cardiac arrest with low pulmonary flow causes a LOW CO2 trace (low height), but a normal shape.
• Oesophageal intubation with gastric gas — Oesophageal intubation gives a few waveforms that fade to zero.
• Rebreathing from exhausted soda lime — Rebreathing causes the baseline to rise above zero.

⭐ Key point: Treat the bronchospasm and watch the waveform improve as obstruction resolves.$x$, null),
(31, $x$On capnography, the baseline does not return to zero during inspiration (inspired CO₂ is above zero). This indicates:$x$, $x$Rebreathing of exhaled CO₂$x$, $x$✅ Correct answer: Rebreathing of exhaled CO₂
The capnograph baseline should return to ZERO during inspiration, because fresh inspired air contains almost no CO2. If the baseline stays ABOVE ZERO, the patient is breathing in CO2 — REBREATHING exhaled CO2. Causes: exhausted CO2 absorber (soda lime) in an anaesthetic circuit, faulty expiratory valve, inadequate fresh gas flow, or excessive dead space in the circuit.

❌ Why the other options are wrong:
• Hypoventilation with CO₂ retention — Hypoventilation causes a HIGHER end-tidal CO2 (taller waveform), but the baseline still returns to zero.
• Malignant hyperthermia in its early phase — Malignant hyperthermia causes a rapidly RISING end-tidal CO2, but the baseline returns to zero (unless absorber is exhausted).
• Bronchospasm with a prolonged expiration — Bronchospasm gives a shark-fin shaped waveform.

⭐ Key point: Check the circuit, the valves, and the CO2 absorber when the baseline is raised.$x$, null),
(32, $x$When an unstable patient with fast atrial fibrillation is cardioverted, 'sync' mode is used so that the shock is NOT delivered during:$x$, $x$The T wave$x$, $x$✅ Correct answer: The T wave
During SYNCHRONISED CARDIOVERSION, the defibrillator detects the R wave and delivers the shock AT THE SAME TIME AS the R wave (the QRS complex). This avoids delivering the shock during the T WAVE, which is the "VULNERABLE PERIOD" when the ventricles are repolarising. A shock during the T wave can trigger VENTRICULAR FIBRILLATION (R-on-T phenomenon).

❌ Why the other options are wrong:
• The PR interval — The PR interval is not the vulnerable period.
• The P wave — The P wave (atrial depolarisation) is not the vulnerable period.
• The R wave — The shock IS delivered on the R wave (it's synchronised to it).

⭐ Key point: Check that the defibrillator is marking the R waves before shocking, and re-select "sync" after each shock if needed (some machines default back to unsynchronised).$x$, null),
(33, $x$During transcutaneous pacing, every pacing spike is followed by a wide QRS complex. The best way to confirm that the heart is actually pumping (mechanical capture) is to:$x$, $x$Feel the femoral pulse or look at the arterial line trace$x$, $x$✅ Correct answer: Feel the femoral pulse or look at the arterial line trace
During TRANSCUTANEOUS PACING, ELECTRICAL CAPTURE (a wide QRS after each spike) does NOT guarantee MECHANICAL CAPTURE (the heart actually contracting and pumping blood). The best way to confirm mechanical capture is to feel the FEMORAL PULSE or look at the ARTERIAL LINE TRACE for a pulse that matches the pacing rate.

❌ Why the other options are wrong:
• Feel the carotid pulse — The CAROTID pulse is unreliable during transcutaneous pacing, because the pacing current causes muscle twitching in the neck that can be mistaken for a pulse.
• Increase the current by 50% above the capture threshold — Increasing the current is done after capture is confirmed (usually by 5–10 mA above threshold), not to confirm mechanical capture.
• Check that each spike is followed by a QRS on the monitor — A QRS after each spike shows ELECTRICAL capture only.

⭐ Key point: Give analgesia and sedation during transcutaneous pacing — it is painful.$x$, null),
(34, $x$An arterial line transducer is accidentally left 10 cm BELOW the phlebostatic axis. The displayed blood pressure will be:$x$, $x$Falsely high, by about 7 mmHg$x$, $x$✅ Correct answer: Falsely high, by about 7 mmHg
Arterial line transducers must be level with the PHLEBOSTATIC AXIS (4th intercostal space, mid-axillary line — the level of the right atrium). If the transducer is BELOW this level, the weight of the fluid column above the transducer adds pressure, so the reading is FALSELY HIGH. Every 10 cm of water = about 7.4 mmHg. So 10 cm below → FALSELY HIGH by about 7 mmHg.

❌ Why the other options are wrong:
• Unchanged, because the system was zeroed earlier — The reading changes when the transducer level changes, even if zeroed earlier.
• Falsely low, by about 7 mmHg — A transducer placed ABOVE the axis would give a falsely LOW reading.
• Falsely high, by about 10 mmHg — 10 cmH2O ≈ 7.4 mmHg, not 10 mmHg.

⭐ Key point: Re-level the transducer whenever the patient's position changes.$x$, null),
(35, $x$An arterial line trace is flattened, with a slurred upstroke and no dicrotic notch (over-damped). Compared with the true pressure, the monitor shows:$x$, $x$Falsely LOW systolic and falsely HIGH diastolic, mean about right$x$, $x$✅ Correct answer: Falsely LOW systolic and falsely HIGH diastolic, mean about right
An OVER-DAMPED arterial line (e.g. from air bubbles, clots, kinks, soft tubing) shows a FLATTENED waveform with a SLURRED UPSTROKE and no dicrotic notch. It UNDERESTIMATES the SYSTOLIC pressure (FALSELY LOW) and OVERESTIMATES the DIASTOLIC pressure (FALSELY HIGH). The MEAN arterial pressure stays about RIGHT.

❌ Why the other options are wrong:
• Falsely high systolic and diastolic, with a falsely high mean — Over-damping does not cause both readings to be high.
• Accurate systolic and diastolic, but a mean 20 mmHg too low — Over-damping affects systolic and diastolic; the mean stays about right.
• Falsely HIGH systolic and falsely LOW diastolic, mean about right — Falsely HIGH systolic and LOW diastolic describes an UNDER-DAMPED system.

⭐ Key point: Look for air bubbles, clots, kinks or loose connections. Use the mean arterial pressure (MAP) for decisions if the trace is damped.$x$, null),
(36, $x$A fast-flush (square-wave) test on an arterial line shows 1½–2 oscillations before the trace returns to the waveform. This indicates:$x$, $x$An optimally damped system$x$, $x$✅ Correct answer: An optimally damped system
The FAST-FLUSH (square-wave) test checks the dynamic response of an arterial line. After a fast flush, the trace shows a square wave and then OSCILLATIONS before returning to the waveform. 1½–2 oscillations indicate an OPTIMALLY DAMPED system, meaning the readings are accurate.

❌ Why the other options are wrong:
• A disconnected transducer — A disconnected transducer shows no proper waveform.
• An under-damped system — An UNDER-DAMPED system shows MANY oscillations (more than 2).
• An over-damped system — An OVER-DAMPED system shows FEW (less than 1½) or no oscillations.

⭐ Key point: Perform the fast-flush test regularly (at least once per shift) and whenever the trace looks abnormal.$x$, null),
(37, $x$A patient has an underwater-seal chest drain for a pneumothorax. The water-seal chamber is bubbling CONTINUOUSLY, during both inspiration and expiration. This means:$x$, $x$A persistent air leak — from the lung or a loose connection$x$, $x$✅ Correct answer: A persistent air leak — from the lung or a loose connection
In an underwater-seal chest drain, BUBBLING in the water-seal chamber shows that AIR is escaping from the chest. In a pneumothorax drain, intermittent bubbling (with expiration or coughing) is expected while air is leaving the pleural space. CONTINUOUS BUBBLING (during both inspiration and expiration) indicates a PERSISTENT AIR LEAK, either from the LUNG (e.g. a bronchopleural fistula) or a LOOSE CONNECTION/hole in the system.

❌ Why the other options are wrong:
• The drain tube is blocked by a clot or kinked under the patient — A blocked drain would stop bubbling and swinging.
• A normal finding in every drain inserted for a pneumothorax — Continuous bubbling is NOT a normal finding.
• The lung has fully re-expanded and the drain can be removed — If the lung had fully re-expanded, bubbling would STOP.

⭐ Key point: Check the system for leaks by briefly clamping the tubing at different points: if bubbling stops when clamped close to the patient, the leak is from the patient; if it continues, the leak is in the system.$x$, null),
(38, $x$A patient's chest drain bottle is accidentally lifted above the level of the chest. The main risk is:$x$, $x$Backflow of drained fluid into the pleural space$x$, $x$✅ Correct answer: Backflow of drained fluid into the pleural space
The drainage bottle must always stay BELOW the level of the chest. If it is lifted above the chest, gravity can cause the drained fluid (and water from the seal) to flow BACK into the PLEURAL SPACE, risking infection and lung compression.

❌ Why the other options are wrong:
• Re-expansion pulmonary oedema of the lung — Re-expansion pulmonary oedema occurs when a large effusion or pneumothorax is drained too quickly, not when the bottle is raised.
• Tension pneumothorax because air cannot escape — A tension pneumothorax may occur if the drain is clamped or blocked, but backflow is the main risk here.
• Air embolism entering the pulmonary veins — Air embolism is not a risk of raising the bottle.

⭐ Key point: Keep the bottle upright and below the chest, especially during patient transfers.$x$, null),
(39, $x$During continuous renal replacement therapy with regional citrate anticoagulation, the patient's total calcium is rising while ionised calcium falls (total:ionised calcium ratio above 2.5), with a worsening metabolic acidosis. This indicates:$x$, $x$Citrate accumulation, as the liver cannot clear citrate$x$, $x$✅ Correct answer: Citrate accumulation, as the liver cannot clear citrate
In CRRT with REGIONAL CITRATE ANTICOAGULATION, citrate is added to the circuit to bind calcium and stop clotting. Normally the LIVER converts citrate into bicarbonate. If the liver cannot clear citrate (e.g. liver failure, shock), CITRATE ACCUMULATES. The citrate keeps binding calcium, so the IONISED calcium falls; but the TOTAL calcium rises because citrate-bound calcium is still counted. A TOTAL:IONISED CALCIUM RATIO above 2.5 and a worsening METABOLIC ACIDOSIS (citrate is not being converted to bicarbonate) indicate CITRATE ACCUMULATION.

❌ Why the other options are wrong:
• Hypercalcaemia from excessive calcium replacement — Hypercalcaemia from excessive replacement would raise BOTH total and ionised calcium.
• Severe hypoalbuminaemia lowering the total calcium — Hypoalbuminaemia lowers TOTAL calcium; it does not cause this pattern.
• Early clotting of the filter and extracorporeal circuit — Clotting of the filter is a different problem; it causes reduced filter life and rising pressures.

⭐ Key point: Treat by reducing or stopping citrate, and switching to another anticoagulant if necessary.$x$, null),
(40, $x$A Venturi mask delivers a fixed, predictable FiO₂ mainly because:$x$, $x$It entrains a fixed ratio of room air, giving a total flow above the patient's peak inspiratory flow$x$, $x$✅ Correct answer: It entrains a fixed ratio of room air, giving a total flow above the patient's peak inspiratory flow
A VENTURI MASK uses a jet of oxygen passing through a narrow opening to ENTRAIN (pull in) a FIXED RATIO of ROOM AIR through side ports. This creates a high TOTAL FLOW of gas that is HIGHER than the patient's PEAK INSPIRATORY FLOW, so the patient doesn't draw in extra room air. This gives a FIXED, PREDICTABLE FiO2 (e.g. 24%, 28%, 35%, 40%, 60%), regardless of the patient's breathing pattern.

❌ Why the other options are wrong:
• Its tight face seal stops room air entering, so inspired gas comes only from the device — Venturi masks are NOT tightly sealed; they have open side ports.
• Its reservoir bag stores pure oxygen so that each breath contains a fixed oxygen fraction — A reservoir bag is used in a NON-REBREATHER mask, not a Venturi mask.
• Turning the oxygen flow up to 15 L/min raises the FiO₂ above the colour-coded value — Turning up the oxygen flow above the recommended rate does NOT significantly raise the FiO2 above the set value.

⭐ Key point: Venturi masks are ideal for patients with COPD who need controlled oxygen therapy.$x$, null),
(41, $x$Six hours after cardiac surgery, a patient's BP falls to 80/60 mmHg. Heart rate is 125, JVP is raised, heart sounds are muffled, systolic pressure drops 15 mmHg on inspiration, and chest drain output has suddenly stopped. The most likely diagnosis is:$x$, $x$Cardiac tamponade$x$, $x$✅ Correct answer: Cardiac tamponade
After cardiac surgery, bleeding into the pericardium can compress the heart: CARDIAC TAMPONADE. Signs: HYPOTENSION (80/60), TACHYCARDIA (125), RAISED JVP (blood backs up), MUFFLED HEART SOUNDS, PULSUS PARADOXUS (systolic falls more than 10 mmHg on inspiration — here 15), and a SUDDEN STOP in chest drain output (the drains have clotted, so blood is trapped around the heart).

❌ Why the other options are wrong:
• Hypovolaemia from concealed bleeding — Hypovolaemia from bleeding causes a LOW (not raised) JVP.
• Tension pneumothorax — Tension pneumothorax causes absent breath sounds and tracheal deviation.
• Right ventricular infarction — RV infarction causes raised JVP and hypotension, but would not explain the sudden stop in drain output 6 hours after surgery.

⭐ Key point: Post-cardiac surgery tamponade requires urgent re-opening of the chest (re-sternotomy). Keep drains patent and monitor output hourly.$x$, null),
(42, $x$A patient with an inferior STEMI becomes hypotensive (80/50 mmHg) with a raised JVP and CLEAR lung fields. ST elevation is seen in right-sided lead V4R. The diagnosis and key management are:$x$, $x$RV infarction — IV fluid boluses; avoid nitrates$x$, $x$✅ Correct answer: RV infarction — IV fluid boluses; avoid nitrates
An INFERIOR STEMI (ST elevation in II, III, aVF) is usually caused by RIGHT CORONARY ARTERY occlusion, which also supplies the RIGHT VENTRICLE. RV INFARCTION is suggested by: HYPOTENSION, RAISED JVP, and CLEAR LUNG FIELDS (the right heart fails, so blood doesn't reach the lungs). ST elevation in right-sided lead V4R confirms it. The RV needs adequate filling (PRELOAD) to pump blood, so give IV FLUID BOLUSES. AVOID NITRATES (and diuretics, morphine), which reduce preload and can cause severe hypotension.

❌ Why the other options are wrong:
• Massive PE — systemic thrombolysis immediately — Massive PE causes hypotension and raised JVP, but V4R ST elevation points to RV infarction.
• Cardiac tamponade — urgent pericardiocentesis — Tamponade causes hypotension and raised JVP, but V4R ST elevation points to RV infarction.
• LV failure — IV furosemide and GTN infusion — LV failure causes pulmonary oedema (crackles), not clear lung fields; furosemide and GTN would worsen RV infarction.

⭐ Key point: In all inferior STEMIs, record a right-sided ECG (V4R). Urgent reperfusion (PCI or thrombolysis) is still the main treatment.$x$, null),
(43, $x$A 58-year-old hypertensive man has sudden 'tearing' chest pain radiating to the back. BP is 180/100 mmHg in the right arm and 140/80 mmHg in the left arm, and there is a new early diastolic murmur. The most likely diagnosis is:$x$, $x$Stanford type A aortic dissection$x$, $x$✅ Correct answer: Stanford type A aortic dissection
AORTIC DISSECTION is a tear in the inner layer of the aorta, allowing blood to split the wall. Classic features: SUDDEN, severe "TEARING" CHEST PAIN radiating to the BACK, a BP DIFFERENCE between arms (more than 20 mmHg — here 40), and a new EARLY DIASTOLIC MURMUR of AORTIC REGURGITATION (the dissection involves the aortic root). This indicates a STANFORD TYPE A dissection (involving the ascending aorta), a surgical emergency.

❌ Why the other options are wrong:
• Massive pulmonary thromboembolism — Massive PE causes breathlessness and hypotension, not BP differences between arms or aortic murmurs.
• Acute anterior myocardial infarction — Anterior MI causes central crushing chest pain, but not BP differences between arms or a "tearing" back pain.
• Acute pericarditis with effusion — Pericarditis causes sharp pain relieved by sitting forward, with a pericardial rub.

⭐ Key point: Never give thrombolytics if aortic dissection is suspected. Control heart rate and BP (beta-blockers), give pain relief, and arrange urgent surgery for Type A.$x$, null),
(44, $x$A 30-year-old has sharp central chest pain that is worse lying flat and relieved by sitting forward. The ECG shows widespread concave ('saddle-shaped') ST elevation with PR depression, and a scratchy sound is heard at the left sternal edge. The diagnosis is:$x$, $x$Acute pericarditis$x$, $x$✅ Correct answer: Acute pericarditis
ACUTE PERICARDITIS (inflammation of the pericardium, often viral) causes: SHARP central chest pain, WORSE LYING FLAT and RELIEVED BY SITTING FORWARD; an ECG showing WIDESPREAD CONCAVE ("SADDLE-SHAPED") ST ELEVATION in many leads (not following one artery), with PR DEPRESSION; and a PERICARDIAL RUB (a scratchy sound) at the left sternal edge.

❌ Why the other options are wrong:
• Takotsubo cardiomyopathy — Takotsubo cardiomyopathy usually occurs after emotional stress, with chest pain and ST changes, but not positional pain and a pericardial rub.
• Benign early repolarisation — Benign early repolarisation causes ST elevation (usually in young men) without symptoms.
• Acute anterior STEMI — Anterior STEMI causes convex ST elevation in specific leads (V1–V4), with reciprocal changes, and no rub.

⭐ Key point: Treat with NSAIDs (e.g. ibuprofen) and colchicine. Watch for pericardial effusion and tamponade.$x$, null),
(45, $x$Five days after an acute MI, a patient suddenly develops severe breathlessness and pink frothy sputum, with a NEW loud pansystolic murmur at the apex radiating to the axilla. The most likely complication is:$x$, $x$Papillary muscle rupture (acute mitral regurgitation)$x$, $x$✅ Correct answer: Papillary muscle rupture (acute mitral regurgitation)
About 2–7 days after an MI, the damaged heart muscle is weakest. PAPILLARY MUSCLE RUPTURE (usually the posteromedial papillary muscle) causes SUDDEN, severe ACUTE MITRAL REGURGITATION: blood flows backwards into the left atrium and lungs, causing ACUTE PULMONARY OEDEMA (severe breathlessness, PINK FROTHY SPUTUM) and a NEW loud PANSYSTOLIC MURMUR at the APEX radiating to the AXILLA.

❌ Why the other options are wrong:
• Ventricular septal rupture (acute left-to-right shunt) — Ventricular septal rupture also causes a new pansystolic murmur, but it is usually heard at the LEFT STERNAL EDGE, with less pulmonary oedema initially.
• Dressler syndrome (post-MI autoimmune pericarditis) — Dressler syndrome occurs weeks after MI, causing pericarditis, not a murmur and pulmonary oedema.
• Left ventricular free wall rupture with tamponade — Free wall rupture causes sudden tamponade and collapse, not a murmur.

⭐ Key point: Urgent echocardiography confirms the diagnosis. Treatment: emergency surgery, with vasodilators or an intra-aortic balloon pump as a bridge.$x$, null),
(46, $x$Three weeks after an MI, a patient develops fever, pleuritic chest pain, a pericardial rub and a raised ESR. Echo shows a small pericardial effusion and no new wall-motion abnormality. The diagnosis is:$x$, $x$Dressler syndrome$x$, $x$✅ Correct answer: Dressler syndrome
DRESSLER SYNDROME (post-MI syndrome) is an AUTOIMMUNE PERICARDITIS that develops 2–10 WEEKS after an MI (or after heart surgery). The immune system reacts to damaged heart tissue. Features: FEVER, PLEURITIC CHEST PAIN, PERICARDIAL RUB, raised ESR, and a PERICARDIAL EFFUSION. Echo shows no new wall-motion problems (it's not a new MI).

❌ Why the other options are wrong:
• Infective endocarditis — Infective endocarditis causes fever and murmurs, with positive blood cultures and vegetations.
• Left ventricular aneurysm — LV aneurysm causes persistent ST elevation and heart failure, not fever and pericarditis.
• Ventricular free wall rupture — Free wall rupture causes sudden collapse and tamponade, not slow onset with fever.

⭐ Key point: Treat with NSAIDs or aspirin and colchicine. Steroids are used if resistant.$x$, null),
(47, $x$An injecting drug user has fever for 2 weeks, a new pansystolic murmur at the lower left sternal edge that increases on inspiration, splinter haemorrhages, painless red macules on the soles, and multiple round opacities on chest X-ray. The most likely diagnosis is:$x$, $x$Tricuspid valve endocarditis with septic emboli$x$, $x$✅ Correct answer: Tricuspid valve endocarditis with septic emboli
INJECTING DRUG USERS often get INFECTIVE ENDOCARDITIS on the RIGHT side of the heart, especially the TRICUSPID VALVE, usually caused by Staphylococcus aureus. Features: FEVER, a PANSYSTOLIC MURMUR at the lower LEFT STERNAL EDGE that INCREASES ON INSPIRATION (Carvallo's sign — right-sided murmurs increase with inspiration), SPLINTER HAEMORRHAGES, JANEWAY LESIONS (painless red macules on palms/soles), and SEPTIC EMBOLI to the LUNGS (multiple round opacities on chest X-ray).

❌ Why the other options are wrong:
• Community-acquired pneumonia with lung abscess — Pneumonia with lung abscess doesn't cause a new heart murmur and splinter haemorrhages.
• Mitral valve endocarditis with cerebral emboli — Mitral valve endocarditis would send emboli to the brain and body, not the lungs, and the murmur would be at the apex.
• Acute rheumatic fever with carditis and arthritis — Rheumatic fever causes carditis and arthritis, usually in children.

⭐ Key point: Diagnose with blood cultures (at least 3 sets before antibiotics) and echocardiography (Duke criteria).$x$, null),
(48, $x$A patient's BP is 230/130 mmHg with severe headache, confusion, papilloedema and new proteinuria. The appropriate initial target for blood pressure reduction is:$x$, $x$Lower MAP by no more than about 25% in the first hour with an IV agent$x$, $x$✅ Correct answer: Lower MAP by no more than about 25% in the first hour with an IV agent
This is a HYPERTENSIVE EMERGENCY (very high BP with organ damage: brain — confusion and papilloedema; kidneys — proteinuria). The BP must be lowered, but NOT TOO FAST — the brain and kidneys have adapted to high pressure, and a sudden drop can cause stroke, blindness or kidney failure. The target: lower the MAP by NO MORE THAN about 25% in the FIRST HOUR, using a controllable IV agent (e.g. labetalol, nicardipine, sodium nitroprusside), then gradually to about 160/100 over the next 2–6 hours, and to normal over 24–48 hours.

❌ Why the other options are wrong:
• Give sublingual nifedipine to bring the BP down as fast as possible — Sublingual nifedipine causes an unpredictable, rapid BP drop, which can cause stroke.
• Bring the BP down to below 140/90 mmHg within the first hour — Lowering to below 140/90 in the first hour is too fast and risks organ ischaemia.
• Lower the systolic BP to 120 mmHg within 6 hours with an IV agent — 120 mmHg systolic within 6 hours is too aggressive.

⭐ Key point: Exceptions where faster BP lowering is needed: aortic dissection, eclampsia and acute pulmonary oedema.$x$, null),
(49, $x$A 22-year-old has palpitations with an irregular, very fast (rate 260) broad-complex tachycardia whose QRS shape varies from beat to beat. A previous ECG showed a short PR interval and a slurred upstroke (delta wave). Which drug is CONTRAINDICATED?$x$, $x$Verapamil$x$, $x$✅ Correct answer: Verapamil
This patient has WOLFF-PARKINSON-WHITE (WPW) syndrome (short PR, delta wave) with ATRIAL FIBRILLATION conducted down the ACCESSORY PATHWAY, causing an irregular, very fast, BROAD-COMPLEX tachycardia with varying QRS shapes. AV nodal blocking drugs such as VERAPAMIL (and adenosine, digoxin, beta-blockers) are CONTRAINDICATED, because blocking the AV node forces MORE impulses down the accessory pathway, which can cause VENTRICULAR FIBRILLATION and death.

❌ Why the other options are wrong:
• Flecainide — Flecainide slows conduction in the accessory pathway; it can be used in stable patients.
• Synchronised DC cardioversion — Synchronised DC cardioversion is the treatment of choice if the patient is unstable.
• Procainamide — Procainamide slows conduction in the accessory pathway; it can be used.

⭐ Key point: In WPW with AF, avoid AV nodal blockers ("ABCD": Adenosine, Beta-blockers, Calcium channel blockers, Digoxin).$x$, null),
(50, $x$A patient with hypomagnesaemia who is taking a QT-prolonging drug develops a polymorphic ventricular tachycardia whose QRS axis appears to twist around the baseline. A pulse is present. The first-line drug is:$x$, $x$IV magnesium sulphate 2 g$x$, $x$✅ Correct answer: IV magnesium sulphate 2 g
This is TORSADES DE POINTES ("twisting of the points") — a polymorphic VT where the QRS axis twists around the baseline. It happens with a LONG QT interval, often due to HYPOMAGNESAEMIA, hypokalaemia, or QT-PROLONGING DRUGS (e.g. some antibiotics, antipsychotics, antiarrhythmics). The first-line treatment is IV MAGNESIUM SULPHATE 2 g (8 mmol) over 10–15 minutes, which stabilises the heart muscle even if magnesium levels are normal.

❌ Why the other options are wrong:
• IV adenosine 6 mg — Adenosine is for SVT; it does not treat torsades.
• IV amiodarone 300 mg — Amiodarone PROLONGS the QT interval and can worsen torsades.
• IV lidocaine — Lidocaine is not first-line for torsades.

⭐ Key point: Stop QT-prolonging drugs, correct potassium (aim above 4.5 mmol/L), and use overdrive pacing or isoprenaline if torsades recurs. If pulseless, defibrillate.$x$, null),
(51, $x$An elderly man has dizzy spells. The pulse is 34/min and regular. On the ECG, P waves occur at 80/min, QRS complexes at 34/min, there is no consistent PR interval, and the QRS complexes are wide. The rhythm is:$x$, $x$Third-degree (complete) heart block$x$, $x$✅ Correct answer: Third-degree (complete) heart block
In COMPLETE (third-degree) HEART BLOCK, NO impulses from the atria reach the ventricles. The atria and ventricles beat INDEPENDENTLY: P waves occur regularly (here at 80/min), QRS complexes occur regularly but slower (here 34/min), and there is NO CONSISTENT PR INTERVAL (the P waves "march through" the QRS complexes). WIDE QRS complexes mean the escape rhythm comes from the ventricles (unstable, slow, and dangerous).

❌ Why the other options are wrong:
• Second-degree AV block, Mobitz type I (Wenckebach) — Mobitz I shows progressively lengthening PR intervals until a QRS is dropped.
• Sinus bradycardia — Sinus bradycardia has a P wave before each QRS with a constant PR interval.
• Second-degree AV block, Mobitz type II — Mobitz II shows a constant PR interval with occasional dropped QRS complexes.

⭐ Key point: Treat with atropine (may not work in wide-complex escape), transcutaneous pacing, isoprenaline or adrenaline, and then a permanent pacemaker.$x$, null),
(52, $x$An ECG shows a constant PR interval of 0.20 s. Every few beats, a P wave is suddenly not followed by a QRS, without any progressive PR lengthening beforehand. This rhythm is:$x$, $x$Mobitz type II second-degree AV block — high risk of complete block$x$, $x$✅ Correct answer: Mobitz type II second-degree AV block — high risk of complete block
In MOBITZ TYPE II second-degree AV block, the PR interval is CONSTANT (here 0.20 s), but suddenly a P wave is NOT followed by a QRS (a dropped beat), WITHOUT any progressive PR lengthening beforehand. The block is usually below the AV node (in the His-Purkinje system). It is dangerous because it can suddenly progress to COMPLETE HEART BLOCK.

❌ Why the other options are wrong:
• Mobitz type I (Wenckebach) second-degree AV block — usually benign — Mobitz I (Wenckebach) shows PROGRESSIVE PR lengthening before the dropped beat; it is usually benign.
• First-degree AV block with intermittent sinus arrest — usually benign — First-degree AV block has a prolonged PR interval (over 0.20 s) but NO dropped beats; sinus arrest shows absent P waves.
• Third-degree (complete) heart block with a junctional escape rhythm — Complete heart block shows NO relationship between P waves and QRS complexes.

⭐ Key point: Mobitz II usually needs a permanent pacemaker. Have transcutaneous pacing ready.$x$, null),
(53, $x$A 19-year-old athlete faints during a football match. A harsh ejection systolic murmur at the left sternal edge gets LOUDER on standing and during the Valsalva manoeuvre, and softer on squatting. The most likely diagnosis is:$x$, $x$Hypertrophic obstructive cardiomyopathy$x$, $x$✅ Correct answer: Hypertrophic obstructive cardiomyopathy
HYPERTROPHIC OBSTRUCTIVE CARDIOMYOPATHY (HOCM) is an inherited thickening of the heart muscle, especially the septum, which can block the outflow of blood from the left ventricle. It is a leading cause of SUDDEN DEATH in young ATHLETES. The murmur is a harsh EJECTION SYSTOLIC MURMUR at the left sternal edge. It gets LOUDER when the left ventricle is SMALLER (standing, Valsalva manoeuvre — less blood returning to the heart, so the obstruction is worse) and SOFTER when the ventricle is FULLER (squatting, leg raising).

❌ Why the other options are wrong:
• Dilated cardiomyopathy with low output — Dilated cardiomyopathy causes heart failure symptoms, not a dynamic murmur in a young athlete.
• Mitral valve prolapse with regurgitation — Mitral valve prolapse causes a mid-systolic click and late systolic murmur.
• Calcific aortic valve stenosis — Calcific aortic stenosis usually affects older people, and the murmur gets SOFTER with Valsalva.

⭐ Key point: Advise avoiding competitive sports, screen family members, and consider an ICD for high-risk patients. Avoid dehydration and vasodilators.$x$, null),
(54, $x$A breathless patient has bilateral lung infiltrates and a PaO₂/FiO₂ ratio of 150, an S3 gallop, raised BNP and a pulmonary artery wedge pressure of 28 mmHg. The most likely cause of the infiltrates is:$x$, $x$Cardiogenic (hydrostatic) pulmonary oedema$x$, $x$✅ Correct answer: Cardiogenic (hydrostatic) pulmonary oedema
CARDIOGENIC (HYDROSTATIC) PULMONARY OEDEMA happens when the left heart fails and pressure backs up into the lungs. Clues: an S3 GALLOP (sign of heart failure), RAISED BNP (released by stretched heart muscle), and a HIGH PULMONARY ARTERY WEDGE PRESSURE (PAWP 28 mmHg — normal is 6–12, and ARDS requires it to be below 18). The bilateral infiltrates are from high-pressure fluid leakage.

❌ Why the other options are wrong:
• Transfusion-related acute lung injury — TRALI occurs within 6 hours of transfusion, with a normal PAWP.
• Bilateral bacterial pneumonia — Bilateral pneumonia would cause fever and a normal PAWP.
• Acute respiratory distress syndrome (ARDS) — ARDS requires that the infiltrates are NOT explained by heart failure; a high PAWP and S3 point to cardiogenic oedema.

⭐ Key point: Treat with oxygen/CPAP, diuretics, nitrates, and treat the cause of heart failure.$x$, null),
(55, $x$Five days after a hip replacement, a patient suddenly becomes breathless with pleuritic pain. HR is 130, BP 75/50 mmHg, JVP raised, lungs clear, and echo shows a dilated, poorly contracting right ventricle. The most likely diagnosis and treatment are:$x$, $x$Massive pulmonary embolism — systemic thrombolysis$x$, $x$✅ Correct answer: Massive pulmonary embolism — systemic thrombolysis
Five days after hip replacement (a major risk for clots), sudden breathlessness, pleuritic pain, TACHYCARDIA, HYPOTENSION, RAISED JVP, CLEAR lungs, and an echo showing a DILATED, poorly contracting RIGHT VENTRICLE (the RV is failing against a blocked pulmonary artery) indicate MASSIVE (high-risk) PULMONARY EMBOLISM. With hypotension (shock), the treatment is SYSTEMIC THROMBOLYSIS (e.g. alteplase) to dissolve the clot quickly, unless contraindicated (then surgical or catheter-directed clot removal).

❌ Why the other options are wrong:
• Right ventricular infarction — IV fluids only — RV infarction is caused by coronary artery blockage, usually with ECG changes of inferior MI.
• Cardiac tamponade — pericardiocentesis — Tamponade shows fluid around the heart on echo.
• Tension pneumothorax — needle decompression — Tension pneumothorax shows absent breath sounds and tracheal deviation.

⭐ Key point: Prevent PE after orthopaedic surgery with early mobilisation, compression stockings and anticoagulant prophylaxis (e.g. LMWH).$x$, null),
(56, $x$A patient in shock has cardiac index 1.6 L/min/m², PAWP 24 mmHg, SVR 1,800 dyn·s·cm⁻⁵ and cold, clammy peripheries. The type of shock is:$x$, $x$Cardiogenic shock$x$, $x$✅ Correct answer: Cardiogenic shock
CARDIOGENIC SHOCK means the heart cannot pump enough blood. Findings: LOW CARDIAC INDEX (1.6 L/min/m² — normal is 2.5–4.0), HIGH PAWP (24 mmHg — the left heart is backing up), HIGH SVR (1800 — the body constricts vessels to maintain BP), and COLD, CLAMMY peripheries.

❌ Why the other options are wrong:
• Hypovolaemic shock — Hypovolaemic shock has LOW PAWP (empty heart).
• Obstructive shock from massive PE — Obstructive shock from massive PE has a LOW or normal PAWP (the left heart is underfilled), with a high RV pressure.
• Septic (distributive) shock — Septic shock has a LOW SVR (vasodilation), often with warm peripheries and high cardiac output.

⭐ Key point: Treat with inotropes (e.g. dobutamine), revascularisation if due to MI, and mechanical support (e.g. intra-aortic balloon pump).$x$, null),
(57, $x$A 72-year-old smoker with hypertension has sudden severe back and left flank pain and collapses. BP is 70/40 mmHg, and a tender pulsatile mass is felt in the epigastrium. The most likely diagnosis is:$x$, $x$Ruptured abdominal aortic aneurysm$x$, $x$✅ Correct answer: Ruptured abdominal aortic aneurysm
A RUPTURED ABDOMINAL AORTIC ANEURYSM (AAA) classically occurs in OLDER men who SMOKE and have HYPERTENSION. Features: SUDDEN SEVERE BACK or FLANK PAIN, COLLAPSE, HYPOTENSION (shock from massive bleeding), and a TENDER, PULSATILE abdominal MASS.

❌ Why the other options are wrong:
• Acute pancreatitis — Acute pancreatitis causes epigastric pain radiating to the back, but not a pulsatile mass.
• Perforated peptic ulcer — Perforated ulcer causes sudden abdominal pain with a rigid abdomen, but not a pulsatile mass.
• Left renal colic — Renal colic causes severe loin-to-groin pain, but not shock and a pulsatile mass.

⭐ Key point: Ruptured AAA is a surgical emergency. Use permissive hypotension (systolic around 80–100 mmHg) to reduce bleeding until surgery.$x$, null),
(58, $x$A 65-year-old woman develops chest pain and anterior ST elevation a few hours after hearing that her son has died. Coronary angiography shows normal coronary arteries, and the left ventricle is ballooned at the apex with a hypercontractile base. The diagnosis is:$x$, $x$Takotsubo (stress-induced) cardiomyopathy$x$, $x$✅ Correct answer: Takotsubo (stress-induced) cardiomyopathy
TAKOTSUBO (stress-induced) CARDIOMYOPATHY is a temporary weakness of the heart muscle triggered by severe EMOTIONAL or physical STRESS (here, the death of her son), especially in older women. It mimics a heart attack (chest pain, ST elevation), but CORONARY ARTERIES ARE NORMAL. The LEFT VENTRICLE BALLOONS at the APEX with a HYPERCONTRACTILE BASE (it looks like a Japanese octopus trap, "takotsubo").

❌ Why the other options are wrong:
• Anterior STEMI from LAD occlusion — Anterior STEMI from LAD occlusion would show a blocked artery on angiography.
• Acute pericarditis — Pericarditis causes saddle-shaped ST elevation and positional pain, with no apical ballooning.
• Acute viral myocarditis — Viral myocarditis usually follows a viral illness and doesn't cause typical apical ballooning.

⭐ Key point: Takotsubo usually recovers within weeks with supportive care, but complications (heart failure, arrhythmias, LV thrombus) can occur.$x$, null),
(59, $x$An elderly patient on digoxin and furosemide has nausea, vomiting, confusion, yellow-green tinted vision, a slow irregular pulse and frequent ventricular ectopics (bigeminy). Potassium is 2.9 mmol/L. The most likely diagnosis is:$x$, $x$Digoxin toxicity, made worse by hypokalaemia$x$, $x$✅ Correct answer: Digoxin toxicity, made worse by hypokalaemia
DIGOXIN TOXICITY causes: GI symptoms (nausea, vomiting), CONFUSION, VISUAL DISTURBANCES (yellow-green tinted vision — xanthopsia), and ARRHYTHMIAS (slow irregular pulse, ventricular ectopics, bigeminy, heart block). HYPOKALAEMIA (potassium 2.9 mmol/L — here caused by FUROSEMIDE) MAKES DIGOXIN TOXICITY WORSE, because low potassium allows digoxin to bind more strongly to heart muscle.

❌ Why the other options are wrong:
• Beta-blocker overdose — Beta-blocker overdose causes bradycardia and hypotension, but not yellow-green vision.
• Hyperkalaemia from renal failure — Hyperkalaemia doesn't fit; the potassium here is LOW.
• Hypercalcaemia — Hypercalcaemia can worsen digoxin toxicity, but the main clue here is hypokalaemia and digoxin features.

⭐ Key point: Stop digoxin, correct potassium and magnesium, and give digoxin-specific antibody fragments (Digibind/DigiFab) for life-threatening toxicity.$x$, null),
(60, $x$An ECG shows ST elevation in leads II, III and aVF, with reciprocal ST depression in leads I and aVL. The culprit artery is most likely the:$x$, $x$Right coronary artery$x$, $x$✅ Correct answer: Right coronary artery
An INFERIOR MI shows ST ELEVATION in leads II, III and aVF (which look at the bottom/inferior wall of the heart). RECIPROCAL ST DEPRESSION in leads I and aVL (which look at the opposite, lateral wall) supports it. The inferior wall is supplied by the RIGHT CORONARY ARTERY in about 80–90% of people.

❌ Why the other options are wrong:
• Left main stem — Left main stem occlusion causes widespread ST changes and often ST elevation in aVR.
• Left circumflex artery — The left circumflex artery causes lateral changes (I, aVL, V5–V6), sometimes inferior changes.
• Left anterior descending artery — The LAD causes anterior changes (V1–V4).

⭐ Key point: With inferior MI, record right-sided leads (V4R) to check for RV infarction, and watch for heart block and bradycardia.$x$, null),
(61, $x$An asthmatic patient is exhausted, with SpO₂ 91% on air, a silent chest, peak flow 28% of predicted and a PaCO₂ of 45 mmHg (6.0 kPa). This attack is best classified as:$x$, $x$Life-threatening asthma$x$, $x$✅ Correct answer: Life-threatening asthma
Asthma severity (BTS/SIGN guidelines): LIFE-THREATENING asthma is present if ANY of these: SpO2 below 92%, PEF below 33% of best or predicted, SILENT CHEST, cyanosis, poor respiratory effort, EXHAUSTION, altered consciousness, arrhythmia, hypotension, or a NORMAL PaCO2 (4.6–6.0 kPa / 35–45 mmHg) in a breathless asthmatic. Here: SpO2 91%, silent chest, PEF 28%, exhaustion, PaCO2 45 mmHg (6.0 kPa — "normal", which is dangerous because it shows the patient is tiring).

❌ Why the other options are wrong:
• Acute severe asthma — Acute severe asthma has PEF 33–50%, RR ≥25, HR ≥110, or inability to complete sentences, without life-threatening features.
• Moderate exacerbation — Moderate exacerbation has PEF over 50% with no severe features.
• Near-fatal asthma — NEAR-FATAL asthma is defined by a RAISED PaCO2 (above 6.0 kPa) and/or needing mechanical ventilation.

⭐ Key point: Life-threatening asthma: call ICU early, high-flow oxygen, back-to-back salbutamol and ipratropium, IV hydrocortisone, IV magnesium, and prepare for intubation.$x$, null),
(62, $x$A patient with COPD has pH 7.28, PaCO₂ 70 mmHg and HCO₃⁻ 32 mmol/L. This is best interpreted as:$x$, $x$Acute-on-chronic respiratory acidosis$x$, $x$✅ Correct answer: Acute-on-chronic respiratory acidosis
Step 1: pH 7.28 = ACIDOSIS. Step 2: PaCO2 70 mmHg (high) = RESPIRATORY cause. Step 3: Check compensation using bicarbonate (HCO3⁻). Expected HCO3⁻ (normal 24): in ACUTE respiratory acidosis, HCO3⁻ rises about 1 mmol/L per 10 mmHg rise in PaCO2 → 24 + 3 = 27. In CHRONIC respiratory acidosis, HCO3⁻ rises about 3.5–4 mmol/L per 10 mmHg → 24 + 10.5–12 = about 35–36. The actual HCO3⁻ is 32 — between the acute and chronic values. And the pH (7.28) is lower than expected for chronic compensation. This means a chronic CO2 retainer (COPD) with an ACUTE worsening: ACUTE-ON-CHRONIC RESPIRATORY ACIDOSIS.

❌ Why the other options are wrong:
• Acute uncompensated respiratory acidosis — Acute uncompensated acidosis would show a nearly normal HCO3⁻ (around 26–27).
• Fully compensated respiratory acidosis — Fully compensated acidosis would show a pH within the normal range (7.35–7.45).
• Metabolic alkalosis with respiratory compensation — Metabolic alkalosis would have a high pH (above 7.45).

⭐ Key point: Acute-on-chronic respiratory acidosis in COPD is often treated with controlled oxygen (target SpO2 88–92%) and non-invasive ventilation (NIV) when pH is below 7.35.$x$, null),
(63, $x$A patient's PaO₂ is 75 mmHg on FiO₂ 0.6 with PEEP 10 cmH₂O, and chest X-ray shows bilateral opacities within a week of severe pancreatitis, not explained by heart failure. By the Berlin definition this is:$x$, $x$Moderate ARDS$x$, $x$✅ Correct answer: Moderate ARDS
The BERLIN DEFINITION of ARDS requires: onset WITHIN 1 WEEK of a known insult (here, pancreatitis); BILATERAL OPACITIES on chest X-ray; respiratory failure NOT fully explained by heart failure or fluid overload; and PaO2/FiO2 ratio on PEEP ≥5. Severity: MILD 200–300, MODERATE 100–200, SEVERE ≤100. Calculation: PaO2 75 ÷ FiO2 0.6 = 125. This is MODERATE ARDS.

❌ Why the other options are wrong:
• Mild ARDS — Mild ARDS has a ratio of 200–300.
• Severe ARDS — Severe ARDS has a ratio of 100 or less.
• Not ARDS, because the PaO₂/FiO₂ ratio must be below 100 — ARDS is defined by a ratio of 300 or less (with PEEP ≥5), not below 100.

⭐ Key point: Severe ARDS benefits from prone positioning (at least 16 hours/day) and possibly neuromuscular blockade, alongside lung-protective ventilation.$x$, null),
(64, $x$A tall, thin 20-year-old smoker has sudden left-sided pleuritic chest pain and breathlessness. On the left there is reduced chest expansion, HYPER-resonant percussion and reduced breath sounds; the trachea is central and BP is normal. The most likely diagnosis is:$x$, $x$Primary spontaneous pneumothorax$x$, $x$✅ Correct answer: Primary spontaneous pneumothorax
A PRIMARY SPONTANEOUS PNEUMOTHORAX typically occurs in TALL, THIN, young men who SMOKE, without an underlying lung disease (small blebs at the lung apex burst). Signs: SUDDEN PLEURITIC CHEST PAIN and BREATHLESSNESS, REDUCED chest EXPANSION, HYPER-RESONANT percussion (more air), and REDUCED BREATH SOUNDS on the affected side. The TRACHEA is CENTRAL and BP is NORMAL, so it is NOT a tension pneumothorax.

❌ Why the other options are wrong:
• Left lower lobe pneumonia — Pneumonia causes fever, DULL percussion and bronchial breathing.
• Left lower lobe collapse — Lobar collapse causes DULL percussion and the trachea pulled TOWARDS the affected side.
• Large left pleural effusion — A pleural effusion causes STONY DULL percussion.

⭐ Key point: Small, minimally symptomatic pneumothoraces may be observed; larger or symptomatic ones need needle aspiration or a chest drain. Advise stopping smoking and avoiding flying until resolved.$x$, null),
(65, $x$On examination of the right chest: reduced expansion, STONY dull percussion, absent breath sounds, reduced vocal resonance, and the trachea is pushed to the LEFT. The most likely finding is:$x$, $x$A large right pleural effusion$x$, $x$✅ Correct answer: A large right pleural effusion
A LARGE PLEURAL EFFUSION (fluid in the pleural space) causes: REDUCED expansion, STONY DULL percussion (characteristic of fluid), ABSENT breath sounds, REDUCED vocal resonance (fluid blocks sound), and if large, it PUSHES the TRACHEA AWAY from the affected side (here, to the LEFT).

❌ Why the other options are wrong:
• Right tension pneumothorax — Tension pneumothorax causes HYPER-resonant percussion, not stony dull.
• Consolidation of the right lower lobe — Consolidation causes DULL (not stony dull) percussion, bronchial breathing and increased vocal resonance; the trachea is central.
• Collapse of the right lung — Lung collapse PULLS the trachea TOWARDS the affected side.

⭐ Key point: Pleural fluid may be drained by thoracentesis or a chest drain. Analyse the fluid (protein, LDH, glucose, cells, culture) to find the cause.$x$, null),
(66, $x$A post-operative patient with a weak cough has the trachea pulled to the RIGHT, dull percussion and reduced breath sounds over the right lower chest, and a raised right hemidiaphragm on X-ray. The most likely diagnosis is:$x$, $x$Right lower lobe collapse (atelectasis)$x$, $x$✅ Correct answer: Right lower lobe collapse (atelectasis)
After surgery, a WEAK COUGH allows secretions to block the airways, causing the lung beyond to COLLAPSE (ATELECTASIS). Collapse REDUCES lung volume, so the TRACHEA is PULLED TOWARDS the affected side (here, the RIGHT), the HEMIDIAPHRAGM is RAISED on the same side, and there is DULL percussion with REDUCED breath sounds.

❌ Why the other options are wrong:
• Right-sided tension pneumothorax — Tension pneumothorax pushes the trachea AWAY and causes hyper-resonance.
• Large right-sided pleural effusion — A large effusion pushes the trachea AWAY.
• Right lower lobe consolidation (pneumonia) — Consolidation causes bronchial breathing and increased vocal resonance, with a central trachea.

⭐ Key point: Prevent post-operative atelectasis with good analgesia, early mobilisation, deep breathing, incentive spirometry and chest physiotherapy.$x$, null),
(67, $x$A febrile patient has dull percussion, BRONCHIAL breathing, increased vocal resonance and coarse crackles over the right lower zone, with a central trachea. These signs indicate:$x$, $x$Lobar consolidation$x$, $x$✅ Correct answer: Lobar consolidation
LOBAR CONSOLIDATION (e.g. pneumonia) fills the alveoli with fluid and inflammatory cells, but the airways stay open. Sound travels well through solid lung, causing: DULL percussion, BRONCHIAL BREATHING (harsh breath sounds, like those over the trachea), INCREASED VOCAL RESONANCE, and COARSE CRACKLES. The trachea is CENTRAL (no volume change). FEVER suggests infection.

❌ Why the other options are wrong:
• Pneumothorax — Pneumothorax causes hyper-resonance and reduced breath sounds.
• Lobar collapse — Lobar collapse pulls the trachea towards the affected side, with reduced breath sounds.
• Pleural effusion — Pleural effusion causes stony dull percussion and absent breath sounds, with reduced vocal resonance.

⭐ Key point: Treat pneumonia with antibiotics according to severity (CURB-65 score), oxygen and fluids.$x$, null),
(68, $x$A 60-year-old returned from a hotel stay with air-conditioning 5 days ago. He has high fever, dry cough, confusion, diarrhoea, Na⁺ 126 mmol/L and raised liver enzymes. The most likely organism is:$x$, $x$Legionella pneumophila$x$, $x$✅ Correct answer: Legionella pneumophila
LEGIONELLA PNEUMOPHILA (Legionnaires' disease) grows in water systems such as AIR-CONDITIONING units, cooling towers and hot water systems (e.g. hotels, hospitals). Features: HIGH FEVER, DRY COUGH, CONFUSION, DIARRHOEA, HYPONATRAEMIA (low sodium, here 126), and RAISED LIVER ENZYMES. It is often severe in older people and smokers.

❌ Why the other options are wrong:
• Klebsiella pneumoniae — Klebsiella causes "redcurrant jelly" sputum, often in alcoholics.
• Mycoplasma pneumoniae — Mycoplasma affects younger people, with milder symptoms, and may cause haemolysis or rash.
• Streptococcus pneumoniae — Streptococcus pneumoniae is the commonest cause of pneumonia, with rusty sputum and lobar consolidation, but not usually this combination of features.

⭐ Key point: Diagnose with a urinary Legionella antigen test. Treat with a macrolide (e.g. azithromycin) or a fluoroquinolone. It is not spread person-to-person.$x$, null),
(69, $x$A malnourished alcoholic has high fever and cough with thick, dark 'redcurrant jelly' sputum. Chest X-ray shows right upper lobe consolidation with cavitation and a bulging fissure. The most likely organism is:$x$, $x$Klebsiella pneumoniae$x$, $x$✅ Correct answer: Klebsiella pneumoniae
KLEBSIELLA PNEUMONIAE pneumonia typically affects ALCOHOLICS, diabetics and the malnourished (often after aspiration). Features: HIGH FEVER, cough with thick, dark "REDCURRANT JELLY" sputum, and chest X-ray showing UPPER LOBE CONSOLIDATION with CAVITATION and a BULGING FISSURE (the infected lobe is swollen and heavy).

❌ Why the other options are wrong:
• Mycobacterium tuberculosis — TB causes upper lobe cavitation, but has a slower onset (weeks to months), with night sweats and weight loss.
• Pseudomonas aeruginosa — Pseudomonas usually affects patients in hospital, on ventilators, or with cystic fibrosis.
• Staphylococcus aureus — Staphylococcus aureus causes cavitating pneumonia, often after influenza.

⭐ Key point: Klebsiella can be multidrug-resistant; check sensitivities. Aspiration pneumonia in alcoholics often involves anaerobes too.$x$, null),
(70, $x$A patient admitted with 2 months of cough, haemoptysis, night sweats and weight loss has upper-lobe cavitation on chest X-ray. Until sputum results are back, the correct precaution is:$x$, $x$Airborne: negative-pressure room and N95/FFP3 respirators$x$, $x$✅ Correct answer: Airborne: negative-pressure room and N95/FFP3 respirators
Two months of cough, HAEMOPTYSIS, NIGHT SWEATS, WEIGHT LOSS and UPPER-LOBE CAVITATION strongly suggest PULMONARY TUBERCULOSIS (TB). TB spreads through the AIR in tiny droplet nuclei that stay suspended for a long time. Until sputum tests are back, use AIRBORNE PRECAUTIONS: a NEGATIVE-PRESSURE isolation room (if available) and N95/FFP3 RESPIRATORS for staff.

❌ Why the other options are wrong:
• Droplet: single room and surgical masks within 1 metre — Droplet precautions (surgical masks within 1 metre) are not enough for airborne TB.
• Standard precautions only until a sputum smear is positive — Waiting for a positive smear before isolation risks spreading TB.
• Contact: gloves and gown for any contact with the patient — Contact precautions alone don't prevent airborne spread.

⭐ Key point: Continue isolation until three negative sputum smears or after at least 2 weeks of effective treatment with clinical improvement. Give the patient a surgical mask when outside the room.$x$, null),
(71, $x$A patient with HIV (CD4 count 80 cells/µL) has 3 weeks of dry cough and fever and desaturates on walking. Chest X-ray shows bilateral perihilar 'ground-glass' shadowing, and LDH is high. The most likely diagnosis and treatment are:$x$, $x$Pneumocystis pneumonia — high-dose co-trimoxazole ± steroids$x$, $x$✅ Correct answer: Pneumocystis pneumonia — high-dose co-trimoxazole ± steroids
PNEUMOCYSTIS JIROVECII PNEUMONIA (PCP) is a fungal lung infection that occurs when the CD4 count is very low (usually below 200 cells/µL — here 80). It develops SLOWLY over weeks, with DRY COUGH, fever and breathlessness. A classic sign is DESATURATION ON WALKING (exercise-induced hypoxia), even when the oxygen level at rest looks acceptable. The chest X-ray typically shows BILATERAL PERIHILAR "GROUND-GLASS" shadowing (it may be normal early), and the LDH is often high. Treatment: HIGH-DOSE CO-TRIMOXAZOLE (trimethoprim-sulfamethoxazole) for 21 days, PLUS STEROIDS (prednisolone) if the patient is significantly hypoxic (PaO2 below 70 mmHg / 9.3 kPa), which reduces lung inflammation and death.

❌ Why the other options are wrong:
• CMV pneumonitis — IV ganciclovir with CMV immunoglobulin — CMV pneumonitis is less common and occurs at even lower CD4 counts (usually below 50); PCP is the classic picture here.
• Pneumococcal pneumonia — high-dose IV amoxicillin alone — Pneumococcal pneumonia has a rapid onset (days), with productive cough, high fever and lobar consolidation, not bilateral ground-glass shadowing over weeks.
• Pulmonary tuberculosis — rifampicin-based four-drug therapy — TB in advanced HIV can look atypical, but the slow dry cough, exercise desaturation, perihilar ground-glass change and raised LDH are classic for PCP.

⭐ Key point: Prevent PCP with daily co-trimoxazole prophylaxis when the CD4 count is below 200, and start antiretroviral therapy (usually within 2 weeks of PCP treatment).$x$, null),
(72, $x$A drunk patient vomits and aspirates while lying flat on his back. The lung segment most likely to be affected is the:$x$, $x$Superior (apical) segment of the right lower lobe$x$, $x$✅ Correct answer: Superior (apical) segment of the right lower lobe
When a patient ASPIRATES while LYING FLAT ON THE BACK (supine), gravity carries the vomit into the most DEPENDENT (lowest) parts of the lungs in that position, which are the POSTERIOR segments. The RIGHT main bronchus is WIDER, SHORTER and MORE VERTICAL than the left, so aspirated material more often goes to the right lung. In the supine position, the first posterior branch it meets is the SUPERIOR (apical) SEGMENT OF THE RIGHT LOWER LOBE (also the posterior segment of the right upper lobe).

❌ Why the other options are wrong:
• Basal segments of the left lower lobe — The basal segments of the left lower lobe are affected when the patient aspirates UPRIGHT, and the left side is less common.
• Lingula of the left upper lobe — The lingula (left upper lobe) is an anterior structure, not dependent when supine.
• Right middle lobe — The right middle lobe is affected when aspiration happens in the PRONE position or when upright, not supine.

⭐ Key point: Upright aspiration → right lower lobe basal segments. Supine aspiration → superior segment of the right lower lobe and posterior segment of the right upper lobe.$x$, null),
(73, $x$Two days after a closed fracture of the femoral shaft, a young man becomes confused and hypoxaemic, with a petechial rash over the axillae, chest and conjunctivae. The most likely diagnosis is:$x$, $x$Fat embolism syndrome$x$, $x$✅ Correct answer: Fat embolism syndrome
FAT EMBOLISM SYNDROME typically occurs 24–72 HOURS after a fracture of a LONG BONE (especially the femur) or the pelvis. Fat droplets from the bone marrow enter the circulation and lodge in small vessels in the lungs, brain and skin, causing inflammation. The classic triad is: RESPIRATORY problems (HYPOXAEMIA, breathlessness), NEUROLOGICAL changes (CONFUSION, drowsiness, seizures), and a PETECHIAL RASH (especially over the AXILLAE, CHEST, neck and CONJUNCTIVAE). The rash is pathognomonic but appears in only about half of patients.

❌ Why the other options are wrong:
• Hypovolaemic shock from concealed bleeding — Hypovolaemic shock from bleeding could cause confusion, but not a petechial rash and hypoxaemia with these features.
• Pulmonary thromboembolism — Pulmonary embolism causes hypoxia and breathlessness, but not a petechial rash.
• Septic shock — Septic shock causes fever, hypotension and possibly a rash, but the timing after a femoral fracture and this specific pattern point to fat embolism.

⭐ Key point: Prevention: early immobilisation and fixation of long bone fractures. Treatment is supportive (oxygen, ventilation if needed, fluids). Most patients recover.$x$, null),
(74, $x$A patient with a known LEFT upper lobe cavity suddenly coughs up about 300 mL of fresh blood. While preparing for definitive airway management, the patient should be positioned:$x$, $x$Lying on the LEFT side (bleeding side down)$x$, $x$✅ Correct answer: Lying on the LEFT side (bleeding side down)
In MASSIVE HAEMOPTYSIS (coughing up large amounts of blood, e.g. 300 mL), the danger is not blood loss itself, but DROWNING — blood filling and blocking the airways of the GOOD lung, causing asphyxia. The patient should be positioned LYING ON THE SIDE OF THE BLEEDING (here, the LEFT side DOWN). This uses gravity to keep blood in the bleeding (left) lung and stops it from spilling over into the healthy (right) lung, protecting gas exchange. Then prepare for definitive airway management (e.g. intubation, possibly into the healthy lung), bronchoscopy, or bronchial artery embolisation.

❌ Why the other options are wrong:
• Prone — Prone positioning does not protect the healthy lung and makes airway management difficult.
• Flat on the back — Lying flat on the back allows blood to spread into both lungs.
• Lying on the RIGHT side (bleeding side up) — Lying on the RIGHT side (bleeding side UP) would cause blood to drain into the healthy right lung, causing asphyxia.

⭐ Key point: "BLEEDING SIDE DOWN" in massive haemoptysis. Give oxygen, have strong suction ready, cross-match blood, and correct any clotting problem.$x$, null),
(75, $x$A 65-year-old long-term smoker has FEV₁ 1.2 L and FVC 3.0 L (FEV₁/FVC 40%), with no significant improvement after a bronchodilator. The most likely diagnosis is:$x$, $x$Chronic obstructive pulmonary disease$x$, $x$✅ Correct answer: Chronic obstructive pulmonary disease
Spirometry measures how much and how fast a person can breathe out. FEV1 is the volume breathed out in the first second, and FVC is the total volume breathed out. An FEV1/FVC RATIO BELOW 0.7 (70%) shows OBSTRUCTION (narrow airways slow down the outflow). Here, the ratio is 40%, which is severe obstruction. "NO SIGNIFICANT IMPROVEMENT AFTER A BRONCHODILATOR" means the obstruction is NOT REVERSIBLE. In a long-term SMOKER over 40, this is typical of CHRONIC OBSTRUCTIVE PULMONARY DISEASE (COPD).

❌ Why the other options are wrong:
• Asthma — Asthma shows obstruction that IS significantly reversible after a bronchodilator (usually an FEV1 increase of more than 12% and 200 mL).
• Idiopathic pulmonary fibrosis — Pulmonary fibrosis causes a RESTRICTIVE pattern (both FEV1 and FVC reduced, but the ratio is normal or high).
• Obesity hypoventilation syndrome — Obesity hypoventilation causes a restrictive pattern and high CO2, not a severely reduced FEV1/FVC ratio.

⭐ Key point: COPD severity is graded by FEV1 (% predicted). Smoking cessation is the most effective intervention to slow progression.$x$, null),
(76, $x$A 68-year-old has progressive breathlessness over 2 years, finger clubbing, and fine bibasal 'Velcro-like' end-inspiratory crackles. Spirometry is restrictive and CT shows basal honeycombing. The most likely diagnosis is:$x$, $x$Idiopathic pulmonary fibrosis$x$, $x$✅ Correct answer: Idiopathic pulmonary fibrosis
IDIOPATHIC PULMONARY FIBROSIS (IPF) is progressive scarring of the lungs of unknown cause, usually in people over 60. Features: PROGRESSIVE BREATHLESSNESS over months to years, dry cough, FINGER CLUBBING, FINE BIBASAL "VELCRO-LIKE" END-INSPIRATORY CRACKLES (from stiff alveoli popping open), a RESTRICTIVE pattern on spirometry (small lung volumes), and CT showing BASAL HONEYCOMBING (cystic scarring at the bases).

❌ Why the other options are wrong:
• Chronic heart failure — Heart failure causes basal crackles, but not clubbing or honeycombing on CT, and usually responds to diuretics.
• Bronchiectasis — Bronchiectasis causes chronic productive cough with copious sputum and coarse crackles, with dilated airways on CT.
• COPD — COPD causes an OBSTRUCTIVE pattern and does not cause clubbing (clubbing in COPD suggests lung cancer).

⭐ Key point: IPF treatment includes antifibrotic drugs (pirfenidone, nintedanib), oxygen, pulmonary rehabilitation and lung transplant in selected patients.$x$, null),
(77, $x$A pleural tap shows pleural protein 40 g/L (serum 60 g/L) and pleural LDH 300 IU/L (serum 400 IU/L; upper limit of normal 220). By Light's criteria the fluid is:$x$, $x$An exudate — e.g. parapneumonic effusion, malignancy or TB$x$, $x$✅ Correct answer: An exudate — e.g. parapneumonic effusion, malignancy or TB
LIGHT'S CRITERIA classify a pleural effusion as an EXUDATE if ANY of these are met: (1) pleural protein ÷ serum protein MORE THAN 0.5; (2) pleural LDH ÷ serum LDH MORE THAN 0.6; (3) pleural LDH MORE THAN TWO-THIRDS of the upper limit of normal serum LDH. Here: protein ratio = 40 ÷ 60 = 0.67 (above 0.5 ✓); LDH ratio = 300 ÷ 400 = 0.75 (above 0.6 ✓); pleural LDH 300 > 2/3 × 220 = 147 ✓. All three criteria are met, so it's an EXUDATE. Exudates are caused by inflammation, infection or cancer (leaky capillaries or blocked lymphatics), e.g. PARAPNEUMONIC effusion, MALIGNANCY or TUBERCULOSIS (very common in Nigeria).

❌ Why the other options are wrong:
• A transudate — e.g. cirrhosis — Cirrhosis causes a TRANSUDATE (low protein, low LDH).
• A transudate — e.g. heart failure — Heart failure causes a TRANSUDATE (pressure-related).
• An empyema, because the protein is above 30 g/L — An empyema is pus in the pleural space (thick, cloudy, with low pH and glucose, and organisms). A protein above 30 g/L alone does not define empyema.

⭐ Key point: Further tests on pleural fluid: cell count, Gram stain and culture, AFB and TB tests, cytology (cancer cells), pH and glucose.$x$, null),
(78, $x$A 35-year-old has a severe sore throat, fever, drooling, a muffled 'hot potato' voice and soft inspiratory stridor. He sits leaning forward and cannot swallow his saliva. The most likely diagnosis and key nursing action are:$x$, $x$Epiglottitis — keep upright, don't examine the throat, call airway help$x$, $x$✅ Correct answer: Epiglottitis — keep upright, don't examine the throat, call airway help
ACUTE EPIGLOTTITIS (in adults, called supraglottitis) is a bacterial infection causing rapid swelling of the epiglottis, which can COMPLETELY BLOCK THE AIRWAY. Features: severe SORE THROAT, FEVER, DROOLING (can't swallow saliva), a MUFFLED "HOT POTATO" VOICE, STRIDOR, and SITTING UPRIGHT, LEANING FORWARD (tripod position) to keep the airway open. Key nursing actions: KEEP THE PATIENT UPRIGHT and calm, DO NOT EXAMINE THE THROAT (this can trigger complete obstruction), give oxygen, and CALL FOR EXPERT AIRWAY HELP (anaesthetist and ENT) immediately. The airway may need to be secured in theatre.

❌ Why the other options are wrong:
• Acute asthma — salbutamol nebuliser with the patient lying flat — Asthma causes wheeze, not drooling and muffled voice; lying flat would worsen breathing.
• Viral croup — nebulised adrenaline, oral dexamethasone, then discharge — Croup is mostly a childhood viral illness with a barking cough, and discharging a patient with stridor and drooling would be dangerous.
• Quinsy — examine the throat with a tongue depressor and drain it — Quinsy (peritonsillar abscess) causes trismus and a muffled voice, but examining the throat with a tongue depressor in suspected epiglottitis can cause complete obstruction.

⭐ Key point: Give IV antibiotics (e.g. ceftriaxone) once the airway is safe. Have emergency airway equipment, including surgical airway (cricothyroidotomy) kit, ready.$x$, null),
(79, $x$A 55-year-old on lisinopril develops rapidly increasing swelling of the lips and tongue, with no urticaria, no itch and no wheeze. BP is normal. The most likely diagnosis is:$x$, $x$ACE-inhibitor (bradykinin) angioedema$x$, $x$✅ Correct answer: ACE-inhibitor (bradykinin) angioedema
ACE INHIBITORS (e.g. lisinopril, enalapril) block the enzyme that breaks down BRADYKININ. Bradykinin builds up, causing blood vessels to leak and producing ANGIOEDEMA: rapid, deep SWELLING of the LIPS, TONGUE, face or throat. It is NOT an allergic (histamine) reaction, so there is NO URTICARIA (hives), NO ITCH and NO WHEEZE, and BP is usually normal. It can happen at any time, even after years of taking the drug. It is more common in people of African descent. The swelling can block the airway.

❌ Why the other options are wrong:
• Ludwig's angina (floor-of-mouth sepsis) — Ludwig's angina is a severe infection of the floor of the mouth (usually from a dental infection), with fever and a hard swollen neck.
• Anaphylaxis (IgE-mediated reaction) — Anaphylaxis is an allergic reaction with urticaria, itching, wheeze, and often hypotension.
• Hereditary C1-esterase angioedema — Hereditary C1-esterase angioedema is a genetic condition with recurrent swelling, usually starting in childhood or adolescence, often with a family history.

⭐ Key point: Stop the ACE inhibitor for life. Protect the airway (may need early intubation). Adrenaline, antihistamines and steroids are often less effective; icatibant or fresh frozen plasma may help.$x$, null),
(80, $x$A patient with an exacerbation of COPD is alert, with RR 28, pH 7.30, PaCO₂ 62 mmHg and SpO₂ 86% after nebulisers and steroids. The most appropriate next step is:$x$, $x$Start NIV (BiPAP) with oxygen titrated to SpO₂ 88–92%$x$, $x$✅ Correct answer: Start NIV (BiPAP) with oxygen titrated to SpO₂ 88–92%
This COPD patient has an ACUTE RESPIRATORY ACIDOSIS (pH 7.30, PaCO2 62 mmHg) and a high respiratory rate despite initial treatment (nebulisers and steroids). This is the main indication for NON-INVASIVE VENTILATION (NIV, BiPAP): pH below 7.35 and PaCO2 above 45 mmHg (6 kPa) after standard medical treatment. NIV supports breathing, reduces the work of breathing, and helps blow off CO2. Oxygen should be TITRATED to a TARGET SpO2 of 88–92%, because too much oxygen can worsen CO2 retention in some COPD patients. The patient is ALERT, so can protect the airway and cooperate with NIV.

❌ Why the other options are wrong:
• Give 15 L/min via non-rebreather to keep SpO₂ above 98% — High-flow oxygen to keep SpO2 above 98% can worsen CO2 retention and acidosis in COPD.
• Intubate and ventilate immediately in the emergency room — Immediate intubation is not needed; NIV reduces the need for intubation and mortality. Intubation is for NIV failure or contraindications.
• Continue nebulisers only and repeat the gas in 12 hours — Waiting 12 hours without ventilatory support risks worsening acidosis. Reassess blood gases within 1–2 hours of starting NIV.

⭐ Key point: NIV contraindications include: inability to protect the airway, vomiting, recent facial or upper GI surgery, untreated pneumothorax, and severe haemodynamic instability.$x$, null),
(81, $x$Two weeks after a bout of diarrhoea, a 30-year-old develops symmetrical weakness that started in the legs and is ascending, with absent reflexes and mild tingling. CSF shows protein 2.1 g/L and 2 white cells/µL. The diagnosis and the key nursing monitoring are:$x$, $x$Guillain–Barré syndrome — regular forced vital capacity checks$x$, $x$✅ Correct answer: Guillain–Barré syndrome — regular forced vital capacity checks
GUILLAIN-BARRÉ SYNDROME (GBS) is an autoimmune attack on the peripheral nerves, often 1–4 WEEKS after an infection (e.g. DIARRHOEA from Campylobacter jejuni, or a respiratory infection). Features: SYMMETRICAL WEAKNESS that starts in the LEGS and ASCENDS, ABSENT REFLEXES, mild sensory symptoms (tingling), and CSF showing HIGH PROTEIN with NORMAL white cells (albuminocytological dissociation). The key nursing monitoring is FORCED VITAL CAPACITY (FVC) checks, because weakness can spread to the breathing muscles. An FVC below 20 mL/kg (or falling rapidly) indicates the need for ICU admission and possibly ventilation.

❌ Why the other options are wrong:
• Myasthenia gravis — regular checks of ptosis and diplopia — Myasthenia gravis causes fatigable weakness with ptosis and double vision, with normal reflexes.
• Transverse myelitis — regular checks for a sensory level — Transverse myelitis causes a spinal cord lesion with a sensory LEVEL and bladder problems.
• Botulism — regular checks of pupil size and reactivity — Botulism causes DESCENDING paralysis starting with the eyes and throat, with dilated pupils.

⭐ Key point: SpO2 and blood gases change late in GBS. Also monitor for autonomic instability (BP swings, arrhythmias) and swallowing difficulty.$x$, null),
(82, $x$A patient with myasthenia gravis took extra doses of pyridostigmine and now has worsening weakness with small pupils, sweating, excess saliva, abdominal cramps, diarrhoea and muscle fasciculations. The most likely problem is:$x$, $x$Cholinergic crisis$x$, $x$✅ Correct answer: Cholinergic crisis
PYRIDOSTIGMINE treats myasthenia gravis by increasing ACETYLCHOLINE at the neuromuscular junction. Too much causes a CHOLINERGIC CRISIS: excess acetylcholine overstimulates muscles (causing FASCICULATIONS and then WEAKNESS, which can affect breathing) and the parasympathetic system ("SLUDGE": Salivation, Lacrimation, Urination, Defecation/DIARRHOEA, GI cramps, Emesis; plus SMALL PUPILS (miosis), SWEATING and bradycardia).

❌ Why the other options are wrong:
• Guillain–Barré syndrome — Guillain-Barré syndrome causes ascending weakness, not these cholinergic features.
• Myasthenic crisis — Myasthenic crisis is worsening weakness from too LITTLE treatment (e.g. infection, missed doses); it lacks the cholinergic signs.
• Lambert–Eaton myasthenic syndrome — Lambert-Eaton syndrome causes proximal weakness that improves with use, often with lung cancer.

⭐ Key point: Treat cholinergic crisis by stopping pyridostigmine, giving atropine for the muscarinic effects, and supporting breathing (may need ventilation).$x$, null),
(83, $x$After eating home-canned food, a patient develops double vision, drooping eyelids, slurred speech and difficulty swallowing, followed by weakness spreading DOWNWARDS to the arms. The pupils are dilated and poorly reactive, and sensation is normal. The most likely diagnosis is:$x$, $x$Botulism$x$, $x$✅ Correct answer: Botulism
BOTULISM is caused by a toxin from Clostridium botulinum, often in HOME-CANNED or preserved foods. The toxin blocks acetylcholine release at nerve endings. Features: a DESCENDING PARALYSIS starting with the CRANIAL NERVES (DOUBLE VISION, DROOPING EYELIDS, SLURRED SPEECH, DIFFICULTY SWALLOWING), then spreading DOWN to the arms, trunk and legs. PUPILS are often DILATED and poorly reactive, and SENSATION is NORMAL. The patient is usually alert, with no fever.

❌ Why the other options are wrong:
• Myasthenia gravis — Myasthenia gravis causes fatigable weakness, but pupils are normal and it is not linked to food.
• Guillain–Barré syndrome — GBS causes ASCENDING weakness and often sensory symptoms, with normal pupils.
• Miller Fisher syndrome — Miller Fisher syndrome (a GBS variant) causes ophthalmoplegia, ataxia and absent reflexes, but not usually dilated pupils with descending weakness after food.

⭐ Key point: Treat with botulinum antitoxin early, supportive care, and monitor FVC (may need ventilation). Notify public health — other people may have eaten the same food.$x$, null),
(84, $x$A patient with a head injury has a left dilated pupil. Two hours later BP rises from 130/80 to 190/70 mmHg, the pulse falls from 90 to 48, and breathing becomes irregular. These changes represent:$x$, $x$Cushing's triad of raised intracranial pressure$x$, $x$✅ Correct answer: Cushing's triad of raised intracranial pressure
CUSHING'S TRIAD is a LATE sign of severely RAISED INTRACRANIAL PRESSURE (ICP), showing the brainstem is being compressed (herniation is imminent): (1) RISING SYSTOLIC BP with a WIDENING PULSE PRESSURE (190/70 — the body raises BP to push blood into the squeezed brain); (2) BRADYCARDIA (pulse falls to 48 — a reflex response to the high BP and brainstem compression); (3) IRREGULAR BREATHING (from brainstem compression). The dilated pupil (third nerve compression) also indicates herniation.

❌ Why the other options are wrong:
• Beck's triad of cardiac tamponade — Beck's triad (tamponade) involves hypotension, raised JVP and muffled heart sounds.
• Autonomic dysreflexia from a full bladder — Autonomic dysreflexia occurs in spinal injury above T6, triggered by stimuli such as a full bladder.
• Neurogenic shock from cord injury — Neurogenic shock causes LOW BP and bradycardia from loss of sympathetic tone, not high BP.

⭐ Key point: Cushing's triad is a neurosurgical emergency: elevate the head of the bed 30°, ensure oxygenation and normocapnia, give osmotic therapy (mannitol or hypertonic saline), and arrange urgent CT and surgery.$x$, null),
(85, $x$A patient with a T4 spinal cord injury suddenly has a pounding headache, BP 210/110 mmHg, pulse 50, a flushed and sweaty face above the injury, and pale, cool skin below it. The FIRST nursing action is to:$x$, $x$Sit the patient up and check the bladder and catheter$x$, $x$✅ Correct answer: Sit the patient up and check the bladder and catheter
AUTONOMIC DYSREFLEXIA occurs in spinal cord injuries at or above T6. A stimulus below the injury (most commonly a FULL BLADDER or BLOCKED CATHETER, or constipation) triggers a massive sympathetic response below the injury, causing SEVERE HYPERTENSION. The body tries to lower the BP with a slow heart rate (BRADYCARDIA) and vasodilation above the injury (FLUSHED, SWEATY FACE, POUNDING HEADACHE), but the signals cannot get through the damaged cord, so the skin below stays PALE and cool. The FIRST nursing action is to SIT THE PATIENT UP (to lower BP through gravity) and CHECK THE BLADDER and CATHETER (for blockage or kinks) to remove the trigger.

❌ Why the other options are wrong:
• Give IV atropine first to treat the slow heart rate — Atropine does not treat the cause; the bradycardia is a response to the high BP.
• Give IV labetalol first, then look for the cause later — Antihypertensives may be needed if BP stays high, but the first step is to sit up and remove the cause.
• Lay the patient flat with the legs raised to restore flow — Lying flat with legs raised would further increase BP.

⭐ Key point: Other triggers: constipation, tight clothing, pressure sores, ingrown toenails. Educate the patient and family to recognise and treat it.$x$, null),
(86, $x$After a C5 spinal cord injury from a fall, a patient has BP 75/40 mmHg, pulse 48, and warm, dry, pink peripheries. The most likely type of shock is:$x$, $x$Neurogenic shock$x$, $x$✅ Correct answer: Neurogenic shock
NEUROGENIC SHOCK occurs after spinal cord injuries above T6 (here, C5). The injury cuts off the SYMPATHETIC nervous system, causing loss of blood vessel tone (VASODILATION, causing HYPOTENSION) and unopposed parasympathetic action on the heart (BRADYCARDIA). Because the vessels are dilated, the skin is WARM, DRY and PINK (unlike other types of shock, which cause cold, clammy skin).

❌ Why the other options are wrong:
• Hypovolaemic shock — Hypovolaemic shock causes TACHYCARDIA and COLD, CLAMMY skin.
• Septic shock — Septic shock usually causes tachycardia and fever.
• Spinal shock — SPINAL SHOCK is a temporary loss of all reflexes below the injury (flaccid paralysis), not a type of circulatory shock.

⭐ Key point: Treat neurogenic shock with careful fluids (exclude bleeding first), vasopressors (e.g. noradrenaline), and atropine for symptomatic bradycardia.$x$, null),
(87, $x$A young man is hit on the side of the head with a stick, briefly loses consciousness, then is lucid and talking for 2 hours before rapidly deteriorating with a dilated pupil on the side of the injury. CT shows a biconvex (lens-shaped) collection. The diagnosis is:$x$, $x$Extradural haematoma (middle meningeal artery)$x$, $x$✅ Correct answer: Extradural haematoma (middle meningeal artery)
An EXTRADURAL (epidural) HAEMATOMA is bleeding between the skull and the dura, usually from the MIDDLE MENINGEAL ARTERY after a blow to the SIDE of the head (temporal bone fracture). Classic course: brief LOSS OF CONSCIOUSNESS, then a LUCID INTERVAL (the patient seems well for hours), then RAPID DETERIORATION as the arterial blood builds up, with a DILATED PUPIL on the same side (third nerve compression). CT shows a BICONVEX (LENS-SHAPED) collection, because the dura is stuck firmly to the skull at the sutures, limiting spread.

❌ Why the other options are wrong:
• Acute subdural haematoma (bridging veins) — An acute subdural haematoma (from bridging veins) is CRESCENT-shaped and usually follows more severe injury.
• Traumatic subarachnoid haemorrhage — Traumatic subarachnoid haemorrhage shows blood in the sulci and cisterns, not a lens-shaped collection.
• Diffuse axonal injury from shearing — Diffuse axonal injury causes immediate, prolonged coma, often with a normal or near-normal CT.

⭐ Key point: Extradural haematoma is a neurosurgical emergency; prompt surgery has an excellent outcome.$x$, null),
(88, $x$A 78-year-old alcoholic on warfarin has 3 weeks of fluctuating confusion, headache and drowsiness. He had a minor fall a month ago. CT shows a crescent-shaped collection that is darker (hypodense) than the brain. The diagnosis is:$x$, $x$Chronic subdural haematoma$x$, $x$✅ Correct answer: Chronic subdural haematoma
A CHRONIC SUBDURAL HAEMATOMA is slow bleeding from torn BRIDGING VEINS between the brain and the dura. Risk factors: ELDERLY people (brain shrinkage stretches the veins), ALCOHOLICS, people on ANTICOAGULANTS (warfarin), and recurrent falls. Often follows a MINOR FALL weeks earlier. Symptoms are gradual and FLUCTUATING: confusion, headache, drowsiness, personality change. CT shows a CRESCENT-shaped collection that is DARKER (HYPODENSE) than the brain (old blood).

❌ Why the other options are wrong:
• Subarachnoid haemorrhage — SAH causes a sudden severe headache, with blood in the subarachnoid space.
• Acute extradural haematoma — An acute extradural haematoma is lens-shaped and bright (hyperdense), with rapid deterioration.
• Normal pressure hydrocephalus — Normal pressure hydrocephalus causes dementia, gait problems and incontinence, with enlarged ventricles.

⭐ Key point: Reverse anticoagulation (vitamin K and prothrombin complex concentrate) and arrange neurosurgical drainage (burr holes).$x$, null),
(89, $x$A 40-year-old has a sudden 'worst ever' headache that reached maximum intensity within a minute, with neck stiffness and photophobia. A CT head 14 hours after onset is normal. The next investigation is:$x$, $x$Lumbar puncture for xanthochromia$x$, $x$✅ Correct answer: Lumbar puncture for xanthochromia
A sudden, severe "THUNDERCLAP" headache (maximum within a minute) with NECK STIFFNESS and PHOTOPHOBIA suggests SUBARACHNOID HAEMORRHAGE (SAH). CT is very sensitive within the first 6 hours, but sensitivity FALLS over time. If CT is normal more than 6 hours after onset (here, 14 hours), the next step is LUMBAR PUNCTURE (at least 12 hours after onset) to look for XANTHOCHROMIA (yellow CSF from broken-down red cells), which confirms SAH.

❌ Why the other options are wrong:
• MRI brain with gadolinium contrast — MRI may detect SAH, but LP for xanthochromia is the standard next investigation.
• Electroencephalogram to exclude seizure — EEG is for seizures.
• Repeat non-contrast CT after 48 hours — Waiting 48 hours risks a fatal rebleed.

⭐ Key point: If SAH is confirmed, arrange CT angiography to find the aneurysm, and give nimodipine.$x$, null),
(90, $x$Six days after clipping of a ruptured aneurysm (SAH), a patient becomes newly confused with a right-sided weakness. Repeat CT shows no rebleed and no hydrocephalus. The most likely cause, and the drug given from admission to reduce this risk, are:$x$, $x$Delayed cerebral ischaemia from vasospasm — oral nimodipine$x$, $x$✅ Correct answer: Delayed cerebral ischaemia from vasospasm — oral nimodipine
DELAYED CEREBRAL ISCHAEMIA (DCI) from CEREBRAL VASOSPASM (narrowing of brain arteries) is a major complication of SAH. It usually occurs between DAYS 4 and 14, causing NEW CONFUSION or FOCAL NEUROLOGICAL DEFICITS (e.g. right-sided weakness). ORAL NIMODIPINE (a calcium channel blocker, 60 mg every 4 hours for 21 days) is given FROM ADMISSION to reduce the risk of poor outcome from DCI.

❌ Why the other options are wrong:
• Hydrocephalus — acetazolamide — Hydrocephalus is excluded by the CT.
• Rebleeding — tranexamic acid — Rebleeding is excluded by the CT (and is unlikely after clipping).
• Hyponatraemia from SIADH — strict fluid restriction — Hyponatraemia in SAH is often due to cerebral salt wasting; fluid restriction is harmful because it increases vasospasm risk.

⭐ Key point: Maintain normal blood volume (euvolaemia), normal sodium and adequate BP. Avoid hypotension.$x$, null),
(91, $x$A right-handed patient suddenly develops weakness of the right face and arm (more than the leg), right-sided sensory loss and expressive and receptive aphasia. The artery most likely blocked is the:$x$, $x$Left middle cerebral artery$x$, $x$✅ Correct answer: Left middle cerebral artery
The MIDDLE CEREBRAL ARTERY (MCA) supplies the side of the brain that controls the FACE and ARM (more than the leg) and sensation. The LEFT hemisphere controls the RIGHT side of the body, and in right-handed people, it contains the LANGUAGE CENTRES (Broca's area for expression, Wernicke's area for understanding). So a LEFT MCA blockage causes: RIGHT face and arm weakness (more than the leg), RIGHT-sided sensory loss, and EXPRESSIVE AND RECEPTIVE APHASIA (global aphasia).

❌ Why the other options are wrong:
• Basilar artery — Basilar artery occlusion causes brainstem signs (e.g. coma, quadriplegia, cranial nerve problems).
• Left anterior cerebral artery — The anterior cerebral artery mainly affects the LEG more than the arm.
• Right middle cerebral artery — A RIGHT MCA stroke would cause LEFT-sided weakness and neglect, not aphasia (in right-handed people).

⭐ Key point: Time is brain: check eligibility for thrombolysis (within 4.5 hours) or thrombectomy.$x$, null),
(92, $x$A patient develops sudden vertigo, vomiting, difficulty swallowing and a hoarse voice. There is loss of pain and temperature sensation on the LEFT side of the face and the RIGHT side of the body, a left Horner's syndrome and left-sided ataxia. The likely lesion is:$x$, $x$Left lateral medullary infarct (PICA / vertebral)$x$, $x$✅ Correct answer: Left lateral medullary infarct (PICA / vertebral)
This is LATERAL MEDULLARY (WALLENBERG) SYNDROME, caused by blockage of the POSTERIOR INFERIOR CEREBELLAR ARTERY (PICA) or the VERTEBRAL artery. Features: VERTIGO, VOMITING, DIFFICULTY SWALLOWING and HOARSE VOICE (nucleus ambiguus), loss of pain and temperature on the SAME side of the face (LEFT) and the OPPOSITE side of the body (RIGHT) — "crossed" sensory loss, same-side HORNER'S syndrome (LEFT), and same-side ATAXIA (LEFT). Limb strength is usually normal.

❌ Why the other options are wrong:
• Left middle cerebral artery territory infarct — A left MCA infarct would cause right-sided weakness and aphasia, without crossed sensory loss.
• Right internal capsule lacunar infarct — A right internal capsule lacunar infarct would cause pure motor or sensory loss on the left side, without brainstem signs.
• Basilar artery occlusion with locked-in state — Basilar occlusion with locked-in syndrome causes quadriplegia with preserved consciousness.

⭐ Key point: Patients are at risk of aspiration; assess swallowing before giving anything by mouth.$x$, null),
(93, $x$After a brainstem stroke, a patient cannot move any limb or speak, but is fully awake and aware and can blink and move the eyes vertically on command. This is:$x$, $x$Locked-in syndrome$x$, $x$✅ Correct answer: Locked-in syndrome
LOCKED-IN SYNDROME is caused by damage to the front (ventral) part of the PONS (usually basilar artery stroke). The patient is FULLY AWAKE and AWARE (the parts of the brain controlling consciousness are spared) but CANNOT MOVE ANY LIMB or SPEAK (paralysis of all voluntary muscles). They can usually BLINK and move the EYES VERTICALLY, which can be used to communicate.

❌ Why the other options are wrong:
• Brainstem death — Brainstem death means no brainstem function and no consciousness.
• Akinetic mutism — Akinetic mutism patients are awake but lack motivation to move or speak; they are not truly paralysed.
• Persistent vegetative state — Persistent vegetative state patients have sleep–wake cycles but no awareness.

⭐ Key point: Always speak to these patients as fully aware. Set up a communication system using eye movements or blinks.$x$, null),
(94, $x$A patient is still having a generalised seizure 10 minutes after two adequate IV doses of lorazepam. The recommended next step is:$x$, $x$A second-line IV drug, e.g. levetiracetam 60 mg/kg$x$, $x$✅ Correct answer: A second-line IV drug, e.g. levetiracetam 60 mg/kg
STATUS EPILEPTICUS is a seizure lasting more than 5 minutes, or repeated seizures without recovery. First-line treatment is BENZODIAZEPINES (e.g. lorazepam, up to 2 doses). If the seizure continues after 2 adequate doses, give a SECOND-LINE IV antiseizure drug: LEVETIRACETAM (60 mg/kg, max 4.5 g), phenytoin/fosphenytoin, or sodium valproate.

❌ Why the other options are wrong:
• IV haloperidol to control the associated agitation — Haloperidol can lower the seizure threshold and doesn't stop seizures.
• Oral carbamazepine given down a nasogastric tube — Oral carbamazepine acts too slowly and can't be given safely during a seizure.
• A third IV dose of lorazepam 4 mg straight away — More than 2 doses of benzodiazepines increases the risk of respiratory depression without improving seizure control.

⭐ Key point: If seizures continue after second-line drugs (refractory status), proceed to general anaesthesia (e.g. propofol, midazolam, thiopental) with intubation and EEG monitoring.$x$, null),
(95, $x$A student has fever, headache, neck stiffness, a purpuric rash that does not blanch under a glass, and BP 85/50 mmHg. The priority action is:$x$, $x$Give IV ceftriaxone immediately, before any LP or CT$x$, $x$✅ Correct answer: Give IV ceftriaxone immediately, before any LP or CT
Fever, headache, neck stiffness, and a NON-BLANCHING PURPURIC RASH with HYPOTENSION strongly suggest MENINGOCOCCAL SEPSIS and MENINGITIS. This can kill within hours. The priority is to give IV CEFTRIAXONE (or benzylpenicillin) IMMEDIATELY — before any lumbar puncture or CT — and start resuscitation (fluids) for shock. Take blood cultures if this doesn't delay antibiotics.

❌ Why the other options are wrong:
• Do a lumbar puncture first to identify the organism — Lumbar puncture is CONTRAINDICATED in shock and coagulopathy, and delays treatment.
• Wait for blood culture results to choose the antibiotic — Waiting for culture results is fatal.
• Do a CT head first, then give antibiotics if it is clear — CT before antibiotics delays treatment.

⭐ Key point: Give close contacts antibiotic prophylaxis (ciprofloxacin or rifampicin) and notify public health.$x$, null),
(96, $x$A farmer with 3 weeks of headache, fever and weight loss develops a sixth cranial nerve palsy. CSF shows raised pressure, lymphocytes, protein 2.5 g/L and a CSF:blood glucose ratio of 0.25. The most likely diagnosis is:$x$, $x$Tuberculous meningitis$x$, $x$✅ Correct answer: Tuberculous meningitis
TUBERCULOUS MENINGITIS (TBM) has a SLOW onset (weeks), with HEADACHE, FEVER, WEIGHT LOSS, and often CRANIAL NERVE PALSIES (commonly the sixth nerve, from thick exudate at the base of the brain). CSF: RAISED PRESSURE, LYMPHOCYTES, VERY HIGH PROTEIN (above 1–2 g/L) and VERY LOW GLUCOSE (CSF:blood ratio below 0.5, here 0.25).

❌ Why the other options are wrong:
• Viral meningitis — Viral meningitis has lymphocytes, but protein is only mildly raised and glucose is NORMAL.
• Subarachnoid haemorrhage — SAH causes a sudden headache with red cells or xanthochromia.
• Acute bacterial (pneumococcal) meningitis — Bacterial (pneumococcal) meningitis has an acute onset (hours to days), with NEUTROPHILS in the CSF.

⭐ Key point: Treat with anti-TB drugs (rifampicin, isoniazid, pyrazinamide, ethambutol) plus dexamethasone. Test for HIV.$x$, null),
(97, $x$A known alcoholic is admitted confused and unsteady on his feet, with nystagmus and weakness of eye movements. Before giving IV dextrose, the nurse should ensure he receives:$x$, $x$IV thiamine — this is Wernicke's encephalopathy$x$, $x$✅ Correct answer: IV thiamine — this is Wernicke's encephalopathy
WERNICKE'S ENCEPHALOPATHY is caused by THIAMINE (vitamin B1) deficiency, common in ALCOHOLICS. Classic triad: CONFUSION, ATAXIA (unsteady gait), and eye movement problems (NYSTAGMUS, ophthalmoplegia). Giving IV DEXTROSE before thiamine can WORSEN it, because glucose metabolism uses up the remaining thiamine. So give IV THIAMINE (e.g. Pabrinex) BEFORE or with dextrose.

❌ Why the other options are wrong:
• IV naloxone — this is opioid toxicity — Naloxone treats opioid toxicity (small pupils, respiratory depression).
• Oral lactulose — this is hepatic encephalopathy — Lactulose treats hepatic encephalopathy (flapping tremor, liver disease).
• IV diazepam — this is delirium tremens — Diazepam treats delirium tremens (hallucinations, tremor, autonomic overactivity).

⭐ Key point: Untreated Wernicke's can progress to Korsakoff syndrome (permanent memory loss).$x$, null),
(98, $x$Three days after admission for a fracture, a heavy drinker becomes agitated and disoriented, with visual hallucinations ('insects on the wall'), coarse tremor, sweating, fever, a pulse of 130 and high BP. The diagnosis is:$x$, $x$Delirium tremens$x$, $x$✅ Correct answer: Delirium tremens
DELIRIUM TREMENS (DTs) is a severe form of ALCOHOL WITHDRAWAL, usually 48–72 HOURS after the last drink (e.g. after hospital admission). Features: AGITATION, DISORIENTATION, VISUAL HALLUCINATIONS (e.g. insects), COARSE TREMOR, SWEATING, FEVER, TACHYCARDIA and HYPERTENSION. It can be fatal (seizures, arrhythmias).

❌ Why the other options are wrong:
• Korsakoff syndrome — Korsakoff syndrome causes memory loss and confabulation, not acute agitation.
• Wernicke's encephalopathy — Wernicke's encephalopathy causes confusion, ataxia and eye problems, without hallucinations and autonomic overactivity.
• Hepatic encephalopathy — Hepatic encephalopathy causes confusion and flapping tremor, without autonomic overactivity.

⭐ Key point: Treat with benzodiazepines (e.g. chlordiazepoxide, diazepam), IV thiamine, fluids and electrolytes. Prevent by recognising alcohol dependence on admission.$x$, null),
(99, $x$A patient on an SSRI antidepressant was given tramadol. Within hours she is agitated and sweating, with a temperature of 39.5 °C, dilated pupils, diarrhoea, brisk reflexes and inducible clonus that is worse in the legs. The diagnosis is:$x$, $x$Serotonin syndrome$x$, $x$✅ Correct answer: Serotonin syndrome
SEROTONIN SYNDROME occurs when too much serotonin builds up, often when combining SEROTONERGIC DRUGS (e.g. an SSRI with tramadol). It develops RAPIDLY (within hours). Features: AGITATION, SWEATING, HIGH TEMPERATURE, DILATED PUPILS, DIARRHOEA, BRISK REFLEXES and CLONUS (worse in the LEGS).

❌ Why the other options are wrong:
• Neuroleptic malignant syndrome — NMS develops slowly (days), with "lead-pipe" rigidity and slow reflexes.
• Malignant hyperthermia — Malignant hyperthermia occurs during anaesthesia (triggered by volatile agents or suxamethonium).
• Anticholinergic toxicity — Anticholinergic toxicity causes DRY skin and urinary retention, without clonus.

⭐ Key point: Stop serotonergic drugs, give benzodiazepines, cooling and cyproheptadine (a serotonin antagonist).$x$, null),
(100, $x$A patient started on IV haloperidol 4 days ago now has a temperature of 40 °C, generalised 'lead-pipe' rigidity, slowed movements, fluctuating BP, sweating and a creatine kinase of 25,000 U/L. The diagnosis is:$x$, $x$Neuroleptic malignant syndrome$x$, $x$✅ Correct answer: Neuroleptic malignant syndrome
NEUROLEPTIC MALIGNANT SYNDROME (NMS) is a rare, life-threatening reaction to ANTIPSYCHOTIC drugs (e.g. HALOPERIDOL), which block dopamine. It develops over DAYS. Features: HIGH FEVER, "LEAD-PIPE" RIGIDITY, slow movements, AUTONOMIC INSTABILITY (fluctuating BP, sweating), altered consciousness, and very HIGH CREATINE KINASE (CK) from muscle breakdown.

❌ Why the other options are wrong:
• Malignant hyperthermia — Malignant hyperthermia occurs during anaesthesia.
• Serotonin syndrome — Serotonin syndrome develops rapidly, with clonus and hyperreflexia.
• Heat stroke — Heat stroke follows heat exposure, without lead-pipe rigidity.

⭐ Key point: Stop the antipsychotic, give cooling, fluids, and consider dantrolene or bromocriptine. Watch for kidney failure from rhabdomyolysis.$x$, null),
(101, $x$A patient has K⁺ 7.2 mmol/L with peaked T waves. Which treatment actually REMOVES potassium from the body, rather than moving it into cells or protecting the heart?$x$, $x$Calcium resonium (a potassium binder)$x$, $x$✅ Correct answer: Calcium resonium (a potassium binder)
Treatments for HYPERKALAEMIA work in three ways: (1) PROTECT THE HEART (IV calcium gluconate — stabilises heart cell membranes); (2) MOVE POTASSIUM INTO CELLS (insulin with dextrose, salbutamol); (3) REMOVE POTASSIUM from the body (potassium BINDERS such as CALCIUM RESONIUM, diuretics, or dialysis). Calcium resonium binds potassium in the gut, exchanging it for calcium, and removes it in the stool.

❌ Why the other options are wrong:
• Insulin with 50 mL of 50% dextrose — Insulin with dextrose moves potassium INTO cells temporarily.
• IV 10% calcium gluconate — Calcium gluconate PROTECTS the heart but doesn't lower potassium.
• Nebulised salbutamol 10–20 mg — Salbutamol moves potassium INTO cells.

⭐ Key point: Effects of insulin and salbutamol last only a few hours — potassium shifts back unless it is removed.$x$, null),
(102, $x$An ECG shows flattened T waves, ST depression, a prominent extra wave after the T wave, and an apparently long QT interval. The most likely electrolyte disturbance is:$x$, $x$Hypokalaemia$x$, $x$✅ Correct answer: Hypokalaemia
HYPOKALAEMIA (low potassium) causes ECG changes: FLATTENED T WAVES, ST DEPRESSION, prominent U WAVES (a wave after the T wave), and an apparently LONG QT (actually QU) interval. It increases the risk of arrhythmias, especially with digoxin.

❌ Why the other options are wrong:
• Hypocalcaemia — Hypocalcaemia causes a long QT interval, but not U waves or flattened T waves.
• Hyperkalaemia — Hyperkalaemia causes PEAKED T waves, wide QRS and flattened P waves.
• Hypermagnesaemia — Hypermagnesaemia causes bradycardia and heart block.

⭐ Key point: Replace potassium (oral or IV). Correct magnesium too, as low magnesium makes potassium hard to correct.$x$, null),
(103, $x$The day after a total thyroidectomy, a patient complains of tingling around the mouth and in the fingertips. Tapping in front of the ear makes the face twitch, and inflating a BP cuff causes carpal spasm. The most likely cause is:$x$, $x$Hypocalcaemia from parathyroid injury$x$, $x$✅ Correct answer: Hypocalcaemia from parathyroid injury
After THYROIDECTOMY, the PARATHYROID glands (which control calcium) can be damaged or have their blood supply disrupted, causing HYPOCALCAEMIA. Signs: TINGLING around the MOUTH and FINGERTIPS, CHVOSTEK'S SIGN (tapping in front of the ear makes the face twitch), and TROUSSEAU'S SIGN (a BP cuff inflated causes carpal spasm). Severe cases cause tetany, seizures and arrhythmias.

❌ Why the other options are wrong:
• Hypomagnesaemia from IV fluid dilution — Hypomagnesaemia can cause similar signs, but the classic cause after thyroidectomy is parathyroid injury.
• Respiratory alkalosis from anxiety — Respiratory alkalosis from anxiety may cause tingling, but not these specific signs after thyroidectomy.
• Thyroid storm from gland handling — Thyroid storm causes fever, tachycardia and agitation, not tetany.

⭐ Key point: Treat with IV calcium gluconate for severe symptoms, then oral calcium and vitamin D.$x$, null),
(104, $x$A woman with metastatic breast cancer has thirst, polyuria, constipation, abdominal pain, confusion and a short QT interval on the ECG. The most likely cause and first treatment are:$x$, $x$Hypercalcaemia — IV saline, then a bisphosphonate$x$, $x$✅ Correct answer: Hypercalcaemia — IV saline, then a bisphosphonate
HYPERCALCAEMIA is common in cancer (especially breast cancer with BONE METASTASES). Symptoms: "Bones, stones, groans and moans": THIRST, POLYURIA (excess urine), CONSTIPATION, ABDOMINAL PAIN, CONFUSION, and a SHORT QT interval on ECG. First treatment: rehydration with IV SALINE (high calcium causes dehydration), then a BISPHOSPHONATE (e.g. zoledronic acid) to stop bone breakdown.

❌ Why the other options are wrong:
• Hypokalaemia — IV potassium chloride replacement — Hypokalaemia causes muscle weakness and U waves, not polyuria with a short QT.
• Hyponatraemia from SIADH — strict fluid restriction — SIADH causes low sodium and fluid retention, not polyuria.
• Hypermagnesaemia — IV 10% calcium gluconate — Hypermagnesaemia is uncommon and doesn't cause this picture.

⭐ Key point: Avoid thiazide diuretics (they raise calcium). Monitor calcium, kidney function and fluid balance.$x$, null),
(105, $x$A patient with a head injury has Na⁺ 124 mmol/L, serum osmolality 260 mOsm/kg, urine osmolality 550 mOsm/kg and urine Na⁺ 60 mmol/L. BP, heart rate, CVP and skin turgor are normal and the weight is stable. The most likely diagnosis is:$x$, $x$Syndrome of inappropriate ADH (SIADH)$x$, $x$✅ Correct answer: Syndrome of inappropriate ADH (SIADH)
SIADH (Syndrome of Inappropriate ADH) causes the kidneys to keep too much water, diluting the sodium. Features: LOW SODIUM (124), LOW SERUM OSMOLALITY (260), INAPPROPRIATELY CONCENTRATED URINE (urine osmolality 550, higher than serum), HIGH URINE SODIUM (60), and the patient is EUVOLAEMIC (normal BP, heart rate, CVP, skin turgor, weight). Head injury is a common cause.

❌ Why the other options are wrong:
• Cranial diabetes insipidus — Cranial diabetes insipidus causes HIGH sodium and dilute urine.
• Primary (psychogenic) polydipsia — Primary polydipsia causes dilute urine (low urine osmolality).
• Cerebral salt wasting syndrome — Cerebral salt wasting causes HYPOVOLAEMIA (low CVP, tachycardia, weight loss), not euvolaemia.

⭐ Key point: Treat SIADH with fluid restriction. Correct sodium slowly (no more than 8–10 mmol/L in 24 hours).$x$, null),
(106, $x$After a subarachnoid haemorrhage, a patient has Na⁺ 125 mmol/L and high urine sodium. He is tachycardic, with a low CVP, a postural BP drop, weight loss and a negative fluid balance. The diagnosis and correct treatment are:$x$, $x$Cerebral salt wasting — give IV saline$x$, $x$✅ Correct answer: Cerebral salt wasting — give IV saline
CEREBRAL SALT WASTING (CSW) occurs after brain injury (e.g. SAH). The kidneys lose excess SODIUM and WATER, causing LOW SODIUM, HIGH URINE SODIUM, and HYPOVOLAEMIA (TACHYCARDIA, LOW CVP, POSTURAL BP DROP, WEIGHT LOSS, NEGATIVE FLUID BALANCE). Treatment: replace salt and water with IV SALINE (sometimes hypertonic saline or fludrocortisone).

❌ Why the other options are wrong:
• Adrenal failure — fludrocortisone only — Adrenal failure causes low sodium and high potassium, needs hydrocortisone.
• Cranial DI — give desmopressin — Cranial DI causes high sodium.
• SIADH — strict fluid restriction — SIADH causes euvolaemia; fluid restriction in CSW would worsen hypovolaemia and vasospasm.

⭐ Key point: The key difference between CSW and SIADH is the volume status: hypovolaemic in CSW, euvolaemic in SIADH.$x$, null),
(107, $x$After pituitary surgery, a patient passes 300 mL/h of urine with specific gravity 1.002. Serum Na⁺ is 152 mmol/L and the patient is very thirsty. The diagnosis and treatment are:$x$, $x$Cranial diabetes insipidus — desmopressin$x$, $x$✅ Correct answer: Cranial diabetes insipidus — desmopressin
CRANIAL DIABETES INSIPIDUS occurs when the pituitary doesn't release enough ADH (e.g. after PITUITARY SURGERY). Without ADH, the kidneys can't concentrate urine, causing LARGE VOLUMES of DILUTE URINE (300 mL/h, specific gravity 1.002), HIGH SODIUM (152) and THIRST. Treatment: DESMOPRESSIN (synthetic ADH).

❌ Why the other options are wrong:
• Hyperglycaemic osmotic diuresis — insulin — Hyperglycaemia causes osmotic diuresis, but blood glucose would be high and urine would contain glucose.
• Nephrogenic diabetes insipidus — desmopressin — Nephrogenic DI doesn't respond to desmopressin (the kidneys don't respond to ADH).
• SIADH with natriuresis — fluid restriction — SIADH causes LOW sodium and concentrated urine.

⭐ Key point: Monitor urine output, specific gravity, sodium and fluid balance closely after pituitary surgery.$x$, null),
(108, $x$A patient with chronic hyponatraemia (Na⁺ 108 mmol/L) is being treated. To avoid osmotic demyelination syndrome, sodium should rise by no more than:$x$, $x$8–10 mmol/L in any 24 hours$x$, $x$✅ Correct answer: 8–10 mmol/L in any 24 hours
In CHRONIC hyponatraemia (more than 48 hours), the brain adapts to low sodium. If sodium is corrected TOO FAST, water moves out of brain cells, damaging the protective myelin coating of nerves (OSMOTIC DEMYELINATION SYNDROME — previously called central pontine myelinolysis), causing paralysis, swallowing problems and locked-in syndrome. Sodium should rise by NO MORE THAN 8–10 mmol/L IN ANY 24 HOURS.

❌ Why the other options are wrong:
• 15 mmol/L in the first 12 hours — 15 mmol/L in 12 hours is too fast.
• 1 mmol/L per hour for the first 24 hours — 1 mmol/L per hour for 24 hours would give 24 mmol/L in 24 hours — far too fast.
• 20 mmol/L in 24 hours — 20 mmol/L in 24 hours is too fast.

⭐ Key point: Check sodium every 2–4 hours during correction. If correction is too fast, consider re-lowering sodium with water or desmopressin.$x$, null),
(109, $x$A patient's blood results are Na⁺ 140, Cl⁻ 100, HCO₃⁻ 10 mmol/L, pH 7.15. The anion gap and the type of acidosis are:$x$, $x$Anion gap 30 — high anion gap metabolic acidosis$x$, $x$✅ Correct answer: Anion gap 30 — high anion gap metabolic acidosis
ANION GAP = Na⁺ − (Cl⁻ + HCO₃⁻). Here: 140 − (100 + 10) = 140 − 110 = 30 mmol/L. A normal anion gap is about 8–12 mmol/L (or up to 16 with potassium included). An anion gap of 30 is HIGH. The low pH and low bicarbonate indicate METABOLIC ACIDOSIS, so this is a HIGH ANION GAP METABOLIC ACIDOSIS (e.g. DKA, lactic acidosis, renal failure, toxins such as methanol).

❌ Why the other options are wrong:
• Anion gap 50 — high anion gap metabolic acidosis — An anion gap of 50 is a miscalculation.
• Anion gap 10 — normal anion gap metabolic acidosis — An anion gap of 10 is a miscalculation (it's normal).
• Anion gap 30 — normal anion gap metabolic acidosis — An anion gap of 30 is high, not normal.

⭐ Key point: Causes of high anion gap acidosis: "MUDPILES" — Methanol, Uraemia, DKA, Propylene glycol/Paracetamol, Iron/Isoniazid, Lactic acidosis, Ethylene glycol, Salicylates.$x$, null),
(110, $x$A patient with profuse cholera-like diarrhoea has pH 7.25, HCO₃⁻ 14, Na⁺ 138 and Cl⁻ 118 mmol/L. This is:$x$, $x$Normal anion gap (hyperchloraemic) metabolic acidosis$x$, $x$✅ Correct answer: Normal anion gap (hyperchloraemic) metabolic acidosis
Anion gap = Na⁺ − (Cl⁻ + HCO₃⁻) = 138 − (118 + 14) = 138 − 132 = 6 mmol/L. This is NORMAL. The pH is low (7.25) and bicarbonate is low (14), so this is a NORMAL ANION GAP (HYPERCHLORAEMIC) METABOLIC ACIDOSIS, caused by losing BICARBONATE in DIARRHOEA. The kidneys keep CHLORIDE to maintain electrical balance, so chloride rises.

❌ Why the other options are wrong:
• Metabolic alkalosis from chloride loss in stool — Metabolic alkalosis would show a high pH.
• Mixed metabolic and respiratory acidosis — There is no evidence of respiratory acidosis.
• High anion gap metabolic acidosis from lactate — The anion gap is normal, not high.

⭐ Key point: Other causes of normal anion gap acidosis: renal tubular acidosis, large volumes of normal saline, and ureteric diversion.$x$, null),
(111, $x$A patient who has been vomiting repeatedly for 5 days has pH 7.52, HCO₃⁻ 38 mmol/L, Cl⁻ 85 mmol/L and K⁺ 2.8 mmol/L. This is:$x$, $x$Hypochloraemic hypokalaemic metabolic alkalosis$x$, $x$✅ Correct answer: Hypochloraemic hypokalaemic metabolic alkalosis
Repeated VOMITING causes loss of stomach acid (hydrochloric acid — HCl). This causes: METABOLIC ALKALOSIS (pH 7.52, HCO₃⁻ 38), HYPOCHLORAEMIA (Cl⁻ 85 — chloride lost in vomit), and HYPOKALAEMIA (K⁺ 2.8 — the kidneys exchange potassium to save hydrogen ions and sodium, and aldosterone rises with dehydration). So: HYPOCHLORAEMIC, HYPOKALAEMIC METABOLIC ALKALOSIS.

❌ Why the other options are wrong:
• Primary respiratory alkalosis with hypokalaemia — Primary respiratory alkalosis would show a low PaCO2 with a low bicarbonate.
• Hyperchloraemic hyperkalaemic metabolic alkalosis — Chloride is LOW (not high) and potassium is LOW (not high).
• Hyperchloraemic hypokalaemic metabolic acidosis — The pH is HIGH (alkalosis), not acidosis.

⭐ Key point: Treat with IV 0.9% saline with potassium chloride.$x$, null),
(112, $x$A patient who took a large aspirin overdose has tinnitus, pH 7.45, PaCO₂ 25 mmHg and HCO₃⁻ 15 mmol/L. The acid–base disturbance is:$x$, $x$Mixed respiratory alkalosis and metabolic acidosis$x$, $x$✅ Correct answer: Mixed respiratory alkalosis and metabolic acidosis
In ASPIRIN (salicylate) OVERDOSE, salicylate first STIMULATES the breathing centre, causing HYPERVENTILATION and RESPIRATORY ALKALOSIS (low PaCO2). It also interferes with metabolism, causing METABOLIC ACIDOSIS (low HCO₃⁻). These two effects can balance, giving a near-normal pH (7.45), with LOW PaCO2 (25) and LOW HCO₃⁻ (15): a MIXED RESPIRATORY ALKALOSIS and METABOLIC ACIDOSIS. Tinnitus is a classic sign of salicylate toxicity.

❌ Why the other options are wrong:
• Respiratory alkalosis with full metabolic compensation — Full compensation for respiratory alkalosis would not lower HCO₃⁻ this much this quickly.
• Metabolic acidosis with full respiratory compensation — In metabolic acidosis with respiratory compensation, the pH would be below 7.4.
• Primary metabolic alkalosis with a compensating acidosis — This is not metabolic alkalosis; the bicarbonate is LOW.

⭐ Key point: Treat with IV sodium bicarbonate (to increase salicylate excretion in urine) and consider haemodialysis in severe cases.$x$, null),
(113, $x$A patient in DKA has pH 7.05, HCO₃⁻ 8 mmol/L and PaCO₂ 32 mmHg. Using Winter's formula, this indicates:$x$, $x$Metabolic acidosis with an added respiratory acidosis$x$, $x$✅ Correct answer: Metabolic acidosis with an added respiratory acidosis
WINTER'S FORMULA calculates the expected PaCO2 for a metabolic acidosis: Expected PaCO2 = (1.5 × HCO₃⁻) + 8 ± 2 (in mmHg). Here: (1.5 × 8) + 8 = 12 + 8 = 20 ± 2 = 18–22 mmHg. The ACTUAL PaCO2 is 32 mmHg — HIGHER than expected. This means the lungs are not blowing off enough CO2, indicating an ADDED RESPIRATORY ACIDOSIS (e.g. from exhaustion, reduced consciousness, or chest infection).

❌ Why the other options are wrong:
• Metabolic acidosis with an added respiratory alkalosis — A PaCO2 lower than 18 would indicate an added respiratory alkalosis.
• Metabolic acidosis with appropriate respiratory compensation — Appropriate compensation would give a PaCO2 of 18–22.
• Primary respiratory acidosis with metabolic compensation — This is a metabolic acidosis (very low HCO₃⁻), not primarily respiratory.

⭐ Key point: A patient with DKA who cannot compensate is tiring — they may need respiratory support. Don't intubate without very careful planning (risk of worsening acidosis).$x$, null),
(114, $x$After prolonged hypotension, a patient has oliguric AKI with urine Na⁺ 45 mmol/L, fractional excretion of sodium 3%, urine osmolality 300 mOsm/kg, and 'muddy brown' granular casts on urine microscopy. The most likely diagnosis is:$x$, $x$Acute tubular necrosis$x$, $x$✅ Correct answer: Acute tubular necrosis
ACUTE TUBULAR NECROSIS (ATN) is damage to the kidney tubules, often after prolonged HYPOTENSION (ischaemia) or toxins. The damaged tubules can't conserve sodium or concentrate urine. Features: URINE SODIUM HIGH (above 40), FRACTIONAL EXCRETION OF SODIUM (FENa) ABOVE 2%, URINE OSMOLALITY LOW (about 300, similar to plasma), and "MUDDY BROWN" GRANULAR CASTS (dead tubular cells).

❌ Why the other options are wrong:
• Pre-renal AKI — Pre-renal AKI has LOW urine sodium (below 20), FENa below 1%, high urine osmolality, and bland urine.
• Acute interstitial nephritis — Interstitial nephritis has white cells and white cell casts, with eosinophils.
• Post-renal (obstructive) AKI — Post-renal AKI is caused by obstruction; ultrasound shows hydronephrosis.

⭐ Key point: Treat ATN with supportive care, correct fluids and electrolytes, avoid nephrotoxins, and dialysis if needed. Recovery may take weeks.$x$, null),
(115, $x$Ten days after starting a penicillin and an NSAID, a patient develops fever, a maculopapular rash, rising creatinine, blood eosinophilia and white cells (eosinophils) in the urine, with no casts of red cells. The most likely diagnosis is:$x$, $x$Acute interstitial nephritis (drug-induced)$x$, $x$✅ Correct answer: Acute interstitial nephritis (drug-induced)
ACUTE INTERSTITIAL NEPHRITIS (AIN) is inflammation of the kidney tissue, usually an ALLERGIC reaction to DRUGS (e.g. PENICILLINS, NSAIDs, PPIs). It typically occurs 1–3 weeks after starting the drug. Features: FEVER, RASH, rising creatinine, BLOOD EOSINOPHILIA, and WHITE CELLS (including EOSINOPHILS) in the urine.

❌ Why the other options are wrong:
• Acute tubular necrosis — ATN shows muddy brown casts, without fever, rash and eosinophilia.
• Post-streptococcal glomerulonephritis — Post-streptococcal GN causes red cell casts, haematuria and hypertension.
• Pre-renal AKI from dehydration — Pre-renal AKI from dehydration shows no fever, rash or eosinophils.

⭐ Key point: Stop the causative drug. Steroids may help recovery.$x$, null),
(116, $x$An elderly man found on the floor after a 2-day 'long lie' passes dark brown urine. Dipstick is strongly positive for blood, but microscopy shows almost no red cells. CK is 60,000 U/L and K⁺ 6.4 mmol/L. The diagnosis is:$x$, $x$Rhabdomyolysis with myoglobinuria$x$, $x$✅ Correct answer: Rhabdomyolysis with myoglobinuria
RHABDOMYOLYSIS is breakdown of muscle, often after a "LONG LIE" (prolonged immobility), crush injury, or extreme exercise. Muscle cells release MYOGLOBIN, which turns urine DARK BROWN. The urine dipstick reads POSITIVE for BLOOD (the test can't tell myoglobin from haemoglobin), but MICROSCOPY shows almost NO RED CELLS. Very high CREATINE KINASE (CK — 60,000) and HYPERKALAEMIA (K⁺ 6.4 — released from muscle) are typical. Myoglobin can damage the kidneys.

❌ Why the other options are wrong:
• Acute haemolytic transfusion reaction — A haemolytic transfusion reaction occurs during transfusion.
• Acute glomerulonephritis — Glomerulonephritis shows red cells and red cell casts in the urine.
• Ureteric stone — A ureteric stone causes colicky pain and red cells in the urine.

⭐ Key point: Treat with aggressive IV fluids (aim urine output 200–300 mL/h), correct potassium and monitor kidney function.$x$, null),
(117, $x$Two weeks after a sore throat, a 9-year-old has cola-coloured urine, puffy eyelids, BP 150/100 mmHg, reduced urine output and red cell casts in the urine. The most likely diagnosis is:$x$, $x$Post-streptococcal glomerulonephritis$x$, $x$✅ Correct answer: Post-streptococcal glomerulonephritis
POST-STREPTOCOCCAL GLOMERULONEPHRITIS (PSGN) occurs 1–3 WEEKS after a STREP THROAT (or 3–6 weeks after skin infection). Immune complexes damage the glomeruli. Features in children: COLA-COLOURED (smoky) URINE (haematuria), PUFFY EYELIDS (oedema), HYPERTENSION, reduced urine output, and RED CELL CASTS in the urine.

❌ Why the other options are wrong:
• IgA nephropathy (Berger's disease) — IgA nephropathy causes haematuria within 1–2 DAYS of infection (not 2 weeks).
• Haemolytic uraemic syndrome — HUS follows bloody diarrhoea, with anaemia and low platelets.
• Minimal change nephrotic syndrome — Minimal change disease causes heavy proteinuria and oedema, but not haematuria and hypertension.

⭐ Key point: Management is supportive: fluid and salt restriction, diuretics, antihypertensives. Most children recover fully.$x$, null),
(118, $x$A 3-year-old has bloody diarrhoea, and a week later becomes pale and oliguric. Bloods show Hb 6 g/dL with fragmented red cells on the film, platelets 40 × 10⁹/L, and a NORMAL prothrombin time. The most likely diagnosis is:$x$, $x$Haemolytic uraemic syndrome (e.g. E. coli O157)$x$, $x$✅ Correct answer: Haemolytic uraemic syndrome (e.g. E. coli O157)
HAEMOLYTIC URAEMIC SYNDROME (HUS) usually follows BLOODY DIARRHOEA caused by Shiga toxin-producing E. COLI (e.g. O157:H7). Triad: (1) MICROANGIOPATHIC HAEMOLYTIC ANAEMIA (low Hb, FRAGMENTED red cells — schistocytes), (2) THROMBOCYTOPENIA (low platelets), (3) ACUTE KIDNEY INJURY (oliguria). Clotting tests (PT) are NORMAL.

❌ Why the other options are wrong:
• Disseminated intravascular coagulation — DIC causes prolonged clotting times (PT and APTT).
• Immune thrombocytopenic purpura — ITP causes low platelets only, without anaemia or kidney failure.
• Thrombotic thrombocytopenic purpura — TTP mainly affects adults, with neurological symptoms and fever.

⭐ Key point: Antibiotics are usually avoided in E. coli O157 diarrhoea (may increase HUS risk). Care is supportive: fluids, transfusion, and dialysis if needed.$x$, null),
(119, $x$During a first haemodialysis session for a urea of 60 mmol/L, a patient develops headache, nausea, restlessness, confusion and then a seizure. The most likely cause is:$x$, $x$Dialysis disequilibrium syndrome$x$, $x$✅ Correct answer: Dialysis disequilibrium syndrome
DIALYSIS DISEQUILIBRIUM SYNDROME occurs when urea is removed TOO QUICKLY from the blood during the FIRST dialysis session, especially with very high urea. Urea leaves the brain more slowly, so the brain becomes relatively "salty", drawing water into the brain cells (CEREBRAL OEDEMA). Symptoms: HEADACHE, NAUSEA, RESTLESSNESS, CONFUSION, SEIZURES.

❌ Why the other options are wrong:
• Rebound hyperkalaemia after dialysis — Rebound hyperkalaemia doesn't cause these neurological symptoms.
• Venous air embolism from the circuit — Air embolism causes sudden breathlessness and collapse.
• Hypoglycaemia during dialysis — Hypoglycaemia during dialysis may cause confusion but not typically this pattern.

⭐ Key point: Prevent with shorter, gentler first sessions (lower blood flow), aiming to reduce urea by no more than about 30%.$x$, null),
(120, $x$Which of the following is NOT an indication for URGENT dialysis in acute kidney injury?$x$, $x$Creatinine 400 µmol/L with normal K⁺ and pH and no symptoms$x$, $x$✅ Correct answer: Creatinine 400 µmol/L with normal K⁺ and pH and no symptoms
URGENT DIALYSIS in AKI is indicated for complications that don't respond to medical treatment: "AEIOU": Acidosis (severe), Electrolytes (HYPERKALAEMIA resistant to treatment), Intoxication (dialysable toxins), Overload (PULMONARY OEDEMA resistant to diuretics), Uraemia (uraemic PERICARDITIS, encephalopathy, bleeding). A CREATININE of 400 µmol/L alone, with no complications or symptoms, is NOT an indication for URGENT dialysis.

❌ Why the other options are wrong:
• Uraemic pericarditis with a pericardial friction rub — Uraemic pericarditis IS an urgent indication.
• K⁺ of 7.0 mmol/L that does not respond to medical treatment — Refractory hyperkalaemia IS an urgent indication.
• Pulmonary oedema not responding to high-dose diuretics — Refractory pulmonary oedema IS an urgent indication.

⭐ Key point: Dialysis decisions are based on the patient's clinical state, not a single creatinine value.$x$, null),
(121, $x$A 75-year-old with type 2 diabetes is drowsy and severely dehydrated. Glucose is 52 mmol/L, serum osmolality 360 mOsm/kg, pH 7.33, HCO₃⁻ 20 mmol/L and blood ketones 1.0 mmol/L. The diagnosis is:$x$, $x$Hyperosmolar hyperglycaemic state (HHS)$x$, $x$✅ Correct answer: Hyperosmolar hyperglycaemic state (HHS)
HYPEROSMOLAR HYPERGLYCAEMIC STATE (HHS) occurs mainly in older people with TYPE 2 DIABETES. Features: VERY HIGH GLUCOSE (52 mmol/L), VERY HIGH SERUM OSMOLALITY (above 320 — here 360), SEVERE DEHYDRATION, drowsiness, with NO significant ACIDOSIS (pH above 7.3, HCO₃⁻ above 15) and LOW KETONES (below 3).

❌ Why the other options are wrong:
• Diabetic ketoacidosis — DKA has significant ketones (above 3 mmol/L) and acidosis (pH below 7.3 or HCO₃⁻ below 15).
• Euglycaemic DKA — Euglycaemic DKA has acidosis and ketones with near-normal glucose.
• Metformin-associated lactic acidosis — Metformin-associated lactic acidosis causes high lactate and acidosis.

⭐ Key point: Treat HHS with careful fluid replacement (0.9% saline), aiming for a gradual fall in osmolality and sodium. Use low-dose insulin only when glucose stops falling with fluids alone. Give prophylactic anticoagulation.$x$, null),
(122, $x$A patient on empagliflozin (an SGLT2 inhibitor) is admitted with vomiting after surgery. Glucose is 11 mmol/L, pH 7.10, HCO₃⁻ 9 mmol/L and blood ketones 5.2 mmol/L. The diagnosis is:$x$, $x$Euglycaemic diabetic ketoacidosis$x$, $x$✅ Correct answer: Euglycaemic diabetic ketoacidosis
SGLT2 INHIBITORS (e.g. empagliflozin, dapagliflozin) lower glucose by making the kidneys pass glucose in the urine. They can cause EUGLYCAEMIC DKA — DKA with near-NORMAL GLUCOSE (here 11 mmol/L). Features: ACIDOSIS (pH 7.10, HCO₃⁻ 9) and HIGH KETONES (5.2). Triggers: surgery, vomiting, fasting, illness.

❌ Why the other options are wrong:
• Alcoholic ketoacidosis — Alcoholic ketoacidosis occurs in heavy drinkers.
• Lactic acidosis — Lactic acidosis shows high lactate, not high ketones.
• Starvation ketosis — Starvation ketosis causes mild ketosis without severe acidosis.

⭐ Key point: Stop SGLT2 inhibitors before surgery (usually 3 days before) and during acute illness. Treat with fluids, insulin AND glucose.$x$, null),
(123, $x$A patient in DKA has an initial K⁺ of 3.0 mmol/L. The correct management is:$x$, $x$Give fluids with potassium, and delay insulin until K⁺ is above 3.3$x$, $x$✅ Correct answer: Give fluids with potassium, and delay insulin until K⁺ is above 3.3
In DKA, insulin moves POTASSIUM INTO CELLS, lowering blood potassium. If insulin is started when potassium is already LOW (here 3.0), it could drop dangerously, causing fatal arrhythmias. So give IV FLUIDS WITH POTASSIUM and DELAY INSULIN until potassium is ABOVE 3.3 mmol/L.

❌ Why the other options are wrong:
• Start the fixed-rate insulin at 0.1 units/kg/h straight away — Starting insulin immediately with low potassium is dangerous.
• Give IV sodium bicarbonate first to correct the acidosis quickly — Sodium bicarbonate also drives potassium into cells and is not routinely given.
• Give a 10-unit IV insulin bolus, then start the insulin infusion — An insulin bolus could cause a sudden fall in potassium.

⭐ Key point: Monitor potassium every 1–2 hours in DKA.$x$, null),
(124, $x$A patient with poorly controlled hyperthyroidism develops fever of 40.5 °C, AF at 160/min, agitation, diarrhoea and heart failure after an emergency appendicectomy. When should iodine (Lugol's iodine) be given?$x$, $x$At least 1 hour AFTER the antithyroid drug (propylthiouracil or carbimazole)$x$, $x$✅ Correct answer: At least 1 hour AFTER the antithyroid drug (propylthiouracil or carbimazole)
In THYROID STORM, antithyroid drugs (e.g. PROPYLTHIOURACIL or carbimazole) STOP NEW HORMONE PRODUCTION. IODINE (Lugol's iodine) BLOCKS HORMONE RELEASE. But iodine must be given AT LEAST 1 HOUR AFTER the antithyroid drug; otherwise, the thyroid gland can use the iodine as raw material to make MORE thyroid hormone, worsening the storm.

❌ Why the other options are wrong:
• Never — iodine is contraindicated in thyroid storm — Iodine is not contraindicated; it is part of treatment.
• At the same time as the antithyroid drug — Giving them together allows iodine to be used for hormone production.
• Before the antithyroid drug, to block hormone release quickly — Iodine before the antithyroid drug worsens the storm.

⭐ Key point: Thyroid storm treatment also includes beta-blockers (propranolol), steroids (hydrocortisone), cooling, and treatment of the trigger.$x$, null),
(125, $x$An elderly woman with untreated hypothyroidism is found hypothermic (32.5 °C), bradycardic and drowsy, with hypoventilation, hyponatraemia, hypoglycaemia and puffy non-pitting oedema. Before IV thyroid hormone is given, the patient should receive:$x$, $x$IV hydrocortisone$x$, $x$✅ Correct answer: IV hydrocortisone
MYXOEDEMA COMA is severe, life-threatening hypothyroidism: HYPOTHERMIA, BRADYCARDIA, DROWSINESS, HYPOVENTILATION, HYPONATRAEMIA, HYPOGLYCAEMIA, non-pitting oedema. Patients may also have ADRENAL INSUFFICIENCY. Giving thyroid hormone first can increase metabolism and use up the remaining cortisol, causing an ADRENAL CRISIS. So give IV HYDROCORTISONE BEFORE IV thyroid hormone.

❌ Why the other options are wrong:
• Strict fluid restriction to 500 mL/day — Fluid restriction may be needed for hyponatraemia, but hydrocortisone is the priority before thyroid hormone.
• An IV insulin infusion — Insulin would worsen hypoglycaemia.
• Rapid active external rewarming with a heating blanket — Rapid external rewarming causes vasodilation and collapse; use slow passive rewarming.

⭐ Key point: Also support breathing (may need ventilation), correct glucose and sodium carefully, and look for a trigger (e.g. infection).$x$, null),
(126, $x$A patient who stopped long-term prednisolone suddenly 2 weeks ago presents with vomiting, abdominal pain and hypotension unresponsive to 2 L of fluid. Na⁺ is 125, K⁺ 6.0 and glucose 2.8 mmol/L. The diagnosis and immediate treatment are:$x$, $x$Adrenal crisis — IV hydrocortisone 100 mg now$x$, $x$✅ Correct answer: Adrenal crisis — IV hydrocortisone 100 mg now
Long-term steroid use (prednisolone) suppresses the adrenal glands. STOPPING SUDDENLY causes ADRENAL CRISIS: vomiting, abdominal pain, HYPOTENSION resistant to fluids, HYPONATRAEMIA (125), HYPERKALAEMIA (6.0), and HYPOGLYCAEMIA (2.8). Immediate treatment: IV HYDROCORTISONE 100 mg, plus IV fluids and glucose.

❌ Why the other options are wrong:
• SIADH — strict fluid restriction to 800 mL/day — SIADH doesn't cause hyperkalaemia, hypoglycaemia and shock.
• Myxoedema crisis — IV levothyroxine straight away — Myxoedema crisis causes hypothermia and bradycardia.
• Septic shock — antibiotics and noradrenaline only — Septic shock is possible, but the steroid withdrawal history and electrolytes point to adrenal crisis.

⭐ Key point: Never stop long-term steroids suddenly. Teach patients "sick day rules" (double the dose during illness).$x$, null),
(127, $x$A 40-year-old has episodes of pounding headache, sweating and palpitations with BP up to 240/130 mmHg. A tumour is found in the adrenal gland. Before surgery, the correct drug order is:$x$, $x$Alpha-blocker first, then add a beta-blocker$x$, $x$✅ Correct answer: Alpha-blocker first, then add a beta-blocker
PHAEOCHROMOCYTOMA is a tumour of the adrenal gland that releases ADRENALINE and NORADRENALINE, causing episodes of HEADACHE, SWEATING, PALPITATIONS and severe HYPERTENSION. Before surgery, an ALPHA-BLOCKER (e.g. phenoxybenzamine) must be started FIRST to control BP. A BETA-BLOCKER is then added (to control heart rate). Giving a beta-blocker first leaves alpha receptors unopposed, causing severe vasoconstriction and a HYPERTENSIVE CRISIS.

❌ Why the other options are wrong:
• Beta-blocker first, then add an alpha-blocker — Beta-blocker first can cause a dangerous rise in BP.
• An ACE inhibitor alone at the maximum dose — An ACE inhibitor alone doesn't block catecholamine effects.
• A loop diuretic to reduce circulating volume — A diuretic would worsen the low blood volume.

⭐ Key point: Remember: "Alpha before Beta".$x$, null),
(128, $x$A man with liver cirrhosis, ascites and splenomegaly vomits large amounts of fresh blood. Apart from resuscitation and urgent endoscopy with band ligation, which drug therapy has been shown to reduce mortality?$x$, $x$Terlipressin and prophylactic IV antibiotics$x$, $x$✅ Correct answer: Terlipressin and prophylactic IV antibiotics
In VARICEAL BLEEDING (bleeding from veins in the oesophagus due to cirrhosis), TERLIPRESSIN reduces blood flow and pressure in the portal system, helping stop bleeding and reducing mortality. PROPHYLACTIC IV ANTIBIOTICS (e.g. ceftriaxone) prevent infections (common in cirrhosis with GI bleeding) and also reduce mortality and rebleeding.

❌ Why the other options are wrong:
• A PPI infusion and IV tranexamic acid — PPIs and tranexamic acid aren't proven to reduce mortality in variceal bleeding.
• Routine fresh frozen plasma and vitamin K — FFP and vitamin K aren't routine and don't reduce mortality.
• IV propranolol during the bleed — Beta-blockers are used to PREVENT bleeding, not during an acute bleed (they lower BP).

⭐ Key point: Urgent endoscopy with BAND LIGATION is the main treatment. Use a Sengstaken-Blakemore tube as a temporary measure if bleeding can't be controlled.$x$, null),
(129, $x$After a night of heavy drinking and forceful vomiting, a man has severe retrosternal chest pain. There is a crackling feeling under the skin of the neck, a 'crunching' sound with each heartbeat, and a left pleural effusion. The most likely diagnosis is:$x$, $x$Boerhaave syndrome (oesophageal rupture)$x$, $x$✅ Correct answer: Boerhaave syndrome (oesophageal rupture)
BOERHAAVE SYNDROME is a full-thickness RUPTURE of the oesophagus, usually after FORCEFUL VOMITING (often after heavy drinking). Features: SEVERE RETROSTERNAL CHEST PAIN, SURGICAL EMPHYSEMA (crackling under the skin of the neck — air in the tissues), a "CRUNCHING" sound with each heartbeat (Hamman's sign — air in the mediastinum), and a LEFT PLEURAL EFFUSION.

❌ Why the other options are wrong:
• Perforated duodenal ulcer — A perforated duodenal ulcer causes abdominal pain and air under the diaphragm.
• Acute inferior myocardial infarction — MI doesn't cause surgical emphysema.
• Mallory–Weiss tear (mucosal tear) — A Mallory-Weiss tear is a superficial tear causing vomiting of blood, without surgical emphysema.

⭐ Key point: Boerhaave syndrome is a surgical emergency with high mortality. Nil by mouth, IV antibiotics, and urgent surgical repair.$x$, null),
(130, $x$A patient taking regular NSAIDs has sudden severe epigastric pain that becomes generalised. The abdomen is rigid and 'board-like', he lies completely still, and an erect chest X-ray shows air under the diaphragm. The diagnosis is:$x$, $x$Perforated peptic ulcer$x$, $x$✅ Correct answer: Perforated peptic ulcer
A PERFORATED PEPTIC ULCER (often due to NSAIDs) releases stomach contents into the abdomen, causing chemical PERITONITIS. Features: SUDDEN SEVERE EPIGASTRIC PAIN that becomes GENERALISED, a RIGID "BOARD-LIKE" ABDOMEN, the patient LIES STILL (movement hurts), and an ERECT CHEST X-RAY shows AIR UNDER THE DIAPHRAGM.

❌ Why the other options are wrong:
• Acute cholecystitis — Acute cholecystitis causes right upper quadrant pain, no free air.
• Acute mesenteric ischaemia — Mesenteric ischaemia causes pain out of proportion to signs.
• Acute pancreatitis — Pancreatitis causes epigastric pain radiating to the back, no free air.

⭐ Key point: Treatment: nil by mouth, IV fluids, analgesia, antibiotics, PPI, and usually surgery.$x$, null),
(131, $x$A heavy drinker has severe epigastric pain radiating to the back, relieved by leaning forward, with vomiting. There is bruising in the flanks and around the umbilicus, and serum lipase is 8 times normal. The diagnosis is:$x$, $x$Severe (haemorrhagic) acute pancreatitis$x$, $x$✅ Correct answer: Severe (haemorrhagic) acute pancreatitis
SEVERE (HAEMORRHAGIC) ACUTE PANCREATITIS often affects heavy drinkers. Features: SEVERE EPIGASTRIC PAIN radiating to the BACK, RELIEVED by LEANING FORWARD, VOMITING, BRUISING in the FLANKS (Grey Turner's sign) and around the UMBILICUS (Cullen's sign) — signs of bleeding in the retroperitoneum — and SERUM LIPASE more than 3 times normal (here 8 times).

❌ Why the other options are wrong:
• Ruptured abdominal aortic aneurysm — A ruptured AAA causes back pain and shock, with a pulsatile mass, without raised lipase.
• Acute mesenteric ischaemia — Mesenteric ischaemia causes pain out of proportion to signs.
• Perforated peptic ulcer — Perforated ulcer causes a rigid abdomen and free air.

⭐ Key point: Treat with IV fluids, analgesia, nutrition, and monitoring for organ failure.$x$, null),
(132, $x$A 75-year-old with atrial fibrillation (not anticoagulated) has sudden, severe abdominal pain that seems out of proportion to the examination — the abdomen is soft with little tenderness. Lactate is 6 mmol/L, and bloody diarrhoea appears later. The most likely diagnosis is:$x$, $x$Acute mesenteric ischaemia$x$, $x$✅ Correct answer: Acute mesenteric ischaemia
ACUTE MESENTERIC ISCHAEMIA occurs when blood flow to the bowel is blocked, often by an EMBOLUS from the heart in ATRIAL FIBRILLATION (especially if not anticoagulated). Classic feature: SEVERE PAIN OUT OF PROPORTION to EXAMINATION (the abdomen is soft with little tenderness early on). HIGH LACTATE shows bowel ischaemia. BLOODY DIARRHOEA appears later as the bowel dies.

❌ Why the other options are wrong:
• Perforated peptic ulcer — Perforated ulcer causes a rigid abdomen.
• Acute haemorrhagic pancreatitis — Pancreatitis causes pain radiating to the back, with raised lipase.
• Perforated sigmoid diverticulitis — Perforated diverticulitis causes left lower quadrant pain and peritonitis.

⭐ Key point: Diagnose with CT angiography. Treat with urgent surgery or interventional radiology, plus anticoagulation.$x$, null),
(133, $x$A patient with gallstones has fever with rigors, jaundice and right upper quadrant pain, and is now confused with BP 80/50 mmHg. The diagnosis and definitive treatment are:$x$, $x$Acute suppurative (ascending) cholangitis — antibiotics plus urgent biliary drainage (ERCP)$x$, $x$✅ Correct answer: Acute suppurative (ascending) cholangitis — antibiotics plus urgent biliary drainage (ERCP)
ACUTE ASCENDING CHOLANGITIS is a bacterial infection of a BLOCKED bile duct (often by a gallstone). CHARCOT'S TRIAD: FEVER with rigors, JAUNDICE, and RIGHT UPPER QUADRANT PAIN. REYNOLDS' PENTAD adds CONFUSION and HYPOTENSION (here, BP 80/50) — signs of severe, suppurative cholangitis with septic shock. Treatment: IV ANTIBIOTICS plus URGENT BILIARY DRAINAGE (usually ERCP) to remove the blockage.

❌ Why the other options are wrong:
• Acute viral hepatitis — supportive care — Viral hepatitis causes jaundice but not usually rigors and shock.
• Acute pancreatitis — fluids only — Pancreatitis causes epigastric pain radiating to the back.
• Acute cholecystitis — antibiotics and elective cholecystectomy in 6 weeks — Acute cholecystitis does not usually cause jaundice and shock.

⭐ Key point: Cholangitis with shock is an emergency — drainage should be done within 24 hours (urgently if unstable).$x$, null),
(134, $x$A patient with cirrhosis who had a GI bleed yesterday is now confused and drowsy, with a flapping tremor of the outstretched hands and a sweet musty breath odour. The correct management includes:$x$, $x$Lactulose titrated to 2–3 soft stools a day, and treat the cause$x$, $x$✅ Correct answer: Lactulose titrated to 2–3 soft stools a day, and treat the cause
HEPATIC ENCEPHALOPATHY occurs when the liver cannot clear toxins (especially AMMONIA). GI BLEEDING is a common trigger (blood is a protein load in the gut). Features: CONFUSION, DROWSINESS, FLAPPING TREMOR (asterixis), and sweet musty breath (FETOR HEPATICUS). Management: LACTULOSE (titrated to 2–3 soft stools a day — it reduces ammonia absorption) and TREATING THE CAUSE (e.g. GI bleed, infection, constipation).

❌ Why the other options are wrong:
• A protein-free diet for one week to stop ammonia production — Protein-free diets are no longer recommended; normal protein intake is advised.
• High-dose diuretics to clear the ascites and improve the confusion — High-dose diuretics can worsen encephalopathy.
• A benzodiazepine to settle the agitation and allow nursing care — Benzodiazepines worsen encephalopathy.

⭐ Key point: Rifaximin (an antibiotic) can be added to lactulose to reduce recurrence.$x$, null),
(135, $x$A patient with cirrhosis and ascites develops fever, mild abdominal tenderness and worsening confusion. A diagnostic paracentesis shows ascitic neutrophils 400 cells/mm³ with a single organism. The diagnosis and treatment are:$x$, $x$Spontaneous bacterial peritonitis — IV cefotaxime (or similar) plus IV albumin$x$, $x$✅ Correct answer: Spontaneous bacterial peritonitis — IV cefotaxime (or similar) plus IV albumin
SPONTANEOUS BACTERIAL PERITONITIS (SBP) is infection of the ascitic fluid without an obvious surgical cause. It is diagnosed by an ASCITIC NEUTROPHIL COUNT of 250 cells/mm³ or MORE (here 400), often with a SINGLE ORGANISM on culture. Treatment: IV CEFOTAXIME (or another third-generation cephalosporin) PLUS IV ALBUMIN (reduces the risk of kidney failure and death).

❌ Why the other options are wrong:
• Secondary peritonitis from bowel perforation — emergency laparotomy — Secondary peritonitis from perforation usually shows MULTIPLE organisms.
• Tuberculous peritonitis — anti-TB therapy — TB peritonitis shows lymphocytes, not neutrophils.
• Hepatorenal syndrome — terlipressin — Hepatorenal syndrome causes kidney failure, not infected ascites.

⭐ Key point: Consider antibiotic prophylaxis after an episode of SBP (e.g. ciprofloxacin or co-trimoxazole).$x$, null),
(136, $x$A patient with cirrhosis and tense ascites has creatinine rising over 3 days, urine output below 400 mL/day and urine Na⁺ below 10 mmol/L. There is no shock, no nephrotoxic drug use, normal kidneys on ultrasound, and no improvement after 2 days of stopping diuretics and giving IV albumin. The diagnosis is:$x$, $x$Hepatorenal syndrome (HRS-AKI)$x$, $x$✅ Correct answer: Hepatorenal syndrome (HRS-AKI)
HEPATORENAL SYNDROME (HRS) is kidney failure in patients with severe liver disease, caused by severe constriction of kidney blood vessels. Diagnosis: rising creatinine, LOW URINE OUTPUT, VERY LOW URINE SODIUM (below 10), NO SHOCK, NO NEPHROTOXIC DRUGS, NORMAL KIDNEYS on ultrasound, and NO IMPROVEMENT after stopping diuretics and giving IV ALBUMIN for 2 days.

❌ Why the other options are wrong:
• Obstructive (post-renal) AKI — Obstructive AKI would show hydronephrosis on ultrasound.
• Acute tubular necrosis — ATN would show high urine sodium and casts.
• Pre-renal AKI from diuretics — Pre-renal AKI from diuretics would improve with albumin and stopping diuretics.

⭐ Key point: Treat with terlipressin plus albumin. Liver transplant is the definitive treatment.$x$, null),
(137, $x$A severely malnourished patient starts full nasogastric feeding. On day 3 she becomes confused and weak, with breathlessness, oedema and arrhythmias. Phosphate is 0.3 mmol/L, with low potassium and magnesium. The diagnosis is:$x$, $x$Refeeding syndrome$x$, $x$✅ Correct answer: Refeeding syndrome
REFEEDING SYNDROME occurs when feeding starts after starvation. Insulin rises, driving PHOSPHATE, POTASSIUM and MAGNESIUM into cells, causing very LOW levels in the blood. LOW PHOSPHATE (0.3 mmol/L) is the hallmark. Effects: CONFUSION, WEAKNESS, BREATHLESSNESS (respiratory muscle weakness), OEDEMA (fluid retention), ARRHYTHMIAS and heart failure.

❌ Why the other options are wrong:
• Dumping syndrome — Dumping syndrome occurs after stomach surgery.
• Wernicke's encephalopathy — Wernicke's causes confusion and ataxia, but not low phosphate.
• Hyperosmolar hyperglycaemic state — HHS causes very high glucose and osmolality.

⭐ Key point: Prevent: identify high-risk patients, start feeds slowly (e.g. 10 kcal/kg/day), give thiamine, and monitor and replace electrolytes daily.$x$, null),
(138, $x$After massive fluid resuscitation for trauma, a ventilated patient has a tense, distended abdomen, rising peak airway pressures and oliguria. Bladder pressure is 25 mmHg. The diagnosis is:$x$, $x$Abdominal compartment syndrome$x$, $x$✅ Correct answer: Abdominal compartment syndrome
ABDOMINAL COMPARTMENT SYNDROME (ACS) is defined as INTRA-ABDOMINAL PRESSURE ABOVE 20 mmHg (here 25) with NEW ORGAN DYSFUNCTION. Massive fluid resuscitation causes bowel swelling. Effects: TENSE DISTENDED ABDOMEN, RISING PEAK AIRWAY PRESSURES (diaphragm pushed up), and OLIGURIA (kidneys compressed).

❌ Why the other options are wrong:
• Paralytic ileus with normal abdominal pressure — Paralytic ileus doesn't cause this level of pressure or organ failure.
• Intra-abdominal hypertension grade I — Grade I IAH is 12–15 mmHg without organ failure.
• Acute urinary retention — Acute urinary retention would be relieved by catheterisation.

⭐ Key point: Treat with decompression (sedation, NG tube, reduce fluids, and decompressive laparotomy if organ failure persists).$x$, null),
(139, $x$A patient with known ulcerative colitis has fever, a pulse of 120, a distended tender abdomen, reduced bowel sounds and a transverse colon diameter of 8 cm on X-ray. The diagnosis is:$x$, $x$Toxic megacolon$x$, $x$✅ Correct answer: Toxic megacolon
TOXIC MEGACOLON is a severe complication of inflammatory bowel disease (e.g. ULCERATIVE COLITIS) or infection (e.g. C. difficile). The colon becomes DILATED (TRANSVERSE COLON more than 6 cm — here 8 cm) and the patient is SYSTEMICALLY UNWELL: FEVER, TACHYCARDIA (120), DISTENDED TENDER ABDOMEN, and REDUCED BOWEL SOUNDS.

❌ Why the other options are wrong:
• Small bowel obstruction — Small bowel obstruction shows dilated small bowel loops.
• Acute colonic pseudo-obstruction (Ogilvie's syndrome) — Ogilvie's syndrome causes colonic dilation without toxicity.
• Sigmoid volvulus — Sigmoid volvulus shows a "coffee bean" sign on X-ray.

⭐ Key point: Treat with IV steroids, IV fluids, antibiotics, nil by mouth, and surgery if there is no improvement or perforation.$x$, null),
(140, $x$A patient who took an overdose of gliclazide (a sulfonylurea) keeps becoming hypoglycaemic despite repeated IV dextrose boluses. The most appropriate additional treatment is:$x$, $x$Octreotide$x$, $x$✅ Correct answer: Octreotide
SULFONYLUREAS (e.g. gliclazide) make the pancreas release INSULIN. In overdose, repeated IV dextrose triggers MORE insulin release, causing recurrent HYPOGLYCAEMIA. OCTREOTIDE (a somatostatin analogue) BLOCKS INSULIN RELEASE from the pancreas, preventing recurrent hypoglycaemia.

❌ Why the other options are wrong:
• IV hydrocortisone — Hydrocortisone is not the treatment of choice.
• IV flumazenil — Flumazenil reverses benzodiazepines.
• IV glucagon infusion as the long-term solution — Glucagon may help briefly, but it also stimulates insulin release and is not a long-term solution.

⭐ Key point: Monitor glucose hourly for at least 24 hours — sulfonylureas have a long duration of action.$x$, null),
(141, $x$According to Sepsis-3, septic shock is identified clinically by:$x$, $x$Vasopressors needed for MAP ≥ 65 AND lactate > 2 mmol/L after adequate fluids$x$, $x$✅ Correct answer: Vasopressors needed for MAP ≥ 65 AND lactate > 2 mmol/L after adequate fluids
SEPSIS-3 (2016) defines SEPTIC SHOCK as sepsis with profound circulatory and cellular/metabolic problems. It is identified clinically by BOTH: (1) the need for VASOPRESSORS to keep the MEAN ARTERIAL PRESSURE (MAP) at 65 mmHg or more, AND (2) a serum LACTATE above 2 mmol/L — despite ADEQUATE FLUID RESUSCITATION. Patients meeting these criteria have a hospital mortality above 40%.

❌ Why the other options are wrong:
• Systolic BP below 90 mmHg with a qSOFA score of 2 or more after fluids — Systolic BP below 90 with qSOFA ≥2 is not the definition. qSOFA is only a bedside screening tool to identify patients at risk outside ICU.
• A lactate above 2 mmol/L on its own, whatever the blood pressure — A lactate above 2 alone, without vasopressor need, does not define septic shock (it may indicate sepsis with hypoperfusion).
• MAP below 65 mmHg with a lactate above 4 mmol/L, before any fluids are given — The definition requires that fluids have ALREADY been given adequately; a low MAP before fluids may simply reflect hypovolaemia.

⭐ Key point: Sepsis = infection + organ dysfunction (SOFA rise ≥2). Septic shock = sepsis + vasopressors for MAP ≥65 + lactate >2 after fluids.$x$, null),
(142, $x$Under Sepsis-3, organ dysfunction in a patient with infection is identified by an acute rise in the SOFA score of:$x$, $x$2 points or more$x$, $x$✅ Correct answer: 2 points or more
Under SEPSIS-3, SEPSIS is defined as life-threatening ORGAN DYSFUNCTION caused by a dysregulated host response to INFECTION. Organ dysfunction is identified by an ACUTE RISE in the SOFA score of 2 POINTS OR MORE from the patient's baseline (assume baseline is 0 if there is no known pre-existing organ dysfunction). A SOFA rise of 2 or more is linked to about a 10% risk of death in hospital.

❌ Why the other options are wrong:
• 3 points or more — A rise of 3 or more is not the threshold; 2 is.
• 2 or more SIRS criteria — SIRS criteria (temperature, heart rate, respiratory rate, WBC) were used in the OLD (Sepsis-1/2) definitions. They are no longer used to define sepsis because they are not specific.
• 1 point or more on qSOFA — qSOFA (respiratory rate ≥22, altered mental state, systolic BP ≤100) is a quick screening tool; it does not define organ dysfunction.

⭐ Key point: SOFA assesses 6 systems: respiration (PaO2/FiO2), coagulation (platelets), liver (bilirubin), cardiovascular (MAP and vasopressors), CNS (GCS), and renal (creatinine or urine output).$x$, null),
(143, $x$A febrile patient with pneumonia has BP 80/40 mmHg, a bounding pulse, warm flushed peripheries, a wide pulse pressure and rapid capillary refill. The haemodynamic pattern is most likely:$x$, $x$Distributive shock — low SVR with a normal or high cardiac output$x$, $x$✅ Correct answer: Distributive shock — low SVR with a normal or high cardiac output
This patient has signs of DISTRIBUTIVE (SEPTIC) SHOCK, often called "warm shock". Infection triggers massive VASODILATION, so the SYSTEMIC VASCULAR RESISTANCE (SVR) is LOW. The heart pumps harder and faster to compensate, so the CARDIAC OUTPUT is NORMAL or HIGH. This produces: LOW BP (80/40), a BOUNDING PULSE, WARM FLUSHED skin, a WIDE PULSE PRESSURE (low diastolic from vasodilation), and RAPID capillary refill.

❌ Why the other options are wrong:
• Hypovolaemic shock — low cardiac output with high SVR — Hypovolaemic shock causes vasoconstriction (high SVR), COLD clammy skin, slow capillary refill and a weak thready pulse.
• Obstructive shock — low cardiac output with high CVP — Obstructive shock (e.g. tamponade, PE) causes low cardiac output, high CVP, and cold peripheries.
• Cardiogenic shock — low cardiac output with high SVR — Cardiogenic shock causes low cardiac output, high SVR, and cold, clammy skin.

⭐ Key point: Late septic shock may become "cold" as the heart fails. Treat with fluids, early antibiotics, source control and noradrenaline.$x$, null),
(144, $x$After a road traffic collision, a man has HR 132, BP 85/50 mmHg, RR 34, is anxious and confused, and passes 10 mL/h of urine. By ATLS, the estimated blood loss class is:$x$, $x$Class III (30–40% of blood volume)$x$, $x$✅ Correct answer: Class III (30–40% of blood volume)
ATLS classifies haemorrhage by estimated blood loss and clinical signs. CLASS III (30–40% blood volume, 1500–2000 mL in a 70 kg adult): HEART RATE 120–140 (here 132), SYSTOLIC BP DECREASED (here 85/50), RESPIRATORY RATE 30–40 (here 34), URINE OUTPUT 5–15 mL/h (here 10), and the patient is ANXIOUS and CONFUSED.

❌ Why the other options are wrong:
• Class II (15–30%) — Class II (15–30%): HR 100–120, normal systolic BP, narrowed pulse pressure, urine 20–30 mL/h, mildly anxious.
• Class IV (more than 40%) — Class IV (over 40%): HR above 140, very low BP, negligible urine output, lethargic or unconscious.
• Class I (less than 15%) — Class I (less than 15%): near-normal vital signs.

⭐ Key point: Class III and IV need urgent blood transfusion and haemorrhage control (surgery or interventional radiology). Activate the major haemorrhage protocol.$x$, null),
(145, $x$A trauma patient with major haemorrhage arrives 1 hour after injury. Tranexamic acid should be given as:$x$, $x$1 g over 10 min, then 1 g over 8 h — within 3 h of injury$x$, $x$✅ Correct answer: 1 g over 10 min, then 1 g over 8 h — within 3 h of injury
TRANEXAMIC ACID (TXA) stops clots from breaking down. The CRASH-2 trial showed that giving TXA to bleeding trauma patients WITHIN 3 HOURS of injury reduces deaths from bleeding. The dose is 1 g IV over 10 MINUTES, followed by 1 g IV over 8 HOURS. The earlier it is given, the greater the benefit. This patient arrived 1 hour after injury, so TXA should be given now.

❌ Why the other options are wrong:
• 2 g as a single IV bolus — within 6 hours of injury — 2 g as a single bolus within 6 hours is not the standard regimen, and giving after 3 hours is not beneficial.
• 1 g over 10 min — only if fibrinogen is below 1 g/L — TXA should be given based on the time from injury, not on a fibrinogen level.
• 1 g over 10 min, then 1 g over 8 h — after 3 hours only — Giving TXA AFTER 3 hours may INCREASE the risk of death from bleeding.

⭐ Key point: TXA is part of the major haemorrhage protocol. Record the time of injury and the time TXA is given.$x$, null),
(146, $x$The 'lethal triad' that worsens bleeding and death after major trauma is:$x$, $x$Hypothermia, acidosis and coagulopathy$x$, $x$✅ Correct answer: Hypothermia, acidosis and coagulopathy
The LETHAL TRIAD in trauma is HYPOTHERMIA, ACIDOSIS and COAGULOPATHY. They make each other worse: HYPOTHERMIA slows the enzymes involved in clotting and impairs platelets; ACIDOSIS (from poor tissue perfusion) further reduces clotting factor activity; COAGULOPATHY causes more bleeding, leading to more shock, more acidosis and more cooling. This vicious cycle leads to uncontrolled bleeding and death.

❌ Why the other options are wrong:
• Hypotension, hypoxia and hypercapnia — Hypotension, hypoxia and hypercapnia are important, but they are not the lethal triad.
• Tachycardia, hypotension and oliguria — Tachycardia, hypotension and oliguria are signs of shock, not the lethal triad.
• Hypothermia, hyperkalaemia and hypocalcaemia — Hyperkalaemia and hypocalcaemia can occur after massive transfusion, but the triad is hypothermia, acidosis and coagulopathy.

⭐ Key point: Prevent: keep the patient warm (warm fluids, blankets, warm room), restore perfusion, give balanced blood products early (1:1:1), and control bleeding quickly. Some add hypocalcaemia as a fourth element ("lethal diamond").$x$, null),
(147, $x$A patient with septic shock oozes from cannula sites and the gums and has new petechiae. Platelets are 35 × 10⁹/L, PT and APTT are prolonged, fibrinogen is 0.8 g/L and D-dimer is very high. The diagnosis is:$x$, $x$Disseminated intravascular coagulation$x$, $x$✅ Correct answer: Disseminated intravascular coagulation
DISSEMINATED INTRAVASCULAR COAGULATION (DIC) occurs when a serious condition (like SEPTIC SHOCK) triggers widespread activation of clotting throughout the body. This USES UP platelets and clotting factors, leading to BLEEDING (oozing from cannula sites and gums, petechiae). Lab findings: LOW PLATELETS (35), PROLONGED PT and APTT, LOW FIBRINOGEN (0.8), and very HIGH D-DIMER (clot breakdown products).

❌ Why the other options are wrong:
• Immune thrombocytopenic purpura — ITP causes low platelets only, with normal clotting times and fibrinogen.
• Thrombotic thrombocytopenic purpura — TTP causes low platelets and haemolysis, but clotting times are usually NORMAL.
• Vitamin K deficiency — Vitamin K deficiency prolongs PT, but platelets and fibrinogen are normal and D-dimer is not raised.

⭐ Key point: Treat the cause (e.g. sepsis). Give blood products (platelets, FFP, cryoprecipitate) if the patient is bleeding or needs a procedure.$x$, null),
(148, $x$On day 7 of a heparin infusion, a patient's platelets fall from 250 to 90 × 10⁹/L and a new DVT develops. The most likely diagnosis and correct action are:$x$, $x$HIT — stop all heparin and start a non-heparin anticoagulant$x$, $x$✅ Correct answer: HIT — stop all heparin and start a non-heparin anticoagulant
HEPARIN-INDUCED THROMBOCYTOPENIA (HIT) is an immune reaction where antibodies form against heparin bound to platelet factor 4. These antibodies ACTIVATE PLATELETS, causing them to clump and form clots. Features: a fall in platelets by more than 50% (here from 250 to 90), typically 5–10 DAYS after starting heparin, with new BLOOD CLOTS (e.g. DVT). Action: STOP ALL HEPARIN immediately (including heparin flushes and LMWH) and START a NON-HEPARIN ANTICOAGULANT (e.g. argatroban, fondaparinux, or a DOAC).

❌ Why the other options are wrong:
• ITP — give IV immunoglobulin and steroids, continue heparin — ITP is not linked to heparin and doesn't cause clots.
• DIC — give platelets and fresh frozen plasma, continue heparin — DIC causes low platelets with abnormal clotting tests and bleeding; continuing heparin in HIT is dangerous.
• Dilutional thrombocytopenia — transfuse platelets, continue heparin — Dilutional thrombocytopenia follows massive transfusion; platelet transfusion in HIT can worsen clotting.

⭐ Key point: Use the 4Ts score (Thrombocytopenia, Timing, Thrombosis, oTher causes) to assess HIT likelihood. Document heparin allergy in the patient's notes.$x$, null),
(149, $x$Two hours into a blood transfusion, a patient develops severe breathlessness, fever, hypotension and bilateral infiltrates on chest X-ray. JVP is not raised, BNP is normal, and furosemide does not help. The most likely diagnosis is:$x$, $x$Transfusion-related acute lung injury (TRALI)$x$, $x$✅ Correct answer: Transfusion-related acute lung injury (TRALI)
TRANSFUSION-RELATED ACUTE LUNG INJURY (TRALI) occurs within 6 hours of transfusion. Donor antibodies attack the recipient's white cells, which damage lung capillaries, causing them to LEAK (non-cardiogenic pulmonary oedema). Features: SEVERE BREATHLESSNESS, FEVER, HYPOTENSION, BILATERAL INFILTRATES. Key differences from fluid overload: JVP is NOT raised, BNP is NORMAL, and FUROSEMIDE does NOT help.

❌ Why the other options are wrong:
• Transfusion-associated circulatory overload (TACO) — TACO (fluid overload) causes HYPERTENSION, raised JVP, high BNP, and improves with furosemide.
• Acute haemolytic transfusion reaction — Acute haemolytic reaction causes fever, loin pain, dark urine and hypotension, but not bilateral lung infiltrates.
• Anaphylactic transfusion reaction — Anaphylaxis causes urticaria, wheeze and hypotension, usually within minutes.

⭐ Key point: Stop the transfusion, give oxygen and respiratory support (may need ventilation). Report to the blood bank; the donor may be excluded from future donations.$x$, null),
(150, $x$Ten minutes into a blood transfusion, a patient develops fever, rigors, loin pain, hypotension and dark red urine, and starts oozing from the cannula site. The FIRST action is to:$x$, $x$Stop the transfusion and keep the vein open with saline via a new set$x$, $x$✅ Correct answer: Stop the transfusion and keep the vein open with saline via a new set
An ACUTE HAEMOLYTIC TRANSFUSION REACTION usually happens because the WRONG BLOOD (ABO-incompatible) was given. The recipient's antibodies destroy the donor red cells. Features within minutes: FEVER, RIGORS, LOIN PAIN, HYPOTENSION, DARK RED URINE (haemoglobinuria), and OOZING (DIC). The FIRST action is to STOP THE TRANSFUSION immediately, and KEEP THE VEIN OPEN with 0.9% SALINE through a NEW giving set (to avoid giving more incompatible blood that remains in the old line). Then call the doctor, check patient ID and the blood unit, and start resuscitation.

❌ Why the other options are wrong:
• Give IV chlorphenamine and continue the transfusion at the same rate — Antihistamines don't treat haemolysis, and continuing the transfusion could be fatal.
• Flush the rest of the unit in quickly with saline, then send samples — Flushing the remaining blood would give MORE incompatible blood.
• Slow the transfusion and give paracetamol for the fever and rigors — Slowing the transfusion still gives incompatible blood.

⭐ Key point: Send the blood bag and giving set back to the lab, with blood samples (FBC, group and crossmatch, DAT, U&Es, clotting) and a urine sample. Report the incident.$x$, null),
(151, $x$A 70 kg man has 40% total body surface area partial- and full-thickness burns and arrives 2 hours after the burn. Using the Parkland formula, the IV fluid rate for the next 6 hours should be about:$x$, $x$933 mL/h$x$, $x$✅ Correct answer: 933 mL/h
The PARKLAND FORMULA calculates IV fluid for the first 24 hours after a burn: 4 mL × body weight (kg) × % TBSA burned. Here: 4 × 70 × 40 = 11,200 mL in 24 hours. HALF (5,600 mL) is given in the FIRST 8 HOURS FROM THE TIME OF THE BURN (not from arrival). The other half is given over the next 16 hours. The patient arrived 2 hours after the burn, so 5,600 mL must be given in the remaining 6 hours: 5,600 ÷ 6 = about 933 mL/h.

❌ Why the other options are wrong:
• 1,400 mL/h — 1,400 mL/h is too fast; it would give 8,400 mL in 6 hours.
• 467 mL/h — 467 mL/h is the rate for the second half (5,600 mL over 12 hours — wrong).
• 700 mL/h — 700 mL/h is 5,600 ÷ 8, which ignores the 2 hours already passed.

⭐ Key point: Use Hartmann's (Ringer's lactate). Adjust fluids based on urine output (target 0.5–1 mL/kg/h in adults). Avoid over-resuscitation ("fluid creep").$x$, null),
(152, $x$A man was rescued from a burning house after 20 minutes in a smoke-filled room. Which finding is the strongest indication for EARLY intubation?$x$, $x$A hoarse voice with inspiratory stridor$x$, $x$✅ Correct answer: A hoarse voice with inspiratory stridor
Smoke and heat can cause rapid SWELLING of the upper airway (inhalation injury). HOARSENESS and INSPIRATORY STRIDOR show the airway is ALREADY narrowing. The swelling worsens over hours, especially with fluid resuscitation, and can completely block the airway. EARLY INTUBATION (before the airway closes) is essential. Waiting may make intubation impossible.

❌ Why the other options are wrong:
• A carboxyhaemoglobin level of 8% — A COHb level of 8% is mildly raised (smokers can have up to 10%); it is treated with oxygen, not intubation.
• SpO₂ of 97% on oxygen — SpO2 of 97% on oxygen doesn't rule out airway injury, and pulse oximetry can be falsely normal with CO.
• Superficial facial burns alone — Superficial facial burns alone don't require intubation, but should be monitored for signs of airway injury.

⭐ Key point: Other warning signs of inhalation injury: burns in an enclosed space, singed nasal hair, soot in the mouth or sputum, facial burns, and altered consciousness.$x$, null),
(153, $x$A family is found drowsy at home with a generator running indoors. They have headache, nausea and confusion. SpO₂ reads 98%, and carboxyhaemoglobin is 28%. The most appropriate treatment is:$x$, $x$100% oxygen via a tight non-rebreather mask$x$, $x$✅ Correct answer: 100% oxygen via a tight non-rebreather mask
CARBON MONOXIDE (CO) from running a generator INDOORS (common in Nigeria) binds haemoglobin more strongly than oxygen. Symptoms: HEADACHE, NAUSEA, CONFUSION, drowsiness. SpO2 reads FALSELY NORMAL (98%) because standard oximeters can't tell COHb from oxygenated haemoglobin. COHb of 28% confirms significant poisoning. Treatment: 100% OXYGEN via a TIGHT-FITTING NON-REBREATHER MASK (with a reservoir). This reduces the half-life of COHb from about 4–6 hours to about 60–90 minutes.

❌ Why the other options are wrong:
• Oxygen titrated to an SpO₂ of 94–98% — Titrating oxygen to SpO2 94–98% is wrong, as SpO2 is unreliable; high-flow oxygen is needed.
• IV hydroxocobalamin 5 g over 15 minutes — Hydroxocobalamin treats CYANIDE poisoning.
• IV methylene blue 1–2 mg/kg over 5 minutes — Methylene blue treats METHAEMOGLOBINAEMIA.

⭐ Key point: Consider hyperbaric oxygen for severe cases (e.g. loss of consciousness, neurological signs, pregnancy, very high COHb). Educate families never to run generators indoors.$x$, null),
(154, $x$A patient rescued from a fire involving burning foam mattresses and plastics is comatose and hypotensive, with lactate 14 mmol/L and a central venous oxygen saturation of 90% (very high). The most likely additional poisoning and antidote are:$x$, $x$Cyanide — IV hydroxocobalamin$x$, $x$✅ Correct answer: Cyanide — IV hydroxocobalamin
Burning plastics, foam and synthetic materials release HYDROGEN CYANIDE gas. CYANIDE stops cells from using oxygen (it blocks the mitochondrial enzyme cytochrome oxidase). Features: COMA, HYPOTENSION, very HIGH LACTATE (cells switch to anaerobic metabolism), and HIGH CENTRAL VENOUS OXYGEN SATURATION (oxygen is delivered but not used, so venous blood stays oxygen-rich). Antidote: IV HYDROXOCOBALAMIN (5 g), which binds cyanide to form harmless cyanocobalamin (vitamin B12).

❌ Why the other options are wrong:
• Carbon monoxide — hyperbaric oxygen — CO poisoning is also likely in fires, but the very high ScvO2 and lactate point to cyanide.
• Methaemoglobinaemia — methylene blue — Methaemoglobinaemia causes chocolate-brown blood and low SpO2.
• Organophosphate — atropine — Organophosphate poisoning causes cholinergic symptoms (secretions, small pupils, bradycardia).

⭐ Key point: In smoke inhalation with high lactate (above 8–10 mmol/L), suspect cyanide and give hydroxocobalamin early. It turns urine and skin red.$x$, null),
(155, $x$A farmer who drank a pesticide has pinpoint pupils, drooling, wheezing with copious bronchial secretions, vomiting, diarrhoea, HR 45 and muscle twitching. Atropine is being given in doubling doses. The best endpoint for adequate atropinisation is:$x$, $x$A clear chest, with HR above 80 and systolic BP above 80$x$, $x$✅ Correct answer: A clear chest, with HR above 80 and systolic BP above 80
ORGANOPHOSPHATE pesticides block acetylcholinesterase, causing ACETYLCHOLINE to build up. Features: PINPOINT PUPILS, DROOLING, WHEEZING with COPIOUS BRONCHIAL SECRETIONS (bronchorrhoea), VOMITING, DIARRHOEA, BRADYCARDIA, and MUSCLE TWITCHING. ATROPINE blocks the muscarinic effects. It is given in DOUBLING DOSES every 5 minutes until "ATROPINISATION" is achieved: a CLEAR CHEST (no wheeze or crackles from secretions), HEART RATE ABOVE 80, SYSTOLIC BP ABOVE 80, dry axillae and pupils no longer pinpoint.

❌ Why the other options are wrong:
• Complete disappearance of all muscle fasciculations — Atropine does NOT treat muscle fasciculations (a nicotinic effect); pralidoxime is used for this.
• Fully dilated pupils that no longer react to light — Fully dilated pupils are not the target; this may suggest atropine toxicity.
• A heart rate above 120/min with a dry, flushed skin — A heart rate above 120 and dry flushed skin suggest atropine TOXICITY.

⭐ Key point: Once atropinised, give an atropine infusion (10–20% of the total loading dose per hour). Remove contaminated clothing and wash the skin. Staff should wear gloves.$x$, null),
(156, $x$A patient who took staggered paracetamol overdoses over 2 days has ALT 4,000 IU/L, INR 3.2 and arterial pH 7.25 after full fluid resuscitation. The correct next step is:$x$, $x$Refer urgently to a liver transplant centre (pH < 7.30 after fluids)$x$, $x$✅ Correct answer: Refer urgently to a liver transplant centre (pH < 7.30 after fluids)
In PARACETAMOL overdose, liver failure can develop. Criteria for referral to a LIVER TRANSPLANT CENTRE (King's College Criteria) include: arterial pH BELOW 7.30 AFTER FLUID RESUSCITATION (here 7.25), OR all three of: INR above 6.5, creatinine above 300, and grade 3–4 encephalopathy. Here, the patient meets the pH criterion, so URGENT REFERRAL is needed.

❌ Why the other options are wrong:
• Give activated charcoal and repeat the paracetamol level in 4 hours — Activated charcoal is only useful within 1 hour of ingestion.
• Give vitamin K to correct the INR, then plan discharge in 48 hours — Vitamin K doesn't correct liver-failure coagulopathy, and the INR is needed to track liver function.
• Stop N-acetylcysteine, because more than 24 hours have now passed — N-ACETYLCYSTEINE (NAC) should CONTINUE in liver injury, even after 24 hours.

⭐ Key point: Staggered overdoses are high risk because paracetamol levels can't be interpreted on the treatment nomogram — treat with NAC regardless of the level.$x$, null),
(157, $x$After a tricyclic antidepressant overdose, a patient is drowsy with dilated pupils, dry flushed skin, urinary retention, HR 130 and a QRS duration of 140 ms, and then has a seizure. The first-line treatment for the cardiotoxicity is:$x$, $x$IV sodium bicarbonate 8.4%$x$, $x$✅ Correct answer: IV sodium bicarbonate 8.4%
TRICYCLIC ANTIDEPRESSANT (TCA) overdose causes: ANTICHOLINERGIC effects (DROWSINESS, DILATED PUPILS, DRY FLUSHED SKIN, URINARY RETENTION, TACHYCARDIA), SEIZURES, and CARDIOTOXICITY (TCAs block sodium channels, WIDENING the QRS — here 140 ms — and causing arrhythmias). First-line treatment for cardiotoxicity: IV SODIUM BICARBONATE 8.4% (provides sodium to overcome the channel block, and alkalinises the blood, reducing TCA binding to heart cells).

❌ Why the other options are wrong:
• IV flumazenil — Flumazenil can cause seizures in TCA overdose.
• IV physostigmine — Physostigmine can cause asystole in TCA overdose.
• IV amiodarone — Amiodarone can worsen QRS widening and arrhythmias.

⭐ Key point: Aim for a blood pH of 7.45–7.55. Treat seizures with benzodiazepines.$x$, null),
(158, $x$A farmer in northern Nigeria was bitten on the foot by a snake 12 hours ago. He now has bleeding gums, blood in the urine and oozing from a cannula site; blood in a dry glass tube does not clot after 20 minutes. The most likely snake and treatment are:$x$, $x$Carpet viper (Echis ocellatus) envenoming — specific antivenom$x$, $x$✅ Correct answer: Carpet viper (Echis ocellatus) envenoming — specific antivenom
In northern Nigeria, the CARPET VIPER (Echis ocellatus) causes most snakebite deaths. Its venom destroys clotting factors, causing BLEEDING (gums, urine, cannula sites) and INCOAGULABLE BLOOD (the 20-MINUTE WHOLE BLOOD CLOTTING TEST shows no clot). Treatment: SPECIFIC ANTIVENOM (e.g. EchiTAb), given IV, repeated until the blood clots.

❌ Why the other options are wrong:
• Dog bite with rabies — rabies vaccine — Dog bites cause rabies risk, not bleeding.
• Cobra envenoming with neurotoxic paralysis — neostigmine alone — Cobra venom causes paralysis (ptosis, breathing difficulty), not bleeding.
• Scorpion sting — analgesia only — Scorpion stings cause pain and autonomic effects, not bleeding.

⭐ Key point: Repeat the 20WBCT every 6 hours; give more antivenom if blood still doesn't clot. Avoid tourniquets and cutting the wound.$x$, null),
(159, $x$During general anaesthesia with sevoflurane and suxamethonium, a patient develops masseter rigidity, a rapidly rising end-tidal CO₂ despite increased ventilation, tachycardia, rising temperature and hyperkalaemia. The diagnosis and specific treatment are:$x$, $x$Malignant hyperthermia — IV dantrolene$x$, $x$✅ Correct answer: Malignant hyperthermia — IV dantrolene
MALIGNANT HYPERTHERMIA (MH) is a rare inherited condition triggered by VOLATILE ANAESTHETICS (e.g. sevoflurane) and SUXAMETHONIUM. Muscle calcium regulation fails, causing massive muscle activity. Features: MASSETER RIGIDITY (jaw stiffness), RAPIDLY RISING END-TIDAL CO2 (often the earliest sign), TACHYCARDIA, RISING TEMPERATURE (may be late), HYPERKALAEMIA, acidosis and rhabdomyolysis. Specific treatment: IV DANTROLENE (2.5 mg/kg, repeated as needed), which stops calcium release in muscle.

❌ Why the other options are wrong:
• Neuroleptic malignant syndrome — bromocriptine — NMS follows antipsychotic use, developing over days.
• Thyroid storm — propylthiouracil and iodine — Thyroid storm doesn't cause masseter rigidity and isn't triggered by anaesthetic gases.
• Serotonin syndrome — cyproheptadine — Serotonin syndrome follows serotonergic drugs.

⭐ Key point: Stop the volatile agent, hyperventilate with 100% oxygen, cool the patient, treat hyperkalaemia and arrhythmias. Test family members for susceptibility.$x$, null),
(160, $x$Six hours after a tibial fracture is placed in a cast, a patient has severe pain not relieved by morphine, pain on passive stretching of the toes, and a tense swollen calf. Foot pulses are still palpable. The most likely diagnosis and action are:$x$, $x$Compartment syndrome — split the cast and arrange urgent fasciotomy$x$, $x$✅ Correct answer: Compartment syndrome — split the cast and arrange urgent fasciotomy
COMPARTMENT SYNDROME occurs when pressure builds up in a closed muscle compartment (e.g. after a tibial fracture with a tight cast), cutting off blood flow to the muscles and nerves. Early signs: SEVERE PAIN NOT RELIEVED by strong painkillers, PAIN ON PASSIVE STRETCHING of the muscles (e.g. moving the toes), and a TENSE, SWOLLEN limb. PULSES ARE OFTEN STILL PRESENT (loss of pulse is a very late sign). Action: SPLIT THE CAST (down to skin) and arrange URGENT FASCIOTOMY (surgical opening of the compartment).

❌ Why the other options are wrong:
• Cellulitis under the cast — start IV flucloxacillin and elevate the leg — Cellulitis causes redness, warmth and fever, but not pain on passive stretch within hours.
• Deep vein thrombosis — elevate the limb and start therapeutic heparin — DVT causes calf swelling and tenderness, but not severe pain on passive stretch.
• Arterial occlusion — excluded, because the foot pulses are present — Palpable pulses do NOT exclude compartment syndrome.

⭐ Key point: Elevate the limb only to heart level (not higher), as elevation above the heart reduces perfusion. Untreated compartment syndrome leads to muscle death, contractures and amputation.$x$, null),
(161, $x$A woman at 34 weeks has right upper quadrant pain, nausea and BP 150/100 mmHg. Bloods show haemolysis on the film, ALT 400 IU/L, platelets 60 × 10⁹/L, a normal glucose and normal clotting times. The most likely diagnosis is:$x$, $x$HELLP syndrome$x$, $x$✅ Correct answer: HELLP syndrome
HELLP SYNDROME is a severe form of pre-eclampsia: Haemolysis (fragmented red cells on blood film), Elevated Liver enzymes (ALT 400), Low Platelets (60). Typical features: RIGHT UPPER QUADRANT PAIN (liver swelling), nausea, and high BP (150/100). Glucose and clotting are usually NORMAL (unless DIC develops).

❌ Why the other options are wrong:
• Thrombotic thrombocytopenic purpura — TTP causes neurological symptoms and fever; not linked to pregnancy BP rise.
• Acute fatty liver of pregnancy — Acute fatty liver of pregnancy causes LOW glucose and prolonged clotting.
• Obstetric cholestasis — Obstetric cholestasis causes itching, especially on the palms and soles.

⭐ Key point: The definitive treatment for HELLP is DELIVERY. Also give magnesium sulphate, control BP, and monitor platelets and liver function.$x$, null),
(162, $x$At 36 weeks a woman has 1 week of nausea, vomiting and abdominal pain, then becomes jaundiced and confused. Glucose is 2.1 mmol/L, INR 2.5, ammonia and uric acid are raised, and BP is only mildly elevated. The most likely diagnosis is:$x$, $x$Acute fatty liver of pregnancy$x$, $x$✅ Correct answer: Acute fatty liver of pregnancy
ACUTE FATTY LIVER OF PREGNANCY (AFLP) is a rare but serious condition in the third trimester, where fat builds up in liver cells, causing LIVER FAILURE. Features: NAUSEA, VOMITING, ABDOMINAL PAIN, then JAUNDICE and CONFUSION. Lab findings: LOW GLUCOSE (2.1 — the liver can't make glucose), PROLONGED CLOTTING (INR 2.5), RAISED AMMONIA and URIC ACID. BP may be only mildly elevated.

❌ Why the other options are wrong:
• Acute viral hepatitis — Viral hepatitis would show very high transaminases and positive viral serology.
• Hyperemesis gravidarum — Hyperemesis gravidarum occurs in early pregnancy.
• HELLP syndrome — HELLP has low platelets and haemolysis, usually without low glucose and high INR.

⭐ Key point: Treat with urgent DELIVERY, glucose infusion, correction of clotting, and liver support in ICU.$x$, null),
(163, $x$A woman with severe pre-eclampsia is on a magnesium sulphate infusion. Which finding means the nurse should stop the infusion and call the doctor FIRST?$x$, $x$Absent patellar (knee-jerk) reflexes$x$, $x$✅ Correct answer: Absent patellar (knee-jerk) reflexes
MAGNESIUM SULPHATE is used in pre-eclampsia, but too much is toxic. The FIRST sign of toxicity is LOSS OF PATELLAR (KNEE-JERK) REFLEXES (at about 3.5–5 mmol/L). The nurse should STOP THE INFUSION and call the doctor. If toxicity worsens, respiratory depression and cardiac arrest can follow.

❌ Why the other options are wrong:
• Serum magnesium of 2.5 mmol/L — A serum magnesium of 2.5 mmol/L is within the therapeutic range (2–3.5).
• Urine output of 35 mL/h — A urine output of 35 mL/h is acceptable (concern if below 30 mL/h).
• Respiratory rate of 14/min — A respiratory rate of 14/min is acceptable (concern if below 12/min).

⭐ Key point: Monitor reflexes, respiratory rate, SpO2 and urine output hourly. Antidote: 10% calcium gluconate 10 mL IV over 10 minutes.$x$, null),
(164, $x$During labour, shortly after artificial rupture of membranes, a woman suddenly becomes breathless and cyanosed, collapses with severe hypotension and then has a cardiac arrest. Those who survive the first hour develop severe bleeding from DIC. The most likely diagnosis is:$x$, $x$Amniotic fluid embolism$x$, $x$✅ Correct answer: Amniotic fluid embolism
AMNIOTIC FLUID EMBOLISM (AFE) is a rare, catastrophic emergency during labour or shortly after (often after rupture of membranes). Amniotic fluid enters the mother's blood, triggering a massive inflammatory reaction. Features: SUDDEN BREATHLESSNESS and CYANOSIS, COLLAPSE with SEVERE HYPOTENSION, CARDIAC ARREST, and in survivors, severe BLEEDING from DIC.

❌ Why the other options are wrong:
• Placental abruption — Placental abruption causes abdominal pain and bleeding, but not usually sudden cardiorespiratory collapse.
• Eclampsia — Eclampsia causes seizures, often with high BP.
• Massive pulmonary thromboembolism — Massive PE causes collapse, but not usually DIC.

⭐ Key point: Treatment is supportive: CPR, oxygen, vasopressors, blood products for DIC, and delivery of the baby.$x$, null),
(165, $x$At 33 weeks a woman with pre-eclampsia has sudden constant abdominal pain and slight dark vaginal bleeding. The uterus is hard, 'woody' and tender, the fetal heart rate is 90/min, and she is in shock out of proportion to the visible blood loss. The most likely diagnosis is:$x$, $x$Concealed placental abruption$x$, $x$✅ Correct answer: Concealed placental abruption
PLACENTAL ABRUPTION is separation of the placenta from the uterine wall before delivery. In CONCEALED abruption, the blood is trapped behind the placenta, so visible bleeding is SMALL, but the woman is in SHOCK OUT OF PROPORTION to the visible blood loss. Features: SUDDEN CONSTANT ABDOMINAL PAIN, a HARD, "WOODY", TENDER UTERUS, and FETAL DISTRESS (heart rate 90). PRE-ECLAMPSIA is a major risk factor.

❌ Why the other options are wrong:
• Ruptured vasa praevia — Vasa praevia causes painless bleeding when the membranes rupture, with fetal distress.
• Uterine rupture — Uterine rupture usually occurs during labour, often with a previous caesarean scar.
• Major placenta praevia — Placenta praevia causes PAINLESS bright red bleeding with a soft uterus.

⭐ Key point: Resuscitate the mother (IV access, blood), monitor for DIC, and deliver urgently.$x$, null),
(166, $x$A woman attempting a vaginal birth after a previous caesarean section suddenly has severe abdominal pain. Contractions stop, the fetal heart rate drops to 70/min, the presenting part moves back up, and fetal parts are easily felt through the abdomen. The diagnosis is:$x$, $x$Uterine rupture$x$, $x$✅ Correct answer: Uterine rupture
UTERINE RUPTURE is a tear in the uterine wall, most commonly through a PREVIOUS CAESAREAN SCAR during labour (VBAC). Features: SUDDEN SEVERE ABDOMINAL PAIN, CONTRACTIONS STOP, FETAL BRADYCARDIA (70), the PRESENTING PART MOVES BACK UP, and FETAL PARTS EASILY FELT through the abdomen (the baby is outside the uterus).

❌ Why the other options are wrong:
• Placenta praevia — Placenta praevia causes painless bleeding, often before labour.
• Placental abruption — Placental abruption causes a hard, woody uterus, with contractions continuing.
• Normal second stage of labour — These are not signs of a normal second stage.

⭐ Key point: Uterine rupture is an emergency: resuscitate, call for help, and perform immediate laparotomy.$x$, null),
(167, $x$A woman has a postpartum haemorrhage from uterine atony. Which uterotonic is contraindicated because she has pre-eclampsia?$x$, $x$Ergometrine$x$, $x$✅ Correct answer: Ergometrine
ERGOMETRINE (an ergot alkaloid, also in the combination drug Syntometrine) makes the uterus contract strongly and for a long time, which helps stop bleeding from uterine atony. However, it also CONSTRICTS BLOOD VESSELS throughout the body (alpha-adrenergic and serotonin effects), which can cause a SUDDEN, SEVERE RISE IN BP. In a woman with PRE-ECLAMPSIA (whose BP is already high and whose blood vessels are already irritable), this can trigger a STROKE (brain haemorrhage), ECLAMPTIC SEIZURES or pulmonary oedema. So ergometrine is CONTRAINDICATED in pre-eclampsia, hypertension and heart disease.

❌ Why the other options are wrong:
• Misoprostol — Misoprostol (a prostaglandin E1) does not raise BP significantly; it can be used in pre-eclampsia (side effects: fever, shivering, diarrhoea).
• Oxytocin — Oxytocin is the FIRST-LINE uterotonic for PPH and is safe in pre-eclampsia (give as a slow IV bolus or infusion; rapid boluses can cause hypotension).
• Carboprost — Carboprost (prostaglandin F2-alpha, given IM) can be used in pre-eclampsia, but must be AVOIDED in ASTHMA, as it causes bronchospasm.

⭐ Key point: PPH drug sequence: oxytocin → ergometrine (if no hypertension) → carboprost / misoprostol, plus tranexamic acid. If drugs fail: balloon tamponade, then surgery (B-Lynch suture, uterine artery ligation, hysterectomy).$x$, null),
(168, $x$To reduce deaths from postpartum haemorrhage, tranexamic acid 1 g IV should be given within:$x$, $x$3 hours of birth$x$, $x$✅ Correct answer: 3 hours of birth
The WOMAN trial showed that TRANEXAMIC ACID (1 g IV over 10 minutes) given WITHIN 3 HOURS OF BIRTH reduces deaths from bleeding in postpartum haemorrhage. After 3 hours, it gives no benefit. A second dose can be given if bleeding continues after 30 minutes or restarts within 24 hours.

❌ Why the other options are wrong:
• 12 hours of birth — 12 hours is too late.
• 6 hours of birth — 6 hours is too late.
• 24 hours of birth — 24 hours is too late.

⭐ Key point: TXA is given in addition to (not instead of) uterotonic drugs and other PPH treatments.$x$, null),
(169, $x$Five weeks after a normal delivery, a previously healthy woman has worsening breathlessness, orthopnoea, swollen ankles and a resting heart rate of 120. Echo shows a dilated left ventricle with an ejection fraction of 30%, and she has no history of heart disease. The most likely diagnosis is:$x$, $x$Peripartum cardiomyopathy$x$, $x$✅ Correct answer: Peripartum cardiomyopathy
PERIPARTUM CARDIOMYOPATHY (PPCM) is heart failure developing in the last month of pregnancy or within 5 months after delivery, in women with no previous heart disease. Features: BREATHLESSNESS, ORTHOPNOEA, SWOLLEN ANKLES, TACHYCARDIA. Echo shows a DILATED LEFT VENTRICLE with REDUCED EJECTION FRACTION (below 45% — here 30%). It is more common in women of African descent (including Nigeria).

❌ Why the other options are wrong:
• Postpartum anaemia only — Anaemia causes tiredness and breathlessness, but not a dilated, poorly contracting heart.
• Postpartum pulmonary embolism — Pulmonary embolism causes sudden breathlessness and chest pain, not gradual heart failure.
• Pre-existing rheumatic mitral stenosis — Rheumatic mitral stenosis would usually show a known history and a characteristic murmur.

⭐ Key point: Treat with heart failure drugs (diuretics, beta-blockers, ACE inhibitors after delivery), and consider bromocriptine. Anticoagulation may be needed. Future pregnancies carry risk.$x$, null),
(170, $x$A woman at 30 weeks of pregnancy has a cardiac arrest on the ward. CPR with manual left uterine displacement has started. If there is no return of spontaneous circulation, resuscitative hysterotomy (perimortem caesarean section) should be started:$x$, $x$By 4 minutes, to deliver the baby by 5 minutes$x$, $x$✅ Correct answer: By 4 minutes, to deliver the baby by 5 minutes
During cardiac arrest in a pregnant woman (over 20 weeks), the uterus compresses major blood vessels, making CPR less effective. If there is NO RETURN OF CIRCULATION, RESUSCITATIVE HYSTEROTOMY (perimortem caesarean) should be STARTED BY 4 MINUTES, so that the baby is DELIVERED BY 5 MINUTES after arrest. This improves the mother's chance of survival (relieves compression) and the baby's.

❌ Why the other options are wrong:
• After 15 minutes of unsuccessful CPR — 15 minutes is too late.
• After 30 minutes of CPR and senior review — 30 minutes is far too late.
• After 10 minutes of unsuccessful CPR — 10 minutes is too late.

⭐ Key point: Perform it at the site of arrest — do not move the patient to theatre.$x$, null),
(171, $x$A baby born at 28 weeks to a mother who did not receive antenatal steroids develops grunting, nasal flaring, chest recession and cyanosis within an hour of birth. Chest X-ray shows a diffuse 'ground-glass' appearance with air bronchograms. The diagnosis is:$x$, $x$Respiratory distress syndrome$x$, $x$✅ Correct answer: Respiratory distress syndrome
RESPIRATORY DISTRESS SYNDROME (RDS) occurs in PREMATURE babies (here 28 weeks) because their lungs lack SURFACTANT, so the alveoli collapse. Risk is higher without ANTENATAL STEROIDS. Features within hours of birth: GRUNTING, NASAL FLARING, CHEST RECESSION, CYANOSIS. Chest X-ray: diffuse "GROUND-GLASS" appearance with AIR BRONCHOGRAMS.

❌ Why the other options are wrong:
• Transient tachypnoea of the newborn — TTN occurs in term babies, often after caesarean section, and resolves quickly.
• Meconium aspiration syndrome — Meconium aspiration occurs in term or post-term babies with meconium-stained fluid.
• Congenital diaphragmatic hernia — Diaphragmatic hernia shows bowel in the chest on X-ray.

⭐ Key point: Treat with surfactant, CPAP or ventilation, and oxygen. Prevent with antenatal steroids.$x$, null),
(172, $x$A term baby born by elective caesarean section (no labour) is breathing at 80/min with mild recession and needs little oxygen. Chest X-ray shows fluid in the horizontal fissure and prominent vascular markings. Symptoms settle over 48 hours. The diagnosis is:$x$, $x$Transient tachypnoea of the newborn$x$, $x$✅ Correct answer: Transient tachypnoea of the newborn
TRANSIENT TACHYPNOEA OF THE NEWBORN (TTN) occurs when FLUID in the baby's lungs is cleared slowly after birth, especially after ELECTIVE CAESAREAN SECTION (no labour — the hormonal and physical squeeze of labour helps clear lung fluid). Features: FAST BREATHING (80/min), mild recession, mild oxygen need. Chest X-ray: FLUID IN THE HORIZONTAL FISSURE and prominent vascular markings. Resolves within 24–72 hours.

❌ Why the other options are wrong:
• Respiratory distress syndrome — RDS occurs in preterm babies and shows a ground-glass appearance.
• Group B streptococcal pneumonia — GBS pneumonia causes sepsis signs and worsening, not improvement.
• Meconium aspiration syndrome — Meconium aspiration occurs with meconium-stained liquor.

⭐ Key point: Management is supportive: oxygen as needed and monitoring.$x$, null),
(173, $x$A baby is visibly jaundiced at 18 hours of age, with a falling haemoglobin. The mother is blood group O Rh-positive and the baby is A Rh-positive. The most likely cause is:$x$, $x$ABO haemolytic disease$x$, $x$✅ Correct answer: ABO haemolytic disease
Jaundice in the FIRST 24 HOURS of life is ALWAYS ABNORMAL (pathological), usually from HAEMOLYSIS. ABO HAEMOLYTIC DISEASE occurs when the MOTHER is BLOOD GROUP O and the BABY is A or B. The mother's anti-A or anti-B antibodies cross the placenta and destroy the baby's red cells, causing JAUNDICE and a FALLING HAEMOGLOBIN.

❌ Why the other options are wrong:
• Breast-milk jaundice — Breast-milk jaundice starts after the first week.
• Biliary atresia — Biliary atresia causes prolonged jaundice with pale stools and dark urine, usually after 2 weeks.
• Physiological jaundice — Physiological jaundice appears after 24 hours.

⭐ Key point: Check bilirubin and the direct antiglobulin test (DAT). Treat with phototherapy, and exchange transfusion if severe.$x$, null),
(174, $x$A 3-week-old baby who had been feeding well suddenly starts vomiting bright GREEN (bilious) fluid and becomes irritable, with a slightly distended abdomen. The most important diagnosis to exclude urgently is:$x$, $x$Malrotation with midgut volvulus$x$, $x$✅ Correct answer: Malrotation with midgut volvulus
BILIOUS (green) VOMITING means the blockage is BELOW the point where bile enters the bowel (the second part of the duodenum). In a baby, the most dangerous cause is MALROTATION WITH MIDGUT VOLVULUS: the bowel was not properly fixed in the abdomen during fetal development, so it can TWIST around its blood vessel (the superior mesenteric artery), cutting off blood supply to almost the WHOLE SMALL BOWEL. Within hours, the bowel can die (necrosis), leading to shock, perforation, death, or survival with "short gut" (lifelong feeding problems). It often presents in the first month in a baby who was previously well, as here.

❌ Why the other options are wrong:
• Gastro-oesophageal reflux — Gastro-oesophageal reflux causes NON-bilious (milky) vomiting or posseting, usually in a well, thriving baby.
• Overfeeding — Overfeeding causes NON-bilious vomiting of milk soon after feeds, in a well baby.
• Infantile hypertrophic pyloric stenosis — Pyloric stenosis causes PROJECTILE NON-BILIOUS vomiting (the blockage is ABOVE the bile duct entry), usually at 2–8 weeks.

⭐ Key point: Bilious vomiting in any baby = surgical emergency. Stop feeds, pass a nasogastric tube on free drainage, start IV fluids, call the paediatric surgeon, and arrange an urgent upper GI contrast study.$x$, null),
(175, $x$A 9-month-old has episodes of screaming with knees drawn up and pallor every 15–20 minutes, sleepy between attacks. He then passes stool mixed with blood and mucus ('redcurrant jelly'), and a sausage-shaped mass is felt in the right upper abdomen. The diagnosis is:$x$, $x$Intussusception$x$, $x$✅ Correct answer: Intussusception
INTUSSUSCEPTION is when one part of the bowel telescopes into the next, usually in infants aged 6–18 months. Features: EPISODES OF SCREAMING with KNEES DRAWN UP and pallor every 15–20 minutes, SLEEPY BETWEEN attacks, "REDCURRANT JELLY" stools (blood and mucus), and a SAUSAGE-SHAPED MASS in the right upper abdomen.

❌ Why the other options are wrong:
• Acute gastroenteritis — Gastroenteritis causes diarrhoea and vomiting without a mass.
• Infantile colic — Colic is crying in young babies, without blood or mass.
• Meckel's diverticulum — Meckel's diverticulum causes painless rectal bleeding.

⭐ Key point: Treat with air or contrast enema reduction if no peritonitis; surgery if failed or perforated.$x$, null),
(176, $x$A 3-year-old was diagnosed with croup 2 days ago but is now much worse, with high fever, a toxic appearance, copious thick purulent secretions from the trachea and stridor that does not improve with nebulised adrenaline. The most likely diagnosis is:$x$, $x$Bacterial tracheitis$x$, $x$✅ Correct answer: Bacterial tracheitis
BACTERIAL TRACHEITIS is a serious bacterial infection of the trachea (often Staphylococcus aureus), usually following a viral illness (e.g. croup). Features: the child WORSENS after initially having croup, with HIGH FEVER, a TOXIC appearance, COPIOUS THICK PURULENT SECRETIONS from the trachea, and STRIDOR that DOES NOT IMPROVE with nebulised adrenaline.

❌ Why the other options are wrong:
• Viral croup (laryngotracheobronchitis) — Viral croup improves with nebulised adrenaline and steroids.
• Inhaled foreign body — An inhaled foreign body causes sudden choking, without high fever.
• Acute epiglottitis — Epiglottitis causes drooling and sitting forward, often without a cough.

⭐ Key point: Treat with IV antibiotics and often intubation with frequent tracheal suctioning.$x$, null),
(177, $x$A 10 kg, 8-month-old infant has severe dehydration from diarrhoea (lethargic, sunken eyes, drinks poorly, very slow skin pinch). By WHO Plan C, how much Ringer's lactate should be given in the FIRST hour?$x$, $x$300 mL (30 mL/kg)$x$, $x$✅ Correct answer: 300 mL (30 mL/kg)
WHO PLAN C for SEVERE DEHYDRATION: in INFANTS UNDER 12 MONTHS, give IV Ringer's lactate 30 mL/kg in the FIRST HOUR, then 70 mL/kg over the next 5 HOURS. For a 10 kg infant: 30 × 10 = 300 mL in the first hour.

❌ Why the other options are wrong:
• 1,000 mL (100 mL/kg) — 1,000 mL (100 mL/kg) is the total over 6 hours, not the first hour.
• 700 mL (70 mL/kg) — 700 mL (70 mL/kg) is the amount for the next 5 hours.
• 200 mL (20 mL/kg) — 200 mL (20 mL/kg) is the standard shock bolus, not WHO Plan C.

⭐ Key point: For children over 12 months: 30 mL/kg in 30 minutes, then 70 mL/kg over 2.5 hours. Reassess often.$x$, null),
(178, $x$A 15 kg, 4-year-old child has severe malaria with convulsions and coma. The correct dose of IV artesunate is:$x$, $x$45 mg (3 mg/kg)$x$, $x$✅ Correct answer: 45 mg (3 mg/kg)
For SEVERE MALARIA, the dose of IV ARTESUNATE in children weighing LESS THAN 20 KG is 3 mg/kg (higher than the adult dose of 2.4 mg/kg, because children clear the drug faster). For a 15 kg child: 3 × 15 = 45 mg. Given at 0, 12 and 24 hours, then daily until oral treatment can be taken.

❌ Why the other options are wrong:
• 60 mg (4 mg/kg) — 60 mg (4 mg/kg) is too high.
• 36 mg (2.4 mg/kg) — 36 mg (2.4 mg/kg) is the dose for children over 20 kg and adults.
• 30 mg (2 mg/kg) — 30 mg (2 mg/kg) is too low.

⭐ Key point: After at least 24 hours of IV artesunate and when the child can take oral medication, complete treatment with a full course of oral ACT.$x$, null),
(179, $x$A 2-year-old with sickle cell anaemia suddenly becomes pale and lethargic, with HR 170 and BP 70/40 mmHg. The spleen, previously not palpable, is now enlarged to the umbilicus. Hb has fallen from 8 to 4 g/dL, and the reticulocyte count is HIGH. The diagnosis is:$x$, $x$Acute splenic sequestration crisis$x$, $x$✅ Correct answer: Acute splenic sequestration crisis
ACUTE SPLENIC SEQUESTRATION CRISIS occurs when sickled red cells get trapped in the spleen. The spleen ENLARGES RAPIDLY and Hb FALLS SUDDENLY (8 to 4). The child becomes PALE, LETHARGIC, and SHOCKED (tachycardia, hypotension). RETICULOCYTES are HIGH (the marrow is still producing cells).

❌ Why the other options are wrong:
• Acute chest syndrome — Acute chest syndrome causes chest pain, fever and hypoxia.
• Vaso-occlusive (painful) crisis — Vaso-occlusive crisis causes pain without sudden severe anaemia and a large spleen.
• Aplastic crisis from parvovirus B19 — Aplastic crisis causes anaemia with LOW reticulocytes.

⭐ Key point: Treat with urgent blood transfusion and fluid resuscitation.$x$, null),
(180, $x$A 6-week-old baby has had projectile, non-bilious vomiting after every feed for a week and is hungry straight after vomiting. A small olive-sized mass is felt in the epigastrium during a test feed. Blood gas shows pH 7.55, Cl⁻ 85 mmol/L and K⁺ 2.9 mmol/L. Before surgery, the priority is:$x$, $x$Correct the fluid deficit and alkalosis with IV saline, dextrose and KCl first$x$, $x$✅ Correct answer: Correct the fluid deficit and alkalosis with IV saline, dextrose and KCl first
PYLORIC STENOSIS causes repeated NON-BILIOUS PROJECTILE vomiting, losing STOMACH ACID (HCl), causing HYPOCHLORAEMIC, HYPOKALAEMIC METABOLIC ALKALOSIS (pH 7.55, Cl⁻ 85, K⁺ 2.9). Surgery is NOT an emergency. The priority is to CORRECT the FLUID DEFICIT and ALKALOSIS with IV SALINE, DEXTROSE and POTASSIUM CHLORIDE first, because anaesthesia in an alkalotic baby can cause post-operative apnoea.

❌ Why the other options are wrong:
• Take the baby for pyloromyotomy within the hour, before the alkalosis worsens — Operating before correction is unsafe.
• Give IV sodium bicarbonate to correct the acid–base disturbance before surgery — Sodium bicarbonate would worsen alkalosis.
• Restart small frequent oral feeds to replace the losses, then operate tomorrow — Oral feeds will be vomited.

⭐ Key point: Proceed to pyloromyotomy when chloride is above about 100 and bicarbonate below about 26.$x$, null),
(181, $x$A patient with 50% burns sustained 3 days ago needs rapid sequence intubation. Which drug should be AVOIDED?$x$, $x$Suxamethonium$x$, $x$✅ Correct answer: Suxamethonium
SUXAMETHONIUM (succinylcholine) is a depolarising muscle relaxant. It works by stimulating acetylcholine receptors on muscle, and each time it does, POTASSIUM LEAKS OUT of the muscle cells. Normally this raises potassium by only about 0.5 mmol/L. After major BURNS (from about 24–48 hours onwards, and lasting for months), the muscles grow MANY EXTRA acetylcholine receptors spread all over the muscle membrane ("up-regulation"). Suxamethonium then triggers a MASSIVE potassium release, causing severe HYPERKALAEMIA, ventricular arrhythmias and CARDIAC ARREST. This patient is 3 days after a 50% burn, so suxamethonium must be AVOIDED.

❌ Why the other options are wrong:
• Fentanyl — Fentanyl (an opioid) is safe after burns; it blunts the stress response to intubation, though doses may need adjusting for BP.
• Ketamine — Ketamine is safe and useful in burns: it keeps the BP up, provides pain relief and maintains airway reflexes.
• Rocuronium — Rocuronium (a non-depolarising relaxant) does not release potassium and is the preferred drug for rapid sequence intubation when suxamethonium is contraindicated (higher doses are often needed in burns).

⭐ Key point: Other situations to avoid suxamethonium (risk of hyperkalaemia): spinal cord injury or stroke after the first few days, prolonged immobility or critical illness, crush injuries, muscular dystrophies, and existing hyperkalaemia. Also avoid in malignant hyperthermia susceptibility.$x$, null),
(182, $x$Sugammadex rapidly reverses neuromuscular blockade caused by:$x$, $x$Rocuronium and vecuronium$x$, $x$✅ Correct answer: Rocuronium and vecuronium
SUGAMMADEX is a modified sugar molecule (a cyclodextrin) shaped like a ring. It ENCAPSULATES (wraps tightly around) the STEROIDAL non-depolarising muscle relaxants — mainly ROCURONIUM, and to a lesser extent VECURONIUM — and removes them from the neuromuscular junction. It can reverse even deep blockade within 2–3 minutes. This makes it very useful in a "can't intubate, can't oxygenate" emergency after rocuronium, and for rapid recovery of muscle strength after surgery. The drug-sugammadex complex is excreted by the kidneys.

❌ Why the other options are wrong:
• Suxamethonium — Suxamethonium is a depolarising relaxant, broken down by plasma cholinesterase; sugammadex has no effect on it.
• All neuromuscular blocking drugs — Sugammadex does not work on all relaxants; it is specific to steroidal drugs.
• Atracurium and cisatracurium — Atracurium and cisatracurium are benzylisoquinolinium (non-steroidal) drugs; they are broken down by Hofmann elimination and are reversed by neostigmine (with glycopyrrolate), not sugammadex.

⭐ Key point: Sugammadex can rarely cause anaphylaxis and bradycardia. It reduces the effectiveness of hormonal contraceptives — advise women to use additional contraception for 7 days.$x$, null),
(183, $x$A hypotensive patient (BP 80/50 mmHg) with acute severe asthma needs intubation. The most suitable induction agent is:$x$, $x$Ketamine$x$, $x$✅ Correct answer: Ketamine
KETAMINE is the most suitable induction agent here for two reasons. (1) It STIMULATES the sympathetic nervous system (releases noradrenaline), so it MAINTAINS or RAISES heart rate and BP — important in a patient who is already HYPOTENSIVE (80/50). (2) It is a BRONCHODILATOR (relaxes airway smooth muscle), which helps in ACUTE SEVERE ASTHMA. Most other induction agents lower BP, and some can worsen bronchospasm. Ketamine also preserves respiratory drive and gives pain relief.

❌ Why the other options are wrong:
• Midazolam in high dose — High-dose midazolam causes vasodilation and myocardial depression, worsening hypotension, and its onset is slow and unpredictable.
• Thiopental — Thiopental lowers BP (myocardial depression and vasodilation) and can release histamine, which may worsen bronchospasm.
• Propofol — Propofol causes significant vasodilation and hypotension, which would be dangerous here (though it has mild bronchodilator properties).

⭐ Key point: Ketamine increases secretions (consider glycopyrrolate) and can cause emergence reactions (hallucinations) — benzodiazepines reduce this. In asthma, set the ventilator to allow long expiratory times to avoid air trapping after intubation.$x$, null),
(184, $x$A young man with head injury has been sedated with high-dose propofol (above 5 mg/kg/h) for 4 days. He develops a worsening metabolic acidosis, rising CK and potassium, new bradyarrhythmias, rising triglycerides and cloudy (lipaemic) blood. The most likely diagnosis is:$x$, $x$Propofol infusion syndrome$x$, $x$✅ Correct answer: Propofol infusion syndrome
PROPOFOL INFUSION SYNDROME (PRIS) is a rare but often FATAL complication, usually with HIGH-DOSE PROPOFOL (above 4–5 mg/kg/hour) for MORE THAN 48 HOURS. It is more common in young patients with head injury, sepsis, or those receiving catecholamines or steroids. Propofol interferes with the mitochondria (cell energy production) and fat metabolism. Features: worsening METABOLIC (lactic) ACIDOSIS, RHABDOMYOLYSIS (rising CK), HYPERKALAEMIA, new BRADYARRHYTHMIAS (which may progress to asystole) or Brugada-like ECG changes, RISING TRIGLYCERIDES and LIPAEMIC (cloudy, milky) blood, kidney failure and heart failure.

❌ Why the other options are wrong:
• Malignant hyperthermia — Malignant hyperthermia occurs DURING anaesthesia with volatile agents or suxamethonium, with rising CO2 and temperature, not after days of propofol.
• Neuroleptic malignant syndrome — Neuroleptic malignant syndrome follows antipsychotic drugs, with rigidity and fever.
• Refeeding syndrome — Refeeding syndrome causes LOW phosphate, potassium and magnesium after starting feeds, not hyperkalaemia and lipaemia.

⭐ Key point: If PRIS is suspected: STOP propofol immediately and switch to another sedative (e.g. midazolam), give supportive care (correct acidosis, treat arrhythmias, consider pacing, haemofiltration). Prevent it by keeping propofol below 4 mg/kg/h and monitoring triglycerides, CK and lactate during long infusions.$x$, null),
(185, $x$Minutes after a large dose of bupivacaine for a nerve block, a patient complains of a metallic taste, tingling around the mouth and tinnitus, then has a seizure followed by ventricular arrhythmias. The specific treatment is:$x$, $x$IV 20% lipid emulsion 1.5 mL/kg$x$, $x$✅ Correct answer: IV 20% lipid emulsion 1.5 mL/kg
LOCAL ANAESTHETIC SYSTEMIC TOXICITY (LAST) occurs when a local anaesthetic (especially BUPIVACAINE, which is very cardiotoxic) reaches high levels in the blood — from an overdose or accidental injection into a blood vessel. Early CNS signs: METALLIC TASTE, PERIORAL TINGLING (around the mouth), TINNITUS, light-headedness, agitation; then SEIZURES and loss of consciousness. Cardiovascular signs follow: bradycardia, heart block, VENTRICULAR ARRHYTHMIAS and cardiac arrest. The specific treatment is IV 20% LIPID EMULSION (Intralipid): 1.5 mL/kg bolus over 1 minute, then an infusion of 15 mL/kg/hour; boluses can be repeated. The lipid acts as a "LIPID SINK", pulling the fat-soluble local anaesthetic out of the heart and brain.

❌ Why the other options are wrong:
• IV dantrolene 2.5 mg/kg — Dantrolene treats malignant hyperthermia, not LAST.
• IV naloxone 400 micrograms — Naloxone reverses opioids; it has no effect on local anaesthetics.
• IV flumazenil 200 micrograms — Flumazenil reverses benzodiazepines and may worsen seizures.

⭐ Key point: Also: stop injecting, call for help, give 100% oxygen and secure the airway, treat seizures with benzodiazepines, and start CPR if needed — CPR may need to continue for a long time (over 1 hour). Always know the maximum safe dose (bupivacaine about 2 mg/kg).$x$, null),
(186, $x$Shortly after a spinal anaesthetic for caesarean section, a woman becomes profoundly hypotensive and bradycardic, cannot move her arms, says she cannot breathe, then loses consciousness and stops breathing. The most likely cause is:$x$, $x$High (total) spinal block$x$, $x$✅ Correct answer: High (total) spinal block
A HIGH (or TOTAL) SPINAL BLOCK happens when the spinal anaesthetic spreads too far UP the spinal cord, sometimes reaching the brainstem. It causes: severe HYPOTENSION (blocking all sympathetic nerves, causing massive vasodilation) and BRADYCARDIA (blocking the cardio-accelerator nerves at T1–T4); WEAKNESS of the ARMS and hands (block reaching cervical nerves C5–T1); DIFFICULTY BREATHING ("I can't breathe") as the intercostal muscles and then the diaphragm (C3–C5) are paralysed; and finally LOSS OF CONSCIOUSNESS and APNOEA when the brainstem is affected. It usually occurs within minutes of the injection.

❌ Why the other options are wrong:
• Local anaesthetic systemic toxicity — LAST causes metallic taste, tinnitus, seizures and arrhythmias, but not progressive ascending arm weakness.
• Amniotic fluid embolism — Amniotic fluid embolism causes sudden collapse, hypoxia and DIC, not arm weakness after the spinal.
• Vasovagal reaction — A vasovagal reaction causes brief fainting with bradycardia and hypotension, but not arm paralysis and apnoea.

⭐ Key point: Treatment: call for help, secure the airway (intubate and ventilate), give vasopressors (ephedrine, phenylephrine, adrenaline if needed), atropine for bradycardia, IV fluids, left uterine displacement, and deliver the baby if the mother arrests. The block wears off in 1–2 hours; reassure the patient, who may be awake but paralysed — give sedation once intubated.$x$, null),
(187, $x$A patient remains in septic shock (MAP 60 mmHg) on noradrenaline 0.4 micrograms/kg/min after adequate fluids. The Surviving Sepsis Campaign (2021) recommends next:$x$, $x$Adding vasopressin rather than increasing noradrenaline further$x$, $x$✅ Correct answer: Adding vasopressin rather than increasing noradrenaline further
When a patient remains in SEPTIC SHOCK (MAP below 65) despite adequate fluids and a moderate-to-high dose of NORADRENALINE (0.25–0.5 micrograms/kg/min), the SURVIVING SEPSIS CAMPAIGN (2021) suggests ADDING VASOPRESSIN (up to 0.03 units/min) rather than increasing noradrenaline further. Septic shock often causes a relative deficiency of vasopressin, and vasopressin works through a different receptor (V1), so it can raise BP and reduce the noradrenaline dose needed ("noradrenaline-sparing"). If the BP is still low, adrenaline can be added next.

❌ Why the other options are wrong:
• Adding phenylephrine as the second agent — Phenylephrine is not recommended as a second-line agent in septic shock.
• Switching from noradrenaline to dopamine — Dopamine causes more arrhythmias than noradrenaline and is not recommended (except in very selected cases).
• Giving a further 60 mL/kg of fluid regardless of response — Fluids should be given based on assessment of fluid responsiveness (e.g. passive leg raising), not a fixed large volume; excess fluid causes oedema and organ dysfunction.

⭐ Key point: Also consider IV hydrocortisone (200 mg/day) for patients needing ongoing vasopressors, and assess heart function (echo) — add dobutamine if the heart is weak. Always look for and control the source of infection.$x$, null),
(188, $x$Which inotrope increases myocardial contractility mainly through β1 stimulation, but may LOWER blood pressure through β2-mediated vasodilation?$x$, $x$Dobutamine$x$, $x$✅ Correct answer: Dobutamine
DOBUTAMINE is a synthetic catecholamine that mainly stimulates β1 receptors in the heart, INCREASING CONTRACTILITY (stronger heartbeats) and heart rate, so CARDIAC OUTPUT rises. It also stimulates β2 receptors in blood vessels, causing mild VASODILATION, which REDUCES afterload (helpful for a failing heart) but can LOWER BP. So dobutamine is an "INODILATOR". It is used in cardiogenic shock and low cardiac output states, often together with a vasopressor (noradrenaline) if BP is low.

❌ Why the other options are wrong:
• Noradrenaline — Noradrenaline mainly stimulates α1 receptors (vasoconstriction), raising BP; it has only modest β1 effects.
• Phenylephrine — Phenylephrine is a pure α1-agonist — it causes vasoconstriction only, with no inotropic effect, and may cause reflex bradycardia.
• Vasopressin — Vasopressin acts on V1 receptors to constrict blood vessels; it has no inotropic effect.

⭐ Key point: Side effects of dobutamine: tachycardia, arrhythmias (including AF), and hypotension. Monitor ECG and BP continuously. Milrinone is another inodilator (works by a different mechanism).$x$, null),
(189, $x$Which of the following is NOT a recognised adverse effect of long-term amiodarone?$x$, $x$Hyperkalaemia$x$, $x$✅ Correct answer: Hyperkalaemia
AMIODARONE is an antiarrhythmic drug that contains a lot of IODINE and builds up in body tissues (very long half-life — weeks to months). Recognised long-term side effects include: THYROID problems — both HYPOthyroidism and HYPERthyroidism (from the iodine load); SLATE-GREY / BLUE-GREY SKIN discolouration and PHOTOSENSITIVITY (sunburn easily); PULMONARY FIBROSIS (lung scarring — can be fatal); liver toxicity (raised enzymes, hepatitis); CORNEAL DEPOSITS (rarely affect vision); peripheral neuropathy; and bradycardia and QT prolongation. HYPERKALAEMIA is NOT a recognised side effect of amiodarone.

❌ Why the other options are wrong:
• Hypothyroidism or hyperthyroidism — Hypothyroidism and hyperthyroidism are well-known side effects (check thyroid function before and every 6 months).
• Slate-grey skin discolouration and photosensitivity — Skin discolouration and photosensitivity are well-known; advise sunscreen and covering up.
• Pulmonary fibrosis — Pulmonary fibrosis is a serious recognised side effect; watch for new cough and breathlessness.

⭐ Key point: Amiodarone interacts with many drugs — it increases warfarin and digoxin levels (reduce their doses). Monitor thyroid, liver and lung function and the ECG.$x$, null),
(190, $x$A patient on dabigatran has a life-threatening intracranial bleed. The specific reversal agent is:$x$, $x$Idarucizumab$x$, $x$✅ Correct answer: Idarucizumab
DABIGATRAN is a direct THROMBIN inhibitor (a DOAC — direct oral anticoagulant). IDARUCIZUMAB (Praxbind) is a humanised antibody fragment that BINDS DABIGATRAN very tightly (about 350 times more strongly than dabigatran binds thrombin), neutralising its effect within MINUTES. The dose is 5 g IV (two 2.5 g vials). It is used for life-threatening bleeding (e.g. intracranial bleeding) or urgent surgery in patients on dabigatran.

❌ Why the other options are wrong:
• Andexanet alfa — Andexanet alfa reverses FACTOR Xa INHIBITORS (apixaban, rivaroxaban, edoxaban), not dabigatran.
• Vitamin K with prothrombin complex concentrate — Vitamin K with prothrombin complex concentrate (PCC) reverses WARFARIN (vitamin K antagonist).
• Protamine sulphate — Protamine sulphate reverses HEPARIN (unfractionated heparin, and partially LMWH).

⭐ Key point: Dabigatran can also be removed by haemodialysis (it is mainly excreted by the kidneys). Know each anticoagulant and its reversal agent; check the time of the last dose and kidney function.$x$, null),
(191, $x$A patient given IV naloxone for a methadone overdose wakes up fully. The main nursing concern over the next few hours is that:$x$, $x$Naloxone wears off before methadone, so respiratory depression can return$x$, $x$✅ Correct answer: Naloxone wears off before methadone, so respiratory depression can return
NALOXONE is an opioid antagonist that rapidly reverses opioid effects, but its action lasts only about 30–90 MINUTES. METHADONE is a LONG-ACTING opioid (half-life up to 24–36 hours or more). So after naloxone wears off, the methadone is still in the body and the patient can become drowsy again, with RESPIRATORY DEPRESSION returning ("re-narcotisation"), which can be fatal if the patient is not being watched. The nurse must keep the patient under close observation (respiratory rate, SpO2, conscious level), have more naloxone ready, and often start a NALOXONE INFUSION.

❌ Why the other options are wrong:
• Once fully awake after naloxone, the patient needs no further observation — The patient needs continued observation even when fully awake, because methadone outlasts naloxone.
• Naloxone itself causes a long-lasting respiratory depression after waking — Naloxone does not cause respiratory depression; it reverses it. (It can cause acute withdrawal in dependent patients.)
• Naloxone must never be repeated because further doses cause toxicity — Naloxone can and should be repeated if respiratory depression recurs; it is very safe.

⭐ Key point: Observe patients for at least 6 hours after the last naloxone dose for short-acting opioids, and much longer (often 24 hours or more) for methadone or sustained-release opioids. Patients may try to leave once awake — explain the risk.$x$, null),
(192, $x$To reduce nephrotoxicity and ototoxicity with once-daily gentamicin, the dosing interval is adjusted mainly according to:$x$, $x$The trough (pre-dose) or nomogram level$x$, $x$✅ Correct answer: The trough (pre-dose) or nomogram level
GENTAMICIN (an aminoglycoside antibiotic) can damage the KIDNEYS (nephrotoxicity) and the INNER EAR (ototoxicity — deafness and balance problems). Toxicity is linked to high drug levels remaining in the blood for long periods (the TROUGH level — the lowest level just before the next dose). With ONCE-DAILY dosing, a high peak kills bacteria effectively, and a long dose interval allows the level to fall to near zero, reducing toxicity. The DOSING INTERVAL is adjusted according to the TROUGH (pre-dose) level, or a level taken at a set time after the dose and plotted on a NOMOGRAM (e.g. the Hartford nomogram). If the level is high, the interval is extended (e.g. to 36 or 48 hours).

❌ Why the other options are wrong:
• The urine volume passed in the last hour — Urine volume in the last hour is not a reliable guide to gentamicin dosing; kidney function is assessed by creatinine clearance.
• The peak level 1 hour after the dose — Peak levels relate to the drug's effectiveness against bacteria, not mainly to toxicity in once-daily regimens.
• The patient's daily temperature chart — Temperature does not guide gentamicin dosing.

⭐ Key point: Check baseline kidney function, monitor creatinine and drug levels, avoid other nephrotoxic drugs (e.g. NSAIDs, vancomycin, furosemide), and report hearing loss, tinnitus or dizziness.$x$, null),
(193, $x$During a rapid IV vancomycin infusion, a patient develops flushing, itching and a red rash on the face, neck and upper chest, with mild hypotension. There is no wheeze or airway swelling. The correct response is:$x$, $x$Infusion ('red man') reaction — pause, give an antihistamine, restart slower$x$, $x$✅ Correct answer: Infusion ('red man') reaction — pause, give an antihistamine, restart slower
VANCOMYCIN INFUSION REACTION (previously called "RED MAN SYNDROME") happens when vancomycin is infused TOO QUICKLY. The drug directly causes mast cells to release HISTAMINE — it is NOT a true allergy (not IgE-mediated). Features: FLUSHING, ITCHING and a RED RASH on the FACE, NECK and UPPER CHEST, sometimes mild HYPOTENSION, without wheeze or airway swelling. Management: PAUSE the infusion, give an ANTIHISTAMINE (e.g. chlorphenamine), and when symptoms settle, RESTART at a SLOWER rate (over at least 60 minutes per 1 g, or longer).

❌ Why the other options are wrong:
• Anaphylaxis — give IM adrenaline and never use vancomycin again — Anaphylaxis involves wheeze, airway swelling, severe hypotension or collapse; IM adrenaline would be given. This reaction lacks those features.
• Serum sickness — stop the drug and start a course of oral steroids — Serum sickness appears days to weeks after starting a drug, with fever, rash and joint pain.
• Stevens–Johnson syndrome — stop all drugs and refer to dermatology — Stevens–Johnson syndrome involves blistering skin and mucous membrane damage, developing over days.

⭐ Key point: Prevent infusion reactions by infusing vancomycin slowly (at least 60 minutes per gram; maximum 10 mg/min). Document the reaction as an "infusion reaction", not a drug allergy, so the patient does not lose an important antibiotic option.$x$, null),
(194, $x$An ICU nurse promises a frightened patient that she will be the one to update his wife after the procedure, and makes sure she does so even though the shift is busy. Which ethical principle does this show?$x$, $x$Fidelity$x$, $x$✅ Correct answer: Fidelity
FIDELITY means being FAITHFUL to one's PROMISES and COMMITMENTS. The nurse promised a frightened patient that she would personally update his wife after the procedure, and she KEPT THAT PROMISE even though the shift was busy. This builds TRUST, which is essential in the nurse–patient relationship, especially for anxious ICU patients and families.

❌ Why the other options are wrong:
• Veracity — VERACITY means telling the truth; this scenario is about keeping a promise.
• Non-maleficence — NON-MALEFICENCE means avoiding harm.
• Justice — JUSTICE means fairness in treating patients and distributing resources.

⭐ Key point: Avoid making promises you cannot keep. If you cannot fulfil a promise, explain honestly and arrange for someone else to do it.$x$, null),
(195, $x$In a negligence claim against a nurse, the element proved by showing that the patient's injury would NOT have happened 'but for' the nurse's failure is:$x$, $x$Causation$x$, $x$✅ Correct answer: Causation
To succeed in a NEGLIGENCE claim, the patient must prove four elements: (1) DUTY OF CARE — the nurse had a professional duty to the patient; (2) BREACH OF DUTY — the nurse failed to meet the expected standard of care; (3) CAUSATION — the breach actually CAUSED the injury; and (4) DAMAGE — the patient suffered real harm. CAUSATION is tested with the "BUT FOR" test: would the injury have happened "but for" (without) the nurse's failure? If the injury would NOT have happened without the failure, causation is proven.

❌ Why the other options are wrong:
• Damage (harm) — DAMAGE is the harm itself (injury, loss), not the link between the failure and the harm.
• Breach of duty — BREACH OF DUTY is the failure to meet the standard of care.
• Duty of care — DUTY OF CARE is the relationship that creates the obligation to care.

⭐ Key point: If the injury would have happened anyway (e.g. from the disease itself), causation fails, and the negligence claim fails even if there was a breach of duty.$x$, null),
(196, $x$An unconscious trauma patient with no relatives present needs an emergency life-saving procedure. Treatment can proceed legally on the basis of:$x$, $x$The doctrine of necessity (implied consent) in an emergency$x$, $x$✅ Correct answer: The doctrine of necessity (implied consent) in an emergency
Normally, treatment requires the patient's CONSENT. In an EMERGENCY, when the patient is UNCONSCIOUS (lacks capacity), and no one with legal authority is available, treatment that is IMMEDIATELY NECESSARY to save life or prevent serious harm can proceed under the DOCTRINE OF NECESSITY (also called IMPLIED CONSENT) — it is assumed that a reasonable person would want life-saving treatment. Only treatment that cannot wait until the patient regains capacity should be given, and it must be in the patient's best interests.

❌ Why the other options are wrong:
• Written informed consent signed by the nurse in charge — A nurse (or any staff member) cannot sign consent on behalf of an adult patient.
• A court order, which must be obtained before any treatment — A court order is not required for emergency life-saving treatment; delay would cause harm.
• Proxy consent from any staff member on duty — Staff members cannot give "proxy consent" for patients.

⭐ Key point: Document clearly why treatment was needed urgently, that the patient lacked capacity, and that no valid refusal (e.g. an advance directive) was known. Inform relatives as soon as possible.$x$, null),
(197, $x$After caring for a patient with Clostridioides difficile diarrhoea, the correct hand hygiene is:$x$, $x$Wash hands with soap and running water$x$, $x$✅ Correct answer: Wash hands with soap and running water
CLOSTRIDIOIDES DIFFICILE causes diarrhoea (often after antibiotic use) and forms SPORES — tough, dormant forms that are NOT KILLED by ALCOHOL HAND RUB. Spores remain on hands after alcohol rub and can spread to other patients. Washing hands with SOAP and RUNNING WATER physically REMOVES the spores from the skin through friction and rinsing.

❌ Why the other options are wrong:
• Use a chlorhexidine–alcohol hand rub — A chlorhexidine–alcohol rub does not kill C. difficile spores.
• Use alcohol-based hand rub only — Alcohol-based hand rub alone is not effective against spores.
• Wearing gloves is enough; hand hygiene is not needed — Gloves reduce contamination, but hands can be contaminated when removing them — hand washing is still needed afterwards.

⭐ Key point: C. difficile control: single room with its own toilet, contact precautions (gloves and apron), soap-and-water hand washing, cleaning with chlorine-based (sporicidal) disinfectant, and careful antibiotic stewardship. Norovirus also needs soap and water.$x$, null),
(198, $x$A nurse gets a deep needlestick injury from a patient known to be HIV-positive. After washing and encouraging bleeding of the wound, post-exposure prophylaxis should be started:$x$, $x$As soon as possible (no later than 72 h), for 28 days$x$, $x$✅ Correct answer: As soon as possible (no later than 72 h), for 28 days
After a DEEP NEEDLESTICK injury from an HIV-POSITIVE patient (a high-risk exposure), the nurse should: wash the wound with soap and water and encourage bleeding (do NOT suck or scrub), REPORT immediately, and start POST-EXPOSURE PROPHYLAXIS (PEP) — a combination of antiretroviral drugs — AS SOON AS POSSIBLE (ideally within 1–2 hours, and no later than 72 hours). PEP is taken for 28 DAYS. Early PEP reduces the risk of HIV infection by about 80%.

❌ Why the other options are wrong:
• After her own HIV test result returns, for 28 days — PEP should not wait for the nurse's own test result; a baseline test is taken, but PEP is started immediately.
• Within 24 hours of the injury, taken for 6 months — PEP is taken for 28 days, not 6 months, and should start within hours, not 24 hours.
• Within 7 days of the injury, taken for 14 days — 7 days is far too late (PEP is not effective after 72 hours), and 14 days is too short.

⭐ Key point: Follow-up HIV tests at about 6 weeks and 3 months (per local guidelines). Also assess for hepatitis B and C exposure. Use safe practice: never recap needles, and use sharps bins at the point of care.$x$, null),
(199, $x$Which of the following is NOT one of the 'five rights' of delegation?$x$, $x$The right cost$x$, $x$✅ Correct answer: The right cost
The FIVE RIGHTS OF DELEGATION help nurses delegate tasks safely: (1) RIGHT TASK — can the task be delegated?; (2) RIGHT CIRCUMSTANCE — is the patient stable and the setting appropriate?; (3) RIGHT PERSON — does the person have the skills and competence?; (4) RIGHT DIRECTION/COMMUNICATION — clear instructions; (5) RIGHT SUPERVISION/EVALUATION — monitoring and feedback. "RIGHT COST" is NOT one of the five rights.

❌ Why the other options are wrong:
• The right task — Right task is one of the five rights.
• The right person — Right person is one of the five rights.
• The right supervision — Right supervision is one of the five rights.

⭐ Key point: The registered nurse REMAINS ACCOUNTABLE for the delegated task. Do not delegate assessment, care planning, evaluation, or tasks requiring nursing judgement to unlicensed staff.$x$, null),
(200, $x$In the hierarchy of evidence for evidence-based practice, the strongest evidence on the effectiveness of an intervention usually comes from:$x$, $x$A systematic review and meta-analysis of RCTs$x$, $x$✅ Correct answer: A systematic review and meta-analysis of RCTs
In the HIERARCHY OF EVIDENCE, studies are ranked by how well they reduce bias. The strongest evidence on whether an intervention works usually comes from a SYSTEMATIC REVIEW and META-ANALYSIS of RANDOMISED CONTROLLED TRIALS (RCTs). A systematic review collects all relevant trials using a clear, reproducible method; a meta-analysis combines their results statistically, giving a more precise and reliable estimate than any single study. The hierarchy (strongest to weakest): systematic reviews/meta-analyses → RCTs → cohort studies → case-control studies → case series/reports → expert opinion.

❌ Why the other options are wrong:
• A large prospective cohort study followed for years — A cohort study is observational, so it is more likely to be affected by bias and confounding than RCTs.
• Expert opinion from a respected professional body — Expert opinion is at the BOTTOM of the hierarchy.
• A single large multicentre randomised controlled trial — A single large RCT is strong, but a systematic review of many RCTs is stronger.

⭐ Key point: Evidence-based practice combines the best research evidence with clinical expertise and the patient's values and preferences.$x$, null)
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
