-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 4, part B (questions 101–200)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(101, $x$To assess for "E" (equipment failure) in the DOPE mnemonic, the nurse should:$x$, $x$Disconnect the patient from the ventilator and manually ventilate with a bag-valve device connected to 100% oxygen$x$, $x$✅ Correct answer: Disconnect the patient from the ventilator and manually ventilate with a bag-valve device connected to 100% oxygen
In the DOPE mnemonic, "E" = EQUIPMENT FAILURE (ventilator malfunction, circuit disconnection, oxygen supply failure). To assess, DISCONNECT the patient from the ventilator and MANUALLY VENTILATE with a bag-valve device connected to 100% OXYGEN. If the patient improves, the ventilator or circuit is the problem.

❌ Why the other options are wrong:
• Increase the ventilator's tidal volume setting — Increasing tidal volume doesn't assess equipment.
• Assume the ETT is dislodged — Assuming the tube is dislodged skips assessment.
• Order a stat chest x-ray before any other action — An X-ray delays urgent action.

⭐ Key point: Always keep a bag-valve-mask and oxygen at every ventilated patient's bedside.$x$, null),
(102, $x$A patient with COPD should be educated to seek urgent medical attention for which warning sign?$x$, $x$A significant increase in breathlessness, a change in sputum colour/volume, or new fever suggesting an exacerbation or infection$x$, $x$✅ Correct answer: A significant increase in breathlessness, a change in sputum colour/volume, or new fever suggesting an exacerbation or infection
COPD patients should seek urgent help for signs of an EXACERBATION: significantly INCREASED BREATHLESSNESS, CHANGE in SPUTUM colour (yellow/green) or VOLUME, NEW FEVER, chest pain, confusion, or drowsiness. Early treatment (steroids, antibiotics) can prevent hospital admission.

❌ Why the other options are wrong:
• Occasional mild breathlessness identical to their usual baseline — Usual baseline breathlessness doesn't need urgent care.
• Feeling well with no change in symptoms — Feeling well needs no urgent attention.
• A single missed dose of an as-needed bronchodilator with no symptoms — One missed as-needed dose with no symptoms isn't urgent.

⭐ Key point: Provide a written COPD action plan, and ensure inhaler technique and vaccinations are up to date.$x$, null),
(103, $x$In a patient with severe air-trapping from status asthmaticus, which ventilator strategy helps reduce auto-PEEP?$x$, $x$Prolong expiratory time (lower rate, higher inspiratory flow)$x$, $x$✅ Correct answer: Prolong expiratory time (lower rate, higher inspiratory flow)
In STATUS ASTHMATICUS, air trapping (auto-PEEP) occurs because exhalation is slow. PROLONGING EXPIRATORY TIME allows more complete exhalation: LOWER the RATE (more time for each breath) and use a HIGHER INSPIRATORY FLOW (delivers the breath faster, leaving more time to exhale).

❌ Why the other options are wrong:
• Prolong inspiratory time — Prolonging inspiratory time shortens expiration, worsening air trapping.
• Increase PEEP above intrinsic level — Increasing PEEP above intrinsic PEEP can worsen hyperinflation.
• Increase respiratory rate — Increasing the rate shortens expiration.

⭐ Key point: Accept permissive hypercapnia to avoid dangerous air trapping.$x$, null),
(104, $x$Which volatile anaesthetic agent has the highest blood-gas partition coefficient, giving it the slowest onset and offset among modern agents?$x$, $x$Halothane$x$, $x$✅ Correct answer: Halothane
The BLOOD-GAS PARTITION COEFFICIENT shows how soluble an anaesthetic gas is in blood. A HIGH coefficient means the gas dissolves easily in blood, so it takes LONGER to build up enough concentration to act on the brain (SLOW onset) and to wash out (SLOW offset). HALOTHANE has the HIGHEST coefficient among the options (about 2.4).

❌ Why the other options are wrong:
• Desflurane — Desflurane has the LOWEST (about 0.42) — fastest onset and offset.
• Sevoflurane — Sevoflurane is low (about 0.65) — fast, used for inhalational induction.
• Nitrous oxide — Nitrous oxide is low (about 0.47) — fast.

⭐ Key point: Halothane is rarely used today because of liver toxicity and arrhythmias.$x$, null),
(105, $x$The following are absolute indications for intubation in life-threatening asthma EXCEPT:$x$, $x$Mild wheeze with normal speech$x$, $x$✅ Correct answer: Mild wheeze with normal speech
In LIFE-THREATENING ASTHMA, intubation is needed when the patient is failing despite maximal treatment. Indications include: CARDIOPULMONARY ARREST, DECREASING LEVEL OF CONSCIOUSNESS (drowsiness, confusion, coma — from high CO2 and low oxygen), SEVERE REFRACTORY HYPOXAEMIA, exhaustion with poor respiratory effort, and a rising PaCO2 with worsening acidosis. A patient with MILD WHEEZE and NORMAL SPEECH has MILD asthma and does NOT need intubation — intubation would expose them to unnecessary serious risks (barotrauma, air trapping, hypotension).

❌ Why the other options are wrong:
• Cardiopulmonary arrest — Cardiopulmonary arrest IS an absolute indication.
• Decreasing level of consciousness — Decreasing consciousness IS an indication.
• Severe refractory hypoxaemia — Severe refractory hypoxaemia IS an indication.

⭐ Key point: Intubating an asthmatic is high-risk; it should be done by the most experienced person, with ketamine as a useful induction agent and ventilator settings that allow long expiratory times.$x$, null),
(106, $x$How often should ventilator circuit tubing be routinely changed to reduce infection risk, according to current VAP-prevention guidance?$x$, $x$Only when visibly soiled or malfunctioning, not on a fixed schedule$x$, $x$✅ Correct answer: Only when visibly soiled or malfunctioning, not on a fixed schedule
Current VAP-prevention guidelines (e.g. CDC, SHEA) recommend that VENTILATOR CIRCUITS should NOT be changed routinely on a fixed schedule. They should be changed ONLY WHEN VISIBLY SOILED (blood, vomit, secretions) or MALFUNCTIONING. Studies showed that routine frequent changes did NOT reduce VAP — in fact, each change opens the circuit, exposing the patient to contamination, loss of PEEP and lung derecruitment, and may increase VAP risk. Frequent changes also increase cost and staff workload.

❌ Why the other options are wrong:
• Every 24 hours routinely — Routine changes every 24 hours are not recommended.
• Every 48 hours routinely — Routine changes every 48 hours are not recommended.
• Every 4 hours routinely — Changes every 4 hours would be excessive and harmful.

⭐ Key point: Drain condensate in the circuit away from the patient (never back towards them), keep HMEs changed per manufacturer's instructions, and minimise disconnections.$x$, null),
(107, $x$Which of the following is an absolute indication for initiating invasive mechanical ventilation?$x$, $x$Apnea with respiratory arrest$x$, $x$✅ Correct answer: Apnea with respiratory arrest
An ABSOLUTE indication for invasive mechanical ventilation is APNOEA with RESPIRATORY ARREST — the patient is not breathing at all, so they will die within minutes without ventilation. Other strong indications include: inability to protect the airway (GCS ≤8), severe respiratory failure not responding to oxygen or NIV (hypoxaemia, hypercapnia with acidosis, exhaustion), severe shock or cardiac arrest, and the need for deep sedation or paralysis (e.g. raised ICP management).

❌ Why the other options are wrong:
• Mild hypoxemia responsive to nasal cannula oxygen — Mild hypoxaemia that responds to nasal cannula oxygen does not need ventilation.
• Chronic stable COPD with SpO2 90% — Chronic stable COPD with SpO2 90% is often the patient's baseline; ventilation is not needed.
• Post-operative sedation for 1 hour — Short post-operative sedation usually resolves without invasive ventilation; observe and support as needed.

⭐ Key point: Invasive ventilation carries risks (VAP, barotrauma, sedation, delirium) — so the indication must be clear, and weaning should start as early as possible.$x$, null),
(108, $x$Which type of ventilator generates a negative pressure around the thorax to draw air into the lungs, historically exemplified by the "iron lung"?$x$, $x$Negative pressure ventilator$x$, $x$✅ Correct answer: Negative pressure ventilator
A NEGATIVE PRESSURE VENTILATOR works by creating NEGATIVE (sub-atmospheric) PRESSURE around the outside of the chest. This pulls the chest wall outwards, which lowers the pressure inside the lungs and DRAWS AIR IN — similar to normal breathing. The classic example is the "IRON LUNG", a sealed metal tank widely used during POLIO epidemics in the 1940s–1950s, when polio paralysed the breathing muscles. Modern forms include cuirass (chest shell) ventilators.

❌ Why the other options are wrong:
• Positive pressure ventilator — Positive pressure ventilators (used in most ICUs today) PUSH air INTO the lungs through a tube or mask.
• High-frequency oscillatory ventilator — High-frequency oscillatory ventilators deliver very small, very rapid oscillating breaths (a type of positive pressure).
• Pressure-cycled ventilator — Pressure-cycled ventilators deliver breaths until a set pressure is reached (positive pressure).

⭐ Key point: Positive pressure ventilation replaced negative pressure ventilation because it provides better control and access to the patient.$x$, null),
(109, $x$Hypoxia during general anaesthesia refers to:$x$, $x$Inadequate oxygen delivery to tissues$x$, $x$✅ Correct answer: Inadequate oxygen delivery to tissues
HYPOXIA means INADEQUATE OXYGEN DELIVERY to (or use by) the TISSUES. During general anaesthesia, causes include: airway obstruction or misplaced tube (e.g. oesophageal intubation), hypoventilation, low FiO2 or oxygen supply failure, disconnection, laryngospasm or bronchospasm, aspiration, atelectasis, pneumothorax, and reduced cardiac output. Hypoxia can rapidly cause brain injury, arrhythmias and cardiac arrest. (Strictly, HYPOXAEMIA is low oxygen in the blood; HYPOXIA is low oxygen at the tissue level.)

❌ Why the other options are wrong:
• Excess oxygen delivery to tissues — Excess oxygen delivery is HYPEROXIA.
• Elevated body temperature — Elevated body temperature is HYPERTHERMIA.
• Low blood glucose — Low blood glucose is HYPOGLYCAEMIA.

⭐ Key point: Continuous pulse oximetry, capnography and an oxygen analyser are essential safety monitors during anaesthesia.$x$, null),
(110, $x$Which mode combines a set mandatory volume-targeted breath with a decelerating pressure waveform, aiming to guarantee tidal volume while limiting peak pressure?$x$, $x$Pressure-regulated volume control (PRVC)$x$, $x$✅ Correct answer: Pressure-regulated volume control (PRVC)
PRESSURE-REGULATED VOLUME CONTROL (PRVC) is a "dual" mode: the clinician sets a TARGET TIDAL VOLUME, and the ventilator delivers each breath with a DECELERATING (pressure-control) flow pattern, automatically adjusting the inspiratory PRESSURE breath by breath to achieve the target volume at the LOWEST possible pressure. This aims to GUARANTEE TIDAL VOLUME while LIMITING PEAK PRESSURE.

❌ Why the other options are wrong:
• Standard SIMV — Standard SIMV doesn't automatically adjust pressure.
• CPAP — CPAP gives no mandatory breaths.
• High-frequency jet ventilation — High-frequency jet ventilation uses very small, rapid breaths.

⭐ Key point: In PRVC, watch for rising pressures (worsening compliance) and patient effort affecting volumes.$x$, null),
(111, $x$The following are the classical hemolytic transfusion reaction in general anesthesia except:$x$, $x$bradycardia$x$, $x$✅ Correct answer: bradycardia
A HAEMOLYTIC TRANSFUSION REACTION (usually ABO incompatibility) destroys the transfused red cells. Under GENERAL ANAESTHESIA, the usual early symptoms (fever, chills, back or chest pain, anxiety) are hidden. Classic signs then include: unexplained HYPOTENSION, TACHYCARDIA, HAEMOGLOBINURIA (red or dark urine in the catheter bag), diffuse oozing from the wound and IV sites (DIC), and sometimes WHEEZING/bronchospasm. BRADYCARDIA is NOT a classic sign — the heart usually speeds up (tachycardia) in response to hypotension.

❌ Why the other options are wrong:
• Hypotension — Hypotension IS a classic sign under anaesthesia.
• Wheezing — Wheezing (bronchospasm) can occur.
• Hemoglobinuria — Haemoglobinuria IS a classic sign.

⭐ Key point: If suspected: stop the transfusion immediately, keep the vein open with saline through a new set, support BP, maintain urine output, check clotting, and return the blood bag to the lab with samples.$x$, null),
(112, $x$A patient in SIMV mode breathes spontaneously between mandatory breaths. What determines the tidal volume of these spontaneous breaths?$x$, $x$The patient's own effort, with support only from pressure support if added$x$, $x$✅ Correct answer: The patient's own effort, with support only from pressure support if added
In SIMV, the mandatory breaths have the SET tidal volume (or pressure), but the SPONTANEOUS breaths in between depend on the PATIENT'S OWN EFFORT and lung mechanics. If PRESSURE SUPPORT is added, the ventilator helps each spontaneous breath with a set pressure, increasing the volume.

❌ Why the other options are wrong:
• The set tidal volume on the ventilator — The set tidal volume applies only to mandatory breaths.
• The set PEEP level — PEEP doesn't determine tidal volume.
• The inspiratory flow rate alone — Flow rate alone doesn't determine spontaneous volume.

⭐ Key point: Monitor spontaneous tidal volumes in SIMV — small volumes may indicate fatigue.$x$, null),
(113, $x$A patient with well-controlled hypertension and no functional limitation is classified as which ASA physical status?$x$, $x$ASA II$x$, $x$✅ Correct answer: ASA II
The ASA PHYSICAL STATUS classification: ASA I — healthy; ASA II — MILD SYSTEMIC DISEASE without functional limitation (e.g. WELL-CONTROLLED HYPERTENSION, controlled diabetes, smoker); ASA III — severe systemic disease with functional limitation; ASA IV — severe disease that is a constant threat to life; ASA V — moribund; ASA VI — brain-dead organ donor.

❌ Why the other options are wrong:
• ASA I — ASA I is a healthy patient.
• ASA III — ASA III involves functional limitation.
• ASA IV — ASA IV is a constant threat to life.

⭐ Key point: Add "E" for emergency surgery (e.g. ASA IIE).$x$, null),
(114, $x$The Surviving Sepsis 'hour-1 bundle' includes which of the following priority actions?$x$, $x$Obtain blood cultures, measure lactate, give broad-spectrum antibiotics, and begin fluid resuscitation$x$, $x$✅ Correct answer: Obtain blood cultures, measure lactate, give broad-spectrum antibiotics, and begin fluid resuscitation
The SURVIVING SEPSIS "HOUR-1 BUNDLE" includes: measure LACTATE (re-measure if above 2), obtain BLOOD CULTURES before antibiotics, give BROAD-SPECTRUM ANTIBIOTICS, begin FLUID RESUSCITATION (30 mL/kg crystalloid for hypotension or lactate ≥4), and start VASOPRESSORS if hypotensive during or after fluids (to keep MAP ≥65).

❌ Why the other options are wrong:
• Wait for culture results before starting any treatment — Waiting for cultures delays treatment.
• Give oral antibiotics only — Oral antibiotics are not adequate in sepsis.
• Delay fluids until blood pressure normalises spontaneously — Fluids should not be delayed.

⭐ Key point: Each hour of delay in antibiotics in septic shock increases mortality.$x$, null),
(115, $x$A PT (prothrombin time) greater than what value is used as a liver transplant criterion in FHF?$x$, $x$>50 seconds$x$, $x$✅ Correct answer: >50 seconds
KING'S COLLEGE CRITERIA identify patients with FULMINANT HEPATIC FAILURE (FHF) who need LIVER TRANSPLANT. For NON-paracetamol causes, transplant is indicated if PT is above 100 seconds (INR >6.5) alone, OR any 3 of: age under 10 or over 40, unfavourable cause, jaundice for more than 7 days before encephalopathy, PT above 50 SECONDS (INR >3.5), or bilirubin above 300 µmol/L. So a PT above 50 seconds is a recognised transplant criterion (as one of the combined criteria).

❌ Why the other options are wrong:
• >15 seconds — 15 seconds is close to normal.
• >30 seconds — 30 seconds is prolonged but not the cut-off.
• >100 seconds — 100 seconds is the standalone criterion; but the commonly tested cut-off in the combined criteria is 50 seconds.

⭐ Key point: Refer early to a liver transplant centre when coagulopathy, encephalopathy or acidosis worsen.$x$, null),
(116, $x$A disaster drill evaluates:$x$, $x$All of the above$x$, $x$✅ Correct answer: All of the above
A DISASTER DRILL tests how well a hospital or unit would cope with a real disaster. It evaluates COMMUNICATION SYSTEMS (alerting staff, call-in lists, phones, radios), RESOURCE ALLOCATION (beds, ventilators, blood, supplies), and STAFF RESPONSE (roles, triage, teamwork). So "ALL OF THE ABOVE" is correct.

❌ Why the other options are wrong:
• Communication systems — Communication is only one part.
• Resource allocation — Resource allocation is only one part.
• Staff response — Staff response is only one part.

⭐ Key point: After each drill, debrief and update the disaster plan.$x$, null),
(117, $x$An SpO₂ below what value is generally used as an ICU admission threshold?$x$, $x$90%$x$, $x$✅ Correct answer: 90%
An SpO2 BELOW 90% (despite oxygen) generally indicates significant HYPOXAEMIA and is used as a threshold for considering ICU admission or escalation, because it corresponds to a PaO2 of about 60 mmHg — the steep part of the oxygen dissociation curve, where small changes cause rapid drops in oxygen content.

❌ Why the other options are wrong:
• 95% — 95% is normal.
• 93% — 93% is mildly low but usually manageable on the ward.
• 85% — 85% is severe; waiting until then delays care.

⭐ Key point: Consider the trend and the oxygen requirement, not just one value.$x$, null),
(118, $x$Which form of tetanus is the most common overall?$x$, $x$Generalised$x$, $x$✅ Correct answer: Generalised
GENERALISED TETANUS is the MOST COMMON form (about 80% of cases). It causes trismus (lockjaw), risus sardonicus (fixed smile), neck and back stiffness, opisthotonus (arching of the back), painful muscle spasms, and autonomic instability.

❌ Why the other options are wrong:
• Localised — Localised tetanus affects muscles near the wound only (uncommon).
• Cephalic — Cephalic tetanus affects cranial nerves after head injuries (rare).
• Neonatal — Neonatal tetanus is a form of generalised tetanus in newborns (common in some low-income countries, but not the most common overall).

⭐ Key point: Prevent tetanus through immunisation, including of pregnant women (protects newborns).$x$, null),
(119, $x$Ventilation strategy for a patient with significant inhalational injury favours:$x$, $x$Low tidal volumes with permissive hypercapnia$x$, $x$✅ Correct answer: Low tidal volumes with permissive hypercapnia
Patients with INHALATION INJURY often develop ARDS-like lung damage. The recommended ventilation strategy is LUNG-PROTECTIVE: LOW TIDAL VOLUMES (6 mL/kg predicted body weight), plateau pressure ≤30 cmH2O, adequate PEEP, and PERMISSIVE HYPERCAPNIA (accepting higher CO2 to avoid lung injury).

❌ Why the other options are wrong:
• High tidal volumes to maximise oxygenation — High tidal volumes cause further lung injury.
• No ventilatory support is needed — Many need ventilatory support.
• Maximum PEEP at all times — Maximum PEEP at all times can cause barotrauma and hypotension.

⭐ Key point: Bronchoscopy may be needed to assess and clear soot and debris from the airway.$x$, null),
(120, $x$Operative management of extraperitoneal bladder rupture may be indicated in:$x$, $x$All of the above$x$, $x$✅ Correct answer: All of the above
EXTRAPERITONEAL bladder rupture (urine leaks outside the peritoneum) is usually managed CONSERVATIVELY with catheter drainage. SURGERY is indicated when there is: concomitant RECTAL or VAGINAL injury, a FOREIGN BODY (e.g. bone fragment) in the bladder wall, an EXTENSIVE bladder wall tear, bladder neck injury, or when the patient is having laparotomy for other injuries. So "ALL OF THE ABOVE" is correct.

❌ Why the other options are wrong:
• Concomitant rectal or vaginal injury — Rectal/vaginal injury is one indication.
• Foreign body in the bladder wall — Foreign body is one indication.
• Extensive bladder wall tear — Extensive tear is one indication.

⭐ Key point: Intraperitoneal bladder rupture always requires surgical repair.$x$, null),
(121, $x$Neurogenic shock is distinguished from other types of shock by:$x$, $x$Bradycardia$x$, $x$✅ Correct answer: Bradycardia
NEUROGENIC SHOCK happens after spinal cord injury above about T6. The injury cuts off the SYMPATHETIC nervous system, so: blood vessels DILATE (low SVR → HYPOTENSION) and the heart is left under unopposed VAGAL (parasympathetic) control, causing BRADYCARDIA. The skin is typically WARM and DRY (because the vessels are dilated). This combination of hypotension WITH bradycardia distinguishes it from most other types of shock (hypovolaemic, septic, cardiogenic), which usually cause TACHYCARDIA.

❌ Why the other options are wrong:
• Tachycardia — Tachycardia is typical of OTHER shock types (the body's compensation).
• No change in heart rate — The heart rate does change — it falls.
• Always presenting with fever — Neurogenic shock does not always present with fever; temperature regulation may be impaired, causing hypothermia or hyperthermia.

⭐ Key point: Always exclude bleeding first in trauma patients. Treat with careful fluids, vasopressors (e.g. noradrenaline) and atropine or pacing for symptomatic bradycardia.$x$, null),
(122, $x$The two drugs used together to manage the hypermetabolic response in burns are:$x$, $x$Propranolol and oxandrolone$x$, $x$✅ Correct answer: Propranolol and oxandrolone
After major BURNS (above about 30–40% TBSA), the body enters a prolonged HYPERMETABOLIC state: very high stress hormones (catecholamines, cortisol), high heart rate, high energy use, MUSCLE WASTING, insulin resistance and poor wound healing, which can last months. Two drugs are used together to reduce this: PROPRANOLOL (a non-selective beta-blocker) — reduces heart rate, cardiac workload, energy expenditure and muscle breakdown; OXANDROLONE (an anabolic steroid) — increases muscle protein synthesis, improves weight gain and wound healing, and shortens hospital stay.

❌ Why the other options are wrong:
• Adrenaline and atropine — Adrenaline and atropine are emergency drugs for cardiac arrest and bradycardia.
• Insulin and glucagon — Insulin may be used to control hyperglycaemia, but glucagon is not used for hypermetabolism.
• Furosemide and spironolactone — Furosemide and spironolactone are diuretics, not used for hypermetabolism.

⭐ Key point: Supportive measures also matter: early enteral nutrition with high protein, early wound excision and grafting, warm environment (28–33 °C), and early mobilisation.$x$, null),
(123, $x$Psammoma bodies on histology are a classic feature found in what percentage of papillary carcinoma cases?$x$, $x$60%$x$, $x$✅ Correct answer: 60%
PSAMMOMA BODIES are small, round, layered (laminated) clumps of CALCIUM seen under the microscope. They form from dead tumour cells that have calcified. They are a classic feature of PAPILLARY THYROID CARCINOMA, found in roughly HALF of cases (commonly quoted as about 40–60%, so 60% is the closest option). They are also seen in other tumours: papillary serous ovarian cancer, meningioma and mesothelioma (memory aid: "PSaMMoma" — Papillary thyroid, Serous ovarian, Meningioma, Mesothelioma).

❌ Why the other options are wrong:
• 10% — 10% underestimates how often they are found.
• 25% — 25% underestimates how often they are found.
• 100% — 100% is incorrect — not every papillary carcinoma shows psammoma bodies.

⭐ Key point: Papillary carcinoma is the most common thyroid cancer, often spreads to neck lymph nodes, and has an excellent prognosis with treatment.$x$, null),
(124, $x$Concerning the following investigation in DIC, which is not correct?$x$, $x$Fibrinogen is increased$x$, $x$✅ Correct answer: Fibrinogen is increased
In DISSEMINATED INTRAVASCULAR COAGULATION (DIC), a serious illness (sepsis, trauma, obstetric emergencies, cancer) triggers widespread clotting in small vessels. This CONSUMES clotting factors and platelets, so the patient both clots and BLEEDS. Typical lab results: PROLONGED PT/INR and APTT (clotting factors used up), LOW PLATELET COUNT, LOW CLOTTING FACTORS, LOW FIBRINOGEN (used up), and HIGH D-DIMER/FDPs (clot breakdown). The statement "FIBRINOGEN is INCREASED" is NOT correct — fibrinogen is usually DECREASED (although it can be normal early because it rises in inflammation).

❌ Why the other options are wrong:
• Prothrombin time is prolonged — Prothrombin time IS prolonged in DIC.
• Platelet count is reduced — Platelet count IS reduced.
• Clotting factors are reduced — Clotting factors ARE reduced (consumed).

⭐ Key point: Treat the underlying cause; give platelets, FFP and cryoprecipitate if bleeding or before procedures. Use the ISTH DIC score to help diagnosis.$x$, null),
(125, $x$Anti-thyroid drug treatment is typically continued for how long before a patient may be considered cured?$x$, $x$18 months$x$, $x$✅ Correct answer: 18 months
In GRAVES' DISEASE (the commonest cause of hyperthyroidism), ANTI-THYROID DRUGS such as CARBIMAZOLE or PROPYLTHIOURACIL are usually given for about 12–18 MONTHS. After this course, the drug is stopped, and about 50% of patients stay in long-term REMISSION (effectively "cured"). If hyperthyroidism comes back, definitive treatment with radioactive iodine or thyroidectomy is usually considered.

❌ Why the other options are wrong:
• 2 weeks — 2 weeks is far too short — the drugs take 4–8 weeks just to control thyroid levels.
• 3 months — 3 months is too short for lasting remission.
• 10 years — 10 years is not the standard course (though some patients choose long-term low-dose therapy).

⭐ Key point: Warn patients about AGRANULOCYTOSIS — they must report sore throat, fever or mouth ulcers immediately and have an urgent blood count.$x$, null),
(126, $x$A patient with 40% total body surface area burns is being resuscitated using the Parkland formula. If the patient weighs 70kg, the total fluid requirement for the first 24 hours is calculated as:$x$, $x$4 x 70 x 40 = 11,200ml$x$, $x$✅ Correct answer: 4 x 70 x 40 = 11,200ml
PARKLAND FORMULA: 4 mL × WEIGHT (kg) × %TBSA = 4 × 70 × 40 = 11,200 mL in 24 hours. Half (5,600 mL) in the first 8 hours from the burn, and half over the next 16 hours.

❌ Why the other options are wrong:
• 4 x 40 = 160ml — 160 mL omits the weight.
• 70 x 40 = 2,800ml only — 2,800 mL omits the 4 mL factor.
• No formula is used for burns — A formula IS used for burns.

⭐ Key point: Adjust fluids according to urine output (0.5–1 mL/kg/hr in adults).$x$, null),
(127, $x$The immediate first step after a needle-stick injury is to:$x$, $x$Wash the area with soap and water and report the exposure per protocol$x$, $x$✅ Correct answer: Wash the area with soap and water and report the exposure per protocol
After a NEEDLE-STICK injury, immediately WASH the area with SOAP and WATER (encourage gentle bleeding, do not scrub or suck), and REPORT the exposure per protocol (occupational health, risk assessment, testing, and post-exposure prophylaxis if indicated).

❌ Why the other options are wrong:
• Ignore it if the source patient appears healthy — Healthy appearance doesn't rule out infection.
• Apply a tourniquet — A tourniquet is not used.
• Wait 24 hours before taking any action — Waiting 24 hours delays PEP (most effective within hours).

⭐ Key point: HIV PEP should be started as soon as possible (ideally within 2 hours, no later than 72 hours).$x$, null),
(128, $x$Which one of the following is included in man-made disaster?$x$, $x$Wars$x$, $x$✅ Correct answer: Wars
DISASTERS are classified by cause. MAN-MADE (human-caused) disasters result from human actions or failures: WARS and armed conflict, terrorism and bomb blasts, industrial explosions, chemical or radiation leaks, building collapses, major fires, and transport accidents (e.g. tanker explosions, plane crashes). NATURAL disasters are caused by natural forces: earthquakes, floods, tsunamis, cyclones, droughts and epidemics.

❌ Why the other options are wrong:
• Earth quake — An earthquake is a NATURAL disaster (movement of the earth's crust).
• Floods — Floods are usually NATURAL (heavy rainfall, rivers overflowing), though poor drainage and construction can worsen them.
• Tsunami — A tsunami is a NATURAL disaster (giant waves, often caused by undersea earthquakes).

⭐ Key point: Hospitals need major incident plans covering both natural and man-made disasters, including triage, surge capacity and communication systems.$x$, null),
(129, $x$A burns patient's wound care plan includes silver sulfadiazine cream. The nurse understands this agent is used primarily for its:$x$, $x$Broad-spectrum antimicrobial effect, helping prevent burn wound infection$x$, $x$✅ Correct answer: Broad-spectrum antimicrobial effect, helping prevent burn wound infection
SILVER SULFADIAZINE (SSD) cream combines silver (which kills microbes) with a sulfonamide antibiotic. It has a BROAD-SPECTRUM ANTIMICROBIAL effect against gram-positive and gram-negative bacteria (including Pseudomonas and Staphylococcus aureus) and some fungi (Candida). It is applied to burn wounds to PREVENT and treat BURN WOUND INFECTION, which is a major cause of death in burns patients (burns destroy the skin barrier).

❌ Why the other options are wrong:
• Analgesic properties only — It is not mainly a painkiller (it has a soothing effect but is not an analgesic).
• Ability to promote scar-free healing with no infection benefit — It does not guarantee scar-free healing; it may slightly delay healing.
• Cooling effect only — It is not used mainly for cooling.

⭐ Key point: Side effects: transient leukopenia, skin discoloration; avoid in sulfa allergy, near-term pregnancy and newborns (kernicterus risk). Newer silver dressings reduce the need for daily dressing changes.$x$, null),
(130, $x$Which of the following is a goitrogenic food capable of blocking iodine uptake?$x$, $x$Cassava$x$, $x$✅ Correct answer: Cassava
GOITROGENS are substances that interfere with thyroid hormone production. CASSAVA contains CYANOGENIC GLYCOSIDES (e.g. linamarin), which the body converts to THIOCYANATE. Thiocyanate BLOCKS the IODINE pump in the thyroid gland, reducing iodine uptake. In areas where iodine intake is low and cassava is a staple food (including parts of Nigeria), this contributes to GOITRE and hypothyroidism. Proper processing (soaking, fermenting, drying, cooking — as in making garri) reduces the toxic content.

❌ Why the other options are wrong:
• Rice — Rice is not goitrogenic.
• Chicken — Chicken is not goitrogenic.
• Eggs — Eggs are not goitrogenic; they contain some iodine.

⭐ Key point: Iodised salt is the main public health measure to prevent iodine-deficiency goitre. Other goitrogens include cabbage, cauliflower and millet.$x$, null),
(131, $x$The anatomical landmark dividing upper from lower GI bleeding is the:$x$, $x$Ligament of Treitz$x$, $x$✅ Correct answer: Ligament of Treitz
The LIGAMENT OF TREITZ (suspensory ligament of the duodenum) marks the junction between the duodenum and jejunum. Bleeding ABOVE (proximal to) it is UPPER GI bleeding; bleeding BELOW (distal to) it is LOWER GI bleeding.

❌ Why the other options are wrong:
• Pylorus — The pylorus is between the stomach and duodenum.
• Ileocaecal valve — The ileocaecal valve is between the small and large intestine.
• Duodenal bulb — The duodenal bulb is part of the duodenum.

⭐ Key point: Upper GI bleeding causes haematemesis and melaena; lower GI bleeding usually causes fresh red blood per rectum.$x$, null),
(132, $x$Which of the following statements regarding blunt injury are false?$x$, $x$In chest injuries, damage to abdominal organs is rare.$x$, $x$✅ Correct answer: In chest injuries, damage to abdominal organs is rare.
In BLUNT CHEST injury, damage to ABDOMINAL ORGANS (liver, spleen, kidneys) is COMMON, because the lower ribs cover these organs. So the statement "damage to abdominal organs is rare" is FALSE.

❌ Why the other options are wrong:
• The mechanisms are direct or indirect. — Blunt injury can be direct or indirect — true.
• In indirect injury, associated injuries may be present and should be sought. — In indirect injury, associated injuries should be sought — true.
• Overt injury should lead the clinician to look for a covert injury as well. — Overt injury should prompt a search for covert injury — true.

⭐ Key point: Lower rib fractures should raise suspicion of liver (right) or spleen (left) injury.$x$, null),
(133, $x$Treatment for myoglobinuria after electrical injury includes double fluids plus:$x$, $x$Mannitol and sodium bicarbonate$x$, $x$✅ Correct answer: Mannitol and sodium bicarbonate
High-voltage ELECTRICAL injuries cause extensive deep MUSCLE damage (even when skin burns look small). Damaged muscle releases MYOGLOBIN, which can block the kidney tubules and cause ACUTE KIDNEY INJURY. Treatment: GIVE MORE IV FLUIDS than standard burn formulas (often double), aiming for a URINE OUTPUT of 1–2 mL/kg/hr (about 100 mL/hr in adults) until the urine clears; plus MANNITOL (an osmotic diuretic that flushes the tubules) and SODIUM BICARBONATE (alkalinises the urine, which reduces myoglobin precipitation in the tubules), per local protocol.

❌ Why the other options are wrong:
• Insulin and glucose — Insulin and glucose are used for hyperkalaemia, not specifically for myoglobinuria.
• Furosemide alone — Furosemide alone is not the standard treatment and may worsen dehydration.
• No additional treatment needed — Additional treatment IS needed beyond standard fluids.

⭐ Key point: Also monitor for hyperkalaemia, cardiac arrhythmias (continuous ECG for 24 hours), and compartment syndrome needing fasciotomy.$x$, null),
(134, $x$Escharotomy is indicated for a circumferential full-thickness burn of a limb when it:$x$, $x$Compromises distal circulation, evidenced by diminished pulses or compartment pressure signs$x$, $x$✅ Correct answer: Compromises distal circulation, evidenced by diminished pulses or compartment pressure signs
An ESCHAROTOMY (cutting through the burned skin) is indicated when a CIRCUMFERENTIAL full-thickness burn of a limb COMPROMISES DISTAL CIRCULATION (diminished or absent pulses, cold, pale limb, increasing pain, rising compartment pressure). The tight eschar acts like a tourniquet as the tissue swells.

❌ Why the other options are wrong:
• Causes only mild discomfort — Mild discomfort alone doesn't require escharotomy.
• Is less than 24 hours old regardless of circulation — Age of the burn alone isn't the indication.
• Only affects superficial skin layers — Superficial burns don't need escharotomy.

⭐ Key point: Circumferential chest burns may need escharotomy to allow breathing.$x$, null),
(135, $x$The classic triad seen in Amniotic Fluid Embolism is:$x$, $x$Hypotension, hypoxia, DIC$x$, $x$✅ Correct answer: Hypotension, hypoxia, DIC
AMNIOTIC FLUID EMBOLISM (AFE) is a rare, catastrophic obstetric emergency, usually during labour, delivery or just after. Amniotic fluid and fetal cells enter the mother's circulation and trigger a massive reaction. The classic TRIAD is: sudden HYPOTENSION/cardiovascular collapse (often cardiac arrest), HYPOXIA (severe breathlessness, cyanosis, respiratory failure), and DIC (severe bleeding from the uterus, wounds and IV sites). Seizures or altered consciousness may also occur.

❌ Why the other options are wrong:
• Fever, rash, joint pain — Fever, rash and joint pain suggest infection or rheumatic disease, not AFE.
• Headache, blurred vision, hypertension — Headache, blurred vision and hypertension suggest pre-eclampsia.
• Jaundice, ascites, confusion — Jaundice, ascites and confusion suggest liver failure.

⭐ Key point: Treatment is supportive and urgent: CPR (with perimortem caesarean if needed), oxygen and ventilation, vasopressors and inotropes, and massive transfusion with clotting factors.$x$, null),
(136, $x$The antidote for magnesium sulphate toxicity is:$x$, $x$Calcium gluconate$x$, $x$✅ Correct answer: Calcium gluconate
MAGNESIUM SULPHATE is used in pre-eclampsia/eclampsia to prevent seizures. In toxicity, high magnesium blocks calcium at nerve endings and in muscles, causing loss of reflexes, respiratory depression and cardiac arrest. The ANTIDOTE is CALCIUM GLUCONATE (10%, 10 mL [1 g] IV over 10 minutes), because calcium directly opposes magnesium's effects at the neuromuscular junction and heart.

❌ Why the other options are wrong:
• Naloxone — Naloxone reverses opioids.
• Vitamin K — Vitamin K reverses warfarin.
• Flumazenil — Flumazenil reverses benzodiazepines.

⭐ Key point: Keep calcium gluconate at the bedside whenever magnesium sulphate is running, and check reflexes, respiratory rate and urine output hourly.$x$, null),
(137, $x$Among the 4 Ts of PPH, 'Tissue' refers to:$x$, $x$Retained placental tissue$x$, $x$✅ Correct answer: Retained placental tissue
The "4 Ts" of POSTPARTUM HAEMORRHAGE: TONE (uterine atony — the uterus fails to contract, the commonest cause), TRAUMA (tears of the perineum, vagina or cervix, uterine rupture or inversion), TISSUE — RETAINED PLACENTAL TISSUE, membranes or blood clots, which prevent the uterus from contracting properly, and THROMBIN (clotting disorders). Retained tissue is managed by manual removal or evacuation in theatre, along with uterotonics and antibiotics.

❌ Why the other options are wrong:
• Uterine muscle tone — Uterine muscle tone is "TONE", not tissue.
• Genital tract lacerations — Genital tract lacerations are "TRAUMA".
• Clotting factor deficiency — Clotting factor deficiency is "THROMBIN".

⭐ Key point: Always inspect the placenta and membranes after delivery to check they are complete — missing pieces suggest retained tissue.$x$, null),
(138, $x$ACE inhibitors are contraindicated in pregnancy-related hypertension mainly because they can cause:$x$, $x$Fetal renal toxicity$x$, $x$✅ Correct answer: Fetal renal toxicity
ACE INHIBITORS (e.g. lisinopril, enalapril, captopril) and ARBs are CONTRAINDICATED in pregnancy. They interfere with the fetal renin-angiotensin system, which the fetal kidneys need to develop and function. Effects (especially in the second and third trimesters): FETAL RENAL TOXICITY (kidney failure), OLIGOHYDRAMNIOS (low amniotic fluid, because fetal urine forms the fluid), fetal growth restriction, skull ossification defects, limb contractures, lung hypoplasia, and fetal or neonatal death.

❌ Why the other options are wrong:
• Maternal hair loss — Maternal hair loss is not the concern.
• Improved placental blood flow — ACE inhibitors do not improve placental blood flow.
• No significant risk — There IS significant risk to the fetus.

⭐ Key point: Safe antihypertensives in pregnancy: LABETALOL, NIFEDIPINE, METHYLDOPA and HYDRALAZINE. Women of childbearing age on ACE inhibitors should be advised to switch before or as soon as pregnancy is confirmed.$x$, null),
(139, $x$Which may be life-saving in managing severe pre-eclampsia?$x$, $x$Delivery, even at a very early gestational age$x$, $x$✅ Correct answer: Delivery, even at a very early gestational age
The DEFINITIVE treatment of PRE-ECLAMPSIA is DELIVERY of the baby and placenta. In severe pre-eclampsia, delivery may be life-saving for the mother, even at a very early gestational age.

❌ Why the other options are wrong:
• Paracetamol for frontal headache in moderate disease — Paracetamol for headache doesn't treat severe disease.
• Outpatient care when hyperreflexia appears — Hyperreflexia is a warning sign; outpatient care is unsafe.
• Conservative management of imminent eclampsia at 29 weeks — Imminent eclampsia requires stabilisation and delivery, not conservative management.

⭐ Key point: Give magnesium sulphate, control BP, and give steroids if preterm.$x$, null),
(140, $x$Which of the following gestational hormones is hypothesized to be correlated with hyperemesis gravidarum?$x$, $x$Human chorionic gonadotropin (hCG$x$, $x$✅ Correct answer: Human chorionic gonadotropin (hCG
HYPEREMESIS GRAVIDARUM is severe vomiting in pregnancy. It is strongly linked to HUMAN CHORIONIC GONADOTROPIN (hCG): hCG levels peak at about 9–12 weeks, the same time symptoms are worst, and conditions with very high hCG — MULTIPLE PREGNANCY (twins) and MOLAR PREGNANCY — are associated with more severe vomiting. hCG may stimulate the vomiting centre and also the thyroid (causing transient hyperthyroidism). Recent research also links a hormone called GDF15.

❌ Why the other options are wrong:
• Estrogen — Oestrogen may contribute, but hCG is the most strongly linked hormone.
• Testosterone — Testosterone is not linked.
• Human placental lactogen (HPL) — Human placental lactogen (HPL) is linked to insulin resistance, not hyperemesis.

⭐ Key point: Manage with IV fluids, electrolyte replacement, anti-emetics, thiamine, and an ultrasound to check for twins or molar pregnancy.$x$, null),
(141, $x$A patient with severe pre-eclampsia is started on magnesium sulfate. Before each dose/during the infusion, the nurse must assess:$x$, $x$Deep tendon reflexes, respiratory rate, and urine output ('TRU')$x$, $x$✅ Correct answer: Deep tendon reflexes, respiratory rate, and urine output ('TRU')
MAGNESIUM SULPHATE prevents eclamptic seizures, but excess magnesium depresses nerves and muscles. Before each dose and hourly during the infusion, the nurse must check "TRU": T = TENDON REFLEXES (deep tendon/patellar reflexes — LOSS of reflexes is the FIRST sign of toxicity); R = RESPIRATORY RATE (stop if below 12/min — respiratory depression); U = URINE OUTPUT (magnesium is excreted by the kidneys, so output below 30 mL/hr allows it to build up). Also monitor SpO2, BP, consciousness and serum magnesium levels if available.

❌ Why the other options are wrong:
• Only blood glucose — Blood glucose is not the main safety check for magnesium.
• Only skin colour — Skin colour alone does not detect magnesium toxicity.
• Only pain score — Pain score is not a magnesium safety check.

⭐ Key point: If toxicity is suspected: stop the infusion, call for help, support breathing, and give the antidote — 10% calcium gluconate 10 mL IV over 10 minutes.$x$, null),
(142, $x$Primary difference between morning sickness and hyperemesis gravidarum?$x$, $x$Hyperemesis typically requires medical treatment$x$, $x$✅ Correct answer: Hyperemesis typically requires medical treatment
MORNING SICKNESS (nausea and vomiting of pregnancy) is common (up to 80% of pregnancies), usually mild, and settles by about 12–16 weeks; women can usually keep some food and fluids down. HYPEREMESIS GRAVIDARUM is a SEVERE form (about 1–2% of pregnancies): persistent vomiting causing DEHYDRATION, WEIGHT LOSS of more than 5% of pre-pregnancy weight, ketosis and electrolyte imbalance. It typically REQUIRES MEDICAL TREATMENT — IV fluids, electrolyte replacement, anti-emetics, thiamine, and often hospital admission.

❌ Why the other options are wrong:
• Hyperemesis resolves after 1st trimester — Hyperemesis can continue beyond the first trimester, sometimes throughout pregnancy.
• Morning sickness is more severe — Morning sickness is LESS severe than hyperemesis.
• Morning sickness occurs only in the evening — Morning sickness can occur at ANY time of day, despite its name.

⭐ Key point: Give thiamine before or with IV dextrose to prevent Wernicke's encephalopathy, and consider thromboprophylaxis in admitted women.$x$, null),
(143, $x$The '4 Ts' framework for causes of postpartum haemorrhage includes tone, tissue, trauma, and:$x$, $x$Thrombin (coagulopathy)$x$, $x$✅ Correct answer: Thrombin (coagulopathy)
The "4 Ts" are the four causes of POSTPARTUM HAEMORRHAGE (PPH): TONE — poor uterine contraction (atony), the commonest cause (~70%); TRAUMA — tears of the perineum, vagina or cervix, uterine rupture or inversion; TISSUE — retained placenta, membranes or clots; THROMBIN — clotting problems (coagulopathy, e.g. DIC from abruption, sepsis, HELLP, amniotic fluid embolism, or anticoagulants). This framework helps the team find and treat the cause quickly.

❌ Why the other options are wrong:
• Temperature — Temperature is not one of the 4 Ts.
• Tachycardia — Tachycardia is a sign of blood loss, not a cause.
• Transfusion — Transfusion is a treatment, not a cause.

⭐ Key point: Initial PPH management: call for help, rub up the uterus, give oxytocin, large-bore IV access, send blood for crossmatch and clotting, check the placenta, look for tears, and give tranexamic acid within 3 hours.$x$, null),
(144, $x$Preeclampsia is generally diagnosed by new-onset hypertension after 20 weeks gestation together with:$x$, $x$Proteinuria or other signs of end-organ dysfunction$x$, $x$✅ Correct answer: Proteinuria or other signs of end-organ dysfunction
PRE-ECLAMPSIA is defined as NEW-ONSET HYPERTENSION (BP ≥140/90 mmHg) after 20 WEEKS of pregnancy, together with PROTEINURIA (e.g. protein:creatinine ratio ≥30 mg/mmol) OR other signs of END-ORGAN DYSFUNCTION — such as kidney impairment, liver involvement (raised transaminases, right upper quadrant pain), neurological signs (severe headache, visual disturbance, hyperreflexia, clonus), low platelets/haemolysis (HELLP), pulmonary oedema, or placental dysfunction (fetal growth restriction).

❌ Why the other options are wrong:
• Isolated mild headache only — A mild headache alone does not define pre-eclampsia.
• Normal blood pressure readings — Pre-eclampsia requires HIGH BP, not normal readings.
• Glucose intolerance alone — Glucose intolerance alone indicates gestational diabetes.

⭐ Key point: Severe pre-eclampsia: BP ≥160/110 with symptoms or lab abnormalities — needs magnesium sulphate, BP control and planning for delivery.$x$, null),
(145, $x$When investigating a newborn with hyperbilirubinaemia, which bilirubin fractions should be measured?$x$, $x$Total and conjugated bilirubin$x$, $x$✅ Correct answer: Total and conjugated bilirubin
In a newborn with jaundice, measuring both TOTAL and CONJUGATED (direct) BILIRUBIN is important. Most neonatal jaundice is UNCONJUGATED (e.g. physiological, breast milk, haemolysis). But a raised CONJUGATED bilirubin (more than about 25 µmol/L or more than 20% of total) is ALWAYS ABNORMAL and suggests liver disease or BILIARY ATRESIA, which needs urgent surgery (ideally before 6–8 weeks of age). Unconjugated bilirubin can be calculated as total minus conjugated.

❌ Why the other options are wrong:
• Conjugated bilirubin only — Conjugated bilirubin alone does not show the total level needed to decide phototherapy.
• Total bilirubin only — Total bilirubin alone can miss conjugated hyperbilirubinaemia.
• Total and unconjugated bilirubin — Unconjugated bilirubin is usually calculated, and does not identify cholestasis.

⭐ Key point: Pale stools and dark urine with prolonged jaundice (beyond 14 days in term babies) need urgent investigation for biliary atresia.$x$, null),
(146, $x$A newborn is born with poor muscle tone and is not breathing. The nurse's first action, after ensuring warmth and position, should be:$x$, $x$To provide positive-pressure ventilation$x$, $x$✅ Correct answer: To provide positive-pressure ventilation
Most newborns who need resuscitation have a BREATHING problem. If the baby has POOR TONE and is NOT BREATHING after drying, warming and opening the airway (head in neutral position), the next step is POSITIVE-PRESSURE VENTILATION (PPV) — five inflation breaths with a bag-valve-mask or T-piece. Effective lung inflation usually raises the heart rate quickly. Assess chest movement and heart rate.

❌ Why the other options are wrong:
• To administer chest compressions — Chest compressions are started only if the heart rate stays below 60/min despite 30 seconds of effective ventilation.
• To intubate the newborn — Intubation may be needed later, but mask ventilation is the first step.
• To administer epinephrine — Adrenaline is given only if the heart rate stays below 60/min despite effective ventilation and compressions.

⭐ Key point: "Airway, Breathing, Circulation, Drugs" — most newborns respond to effective ventilation alone.$x$, null),
(147, $x$What is the recommended maximum suction pressure for children?$x$, $x$120 mmHg$x$, $x$✅ Correct answer: 120 mmHg
SUCTION PRESSURE must be high enough to clear secretions but low enough to avoid damaging the delicate airway lining (bleeding, oedema) and causing hypoxia or atelectasis. For CHILDREN, the recommended maximum is about 80–120 mmHg (here, 120 mmHg is the maximum given). For adults, about 100–150 mmHg; for neonates, about 60–100 mmHg.

❌ Why the other options are wrong:
• 130 mmHg — 130 mmHg is above the recommended paediatric maximum.
• 140 mmHg — 140 mmHg is too high for children.
• 150 mmHg — 150 mmHg is the upper adult limit — too high for children.

⭐ Key point: Use the smallest effective pressure and catheter size, pre-oxygenate, limit each pass to 5–10 seconds in children, and apply suction only while withdrawing the catheter.$x$, null),
(148, $x$Cardiopulmonary Resuscitation (CPR)$x$, $x$CPR ratio for the child and infant will be 15 compressions to 2 breaths.$x$, $x$✅ Correct answer: CPR ratio for the child and infant will be 15 compressions to 2 breaths.
CPR compression-to-ventilation ratios: ADULTS — 30:2 (one or two rescuers). CHILDREN and INFANTS — 30:2 with one rescuer, but 15:2 with TWO HEALTH-CARE RESCUERS (because children's arrests are usually caused by breathing problems, so they need more ventilation). NEWBORNS — 3:1. So the statement "CPR ratio for the child and infant will be 15 compressions to 2 breaths" (for two rescuers) is correct.

❌ Why the other options are wrong:
• CPR for the infant victim will be 30 compressions to 2 breaths. — Infant CPR by two health-care rescuers is 15:2, not 30:2.
• CPR ratio for the adult will be 15 compressions to 2 breaths. — The adult ratio is 30:2, not 15:2.
• CPR for the neonate victim will be 30 compressions to 2 breaths. — Newborn CPR is 3:1, not 30:2.

⭐ Key point: Infant compressions: two-thumb technique (two rescuers) or two fingers (one rescuer), at least one-third of chest depth (about 4 cm), rate 100–120/min.$x$, null),
(149, $x$Purpose of erythromycin ointment in neonates?$x$, $x$Ophthalmia neonatorum$x$, $x$✅ Correct answer: Ophthalmia neonatorum
ERYTHROMYCIN EYE OINTMENT is applied to newborns' eyes shortly after birth to PREVENT OPHTHALMIA NEONATORUM — a serious eye infection (conjunctivitis) caught from the mother's birth canal, mainly due to Neisseria gonorrhoeae (and Chlamydia). Untreated gonococcal ophthalmia can rapidly damage the cornea and cause BLINDNESS.

❌ Why the other options are wrong:
• Strabismus — Strabismus (squint) is a muscle alignment problem, not an infection.
• Cataracts — Cataracts are clouding of the lens.
• Diabetes retinopathy — Diabetic retinopathy affects adults with diabetes, not newborns.

⭐ Key point: Tetracycline ointment or povidone-iodine drops are alternatives. Treat mothers with STIs during pregnancy.$x$, null),
(150, $x$Severe neonatal jaundice is primarily concerning because untreated high bilirubin levels can cause:$x$, $x$Kernicterus (bilirubin-induced brain damage)$x$, $x$✅ Correct answer: Kernicterus (bilirubin-induced brain damage)
SEVERE NEONATAL JAUNDICE (very high UNCONJUGATED bilirubin) is dangerous because bilirubin can cross the immature blood–brain barrier and damage the brain — KERNICTERUS (bilirubin encephalopathy), especially in the basal ganglia. Early signs: lethargy, poor feeding, high-pitched cry, hypotonia; later: arching (opisthotonus), seizures. Survivors may have athetoid cerebral palsy, deafness and learning problems.

❌ Why the other options are wrong:
• No lasting harm regardless of level — High bilirubin can cause permanent harm.
• Improved neurological development — Bilirubin does not improve development.
• Only mild, temporary skin discolouration with no other risk — Severe jaundice is not just a skin colour change.

⭐ Key point: Use bilirubin charts to guide phototherapy and exchange transfusion. Risk is higher in preterm babies and with haemolysis (e.g. G6PD deficiency, ABO/Rh incompatibility).$x$, null),
(151, $x$Intellectual standards such as clarity, accuracy, precision, relevance, and logic are used in critical thinking primarily to:$x$, $x$Assess and improve the quality of one's own reasoning$x$, $x$✅ Correct answer: Assess and improve the quality of one's own reasoning
INTELLECTUAL STANDARDS (Paul and Elder) — CLARITY, ACCURACY, PRECISION, RELEVANCE, DEPTH, BREADTH, LOGIC, SIGNIFICANCE and FAIRNESS — are criteria nurses use to CHECK and IMPROVE the QUALITY of their own THINKING and REASONING. For example: "Is my information accurate? Is it relevant to this patient's problem? Is my conclusion logical?" This helps nurses make sound clinical judgements and avoid errors.

❌ Why the other options are wrong:
• Serve as hospital policy documents — They are not hospital policy documents.
• Replace the need for clinical experience — They do not replace clinical experience; they help nurses learn from it.
• Determine nurse staffing ratios — They are not used to determine staffing ratios.

⭐ Key point: Critical thinking combines knowledge, experience, intellectual standards and reflection to make safe decisions.$x$, null),
(152, $x$A client who was previously the primary breadwinner expresses distress about being unable to return to work after a spinal cord injury and struggles with the loss of that role within the family. This is best classified under which Roy adaptive mode?$x$, $x$Role function mode$x$, $x$✅ Correct answer: Role function mode
In ROY'S ADAPTATION MODEL, the ROLE FUNCTION MODE relates to the ROLES a person plays in society (e.g. parent, spouse, worker, breadwinner) and how well they perform them. A client who was the PRIMARY BREADWINNER and is distressed about being unable to return to work and losing that ROLE in the family has a problem in the ROLE FUNCTION mode.

❌ Why the other options are wrong:
• Physiological-physical mode — The physiological mode covers basic body needs (oxygen, nutrition, elimination, activity).
• Self-concept/group identity mode — The self-concept mode covers beliefs and feelings about oneself (body image, self-esteem).
• Interdependence mode — The interdependence mode covers relationships, love and support.

⭐ Key point: The nurse helps the client adapt — e.g. exploring new roles, vocational rehabilitation, and family support.$x$, null),
(153, $x$In what year did Yura and Walsh formally describe the nursing process as consisting of four steps?$x$, $x$1967$x$, $x$✅ Correct answer: 1967
In 1967, YURA and WALSH published a book describing the NURSING PROCESS as having FOUR STEPS: ASSESSING, PLANNING, IMPLEMENTING and EVALUATING. Later (after NANDA was formed in 1973), "DIAGNOSIS" was added as a separate step, giving the five-step process (ADPIE).

❌ Why the other options are wrong:
• 1955 — 1955 is when Lydia Hall first used the term "nursing process".
• 1961 — 1961 is when Ida Jean Orlando described the deliberative nursing process.
• 1973 — 1973 is when the first national conference on nursing diagnosis (later NANDA) was held.

⭐ Key point: The nursing process is systematic, client-centred, goal-oriented and cyclical.$x$, null),
(154, $x$A core principle of modern risk management and incident reporting culture is to:$x$, $x$Foster a blame-free, just culture that encourages open reporting of errors and near misses to enable learning and system improvement$x$, $x$✅ Correct answer: Foster a blame-free, just culture that encourages open reporting of errors and near misses to enable learning and system improvement
Modern RISK MANAGEMENT uses a BLAME-FREE / JUST CULTURE that ENCOURAGES staff to openly REPORT errors and near misses without fear of unfair punishment. Reports are analysed to find SYSTEM problems (e.g. look-alike drugs, staffing, equipment design) so changes can prevent future harm. A just culture still holds people accountable for reckless behaviour.

❌ Why the other options are wrong:
• Punish every staff member who reports an incident — Punishing every reporter discourages reporting.
• Discourage any reporting to keep statistics low — Discouraging reporting hides risks.
• Hold only the most junior staff accountable for systemic errors — Blaming junior staff ignores system causes.

⭐ Key point: Most errors result from system weaknesses, not careless individuals.$x$, null),
(155, $x$Formative evaluation is best described as:$x$, $x$Ongoing judgment of the intervention as it is being implemented$x$, $x$✅ Correct answer: Ongoing judgment of the intervention as it is being implemented
FORMATIVE EVALUATION is the ONGOING assessment of an intervention or care plan WHILE it is being IMPLEMENTED. It allows the nurse to make changes as care progresses (e.g. adjusting pain relief based on hourly pain scores).

❌ Why the other options are wrong:
• A one-time review done only at discharge — A one-time review at discharge is SUMMATIVE evaluation.
• Only relevant to research studies — Formative evaluation is used in clinical practice, education and research.
• The same thing as summative evaluation — Summative evaluation is a final judgement at the end.

⭐ Key point: Formative = during (to improve); summative = at the end (to judge the outcome).$x$, null),
(156, $x$At which step of the nursing process is the PES statement written?$x$, $x$Diagnosis$x$, $x$✅ Correct answer: Diagnosis
The PES statement is the standard format for an ACTUAL NURSING DIAGNOSIS: P = PROBLEM (the NANDA diagnostic label, e.g. "Impaired gas exchange"), E = ETIOLOGY (related factors — "related to…"), S = SIGNS and SYMPTOMS (defining characteristics — "as evidenced by…"). It is written during the DIAGNOSIS step of the nursing process, after the nurse has collected and analysed assessment data. Example: "Acute pain related to surgical incision as evidenced by pain score 8/10, grimacing and guarding."

❌ Why the other options are wrong:
• Planning — Planning comes after diagnosis: setting goals and choosing interventions.
• Implementation — Implementation is carrying out the planned interventions.
• Assessment — Assessment is collecting data — it comes before diagnosis.

⭐ Key point: Risk diagnoses use a two-part format (problem + risk factors), because there are no signs or symptoms yet.$x$, null),
(157, $x$A nurse develops a care plan with the goal 'Patient will ambulate 50 metres independently by discharge.' At reassessment, the patient can walk 30 metres with assistance. This goal should be documented as:$x$, $x$Partially met, requiring plan revision$x$, $x$✅ Correct answer: Partially met, requiring plan revision
The goal was "walk 50 metres INDEPENDENTLY by discharge". The patient now walks 30 METRES WITH ASSISTANCE — some progress has been made, but the goal is not fully achieved (both the distance and independence are not met). This should be documented as PARTIALLY MET, and the PLAN REVISED (e.g. more physiotherapy, extended time frame, walking aids).

❌ Why the other options are wrong:
• Fully met — The goal is not fully met.
• Not applicable — The goal is still applicable.
• Completely unmet with no progress — There has been progress, so it is not completely unmet.

⭐ Key point: Evaluation compares outcomes with goals and leads to continuing, modifying or ending the plan.$x$, null),
(158, $x$Which of the following best describes the concept of "never events" in quality assurance?$x$, $x$Adverse events that should never happen in healthcare settings$x$, $x$✅ Correct answer: Adverse events that should never happen in healthcare settings
"NEVER EVENTS" are serious, largely PREVENTABLE patient safety incidents that should NEVER happen if proper safety measures are in place. Examples: wrong-site surgery, retained surgical instruments, wrong-route drug administration (e.g. IV drug given intrathecally), and misplaced nasogastric tubes not detected before use.

❌ Why the other options are wrong:
• Routine occurrences in healthcare settings — They are not routine occurrences.
• Errors that are insignificant and do not impact patient care — They are serious, not insignificant.
• Events that occur frequently but are easily preventable — They should be rare, not frequent.

⭐ Key point: Never events must be reported and investigated.$x$, null),
(159, $x$Nursing diagnoses differ from medical diagnoses mainly in that they are:$x$, $x$Concerned with human responses while medical diagnoses are concerned with pathology$x$, $x$✅ Correct answer: Concerned with human responses while medical diagnoses are concerned with pathology
NURSING DIAGNOSES describe the patient's HUMAN RESPONSES to health problems or life processes (e.g. "Acute pain", "Impaired mobility", "Anxiety"). MEDICAL DIAGNOSES describe the DISEASE or PATHOLOGY (e.g. "Pneumonia", "Myocardial infarction"). Nursing diagnoses can change as the patient's responses change, while medical diagnoses usually remain until the disease resolves.

❌ Why the other options are wrong:
• Dependent on the medical diagnosis for direction — Nursing diagnoses are independent of medical diagnoses.
• Concerned with caring while medical diagnoses are concerned with curing — Both disciplines care and cure; this is not the main distinction.
• Concerned with psychosocial parameters only — Nursing diagnoses cover physical, psychological and social responses.

⭐ Key point: One medical diagnosis (e.g. stroke) can lead to many nursing diagnoses.$x$, null),
(160, $x$The primary purpose of incident (adverse event) reporting in healthcare is to:$x$, $x$Identify system issues and improve patient safety through learning$x$, $x$✅ Correct answer: Identify system issues and improve patient safety through learning
The primary purpose of INCIDENT REPORTING is to IDENTIFY SYSTEM ISSUES and IMPROVE PATIENT SAFETY through LEARNING. Reports are analysed for trends and root causes, leading to changes (e.g. new protocols, equipment, training).

❌ Why the other options are wrong:
• Assign blame and discipline individual staff — It is not mainly to assign blame.
• Satisfy insurance requirements only — It is not only for insurance.
• Reduce documentation workload — It increases, not reduces, documentation.

⭐ Key point: Report all incidents and near misses promptly and factually.$x$, null),
(161, $x$A nurse using the health-illness continuum framework would assess a client holistically by including which of the following, in addition to physical signs and symptoms?$x$, $x$The client's emotional, social, spiritual, and functional status$x$, $x$✅ Correct answer: The client's emotional, social, spiritual, and functional status
The HEALTH-ILLNESS CONTINUUM sees health as a dynamic state ranging from high-level wellness to severe illness. HOLISTIC assessment includes the client's PHYSICAL, EMOTIONAL, SOCIAL, SPIRITUAL and FUNCTIONAL STATUS — all of which affect health and recovery.

❌ Why the other options are wrong:
• Only the client's vital signs and laboratory values — Vital signs and lab values are only part of the picture.
• Only the admitting medical diagnosis — The medical diagnosis alone is incomplete.
• Only the client's insurance status — Insurance status alone is irrelevant to holistic assessment.

⭐ Key point: Holistic care treats the whole person, not just the disease.$x$, null),
(162, $x$One of the stated advantages of the nursing process is that it:$x$, $x$Promotes individualised care and evidence-based decisions$x$, $x$✅ Correct answer: Promotes individualised care and evidence-based decisions
The NURSING PROCESS (Assessment, Diagnosis, Planning, Implementation, Evaluation) is a systematic, problem-solving approach. Its advantages include: it PROMOTES INDIVIDUALISED CARE (care is based on each patient's own assessment and needs, not routine), and EVIDENCE-BASED DECISIONS (choices are based on data and research). It also improves continuity of care, communication between staff, documentation, patient involvement, and professional accountability.

❌ Why the other options are wrong:
• Promotes decisions based on routine, unquestioned habits — The nursing process discourages routine, unquestioned habits — it requires thinking and justification.
• Removes the need for documentation — It requires documentation at each step.
• Eliminates the need for reassessment — It is cyclical and requires ongoing reassessment.

⭐ Key point: Evaluation feeds back into assessment, so the plan changes as the patient's condition changes.$x$, null),
(163, $x$Which scale of measurement has a true (absolute) zero point, allowing statements such as "twice as much"?$x$, $x$Ratio$x$, $x$✅ Correct answer: Ratio
The RATIO SCALE has ordered values, EQUAL INTERVALS and a TRUE (ABSOLUTE) ZERO (zero means none of the quantity). This allows statements like "twice as much". Examples: weight, height, age, pulse rate, urine output, temperature in Kelvin.

❌ Why the other options are wrong:
• Nominal — Nominal data are categories with no order (e.g. blood group).
• Ordinal — Ordinal data have order but unequal intervals (e.g. pain mild/moderate/severe).
• Interval — Interval data have equal intervals but no true zero (e.g. temperature in °C).

⭐ Key point: Ratio and interval data allow means and standard deviations to be calculated.$x$, null),
(164, $x$The main purpose of including a theoretical or conceptual framework in a research study is to$x$, $x$Provide a logical structure that explains the relationships among the study's key concepts and guides interpretation of findings$x$, $x$✅ Correct answer: Provide a logical structure that explains the relationships among the study's key concepts and guides interpretation of findings
A THEORETICAL or CONCEPTUAL FRAMEWORK provides a LOGICAL STRUCTURE explaining the RELATIONSHIPS among the study's key CONCEPTS. It guides the research questions, design, choice of variables and instruments, and helps INTERPRET the FINDINGS.

❌ Why the other options are wrong:
• Increase the length of the proposal without adding any value — It adds value; it is not just length.
• Replace the need for a literature review entirely — It does not replace the literature review.
• Serve only as a decorative diagram with no functional role — It has a functional role.

⭐ Key point: Many nursing studies use nursing theories (e.g. Orem, Roy) as frameworks.$x$, null),
(165, $x$Which is a characteristic of quantitative research?$x$, $x$A large sample is emphasised$x$, $x$✅ Correct answer: A large sample is emphasised
QUANTITATIVE RESEARCH measures variables with NUMBERS and uses statistics to describe, test relationships, or establish cause and effect. It usually emphasises a LARGE SAMPLE (often randomly selected), because larger samples are more representative of the population, reduce random error, and give enough STATISTICAL POWER to detect real differences. This allows findings to be GENERALISED to the wider population.

❌ Why the other options are wrong:
• There are multiple subjective realities — "Multiple subjective realities" is a QUALITATIVE assumption (each person's reality is valid).
• Data are reported in a literary style — Reporting in a literary, narrative style is typical of QUALITATIVE research.
• No generalisation is made from the findings — Quantitative research DOES aim to generalise findings.

⭐ Key point: Sample size for quantitative studies is often calculated in advance using a power analysis.$x$, null),
(166, $x$In a bibliography, the correct group order for arranging sources is:$x$, $x$Journals → Books → Magazines/Newspapers → Other publications$x$, $x$✅ Correct answer: Journals → Books → Magazines/Newspapers → Other publications
In some referencing guidelines used in nursing schools, sources in a bibliography are grouped by TYPE, often in the order: JOURNALS → BOOKS → MAGAZINES/NEWSPAPERS → OTHER PUBLICATIONS, and arranged alphabetically within each group. (Note: many modern styles, such as APA, list all references together alphabetically — always follow the required style.)

❌ Why the other options are wrong:
• Books → Journals → Other publications → Magazines/Newspapers — The order Books → Journals → Other → Magazines is not the stated convention.
• Random order within each letter of the alphabet — Random order is never correct.
• Newest to oldest publication date — Newest to oldest is not standard.

⭐ Key point: Follow the referencing style required by your institution consistently.$x$, null),
(167, $x$The population to be sampled is divided into units which are known as:$x$, $x$Sampling units.$x$, $x$✅ Correct answer: Sampling units.
Before sampling, the population is divided into SAMPLING UNITS — the individual elements or groups that can be selected for the study. A sampling unit may be a person (e.g. an ICU nurse), a group (e.g. a ward), or an organisation (e.g. a hospital). In cluster sampling, for example, the sampling units are clusters such as hospitals. The complete list of sampling units is the SAMPLING FRAME.

❌ Why the other options are wrong:
• Sampling frame — The SAMPLING FRAME is the LIST of all units, not the units themselves.
• Sampling errors — SAMPLING ERRORS are differences between sample results and the true population values.
• Sampling gap — "Sampling gap" is not a standard research term.

⭐ Key point: Clearly defining sampling units and the sampling frame helps ensure the sample represents the population.$x$, null),
(168, $x$The ethical principle of beneficence in research means:$x$, $x$Above all, do no harm$x$, $x$✅ Correct answer: Above all, do no harm
BENEFICENCE in research means acting for the participants' good — maximising possible BENEFITS and, ABOVE ALL, DOING NO HARM (minimising risks of physical, psychological, social, legal and financial harm). Researchers must ensure that the expected benefits of the study outweigh its risks, stop the study if harm occurs, and protect vulnerable participants. (Some texts describe "non-maleficence" — do no harm — as part of beneficence.)

❌ Why the other options are wrong:
• Maintain confidentiality — Maintaining confidentiality relates to the principle of respect for persons and privacy.
• Keep anonymity and privacy — Anonymity and privacy are separate protections.
• Avoid plagiarism — Avoiding plagiarism relates to research integrity and honesty.

⭐ Key point: The Belmont Report's three principles: respect for persons (autonomy, informed consent), beneficence, and justice (fair selection of participants).$x$, null),
(169, $x$The right to withdraw from a research study at any time is part of the subject's right to:$x$, $x$Self-determination$x$, $x$✅ Correct answer: Self-determination
The RIGHT TO SELF-DETERMINATION means participants are AUTONOMOUS — they can freely DECIDE whether to take part in a study, without coercion, and can WITHDRAW at ANY TIME without giving a reason and WITHOUT PENALTY (e.g. their care must not be affected). This right is protected through informed consent, which must clearly explain the right to withdraw.

❌ Why the other options are wrong:
• Anonymity only — Anonymity relates to protecting participants' identity.
• Compensation — Compensation relates to payment for participation or injury.
• Data ownership — Data ownership is a separate legal and ethical issue.

⭐ Key point: Vulnerable participants (e.g. ICU patients, children) need extra protection, such as consent from a legal representative and assent where possible.$x$, null),
(170, $x$Qualitative research methods are primarily used to:$x$, $x$Explore and understand experiences, meanings, and phenomena in depth$x$, $x$✅ Correct answer: Explore and understand experiences, meanings, and phenomena in depth
QUALITATIVE RESEARCH aims to EXPLORE and UNDERSTAND people's EXPERIENCES, feelings, beliefs and the MEANINGS they give to events, IN DEPTH. Data are collected as words, through in-depth interviews, focus groups, observation and document analysis, from small, purposively chosen samples. Example: "What is it like for families to have a relative on a ventilator in ICU?"

❌ Why the other options are wrong:
• Generate statistically generalisable numerical data — Generating statistically generalisable numerical data is QUANTITATIVE research.
• Test drug efficacy through randomised trials — Testing drug efficacy through randomised trials is QUANTITATIVE (experimental) research.
• Calculate p-values — Calculating p-values is part of QUANTITATIVE statistical analysis.

⭐ Key point: Qualitative designs: phenomenology (lived experience), grounded theory (develop theory), ethnography (culture), and historical research.$x$, null),
(171, $x$A test that shows positive when the true status is negative gives a:$x$, $x$False positive$x$, $x$✅ Correct answer: False positive
When comparing a test result with the TRUE status: TRUE POSITIVE — test positive, disease present; FALSE POSITIVE — test POSITIVE but disease ABSENT (true status negative); FALSE NEGATIVE — test negative but disease present; TRUE NEGATIVE — test negative, disease absent. A false positive can cause unnecessary anxiety, further tests and treatment.

❌ Why the other options are wrong:
• True positive — A true positive is correctly positive in someone WITH the condition.
• False negative — A false negative is a NEGATIVE result in someone WITH the condition (missed diagnosis).
• True negative — A true negative is correctly negative in someone WITHOUT the condition.

⭐ Key point: SENSITIVITY = ability to detect people WITH the disease (few false negatives). SPECIFICITY = ability to correctly identify people WITHOUT the disease (few false positives).$x$, null),
(172, $x$The research method is a part of:$x$, $x$Research methodology$x$, $x$✅ Correct answer: Research methodology
RESEARCH METHODOLOGY is the overall plan and philosophy of how a study is conducted — including the research design, population and sampling, instruments, data collection procedures, data analysis, and the justification for each choice. The RESEARCH METHOD (the specific procedure or tool used, e.g. questionnaire survey, interview, experiment) is PART of the methodology.

❌ Why the other options are wrong:
• The problem — The research problem is the issue being studied, not where the method belongs.
• The experiment — An experiment is one type of research design/method.
• Research techniques — Research techniques are specific tools within methods.

⭐ Key point: In a research report, the "Methodology" chapter (often Chapter 3 in Nigerian theses) describes design, setting, population, sample, instrument, validity, reliability, data collection and analysis.$x$, null),
(173, $x$CINAHL and PubMed are examples of:$x$, $x$Databases used to search nursing and biomedical literature for evidence-based practice$x$, $x$✅ Correct answer: Databases used to search nursing and biomedical literature for evidence-based practice
CINAHL (Cumulative Index to Nursing and Allied Health Literature) and PUBMED (which searches MEDLINE, run by the US National Library of Medicine) are online DATABASES used to SEARCH published NURSING and BIOMEDICAL research. Nurses use them to find evidence for EVIDENCE-BASED PRACTICE — e.g. searching for studies on VAP prevention or pressure ulcer management.

❌ Why the other options are wrong:
• Hospital scheduling systems — They are not hospital scheduling systems.
• Electronic medication systems — They are not electronic medication systems.
• Patient billing platforms — They are not billing platforms.

⭐ Key point: Other useful sources: the Cochrane Library (systematic reviews), Embase, Google Scholar, and African Journals Online (AJOL). Use keywords and Boolean operators (AND, OR, NOT) to search effectively.$x$, null),
(174, $x$A nurse manager reviewing a department's risk management programme should ensure it includes:$x$, $x$Common risk categories, elements of risk management, and a functioning incident reporting system$x$, $x$✅ Correct answer: Common risk categories, elements of risk management, and a functioning incident reporting system
A RISK MANAGEMENT PROGRAMME should include: identification of COMMON RISK CATEGORIES (falls, medication errors, infections, pressure ulcers), ELEMENTS OF RISK MANAGEMENT (identify, analyse, control, monitor risks), and a functioning INCIDENT REPORTING SYSTEM.

❌ Why the other options are wrong:
• Only a list of staff names — A list of staff names is not a risk programme.
• No formal documentation, to save time — Documentation is essential.
• A focus solely on financial risk, excluding patient safety risk — Patient safety must be included.

⭐ Key point: Regular risk assessments and audits help prevent harm.$x$, null),
(175, $x$The stage of conflict where the disagreement becomes visible through behaviour such as arguing or withdrawal is the:$x$, $x$Manifest stage$x$, $x$✅ Correct answer: Manifest stage
Pondy's model describes the STAGES of CONFLICT: (1) LATENT — conditions for conflict exist (e.g. scarce resources, unclear roles) but no one is aware yet; (2) PERCEIVED — people become aware that a conflict exists; (3) FELT — emotions develop (anger, anxiety, tension); (4) MANIFEST — the conflict becomes VISIBLE through BEHAVIOUR, such as arguing, open disagreement, sabotage, withdrawal or avoidance; (5) AFTERMATH — the result after the conflict is resolved or suppressed (which may leave lasting effects).

❌ Why the other options are wrong:
• Latent stage — Latent: conditions exist, but there is no awareness.
• Perceived stage — Perceived: awareness, but no visible action yet.
• Aftermath stage — Aftermath: the outcome after the conflict has been handled.

⭐ Key point: Managers should identify and address conflict early (latent or perceived stage) before it becomes manifest and harmful to teamwork and patient care.$x$, null),
(176, $x$Leadership is based on a superior’s$x$, $x$persuasive communication.$x$, $x$✅ Correct answer: persuasive communication.
LEADERSHIP is the ability to INFLUENCE people to work willingly towards goals. It is based mainly on PERSUASIVE COMMUNICATION — inspiring, motivating, convincing and building trust — rather than giving orders. A leader can lead without a formal position (e.g. an experienced staff nurse others follow). MANAGEMENT, in contrast, is based on formal AUTHORITY given by the organisation.

❌ Why the other options are wrong:
• authority. — Authority is the formal right to give orders — the basis of management, not leadership.
• responsibility. — Responsibility is the duty to carry out assigned tasks.
• accountability. — Accountability is being answerable for the outcomes of one's actions.

⭐ Key point: The best nurse managers combine management authority with good leadership (communication, vision and support).$x$, null),
(177, $x$A unit is experiencing chronic understaffing, affecting patient safety. As part of the nurse manager's risk management responsibilities, the most appropriate action is to:$x$, $x$Formally document and escalate the staffing concern through appropriate channels, using incident reports where patient safety is affected$x$, $x$✅ Correct answer: Formally document and escalate the staffing concern through appropriate channels, using incident reports where patient safety is affected
When CHRONIC UNDERSTAFFING affects patient safety, the nurse manager should FORMALLY DOCUMENT and ESCALATE the concern through appropriate channels (senior management), using INCIDENT REPORTS where patient safety is affected. This creates a record and supports advocacy for safe staffing.

❌ Why the other options are wrong:
• Ignore the issue since staffing is outside nursing's control — Ignoring it endangers patients.
• Accept the situation permanently with no advocacy — Accepting it permanently fails to advocate.
• Blame individual staff members for the workload — Blaming individuals ignores the system problem.

⭐ Key point: Safe staffing is a key factor in patient outcomes.$x$, null),
(178, $x$The process of interaction between two or more people in an organisation is:$x$, $x$Communication$x$, $x$✅ Correct answer: Communication
COMMUNICATION is the PROCESS of INTERACTION between two or more people in which information, ideas, feelings and meanings are exchanged — through verbal, written and non-verbal means. In organisations, communication flows downward (instructions), upward (feedback, reports), and horizontally (between colleagues). Good communication is essential for teamwork and patient safety.

❌ Why the other options are wrong:
• Adaptation — Adaptation is the process of adjusting to change or the environment.
• Interaction — Interaction is a general term, but the organisational process described here is communication.
• Induction — Induction is the orientation of new staff.

⭐ Key point: Structured communication tools (e.g. SBAR for handover and escalation) reduce misunderstandings and errors.$x$, null),
(179, $x$Which management level is responsible for policy formulation?$x$, $x$Top management$x$, $x$✅ Correct answer: Top management
TOP MANAGEMENT (e.g. the board, chief executive, director of nursing services) is responsible for POLICY FORMULATION — setting the organisation's vision, mission, long-term goals, strategies and major policies, and allocating resources. MIDDLE managers (e.g. nursing officers in charge of departments) translate policies into plans and implement them. FIRST-LINE managers (e.g. ward managers, charge nurses) supervise day-to-day operations and staff.

❌ Why the other options are wrong:
• First-line managers — First-line managers handle daily operations, not policy formulation.
• Middle managers — Middle managers implement policies and coordinate departments.
• Charge nurses — Charge nurses manage shifts and direct care.

⭐ Key point: Policies made at the top should involve input from frontline staff to be practical and effective.$x$, null),
(180, $x$Which is NOT one of Fayol's 14 principles of management?$x$, $x$Decentralisation$x$, $x$✅ Correct answer: Decentralisation
FAYOL'S 14 PRINCIPLES include: division of work, authority, discipline, unity of command, unity of direction, SUBORDINATION OF INDIVIDUAL INTERESTS, REMUNERATION, CENTRALISATION (not decentralisation), SCALAR CHAIN, order, equity, stability of tenure, initiative, and esprit de corps. "DECENTRALISATION" is not one of the principles (Fayol's principle is "centralisation", meaning finding the right balance).

❌ Why the other options are wrong:
• Subordination of individual interests — Subordination of individual interests IS a principle.
• Remuneration — Remuneration IS a principle.
• Scalar chain (clear line of authority) — Scalar chain IS a principle.

⭐ Key point: Fayol is called the "father of modern management".$x$, null),
(181, $x$When mediating conflict between staff, a nurse manager should ideally:$x$, $x$Act as a neutral mediator$x$, $x$✅ Correct answer: Act as a neutral mediator
When MEDIATING CONFLICT between staff, the nurse manager should act as a NEUTRAL MEDIATOR: meet the parties privately, listen to both sides without judgement, focus on facts and behaviour (not personalities), keep the discussion centred on shared goals (safe patient care), help the staff explore solutions, and agree on an action plan with follow-up. Neutrality builds trust and encourages a fair, lasting resolution.

❌ Why the other options are wrong:
• Take sides with the more senior staff member — Taking sides (e.g. with the more senior staff member) is unfair and damages trust.
• Resolve the conflict publicly in front of patients — Resolving conflict publicly in front of patients is unprofessional and embarrassing.
• Avoid addressing it entirely — Avoiding the conflict allows it to grow and harm teamwork.

⭐ Key point: Collaboration ("win-win") is the best long-term conflict resolution approach when time allows.$x$, null),
(182, $x$The five classic functions of management are best listed as:$x$, $x$Planning, Organising, Staffing, Directing, Controlling$x$, $x$✅ Correct answer: Planning, Organising, Staffing, Directing, Controlling
The five classic FUNCTIONS OF MANAGEMENT (based on Fayol and later writers) are: PLANNING (deciding goals and how to achieve them), ORGANISING (arranging resources and structure), STAFFING (recruiting, selecting, training and allocating staff), DIRECTING/leading (guiding, motivating and communicating with staff), and CONTROLLING (monitoring performance and correcting deviations). These apply to managing a ward or ICU.

❌ Why the other options are wrong:
• Diagnosing, Prescribing, Treating, Evaluating, Discharging — Diagnosing, prescribing, treating, evaluating and discharging are clinical functions.
• Assessing, Planning, Implementing, Evaluating, Documenting — Assessing, planning, implementing, evaluating and documenting relate to the nursing process.
• Hiring, Firing, Paying, Training, Promoting — Hiring, firing, paying, training and promoting are human resource tasks, not the full set of management functions.

⭐ Key point: Gulick's POSDCORB: Planning, Organising, Staffing, Directing, Coordinating, Reporting, Budgeting.$x$, null),
(183, $x$Which conflict resolution style involves each party giving up something to reach a middle-ground solution?$x$, $x$Compromising$x$, $x$✅ Correct answer: Compromising
COMPROMISING is a conflict-resolution style where each party GIVES UP SOMETHING to reach a MIDDLE-GROUND solution that is partly acceptable to both ("split the difference"). It is useful when time is limited, both sides have equal power, or a temporary solution is needed. However, neither side is fully satisfied.

❌ Why the other options are wrong:
• Collaborating — COLLABORATING aims for a "win-win" solution that fully meets both parties' needs.
• Competing — COMPETING aims to win at the other party's expense ("win-lose").
• Avoiding — AVOIDING ignores or postpones the conflict ("lose-lose").

⭐ Key point: Thomas–Kilmann styles: competing, collaborating, compromising, avoiding, and accommodating (giving in to the other side).$x$, null),
(184, $x$Shared governance is practised in some wards. Which describes this style of leadership?$x$, $x$Leadership is shared at the point of care$x$, $x$✅ Correct answer: Leadership is shared at the point of care
SHARED GOVERNANCE is a model where LEADERSHIP and decision-making are SHARED with staff nurses at the POINT OF CARE (e.g. through councils on practice, quality and education).

❌ Why the other options are wrong:
• Leaders rely heavily on visioning and inspire members to achieve results — Visioning and inspiring describes transformational leadership.
• Leaders believe people are basically good and need not be closely controlled — Believing people need little control describes Theory Y.
• The leader makes all decisions alone — One leader deciding alone is autocratic.

⭐ Key point: Shared governance improves staff engagement and retention.$x$, null),
(185, $x$Which four elements must all be proven for a nurse to be found legally negligent?$x$, $x$Duty of care, breach of duty, harm, and breach causing the harm$x$, $x$✅ Correct answer: Duty of care, breach of duty, harm, and breach causing the harm
To prove a nurse NEGLIGENT, the claimant must establish ALL FOUR elements: (1) DUTY OF CARE — the nurse had a professional responsibility to the patient; (2) BREACH OF DUTY — the nurse failed to meet the expected standard of care (what a reasonable, competent nurse would do); (3) HARM (damage) — the patient suffered actual injury or loss; (4) CAUSATION — the breach directly CAUSED the harm. If any one element is missing, negligence is not proven.

❌ Why the other options are wrong:
• Intent, motive, opportunity, and consequence — Intent, motive, opportunity and consequence relate to criminal law (crimes), not negligence.
• Consent, capacity, communication, and confidentiality — Consent, capacity, communication and confidentiality are important ethical/legal principles, but not the elements of negligence.
• Only that harm occurred, regardless of cause — Harm alone is not enough — the other elements must also be proven.

⭐ Key point: Accurate, timely documentation is the nurse's best evidence that the standard of care was met.$x$, null),
(186, $x$Which of the following is the appropriate nursing intervention for a patient with a terminal illness who is passing through the acceptance stage?$x$, $x$Being around though not speaking$x$, $x$✅ Correct answer: Being around though not speaking
In the ACCEPTANCE stage of grief (Kübler-Ross), the patient is often calm, withdrawn and may want QUIET COMPANY. The most appropriate intervention is BEING AROUND THOUGH NOT SPEAKING — a quiet, supportive presence.

❌ Why the other options are wrong:
• Allowing the patient to cry — Allowing crying fits the depression stage.
• Encouraging unrestricted visiting — Unrestricted visiting may tire the patient.
• Explaining the patient what is being done — Explaining procedures is always good, but not the specific need here.

⭐ Key point: Stages: denial, anger, bargaining, depression, acceptance.$x$, null),
(187, $x$Justice in resource allocation involves ensuring that:$x$, $x$No patient is unfairly disadvantaged in access to medication, treatment, or staff time$x$, $x$✅ Correct answer: No patient is unfairly disadvantaged in access to medication, treatment, or staff time
JUSTICE in resource allocation means FAIRNESS — ensuring NO PATIENT is UNFAIRLY DISADVANTAGED in access to medication, treatment, or staff time, based on clinical need.

❌ Why the other options are wrong:
• Resources always go to the first patient who asks — First come, first served ignores need.
• Resource allocation is kept secret from patients — Allocation should be transparent.
• Only wealthy patients receive full resources — Wealth should not decide care.

⭐ Key point: Triage policies help allocate scarce resources fairly.$x$, null),
(188, $x$The nurse is obligated to follow a physician's order unless:$x$, $x$The order is an error, violates hospital policy, or would be detrimental to the client.$x$, $x$✅ Correct answer: The order is an error, violates hospital policy, or would be detrimental to the client.
A nurse must follow a physician's order UNLESS it is an ERROR, VIOLATES HOSPITAL POLICY, or would be HARMFUL (detrimental) to the client. In such cases, the nurse must question the order and not carry it out until clarified.

❌ Why the other options are wrong:
• The order is a verbal order — Verbal orders can be followed per policy.
• The physicians order is illegible — Illegible orders should be clarified, but this is part of the broader rule.
• The order has not been transcribed — Untranscribed orders should be checked, but this isn't the main exception.

⭐ Key point: The nurse is legally accountable for following an unsafe order.$x$, null),
(189, $x$A nurse is asked to administer a medication dose that seems unusually high compared to standard practice. The most appropriate action is to:$x$, $x$Verify the order, question the prescriber if uncertain, and refuse to administer until the concern is resolved$x$, $x$✅ Correct answer: Verify the order, question the prescriber if uncertain, and refuse to administer until the concern is resolved
If a medication dose seems UNUSUALLY HIGH, the nurse should VERIFY the order (check references, the patient's weight and kidney function), QUESTION the prescriber, and REFUSE to give it until the concern is resolved.

❌ Why the other options are wrong:
• Administer it anyway, trusting the prescriber completely without question — Trusting the prescriber blindly is unsafe.
• Give half the dose without informing anyone — Giving half the dose without telling anyone is a medication error.
• Ignore the concern to avoid seeming difficult — Ignoring the concern may harm the patient.

⭐ Key point: Document the conversation and use the chain of command if unresolved.$x$, null),
(190, $x$A nurse loves caring for the elderly. This represents her:$x$, $x$Values$x$, $x$✅ Correct answer: Values
VALUES are a person's deeply held BELIEFS about what is important, desirable and worthwhile. They guide choices and behaviour. A nurse who LOVES caring for the ELDERLY shows a personal VALUE — she values older people and the work of caring for them. Professional nursing values include caring, compassion, respect, integrity, altruism and social justice.

❌ Why the other options are wrong:
• Respect — Respect is regard for the worth and rights of others — it can be a value, but the scenario describes what she cherishes.
• Dignity — Dignity is the inherent worth of every person.
• Fidelity — Fidelity is keeping promises and commitments.

⭐ Key point: Nurses should reflect on their own values (values clarification) and avoid imposing them on patients.$x$, null),
(191, $x$A family disagrees with a DNR order for a patient with metastatic lung cancer. The nurse involves:$x$, $x$Ethics committee$x$, $x$✅ Correct answer: Ethics committee
When a FAMILY DISAGREES with a DO-NOT-RESUSCITATE (DNR) order — for example, for a patient with metastatic lung cancer — the nurse should involve the ETHICS COMMITTEE (along with senior medical staff). The ethics committee is a multidisciplinary group (doctors, nurses, ethicists, legal advisers, chaplains) that helps MEDIATE conflicts, clarifies ethical principles (patient autonomy, best interests, futility), reviews the patient's wishes and advance directives, and supports a fair, transparent decision.

❌ Why the other options are wrong:
• Hospital security — Hospital security deals with safety threats, not ethical disagreements.
• Risk management — Risk management focuses on legal and financial risk, not ethical mediation.
• Social services — Social services help with social needs (housing, finances, support), not ethical conflict resolution.

⭐ Key point: Early, honest, compassionate communication with families about prognosis and goals of care helps prevent such conflicts.$x$, null),
(192, $x$Which of the following best describes moral uncertainty?$x$, $x$A situation where nurses have doubts or uncertainties about the ethical course of action$x$, $x$✅ Correct answer: A situation where nurses have doubts or uncertainties about the ethical course of action
MORAL UNCERTAINTY occurs when a nurse has DOUBTS about which ethical course of action is right, or whether a moral problem even exists.

❌ Why the other options are wrong:
• A situation where nurses have no ethical guidance or rules to follow — Having no guidance is not the definition.
• A situation where nurses have conflicting ethical guidance or rules to follow — Conflicting guidance describes a moral dilemma.
• A situation where nurses are unable to make ethical decisions due to lack of knowledge or experience — Lack of knowledge isn't the core definition.

⭐ Key point: Moral distress: knowing what is right but being unable to act.$x$, null),
(193, $x$Patient confidentiality may be ethically breached when:$x$, $x$There is a credible risk of serious harm to the patient or identifiable third parties$x$, $x$✅ Correct answer: There is a credible risk of serious harm to the patient or identifiable third parties
CONFIDENTIALITY may be breached when there is a CREDIBLE RISK of SERIOUS HARM to the patient or IDENTIFIABLE THIRD PARTIES (e.g. threat of violence, child abuse, notifiable diseases).

❌ Why the other options are wrong:
• A colleague is simply curious — Curiosity is not a valid reason.
• A family member requests information without consent — Family members need consent.
• It is more convenient for staff — Convenience is not a valid reason.

⭐ Key point: Share only the minimum necessary information.$x$, null),
(194, $x$A nursing instructor tells students that the most important principle when caring for patients is to do no harm. This principle is:$x$, $x$Non-maleficence$x$, $x$✅ Correct answer: Non-maleficence
NON-MALEFICENCE means "FIRST, DO NO HARM" (primum non nocere). Nurses must avoid causing harm — intentionally or through carelessness — and must weigh the risks and benefits of every intervention. Examples: preventing falls, pressure ulcers and medication errors; avoiding unnecessary invasive procedures; using safe practices.

❌ Why the other options are wrong:
• Beneficence — BENEFICENCE means actively DOING GOOD for the patient.
• Justice — JUSTICE means FAIRNESS in care and distribution of resources.
• Veracity — VERACITY means TRUTHFULNESS.

⭐ Key point: Patient safety initiatives (e.g. checklists, bundles, incident reporting) put non-maleficence into practice.$x$, null),
(195, $x$For patients who require enteral nutrition support for longer than approximately 4-6 weeks, which access route is generally recommended over a nasoenteric tube?$x$, $x$A percutaneous route such as gastrostomy (PEG) or jejunostomy tube$x$, $x$✅ Correct answer: A percutaneous route such as gastrostomy (PEG) or jejunostomy tube
For enteral nutrition needed LONGER than about 4–6 WEEKS, a PERCUTANEOUS route such as GASTROSTOMY (PEG) or JEJUNOSTOMY is recommended, because long-term nasal tubes cause discomfort, nasal ulcers, sinusitis and displacement.

❌ Why the other options are wrong:
• Continued nasogastric tube indefinitely — Indefinite NG use causes complications.
• Oral sipping only — Oral sipping may not be enough.
• Intravenous TPN as first choice — TPN is used only if the gut doesn't work.

⭐ Key point: PEG tubes are more comfortable and secure for long-term feeding.$x$, null),
(196, $x$What is the primary goal of enteral nutrition in critical care?$x$, $x$D) Delivering nutrition through the gastrointestinal tract$x$, $x$✅ Correct answer: D) Delivering nutrition through the gastrointestinal tract
ENTERAL NUTRITION means DELIVERING NUTRITION through the GASTROINTESTINAL TRACT, usually via a tube (nasogastric, nasojejunal, PEG), when a patient cannot eat enough by mouth. In critical care, its goals are to meet energy and protein needs, MAINTAIN GUT INTEGRITY (preventing the gut lining from wasting and bacteria from crossing into the blood), support immune function, and reduce infections compared with parenteral (IV) nutrition.

❌ Why the other options are wrong:
• A) Inducing sleep — It is not used to induce sleep.
• B) Providing comfort — It may provide comfort, but that is not its primary goal.
• C) Administering pain medication — It is not for giving pain medication (although some drugs can be given via feeding tubes).

⭐ Key point: "If the gut works, use it." Start enteral feeding within 24–48 hours of ICU admission in haemodynamically stable patients.$x$, null),
(197, $x$Which of the following patients is the MOST appropriate candidate for enteral rather than parenteral nutrition?$x$, $x$A patient with a functioning GI tract who is intubated and cannot swallow safely due to sedation$x$, $x$✅ Correct answer: A patient with a functioning GI tract who is intubated and cannot swallow safely due to sedation
ENTERAL NUTRITION is preferred for patients with a FUNCTIONING GI TRACT who cannot eat (e.g. intubated and sedated).

❌ Why the other options are wrong:
• A patient with a complete bowel obstruction — Bowel obstruction prevents enteral feeding.
• A patient with severe, uncontrolled upper GI hemorrhage — Severe GI haemorrhage contraindicates feeding.
• A patient in septic shock requiring escalating vasopressor doses with signs of bowel ischemia — Bowel ischaemia contraindicates feeding.

⭐ Key point: Start enteral feeding within 24–48 hours if possible.$x$, null),
(198, $x$Fat provides approximately how many kilocalories per gram, compared to carbohydrate and protein?$x$, $x$Fat 9kcal/g, more than double CHO/protein (4kcal/g each)$x$, $x$✅ Correct answer: Fat 9kcal/g, more than double CHO/protein (4kcal/g each)
Different nutrients provide different amounts of ENERGY: FAT provides about 9 kcal per gram — MORE THAN DOUBLE carbohydrate and protein, which each provide about 4 kcal per gram. (Alcohol provides about 7 kcal/g.) This is why fat-based products (e.g. lipid emulsions in parenteral nutrition, propofol) contribute many calories in small volumes.

❌ Why the other options are wrong:
• Fat 4kcal/g, same as CHO/protein — Fat does not provide 4 kcal/g (that is carbohydrate and protein).
• Fat 1kcal/g, far less than CHO/protein — Fat provides much more than 1 kcal/g.
• Fat provides no calories — Fat does provide calories.

⭐ Key point: Remember to count propofol (1.1 kcal/mL from lipid) in ICU nutrition calculations to avoid overfeeding.$x$, null),
(199, $x$Women are how many times more likely than men to develop ICU-AW?$x$, $x$About 4 times$x$, $x$✅ Correct answer: About 4 times
ICU-ACQUIRED WEAKNESS (ICU-AW) is generalised muscle weakness developing during critical illness. Studies (e.g. De Jonghe et al.) found FEMALE SEX to be an independent risk factor, with women about 4 TIMES more likely than men to develop ICU-AW. Other risk factors: sepsis, multi-organ failure, prolonged mechanical ventilation, immobility, hyperglycaemia, corticosteroids and neuromuscular blocking agents.

❌ Why the other options are wrong:
• Equally likely — Women and men are not equally likely according to these studies.
• About 2 times — "About 2 times" underestimates the reported risk.
• About 10 times — "About 10 times" overestimates it.

⭐ Key point: Early mobilisation, good glucose control, and minimising sedation and paralysis help prevent ICU-AW.$x$, null),
(200, $x$How many postural drainage positions are used, corresponding to the lung's bronchopulmonary segments?$x$, $x$12$x$, $x$✅ Correct answer: 12
POSTURAL DRAINAGE uses GRAVITY to help drain secretions from specific lung segments into the larger airways, where they can be coughed up or suctioned. The patient is placed in different positions so the affected segment is uppermost and its bronchus points downwards. Commonly, 12 positions are described, corresponding to the main bronchopulmonary segments of both lungs (e.g. upper lobe apical, posterior and anterior segments; middle lobe/lingula; lower lobe superior, anterior, lateral and posterior basal segments).

❌ Why the other options are wrong:
• 6 — 6 positions are too few to cover all segments.
• 8 — 8 positions are too few.
• 10 — 10 positions are too few.

⭐ Key point: Postural drainage is often combined with percussion and vibration. Head-down positions are avoided in raised ICP, recent surgery, haemoptysis and severe breathlessness.$x$, null)
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
