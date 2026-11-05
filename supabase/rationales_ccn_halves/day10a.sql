-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 10, part A (questions 1–100)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$On a pulmonary artery catheter, which reading confirms pulmonary arterial hypertension rather than left heart disease?$x$, $x$Mean PAP 40 mmHg with a wedge pressure of 10 mmHg$x$, $x$✅ Correct answer: Mean PAP 40 mmHg with a wedge pressure of 10 mmHg
Pulmonary hypertension (PH) means a mean pulmonary artery pressure (mPAP) above about 20–25 mmHg. The WEDGE pressure (PAWP) tells you where the problem is. In PULMONARY ARTERIAL (pre-capillary) hypertension, the lung arteries themselves are narrowed, so mPAP is HIGH but the wedge (left atrial) pressure is NORMAL (15 or below). Mean PAP 40 with wedge 10 fits this.

❌ Why the other options are wrong:
• Mean PAP 18 mmHg with a wedge pressure of 8 mmHg — mPAP 18 with wedge 8 is normal; there is no pulmonary hypertension.
• Mean PAP 40 mmHg with a wedge pressure of 28 mmHg — mPAP 40 with wedge 28 is PH caused by LEFT heart disease (post-capillary): the high wedge shows pressure backing up from the left heart.
• Mean PAP 12 mmHg with a high cardiac output and wedge 6 — mPAP 12 is normal.

⭐ Key point: Pre-capillary PH: high mPAP + normal wedge. Post-capillary PH (left heart failure, mitral disease): high mPAP + high wedge (above 15).$x$, null),
(2, $x$The ECG of a patient with long-standing pulmonary hypertension commonly shows:$x$, $x$Right axis deviation, P pulmonale and RV strain$x$, $x$✅ Correct answer: Right axis deviation, P pulmonale and RV strain
Long-standing pulmonary hypertension makes the RIGHT ventricle thicken (hypertrophy) and the right atrium enlarge. The ECG shows RIGHT AXIS DEVIATION, a tall peaked P wave in lead II (P PULMONALE, from a big right atrium), a dominant R wave in V1, and RV STRAIN (T-wave inversion in V1–V3).

❌ Why the other options are wrong:
• Left axis deviation with tall R waves in V5–V6 — Left axis deviation with tall R waves in V5–V6 suggests LEFT ventricular hypertrophy.
• ST elevation in V1–V4 with deep Q waves — ST elevation with Q waves suggests an MI.
• A short PR interval with delta waves — A short PR with delta waves suggests Wolff–Parkinson–White syndrome.

⭐ Key point: An echocardiogram estimates PA pressure and RV function. A right heart catheter confirms PH.$x$, null),
(3, $x$Which drug should be avoided in severe pulmonary hypertension because it can precipitate RV collapse at induction?$x$, $x$A large propofol bolus causing sudden systemic hypotension$x$, $x$✅ Correct answer: A large propofol bolus causing sudden systemic hypotension
In severe pulmonary hypertension, the RV depends on good coronary blood flow, which needs an adequate systemic BP. A LARGE PROPOFOL BOLUS causes sudden SYSTEMIC HYPOTENSION. The RV, already working against high lung pressure, loses its own blood supply, fails, and collapses, causing cardiac arrest at induction.

❌ Why the other options are wrong:
• A low-dose dobutamine infusion started beforehand — Low-dose dobutamine supports RV contraction and is HELPFUL.
• Small titrated doses of noradrenaline before induction — Titrated noradrenaline keeps systemic BP up and is HELPFUL.
• Inhaled nitric oxide given through the ventilator — Inhaled nitric oxide relaxes the lung vessels and is HELPFUL.

⭐ Key point: In PH, avoid things that raise lung pressures (hypoxia, high CO₂, acidosis, pain) or drop systemic BP. Induce carefully, with vasopressors ready.$x$, null),
(4, $x$For an ICU patient with acute RV failure from pulmonary embolism, the nurse anticipates:$x$, $x$Noradrenaline for coronary perfusion; avoid large fluid boluses$x$, $x$✅ Correct answer: Noradrenaline for coronary perfusion; avoid large fluid boluses
In acute RV failure from PE, the RV is overloaded and dilated. NORADRENALINE raises systemic BP, which improves blood flow to the RV's own coronary arteries. Large fluid boluses OVERDILATE the RV, pushing the septum into the left ventricle (septal shift) and reducing LV filling and output. Give only small, cautious fluid boluses.

❌ Why the other options are wrong:
• IV furosemide as the first-line treatment of RV failure — Furosemide isn't first-line in acute shocked RV failure; it may drop BP.
• High PEEP with large tidal volumes to recruit the lungs — High PEEP and large tidal volumes raise lung pressure and RV afterload.
• A rapid 2-litre fluid bolus to increase the RV preload — A 2-litre bolus would overdistend the RV and worsen shock.

⭐ Key point: Massive PE with shock: thrombolysis (or embolectomy), noradrenaline, oxygen, and avoiding intubation if possible (positive pressure can cause collapse).$x$, null),
(5, $x$A haemopneumothorax should be managed with:$x$, $x$A large-bore drain in the safe triangle on an underwater seal$x$, $x$✅ Correct answer: A large-bore drain in the safe triangle on an underwater seal
A haemopneumothorax contains both blood and air. Blood can clot and block small tubes, so a LARGE-BORE chest drain (usually 28–32 Fr in trauma) is inserted in the SAFE TRIANGLE (4th–5th intercostal space, mid-axillary line) and connected to an UNDERWATER SEAL, allowing both blood and air to drain.

❌ Why the other options are wrong:
• Needle aspiration only, repeated daily until the chest is dry — Needle aspiration won't drain blood effectively.
• A small pigtail catheter for air only, kept clamped between checks — A small pigtail catheter blocks with blood, and drains should not be kept clamped.
• Observation with high-flow oxygen therapy and a repeat X-ray — Observation alone is unsafe; blood and air need draining.

⭐ Key point: Record the initial blood volume drained. Above 1500 mL, or above 200 mL/hour for 2–4 hours, suggests the need for surgery.$x$, null),
(6, $x$The 'safe triangle' for chest drain insertion is bounded by:$x$, $x$Pectoralis major, latissimus dorsi and the 5th intercostal space$x$, $x$✅ Correct answer: Pectoralis major, latissimus dorsi and the 5th intercostal space
The SAFE TRIANGLE for chest drain insertion is bounded by the lateral edge of PECTORALIS MAJOR (in front), the lateral edge of LATISSIMUS DORSI (behind), and a line at the 5TH INTERCOSTAL SPACE (nipple level) below, with the apex at the armpit. This avoids major vessels, the heart, and the liver and spleen.

❌ Why the other options are wrong:
• Scapula, vertebral column and the 12th rib at the back — The scapula and vertebral column area is at the back and isn't the safe triangle.
• Sternum, clavicle and the 2nd rib at the front of the chest — The sternum, clavicle and 2nd rib area risks the internal mammary vessels and great vessels.
• Umbilicus, iliac crest and the costal margin below — The umbilicus and iliac crest are in the abdomen.

⭐ Key point: Insert the drain over the top of the rib (the intercostal vessels and nerve run along the bottom of each rib).$x$, null),
(7, $x$Among renal transplant types, the best expected outcome is generally seen with:$x$, $x$Living-related donation$x$, $x$✅ Correct answer: Living-related donation
LIVING-RELATED donation (from a family member such as a parent or sibling) usually gives the best kidney transplant outcomes. The genetic match is closer (fewer rejection episodes), the kidney is healthy and taken from a healthy donor, the operation can be planned, and the kidney spends little time outside the body.

❌ Why the other options are wrong:
• Cadaveric donation — Cadaveric (deceased donor) kidneys have longer storage time and more delayed function.
• Living non-related donation — Living unrelated donors do well, but usually have a poorer genetic match than related donors.
• All types have identical outcomes — Outcomes differ between donor types.

⭐ Key point: All transplant recipients need lifelong immunosuppression and monitoring for rejection and infection.$x$, null),
(8, $x$The standard triple immunosuppression regimen after renal transplant includes:$x$, $x$Tacrolimus or ciclosporin + mycophenolate or azathioprine + prednisolone$x$, $x$✅ Correct answer: Tacrolimus or ciclosporin + mycophenolate or azathioprine + prednisolone
Standard TRIPLE immunosuppression after kidney transplant: 1) a CALCINEURIN INHIBITOR (tacrolimus or ciclosporin), which blocks T-cell activation; 2) an ANTI-PROLIFERATIVE drug (mycophenolate or azathioprine), which stops immune cells multiplying; 3) a STEROID (prednisolone), which broadly reduces inflammation. Using three drugs at lower doses gives good protection with fewer side effects.

❌ Why the other options are wrong:
• Aspirin + clopidogrel + warfarin to prevent graft vessel thrombosis — Aspirin, clopidogrel and warfarin are anti-clotting drugs, not immunosuppressants.
• Prednisolone alone in high dose for the first year after surgery — High-dose prednisolone alone causes severe side effects and isn't enough.
• Insulin + metformin + glipizide to control the post-transplant glucose — Insulin, metformin and glipizide are diabetes drugs.

⭐ Key point: Watch for infection, high BP, high glucose, kidney toxicity (tacrolimus), and drug interactions.$x$, null),
(9, $x$Which of the following is an absolute contraindication to renal transplant?$x$, $x$Active uncontrolled infection$x$, $x$✅ Correct answer: Active uncontrolled infection
Transplant requires strong immunosuppression, which would make an ACTIVE, UNCONTROLLED INFECTION spread and become life-threatening. It is an absolute contraindication until the infection is treated. Other absolute contraindications include active cancer and very short life expectancy.

❌ Why the other options are wrong:
• Well-controlled hypertension — Well-controlled hypertension isn't a contraindication.
• Mild anaemia — Mild anaemia isn't a contraindication.
• Age over 60 with good health — Age over 60 in good health isn't a contraindication.

⭐ Key point: Screen transplant candidates for infections (TB, hepatitis B and C, HIV) and cancer before surgery.$x$, null),
(10, $x$In the first 24 hours after renal transplant, urine output of 600 mL/hour should be:$x$, $x$Replaced hour-by-hour with IV fluid$x$, $x$✅ Correct answer: Replaced hour-by-hour with IV fluid
After kidney transplant, the new kidney may pass very large volumes of urine (post-transplant diuresis), sometimes 500–1000 mL per hour. If not replaced, the patient becomes dehydrated, and the new kidney is under-perfused and damaged. The usual practice is to REPLACE the urine output hour by hour with IV fluid (such as "urine output plus 30 mL/hour").

❌ Why the other options are wrong:
• Restricted by stopping all IV fluids — Restricting fluids would cause dehydration and harm the graft.
• Treated with IV furosemide to promote diuresis — Furosemide would worsen fluid loss.
• Ignored, as it will settle by itself — Ignoring it risks dehydration and electrolyte problems.

⭐ Key point: Monitor urine output hourly, and check potassium, sodium, magnesium and glucose frequently.$x$, null),
(11, $x$A transplant recipient on immunosuppression develops a fever of 38.4 °C. The nurse should:$x$, $x$Treat as possible infection or rejection and inform the team at once$x$, $x$✅ Correct answer: Treat as possible infection or rejection and inform the team at once
A transplant recipient on immunosuppression may not show the usual signs of infection or rejection. A fever of 38.4 °C could mean a serious INFECTION (bacterial, CMV, fungal) or ACUTE REJECTION. Treat it as potentially serious and INFORM the team AT ONCE for cultures, blood tests, and assessment of graft function.

❌ Why the other options are wrong:
• Stop all immunosuppressant drugs without waiting for orders — Stopping immunosuppressants without orders can trigger rejection.
• Give paracetamol and review again at the next day's ward round — Waiting until the next day could allow sepsis or rejection to progress.
• Assume it is a normal post-operative fever and observe only — Assuming a normal fever is dangerous in immunosuppressed patients.

⭐ Key point: Infections in transplant patients can progress quickly. Have a low threshold for early treatment.$x$, null),
(12, $x$Therapeutic plasma exchange, or plasmapheresis, works by:$x$, $x$Removing plasma containing harmful antibodies and replacing it$x$, $x$✅ Correct answer: Removing plasma containing harmful antibodies and replacing it
In THERAPEUTIC PLASMA EXCHANGE (plasmapheresis), blood is taken out, the PLASMA (containing HARMFUL ANTIBODIES, immune complexes or toxins) is separated and REMOVED, and REPLACED with albumin or FFP, then the blood cells are returned to the patient.

❌ Why the other options are wrong:
• Adding concentrated red blood cells to the circulation — Adding red cells is a transfusion, not plasma exchange.
• Diffusing small solutes only, exactly like haemodialysis — Haemodialysis removes small solutes by diffusion; plasma exchange removes large molecules (antibodies).
• Removing only white blood cells from the circulation — Removing only white cells is leukapheresis.

⭐ Key point: Uses: GBS, myasthenic crisis, TTP, Goodpasture's syndrome, and severe autoimmune conditions.$x$, null),
(13, $x$Before therapeutic plasma exchange, the nurse checks that the patient has:$x$, $x$Good vascular access, and baseline calcium, clotting and vital signs$x$, $x$✅ Correct answer: Good vascular access, and baseline calcium, clotting and vital signs
Before plasma exchange, the patient needs GOOD VASCULAR ACCESS (a large-bore dialysis-type catheter, because high blood flow is needed) and BASELINE CALCIUM, CLOTTING tests and VITAL SIGNS. Exchange removes clotting factors (bleeding risk), and the citrate anticoagulant binds calcium (causing hypocalcaemia, tingling and cramps).

❌ Why the other options are wrong:
• A full stomach to prevent hypoglycaemia during the exchange — A full stomach isn't needed.
• Had all IV access removed to reduce the risk of infection — IV access is ESSENTIAL; it shouldn't be removed.
• Had their usual antihypertensive doses doubled that morning — Antihypertensives are often HELD (plasma exchange can cause hypotension).

⭐ Key point: During exchange, watch for low calcium (tingling around the mouth), low BP, allergic reactions (to FFP), and bleeding.$x$, null),
(14, $x$Plasma exchange is a recognised treatment for:$x$, $x$Myasthenic crisis and Guillain-Barré syndrome$x$, $x$✅ Correct answer: Myasthenic crisis and Guillain-Barré syndrome
Plasma exchange removes harmful ANTIBODIES. It is a recognised treatment for MYASTHENIC CRISIS (antibodies against acetylcholine receptors) and GUILLAIN–BARRÉ SYNDROME (antibodies attacking nerves). Other uses include TTP, Goodpasture's syndrome, and some vasculitides.

❌ Why the other options are wrong:
• Uncomplicated essential hypertension — Essential hypertension isn't treated with plasma exchange.
• Simple urinary tract infection with fever — A simple UTI is treated with antibiotics.
• Iron-deficiency anaemia in pregnancy — Iron deficiency anaemia is treated with iron.

⭐ Key point: In GBS, plasma exchange and IVIG work equally well; they aren't usually combined.$x$, null),
(15, $x$Highly protein-bound drugs given just before plasma exchange are likely to:$x$, $x$Be removed with the plasma, reducing their effect$x$, $x$✅ Correct answer: Be removed with the plasma, reducing their effect
Drugs that are highly PROTEIN-BOUND travel in the plasma attached to albumin. When the plasma is removed during exchange, these drugs are REMOVED too, reducing their effect. Give such drugs (some antibiotics, anticonvulsants) AFTER the exchange, not just before.

❌ Why the other options are wrong:
• Become more potent after the exchange is complete — They become less effective, not more potent.
• Have no change at all in their plasma levels — Their levels DO change.
• Cause toxicity from accumulation in the tissues — They are removed, not accumulated.

⭐ Key point: Coordinate drug timing with the apheresis team and pharmacy.$x$, null),
(16, $x$Following nephrectomy, an ICU patient must be monitored especially for:$x$, $x$Bleeding, remaining kidney function and pneumothorax$x$, $x$✅ Correct answer: Bleeding, remaining kidney function and pneumothorax
After nephrectomy (kidney removal), monitor for: BLEEDING (the kidney has a large blood supply; watch BP, pulse, drains and haemoglobin), the function of the REMAINING KIDNEY (urine output, creatinine), and PNEUMOTHORAX (the flank approach is close to the pleura, which can be injured).

❌ Why the other options are wrong:
• Raised intracranial pressure and seizures — Raised ICP isn't a typical complication.
• Hypothyroidism with bradycardia and cold skin — Hypothyroidism isn't related.
• Hyperglycaemia and diabetic ketoacidosis — Hyperglycaemia and DKA aren't typical complications.

⭐ Key point: Urine output must be at least 0.5 mL/kg/hour. The remaining kidney must do all the work.$x$, null),
(17, $x$Emphysema on a chest X-ray typically shows:$x$, $x$Hyperinflation, flat diaphragms and increased lucency$x$, $x$✅ Correct answer: Hyperinflation, flat diaphragms and increased lucency
In EMPHYSEMA, the alveolar walls are destroyed, trapping air. The chest X-ray shows HYPERINFLATION (more than 6 anterior ribs visible above the diaphragm), FLAT DIAPHRAGMS, INCREASED LUCENCY (dark lungs with few vessels), a narrow vertical heart, and sometimes bullae (large air spaces).

❌ Why the other options are wrong:
• Small lungs with raised diaphragms on both sides — Small lungs with raised diaphragms suggest fibrosis or reduced lung volume.
• Bilateral fluffy alveolar shadowing with large heart — Bilateral fluffy shadows with a big heart suggest pulmonary oedema.
• A single dense lobar consolidation with air bronchogram — A single dense consolidation suggests pneumonia.

⭐ Key point: Bullae can rupture, causing a pneumothorax in COPD patients.$x$, null),
(18, $x$A patient with status asthmaticus on the ventilator has rising airway pressures and falling BP. The nurse suspects:$x$, $x$Auto-PEEP from air trapping; briefly disconnect to allow exhalation$x$, $x$✅ Correct answer: Auto-PEEP from air trapping; briefly disconnect to allow exhalation
In ventilated status asthmaticus, air can't escape fully from narrowed airways (AIR TRAPPING), building up AUTO-PEEP. Pressure in the chest rises, squeezing the heart and veins, so venous return falls, causing HYPOTENSION, while airway pressures RISE. Briefly DISCONNECTING the patient from the ventilator lets trapped air out, and BP often improves at once.

❌ Why the other options are wrong:
• Fluid overload from the IV aminophylline infusion — Fluid overload from aminophylline isn't the likely cause.
• A normal response to the nebulised bronchodilators — Rising pressures and falling BP aren't a normal response.
• The endotracheal tube has slipped into the right main bronchus — Right main bronchus intubation would cause one-sided breath sounds, not this specific pattern.

⭐ Key point: Prevent auto-PEEP: low rate, low tidal volume, long expiratory time (I:E 1:4 or more), and permissive hypercapnia.$x$, null),
(19, $x$A ventilated COPD patient's ABG shows pH 7.50, PaCO₂ 30 mmHg (4 kPa), HCO₃⁻ 34 mmol/L. This indicates:$x$, $x$Over-ventilation with chronic metabolic compensation$x$, $x$✅ Correct answer: Over-ventilation with chronic metabolic compensation
pH 7.50 is ALKALOSIS. PaCO₂ 30 is LOW (the patient is being over-ventilated). HCO₃⁻ 34 is HIGH. This COPD patient had chronically high CO₂ before, so the kidneys retained bicarbonate to compensate. On the ventilator, CO₂ has been blown down too quickly, but the high bicarbonate remains, causing alkalosis. This is OVER-VENTILATION with chronic metabolic compensation (post-hypercapnic alkalosis).

❌ Why the other options are wrong:
• Diabetic ketoacidosis needing an insulin infusion — DKA causes ACIDOSIS.
• Acute respiratory acidosis needing a higher rate — Respiratory acidosis has a LOW pH and HIGH PaCO₂.
• A normal blood gas for a patient with severe COPD — This isn't normal; the pH is alkalotic.

⭐ Key point: In chronic CO₂ retainers, aim for their usual PaCO₂ (often higher than normal) and a normal pH, not a "normal" PaCO₂.$x$, null),
(20, $x$BiPAP for acute hypercapnic COPD exacerbation works mainly by:$x$, $x$IPAP boosts tidal volume to clear CO₂; EPAP splints the airways$x$, $x$✅ Correct answer: IPAP boosts tidal volume to clear CO₂; EPAP splints the airways
BiPAP gives two pressures. IPAP (inspiratory) boosts each breath, increasing TIDAL VOLUME, which blows off CO₂ and rests the tired breathing muscles. EPAP (expiratory, like PEEP) SPLINTS the small airways open, reducing air trapping and the work of breathing. This lowers CO₂ and corrects acidosis in COPD exacerbations.

❌ Why the other options are wrong:
• EPAP alone delivers a high, fixed oxygen fraction to the patient — EPAP alone doesn't deliver a fixed FiO₂.
• It removes the need for any arterial blood gas monitoring — ABGs are still needed to monitor the response.
• It sedates the patient so that the breathing rate falls — BiPAP doesn't sedate patients.

⭐ Key point: Check an ABG after 1–2 hours. If the pH isn't improving, consider intubation.$x$, null),
(21, $x$In the ABCDE primary survey, 'D' stands for:$x$, $x$Disability: GCS or AVPU, pupils and glucose$x$, $x$✅ Correct answer: Disability: GCS or AVPU, pupils and glucose
In the primary survey (ABCDE), D = DISABILITY: a quick NEUROLOGICAL assessment. Check the level of consciousness (GCS or AVPU), PUPILS (size, equality, reaction), and blood GLUCOSE (hypoglycaemia can cause reduced consciousness), plus limb movement.

❌ Why the other options are wrong:
• Drugs: give analgesia before assessing pain — "Drugs" isn't what D stands for.
• Diagnosis: reach a definitive diagnosis first — "Diagnosis" isn't what D stands for; diagnosis comes later.
• Documentation: write the complete history — "Documentation" isn't what D stands for.

⭐ Key point: E = Exposure: examine the whole body, while preventing hypothermia.$x$, null),
(22, $x$The nurse notes a 'seatbelt sign' across the abdomen of a crash victim. This should raise suspicion of:$x$, $x$Hollow viscus and lumbar (Chance) spine injuries$x$, $x$✅ Correct answer: Hollow viscus and lumbar (Chance) spine injuries
A "seatbelt sign" is bruising across the abdomen from a lap belt in a car crash. The belt compresses abdominal organs against the spine at high speed, causing HOLLOW VISCUS injuries (bowel perforation, mesenteric tears) and a CHANCE FRACTURE (a flexion-distraction fracture of the lumbar spine).

❌ Why the other options are wrong:
• Cerebral contusion from a whiplash movement — A whiplash cerebral contusion isn't linked to the seatbelt sign.
• Isolated skin bruising without deeper injury — Assuming only bruising could miss serious injuries.
• Pulmonary embolism from the lower limb veins — PE isn't an immediate concern from a seatbelt sign.

⭐ Key point: Bowel injuries can be missed early. Repeat abdominal examination and CT are needed.$x$, null),
(23, $x$The main limitation of FAST compared with DPL or CT is that FAST:$x$, $x$It can miss hollow viscus and retroperitoneal injuries$x$, $x$✅ Correct answer: It can miss hollow viscus and retroperitoneal injuries
FAST ultrasound is good at detecting FREE FLUID (blood) in the abdomen and around the heart, but it can MISS HOLLOW VISCUS injuries (bowel perforation, which may have little free fluid at first) and RETROPERITONEAL injuries (kidneys, pancreas, duodenum, major vessels), which are behind the peritoneum.

❌ Why the other options are wrong:
• It cannot detect any free fluid in the abdomen — FAST CAN detect free fluid.
• It requires the patient to be moved to the CT room — FAST is done at the bedside; no CT room is needed.
• It uses ionising radiation like plain X-rays — FAST uses ultrasound, not ionising radiation.

⭐ Key point: A negative FAST doesn't rule out serious injury. Use CT in stable patients.$x$, null),
(24, $x$Before inserting a central venous catheter, the nurse should prepare:$x$, $x$Full aseptic set, ultrasound, flushes, and a head-down position$x$, $x$✅ Correct answer: Full aseptic set, ultrasound, flushes, and a head-down position
Central line insertion needs: a FULL ASEPTIC SET (sterile gown, gloves, cap, mask, full-body drape, 2% chlorhexidine), ULTRASOUND guidance (reduces complications), FLUSHES (saline to prime the lumens), and a HEAD-DOWN position (Trendelenburg) for neck and chest lines, which fills the veins and prevents air embolism.

❌ Why the other options are wrong:
• Only a syringe, a cannula and a dressing — A syringe, cannula and dressing alone isn't enough.
• A urinary catheter set with sterile water — A urinary catheter set isn't relevant.
• A clean dressing pack and non-sterile gloves only — Clean dressings and non-sterile gloves don't meet sterile standards.

⭐ Key point: The CLABSI insertion bundle: hand hygiene, maximal barrier precautions, chlorhexidine, optimal site, and a checklist.$x$, null),
(25, $x$Immediately after a jugular central line insertion, the patient becomes breathless with reduced breath sounds on that side. The nurse suspects:$x$, $x$Pneumothorax$x$, $x$✅ Correct answer: Pneumothorax
During jugular (or subclavian) central line insertion, the needle can puncture the top of the lung, causing a PNEUMOTHORAX. Sudden breathlessness with REDUCED BREATH SOUNDS on that side immediately after insertion strongly suggests this.

❌ Why the other options are wrong:
• Air embolism of the coronary arteries — A coronary air embolism isn't the typical presentation.
• Arterial puncture with haematoma only — An arterial puncture causes bleeding and a haematoma, not reduced breath sounds.
• Allergic reaction to chlorhexidine — A chlorhexidine allergy causes rash or anaphylaxis, not one-sided reduced breath sounds.

⭐ Key point: Get an urgent chest X-ray. A tension pneumothorax (low BP, tracheal shift) needs immediate decompression.$x$, null),
(26, $x$Signs of venous air embolism during central line removal include:$x$, $x$Sudden breathlessness, hypotension and a 'mill-wheel' murmur$x$, $x$✅ Correct answer: Sudden breathlessness, hypotension and a 'mill-wheel' murmur
If air enters a vein during central line removal (especially if the patient breathes in, or is sitting up), VENOUS AIR EMBOLISM occurs. Air blocks blood flow through the right heart and lungs, causing SUDDEN BREATHLESSNESS, HYPOTENSION, chest pain, collapse, and sometimes a "MILL-WHEEL" (churning) MURMUR over the heart.

❌ Why the other options are wrong:
• Bradycardia with high blood pressure and a clear chest — Bradycardia with high BP and a clear chest isn't air embolism.
• Fever with rigors starting 24 hours after removal — Fever 24 hours later suggests infection.
• Local bruising and swelling at the insertion site only — Local bruising is a minor local complication.

⭐ Key point: Treat air embolism: clamp or occlude the site, place the patient LEFT side down and head down (Durant's position), and give 100% oxygen.$x$, null),
(27, $x$Pericardiocentesis in tamponade is usually performed via the:$x$, $x$Subxiphoid approach, aiming toward the left shoulder$x$, $x$✅ Correct answer: Subxiphoid approach, aiming toward the left shoulder
Pericardiocentesis is usually done via the SUBXIPHOID approach: the needle is inserted just below the xiphoid process (lower tip of the sternum) and directed toward the LEFT SHOULDER at about 30–45°. This route avoids the lungs and the coronary arteries. Ultrasound guidance makes it safer.

❌ Why the other options are wrong:
• Right second intercostal space — The right 2nd intercostal space risks the great vessels and lung.
• Left fifth intercostal space in the mid-axillary line — The left 5th ICS mid-axillary line risks lung puncture.
• Suprasternal notch — The suprasternal notch is near the great vessels and airway.

⭐ Key point: Monitor the ECG during the procedure. ST changes or ectopics mean the needle has touched the heart.$x$, null),
(28, $x$Removal of only 30–50 mL of blood during pericardiocentesis in tamponade typically produces:$x$, $x$Marked improvement in blood pressure$x$, $x$✅ Correct answer: Marked improvement in blood pressure
The pericardial sac doesn't stretch quickly. In tamponade, the pressure–volume curve is STEEP: a small extra volume causes a large rise in pressure. Removing even a SMALL volume (30–50 mL) moves back down the steep curve, causing a MARKED drop in pericardial pressure and a big improvement in BP and cardiac output.

❌ Why the other options are wrong:
• No change because more is needed — A small volume does make a difference.
• Worsening of hypotension — Removing fluid improves, not worsens, BP.
• Immediate cardiac arrest — Correct drainage relieves tamponade; it doesn't cause arrest.

⭐ Key point: In acute tamponade (trauma, after surgery), even 100–200 mL can be fatal. Slowly accumulating effusions can be much larger.$x$, null),
(29, $x$An underwater seal chest drain stops swinging and the patient is comfortable with normal breath sounds. This most likely means:$x$, $x$The lung has fully re-expanded$x$, $x$✅ Correct answer: The lung has fully re-expanded
Swinging (tidaling) shows the drain is open to the pleural space. If swinging STOPS but the patient is COMFORTABLE with NORMAL breath sounds, the LUNG has probably fully RE-EXPANDED and is sealing the end of the tube. Confirm with a chest X-ray.

❌ Why the other options are wrong:
• The patient has tension pneumothorax — A tension pneumothorax would cause distress and absent breath sounds.
• There is a large air leak — A large air leak would cause continuous bubbling.
• The drain is in the abdomen — A drain in the abdomen wouldn't drain the chest properly from the start.

⭐ Key point: If swinging stops with distress or worsening breath sounds, suspect a BLOCKED or kinked drain and call for help.$x$, null),
(30, $x$Chest drain bubbling that is continuous during both inspiration and expiration in a ventilated patient suggests:$x$, $x$A large air leak from the lung (bronchopleural fistula) or system$x$, $x$✅ Correct answer: A large air leak from the lung (bronchopleural fistula) or system
In a ventilated patient, the lungs are under positive pressure. CONTINUOUS bubbling through both inspiration and expiration suggests a LARGE AIR LEAK, either from the LUNG (a bronchopleural fistula, a hole between an airway and the pleural space) or from the drainage SYSTEM (loose connections).

❌ Why the other options are wrong:
• Normal function of the drain in a ventilated patient — Continuous bubbling isn't normal function.
• Complete re-expansion of the lung on that side — Complete re-expansion would REDUCE bubbling.
• Blockage of the drain by a large blood clot — A blocked drain would STOP bubbling and swinging.

⭐ Key point: Check all connections first (clamp briefly near the chest: if bubbling stops, the leak is in the patient). Report persistent leaks.$x$, null),
(31, $x$In a polytrauma patient with a head injury and hypotension, the target systolic BP is usually:$x$, $x$At least 100–110 mmHg to protect cerebral perfusion$x$, $x$✅ Correct answer: At least 100–110 mmHg to protect cerebral perfusion
In a polytrauma patient WITH a HEAD INJURY, low BP is very harmful: a single episode of hypotension DOUBLES mortality in traumatic brain injury, because it reduces blood flow to the injured brain. The target systolic BP is at least 100–110 mmHg (higher in older patients) to protect cerebral perfusion.

❌ Why the other options are wrong:
• Above 180 mmHg to force blood into the brain — Above 180 is too high and may worsen bleeding.
• Any value, as BP does not affect head injury — BP DOES affect head injury outcomes.
• 70–80 mmHg, as permissive hypotension in trauma — Permissive hypotension (70–80) is NOT used in head injury.

⭐ Key point: Avoid hypotension and hypoxia in brain injury; both worsen outcomes.$x$, null),
(32, $x$Massive transfusion in trauma is generally defined as:$x$, $x$One blood volume in 24 hours (about 10 units of red cells)$x$, $x$✅ Correct answer: One blood volume in 24 hours (about 10 units of red cells)
MASSIVE TRANSFUSION is generally defined as replacing ONE whole BLOOD VOLUME (about 10 units of red cells in an adult) within 24 HOURS. Other definitions include 50% of blood volume in 3 hours, or 4 units or more in 1 hour.

❌ Why the other options are wrong:
• One unit every 24 hours for a period of one week — One unit a day for a week is a small, slow transfusion.
• Any transfusion given in the emergency department — Any transfusion in the emergency department isn't massive by definition.
• Two units of red cells transfused within 24 hours — Two units in 24 hours is a small transfusion.

⭐ Key point: Massive transfusion protocols give red cells, FFP and platelets in a fixed ratio (about 1:1:1).$x$, null),
(33, $x$A complication of massive transfusion the ICU nurse should anticipate is:$x$, $x$Low calcium, high potassium, hypothermia, coagulopathy$x$, $x$✅ Correct answer: Low calcium, high potassium, hypothermia, coagulopathy
Massive transfusion causes: LOW CALCIUM (citrate in stored blood binds calcium), HIGH POTASSIUM (released from stored red cells), HYPOTHERMIA (cold blood products), and COAGULOPATHY (dilution of clotting factors and platelets). Acidosis can also occur.

❌ Why the other options are wrong:
• Alkalosis from the bicarbonate in stored blood — Alkalosis can occur later as citrate is metabolised, but it isn't the main early complication.
• High calcium and low glucose with a fever — High calcium and low glucose are not typical.
• Polycythaemia and hypertension with oedema — Polycythaemia isn't a complication.

⭐ Key point: Warm all products, check ionised calcium and give calcium, and monitor potassium and clotting.$x$, null),
(34, $x$A trauma patient arrives with an unstable pelvic fracture and hypotension. The immediate step is:$x$, $x$Apply a pelvic binder at the greater trochanters$x$, $x$✅ Correct answer: Apply a pelvic binder at the greater trochanters
An UNSTABLE pelvic fracture can cause massive bleeding into the pelvis (from veins and bone). A PELVIC BINDER applied at the level of the GREATER TROCHANTERS (hips), not the iliac crests, closes the pelvic ring, reduces the pelvic volume, and slows venous bleeding.

❌ Why the other options are wrong:
• Elevate both legs on pillows to raise the BP — Elevating the legs doesn't stop pelvic bleeding.
• Log-roll repeatedly to examine the back fully — Repeated log rolling disturbs clots and worsens bleeding.
• Insert a urethral catheter before anything else — Urethral catheterisation may be unsafe (urethral injury) and isn't the immediate priority.

⭐ Key point: Pelvic fractures with ongoing shock may need angiographic embolisation or surgical packing.$x$, null),
(35, $x$The secondary survey in trauma is performed:$x$, $x$After the primary survey and resuscitation are under way$x$, $x$✅ Correct answer: After the primary survey and resuscitation are under way
The SECONDARY SURVEY is a full head-to-toe examination with an AMPLE history. It is done AFTER the PRIMARY SURVEY (ABCDE) and resuscitation are under way, and the patient is stable enough. Its aim is to find all injuries not found in the primary survey.

❌ Why the other options are wrong:
• Before any assessment of the airway or breathing — Airway and breathing always come FIRST (primary survey).
• Only after the patient is discharged from hospital — It is done in hospital early, not after discharge.
• Instead of the primary survey if the patient is stable — It doesn't replace the primary survey.

⭐ Key point: If the patient deteriorates during the secondary survey, go back to the primary survey (ABCDE).$x$, null),
(36, $x$The AMPLE history in trauma stands for:$x$, $x$Allergies, Medications, Past history, Last meal, Events$x$, $x$✅ Correct answer: Allergies, Medications, Past history, Last meal, Events
AMPLE is a quick trauma history: A = Allergies, M = Medications (such as anticoagulants or beta-blockers), P = Past medical history (and pregnancy), L = Last meal (aspiration risk during anaesthesia), E = Events and environment related to the injury (mechanism).

❌ Why the other options are wrong:
• Alcohol, Mental state, Pupils, Limbs and the ECG — Alcohol, mental state, pupils, limbs and ECG isn't AMPLE.
• Age, Mechanism, Pain, Location and Effects of injury — Age, mechanism, pain, location and effects isn't AMPLE.
• Airway, Mouth, Pulse, Lungs and Eyes of the patient — Airway, mouth, pulse, lungs and eyes isn't AMPLE.

⭐ Key point: Anticoagulants and beta-blockers change how trauma patients present and bleed. Always ask about medicines.$x$, null),
(37, $x$A urinary catheter should not be inserted in a trauma patient with:$x$, $x$Blood at the meatus, perineal bruising or high-riding prostate$x$, $x$✅ Correct answer: Blood at the meatus, perineal bruising or high-riding prostate
Don't insert a urethral catheter in a trauma patient with signs of URETHRAL INJURY: BLOOD at the urethral MEATUS, PERINEAL or scrotal BRUISING, or a HIGH-RIDING PROSTATE on rectal examination (in men with pelvic fractures). Catheterisation could convert a partial tear into a complete one. A urologist may place a suprapubic catheter instead.

❌ Why the other options are wrong:
• A full bladder after an uncomplicated pelvic operation — A full bladder after uncomplicated pelvic surgery can be catheterised.
• A stable femoral shaft fracture held in traction — A stable femoral fracture isn't a contraindication.
• A head injury with a GCS of 13 and confusion — A head injury isn't a contraindication.

⭐ Key point: A retrograde urethrogram can confirm urethral injury.$x$, null),
(38, $x$Damage control surgery in polytrauma means:$x$, $x$A short operation to control bleeding and contamination; repair later$x$, $x$✅ Correct answer: A short operation to control bleeding and contamination; repair later
DAMAGE CONTROL SURGERY is used in critically injured patients who are cold, acidotic and coagulopathic (the lethal triad). A SHORT operation CONTROLS BLEEDING and CONTAMINATION (packing, clamping, closing bowel ends), then the patient goes to ICU for warming and resuscitation, and DEFINITIVE repair happens later (24–48 hours).

❌ Why the other options are wrong:
• Complete repair of every injury in one long single operation — A long single operation in an unstable patient worsens the lethal triad.
• Delaying any surgery until the patient's temperature is normal — Surgery can't be delayed until the temperature is normal; bleeding must be controlled now.
• Only conservative treatment, with surgery avoided altogether — Avoiding surgery isn't an option when there is surgical bleeding.

⭐ Key point: Damage control resuscitation: permissive hypotension (no head injury), early blood products, TXA, warming, and damage control surgery.$x$, null),
(39, $x$Signs of a developing tension pneumothorax in a ventilated patient include:$x$, $x$Rising airway pressures, falling SpO₂, hypotension$x$, $x$✅ Correct answer: Rising airway pressures, falling SpO₂, hypotension
In a ventilated patient, a developing tension pneumothorax causes RISING AIRWAY PRESSURES (the lung can't inflate), FALLING SpO₂, HYPOTENSION (reduced venous return), a raised JVP, absent breath sounds on the affected side, and tracheal deviation. Positive pressure ventilation makes it worsen quickly.

❌ Why the other options are wrong:
• Hypertension and bradycardia only — High BP with slow pulse isn't typical.
• Falling airway pressures with a rising SpO₂ — Falling pressures and rising SpO₂ are the opposite.
• An increased tidal volume with no other change — Increased tidal volume isn't a sign.

⭐ Key point: Treat immediately with needle decompression, followed by a chest drain.$x$, null),
(40, $x$Fluid resuscitation in a severe burns patient arriving at 4 hours post-burn requires that:$x$, $x$The first half of the Parkland volume over the remaining 4 hours$x$, $x$✅ Correct answer: The first half of the Parkland volume over the remaining 4 hours
The Parkland formula calculates 24-hour fluid from the TIME OF INJURY. Half is given in the FIRST 8 HOURS AFTER THE BURN. If the patient arrives 4 hours after the burn (with no fluid given yet), the first half must be given over the REMAINING 4 HOURS of that 8-hour period, to catch up.

❌ Why the other options are wrong:
• No fluid at all until the burns have been cleaned and dressed — Withholding fluid until wounds are dressed causes burn shock.
• Half of the volume over the next 8 hours from the arrival time — Starting the 8-hour clock from arrival would under-resuscitate.
• The full 24-hour volume calculated from the time of arrival — The full 24-hour volume from arrival isn't correct; timing is from injury.

⭐ Key point: Subtract any fluid already given before arrival, and adjust the rate to urine output (0.5–1 mL/kg/hour).$x$, null),
(41, $x$According to the Monro-Kellie doctrine, approximately what proportion of intracranial volume is occupied by brain tissue?$x$, $x$~80%$x$, $x$✅ Correct answer: ~80%
The Monro–Kellie doctrine says the skull is a rigid box containing BRAIN tissue (about 80%), BLOOD (about 10%) and CSF (about 10%). If one increases (swelling, bleeding), another must decrease, or ICP rises.

❌ Why the other options are wrong:
• ~50% — 50% underestimates brain volume.
• ~30% — 30% underestimates brain volume.
• ~10% — 10% is the share of blood or CSF, not brain.

⭐ Key point: Early compensation: CSF is pushed into the spinal canal and venous blood is squeezed out. When this runs out, ICP rises steeply.$x$, null),
(42, $x$A PbtO2 value below which threshold on Licox monitoring is generally considered critical and warrants urgent intervention?$x$, $x$Below 15-20 mmHg$x$, $x$✅ Correct answer: Below 15-20 mmHg
The Licox probe measures brain tissue oxygen (PbtO₂). Normal is about 20–35 mmHg. A PbtO₂ BELOW about 15–20 mmHg means brain tissue HYPOXIA and needs urgent treatment (raise FiO₂, CPP or haemoglobin, lower ICP, treat fever and seizures). Below 10 is critical.

❌ Why the other options are wrong:
• Above 40 mmHg — Above 40 mmHg isn't critical.
• Above 100 mmHg — Above 100 mmHg isn't a threshold of concern.
• Below 60 mmHg — Below 60 mmHg includes normal values; 60 isn't the threshold.

⭐ Key point: Brain hypoxia worsens outcome after brain injury, even when ICP is controlled.$x$, null),
(43, $x$A patient's ICP is 28 mmHg and MAP is 80 mmHg. The cerebral perfusion pressure is:$x$, $x$52 mmHg, below the target of 60–70 mmHg$x$, $x$✅ Correct answer: 52 mmHg, below the target of 60–70 mmHg
CPP = MAP − ICP = 80 − 28 = 52 mmHg. The target is 60–70 mmHg, so 52 is BELOW target. The brain isn't getting enough blood. Treat by LOWERING ICP (head up, sedation, osmotherapy, CSF drainage) and/or RAISING MAP (fluids, vasopressors).

❌ Why the other options are wrong:
• 108 mmHg, above the target range — 108 is MAP + ICP (wrong calculation).
• 80 mmHg, within the target range — 80 is the MAP, not the CPP.
• 28 mmHg, normal after head injury — 28 is the ICP, which is high.

⭐ Key point: ICP of 28 is above the treatment threshold (20–22 mmHg).$x$, null),
(44, $x$A 'plateau wave' (Lundberg A wave) on ICP monitoring indicates:$x$, $x$Sustained ICP of 50–100 mmHg; compliance exhausted$x$, $x$✅ Correct answer: Sustained ICP of 50–100 mmHg; compliance exhausted
Lundberg A (PLATEAU) waves are sustained rises in ICP to 50–100 mmHg, lasting 5–20 minutes. They show that the brain's COMPLIANCE is EXHAUSTED: it can no longer tolerate extra volume. They are ominous, reduce cerebral perfusion, and need urgent treatment.

❌ Why the other options are wrong:
• Improving brain compliance after treatment — They show worsening, not improving, compliance.
• A blocked transducer giving falsely low readings — A blocked transducer gives a flat or dampened trace, not plateau waves.
• Normal pulsatile ICP changes with the heartbeat — Normal pulse waves are small, rapid changes with each heartbeat.

⭐ Key point: Lundberg B waves are smaller oscillations (0.5–2 per minute) and may precede A waves. C waves are normal.$x$, null),
(45, $x$A dampened, flat ICP waveform on an EVD system most likely means:$x$, $x$Blockage or air in the system, or a collapsed ventricle$x$, $x$✅ Correct answer: Blockage or air in the system, or a collapsed ventricle
A normal ICP waveform pulsates with each heartbeat. A DAMPENED, FLAT trace on an EVD usually means a technical problem: BLOCKAGE (a clot or debris in the catheter), AIR in the tubing, a closed clamp, a kink, or a COLLAPSED VENTRICLE (from over-drainage) around the catheter tip.

❌ Why the other options are wrong:
• Infection of the CSF with raised white cells — Infection doesn't cause a flat waveform.
• Excellent brain oxygenation and low ICP — A flat trace doesn't indicate good oxygenation.
• Normal ICP with good intracranial compliance — A flat trace isn't normal; normal ICP still pulsates.

⭐ Key point: Check clamps, kinks and air, re-level, and inform the neurosurgeon. NEVER flush toward the patient's brain.$x$, null),
(46, $x$CSF from an EVD becomes cloudy, the patient febrile, and CSF glucose low. The nurse suspects:$x$, $x$Ventriculitis$x$, $x$✅ Correct answer: Ventriculitis
VENTRICULITIS (infection of the ventricles) is a serious complication of an EVD. Signs: CLOUDY CSF, FEVER, LOW CSF GLUCOSE (bacteria use it), high CSF white cells and protein, neck stiffness, and a falling GCS.

❌ Why the other options are wrong:
• Subarachnoid haemorrhage — Subarachnoid haemorrhage gives blood-stained CSF, not cloudy CSF with low glucose.
• Normal post-insertion change — These aren't normal post-insertion changes.
• Over-drainage of CSF — Over-drainage causes headache and low ICP, not cloudy CSF with fever.

⭐ Key point: Send CSF for microscopy, culture and glucose. Use strict asepsis and limit sampling to reduce infection.$x$, null),
(47, $x$The ICP threshold that generally triggers treatment in severe traumatic brain injury is above:$x$, $x$20–22 mmHg$x$, $x$✅ Correct answer: 20–22 mmHg
In severe traumatic brain injury, treatment usually starts when ICP is ABOVE 20–22 mmHg (Brain Trauma Foundation guidelines). Normal ICP is about 5–15 mmHg.

❌ Why the other options are wrong:
• 10–15 mmHg — 10–15 mmHg is normal.
• 5–10 mmHg — 5–10 mmHg is normal.
• 40–45 mmHg — 40–45 mmHg is far above the threshold; treatment should start well before.

⭐ Key point: Treat raised ICP in steps: head up, sedation and analgesia, normal CO₂, osmotherapy, CSF drainage, then barbiturate coma or decompressive craniectomy.$x$, null),
(48, $x$Hyperosmolar therapy for raised ICP uses:$x$, $x$Mannitol or hypertonic saline$x$, $x$✅ Correct answer: Mannitol or hypertonic saline
HYPEROSMOLAR therapy raises blood osmolality, drawing water OUT of brain tissue and reducing brain swelling and ICP. The agents are MANNITOL (0.25–1 g/kg IV) and HYPERTONIC SALINE (3%, 7.5% or 23.4%).

❌ Why the other options are wrong:
• Hartmann's solution boluses — Hartmann's is slightly hypotonic; it doesn't lower ICP.
• 5% dextrose boluses — 5% dextrose is effectively hypotonic and WORSENS brain swelling.
• Albumin 4.5% only — Albumin 4.5% alone doesn't act as hyperosmolar therapy.

⭐ Key point: Monitor sodium and serum osmolality. Mannitol can cause dehydration and kidney injury; hypertonic saline can cause high sodium.$x$, null),
(49, $x$Short-term hyperventilation to PaCO₂ 4–4.5 kPa (30–35 mmHg) lowers ICP by:$x$, $x$Cerebral vasoconstriction, reducing blood volume$x$, $x$✅ Correct answer: Cerebral vasoconstriction, reducing blood volume
Lowering PaCO₂ by hyperventilation causes CEREBRAL VASOCONSTRICTION (the brain's arteries narrow). This REDUCES cerebral BLOOD VOLUME, lowering ICP quickly. However, narrowed vessels also reduce blood flow and can cause brain ischaemia, so it is used only briefly for impending herniation.

❌ Why the other options are wrong:
• Increased cerebral blood flow and oxygen delivery — Hyperventilation REDUCES, not increases, cerebral blood flow.
• Dilatation of the cerebral veins and sinuses — It doesn't dilate cerebral veins.
• Increased CSF production by the choroid plexus — It doesn't increase CSF production.

⭐ Key point: The usual target is normal PaCO₂ (4.5–5.0 kPa, 35–40 mmHg). Avoid prolonged hyperventilation.$x$, null),
(50, $x$A combination of hypertension, bradycardia and irregular breathing in a head-injured patient is:$x$, $x$Cushing's triad, a late sign of herniation$x$, $x$✅ Correct answer: Cushing's triad, a late sign of herniation
HYPERTENSION (with a wide pulse pressure), BRADYCARDIA and IRREGULAR BREATHING in a head-injured patient is CUSHING'S TRIAD: a late sign of severely raised ICP and impending brainstem HERNIATION. It needs immediate escalation and emergency treatment.

❌ Why the other options are wrong:
• Beck's triad of cardiac tamponade — Beck's triad (low BP, raised JVP, muffled heart sounds) is cardiac tamponade.
• Virchow's triad of venous thrombosis — Virchow's triad (stasis, endothelial injury, hypercoagulability) explains venous thrombosis.
• Charcot's triad of ascending cholangitis — Charcot's triad (fever, jaundice, RUQ pain) is ascending cholangitis.

⭐ Key point: Don't wait for Cushing's triad. A falling GCS and pupil changes are earlier warning signs.$x$, null),
(51, $x$In targeted temperature management, the most common recommended target after cardiac arrest is:$x$, $x$A constant 32–36 °C, avoiding fever afterwards$x$, $x$✅ Correct answer: A constant 32–36 °C, avoiding fever afterwards
After cardiac arrest with return of circulation, patients who stay unconscious receive TARGETED TEMPERATURE MANAGEMENT. Current guidance: keep a CONSTANT temperature between 32 and 36 °C (or at least actively prevent fever), then AVOID FEVER (above 37.7 °C) for at least 72 hours, to protect the brain.

❌ Why the other options are wrong:
• Room temperature with no monitoring needed — Temperature must be monitored and controlled.
• 38–39 °C to help fight any infection — 38–39 °C is fever, which harms the brain.
• 28–30 °C maintained for at least 72 hours — 28–30 °C is too cold and causes arrhythmias.

⭐ Key point: During TTM, control shivering, monitor for arrhythmias, electrolytes (low K during cooling), glucose and infection. Rewarm slowly.$x$, null),
(52, $x$A myasthenic crisis is distinguished from a cholinergic crisis by:$x$, $x$Strength improves after edrophonium (or neostigmine)$x$, $x$✅ Correct answer: Strength improves after edrophonium (or neostigmine)
Both crises cause weakness. A MYASTHENIC crisis (too little anticholinesterase, or disease flare) IMPROVES with edrophonium or neostigmine, which increase acetylcholine. A CHOLINERGIC crisis (too much drug) WORSENS with more anticholinesterase and shows SLUDGE signs (salivation, sweating, diarrhoea), small pupils and bradycardia.

❌ Why the other options are wrong:
• Pinpoint pupils and bradycardia are present — Pinpoint pupils and bradycardia suggest CHOLINERGIC crisis.
• Strength worsens after edrophonium is given — Worsening strength after edrophonium suggests CHOLINERGIC crisis.
• Excess salivation and diarrhoea are present — Excess salivation and diarrhoea suggest CHOLINERGIC crisis.

⭐ Key point: The edrophonium (Tensilon) test is rarely used now. Secure the airway first in any crisis.$x$, null),
(53, $x$In myasthenic crisis, the ICU nurse should avoid giving:$x$, $x$Aminoglycosides and magnesium, which worsen weakness$x$, $x$✅ Correct answer: Aminoglycosides and magnesium, which worsen weakness
In MYASTHENIC CRISIS, avoid drugs that further block the neuromuscular junction and worsen weakness: AMINOGLYCOSIDES (gentamicin), MAGNESIUM, fluoroquinolones, some beta-blockers, and non-depolarising muscle relaxants (use them with great caution).

❌ Why the other options are wrong:
• Pyridostigmine at the prescribed times as ordered — Pyridostigmine is the TREATMENT (though it may be paused if intubated).
• IV immunoglobulin over five days by infusion — IVIG is a TREATMENT for myasthenic crisis.
• Oxygen therapy by face mask at 4 L/min — Oxygen therapy is appropriate.

⭐ Key point: Always check drug interactions in myasthenia gravis patients before giving new medicines.$x$, null),
(54, $x$A patient with tetanus in ICU should be nursed in:$x$, $x$A quiet, dark room with minimal stimulation$x$, $x$✅ Correct answer: A quiet, dark room with minimal stimulation
In TETANUS, stimuli (noise, light, touch, draughts) trigger painful muscle SPASMS, including laryngospasm, which can stop breathing. The patient should be nursed in a QUIET, DARK (dim) room with MINIMAL STIMULATION, with care grouped together, and sedation and muscle relaxants as needed.

❌ Why the other options are wrong:
• A brightly lit open ward — A brightly lit open ward triggers spasms.
• A room with constant visitors — Constant visitors increase stimulation.
• A busy area near the nurses' station noise — Noise triggers spasms.

⭐ Key point: Tetanus treatment: wound debridement, tetanus immunoglobulin, metronidazole, benzodiazepines and magnesium for spasms, ventilation if needed, and vaccination.$x$, null),
(55, $x$Autonomic dysfunction in severe tetanus presents with:$x$, $x$Labile BP, tachycardia, sweating and arrhythmias$x$, $x$✅ Correct answer: Labile BP, tachycardia, sweating and arrhythmias
Severe tetanus affects the AUTONOMIC nervous system (sympathetic overactivity), causing LABILE (swinging) BP, TACHYCARDIA, heavy SWEATING, fever and ARRHYTHMIAS. This autonomic instability is a major cause of death in ICU-managed tetanus.

❌ Why the other options are wrong:
• Polyuria and severe hypokalaemia — Polyuria and hypokalaemia aren't typical.
• Hypoglycaemia and drowsiness — Hypoglycaemia and drowsiness aren't typical.
• Persistent hypothermia and bradycardia — Persistent hypothermia and bradycardia aren't typical (though sudden bradycardia and cardiac arrest can occur).

⭐ Key point: Magnesium sulphate infusion helps control both spasms and autonomic instability.$x$, null),
(56, $x$ICU-Acquired Weakness differs from Guillain-Barré Syndrome in that ICU-AW involves:$x$, $x$Axonal degeneration without demyelination$x$, $x$✅ Correct answer: Axonal degeneration without demyelination
ICU-acquired weakness (critical illness polyneuropathy) mainly involves AXONAL DEGENERATION (damage to the nerve fibre itself) WITHOUT significant demyelination. Guillain–Barré syndrome (classic form) involves SEGMENTAL DEMYELINATION (damage to the myelin sheath). Nerve conduction studies help tell them apart.

❌ Why the other options are wrong:
• Segmental demyelination of the nerves — Segmental demyelination is typical of GBS.
• Only facial and bulbar muscle weakness — ICU-AW affects the limbs and respiratory muscles, not mainly the face and bulbar muscles.
• No nerve involvement at all, only muscle — ICU-AW CAN involve nerves (polyneuropathy) as well as muscle (myopathy).

⭐ Key point: ICU-AW risk factors: sepsis, multi-organ failure, high glucose, steroids, prolonged immobility and neuromuscular blockers.$x$, null),
(57, $x$Which muscle group is almost always SPARED in ICU-Acquired Weakness?$x$, $x$Facial and ocular muscles$x$, $x$✅ Correct answer: Facial and ocular muscles
ICU-acquired weakness is a symmetrical, flaccid weakness mainly of the PROXIMAL LIMB muscles (shoulders, hips) and the RESPIRATORY muscles, with reduced reflexes. The FACIAL and OCULAR (eye) muscles are almost always SPARED. If facial or eye muscles are weak, consider other causes (GBS, myasthenia, brainstem stroke).

❌ Why the other options are wrong:
• Hip girdle muscles — The hip girdle muscles ARE typically affected.
• Respiratory muscles — The respiratory muscles ARE typically affected (causing difficult weaning).
• Proximal limb muscles — The proximal limb muscles ARE typically affected.

⭐ Key point: Assess ICU-AW with the MRC sum score (below 48/60 means weakness).$x$, null),
(58, $x$Toxic epidermal necrolysis involves skin detachment of more than:$x$, $x$30% of body surface area$x$, $x$✅ Correct answer: 30% of body surface area
In TOXIC EPIDERMAL NECROLYSIS (TEN), skin detachment affects MORE THAN 30% of the body surface area. Stevens–Johnson syndrome (SJS) is less than 10%, and the SJS/TEN overlap is 10–30%.

❌ Why the other options are wrong:
• 1% of body surface area — More than 1% is far too low.
• 5% of body surface area — More than 5% is too low.
• 10% of body surface area — More than 10% is the start of the overlap category, not TEN.

⭐ Key point: TEN has a high mortality. Treat it in a burns unit or ICU.$x$, null),
(59, $x$The most common trigger of toxic epidermal necrolysis is:$x$, $x$Drugs, e.g. sulphonamides, anticonvulsants, nevirapine$x$, $x$✅ Correct answer: Drugs, e.g. sulphonamides, anticonvulsants, nevirapine
TEN is most often caused by DRUGS: sulphonamides (co-trimoxazole), anticonvulsants (carbamazepine, phenytoin, lamotrigine), NEVIRAPINE (an HIV drug), allopurinol and NSAIDs. In Nigeria, nevirapine and co-trimoxazole are common causes. It usually starts 1–4 weeks after starting the drug.

❌ Why the other options are wrong:
• Exposure to cold, damp weather for several days — Cold, damp weather doesn't cause TEN.
• A viral upper respiratory infection, with no drug — Viral infections rarely cause TEN; drugs are the main cause.
• Food allergy to peanuts, shellfish or eggs — Food allergies cause urticaria or anaphylaxis, not TEN.

⭐ Key point: STOP the suspected drug immediately. Record the allergy clearly and tell the patient never to take it again.$x$, null),
(60, $x$Eye care in toxic epidermal necrolysis is vital because:$x$, $x$Conjunctival involvement can cause scarring and blindness$x$, $x$✅ Correct answer: Conjunctival involvement can cause scarring and blindness
TEN often involves the EYES (conjunctiva). Inflammation, ulceration and adhesions can lead to SCARRING, dry eyes, eyelid deformities and BLINDNESS. Daily eye care, lubricants, an ophthalmology review, and separation of adhesions are vital.

❌ Why the other options are wrong:
• It treats the underlying drug reaction directly — Eye care doesn't treat the underlying drug reaction.
• The eyes are never involved in this condition — The eyes ARE commonly involved.
• It only prevents dry skin around the eyelids — Eye care does much more than prevent dry skin.

⭐ Key point: Also give mouth care and genital care (mucosal involvement) in TEN.$x$, null),
(61, $x$Intra-abdominal hypertension grade III corresponds to an IAP of:$x$, $x$21–25 mmHg$x$, $x$✅ Correct answer: 21–25 mmHg
Intra-abdominal hypertension (IAH) is graded by intra-abdominal pressure (IAP). Grade I = 12–15 mmHg, Grade II = 16–20, GRADE III = 21–25, Grade IV = above 25 mmHg. Abdominal compartment syndrome is IAP above 20 with new organ dysfunction.

❌ Why the other options are wrong:
• 12–15 mmHg — 12–15 is Grade I.
• Over 25 mmHg — Above 25 is Grade IV.
• 16–20 mmHg — 16–20 is Grade II.

⭐ Key point: Normal IAP is 5–7 mmHg in critically ill adults. Measure it via the bladder.$x$, null),
(62, $x$A primary cause of abdominal compartment syndrome is:$x$, $x$Abdominal trauma with intra-abdominal bleeding$x$, $x$✅ Correct answer: Abdominal trauma with intra-abdominal bleeding
PRIMARY abdominal compartment syndrome comes from a problem IN the abdomen or pelvis: ABDOMINAL TRAUMA with intra-abdominal BLEEDING, pancreatitis, abdominal surgery, or bowel obstruction. SECONDARY ACS comes from problems OUTSIDE the abdomen, such as massive fluid resuscitation (in sepsis or burns) causing gut and abdominal wall swelling.

❌ Why the other options are wrong:
• Septic shock from pneumonia — Septic shock from pneumonia causes SECONDARY ACS (via fluid resuscitation).
• Massive fluid resuscitation for burns — Massive fluid resuscitation for burns causes SECONDARY ACS.
• Large-volume ascites from cirrhosis only — Ascites can raise IAP but is listed here as not the primary cause.

⭐ Key point: Recurrent ACS happens after treatment (such as after decompression).$x$, null),
(63, $x$Non-surgical measures to reduce intra-abdominal pressure include:$x$, $x$NG decompression, sedation, avoiding a positive fluid balance$x$, $x$✅ Correct answer: NG decompression, sedation, avoiding a positive fluid balance
Non-surgical measures to reduce IAP: NG and rectal tube DECOMPRESSION (remove gas and fluid from the gut), SEDATION and analgesia (relax the abdominal wall), AVOIDING a POSITIVE FLUID BALANCE (diuretics, CRRT), draining ascites, and brief neuromuscular blockade. Surgical decompression is needed if these fail.

❌ Why the other options are wrong:
• Large-volume IV fluid boluses to improve gut perfusion — Large IV fluid boluses INCREASE gut swelling and IAP.
• A tight abdominal binder to support the abdominal wall — A tight abdominal binder INCREASES IAP.
• Prone positioning without any support under the abdomen — Prone positioning without abdominal support can increase IAP.

⭐ Key point: Monitor bladder pressure regularly in at-risk patients.$x$, null),
(64, $x$Bleeding from a stress ulcer in a ventilated patient is suggested by:$x$, $x$Coffee-ground NG aspirate and a falling haemoglobin$x$, $x$✅ Correct answer: Coffee-ground NG aspirate and a falling haemoglobin
STRESS ULCER bleeding in ventilated patients shows as COFFEE-GROUND NG aspirate (blood partly digested by stomach acid) and a FALLING HAEMOGLOBIN. Melaena and haemodynamic instability may follow if bleeding continues.

❌ Why the other options are wrong:
• Fresh blood suctioned from the endotracheal tube — Fresh blood from the ETT suggests airway or lung bleeding.
• Bright red blood in the urinary catheter bag — Blood in the urinary catheter suggests bladder or kidney bleeding.
• Bruising around the umbilicus and flanks — Bruising around the umbilicus and flanks suggests retroperitoneal bleeding.

⭐ Key point: Prevent stress ulcers in high-risk patients with PPIs or H2 blockers and early enteral feeding.$x$, null),
(65, $x$A patient with severe acute pancreatitis develops oliguria, hypoxia and hypotension on day 2. This represents:$x$, $x$A systemic inflammatory response with organ failure$x$, $x$✅ Correct answer: A systemic inflammatory response with organ failure
In SEVERE acute pancreatitis, inflammation spreads throughout the body (systemic inflammatory response, SIRS), causing ORGAN FAILURE: oliguria (kidneys), hypoxia (lungs, ARDS), and hypotension (circulation). Organ failure lasting more than 48 hours defines severe pancreatitis.

❌ Why the other options are wrong:
• Simple dehydration that needs oral fluids — This isn't simple dehydration treatable with oral fluids.
• Gallstones passing into the duodenum — Gallstones passing don't explain organ failure.
• Normal recovery from an attack of pancreatitis — Organ failure isn't normal recovery.

⭐ Key point: Treat with ICU support: fluids, organ support, early enteral feeding, and treatment of complications.$x$, null),
(66, $x$Cullen's sign in acute pancreatitis is:$x$, $x$Periumbilical bruising from retroperitoneal bleeding$x$, $x$✅ Correct answer: Periumbilical bruising from retroperitoneal bleeding
CULLEN'S SIGN is bluish bruising AROUND the UMBILICUS (belly button), caused by RETROPERITONEAL bleeding tracking to the skin. It is seen in severe (haemorrhagic) pancreatitis, ruptured ectopic pregnancy and retroperitoneal haemorrhage.

❌ Why the other options are wrong:
• Shoulder tip pain from diaphragm irritation — Shoulder tip pain is Kehr's sign.
• Flank bruising from retroperitoneal bleeding — FLANK bruising is GREY TURNER'S sign.
• Jaundice from compression of the bile duct — Jaundice is from bile duct obstruction.

⭐ Key point: Cullen = umbilicus ("C" for centre). Grey Turner = flanks.$x$, null),
(67, $x$Infected pancreatic necrosis is suspected when:$x$, $x$Fever and worsening organs at 7–10 days, with gas on CT$x$, $x$✅ Correct answer: Fever and worsening organs at 7–10 days, with gas on CT
INFECTED pancreatic necrosis usually develops 7–10 days (or later) after the start of severe pancreatitis. It is suspected when there is FEVER, worsening organ function, and rising inflammatory markers, with GAS bubbles in the necrotic pancreas on CT. It needs antibiotics and drainage or necrosectomy.

❌ Why the other options are wrong:
• A rise in serum amylase on the first day of illness — Amylase rises on day 1 in all pancreatitis.
• Pain that improves when oral feeding is restarted — Improving pain with feeding is a good sign.
• A normal blood glucose throughout the admission — Normal glucose doesn't suggest infection.

⭐ Key point: Infected necrosis has a high mortality. A step-up approach (drainage first, then surgery if needed) is used.$x$, null),
(68, $x$Fournier's gangrene is:$x$, $x$Necrotising fasciitis of the perineum$x$, $x$✅ Correct answer: Necrotising fasciitis of the perineum
FOURNIER'S GANGRENE is NECROTISING FASCIITIS of the PERINEUM, genitals and perianal area. It spreads rapidly along the fascial planes, destroying tissue. Risk factors: diabetes, alcoholism and immunosuppression. It is a surgical emergency.

❌ Why the other options are wrong:
• Clostridial gas gangrene of the thigh — Clostridial gas gangrene of the thigh is different.
• Ischaemic colitis affecting the rectum — Ischaemic colitis is bowel ischaemia.
• Dry gangrene of the toes in diabetes — Dry gangrene of the toes is from poor blood supply.

⭐ Key point: Treatment: urgent surgical debridement, broad-spectrum antibiotics, and sepsis resuscitation.$x$, null),
(69, $x$The LRINEC score is used to:$x$, $x$Help identify necrotising fasciitis from blood tests$x$, $x$✅ Correct answer: Help identify necrotising fasciitis from blood tests
The LRINEC score (Laboratory Risk Indicator for Necrotising Fasciitis) uses blood tests: CRP, white cell count, haemoglobin, sodium, creatinine and glucose. A higher score suggests NECROTISING FASCIITIS. It supports, but never replaces, clinical judgement and surgical exploration.

❌ Why the other options are wrong:
• Grade the depth of pressure ulcers — Pressure ulcers are graded by categories (1–4).
• Assess delirium in ventilated ICU patients — Delirium is assessed with CAM-ICU.
• Predict post-operative nausea and vomiting — PONV risk uses the Apfel score.

⭐ Key point: If necrotising fasciitis is clinically suspected, don't wait for scores; get urgent surgical review.$x$, null),
(70, $x$After TURP, a three-way catheter blocks with clots and the patient has bladder spasm. The nurse should:$x$, $x$Stop irrigation, wash out per protocol, inform the doctor$x$, $x$✅ Correct answer: Stop irrigation, wash out per protocol, inform the doctor
After TURP, a three-way catheter with continuous bladder irrigation prevents clots. If the catheter BLOCKS with clots (no outflow, painful bladder spasm, distended bladder), STOP the IRRIGATION (fluid going in with nothing coming out can overdistend or rupture the bladder), do a WASHOUT (bladder irrigation by syringe) as per protocol, and inform the doctor.

❌ Why the other options are wrong:
• Clamp the drainage tubing for one hour — Clamping drainage would worsen the problem.
• Give a diuretic to flush the bladder through — A diuretic wouldn't clear clots and would add fluid.
• Increase the irrigation rate to force the clot out — Increasing irrigation into a blocked bladder risks rupture.

⭐ Key point: Monitor irrigation input and output closely; the output must equal input plus urine.$x$, null),
(71, $x$Acute urinary retention from benign prostatic hyperplasia is relieved by:$x$, $x$Urethral catheter, or suprapubic if urethral fails$x$, $x$✅ Correct answer: Urethral catheter, or suprapubic if urethral fails
Acute urinary retention from an enlarged prostate is relieved by inserting a URETHRAL CATHETER. If urethral catheterisation fails (an obstructing prostate, stricture), a SUPRAPUBIC catheter is inserted through the lower abdomen into the bladder.

❌ Why the other options are wrong:
• Oral analgesics and a warm bath only — Analgesics and a warm bath don't relieve true acute retention.
• Restricting oral fluids until it settles — Restricting fluids doesn't relieve retention.
• IV fluids with a dose of IV furosemide — Furosemide increases urine production, worsening the distension.

⭐ Key point: Record the residual volume drained. Watch for post-obstructive diuresis (very high urine output) and replace losses.$x$, null),
(72, $x$Polyneuropathy in a diabetic ICU patient most increases the risk of:$x$, $x$Pressure injury and silent foot ulceration$x$, $x$✅ Correct answer: Pressure injury and silent foot ulceration
Diabetic polyneuropathy causes LOSS of SENSATION, especially in the feet. The patient can't feel pressure, pain or injury, so PRESSURE INJURIES and SILENT FOOT ULCERS develop without warning. ICU immobility increases the risk further.

❌ Why the other options are wrong:
• Hyperglycaemia only, without skin risk — Neuropathy increases skin risk; it isn't just about glucose.
• Raised intracranial pressure — Neuropathy doesn't cause raised ICP.
• Severe hypertension and stroke — Neuropathy doesn't directly cause hypertension and stroke.

⭐ Key point: Inspect the feet and heels every shift, offload the heels, and use pressure-relieving devices.$x$, null),
(73, $x$A Category 4 pressure ulcer involves:$x$, $x$Full-thickness loss with exposed bone, tendon or muscle$x$, $x$✅ Correct answer: Full-thickness loss with exposed bone, tendon or muscle
A CATEGORY 4 pressure ulcer is FULL-THICKNESS tissue loss with EXPOSED BONE, TENDON or MUSCLE. Slough or eschar may be present, and undermining and tunnelling are common. It is the most severe category.

❌ Why the other options are wrong:
• Partial-thickness loss with a shallow, open ulcer — A partial-thickness shallow ulcer is Category 2.
• Intact skin with non-blanching redness over bone — Intact skin with non-blanching redness is Category 1.
• Full-thickness skin loss with only fat visible — Full-thickness loss with only fat visible is Category 3.

⭐ Key point: Unstageable ulcers have their base covered by slough or eschar, so the depth can't be seen.$x$, null),
(74, $x$Prone positioning for ARDS increases the risk of pressure injury to the:$x$, $x$Face, chest, knees and iliac crests$x$, $x$✅ Correct answer: Face, chest, knees and iliac crests
In PRONE positioning, the patient lies face down, so pressure falls on the FRONT of the body: the FACE (forehead, cheeks, chin, nose, eyes), CHEST, KNEES, ILIAC CRESTS, breasts and genitals. Pressure injuries are common, especially during long prone sessions.

❌ Why the other options are wrong:
• Back of the head and shoulders only — The back of the head and shoulders are at risk in the SUPINE position.
• Elbows and wrists only — Elbows and wrists can be affected, but the main areas are the face, chest, knees and iliac crests.
• Heels, sacrum and occiput only — Heels, sacrum and occiput are at risk in the SUPINE position.

⭐ Key point: Use padding, reposition the head and arms every 2–4 hours ("swimmer's position"), and protect the eyes.$x$, null),
(75, $x$The cosyntropin (synacthen) stimulation test assesses:$x$, $x$Adrenal cortisol response to ACTH$x$, $x$✅ Correct answer: Adrenal cortisol response to ACTH
The cosyntropin (Synacthen) test checks how well the ADRENAL glands produce CORTISOL in response to ACTH. Synthetic ACTH (cosyntropin) is injected, and cortisol is measured before and after 30–60 minutes. A poor rise in cortisol suggests ADRENAL INSUFFICIENCY.

❌ Why the other options are wrong:
• Thyroid hormone production — Thyroid function is assessed by TSH and T4.
• Growth hormone release — Growth hormone has other tests.
• Insulin secretion by the pancreas — Insulin secretion has other tests.

⭐ Key point: In critical illness, don't wait for test results to treat suspected adrenal crisis; give hydrocortisone.$x$, null),
(76, $x$Relative adrenal insufficiency in septic shock is suspected when:$x$, $x$Hypotension persists despite fluids and rising vasopressors$x$, $x$✅ Correct answer: Hypotension persists despite fluids and rising vasopressors
RELATIVE adrenal insufficiency (critical illness-related corticosteroid insufficiency) is suspected in septic shock when HYPOTENSION PERSISTS despite adequate FLUIDS and RISING VASOPRESSOR doses. Low-dose IV hydrocortisone (200 mg/day) is recommended in this situation.

❌ Why the other options are wrong:
• The blood pressure responds well to the first fluid bolus — A good response to fluids doesn't suggest adrenal insufficiency.
• The patient has hyperkalaemia with no hypotension — High potassium WITHOUT hypotension doesn't fit.
• The blood glucose is persistently high on insulin — Persistently high glucose on insulin doesn't suggest adrenal insufficiency.

⭐ Key point: Hydrocortisone shortens the duration of septic shock. Monitor glucose and stop it when vasopressors are no longer needed.$x$, null),
(77, $x$Obese ICU patients should have drug doses for some agents (e.g. propofol infusion) calculated on:$x$, $x$Ideal or adjusted body weight$x$, $x$✅ Correct answer: Ideal or adjusted body weight
In obese patients, some drugs (such as propofol infusions, muscle relaxants and many antibiotics) should be dosed on IDEAL or ADJUSTED BODY WEIGHT, not total body weight. Dosing on total weight can cause overdose, because fat tissue doesn't take up or need the drug in the same way as lean tissue.

❌ Why the other options are wrong:
• Height only — Height alone isn't used directly.
• Age only — Age alone isn't used.
• Total body weight in every case — Total body weight for every drug can cause overdose.

⭐ Key point: Check with pharmacy. Some drugs (such as suxamethonium, LMWH) are dosed on total body weight.$x$, null),
(78, $x$Equipment needed for a critically ill obese patient includes:$x$, $x$Bariatric bed, larger BP cuffs and lifting aids$x$, $x$✅ Correct answer: Bariatric bed, larger BP cuffs and lifting aids
Critically ill obese patients need special equipment: a BARIATRIC BED (stronger and wider, with pressure-relieving features), LARGER BP CUFFS (a cuff that's too small gives falsely HIGH readings), LIFTING and TRANSFER AIDS (hoists, slide sheets) to protect patients and staff, and suitable chairs and commodes.

❌ Why the other options are wrong:
• Only a larger-size urinary catheter — More than a larger catheter is needed.
• No special equipment for these patients — Special equipment IS needed.
• A standard bed with a small BP cuff — A standard bed and small cuff are unsafe.

⭐ Key point: Obese patients also have a higher risk of difficult airway, pressure ulcers, DVT and breathing problems.$x$, null),
(79, $x$Hypothermia in trauma (accidental hypothermia) is considered severe below:$x$, $x$28 °C$x$, $x$✅ Correct answer: 28 °C
Hypothermia severity: MILD 32–35 °C, MODERATE 28–32 °C, SEVERE BELOW 28 °C. Severe hypothermia causes coma, a very slow pulse, low BP, and a high risk of VF and cardiac arrest.

❌ Why the other options are wrong:
• 34 °C — Below 34 °C is mild to moderate.
• 35 °C — Below 35 °C is the threshold for any hypothermia.
• 32 °C — Below 32 °C is moderate hypothermia.

⭐ Key point: Handle severely hypothermic patients gently; rough handling can trigger VF.$x$, null),
(80, $x$A hypothermic patient (30 °C) in cardiac arrest should have:$x$, $x$CPR continued while rewarming; 'not dead until warm and dead'$x$, $x$✅ Correct answer: CPR continued while rewarming; 'not dead until warm and dead'
In hypothermic cardiac arrest (30 °C), continue CPR while REWARMING (warm IV fluids, forced-air warming, and ECMO or cardiopulmonary bypass if available). The cold protects the brain, so good recovery is possible even after prolonged CPR: "not dead until WARM and dead".

❌ Why the other options are wrong:
• Adrenaline every 1 minute at full dose — Adrenaline is WITHHELD below 30 °C (and given at longer intervals between 30 and 35 °C).
• CPR stopped immediately as futile — Stopping CPR early is wrong; hypothermia protects the brain.
• Defibrillation repeated every minute without rewarming — Defibrillation may not work below 30 °C; give up to 3 shocks, then focus on rewarming.

⭐ Key point: Rewarm to at least 32–35 °C before deciding to stop resuscitation.$x$, null),
(81, $x$In neonatal resuscitation, after drying and stimulating, the next assessment is:$x$, $x$Breathing and heart rate$x$, $x$✅ Correct answer: Breathing and heart rate
After drying, warming and stimulating a newborn, the next step is to assess BREATHING (is the baby breathing effectively, gasping or apnoeic?) and HEART RATE (with a stethoscope at the chest or by palpating the umbilical cord). These decide whether resuscitation is needed.

❌ Why the other options are wrong:
• Core temperature only — Temperature is important but doesn't guide immediate resuscitation.
• Non-invasive blood pressure — BP isn't routinely measured at birth.
• Blood glucose level — Glucose is checked later.

⭐ Key point: If the baby is apnoeic, gasping, or HR is below 100, give 5 inflation breaths, then ventilate.$x$, null),
(82, $x$Inflation breaths for a term newborn are given:$x$, $x$Five breaths, each held for 2–3 seconds$x$, $x$✅ Correct answer: Five breaths, each held for 2–3 seconds
For a term newborn, give FIVE INFLATION BREATHS, each held for 2–3 SECONDS, at a pressure of about 30 cmH₂O. These long breaths push the fluid out of the lungs and fill them with air for the first time. Then give ventilation breaths at about 30 per minute.

❌ Why the other options are wrong:
• Ten breaths at a rate of 60 per minute — Ten breaths at 60 per minute is ventilation rate, not inflation breaths.
• Two quick breaths, each lasting 1 second — Two quick 1-second breaths are too short to inflate fluid-filled lungs.
• One sustained breath held for 10 seconds — One 10-second breath isn't the standard technique.

⭐ Key point: Watch for chest movement. If none, reposition the head (neutral), use jaw thrust, and check for obstruction.$x$, null),
(83, $x$Room air is used at the start of term newborn resuscitation because:$x$, $x$Excess oxygen may harm the newborn$x$, $x$✅ Correct answer: Excess oxygen may harm the newborn
Term newborn resuscitation starts with ROOM AIR (21% oxygen) because EXCESS OXYGEN can HARM the newborn: it creates free radicals that damage the brain, lungs and eyes, and it is linked to higher mortality. Oxygen is added if needed to meet target saturations (measured on the right hand, pre-ductal).

❌ Why the other options are wrong:
• It is cheaper than oxygen — Cost isn't the reason.
• Oxygen is never needed in newborns — Oxygen IS sometimes needed (if saturations stay low).
• It increases the heart rate faster — Room air doesn't raise the heart rate faster.

⭐ Key point: Target pre-ductal SpO₂: about 60% at 1 minute, 70% at 3 minutes, 80% at 5 minutes, 85–90% at 10 minutes.$x$, null),
(84, $x$A newborn with meconium-stained liquor who is not breathing should first receive:$x$, $x$Inflation breaths and ventilation; suction only if blocked$x$, $x$✅ Correct answer: Inflation breaths and ventilation; suction only if blocked
For a newborn with meconium-stained liquor who is NOT BREATHING, start INFLATION BREATHS and ventilation without delay. Routine deep tracheal suction before breathing is NO LONGER recommended (it delays ventilation). Suction only if the airway is visibly BLOCKED or ventilation fails.

❌ Why the other options are wrong:
• IV adrenaline before ventilation is attempted — Adrenaline is given late, after ventilation and compressions.
• Routine deep tracheal suction before any breaths — Routine tracheal suction delays essential ventilation.
• Chest compressions started immediately at birth — Chest compressions start only if the HR stays below 60 despite effective ventilation.

⭐ Key point: The priority in a non-breathing newborn is ventilation, whatever the colour of the liquor.$x$, null),
(85, $x$Physiological jaundice differs from pathological jaundice because physiological jaundice:$x$, $x$Appears after 24 hours and resolves by 2 weeks$x$, $x$✅ Correct answer: Appears after 24 hours and resolves by 2 weeks
PHYSIOLOGICAL jaundice is common and harmless. It APPEARS AFTER 24 HOURS (usually day 2–3), peaks around day 3–5, and RESOLVES by about 2 WEEKS (3 weeks in preterm babies). It is unconjugated bilirubin from the normal breakdown of fetal red cells and an immature liver.

❌ Why the other options are wrong:
• Requires exchange transfusion in all cases — Most physiological jaundice doesn't need any treatment, let alone exchange transfusion.
• Is associated with a conjugated bilirubin rise — A CONJUGATED bilirubin rise is always pathological (liver or biliary disease).
• Appears within the first 24 hours — Jaundice appearing within the FIRST 24 hours is always PATHOLOGICAL.

⭐ Key point: Jaundice lasting more than 2 weeks (prolonged jaundice) needs investigation, including conjugated bilirubin.$x$, null),
(86, $x$During phototherapy, the nurse should:$x$, $x$Cover the eyes, expose the skin, watch temperature and fluids$x$, $x$✅ Correct answer: Cover the eyes, expose the skin, watch temperature and fluids
During phototherapy: COVER the baby's EYES (to protect the retina), EXPOSE as much SKIN as possible (more light contact), monitor TEMPERATURE (risk of overheating or cooling), and maintain FLUIDS (phototherapy increases water loss through the skin). Turn the baby regularly and continue feeding.

❌ Why the other options are wrong:
• Stop all feeds while the lights are on — Stopping feeds would cause dehydration and increase bilirubin.
• Cover the whole body with a blanket to keep warm — Covering the body blocks the light.
• Avoid turning the baby during phototherapy — The baby should be turned regularly.

⭐ Key point: Check bilirubin regularly. Watch for loose green stools and skin rashes (common, harmless side effects).$x$, null),
(87, $x$During exchange transfusion, blood glucose is checked because:$x$, $x$Hypoglycaemia can follow the high glucose in citrated blood$x$, $x$✅ Correct answer: Hypoglycaemia can follow the high glucose in citrated blood
Donor blood for exchange transfusion is stored in a citrate preservative containing high GLUCOSE. During the exchange, the baby's pancreas makes extra insulin. When the high-glucose blood stops, rebound HYPOGLYCAEMIA can occur. Glucose is checked during and after the procedure, along with calcium (citrate lowers it), potassium and blood gases.

❌ Why the other options are wrong:
• Glucose has no relevance during an exchange transfusion — Glucose IS relevant.
• Hyperglycaemia always persists for several days afterwards — Hyperglycaemia doesn't persist for days.
• The baby cannot be fed for a week after the procedure — The baby can be fed soon after (as per protocol).

⭐ Key point: Exchange transfusion risks also include infection, NEC, thrombosis, arrhythmias and electrolyte problems.$x$, null),
(88, $x$The umbilical venous catheter used for exchange transfusion is inserted:$x$, $x$Into the umbilical vein, aseptically$x$, $x$✅ Correct answer: Into the umbilical vein, aseptically
For neonatal exchange transfusion, an UMBILICAL VENOUS CATHETER (UVC) is inserted into the UMBILICAL VEIN using strict ASEPTIC technique. The umbilical vein is large and easily accessible in the first days of life, allowing blood to be removed and replaced in small amounts.

❌ Why the other options are wrong:
• Into the radial artery at the wrist — The radial artery isn't used for exchange in this way.
• Into a scalp vein over the temple — Scalp veins are too small.
• Into the femoral vein in the groin — The femoral vein carries higher risks in neonates.

⭐ Key point: Confirm the UVC position by X-ray and secure it. Complications include infection, thrombosis, air embolism and liver injury.$x$, null),
(89, $x$Late-onset neonatal sepsis (after 72 hours) is commonly caused by:$x$, $x$Coagulase-negative staphylococci and Gram-negative bacteria$x$, $x$✅ Correct answer: Coagulase-negative staphylococci and Gram-negative bacteria
LATE-ONSET neonatal sepsis (after 72 hours of life) is usually HOSPITAL-ACQUIRED. Common causes are COAGULASE-NEGATIVE STAPHYLOCOCCI (from skin, central lines) and GRAM-NEGATIVE bacteria (Klebsiella, E. coli, Pseudomonas). Central lines, ventilation and prolonged admission increase the risk.

❌ Why the other options are wrong:
• Malaria parasites transmitted in the unit — Malaria isn't the common cause of late-onset sepsis.
• Rotavirus, in all babies with late sepsis — Rotavirus causes diarrhoea, not typical late-onset sepsis.
• Group B Streptococcus from the mother in every case — Group B Streptococcus mainly causes EARLY-onset sepsis (from the mother at birth).

⭐ Key point: Hand hygiene, line care bundles, and breast milk reduce late-onset sepsis.$x$, null),
(90, $x$The most effective way to reduce neonatal infection in a special care baby unit is:$x$, $x$Hand hygiene before and after every baby contact$x$, $x$✅ Correct answer: Hand hygiene before and after every baby contact
HAND HYGIENE before and after EVERY baby contact is the single most effective way to reduce infection in neonatal units. Hands carry germs from baby to baby and from equipment to baby.

❌ Why the other options are wrong:
• Bathing every baby twice a day with antiseptic — Twice-daily antiseptic bathing harms the delicate skin.
• Keeping the mothers out of the unit completely — Keeping mothers out reduces breastfeeding and kangaroo care, which protect against infection.
• Routine prophylactic antibiotics for all babies — Routine antibiotics cause resistance and harm.

⭐ Key point: Breast milk, kangaroo care, and careful line care also reduce neonatal infection.$x$, null),
(91, $x$Kangaroo mother care is beneficial for preterm babies because it:$x$, $x$Warmth, breastfeeding and less infection$x$, $x$✅ Correct answer: Warmth, breastfeeding and less infection
KANGAROO MOTHER CARE (skin-to-skin contact of the baby on the mother's chest) helps preterm babies by keeping them WARM (prevents hypothermia), promoting BREASTFEEDING, reducing INFECTION, stabilising breathing and heart rate, and improving bonding and weight gain.

❌ Why the other options are wrong:
• It is used only for well term babies — It is used especially for preterm and low birth weight babies, not only well term babies.
• It increases the risk of hypothermia — It REDUCES the risk of hypothermia.
• It replaces the need for any feeding — It supports feeding; it doesn't replace it.

⭐ Key point: Kangaroo care can reduce mortality in low birth weight babies, especially where incubators are limited.$x$, null),
(92, $x$Feeding a preterm baby of 30 weeks with no sucking reflex is best done by:$x$, $x$Orogastric or nasogastric feeds of breast milk$x$, $x$✅ Correct answer: Orogastric or nasogastric feeds of breast milk
Preterm babies under about 32–34 weeks usually can't coordinate sucking, swallowing and breathing. A 30-week baby with no sucking reflex is fed by OROGASTRIC or NASOGASTRIC tube, ideally with BREAST MILK (expressed). Feeds are increased gradually as tolerated.

❌ Why the other options are wrong:
• No feeds until 36 weeks' corrected age — Withholding feeds until 36 weeks would cause malnutrition (IV nutrition may be used meanwhile, but enteral feeds start early).
• Spoon feeding of standard infant formula — Spoon feeding is unsafe without a suck-swallow reflex (aspiration risk).
• Bottle feeding with a large, fast-flow teat — Bottle feeding with a fast teat is unsafe and risks aspiration.

⭐ Key point: Breast milk reduces NEC and infection in preterm babies.$x$, null),
(93, $x$Necrotising enterocolitis in a preterm baby presents with:$x$, $x$Distension, bloody stools and bilious aspirates$x$, $x$✅ Correct answer: Distension, bloody stools and bilious aspirates
Necrotising enterocolitis (NEC) in a preterm baby presents with ABDOMINAL DISTENSION, BLOODY STOOLS, BILIOUS (green) aspirates or vomiting, feed intolerance, and in severe cases, abdominal tenderness, discolouration and shock. X-ray may show gas in the bowel wall (pneumatosis intestinalis).

❌ Why the other options are wrong:
• Constipation only, with normal feeding — Constipation alone with normal feeding doesn't suggest NEC.
• Projectile non-bilious vomiting after feeds — Projectile non-bilious vomiting suggests pyloric stenosis.
• Watery stools with a soft, normal abdomen — Watery stools with a soft abdomen suggest gastroenteritis.

⭐ Key point: NEC: stop feeds, decompress the stomach (NG tube on free drainage), give IV fluids and antibiotics, and refer to surgery if there is perforation.$x$, null),
(94, $x$Respiratory distress syndrome in preterm babies is caused by:$x$, $x$Surfactant deficiency$x$, $x$✅ Correct answer: Surfactant deficiency
Respiratory distress syndrome (RDS) in preterm babies is caused by SURFACTANT DEFICIENCY. Surfactant (made by type II pneumocytes, mostly after 34 weeks) keeps the alveoli open. Without it, the alveoli collapse, causing breathing difficulty soon after birth.

❌ Why the other options are wrong:
• Excess lung fluid at term — Excess lung fluid at term causes transient tachypnoea of the newborn.
• Meconium aspiration — Meconium aspiration affects term or post-term babies.
• Pneumothorax only — Pneumothorax can complicate RDS but isn't its cause.

⭐ Key point: Prevent and treat RDS: antenatal steroids, CPAP, and surfactant given via the ETT.$x$, null),
(95, $x$Signs of respiratory distress in a newborn include:$x$, $x$Grunting, flaring, recession, rate over 60/min$x$, $x$✅ Correct answer: Grunting, flaring, recession, rate over 60/min
Signs of respiratory distress in a newborn: GRUNTING (a short sound on breathing out, which keeps the alveoli open), NASAL FLARING, RECESSION (chest wall pulling in), a breathing RATE OVER 60 per minute, head bobbing and cyanosis.

❌ Why the other options are wrong:
• Hiccups and sneezing only — Hiccups and sneezing are normal.
• Normal breathing with a loud cry — Normal breathing with a loud cry is healthy.
• Rate under 20/min with a pink colour — A rate below 20 is abnormally slow (apnoea risk), but pink colour doesn't suggest distress; this isn't the distress pattern.

⭐ Key point: Grunting is a sign of serious respiratory distress in newborns. Assess and support breathing urgently.$x$, null),
(96, $x$The normal blood glucose of a newborn should be maintained above:$x$, $x$2.6 mmol/L (about 47 mg/dL)$x$, $x$✅ Correct answer: 2.6 mmol/L (about 47 mg/dL)
Newborn blood glucose should be kept ABOVE about 2.6 mmol/L (about 45–47 mg/dL). Low glucose (hypoglycaemia) can cause brain injury, seizures and developmental problems.

❌ Why the other options are wrong:
• 10 mmol/L (about 180 mg/dL) — 10 mmol/L is high (hyperglycaemia).
• 0.5 mmol/L (about 9 mg/dL) — 0.5 mmol/L is dangerously low.
• 1.0 mmol/L (about 18 mg/dL) — 1.0 mmol/L is dangerously low.

⭐ Key point: At-risk babies (preterm, small, large, infants of diabetic mothers, sick or cold babies) need early feeding and glucose monitoring.$x$, null),
(97, $x$Neonatal hypoglycaemia is treated with an IV bolus of:$x$, $x$2 mL/kg of 10% dextrose$x$, $x$✅ Correct answer: 2 mL/kg of 10% dextrose
Neonatal hypoglycaemia is treated with an IV bolus of 2 mL/kg of 10% DEXTROSE (200 mg/kg), followed by a continuous glucose infusion. Higher concentrations (25%, 50%) are too concentrated (hypertonic) and damage the baby's small veins.

❌ Why the other options are wrong:
• 1 mL/kg of 5% dextrose — 1 mL/kg of 5% dextrose is too little glucose.
• 5 mL/kg of 25% dextrose — 5 mL/kg of 25% dextrose is too concentrated and too much.
• 10 mL/kg of 50% dextrose — 10 mL/kg of 50% dextrose is dangerous.

⭐ Key point: Recheck glucose 30 minutes after treatment, and encourage feeding if the baby is well enough.$x$, null),
(98, $x$A 'safe sleep' environment for infants in hospital should include:$x$, $x$Firm flat mattress, on the back, no loose bedding$x$, $x$✅ Correct answer: Firm flat mattress, on the back, no loose bedding
A safe sleep environment for infants: a FIRM, FLAT MATTRESS, sleeping on the BACK (supine), with NO loose bedding, pillows, bumpers or toys in the cot. This reduces the risk of sudden infant death syndrome (SIDS) and suffocation.

❌ Why the other options are wrong:
• Sharing a bed with an adult for warmth — Bed sharing with an adult increases the risk of SIDS and suffocation.
• Prone position with the head turned to the side — The prone position increases the risk of SIDS.
• Soft pillows and toys in the cot for comfort — Soft pillows and toys increase the risk of suffocation.

⭐ Key point: In hospital, model safe sleep for parents, so they continue it at home.$x$, null),
(99, $x$An apnoea monitor alarm sounds on a preterm baby with HR 70 and dusky colour. The nurse's first action is:$x$, $x$Stimulate gently; if no breathing, start bag-mask ventilation$x$, $x$✅ Correct answer: Stimulate gently; if no breathing, start bag-mask ventilation
An apnoea alarm with a slow heart rate (70) and dusky colour means the preterm baby has stopped breathing (APNOEA OF PREMATURITY). First, STIMULATE the baby gently (rub the back or feet). If breathing doesn't start, begin BAG-MASK VENTILATION. Call for help.

❌ Why the other options are wrong:
• Wait 5 minutes to see whether the apnoea resolves alone — Waiting 5 minutes could cause hypoxic brain injury or cardiac arrest.
• Give a feed by NG tube to stimulate the baby to breathe — Feeding a baby who isn't breathing risks aspiration.
• Silence the alarm and continue routine observation — Silencing the alarm without acting is dangerous.

⭐ Key point: Apnoea of prematurity is treated with caffeine citrate. Also look for other causes (sepsis, hypoglycaemia, anaemia).$x$, null),
(100, $x$Caffeine citrate is used in preterm babies to:$x$, $x$Treat apnoea of prematurity$x$, $x$✅ Correct answer: Treat apnoea of prematurity
CAFFEINE CITRATE stimulates the breathing centre in the brain and improves diaphragm strength. It is used to treat (and prevent) APNOEA OF PREMATURITY, reducing apnoea episodes and the need for ventilation. It is given once daily (orally or IV).

❌ Why the other options are wrong:
• Prevent neonatal hypoglycaemia — It doesn't prevent hypoglycaemia.
• Sedate the restless baby — It's a stimulant, not a sedative.
• Treat neonatal jaundice — It doesn't treat jaundice.

⭐ Key point: Side effects of caffeine: tachycardia, feed intolerance and irritability. Monitor heart rate.$x$, null)
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
