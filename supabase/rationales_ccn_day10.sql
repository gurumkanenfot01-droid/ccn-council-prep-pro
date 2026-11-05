-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 10 (200 questions)
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

⭐ Key point: Side effects of caffeine: tachycardia, feed intolerance and irritability. Monitor heart rate.$x$, null),
(101, $x$A lumbar puncture is generally avoided or delayed in a patient with suspected meningitis if there are signs of raised intracranial pressure, primarily because of the risk of:$x$, $x$Brain herniation from the pressure change of CSF removal$x$, $x$✅ Correct answer: Brain herniation from the pressure change of CSF removal
When intracranial pressure (ICP) is high, the brain is already squeezed inside the closed skull. A lumbar puncture suddenly removes fluid from BELOW (the spinal canal). This creates a pressure difference between the skull and the spine, and the brain can be pushed downwards through the opening at the base of the skull (the foramen magnum). This is called BRAIN HERNIATION ("coning"). It compresses the brainstem, which controls breathing and heart rate, and can kill the patient within minutes. Signs that make LP unsafe include reduced consciousness (GCS falling), new focal weakness, seizures, papilloedema, unequal or sluggish pupils, and Cushing's signs (high BP, slow pulse, irregular breathing).

❌ Why the other options are wrong:
• No particular risk exists in this situation at all — This is false. Herniation is a real and well-known danger of LP when ICP is raised.
• A reduced risk of spreading the infection — LP does not reduce infection spread, and avoiding it is not about infection risk at all. The concern is pressure, not germs.
• Improvement in the patient's neurological outcome — Removing CSF in raised ICP can worsen the outcome (herniation and death). It does not improve neurological outcome.

⭐ Key point: In suspected meningitis with signs of raised ICP: do NOT delay antibiotics. Take blood cultures, give IV antibiotics (e.g. ceftriaxone) immediately, do a CT scan first, and do the LP later only when it is safe.$x$, null),
(102, $x$A patient with meningitis develops photophobia, neck stiffness, and a non-blanching purpuric rash. The nurse should recognise the rash as a red flag suggesting:$x$, $x$Possible meningococcal sepsis needing urgent antibiotics$x$, $x$✅ Correct answer: Possible meningococcal sepsis needing urgent antibiotics
A NON-BLANCHING PURPURIC RASH (spots or blotches that do not fade when you press a glass on them) together with fever, neck stiffness and photophobia strongly suggests MENINGOCOCCAL disease (Neisseria meningitidis). The bacteria release toxins that damage blood vessels and cause bleeding into the skin, and can rapidly cause septic shock (meningococcal septicaemia) and death within hours. This is a medical emergency: give IV antibiotics (ceftriaxone or benzylpenicillin) IMMEDIATELY — even before tests if there is any delay — start resuscitation, and alert the team.

❌ Why the other options are wrong:
• A simple allergic reaction to the antibiotics given — Allergic drug rashes are usually itchy, raised and blanching (they fade on pressure). A non-blanching purpuric rash with meningitis signs must never be dismissed as an allergy.
• A normal viral rash with no clinical urgency — Viral rashes usually blanch. A non-blanching rash with fever is treated as meningococcal disease until proven otherwise — it is very urgent.
• A rash unrelated to the meningitis diagnosis — The rash is directly linked to the meningitis; it is a sign of meningococcal infection in the blood.

⭐ Key point: Do the "glass test": a rash that does not fade under a glass + fever = emergency. Nigeria lies in the African "meningitis belt", so epidemics occur in the dry season (December–June). Close contacts need prophylaxis (e.g. ciprofloxacin or rifampicin), and staff use droplet precautions for the first 24 hours of antibiotics.$x$, null),
(103, $x$A child with severe dehydration (10% or more) needs initial IV fluid of:$x$, $x$20 mL/kg boluses of 0.9% saline, reassessing each time$x$, $x$✅ Correct answer: 20 mL/kg boluses of 0.9% saline, reassessing each time
A child with SEVERE dehydration (10% or more) is in or near shock: very sleepy or unconscious, sunken eyes, very slow skin pinch, weak fast pulse, cold hands, and little or no urine. The first step is to restore circulation fast with IV ISOTONIC fluid — 0.9% saline (or Ringer's lactate) — given as 20 mL/kg BOLUSES. After each bolus, REASSESS (pulse, capillary refill, conscious level, urine output) and repeat if still shocked. After shock is corrected, the remaining fluid deficit plus maintenance is replaced slowly over 24–48 hours.

❌ Why the other options are wrong:
• Oral rehydration fluids only, by cup or spoon — Oral fluids alone are too slow for a severely dehydrated or shocked child, who may also be too drowsy to drink safely. ORS is used for mild to moderate dehydration.
• 5 mL/kg of 3% hypertonic saline as a single bolus — 3% hypertonic saline is used for raised intracranial pressure or severe symptomatic hyponatraemia, NOT for routine dehydration resuscitation.
• 50 mL/kg of 5% dextrose over 10 minutes, once — 5% dextrose is not suitable for resuscitation: it leaves the blood vessels quickly and can cause dangerous hyponatraemia and brain swelling. 50 mL/kg in 10 minutes is also a dangerous volume and rate.

⭐ Key point: Remember "20 mL/kg, then reassess". In a severely malnourished child, fluids are given more slowly and cautiously because the heart can easily fail.$x$, null),
(104, $x$For a 15 kg child, the maintenance fluid by the Holliday–Segar method is:$x$, $x$1250 mL per 24 hours$x$, $x$✅ Correct answer: 1250 mL per 24 hours
The Holliday–Segar method calculates daily maintenance fluid by weight: 100 mL/kg for the FIRST 10 kg, 50 mL/kg for the NEXT 10 kg (11–20 kg), and 20 mL/kg for each kg ABOVE 20 kg. For a 15 kg child: first 10 kg = 10 × 100 = 1000 mL; the next 5 kg = 5 × 50 = 250 mL. Total = 1000 + 250 = 1250 mL per 24 hours (about 52 mL per hour).

❌ Why the other options are wrong:
• 2000 mL per 24 hours — 2000 mL is far too much for 15 kg; it is roughly the requirement for a 50 kg child and would cause fluid overload.
• 750 mL per 24 hours — 750 mL is too little; it would be the requirement for only 7.5 kg.
• 1500 mL per 24 hours — 1500 mL is the requirement for a 20 kg child (1000 + 500), not 15 kg.

⭐ Key point: Hourly shortcut, the "4-2-1 rule": 4 mL/kg/hr for the first 10 kg, 2 mL/kg/hr for the next 10 kg, 1 mL/kg/hr after that. For 15 kg: 40 + 10 = 50 mL/hr. Sick children in ICU often need restricted fluids (e.g. 2/3 of maintenance) because of ADH release.$x$, null),
(105, $x$A child with croup has stridor at rest and recession. The first-line treatment is:$x$, $x$Dexamethasone, plus nebulised adrenaline if severe$x$, $x$✅ Correct answer: Dexamethasone, plus nebulised adrenaline if severe
Croup (laryngotracheobronchitis) is a viral infection causing swelling below the vocal cords. Stridor AT REST with chest recession means MODERATE to SEVERE croup. DEXAMETHASONE (0.15–0.6 mg/kg orally or IM) reduces airway swelling within a few hours. NEBULISED ADRENALINE gives rapid but short-lived relief (about 2 hours) in severe croup by shrinking the swollen airway lining. Keep the child calm on the parent's lap, give oxygen if needed, and watch closely for rebound after adrenaline.

❌ Why the other options are wrong:
• Sedation with IV diazepam to calm the child — Sedating the child is dangerous: it can reduce breathing effort and hide signs of worsening obstruction, leading to respiratory arrest.
• Examining the throat with a tongue spatula — Examining the throat with a spatula can upset the child and trigger complete airway obstruction (especially if it is actually epiglottitis).
• Oral antibiotics only for five days — Croup is viral, so antibiotics do not help, and they would not relieve the airway swelling.

⭐ Key point: Croup: barking "seal-like" cough, hoarse voice, stridor, mild fever, usually ages 6 months–3 years, often worse at night. Crying worsens the obstruction — keep the child calm and do not upset them.$x$, null),
(106, $x$Epiglottitis differs from croup because the child:$x$, $x$Is toxic, drooling and sitting forward, with little cough$x$, $x$✅ Correct answer: Is toxic, drooling and sitting forward, with little cough
EPIGLOTTITIS is a bacterial infection (classically Haemophilus influenzae type b) that causes the epiglottis to swell rapidly and can completely block the airway. The child looks TOXIC (very ill, high fever), DROOLS because swallowing is too painful, SITS FORWARD in a "tripod" position with the neck extended to keep the airway open, has a muffled "hot potato" voice and LITTLE OR NO COUGH. Croup, by contrast, has a barking cough, a gradual onset, and the child is less toxic.

❌ Why the other options are wrong:
• Has a barking cough with a mild fever at night — A barking cough with mild night fever describes CROUP, not epiglottitis.
• Has a gradual onset of symptoms over a week — Epiglottitis has a RAPID onset (hours). A gradual onset over days is more typical of croup or other infections.
• Improves rapidly with steam inhalation at home — Epiglottitis does not get better with steam. It is a life-threatening emergency needing an airway expert.

⭐ Key point: In suspected epiglottitis: do NOT examine the throat, do NOT lie the child down, do NOT do painful procedures. Keep the child calm with the parent, give oxygen, and call anaesthesia/ENT to secure the airway in theatre. The Hib vaccine has made it rare.$x$, null),
(107, $x$A child with acute severe asthma becomes quiet with a 'silent chest' and drowsiness. This indicates:$x$, $x$Life-threatening asthma needing immediate escalation$x$, $x$✅ Correct answer: Life-threatening asthma needing immediate escalation
In acute asthma, a SILENT CHEST means so little air is moving that wheeze can no longer be heard. Together with DROWSINESS (from rising CO2 and low oxygen), poor effort, cyanosis or exhaustion, this is LIFE-THREATENING ASTHMA. The child is close to respiratory arrest. Call for senior help/ICU immediately, give high-flow oxygen, continuous nebulised salbutamol with ipratropium, IV steroids, and consider IV magnesium sulphate or IV salbutamol/aminophylline. Prepare for possible intubation.

❌ Why the other options are wrong:
• A normal response to inhaled salbutamol — A quiet chest is NOT a good response. It means airflow is critically reduced. Improvement shows as better air entry, less work of breathing and better alertness.
• That the child is ready for discharge home — This child is critically ill and must never be discharged.
• Improvement in the attack after nebulisers — Silence here is due to exhaustion and almost no air entry, not recovery.

⭐ Key point: Warning signs of life-threatening asthma: silent chest, cyanosis, SpO2 below 92%, poor respiratory effort, exhaustion, confusion/drowsiness, hypotension. A "normal" or rising CO2 in a breathless asthmatic is also a danger sign.$x$, null),
(108, $x$A febrile convulsion lasting more than 5 minutes is treated with:$x$, $x$Buccal midazolam or rectal diazepam, then IV lorazepam$x$, $x$✅ Correct answer: Buccal midazolam or rectal diazepam, then IV lorazepam
Any seizure lasting MORE THAN 5 MINUTES needs emergency drug treatment, because longer seizures are less likely to stop on their own and can damage the brain (status epilepticus). First-line drug: a BENZODIAZEPINE — BUCCAL MIDAZOLAM or RECTAL DIAZEPAM if there is no IV access, or IV LORAZEPAM if IV access is available. If the seizure continues, a second dose of benzodiazepine is given, then second-line drugs (e.g. phenytoin, levetiracetam or phenobarbital). Also protect the airway, give oxygen, and check the blood glucose.

❌ Why the other options are wrong:
• Restraining the child firmly during the fit — Never restrain a fitting child; it can cause injury (fractures, dislocations) and does not stop the seizure.
• Oral paracetamol only once the child wakes — Paracetamol lowers fever and comfort but does NOT stop a seizure and does not prevent febrile convulsions.
• Cold water immersion until the fit stops — Cold water immersion is dangerous: it can cause shivering, hypothermia and drowning risk. It does not stop the fit.

⭐ Key point: During any fit: time it, keep the child safe (move objects away), place in the recovery position after the fit, nothing in the mouth, give oxygen, and check glucose ("DEFG – Don't Ever Forget Glucose").$x$, null),
(109, $x$Intussusception that has caused peritonitis or perforation is treated by:$x$, $x$Surgical laparotomy with reduction or resection$x$, $x$✅ Correct answer: Surgical laparotomy with reduction or resection
Intussusception is when one part of the bowel "telescopes" into the next, usually in infants aged 6–18 months. If the child has PERITONITIS (rigid tender abdomen) or PERFORATION (air under the diaphragm), the bowel is already dead or torn. A non-surgical enema would be dangerous. The child needs resuscitation, antibiotics and SURGICAL LAPAROTOMY — to manually reduce the bowel, or RESECT (cut out) any dead bowel.

❌ Why the other options are wrong:
• Oral laxatives and a high-fibre diet — Laxatives do nothing for a mechanical blockage and may worsen it. A high-fibre diet is irrelevant in this emergency.
• Observation for 24 hours with IV fluids — Observation alone allows the dead bowel to worsen, leading to sepsis and death.
• Air enema reduction under X-ray screening — Air or contrast enema reduction is the first-line treatment ONLY if there is NO peritonitis or perforation. With perforation, the enema would push air/contrast into the abdomen and worsen the situation.

⭐ Key point: Classic signs of intussusception: sudden episodes of severe colicky pain with drawing up of the legs, vomiting, "redcurrant jelly" stools (blood and mucus), and a sausage-shaped mass in the abdomen.$x$, null),
(110, $x$In a child with suspected appendicitis, the ICU nurse should anticipate perforation if:$x$, $x$Pain becomes generalised with high fever and rigidity$x$, $x$✅ Correct answer: Pain becomes generalised with high fever and rigidity
When an inflamed appendix PERFORATES (bursts), pus and bowel contents spread across the abdomen, causing GENERALISED PERITONITIS. The pain spreads from the right lower area to the whole abdomen, a HIGH FEVER develops, and the abdomen becomes RIGID (board-like) and very tender. The child looks toxic and may become shocked. There may be a brief period of relief just as the appendix bursts, followed by worse pain.

❌ Why the other options are wrong:
• There is mild nausea only, without vomiting — Mild nausea without vomiting is an early or mild feature, not a sign of perforation.
• The child becomes hungry and asks for food — A child who becomes hungry and wants to eat is usually improving. Appendicitis typically causes loss of appetite.
• The pain moves from the umbilicus to the right iliac fossa — Pain moving from the umbilicus to the right iliac fossa is the CLASSIC early pattern of appendicitis. It shows inflammation, not perforation.

⭐ Key point: Young children perforate early because they cannot describe their pain well, and their omentum (the fatty tissue that "walls off" infection) is small. Nurse NPO, IV fluids, IV antibiotics, analgesia, and prepare for urgent surgery.$x$, null),
(111, $x$In an infant with Hirschsprung-associated enterocolitis, the priority is:$x$, $x$Fluid resuscitation, antibiotics and rectal washouts$x$, $x$✅ Correct answer: Fluid resuscitation, antibiotics and rectal washouts
Hirschsprung's disease is the absence of nerve cells in part of the large bowel, so that part cannot relax. Stool and bacteria build up behind it. HIRSCHSPRUNG-ASSOCIATED ENTEROCOLITIS is a serious infection and inflammation of the bowel causing fever, swollen abdomen, explosive foul-smelling diarrhoea, and quickly sepsis and shock. Priorities are: FLUID RESUSCITATION (IV fluids for dehydration/shock), IV ANTIBIOTICS (covering gut bacteria including anaerobes, e.g. metronidazole), and RECTAL WASHOUTS (to decompress the bowel and remove infected stool). The baby is kept nil by mouth with a nasogastric tube.

❌ Why the other options are wrong:
• Oral laxatives only, given twice daily — Oral laxatives do not treat the infection or the blocked segment, and the baby may be too ill to take anything by mouth.
• A high-fibre diet and extra oral fluids — Diet changes do not treat this life-threatening infection.
• Immediate discharge with outpatient follow-up — Enterocolitis can kill quickly; the infant needs hospital admission, not discharge.

⭐ Key point: Hirschsprung's: delayed passing of meconium (more than 48 hours after birth), swollen abdomen, bilious vomiting, chronic constipation. Diagnosis is by rectal biopsy (no ganglion cells). Enterocolitis is the main cause of death.$x$, null),
(112, $x$A child with sickle cell disease and sudden severe anaemia with a rapidly enlarging spleen has:$x$, $x$Acute splenic sequestration crisis$x$, $x$✅ Correct answer: Acute splenic sequestration crisis
ACUTE SPLENIC SEQUESTRATION CRISIS happens when sickled red cells get trapped (sequestered) in the spleen. Large amounts of blood pool there, so the spleen ENLARGES RAPIDLY and the haemoglobin DROPS SUDDENLY. The child becomes pale, weak and may go into hypovolaemic shock — this can be fatal within hours. Treatment: urgent fluid resuscitation and BLOOD TRANSFUSION. It mostly affects young children (before the spleen shrinks from repeated infarction, usually by about age 5–6).

❌ Why the other options are wrong:
• Aplastic crisis from parvovirus — Aplastic crisis also causes severe anaemia, but the spleen does NOT enlarge suddenly. It is caused by parvovirus stopping red cell production, so reticulocytes are very low.
• Vaso-occlusive bone crisis — Vaso-occlusive (painful) crises cause bone pain, but not sudden severe anaemia with a big spleen.
• Haemolytic crisis from malaria — Haemolytic crisis causes anaemia with jaundice, but a rapidly enlarging spleen with shock is the hallmark of sequestration.

⭐ Key point: Teach parents to feel their child's spleen and check for pallor; seek urgent care if the spleen gets bigger. Repeated sequestration may require splenectomy.$x$, null),
(113, $x$Parvovirus B19 infection in sickle cell disease causes:$x$, $x$Aplastic crisis with very low reticulocytes$x$, $x$✅ Correct answer: Aplastic crisis with very low reticulocytes
PARVOVIRUS B19 attacks red blood cell precursors in the bone marrow and temporarily STOPS red cell production. In normal people this is harmless because red cells live about 120 days. In sickle cell disease, red cells live only about 10–20 days, so stopping production for a few days causes a sharp fall in haemoglobin: an APLASTIC CRISIS. The key lab finding is a very LOW RETICULOCYTE count (few new red cells are being made). Transfusion may be needed until the marrow recovers (usually within 7–10 days).

❌ Why the other options are wrong:
• Polycythaemia with a high haematocrit — Parvovirus causes anaemia, not polycythaemia (too many red cells) or a high haematocrit.
• Acute chest syndrome only, with hypoxia — Acute chest syndrome can be triggered by infections, but it is not the typical effect of parvovirus. It presents with chest pain, fever and new infiltrates on X-ray.
• Splenic sequestration with a big spleen — Splenic sequestration is red cells pooling in an enlarging spleen. In aplastic crisis, the spleen does not suddenly enlarge.

⭐ Key point: Low Hb + LOW reticulocytes = aplastic crisis. Low Hb + HIGH reticulocytes + big spleen = sequestration. Parvovirus is contagious: isolate from pregnant staff and other immunocompromised patients.$x$, null),
(114, $x$Children with HIV in ICU commonly present with:$x$, $x$Severe pneumonia, including Pneumocystis$x$, $x$✅ Correct answer: Severe pneumonia, including Pneumocystis
Children with HIV have weak immunity, so their most common reason for ICU admission is SEVERE PNEUMONIA. This includes ordinary bacterial pneumonia, TB, and especially PNEUMOCYSTIS JIROVECII PNEUMONIA (PCP). PCP is common in HIV-infected infants (especially 2–6 months old). It causes rapid breathing, severe hypoxia, and often little on chest examination. Treatment: high-dose co-trimoxazole and steroids (prednisolone) if hypoxic, plus oxygen and respiratory support.

❌ Why the other options are wrong:
• Hypertension and haemorrhagic stroke — Hypertension and haemorrhagic stroke are not typical of paediatric HIV in ICU.
• Kidney stones and renal colic — Kidney stones are not a common presentation of paediatric HIV.
• Gallstones and acute cholecystitis — Gallstones and cholecystitis are rare in children and not a typical HIV presentation.

⭐ Key point: Other common ICU problems in children with HIV: sepsis, severe malnutrition, diarrhoea with dehydration, meningitis (including cryptococcal) and TB. Always check HIV status in children with severe or recurrent pneumonia.$x$, null),
(115, $x$Cotrimoxazole prophylaxis in HIV-exposed infants prevents:$x$, $x$Pneumocystis pneumonia and other infections$x$, $x$✅ Correct answer: Pneumocystis pneumonia and other infections
CO-TRIMOXAZOLE (sulfamethoxazole + trimethoprim) given daily to HIV-exposed infants prevents PNEUMOCYSTIS JIROVECII PNEUMONIA (PCP), a major killer of HIV-infected infants. It also reduces other bacterial infections, toxoplasmosis and some diarrhoeal diseases, and gives partial protection against malaria. It is started at 6 weeks of age and continued until HIV infection is excluded after breastfeeding stops.

❌ Why the other options are wrong:
• HIV transmission from the mother — Co-trimoxazole does NOT prevent mother-to-child HIV transmission. That is prevented by antiretroviral drugs (for mother and baby) and safe delivery/feeding practices.
• Neonatal jaundice and kernicterus — It does not prevent neonatal jaundice. In fact, sulfonamides can worsen jaundice in newborns, which is one reason it's started at 6 weeks rather than at birth.
• Malaria completely, in all infants — It gives some protection against malaria, but NOT complete protection. Bed nets and other malaria control are still needed.

⭐ Key point: Co-trimoxazole prophylaxis: start at 6 weeks, give daily, continue until the baby is confirmed HIV-negative after breastfeeding ends. If HIV-positive, continue and start ART.$x$, null),
(116, $x$The incubation period of Lassa fever is about:$x$, $x$6–21 days$x$, $x$✅ Correct answer: 6–21 days
Lassa fever is a viral haemorrhagic fever caused by the Lassa virus, spread mainly by the multimammate rat (Mastomys natalensis) through food or household items contaminated with rat urine or droppings, and from person to person through blood and body fluids. Its INCUBATION PERIOD (time from infection to first symptoms) is about 6 to 21 DAYS. Early symptoms are vague: fever, weakness, headache, sore throat, muscle pain, and later vomiting, chest pain, facial swelling, bleeding, and shock.

❌ Why the other options are wrong:
• 1–2 hours — 1–2 hours is too short for any viral haemorrhagic fever. That timing fits some toxin-related food poisoning.
• 2 months — 2 months is too long; Lassa symptoms usually appear within 3 weeks.
• 1 year — 1 year is far too long for Lassa fever.

⭐ Key point: Because the incubation is up to 21 days, contacts are monitored (temperature daily) for 21 days after their last exposure. Lassa fever is endemic in Nigeria, especially in Edo, Ondo, Bauchi and Ebonyi states.$x$, null),
(117, $x$A health worker has a needle-stick injury from a Lassa fever patient. The recommended action is:$x$, $x$Report at once and start post-exposure ribavirin per policy$x$, $x$✅ Correct answer: Report at once and start post-exposure ribavirin per policy
A needle-stick injury from a Lassa fever patient is a HIGH-RISK EXPOSURE. The health worker must: wash the site immediately with soap and water (let it bleed, do not squeeze), REPORT AT ONCE to the supervisor/infection control team, and be assessed for POST-EXPOSURE PROPHYLAXIS with oral RIBAVIRIN according to national (NCDC) guidelines. The worker is then followed up with temperature checks for 21 days.

❌ Why the other options are wrong:
• Take paracetamol only and continue the shift — Paracetamol does nothing to stop infection and could hide a developing fever. Continuing the shift without reporting risks the worker and others.
• Ignore it unless symptoms appear within the next month — Waiting for symptoms delays treatment. Ribavirin works best when started early.
• Continue working without reporting to avoid panic — Hiding an exposure endangers the worker, their family and other patients. Reporting is a professional and legal duty.

⭐ Key point: Prevention: full PPE (gloves, gown, face shield/goggles, mask), never recap needles, and use a sharps box at the bedside. Rodent control and food storage are key in the community.$x$, null),
(118, $x$Safe burial of a patient who died of Ebola requires:$x$, $x$Trained teams with full PPE; relatives do not wash the body$x$, $x$✅ Correct answer: Trained teams with full PPE; relatives do not wash the body
The bodies of people who die of EBOLA contain very high amounts of virus and remain HIGHLY INFECTIOUS after death. Washing, touching, or kissing the body during traditional funeral rites has spread many Ebola outbreaks. SAFE AND DIGNIFIED BURIAL means: specially TRAINED BURIAL TEAMS wearing FULL PPE place the body in a sealed body bag, disinfect it, and bury it promptly. Relatives may watch from a safe distance and religious rites can be respected, but they must NOT wash or touch the body.

❌ Why the other options are wrong:
• Family members washing and dressing the body at home — Family washing the body is one of the main ways Ebola spreads in communities.
• Keeping the body at home for several days for mourning — Keeping the body at home for days exposes many mourners to the virus.
• Open-casket viewing at the funeral service — Open-casket viewing and touching the body risk infection; the body should be sealed in a bag.

⭐ Key point: Safe burial must still be dignified and respectful. Engage religious and community leaders to explain why the usual rites must change during an outbreak.$x$, null),
(119, $x$Leukaemia in children most commonly presents with:$x$, $x$Pallor, fever, bruising and bone pain$x$, $x$✅ Correct answer: Pallor, fever, bruising and bone pain
LEUKAEMIA is a cancer of white blood cell precursors in the bone marrow. The abnormal cells crowd out normal blood cell production. This causes: PALLOR and tiredness (anaemia – too few red cells), FEVER and infections (too few working white cells), BRUISING, petechiae and bleeding (too few platelets), and BONE PAIN (the marrow is packed with cancer cells). Other signs: enlarged lymph nodes, liver and spleen.

❌ Why the other options are wrong:
• Jaundice and generalised itching — Jaundice and itching are mainly features of liver or bile duct disease, not the typical presentation of childhood leukaemia.
• Hypertension and persistent headaches — Hypertension and headache are not the classic presentation.
• Weight gain and generalised oedema — Weight gain and oedema are features of kidney disease (e.g. nephrotic syndrome). Leukaemia usually causes weight LOSS.

⭐ Key point: Acute lymphoblastic leukaemia (ALL) is the commonest childhood cancer. A full blood count with blood film is the first test; diagnosis is confirmed by bone marrow examination.$x$, null),
(120, $x$A child receiving chemotherapy has fever 38.5 °C. The nurse should first:$x$, $x$Take blood cultures and give IV antibiotics within 1 hour$x$, $x$✅ Correct answer: Take blood cultures and give IV antibiotics within 1 hour
A child on chemotherapy usually has a very low white cell count (NEUTROPENIA), so they cannot fight infection properly. Fever of 38 °C or above may be the ONLY sign of a severe infection (NEUTROPENIC SEPSIS), which can kill within hours. The nurse should immediately TAKE BLOOD CULTURES (from the central line and peripherally) and START BROAD-SPECTRUM IV ANTIBIOTICS WITHIN 1 HOUR of arrival ("door-to-needle" time). Do not wait for the blood count result.

❌ Why the other options are wrong:
• Send the child home with oral antibiotics — Sending the child home is unsafe; neutropenic sepsis needs urgent IV antibiotics and close monitoring in hospital.
• Give paracetamol and wait to see if the fever settles — Waiting with paracetamol delays treatment and may hide the fever, while sepsis progresses.
• Give a live vaccine to boost the immune system — Live vaccines are DANGEROUS in immunocompromised children because the vaccine organism can cause serious infection.

⭐ Key point: Avoid rectal temperatures and rectal medicines in neutropenic children (risk of bleeding and infection). Use strict hand hygiene and protective isolation.$x$, null),
(121, $x$Therapeutic amnioreduction may be performed for polyhydramnios when:$x$, $x$The mother has severe breathlessness or discomfort$x$, $x$✅ Correct answer: The mother has severe breathlessness or discomfort
POLYHYDRAMNIOS is too much amniotic fluid. It stretches the uterus, which pushes up on the diaphragm and causes maternal BREATHLESSNESS, pain and discomfort, and can trigger preterm labour. THERAPEUTIC AMNIOREDUCTION — removing amniotic fluid with a needle through the abdomen — is done mainly to relieve SEVERE MATERNAL SYMPTOMS (breathlessness, discomfort) or to reduce the risk of preterm labour. The fluid is removed slowly to avoid a sudden drop in uterine pressure.

❌ Why the other options are wrong:
• There is a placenta praevia on scan — Placenta praevia is not an indication for amnioreduction. A needle procedure near a low placenta may cause bleeding.
• The fetus is growth-restricted on scan — Fetal growth restriction is usually linked to REDUCED fluid (oligohydramnios), not polyhydramnios.
• The amniotic fluid index measures 10 cm — An AFI of 10 cm is NORMAL (normal range about 5–24 cm). There is no excess fluid to remove.

⭐ Key point: Rapid removal of large volumes can cause placental abruption. Polyhydramnios causes include maternal diabetes, fetal swallowing problems (oesophageal atresia, anencephaly), twin-twin transfusion, and fetal anaemia.$x$, null),
(122, $x$Indomethacin may reduce polyhydramnios by:$x$, $x$Reducing fetal urine production$x$, $x$✅ Correct answer: Reducing fetal urine production
Most amniotic fluid in later pregnancy is FETAL URINE. INDOMETHACIN (an NSAID) reduces blood flow to the fetal kidneys and increases ADH effects, so the fetus produces LESS URINE. This reduces the amount of amniotic fluid. It is sometimes used to treat polyhydramnios.

❌ Why the other options are wrong:
• Increasing maternal urine output — Indomethacin acts on the FETAL kidneys, not by increasing the mother's urine output.
• Increasing fetal swallowing — It does not increase fetal swallowing; it works by reducing fetal urine production.
• Causing uterine contractions — Indomethacin actually REDUCES uterine contractions (it is also used as a tocolytic). It does not cause them.

⭐ Key point: Indomethacin can cause premature closure of the fetal DUCTUS ARTERIOSUS (fetal heart problems) and oligohydramnios, so it is usually avoided after 32 weeks and fluid levels are monitored closely.$x$, null),
(123, $x$Oligohydramnios is associated with:$x$, $x$Renal agenesis, placental insufficiency, ruptured membranes$x$, $x$✅ Correct answer: Renal agenesis, placental insufficiency, ruptured membranes
OLIGOHYDRAMNIOS (too little amniotic fluid) happens when the fetus makes too little urine or fluid leaks out. The main causes are: (1) RENAL AGENESIS or blocked urinary tract (no fetal urine); (2) PLACENTAL INSUFFICIENCY (poor blood flow to the fetus, so the fetus diverts blood away from the kidneys); (3) RUPTURED MEMBRANES (fluid leaks out). It can also occur in post-term pregnancy.

❌ Why the other options are wrong:
• Fetal oesophageal atresia with absent stomach bubble — Oesophageal atresia stops the fetus from swallowing fluid, so fluid builds up — causing POLYhydramnios, not oligohydramnios.
• Poorly controlled maternal diabetes with macrosomia — Poorly controlled diabetes causes fetal polyuria (more urine), so it causes POLYhydramnios.
• Fetal anencephaly with failure of swallowing — Anencephaly impairs swallowing, causing POLYhydramnios.

⭐ Key point: Oligohydramnios can cause pulmonary hypoplasia (underdeveloped lungs, because lungs need fluid to grow), limb deformities, cord compression and fetal distress. Potter sequence is seen with renal agenesis.$x$, null),
(124, $x$Symmetrical IUGR is more commonly due to:$x$, $x$Early insults, e.g. chromosomal anomaly or congenital infection$x$, $x$✅ Correct answer: Early insults, e.g. chromosomal anomaly or congenital infection
In SYMMETRICAL IUGR (intrauterine growth restriction), the head, abdomen and limbs are ALL proportionally small. It usually results from an EARLY insult (first or early second trimester) that limits the total number of cells formed, such as CHROMOSOMAL ABNORMALITIES (e.g. trisomy), CONGENITAL INFECTIONS (TORCH: toxoplasmosis, rubella, CMV, herpes) or exposure to toxins (alcohol, smoking, drugs).

❌ Why the other options are wrong:
• A post-term pregnancy beyond 42 completed weeks — Post-term pregnancy affects growth late, usually causing asymmetrical growth problems, not symmetrical IUGR.
• Late placental insufficiency in the third trimester — Late placental insufficiency causes ASYMMETRICAL IUGR: the fetus protects ("spares") the brain, so the head is relatively normal but the abdomen is small.
• Maternal pre-eclampsia developing after 34 weeks — Pre-eclampsia developing late usually causes asymmetrical IUGR through placental insufficiency.

⭐ Key point: Symmetrical = early cause, everything small. Asymmetrical = late placental cause, "head-sparing" with thin abdomen. Asymmetrical is more common.$x$, null),
(125, $x$Fetal surveillance in IUGR includes:$x$, $x$Serial growth scans, umbilical Doppler and CTG$x$, $x$✅ Correct answer: Serial growth scans, umbilical Doppler and CTG
A growth-restricted fetus may not be getting enough oxygen and nutrients. Monitoring checks fetal growth and wellbeing: SERIAL GROWTH SCANS (every 2 weeks) show whether the fetus is still growing; UMBILICAL ARTERY DOPPLER shows how well the placenta is working — absent or reversed end-diastolic flow is a serious warning sign; CTG checks the fetal heart rate pattern for signs of distress. Amniotic fluid volume is also measured. These results guide the timing of delivery.

❌ Why the other options are wrong:
• Urine dipstick for protein at each visit only — Urine dipstick checks the mother for pre-eclampsia, but does not monitor fetal growth or wellbeing.
• No monitoring until delivery is planned — No monitoring is dangerous; the fetus could die in the womb without warning.
• Maternal weight at each antenatal visit only — Maternal weight is a poor guide to fetal growth and does not show placental function.

⭐ Key point: Abnormal Doppler (absent or reversed end-diastolic flow) means the fetus is at high risk; delivery is often planned early, with antenatal steroids and magnesium sulphate if preterm.$x$, null),
(126, $x$Antenatal corticosteroids before preterm delivery are given mainly to:$x$, $x$Mature the fetal lungs and reduce RDS$x$, $x$✅ Correct answer: Mature the fetal lungs and reduce RDS
ANTENATAL CORTICOSTEROIDS (betamethasone or dexamethasone given IM to the mother) cross the placenta and speed up FETAL LUNG MATURITY by stimulating SURFACTANT production. This reduces RESPIRATORY DISTRESS SYNDROME (RDS), as well as brain bleeding (intraventricular haemorrhage), necrotising enterocolitis and newborn death. They work best when delivery occurs between 24 hours and 7 days after the first dose.

❌ Why the other options are wrong:
• Prevent maternal infection after delivery — Steroids do not prevent maternal infection; they can slightly increase infection risk.
• Stop uterine contractions in preterm labour — Steroids do not stop contractions. Tocolytics (e.g. nifedipine) are used to delay labour so the steroids have time to work.
• Treat maternal hypertension in pre-eclampsia — Steroids do not treat hypertension. Pre-eclampsia is treated with antihypertensives and magnesium sulphate.

⭐ Key point: Typical regimen: dexamethasone 6 mg IM every 12 hours × 4 doses, or betamethasone 12 mg IM every 24 hours × 2 doses. Usually given between 24 and 34 weeks. Monitor blood glucose in diabetic mothers.$x$, null),
(127, $x$Magnesium sulphate given before very preterm birth (under 32 weeks) protects the baby against:$x$, $x$Cerebral palsy$x$, $x$✅ Correct answer: Cerebral palsy
MAGNESIUM SULPHATE given to the mother shortly before VERY PRETERM birth (under 32 weeks) protects the baby's developing brain (NEUROPROTECTION). Studies show it significantly reduces the risk of CEREBRAL PALSY. It is thought to stabilise blood vessels in the brain, reduce inflammation, and block harmful brain cell damage.

❌ Why the other options are wrong:
• Neonatal sepsis — Magnesium does not prevent neonatal sepsis; antibiotics are used for that.
• Respiratory distress syndrome — RDS is prevented by antenatal corticosteroids, not magnesium.
• Neonatal jaundice — Neonatal jaundice is not prevented by magnesium.

⭐ Key point: Monitor the mother on magnesium for toxicity: loss of knee reflexes, breathing rate below 12/min, urine output below 30 mL/hour. Antidote: calcium gluconate 10% IV.$x$, null),
(128, $x$Signs of uterine rupture during labour include:$x$, $x$Sudden pain, contractions stop, maternal shock, fetal distress$x$, $x$✅ Correct answer: Sudden pain, contractions stop, maternal shock, fetal distress
UTERINE RUPTURE is a tear in the uterine wall, usually through a previous caesarean scar or in obstructed labour or with excessive oxytocin. Signs: SUDDEN severe abdominal pain (sometimes a "tearing" sensation), CONTRACTIONS STOP suddenly, MATERNAL SHOCK (fast pulse, low BP, pallor) from internal bleeding, FETAL DISTRESS or loss of fetal heart, fetal parts felt easily under the abdominal skin, the presenting part moving back up, and vaginal bleeding.

❌ Why the other options are wrong:
• A rising blood pressure with headache and visual change — Rising BP with headache and visual changes suggests PRE-ECLAMPSIA, not uterine rupture.
• A painless vaginal discharge with normal CTG — Painless discharge with normal CTG is not consistent with rupture, which causes pain, shock and fetal distress.
• A gradual increase in contraction strength only — Contractions STOP or weaken with rupture; a gradual increase in strength is normal labour.

⭐ Key point: Uterine rupture is an obstetric emergency: resuscitate (two large IV lines, blood), call for help and prepare for immediate laparotomy. Risk factors: previous caesarean, obstructed labour, grand multiparity and oxytocin misuse.$x$, null),
(129, $x$Septic shock in a postnatal woman with a retained placenta requires:$x$, $x$Resuscitation, antibiotics and evacuation of retained products$x$, $x$✅ Correct answer: Resuscitation, antibiotics and evacuation of retained products
Retained placental tissue in the uterus becomes infected and acts as a SOURCE of sepsis. The woman is in SEPTIC SHOCK. Treatment has three parts: (1) RESUSCITATION — oxygen, IV fluids, and vasopressors if BP stays low; (2) broad-spectrum IV ANTIBIOTICS within one hour; (3) SOURCE CONTROL — EVACUATION OF RETAINED PRODUCTS of conception (surgical removal), once she is stabilised. Without removing the infected tissue, the infection will not clear.

❌ Why the other options are wrong:
• An oxytocin infusion alone, with observation — Oxytocin may help the uterus contract, but alone it does not treat septic shock or reliably remove infected tissue.
• Waiting for spontaneous passage of the products — Waiting allows the infection and shock to worsen, and may be fatal.
• Antibiotics alone, without any surgical procedure — Antibiotics alone cannot clear an infection that has a source of dead/infected tissue still present.

⭐ Key point: Sepsis Six: give oxygen, take blood cultures, give IV antibiotics, give IV fluids, measure lactate, and monitor urine output — all within 1 hour.$x$, null),
(130, $x$Breast abscess in a postnatal woman is managed by:$x$, $x$Drainage, antibiotics and continued milk removal$x$, $x$✅ Correct answer: Drainage, antibiotics and continued milk removal
A BREAST ABSCESS is a collection of pus in the breast, usually caused by Staphylococcus aureus entering through cracked nipples. Treatment: DRAINAGE of the pus (needle aspiration under ultrasound, or incision and drainage), ANTIBIOTICS (e.g. flucloxacillin), pain relief, and CONTINUED MILK REMOVAL. Breastfeeding can continue from the unaffected breast, and milk is expressed from the affected side (or the baby may feed from it if the drainage site is away from the nipple). Stopping milk removal causes milk stasis, which worsens the infection.

❌ Why the other options are wrong:
• Observation without any treatment for a week — An abscess will not go away by observation; untreated it can spread and cause sepsis.
• Stopping breastfeeding on both sides permanently — Stopping breastfeeding on both sides is not necessary and causes milk stasis, making things worse.
• Cold compresses only, without antibiotics — Cold compresses can ease pain, but an abscess needs drainage and antibiotics.

⭐ Key point: Prevent mastitis and abscess: good latch, frequent feeding, emptying the breasts, and early treatment of mastitis.$x$, null),
(131, $x$The '4 Ts' of postpartum haemorrhage are:$x$, $x$Tone, Trauma, Tissue, Thrombin$x$, $x$✅ Correct answer: Tone, Trauma, Tissue, Thrombin
The 4 Ts are the causes of POSTPARTUM HAEMORRHAGE (PPH): TONE — the uterus does not contract well (uterine atony), the commonest cause (about 70%); TRAUMA — tears of the cervix, vagina or perineum, or uterine rupture; TISSUE — retained placenta or membranes; THROMBIN — clotting problems (e.g. DIC, HELLP, anticoagulants). This helps the team find and treat the cause quickly.

❌ Why the other options are wrong:
• Tests, Transfusion, Treatment, Transfer — Tests, transfusion, treatment and transfer describe management steps, not the causes of PPH.
• Tachycardia, Tachypnoea, Temperature, Thirst — Tachycardia, tachypnoea, temperature and thirst are signs, not the causes.
• Temperature, Time, Tachycardia, Tension — Temperature, time, tachycardia and tension are not the recognised framework.

⭐ Key point: First response to PPH: call for help, rub up the uterus (fundal massage), give oxytocin, IV access with blood samples, fluids, empty the bladder, check the placenta is complete, and look for tears.$x$, null),
(132, $x$Tranexamic acid in postpartum haemorrhage should be given:$x$, $x$Within 3 hours of birth$x$, $x$✅ Correct answer: Within 3 hours of birth
TRANEXAMIC ACID (TXA) stops clots from breaking down (antifibrinolytic). The WOMAN trial showed that giving 1 g IV TXA WITHIN 3 HOURS OF BIRTH in PPH reduces deaths from bleeding. If given later than 3 hours, it gives no benefit. A second dose can be given if bleeding continues after 30 minutes or restarts within 24 hours.

❌ Why the other options are wrong:
• Only after 24 hours — After 24 hours is too late; the benefit is only within the first 3 hours.
• Only if the patient is not bleeding — TXA is given TO STOP bleeding; it is not used when there is no bleeding (in PPH treatment).
• Only after hysterectomy — TXA is given early to try to AVOID needing a hysterectomy, not only afterwards.

⭐ Key point: TXA dose: 1 g IV over 10 minutes. The earlier it is given, the better. It is added to — not instead of — oxytocin and other PPH treatments.$x$, null),
(133, $x$A ruptured ectopic pregnancy with shock requires:$x$, $x$Resuscitation with blood and urgent laparotomy$x$, $x$✅ Correct answer: Resuscitation with blood and urgent laparotomy
A RUPTURED ECTOPIC PREGNANCY means the pregnancy has burst through the fallopian tube, causing major internal bleeding into the abdomen. With SHOCK (fast pulse, low BP, pallor, collapse), the woman can bleed to death. She needs immediate RESUSCITATION (two large IV lines, cross-match and give BLOOD) and URGENT LAPAROTOMY (or laparoscopy) to stop the bleeding, usually by removing the tube (salpingectomy).

❌ Why the other options are wrong:
• Observation with a repeat scan in 48 hours — Waiting 48 hours for a repeat scan would allow fatal bleeding.
• Methotrexate injection and outpatient review — Methotrexate is only for a stable, UNRUPTURED, small ectopic pregnancy. It does not stop active bleeding.
• Oral analgesia and discharge home — Discharging a woman in shock with internal bleeding would be fatal.

⭐ Key point: Suspect ectopic in any woman of reproductive age with lower abdominal pain, missed period, vaginal bleeding, shoulder tip pain (blood irritating the diaphragm) or collapse. Do a pregnancy test early.$x$, null),
(134, $x$HELLP syndrome stands for:$x$, $x$Haemolysis, Elevated Liver enzymes, Low Platelets$x$, $x$✅ Correct answer: Haemolysis, Elevated Liver enzymes, Low Platelets
HELLP syndrome stands for: H – HAEMOLYSIS (red cells breaking down), EL – ELEVATED LIVER enzymes (liver damage), LP – LOW PLATELETS. It is a severe complication of pre-eclampsia. Symptoms: pain in the upper right abdomen or epigastrium, nausea and vomiting, malaise and headache. It can cause liver rupture, DIC, kidney failure and maternal death.

❌ Why the other options are wrong:
• Haemorrhage, Electrolytes, Lactate, Pressure — Haemorrhage, electrolytes, lactate and pressure is not the correct meaning.
• High Enzymes, Low Lipids, Proteinuria — High enzymes, low lipids and proteinuria is incorrect.
• Hypertension, Eclampsia, Liver failure, Pain — Hypertension, eclampsia, liver failure and pain is incorrect.

⭐ Key point: The definitive treatment of HELLP is DELIVERY of the baby. Also give magnesium sulphate (seizure prevention), control BP, and correct clotting problems.$x$, null),
(135, $x$Eclamptic seizures are treated first with:$x$, $x$Magnesium sulphate 4 g IV loading dose$x$, $x$✅ Correct answer: Magnesium sulphate 4 g IV loading dose
MAGNESIUM SULPHATE is the drug of choice to TREAT and PREVENT eclamptic seizures. The loading dose is 4 g IV over 5–15 minutes (Zuspan regimen), followed by a maintenance infusion of 1 g/hour for 24 hours. (The Pritchard regimen also gives 10 g IM.) Large trials (the Collaborative Eclampsia Trial and Magpie Trial) showed magnesium is better than diazepam and phenytoin at preventing further fits and reducing maternal death.

❌ Why the other options are wrong:
• Diazepam 10 mg IV, repeated as needed — Diazepam is less effective than magnesium in eclampsia and causes more sedation and breathing problems for mother and baby.
• Paracetamol IV and cooling only — Paracetamol and cooling do not stop eclamptic seizures.
• Phenytoin infusion over 30 minutes — Phenytoin is less effective than magnesium in eclampsia.

⭐ Key point: Monitor for magnesium toxicity: loss of knee jerks (first sign), respiratory rate below 12/min, urine output below 30 mL/hour. Antidote: calcium gluconate 1 g IV (10 mL of 10%).$x$, null),
(136, $x$Severe hypertension in pregnancy (BP 160/110) should be treated urgently with:$x$, $x$IV labetalol, IV hydralazine or oral nifedipine$x$, $x$✅ Correct answer: IV labetalol, IV hydralazine or oral nifedipine
BP of 160/110 or more in pregnancy is SEVERE HYPERTENSION and must be lowered urgently to reduce the risk of maternal STROKE (brain bleed), eclampsia and placental abruption. Safe first-line drugs: IV LABETALOL, IV HYDRALAZINE or ORAL NIFEDIPINE (immediate-release). The goal is to lower BP gradually (e.g. to about 140–150/90–100), not too fast, to protect blood flow to the placenta.

❌ Why the other options are wrong:
• Large doses of IV furosemide every 6 hours — Diuretics such as furosemide reduce blood volume, which in pre-eclampsia is already low, worsening placental perfusion. They are used only for pulmonary oedema.
• An ACE inhibitor such as lisinopril by mouth — ACE inhibitors are CONTRAINDICATED in pregnancy: they damage fetal kidneys and cause malformations.
• No treatment at all until after the delivery — Leaving severe hypertension untreated risks stroke and death.

⭐ Key point: Methyldopa is used for long-term control but acts too slowly for an emergency. Also give magnesium sulphate in severe pre-eclampsia.$x$, null),
(137, $x$A woman in the third trimester with sudden breathlessness, chest pain and tachycardia most likely has:$x$, $x$Pulmonary embolism$x$, $x$✅ Correct answer: Pulmonary embolism
Pregnancy is a HYPERCOAGULABLE state (the blood clots more easily). The growing uterus also slows blood flow from the legs. A deep vein thrombosis can break off and travel to the lungs, causing PULMONARY EMBOLISM (PE). Sudden breathlessness, pleuritic chest pain, tachycardia, low oxygen saturation and sometimes collapse or coughing blood strongly suggest PE. It is a leading cause of maternal death. Treat with LMWH (low-molecular-weight heparin) immediately if suspected, while confirming the diagnosis (CTPA or V/Q scan, leg Doppler).

❌ Why the other options are wrong:
• Normal pregnancy breathlessness — Normal pregnancy breathlessness comes on gradually, without chest pain, tachycardia or low oxygen.
• Mild asthma — Mild asthma would cause wheeze, but not usually sudden chest pain with tachycardia in this setting.
• Heartburn — Heartburn causes burning chest discomfort after meals but does not cause sudden breathlessness or tachycardia.

⭐ Key point: Warfarin is avoided in pregnancy (it damages the fetus); LMWH is safe. Risk factors include caesarean section, obesity, immobility, age over 35, and previous clots.$x$, null),
(138, $x$A pregnant woman collapses. The nurse should immediately:$x$, $x$Call for help, start CPR, displace the uterus to the left$x$, $x$✅ Correct answer: Call for help, start CPR, displace the uterus to the left
If a pregnant woman collapses: CALL FOR HELP (including obstetric and neonatal teams), START CPR immediately, and MANUALLY DISPLACE THE UTERUS TO THE LEFT. After about 20 weeks, the uterus presses on the inferior vena cava (aortocaval compression) when the woman lies flat, which reduces blood returning to the heart and makes CPR ineffective. Pushing the uterus to the left relieves this compression. Hand position for compressions is the same as for other adults.

❌ Why the other options are wrong:
• Give oral fluids and raise the legs — Oral fluids are dangerous in an unconscious patient (aspiration). Raising the legs alone is not resuscitation.
• Lie her flat on her back without any tilt — Lying flat without tilt or displacement allows the uterus to compress the vena cava, reducing the effectiveness of CPR.
• Wait for the obstetrician before starting CPR — Waiting for the obstetrician wastes vital minutes; CPR must start at once.

⭐ Key point: If no return of circulation within 4 minutes of arrest, perform a PERIMORTEM CAESAREAN (resuscitative hysterotomy) so the baby is delivered within 5 minutes. This also improves the mother's chances of survival.$x$, null),
(139, $x$The main cause of maternal death in Nigeria is:$x$, $x$Postpartum haemorrhage$x$, $x$✅ Correct answer: Postpartum haemorrhage
POSTPARTUM HAEMORRHAGE (PPH) — heavy bleeding after childbirth — is the LEADING CAUSE of maternal death in Nigeria and many low-resource countries. Many deliveries happen without skilled attendants, and blood, oxytocin, and emergency surgery may not be readily available. Other major causes include pre-eclampsia/eclampsia, sepsis, obstructed labour and unsafe abortion.

❌ Why the other options are wrong:
• Diabetes in pregnancy — Diabetes is an important risk but is not the main cause of maternal death in Nigeria.
• Migraine with aura — Migraine is not a significant cause of maternal death.
• Acute severe asthma — Severe asthma is rare as a cause of maternal death compared with PPH.

⭐ Key point: Prevention of PPH: active management of the third stage of labour (oxytocin after birth, controlled cord traction, uterine massage), skilled birth attendants, and treating anaemia during pregnancy.$x$, null),
(140, $x$Puerperal pyrexia is defined as a temperature of 38 °C or above:$x$, $x$Within 14 days after childbirth or miscarriage$x$, $x$✅ Correct answer: Within 14 days after childbirth or miscarriage
PUERPERAL PYREXIA is a temperature of 38 °C or above occurring WITHIN 14 DAYS after childbirth or miscarriage (classically on any two days, or a single high reading). It must be investigated as a possible infection: genital tract (endometritis — the commonest serious cause), urinary tract, breasts (mastitis), wound (caesarean or episiotomy), chest, and DVT. Puerperal sepsis is a major cause of maternal death.

❌ Why the other options are wrong:
• Only after the 6-week postnatal check — The definition covers the first 14 days, not only after the 6-week postnatal check.
• Only during the first stage of labour — Fever during labour is "intrapartum fever", not puerperal pyrexia.
• Only in the first hour after delivery — The definition is not limited to the first hour; it covers 14 days.

⭐ Key point: Investigations: blood cultures, high vaginal swab, urine culture, wound swab, FBC, CRP. Start antibiotics promptly if sepsis is suspected.$x$, null),
(141, $x$Brain stem death testing can be performed only when:$x$, $x$Reversible causes such as drugs, hypothermia and metabolic disorders are excluded$x$, $x$✅ Correct answer: Reversible causes such as drugs, hypothermia and metabolic disorders are excluded
BRAIN STEM DEATH testing can only be performed when the cause of coma is a known, irreversible brain injury AND REVERSIBLE CAUSES have been EXCLUDED. These include: DRUGS (sedatives, opioids, muscle relaxants) — allowing time for them to clear; HYPOTHERMIA (temperature should be above 34 °C); METABOLIC/ENDOCRINE disturbances (very abnormal sodium, glucose, etc.); and circulatory problems (very low BP). Only then can brainstem reflexes be tested reliably.

❌ Why the other options are wrong:
• The patient has been in the ICU for a full 24 hours on the ventilator — There is no fixed rule that the patient must be ventilated for 24 hours; what matters is that preconditions are met.
• The family has formally requested that the tests should be performed — Testing is a medical decision based on criteria, not something done because the family requests it.
• The patient is still receiving sedative infusions at a reduced rate — Sedative drugs must be stopped and have cleared from the body. Testing while sedatives are running may give false results.

⭐ Key point: Tests are performed by two senior, experienced doctors, done twice. They check pupils, corneal reflex, gag and cough reflexes, eye movement responses and an apnoea test. The nurse supports the family and documents carefully.$x$, null),
(142, $x$Withdrawal of life-sustaining treatment in ICU should involve:$x$, $x$Team consensus, family discussion and a documented comfort plan$x$, $x$✅ Correct answer: Team consensus, family discussion and a documented comfort plan
WITHDRAWAL OF LIFE-SUSTAINING TREATMENT (e.g. stopping ventilation or inotropes when further treatment cannot help) is a serious decision. It must involve: TEAM CONSENSUS (doctors and nurses agree it is in the patient's best interests); FAMILY DISCUSSION (explaining the situation, listening to their views and the patient's wishes); and a DOCUMENTED COMFORT/END-OF-LIFE CARE PLAN (pain relief, sedation, mouth care, privacy, spiritual support).

❌ Why the other options are wrong:
• No written record, to protect the staff involved — Decisions must be clearly written in the notes. Hiding them is unprofessional and unlawful.
• Stopping all care, including analgesia and sedation — Comfort care continues: pain relief and sedation must be given to prevent suffering.
• A single nurse deciding alone during the night shift — No nurse should make this decision alone; it is a team decision led by the senior doctor.

⭐ Key point: "Withdrawal of treatment" never means "withdrawal of care". Dignity, comfort, family presence and spiritual/religious needs remain priorities.$x$, null),
(143, $x$A competent Jehovah's Witness refuses blood transfusion while bleeding in ICU. The nurse should:$x$, $x$Respect the refusal, document it and support alternatives$x$, $x$✅ Correct answer: Respect the refusal, document it and support alternatives
A COMPETENT ADULT has the legal and ethical right to REFUSE any treatment, including blood transfusion, even if refusing may lead to death (the principle of AUTONOMY). The nurse should RESPECT the refusal, make sure the patient understands the risks, DOCUMENT the discussion clearly (an advance directive or signed refusal form may exist), and SUPPORT ALTERNATIVES: cell salvage (if acceptable), iron, erythropoietin, tranexamic acid, volume expanders, minimising blood tests, and control of the bleeding source.

❌ Why the other options are wrong:
• Discharge the patient from ICU to the ward — Discharging the patient from ICU because they refuse blood is abandonment. The patient still deserves full care.
• Transfuse the blood secretly while the patient sleeps — Transfusing secretly is assault (battery) and a serious ethical and legal violation.
• Sedate the patient and then give the transfusion — Sedating a patient in order to give a refused transfusion is assault and a gross ethical breach.

⭐ Key point: Check the patient's competence (understands, retains, weighs and communicates the decision) and that the decision is made freely, without pressure. Many Jehovah's Witnesses accept certain alternatives; ask each patient individually.$x$, null),
(144, $x$For a child of Jehovah's Witness parents who needs life-saving blood, the team usually:$x$, $x$Seeks a court order, or acts in the child's best interests in an emergency$x$, $x$✅ Correct answer: Seeks a court order, or acts in the child's best interests in an emergency
A child cannot make this decision alone, and parents cannot refuse life-saving treatment that is in the child's best interests. In an EMERGENCY where delay would cause death or serious harm, doctors may give the blood in the child's BEST INTERESTS. When there is time, the hospital usually SEEKS A COURT ORDER to authorise treatment. The child's welfare is paramount. Bloodless alternatives are still used wherever possible, and the family's beliefs are treated with respect.

❌ Why the other options are wrong:
• Accepts the parents' refusal even though the child will probably die — Accepting a refusal that leads to the child's death goes against the duty to protect the child.
• Asks the young child to make the final decision about the blood alone — A young child is usually not able to make such a serious decision alone.
• Gives no further treatment of any kind to the child until discharge — Stopping all treatment would harm the child; care must continue.

⭐ Key point: Parents' rights are limited by the child's best interests. Document everything clearly and involve senior staff and the hospital legal team.$x$, null),
(145, $x$The legal age of consent for medical treatment in Nigeria is generally:$x$, $x$18 years$x$, $x$✅ Correct answer: 18 years
In Nigeria, a person aged 18 YEARS or older is generally treated as an ADULT who can give legal consent for medical treatment. Below 18, consent is usually obtained from a parent or legal guardian. In emergencies, treatment needed to save a minor's life can proceed in the child's best interests without waiting for consent.

❌ Why the other options are wrong:
• 14 years — 14 years is below the general age of consent.
• 12 years — 12 years is below the general age of consent.
• 21 years — 21 years is higher than the general legal age of adulthood in Nigeria.

⭐ Key point: Older children should still be involved in decisions and their assent sought, even if a parent gives formal consent.$x$, null),
(146, $x$A nurse gives the wrong drug to an ICU patient without harm. The correct action is to:$x$, $x$Inform the doctor, monitor, document and report the incident$x$, $x$✅ Correct answer: Inform the doctor, monitor, document and report the incident
Even if no harm occurred, a medication error must be handled openly. The nurse should: INFORM THE DOCTOR immediately (so the patient can be assessed for possible effects), MONITOR THE PATIENT closely, DOCUMENT accurately what was given and actions taken, and REPORT THE INCIDENT through the hospital's incident reporting system. Open disclosure to the patient/family is also part of the "duty of candour".

❌ Why the other options are wrong:
• Say nothing, because the patient came to no harm — Hiding the error is dishonest; effects may appear later, and the chance to learn and prevent future errors is lost.
• Change the drug chart to hide the administration error — Changing the chart to hide the error is falsification of records — serious misconduct that can lead to losing your licence.
• Ask a colleague to sign the chart for the wrong drug — Asking someone to sign for a drug they didn't give is falsifying records and dishonest.

⭐ Key point: Reporting errors is not about blame; it helps the system find causes (e.g. similar drug names, poor labelling) and prevent future harm. Use the "rights" of medication administration to prevent errors.$x$, null),
(147, $x$Patient information may be shared without consent when:$x$, $x$Required by law, e.g. notifiable diseases$x$, $x$✅ Correct answer: Required by law, e.g. notifiable diseases
Patient information is CONFIDENTIAL. It may be shared WITHOUT consent only in limited situations: when REQUIRED BY LAW (e.g. NOTIFIABLE DISEASES such as Lassa fever, cholera, TB must be reported to public health authorities; a court order), or when there is a serious risk to the public or others (public interest), or in safeguarding cases. Only the necessary information is shared, with the right people.

❌ Why the other options are wrong:
• A journalist requests it for a story — Journalists have no right to patient information; sharing it is a serious breach.
• The patient is a well-known public figure — Being famous does not remove a patient's right to confidentiality.
• A friend of the patient calls the unit — A friend calling has no right to information without the patient's consent.

⭐ Key point: In ICU, be careful on the phone: confirm the caller's identity and the patient's consent (or use a password system agreed with the family).$x$, null),
(148, $x$Taking photographs of an ICU patient for social media is:$x$, $x$A breach of confidentiality and misconduct$x$, $x$✅ Correct answer: A breach of confidentiality and misconduct
Taking and posting photographs of an ICU patient on social media is a BREACH OF CONFIDENTIALITY and PROFESSIONAL MISCONDUCT. Patients in ICU are often unconscious, vulnerable and unable to consent. Even partially hidden images can identify a patient (tattoos, location, equipment, timing). The Nursing and Midwifery Council of Nigeria (NMCN) can discipline nurses for this, including suspension or removal from the register.

❌ Why the other options are wrong:
• Encouraged to support health education — Health education must never use identifiable patient images without proper, formal consent and approval.
• Acceptable if the patient's face is covered — Covering the face does not remove the breach; other details can identify the patient, and consent is still missing.
• Acceptable with a relative's verbal permission — A relative's verbal permission is not valid consent for social media publication.

⭐ Key point: Never take photos of patients on personal phones. Clinical photographs (for the record) need formal consent and must be stored securely in the hospital system.$x$, null),
(149, $x$Documentation in the ICU chart should be:$x$, $x$Accurate, timely, legible, signed, never erased$x$, $x$✅ Correct answer: Accurate, timely, legible, signed, never erased
Good ICU documentation is ACCURATE (true and correct), TIMELY (written as soon as possible after care), LEGIBLE (easy to read), SIGNED with name, designation, date and time, and NEVER ERASED or obliterated. Errors are corrected by drawing a SINGLE LINE through the mistake (so it can still be read), writing "error" or the correct entry, and signing and dating it.

❌ Why the other options are wrong:
• Written up at the end of the working week — Writing notes at the end of the week leads to errors and omissions; records must be written at the time of care.
• Written by any staff member for others — Each person must document only the care they personally gave or witnessed.
• Corrected neatly using correction fluid — Correction fluid hides the original entry; this is not allowed because it looks like falsification.

⭐ Key point: "If it's not documented, it was not done." Records are legal documents and can be used in court.$x$, null),
(150, $x$A late entry in the patient record should be:$x$, $x$Marked as a late entry, with the current date and time$x$, $x$✅ Correct answer: Marked as a late entry, with the current date and time
If something was not recorded at the time it happened, a LATE ENTRY can be made. It must be clearly MARKED AS A "LATE ENTRY", written with the CURRENT DATE AND TIME (when you are actually writing it), and should state the date and time the event happened. It is signed as usual. This keeps the record honest and shows exactly when information was added.

❌ Why the other options are wrong:
• Backdated to the time the event actually happened — Backdating makes it look like the entry was written earlier — this is falsification of records.
• Squeezed in between the earlier lines of the notes — Squeezing an entry between earlier lines is misleading and looks like tampering.
• Written in pencil so it can be changed later — Pencil can be erased or altered; records must be in permanent ink.

⭐ Key point: Records must show a true timeline; never alter or rewrite past entries.$x$, null),
(151, $x$The doctrine of informed consent requires disclosure of:$x$, $x$Nature, benefits, material risks and alternatives$x$, $x$✅ Correct answer: Nature, benefits, material risks and alternatives
INFORMED CONSENT means the patient agrees to a procedure after being given enough information to make a real choice. The patient must be told: the NATURE of the procedure (what will be done and why), the expected BENEFITS, the MATERIAL RISKS (risks that a reasonable patient would want to know about — including serious but rare risks such as death or paralysis, and common minor risks), and the ALTERNATIVES (including the option of doing nothing). The patient must be competent, the consent must be voluntary (no pressure), and the information must be given in language they understand.

❌ Why the other options are wrong:
• Only the time and place of the procedure — The time and place are practical details only; they do not allow the patient to weigh risks and benefits.
• Only the cost of the procedure to the family — Cost may be useful to know, but cost alone is not what makes consent "informed".
• Only the name of the doctor doing the procedure — Knowing the doctor's name alone does not explain what will happen or its risks.

⭐ Key point: Consent is a process, not just a signature. The patient can withdraw consent at any time. The nurse can witness the signature and should alert the doctor if the patient does not seem to understand.$x$, null),
(152, $x$Restraining an agitated ICU patient without assessment or orders may constitute:$x$, $x$Battery and false imprisonment$x$, $x$✅ Correct answer: Battery and false imprisonment
Restraining a patient (physically tying them down or using chemical sedation to control behaviour) without proper ASSESSMENT, a valid reason and an ORDER/protocol can be unlawful. BATTERY is touching or applying force to a person without their consent or lawful justification. FALSE IMPRISONMENT is restricting someone's freedom of movement without legal justification. Restraints are only allowed as a last resort, to prevent serious harm (e.g. pulling out an endotracheal tube), with documentation and regular review.

❌ Why the other options are wrong:
• An example of beneficence — Beneficence means doing good. Unnecessary or unassessed restraint can cause injury, distress and delirium — it is not beneficence.
• Good, safe nursing practice — Restraint without assessment is not good practice. First look for causes of agitation (pain, hypoxia, full bladder, delirium, drug withdrawal).
• An example of fidelity — Fidelity means keeping promises and being faithful to duties, not restraint.

⭐ Key point: If restraint is needed: assess the cause, try alternatives first, follow policy, use the least restrictive method, check circulation and skin regularly, document, and review often.$x$, null),
(153, $x$When a patient dies in ICU after an assault, the case must be reported to:$x$, $x$The police or coroner, as a medico-legal case$x$, $x$✅ Correct answer: The police or coroner, as a medico-legal case
A death that follows an ASSAULT (violence), accident, suspected poisoning, or other unnatural or suspicious causes is a MEDICO-LEGAL (coroner's) case. It must be REPORTED TO THE POLICE and/or the CORONER. The coroner decides whether a post-mortem examination (autopsy) is needed to establish the cause of death. The body must not be released to the family until the legal authorities allow it, and lines, tubes and evidence are left in place per policy.

❌ Why the other options are wrong:
• No one, as the patient has died in hospital — Dying in hospital does not remove the legal duty to report; the death resulted from a crime.
• Only the family, who decide what happens — The family cannot decide this; the law requires reporting.
• The hospital chaplain and the mortuary only — The chaplain and mortuary are informed for other reasons, but legal reporting is still required.

⭐ Key point: Other reportable deaths: deaths within 24 hours of admission, during or soon after surgery/anaesthesia, unknown cause, and deaths in police custody.$x$, null),
(154, $x$An ICU nurse is asked to give evidence in court. She should:$x$, $x$Use her contemporaneous notes and state facts honestly$x$, $x$✅ Correct answer: Use her contemporaneous notes and state facts honestly
When called to court, the nurse must ATTEND and act as a truthful witness of FACT. She may refer to her CONTEMPORANEOUS NOTES (records written at the time of the events), which help her recall details accurately. She should answer questions HONESTLY, clearly and only about what she saw and did — never guessing or exaggerating.

❌ Why the other options are wrong:
• Refuse to attend court without any reason — A nurse called as a witness must attend court; refusing without reason can be contempt of court.
• Give expert opinions outside her area of competence — She should stay within her own knowledge and competence; giving opinions outside her expertise is unprofessional and may mislead the court.
• Rewrite the notes before attending court — Rewriting notes is falsifying records — a crime and serious misconduct.

⭐ Key point: Good, accurate, timely documentation is the nurse's best legal defence. Seek advice from the hospital legal department or your professional association before attending court.$x$, null),
(155, $x$A patient with animal bite and hydrophobia, agitation and spasms most likely has:$x$, $x$Clinical rabies, which is almost always fatal$x$, $x$✅ Correct answer: Clinical rabies, which is almost always fatal
RABIES is a viral infection of the brain spread by the bite or scratch of an infected animal (usually dogs in Nigeria). After an incubation period (often 1–3 months), it causes HYDROPHOBIA (fear of water — painful throat spasms when trying to drink), AEROPHOBIA (spasms triggered by air on the face), AGITATION, confusion, hallucinations, excessive salivation and muscle spasms. Once these symptoms appear, rabies is ALMOST ALWAYS FATAL. Care is supportive and comfort-focused: a quiet, dark room, sedation and pain relief.

❌ Why the other options are wrong:
• Simple anxiety after the dog bite — Anxiety does not cause hydrophobia and spasms. These signs are specific to rabies.
• Bacterial meningitis from the wound — Meningitis causes fever, headache and neck stiffness, but not hydrophobia.
• Tetanus with lockjaw from a wound — Tetanus causes lockjaw and muscle spasms, but not hydrophobia, and the patient is usually mentally clear.

⭐ Key point: Rabies is PREVENTABLE: wash the bite wound with soap and running water for 15 minutes, then give post-exposure rabies vaccine (and rabies immunoglobulin for severe bites) promptly. Staff caring for patients use barrier precautions (gloves, gown, mask, eye protection).$x$, null),
(156, $x$Respect for autonomy is best shown in ICU by:$x$, $x$Involving competent patients in decisions$x$, $x$✅ Correct answer: Involving competent patients in decisions
AUTONOMY is the patient's right to make decisions about their own body and care. In ICU this is best shown by INVOLVING COMPETENT PATIENTS IN DECISIONS: giving them honest information in a way they understand, answering questions, asking their wishes, and respecting their choices (including refusal). For patients who cannot decide (e.g. sedated), the team considers any advance wishes and what the patient would have wanted.

❌ Why the other options are wrong:
• Following the family's wishes over the patient's — Following the family's wishes over a competent patient's ignores the patient's autonomy.
• Making all the decisions for the patient — Making all decisions for the patient is paternalism and does not respect autonomy.
• Withholding information to avoid worry — Withholding information prevents the patient from making informed choices.

⭐ Key point: The four main ethical principles: autonomy, beneficence (do good), non-maleficence (do no harm), and justice (fairness).$x$, null),
(157, $x$Justice in ICU resource allocation means:$x$, $x$Allocating beds by need and likely benefit$x$, $x$✅ Correct answer: Allocating beds by need and likely benefit
JUSTICE in resource allocation means distributing scarce ICU beds and treatment FAIRLY, based on clinical NEED and LIKELY BENEFIT (who is sick enough to need ICU and is likely to benefit from it), not on wealth, status or relationships. Triage policies and admission criteria help make fair and consistent decisions.

❌ Why the other options are wrong:
• First come, first served, whatever the need — First come, first served ignores severity of illness; a sicker patient arriving later may need the bed more.
• Admitting only patients who can pay in advance — Admitting only those who can pay discriminates against the poor and is unjust.
• Admitting friends and relatives of staff first — Favouring friends and relatives of staff is unfair and unethical.

⭐ Key point: Fair triage decisions should be transparent, consistent, documented and made by senior clinicians.$x$, null),
(158, $x$The Good Samaritan principle does NOT protect a nurse who:$x$, $x$Acts with gross negligence or beyond her training$x$, $x$✅ Correct answer: Acts with gross negligence or beyond her training
The GOOD SAMARITAN principle protects people who give emergency help voluntarily and IN GOOD FAITH, within their level of training, without expecting payment. It does NOT protect a nurse who acts with GROSS NEGLIGENCE (seriously careless, reckless actions) or who performs procedures BEYOND HER TRAINING and competence, causing harm.

❌ Why the other options are wrong:
• Provides first aid in good faith at the scene — Giving first aid in good faith is exactly what the principle protects.
• Calls for emergency help and ambulance services — Calling for help is a reasonable and protected action.
• Stays with the casualty until help arrives — Staying with the casualty until help arrives is good practice and protected.

⭐ Key point: At an emergency scene: ensure safety, call for help, give care within your competence, and hand over clearly to the emergency team.$x$, null),
(159, $x$Handing over a patient at the end of the shift should include:$x$, $x$Diagnosis, status, treatments, risks and pending tasks$x$, $x$✅ Correct answer: Diagnosis, status, treatments, risks and pending tasks
A good HANDOVER passes on all the information the next nurse needs to care safely: patient identity, DIAGNOSIS, current clinical STATUS (vital signs, level of consciousness, ventilator settings, infusions), TREATMENTS given and planned, RISKS (falls, pressure ulcers, allergies, infection status), and PENDING TASKS (tests, results to chase, drugs due). Structured tools such as SBAR (Situation, Background, Assessment, Recommendation) reduce errors.

❌ Why the other options are wrong:
• Personal opinions and gossip about the family — Gossip and personal opinions are unprofessional and do not help patient care.
• Only the bed number and the consultant's name — Bed number and consultant name alone are not enough to provide safe care.
• Only the patient's name and the hospital number — Name and hospital number identify the patient but say nothing about their care needs.

⭐ Key point: Handover is a high-risk time for errors. Do it at the bedside where possible, check the patient, lines, alarms and charts together.$x$, null),
(160, $x$Dispensing medications by a nurse without prescription in ICU is:$x$, $x$Outside her legal scope except under approved protocols$x$, $x$✅ Correct answer: Outside her legal scope except under approved protocols
Prescribing and dispensing medicines is generally the legal role of doctors and pharmacists. A nurse may only give medicines WITHOUT AN INDIVIDUAL PRESCRIPTION under APPROVED PROTOCOLS or standing orders (e.g. an emergency protocol for hypoglycaemia or cardiac arrest drugs) that the hospital has formally authorised. Otherwise, it is OUTSIDE HER LEGAL SCOPE of practice.

❌ Why the other options are wrong:
• Allowed for all drugs during the night shift — Night shift does not change the law; all medicines still need a prescription or approved protocol.
• Allowed whenever the patient asks for a drug — A patient's request does not authorise a nurse to give medicines.
• Always allowed in any emergency situation — Even in emergencies, drugs are given according to approved protocols or verbal orders from a doctor, which must be documented.

⭐ Key point: Practising outside your scope can lead to disciplinary action by the NMCN and legal liability.$x$, null),
(161, $x$The MOST appropriate leadership approach during a sudden cardiac arrest in the ICU is:$x$, $x$Autocratic leadership with clear, direct instructions$x$, $x$✅ Correct answer: Autocratic leadership with clear, direct instructions
A cardiac arrest is an emergency where every second matters. The team needs ONE CLEAR LEADER who gives DIRECT, SPECIFIC INSTRUCTIONS ("You do compressions", "Give adrenaline 1 mg now"). This is AUTOCRATIC (directive) leadership, which is the most suitable style in a crisis because it reduces confusion and delay. Good arrest leaders still use closed-loop communication and listen to team members' input.

❌ Why the other options are wrong:
• Democratic leadership by voting on interventions — Voting wastes precious time; decisions must be made quickly.
• Laissez-faire leadership — Laissez-faire (hands-off) leadership in an arrest would cause chaos.
• Bureaucratic leadership without communication — Bureaucratic leadership without communication would cause delays and confusion.

⭐ Key point: Democratic or transformational leadership is better for routine unit management, but autocratic leadership is best in emergencies.$x$, null),
(162, $x$A newly employed ICU nurse is unable to operate a mechanical ventilator safely. The nurse manager should FIRST:$x$, $x$Arrange supervised training and assess competency$x$, $x$✅ Correct answer: Arrange supervised training and assess competency
The nurse is not yet competent with the ventilator, so it is unsafe for them to care for ventilated patients alone. The manager should FIRST arrange SUPERVISED TRAINING (by a senior nurse or clinical educator) and then ASSESS COMPETENCY before allowing independent practice. This protects patients and supports the nurse's development.

❌ Why the other options are wrong:
• Assign the nurse to independent ventilator care — Assigning independent ventilator care to an untrained nurse puts patients at serious risk.
• Issue a written warning — A written warning is a disciplinary step; a knowledge gap in a new nurse needs training, not punishment.
• Transfer the nurse to another hospital — Transfer avoids the problem and wastes the chance to train the nurse.

⭐ Key point: ICU orientation should include competency checklists, preceptorship and a gradual increase in patient complexity.$x$, null),
(163, $x$The ICU manager notices an increase in medication errors during the night shift. The priority action is to:$x$, $x$Investigate root causes before corrective measures$x$, $x$✅ Correct answer: Investigate root causes before corrective measures
When errors increase, the manager must first find out WHY. A ROOT CAUSE ANALYSIS looks for system problems behind the errors: low staffing, fatigue, poor lighting, similar drug packaging, interruptions, lack of double-checking, or poor training. Only after understanding the causes can effective CORRECTIVE MEASURES be planned. This supports a "just culture" where staff report errors without fear.

❌ Why the other options are wrong:
• Report all of the nurses to the Nursing Council — Reporting everyone to the Council without investigation is unfair and does not fix the cause.
• Suspend all of the night-duty nurses at once — Suspending all night nurses punishes staff without evidence and leaves the unit unsafe.
• Reduce the number of patients admitted at night — Reducing admissions may not address the real cause and could harm patients who need ICU.

⭐ Key point: Most errors come from system failures, not just individual carelessness.$x$, null),
(164, $x$Theory Y managers believe that staff:$x$, $x$Enjoy work, seek responsibility and self-direct$x$, $x$✅ Correct answer: Enjoy work, seek responsibility and self-direct
McGregor's THEORY Y assumes that staff naturally ENJOY WORK, SEEK RESPONSIBILITY, are creative and can SELF-DIRECT when committed to goals. Theory Y managers delegate, involve staff in decisions and encourage growth.

❌ Why the other options are wrong:
• Work only for money and fear punishment — Working only for money and fearing punishment describes THEORY X.
• Cannot be trusted to make any decisions — Not trusting staff to make decisions is a Theory X belief.
• Dislike work and need close supervision — Disliking work and needing close supervision is Theory X.

⭐ Key point: Theory X = staff are lazy and need control. Theory Y = staff are motivated and responsible. Most modern ICU management uses Theory Y ideas.$x$, null),
(165, $x$Herzberg's motivation-hygiene theory states that salary and working conditions are:$x$, $x$Hygiene factors: they prevent dissatisfaction but do not motivate$x$, $x$✅ Correct answer: Hygiene factors: they prevent dissatisfaction but do not motivate
Herzberg's theory divides work factors into two groups. HYGIENE FACTORS (salary, working conditions, job security, policies, supervision, relationships): when poor, they cause DISSATISFACTION; when good, they PREVENT dissatisfaction, but do NOT truly motivate. MOTIVATORS (achievement, recognition, responsibility, advancement, growth, the work itself) truly increase motivation and satisfaction.

❌ Why the other options are wrong:
• Factors that directly increase achievement and growth — Achievement and growth are motivators; salary and conditions are hygiene factors.
• Completely irrelevant to job satisfaction in nursing — Hygiene factors are not irrelevant; if they are poor, staff become dissatisfied.
• The main motivators that drive nurses to perform better — In Herzberg's theory, salary is NOT the main motivator; motivation comes from recognition, responsibility and achievement.

⭐ Key point: To motivate ICU nurses: fair pay and good conditions (to prevent dissatisfaction) PLUS recognition, responsibility and career development (to motivate).$x$, null),
(166, $x$Transformational leadership in ICU is characterised by:$x$, $x$Inspiring a shared vision and encouraging growth$x$, $x$✅ Correct answer: Inspiring a shared vision and encouraging growth
TRANSFORMATIONAL LEADERS INSPIRE staff with a SHARED VISION, act as role models, encourage innovation, support professional GROWTH and give individual attention. This style improves staff satisfaction, retention and patient outcomes.

❌ Why the other options are wrong:
• Leaving staff to make all decisions on their own — Leaving staff to decide everything alone is laissez-faire leadership.
• Focusing only on tasks, targets and rewards — Focusing only on tasks, targets and rewards is transactional leadership.
• Strict rules with punishment for every mistake — Strict rules with punishment describes an autocratic, punitive style.

⭐ Key point: Transformational leadership is linked to "Magnet" hospitals and a positive safety culture.$x$, null),
(167, $x$A root cause analysis after a serious incident in ICU aims to:$x$, $x$Identify system failures behind the event$x$, $x$✅ Correct answer: Identify system failures behind the event
ROOT CAUSE ANALYSIS (RCA) is a structured investigation after a serious incident to find out WHAT happened, WHY it happened, and HOW to prevent it happening again. It focuses on SYSTEM FAILURES (processes, equipment, staffing, communication) rather than blaming individuals.

❌ Why the other options are wrong:
• Close the case as quickly as possible — Closing the case quickly misses the chance to learn and prevent future harm.
• Find the individual who should be blamed — RCA is not about blaming individuals; blame discourages reporting.
• Avoid informing the family of the event — The family should be informed honestly (duty of candour), not kept in the dark.

⭐ Key point: A "just culture" balances accountability with learning; staff are encouraged to report errors and near misses.$x$, null),
(168, $x$A 'near miss' in ICU should be:$x$, $x$Reported, because it shows a risk of harm$x$, $x$✅ Correct answer: Reported, because it shows a risk of harm
A NEAR MISS is an event that could have caused harm but was caught before it reached the patient (or reached the patient without harm). It should be REPORTED because it shows a RISK in the system. Learning from near misses helps prevent actual harm in the future.

❌ Why the other options are wrong:
• Hidden from the manager to avoid blame — Hiding near misses prevents learning and allows the risk to remain.
• Ignored, because no harm occurred — Even without harm, the same error could injure the next patient.
• Reported only if the patient complains — Reporting should not depend on patient complaints.

⭐ Key point: Many serious incidents are preceded by many near misses. Reporting them is a sign of a good safety culture.$x$, null),
(169, $x$The ICU nurse manager's role in infection control includes:$x$, $x$Monitoring compliance, training staff, reporting rates$x$, $x$✅ Correct answer: Monitoring compliance, training staff, reporting rates
The ICU nurse manager leads infection prevention in the unit by: MONITORING COMPLIANCE (hand hygiene audits, care bundles), TRAINING STAFF (infection control practices, PPE use), and REPORTING INFECTION RATES (e.g. VAP, CLABSI, CAUTI) to the infection control team. Surveillance data guide improvements.

❌ Why the other options are wrong:
• Prescribing antibiotics for all patients — Prescribing antibiotics is the doctor's role, and not all patients need antibiotics.
• Performing all invasive procedures personally — The manager does not personally perform all invasive procedures; trained staff perform them using aseptic technique.
• Ignoring the results of infection audits — Ignoring audit results wastes the opportunity to improve care.

⭐ Key point: Hand hygiene is the single most important measure to prevent infection in ICU.$x$, null),
(170, $x$When ICU beds are full and a critically ill patient needs admission, the manager should:$x$, $x$Review patients for step-down and agree triage with the team$x$, $x$✅ Correct answer: Review patients for step-down and agree triage with the team
When ICU is full, the manager should work with the team to find a SAFE SOLUTION: REVIEW current ICU patients to identify those stable enough to STEP DOWN to a high-dependency unit or ward, and agree on TRIAGE with the senior doctors (who needs ICU most). If no bed can be made, follow the escalation policy: transfer to another ICU, or provide temporary critical care outreach.

❌ Why the other options are wrong:
• Refuse all communication until a bed becomes free — Refusing communication leaves a critically ill patient without care.
• Discharge the sickest patient to make room — Discharging the sickest patient is dangerous; it is the most stable patient who should step down.
• Admit the patient to a corridor without monitoring — Placing a critically ill patient in a corridor without monitoring is unsafe.

⭐ Key point: Escalation policies, bed management meetings and outreach teams help manage ICU capacity.$x$, null),
(171, $x$Early warning scores (e.g. NEWS2) help the ICU by:$x$, $x$Detecting ward deterioration and triggering early review$x$, $x$✅ Correct answer: Detecting ward deterioration and triggering early review
EARLY WARNING SCORES (such as NEWS2) combine routine vital signs (respiratory rate, oxygen saturation, BP, pulse, consciousness level, temperature, oxygen use) into a single score. A high or rising score shows the patient is DETERIORATING and TRIGGERS EARLY REVIEW by a doctor or the critical care outreach/ICU team. This allows treatment before cardiac arrest or ICU admission becomes unavoidable.

❌ Why the other options are wrong:
• Replacing routine nursing observations on the ward — NEWS2 uses routine observations; it does not replace them.
• Assessing the performance of the nursing staff — It assesses patients, not staff performance.
• Calculating drug doses for critically ill patients — It does not calculate drug doses.

⭐ Key point: NEWS2 score of 5 or more (or 3 in any single parameter) needs urgent review; 7 or more needs emergency response.$x$, null),
(172, $x$An ICU orientation programme for new nurses should include:$x$, $x$Policies, equipment training, competencies and a preceptor$x$, $x$✅ Correct answer: Policies, equipment training, competencies and a preceptor
A good ICU ORIENTATION PROGRAMME prepares new nurses to work safely. It includes: unit POLICIES and procedures, EQUIPMENT TRAINING (ventilators, monitors, infusion pumps), COMPETENCY assessments, and a PRECEPTOR (an experienced nurse who guides and supervises the new nurse).

❌ Why the other options are wrong:
• Immediate sole care of two ventilated patients — Giving a new nurse two ventilated patients immediately is unsafe.
• Only a short tour of the unit on the first day — A short tour is not enough to prepare a nurse for complex ICU care.
• Reading the history of the hospital and its founders — The hospital's history is not essential to safe ICU practice.

⭐ Key point: Competency-based orientation improves patient safety and staff retention.$x$, null),
(173, $x$Staff appraisal in ICU is mainly used to:$x$, $x$Review performance and plan development$x$, $x$✅ Correct answer: Review performance and plan development
STAFF APPRAISAL (performance review) is a regular meeting between the manager and the staff member to REVIEW PERFORMANCE (strengths and areas to improve) and PLAN DEVELOPMENT (training, goals, career progression). It provides feedback and motivation.

❌ Why the other options are wrong:
• Replace formal training and education — Appraisal identifies training needs; it does not replace training.
• Reduce the salaries of underperforming staff — It is not used to reduce salaries.
• Punish staff for errors made in the year — It is not for punishment; errors are handled through supportive systems.

⭐ Key point: Appraisal should be fair, two-way, documented and lead to a personal development plan.$x$, null),
(174, $x$A care bundle in ICU is:$x$, $x$A small set of evidence-based practices done together$x$, $x$✅ Correct answer: A small set of evidence-based practices done together
A CARE BUNDLE is a SMALL SET (usually 3–5) of EVIDENCE-BASED PRACTICES that, when performed TOGETHER and consistently, improve patient outcomes more than when done individually. Examples: the VAP bundle (head of bed 30–45°, daily sedation hold, oral care with chlorhexidine, subglottic suction, DVT and stress ulcer prophylaxis); the central line (CLABSI) bundle; the sepsis bundle.

❌ Why the other options are wrong:
• A group of patients cared for by one nurse — A group of patients cared for by one nurse is a "patient assignment".
• A collection of emergency drugs on a trolley — Emergency drugs on a trolley form a "crash cart".
• A package of clean linen prepared for each bed — Linen packages are not care bundles.

⭐ Key point: Bundles work by "all or nothing" compliance — every element should be done for every patient.$x$, null),
(175, $x$Monitoring ICU quality indicators includes measuring:$x$, $x$Unplanned readmissions, infection rates, mortality$x$, $x$✅ Correct answer: Unplanned readmissions, infection rates, mortality
ICU QUALITY INDICATORS measure the quality and safety of care: UNPLANNED READMISSIONS to ICU, INFECTION RATES (VAP, CLABSI, CAUTI), MORTALITY, pressure ulcers, medication errors, unplanned extubations and patient satisfaction. Monitoring these guides quality improvement.

❌ Why the other options are wrong:
• The number of visitors to the unit each day — The number of visitors does not measure quality of care.
• The number of chairs available in the unit — The number of chairs does not measure quality of care.
• The colour and style of the staff uniforms — Uniform style is not a quality indicator.

⭐ Key point: Quality indicators should be measured regularly and compared to benchmarks.$x$, null),
(176, $x$Infection risk in an ICU is reduced in the design by:$x$, $x$Single isolation rooms and sinks by each bed$x$, $x$✅ Correct answer: Single isolation rooms and sinks by each bed
Good ICU DESIGN reduces infection: SINGLE ISOLATION ROOMS prevent spread between patients; SINKS BY EACH BED make hand hygiene easy; NEGATIVE PRESSURE ROOMS are used for airborne infections (e.g. TB); enough space between beds; and easy-to-clean surfaces.

❌ Why the other options are wrong:
• No mechanical ventilation system at all — Mechanical ventilation (airflow) systems are important for clean air; having none increases infection risk.
• Carpets on the floor to reduce noise — Carpets trap dirt and germs and are hard to clean; ICU floors should be smooth and washable.
• Equipment shared between neighbouring beds — Sharing equipment between beds spreads infection; each patient should have their own.

⭐ Key point: Hand hygiene facilities at every bedside are key to compliance.$x$, null),
(177, $x$Conflict between ICU nurses and doctors is best managed by:$x$, $x$Open discussion focused on patient goals, with respect$x$, $x$✅ Correct answer: Open discussion focused on patient goals, with respect
Conflict between nurses and doctors is best managed by OPEN, RESPECTFUL DISCUSSION FOCUSED ON PATIENT GOALS. This collaborative approach finds the best solution for the patient and improves teamwork. If needed, involve senior staff or use a structured approach (e.g. SBAR).

❌ Why the other options are wrong:
• Writing formal complaints without any discussion — Formal complaints without discussion escalate the conflict without trying to resolve it.
• Avoiding each other for the rest of the shift — Avoidance leaves the conflict unresolved and may harm patient care.
• Shouting at each other in front of the patients — Shouting in front of patients is unprofessional and distressing.

⭐ Key point: Collaboration ("win-win") is the best long-term conflict resolution strategy.$x$, null),
(178, $x$Disaster planning for an ICU includes:$x$, $x$Surge plans, staff call-in lists and equipment reserves$x$, $x$✅ Correct answer: Surge plans, staff call-in lists and equipment reserves
DISASTER PLANNING ensures the ICU can cope with a sudden large number of critically ill patients (e.g. bombing, building collapse, epidemic). It includes: SURGE PLANS (extra beds and areas), STAFF CALL-IN LISTS, EQUIPMENT RESERVES (ventilators, oxygen, drugs), clear roles, communication systems, and regular DRILLS.

❌ Why the other options are wrong:
• No plans at all, because disasters are very rare — Disasters are unpredictable; planning is essential.
• Closing the unit completely during an emergency — Closing the unit in an emergency would deny critical care when it is most needed.
• Leaving the decisions to visitors and relatives — Visitors and relatives cannot make professional decisions.

⭐ Key point: Regular drills test readiness and identify weaknesses before a real disaster.$x$, null),
(179, $x$The ICU manager's report on monthly activity should include:$x$, $x$Admissions, outcomes, incidents, staffing, resources$x$, $x$✅ Correct answer: Admissions, outcomes, incidents, staffing, resources
A MONTHLY ACTIVITY REPORT gives a full picture of the unit's work: ADMISSIONS (numbers and types of patients), OUTCOMES (discharges, deaths), INCIDENTS (errors, falls, infections), STAFFING levels, and RESOURCES (equipment, supplies, budget). This information guides planning and budgeting.

❌ Why the other options are wrong:
• Only the names of the patients admitted — Patients' names alone give no useful management information and risk confidentiality.
• Only the birthdays of the staff that month — Staff birthdays are not relevant to unit management.
• Only the number of beds in the unit — The number of beds alone is insufficient.

⭐ Key point: Reports inform decisions about staffing, equipment purchase and quality improvement.$x$, null),
(180, $x$Moral distress among ICU nurses often arises when:$x$, $x$They cannot act on what they believe is right$x$, $x$✅ Correct answer: They cannot act on what they believe is right
MORAL DISTRESS occurs when a nurse KNOWS WHAT IS ETHICALLY RIGHT but CANNOT ACT on it because of constraints (e.g. continuing aggressive treatment the nurse believes is futile, lack of resources, hierarchy, or institutional policies). It can lead to burnout and staff leaving.

❌ Why the other options are wrong:
• They have adequate staffing on every shift — Adequate staffing reduces moral distress.
• They receive good training and support — Good training and support reduce moral distress.
• They are well paid for their work in ICU — Good pay does not cause moral distress.

⭐ Key point: Ethics committees, open team discussions, debriefing and staff support help reduce moral distress.$x$, null),
(181, $x$Which group of patients is classically at highest risk of Mendelson's syndrome?$x$, $x$Pregnant women undergoing emergency general anaesthesia$x$, $x$✅ Correct answer: Pregnant women undergoing emergency general anaesthesia
MENDELSON'S SYNDROME is a chemical pneumonitis caused by inhaling acidic stomach contents during anaesthesia. PREGNANT WOMEN undergoing EMERGENCY GENERAL ANAESTHESIA (e.g. emergency caesarean) are at highest risk because: progesterone relaxes the lower oesophageal sphincter; gastric emptying is delayed (especially in labour and with opioids); the enlarged uterus raises intra-abdominal pressure; and emergency patients may not have fasted. Mendelson first described it in obstetric patients.

❌ Why the other options are wrong:
• Patients who fasted appropriately before elective day-case surgery — Patients who have fasted properly before elective surgery have a low risk.
• Well-controlled type 2 diabetics undergoing outpatient dental extraction — Well-controlled diabetics having dental extraction (usually under local anaesthesia) have a low risk.
• Patients undergoing local anaesthesia for minor skin procedures — Local anaesthesia keeps protective airway reflexes intact, so the risk is very low.

⭐ Key point: Prevention: fasting where possible, antacids (sodium citrate), H2 blockers (ranitidine) or PPIs, metoclopramide, regional anaesthesia instead of GA, and rapid sequence induction with cricoid pressure.$x$, null),
(182, $x$Which precaution is most important in reducing the risk of anaesthetic death related to a difficult or failed airway?$x$, $x$Thorough airway assessment and a ready difficult airway plan and equipment$x$, $x$✅ Correct answer: Thorough airway assessment and a ready difficult airway plan and equipment
Many anaesthetic deaths are due to failure to secure the airway ("can't intubate, can't oxygenate"). The most important precaution is a THOROUGH AIRWAY ASSESSMENT before anaesthesia (e.g. mouth opening, Mallampati score, neck movement, thyromental distance, previous difficult intubation) and having a READY DIFFICULT AIRWAY PLAN AND EQUIPMENT (video laryngoscope, bougie, supraglottic airway devices, front-of-neck access kit), with skilled help available.

❌ Why the other options are wrong:
• Relying only on the surgeon's assessment of the patient's airway — The surgeon's assessment alone is not enough; airway assessment is the anaesthetist's responsibility.
• Proceeding with induction without any airway assessment to save time — Skipping assessment to save time increases the risk of an unexpected difficult airway.
• Avoiding pre-oxygenation so that the procedure is completed faster — Pre-oxygenation is vital; it gives extra time before oxygen levels fall if intubation is difficult.

⭐ Key point: Follow difficult airway algorithms (e.g. Difficult Airway Society guidelines). Always have suction and oxygen ready.$x$, null),
(183, $x$A comprehensive nutritional assessment typically integrates which four broad components?$x$, $x$Anthropometry, biochemistry, clinical examination and dietary history$x$, $x$✅ Correct answer: Anthropometry, biochemistry, clinical examination and dietary history
A comprehensive NUTRITIONAL ASSESSMENT uses the "ABCD" approach: A – ANTHROPOMETRY (weight, height, BMI, mid-upper arm circumference, skinfold thickness); B – BIOCHEMISTRY (albumin, prealbumin, electrolytes, glucose, micronutrients); C – CLINICAL EXAMINATION (muscle wasting, oedema, hair, skin and nail changes); D – DIETARY HISTORY (what and how much the patient eats, appetite, swallowing).

❌ Why the other options are wrong:
• Blood pressure, pulse, respiratory rate and core temperature — Vital signs are part of general assessment, not specifically nutritional assessment.
• Body weight and height only, used to calculate the BMI — Weight and height alone (BMI) is incomplete and can be misleading (e.g. oedema hides weight loss).
• Vital signs, medication list, allergy history and resuscitation status — Vital signs, medications, allergies and resuscitation status are general clinical information, not nutritional assessment.

⭐ Key point: Screening tools such as MUST or NUTRIC identify patients at risk of malnutrition who need full assessment.$x$, null),
(184, $x$Which of the following is an example of an anthropometric measurement used in nutritional assessment?$x$, $x$Mid-upper arm circumference$x$, $x$✅ Correct answer: Mid-upper arm circumference
ANTHROPOMETRIC measurements assess body size and composition. Examples: weight, height, BMI, MID-UPPER ARM CIRCUMFERENCE (MUAC), skinfold thickness, and waist circumference. MUAC is especially useful in ICU patients who cannot be weighed, and in children to screen for malnutrition.

❌ Why the other options are wrong:
• Serum albumin level — Serum albumin is a BIOCHEMICAL measurement, and it is affected by inflammation and fluid status.
• White blood cell count — White cell count is a biochemical/haematological test related to infection or inflammation, not anthropometry.
• C-reactive protein level — CRP is a biochemical marker of inflammation.

⭐ Key point: In children, MUAC below 11.5 cm indicates severe acute malnutrition.$x$, null),
(185, $x$The usual first priority when aspiration of gastric content is witnessed during induction is:$x$, $x$Head-down tilt, suction and a cuffed tube to secure the airway$x$, $x$✅ Correct answer: Head-down tilt, suction and a cuffed tube to secure the airway
When aspiration of stomach contents is SEEN during induction, the priority is to limit further aspiration and protect the airway: tilt the patient HEAD-DOWN (so fluid drains out of the mouth rather than into the lungs), SUCTION the mouth and pharynx, and secure the airway with a CUFFED ENDOTRACHEAL TUBE (the cuff seals the trachea). Then suction through the tube before ventilating if possible, and give 100% oxygen.

❌ Why the other options are wrong:
• Give IV steroids as the first and most important step — Steroids are NOT recommended for aspiration; they do not improve outcome.
• Wait for a chest X-ray before doing anything else — Waiting for a chest X-ray delays urgent airway management.
• Sit the patient upright and give oral fluids to wash the throat — Sitting the patient up and giving oral fluids to an anaesthetised patient would cause more aspiration.

⭐ Key point: Bronchoscopy may be needed to remove solid particles. Antibiotics are not given routinely unless infection develops. Monitor for hypoxia and ARDS.$x$, null),
(186, $x$Gastric residual volumes in an enterally fed ICU patient are:$x$, $x$Only one sign of tolerance, alongside abdominal examination$x$, $x$✅ Correct answer: Only one sign of tolerance, alongside abdominal examination
GASTRIC RESIDUAL VOLUME (GRV) — the amount of feed left in the stomach — is only ONE SIGN of feed tolerance. It must be considered together with ABDOMINAL EXAMINATION (distension, pain, bowel sounds), vomiting, and bowel movements. Studies show that stopping feeds for moderate residuals (e.g. under 500 mL) without other signs leads to underfeeding, without reducing pneumonia.

❌ Why the other options are wrong:
• Never checked in any enterally fed ICU patient — GRVs may still be checked in some units as part of a tolerance assessment.
• The only reliable measure of feed tolerance in ICU — It is not the only reliable measure; it is unreliable on its own.
• Used to calculate the patient's daily calorie needs — GRV does not calculate calorie needs.

⭐ Key point: Keep the head of the bed at 30–45° to reduce aspiration. Consider prokinetics (e.g. metoclopramide, erythromycin) for intolerance.$x$, null),
(187, $x$Parenteral nutrition via a central line requires:$x$, $x$Strict asepsis, a dedicated lumen and glucose checks$x$, $x$✅ Correct answer: Strict asepsis, a dedicated lumen and glucose checks
PARENTERAL NUTRITION (PN) is a sugar- and fat-rich solution that is an ideal growth medium for bacteria. It requires: STRICT ASEPSIS when handling lines and bags; a DEDICATED LUMEN of the central line (not shared with other infusions or blood); and regular BLOOD GLUCOSE CHECKS (because high glucose content often causes hyperglycaemia). Also monitor electrolytes, liver function and triglycerides.

❌ Why the other options are wrong:
• Hanging each bag for up to 72 hours — PN bags should hang for a maximum of 24 hours (lipids often 12–24 hours) to prevent bacterial growth.
• No need for blood glucose monitoring — Glucose must be monitored; hyperglycaemia is a common complication.
• Sharing the lumen with blood transfusions — Sharing the lumen with blood transfusion increases the risk of infection and incompatibility.

⭐ Key point: Watch for refeeding syndrome (low phosphate, potassium and magnesium) when starting PN in malnourished patients.$x$, null),
(188, $x$Calorie needs of a critically ill adult in the early phase are about:$x$, $x$20–25 kcal/kg/day$x$, $x$✅ Correct answer: 20–25 kcal/kg/day
In the early (acute) phase of critical illness, the recommended calorie intake is about 20–25 kcal/kg/day, increasing gradually as the patient recovers (up to 25–30 kcal/kg/day). Early "permissive underfeeding" may be beneficial because the body produces its own glucose during stress, and overfeeding causes harm.

❌ Why the other options are wrong:
• 100 kcal/kg/day — 100 kcal/kg/day is massive overfeeding for an adult.
• 50 kcal/kg/day — 50 kcal/kg/day would cause overfeeding, leading to hyperglycaemia, fatty liver and increased CO2 production.
• 5 kcal/kg/day — 5 kcal/kg/day is far too little and would cause severe malnutrition.

⭐ Key point: Overfeeding increases CO2 production, which can make weaning from the ventilator harder. Protein needs are high (1.2–2.0 g/kg/day).$x$, null),
(189, $x$Enteral feeding should be started in a critically ill patient:$x$, $x$Within 24–48 hours, once haemodynamically stable$x$, $x$✅ Correct answer: Within 24–48 hours, once haemodynamically stable
EARLY ENTERAL FEEDING — within 24–48 HOURS of ICU admission, once the patient is HAEMODYNAMICALLY STABLE (not on rising vasopressors, adequately resuscitated) — is recommended. It maintains the gut lining (gut integrity), reduces bacterial translocation and infection, and supports the immune system.

❌ Why the other options are wrong:
• Only after two weeks of IV fluids alone — Waiting two weeks causes malnutrition and gut atrophy.
• Only after the patient has been extubated — Ventilated patients can be safely fed by nasogastric tube; extubation is not required.
• Only when the patient asks for food — Many ICU patients are sedated or intubated and cannot ask for food; nutrition must be planned.

⭐ Key point: Enteral feeding is preferred over parenteral feeding when the gut works ("If the gut works, use it").$x$, null),
(190, $x$Chest physiotherapy with percussion is contraindicated in:$x$, $x$Unstable rib fractures and active bleeding$x$, $x$✅ Correct answer: Unstable rib fractures and active bleeding
Chest physiotherapy with PERCUSSION (clapping on the chest) is CONTRAINDICATED in UNSTABLE RIB FRACTURES (it could displace fractures and injure the lungs) and ACTIVE BLEEDING (e.g. haemoptysis, coagulopathy, low platelets), because it could worsen injury and bleeding.

❌ Why the other options are wrong:
• Retained secretions in the lower lobes — Retained secretions are an indication for chest physiotherapy.
• Cystic fibrosis with thick sputum — Cystic fibrosis with thick sputum is a classic indication.
• Lobar atelectasis on the chest X-ray — Lobar atelectasis (collapse) is an indication; physiotherapy helps re-expand the lung.

⭐ Key point: Other contraindications: unstable cardiovascular status, raised intracranial pressure, recent spinal injury, osteoporosis and untreated pneumothorax.$x$, null),
(191, $x$Manual hyperinflation in ventilated patients aims to:$x$, $x$Re-expand collapsed alveoli and move secretions$x$, $x$✅ Correct answer: Re-expand collapsed alveoli and move secretions
MANUAL HYPERINFLATION (MHI) uses a manual bag to give slow, deep breaths followed by a quick release. It aims to RE-EXPAND COLLAPSED ALVEOLI (improve lung volume and oxygenation) and MOVE SECRETIONS towards the large airways, so they can be suctioned out.

❌ Why the other options are wrong:
• Replace the need for any suctioning — MHI helps move secretions, which are then removed by suctioning; it does not replace suctioning.
• Reduce oxygenation to rest the lungs — MHI aims to improve oxygenation, not reduce it.
• Increase the depth of patient sedation — MHI does not affect sedation.

⭐ Key point: Avoid MHI in patients with high PEEP requirements (disconnection causes collapse), pneumothorax, severe bronchospasm or haemodynamic instability.$x$, null),
(192, $x$Early mobilisation in ICU is safe when:$x$, $x$The patient is cardiovascularly and respiratorily stable$x$, $x$✅ Correct answer: The patient is cardiovascularly and respiratorily stable
EARLY MOBILISATION (sitting up, standing, walking) in ICU reduces muscle weakness, delirium, ventilator days and length of stay. It is safe when the patient is CARDIOVASCULARLY STABLE (stable BP and heart rate, not on rising vasopressors) and RESPIRATORY STABLE (adequate oxygenation on reasonable ventilator settings).

❌ Why the other options are wrong:
• The patient's SpO₂ is below 85% on high FiO₂ — SpO2 below 85% on high FiO2 is severe respiratory instability; mobilisation is unsafe.
• The patient's intracranial pressure is uncontrolled — Uncontrolled intracranial pressure is a contraindication.
• The patient is on increasing doses of vasopressors — Increasing vasopressor doses show cardiovascular instability; mobilisation is unsafe.

⭐ Key point: Mobilisation progresses step by step: sitting in bed → sitting on the edge → standing → marching on the spot → walking.$x$, null),
(193, $x$A sickle cell patient's Hb electrophoresis showing HbF elevated after hydroxyurea means:$x$, $x$Hydroxyurea is raising fetal Hb, which reduces sickling$x$, $x$✅ Correct answer: Hydroxyurea is raising fetal Hb, which reduces sickling
HYDROXYUREA (hydroxycarbamide) increases the production of FETAL HAEMOGLOBIN (HbF). HbF does not sickle and dilutes the sickle haemoglobin (HbS) in red cells, so cells are less likely to sickle. A RISING HbF after starting hydroxyurea shows that the DRUG IS WORKING, which reduces painful crises, acute chest syndrome, transfusion needs and death.

❌ Why the other options are wrong:
• The patient has beta thalassaemia major as well — A raised HbF in this context is due to the drug, not a sign of thalassaemia major.
• The drug has failed and should be stopped now — A rising HbF is the desired response, not drug failure.
• The patient is dehydrated and needs IV fluids — HbF level is not related to dehydration.

⭐ Key point: Hydroxyurea side effects: bone marrow suppression (monitor FBC), and it should be avoided in pregnancy. It is recommended for many children with sickle cell anaemia from 9 months of age.$x$, null),
(194, $x$A modified Allen's test is performed before:$x$, $x$Radial arterial puncture or arterial line insertion$x$, $x$✅ Correct answer: Radial arterial puncture or arterial line insertion
The MODIFIED ALLEN'S TEST checks that the ULNAR ARTERY can supply blood to the hand on its own, in case the RADIAL ARTERY becomes blocked after puncture or cannulation. Method: compress both radial and ulnar arteries while the patient clenches the fist; the hand goes pale; release the ULNAR artery only. If colour returns within about 5–15 seconds, collateral flow is adequate. It is performed before RADIAL ARTERIAL PUNCTURE (ABG sampling) or ARTERIAL LINE insertion.

❌ Why the other options are wrong:
• Central venous cannulation in the internal jugular — Internal jugular central venous cannulation does not involve the hand's arteries.
• Urinary catheterisation in men with retention — Urinary catheterisation is unrelated.
• Lumbar puncture for CSF sampling in meningitis — Lumbar puncture is unrelated.

⭐ Key point: If the test is abnormal (slow colour return), use another site (e.g. the other radial, or the femoral artery).$x$, null),
(195, $x$Culture and sensitivity results are used to:$x$, $x$Narrow antibiotics to the most effective agent$x$, $x$✅ Correct answer: Narrow antibiotics to the most effective agent
CULTURE AND SENSITIVITY (C&S) tests grow the bacteria causing an infection and test which antibiotics kill them. Results allow the team to NARROW (de-escalate) treatment from broad-spectrum antibiotics to the MOST EFFECTIVE, narrowest-spectrum agent. This is part of ANTIMICROBIAL STEWARDSHIP, which reduces antibiotic resistance, side effects and C. difficile infection.

❌ Why the other options are wrong:
• Diagnose viral infections such as flu — C&S is used for bacterial (and fungal) infections; viruses are diagnosed by other tests (e.g. PCR).
• Start antibiotics only after seven days — In sepsis, antibiotics are started immediately after cultures are taken, not after 7 days.
• Avoid giving any antibiotics at all — C&S guides the choice of antibiotics; it is not to avoid treatment.

⭐ Key point: Always take cultures BEFORE starting antibiotics (but do not delay antibiotics in sepsis). Review antibiotics daily.$x$, null),
(196, $x$Contact precautions for MRSA in ICU include:$x$, $x$Gloves, apron or gown, own equipment, hand hygiene$x$, $x$✅ Correct answer: Gloves, apron or gown, own equipment, hand hygiene
MRSA (methicillin-resistant Staphylococcus aureus) spreads mainly by CONTACT — hands, equipment and surfaces. CONTACT PRECAUTIONS include: GLOVES and APRON/GOWN for contact with the patient or surroundings; DEDICATED EQUIPMENT (own stethoscope, BP cuff, thermometer); strict HAND HYGIENE before and after contact; and ideally a single room or cohorting.

❌ Why the other options are wrong:
• Nursing in an open bay without isolation — Nursing MRSA patients in an open bay without isolation increases spread.
• No special precautions for MRSA patients — MRSA requires precautions to prevent spread to other vulnerable patients.
• Airborne N95 masks only, without gloves — MRSA is not airborne; N95 masks are not the main precaution, and gloves are essential.

⭐ Key point: Decolonisation (e.g. nasal mupirocin and chlorhexidine body wash) may be used to reduce MRSA carriage.$x$, null),
(197, $x$The best teaching method for ICU nurses learning ventilator setup is:$x$, $x$Demonstration with supervised practice and return demonstration$x$, $x$✅ Correct answer: Demonstration with supervised practice and return demonstration
Learning to set up a ventilator is a PSYCHOMOTOR (practical, hands-on) skill. The best method is: DEMONSTRATION by an expert, then SUPERVISED PRACTICE by the learner, and finally RETURN DEMONSTRATION (the learner shows they can do it correctly). This builds competence and confidence.

❌ Why the other options are wrong:
• Watching through the window from outside the room — Watching through a window gives no hands-on practice.
• A lecture in a classroom with no practical session — A lecture without practice does not develop practical skills.
• Reading the ventilator manual alone at home — Reading a manual alone does not ensure correct, safe practice.

⭐ Key point: Simulation training is also very effective for practical ICU skills.$x$, null),
(198, $x$A health talk to relatives of ICU patients should be:$x$, $x$Simple, short and with time for questions$x$, $x$✅ Correct answer: Simple, short and with time for questions
Relatives of ICU patients are often stressed, worried and tired. A health talk should be SIMPLE (plain language, no jargon), SHORT, and allow TIME FOR QUESTIONS. This helps them understand and reduces their anxiety.

❌ Why the other options are wrong:
• Full of medical terms and abbreviations — Medical terms and abbreviations confuse families.
• Given without any preparation — Preparation is needed to make sure the information is accurate and appropriate.
• Very long, without any breaks — Long talks without breaks overwhelm stressed relatives.

⭐ Key point: Use teach-back (ask relatives to explain in their own words) to check understanding.$x$, null),
(199, $x$Reflective practice after a difficult ICU case helps nurses to:$x$, $x$Learn from experience and improve care$x$, $x$✅ Correct answer: Learn from experience and improve care
REFLECTIVE PRACTICE means thinking carefully about an experience — what happened, how you felt, what went well and what didn't, and what you would do differently. It helps nurses LEARN FROM EXPERIENCE and IMPROVE future CARE. It also helps them process emotional stress after difficult cases.

❌ Why the other options are wrong:
• Avoid learning from the event — Reflection is designed to help learning, not avoid it.
• Forget the event as fast as possible — Reflection helps nurses process and learn, not just forget.
• Find someone else to blame — Reflection is not about blaming others.

⭐ Key point: Gibbs' reflective cycle: Description, Feelings, Evaluation, Analysis, Conclusion, Action plan.$x$, null),
(200, $x$Critical thinking in ICU nursing involves:$x$, $x$Analysing data, questioning assumptions, reasoned decisions$x$, $x$✅ Correct answer: Analysing data, questioning assumptions, reasoned decisions
CRITICAL THINKING in ICU nursing means ANALYSING DATA (vital signs, lab results, patient responses), QUESTIONING ASSUMPTIONS (e.g. "Is this really the cause?", "Is this order safe?"), and making REASONED DECISIONS based on evidence. It helps the nurse spot problems early and keep patients safe.

❌ Why the other options are wrong:
• Following every order exactly without any thought — Following every order without thought could lead to harm (e.g. a wrong dose).
• Relying only on memory for all clinical decisions — Memory alone can be wrong; decisions should be based on current assessment and evidence.
• Avoiding decisions and waiting for others to act — Avoiding decisions delays care and may harm the patient.

⭐ Key point: Critical thinking improves patient safety and helps nurses act as the patient's advocate.$x$, null)
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
