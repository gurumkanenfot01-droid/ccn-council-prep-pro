-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 1, part A (questions 1–100)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$The source of pulmonary surfactant is:$x$, $x$Great alveolar (type II) cells$x$, $x$✅ Correct answer: Great alveolar (type II) cells
Surfactant is a mixture of phospholipids (mainly dipalmitoylphosphatidylcholine) and proteins made by the type II alveolar cells, also called great alveolar cells or type II pneumocytes. It lines the inside of each alveolus and lowers surface tension, so the small alveoli do not collapse at the end of expiration and the lungs are easier to inflate (better compliance). Type I cells, by contrast, are thin, flat cells that form the gas-exchange surface.

❌ Why the other options are wrong:
• The visceral pleura — The visceral pleura is the membrane covering the outside of the lung; it makes pleural fluid for smooth gliding, not surfactant.
• Tracheal glands — Tracheal glands make mucus that traps dust and germs in the airways; they do not make surfactant.
• Alveolar capillaries — Alveolar capillaries carry blood for gas exchange; they do not secrete anything into the alveoli.

⭐ Key point: Type II pneumocytes make surfactant. Preterm babies (before about 34 weeks) lack it, causing respiratory distress syndrome; antenatal steroids speed up its production.$x$, null),
(2, $x$Normal arterial partial pressure of oxygen (PaO2) in a healthy adult breathing room air is approximately:$x$, $x$80-100 mmHg$x$, $x$✅ Correct answer: 80-100 mmHg
In a healthy adult breathing room air (FiO₂ 21%) at sea level, the normal PaO₂ is 80–100 mmHg (10.7–13.3 kPa). It falls slightly with age. PaO₂ is the pressure of oxygen dissolved in arterial blood, and it drives oxygen onto haemoglobin. Below 80 mmHg is hypoxaemia; below 60 mmHg (8 kPa) is respiratory failure, because the oxygen–haemoglobin curve becomes steep and saturation falls quickly.

❌ Why the other options are wrong:
• 40-45 mmHg — 40–45 mmHg is close to the normal VENOUS PO₂ (about 40 mmHg), not arterial.
• 60-65 mmHg — 60–65 mmHg is hypoxaemia; 60 mmHg is the cut-off for respiratory failure.
• 120-140 mmHg — 120–140 mmHg is higher than normal and is only seen when breathing extra oxygen.

⭐ Key point: Normal PaO₂ 80–100 mmHg. PaO₂ below 60 mmHg = respiratory failure (type 1 if PaCO₂ is normal or low; type 2 if PaCO₂ is above 45 mmHg).$x$, null),
(3, $x$In a healthy person, the primary physiological stimulus that drives minute-to-minute ventilation is:$x$, $x$A rise in arterial carbon dioxide tension (PaCO2)$x$, $x$✅ Correct answer: A rise in arterial carbon dioxide tension (PaCO2)
Breathing is controlled mainly by central chemoreceptors in the medulla, which respond to CO₂. CO₂ crosses into the cerebrospinal fluid, forms carbonic acid and lowers the pH there. Even a small rise in PaCO₂ quickly increases the rate and depth of breathing to blow off the extra CO₂. This is the main minute-to-minute drive in a healthy person.

❌ Why the other options are wrong:
• A rise in arterial oxygen tension (PaO2) — A rise in PaO₂ would reduce, not drive, breathing. Low oxygen (below about 60 mmHg) is only a back-up drive, sensed by the carotid and aortic bodies.
• A fall in blood glucose — Blood glucose does not directly control breathing.
• A rise in serum calcium — Serum calcium affects nerves and muscles but is not a breathing stimulus.

⭐ Key point: CO₂ is the main drive to breathe. In chronic CO₂ retainers (some COPD patients), the hypoxic drive matters more, so give controlled oxygen with a target SpO₂ of 88–92%.$x$, null),
(4, $x$Which of the following causes a leftward shift of the oxyhaemoglobin dissociation curve (increased affinity for oxygen)?$x$, $x$Decreased temperature, decreased 2,3-DPG, and alkalosis$x$, $x$✅ Correct answer: Decreased temperature, decreased 2,3-DPG, and alkalosis
A LEFT shift means haemoglobin holds oxygen more tightly (higher affinity), so it picks up O₂ easily in the lungs but releases less to the tissues. Causes of a left shift: LOW temperature, LOW 2,3-DPG, ALKALOSIS (high pH), LOW CO₂, and also carbon monoxide and fetal haemoglobin. This option lists three left-shift causes together, so it is correct.

❌ Why the other options are wrong:
• Increased temperature — Increased temperature shifts the curve to the RIGHT (hot, working tissues need more oxygen released).
• Decreased pH (acidosis) — Acidosis (low pH) shifts the curve to the RIGHT (the Bohr effect).
• Increased 2,3-DPG — Increased 2,3-DPG shifts the curve to the RIGHT (as in anaemia and high altitude).

⭐ Key point: Remember "CADET, face Right": CO₂, Acid, 2,3-DPG, Exercise and Temperature all shift the curve to the RIGHT (more O₂ released). The opposite of each shifts it LEFT.$x$, null),
(5, $x$Which patient can safely receive AB-negative blood?$x$, $x$AB-negative$x$, $x$✅ Correct answer: AB-negative
AB-negative red cells carry the A antigen, the B antigen, and no D (Rh) antigen. They can only be given safely to someone whose plasma has NO anti-A and NO anti-B antibodies, which means a group AB recipient. Because the cells are Rh-negative, they can go to an AB-negative (or AB-positive) patient. Among the options, only the AB-negative patient can safely receive them.

❌ Why the other options are wrong:
• O-negative — An O-negative patient has both anti-A and anti-B, which would destroy AB cells (a haemolytic reaction).
• B-negative — A B-negative patient has anti-A, which would attack the A antigen on AB cells.
• A-negative — An A-negative patient has anti-B, which would attack the B antigen on AB cells.

⭐ Key point: Red cells: O-negative is the universal donor and AB-positive is the universal recipient. Plasma is the reverse: AB plasma is the universal plasma donor.$x$, null),
(6, $x$The average lifespan of a red blood cell is approximately:$x$, $x$120 days$x$, $x$✅ Correct answer: 120 days
Red blood cells live for about 120 days. They have no nucleus, so they cannot repair themselves. As they age, they become stiff and are removed by macrophages in the spleen (and the liver). The haem is turned into bilirubin, and the iron is recycled to make new red cells in the bone marrow.

❌ Why the other options are wrong:
• 10 days — 10 days is about the lifespan of platelets (7–10 days).
• 40 days — 40 days is too short for a red cell.
• 300 days — 300 days is far too long; no blood cell lives this long in the circulation.

⭐ Key point: Red cells live 120 days, platelets 7–10 days, and neutrophils only hours to days. Stored red cells for transfusion last 35–42 days in the fridge.$x$, null),
(7, $x$Haemophilia A results from a deficiency of which clotting factor?$x$, $x$Factor VIII$x$, $x$✅ Correct answer: Factor VIII
Haemophilia A is an X-linked inherited bleeding disorder caused by a lack of clotting factor VIII. It mostly affects males; females are usually carriers. Patients bleed into joints (haemarthrosis) and muscles. The blood test shows a prolonged APTT with a normal PT and platelet count. Treatment is factor VIII concentrate (or desmopressin in mild cases).

❌ Why the other options are wrong:
• Factor IX — Factor IX deficiency is haemophilia B (Christmas disease).
• Factor XI — Factor XI deficiency is haemophilia C, a milder form.
• Factor XIII — Factor XIII deficiency is a rare disorder of clot stabilisation, not haemophilia A.

⭐ Key point: Haemophilia A = factor VIII; B = factor IX. Avoid IM injections, aspirin and NSAIDs, and give the factor BEFORE procedures.$x$, null),
(8, $x$The AV node's primary function in the cardiac conduction system is to:$x$, $x$Briefly delay the electrical impulse, allowing the atria to fully contract before ventricular contraction$x$, $x$✅ Correct answer: Briefly delay the electrical impulse, allowing the atria to fully contract before ventricular contraction
The AV (atrioventricular) node sits between the atria and ventricles. Its main job is to DELAY the impulse for about 0.1 second. This gives the atria time to finish contracting and fill the ventricles before the ventricles contract. The delay appears on the ECG as the PR interval (normal 0.12–0.20 s). The AV node also protects the ventricles from very fast atrial rates, as in AF.

❌ Why the other options are wrong:
• Generate the primary pacemaker impulse — Generating the primary pacemaker impulse is the job of the SA node (60–100/min).
• Directly cause ventricular contraction without delay — The impulse must be delayed, not passed straight to the ventricles; the bundle of His and Purkinje fibres conduct it rapidly afterwards.
• Regulate coronary blood flow — Coronary blood flow is controlled by the coronary arteries and local metabolites, not the AV node.

⭐ Key point: SA node = pacemaker; AV node = delay (PR interval). If the SA node fails, the AV junction can take over at 40–60/min.$x$, null),
(9, $x$Which nephron segment is primarily responsible for the countercurrent multiplier system that concentrates urine?$x$, $x$Loop of Henle$x$, $x$✅ Correct answer: Loop of Henle
The loop of Henle (in the medulla) is the countercurrent multiplier. The descending limb lets water out; the thick ascending limb pumps sodium and chloride out but is impermeable to water. This builds a very salty (hyperosmolar) medulla. Then, under ADH, water leaves the collecting ducts into the salty medulla and the urine becomes concentrated.

❌ Why the other options are wrong:
• Bowman's capsule — Bowman's capsule collects the filtrate from the glomerulus; it does not concentrate urine.
• Proximal convoluted tubule — The proximal convoluted tubule reabsorbs about 65% of filtered sodium and water and all glucose, but the fluid stays isotonic.
• Renal pelvis — The renal pelvis is a collecting funnel that carries urine to the ureter.

⭐ Key point: Loop of Henle = concentrates urine. Loop diuretics (furosemide) block the Na-K-2Cl pump in the thick ascending limb, which is why they are so powerful.$x$, null),
(10, $x$Antidiuretic hormone (ADH, vasopressin) is synthesized in the hypothalamus and released into the circulation from the:$x$, $x$Posterior pituitary gland$x$, $x$✅ Correct answer: Posterior pituitary gland
ADH (vasopressin) is MADE in the hypothalamus (supraoptic and paraventricular nuclei). It travels down nerve fibres to the POSTERIOR pituitary, where it is stored and released into the blood. ADH makes the collecting ducts keep water, so it raises blood volume and concentrates the urine. Oxytocin is handled the same way.

❌ Why the other options are wrong:
• Anterior pituitary gland — The anterior pituitary makes its own hormones (GH, TSH, ACTH, FSH, LH, prolactin), not ADH.
• Adrenal medulla — The adrenal medulla releases adrenaline and noradrenaline.
• Thyroid gland — The thyroid gland releases T3, T4 and calcitonin.

⭐ Key point: Too little ADH = diabetes insipidus (large volumes of dilute urine). Too much ADH = SIADH (low sodium, concentrated urine). Both are common after head injury and brain surgery.$x$, null),
(11, $x$The normal glomerular filtration rate (GFR) in a healthy adult is approximately:$x$, $x$120-125 mL/min$x$, $x$✅ Correct answer: 120-125 mL/min
Normal GFR is about 120–125 mL/min (about 180 L/day) in a healthy young adult. Almost all of this filtrate (about 99%) is reabsorbed, leaving 1–2 L of urine a day. GFR is the best overall measure of kidney function; it is estimated (eGFR) from serum creatinine, age and sex.

❌ Why the other options are wrong:
• 20-30 mL/min — 20–30 mL/min is severely reduced (stage 4 CKD).
• 500 mL/min — 500 mL/min is about the renal plasma flow, not the GFR.
• 1000 mL/min — 1000 mL/min is close to total renal BLOOD flow (about 20% of cardiac output), not the filtration rate.

⭐ Key point: GFR normal ~120 mL/min. Stage 5 CKD (kidney failure) is GFR below 15. Many drugs (vancomycin, gentamicin, enoxaparin) need dose changes when GFR is low.$x$, null),
(12, $x$Cerebrospinal fluid circulates within the$x$, $x$subarachnoid space$x$, $x$✅ Correct answer: subarachnoid space
CSF flows in the SUBARACHNOID space, between the arachnoid mater and the pia mater, and in the ventricles and central canal. It is made mainly by the choroid plexus (about 500 mL/day; about 150 mL present at a time) and absorbed by the arachnoid villi into the venous sinuses. It cushions the brain and removes waste. A lumbar puncture samples CSF from this space below L1–L2.

❌ Why the other options are wrong:
• epidural space — The epidural space lies outside the dura and contains fat and veins; epidural anaesthesia goes here, not CSF.
• subdural space — The subdural space lies between the dura and arachnoid; a subdural haematoma collects here.
• potential space between periosteum and dura — The space between the periosteum and dura is the epidural space in the skull, where an extradural haematoma forms.

⭐ Key point: Subarachnoid = CSF. A subarachnoid haemorrhage puts blood into the CSF, giving a thunderclap headache and neck stiffness.$x$, null),
(13, $x$A patient presents with ptosis, a pupil that is fixed and dilated, and the eye deviated "down and out." Which cranial nerve palsy best explains this presentation?$x$, $x$Cranial nerve III (oculomotor)$x$, $x$✅ Correct answer: Cranial nerve III (oculomotor)
The oculomotor nerve (CN III) moves most eye muscles, lifts the eyelid (levator palpebrae) and carries parasympathetic fibres that constrict the pupil. When it is paralysed, the unopposed lateral rectus (CN VI) and superior oblique (CN IV) pull the eye "down and out". The lid droops (ptosis), and the pupil is fixed and dilated. In head injury, a new dilated pupil means the uncus is herniating and pressing on CN III.

❌ Why the other options are wrong:
• Cranial nerve IV (trochlear) — A CN IV (trochlear) palsy causes vertical double vision, especially going downstairs, without ptosis or a dilated pupil.
• Cranial nerve VI (abducens) — A CN VI (abducens) palsy stops the eye moving outwards; the eye turns in.
• Cranial nerve VII (facial) — A CN VII (facial) palsy causes facial weakness and inability to close the eye, not ptosis with a dilated pupil.

⭐ Key point: A fixed dilated pupil on one side after head injury is a NEUROSURGICAL EMERGENCY (raised ICP and herniation). Report it at once.$x$, null),
(14, $x$Beta cells of the pancreatic islets of Langerhans secrete:$x$, $x$Insulin$x$, $x$✅ Correct answer: Insulin
In the islets of Langerhans, BETA cells make insulin, which lowers blood glucose by moving it into cells and storing it as glycogen and fat. Beta cells are the most common islet cells (about 70%). They are destroyed in type 1 diabetes.

❌ Why the other options are wrong:
• Glucagon — Glucagon is made by ALPHA cells; it raises blood glucose.
• Somatostatin — Somatostatin is made by DELTA cells; it inhibits insulin and glucagon release.
• Pancreatic polypeptide exclusively — Pancreatic polypeptide is made by PP (F) cells, not beta cells.

⭐ Key point: Beta = insulin (lowers glucose). Alpha = glucagon (raises glucose). Glucagon 1 mg IM is used for severe hypoglycaemia when there is no IV access.$x$, null),
(15, $x$Intrinsic factor, secreted by gastric parietal cells, is essential for absorption of which nutrient?$x$, $x$Vitamin B12, absorbed in the terminal ileum$x$, $x$✅ Correct answer: Vitamin B12, absorbed in the terminal ileum
Gastric parietal cells make intrinsic factor (as well as hydrochloric acid). Intrinsic factor binds vitamin B12, and the complex is absorbed in the TERMINAL ILEUM. Without intrinsic factor (pernicious anaemia, gastrectomy) or without the terminal ileum (Crohn's disease, resection), B12 is not absorbed. The result is macrocytic anaemia and nerve damage.

❌ Why the other options are wrong:
• Iron, absorbed in the duodenum — Iron is absorbed mainly in the duodenum, helped by stomach acid and vitamin C, but it does not need intrinsic factor.
• Calcium, absorbed in the jejunum — Calcium is absorbed in the duodenum and jejunum with the help of vitamin D, not intrinsic factor.
• Vitamin K, absorbed in the colon — Vitamin K is partly made by gut bacteria and absorbed with fats; it does not need intrinsic factor.

⭐ Key point: No intrinsic factor = no B12 = pernicious anaemia, which is treated with lifelong IM vitamin B12 (hydroxocobalamin) injections.$x$, null),
(16, $x$What is the normal range for HCO3-?$x$, $x$22-26 mEq/L$x$, $x$✅ Correct answer: 22-26 mEq/L
Normal serum bicarbonate (HCO₃⁻) is 22–26 mEq/L (mmol/L). Bicarbonate is the main base (alkali) buffer in the blood, and the kidneys control it. Below 22 = metabolic acidosis (or compensation for respiratory alkalosis). Above 26 = metabolic alkalosis (or compensation for respiratory acidosis).

❌ Why the other options are wrong:
• 18-22 mEq/L — 18–22 is low (acidosis range).
• 26-30 mEq/L — 26–30 is high (alkalosis or compensation).
• 30-34 mEq/L — 30–34 is clearly raised, as in vomiting or chronic CO₂ retention with compensation.

⭐ Key point: ABG normals: pH 7.35–7.45, PaCO₂ 35–45 mmHg, HCO₃⁻ 22–26 mmol/L. Remember "the lungs control CO₂ (acid), the kidneys control HCO₃⁻ (base)".$x$, null),
(17, $x$An ABG result of pH 7.51, PaCO2 35 mmHg, and HCO3- 30 mEq/L indicates:$x$, $x$Metabolic alkalosis$x$, $x$✅ Correct answer: Metabolic alkalosis
Step 1: pH 7.51 is above 7.45, so the patient has alkalosis. Step 2: PaCO₂ 35 is normal, so the lungs are not the cause. Step 3: HCO₃⁻ 30 is above 26, so there is too much base. The bicarbonate moves in the same direction as the pH (both up), which means a METABOLIC cause: uncompensated metabolic alkalosis. ROME: Metabolic = Equal (pH and HCO₃⁻ move the same way).

❌ Why the other options are wrong:
• Metabolic acidosis — Metabolic acidosis would need a LOW pH and a LOW HCO₃⁻.
• Respiratory alkalosis — Respiratory alkalosis would need a high pH with a LOW PaCO₂ (below 35, from hyperventilation).
• Respiratory acidosis — Respiratory acidosis would need a LOW pH with a HIGH PaCO₂.

⭐ Key point: Causes of metabolic alkalosis: vomiting or NG suction (loss of stomach acid), diuretics, low potassium and too much bicarbonate. Treat the cause and replace chloride and potassium.$x$, null),
(18, $x$In a patient with respiratory failure, the nurse correctly interprets a high PaCO₂ value and a low pH from an ABG. This indicates:$x$, $x$Respiratory acidosis$x$, $x$✅ Correct answer: Respiratory acidosis
A LOW pH means acidosis. A HIGH PaCO₂ (above 45 mmHg) means CO₂, the respiratory acid, is building up. pH and PaCO₂ move in OPPOSITE directions, so the cause is respiratory. Together they mean respiratory acidosis, which is the typical result of hypoventilation in respiratory failure (type 2): COPD, opioid overdose, exhaustion, neuromuscular weakness.

❌ Why the other options are wrong:
• Metabolic alkalosis — Metabolic alkalosis would show a HIGH pH and a HIGH HCO₃⁻.
• Respiratory alkalosis — Respiratory alkalosis would show a HIGH pH and a LOW PaCO₂ (hyperventilation).
• Metabolic acidosis — Metabolic acidosis would show a low pH but a LOW HCO₃⁻ as the main change, with a normal or low PaCO₂.

⭐ Key point: Respiratory acidosis is treated by improving ventilation: open the airway, reverse sedatives (naloxone), use NIV (BiPAP), or intubate and ventilate. The kidneys raise HCO₃⁻ to compensate over 2–5 days.$x$, null),
(19, $x$What is a cause of metabolic alkalosis?$x$, $x$Vomiting$x$, $x$✅ Correct answer: Vomiting
Vomiting (and NG suction) removes hydrochloric acid (HCl) from the stomach. Losing acid leaves extra bicarbonate behind, which raises the pH. Loss of fluid and chloride makes the kidneys hold on to more bicarbonate, and potassium is lost too. The result is a hypochloraemic, hypokalaemic metabolic alkalosis, as in pyloric stenosis in babies.

❌ Why the other options are wrong:
• Diarrhea — Diarrhoea causes metabolic ACIDOSIS, because bowel fluid is rich in bicarbonate, which is lost.
• Renal failure — Renal failure causes metabolic ACIDOSIS, because the kidneys cannot excrete acid or make bicarbonate.
• Hypoventilation — Hypoventilation causes RESPIRATORY acidosis (CO₂ builds up).

⭐ Key point: Above the stomach (vomiting) = alkalosis; below the stomach (diarrhoea) = acidosis. Treat with 0.9% saline and potassium.$x$, null),
(20, $x$The modified Allen's test is performed before arterial blood gas sampling primarily to:$x$, $x$Assess collateral circulation to the hand via the ulnar artery before radial artery puncture$x$, $x$✅ Correct answer: Assess collateral circulation to the hand via the ulnar artery before radial artery puncture
The radial artery is the usual ABG site. Before puncturing it, the modified Allen test checks that the ULNAR artery can supply the hand on its own if the radial artery is damaged or clotted. Method: press both arteries, ask the patient to clench the fist until the hand blanches, then release only the ulnar artery. Colour should return within 5–15 seconds. If it doesn't, choose another site.

❌ Why the other options are wrong:
• Measure blood pressure — Blood pressure is measured with a cuff or arterial line, not the Allen test.
• Assess for infection at the puncture site — Infection at the site is checked by looking for redness, swelling and pus.
• Determine the patient's pain tolerance — Pain tolerance is not what the Allen test measures.

⭐ Key point: A negative (abnormal) Allen test means don't use that radial artery. After an ABG, press firmly for at least 5 minutes (longer if the patient is on anticoagulants).$x$, null),
(21, $x$A patient develops fever with chills and rigors shortly after a blood transfusion is started post-operatively. What is the priority nursing action?$x$, $x$Stop the transfusion immediately, keep the IV line open with normal saline, notify the physician, and send the blood/tubing for investigation$x$, $x$✅ Correct answer: Stop the transfusion immediately, keep the IV line open with normal saline, notify the physician, and send the blood/tubing for investigation
Fever, chills and rigors soon after starting blood may be the first sign of a serious reaction: an acute haemolytic reaction (wrong blood), bacterial contamination, or a febrile reaction. The nurse cannot tell which at the bedside, so the SAFEST first action is to STOP the transfusion at once. Keep the vein open with a new giving set and 0.9% saline, check vital signs, inform the doctor, recheck the patient ID against the bag, and return the bag and tubing with blood and urine samples to the lab.

❌ Why the other options are wrong:
• No action is needed if the temperature is below 38.5 degrees C — Waiting for the temperature to reach a certain level could let a fatal haemolytic reaction continue.
• Increase the transfusion rate to finish it quickly — Speeding up the transfusion gives MORE of the possibly harmful blood.
• Give an antipyretic and continue the transfusion at the same rate — An antipyretic can hide the fever, and continuing the transfusion is unsafe until the cause is known.

⭐ Key point: Any reaction means STOP the blood, keep the line open with saline, call the doctor, check the ID, and send the bag back. Most acute haemolytic reactions are caused by giving blood to the wrong patient.$x$, null),
(22, $x$Massive blood transfusion is defined as:$x$, $x$Replacement of the patient's total blood volume within 24 hours$x$, $x$✅ Correct answer: Replacement of the patient's total blood volume within 24 hours
Massive transfusion is usually defined as replacing the patient's whole blood volume (about 70 mL/kg; roughly 10 units of red cells in an adult) within 24 hours. Other definitions include 50% of blood volume within 3 hours, or more than 4 units within 1 hour. It is used in major trauma, PPH and GI bleeding, with a balanced ratio of red cells, FFP and platelets.

❌ Why the other options are wrong:
• 350 mL in 5 minutes — 350 mL in 5 minutes is a rapid infusion, but it is not the definition.
• 500 mL in 5 minutes — 500 mL in 5 minutes is not a recognised definition.
• 1 litre in 5 minutes — 1 litre in 5 minutes is very fast, but the definition is based on blood volume over time.

⭐ Key point: Watch for the complications of massive transfusion: hypothermia, LOW calcium (citrate), HIGH potassium, acidosis and clotting problems. Use a blood warmer and give calcium.$x$, null),
(23, $x$A patient is admitted to ICU with diagnosis of vaso-occlusive crisis, which of this management will you start with?$x$, $x$Rehydrate with normal saline$x$, $x$✅ Correct answer: Rehydrate with normal saline
A sickle cell vaso-occlusive (pain) crisis happens when sickled cells block small vessels. Dehydration makes the blood thicker and causes more sickling, so the first step is IV REHYDRATION (with normal saline). Rehydration improves blood flow and stops the cycle. Strong pain relief (often opioids) within 30 minutes, oxygen if SpO₂ is low, warmth, and treatment of infection go alongside it.

❌ Why the other options are wrong:
• Transfuse with fresh whole blood — Transfusion is not first-line for an uncomplicated pain crisis; it is used for acute chest syndrome, stroke, or severe anaemia (sequestration). Fresh whole blood is rarely used.
• Order for narcotics and administer — Pain relief is essential and urgent, but rehydration is the first treatment this question is testing.
• Give oral rehydration solution — Oral rehydration solution is too slow and not suitable for an ICU patient in crisis.

⭐ Key point: Sickle crisis care: fluids, oxygen, warmth, pain relief within 30 minutes, and antibiotics for infection. Avoid cold, dehydration and hypoxia, because each one triggers more sickling.$x$, null),
(24, $x$Laboratory findings consistent with disseminated intravascular coagulation (DIC) include:$x$, $x$Prolonged PT/aPTT, thrombocytopenia, low fibrinogen, and elevated D-dimer$x$, $x$✅ Correct answer: Prolonged PT/aPTT, thrombocytopenia, low fibrinogen, and elevated D-dimer
In DIC, small clots form throughout the body. These use up platelets and clotting factors, so the patient then BLEEDS from everywhere: line sites, gums, wounds. Laboratory findings: PT and APTT PROLONGED (factors used up), platelets LOW, fibrinogen LOW, and D-dimer HIGH (clot breakdown). Causes include sepsis, trauma, placental abruption, amniotic fluid embolism and HELLP.

❌ Why the other options are wrong:
• Shortened PT/aPTT and elevated platelets — Shortened clotting times with high platelets do not fit DIC, which consumes clotting factors.
• Normal fibrinogen and normal D-dimer — Normal fibrinogen and D-dimer rule DIC out.
• Isolated elevated hemoglobin — Haemoglobin usually FALLS in DIC (bleeding and haemolysis); a raised haemoglobin alone is unrelated.

⭐ Key point: Treat the cause. Replace with platelets, FFP and cryoprecipitate (for low fibrinogen) if the patient is bleeding.$x$, null),
(25, $x$Which of the following pathogens is a common cause of ventilator-associated pneumonia (VAP) in the ICU?$x$, $x$Pseudomonas aeruginosa$x$, $x$✅ Correct answer: Pseudomonas aeruginosa
Pseudomonas aeruginosa is one of the commonest causes of VAP, especially late VAP (after 5 or more days on the ventilator). It is a Gram-negative bacterium that lives in moist places (sinks, ventilator circuits, humidifiers) and is often resistant to many antibiotics. Other VAP germs: Staphylococcus aureus (including MRSA), Klebsiella, Acinetobacter, and E. coli.

❌ Why the other options are wrong:
• Common cold rhinovirus only — Rhinovirus causes the common cold, not typical VAP.
• Malaria parasite — The malaria parasite infects red blood cells and liver cells, not the lungs via the ventilator.
• Tapeworm — Tapeworm is a gut parasite and has nothing to do with VAP.

⭐ Key point: Prevent VAP with the bundle: head up 30–45°, daily sedation hold, chlorhexidine mouth care, subglottic suction, cuff pressure 20–30 cmH₂O, and hand hygiene.$x$, null),
(26, $x$Autoclaving is a sterilisation method that primarily uses:$x$, $x$Pressurised steam at high temperature$x$, $x$✅ Correct answer: Pressurised steam at high temperature
An autoclave sterilises with STEAM UNDER PRESSURE. Pressure raises the boiling point, so steam reaches 121 °C (held for 15 minutes) or 134 °C (held for 3 minutes). Moist heat kills ALL microorganisms, including bacterial spores, by denaturing their proteins. It is the commonest, cheapest and most reliable method for metal instruments, linen and dressings.

❌ Why the other options are wrong:
• Ultraviolet light only — Ultraviolet light only reduces germs on surfaces and in air; it does not sterilise instruments.
• Cold chemical soaking only, with no heat — Cold chemical soaking (such as 2% glutaraldehyde) is high-level disinfection, used for heat-sensitive items, not autoclaving.
• Dry air at room temperature — Dry air at room temperature does not kill microorganisms.

⭐ Key point: Autoclave: 121 °C for 15 minutes or 134 °C for 3 minutes. Clean items first; check indicator tape, and use biological indicators (spore tests) to prove sterility.$x$, null),
(27, $x$To reduce contamination risk, blood cultures should ideally be drawn:$x$, $x$From two separate sites, ideally before starting antibiotics$x$, $x$✅ Correct answer: From two separate sites, ideally before starting antibiotics
Taking blood cultures from TWO separate sites (two sets) helps tell a true infection from skin contamination. If the same germ grows from both sites, it is real; if only one bottle grows a skin germ, it is probably a contaminant. Cultures must be taken BEFORE antibiotics, because even one dose can stop the germs growing in the bottle and give a false negative. Clean the skin with 2% chlorhexidine in 70% alcohol and let it dry.

❌ Why the other options are wrong:
• From a single site only, after antibiotics are given — Taking cultures after antibiotics, or from only one site, makes the results unreliable.
• Only from a central line hub — Using only a central line hub increases contamination (unless line infection is suspected, and then a peripheral set is also taken).
• Without skin antisepsis — Skipping skin antisepsis guarantees contamination with skin bacteria.

⭐ Key point: In sepsis: cultures FIRST (two sets), then antibiotics within 1 hour. Never delay antibiotics for long just to get cultures.$x$, null),
(28, $x$What are the two key pharmacological antidotes used in the management of organophosphate poisoning?$x$, $x$Atropine and pralidoxime$x$, $x$✅ Correct answer: Atropine and pralidoxime
Organophosphates (insecticides such as Sniper/DDVP) block the enzyme acetylcholinesterase, so acetylcholine builds up. This causes SLUDGE signs (salivation, lacrimation, urination, diarrhoea, GI cramps, emesis), small pupils, slow pulse, bronchorrhoea (wet chest), and muscle twitching and weakness. ATROPINE blocks the muscarinic effects and dries the chest (give it until the chest is clear). PRALIDOXIME re-activates the enzyme (helps the muscle weakness) if given early.

❌ Why the other options are wrong:
• Naloxone and flumazenil — Naloxone and flumazenil reverse opioids and benzodiazepines, not organophosphates.
• Atropine and naloxone — Naloxone has no role here; only atropine is correct in that pair.
• Pralidoxime and N-acetylcysteine — N-acetylcysteine is the antidote for paracetamol; only pralidoxime is correct in that pair.

⭐ Key point: Organophosphate care: remove contaminated clothes, wash the skin (wear PPE yourself), protect the airway, then give large doses of atropine plus pralidoxime.$x$, null),
(29, $x$Protamine sulphate is antidote of$x$, $x$Heparin$x$, $x$✅ Correct answer: Heparin
Protamine sulphate reverses HEPARIN. Protamine is strongly positive (basic) and heparin is strongly negative (acidic), so they bind and neutralise each other. 1 mg of protamine reverses about 100 units of heparin given in the last 2–3 hours. It only partly reverses LMWH (enoxaparin). Give it slowly IV; fast injection causes low BP, slow pulse and anaphylaxis.

❌ Why the other options are wrong:
• Ephedrine — Ephedrine is a vasopressor for low BP during anaesthesia; it has no protamine antidote.
• Pethadine — Pethidine is an opioid; its antidote is naloxone.
• Scoline — Scoline (suxamethonium) is a muscle relaxant; it has no specific antidote (prolonged block is managed by ventilation).

⭐ Key point: Heparin → protamine. Warfarin → vitamin K plus PCC or FFP. Opioids → naloxone. Benzodiazepines → flumazenil.$x$, null),
(30, $x$Specific antidote in paracetamol poisoning is$x$, $x$Acetyl cysteine$x$, $x$✅ Correct answer: Acetyl cysteine
N-acetylcysteine (NAC, Parvolex) is the specific antidote for paracetamol overdose. In overdose, a toxic metabolite (NAPQI) builds up and destroys liver cells. NAC refills glutathione, which neutralises NAPQI. It works best within 8 hours of ingestion but is still given later. Treatment is guided by the paracetamol blood level at 4 hours or more after ingestion.

❌ Why the other options are wrong:
• Desferroxamine — Desferrioxamine is the antidote for iron poisoning.
• Naloxone — Naloxone is the antidote for opioids.
• Activated charcoal — Activated charcoal reduces absorption of many drugs within 1 hour, but it is not a specific antidote.

⭐ Key point: Paracetamol liver damage may not show for 24–72 hours, so start NAC early, check LFTs and INR, and watch for low glucose and liver failure.$x$, null),
(31, $x$First drug used to treat bradycardia:$x$, $x$Atropine$x$, $x$✅ Correct answer: Atropine
For symptomatic bradycardia (low BP, chest pain, shock, syncope, heart failure), the first drug is ATROPINE 500 micrograms IV, repeated up to a total of 3 mg. Atropine blocks the vagus nerve, which speeds up the SA node and AV conduction. If atropine fails, use transcutaneous pacing or adrenaline/isoprenaline infusions.

❌ Why the other options are wrong:
• Epinephrine — Epinephrine (adrenaline) is a second-line infusion if atropine fails, or for cardiac arrest.
• Amiodarone — Amiodarone treats FAST rhythms (VT, AF) and can slow the heart further.
• Deltacortil — Deltacortil (prednisolone) is a steroid and has no role in bradycardia.

⭐ Key point: Atropine may not work in a heart transplant patient (no vagal supply) or in complete heart block with wide QRS; prepare for pacing.$x$, null),
(32, $x$A patient on a high-dose, prolonged sodium nitroprusside infusion develops altered mental status and unexplained metabolic acidosis. This should raise suspicion for:$x$, $x$Cyanide toxicity from accumulation of nitroprusside metabolites$x$, $x$✅ Correct answer: Cyanide toxicity from accumulation of nitroprusside metabolites
Sodium nitroprusside contains cyanide. When high doses run for a long time, especially with kidney or liver problems, cyanide (and thiocyanate) builds up. Cyanide stops cells using oxygen, causing confusion, metabolic (lactic) acidosis, a rising mixed venous oxygen level (SvO₂), arrhythmias and eventually death. Stop the infusion and give an antidote (hydroxocobalamin or sodium thiosulphate).

❌ Why the other options are wrong:
• Serotonin syndrome — Serotonin syndrome is caused by serotonergic drugs (SSRIs, tramadol, MDMA), not nitroprusside.
• Malignant hyperthermia — Malignant hyperthermia is caused by volatile anaesthetics and suxamethonium.
• Digoxin toxicity — Digoxin toxicity causes nausea, visual changes and arrhythmias, not this picture with nitroprusside.

⭐ Key point: Protect nitroprusside from light (cover the syringe and line), use the lowest dose for the shortest time, and check lactate and acid–base status.$x$, null),
(33, $x$The objective of medical management of angina is to:$x$, $x$Decrease myocardial oxygen demand and increase supply$x$, $x$✅ Correct answer: Decrease myocardial oxygen demand and increase supply
Angina is chest pain caused by the heart muscle needing more oxygen than the narrowed coronary arteries can supply. Treatment aims to REDUCE oxygen DEMAND and INCREASE oxygen SUPPLY. Beta-blockers slow the heart rate and nitrates reduce preload (lower demand); nitrates and calcium channel blockers widen the coronary arteries (more supply); aspirin and statins prevent clots and plaque growth.

❌ Why the other options are wrong:
• Increase myocardial oxygen demand and increase supply — Increasing demand would make the imbalance and the pain worse.
• Increase demand and decrease supply — Increasing demand and decreasing supply is the exact cause of ischaemia, not its treatment.
• Maintain the general circulation — Maintaining the general circulation is too vague and doesn't describe the specific aim.

⭐ Key point: For angina, rest plus GTN sublingual. If pain lasts more than 20 minutes or doesn't respond, treat it as ACS: ECG, troponin and aspirin.$x$, null),
(34, $x$Which of these drugs is used as an antidote for narcotics$x$, $x$Nalaxone$x$, $x$✅ Correct answer: Nalaxone
Naloxone is the specific antagonist (antidote) for opioids (narcotics such as morphine, heroin, pethidine, fentanyl and tramadol). It blocks opioid receptors and reverses respiratory depression, sedation and small pupils within 1–2 minutes when given IV. Dose: 0.4 mg IV, repeated every 2–3 minutes. Smaller doses (40–100 mcg) are used in post-op patients so pain relief is not completely reversed.

❌ Why the other options are wrong:
• Black charcoal — Activated charcoal reduces gut absorption of many oral poisons but does not reverse opioids.
• Atropine — Atropine is the antidote for organophosphates and treats bradycardia.
• Cimetidine — Cimetidine is an H₂ blocker that lowers stomach acid; it is not an antidote.

⭐ Key point: Naloxone works for a SHORTER time (30–90 minutes) than many opioids, so the patient can become sedated again (re-narcotisation). Monitor closely and repeat doses or start an infusion.$x$, null),
(35, $x$The preferred muscle relaxant in a patient with liver or renal failure is:$x$, $x$Atracurium$x$, $x$✅ Correct answer: Atracurium
Atracurium is broken down in the blood by Hofmann elimination (a spontaneous chemical breakdown at normal body temperature and pH) and by ester hydrolysis, NOT by the liver or kidneys. Its action therefore stays predictable in liver or kidney failure. Cisatracurium works the same way and is often preferred in ICU.

❌ Why the other options are wrong:
• Rocuronium — Rocuronium is cleared mainly by the liver (and kidneys), so it can last longer in liver failure.
• Pancuronium — Pancuronium is mainly cleared by the kidneys and is very long-acting in renal failure.
• Vecuronium — Vecuronium depends on the liver and kidneys, and its active metabolite builds up in organ failure.

⭐ Key point: Atracurium and cisatracurium are the muscle relaxants of choice in liver or kidney failure. Note that atracurium can release histamine (rash, low BP).$x$, null),
(36, $x$A patient sedated with a continuous propofol infusion for several days develops metabolic acidosis, rhabdomyolysis, and cardiac dysfunction. The nurse should suspect:$x$, $x$Propofol Infusion Syndrome, a rare but serious complication of prolonged high-dose propofol use$x$, $x$✅ Correct answer: Propofol Infusion Syndrome, a rare but serious complication of prolonged high-dose propofol use
Propofol infusion syndrome (PRIS) is a rare but often fatal complication of high-dose (above 4 mg/kg/h) propofol given for more than 48 hours, especially in children, sepsis, head injury and with steroids or catecholamines. It disrupts how the mitochondria burn fat. Signs: unexplained metabolic (lactic) acidosis, rhabdomyolysis (high CK), high potassium, high triglycerides, kidney failure, arrhythmias and heart failure. Stop propofol at once and give supportive care.

❌ Why the other options are wrong:
• Normal, expected sedative effect with no concern — These are dangerous abnormalities, not a normal sedative effect.
• A simple allergic reaction to propofol — An allergic reaction causes rash, wheeze and low BP, not acidosis with rhabdomyolysis.
• Improved sedation with no adverse effect — This picture is harmful; it does not mean better sedation.

⭐ Key point: With long propofol infusions, monitor triglycerides, lactate, CK and ECG, and keep the dose below 4 mg/kg/h where possible.$x$, null),
(37, $x$A patient with a major burn receives morphine IV. The nurse prioritizes monitoring for:$x$, $x$Respiratory depression$x$, $x$✅ Correct answer: Respiratory depression
Morphine, like all opioids, depresses the respiratory centre in the brainstem, causing slow, shallow breathing, CO₂ retention, low oxygen and apnoea. This is the most dangerous side effect and can be fatal, especially with IV doses, in burns patients who may also have smoke inhalation, and when combined with sedatives. The nurse monitors respiratory rate, depth, SpO₂ and sedation level and keeps naloxone ready.

❌ Why the other options are wrong:
• Hypertension — Morphine is more likely to cause LOW blood pressure (vasodilation), not high.
• Urinary retention — Urinary retention is a side effect but not life-threatening.
• Constipation — Constipation is common but not the priority in the acute setting.

⭐ Key point: Opioid danger signs are a respiratory rate below 8–10, increasing sleepiness and pinpoint pupils. Sedation usually comes before respiratory depression, so check the sedation score.$x$, null),
(38, $x$A patient is prescribed dopamine 5 mcg/kg/min. The patient weighs 70 kg and the infusion is mixed as 400 mg in 250 mL D5W. What is the infusion rate in mL/hr?$x$, $x$13.1 mL/hr$x$, $x$✅ Correct answer: 13.1 mL/hr
Step 1, dose per minute: 5 mcg × 70 kg = 350 mcg/min. Step 2, dose per hour: 350 × 60 = 21,000 mcg/h = 21 mg/h. Step 3, concentration: 400 mg ÷ 250 mL = 1.6 mg/mL. Step 4, rate: 21 mg/h ÷ 1.6 mg/mL = 13.1 mL/h. Shortcut formula: (dose mcg/kg/min × weight × 60) ÷ concentration in mcg/mL = (5 × 70 × 60) ÷ 1600 = 13.1 mL/h.

❌ Why the other options are wrong:
• 10.5 mL/hr — 10.5 mL/h comes from a calculation error, such as using the wrong weight or concentration.
• 21.9 mL/hr — 21.9 mL/h comes from mixing up mg and mL or using the wrong concentration.
• 26.3 mL/hr — 26.3 mL/h is about double the right answer, a common error from using a weaker concentration.

⭐ Key point: Always convert to the SAME units (mcg or mg) before dividing. Have a second nurse check every vasoactive infusion calculation.$x$, null),
(39, $x$A litre of Normal Saline is ordered to run over 8 hours via a gravity administration set with a drop factor of 15 gtt/mL. What is the correct flow rate in drops per minute?$x$, $x$31 gtt/min$x$, $x$✅ Correct answer: 31 gtt/min
Formula: drops per minute = (volume in mL × drop factor) ÷ time in MINUTES. Volume 1000 mL; drop factor 15 gtt/mL; time 8 hours = 480 minutes. (1000 × 15) ÷ 480 = 15,000 ÷ 480 = 31.25, which rounds to 31 drops per minute.

❌ Why the other options are wrong:
• 21 gtt/min — 21 gtt/min would give too little fluid; it comes from a wrong drop factor or time.
• 42 gtt/min — 42 gtt/min is the answer for a 20 gtt/mL set (1000 × 20 ÷ 480 = 41.7), not 15.
• 15 gtt/min — 15 gtt/min just repeats the drop factor and is not a calculation.

⭐ Key point: Standard giving sets are 20 drops/mL (adult crystalloid), blood sets 15 drops/mL, and paediatric (burette/micro-drip) sets 60 drops/mL. With a 60-drop set, drops per minute = mL per hour.$x$, null),
(40, $x$Activated charcoal is most effective in acute poisoning management when given:$x$, $x$Early after ingestion (typically within about 1 hour)$x$, $x$✅ Correct answer: Early after ingestion (typically within about 1 hour)
Activated charcoal binds (adsorbs) many drugs in the gut so they are not absorbed. It works best when given EARLY, ideally within 1 hour of swallowing a poison, because after that much of the drug has already been absorbed. The adult dose is 50 g orally (or via NG tube) and the child dose is 1 g/kg. The patient must have a protected airway or be awake, because aspiration is dangerous.

❌ Why the other options are wrong:
• More than 24 hours after ingestion — After 24 hours almost all of the drug is absorbed, so charcoal does little (except for some slow-release drugs).
• Only intravenously — Charcoal is given by MOUTH or NG tube, never IV.
• Only for iron overdose — Charcoal does NOT bind iron (or lithium, alcohol, acids or alkalis).

⭐ Key point: Don't use charcoal for iron, lithium, alcohols, corrosives or hydrocarbons such as kerosene, or in a patient who cannot protect their airway.$x$, null),
(41, $x$A classic chest X-ray sign of pleural effusion is:$x$, $x$Blunting of the costophrenic angle$x$, $x$✅ Correct answer: Blunting of the costophrenic angle
Fluid in the pleural space collects at the lowest point first. On an erect chest X-ray, the sharp costophrenic angle (where the diaphragm meets the ribs) becomes blunted, often with a curved upper edge (meniscus sign). At least about 200–300 mL is needed to show on a PA film. A large effusion makes the whole lower zone white and can push the trachea and mediastinum to the opposite side.

❌ Why the other options are wrong:
• Hyperinflated lung fields — Hyperinflated (black, enlarged) lung fields suggest COPD or asthma, not effusion.
• A widened mediastinum — A widened mediastinum suggests aortic injury or dissection.
• Free air under the diaphragm — Free air under the diaphragm means a perforated bowel or stomach.

⭐ Key point: An effusion is dull to percussion, with reduced breath sounds and reduced vocal resonance. Large ones are drained by thoracentesis or a chest drain.$x$, null),
(42, $x$A key chest X-ray sign of pneumothorax is:$x$, $x$Absence of lung markings peripheral to a visible pleural line$x$, $x$✅ Correct answer: Absence of lung markings peripheral to a visible pleural line
In a pneumothorax, air enters the pleural space and the lung collapses inwards. On X-ray you see a thin white line (the visceral pleural edge), and OUTSIDE it there are NO lung markings (black space with no blood vessels). On a supine ICU film, look for the deep sulcus sign (a deep, dark costophrenic angle).

❌ Why the other options are wrong:
• Increased lung markings throughout — Increased lung markings suggest fluid, infection or fibrosis, not pneumothorax.
• Bilateral diffuse infiltrates — Bilateral diffuse infiltrates suggest ARDS, pulmonary oedema or pneumonia.
• Widened mediastinum — A widened mediastinum suggests aortic injury.

⭐ Key point: TENSION pneumothorax is a clinical diagnosis (distress, low BP, trachea deviated away, absent breath sounds). Decompress with a needle immediately; don't wait for an X-ray.$x$, null),
(43, $x$On a plain abdominal X-ray, multiple dilated bowel loops with air-fluid levels on an erect film are classic findings of:$x$, $x$Intestinal obstruction$x$, $x$✅ Correct answer: Intestinal obstruction
In intestinal obstruction, gas and fluid build up above the blockage. The bowel loops stretch (dilated loops), and on an ERECT film, gas sits on top of fluid, forming flat lines called air–fluid levels (like a glass of water). Small bowel loops are central with folds that cross the whole width (valvulae conniventes); large bowel loops are peripheral with folds that cross only partly (haustra).

❌ Why the other options are wrong:
• Normal bowel gas pattern — A normal bowel gas pattern does not show multiple dilated loops with fluid levels.
• Chronic constipation only — Constipation shows faecal loading, not multiple air–fluid levels.
• Gallstones — Gallstones are often not visible on X-ray (only about 10–15% contain calcium); they don't cause this pattern.

⭐ Key point: Signs of obstruction: colicky pain, vomiting, distension, absolute constipation. Treatment is "drip and suck": IV fluids plus NG tube on free drainage, nil by mouth.$x$, null),
(44, $x$Which nursing intervention is most effective in preventing contrast-induced nephropathy in an at-risk patient before a CT scan with IV contrast?$x$, $x$Ensuring adequate IV isotonic fluid hydration before and after the procedure$x$, $x$✅ Correct answer: Ensuring adequate IV isotonic fluid hydration before and after the procedure
Contrast can damage the kidney tubules and narrow the kidney blood vessels, causing a rise in creatinine 24–72 hours later. The most effective preventive step is good IV HYDRATION with isotonic fluid (0.9% saline or Hartmann's) before and after the scan. This keeps urine flowing, dilutes the contrast and protects the kidneys. Also use the lowest dose of low-osmolar contrast, stop nephrotoxic drugs (NSAIDs), and hold metformin if the GFR is low.

❌ Why the other options are wrong:
• Administering prophylactic antibiotics — Antibiotics have no role in preventing contrast kidney injury.
• Withholding all oral fluids for 12 hours before the scan — Withholding fluids causes dehydration, which INCREASES the risk.
• Administering a loop diuretic prior to the scan — Loop diuretics can dehydrate the patient and increase the risk.

⭐ Key point: High-risk patients are those with CKD, diabetes, dehydration, heart failure and older age. Check creatinine at 48–72 hours after contrast.$x$, null),
(45, $x$Which chest X-ray finding is characteristic of cardiogenic pulmonary oedema?$x$, $x$Bilateral perihilar 'bat-wing' infiltrates with Kerley B lines and cardiomegaly$x$, $x$✅ Correct answer: Bilateral perihilar 'bat-wing' infiltrates with Kerley B lines and cardiomegaly
In cardiogenic pulmonary oedema, the failing left ventricle backs up pressure into the lungs. On X-ray you see: an enlarged heart (cardiomegaly), fluid around the central airways in a "bat-wing" (butterfly) pattern, Kerley B lines (short horizontal lines at the lung edges, from swollen lymphatics), upper-lobe vessel diversion, and often pleural effusions.

❌ Why the other options are wrong:
• A single well-circumscribed nodule in the right upper lobe — A single nodule suggests a tumour or granuloma, not pulmonary oedema.
• Complete opacification of one hemithorax with mediastinal shift away from it — Complete whiteness of one side with shift AWAY from it suggests a massive pleural effusion.
• A normal chest X-ray in all cases — The X-ray is usually abnormal in pulmonary oedema, not normal.

⭐ Key point: Pulmonary oedema care: sit the patient upright, oxygen or CPAP, GTN (if BP allows), and IV furosemide. In ARDS, the heart size is usually normal.$x$, null),
(46, $x$A Processor acts like a/an$x$, $x$BRAIN$x$, $x$✅ Correct answer: BRAIN
The processor (CPU, central processing unit) is the "brain" of the computer. It carries out instructions, does calculations and controls all other parts, just as the brain controls the body. Its speed is measured in gigahertz (GHz).

❌ Why the other options are wrong:
• HEART — The heart pumps blood; in a computer, the power supply is a better comparison.
• ARM — An arm is like an output device (it carries out actions), not the processor.
• KIDNEY — The kidney filters waste; there is no CPU comparison with the kidney.

⭐ Key point: CPU = brain, RAM = short-term memory (working desk), hard disk = long-term storage (filing cabinet), and input/output devices = the senses and hands.$x$, null),
(47, $x$What is the main function of RAM (Random Access Memory) in a computer?$x$, $x$To temporarily store data that the CPU is actively using$x$, $x$✅ Correct answer: To temporarily store data that the CPU is actively using
RAM (random access memory) is the computer's TEMPORARY working memory. It holds the programs and data the CPU is using right now, so the computer can work quickly. RAM is volatile: everything in it is lost when the power is switched off. More RAM lets more programs run smoothly at the same time.

❌ Why the other options are wrong:
• To store data permanently — Permanent storage is the job of the hard disk, SSD or flash drive.
• To store the operating system — The operating system is stored permanently on the hard disk; it is only loaded into RAM while running.
• To provide an internet connection — Internet connection comes from the network card or modem, not RAM.

⭐ Key point: RAM is temporary and erased when off. ROM (read-only memory) is permanent and holds the start-up instructions.$x$, null),
(48, $x$What is the purpose of an Electronic Health Record (EHR)?$x$, $x$To create a digital version of a patient's chart$x$, $x$✅ Correct answer: To create a digital version of a patient's chart
An electronic health record (EHR) is a digital (computer) version of the patient's chart. It holds the full health information — history, diagnoses, drugs, allergies, lab results, imaging, vital signs, nursing notes and care plans — and is available to authorised staff wherever needed. It improves legibility, speeds sharing of information, supports alerts (allergies, drug interactions) and reduces errors.

❌ Why the other options are wrong:
• To store only the patient's demographic information — An EHR stores the FULL record, not only demographic details.
• To serve as a paper-based filing system — An EHR replaces paper files; it is not a paper system.
• To replace the need for any patient-nurse interaction — An EHR supports care; it never replaces the nurse–patient relationship.

⭐ Key point: EHRs must be protected: use your own login, never share passwords, log out after use, and respect confidentiality.$x$, null),
(49, $x$Telemedicine refers to:$x$, $x$The use of telecommunications technology to deliver healthcare services remotely$x$, $x$✅ Correct answer: The use of telecommunications technology to deliver healthcare services remotely
Telemedicine means using telecommunication technology — phone, video calls, internet and data links — to give healthcare at a DISTANCE: consultations, monitoring, diagnosis and education. In critical care, "tele-ICU" allows specialists to support teams in remote hospitals and review monitors and images from afar. It improves access in rural areas and saves travel time.

❌ Why the other options are wrong:
• A type of medical imaging equipment — Imaging equipment (X-ray, CT) is a diagnostic device, not telemedicine itself.
• A brand of hospital software only used for billing — Billing software is administrative and is not what telemedicine means.
• A paper-based referral system — A paper referral system does not use telecommunication.

⭐ Key point: Telemedicine needs patient consent, privacy and secure systems, the same as face-to-face care.$x$, null),
(50, $x$A cardiac monitor and pulse oximeter used in the ICU are examples of which category of electronic devices in healthcare?$x$, $x$Monitoring devices$x$, $x$✅ Correct answer: Monitoring devices
A cardiac monitor and a pulse oximeter continuously WATCH the patient's vital signs (heart rhythm, heart rate, oxygen saturation) and raise alarms when values go outside the set limits. That makes them monitoring devices. They do not treat the patient or make the diagnosis on their own; they alert the nurse to changes.

❌ Why the other options are wrong:
• Diagnostic devices — Diagnostic devices are used mainly to find a diagnosis, such as X-ray machines, CT scanners and lab analysers.
• Treatment devices — Treatment (therapeutic) devices deliver therapy, such as ventilators, infusion pumps and defibrillators.
• Storage devices — Storage devices hold data, such as hard drives and USB drives.

⭐ Key point: Set alarm limits for each patient, never switch alarms off, and always check the PATIENT, not just the monitor.$x$, null),
(51, $x$A classic clinical feature of acute cardiogenic pulmonary oedema is:$x$, $x$Pink, frothy sputum with severe dyspnoea and orthopnoea$x$, $x$✅ Correct answer: Pink, frothy sputum with severe dyspnoea and orthopnoea
In acute cardiogenic pulmonary oedema, the left ventricle fails and pressure backs up into the lung capillaries. Fluid leaks into the alveoli and mixes with air, producing PINK (blood-stained), FROTHY sputum. The patient is severely breathless, cannot lie flat (orthopnoea), is sweaty and anxious, and has widespread crackles, often with wheeze ("cardiac asthma").

❌ Why the other options are wrong:
• Painless haematuria — Painless haematuria is a urinary sign (kidney or bladder tumour, stones), not pulmonary oedema.
• Unilateral leg swelling with a normal respiratory rate — One swollen leg with normal breathing suggests a DVT, not pulmonary oedema.
• Dry cough with no dyspnoea — A dry cough without breathlessness does not match the severe distress of acute pulmonary oedema.

⭐ Key point: Treat by sitting the patient upright with legs down, giving oxygen or CPAP, GTN (if SBP is above 90–100) and IV furosemide, and monitoring urine output.$x$, null),
(52, $x$Drug therapy for pulmonary oedema includes the following EXCEPT:$x$, $x$Haematinics$x$, $x$✅ Correct answer: Haematinics
The question asks which drug is NOT used. Haematinics (iron, folic acid, vitamin B12) treat anaemia; they do nothing for fluid in the lungs. All the other options can be used: diuretics remove fluid, morphine reduces anxiety and preload, and digitalis strengthens contraction and controls AF rate.

❌ Why the other options are wrong:
• Diuretics — Diuretics (furosemide) ARE used: they remove excess fluid and quickly dilate the veins.
• Morphine — Morphine IS used (now more carefully): it eases breathlessness and anxiety and lowers preload.
• Digitalis — Digitalis (digoxin) IS used in some patients, especially with AF, to slow the rate and improve pumping.

⭐ Key point: Remember "LMNOP" for pulmonary oedema: Lasix (furosemide), Morphine (with caution), Nitrates, Oxygen, Position (sit up).$x$, null),
(53, $x$A patient develops sudden dyspnoea, pleuritic chest pain, and tachycardia after prolonged bed rest post-surgery. The nurse should have a high index of suspicion for:$x$, $x$Pulmonary embolism$x$, $x$✅ Correct answer: Pulmonary embolism
After surgery and bed rest, blood flows slowly in the leg veins (stasis), surgery makes the blood clot more easily, and veins may be damaged. These three factors (Virchow's triad) cause a DVT. A piece of clot can travel to the lungs as a pulmonary embolism, causing SUDDEN breathlessness, sharp chest pain worse on breathing in (pleuritic), fast pulse, low oxygen, and sometimes haemoptysis or collapse.

❌ Why the other options are wrong:
• Simple anxiety — Anxiety should never be assumed until serious causes like PE are excluded.
• Common cold — A common cold causes runny nose and sore throat, not sudden pleuritic pain.
• Gastritis — Gastritis causes epigastric burning, not sudden breathlessness with tachycardia.

⭐ Key point: Prevent PE with early mobilisation, leg exercises, compression stockings and LMWH. Suspect PE with any sudden breathlessness after surgery.$x$, null),
(54, $x$CT pulmonary angiography is the imaging investigation of choice to diagnose:$x$, $x$Pulmonary embolism$x$, $x$✅ Correct answer: Pulmonary embolism
CT pulmonary angiography (CTPA) injects contrast into a vein and scans the chest as the contrast passes through the lung arteries. A clot shows as a dark "filling defect" in a bright vessel. It is fast, widely available and accurate, so it is the first-choice test for PE. A V/Q scan is used when contrast cannot be given (kidney failure, contrast allergy, pregnancy in some centres).

❌ Why the other options are wrong:
• Simple rib fracture — A rib fracture is seen on a plain X-ray or a normal CT; contrast angiography is not needed.
• Peptic ulcer disease — Peptic ulcer is diagnosed by endoscopy (OGD).
• Osteoarthritis — Osteoarthritis is diagnosed clinically and with plain X-rays.

⭐ Key point: Use the Wells score and D-dimer first in stable patients. A low score with a normal D-dimer makes PE unlikely.$x$, null),
(55, $x$A patient with severe emphysema is classically described as a 'pink puffer.' This term reflects:$x$, $x$A thin body habitus, pursed-lip breathing, and relatively preserved oxygenation until late disease$x$, $x$✅ Correct answer: A thin body habitus, pursed-lip breathing, and relatively preserved oxygenation until late disease
In emphysema, the alveolar walls are destroyed and the lungs over-inflate. The patient works very hard to breathe: they are thin (they burn many calories breathing), barrel-chested, use accessory muscles, and breathe out through pursed lips to keep the airways open. Because they breathe so hard, oxygen levels stay fairly normal until late, so they look "pink" and "puff". This is the opposite of the "blue bloater".

❌ Why the other options are wrong:
• Cyanosis with peripheral oedema — Cyanosis with peripheral oedema describes the "blue bloater" (chronic bronchitis with right heart failure).
• Obesity with cor pulmonale — Obesity with cor pulmonale also fits the blue bloater, not the pink puffer.
• A productive cough with copious purulent sputum — A productive cough with lots of sputum is typical of chronic bronchitis (blue bloater).

⭐ Key point: Pink puffer = emphysema (thin, breathless, near-normal O₂). Blue bloater = chronic bronchitis (overweight, cyanosed, oedema, CO₂ retention).$x$, null),
(56, $x$For a patient with an acute COPD exacerbation and a history of chronic CO2 retention, which initial oxygen delivery approach is most appropriate?$x$, $x$Controlled oxygen via Venturi mask titrated to a target SpO2 of about 88-92%$x$, $x$✅ Correct answer: Controlled oxygen via Venturi mask titrated to a target SpO2 of about 88-92%
Patients with COPD who retain CO₂ may depend partly on low oxygen to drive their breathing. Too much oxygen can raise CO₂ further (through less breathing drive, V/Q mismatch and the Haldane effect), causing CO₂ narcosis, acidosis and drowsiness. A Venturi mask gives an EXACT, fixed oxygen percentage (24% or 28% to start), titrated to a target SpO₂ of 88–92%. Check an ABG within 30–60 minutes.

❌ Why the other options are wrong:
• Non-rebreather mask at 15 L/min regardless of saturation — A non-rebreather at 15 L/min gives very high oxygen and risks CO₂ narcosis; it is for other emergencies.
• Room air only with no supplemental oxygen under any circumstance — Withholding oxygen completely is dangerous; hypoxia kills faster than CO₂ retention.
• Nasal cannula at 6 L/min titrated to SpO2 100% — Aiming for 100% saturation in a CO₂ retainer causes oxygen-induced hypercapnia.

⭐ Key point: COPD target SpO₂ is 88–92%. If pH is below 7.35 with a high PaCO₂ despite treatment, start BiPAP (NIV).$x$, null),
(57, $x$How is a tension pneumothorax causing PEA arrest managed?$x$, $x$Immediate needle decompression followed by chest tube insertion$x$, $x$✅ Correct answer: Immediate needle decompression followed by chest tube insertion
Tension pneumothorax causes PEA by trapping air that crushes the lung and pushes the heart and great veins aside, so blood cannot return to the heart. It is one of the reversible "4 Ts". The cause must be relieved IMMEDIATELY with needle decompression (2nd ICS mid-clavicular line, or 4th–5th ICS mid-axillary line in adults), followed by a chest drain. Continue CPR while this is done.

❌ Why the other options are wrong:
• Defibrillation — Defibrillation does not work for PEA; it is only for VF and pulseless VT.
• IV fluids alone — IV fluids alone cannot overcome the blockage to blood return.
• Atropine administration — Atropine is no longer recommended for PEA and does not treat the cause.

⭐ Key point: The reversible causes of cardiac arrest are the 4 Hs (Hypoxia, Hypovolaemia, Hypo/Hyperkalaemia, Hypothermia) and the 4 Ts (Tension pneumothorax, Tamponade, Toxins, Thrombosis).$x$, null),
(58, $x$Which site is commonly used for chest tube insertion?$x$, $x$5th intercostal space, mid-axillary line$x$, $x$✅ Correct answer: 5th intercostal space, mid-axillary line
The usual chest drain site is the "safe triangle": 4th–5th intercostal space in the MID-AXILLARY line (lateral edge of pectoralis major in front, lateral edge of latissimus dorsi behind, the level of the nipple below). This avoids the internal mammary artery, the heart, the liver and spleen, and large muscles. The drain goes over the TOP of the rib, because the intercostal vessels and nerve run along the bottom edge.

❌ Why the other options are wrong:
• Midline of the abdomen — The midline of the abdomen is for abdominal procedures (such as a laparotomy), not chest drains.
• Clavicular notch — The clavicular notch is not a chest drain site; it is near large vessels.
• 4th intercostal space, midclavicular line — The 4th ICS mid-clavicular line is too close to the heart and breast tissue; the 2nd ICS mid-clavicular line is used for NEEDLE decompression.

⭐ Key point: The patient should sit up with the arm raised behind the head. After insertion, check for swinging and bubbling and get a chest X-ray.$x$, null),
(59, $x$Type II (hypercapnic) respiratory failure is defined by:$x$, $x$A PaCO2 greater than 50 mmHg with accompanying respiratory acidosis$x$, $x$✅ Correct answer: A PaCO2 greater than 50 mmHg with accompanying respiratory acidosis
Type II (hypercapnic or ventilatory) respiratory failure means the lungs cannot remove CO₂: PaCO₂ above 45–50 mmHg (above 6 kPa), usually with a low PaO₂ and a low pH (respiratory acidosis) when it is acute. The cause is HYPOventilation: COPD, exhausted asthma, opioid overdose, neuromuscular disease (GBS, myasthenia), obesity and chest wall problems.

❌ Why the other options are wrong:
• A PaO2 less than 60 mmHg alone — A PaO₂ below 60 mmHg alone (normal or low CO₂) is TYPE I (hypoxaemic) failure.
• A normal PaCO2 with severe hypoxemia — A normal PaCO₂ with severe hypoxaemia is also type I failure.
• Elevated bicarbonate with normal pH — A raised bicarbonate with normal pH is a compensated or metabolic picture, not the definition.

⭐ Key point: Type 1 = low O₂ only (oxygenation problem: pneumonia, oedema, ARDS). Type 2 = low O₂ + HIGH CO₂ (ventilation problem). Type 2 needs ventilation support (NIV or intubation), not just oxygen.$x$, null),
(60, $x$A key clinical benefit of BiPAP in a patient with a COPD exacerbation and respiratory failure is that it:$x$, $x$Reduces the work of breathing by providing inspiratory pressure support while maintaining alveolar recruitment with EPAP$x$, $x$✅ Correct answer: Reduces the work of breathing by providing inspiratory pressure support while maintaining alveolar recruitment with EPAP
BiPAP gives two pressures. IPAP (inspiratory pressure) pushes air in on each breath, helping the tired breathing muscles, increasing tidal volume and blowing off CO₂. EPAP (expiratory pressure, which acts like PEEP) keeps the small airways and alveoli open at the end of each breath, so less work is needed for the next breath. In COPD exacerbations it lowers CO₂, corrects the pH and reduces the need for intubation and death.

❌ Why the other options are wrong:
• Eliminates the need for any pharmacologic bronchodilator therapy — BiPAP does not replace bronchodilators; nebulisers, steroids and antibiotics are still needed.
• Cures the underlying airway obstruction — BiPAP supports breathing while the exacerbation is treated; it does not cure the disease.
• Requires no patient cooperation or spontaneous breathing effort — BiPAP needs a cooperative, spontaneously breathing patient who can protect their airway.

⭐ Key point: Start NIV in COPD when pH is 7.25–7.35 with a high PaCO₂. Check the ABG at 1 hour; no improvement means the patient may need intubation.$x$, null),
(61, $x$What PaO2/FiO2 ratio threshold, with PEEP of at least 5 cmH2O, defines severe ARDS under the Berlin definition?$x$, $x$100 or less$x$, $x$✅ Correct answer: 100 or less
The Berlin definition grades ARDS by the PaO₂/FiO₂ (P/F) ratio, with PEEP or CPAP of at least 5 cmH₂O. SEVERE is P/F of 100 or less, moderate is above 100 to 200, and mild is above 200 to 300. Example: PaO₂ 70 mmHg on FiO₂ 0.8 gives 70 ÷ 0.8 = 87.5, which is severe ARDS. Severe ARDS has the highest death rate and needs prone positioning and sometimes ECMO.

❌ Why the other options are wrong:
• 300 or less — 300 or less is the upper cut-off for MILD ARDS (the threshold for any ARDS).
• 200 or less — 200 or less is the cut-off for MODERATE ARDS.
• 150 or less — 150 or less is the cut-off used to start PRONE positioning, not the Berlin severe category.

⭐ Key point: P/F ratio = PaO₂ (mmHg) ÷ FiO₂ (as a decimal). Normal is about 400–500 (100 ÷ 0.21 ≈ 476).$x$, null),
(62, $x$What is the normal recommended tidal volume range for lung-protective ventilation in ARDS, based on predicted body weight?$x$, $x$6-8 mL/kg$x$, $x$✅ Correct answer: 6-8 mL/kg
Lung-protective ventilation uses SMALL tidal volumes of 6–8 mL/kg PREDICTED body weight (starting at 6 mL/kg in ARDS), with a plateau pressure of 30 cmH₂O or less. ARDS lungs are "baby lungs": only a small part works, so large breaths over-stretch and damage it (volutrauma). The ARDSNet trial showed that 6 mL/kg instead of 12 mL/kg reduced deaths.

❌ Why the other options are wrong:
• 10-12 mL/kg — 10–12 mL/kg was the old practice and increases lung injury and death.
• 15-18 mL/kg — 15–18 mL/kg is dangerously large and would cause barotrauma and volutrauma.
• 2-4 mL/kg — 2–4 mL/kg is too small for normal ventilation (only used in special settings like ECMO).

⭐ Key point: Use PREDICTED body weight (from height and sex), not actual weight. An obese patient's lungs are no bigger than a thin patient's of the same height.$x$, null),
(63, $x$A patient's serum sodium is measured at 118mmol/L with confusion and lethargy. The nurse understands that correction of severe hyponatraemia must be done:$x$, $x$Gradually and carefully, since overly rapid correction risks osmotic demyelination syndrome$x$, $x$✅ Correct answer: Gradually and carefully, since overly rapid correction risks osmotic demyelination syndrome
In chronic low sodium, brain cells adapt by losing solutes to avoid swelling. If sodium is raised too FAST, water rushes out of the brain cells and damages the myelin in the pons, causing osmotic demyelination syndrome (central pontine myelinolysis). This leads to difficulty speaking and swallowing, quadriplegia, "locked-in" syndrome or death. Correction must therefore be gradual: no more than 8–10 mmol/L in 24 hours, with frequent sodium checks (every 2–4 hours).

❌ Why the other options are wrong:
• As rapidly as possible regardless of rate — Correcting as fast as possible is exactly what causes osmotic demyelination.
• Only with oral salt tablets, never IV — IV treatment (including 3% saline for severe symptoms such as seizures) is used when needed; oral salt alone is not the rule.
• With no monitoring required — Close monitoring of sodium, fluid balance and neurological status is essential.

⭐ Key point: For severe symptomatic hyponatraemia (seizures, coma), give 3% saline 150 mL boluses to raise sodium by 4–6 mmol/L quickly, then slow down to stay within 8–10 mmol/L per 24 hours.$x$, null),
(64, $x$Which ventricle is most sensitive to an increase in afterload?$x$, $x$A failing ventricle with poor contractility$x$, $x$✅ Correct answer: A failing ventricle with poor contractility
Afterload is the resistance the ventricle must pump against. A healthy heart can keep its stroke volume even when afterload rises. A FAILING ventricle with weak contractility cannot overcome extra resistance, so its stroke volume falls sharply when afterload rises. That is why lowering afterload (ACE inhibitors, nitrates, nitroprusside, IABP) improves output in heart failure.

❌ Why the other options are wrong:
• A normal ventricle — A normal ventricle can compensate well, so its stroke volume changes little.
• A hypertrophied athletic ventricle — A hypertrophied athletic heart is strong and handles extra afterload well.
• None, afterload never affects stroke volume — Afterload DOES affect stroke volume; it matters most in the failing heart.

⭐ Key point: In heart failure, reduce afterload with vasodilators and avoid high blood pressure. In septic shock, afterload (SVR) is LOW and vasopressors raise it.$x$, null),
(65, $x$A patient reports substernal chest pressure radiating to the jaw during exertion, relieved within 5 minutes of rest. The nurse should classify this as most consistent with:$x$, $x$Stable angina$x$, $x$✅ Correct answer: Stable angina
STABLE angina is chest pain brought on by a predictable amount of exertion (walking, climbing stairs) or emotion. It lasts a few minutes (usually under 10–15 minutes) and goes away with REST or GTN. It is caused by a fixed narrowing of the coronary artery. Here, the pain comes on with exertion and is relieved within 5 minutes of rest, which is the classic stable pattern.

❌ Why the other options are wrong:
• Unstable angina — Unstable angina is pain at rest, new pain, or pain that is getting worse (crescendo); it is an emergency (ACS).
• Acute MI — An acute MI causes pain lasting more than 20 minutes, not relieved by rest, with ECG changes and raised troponin.
• Pericarditis — Pericarditis causes sharp pain, worse lying down and on breathing, better sitting forward, not related to exertion.

⭐ Key point: Any change in the pattern of angina (at rest, more often, longer, less relief) is unstable angina. Treat it as ACS.$x$, null),
(66, $x$Which cardiac biomarker is most specific for myocardial injury and remains elevated for 7-14 days after MI?$x$, $x$Troponin I/T$x$, $x$✅ Correct answer: Troponin I/T
Troponin I and T are proteins found only in heart muscle, so they are the most SPECIFIC markers of heart muscle damage. Levels rise 3–6 hours after the injury, peak at 12–24 hours, and stay raised for 7–14 days. This makes troponin useful to diagnose MI even if the patient comes late. High-sensitivity troponin tests at 0 and 1–3 hours are now standard.

❌ Why the other options are wrong:
• CK-MB — CK-MB is less specific (some is in skeletal muscle) and returns to normal in 2–3 days, so it is used to detect REINFARCTION.
• Myoglobin — Myoglobin rises earliest (1–2 hours) but is found in all muscle, so it is not specific.
• LDH — LDH rises late and is non-specific (blood, liver, muscle); it is no longer used for MI.

⭐ Key point: Troponin can also rise in sepsis, PE, kidney failure, myocarditis and after CPR or defibrillation, so interpret it with the ECG and symptoms.$x$, null),
(67, $x$A patient post-myocardial infarction develops new-onset crackles bilaterally, a third heart sound (S3), and worsening dyspnoea. This most likely indicates:$x$, $x$Acute left ventricular failure/pulmonary oedema$x$, $x$✅ Correct answer: Acute left ventricular failure/pulmonary oedema
After an MI, the damaged left ventricle may fail to pump forward. Blood backs up into the lungs (pulmonary oedema), causing new bilateral crackles and worsening breathlessness. An S3 (third heart sound, "Ken-tuc-ky") comes from blood rushing into a stiff, overfilled ventricle, a classic sign of LV failure. This is acute left ventricular failure (Killip class II–III).

❌ Why the other options are wrong:
• Simple anxiety — Anxiety does not produce crackles and an S3.
• Normal post-MI recovery — These are signs of a complication, not normal recovery.
• Gastro-oesophageal reflux — Reflux causes heartburn, not crackles and an S3.

⭐ Key point: Post-MI complications include arrhythmias, heart failure and cardiogenic shock, papillary muscle rupture (a new murmur), ventricular rupture, and pericarditis (including Dressler's syndrome).$x$, null),
(68, $x$The most common cause of right-sided heart failure is:$x$, $x$Chronic left-sided heart failure$x$, $x$✅ Correct answer: Chronic left-sided heart failure
The commonest cause of right heart failure is LEFT heart failure. When the left side fails, pressure backs up into the lungs (pulmonary hypertension). The right ventricle then has to pump against this high pressure and eventually fails too. Signs of right heart failure: raised JVP, swollen ankles (pitting oedema), enlarged liver, ascites.

❌ Why the other options are wrong:
• Aortic stenosis — Aortic stenosis affects the left ventricle first; it can lead to right failure, but it is not the commonest cause.
• Hyperthyroidism — Hyperthyroidism can cause high-output failure but is not the commonest cause of right failure.
• Anemia — Anaemia can cause high-output failure but is uncommon as a cause of right failure.

⭐ Key point: Right heart failure caused by LUNG disease (COPD, PE, pulmonary hypertension) is called cor pulmonale.$x$, null),
(69, $x$One of these is an indication for a permanent pacemaker$x$, $x$Complete heart block$x$, $x$✅ Correct answer: Complete heart block
Complete (third-degree) heart block means NO impulses pass from the atria to the ventricles. The ventricles beat on their own slow escape rhythm (often 30–40/min), causing dizziness, fainting (Stokes–Adams attacks), heart failure or sudden death. Because it rarely recovers (except after an inferior MI or from drugs), a PERMANENT pacemaker is the definitive treatment.

❌ Why the other options are wrong:
• Tachyarrthymias — Tachyarrhythmias are usually treated with drugs, ablation or an ICD, not a standard pacemaker.
• Carotid sinus syndrome — Carotid sinus syndrome can need a pacemaker in severe cases, but complete heart block is the classic, definite indication.
• Myocardial infarction — An MI alone is not an indication; temporary pacing may be needed for some blocks after MI.

⭐ Key point: Indications for a permanent pacemaker: complete heart block, Mobitz II block, symptomatic sick sinus syndrome, and symptomatic bradycardia without a reversible cause.$x$, null),
(70, $x$a 62 years old male patient has an ECG done that shows PR interval to be fixed, but drop QRS randomly. It indiciates?$x$, $x$second degree type-II block$x$, $x$✅ Correct answer: second degree type-II block
Second-degree TYPE II (Mobitz II) heart block: the PR interval stays the SAME (fixed) for each conducted beat, but suddenly a P wave is NOT followed by a QRS (a dropped beat), without warning. The block is usually below the AV node (in the His–Purkinje system), so it can suddenly progress to complete heart block. It needs pacing.

❌ Why the other options are wrong:
• first degree block — First-degree block has a long PR (above 0.20 s) but NO dropped beats.
• second degree type-I block — Second-degree type I (Wenckebach) has a PR that gets LONGER and LONGER until a beat drops, then the cycle repeats.
• third degree block — Third-degree block has NO relationship between P waves and QRS complexes (they march independently).

⭐ Key point: Wenckebach = "longer, longer, longer, drop" (usually benign). Mobitz II = "fixed PR, sudden drop" (dangerous; prepare for pacing).$x$, null),
(71, $x$A patient with a permanent pacemaker shows a rhythm strip with pacer spikes not followed by a QRS complex. This indicates:$x$, $x$Failure to capture — the pacemaker impulse is not depolarising the myocardium$x$, $x$✅ Correct answer: Failure to capture — the pacemaker impulse is not depolarising the myocardium
Each pacing spike should be immediately followed by a QRS complex (ventricular pacing) or a P wave (atrial pacing). This means the impulse has "captured" the heart. A spike with NO QRS after it is FAILURE TO CAPTURE: the electrical output is not making the heart muscle contract. Causes: lead displacement, a lead fracture, energy output too low, scar tissue at the lead tip, low battery, high potassium, or drugs.

❌ Why the other options are wrong:
• Normal pacemaker function — Normal function means every spike is followed by a complex.
• Battery is fully charged with no issue — A battery problem is one possible CAUSE of failure to capture; the strip does not show a healthy battery.
• Over-sensing with no clinical relevance — Over-sensing means the pacemaker detects signals it shouldn't and fails to pace (no spikes when needed); it is clinically important.

⭐ Key point: Pacemaker problems: failure to PACE (no spike), failure to CAPTURE (spike with no complex), and failure to SENSE (spikes in the wrong place). Check the patient's pulse and BP first, then call for help.$x$, null),
(72, $x$It is a flexible catheter, inserted into the femoral artery and passed into the descending aorta 1-2 cm below the left subclavian artery and slightly above the renal arteries.$x$, $x$Intra-aortic balloon pump$x$, $x$✅ Correct answer: Intra-aortic balloon pump
The intra-aortic balloon pump (IABP) is a long balloon catheter inserted through the femoral artery into the descending thoracic aorta. The tip sits just below the left subclavian artery, and the balloon ends above the renal arteries. It INFLATES in diastole (pushing blood back into the coronary arteries, improving heart muscle oxygen) and DEFLATES just before systole (lowering afterload so the heart pumps more easily). It is used in cardiogenic shock and severe ischaemia.

❌ Why the other options are wrong:
• Pulmonary Artery Wedge Pressure — PAWP is a pressure measurement, not a device.
• Pulmonary Artery Catheter — A pulmonary artery catheter goes through a vein into the right heart and pulmonary artery, not into the aorta.
• None of the above — One of the options (IABP) does fit the description, so "none" is wrong.

⭐ Key point: IABP nursing: check leg pulses, colour and warmth (limb ischaemia); check the LEFT radial pulse (the tip may block the left subclavian); check urine output (it may block the renal arteries); keep the leg straight; watch for bleeding.$x$, null),
(73, $x$Which one of the following is NOT a function of pulmonary arterial catheter (PAC) which is also called Swan GANZ catheter?$x$, $x$Measurement of right atrium pressure$x$, $x$✅ Correct answer: Measurement of right atrium pressure
The pulmonary artery catheter is placed mainly to measure pressures in the pulmonary artery, the wedge pressure (which estimates left ventricular filling) and cardiac output. The question's answer key marks "measurement of right atrium pressure" as NOT its function. The reason: right atrial pressure (CVP) is usually measured with an ordinary central venous catheter, and measuring it is not the reason for placing a Swan-Ganz. (Strictly, the PAC's proximal port can show RA pressure too, so read questions like this carefully.)

❌ Why the other options are wrong:
• Continuous cardiac output monitoring — Continuous cardiac output monitoring IS a PAC function (thermodilution).
• Measurement of pulmonary artery pressure — Measuring pulmonary artery pressure IS the main PAC function.
• Estimation of diastole filling of left ventricle — Estimating left ventricular diastolic filling IS a PAC function, through the wedge pressure (PAWP).

⭐ Key point: PAC measures PA pressure (15–25/8–15), PAWP (6–12, left heart filling), cardiac output (4–8 L/min) and SvO₂ (60–80%).$x$, null),
(74, $x$The first-line vasopressor of choice in septic shock is:$x$, $x$Norepinephrine$x$, $x$✅ Correct answer: Norepinephrine
Noradrenaline (norepinephrine) is the first-line vasopressor in septic shock (Surviving Sepsis Campaign). Septic shock is a VASODILATED shock (low SVR). Noradrenaline mainly stimulates alpha-1 receptors, tightening blood vessels and raising MAP, with less effect on heart rate. The target is MAP of 65 mmHg or more after fluids. Ideally it runs through a central line, but it can be started peripherally in a big vein for a short time.

❌ Why the other options are wrong:
• Dopamine — Dopamine causes more arrhythmias and higher death rates than noradrenaline; it is no longer first-line.
• Adrenaline — Adrenaline is added as a second or third agent (or for low cardiac output), not first-line.
• Vasopressin — Vasopressin is ADDED to noradrenaline (0.03 units/min) to reduce the noradrenaline dose, not used first.

⭐ Key point: Sepsis Hour-1 bundle: lactate, blood cultures, antibiotics, 30 mL/kg crystalloid for low BP, and noradrenaline for MAP below 65.$x$, null),
(75, $x$A trauma patient in hypovolaemic shock has lost an estimated 35% of their circulating blood volume. According to classification of haemorrhagic shock, this places them in:$x$, $x$Class III$x$, $x$✅ Correct answer: Class III
Blood loss classes (ATLS): Class I up to 15%, Class II 15–30%, Class III 30–40%, Class IV over 40%. A loss of 35% falls into CLASS III (about 1500–2000 mL in a 70 kg adult). In Class III, the pulse is above 120, systolic BP FALLS, breathing is fast, urine output is low (5–15 mL/h) and the patient is anxious or confused. They need blood transfusion, not just crystalloid.

❌ Why the other options are wrong:
• Class I — Class I (under 15%) has almost normal vital signs.
• Class II — Class II (15–30%) has tachycardia and a narrow pulse pressure, but the BP is usually still normal.
• Class IV — Class IV (over 40%) is immediately life-threatening, with very low BP, lethargy and almost no urine.

⭐ Key point: A falling BP is a LATE sign of blood loss (Class III). Tachycardia, narrowed pulse pressure, cool skin and slow capillary refill come first.$x$, null),
(76, $x$Early (warm) septic shock differs from hypovolaemic shock by all of the following EXCEPT:$x$, $x$Tachycardia$x$, $x$✅ Correct answer: Tachycardia
The question asks which feature does NOT differ. Both early (warm) septic shock and hypovolaemic shock cause TACHYCARDIA, so it does not help tell them apart. What differs is the skin: in warm sepsis, the blood vessels are dilated, so the skin is warm, flushed and well-perfused. In hypovolaemic shock, the vessels are clamped down, so the skin is cold, pale and clammy.

❌ Why the other options are wrong:
• Warm extremities — Warm extremities ARE different: warm in sepsis, cold in hypovolaemia.
• Flushed skin — Flushed skin IS different: flushed in sepsis, pale in hypovolaemia.
• Well-perfused extremities — Well-perfused extremities ARE different (sepsis) from poorly perfused ones (hypovolaemia).

⭐ Key point: Warm shock (low SVR) = septic, anaphylactic and neurogenic. Cold shock (high SVR) = hypovolaemic, cardiogenic and obstructive. Late septic shock can also become cold.$x$, null),
(77, $x$What is a common cause of acute kidney injury (AKI) in the ICU?$x$, $x$All of the above$x$, $x$✅ Correct answer: All of the above
All three are common causes of AKI in ICU, and often several act together. Sepsis is the commonest cause: it causes low BP, inflammation and microcirculation damage. Dehydration or hypovolaemia (bleeding, vomiting, diuretics) reduces kidney blood flow (pre-renal AKI). Nephrotoxic drugs damage the tubules: aminoglycosides (gentamicin), vancomycin, NSAIDs, IV contrast, amphotericin and ACE inhibitors in dehydration.

❌ Why the other options are wrong:
• Sepsis — Sepsis alone is a cause, but not the only one listed.
• Dehydration — Dehydration alone is a cause, but not the only one listed.
• Nephrotoxic drugs — Nephrotoxic drugs alone are a cause, but not the only one listed.

⭐ Key point: Prevent AKI: keep MAP of 65 or more, keep the patient well hydrated, avoid or monitor nephrotoxic drugs (check trough levels), and watch urine output hourly (aim for at least 0.5 mL/kg/h).$x$, null),
(78, $x$Kidney failure is a potential postoperative complication in the ICU. Which laboratory test would be most indicative of kidney function?$x$, $x$Creatinine levels$x$, $x$✅ Correct answer: Creatinine levels
Creatinine is a waste product of muscle that the kidneys filter at a steady rate. When kidney function falls, creatinine RISES in the blood. It is the standard simple test of kidney function and is used to estimate GFR and to diagnose AKI (KDIGO: a rise of 26.5 µmol/L or more within 48 hours, or 1.5 times baseline, or urine below 0.5 mL/kg/h for 6 hours).

❌ Why the other options are wrong:
• Glucose levels — Glucose measures diabetes control, not kidney function.
• Potassium levels — Potassium often rises in kidney failure and is important to monitor, but it is not the best measure of kidney function itself.
• Sodium levels — Sodium reflects water balance, not kidney filtration.

⭐ Key point: Creatinine rises LATE (24–48 hours after injury). Falling urine output is often the EARLIEST sign of AKI, so measure it hourly.$x$, null),
(79, $x$A patient with hyperkalemia has peaked T waves. After calcium gluconate, which drug shifts potassium intracellularly?$x$, $x$Albuterol$x$, $x$✅ Correct answer: Albuterol
After calcium gluconate protects the heart, the next step is to SHIFT potassium from the blood into the cells. Albuterol (salbutamol), a beta-2 agonist, does this by stimulating the sodium-potassium pump, lowering K⁺ by about 0.5–1 mmol/L within 30 minutes. It is given by nebuliser (10–20 mg). Insulin with glucose works the same way and is the most reliable shifting drug.

❌ Why the other options are wrong:
• Sodium polystyrene — Sodium polystyrene (Kayexalate/calcium resonium) REMOVES potassium through the gut, slowly (hours); it doesn't shift it.
• Furosemide — Furosemide REMOVES potassium in the urine; it doesn't shift it into cells.
• Fludrocortisone — Fludrocortisone increases potassium loss over days; it is not used acutely.

⭐ Key point: Order for high potassium: 1) PROTECT the heart (calcium gluconate 10%), 2) SHIFT K⁺ into cells (insulin and glucose, salbutamol), 3) REMOVE K⁺ (dialysis, resins, diuretics).$x$, null),
(80, $x$In Arteriovenous fistula:$x$, $x$There is mixture of arterial and venous blood$x$, $x$✅ Correct answer: There is mixture of arterial and venous blood
An arteriovenous (AV) fistula is a surgical joining of an ARTERY directly to a VEIN, usually in the forearm (radial artery to cephalic vein). Arterial blood at high pressure flows straight into the vein, so the vein contains a mixture of arterial and venous blood. The vein enlarges and its wall thickens ("matures" over 6–12 weeks), so it can be needled for haemodialysis.

❌ Why the other options are wrong:
• There is mixture of arterial blood — It is not only arterial blood; the blood goes into a vein.
• There is mixture of venous blood — It is not only venous blood; arterial blood enters the vein directly.
• There is mixture of artery and capillary blood — Capillaries are bypassed in a fistula; there is no artery–capillary mixing.

⭐ Key point: Fistula care: feel for the THRILL (buzz) and listen for the BRUIT (whoosh) daily. Never take BP, put a cannula in, or take blood from the fistula arm.$x$, null),
(81, $x$A hemodialysis patient develops sudden hypotension, nausea, headache, and confusion approximately 3 hours into a first dialysis session. This presentation is most consistent with:$x$, $x$Dialysis disequilibrium syndrome$x$, $x$✅ Correct answer: Dialysis disequilibrium syndrome
Dialysis disequilibrium syndrome happens during or just after the FIRST dialysis sessions, especially when urea is very high and is removed too quickly. Urea falls fast in the blood but slowly in the brain, so water moves INTO brain cells (cerebral oedema). Signs: headache, nausea, vomiting, restlessness, confusion, hypotension, seizures, even coma. Prevent it with short, slow first sessions (low blood flow) and a gradual urea reduction.

❌ Why the other options are wrong:
• Anaphylaxis to the dialyzer membrane — Dialyser anaphylaxis happens within MINUTES of starting, with wheeze, urticaria and itching.
• Air embolism — Air embolism causes sudden breathlessness, chest pain and collapse, not slowly developing headache and confusion.
• Hyperkalemic cardiac arrest — Hyperkalaemia improves during dialysis (K⁺ is removed), so cardiac arrest from high K⁺ is unlikely 3 hours in.

⭐ Key point: Treat by slowing or stopping dialysis and giving osmotic agents (mannitol or hypertonic saline) if severe. Monitor neuro status during first sessions.$x$, null),
(82, $x$Hypothermia is a common complication of CRRT because:$x$, $x$Extracorporeal blood is exposed to room-temperature tubing, filters, and replacement fluids, causing heat loss$x$, $x$✅ Correct answer: Extracorporeal blood is exposed to room-temperature tubing, filters, and replacement fluids, causing heat loss
In CRRT, blood leaves the body and runs through long tubing and a filter at room temperature, and large volumes of replacement fluid or dialysate (often several litres per hour) are added. The blood loses heat outside the body and on mixing with cooler fluid, so the patient's temperature falls. Hypothermia can also HIDE a fever, so infection may be missed.

❌ Why the other options are wrong:
• CRRT machines actively cool the blood intentionally at all times — CRRT machines do not deliberately cool the blood.
• Patients are typically febrile at baseline — Patients may or may not have fever; this does not explain the cooling.
• The dialysate is always heated above body temperature — Dialysate is warmed TO body temperature (not above it) to reduce heat loss.

⭐ Key point: Prevent CRRT hypothermia with the fluid warmer and blankets or forced-air warmers. Monitor temperature hourly, and remember a normal temperature on CRRT does not rule out infection.$x$, null),
(83, $x$A patient opens their eyes only to painful stimuli, makes incomprehensible sounds, and withdraws from pain. What is the calculated GCS score?$x$, $x$8$x$, $x$✅ Correct answer: 8
Add up the three parts of the GCS. EYES open only to pain = E2. VERBAL: incomprehensible sounds (moaning, groaning, no words) = V2. MOTOR: withdraws from pain (pulls the limb away) = M4. Total = 2 + 2 + 4 = 8. A GCS of 8 is a severe brain injury, and the airway may need protection.

❌ Why the other options are wrong:
• 6 — 6 would mean a lower motor or verbal score (for example abnormal flexion, M3).
• 10 — 10 would need higher scores, such as confused words (V4) or localising pain (M5).
• 12 — 12 would need much better scores, such as eyes opening to voice and localising pain.

⭐ Key point: GCS: Eyes 1–4, Verbal 1–5, Motor 1–6 (total 3–15). Motor: 6 obeys, 5 localises, 4 withdraws, 3 abnormal flexion (decorticate), 2 extension (decerebrate), 1 none.$x$, null),
(84, $x$A GCS below what value is generally used as an indication for intubation?$x$, $x$<8$x$, $x$✅ Correct answer: <8
A GCS of 8 or less is the general sign that the patient cannot protect their own airway. The tongue may fall back and block the airway, the gag and cough reflexes are weak, and the patient may aspirate vomit. Intubation protects the airway, prevents aspiration, and allows control of oxygen and CO₂ (important in head injury). Say "GCS less than 8, intubate".

❌ Why the other options are wrong:
• <12 — Below 12 is moderate impairment; many patients can still protect their airway.
• <10 — Below 10 is too high a threshold for routine intubation.
• <5 — Below 5 is too low; waiting this long risks aspiration and hypoxic brain damage.

⭐ Key point: Also intubate for a rapidly falling GCS, poor oxygenation or ventilation, seizures that can't be controlled, or before transfer of a deteriorating head-injured patient.$x$, null),
(85, $x$The following statement regarding extradural haematoma are true EXCEPT$x$, $x$Prognosis is poor$x$, $x$✅ Correct answer: Prognosis is poor
The question asks which statement is NOT true. Extradural haematoma usually has a GOOD prognosis if it is found and drained quickly, because the brain beneath is often not badly damaged. The statement "prognosis is poor" is therefore false. Delay is what makes it fatal.

❌ Why the other options are wrong:
• It is often caused by a skull fracture with laceration of the middle meningeal artery — It IS usually caused by a skull fracture tearing the middle meningeal artery (true).
• It commonly occurs at the pterion — It DOES commonly occur at the pterion, the thin part of the temporal skull (true).
• There is often a lucid interval — There IS often a lucid interval: knocked out, wakes up and talks, then quickly deteriorates (true).

⭐ Key point: Extradural = arterial bleed, lens-shaped (biconvex) on CT, lucid interval, emergency surgery. Subdural = venous bleed, crescent-shaped, often in elderly and alcoholics.$x$, null),
(86, $x$Cushing's triad, a late sign of rising intracranial pressure, consists of which three findings?$x$, $x$Hypertension with widened pulse pressure, bradycardia, and irregular respirations$x$, $x$✅ Correct answer: Hypertension with widened pulse pressure, bradycardia, and irregular respirations
Cushing's triad is a LATE sign of raised ICP and approaching brainstem herniation. 1) HYPERTENSION with a WIDE pulse pressure: the body raises BP to push blood into the brain against high pressure. 2) BRADYCARDIA: a reflex response to the high BP and brainstem compression. 3) IRREGULAR breathing (Cheyne–Stokes, apnoea): compression of the breathing centre in the brainstem.

❌ Why the other options are wrong:
• Hypotension, tachycardia, and tachypnea — Low BP, fast pulse and fast breathing describe SHOCK, not raised ICP.
• Hypertension with tachycardia and hyperthermia — High BP with fast pulse and fever does not fit; the pulse is SLOW in Cushing's triad.
• Hypotension, bradycardia, and apnea — Low BP, slow pulse and apnoea is a pre-terminal picture, not Cushing's triad.

⭐ Key point: Cushing's triad means herniation is near. Call for help at once and prepare for urgent ICP-lowering treatment (osmotherapy, neurosurgery).$x$, null),
(87, $x$The Kellie-Monro (Monro-Kellie) Doctrine states which of the following?$x$, $x$The skull is a rigid, non-expansile compartment; an increase in volume of one intracranial component requires a reciprocal decrease in another to keep ICP constant$x$, $x$✅ Correct answer: The skull is a rigid, non-expansile compartment; an increase in volume of one intracranial component requires a reciprocal decrease in another to keep ICP constant
The Monro–Kellie doctrine says the skull is a rigid, closed box containing three things: brain (about 80%), blood (about 10%) and CSF (about 10%). The total volume must stay constant. If one part increases (a tumour, a bleed, swelling), another must decrease, for example CSF is pushed into the spinal canal or venous blood leaves. When these compensations run out, ICP rises steeply.

❌ Why the other options are wrong:
• The brain can expand infinitely without pressure changes — The brain cannot expand freely inside the rigid skull.
• CSF volume is fixed and cannot change — CSF volume does change; displacing CSF is the first compensation.
• Cerebral blood flow is independent of ICP — Cerebral blood flow depends on CPP (MAP − ICP), so it is not independent of ICP.

⭐ Key point: The ICP volume–pressure curve is flat at first, then steep. Once compensation is used up, a small extra volume (coughing, suction) causes a big rise in ICP.$x$, null),
(88, $x$Signs of raised intracranial pressure include all of the following EXCEPT:$x$, $x$Loss of hearing$x$, $x$✅ Correct answer: Loss of hearing
The question asks for the sign that does NOT belong. Loss of hearing is not a sign of raised ICP. Raised ICP classically causes headache that is worse in the morning (CO₂ rises during sleep and on lying down), nausea and vomiting (often projectile), papilloedema (swollen optic discs), visual changes, a falling GCS, pupil changes and Cushing's triad late.

❌ Why the other options are wrong:
• Early-morning headache — Early-morning headache IS a classic sign of raised ICP.
• Nausea and vomiting — Nausea and vomiting ARE classic signs of raised ICP.
• Papilloedema — Papilloedema IS a classic sign of raised ICP.

⭐ Key point: The EARLIEST and most sensitive sign of raised ICP is a change in the level of consciousness (restlessness, confusion, drowsiness).$x$, null),
(89, $x$The signs of an upper motor neuron lesion include all of the following EXCEPT:$x$, $x$Fibrillations$x$, $x$✅ Correct answer: Fibrillations
The question asks for the sign that does NOT belong. Fibrillations (tiny spontaneous twitches of single muscle fibres, seen on EMG) and fasciculations are signs of a LOWER motor neurone lesion, not an upper one. Upper motor neurone lesions (brain or spinal cord: stroke, MS, spinal injury) cause spasticity, increased (brisk) reflexes, clonus and a positive Babinski sign, with little muscle wasting.

❌ Why the other options are wrong:
• Muscular spasticity — Spasticity IS an upper motor neurone sign.
• Brisk deep tendon reflexes — Brisk deep tendon reflexes ARE an upper motor neurone sign.
• Positive Babinski response — A positive Babinski sign (big toe goes up) IS an upper motor neurone sign.

⭐ Key point: UMN = spastic, brisk reflexes, upgoing toe. LMN = floppy (flaccid), lost reflexes, wasting, fasciculations and fibrillations (as in GBS, polio and peripheral nerve injury).$x$, null),
(90, $x$A Licox brain tissue oxygen monitor measures which of the following?$x$, $x$Brain tissue oxygen tension (PbtO2)$x$, $x$✅ Correct answer: Brain tissue oxygen tension (PbtO2)
The Licox probe is placed in the brain tissue (white matter) and measures the partial pressure of oxygen there (PbtO₂), and also brain temperature. It shows whether the brain is getting enough oxygen. Normal PbtO₂ is about 20–35 mmHg; below 20 needs treatment and below 10–15 means serious brain hypoxia with a poor outcome.

❌ Why the other options are wrong:
• Intracranial pressure only — ICP is measured by a separate probe or an EVD; Licox measures oxygen.
• Cerebral blood flow velocity — Cerebral blood flow velocity is measured by transcranial Doppler.
• Serum oxygen saturation — Serum (arterial) oxygen saturation is measured by an ABG or pulse oximeter.

⭐ Key point: To improve low PbtO₂: raise FiO₂, raise CPP (MAP), treat high ICP, correct anaemia, avoid hyperventilation (low CO₂), and treat fever and seizures.$x$, null),
(91, $x$Causes of Brain death are EXCEPT$x$, $x$Good brain oxygenation.$x$, $x$✅ Correct answer: Good brain oxygenation.
The question asks which is NOT a cause of brain death. Good brain oxygenation keeps brain cells alive; it is the opposite of what causes brain death. Brain death happens when the whole brain, including the brainstem, is irreversibly destroyed, usually by severe injury, swelling or loss of blood and oxygen supply.

❌ Why the other options are wrong:
• An acute catastrophic brain injury. — An acute catastrophic brain injury (trauma, a huge bleed) IS a cause.
• Abrupt loss of cerebral perfusion — Abrupt loss of cerebral perfusion (very high ICP stopping blood flow) IS a cause.
• Extracranial brain injury, as seen in patients following cardiopulmonary arrest — Brain injury from outside the skull, such as lack of oxygen after cardiac arrest (hypoxic-ischaemic injury), IS a cause.

⭐ Key point: Before testing for brain death, exclude reversible causes: sedative drugs, hypothermia, severe metabolic or endocrine problems, and neuromuscular blockers.$x$, null),
(92, $x$Brudzinski's sign is positive when which of the following occurs?$x$, $x$Involuntary flexion of the hips and knees when the examiner passively flexes the patient's neck$x$, $x$✅ Correct answer: Involuntary flexion of the hips and knees when the examiner passively flexes the patient's neck
Brudzinski's sign tests for meningeal irritation (meningitis, subarachnoid haemorrhage). With the patient lying flat, the examiner gently bends the patient's head forward toward the chest. If the patient's hips and knees bend up on their own (involuntarily), the sign is positive. Bending the neck stretches the inflamed meninges, and the body bends the legs to reduce the stretch.

❌ Why the other options are wrong:
• Pain on hip flexion with knee extension — Pain on hip flexion with the knee straight describes a different test (Kernig's sign checks pain or resistance when straightening the knee with the hip bent).
• Dilation of the pupils with light exposure — Pupils dilating with light is abnormal but has nothing to do with Brudzinski's sign (pupils normally constrict).
• Rigid extension of the leg — A rigid straight leg is not the Brudzinski response.

⭐ Key point: Meningitis signs: neck stiffness, photophobia, fever, headache, Kernig's and Brudzinski's signs, and a purpuric rash in meningococcal disease. Give antibiotics without delay and use droplet precautions.$x$, null),
(93, $x$What is the recommended treatment for a patient with Guillain-Barré syndrome?$x$, $x$Plasmapheresis or immunoglobulin therapy$x$, $x$✅ Correct answer: Plasmapheresis or immunoglobulin therapy
Guillain–Barré syndrome is an autoimmune attack on peripheral nerves, often after an infection. Proven treatments that shorten the illness and improve recovery are PLASMA EXCHANGE (plasmapheresis, which removes the harmful antibodies) or IV IMMUNOGLOBULIN (IVIG, 0.4 g/kg/day for 5 days). Both work equally well; they are not given together. Supportive ICU care (breathing, autonomic monitoring, DVT prevention, pain control, nutrition) is essential.

❌ Why the other options are wrong:
• Antibiotics — Antibiotics do not treat the immune nerve damage (the triggering infection has usually passed).
• Hospitalization for observation — Observation alone is not enough for significant weakness; specific treatment should start early.
• No treatment is required — GBS can paralyse the breathing muscles, so leaving it untreated is dangerous.

⭐ Key point: Steroids do NOT help GBS. Monitor FVC every 4 hours: below 20 mL/kg needs ICU; below 15 mL/kg usually needs intubation.$x$, null),
(94, $x$What are common initial presenting symptoms of Myasthenia Gravis?$x$, $x$Ptosis and diplopia$x$, $x$✅ Correct answer: Ptosis and diplopia
Myasthenia gravis is an autoimmune disease in which antibodies block the acetylcholine receptors at the neuromuscular junction. Muscles tire quickly with use and recover with rest. The EYE muscles are usually affected first: drooping eyelids (PTOSIS) and double vision (DIPLOPIA) are the commonest first symptoms (in about 2 out of 3 patients). Weakness is typically worse at the end of the day.

❌ Why the other options are wrong:
• Foot drop — Foot drop is more typical of a peripheral nerve problem (such as common peroneal nerve palsy).
• Urinary retention — Urinary retention is not a feature of myasthenia (smooth muscle is spared).
• Severe headache — Severe headache is not a feature of myasthenia.

⭐ Key point: In a myasthenic crisis (breathing or swallowing failure), monitor FVC, protect the airway, and give IVIG or plasma exchange. Avoid aminoglycosides and magnesium.$x$, null),
(95, $x$A tetanus patient should ideally be nursed in an environment that is:$x$, $x$Quiet and dark, avoiding unnecessary stimulation$x$, $x$✅ Correct answer: Quiet and dark, avoiding unnecessary stimulation
In tetanus, the toxin (tetanospasmin) blocks the nerves that normally relax muscles. Any stimulus — noise, light, touch, even a draught — can trigger painful, violent muscle spasms, including laryngospasm, which can stop breathing. The patient is therefore nursed in a QUIET, DARK (dim) room, with minimal handling and procedures grouped together, usually with sedation.

❌ Why the other options are wrong:
• Bright and stimulating — A bright, stimulating environment would trigger spasms.
• Noisy, for constant communication — Noise triggers spasms and must be avoided.
• Cold, to reduce metabolic rate — Cold can trigger spasms and does not help; temperature should be kept comfortable.

⭐ Key point: Tetanus treatment: wound debridement, tetanus immunoglobulin, metronidazole, benzodiazepines and magnesium for spasms, ventilation if needed, and the tetanus vaccine (the illness does not give immunity).$x$, null),
(96, $x$What is the first-line pharmacologic treatment for status epilepticus?$x$, $x$IV benzodiazepine (e.g., lorazepam)$x$, $x$✅ Correct answer: IV benzodiazepine (e.g., lorazepam)
Status epilepticus (a seizure lasting more than 5 minutes, or repeated seizures without recovery) is a medical emergency. The FIRST-line drug is an IV BENZODIAZEPINE, for example lorazepam 4 mg IV, which can be repeated once after 5–10 minutes. Alternatives without IV access: buccal midazolam or rectal diazepam. Benzodiazepines boost the calming GABA system and stop most seizures quickly.

❌ Why the other options are wrong:
• Oral phenytoin — Oral phenytoin is too slow; phenytoin (or levetiracetam or valproate) is given IV as SECOND-line.
• IV mannitol — Mannitol lowers ICP but does not stop seizures.
• IV vancomycin — Vancomycin is an antibiotic; it might be used for meningitis but does not stop seizures.

⭐ Key point: The steps are: ABC, oxygen, check glucose (give dextrose if low), benzodiazepine, then a second-line IV drug, then anaesthesia (propofol or thiopentone) with intubation if seizures continue past 20–30 minutes.$x$, null),
(97, $x$Which sedative agent is preferred over benzodiazepines in mechanically ventilated ICU patients, in part due to its lower associated delirium risk?$x$, $x$Dexmedetomidine$x$, $x$✅ Correct answer: Dexmedetomidine
Dexmedetomidine is an alpha-2 agonist that gives light, rousable sedation: the patient is calm but can wake and follow commands. It does not depress breathing. Studies show less delirium and shorter ventilation than with benzodiazepines (MENDS, SEDCOM). Guidelines prefer propofol or dexmedetomidine over benzodiazepines for ventilated ICU patients.

❌ Why the other options are wrong:
• Lorazepam — Lorazepam is a benzodiazepine that increases delirium.
• Midazolam — Midazolam is a benzodiazepine that builds up (especially in kidney failure) and increases delirium.
• Diazepam — Diazepam is a long-acting benzodiazepine that also increases delirium.

⭐ Key point: Dexmedetomidine side effects are bradycardia and hypotension. Benzodiazepines are mainly used for seizures and alcohol withdrawal.$x$, null),
(98, $x$Non-pharmacological management of delirium focuses on risk factors such as:$x$, $x$All of the above$x$, $x$✅ Correct answer: All of the above
Delirium usually has several causes at once, so non-drug prevention tackles all the risk factors together. That includes treating dehydration and constipation, protecting sleep (night-time quiet, dim lights, clustered care), reorienting the patient (clock, calendar, glasses, hearing aids, family), communicating clearly, early mobilisation, good pain control, adequate nutrition, and removing catheters and lines early. All the groups listed are correct.

❌ Why the other options are wrong:
• Dehydration, constipation and sleep deprivation — This group is part of the answer but not all of it.
• Reorientation, clear communication and immobility — This group is part of the answer but not all of it.
• Pain control, nutrition and early removal of catheters — This group is part of the answer but not all of it.

⭐ Key point: A useful memory aid for the causes of delirium is "PINCH ME": Pain, Infection, Nutrition, Constipation, Hydration, Medication, Environment. Screen every shift with CAM-ICU.$x$, null),
(99, $x$How is TENS distinguished from Stevens-Johnson Syndrome (SJS)?$x$, $x$Percentage of body surface area with epidermal detachment (TEN greater than 30%, SJS less than 10%)$x$, $x$✅ Correct answer: Percentage of body surface area with epidermal detachment (TEN greater than 30%, SJS less than 10%)
SJS and TEN are the same disease at different severities, so the difference is the PERCENTAGE of body surface area where the epidermis peels off. SJS is less than 10%, the SJS/TEN overlap is 10–30%, and TEN is more than 30%. Both are usually drug-induced, with fever, painful skin, mucosal ulcers (mouth, eyes, genitals) and a positive Nikolsky sign. TEN has a much higher death rate.

❌ Why the other options are wrong:
• Causative organism — The causative agent is usually the same type (drugs such as carbamazepine, phenytoin, allopurinol, sulphonamides, nevirapine), so it doesn't separate them.
• Patient age only — Both can occur at any age.
• Presence of fever — Fever occurs in both, so it doesn't distinguish them.

⭐ Key point: Stop the causing drug immediately. Manage like a major burn: warm room, fluids, non-stick dressings, eye and mouth care, nutrition and pain relief, ideally in a burns unit or ICU.$x$, null),
(100, $x$How is Toxic Epidermal Necrolysis Syndrome (TENS) best classified?$x$, $x$A severe, life-threatening mucocutaneous drug reaction with widespread epidermal detachment$x$, $x$✅ Correct answer: A severe, life-threatening mucocutaneous drug reaction with widespread epidermal detachment
Toxic epidermal necrolysis (TEN) is a severe, life-threatening drug reaction that affects the skin AND mucous membranes. The top layer of skin (epidermis) dies and peels off in sheets over more than 30% of the body, leaving raw areas like a scald burn. The patient loses fluid, protein and heat, and is at high risk of infection and sepsis. The death rate is 25–35% or more.

❌ Why the other options are wrong:
• A viral exanthem — It is not a viral rash (exanthem), although infections can occasionally trigger it.
• A bacterial skin infection — It is not a bacterial skin infection; it is an immune reaction to a drug.
• A chronic autoimmune skin condition unrelated to medications — It is an acute reaction, usually caused by a medication, not a chronic autoimmune disease.

⭐ Key point: Use the SCORTEN score to predict death risk. Care includes barrier nursing, warming, fluids, eye care by an ophthalmologist, and stopping all non-essential drugs.$x$, null)
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
