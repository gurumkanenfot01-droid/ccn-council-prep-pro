-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 8, part A (questions 1–100)
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

⭐ Key point: Stop the antipsychotic, give cooling, fluids, and consider dantrolene or bromocriptine. Watch for kidney failure from rhabdomyolysis.$x$, null)
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
