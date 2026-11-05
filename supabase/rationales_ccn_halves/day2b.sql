-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 2, part B (questions 101–200)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(101, $x$The definitive drug treatment for malignant hyperthermia is:$x$, $x$Dantrolene$x$, $x$✅ Correct answer: Dantrolene
MALIGNANT HYPERTHERMIA (MH) is a rare inherited muscle disorder triggered by volatile anaesthetic gases (sevoflurane, desflurane, isoflurane) and SUCCINYLCHOLINE. Uncontrolled calcium release in muscle causes: rising END-TIDAL CO2 (often the earliest sign), tachycardia, muscle rigidity (masseter spasm), rapidly RISING TEMPERATURE, acidosis, HYPERKALAEMIA, rhabdomyolysis and arrhythmias. The definitive drug is DANTROLENE (2.5 mg/kg IV, repeated until signs settle, up to about 10 mg/kg). It stops calcium release from the sarcoplasmic reticulum, relaxing muscles and stopping heat production. Also: stop triggering agents, hyperventilate with 100% oxygen, active cooling, treat hyperkalaemia and arrhythmias, monitor urine output (myoglobin).

❌ Why the other options are wrong:
• Naloxone — NALOXONE reverses opioids, not MH.
• Flumazenil — FLUMAZENIL reverses benzodiazepines, not MH.
• Neostigmine — NEOSTIGMINE reverses non-depolarising muscle relaxants (e.g. rocuronium), not MH.

⭐ Key point: Malignant hyperthermia → DANTROLENE 2.5 mg/kg IV. Triggers: volatile gases + succinylcholine. Earliest sign: rising EtCO2.$x$, null),
(102, $x$Which nutritional consideration is important for a mechanically ventilated patient?$x$, $x$Early enteral nutrition is preferred over parenteral nutrition when the gut is functional, to reduce infection risk$x$, $x$✅ Correct answer: Early enteral nutrition is preferred over parenteral nutrition when the gut is functional, to reduce infection risk
Critically ill ventilated patients are catabolic (they break down muscle), so nutrition is important. Guidelines (ASPEN/ESPEN) recommend EARLY ENTERAL NUTRITION (tube feeding into the gut, by NG/OG tube) WITHIN 24–48 HOURS of ICU admission if the gut works and the patient is haemodynamically stable. Enteral feeding keeps the gut lining healthy, supports gut immunity, reduces bacterial translocation and INFECTION, and is cheaper and safer than parenteral nutrition (PN). PN (IV feeding) is used only when enteral feeding is impossible or inadequate. Nursing: check tube position (X-ray/aspirate pH), keep head of bed 30–45° to prevent aspiration and VAP, monitor tolerance (vomiting, distension), glucose and refeeding syndrome (low phosphate, potassium, magnesium).

❌ Why the other options are wrong:
• Total parenteral nutrition should always be first-line — TPN is NOT first-line; it carries more risk of line infection, hyperglycaemia and liver problems.
• Feeding should be withheld entirely until extubation — WITHHOLDING food until extubation leads to malnutrition, muscle loss and poor healing.
• Only IV dextrose is appropriate — IV DEXTROSE alone gives some calories but no protein, fat, vitamins or minerals — it is not nutrition.

⭐ Key point: Ventilated patient with a working gut → EARLY ENTERAL feeding (24–48 h). "If the gut works, use it."$x$, null),
(103, $x$Pulse oximetry (SpO2) shows a clinically significant drop only after PaO2 falls below approximately:$x$, $x$60 mmHg$x$, $x$✅ Correct answer: 60 mmHg
This is explained by the OXYGEN–HAEMOGLOBIN DISSOCIATION CURVE, which is S-shaped. At the top the curve is FLAT: PaO2 can fall from 100 to about 60 mmHg while SpO2 only falls from about 98–99% to about 90%. Below a PaO2 of about 60 mmHg (8 kPa) the curve becomes STEEP, so a small further fall in PaO2 causes a LARGE fall in SpO2. So pulse oximetry shows a clinically significant drop only after PaO2 falls below about 60 mmHg — which is also the definition of respiratory failure (Type 1). Useful pairs: PaO2 60 ≈ SpO2 90%; PaO2 40 ≈ SpO2 75% (mixed venous); PaO2 27 ≈ SpO2 50% (P50). This means a normal SpO2 can hide a falling PaO2, and also that SpO2 tells nothing about CO2 — check ABG.

❌ Why the other options are wrong:
• 100 mmHg — 100 mmHg is a normal PaO2 with SpO2 about 98%.
• 80 mmHg — 80 mmHg still gives SpO2 about 95% — no significant drop.
• 40 mmHg — At 40 mmHg the SpO2 is already very low (about 75%); the significant drop begins earlier, at about 60.

⭐ Key point: SpO2 falls steeply once PaO2 < 60 mmHg (PaO2 60 ≈ SpO2 90%). SpO2 says nothing about CO2.$x$, null),
(104, $x$Why is humidification important during prolonged or high-flow oxygen therapy?$x$, $x$Dry medical oxygen can irritate and dry the airway mucosa, impairing mucociliary clearance and causing discomfort$x$, $x$✅ Correct answer: Dry medical oxygen can irritate and dry the airway mucosa, impairing mucociliary clearance and causing discomfort
Medical oxygen from cylinders and wall supply is completely DRY. Normally the nose and upper airway warm and humidify air. With HIGH-FLOW or PROLONGED oxygen (or when the nose is bypassed by an ETT or tracheostomy), dry gas DRIES the mucosa of the nose, mouth and airways. This causes discomfort, sore throat, nosebleeds, thick sticky secretions and damage to the CILIA, so MUCOCILIARY CLEARANCE is impaired — secretions build up and can block airways and tubes, raising the risk of atelectasis and infection. Humidification (bubble humidifier, heated humidifier, HME filter) prevents this. Usually needed for flow above about 4 L/min, high-flow nasal cannula, and all artificial airways.

❌ Why the other options are wrong:
• Humidification increases the FiO2 delivered to the patient — Humidification does NOT increase FiO2; it adds water vapour, not oxygen.
• Humidification eliminates the need for regular oxygen saturation monitoring — It does NOT replace SpO2 monitoring; oxygen saturation must still be checked.
• Humidification prevents oxygen toxicity entirely — It does NOT prevent oxygen toxicity; that depends on high FiO2 for long periods. Only limiting FiO2 prevents toxicity.

⭐ Key point: Humidify high-flow/prolonged oxygen — dry gas damages mucosa and mucociliary clearance and thickens secretions.$x$, null),
(105, $x$How often should rescuers performing chest compressions switch during ongoing CPR?$x$, $x$About every 2 minutes, to prevent fatigue and maintain compression quality$x$, $x$✅ Correct answer: About every 2 minutes, to prevent fatigue and maintain compression quality
Good-quality chest compressions need: rate 100–120/min, depth 5–6 cm in adults, full chest recoil, minimal interruptions. Compressions are tiring, and quality (especially depth) falls after about 1–2 minutes, often without the rescuer noticing. So guidelines (AHA/ERC) recommend SWITCHING THE COMPRESSOR ABOUT EVERY 2 MINUTES — usually at the rhythm check — with the change taking less than 5–10 seconds. Have the next compressor ready and standing by.

❌ Why the other options are wrong:
• Every 15 minutes — Every 15 minutes is far too long; fatigue would reduce compression quality long before then.
• Every 30 seconds — Every 30 seconds is too frequent; constant switching causes too many interruptions.
• Rescuers should never switch during an arrest — Never switching is wrong; it leads to tired, shallow compressions and lower survival.

⭐ Key point: Switch compressors about EVERY 2 MINUTES (at rhythm checks) with minimal pause, to prevent fatigue.$x$, null),
(106, $x$Indications for intubation in the critical care unit include all of the following EXCEPT:$x$, $x$Mild, well-controlled hypertension$x$, $x$✅ Correct answer: Mild, well-controlled hypertension
Common INDICATIONS for INTUBATION in ICU: (1) AIRWAY PROTECTION — reduced consciousness (GCS ≤ 8), loss of gag/cough reflex, risk of aspiration; (2) RESPIRATORY FAILURE needing mechanical ventilation — hypoxaemia not responding to oxygen/NIV, rising PaCO2 with acidosis, exhaustion; (3) ANTICIPATED AIRWAY COMPROMISE — airway burns, inhalation injury, angioedema, anaphylaxis, neck haematoma, epiglottitis; (4) to allow procedures, deep sedation or controlled ventilation (e.g. raised ICP, severe shock). Mild, well-controlled HYPERTENSION has nothing to do with the airway or breathing and is never an indication for intubation.

❌ Why the other options are wrong:
• Airway protection in a patient with reduced consciousness — Airway PROTECTION in reduced consciousness IS an indication.
• Respiratory failure requiring mechanical ventilation — RESPIRATORY FAILURE needing ventilation IS an indication.
• Anticipated airway compromise (e.g. severe burns/oedema) — Anticipated airway compromise (BURNS/OEDEMA) IS an indication — intubate early before swelling makes it impossible.

⭐ Key point: Intubate for airway protection, respiratory failure or threatened airway — NOT for controlled hypertension.$x$, null),
(107, $x$Intrinsic PEEP (PEEPi/auto-PEEP) develops in life-threatening asthma because:$x$, $x$Air cannot fully leave the lungs before the next breath$x$, $x$✅ Correct answer: Air cannot fully leave the lungs before the next breath
In severe (life-threatening) ASTHMA, the airways are narrowed by bronchospasm, swelling and mucus plugs. Breathing OUT is slow because narrow airways close early during expiration. If the next breath starts before the lungs have fully emptied, air is TRAPPED and builds up with each breath — this is DYNAMIC HYPERINFLATION, and the pressure left in the alveoli at the end of expiration is INTRINSIC PEEP (auto-PEEP). It raises intrathoracic pressure, reduces venous return (HYPOTENSION, even cardiac arrest — PEA), increases work of breathing, and causes BAROTRAUMA/pneumothorax. Management on the ventilator: LOW respiratory rate, LONG expiratory time (I:E 1:4 or 1:5), smaller tidal volumes, treat bronchospasm; if the patient suddenly becomes hypotensive, briefly DISCONNECT the ventilator to let trapped air out.

❌ Why the other options are wrong:
• The ventilator is set incorrectly in all cases — Ventilator setting can make auto-PEEP worse, but it is caused mainly by the disease (airflow obstruction), not "incorrect settings in all cases".
• The patient is over-oxygenated — Over-oxygenation does not cause air trapping.
• It only occurs in healthy lungs — Auto-PEEP happens in OBSTRUCTED lungs (asthma, COPD), not in healthy lungs.

⭐ Key point: Auto-PEEP = air cannot fully leave the lungs before the next breath → air trapping. Treat with low rate, long expiration.$x$, null),
(108, $x$During Guedel's stages of anaesthesia, surgical procedures are typically performed during:$x$, $x$Stage III (surgical anaesthesia)$x$, $x$✅ Correct answer: Stage III (surgical anaesthesia)
GUEDEL'S STAGES OF ANAESTHESIA (described with ether) are: STAGE I — ANALGESIA: from induction to loss of consciousness; patient is drowsy and pain is reduced. STAGE II — EXCITEMENT (delirium): after loss of consciousness; irregular breathing, struggling, vomiting, breath-holding — dangerous, so modern drugs aim to pass through it quickly. STAGE III — SURGICAL ANAESTHESIA: regular breathing, loss of reflexes, muscle relaxation, eyes central — SURGERY is performed here (it has 4 planes). STAGE IV — OVERDOSE (medullary paralysis): breathing stops, circulatory collapse — death unless reversed.

❌ Why the other options are wrong:
• Stage I (analgesia) — STAGE I gives analgesia but the patient is still conscious and moving — not suitable for surgery.
• Stage II (excitement) — STAGE II is the excitement stage with uncontrolled movement and risk of vomiting/laryngospasm — never used for surgery.
• Stage IV (overdose) — STAGE IV is overdose with respiratory and circulatory failure — dangerous, not a working stage.

⭐ Key point: Guedel: I analgesia, II excitement, III SURGICAL anaesthesia (operate here), IV overdose.$x$, null),
(109, $x$A patient in the recovery room after general anaesthesia has delayed emergence (remains unrousable well beyond expected time). The nurse should consider all of the following causes EXCEPT:$x$, $x$Improved cerebral perfusion$x$, $x$✅ Correct answer: Improved cerebral perfusion
DELAYED EMERGENCE means the patient does not wake up within the expected time (often 30–60 minutes) after anaesthesia. Causes to check: (1) DRUGS — residual anaesthetic, OPIOIDS, BENZODIAZEPINES, muscle relaxants (check reversal); (2) METABOLIC — HYPOGLYCAEMIA, hyperglycaemia, hyponatraemia, uraemia, liver failure, hypothyroidism; (3) respiratory — HYPOXIA, high CO2 (CO2 narcosis); (4) HYPOTHERMIA; (5) NEUROLOGICAL — intraoperative STROKE, intracranial bleeding, seizures (non-convulsive), raised ICP. Nursing: ABC, check SpO2, check blood glucose, temperature, review drugs given, consider reversal agents, check pupils and limbs for focal signs, call the anaesthetist. IMPROVED cerebral perfusion would help the patient wake up; it is not a cause of delayed waking.

❌ Why the other options are wrong:
• Residual anaesthetic/opioid/sedative effect — RESIDUAL anaesthetic/opioid/sedative IS the most common cause.
• Hypoglycaemia or metabolic derangement — HYPOGLYCAEMIA and other metabolic problems ARE important causes — always check glucose.
• Intraoperative stroke or other neurological event — STROKE or other neurological events ARE serious causes to consider.

⭐ Key point: Delayed emergence: think DRUGS, METABOLIC (glucose!), hypoxia/CO2, hypothermia, NEURO (stroke). Improved perfusion is not a cause.$x$, null),
(110, $x$SIMV, as a mode of mechanical ventilation, stands for and allows:$x$, $x$Synchronized Intermittent Mandatory Ventilation — combines mandatory breaths with the ability for the patient to breathe spontaneously between them$x$, $x$✅ Correct answer: Synchronized Intermittent Mandatory Ventilation — combines mandatory breaths with the ability for the patient to breathe spontaneously between them
SIMV = SYNCHRONISED INTERMITTENT MANDATORY VENTILATION. The ventilator gives a SET NUMBER of MANDATORY breaths per minute (set volume or pressure), timed (SYNCHRONISED) with the patient's own effort to avoid "breath stacking" and fighting the ventilator. BETWEEN the mandatory breaths, the patient can take their OWN SPONTANEOUS breaths, which can be helped by pressure support. It was used for weaning (gradually lowering the mandatory rate), keeping respiratory muscles active. Watch for increased work of breathing if the mandatory rate is set too low.

❌ Why the other options are wrong:
• Simple Immediate Manual Ventilation — a purely manual bag-valve technique — "Simple Immediate Manual Ventilation" is not a real term; manual bag-valve ventilation is not SIMV.
• Static Inspiratory Muscle Ventilation — used only for muscle training — "Static Inspiratory Muscle Ventilation" is not a real ventilation mode.
• Single Inflation Manual Volume — a one-time inflation mode — "Single Inflation Manual Volume" is not a real ventilation mode.

⭐ Key point: SIMV = Synchronised Intermittent Mandatory Ventilation: set mandatory breaths + spontaneous breaths in between.$x$, null),
(111, $x$Anaesthetic death investigations typically consider all of the following EXCEPT:$x$, $x$The patient's choice of hospital ward décor$x$, $x$✅ Correct answer: The patient's choice of hospital ward décor
When a patient dies under or after ANAESTHESIA, a structured investigation (audit, mortality review, confidential enquiry) looks at the whole process of care: PRE-ANAESTHETIC ASSESSMENT (history, airway, ASA grade, fasting, investigations, consent); choice and DOSE of DRUGS (allergies, overdose, wrong drug); MONITORING during the procedure (SpO2, capnography, ECG, BP, temperature) and how alarms were responded to; equipment checks; airway management; staffing, skill and supervision; post-operative recovery care; and documentation. The aim is to learn and prevent future deaths, not only to blame. The patient's choice of ward DÉCOR has no relationship to anaesthetic safety.

❌ Why the other options are wrong:
• Adequacy of pre-anaesthetic assessment — PRE-ANAESTHETIC ASSESSMENT IS reviewed — poor assessment is a common cause of avoidable deaths.
• Appropriateness of drug selection and dosing — DRUG SELECTION and DOSING ARE reviewed — drug errors and reactions are key causes.
• Monitoring during the procedure — MONITORING during the procedure IS reviewed — missed hypoxia or oesophageal intubation can be fatal.

⭐ Key point: Anaesthetic death reviews look at assessment, drugs, monitoring, equipment, airway, staff and recovery — not ward décor.$x$, null),
(112, $x$What is the purpose of measuring plateau pressure via an inspiratory hold maneuver?$x$, $x$To estimate alveolar distending pressure and assess risk of barotrauma, independent of airway resistance$x$, $x$✅ Correct answer: To estimate alveolar distending pressure and assess risk of barotrauma, independent of airway resistance
On a volume-controlled ventilator, the PEAK pressure is made of two parts: pressure to push gas through the AIRWAYS (resistance) and pressure to stretch the ALVEOLI (compliance). An INSPIRATORY HOLD (pause of about 0.5–1 second at the end of inspiration) stops gas flow, so the airway resistance part disappears; the pressure measured then is the PLATEAU PRESSURE (Pplat), which reflects the pressure inside the ALVEOLI (alveolar distending pressure). Keeping Pplat BELOW 30 cmH2O reduces the risk of BAROTRAUMA/volutrauma (ventilator-induced lung injury, pneumothorax) — a key part of lung-protective ventilation in ARDS (tidal volume 6 mL/kg ideal body weight). Driving pressure = Pplat − PEEP (keep < 15). High peak but normal plateau = airway problem (secretions, bronchospasm, kinked tube); both high = stiff lungs or pneumothorax.

❌ Why the other options are wrong:
• To measure airway resistance directly — AIRWAY RESISTANCE is estimated from (peak − plateau) ÷ flow, not by plateau alone.
• To calculate the respiratory rate — RESPIRATORY RATE is simply counted or set; it does not need an inspiratory hold.
• To determine FiO2 requirements — FiO2 is set from SpO2/PaO2 needs; plateau pressure does not determine it.

⭐ Key point: Plateau pressure (inspiratory hold) = alveolar pressure. Keep < 30 cmH2O to prevent barotrauma.$x$, null),
(113, $x$A normal I:E ratio for a patient without obstructive lung disease is approximately:$x$, $x$1:2$x$, $x$✅ Correct answer: 1:2
The I:E RATIO compares the time spent breathing IN (inspiration) with the time spent breathing OUT (expiration). In normal breathing, expiration is passive and takes longer, so a normal I:E ratio is about 1:2 (range 1:1.5 to 1:3). On the ventilator 1:2 is the usual starting setting. In OBSTRUCTIVE disease (asthma, COPD), a LONGER expiratory time (1:3 to 1:5) is used to let trapped air out and prevent auto-PEEP. INVERSE ratio ventilation (e.g. 2:1) is sometimes used in severe ARDS to improve oxygenation, but it is uncomfortable and needs heavy sedation.

❌ Why the other options are wrong:
• 2:1 — 2:1 is INVERSE ratio — inspiration longer than expiration; not normal.
• 1:4 — 1:4 is the long expiratory time used in obstructive disease, longer than normal.
• 4:1 — 4:1 is extreme inverse ratio, not normal.

⭐ Key point: Normal I:E = 1:2. Obstructive disease: 1:3–1:5. Inverse ratio (2:1) only in severe ARDS.$x$, null),
(114, $x$Pendred syndrome is classically associated with goitre plus:$x$, $x$Congenital deafness$x$, $x$✅ Correct answer: Congenital deafness
PENDRED SYNDROME is an inherited (autosomal recessive) condition caused by a mutation in the SLC26A4 gene, which makes a protein called PENDRIN. Pendrin moves iodide in the THYROID and moves ions in the INNER EAR. So patients have two main features: (1) GOITRE (enlarged thyroid, often with mild hypothyroidism) from a defect in iodide organification; and (2) CONGENITAL SENSORINEURAL DEAFNESS (often with an enlarged vestibular aqueduct/cochlear malformation). It is one of the most common causes of syndromic hearing loss.

❌ Why the other options are wrong:
• Congenital blindness — CONGENITAL BLINDNESS is not a feature of Pendred syndrome.
• Cardiac defects — CARDIAC DEFECTS are not part of Pendred syndrome.
• Renal failure — RENAL FAILURE is not part of Pendred syndrome.

⭐ Key point: Pendred syndrome = GOITRE + congenital sensorineural DEAFNESS (pendrin gene).$x$, null),
(115, $x$The most common type of thyroid carcinoma is:$x$, $x$Papillary$x$, $x$✅ Correct answer: Papillary
PAPILLARY CARCINOMA is the MOST COMMON thyroid cancer, making up about 75–85% of cases. It is more common in women aged 20–50 and after radiation exposure. It grows slowly, spreads mainly through LYMPHATICS to neck nodes, and has an EXCELLENT prognosis (over 90% 10-year survival). Under the microscope it shows "Orphan Annie eye" nuclei and PSAMMOMA bodies. Treatment: thyroidectomy, sometimes radioactive iodine, then levothyroxine. Other types: FOLLICULAR (10–15%, spreads through blood to bone and lungs), MEDULLARY (5%, from C-cells, makes calcitonin, linked with MEN 2), ANAPLASTIC (under 2%, elderly, very aggressive, poor prognosis).

❌ Why the other options are wrong:
• Follicular — FOLLICULAR is the second most common (10–15%), spreads by blood.
• Medullary — MEDULLARY is uncommon (about 5%), from parafollicular C cells, calcitonin-secreting.
• Anaplastic — ANAPLASTIC is the rarest and most aggressive, not the most common.

⭐ Key point: Commonest thyroid cancer = PAPILLARY (~80%, lymph spread, good prognosis). Anaplastic = worst.$x$, null),
(116, $x$Encephalopathy toxins implicated in hepatic failure include all of the following EXCEPT:$x$, $x$Insulin$x$, $x$✅ Correct answer: Insulin
In HEPATIC ENCEPHALOPATHY, the failing liver cannot clear toxins coming from the gut, so they reach the brain. Main toxins: AMMONIA (made by gut bacteria from protein; the key toxin), FALSE NEUROTRANSMITTERS (e.g. octopamine, from altered amino acid balance), increased GABA-ergic tone (GABA and endogenous benzodiazepine-like substances), mercaptans, short-chain fatty acids and manganese. Signs: confusion, sleep reversal, asterixis (flapping tremor), fetor hepaticus, coma. Treatment: find triggers (GI bleed, infection, constipation, dehydration, sedatives, high protein), LACTULOSE (traps ammonia in the gut, aim 2–3 soft stools daily) and RIFAXIMIN. INSULIN is a normal hormone that controls glucose; it is not an encephalopathy toxin (liver failure actually causes HYPOGLYCAEMIA).

❌ Why the other options are wrong:
• Ammonia — AMMONIA IS the main toxin — lactulose is used to reduce it.
• False neurotransmitters — FALSE NEUROTRANSMITTERS ARE implicated.
• GABA — GABA IS implicated — increased inhibitory tone in the brain.

⭐ Key point: Hepatic encephalopathy toxins = AMMONIA, false neurotransmitters, GABA. Treat with LACTULOSE + rifaximin. Insulin is not a toxin.$x$, null),
(117, $x$Special areas of the body that require CCU-level attention in burns include all of the following EXCEPT:$x$, $x$Upper back$x$, $x$✅ Correct answer: Upper back
Burns to certain SPECIAL AREAS need specialist (burns unit/critical care) referral even if they are small, because they carry high risk of disability, infection or airway problems: the FACE (airway swelling, eyes, appearance), HANDS and FEET (function, contractures), PERINEUM and GENITALIA (infection, urinary function), and MAJOR JOINTS (contractures). Also circumferential burns of limbs or chest (compartment syndrome, restricted breathing), inhalation injury, electrical and chemical burns. The UPPER BACK has no special functional or airway importance — burns there are assessed by size and depth in the normal way.

❌ Why the other options are wrong:
• Face — FACE burns ARE special — risk of airway oedema and eye injury.
• Hands and feet — HANDS and FEET burns ARE special — risk of loss of function and contractures.
• Perineum and genitalia — PERINEUM and GENITALIA burns ARE special — infection risk and difficult care.

⭐ Key point: Special burn areas: FACE, HANDS, FEET, PERINEUM/GENITALIA, MAJOR JOINTS (plus circumferential, inhalation, electrical, chemical).$x$, null),
(118, $x$Using the Parkland formula for a 70kg patient with 40% TBSA, total 24-hour fluid required is:$x$, $x$11,200ml$x$, $x$✅ Correct answer: 11,200ml
The PARKLAND FORMULA gives the total crystalloid (Ringer's lactate/Hartmann's) needed in the FIRST 24 HOURS after a burn: 4 mL × body weight (kg) × %TBSA burned. Here: 4 × 70 × 40 = 11,200 mL. Give HALF (5,600 mL) in the FIRST 8 HOURS FROM THE TIME OF BURN (not from arrival), and the other half (5,600 mL) over the next 16 hours. Titrate to URINE OUTPUT: 0.5 mL/kg/hour in adults (about 35 mL/h here), 1 mL/kg/h in children, 1–1.5 mL/kg/h in electrical burns. Superficial (first-degree) burns are not counted in TBSA.

❌ Why the other options are wrong:
• 2,800ml — 2,800 mL = 1 × 70 × 40 — this uses 1 mL instead of 4 mL; far too little.
• 5,600ml — 5,600 mL is only the amount for the FIRST 8 HOURS (half), not the 24-hour total.
• 16,800ml — 16,800 mL = 6 × 70 × 40 — too much, risking fluid overload ("fluid creep").

⭐ Key point: Parkland = 4 mL × kg × %TBSA in 24 h; half in first 8 h from time of burn. 70 kg, 40% → 11,200 mL. Target urine 0.5 mL/kg/h.$x$, null),
(119, $x$Antibiotic choice for treating the underlying Clostridium infection in tetanus typically includes:$x$, $x$Penicillin or metronidazole$x$, $x$✅ Correct answer: Penicillin or metronidazole
TETANUS is caused by the toxin (tetanospasmin) of CLOSTRIDIUM TETANI, an anaerobic, spore-forming bacterium found in soil and animal dung, entering through wounds. Treatment has several parts: (1) neutralise free toxin — HUMAN TETANUS IMMUNOGLOBULIN (HTIG); (2) kill the bacteria — ANTIBIOTICS: METRONIDAZOLE (preferred, 500 mg IV 6–8 hourly for 7–10 days) or PENICILLIN; (3) clean and debride the wound; (4) control spasms — benzodiazepines (diazepam), magnesium sulphate, muscle relaxants and ventilation if needed; quiet, dark room; (5) manage autonomic instability; (6) give tetanus toxoid vaccine (the disease does not give immunity).

❌ Why the other options are wrong:
• Aspirin — ASPIRIN is an analgesic/antiplatelet; it does not kill Clostridium.
• Insulin — INSULIN controls blood glucose; it has no role against the infection.
• No antibiotics are used — Antibiotics ARE used — saying none are used is wrong.

⭐ Key point: Tetanus: METRONIDAZOLE (or penicillin) + tetanus immunoglobulin + wound debridement + spasm control + vaccine.$x$, null),
(120, $x$A patient with septic shock has a rising serum lactate despite fluid resuscitation. This finding is most concerning because it suggests:$x$, $x$Ongoing tissue hypoperfusion/anaerobic metabolism$x$, $x$✅ Correct answer: Ongoing tissue hypoperfusion/anaerobic metabolism
In SEPTIC SHOCK, LACTATE is produced when tissues do not receive enough oxygen and switch to ANAEROBIC metabolism (also from stress and reduced clearance). A lactate that is still RISING DESPITE FLUIDS means tissues are still HYPOPERFUSED — the shock is not controlled. This predicts higher mortality and calls for urgent re-assessment: more fluid only if fluid-responsive, start or increase VASOPRESSORS (noradrenaline, target MAP ≥ 65 mmHg), consider inotropes, check source control (drain abscess, remove infected line), and check antibiotics were given within 1 hour. Septic shock definition (Sepsis-3): needs vasopressors to keep MAP ≥ 65 AND lactate > 2 mmol/L despite adequate fluids.

❌ Why the other options are wrong:
• Improved tissue perfusion — Improved perfusion would show a FALLING lactate, not rising.
• No clinical significance — A rising lactate is clinically very significant — a warning sign.
• Resolved sepsis — Sepsis is NOT resolved if lactate is rising; it is getting worse.

⭐ Key point: Rising lactate despite fluids = ONGOING tissue HYPOPERFUSION → escalate (vasopressors, source control).$x$, null),
(121, $x$Using the Rule of Nines to estimate burn size in an adult, each entire arm represents approximately:$x$, $x$9% of total body surface area$x$, $x$✅ Correct answer: 9% of total body surface area
The RULE OF NINES estimates the TOTAL BODY SURFACE AREA (TBSA) burned in ADULTS: HEAD and NECK 9%; EACH ARM 9% (4.5% front + 4.5% back); FRONT of the trunk 18%; BACK of the trunk 18%; EACH LEG 18% (9% front + 9% back); PERINEUM/genitalia 1%. Total = 100%. The patient's own PALM (including fingers) is about 1% TBSA — useful for small or patchy burns. In CHILDREN the head is relatively bigger and legs smaller, so the Lund and Browder chart is more accurate. Only partial- and full-thickness burns are counted.

❌ Why the other options are wrong:
• 18% of total body surface area — 18% is EACH LEG, or the front or back of the trunk — not an arm.
• 1% of total body surface area — 1% is the PERINEUM or the patient's palm.
• 36% of total body surface area — 36% is the WHOLE trunk (front + back) or both legs — far too much for one arm.

⭐ Key point: Rule of Nines (adult): head 9, EACH ARM 9, each leg 18, front trunk 18, back trunk 18, perineum 1.$x$, null),
(122, $x$A patient with a central line in place for 10 days develops fever with no other obvious source. The nurse should suspect:$x$, $x$The central line as a possible source and should assess/report per protocol (e.g. CLABSI workup)$x$, $x$✅ Correct answer: The central line as a possible source and should assess/report per protocol (e.g. CLABSI workup)
A CENTRAL LINE is a direct route for bacteria into the bloodstream. The risk of CENTRAL LINE-ASSOCIATED BLOODSTREAM INFECTION (CLABSI) rises the longer the line stays in. A patient with a line in place for 10 DAYS who develops FEVER with no other clear source must be suspected of CLABSI. Nursing actions: assess the insertion site (redness, pus, tenderness), check vital signs for sepsis, report to the doctor, take paired BLOOD CULTURES (one from the line and one peripheral) before antibiotics, and follow the protocol (the line may need removal and the tip sent for culture). Prevention bundle: hand hygiene, maximal barrier precautions at insertion, chlorhexidine skin prep, avoid femoral site, daily review of the need for the line, scrub-the-hub.

❌ Why the other options are wrong:
• No relationship to the central line whatsoever — Saying there is "no relationship" ignores the most likely source of infection.
• A skin allergy to the dressing only — A dressing allergy causes local rash/itching, not fever without another source.
• Nothing requiring further action — "Nothing requiring action" is unsafe; CLABSI can progress to sepsis and death.

⭐ Key point: Fever in a patient with a central line = suspect CLABSI → assess site, blood cultures (line + peripheral), report.$x$, null),
(123, $x$A heart rate above what value is used as an ICU admission threshold?$x$, $x$>110bpm$x$, $x$✅ Correct answer: >110bpm
ICU admission/referral criteria (and early warning scores such as NEWS) use physiological "trigger" values to identify patients who are deteriorating. A HEART RATE persistently above about 110–130 bpm (this question's key: > 110 bpm) together with other abnormal signs is a common threshold for urgent review and possible ICU admission. Other typical triggers: systolic BP below 90 mmHg, respiratory rate above 30 or below 8, SpO2 below 90% on oxygen, GCS falling by 2 or more, urine output below 0.5 mL/kg/h, lactate above 4 mmol/L. Tachycardia is often the earliest sign of shock, sepsis, bleeding or hypoxia.

❌ Why the other options are wrong:
• >80bpm — > 80 bpm is within the NORMAL resting range (60–100).
• >90bpm — > 90 bpm is only mildly raised; it is a SIRS criterion but not an ICU admission threshold by itself.
• >150bpm — > 150 bpm is very high; waiting for this level would delay ICU referral.

⭐ Key point: HR > 110 bpm (with other abnormal signs) is a common ICU admission/referral trigger. Tachycardia is an early warning sign.$x$, null),
(124, $x$In multidisciplinary management of bladder trauma, which specialist is usually NOT involved?$x$, $x$Oncologist$x$, $x$✅ Correct answer: Oncologist
BLADDER TRAUMA usually happens with PELVIC FRACTURES (blunt trauma, e.g. road accidents) or penetrating injuries. Management is multidisciplinary: the UROLOGIST repairs the bladder (intraperitoneal rupture needs surgery; extraperitoneal is often managed with a catheter); the RADIOLOGIST performs and interprets CT cystography/retrograde cystogram to diagnose the injury; the ORTHOPAEDIC surgeon stabilises the PELVIC FRACTURE; plus trauma/general surgeons, ICU and nurses. An ONCOLOGIST treats CANCER and has no role in acute bladder trauma.

❌ Why the other options are wrong:
• Orthopaedic surgeon — The ORTHOPAEDIC surgeon IS involved because most bladder injuries come with pelvic fractures.
• Radiologist — The RADIOLOGIST IS involved — imaging confirms the diagnosis and type of rupture.
• Urologist — The UROLOGIST IS the main specialist who repairs the bladder.

⭐ Key point: Bladder trauma team = urologist, radiologist, orthopaedic (pelvic fracture), trauma surgeon. Oncologist = cancer, not trauma.$x$, null),
(125, $x$The most common cause of lower GI bleeding is:$x$, $x$Diverticular disease$x$, $x$✅ Correct answer: Diverticular disease
LOWER GI BLEEDING is bleeding from below the ligament of Treitz (mostly the colon), usually seen as fresh red blood per rectum (haematochezia). In adults, the MOST COMMON cause is DIVERTICULAR DISEASE (about 30–40%) — small pouches in the colon wall, especially in older people, where a blood vessel stretched over the pouch can rupture and cause sudden, painless, large-volume bleeding that often stops on its own. Other causes: haemorrhoids, angiodysplasia, colorectal cancer/polyps, colitis (ischaemic, infective, inflammatory bowel disease), post-polypectomy bleeding. Management: resuscitate (ABC, IV access, bloods, cross-match), then colonoscopy or CT angiography; embolisation or surgery if bleeding continues.

❌ Why the other options are wrong:
• Haemorrhoids — HAEMORRHOIDS are very common but usually cause small, bright red bleeding on the tissue — not the commonest cause of significant lower GI bleeding requiring admission.
• Colorectal cancer — COLORECTAL CANCER usually causes slow, chronic bleeding/anaemia rather than being the most common cause.
• Angiodysplasia — ANGIODYSPLASIA is an important cause in the elderly but less common than diverticular disease.

⭐ Key point: Commonest cause of significant lower GI bleeding = DIVERTICULAR DISEASE (painless, large volume, older patients).$x$, null),
(126, $x$A mass casualty incident (MCI) is defined as an event where:$x$, $x$Patient needs exceed available resources, requiring altered standards of care$x$, $x$✅ Correct answer: Patient needs exceed available resources, requiring altered standards of care
A MASS CASUALTY INCIDENT (MCI) is any event (road crash, building collapse, explosion, mass shooting, chemical release, disease outbreak) where the NUMBER and severity of casualties EXCEEDS the RESOURCES available (staff, beds, equipment, blood, transport). Because there is not enough for everyone, the aim changes from "the best for each patient" to "the GREATEST GOOD for the GREATEST NUMBER" — so standards of care are ALTERED: rapid TRIAGE (e.g. START: red immediate, yellow delayed, green minor, black expectant/dead), simple life-saving interventions, and activation of the hospital major incident plan. The number of patients that defines an MCI depends on local capacity.

❌ Why the other options are wrong:
• Only one patient is critically injured — ONE critically injured patient is managed with normal resources — not an MCI.
• Resources always exceed patient needs — If resources always exceed needs, it is NOT an MCI by definition.
• It occurs exclusively in rural areas — MCIs can occur anywhere — cities, rural areas, hospitals.

⭐ Key point: MCI = patient needs EXCEED available resources → triage and altered standards ("greatest good for the greatest number").$x$, null),
(127, $x$In a mass casualty incident involving burns, triage prioritisation typically considers:$x$, $x$Total body surface area burned together with airway involvement and other injuries$x$, $x$✅ Correct answer: Total body surface area burned together with airway involvement and other injuries
In a MASS CASUALTY BURN incident, triage must consider: (1) the SIZE of the burn (% TBSA) — larger burns need more fluid, staff and beds; (2) AIRWAY/INHALATION INJURY — singed nasal hair, soot in mouth, hoarse voice, stridor, burns in an enclosed space; these patients can lose their airway within hours and need early intubation; (3) OTHER INJURIES (fractures, head injury, blast injury) and (4) AGE and comorbidities — together these predict survival (e.g. Baux score = age + %TBSA). Patients with survivable burns but airway risk get high priority; those with very large burns plus inhalation injury and very low survival chance may be triaged as "expectant" when resources are limited.

❌ Why the other options are wrong:
• Burn size alone, ignoring airway status — Using burn SIZE ALONE and ignoring the airway is dangerous; airway burns kill quickly.
• Only the patient's age — Age ALONE is not enough; size, airway and injuries matter too.
• Cosmetic appearance of the burn — COSMETIC appearance has no role in emergency triage.

⭐ Key point: Burn triage = %TBSA + AIRWAY/inhalation injury + other injuries + age (Baux score).$x$, null),
(128, $x$Both clotting and bleeding occur in DIC because:$x$, $x$Excess thrombin uses up clotting factors faster than they can be replaced$x$, $x$✅ Correct answer: Excess thrombin uses up clotting factors faster than they can be replaced
DIC (Disseminated Intravascular Coagulation) is triggered by severe illness — sepsis, major trauma, obstetric emergencies (placental abruption, amniotic fluid embolism), malignancy, snake bite. The trigger causes widespread activation of clotting and EXCESS THROMBIN production. Thrombin forms tiny clots (microthrombi) all through small blood vessels → organ damage (kidneys, lungs, brain, skin). This uses up (CONSUMES) clotting factors, fibrinogen and platelets FASTER than the liver and marrow can replace them — so-called "consumptive coagulopathy" — and the clots are broken down (fibrinolysis), producing D-dimer. With no factors left, the patient BLEEDS from everywhere (IV sites, gums, wounds, GI tract). Labs: low platelets, long PT/aPTT, LOW fibrinogen, HIGH D-dimer. Treat the cause; replace with platelets, FFP and cryoprecipitate if bleeding.

❌ Why the other options are wrong:
• Bleeding uses up clotting factors faster than they are replaced — Bleeding is a RESULT of factor consumption by clotting — not the cause of the consumption.
• The intrinsic pathway releases excess clotting factors — The intrinsic pathway does not "release excess clotting factors"; factors are used up, not overproduced.
• Only clotting occurs in DIC — DIC is not "only clotting" — the hallmark is BOTH clotting and bleeding.

⭐ Key point: DIC: excess THROMBIN → widespread micro-clots → clotting factors and platelets CONSUMED → bleeding. Low fibrinogen, high D-dimer.$x$, null),
(129, $x$The classic '5 Ps' used to assess for compartment syndrome are pain, pallor, paresthesia, pulselessness, and:$x$, $x$Paralysis$x$, $x$✅ Correct answer: Paralysis
COMPARTMENT SYNDROME occurs when pressure inside a closed muscle compartment (surrounded by tough fascia) rises so high that it cuts off blood flow to muscles and nerves — e.g. after fractures (tibia, forearm), crush injury, tight casts/bandages, circumferential burns, reperfusion. The classic "5 Ps": PAIN (out of proportion to the injury and worse on PASSIVE STRETCH of the muscles — the earliest and most important sign), PALLOR, PARAESTHESIA (tingling, numbness), PARALYSIS (late), PULSELESSNESS (very late — the pulse can still be present when muscle is dying). Some add POIKILOTHERMIA (cold limb) as a 6th P. Action: report immediately, loosen or split casts and dressings, keep the limb at heart level (do NOT elevate high), prepare for urgent FASCIOTOMY. Normal compartment pressure is under 10 mmHg; above 30 mmHg (or delta pressure < 30) needs fasciotomy.

❌ Why the other options are wrong:
• Pruritus — PRURITUS (itching) is not one of the 5 Ps.
• Palpitations — PALPITATIONS are a heart symptom, not a sign of compartment syndrome.
• Polyuria — POLYURIA (passing a lot of urine) is unrelated; rhabdomyolysis may cause dark urine and AKI, not polyuria.

⭐ Key point: Compartment syndrome 5 Ps: Pain (on passive stretch — earliest), Pallor, Paraesthesia, PARALYSIS, Pulselessness (late). Needs fasciotomy.$x$, null),
(130, $x$The Curreri formula for nutritional requirements in burns patients is:$x$, $x$25kcal×kg + 40kcal×%TBSA$x$, $x$✅ Correct answer: 25kcal×kg + 40kcal×%TBSA
Burn patients have a very high metabolic rate (hypermetabolism) and break down muscle quickly, so they need extra calories and protein for healing. The CURRERI FORMULA estimates daily calorie needs in adults: 25 kcal × body weight (kg) + 40 kcal × %TBSA burned. Example: 70 kg, 40% burns → (25 × 70) + (40 × 40) = 1,750 + 1,600 = 3,350 kcal/day. Protein needs are also high (about 1.5–2 g/kg/day). Early ENTERAL feeding (within 24 hours) is preferred to support the gut and reduce infection.

❌ Why the other options are wrong:
• 10kcal×kg only — 10 kcal × kg only is far too low and ignores burn size.
• 4ml×kg×%TBSA — 4 mL × kg × %TBSA is the PARKLAND formula for FLUID resuscitation, not calories.
• 2000kcal fixed daily — A fixed 2000 kcal/day ignores body weight and burn size; burned patients usually need much more.

⭐ Key point: Curreri formula = 25 kcal × kg + 40 kcal × %TBSA per day. Parkland (4 mL × kg × %TBSA) is for FLUIDS.$x$, null),
(131, $x$A casualty who is walking and talking at a disaster scene, with only minor injuries, is typically triaged as:$x$, $x$Minor (green)$x$, $x$✅ Correct answer: Minor (green)
In disaster triage (e.g. START triage), the first step is: "Everyone who can WALK, move over here." Casualties who are WALKING and TALKING with only MINOR injuries are tagged GREEN — MINOR ("walking wounded"). They can safely wait for treatment and may even help others. Categories: RED — IMMEDIATE (life-threatening but survivable with quick treatment — e.g. airway problem, respiratory rate over 30, capillary refill over 2 seconds/no radial pulse, cannot follow commands); YELLOW — DELAYED (serious injuries but stable, cannot walk, can wait a few hours); GREEN — MINOR; BLACK — DECEASED or EXPECTANT (not breathing after airway opening, or unsurvivable injuries with limited resources).

❌ Why the other options are wrong:
• Immediate (red) — IMMEDIATE (red) is for life-threatening, time-critical injuries — not walking patients with minor injuries.
• Delayed (yellow) — DELAYED (yellow) is for serious but stable injuries in patients who usually cannot walk.
• Deceased (black) — DECEASED (black) is for patients who are dead or not expected to survive.

⭐ Key point: START triage: walking + talking + minor injuries = GREEN (minor). Red immediate, yellow delayed, black deceased/expectant.$x$, null),
(132, $x$The secondary survey includes:$x$, $x$All of the above$x$, $x$✅ Correct answer: All of the above
In trauma care, the PRIMARY SURVEY (ABCDE) finds and treats immediate life threats. Once the patient is stabilised, the SECONDARY SURVEY is done — a complete re-assessment that includes: (1) AMPLE HISTORY — Allergies, Medications, Past medical history/Pregnancy, Last meal, Events/Environment of injury; (2) a full HEAD-TO-TOE examination (head, face, neck, chest, abdomen, pelvis, perineum, limbs, back with log-roll, neurological exam) to find all injuries; (3) repeated VITAL SIGNS to detect deterioration; plus investigations (X-rays, CT, bloods). If the patient deteriorates at any time, go back to the primary survey.

❌ Why the other options are wrong:
• AMPLE history — AMPLE history alone is only one part of the secondary survey.
• Head-to-toe assessment — Head-to-toe assessment alone is only one part.
• Vital signs — Vital signs alone are only one part.

⭐ Key point: Secondary survey = AMPLE history + HEAD-TO-TOE exam + repeated VITAL SIGNS (all of the above).$x$, null),
(133, $x$The most common cause of hyperthyroidism is:$x$, $x$Grave's disease$x$, $x$✅ Correct answer: Grave's disease
GRAVES' DISEASE is the MOST COMMON cause of HYPERTHYROIDISM (about 60–80% of cases), especially in women aged 20–50. It is AUTOIMMUNE: antibodies (TSH-receptor antibodies, TRAb) stimulate the thyroid to grow and make too much hormone. Features: diffuse smooth GOITRE (often with a bruit), weight loss, heat intolerance, tremor, palpitations/AF, anxiety, plus features specific to Graves' — EYE disease (exophthalmos, lid lag), pretibial myxoedema and thyroid acropachy. Labs: low TSH, high T4/T3, positive TRAb. Treatment: carbimazole/methimazole or PTU, beta-blockers for symptoms, radioactive iodine or surgery.

❌ Why the other options are wrong:
• Toxic multinodular goitre — TOXIC MULTINODULAR GOITRE is the second most common cause, mainly in older people.
• Solitary toxic adenoma — A SOLITARY TOXIC ADENOMA (one "hot" nodule) is less common.
• Thyroiditis — THYROIDITIS (e.g. subacute, postpartum) causes temporary hyperthyroidism from hormone leakage — less common.

⭐ Key point: Commonest cause of hyperthyroidism = GRAVES' DISEASE (autoimmune, TSH-receptor antibodies, eye disease).$x$, null),
(134, $x$The correct order for doffing (removing) PPE is:$x$, $x$Gloves → Goggles → Gown → Mask → Hand hygiene$x$, $x$✅ Correct answer: Gloves → Goggles → Gown → Mask → Hand hygiene
PPE is removed (DOFFED) in an order that takes off the MOST CONTAMINATED items first and protects your face and hands from contamination. The order in this question, which follows the WHO/CDC sequence, is: (1) GLOVES (the most contaminated — touched the patient); (2) GOGGLES/face shield (handle by the strap or ear pieces, not the front); (3) GOWN (untie, pull away from the body, roll inside-out); (4) MASK/respirator (remove by the straps, do not touch the front, after leaving the patient room for N95); (5) HAND HYGIENE — and also perform hand hygiene between steps if hands become contaminated. Putting on (DONNING) is the reverse idea: hand hygiene → gown → mask → goggles → gloves. (CDC also allows gown and gloves to be removed together.)

❌ Why the other options are wrong:
• Mask → Gown → Goggles → Gloves → Hand hygiene — Removing the MASK FIRST would mean touching your face with contaminated gloves — high risk.
• Hand hygiene → Gloves → Gown → Mask → Goggles — Starting with hand hygiene and leaving GOGGLES until last mixes up donning and doffing steps; removing the gown and mask before the goggles risks touching the contaminated eye protection with exposed hands, and there is no final hand hygiene.
• Goggles → Mask → Gloves → Gown — Removing GOGGLES FIRST with dirty gloves risks contaminating your eyes and face, and there is no final hand hygiene.

⭐ Key point: Doffing: GLOVES → GOGGLES → GOWN → MASK → HAND HYGIENE. Donning: gown → mask → goggles → gloves.$x$, null),
(135, $x$A woman in the third trimester develops sudden severe headache, visual disturbance, and blood pressure of 165/110mmHg with proteinuria. The nurse should recognise this as warning signs of impending:$x$, $x$Eclamptic seizure$x$, $x$✅ Correct answer: Eclamptic seizure
PRE-ECLAMPSIA is new HYPERTENSION (≥ 140/90) after 20 weeks of pregnancy with PROTEINURIA or organ dysfunction. SEVERE features include BP ≥ 160/110, severe HEADACHE, VISUAL DISTURBANCES (blurred vision, flashing lights), epigastric/right upper quadrant pain, low platelets, raised liver enzymes (HELLP), pulmonary oedema, reduced urine output. Headache and visual disturbance show CEREBRAL IRRITATION, warning that an ECLAMPTIC SEIZURE may happen soon. Actions: call for senior help, left lateral position, seizure precautions, IV MAGNESIUM SULPHATE (loading dose 4 g IV over 5–15 minutes, then 1 g/hour; monitor reflexes, respiratory rate ≥ 12, urine output ≥ 25–30 mL/hour; antidote calcium gluconate), lower BP with labetalol, hydralazine or nifedipine, and plan delivery.

❌ Why the other options are wrong:
• Normal pregnancy discomfort — These are NOT normal pregnancy discomforts; BP 165/110 with proteinuria is a medical emergency.
• Simple migraine unrelated to pregnancy — A simple migraine does not cause BP 165/110 with proteinuria.
• Round ligament strain — ROUND LIGAMENT strain causes groin/lower abdominal pain, not headache, visual changes and hypertension.

⭐ Key point: Pregnancy + BP ≥ 160/110 + proteinuria + headache/visual disturbance = severe pre-eclampsia → imminent ECLAMPSIA. Give MgSO4.$x$, null),
(136, $x$Primary postpartum haemorrhage after a vaginal delivery is defined as blood loss of:$x$, $x$≥500ml$x$, $x$✅ Correct answer: ≥500ml
PRIMARY POSTPARTUM HAEMORRHAGE (PPH) is blood loss of 500 mL OR MORE within 24 HOURS after a VAGINAL delivery (WHO definition), or 1000 mL or more after CAESAREAN section. It can also be defined as any blood loss enough to make the mother haemodynamically unstable. Minor PPH = 500–1000 mL; major PPH = over 1000 mL; severe = over 2000 mL. SECONDARY PPH is excessive bleeding from 24 hours up to 12 weeks after birth (often from retained products or infection). Causes — the "4 Ts": TONE (uterine atony — the commonest, about 70%), TRAUMA (tears, rupture), TISSUE (retained placenta/clots), THROMBIN (clotting problems). PPH is a leading cause of maternal death in Nigeria and worldwide.

❌ Why the other options are wrong:
• ≥200ml — 200 mL is within normal blood loss for a vaginal birth.
• ≥1000ml — 1000 mL is the threshold for CAESAREAN section or for MAJOR PPH, not the basic vaginal definition.
• ≥2000ml — 2000 mL is SEVERE/massive haemorrhage; waiting for this would delay treatment dangerously.

⭐ Key point: Primary PPH = ≥ 500 mL within 24 h after vaginal birth (≥ 1000 mL after CS). Causes = 4 Ts (Tone commonest).$x$, null),
(137, $x$A key distinguishing feature between placental abruption and placenta previa is that abruption classically presents with:$x$, $x$Painful vaginal bleeding, often with a rigid, tender uterus$x$, $x$✅ Correct answer: Painful vaginal bleeding, often with a rigid, tender uterus
Both conditions cause bleeding in the second half of pregnancy (antepartum haemorrhage), but they feel different. PLACENTAL ABRUPTION: the normally placed placenta SEPARATES early from the uterine wall. Blood collects behind the placenta and irritates the uterus, causing PAINFUL bleeding, a HARD, RIGID ("woody"), TENDER uterus, and often foetal distress. Bleeding may be hidden (concealed) so shock can be worse than visible blood loss suggests; DIC is a risk. Risk factors: hypertension/pre-eclampsia, trauma, cocaine, smoking. PLACENTA PRAEVIA: the placenta lies low over or near the cervix, causing PAINLESS, bright red bleeding with a SOFT, non-tender uterus. Never do a vaginal examination in suspected praevia until it is excluded by ultrasound.

❌ Why the other options are wrong:
• Painless vaginal bleeding — PAINLESS vaginal bleeding is typical of PLACENTA PRAEVIA, not abruption.
• No vaginal bleeding at all — Abruption usually causes some visible bleeding (though it may be concealed); "no bleeding at all" is not the classic feature.
• Bleeding only in the first trimester — Abruption occurs in the second half of pregnancy (after 20 weeks), not only in the first trimester.

⭐ Key point: ABRUPTION = PAINFUL bleeding + RIGID tender uterus. PRAEVIA = PAINLESS bright red bleeding, soft uterus. No VE in praevia.$x$, null),
(138, $x$HELLP syndrome, a complication of severe pre-eclampsia, stands for:$x$, $x$Haemolysis, Elevated Liver enzymes, Low Platelets$x$, $x$✅ Correct answer: Haemolysis, Elevated Liver enzymes, Low Platelets
HELLP syndrome is a severe form/complication of pre-eclampsia (it can occur even with mild BP rise). HELLP stands for: H — HAEMOLYSIS (red cells broken down; raised LDH, low haptoglobin, schistocytes on blood film, raised bilirubin); EL — ELEVATED LIVER ENZYMES (raised AST/ALT from liver damage; may cause right upper quadrant/epigastric pain, nausea, vomiting); LP — LOW PLATELETS (under 100 × 10⁹/L — bleeding risk). Complications: DIC, placental abruption, liver haematoma/rupture, AKI, pulmonary oedema. Management: stabilise the mother, MAGNESIUM SULPHATE for seizure prevention, control BP, correct clotting/platelets, and DELIVERY of the baby is the definitive treatment.

❌ Why the other options are wrong:
• High Eclampsia, Low Labour Progress — "High Eclampsia, Low Labour Progress" is not a medical term.
• Hypertension, Elevated Lipids, Low Protein — "Hypertension, Elevated Lipids, Low Protein" is incorrect; lipids are not part of HELLP.
• Haematoma, Embolism, Liver failure, Pulmonary oedema — "Haematoma, Embolism, Liver failure, Pulmonary oedema" lists possible complications, but not the meaning of HELLP.

⭐ Key point: HELLP = Haemolysis, Elevated Liver enzymes, Low Platelets. Definitive treatment = delivery.$x$, null),
(139, $x$What is the best thing one can do to prevent premature rupture of membranes?$x$, $x$All of the options$x$, $x$✅ Correct answer: All of the options
PREMATURE RUPTURE OF MEMBRANES (PROM/PPROM) means the amniotic sac breaks before labour starts (and before 37 weeks for PPROM). Risk factors include: SMOKING (weakens membranes), infections (urinary tract infection, bacterial vaginosis, STIs), previous PROM or preterm birth, poor nutrition, multiple pregnancy, polyhydramnios, cervical insufficiency, bleeding in pregnancy and low socio-economic status. Prevention therefore includes ALL the options: AVOID SMOKING, MAINTAIN A HEALTHY PREGNANCY (good nutrition, vitamin C and other nutrients, treat infections, rest when advised), and ATTEND ALL ANTENATAL (PRENATAL) CLINICS so that infections and risk factors are found and treated early.

❌ Why the other options are wrong:
• Avoid smoking cigarettes — Avoiding smoking alone is correct but is only one preventive measure.
• Maintain a healthy pregnancy — Maintaining a healthy pregnancy alone is correct but does not include the other important measures.
• Attend all prenatal clinic — Attending antenatal clinic alone is correct, but it is only one of several preventive actions.

⭐ Key point: Prevent PROM: no smoking + healthy pregnancy (nutrition, treat infections) + regular antenatal care — ALL of the options.$x$, null),
(140, $x$Other than transfusion, when is it necessary to take the Rh Factor into consideration?$x$, $x$Pregnancy$x$, $x$✅ Correct answer: Pregnancy
The Rh (D) factor is a protein on red blood cells. People are Rh-POSITIVE (have it) or Rh-NEGATIVE (do not). Apart from blood transfusion, it is most important in PREGNANCY. If an Rh-NEGATIVE mother carries an Rh-POSITIVE baby, foetal blood can enter her circulation (during delivery, miscarriage, abortion, ectopic pregnancy, abdominal trauma, amniocentesis, bleeding). She makes anti-D antibodies (SENSITISATION). In a LATER pregnancy, these antibodies cross the placenta and destroy the red cells of an Rh-positive baby — HAEMOLYTIC DISEASE OF THE NEWBORN (anaemia, jaundice, hydrops foetalis). Prevention: give ANTI-D IMMUNOGLOBULIN to Rh-negative mothers at about 28 weeks, within 72 hours after delivery of an Rh-positive baby, and after any sensitising event.

❌ Why the other options are wrong:
• Cathertization — CATHETERISATION does not involve the Rh factor.
• Spleen Rupture — SPLEEN RUPTURE may need transfusion (already covered by "other than transfusion"), but the Rh factor is not otherwise relevant.
• Blood Donation — BLOOD DONATION is part of transfusion services — the question asks for situations other than transfusion.

⭐ Key point: Rh factor matters in PREGNANCY: Rh-negative mother + Rh-positive baby → sensitisation → give ANTI-D within 72 h.$x$, null),
(141, $x$Magnesium sulfate is administered in severe preeclampsia primarily to:$x$, $x$Prevent or treat eclamptic seizures$x$, $x$✅ Correct answer: Prevent or treat eclamptic seizures
In SEVERE PRE-ECLAMPSIA, MAGNESIUM SULPHATE (MgSO4) is given mainly to PREVENT ECLAMPTIC SEIZURES — and to TREAT them if they occur. It is a central nervous system depressant and cerebral vasodilator that stabilises nerve membranes. The Magpie trial showed it halves the risk of eclampsia. Regimen (Zuspan/Pritchard): loading dose 4 g IV over 5–15 minutes (or 4 g IV + 10 g IM), then maintenance 1 g/hour IV (or 5 g IM every 4 hours) for 24 hours after delivery or the last fit. MONITOR for MAGNESIUM TOXICITY: loss of PATELLAR REFLEXES (first sign), respiratory rate below 12/min, urine output below 25–30 mL/hour, drowsiness. ANTIDOTE: CALCIUM GLUCONATE 10% 10 mL IV over 10 minutes.

❌ Why the other options are wrong:
• Lower blood glucose — MgSO4 does NOT lower blood glucose.
• Induce labour immediately — It does not INDUCE labour (oxytocin or prostaglandins do); it may slightly relax the uterus.
• Treat postpartum haemorrhage — It does not treat PPH; uterotonics (oxytocin, ergometrine, misoprostol) do.

⭐ Key point: MgSO4 in pre-eclampsia = PREVENT/TREAT SEIZURES. Toxicity: lost reflexes, RR < 12, low urine. Antidote: calcium gluconate.$x$, null),
(142, $x$The drug of choice to prevent further convulsions in eclampsia is:$x$, $x$Magnesium sulphate$x$, $x$✅ Correct answer: Magnesium sulphate
MAGNESIUM SULPHATE is the DRUG OF CHOICE to prevent FURTHER CONVULSIONS in eclampsia. The Collaborative Eclampsia Trial showed MgSO4 is far better than DIAZEPAM and PHENYTOIN: fewer recurrent fits and lower maternal death. It is cheap, available and recommended by WHO. Give a loading dose 4 g IV over 5–15 minutes, then 1 g/hour for 24 hours; a recurrent fit is treated with another 2–4 g IV. During a fit: call for help, left lateral position, protect from injury, airway and oxygen, then MgSO4. Monitor reflexes, respirations and urine output; calcium gluconate is the antidote.

❌ Why the other options are wrong:
• Diazepam — DIAZEPAM stops a fit but is less effective at preventing further eclamptic fits and causes sedation in mother and baby (respiratory depression).
• Phenytoin — PHENYTOIN is less effective than MgSO4 in eclampsia.
• Hydralazine — HYDRALAZINE is an ANTIHYPERTENSIVE used to lower BP; it does not prevent convulsions.

⭐ Key point: Eclampsia → MAGNESIUM SULPHATE is the drug of choice (better than diazepam and phenytoin). Hydralazine/labetalol for BP.$x$, null),
(143, $x$Which of the following dietary recommendations are effective in the management of hyperemesis gravidarum?$x$, $x$Eating small, frequent meals$x$, $x$✅ Correct answer: Eating small, frequent meals
HYPEREMESIS GRAVIDARUM is severe, persistent vomiting in pregnancy causing dehydration, weight loss (> 5%), ketosis and electrolyte imbalance (low potassium and sodium). Dietary advice: eat SMALL, FREQUENT MEALS (every 2–3 hours) so the stomach is never empty or overloaded; choose dry, bland, high-carbohydrate, low-fat foods (crackers, toast, rice); drink fluids BETWEEN meals rather than with meals; avoid spicy, greasy or strong-smelling foods; ginger may help. Severe cases need hospital: IV fluids (normal saline with potassium), antiemetics, THIAMINE (to prevent Wernicke's encephalopathy), and monitoring of electrolytes and ketones.

❌ Why the other options are wrong:
• Eating high-fat foods — HIGH-FAT foods are digested slowly and make nausea worse.
• Drinking fluids with meals — Drinking fluids WITH meals fills the stomach and makes vomiting more likely; fluids should be taken between meals.
• Removing salt from the diet — REMOVING SALT is not helpful; these women often lose sodium through vomiting and need it replaced.

⭐ Key point: Hyperemesis: SMALL, FREQUENT, dry, low-fat meals; fluids BETWEEN meals; IV fluids + thiamine if severe.$x$, null),
(144, $x$Critical management of a woman with severe bleeding just after delivery includes:$x$, $x$A continuous IV infusion of high-dose oxytocin$x$, $x$✅ Correct answer: A continuous IV infusion of high-dose oxytocin
Severe bleeding just after delivery is PRIMARY POSTPARTUM HAEMORRHAGE. The most common cause is UTERINE ATONY (a soft, poorly contracted uterus). Critical management: call for help, ABC, two large-bore IV cannulas, blood for cross-match, warm crystalloid and blood, catheterise to EMPTY the bladder, and RUB UP the uterus (fundal massage). UTEROTONICS are key: oxytocin 10 IU IM/IV, then a CONTINUOUS IV OXYTOCIN INFUSION (e.g. 40 IU in 500 mL over 4 hours) to keep the uterus contracted; ergometrine (not in hypertension), misoprostol, carboprost; TRANEXAMIC ACID 1 g IV within 3 hours of birth. If still bleeding: bimanual compression, balloon tamponade, surgery.

❌ Why the other options are wrong:
• Setting up dextrose water as the main fluid — DEXTROSE WATER is not a resuscitation fluid — it leaves the blood vessels quickly; use crystalloids (normal saline, Ringer's) and blood.
• Stopping all uterotonics — STOPPING uterotonics is wrong; they are the main treatment for atony.
• Filling the bladder to stop bleeding — A FULL bladder prevents the uterus from contracting — the bladder must be EMPTIED, not filled.

⭐ Key point: PPH (atony): massage uterus + OXYTOCIN infusion + other uterotonics + tranexamic acid; EMPTY the bladder; crystalloid and blood.$x$, null),
(145, $x$A premature infant in the NICU develops abdominal distension, bloody stools, and feeding intolerance. The nurse should suspect:$x$, $x$Necrotising enterocolitis (NEC), a serious neonatal GI emergency$x$, $x$✅ Correct answer: Necrotising enterocolitis (NEC), a serious neonatal GI emergency
NECROTISING ENTEROCOLITIS (NEC) is a serious bowel emergency, mostly in PREMATURE and low-birth-weight babies, usually in the first 2–3 weeks after starting feeds. Part of the bowel wall becomes inflamed and dies (necrosis), sometimes with perforation. Classic signs: FEEDING INTOLERANCE (increased gastric residuals, bilious vomiting), ABDOMINAL DISTENSION and tenderness, BLOODY STOOLS, plus signs of sepsis (apnoea, bradycardia, temperature instability, lethargy). X-ray: pneumatosis intestinalis (gas in the bowel wall), portal venous gas, free air if perforated. Management: STOP FEEDS (NPO), NG tube on free drainage, IV fluids/TPN, IV antibiotics, serial X-rays, surgical review. Breast milk reduces NEC risk.

❌ Why the other options are wrong:
• Normal prematurity findings requiring no evaluation — These are NOT normal prematurity findings; ignoring them can be fatal.
• Simple constipation — SIMPLE CONSTIPATION does not cause bloody stools, bilious aspirates and systemic illness.
• Normal digestion in preterm infants — Normal digestion does not cause distension, bloody stools and feeding intolerance.

⭐ Key point: Preterm + feeding intolerance + abdominal distension + bloody stools = NEC → stop feeds, NG decompression, antibiotics, X-ray.$x$, null),
(146, $x$Classic presenting features of appendicitis in a child include periumbilical pain migrating to which quadrant?$x$, $x$Right lower quadrant$x$, $x$✅ Correct answer: Right lower quadrant
In APPENDICITIS, pain usually starts as dull PERIUMBILICAL (around the belly button) pain — this is visceral pain, because the appendix shares nerve supply with the midgut (T10). After a few hours, as inflammation reaches the overlying parietal peritoneum, pain MOVES to the RIGHT LOWER QUADRANT (RLQ), over McBURNEY'S POINT (one-third of the way from the anterior superior iliac spine to the umbilicus), and becomes sharp and localised. Other signs: loss of appetite, nausea/vomiting, low-grade fever, rebound tenderness, Rovsing's sign, psoas sign, raised white cells. Children often present late and perforate more often. Nursing: NPO, IV fluids, analgesia, no laxatives or enemas (risk of perforation), prepare for appendicectomy.

❌ Why the other options are wrong:
• Right upper quadrant — RIGHT UPPER QUADRANT pain suggests gallbladder or liver problems.
• Left lower quadrant — LEFT LOWER QUADRANT pain suggests sigmoid/diverticular disease (adults) or left-sided problems.
• Left upper quadrant — LEFT UPPER QUADRANT pain suggests spleen, stomach or pancreas problems.

⭐ Key point: Appendicitis: periumbilical pain → RIGHT LOWER QUADRANT (McBurney's point), with anorexia, fever, rebound tenderness.$x$, null),
(147, $x$Croup in a child is classically characterised by:$x$, $x$A high-pitched, barking cough with inspiratory stridor$x$, $x$✅ Correct answer: A high-pitched, barking cough with inspiratory stridor
CROUP (laryngotracheobronchitis) is a viral infection (usually PARAINFLUENZA virus) mainly in children aged 6 months to 3 years. It causes swelling of the larynx and trachea just below the vocal cords. Classic features: a "BARKING" (seal-like) COUGH, HOARSE voice, INSPIRATORY STRIDOR (noisy breathing in), often worse at night, after 1–2 days of cold-like symptoms and low-grade fever. Treatment: keep the child CALM (crying worsens obstruction), give oral DEXAMETHASONE (0.15–0.6 mg/kg) for all cases, NEBULISED ADRENALINE for severe stridor at rest, and oxygen if needed. Warning signs: stridor at rest, chest recession, agitation or drowsiness, cyanosis.

❌ Why the other options are wrong:
• Silent chest with no cough — A SILENT CHEST with no cough is a sign of life-threatening ASTHMA (no air movement), not croup.
• Chronic productive cough over months — A CHRONIC productive cough over months suggests conditions like TB, bronchiectasis or cystic fibrosis.
• Painless swallowing difficulty — PAINLESS swallowing difficulty is not typical of croup; EPIGLOTTITIS causes PAINFUL swallowing and drooling.

⭐ Key point: Croup = BARKING cough + INSPIRATORY STRIDOR + hoarseness (parainfluenza). Treat with dexamethasone ± nebulised adrenaline.$x$, null),
(148, $x$Assessing dehydration severity in a paediatric patient includes evaluating all of the following EXCEPT:$x$, $x$The child's favourite toy$x$, $x$✅ Correct answer: The child's favourite toy
Children dehydrate quickly. Clinical assessment of DEHYDRATION SEVERITY looks at: general condition (alert, irritable, lethargic), SKIN TURGOR (skin pinch goes back slowly in dehydration), MUCOUS MEMBRANES (dry mouth and tongue), eyes (sunken), tears (absent), anterior FONTANELLE in infants (sunken), capillary refill time (over 2 seconds), heart rate (tachycardia), BP (low = late sign), URINE OUTPUT (reduced/no wet nappies), and weight loss (best measure if pre-illness weight is known: mild < 5%, moderate 5–10%, severe > 10%). WHO classifies as no, some, or severe dehydration to guide ORS (Plan A/B) or IV fluids (Plan C). The child's FAVOURITE TOY has no clinical value for hydration.

❌ Why the other options are wrong:
• Skin turgor — SKIN TURGOR IS assessed — slow return of a skin pinch shows dehydration.
• Mucous membrane moisture — MUCOUS MEMBRANE moisture IS assessed — a dry mouth shows dehydration.
• Urine output — URINE OUTPUT IS assessed — reduced urine/fewer wet nappies shows dehydration.

⭐ Key point: Paediatric dehydration: turgor, mucous membranes, eyes, tears, fontanelle, capillary refill, HR, urine output, weight loss.$x$, null),
(149, $x$The APGAR score evaluates a newborn's condition based on which five components?$x$, $x$Appearance, pulse, grimace, activity, and respiration$x$, $x$✅ Correct answer: Appearance, pulse, grimace, activity, and respiration
The APGAR score assesses a newborn at 1 and 5 minutes after birth (and every 5 minutes up to 20 minutes if low). Five components, each scored 0, 1 or 2: A — APPEARANCE (skin colour: blue/pale 0, body pink with blue limbs 1, completely pink 2); P — PULSE (heart rate: absent 0, below 100 = 1, 100 or above = 2); G — GRIMACE (reflex irritability: no response 0, grimace 1, cry/cough/sneeze 2); A — ACTIVITY (muscle tone: limp 0, some flexion 1, active movement 2); R — RESPIRATION (absent 0, slow/irregular 1, good strong cry 2). Total 7–10 = normal; 4–6 = moderately depressed (needs some help); 0–3 = severely depressed (needs resuscitation). Resuscitation should not wait for the 1-minute score.

❌ Why the other options are wrong:
• Airway, pulse, glucose, activity, respiration — "Airway, pulse, glucose…" — glucose is not part of APGAR.
• Appearance, position, glucose, activity, reflex — "Appearance, position, glucose, activity, reflex" — position and glucose are not components.
• Alertness, pain, growth, appetite, reflex — "Alertness, pain, growth, appetite, reflex" — none of these, except reflex in part, are APGAR components.

⭐ Key point: APGAR = Appearance, Pulse, Grimace, Activity, Respiration (0–2 each, total 10). Score at 1 and 5 minutes.$x$, null),
(150, $x$Neonates at increased risk for hypoglycaemia after birth include those born to:$x$, $x$Diabetic mothers, and infants who are preterm or growth-restricted$x$, $x$✅ Correct answer: Diabetic mothers, and infants who are preterm or growth-restricted
After birth, the baby's glucose supply from the mother stops suddenly, so the newborn must make its own. Babies at HIGH RISK of NEONATAL HYPOGLYCAEMIA: (1) INFANTS OF DIABETIC MOTHERS — high maternal glucose crosses the placenta, so the baby's pancreas makes a lot of INSULIN (hyperinsulinism); after birth the glucose supply stops but insulin stays high, so glucose drops; these babies are often large (macrosomic). (2) PRETERM infants — small glycogen and fat stores. (3) GROWTH-RESTRICTED (SGA/IUGR) infants — poor stores. Also: babies who are cold, septic, asphyxiated, or of mothers on beta-blockers. Signs: jitteriness, poor feeding, lethargy, apnoea, seizures. Management: early and frequent feeding, check blood glucose (treat if below about 2.6 mmol/L/47 mg/dL), oral or IV dextrose (10% dextrose 2 mL/kg).

❌ Why the other options are wrong:
• Mothers with well-controlled, non-diabetic pregnancies — Babies of mothers with well-controlled NON-diabetic pregnancies are NOT at increased risk.
• Mothers with normal glucose tolerance only — Mothers with normal glucose tolerance do not raise the baby's risk.
• Only infants born after 42 weeks gestation — Post-term (> 42 weeks) babies can be at some risk (placental insufficiency), but "only" these babies is wrong — diabetic mothers, preterm and SGA babies are the main groups.

⭐ Key point: Neonatal hypoglycaemia risk: infants of DIABETIC mothers (hyperinsulinism), PRETERM, and growth-restricted (SGA) babies.$x$, null),
(151, $x$Which of the following is NOT one of the environmental components Nightingale identified as essential to a healthy healing environment?$x$, $x$Strict bedrest for all patients regardless of condition$x$, $x$✅ Correct answer: Strict bedrest for all patients regardless of condition
FLORENCE NIGHTINGALE's Environmental Theory says the nurse's role is to manage the ENVIRONMENT so that nature can heal the patient. Her key components: PURE/FRESH AIR and VENTILATION, PURE WATER, efficient DRAINAGE, CLEANLINESS, LIGHT (especially direct SUNLIGHT), QUIET (control of NOISE), WARMTH, proper DIET and nutrition, a clean bed and bedding, personal cleanliness, variety (to prevent boredom), and observation of the patient. She did NOT recommend strict bedrest for all patients regardless of condition — care was to be individualised, and she valued activity, variety and attention to each patient's needs.

❌ Why the other options are wrong:
• Pure/fresh air and proper ventilation — PURE/FRESH AIR and ventilation IS one of her key components (often listed first).
• Adequate light, especially direct sunlight — Adequate LIGHT, especially sunlight, IS a key component.
• Noise control and quiet — NOISE control/quiet IS a key component; she warned that unnecessary noise harms patients.

⭐ Key point: Nightingale's environment: fresh air, pure water, drainage, cleanliness, LIGHT, QUIET, warmth, diet. Not "strict bedrest for all".$x$, null),
(152, $x$When selecting nursing interventions, the nurse should consider all of the following EXCEPT:$x$, $x$The nurse's personal convenience over client needs$x$, $x$✅ Correct answer: The nurse's personal convenience over client needs
When choosing NURSING INTERVENTIONS (the planning stage of the nursing process), the nurse should consider: (1) the DESIRED CLIENT OUTCOME/goal — interventions must help reach it; (2) EVIDENCE-BASED practice and research — use interventions proven to work; (3) the CLIENT'S PREFERENCES, values, culture and RESOURCES (money, family support, ability); (4) safety and the nurse's competence; (5) the nursing diagnosis and its related factors; (6) institutional policies and available resources. The NURSE'S PERSONAL CONVENIENCE must never be placed above the client's needs — care is patient-centred.

❌ Why the other options are wrong:
• The desired client outcome — The DESIRED client outcome IS considered — interventions are chosen to achieve it.
• Evidence-based practice and research support — EVIDENCE-BASED practice IS considered — it makes interventions safer and more effective.
• The client's preferences and resources — The client's PREFERENCES and RESOURCES ARE considered — care must be acceptable and realistic for the patient.

⭐ Key point: Choose interventions by outcome, evidence, client preferences/resources, safety — never the nurse's personal convenience.$x$, null),
(153, $x$In the PDSA cycle, the Study phase involves:$x$, $x$Analyzing the results/data collected and comparing them to predictions$x$, $x$✅ Correct answer: Analyzing the results/data collected and comparing them to predictions
The PDSA cycle (Plan–Do–Study–Act; Deming/Shewhart) is a quality improvement method for testing changes on a small scale. PLAN — state the objective, PREDICT what will happen, and plan who, what, where, when, and what data to collect. DO — carry out the change on a SMALL/TRIAL scale and collect the data, noting problems. STUDY — ANALYSE the data/results, COMPARE them with the PREDICTIONS, and summarise what was learned. ACT — decide: adopt the change, adapt (modify) it, or abandon it, then plan the next cycle. Many small cycles lead to reliable improvement before wider rollout.

❌ Why the other options are wrong:
• Developing the objective and predicting results — Developing the objective and predicting results is the PLAN phase.
• Carrying out the planned change on a small/trial scale — Carrying out the change on a small scale is the DO phase.
• Implementing the change hospital-wide permanently — Implementing hospital-wide is part of ACT (after successful testing), not Study.

⭐ Key point: PDSA: Plan (objective, prediction) → Do (small test) → STUDY (analyse and compare with prediction) → Act (adopt, adapt, abandon).$x$, null),
(154, $x$For a family experiencing acute grief after a patient's death in the ICU, which NIC intervention is most appropriate?$x$, $x$Grief Work Facilitation$x$, $x$✅ Correct answer: Grief Work Facilitation
NIC (Nursing Interventions Classification) is a standard list of nursing interventions. For a FAMILY in ACUTE GRIEF after a death in ICU, the appropriate NIC intervention is GRIEF WORK FACILITATION — assisting people to resolve a significant loss. Activities include: being present and listening, encouraging expression of feelings, allowing the family time with the body, explaining what happened in simple language, respecting cultural and religious practices (e.g. Islamic burial within 24 hours, Christian prayers), offering chaplain/imam support, identifying support systems, and giving information about bereavement services. Other related NIC interventions: family support, emotional support, spiritual support.

❌ Why the other options are wrong:
• Airway Suctioning — AIRWAY SUCTIONING is a physical intervention for a patient's airway; it does nothing for the bereaved family.
• Electrolyte Management — ELECTROLYTE MANAGEMENT is a physiological intervention for a living patient.
• Positioning — POSITIONING is for a patient's comfort/physiology, not grief support for a family.

⭐ Key point: Grieving family → NIC "GRIEF WORK FACILITATION": presence, listening, cultural/spiritual support, time with the body.$x$, null),
(155, $x$Before mobilising a post-operative or critically ill patient for the first time, the nurse should first:$x$, $x$Assess haemodynamic stability, fall risk, and any lines/tubes that need securing$x$, $x$✅ Correct answer: Assess haemodynamic stability, fall risk, and any lines/tubes that need securing
EARLY MOBILISATION reduces complications (DVT, pneumonia, pressure ulcers, muscle wasting, delirium) and speeds recovery. But before the FIRST mobilisation of a post-operative or critically ill patient, the nurse must ASSESS SAFETY: (1) HAEMODYNAMIC STABILITY — heart rate, BP (risk of postural hypotension), SpO2, respiratory rate, need for vasopressors; (2) neurological state and ability to follow commands (sedation level, RASS); (3) FALL RISK, pain control, strength; (4) LINES, TUBES AND DRAINS — secure the ETT, central lines, arterial lines, catheters, chest drains, so they are not pulled out; (5) have enough staff and equipment (walker, chair, portable oxygen, monitor). Start slowly: sit up → dangle legs → stand → chair → walk; stop if the patient becomes dizzy, breathless or unstable.

❌ Why the other options are wrong:
• Skip any assessment and proceed directly to ambulation — SKIPPING assessment risks falls, fainting, accidental extubation or line removal.
• Remove all monitoring equipment — REMOVING ALL monitoring is unsafe — critically ill patients need monitoring during the first mobilisation.
• Wait until the patient requests it — WAITING until the patient asks delays recovery; early mobilisation is planned and encouraged by the team.

⭐ Key point: Before first mobilisation: check HAEMODYNAMICS, fall risk, pain, and SECURE lines/tubes; mobilise gradually with enough staff.$x$, null),
(156, $x$When two nursing diagnoses appear closely related, what should the nurse do first to determine which diagnosis most accurately reflects the needs of a patient?$x$, $x$Review the defining characteristics$x$, $x$✅ Correct answer: Review the defining characteristics
Each NANDA-I nursing diagnosis has DEFINING CHARACTERISTICS — the signs and symptoms (cues) that must be present for that diagnosis. When two diagnoses look similar (e.g. "Ineffective Airway Clearance" vs "Ineffective Breathing Pattern", or "Anxiety" vs "Fear"), the nurse should first REVIEW THE DEFINING CHARACTERISTICS of each and compare them with the patient's data. The diagnosis whose defining characteristics best match the patient's actual cues is the most accurate. Example: Fear has an identifiable source; Anxiety has a vague, non-specific source.

❌ Why the other options are wrong:
• Reassess the patient — REASSESSING the patient may be needed if data are missing, but the first step in choosing between two diagnoses is comparing defining characteristics with the data already collected.
• Examine the related to factors — "Related to" factors describe the CAUSE (aetiology); they help write the statement but do not best distinguish which diagnosis is present.
• Analyze the secondary to factors — "Secondary to" usually refers to a medical condition; nursing diagnoses are not chosen based on medical diagnoses.

⭐ Key point: To choose between similar nursing diagnoses → compare DEFINING CHARACTERISTICS (signs/symptoms) with the patient's cues.$x$, null),
(157, $x$If a goal states a patient will gain 2kg in 4 weeks, and the patient gains only 1kg, the goal is classified as:$x$, $x$Partially Met$x$, $x$✅ Correct answer: Partially Met
In the EVALUATION stage of the nursing process, the nurse compares the patient's actual response with the expected outcome (goal). There are three results: GOAL MET — the patient achieved the full outcome by the target date; GOAL PARTIALLY MET — the patient made SOME progress but did not reach the full outcome; GOAL NOT MET — no progress, or got worse. Here the goal was 2 kg weight gain in 4 weeks; the patient gained 1 kg — progress, but only half the target, so the goal is PARTIALLY MET. The nurse should then find out why (intake, illness, plan problems), and revise the plan: continue, modify interventions or change the time frame.

❌ Why the other options are wrong:
• Met — MET would require the full 2 kg gain.
• Not Met — NOT MET would mean no gain at all (or weight loss).
• Cannot be evaluated — It CAN be evaluated — the goal is measurable (kg) and time-bound (4 weeks).

⭐ Key point: Evaluation: Met (full), PARTIALLY MET (some progress), Not met (none). 1 kg of a 2 kg goal = partially met.$x$, null),
(158, $x$A subtle but important principle of re-assessment is that:$x$, $x$A goal may be met on paper while the underlying problem remains unsolved$x$, $x$✅ Correct answer: A goal may be met on paper while the underlying problem remains unsolved
RE-ASSESSMENT is an ongoing part of the nursing process. A goal written in a care plan can appear MET "ON PAPER" (e.g. "patient will report pain less than 3/10") while the UNDERLYING PROBLEM is still there (e.g. the patient reports less pain only because they are afraid of injections, or pain falls only when sedated, or a wound has not healed). Good nurses look beyond the goal statement: they check the actual condition of the patient, the cause of the problem, and whether new problems have developed, then update the care plan. Goals should therefore be measurable, realistic and linked to the real problem.

❌ Why the other options are wrong:
• A goal that appears met always means the problem is fully solved — A met goal does NOT always mean the problem is fully solved — that is the subtle point of this question.
• Re-assessment is unnecessary once a goal is achieved — Re-assessment is NOT unnecessary once a goal is met; the patient's condition can change and new problems may appear.
• Only unmet goals require re-assessment — ALL goals, met and unmet, need re-assessment — not only unmet ones.

⭐ Key point: A goal can be met on paper while the real problem remains — ALWAYS re-assess the patient, not just the goal statement.$x$, null),
(159, $x$A client with well-controlled type 2 diabetes who exercises regularly, follows a prescribed diet, and reports high energy and life satisfaction would most likely be placed toward which end of the health-illness continuum?$x$, $x$Toward the high-level wellness end$x$, $x$✅ Correct answer: Toward the high-level wellness end
The HEALTH–ILLNESS CONTINUUM (Dunn/Travis) shows health as a range from HIGH-LEVEL WELLNESS at one end to PREMATURE DEATH at the other, not as simply "sick or not sick". A person's position depends on their whole state — physical, mental, social and emotional — and their ability to function and achieve their potential. A person with a CHRONIC disease (e.g. well-controlled type 2 diabetes) can still be near the HIGH-LEVEL WELLNESS end if they manage the condition well: regular exercise, following the diet, taking medications, feeling energetic and satisfied with life. Nurses use this idea to promote wellness in every patient.

❌ Why the other options are wrong:
• Toward the death end — Toward the DEATH end would mean severe illness and poor function — not this active, satisfied person.
• Exactly at the neutral, disease-free point only — The continuum is not about a single "neutral, disease-free" point; this patient has a disease but high wellness.
• Outside the continuum, since a chronic disease disqualifies wellness placement — A chronic disease does NOT exclude a person from the continuum; everyone is somewhere on it.

⭐ Key point: Health–illness continuum: a person with a well-managed chronic disease can be near HIGH-LEVEL WELLNESS.$x$, null),
(160, $x$A client newly diagnosed with heart failure must learn to monitor daily weights, restrict sodium, and recognize signs of fluid overload. This need is best classified as which type of self-care requisite?$x$, $x$Health-deviation self-care requisite$x$, $x$✅ Correct answer: Health-deviation self-care requisite
OREM'S SELF-CARE DEFICIT THEORY describes three types of SELF-CARE REQUISITES (needs): (1) UNIVERSAL — needs everyone has: air, water, food, elimination, activity and rest, solitude and social interaction, safety, normality; (2) DEVELOPMENTAL — needs linked to life stages and events (pregnancy, adolescence, ageing, bereavement); (3) HEALTH-DEVIATION — needs that arise because of ILLNESS, injury, disability or medical treatment: learning to live with and manage a disease. A patient NEWLY DIAGNOSED with HEART FAILURE who must learn DAILY WEIGHTS, SODIUM RESTRICTION and signs of FLUID OVERLOAD has HEALTH-DEVIATION self-care requisites.

❌ Why the other options are wrong:
• Universal self-care requisite — UNIVERSAL requisites are basic needs of all people, not disease-specific learning.
• Developmental self-care requisite — DEVELOPMENTAL requisites relate to life stages and maturation, not a new illness.
• Environmental self-care requisite — "Environmental self-care requisite" is not one of Orem's three categories.

⭐ Key point: Orem: universal (everyone), developmental (life stages), HEALTH-DEVIATION (needs caused by illness/treatment).$x$, null),
(161, $x$A nurse formulates the nursing diagnosis 'Risk for infection related to invasive lines' for a critically ill patient. This is an example of which type of nursing diagnosis?$x$, $x$A risk nursing diagnosis, describing vulnerability to a potential problem rather than a current one$x$, $x$✅ Correct answer: A risk nursing diagnosis, describing vulnerability to a potential problem rather than a current one
NANDA-I nursing diagnoses come in several types: ACTUAL (problem-focused) — a problem that EXISTS NOW, with defining characteristics present (e.g. "Impaired Gas Exchange related to… as evidenced by SpO2 85%"); RISK — the patient is VULNERABLE to developing a problem but it has NOT happened yet; written with "Risk for…" and RISK FACTORS only (no "as evidenced by", because no signs exist yet) — e.g. "Risk for infection related to invasive lines"; HEALTH PROMOTION/WELLNESS — readiness to improve health (e.g. "Readiness for enhanced nutrition"); SYNDROME — a cluster of diagnoses. ICU patients with central lines, urinary catheters and ETTs are at risk of infection, so this is a RISK diagnosis.

❌ Why the other options are wrong:
• An actual nursing diagnosis, describing a current problem — An ACTUAL diagnosis describes a current problem with signs present — infection has not occurred here.
• A wellness diagnosis — A WELLNESS diagnosis describes readiness to improve health, not vulnerability to a problem.
• Not a valid nursing diagnosis format — It IS a valid format — "Risk for [problem] related to [risk factor]" is the standard risk diagnosis.

⭐ Key point: "Risk for…" = RISK diagnosis (vulnerability, no signs yet). Actual = problem present with defining characteristics.$x$, null),
(162, $x$A nursing audit can help to identify:$x$, $x$Trends in patient care that may need to be addressed$x$, $x$✅ Correct answer: Trends in patient care that may need to be addressed
A NURSING AUDIT is a systematic review of nursing care, usually by examining records (retrospective audit) or observing care as it happens (concurrent audit), and comparing it against set STANDARDS. It helps to: identify TRENDS and PATTERNS in patient care (e.g. rising pressure ulcer rates, missed drug doses, poor documentation of pain), find areas of good practice and areas needing improvement, guide staff education, improve quality and safety, and check compliance with policies. It is a QUALITY IMPROVEMENT tool, not a way to judge individuals or finances.

❌ Why the other options are wrong:
• The nurse who is the "best" at their job — An audit does not rank nurses to find the "best" one; it looks at the quality of care in the system.
• The single cause of all patient complications — Complications usually have several causes; an audit identifies patterns and contributing factors, not a "single cause of all" complications.
• The hospital's financial status — Hospital FINANCIAL status is assessed by financial audits/accounts, not nursing audit.

⭐ Key point: Nursing audit = compare care with standards → identify TRENDS and areas for improvement in patient care.$x$, null),
(163, $x$Which of the following is the most accurate definition of research?$x$, $x$A systematic, rigorous and logical process of inquiry that seeks to answer questions and generate new knowledge$x$, $x$✅ Correct answer: A systematic, rigorous and logical process of inquiry that seeks to answer questions and generate new knowledge
RESEARCH is a SYSTEMATIC, RIGOROUS and LOGICAL process of inquiry that seeks to ANSWER QUESTIONS, solve problems and GENERATE NEW KNOWLEDGE (or validate existing knowledge). "Systematic" means it follows organised steps: identify a problem → review the literature → state objectives/hypotheses → choose a design → sample → collect data → analyse → interpret → report/disseminate. "Rigorous" means it uses careful, valid and reliable methods to reduce bias. In nursing, research provides the evidence for evidence-based practice (EBP).

❌ Why the other options are wrong:
• The act of reading widely around a clinical topic before writing a report — Reading widely before writing a report is a LITERATURE REVIEW or study — only one step of research, not research itself.
• Any opinion a nurse forms after observing a patient once — An OPINION formed after observing a patient once is not systematic and is open to bias.
• A collection of anecdotes gathered from colleagues about a clinical practice — ANECDOTES from colleagues are informal stories, not systematic inquiry.

⭐ Key point: Research = SYSTEMATIC, RIGOROUS, LOGICAL inquiry to answer questions and generate new knowledge.$x$, null),
(164, $x$Serum potassium level measured in mmol/L is an example of which scale of measurement?$x$, $x$Ratio$x$, $x$✅ Correct answer: Ratio
There are four LEVELS (scales) OF MEASUREMENT — memory aid "NOIR": NOMINAL — named categories with no order (blood group, gender, tribe); ORDINAL — ordered categories but unequal gaps (pain mild/moderate/severe, GCS, education level, Likert scale); INTERVAL — equal intervals but NO TRUE ZERO (temperature in °C or °F — 0 °C does not mean "no temperature"; you cannot say 40 °C is twice as hot as 20 °C); RATIO — equal intervals AND a TRUE ZERO (zero means none of it), so ratios make sense: weight, height, age, pulse, BP, urine output, SERUM POTASSIUM in mmol/L (0 mmol/L = no potassium; 6 mmol/L is twice 3 mmol/L). Ratio is the highest level and allows all statistics.

❌ Why the other options are wrong:
• Nominal — NOMINAL is only labels/categories — potassium is a measured number.
• Ordinal — ORDINAL shows rank order only — potassium has equal, exact intervals.
• Interval — INTERVAL has no true zero — potassium has a true zero.

⭐ Key point: NOIR: Nominal (names), Ordinal (order), Interval (no true zero, e.g. °C), RATIO (true zero — weight, K⁺ in mmol/L).$x$, null),
(165, $x$The Latin term 'Op cit' is used when:$x$, $x$A source already cited is referenced again, with other citations in between$x$, $x$✅ Correct answer: A source already cited is referenced again, with other citations in between
Latin referencing terms (used in footnote/endnote styles like Oxford/Chicago): IBID. (ibidem, "in the same place") — the source is the SAME as the IMMEDIATELY preceding citation, with nothing in between. OP. CIT. (opere citato, "in the work cited") — refers to a source ALREADY CITED earlier, but with OTHER CITATIONS IN BETWEEN; you give the author's surname plus "op. cit." and the page number. LOC. CIT. (loco citato, "in the place cited") — the same source AND the same page as an earlier citation, with others in between. Et al. — "and others" (multiple authors).

❌ Why the other options are wrong:
• Citing a source for the very first time — Citing a source for the FIRST time requires the FULL reference, not op. cit.
• No source is being cited at all — If no source is cited, no Latin abbreviation is used at all.
• Citing an unpublished thesis only — Op. cit. is not specific to unpublished theses; it can refer to any previously cited work.

⭐ Key point: IBID = same source as the one just before. OP. CIT. = source cited earlier with OTHER citations in between. Loc. cit. = same page.$x$, null),
(166, $x$A researcher wants to test whether a new positioning technique reduces pressure ulcer incidence. The dependent variable in this study would be:$x$, $x$Pressure ulcer incidence, since it is the outcome being measured$x$, $x$✅ Correct answer: Pressure ulcer incidence, since it is the outcome being measured
In an experiment, the INDEPENDENT VARIABLE (IV) is what the researcher CHANGES or applies — the "cause" or intervention (here, the new POSITIONING TECHNIQUE). The DEPENDENT VARIABLE (DV) is the OUTCOME the researcher MEASURES to see if it changes because of the IV — the "effect". Here the outcome being measured is PRESSURE ULCER INCIDENCE, so it is the dependent variable (it "depends on" the positioning technique). Memory aid: "The DV Depends on the IV." Other factors that might affect the outcome (age, nutrition, mobility, the researcher's experience) are EXTRANEOUS/CONFOUNDING variables to be controlled.

❌ Why the other options are wrong:
• The positioning technique used — The POSITIONING TECHNIQUE is the INDEPENDENT variable (the intervention).
• The patient's age — The patient's AGE is a possible confounding/extraneous variable, not the outcome.
• The researcher's experience level — The researcher's EXPERIENCE is an extraneous variable that could bias results, not the dependent variable.

⭐ Key point: Independent variable = intervention (positioning). DEPENDENT variable = measured OUTCOME (pressure ulcer incidence).$x$, null),
(167, $x$Vulnerable research subjects include all of the following EXCEPT:$x$, $x$Healthy working adults$x$, $x$✅ Correct answer: Healthy working adults
VULNERABLE research subjects are people who may have a reduced ability to give free, informed CONSENT or who are at higher risk of being exploited or harmed. They need extra ethical protection (e.g. parental consent plus child assent, independent advocates, extra committee review). Groups include: CHILDREN (minors), PRISONERS (may feel pressured, limited freedom), people with PHYSICAL or MENTAL disabilities, pregnant women and foetuses, the critically ill or unconscious, the elderly with dementia, the very poor or uneducated, students and employees of the researcher. HEALTHY WORKING ADULTS with full capacity can give free informed consent, so they are NOT considered a vulnerable group.

❌ Why the other options are wrong:
• Children — CHILDREN ARE vulnerable — they cannot legally consent for themselves.
• Prisoners — PRISONERS ARE vulnerable — their freedom of choice may be limited.
• The physically/mentally challenged — The physically/mentally CHALLENGED ARE vulnerable — capacity to consent or ability to refuse may be reduced.

⭐ Key point: Vulnerable subjects: children, prisoners, mentally/physically challenged, pregnant women, critically ill. Healthy adults are NOT.$x$, null),
(168, $x$Which is NOT a probability sampling method?$x$, $x$Convenience sampling$x$, $x$✅ Correct answer: Convenience sampling
PROBABILITY sampling means every member of the population has a KNOWN, non-zero chance of being selected (random selection), so results can be generalised. Types: SIMPLE RANDOM (lottery, random number table), SYSTEMATIC (every k-th person from a list), STRATIFIED RANDOM (divide into groups/strata, then random sample from each), CLUSTER (randomly select whole groups, e.g. wards or villages), multistage. NON-PROBABILITY sampling does not use random selection: CONVENIENCE (accidental — whoever is easily available), purposive (judgement), quota, snowball. Convenience sampling is common in nursing research but has a high risk of selection bias.

❌ Why the other options are wrong:
• Simple random sampling — SIMPLE RANDOM sampling IS probability sampling — everyone has an equal chance.
• Cluster sampling — CLUSTER sampling IS probability sampling — clusters are randomly selected.
• Stratified random sampling — STRATIFIED RANDOM sampling IS probability sampling — random selection within strata.

⭐ Key point: Probability = random (simple, systematic, stratified, cluster). CONVENIENCE, purposive, quota, snowball = NON-probability.$x$, null),
(169, $x$A nurse wants to implement a new evidence-based practice change on the unit based on a research finding. The most appropriate first step is to:$x$, $x$Critically appraise the evidence, involve relevant stakeholders, and consider a structured pilot with evaluation before wider rollout$x$, $x$✅ Correct answer: Critically appraise the evidence, involve relevant stakeholders, and consider a structured pilot with evaluation before wider rollout
EVIDENCE-BASED PRACTICE (EBP) combines the BEST research evidence, CLINICAL EXPERTISE and PATIENT PREFERENCES. Before changing practice, the nurse should follow a structured process (e.g. Iowa model, ACE Star): ask a clear question (PICO), search for evidence, CRITICALLY APPRAISE it (is it valid, reliable, relevant to our patients?), involve STAKEHOLDERS (nurse manager, doctors, pharmacists, infection control, staff who will use it), get approval, run a small PILOT with clear outcome measures, EVALUATE the results, and then roll out more widely with training and ongoing audit. This makes the change safe, accepted and sustainable.

❌ Why the other options are wrong:
• Implement the change immediately unit-wide with no evaluation — Implementing immediately unit-wide with no evaluation risks harm if the evidence does not fit your setting, and staff may resist.
• Ignore the research since current practice has always worked — Ignoring research because "it has always worked" is the opposite of EBP and blocks improvement.
• Implement changes based on personal opinion alone, without reference to evidence — Changes based on PERSONAL OPINION alone, without evidence, are not evidence-based and may be unsafe.

⭐ Key point: EBP change: appraise evidence → involve stakeholders → PILOT and evaluate → then roll out.$x$, null),
(170, $x$In the PICO framework for developing a clinical research question, the letters stand for:$x$, $x$Population, Intervention, Comparison, Outcome$x$, $x$✅ Correct answer: Population, Intervention, Comparison, Outcome
PICO is a framework to write a focused, answerable CLINICAL QUESTION and guide the literature search. P — POPULATION/Patient/Problem (who? e.g. ventilated adults in ICU); I — INTERVENTION (what is being done? e.g. chlorhexidine oral care); C — COMPARISON (compared with what? e.g. saline oral care, or usual care); O — OUTCOME (what result? e.g. ventilator-associated pneumonia rate). Example: "In ventilated ICU adults (P), does chlorhexidine oral care (I) compared with saline (C) reduce VAP (O)?" Some versions add T — TIME (PICOT).

❌ Why the other options are wrong:
• Problem, Investigation, Cost, Objective — "Problem, Investigation, Cost, Objective" is not the PICO framework.
• Patient, Illness, Cure, Observation — "Patient, Illness, Cure, Observation" is not correct — I = Intervention, C = Comparison, O = Outcome.
• Plan, Implement, Coordinate, Overview — "Plan, Implement, Coordinate, Overview" are management words, not PICO.

⭐ Key point: PICO = Population, Intervention, Comparison, Outcome (+ Time = PICOT).$x$, null),
(171, $x$The first page of the research report is$x$, $x$Title Page$x$, $x$✅ Correct answer: Title Page
A research report is arranged in three parts. FRONT (preliminary) MATTER — TITLE PAGE (FIRST page: title, author, institution, date/degree), certification/approval page, dedication, acknowledgements, ABSTRACT, table of contents, lists of tables and figures, abbreviations. MAIN BODY — Chapter 1 Introduction, Chapter 2 Literature review, Chapter 3 Methodology, Chapter 4 Results, Chapter 5 Discussion, Conclusion and Recommendations. BACK MATTER — REFERENCES/BIBLIOGRAPHY, APPENDICES (questionnaire, consent form, ethical approval letter), and sometimes an INDEX. So the first page is the TITLE PAGE.

❌ Why the other options are wrong:
• Appendix — The APPENDIX is in the back matter, at the end.
• Bibliography — The BIBLIOGRAPHY/references are in the back matter, at the end.
• Index — An INDEX, if present, is at the very end of a report or book.

⭐ Key point: Research report: FRONT matter (TITLE PAGE first, abstract, contents) → main body → BACK matter (references, appendices).$x$, null),
(172, $x$The science of collectiong, organizing, analyzing, interpreting and presenting data to asist in making more effective decisions is known as:$x$, $x$Statistics.$x$, $x$✅ Correct answer: Statistics.
STATISTICS is the science of COLLECTING, ORGANISING, ANALYSING, INTERPRETING and PRESENTING DATA to help make better decisions. It has two main branches: DESCRIPTIVE statistics — summarise data (mean, median, mode, standard deviation, percentages, tables, charts); INFERENTIAL statistics — use data from a SAMPLE to draw conclusions about a POPULATION (t-test, chi-square, correlation, p-values, confidence intervals). In nursing, statistics is used in research, audit, infection rates, and evidence-based decision-making.

❌ Why the other options are wrong:
• Data — DATA are the raw facts and figures that statistics works on — not the science itself.
• Inference — INFERENCE is the process of drawing conclusions about a population from a sample — one part of statistics.
• Sample — A SAMPLE is a subset of the population chosen for study — not the science of analysing data.

⭐ Key point: STATISTICS = collecting, organising, analysing, interpreting and presenting data. Descriptive + inferential.$x$, null),
(173, $x$The 'back matter' of a research report typically includes:$x$, $x$Reference, Bibliography, and Appendix$x$, $x$✅ Correct answer: Reference, Bibliography, and Appendix
The BACK MATTER of a research report is the material that comes AFTER the main text (after the conclusion and recommendations). It typically includes: REFERENCES (works cited in the text), BIBLIOGRAPHY (works consulted, whether cited or not), and APPENDICES/APPENDIX (supporting documents such as the questionnaire, consent forms, ethical approval letter, raw data tables, maps), and sometimes a glossary or index. The FRONT matter is the title page, certification, dedication, acknowledgements, abstract and table of contents. The MAIN BODY holds introduction, literature review, methodology, results and discussion.

❌ Why the other options are wrong:
• Only the title page — The TITLE PAGE is FRONT matter (the first page).
• The introduction and literature review — The INTRODUCTION and LITERATURE REVIEW are part of the MAIN BODY (chapters 1 and 2).
• The abstract only — The ABSTRACT is FRONT matter, placed near the beginning.

⭐ Key point: Back matter = REFERENCES, BIBLIOGRAPHY, APPENDIX. Front matter = title page, abstract, contents.$x$, null),
(174, $x$The '5 Rights of Delegation' include right task, right circumstance, right person, right direction/communication, and:$x$, $x$Right supervision/evaluation$x$, $x$✅ Correct answer: Right supervision/evaluation
The FIVE RIGHTS OF DELEGATION (NCSBN/ANA) help the RN delegate safely: (1) RIGHT TASK — a task that can be delegated (routine, stable, predictable outcome; not assessment, planning, evaluation or teaching); (2) RIGHT CIRCUMSTANCE — the patient is stable and the setting and resources are appropriate; (3) RIGHT PERSON — the delegate has the training, competence and legal scope to perform it; (4) RIGHT DIRECTION/COMMUNICATION — clear instructions: what to do, when, limits, what to report back; (5) RIGHT SUPERVISION/EVALUATION — the RN monitors, gives feedback, evaluates the outcome and intervenes if needed. The RN remains ACCOUNTABLE for the delegated task.

❌ Why the other options are wrong:
• Right documentation only — RIGHT DOCUMENTATION is important but is not one of the five rights.
• Right payment — RIGHT PAYMENT has nothing to do with delegation.
• Right uniform — RIGHT UNIFORM is not a delegation principle.

⭐ Key point: 5 Rights of Delegation: Task, Circumstance, Person, Direction/Communication, SUPERVISION/EVALUATION. RN stays accountable.$x$, null),
(175, $x$According to the Thomas-Kilmann model, the conflict resolution style with both high assertiveness and high cooperation is:$x$, $x$Collaborating$x$, $x$✅ Correct answer: Collaborating
The THOMAS–KILMANN model describes five conflict-handling styles using two dimensions: ASSERTIVENESS (concern for your own needs) and COOPERATIVENESS (concern for the other person's needs). COMPETING — high assertive, low cooperative ("win–lose"). ACCOMMODATING — low assertive, high cooperative (giving in, "lose–win"). AVOIDING — low assertive, low cooperative (withdrawing, "lose–lose"). COMPROMISING — medium on both (each gives something). COLLABORATING — HIGH assertive AND HIGH cooperative: both parties work together to find a solution that fully meets everyone's needs ("WIN–WIN"). Collaboration takes more time but gives the best long-term outcome and team relationships.

❌ Why the other options are wrong:
• Competing — COMPETING is high assertiveness but LOW cooperation.
• Avoiding — AVOIDING is LOW on both assertiveness and cooperation.
• Accommodating — ACCOMMODATING is high cooperation but LOW assertiveness.

⭐ Key point: Thomas–Kilmann: COLLABORATING = high assertiveness + high cooperation = WIN–WIN.$x$, null),
(176, $x$The optimal approach to leadership (Managerial Grid) shows:$x$, $x$High concern for both production and employees$x$, $x$✅ Correct answer: High concern for both production and employees
The BLAKE AND MOUTON MANAGERIAL (LEADERSHIP) GRID plots leadership on two axes from 1 to 9: CONCERN FOR PRODUCTION (results, tasks) and CONCERN FOR PEOPLE (employees). Styles: 1,1 IMPOVERISHED (low on both — does the minimum); 9,1 AUTHORITY-COMPLIANCE/task (high production, low people); 1,9 COUNTRY CLUB (high people, low production — friendly but little work done); 5,5 MIDDLE-OF-THE-ROAD (balance, average results); 9,9 TEAM MANAGEMENT (HIGH concern for BOTH production AND people). Blake and Mouton considered 9,9 TEAM management the OPTIMAL style: committed staff, trust and respect, and high performance.

❌ Why the other options are wrong:
• High concern for production only — High concern for production ONLY is the authority-compliance (9,1) style — results with poor morale.
• Low concern for production — LOW concern for production describes impoverished or country club styles.
• High concern for employees only — High concern for employees ONLY is the country club (1,9) style.

⭐ Key point: Managerial Grid optimal = 9,9 TEAM MANAGEMENT — high concern for BOTH production AND people.$x$, null),
(177, $x$If a nurse witnesses another staff member committing a serious, unsafe practice violation, the appropriate ethical action is to:$x$, $x$Report it through appropriate institutional and/or regulatory channels$x$, $x$✅ Correct answer: Report it through appropriate institutional and/or regulatory channels
Nurses have an ethical and professional duty to protect patients (beneficence, non-maleficence; NMCN Code of Professional Conduct). If a nurse WITNESSES a colleague doing something seriously UNSAFE (e.g. working while impaired, falsifying records, giving wrong drugs on purpose, abusing patients), they must first ensure the PATIENT IS SAFE, then REPORT it through the proper INSTITUTIONAL channels (nurse manager, chain of command, incident reporting system) and, when needed, to the REGULATORY body. Reporting should be factual, documented, and made in good faith; many institutions have whistle-blowing policies to protect the reporter.

❌ Why the other options are wrong:
• Ignore it to avoid conflict — IGNORING it to avoid conflict allows patients to be harmed and makes the witness partly responsible.
• Only discuss it informally with friends — Only discussing it INFORMALLY with friends does not protect patients and may be gossip/breach of confidentiality.
• Confront the colleague publicly in front of patients — Confronting the colleague PUBLICLY in front of patients is unprofessional, causes distress and does not follow proper process.

⭐ Key point: Serious unsafe practice → keep the patient safe, then REPORT through institutional and/or regulatory channels.$x$, null),
(178, $x$The following are part of Fayol's 14 principles EXCEPT:$x$, $x$Planning$x$, $x$✅ Correct answer: Planning
HENRI FAYOL (father of modern management) described 14 PRINCIPLES of management: (1) DIVISION OF WORK/labour, (2) authority and responsibility, (3) discipline, (4) unity of command, (5) unity of direction, (6) subordination of individual interest to the general interest, (7) remuneration, (8) centralisation, (9) SCALAR CHAIN (line of authority from top to bottom), (10) ORDER (right person and material in the right place), (11) equity, (12) stability of tenure of personnel, (13) initiative, (14) esprit de corps (team spirit). PLANNING is one of Fayol's five FUNCTIONS of management (POCCC: Planning, Organising, Commanding, Coordinating, Controlling) — not one of the 14 principles.

❌ Why the other options are wrong:
• Division of labour — DIVISION OF LABOUR IS one of the 14 principles.
• Scalar chain — SCALAR CHAIN IS one of the 14 principles.
• Order — ORDER IS one of the 14 principles.

⭐ Key point: Fayol's 14 PRINCIPLES include division of work, scalar chain, order, unity of command. PLANNING is a FUNCTION (POCCC).$x$, null),
(179, $x$Which task should NOT be delegated to a nursing assistant?$x$, $x$Assessment of pain$x$, $x$✅ Correct answer: Assessment of pain
Registered nurses can delegate ROUTINE, predictable tasks for STABLE patients to nursing assistants/unregulated care staff — e.g. BED MAKING, FEEDING a stable patient with no swallowing problem, TRANSPORTING stable patients, bathing, measuring and recording vital signs, ambulating. But the RN must NOT delegate the core nursing process steps that need professional judgement: ASSESSMENT (including PAIN ASSESSMENT), planning, nursing diagnosis, evaluation, health teaching, and care of unstable patients. An assistant can REPORT that a patient says they have pain, but the RN must ASSESS the pain (location, severity, character, response to treatment) and decide on action.

❌ Why the other options are wrong:
• Bed making — BED MAKING is a routine task and CAN be delegated.
• Feeding a stable patient — FEEDING a STABLE patient CAN be delegated (not one with dysphagia or aspiration risk).
• Transporting stable patients — TRANSPORTING STABLE patients CAN be delegated.

⭐ Key point: Never delegate ASSESSMENT (including pain), planning, evaluation, teaching, or unstable patients. Routine tasks can be delegated.$x$, null),
(180, $x$A Chief Nurse Executive has a charismatic leadership style. Which of the following behaviors best describes this style?$x$, $x$Possesses inspirational quality that makes followers get attracted to him and regard him with reverence.$x$, $x$✅ Correct answer: Possesses inspirational quality that makes followers get attracted to him and regard him with reverence.
CHARISMATIC LEADERSHIP is based on the leader's personal qualities — charm, confidence, energy and an INSPIRING personality. Followers are emotionally ATTRACTED to the leader, admire and trust them, often with deep respect or REVERENCE, and are willing to follow because of who the leader is (personal power), not because of position or rewards. Strengths: inspires commitment during change or crisis. Risks: the team may depend too much on one person, and followers may not question poor decisions.

❌ Why the other options are wrong:
• Uses visioning as the core of his leadership. — Using VISIONING as the core of leadership describes TRANSFORMATIONAL leadership (creating and sharing a vision).
• Acts as he does because he expects that his harshness will yield positive results. — Being harsh because harshness is expected to give results describes an AUTOCRATIC/authoritarian approach, not charismatic.
• Acts as he does because he expects that his behavior will yield positive results. — Acting because the behaviour is expected to yield positive results is a general/expectancy-type description, not specific to charisma.

⭐ Key point: CHARISMATIC leader = inspiring personal qualities that attract followers and earn their reverence. Visioning = transformational.$x$, null),
(181, $x$A new nurse on the unit repeatedly makes documentation errors despite initial teaching. The nurse manager's most constructive approach is to:$x$, $x$Provide targeted, private feedback, additional focused training, and follow institutional progressive improvement processes$x$, $x$✅ Correct answer: Provide targeted, private feedback, additional focused training, and follow institutional progressive improvement processes
When a new nurse keeps making DOCUMENTATION ERRORS despite initial teaching, the manager should take a SUPPORTIVE, CONSTRUCTIVE approach: meet PRIVATELY, give specific, factual FEEDBACK (what the errors are and why they matter for patient safety and legal records), find the cause (understanding, workload, the EHR system, stress), give FOCUSED TRAINING or a preceptor/mentor, set clear expectations and a time-bound improvement plan, monitor progress, and document the meetings. If problems continue, follow the institution's PROGRESSIVE (graduated) discipline/improvement process. This respects the nurse, protects patients, and gives a fair chance to improve.

❌ Why the other options are wrong:
• Publicly criticise the nurse in front of colleagues — PUBLIC criticism humiliates the nurse, damages teamwork and morale, and is unprofessional.
• Terminate employment immediately without any improvement plan — IMMEDIATE termination with no improvement plan is unfair and usually breaks institutional policy and labour law.
• Ignore the errors to avoid conflict — IGNORING the errors is unsafe — poor documentation harms patient care and creates legal risk.

⭐ Key point: Repeated errors → PRIVATE feedback + focused training + improvement plan + follow progressive policy.$x$, null),
(182, $x$Who was the first to systematically describe management behaviour and pioneer the identification of the principles and skills that underlie effective management?$x$, $x$Henri Fayol$x$, $x$✅ Correct answer: Henri Fayol
HENRI FAYOL (1841–1925), a French mining engineer and director, is called the "FATHER OF MODERN MANAGEMENT" (administrative/classical management theory). He was the first to SYSTEMATICALLY describe management behaviour and to identify the PRINCIPLES and SKILLS of effective management. He described the five functions of management (planning, organising, commanding, coordinating, controlling — POCCC) and the 14 principles of management (division of work, authority, discipline, unity of command, scalar chain, etc.), in his book "General and Industrial Management" (1916).

❌ Why the other options are wrong:
• Max Weber — MAX WEBER described BUREAUCRACY (rules, hierarchy, impersonal authority).
• Frederick Taylor — FREDERICK TAYLOR is the father of SCIENTIFIC MANAGEMENT (time-and-motion studies, efficiency of workers' tasks).
• Peter Drucker — PETER DRUCKER is a later management writer (management by objectives), not the first.

⭐ Key point: FAYOL = father of modern management (14 principles, POCCC). Taylor = scientific management. Weber = bureaucracy.$x$, null),
(183, $x$The following are examples of motivation theories EXCEPT$x$, $x$System theory$x$, $x$✅ Correct answer: System theory
MOTIVATION THEORIES explain what drives people to act and work. Examples: MASLOW'S HIERARCHY OF NEEDS (physiological → safety → love/belonging → esteem → self-actualisation); HERZBERG'S TWO-FACTOR (motivation–hygiene) theory (hygiene factors like salary and working conditions prevent dissatisfaction; motivators like achievement and recognition increase satisfaction); VROOM'S EXPECTANCY THEORY (people are motivated if they believe effort → performance → valued reward); McClelland's needs theory; McGregor's Theory X and Y; equity theory. SYSTEMS THEORY (von Bertalanffy) is a general theory that sees an organisation as a system of interrelated parts with inputs, throughput, outputs and feedback — it is not a motivation theory.

❌ Why the other options are wrong:
• Maslow theory of basic human need — MASLOW's theory IS a motivation theory (needs hierarchy).
• Expectancy theory — EXPECTANCY theory IS a motivation theory (Vroom).
• Hertzberg theory — HERZBERG's theory IS a motivation theory (two-factor).

⭐ Key point: Motivation theories: Maslow, Herzberg, Vroom (expectancy), McClelland, McGregor. SYSTEMS theory is NOT one.$x$, null),
(184, $x$Alarm fatigue in a technology-dense ICU environment refers to:$x$, $x$Desensitisation to alarms from excessive frequency, leading to delayed or missed responses$x$, $x$✅ Correct answer: Desensitisation to alarms from excessive frequency, leading to delayed or missed responses
ALARM FATIGUE happens when staff are exposed to so many alarms — many of them false, non-actionable or nuisance alarms (e.g. a loose ECG lead, SpO2 probe movement, limits set too tight) — that they become DESENSITISED. As a result, alarms are ignored, silenced, turned down or turned off, and response is DELAYED or MISSED, sometimes for a real emergency. It is a recognised patient safety hazard. Prevention: customise alarm limits to each patient, change ECG electrodes daily, use correct probes, remove unnecessary monitoring, use smart/delayed alarms, ensure alarms are audible, and educate staff.

❌ Why the other options are wrong:
• Improved responsiveness to all alarms — Alarm fatigue REDUCES responsiveness — it does not improve it.
• A malfunction unique to ventilators — It is not a machine malfunction and is not unique to ventilators — it affects all monitors and pumps.
• A benefit of increased monitoring — It is a HARMFUL effect of excessive monitoring alarms, not a benefit.

⭐ Key point: Alarm fatigue = desensitisation from too many (often false) alarms → delayed/missed responses. Customise alarm limits.$x$, null),
(185, $x$Which ethical framework emphasizes caring as both an emotion and an action that guides moral decision making?$x$, $x$Care ethics$x$, $x$✅ Correct answer: Care ethics
CARE ETHICS (ethics of care; Carol Gilligan, Nel Noddings) focuses on RELATIONSHIPS, compassion and responsibility to others. It sees CARING as both an EMOTION (concern, empathy) and an ACTION (doing things to meet the needs of the cared-for person), and uses this caring relationship to guide moral decisions — paying attention to the particular person and situation rather than only to abstract rules. It fits naturally with nursing.

❌ Why the other options are wrong:
• Deontology — DEONTOLOGY (Kant) bases decisions on DUTIES and RULES — some acts are right or wrong regardless of consequences.
• Utilitarianism — UTILITARIANISM bases decisions on CONSEQUENCES — the greatest good for the greatest number.
• Virtue ethics — VIRTUE ETHICS (Aristotle) focuses on good CHARACTER traits (honesty, courage, compassion) of the moral agent, not specifically caring as emotion and action.

⭐ Key point: CARE ETHICS = caring (emotion + action) and relationships guide moral decisions. Deontology = duty; utilitarianism = consequences.$x$, null),
(186, $x$The role of a national nursing regulatory council (e.g. NMCN) primarily includes:$x$, $x$Setting and enforcing standards of practice, registering/licensing nurses, and handling professional misconduct$x$, $x$✅ Correct answer: Setting and enforcing standards of practice, registering/licensing nurses, and handling professional misconduct
The NURSING AND MIDWIFERY COUNCIL OF NIGERIA (NMCN), like other national nursing regulatory bodies, exists to PROTECT THE PUBLIC by regulating the profession. Its main roles: setting STANDARDS of nursing and midwifery education and PRACTICE; approving and accrediting training schools and curricula; conducting licensing examinations; REGISTERING and LICENSING nurses and midwives (and renewal of licences with continuing education); maintaining the register; publishing the Code of Professional Conduct; and investigating and disciplining PROFESSIONAL MISCONDUCT (through tribunals that can suspend or remove nurses from the register).

❌ Why the other options are wrong:
• Only organising social events for nurses — Organising SOCIAL events is not the council's role (professional associations like NANNM may organise events).
• Setting hospital drug prices — Setting hospital DRUG PRICES is not done by the nursing council.
• Managing hospital construction projects — Managing hospital CONSTRUCTION is not the council's role.

⭐ Key point: NMCN = set and enforce standards, accredit schools, register/license nurses, handle MISCONDUCT — to protect the public.$x$, null),
(187, $x$Which of the following is NOT a performance appraisal factor?$x$, $x$Number of social media handles$x$, $x$✅ Correct answer: Number of social media handles
PERFORMANCE APPRAISAL is the formal evaluation of how well an employee does their job, compared with job descriptions and set standards. Common factors assessed: ATTENDANCE and punctuality, ATTITUDE (towards patients, colleagues, work), QUALITY of work, quantity/productivity, clinical knowledge and skills, communication, teamwork, initiative, reliability, adherence to policies, professional development. The NUMBER OF SOCIAL MEDIA HANDLES (accounts) a nurse has has nothing to do with job performance and would be irrelevant and unfair to assess.

❌ Why the other options are wrong:
• Attendance — ATTENDANCE IS a performance appraisal factor.
• Attitude — ATTITUDE IS a performance appraisal factor.
• Quality of work — QUALITY OF WORK IS a core performance appraisal factor.

⭐ Key point: Appraisal factors: attendance, attitude, quality of work, skills, teamwork, communication — not social media handles.$x$, null),
(188, $x$A nurse experiences moral distress when a terminally ill patient receives aggressive CPR. This arises from:$x$, $x$Personal values conflict$x$, $x$✅ Correct answer: Personal values conflict
MORAL DISTRESS occurs when a nurse KNOWS what they believe is the ethically right action but feels unable to carry it out because of constraints (hospital policy, family demands, doctor's orders, hierarchy). It arises from a CONFLICT between the nurse's PERSONAL/professional VALUES and what they are required to do. Example: giving aggressive CPR to a terminally ill patient whom the nurse believes should be allowed to die peacefully. Effects: frustration, guilt, burnout and leaving the profession. Help: ethics consultation, clear DNACPR and end-of-life discussions, debriefing and team support.

❌ Why the other options are wrong:
• Ethical dilemma — An ETHICAL DILEMMA is a situation with two or more morally acceptable options where the right choice is unclear; in moral distress the nurse knows what is right but is prevented from doing it.
• Legal obligation — A LEGAL OBLIGATION (e.g. to perform CPR without a DNACPR order) may be the constraint, but the distress itself arises from values conflict.
• Inadequate staffing — INADEQUATE STAFFING may cause stress, but it is not the source of distress in this scenario.

⭐ Key point: Moral distress = knowing the right action but being constrained → conflict with PERSONAL VALUES. Dilemma = unclear right choice.$x$, null),
(189, $x$Distributive Justice, as a concept, is most associated with the philosopher:$x$, $x$John Rawls$x$, $x$✅ Correct answer: John Rawls
DISTRIBUTIVE JUSTICE concerns how society's benefits and burdens (including health care resources) are SHARED fairly. It is most associated with the American philosopher JOHN RAWLS (A Theory of Justice, 1971). Rawls proposed the "veil of ignorance" — choosing rules without knowing your own position in society — and the "difference principle": inequalities are only fair if they benefit the LEAST ADVANTAGED. In health care, this guides fair allocation of scarce resources (ICU beds, organs, ventilators, drugs) and equal access to care.

❌ Why the other options are wrong:
• Aristotle — ARISTOTLE wrote about justice (treat equals equally) and virtue ethics, but distributive justice as a modern concept is linked most with Rawls.
• Sigmund Freud — SIGMUND FREUD was a psychoanalyst, not a philosopher of justice.
• Florence Nightingale — FLORENCE NIGHTINGALE was the founder of modern nursing, not a justice philosopher.

⭐ Key point: Distributive justice = fair sharing of resources — JOHN RAWLS (veil of ignorance, difference principle).$x$, null),
(190, $x$During a critical patient handover between shifts, using the SBAR (Situation-Background-Assessment-Recommendation) framework primarily helps to:$x$, $x$Structure communication clearly and concisely, reducing the risk of missed or miscommunicated critical information$x$, $x$✅ Correct answer: Structure communication clearly and concisely, reducing the risk of missed or miscommunicated critical information
SBAR is a structured communication tool: S — SITUATION (what is happening now: "Mr A, bed 4, BP has fallen to 80/50"); B — BACKGROUND (relevant history, diagnosis, treatment); A — ASSESSMENT (what the nurse thinks the problem is: "I think he is going into septic shock"); R — RECOMMENDATION/request (what action is needed: "Please come and review him in the next 10 minutes; should I start fluids?"). It makes handover and escalation CLEAR, CONCISE and complete, reduces the chance of MISSED or MISCOMMUNICATED information, and helps junior staff speak up with confidence. It is used for nurse-to-nurse handovers, nurse-to-doctor calls and inter-department transfers.

❌ Why the other options are wrong:
• Make handover longer and more complicated — SBAR makes handover SHORTER and simpler, not longer and more complicated.
• Replace the need for any written documentation — It does NOT replace written documentation; both are needed.
• Only apply to nurse-to-nurse communication, never nurse-to-physician — It is used across ALL professions, including nurse-to-physician communication (it was designed partly for this).

⭐ Key point: SBAR = Situation, Background, Assessment, Recommendation → clear, concise handover and escalation.$x$, null),
(191, $x$The ethical principle of 'justice' in healthcare primarily concerns:$x$, $x$Fair and equitable distribution of healthcare resources and treatment$x$, $x$✅ Correct answer: Fair and equitable distribution of healthcare resources and treatment
The four main principles of healthcare ethics: AUTONOMY (respect the patient's right to decide), BENEFICENCE (do good), NON-MALEFICENCE (do no harm) and JUSTICE. JUSTICE means FAIRNESS — treating people fairly and distributing health care RESOURCES and treatment EQUITABLY, based on need and not on wealth, tribe, religion, gender or status. Examples: triage by clinical urgency, fair allocation of ICU beds, equal-quality care for all patients. Other related principles: VERACITY (truth-telling), FIDELITY (keeping promises), confidentiality.

❌ Why the other options are wrong:
• Being truthful with patients — Being TRUTHFUL with patients is VERACITY.
• Avoiding harm to patients — Avoiding harm is NON-MALEFICENCE.
• Keeping promises made to patients — Keeping promises is FIDELITY.

⭐ Key point: JUSTICE = fair, equitable distribution of care and resources. Veracity = truth; non-maleficence = no harm; fidelity = promises.$x$, null),
(192, $x$A Nurse is counselling the family of a client with Road Traffic Accident (RTA). The family is screaming by saying that the client will be recovered or not? The following principles are important in Critical Care Nursing EXCEPT$x$, $x$Stress elevation$x$, $x$✅ Correct answer: Stress elevation
The principles of CRITICAL CARE NURSING include: ANTICIPATION (predicting problems before they happen, e.g. preparing intubation equipment for a deteriorating patient); EARLY DETECTION AND PROMPT ACTION (close monitoring and rapid response to changes); COLLABORATIVE PRACTICE (teamwork with doctors, physiotherapists, pharmacists, dietitians and the family); holistic, patient- and family-centred care, communication and support; continuous education. STRESS ELEVATION (raising stress) is NOT a principle — the opposite is true: nurses aim for STRESS REDUCTION for the patient and family (clear honest information, reassurance, involving them in care), as with this screaming family of an RTA victim.

❌ Why the other options are wrong:
• Anticipation — ANTICIPATION IS a critical care principle.
• Early detection and prompt action — EARLY DETECTION AND PROMPT ACTION IS a critical care principle.
• Collaborative practice — COLLABORATIVE PRACTICE IS a critical care principle.

⭐ Key point: Critical care principles: anticipation, early detection + prompt action, collaboration, family support. Aim is stress REDUCTION, not elevation.$x$, null),
(193, $x$A patient's family requests that the patient not be told their terminal diagnosis, though the patient (who has full decision-making capacity) has asked directly about their prognosis. The nurse's most appropriate approach is to:$x$, $x$Respect the competent patient's autonomy and right to information, while sensitively working with the family to understand their concerns$x$, $x$✅ Correct answer: Respect the competent patient's autonomy and right to information, while sensitively working with the family to understand their concerns
A competent adult patient has the RIGHT TO KNOW about their own diagnosis and prognosis (AUTONOMY and VERACITY/truth-telling). Here the patient has full decision-making capacity and has ASKED DIRECTLY. The nurse (with the doctor responsible for breaking bad news) should RESPECT the patient's request for information, while working SENSITIVELY with the family: listen to their fears and cultural reasons, explain the patient's rights and why honesty helps (planning, saying goodbye, spiritual preparation, consent for treatment), and include them in a supportive conversation if the patient agrees. Information should be given gently, at the patient's pace, using a structured approach such as SPIKES.

❌ Why the other options are wrong:
• Automatically follow the family's wishes over the patient's own request — Automatically following the FAMILY over a competent patient violates the patient's autonomy.
• Refuse to discuss the situation with either party — REFUSING to discuss with either party abandons both the patient and family.
• Tell the patient nothing and avoid the topic indefinitely — Avoiding the topic indefinitely denies the patient's right to information and is dishonest.

⭐ Key point: Competent patient asks → respect AUTONOMY and right to the truth, while supporting the family sensitively (e.g. SPIKES).$x$, null),
(194, $x$Increasing opioids to relieve a dying patient's pain, even if it may hasten death, can be justified under the rule of double effect only if:$x$, $x$All of these conditions are met$x$, $x$✅ Correct answer: All of these conditions are met
The PRINCIPLE (RULE) OF DOUBLE EFFECT allows an action with both a GOOD effect and a possible BAD effect (e.g. high-dose opioids relieve pain but MAY hasten death) if ALL FOUR conditions are met: (1) the ACT ITSELF is good or morally neutral (giving pain relief); (2) the INTENTION is only the good effect — to relieve suffering — not to cause death (the bad effect is foreseen but not intended); (3) the bad effect is NOT the MEANS of achieving the good effect (pain is relieved by the drug's analgesic action, not by the patient dying); (4) there is PROPORTIONALITY — the good effect outweighs the bad one (severe suffering at the end of life). If any condition is missing, the act is not justified (e.g. giving a dose intended to kill is euthanasia).

❌ Why the other options are wrong:
• The act itself is good or neutral — "The act itself is good or neutral" is only ONE condition.
• The intention is to relieve suffering, not to kill — "The intention is to relieve suffering" is only ONE condition.
• The good effect outweighs the bad effect, which is not the means to the good — "The good outweighs the bad, which is not the means" covers proportionality and means, but not intention or the nature of the act.

⭐ Key point: Double effect requires ALL: good/neutral act, good intention, bad effect not the means, and good outweighs bad.$x$, null),
(195, $x$Which trace element is a cofactor essential for wound healing, immune function, and taste perception, and is often supplemented in patients with large wounds or burns?$x$, $x$Zinc$x$, $x$✅ Correct answer: Zinc
ZINC is a trace element essential for WOUND HEALING: it is a cofactor for many enzymes involved in cell division, protein and COLLAGEN synthesis, and tissue repair. It also supports IMMUNE FUNCTION (T-cell function), and TASTE and smell perception (zinc deficiency causes loss of taste — hypogeusia). Patients with large WOUNDS, BURNS, pressure ulcers, diarrhoea/fistulas, or malnutrition lose zinc and often receive supplements (e.g. zinc sulphate). Signs of deficiency: poor wound healing, hair loss, skin rash (around the mouth and anus), diarrhoea, poor appetite and taste, frequent infections. Children with diarrhoea are also given zinc (WHO: ORS + zinc for 10–14 days).

❌ Why the other options are wrong:
• Chromium — CHROMIUM helps insulin action (glucose metabolism), not mainly wound healing and taste.
• Selenium — SELENIUM is an ANTIOXIDANT (glutathione peroxidase) and thyroid hormone cofactor; it does not mainly affect taste.
• Molybdenum — MOLYBDENUM is a cofactor for a few enzymes (e.g. xanthine oxidase); deficiency is very rare.

⭐ Key point: ZINC = wound healing, immunity, TASTE. Supplement in burns, large wounds, diarrhoea.$x$, null),
(196, $x$Which patient is the LEAST appropriate candidate for enteral nutrition and would most likely require TPN instead?$x$, $x$A patient with a high-output enterocutaneous fistula and short bowel syndrome$x$, $x$✅ Correct answer: A patient with a high-output enterocutaneous fistula and short bowel syndrome
The rule is "IF THE GUT WORKS, USE IT" — enteral nutrition (tube feeding) is preferred whenever the GI tract is functional. TOTAL PARENTERAL NUTRITION (TPN, IV feeding through a central line) is needed when the gut CANNOT be used or cannot absorb enough: e.g. a HIGH-OUTPUT ENTEROCUTANEOUS FISTULA (feeding increases fistula output and nutrients leak out before absorption) and SHORT BOWEL SYNDROME (too little bowel left to absorb nutrients), plus prolonged ileus, complete bowel obstruction, severe GI bleeding, severe mucositis. TPN risks: line infection (sepsis), hyperglycaemia, refeeding syndrome, liver dysfunction, so it requires strict aseptic care and monitoring.

❌ Why the other options are wrong:
• A patient with a functioning gut who is intubated and sedated — An intubated, sedated patient with a FUNCTIONING GUT should receive ENTERAL feeding via NG/OG tube.
• A patient recovering from an uncomplicated appendectomy — After an UNCOMPLICATED appendectomy the patient resumes oral feeding quickly; TPN is not needed.
• A patient with dysphagia after a stroke but an otherwise normal GI tract — DYSPHAGIA after stroke with a normal GI tract → enteral feeding via NG or PEG tube, not TPN.

⭐ Key point: TPN only when the gut cannot be used — high-output fistula, short bowel syndrome, obstruction, prolonged ileus.$x$, null),
(197, $x$Keto-adaptation, which spares muscle during starvation, fails to protect muscle in:$x$, $x$Sepsis and trauma$x$, $x$✅ Correct answer: Sepsis and trauma
In SIMPLE STARVATION (fasting), the body adapts: insulin falls, glycogen is used up in about 24 hours, and then the liver makes KETONES from fat. After a few days the BRAIN switches to using ketones for fuel (KETO-ADAPTATION), so the body needs less glucose from protein breakdown — this SPARES MUSCLE. In SEPSIS, TRAUMA, burns and major surgery (STRESS/HYPERMETABOLIC states), stress hormones (cortisol, glucagon, catecholamines) and inflammatory cytokines drive continuous muscle protein breakdown, insulin resistance, and blocked ketone production — so keto-adaptation FAILS and MUSCLE WASTING continues rapidly. This is why critically ill patients lose muscle quickly and need early nutrition with adequate protein (1.2–2 g/kg/day).

❌ Why the other options are wrong:
• Simple fasting — In SIMPLE FASTING keto-adaptation WORKS and protects muscle.
• Healthy individuals on a diet — In HEALTHY people on a diet, keto-adaptation also works normally.
• It never fails — It DOES fail — in sepsis and trauma — so "never fails" is wrong.

⭐ Key point: Keto-adaptation spares muscle in simple starvation but FAILS in SEPSIS and TRAUMA (stress hypermetabolism) → rapid muscle loss.$x$, null),
(198, $x$What is the primary purpose of a nasogastric (NG) tube in critical care?$x$, $x$C) Providing nutrition and medications via the stomach$x$, $x$✅ Correct answer: C) Providing nutrition and medications via the stomach
A NASOGASTRIC (NG) TUBE goes through the nose and oesophagus into the STOMACH. In critical care its primary purposes are: (1) ENTERAL NUTRITION (feeding) and giving MEDICATIONS when the patient cannot swallow safely (intubated, sedated, stroke); (2) DECOMPRESSION — draining air and fluid from the stomach in ileus, bowel obstruction, or to reduce vomiting and aspiration risk; (3) gastric lavage (rarely) and sampling of stomach contents. Nursing: confirm position BEFORE first use (X-ray, and pH of aspirate ≤ 5.5), check position before each feed/drug, flush with water, keep the head of bed at 30–45°, prevent pressure injury to the nose.

❌ Why the other options are wrong:
• A) Monitoring cardiac hemodynamics — Monitoring cardiac haemodynamics uses arterial lines, central lines or PA catheters.
• B) Administering pain medication — PAIN MEDICATION can be given through an NG tube, but this is not its main overall purpose (option C covers nutrition AND medications).
• D) Measuring intracranial pressure (ICP) — Measuring ICP needs an ICP monitor (EVD or intraparenchymal probe).

⭐ Key point: NG tube = feeding and medications via the stomach (also decompression). Always confirm position before use (X-ray, pH ≤ 5.5).$x$, null),
(199, $x$Chest wall mobilisation as an airway clearance component works by:$x$, $x$Expanding the thorax and loosening secretions$x$, $x$✅ Correct answer: Expanding the thorax and loosening secretions
CHEST WALL MOBILISATION exercises combine active movements of the trunk and arms (stretching, rotation, side flexion) with DEEP BREATHING. They EXPAND THE THORAX (increase chest wall and lung expansion and ventilation, especially of the bases), improve flexibility of the ribs and spine after surgery or immobility, help re-open collapsed alveoli, and LOOSEN SECRETIONS so they can be moved up and cleared by coughing or huffing. They are part of chest physiotherapy for patients after thoracic/abdominal surgery, those with pain-limited breathing, and in chronic lung disease.

❌ Why the other options are wrong:
• Directly killing bacteria in the lungs — Physical therapy cannot KILL BACTERIA — antibiotics treat infection.
• Replacing the need for coughing entirely — It does NOT replace coughing; it helps secretions move so that coughing/huffing can clear them.
• Only working on the left lung — It works on BOTH lungs, not only the left lung.

⭐ Key point: Chest wall mobilisation = expands the thorax + loosens secretions, helping coughing clear the airways.$x$, null),
(200, $x$Chest physiotherapy (CPT), as a broader category, includes all of the following EXCEPT:$x$, $x$Antibiotic prescription$x$, $x$✅ Correct answer: Antibiotic prescription
CHEST PHYSIOTHERAPY (CPT) is a group of physical techniques to improve lung function and clear secretions. It includes: AIRWAY CLEARANCE techniques — postural drainage, percussion (clapping), vibration, active cycle of breathing technique, huffing, assisted cough, suctioning; BREATHING EXERCISES — deep breathing, diaphragmatic breathing, incentive spirometry, pursed-lip breathing; THORACIC MOBILITY exercises — chest wall mobilisation and posture work; plus early mobilisation and positioning. It is done by physiotherapists and nurses. ANTIBIOTIC PRESCRIPTION is a medical (drug) treatment for infection — it is not part of chest physiotherapy.

❌ Why the other options are wrong:
• Airway clearance techniques — AIRWAY CLEARANCE techniques ARE a central part of CPT.
• Breathing exercises — BREATHING EXERCISES ARE part of CPT.
• Thoracic mobility exercises — THORACIC MOBILITY exercises ARE part of CPT.

⭐ Key point: Chest physiotherapy = airway clearance + breathing exercises + thoracic mobility (+ positioning). Antibiotics are NOT physiotherapy.$x$, null)
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
