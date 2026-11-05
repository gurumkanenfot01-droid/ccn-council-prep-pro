-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 12 (200 questions)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$ICU patients account for approximately what proportion of all hospital-acquired infections, despite occupying fewer than 10% of beds?$x$, $x$>20%$x$, $x$✅ Correct answer: >20%
ICU patients make up fewer than 10% of hospital beds but have more than 20% of all hospital-acquired infections. They are very ill, have weak immunity, and have many invasive devices (ETT, central lines, urinary catheters, arterial lines) that let germs in. They also receive many antibiotics, which select resistant germs, and get frequent hands-on care.

❌ Why the other options are wrong:
• >50% — More than 5% understates the problem; ICU patients carry far more than their share.
• >5% — More than 50% overstates the usual figure.
• >90% — More than 90% is far too high.

⭐ Key point: ICU = highest infection risk in the hospital. Hand hygiene, care bundles and removing devices early are the main defences.$x$, null),
(2, $x$Barrier nursing, as classically defined, aims to:$x$, $x$Protect others from the patient$x$, $x$✅ Correct answer: Protect others from the patient
Barrier nursing (source isolation) is used when the PATIENT has an infection that can spread. The barriers (single room, gloves, gown, mask, dedicated equipment, hand hygiene) stop germs from leaving the patient and reaching staff, visitors and other patients. Its purpose is to PROTECT OTHERS FROM THE PATIENT.

❌ Why the other options are wrong:
• Have no protective purpose — It clearly has a protective purpose.
• Only apply to surgical patients — It is used for any infectious patient, not only surgical ones.
• Protect the patient from others — Protecting the patient FROM others is REVERSE barrier nursing (protective isolation).

⭐ Key point: Source isolation = protect others from an infected patient. Protective (reverse) isolation = protect a vulnerable patient from others.$x$, null),
(3, $x$A patient with confirmed tuberculosis requires which type of transmission-based precaution?$x$, $x$Airborne precautions$x$, $x$✅ Correct answer: Airborne precautions
Tuberculosis spreads through tiny droplet nuclei (under 5 micrometres) that float in the air for a long time and travel far. AIRBORNE precautions are needed: a single NEGATIVE-PRESSURE room (air is sucked out, so it doesn't escape into the corridor), door kept closed, and staff wearing a fit-tested N95 or FFP3 respirator.

❌ Why the other options are wrong:
• No special precautions needed — TB patients DO need special precautions; it is highly contagious in the lungs.
• Droplet precautions only — Droplet precautions (surgical mask within 1–2 m) are for larger droplets (influenza, meningococcus), not TB.
• Contact precautions — Contact precautions are for spread by touch (MRSA, C. difficile).

⭐ Key point: Airborne diseases to remember: TB, measles and chickenpox (varicella). Patients wear a surgical mask when moved out of the room.$x$, null),
(4, $x$'Protective Environment' precautions, used for severely immunocompromised patients, rely on:$x$, $x$Positive pressure rooms$x$, $x$✅ Correct answer: Positive pressure rooms
Severely immunocompromised patients (bone marrow transplant, severe neutropenia) are protected in a POSITIVE PRESSURE room. Clean, HEPA-filtered air is pumped in, so the room pressure is higher than outside. When the door opens, air flows OUT of the room, so germs from the corridor can't drift in.

❌ Why the other options are wrong:
• No special ventilation — Protective rooms DO use special ventilation.
• Negative pressure rooms — NEGATIVE pressure rooms are for infectious patients (TB), to keep germs IN the room.
• Open-door policy — An open-door policy would let germs in.

⭐ Key point: Positive pressure = protect the patient inside. Negative pressure = protect people outside from the patient.$x$, null),
(5, $x$Standard precautions differ from transmission-based precautions in that standard precautions:$x$, $x$Apply to ALL patients, all the time$x$, $x$✅ Correct answer: Apply to ALL patients, all the time
Standard precautions are the basic infection control measures used for EVERY patient, ALL the time, whether or not they are known to have an infection, because you can't always tell who is infected (HIV, hepatitis B). They include hand hygiene, PPE when contact with blood or body fluids is likely, safe sharps handling, cleaning, waste disposal and respiratory etiquette.

❌ Why the other options are wrong:
• Are only used for confirmed infections — Standard precautions are used for ALL patients, not only confirmed infections; that's what transmission-based precautions add to.
• Replace the need for PPE entirely — They INCLUDE PPE use; they don't replace it.
• Are optional depending on staff preference — They are compulsory, not optional.

⭐ Key point: Transmission-based precautions (contact, droplet, airborne) are ADDED on top of standard precautions for known or suspected infections.$x$, null),
(6, $x$The VAP bundle includes head-of-bed elevation of:$x$, $x$30–45 degrees$x$, $x$✅ Correct answer: 30–45 degrees
Raising the head of the bed to 30–45° reduces the chance of stomach contents flowing back up and being breathed into the lungs (micro-aspiration) past the ETT cuff. This lowers the risk of ventilator-associated pneumonia. It is a key part of the VAP bundle.

❌ Why the other options are wrong:
• 5–10 degrees only — 5–10° is too flat to prevent reflux.
• Flat (0 degrees) to rest the lungs — Lying flat (0°) increases aspiration and VAP.
• 90 degrees at all times — 90° at all times is uncomfortable, causes sacral pressure injuries and sliding down the bed, and isn't required.

⭐ Key point: Check the head-of-bed angle every shift and after turning or procedures. Keep it up unless contraindicated (unstable spine, very low BP).$x$, null),
(7, $x$Subglottic secretion drainage reduces VAP by:$x$, $x$Removing pooled secretions above the tube cuff$x$, $x$✅ Correct answer: Removing pooled secretions above the tube cuff
Secretions from the mouth and throat collect above the ETT cuff. They slowly leak down past the cuff into the lungs (micro-aspiration), causing VAP. A special ETT with a suction port just above the cuff allows these pooled secretions to be removed continuously or regularly, reducing VAP.

❌ Why the other options are wrong:
• Replacing the need for oral care — It doesn't replace oral care; both are part of the bundle.
• Sterilising the endotracheal tube lumen — It doesn't sterilise the inside of the tube.
• Increasing the cuff pressure to 60 cmH₂O — Cuff pressure should be 20–30 cmH₂O; 60 cmH₂O would damage the trachea.

⭐ Key point: Use a subglottic suction ETT for patients expected to be ventilated more than 48–72 hours.$x$, null),
(8, $x$Ventilator circuits should be changed:$x$, $x$Only when visibly soiled or malfunctioning$x$, $x$✅ Correct answer: Only when visibly soiled or malfunctioning
Studies show that changing ventilator circuits routinely does NOT reduce VAP. Each change opens the system, can spill contaminated condensate into the patient's airway, and increases infection risk. Circuits should be changed only when VISIBLY SOILED or MALFUNCTIONING (or per the manufacturer's instructions).

❌ Why the other options are wrong:
• Every 6 hours routinely, by the night nurse — Changing every 6 hours is unnecessary and increases risk.
• Before every suction, to keep them clean — Changing before every suction is unnecessary and harmful.
• Every day at midnight, whatever their state — Changing every day regardless of state is also unnecessary.

⭐ Key point: Drain circuit condensate away from the patient, and use HME filters or heated humidifiers correctly.$x$, null),
(9, $x$The central line insertion bundle includes:$x$, $x$Hand hygiene, full barrier precautions, 2% chlorhexidine$x$, $x$✅ Correct answer: Hand hygiene, full barrier precautions, 2% chlorhexidine
The central line insertion bundle prevents CLABSI. It includes HAND HYGIENE, MAXIMAL STERILE BARRIER precautions (cap, mask, sterile gown, sterile gloves, full-body sterile drape), skin preparation with 2% CHLORHEXIDINE in 70% alcohol (allowed to dry), choosing the best site (subclavian; avoid femoral in adults), and a checklist during insertion.

❌ Why the other options are wrong:
• Routine antibiotic prophylaxis before insertion — Routine antibiotics before insertion aren't recommended; they increase resistance.
• The femoral site, chosen as the preferred site — The femoral site has the HIGHEST infection risk in adults and is avoided where possible.
• Clean gloves and povidone-iodine skin prep only — Clean gloves and povidone-iodine don't meet the bundle standard.

⭐ Key point: The maintenance bundle: daily review of need, scrub the hub, clean dressings, and aseptic access.$x$, null),
(10, $x$Daily review of central line necessity reduces:$x$, $x$Central line-associated bloodstream infection$x$, $x$✅ Correct answer: Central line-associated bloodstream infection
Each day a central line stays in, the risk of a bloodstream infection (CLABSI) rises. Asking every day "Does the patient still need this line?" and removing lines that are no longer needed reduces CLABSI. Unnecessary lines are a common, preventable cause of infection.

❌ Why the other options are wrong:
• Pressure injuries over the sacrum — Pressure injuries are prevented by turning and pressure-relieving devices.
• Ventilator-associated pneumonia in the unit — VAP is reduced by the VAP bundle, not central line review.
• Delirium in ventilated patients — Delirium is reduced by its own measures (sedation, sleep, mobility).

⭐ Key point: Remove all invasive devices (central lines, urinary catheters, arterial lines) as soon as they're no longer needed.$x$, null),
(11, $x$Catheter-associated urinary tract infection (CAUTI) is best prevented by:$x$, $x$Avoiding unneeded catheters and removing them early$x$, $x$✅ Correct answer: Avoiding unneeded catheters and removing them early
Most CAUTI is caused by catheters that aren't needed or are left in too long. The best prevention is AVOIDING unnecessary catheters (use only when really indicated) and REMOVING them as early as possible. Other measures: aseptic insertion, a closed drainage system, the bag below bladder level and off the floor, and daily catheter care.

❌ Why the other options are wrong:
• Routine antibiotic prophylaxis while catheterised — Routine antibiotics while catheterised don't prevent infection and promote resistance.
• Daily bladder washouts with sterile saline — Bladder washouts break the closed system and increase infection.
• Changing the catheter every single day — Changing the catheter daily causes trauma and increases infection.

⭐ Key point: The risk of bacteriuria rises about 3–7% each day a catheter stays in. Use nurse-led removal protocols.$x$, null),
(12, $x$A patient with C. difficile diarrhoea requires:$x$, $x$Contact precautions with soap-and-water hand washing$x$, $x$✅ Correct answer: Contact precautions with soap-and-water hand washing
Clostridioides difficile is spread by touch (hands, surfaces, equipment), so CONTACT precautions are needed: a single room with its own toilet or commode, gloves and apron or gown. Its SPORES are not killed by alcohol hand rub, so hands must be washed with SOAP AND WATER, which physically removes the spores. Clean the environment with chlorine-based agents.

❌ Why the other options are wrong:
• No special precautions beyond standard care — Standard care alone isn't enough; C. difficile spreads easily.
• Airborne precautions with N95 masks only — C. difficile is not airborne; N95 masks aren't needed.
• Alcohol hand rub alone after each contact — Alcohol rub does NOT kill C. difficile spores.

⭐ Key point: Stop unnecessary antibiotics (especially broad-spectrum), which trigger C. difficile. Treat with oral vancomycin or fidaxomicin.$x$, null),
(13, $x$Reverse barrier nursing (protective isolation) is used for:$x$, $x$Severely immunocompromised patients, e.g. neutropenia$x$, $x$✅ Correct answer: Severely immunocompromised patients, e.g. neutropenia
Reverse barrier nursing (protective isolation) is used for SEVERELY IMMUNOCOMPROMISED patients, for example with severe neutropenia after chemotherapy, bone marrow transplant, or extensive burns. It protects the PATIENT from germs carried by staff, visitors and the environment, using a single (often positive-pressure) room, strict hand hygiene, and sometimes masks and aprons.

❌ Why the other options are wrong:
• Patients with open pulmonary tuberculosis — Open pulmonary TB needs SOURCE isolation (airborne precautions), not reverse barrier nursing.
• Patients with C. difficile diarrhoea — C. difficile needs SOURCE isolation (contact precautions).
• Patients colonised or infected with MRSA — MRSA needs SOURCE isolation (contact precautions).

⭐ Key point: Neutropenic patients also need: no fresh flowers or plants, careful food hygiene, and immediate antibiotics if they develop a fever.$x$, null),
(14, $x$The order for putting on (donning) PPE is usually:$x$, $x$Gown, mask, goggles, gloves$x$, $x$✅ Correct answer: Gown, mask, goggles, gloves
PPE is put on (donned) in this order: 1) GOWN, 2) MASK or respirator, 3) GOGGLES or face shield, 4) GLOVES last, so the gloves can cover the cuffs of the gown. Hand hygiene comes before starting. This order means clean hands handle the gown and mask before gloves go on.

❌ Why the other options are wrong:
• Gloves, goggles, mask, gown — Gloves first would mean they're contaminated while putting on the rest.
• Mask, gloves, gown, goggles — Starting with the mask and gloves is the wrong order.
• Goggles, gloves, gown, mask — Starting with goggles and gloves is the wrong order.

⭐ Key point: Removal (doffing) is designed to avoid self-contamination: gloves first (most contaminated), then goggles, gown, mask (last, outside the room), then hand hygiene.$x$, null),
(15, $x$Multidrug-resistant Acinetobacter in ICU spreads mainly via:$x$, $x$Contaminated hands, surfaces and equipment$x$, $x$✅ Correct answer: Contaminated hands, surfaces and equipment
Multidrug-resistant Acinetobacter baumannii survives for weeks on dry surfaces and equipment (bed rails, monitors, ventilators, keyboards). It spreads mainly through CONTAMINATED HANDS of staff, SURFACES and EQUIPMENT moving between patients. It causes VAP, bloodstream and wound infections in ICU.

❌ Why the other options are wrong:
• Food from the hospital kitchen — Food from the kitchen is not the main route.
• Airborne droplets over long distances — It is not an airborne germ that travels long distances.
• Mosquito bites — Mosquitoes don't spread Acinetobacter.

⭐ Key point: Control: hand hygiene, contact precautions, dedicated equipment, thorough environmental cleaning, and antibiotic stewardship.$x$, null),
(16, $x$A key nursing intervention to prevent line sepsis is:$x$, $x$Scrubbing the hub before every access$x$, $x$✅ Correct answer: Scrubbing the hub before every access
Germs on the outside of a catheter hub, needleless connector or three-way tap can be pushed into the bloodstream every time the line is accessed. SCRUBBING THE HUB vigorously for 15 seconds with 2% chlorhexidine in 70% alcohol (and letting it dry) before EVERY access kills these germs and prevents line sepsis (CLABSI).

❌ Why the other options are wrong:
• Changing dressings only when they fall off — Dressings should be changed when wet, loose or soiled, or on schedule, not only when they fall off.
• Reusing syringes on the same patient's line — Reusing syringes on lines spreads infection.
• Leaving three-way taps open and uncapped — Open, uncapped three-way taps let germs in.

⭐ Key point: "Scrub the hub" for 15 seconds and let it dry. Use sterile caps on unused ports.$x$, null),
(17, $x$Common causes of sepsis in critically ill patients include:$x$, $x$Pneumonia, line, urinary and abdominal sources$x$, $x$✅ Correct answer: Pneumonia, line, urinary and abdominal sources
The most common sources of sepsis in ICU patients are PNEUMONIA (including VAP), infected central LINES (bloodstream infection), URINARY tract infections (especially with catheters), and ABDOMINAL infections (peritonitis, abscess, anastomotic leak). Other sources include skin and wounds, and meningitis.

❌ Why the other options are wrong:
• Only dental infections from poor oral care — Dental infections alone are not the main source.
• Only viral infections from visitors — Viral infections from visitors are not the main source.
• Only skin infections from pressure ulcers — Pressure ulcer infections can occur but aren't the only source.

⭐ Key point: Always look for the SOURCE of sepsis and control it (drain the abscess, remove the infected line).$x$, null),
(18, $x$Surveillance of HAI in ICU means:$x$, $x$Systematic collection and analysis of infection data$x$, $x$✅ Correct answer: Systematic collection and analysis of infection data
Surveillance of hospital-acquired infection means SYSTEMATICALLY collecting data on infections (how many, what type, which germs, which devices), ANALYSING it (rates per 1,000 device-days) and feeding it back to staff and managers. It shows trends and outbreaks, and whether prevention measures are working.

❌ Why the other options are wrong:
• Counting the number of occupied beds each day — Counting occupied beds is bed management, not infection surveillance.
• Watching the nursing staff on CCTV cameras — CCTV monitoring of staff is not infection surveillance.
• Checking the identity cards of all the visitors — Checking visitors' IDs is security.

⭐ Key point: Feeding infection rates back to staff improves compliance with bundles and hand hygiene.$x$, null),
(19, $x$Antimicrobial stewardship in ICU aims to:$x$, $x$The right antibiotic, dose and duration, limiting resistance$x$, $x$✅ Correct answer: The right antibiotic, dose and duration, limiting resistance
Antimicrobial stewardship means using antibiotics wisely: the RIGHT drug, the RIGHT dose, the RIGHT route and the RIGHT DURATION, and stopping them when not needed. It includes taking cultures before antibiotics, reviewing at 48–72 hours, DE-ESCALATING to a narrower drug once results are known, and short courses. This limits resistance and C. difficile, and saves money.

❌ Why the other options are wrong:
• Broad-spectrum antibiotics given to every ICU patient — Giving broad-spectrum antibiotics to everyone causes resistance.
• Avoiding all antibiotics, even in proven sepsis — Avoiding antibiotics in proven sepsis would cost lives.
• Giving antibiotics for viral infections to be safe — Antibiotics don't work on viruses.

⭐ Key point: "Start smart, then focus": prompt treatment in sepsis, then review and narrow down.$x$, null),
(20, $x$Selective digestive decontamination aims to reduce:$x$, $x$Gram-negative colonisation and VAP$x$, $x$✅ Correct answer: Gram-negative colonisation and VAP
Selective digestive decontamination (SDD) gives non-absorbable antibiotics to the mouth and gut (plus a short course of IV antibiotics) to kill potentially harmful GRAM-NEGATIVE bacteria and yeasts that colonise the gut and throat of ICU patients. This reduces colonisation, VAP and possibly deaths. Its use varies by country, because of concerns about resistance.

❌ Why the other options are wrong:
• Diarrhoea caused by enteral feeds — SDD doesn't aim to reduce feed-related diarrhoea.
• Hospital costs and length of stay only — Cost reduction is not its main aim.
• Gastric acid production and ulcers — SDD doesn't reduce stomach acid.

⭐ Key point: SDD is used in some European ICUs. Most units rely on standard VAP bundles.$x$, null),
(21, $x$Thoracostomy differs from thoracotomy in that it is:$x$, $x$A small opening for placing a chest drain$x$, $x$✅ Correct answer: A small opening for placing a chest drain
A thoracostomy is a SMALL surgical opening in the chest wall, usually to insert a CHEST DRAIN (tube thoracostomy) to drain air, blood or fluid from the pleural space. A thoracotomy is a LARGE incision to open the chest for major surgery (lung, heart, great vessels).

❌ Why the other options are wrong:
• Identical to thoracotomy — They are different procedures, not identical.
• A large incision for major intrathoracic surgery — A large incision for major surgery describes a thoracotomy.
• Only used for cardiac surgery — Thoracostomy is used for pleural problems, not only cardiac surgery.

⭐ Key point: "-ostomy" means making an opening; "-otomy" means cutting into.$x$, null),
(22, $x$Over-insertion of the guidewire during central line placement risks causing:$x$, $x$Arrhythmias$x$, $x$✅ Correct answer: Arrhythmias
The guidewire passes through the vein into the right atrium. If inserted too far, the tip touches the heart wall and irritates the conduction system, triggering ARRHYTHMIAS (atrial or ventricular ectopics, even VT). The patient must be on an ECG monitor during insertion, and the wire is pulled back if arrhythmias occur.

❌ Why the other options are wrong:
• Improved cardiac function — Irritating the heart doesn't improve cardiac function.
• No clinical consequence — Over-insertion does have consequences.
• Immediate cure of the underlying condition — It doesn't cure anything.

⭐ Key point: Other central line insertion complications: pneumothorax, arterial puncture, bleeding, air embolism and malposition. Get a chest X-ray after neck and chest lines.$x$, null),
(23, $x$Before arterial line insertion, the nurse prepares a transducer set flushed with:$x$, $x$Pressurised normal saline at 300 mmHg$x$, $x$✅ Correct answer: Pressurised normal saline at 300 mmHg
An arterial line transducer set is filled with NORMAL SALINE and placed in a pressure bag inflated to 300 mmHg. Because arterial pressure is high, the bag pressure must be higher than the patient's BP to give a slow continuous flush (about 3 mL/hour) that keeps the line open and stops blood backing up and clotting.

❌ Why the other options are wrong:
• 5% dextrose pressurised to 50 mmHg — 5% dextrose can cause wrong glucose results (falsely high) if samples are contaminated, and 50 mmHg is too low.
• Unpressurised sterile water for injection — Unpressurised water can't keep an arterial line open, and water causes haemolysis.
• Heparin 25 000 units in 10 mL only — Heparin 25,000 units in 10 mL is a dangerous concentration; saline alone is usually used.

⭐ Key point: Check the pressure bag stays at 300 mmHg, the flush is running, and there are no air bubbles in the line.$x$, null),
(24, $x$An arterial line waveform that is 'over-damped' shows:$x$, $x$A flattened trace with a falsely low systolic$x$, $x$✅ Correct answer: A flattened trace with a falsely low systolic
An over-damped arterial trace looks FLATTENED and rounded, with a poor or absent dicrotic notch. The systolic pressure reads FALSELY LOW and the diastolic may read falsely high (the MAP is usually still fairly accurate). Causes: air bubbles, clots in the catheter, kinked tubing, a loose connection, or a pressure bag that is not inflated enough.

❌ Why the other options are wrong:
• A tall, spiky trace with a false high systolic — A tall, spiky trace with a falsely high systolic is UNDER-damped.
• A normal trace with a clear dicrotic notch — A normal trace with a clear notch is optimally damped.
• An absent trace with a normal cuff pressure — An absent trace suggests disconnection or a blocked line.

⭐ Key point: Use the square-wave (fast flush) test to check damping, then remove bubbles, flush, and check connections.$x$, null),
(25, $x$The arterial transducer is levelled at the:$x$, $x$Phlebostatic axis (4th ICS, mid-axillary line)$x$, $x$✅ Correct answer: Phlebostatic axis (4th ICS, mid-axillary line)
The arterial (and CVP) transducer must be levelled at the PHLEBOSTATIC AXIS: the 4th intercostal space, mid-axillary line. This is the level of the right atrium, the reference point for haemodynamic pressures. Zero the transducer to air at this level.

❌ Why the other options are wrong:
• The level of the wrist where the line sits — The wrist level is wrong; the reference is the heart.
• The sternal notch with the patient sitting up — The sternal notch is too high, giving falsely LOW readings.
• The umbilicus with the patient lying flat — The umbilicus is not the reference point.

⭐ Key point: If the transducer is too LOW, readings are falsely HIGH. If it is too HIGH, readings are falsely LOW. Re-level whenever the patient's position changes.$x$, null),
(26, $x$After chest drain insertion, the nurse observes for:$x$, $x$Swinging, bubbling, drainage volume and breathing$x$, $x$✅ Correct answer: Swinging, bubbling, drainage volume and breathing
After chest drain insertion, observe: SWINGING (water level rising and falling with breathing shows the drain is working), BUBBLING (air leaking from the lung), DRAINAGE volume and colour (blood, fluid, pus), and the patient's BREATHING (rate, SpO₂, chest movement, pain). Record drainage hourly at first. Also check the site, dressing and all connections.

❌ Why the other options are wrong:
• Only the colour of the dressing at the site — The dressing alone is not enough.
• Nothing at all until the chest X-ray is done — Monitoring must start immediately, not wait for the X-ray.
• Only the total volume drained at 24 hours — A 24-hour total alone misses sudden bleeding.

⭐ Key point: Report more than 100–200 mL of blood per hour, sudden cessation of drainage with distress, or new continuous bubbling.$x$, null),
(27, $x$A chest drain should not be clamped during transport because:$x$, $x$A tension pneumothorax may develop$x$, $x$✅ Correct answer: A tension pneumothorax may develop
A drain inserted for a pneumothorax lets air escape continuously. If it is clamped, air builds up in the pleural space with nowhere to go, and a TENSION PNEUMOTHORAX can develop: the lung collapses, the mediastinum shifts, and the patient can collapse with low BP. Instead, keep the bottle BELOW chest level during transport.

❌ Why the other options are wrong:
• The drain is more likely to fall out — Clamping doesn't affect whether the drain falls out.
• It increases the risk of infection — Infection risk isn't the main reason not to clamp.
• The fluid inside the tube will clot — Fluid in the tube doesn't clot because of clamping; the danger is trapped air.

⭐ Key point: Only clamp briefly when changing the bottle, finding a leak, or under medical instruction before removal. Never clamp a bubbling drain.$x$, null),
(28, $x$Underwater seal drainage works because:$x$, $x$The water seal lets air out but not back in$x$, $x$✅ Correct answer: The water seal lets air out but not back in
The water seal acts as a ONE-WAY VALVE. The end of the tube sits 2–3 cm under sterile water. When the patient breathes out or coughs, pressure in the chest rises and air bubbles out through the water. When they breathe in, pressure falls, but air can't come back into the chest, because water rises in the tube and blocks it.

❌ Why the other options are wrong:
• Suction is always applied to the bottle — Suction is not always applied; many drains work by gravity alone.
• The bottle is kept above the chest level — The bottle must be kept BELOW chest level, never above.
• The drain tube is clamped between checks — Drains should not be routinely clamped.

⭐ Key point: Fill the water seal chamber to the marked line. Too much water makes it harder for air to escape.$x$, null),
(29, $x$During pericardiocentesis, the nurse monitors:$x$, $x$ECG for arrhythmias, with BP and SpO₂$x$, $x$✅ Correct answer: ECG for arrhythmias, with BP and SpO₂
During pericardiocentesis, a needle is inserted into the pericardial sac (usually below the xiphisternum, aimed at the left shoulder) to remove fluid. If the needle touches the heart muscle, it can cause ARRHYTHMIAS (ventricular ectopics, VT) or puncture the heart. The nurse monitors the ECG continuously, plus BP and SpO₂, and has resuscitation equipment ready.

❌ Why the other options are wrong:
• Only the core temperature — Temperature alone is not the main concern.
• Only the capillary blood glucose — Blood glucose isn't the main concern.
• Only the hourly urine output — Urine output isn't the main concern during the procedure.

⭐ Key point: After successful pericardiocentesis, BP usually rises and the heart rate falls quickly. Watch for the fluid re-accumulating.$x$, null),
(30, $x$For diagnostic peritoneal lavage, the nurse instils:$x$, $x$1 litre of warm saline (10 mL/kg in children)$x$, $x$✅ Correct answer: 1 litre of warm saline (10 mL/kg in children)
In diagnostic peritoneal lavage (DPL), a catheter is placed into the abdomen, and 1 LITRE of WARM normal saline (10 mL/kg in children) is run in, then drained back out by gravity. The fluid is sent to the lab for red cells, white cells, bacteria and food particles, to detect bleeding or bowel injury after trauma.

❌ Why the other options are wrong:
• 50 mL of sterile water, given cold — 50 mL is too little, and cold fluid causes hypothermia.
• 200 mL of X-ray contrast medium — X-ray contrast isn't used for DPL.
• 5 litres of 5% dextrose over one hour — 5 litres of dextrose is far too much and the wrong fluid.

⭐ Key point: DPL has mostly been replaced by FAST ultrasound and CT, but may still be used where they aren't available.$x$, null),
(31, $x$A bladder scan is used in ICU to:$x$, $x$Estimate bladder volume non-invasively$x$, $x$✅ Correct answer: Estimate bladder volume non-invasively
A bladder scan uses portable ultrasound to ESTIMATE the volume of urine in the bladder without inserting a catheter. In ICU it helps check for urinary retention (after a catheter is removed), measure post-void residual, and avoid unnecessary catheterisation (which reduces CAUTI risk).

❌ Why the other options are wrong:
• Replace the need for urine cultures — It doesn't replace urine cultures for infection.
• Diagnose kidney and ureteric stones — It doesn't diagnose kidney stones.
• Measure renal blood flow and GFR — It doesn't measure renal blood flow or GFR.

⭐ Key point: If the scan shows more than 400–500 mL with the patient unable to void, consider in-and-out (intermittent) catheterisation.$x$, null),
(32, $x$Before abdominal ultrasound for FAST, the patient should be:$x$, $x$Supine, with the abdomen exposed$x$, $x$✅ Correct answer: Supine, with the abdomen exposed
FAST (Focused Assessment with Sonography for Trauma) is a quick bedside ultrasound scan done during resuscitation. The patient lies SUPINE (flat on the back) with the ABDOMEN and lower chest exposed, so the operator can scan four areas: around the liver (Morison's pouch), around the spleen, the pelvis, and around the heart (pericardium).

❌ Why the other options are wrong:
• In the lithotomy position — The lithotomy position is for pelvic examinations.
• Sitting upright at 90 degrees — Sitting upright isn't practical for an injured patient and can move the spine.
• Prone, with a pillow under the hips — Prone (face down) doesn't allow scanning of the abdomen.

⭐ Key point: A positive FAST (free fluid) in an unstable trauma patient means urgent surgery.$x$, null),
(33, $x$During central line insertion, the nurse's role includes:$x$, $x$Ensuring the checklist is followed; stopping asepsis breaches$x$, $x$✅ Correct answer: Ensuring the checklist is followed; stopping asepsis breaches
During central line insertion, the nurse helps prepare the patient and equipment and acts as a safety monitor. The nurse makes sure the INSERTION CHECKLIST is followed (hand hygiene, full sterile barriers, chlorhexidine skin prep, correct site) and has the authority to STOP the procedure if sterility is broken. The nurse also monitors the patient (ECG, SpO₂, BP) throughout.

❌ Why the other options are wrong:
• Holding the guidewire without wearing any gloves — No one should touch the guidewire without sterile gloves.
• Opening the packs only after the doctor has started — Packs should be opened aseptically before the procedure starts.
• Leaving the room so as not to crowd the doctor — The nurse should stay to monitor and help.

⭐ Key point: Empowering nurses to stop procedures when asepsis is broken has greatly reduced CLABSI rates.$x$, null),
(34, $x$After removing a central line, the patient is asked to:$x$, $x$Hold the breath (Valsalva) during removal; seal the site$x$, $x$✅ Correct answer: Hold the breath (Valsalva) during removal; seal the site
When a central line is removed, there is a risk that AIR enters the vein through the opening (air embolism), especially if the patient breathes in. Lie the patient flat or slightly head-down and ask them to HOLD THEIR BREATH or perform a VALSALVA manoeuvre (bear down) while the line is pulled out. This raises chest pressure and prevents air being sucked in. Then apply pressure and an airtight dressing.

❌ Why the other options are wrong:
• Take a deep breath in as the line is pulled out — Taking a deep breath IN lowers chest pressure and can suck air into the vein.
• Sit upright with the legs down beside the bed — Sitting upright increases air embolism risk.
• Cough repeatedly to clear the chest during removal — Coughing during removal is unpredictable and unsafe.

⭐ Key point: Apply firm pressure for at least 5 minutes, then an occlusive (airtight) dressing for 24 hours. Check the catheter tip is intact.$x$, null),
(35, $x$An intraventricular pressure monitor has the advantage that it:$x$, $x$Measures ICP and allows CSF drainage$x$, $x$✅ Correct answer: Measures ICP and allows CSF drainage
An intraventricular catheter (EVD) is placed in the lateral ventricle. It is the GOLD STANDARD for ICP measurement, because it measures pressure directly in the CSF and can be re-zeroed. It also allows CSF DRAINAGE to lower ICP and allows CSF sampling.

❌ Why the other options are wrong:
• Measures brain tissue oxygen — Brain tissue oxygen is measured by a Licox probe.
• Never becomes infected — It has the highest infection risk among ICP monitors (ventriculitis).
• Is completely non-invasive — It is highly invasive (inserted through the skull).

⭐ Key point: EVD care: level to the tragus, clamp when moving, strict asepsis, and record CSF volume and colour hourly.$x$, null),
(36, $x$When a chest drain accidentally falls out, the nurse should first:$x$, $x$Seal the site with a sterile occlusive dressing; call for help$x$, $x$✅ Correct answer: Seal the site with a sterile occlusive dressing; call for help
If a chest drain falls out, air can be sucked into the chest through the hole, causing a pneumothorax. First, quickly SEAL THE SITE with a sterile occlusive dressing (some guidelines use a three-sided dressing so air can escape but not enter). Then CALL FOR HELP, give oxygen and monitor for respiratory distress and tension pneumothorax.

❌ Why the other options are wrong:
• Clamp the drain tube and replace it on the bed — Clamping the drain and putting it on the bed does nothing to seal the hole.
• Push the drain back into the chest through the same hole — Pushing the drain back in risks infection and injury; never re-insert it.
• Leave the site open so that any air can escape freely — Leaving the site open lets air enter the chest.

⭐ Key point: Always keep sterile occlusive dressings and Spencer Wells clamps at the bedside of a patient with a chest drain.$x$, null),
(37, $x$Equipment for emergency intubation in ICU should be:$x$, $x$Checked daily, on a dedicated airway trolley$x$, $x$✅ Correct answer: Checked daily, on a dedicated airway trolley
Emergency intubation can be needed at any time in ICU. Equipment must be CHECKED DAILY (and after every use) and kept together on a dedicated AIRWAY TROLLEY: laryngoscopes (working lights), ETTs of various sizes, bougie, stylet, syringes, suction, bag-valve-mask, oropharyngeal and supraglottic airways, waveform capnography, and drugs.

❌ Why the other options are wrong:
• Checked only on the day it is needed — Checking only on the day of use risks missing faulty equipment in an emergency.
• Kept in a locked store away from the unit — Locking it away delays access in emergencies.
• Shared with the operating theatre suite — Sharing with theatre means it may not be available when needed.

⭐ Key point: Use a checklist and record daily checks with a signature. A difficult airway trolley should also be available.$x$, null),
(38, $x$Before a tracheostomy tube change, the nurse prepares:$x$, $x$Spare tubes (same and smaller), suction, oxygen, dilators$x$, $x$✅ Correct answer: Spare tubes (same and smaller), suction, oxygen, dilators
Changing a tracheostomy tube can go wrong. The tube may not go back in, and the stoma can close quickly. Before changing, prepare: SPARE TUBES (the same size and one size smaller), SUCTION, OXYGEN with a bag-valve-mask, tracheal DILATORS, lubricant, new tapes and dressings, and an experienced second person.

❌ Why the other options are wrong:
• A urinary catheter set and sterile water — A urinary catheter set isn't needed (though some use a catheter as a guide, this is not the core list).
• Only a new dressing and tapes for the stoma site — A new dressing and tapes alone isn't enough preparation.
• No special equipment, as changes are routine — Special equipment is always needed.

⭐ Key point: The FIRST tracheostomy change (usually after 5–7 days, once the tract has formed) is done by an experienced doctor.$x$, null),
(39, $x$Emergency equipment at a tracheostomy bedside includes:$x$, $x$Spare tube, dilators, suction and oxygen$x$, $x$✅ Correct answer: Spare tube, dilators, suction and oxygen
At every tracheostomy patient's bedside, emergency equipment must be ready in case the tube comes out or blocks: a SPARE TUBE (same size and one size smaller), tracheal DILATORS, SUCTION and catheters, OXYGEN and a bag-valve-mask, and the tracheostomy emergency algorithm.

❌ Why the other options are wrong:
• A defibrillator only, checked daily — A defibrillator alone isn't enough for airway emergencies.
• A chest drain set and underwater seal — A chest drain set isn't needed for tracheostomy emergencies.
• An epidural pack and local anaesthetic — An epidural pack isn't related.

⭐ Key point: A displaced or blocked tracheostomy is an airway emergency. Follow the national tracheostomy safety algorithm.$x$, null),
(40, $x$Monitoring after pericardiocentesis includes observing for:$x$, $x$Re-accumulation, arrhythmias and pneumothorax$x$, $x$✅ Correct answer: Re-accumulation, arrhythmias and pneumothorax
After pericardiocentesis, monitor for RE-ACCUMULATION of fluid (returning signs of tamponade: low BP, rising JVP, muffled heart sounds), ARRHYTHMIAS (the needle may have irritated the heart), and PNEUMOTHORAX (the needle may have punctured the lung). A pericardial drain may be left in, and its output recorded.

❌ Why the other options are wrong:
• Hyperglycaemia and ketosis from the stress — Hyperglycaemia and ketosis are not typical complications.
• A widespread skin rash from the antiseptic — A skin rash from antiseptic is minor and not the main concern.
• Diarrhoea and dehydration from the drugs — Diarrhoea and dehydration are not related.

⭐ Key point: If tamponade signs return, the drain may be blocked or fluid is re-accumulating. Inform the doctor urgently.$x$, null),
(41, $x$The normal CVP range is:$x$, $x$2–8mmHg$x$, $x$✅ Correct answer: 2–8mmHg
Normal central venous pressure (CVP) is about 2–8 mmHg (about 3–10 cmH₂O). It reflects the pressure in the right atrium and big veins, and gives an idea of blood volume and right heart function.

❌ Why the other options are wrong:
• 30–40mmHg — 30–40 mmHg is extremely high and not normal.
• 10–20mmHg — 10–20 mmHg is high (fluid overload or right heart failure).
• 0–2mmHg — 0–2 mmHg is low (suggests hypovolaemia).

⭐ Key point: The TREND of CVP and its response to fluid matters more than a single value.$x$, null),
(42, $x$CVP should be measured at which point in the respiratory cycle?$x$, $x$End of expiration$x$, $x$✅ Correct answer: End of expiration
Breathing changes the pressure inside the chest, which changes the CVP reading. At END-EXPIRATION, the chest is at rest and intrathoracic pressure is closest to atmospheric, so the reading is most accurate and consistent. This applies to both spontaneously breathing and ventilated patients.

❌ Why the other options are wrong:
• Mid-inspiration — Mid-inspiration gives a changing, unreliable reading.
• End of inspiration — End-inspiration gives a falsely LOW reading in spontaneous breathing and a falsely HIGH one in ventilated patients.
• Timing doesn't matter — The timing matters for accuracy.

⭐ Key point: Read CVP at end-expiration, with the patient lying flat and the transducer at the phlebostatic axis.$x$, null),
(43, $x$The Left Ventricular End Diastolic Volume (LVEDV) is also called:$x$, $x$Preload$x$, $x$✅ Correct answer: Preload
Preload is the stretch of the ventricle muscle at the end of diastole, just before it contracts. It is determined by the VOLUME of blood in the ventricle at that moment: the left ventricular end-diastolic volume (LVEDV). So LVEDV is another name for preload of the left ventricle.

❌ Why the other options are wrong:
• Afterload — Afterload is the resistance the ventricle must pump against.
• Cardiac Index — Cardiac index is cardiac output divided by body surface area.
• Cardiac Output — Cardiac output is the volume pumped per minute (HR × SV).

⭐ Key point: More preload means more stretch, which means a stronger contraction (Frank–Starling law), up to a point.$x$, null),
(44, $x$A patient in hypovolaemic shock from acute blood loss would be expected to show which haemodynamic pattern?$x$, $x$Low cardiac output, high SVR, low filling pressures$x$, $x$✅ Correct answer: Low cardiac output, high SVR, low filling pressures
In hypovolaemic shock, there isn't enough blood to fill the heart. So: LOW filling pressures (low CVP and wedge pressure), LOW cardiac output (not enough blood to pump), and HIGH SVR (the vessels tighten to keep up BP and send blood to vital organs). The skin is cold, pale and clammy.

❌ Why the other options are wrong:
• High filling pressures with low SVR — High filling pressures with low SVR do not fit hypovolaemia.
• Normal cardiac output with no haemodynamic change — Hypovolaemia causes clear haemodynamic changes.
• High cardiac output, low SVR — High cardiac output with low SVR describes early septic shock.

⭐ Key point: Treat hypovolaemic shock by replacing the volume lost: crystalloids, or blood for haemorrhage. Stop any bleeding.$x$, null),
(45, $x$What is the primary purpose of a Swan-Ganz catheter in critical care?$x$, $x$Monitoring cardiac hemodynamics$x$, $x$✅ Correct answer: Monitoring cardiac hemodynamics
A Swan-Ganz (pulmonary artery) catheter is inserted through a large vein into the right side of the heart and pulmonary artery. It measures right atrial pressure, PA pressures, wedge pressure (left heart filling), cardiac output (thermodilution) and mixed venous oxygen. Its main purpose is to MONITOR CARDIAC HAEMODYNAMICS in complex shock or heart failure.

❌ Why the other options are wrong:
• Monitoring blood pressure — Blood pressure is monitored by a cuff or arterial line.
• Measuring intracranial pressure (ICP) — ICP is measured by an EVD or brain probe.
• Administering insulin — Insulin is given through any IV line; this isn't the purpose of the PA catheter.

⭐ Key point: PA catheters are used less now (echo and less invasive monitors are preferred), but they are still examined.$x$, null),
(46, $x$Normal pulmonary artery wedge pressure is:$x$, $x$6–12 mmHg$x$, $x$✅ Correct answer: 6–12 mmHg
The pulmonary artery wedge pressure (PAWP or PCWP) is normally 6–12 mmHg. With the balloon inflated, the catheter tip "sees" the pressure beyond it in the left atrium, so it reflects LEFT ventricular filling (preload).

❌ Why the other options are wrong:
• 0–2 mmHg — 0–2 mmHg is too low (severe hypovolaemia).
• 20–30 mmHg — 20–30 mmHg is high (left heart failure, fluid overload, pulmonary oedema).
• 40–50 mmHg — 40–50 mmHg is extremely high and not normal.

⭐ Key point: A PAWP above 18 mmHg suggests cardiogenic (hydrostatic) pulmonary oedema; in ARDS the PAWP is usually normal.$x$, null),
(47, $x$Normal cardiac index is about:$x$, $x$2.5–4.0 L/min/m²$x$, $x$✅ Correct answer: 2.5–4.0 L/min/m²
The cardiac index (CI) is the cardiac output divided by the body surface area (CO ÷ BSA). It makes the output comparable between big and small people. The normal CI is 2.5–4.0 L/min/m². A CI below 2.2 suggests cardiogenic shock.

❌ Why the other options are wrong:
• 10–12 L/min/m² — 10–12 is far too high.
• 6–8 L/min/m² — 6–8 is too high for CI (it's more like a high cardiac output in litres per minute).
• 0.5–1.0 L/min/m² — 0.5–1.0 is dangerously low.

⭐ Key point: Normal cardiac output is 4–8 L/min. Normal stroke volume is 60–100 mL.$x$, null),
(48, $x$Systemic vascular resistance is high in:$x$, $x$Cardiogenic and hypovolaemic shock$x$, $x$✅ Correct answer: Cardiogenic and hypovolaemic shock
Systemic vascular resistance (SVR) rises when the arteries constrict. In CARDIOGENIC and HYPOVOLAEMIC shock, cardiac output falls, so the body tightens the arteries (via adrenaline, noradrenaline and angiotensin) to maintain blood pressure. This is compensatory vasoconstriction, causing high SVR and cold, pale skin.

❌ Why the other options are wrong:
• Anaphylactic shock after a drug — Anaphylactic shock has LOW SVR (vasodilation).
• Neurogenic shock after cord injury — Neurogenic shock has LOW SVR (lost sympathetic tone).
• Early (warm) septic shock — Early septic shock has LOW SVR (vasodilation).

⭐ Key point: High SVR shocks (cold) = hypovolaemic, cardiogenic, obstructive. Low SVR shocks (warm) = septic, anaphylactic, neurogenic.$x$, null),
(49, $x$Early septic (warm) shock shows:$x$, $x$High cardiac output and low SVR$x$, $x$✅ Correct answer: High cardiac output and low SVR
In early (warm) septic shock, inflammatory chemicals widen the blood vessels, so SVR FALLS. The heart pumps harder and faster to compensate, so cardiac output RISES (a hyperdynamic state). The skin is warm and flushed, with bounding pulses, but organs are still under-perfused.

❌ Why the other options are wrong:
• Low wedge and high SVR — Low wedge with high SVR describes hypovolaemia.
• Low cardiac output and high SVR — Low output with high SVR describes cardiogenic or hypovolaemic shock (or late sepsis).
• Normal output and high SVR — Normal output with high SVR doesn't fit early sepsis.

⭐ Key point: Late septic shock can become "cold", with low cardiac output from septic cardiomyopathy.$x$, null),
(50, $x$When floating a PA catheter, the waveform changes from RV to PA by:$x$, $x$A rise in diastolic pressure with a dicrotic notch$x$, $x$✅ Correct answer: A rise in diastolic pressure with a dicrotic notch
As the PA catheter passes from the right ventricle into the pulmonary artery, the waveform changes. In the RV, the diastolic pressure is close to zero. In the PA, the pulmonary valve closes and keeps pressure up, so the DIASTOLIC PRESSURE RISES (to about 8–15 mmHg), and a DICROTIC NOTCH appears (pulmonary valve closure). The systolic pressure stays about the same.

❌ Why the other options are wrong:
• A fall in systolic pressure towards zero — The systolic pressure doesn't fall to zero.
• A complete loss of all pulsation — Losing all pulsation would suggest a problem (such as a wedged or blocked catheter).
• A flat trace with very large A waves — A flat trace with large A waves isn't the PA trace.

⭐ Key point: The waveform sequence while floating: RA (low, small waves), RV (tall, square, diastole near zero), PA (diastole raised, dicrotic notch), wedge (low, flat-ish, like the atrium).$x$, null),
(51, $x$The balloon of a PA catheter should be inflated:$x$, $x$With no more than 1.5 mL of air, briefly$x$, $x$✅ Correct answer: With no more than 1.5 mL of air, briefly
The PA catheter balloon is inflated with no more than 1.5 mL of AIR (the volume marked on the catheter), only BRIEFLY (just long enough to read the wedge pressure, under about 15 seconds), then allowed to deflate passively. Over-inflation or prolonged wedging can rupture the pulmonary artery or cause pulmonary infarction.

❌ Why the other options are wrong:
• With 10 mL of saline for a firm wedge — Saline is never used; it can't be quickly removed, and the balloon may burst.
• Continuously for hours to monitor PAWP — Continuous inflation risks pulmonary infarction.
• With water to improve the wedge trace — Water is never used.

⭐ Key point: If the wedge trace appears with LESS than the full volume, the catheter has moved too far; inform the doctor.$x$, null),
(52, $x$A permanent wedge trace on a PA catheter without balloon inflation means:$x$, $x$The catheter has migrated distally; pull it back$x$, $x$✅ Correct answer: The catheter has migrated distally; pull it back
If the PA catheter shows a wedge trace when the balloon is NOT inflated, the catheter tip has moved further into a small pulmonary artery branch (spontaneous wedging) and is blocking it. This can cause a pulmonary infarction or artery rupture. The catheter needs to be pulled back by the doctor; inform them immediately.

❌ Why the other options are wrong:
• The balloon has burst and must be replaced — A burst balloon wouldn't cause a permanent wedge trace.
• Cardiac tamponade around the catheter — Tamponade doesn't cause a wedge trace.
• Normal function of the catheter — A continuous wedge trace without inflation is NOT normal.

⭐ Key point: Continuously display the PA trace on the monitor so migration is spotted early.$x$, null),
(53, $x$The thermodilution method calculates cardiac output from:$x$, $x$The temperature change of cold injectate$x$, $x$✅ Correct answer: The temperature change of cold injectate
In thermodilution, a known amount of cold (or room temperature) saline is injected quickly into the proximal (right atrial) port. A thermistor near the catheter tip in the pulmonary artery measures the temperature change as the cold fluid passes. The computer calculates cardiac output from the curve: a fast, small temperature change means high output; a slow, large change means low output.

❌ Why the other options are wrong:
• The heart rate measured over one minute — Heart rate alone doesn't give cardiac output.
• The blood pressure measured by the cuff — Cuff BP doesn't measure cardiac output.
• The ECG voltage in the chest leads — ECG voltage doesn't measure cardiac output.

⭐ Key point: Inject 10 mL smoothly and quickly, at the same point in the breathing cycle, and average 3 readings that are within 10% of each other.$x$, null),
(54, $x$CVP is raised in:$x$, $x$Right heart failure, fluid overload, tamponade$x$, $x$✅ Correct answer: Right heart failure, fluid overload, tamponade
CVP rises when blood backs up in the right atrium and big veins. Causes: RIGHT HEART FAILURE (the RV can't pump blood forward), FLUID OVERLOAD (too much volume), cardiac TAMPONADE (fluid around the heart squeezes it), tension pneumothorax, high PEEP, and PE.

❌ Why the other options are wrong:
• Vasodilation from early septic shock — Vasodilation in early sepsis LOWERS CVP.
• Dehydration from vomiting and diarrhoea — Dehydration LOWERS CVP.
• Hypovolaemia from acute haemorrhage — Haemorrhage LOWERS CVP.

⭐ Key point: Always interpret CVP with the patient's clinical picture and its trend over time.$x$, null),
(55, $x$Mixed venous oxygen saturation (SvO₂) below 60% suggests:$x$, $x$Inadequate oxygen delivery for demand$x$, $x$✅ Correct answer: Inadequate oxygen delivery for demand
Mixed venous oxygen saturation (SvO₂) shows how much oxygen is left in the blood returning to the heart after the tissues have used what they need. Normal is 60–80%. A low SvO₂ (below 60%) means the tissues are extracting MORE oxygen than usual, because DELIVERY is too low for demand: low cardiac output, anaemia, hypoxia, or high demand (fever, shivering).

❌ Why the other options are wrong:
• Normal tissue oxygen extraction — Normal extraction gives an SvO₂ of 60–80%.
• Hyperoxia from high FiO₂ — High FiO₂ would raise, not lower, SvO₂.
• Excess oxygen delivery to the tissues — Excess oxygen delivery would raise SvO₂.

⭐ Key point: Low SvO₂ → improve oxygen delivery (fluids, inotropes, blood, oxygen) or reduce demand (sedation, cooling).$x$, null),
(56, $x$Pulse pressure variation above 13% in a ventilated patient suggests:$x$, $x$The patient is likely to be fluid responsive$x$, $x$✅ Correct answer: The patient is likely to be fluid responsive
In a patient on controlled ventilation, positive pressure breaths reduce venous return a little with each breath. If the patient is "on the steep part" of the Starling curve (needs fluid), this makes the pulse pressure vary a lot between breaths. A pulse pressure variation (PPV) above 13% suggests the patient is likely to respond to fluid (cardiac output will rise).

❌ Why the other options are wrong:
• The patient is already fluid overloaded — Fluid overload would show low variation.
• Cardiac tamponade is developing — Tamponade isn't diagnosed by PPV.
• The arterial line trace is damped — A damped trace reduces the accuracy of PPV; it doesn't explain high PPV.

⭐ Key point: PPV is only valid in sinus rhythm, with controlled ventilation, tidal volumes of about 8 mL/kg, and a closed chest.$x$, null),
(57, $x$A passive leg raise test assesses:$x$, $x$Fluid responsiveness without giving fluid$x$, $x$✅ Correct answer: Fluid responsiveness without giving fluid
A passive leg raise (PLR) moves the patient from a semi-recumbent position to lying flat with the legs raised at 45°. This shifts about 300 mL of blood from the legs to the heart, like a temporary "fluid bolus" that can be reversed. If cardiac output (or stroke volume) rises by 10% or more, the patient is likely FLUID RESPONSIVE, without giving any actual fluid.

❌ Why the other options are wrong:
• Spinal reflexes after cord injury — PLR doesn't test spinal reflexes.
• The risk of deep vein thrombosis — It doesn't assess DVT risk.
• Leg circulation in arterial disease — It isn't for diagnosing arterial disease in the legs.

⭐ Key point: Measure the cardiac output change directly (not just BP), within 1–2 minutes.$x$, null),
(58, $x$Inotropes increase:$x$, $x$Myocardial contractility$x$, $x$✅ Correct answer: Myocardial contractility
Inotropes increase the FORCE of heart muscle contraction (contractility), so the heart pumps more blood with each beat (higher stroke volume and cardiac output). Examples: dobutamine, adrenaline, milrinone, dopamine, and levosimendan. They are used in low cardiac output states such as cardiogenic shock.

❌ Why the other options are wrong:
• Venous capacity — Increasing venous capacity is a vasodilator effect (like GTN).
• Systemic vascular resistance only — Raising SVR is the main effect of vasopressors.
• Heart block — Inotropes don't cause heart block; some may cause arrhythmias.

⭐ Key point: Inotropes increase myocardial oxygen demand. Monitor for tachycardia, arrhythmias and ischaemia.$x$, null),
(59, $x$Vasopressors mainly increase:$x$, $x$SVR and blood pressure$x$, $x$✅ Correct answer: SVR and blood pressure
Vasopressors tighten (constrict) the blood vessels, increasing SYSTEMIC VASCULAR RESISTANCE and therefore BLOOD PRESSURE. They are used in vasodilated shock (septic, anaphylactic, neurogenic). Noradrenaline is first-line in septic shock; vasopressin is often added second.

❌ Why the other options are wrong:
• Contractility only — Raising contractility alone is an inotrope effect.
• Venous capacity — Increasing venous capacity is a venodilator effect.
• Heart block — Vasopressors don't cause heart block.

⭐ Key point: Give vasopressors through a central line where possible, via a dedicated lumen, never flushed, with continuous arterial BP monitoring.$x$, null),
(60, $x$The intra-aortic balloon pump inflates during:$x$, $x$Diastole, improving coronary flow$x$, $x$✅ Correct answer: Diastole, improving coronary flow
The intra-aortic balloon pump (IABP) INFLATES during DIASTOLE (just after the aortic valve closes, at the dicrotic notch). This pushes blood back toward the coronary arteries, improving coronary blood flow and oxygen supply to the heart muscle. It DEFLATES just before systole, which lowers the pressure in the aorta (afterload), so the heart can pump more easily.

❌ Why the other options are wrong:
• Only during cardiac arrest — The IABP is not used during cardiac arrest in this way.
• Systole, increasing the afterload — Inflating in systole would INCREASE afterload and harm the heart.
• Both phases equally throughout — It inflates and deflates at different times, not both phases equally.

⭐ Key point: IABP improves coronary perfusion (diastolic augmentation) and reduces afterload. It is timed to the ECG or arterial trace.$x$, null),
(61, $x$PEEP settings in ventilated life-threatening asthma should be:$x$, $x$Minimal (<5cmH2O)$x$, $x$✅ Correct answer: Minimal (<5cmH2O)
In severe asthma, air gets trapped in the lungs because the narrowed airways can't empty fully, creating INTRINSIC PEEP (auto-PEEP). Adding a lot of external PEEP would increase lung over-inflation, raise intrathoracic pressure, reduce venous return and cause hypotension or barotrauma. External PEEP is therefore kept MINIMAL (below 5 cmH₂O).

❌ Why the other options are wrong:
• Equal to peak inspiratory pressure — Setting PEEP equal to the peak pressure is dangerous.
• Zero at all times — Zero PEEP at all times isn't the usual approach; a little PEEP may help.
• High (>15cmH2O) — High PEEP (above 15) would worsen air trapping.

⭐ Key point: In asthma ventilation: low rate, small tidal volume, long expiratory time, low PEEP, and permissive hypercapnia.$x$, null),
(62, $x$The negative inspiratory force required for weaning readiness is at least:$x$, $x$-20cmH2O$x$, $x$✅ Correct answer: -20cmH2O
Negative inspiratory force (NIF, or maximum inspiratory pressure) measures how strongly the patient can breathe in against a closed airway. A NIF of at least −20 to −30 cmH₂O (more negative is stronger) suggests the breathing muscles are strong enough to wean.

❌ Why the other options are wrong:
• -100cmH2O — −100 cmH₂O is far stronger than needed and is not the minimum.
• -5cmH2O — −5 cmH₂O is very weak and predicts failure.
• Not relevant to weaning — NIF IS relevant to weaning; it assesses muscle strength.

⭐ Key point: Weaning readiness: FiO₂ 0.4–0.5 or less, PEEP 5–8 or less, a stable BP, awake, cough present, RSBI below 105, NIF −20 or more negative.$x$, null),
(63, $x$An FiO₂ below what value is generally required before considering weaning?$x$, $x$<0.5$x$, $x$✅ Correct answer: <0.5
Before weaning, the patient's oxygenation should be good on modest support: FiO₂ BELOW 0.5 (50%) (ideally 0.4 or less) and PEEP of 8 cmH₂O or less, with a P/F ratio above 150–200. Needing less oxygen shows the lungs are recovering and could cope with less support.

❌ Why the other options are wrong:
• <0.8 — An FiO₂ of 0.8 is too high; the patient still needs lots of oxygen.
• FiO₂ is irrelevant to weaning — FiO₂ IS relevant; it is one of the key criteria.
• <0.2 — 0.2 is below room air (0.21), so this is impossible.

⭐ Key point: Check the readiness criteria every day, then do a spontaneous breathing trial (SBT).$x$, null),
(64, $x$One of the following is a risk of keeping high PEEP$x$, $x$Hypotension$x$, $x$✅ Correct answer: Hypotension
PEEP keeps pressure in the chest raised even at the end of expiration. HIGH PEEP squeezes the great veins and heart, REDUCING VENOUS RETURN to the right heart. Less blood reaches the heart, so cardiac output and BP fall (HYPOTENSION), especially in hypovolaemic patients.

❌ Why the other options are wrong:
• Hypothermia — PEEP doesn't directly cause hypothermia.
• Hypertension — PEEP tends to LOWER BP, not raise it.
• Hyperthermia — PEEP doesn't cause hyperthermia.

⭐ Key point: Other risks of high PEEP: barotrauma (pneumothorax), raised ICP, and reduced kidney and liver blood flow. Give fluids carefully if BP falls.$x$, null),
(65, $x$Lung-protective ventilation in ARDS uses a tidal volume of:$x$, $x$6 mL/kg of predicted body weight$x$, $x$✅ Correct answer: 6 mL/kg of predicted body weight
In ARDS, only part of the lung works ("baby lung"), so large breaths over-stretch and injure the healthy parts (volutrauma). Lung-protective ventilation uses a tidal volume of 6 mL/kg PREDICTED (ideal) body weight, with a plateau pressure of 30 cmH₂O or less. This approach (from the ARDSNet trial) reduces deaths.

❌ Why the other options are wrong:
• 12 mL/kg of actual body weight — 12 mL/kg is too big and harms the lungs, and actual weight is the wrong measure.
• 15 mL/kg of predicted weight — 15 mL/kg is dangerously large.
• 3 mL/kg of actual weight — 3 mL/kg of actual weight is too small for routine ventilation.

⭐ Key point: Calculate predicted body weight from height and sex: men = 50 + 0.91 × (height in cm − 152.4); women = 45.5 + 0.91 × (height in cm − 152.4).$x$, null),
(66, $x$Plateau pressure is measured by:$x$, $x$An inspiratory hold at end-inspiration$x$, $x$✅ Correct answer: An inspiratory hold at end-inspiration
Plateau pressure is measured by an INSPIRATORY HOLD (pause of about 0.5–1 second) at the END of INSPIRATION. During the pause there is no airflow, so the airway resistance part disappears, and the pressure reflects the pressure in the ALVEOLI. It shows lung COMPLIANCE (stiffness). Keep it at 30 cmH₂O or less.

❌ Why the other options are wrong:
• An expiratory hold at end-expiration — An expiratory hold measures auto-PEEP (intrinsic PEEP), not plateau pressure.
• Reading the peak airway pressure — Peak pressure includes airway resistance, so it is higher than plateau.
• Disconnecting the patient briefly — Disconnecting the patient doesn't measure plateau pressure.

⭐ Key point: Driving pressure = plateau pressure − PEEP. Keep it below 15 cmH₂O to protect the lungs.$x$, null),
(67, $x$Prone positioning in severe ARDS improves:$x$, $x$Oxygenation through better V/Q matching$x$, $x$✅ Correct answer: Oxygenation through better V/Q matching
In severe ARDS, the back (dependent) parts of the lungs collapse under the weight of the heart and lungs when the patient lies on their back. Turning the patient PRONE (face down) opens these areas, makes ventilation more even, and better matches ventilation with blood flow (V/Q matching), improving OXYGENATION. It also reduces lung injury and lowers mortality.

❌ Why the other options are wrong:
• Sedation needs, by improving comfort — It isn't used to reduce sedation needs; patients often need more.
• Renal function, by better perfusion — It isn't used to improve kidney function.
• Cardiac output, by direct compression — It doesn't work by compressing the heart.

⭐ Key point: Prone for at least 16 hours a day when the P/F ratio is below 150. Watch pressure areas (face, chest, knees), tubes and lines during turning.$x$, null),
(68, $x$A P/F ratio of 90 mmHg on PEEP 10 indicates:$x$, $x$Severe ARDS$x$, $x$✅ Correct answer: Severe ARDS
The Berlin definition grades ARDS by P/F ratio with PEEP of 5 cmH₂O or more: MILD 200–300, MODERATE 100–200, SEVERE 100 or less. A P/F of 90 on PEEP 10 is SEVERE ARDS. Severe ARDS has the highest death rate and usually needs prone positioning, neuromuscular blockade, and possibly ECMO.

❌ Why the other options are wrong:
• Mild ARDS — Mild ARDS is P/F 200–300.
• Normal lung function — Normal lungs have a P/F of about 400–500.
• Moderate ARDS — Moderate ARDS is P/F 100–200.

⭐ Key point: P/F ratio = PaO₂ (mmHg) ÷ FiO₂ (as a decimal). Example: PaO₂ 72 on FiO₂ 0.8 = 90.$x$, null),
(69, $x$Pressure support ventilation means:$x$, $x$Each spontaneous breath is supported by a set pressure$x$, $x$✅ Correct answer: Each spontaneous breath is supported by a set pressure
Pressure support ventilation (PSV) is a spontaneous mode: the patient starts every breath and decides the rate. The ventilator adds a SET PRESSURE to SUPPORT each breath, making breathing easier. The patient controls their own rate, inspiratory time and, partly, the tidal volume. It is often used for weaning by gradually reducing the support.

❌ Why the other options are wrong:
• No breaths are delivered unless the patient is apnoeic — PSV doesn't deliver breaths if the patient stops breathing (apnoea backup is a safety feature, not the mode).
• All breaths are mandatory at a set rate and volume — Mandatory breaths at a set rate and volume describe volume-control mandatory ventilation.
• A fixed tidal volume is forced in with each breath — A fixed tidal volume forced in with each breath describes volume control.

⭐ Key point: Watch for apnoea in PSV, because there are no set breaths. Make sure apnoea alarms and backup ventilation are set.$x$, null),
(70, $x$A spontaneous breathing trial is considered failed if:$x$, $x$RR over 35, SpO₂ under 90%, rising HR and distress$x$, $x$✅ Correct answer: RR over 35, SpO₂ under 90%, rising HR and distress
A spontaneous breathing trial (SBT) tests whether the patient can breathe without much help. It is FAILED if the patient shows signs of struggling: respiratory rate above 35, SpO₂ below 90%, heart rate rising by more than 20%, BP changes, sweating, agitation, accessory muscle use or paradoxical breathing.

❌ Why the other options are wrong:
• SpO₂ is 96% on 40% oxygen with good air entry — SpO₂ of 96% on 40% oxygen with good air entry suggests success.
• The patient is calm with a respiratory rate of 18 — A calm patient with RR 18 is passing the trial.
• The patient obeys commands and coughs well — Obeying commands and coughing well are good signs.

⭐ Key point: If the SBT fails, return to full support, rest the patient, find and fix the cause, and try again the next day.$x$, null),
(71, $x$The rapid shallow breathing index (RR/VT in litres) predicting weaning success is below:$x$, $x$105$x$, $x$✅ Correct answer: 105
The rapid shallow breathing index (RSBI) = respiratory rate ÷ tidal volume in LITRES. Patients who are failing breathe fast and shallow, giving a HIGH RSBI. An RSBI BELOW 105 predicts weaning SUCCESS. Example: RR 25, VT 0.4 L → 25 ÷ 0.4 = 62.5 (good).

❌ Why the other options are wrong:
• 20 — 20 is far below the cut-off.
• 500 — 500 is far above it.
• 300 — 300 is far above it.

⭐ Key point: An RSBI above 105 suggests the patient is likely to fail weaning. Use it together with clinical assessment.$x$, null),
(72, $x$Auto-PEEP is most likely in:$x$, $x$Asthma or COPD with short expiratory time$x$, $x$✅ Correct answer: Asthma or COPD with short expiratory time
Auto-PEEP (intrinsic PEEP) happens when the patient can't breathe out fully before the next breath starts, so air gets trapped. It is most likely when there is AIRFLOW OBSTRUCTION (asthma, COPD), so expiration is slow, combined with a SHORT expiratory time (high rate, long inspiration).

❌ Why the other options are wrong:
• Normal lungs after elective surgery — Normal lungs empty easily; auto-PEEP is unlikely.
• ARDS ventilated at a low rate — ARDS ventilated at a low rate gives plenty of time to breathe out.
• Pulmonary fibrosis with stiff lungs — Stiff lungs (fibrosis) empty quickly.

⭐ Key point: Treat auto-PEEP: reduce the rate, shorten inspiration (I:E of 1:3 or 1:4), use bronchodilators, and suction secretions.$x$, null),
(73, $x$High peak pressure with normal plateau pressure suggests:$x$, $x$Increased airway resistance (secretions, bronchospasm)$x$, $x$✅ Correct answer: Increased airway resistance (secretions, bronchospasm)
Peak pressure includes the pressure needed to push air through the AIRWAYS (resistance) plus the pressure to inflate the ALVEOLI (compliance). Plateau pressure reflects the alveoli only. If PEAK is high but PLATEAU is normal, the problem is in the airways: increased RESISTANCE from secretions, bronchospasm, a kinked or bitten tube, or a narrow ETT.

❌ Why the other options are wrong:
• Reduced lung compliance, as in ARDS or oedema — Low compliance (ARDS, oedema) raises BOTH peak and plateau.
• A large pneumothorax on the ventilated side — A large pneumothorax reduces compliance, raising both peak and plateau.
• Normal lungs with a normal airway — Normal lungs and airway would give normal peak and plateau pressures.

⭐ Key point: High peak with normal plateau = airway problem (suction, bronchodilator, check the tube). High peak with high plateau = lung or chest problem.$x$, null),
(74, $x$Volutrauma refers to lung injury from:$x$, $x$Over-distension by large tidal volumes$x$, $x$✅ Correct answer: Over-distension by large tidal volumes
VOLUTRAUMA is lung injury caused by OVER-DISTENSION of the alveoli from large tidal volumes, which stretches and tears the alveolar walls, causing inflammation and leaking. It is the main reason for low tidal volume (6 mL/kg) ventilation.

❌ Why the other options are wrong:
• Infection of the lower airways — Airway infection is VAP or tracheobronchitis.
• Low PEEP causing alveolar collapse — Repeated opening and closing of alveoli (from low PEEP) is ATELECTRAUMA.
• Oxygen toxicity from high FiO₂ — Injury from high oxygen is oxygen toxicity.

⭐ Key point: Types of ventilator lung injury: barotrauma (high pressure, causing air leaks), volutrauma (over-stretching), atelectrauma (collapse–reopening), and biotrauma (inflammation).$x$, null),
(75, $x$A sudden fall in SpO₂ with absent breath sounds on the left after intubation suggests:$x$, $x$Right main bronchus intubation$x$, $x$✅ Correct answer: Right main bronchus intubation
The right main bronchus is shorter, wider and more vertical than the left. If the ETT is pushed in too far, it usually goes into the RIGHT main bronchus. Only the right lung is ventilated, so breath sounds are absent on the LEFT, the left lung collapses, and SpO₂ falls.

❌ Why the other options are wrong:
• A left-sided pneumothorax in every case — A left pneumothorax could cause absent sounds, but right main bronchus intubation is the most likely cause right after intubation.
• Severe bronchospasm on both sides — Bronchospasm causes wheeze on both sides.
• A massive pulmonary embolism — A massive PE doesn't cause one-sided absent breath sounds.

⭐ Key point: Normal ETT depth at the teeth: about 21 cm in women, 23 cm in men. Confirm with a chest X-ray (tip 3–5 cm above the carina).$x$, null),
(76, $x$Non-invasive ventilation is contraindicated in:$x$, $x$Inability to protect the airway, or vomiting$x$, $x$✅ Correct answer: Inability to protect the airway, or vomiting
NIV (CPAP or BiPAP via a face mask) requires the patient to protect their own airway, cooperate and breathe spontaneously. It is CONTRAINDICATED if the patient can't PROTECT THE AIRWAY (very low GCS, poor cough), is VOMITING (aspiration risk with a sealed mask), has facial trauma or burns, recent upper GI surgery, an undrained pneumothorax, or is in cardiac arrest.

❌ Why the other options are wrong:
• COPD with hypercapnic respiratory failure — COPD with hypercapnic respiratory failure is a main INDICATION for NIV.
• Acute cardiogenic pulmonary oedema — Cardiogenic pulmonary oedema is an INDICATION (CPAP).
• Obesity hypoventilation syndrome — Obesity hypoventilation syndrome is an INDICATION.

⭐ Key point: If NIV is used and the patient isn't improving within 1–2 hours (ABG), prepare for intubation.$x$, null),
(77, $x$High-flow nasal oxygen provides:$x$, $x$Heated, humidified oxygen with a small PEEP effect$x$, $x$✅ Correct answer: Heated, humidified oxygen with a small PEEP effect
High-flow nasal oxygen (HFNO) delivers HEATED and HUMIDIFIED oxygen at high flow rates (30–60 L/min) through nasal prongs. The high flow meets the patient's breathing demand, gives an accurate FiO₂ (21–100%), washes CO₂ out of the upper airway, and produces a small PEEP effect (about 3–5 cmH₂O). Humidification makes it comfortable and keeps secretions thin.

❌ Why the other options are wrong:
• Full mechanical ventilation without a tube — It is NOT full mechanical ventilation.
• Negative pressure ventilation of the chest — It is not negative pressure ventilation.
• Only low-flow dry oxygen through the nose — It gives HIGH flow, heated and humidified, not low-flow dry oxygen.

⭐ Key point: HFNO is used for type 1 respiratory failure, after extubation, and to pre-oxygenate for intubation.$x$, null),
(78, $x$A ventilated patient's tidal volume falls with low pressure alarms. The nurse checks first for:$x$, $x$A circuit disconnection or cuff leak$x$, $x$✅ Correct answer: A circuit disconnection or cuff leak
A low tidal volume with a LOW-PRESSURE alarm means air is ESCAPING from the system. The most likely causes: a CIRCUIT DISCONNECTION (the commonest), a CUFF LEAK (the ETT cuff is deflated or damaged), a leak at the humidifier or water trap, or the tube displaced above the vocal cords.

❌ Why the other options are wrong:
• Coughing against the ventilator — Coughing causes a HIGH-pressure alarm.
• Severe bronchospasm — Bronchospasm causes a HIGH-pressure alarm.
• A blocked endotracheal tube — A blocked ETT causes a HIGH-pressure alarm.

⭐ Key point: Low pressure = leak (check from the patient to the ventilator: tube position, cuff, connections). High pressure = obstruction.$x$, null),
(79, $x$Daily sedation interruption mainly helps to:$x$, $x$Reduce ventilation time and ICU stay$x$, $x$✅ Correct answer: Reduce ventilation time and ICU stay
Daily sedation interruption ("sedation hold" or "wake up and breathe") stops sedatives once a day to let the patient wake up. This shows whether they still need sedation and allows weaning assessment. It REDUCES the time on the ventilator and the length of ICU stay, without increasing harm.

❌ Why the other options are wrong:
• Increase the rate of delirium — It doesn't increase delirium; less sedation actually reduces delirium.
• Increase the rate of VAP — It REDUCES VAP risk.
• Prolong the time to weaning — It SHORTENS, not prolongs, the time to weaning.

⭐ Key point: Pair daily sedation holds with spontaneous breathing trials (the ABCDE bundle).$x$, null),
(80, $x$A cuff leak test before extubation assesses:$x$, $x$Laryngeal oedema risk$x$, $x$✅ Correct answer: Laryngeal oedema risk
The cuff leak test checks for swelling of the larynx (laryngeal oedema) before extubation. The ETT cuff is deflated: if air leaks around the tube (a measurable volume, more than about 110 mL or 10–25% of the tidal volume), there is space between the tube and the airway. If there is NO LEAK, the airway may be swollen, with a risk of STRIDOR after extubation.

❌ Why the other options are wrong:
• Cardiac output — It doesn't measure cardiac output.
• Lung compliance — It doesn't measure lung compliance.
• Gas exchange in lungs — It doesn't measure gas exchange.

⭐ Key point: If there is no cuff leak, consider steroids (methylprednisolone) for 12–24 hours before extubation and have reintubation equipment ready.$x$, null),
(81, $x$In peritoneal dialysis, the dialysate is$x$, $x$Hyperosmolar$x$, $x$✅ Correct answer: Hyperosmolar
In peritoneal dialysis, the dialysis fluid is HYPEROSMOLAR (contains high glucose, which makes it more concentrated than blood). Water moves by OSMOSIS from the blood (lower concentration) into the dialysate in the peritoneal cavity, removing excess fluid (ultrafiltration). Waste products move by diffusion.

❌ Why the other options are wrong:
• Normosmolar — Normosmolar fluid wouldn't pull fluid out.
• Hyposmolar — Hyposmolar fluid would move water INTO the blood, the wrong direction.
• Hyperosmosis — "Hyperosmosis" isn't the correct term; the dialysate is hyperosmolar.

⭐ Key point: Higher glucose concentrations remove more fluid. Watch for peritonitis (cloudy fluid, abdominal pain, fever).$x$, null),
(82, $x$A 53-year-old patient who is receiving ibuprofen 400 mg twice a day, for chronic, low back pain develops lower-extremity oedema. The pain management nurse suspects that the oedema is caused by:$x$, $x$A decrease in renal function$x$, $x$✅ Correct answer: A decrease in renal function
NSAIDs like ibuprofen block prostaglandins, which normally keep the kidney arteries open. Without them, blood flow to the kidneys falls, especially in older people or with dehydration. This REDUCES KIDNEY FUNCTION, causing salt and water retention and OEDEMA, high BP, and sometimes acute kidney injury.

❌ Why the other options are wrong:
• An increase in glomerular filtration rate — NSAIDs DECREASE, not increase, the GFR.
• A low creatinine level. — Kidney damage RAISES creatinine, not lowers it.
• An increase in plasma proteins. — NSAIDs don't increase plasma proteins.

⭐ Key point: Avoid NSAIDs in kidney disease, heart failure, dehydration and the elderly. Monitor creatinine in long-term use.$x$, null),
(83, $x$KDIGO stage 3 acute kidney injury includes urine output below:$x$, $x$Under 0.3 mL/kg/h for 24 h, or anuria for 12 h$x$, $x$✅ Correct answer: Under 0.3 mL/kg/h for 24 h, or anuria for 12 h
KDIGO stages AKI by creatinine and urine output. STAGE 3 (most severe) is: urine output below 0.3 mL/kg/hour for 24 HOURS or more, or NO urine (anuria) for 12 hours or more; OR creatinine 3 times baseline (or 354 µmol/L or above); OR starting dialysis.

❌ Why the other options are wrong:
• Under 0.5 mL/kg/h for 6 consecutive hours — Below 0.5 mL/kg/hour for 6 hours is STAGE 1.
• Under 2 mL/kg/h for 1 hour after surgery — 2 mL/kg/hour is a normal or good urine output.
• Under 1 mL/kg/h for 2 consecutive hours — 1 mL/kg/hour is a normal urine output.

⭐ Key point: Stage 1: below 0.5 for 6–12 hours; Stage 2: below 0.5 for 12 hours or more; Stage 3: below 0.3 for 24 hours or more, or anuria for 12 hours.$x$, null),
(84, $x$A urinary sodium below 20 mmol/L in oliguria suggests:$x$, $x$Pre-renal AKI with intact tubules$x$, $x$✅ Correct answer: Pre-renal AKI with intact tubules
In PRE-RENAL AKI (from dehydration or low BP), the kidney tubules still WORK, so they hold on to as much SODIUM (and water) as possible to restore blood volume. The urine sodium is LOW (below 20 mmol/L), the urine is concentrated, and the fractional excretion of sodium (FeNa) is below 1%.

❌ Why the other options are wrong:
• Established acute tubular necrosis — In established ATN, the damaged tubules CAN'T hold sodium, so urine sodium is HIGH (above 40).
• Recent loop diuretic administration — Loop diuretics RAISE urine sodium (they block sodium reabsorption), making the test unreliable.
• Post-renal obstruction of the outflow — Post-renal obstruction doesn't usually show this pattern.

⭐ Key point: Pre-renal AKI usually improves quickly with fluid. If untreated, it can progress to ATN.$x$, null),
(85, $x$Indications for urgent dialysis include:$x$, $x$Refractory high K⁺, acidosis, overload, uraemia$x$, $x$✅ Correct answer: Refractory high K⁺, acidosis, overload, uraemia
Urgent dialysis is needed when the kidneys fail and dangerous problems can't be controlled with drugs. Remember AEIOU: ACIDOSIS (severe metabolic acidosis), ELECTROLYTES (refractory high potassium), INTOXICATION (some poisons, such as methanol or lithium), OVERLOAD (fluid overload not responding to diuretics, pulmonary oedema), and URAEMIA (pericarditis, encephalopathy, bleeding).

❌ Why the other options are wrong:
• Hypokalaemia from diuretic therapy — Low potassium is not an indication for dialysis.
• A creatinine of 120 µmol/L with good output — A creatinine of 120 with good urine output is not an indication.
• Mild oliguria for 2 hours after surgery — Mild oliguria for 2 hours after surgery is not an indication.

⭐ Key point: Dialysis is decided by these complications, not by a creatinine number alone.$x$, null),
(86, $x$CRRT is preferred to intermittent haemodialysis in:$x$, $x$Haemodynamically unstable patients$x$, $x$✅ Correct answer: Haemodynamically unstable patients
Continuous renal replacement therapy (CRRT) removes fluid and waste SLOWLY over 24 hours, so the blood pressure stays more stable. Intermittent haemodialysis (IHD) removes fluid quickly over 3–4 hours, which can cause low BP. CRRT is therefore preferred in HAEMODYNAMICALLY UNSTABLE patients (shock, on vasopressors) and in patients with raised ICP.

❌ Why the other options are wrong:
• Patients who can walk — Patients who can walk are usually stable; IHD is fine.
• Stable outpatients — Stable outpatients have IHD.
• Patients with no kidney disease — Patients without kidney disease don't usually need dialysis.

⭐ Key point: CRRT also allows better fluid control and continuous correction of acidosis and electrolytes.$x$, null),
(87, $x$Citrate anticoagulation in CRRT requires monitoring of:$x$, $x$Ionised calcium in the patient and circuit$x$, $x$✅ Correct answer: Ionised calcium in the patient and circuit
Citrate binds CALCIUM in the blood in the circuit, which stops it from clotting. The citrate–calcium complex returns to the patient, where it is broken down by the liver, releasing calcium. Ionised calcium must be monitored in the PATIENT (to replace calcium) and in the CIRCUIT (post-filter, to check citrate is working). Calcium is replaced by a separate infusion.

❌ Why the other options are wrong:
• The blood glucose only, every 4 hours — Glucose isn't the main thing to monitor with citrate.
• The platelet count only, checked daily — Platelets matter more with heparin (HIT risk).
• The urine sodium only, every 12 hours — Urine sodium isn't relevant.

⭐ Key point: Citrate toxicity (citrate building up in liver failure): a low ionised calcium with a high total calcium (total-to-ionised ratio above 2.5), and metabolic acidosis.$x$, null),
(88, $x$ABG: pH 7.20, PaCO₂ 25 mmHg, HCO₃⁻ 10 mmol/L indicates:$x$, $x$Metabolic acidosis with respiratory compensation$x$, $x$✅ Correct answer: Metabolic acidosis with respiratory compensation
Step 1: pH 7.20 is low, so the patient has ACIDOSIS. Step 2: HCO₃⁻ 10 is very low, so the cause is METABOLIC (pH and HCO₃⁻ both down = metabolic). Step 3: PaCO₂ 25 is low; the lungs are blowing off CO₂ to COMPENSATE. Check with Winter's formula: expected PaCO₂ = 1.5 × 10 + 8 = 23 (±2), so 25 fits. This is metabolic acidosis with appropriate respiratory compensation.

❌ Why the other options are wrong:
• Mixed respiratory and metabolic alkalosis — The pH is low (acidosis), so it can't be alkalosis.
• Metabolic alkalosis with respiratory compensation — The pH is low, not high, so it isn't metabolic alkalosis.
• Acute respiratory acidosis without compensation — Respiratory acidosis would have a HIGH PaCO₂; here it is low.

⭐ Key point: Causes of metabolic acidosis: DKA, lactic acidosis, kidney failure, diarrhoea, poisoning. Calculate the anion gap to narrow down the cause.$x$, null),
(89, $x$ABG: pH 7.48, PaCO₂ 48 mmHg, HCO₃⁻ 35 mmol/L indicates:$x$, $x$Metabolic alkalosis with respiratory compensation$x$, $x$✅ Correct answer: Metabolic alkalosis with respiratory compensation
Step 1: pH 7.48 is high, so ALKALOSIS. Step 2: HCO₃⁻ 35 is high (pH and HCO₃⁻ both up), so it is METABOLIC alkalosis. Step 3: PaCO₂ 48 is high; the lungs are breathing less to retain CO₂ (acid), which is respiratory COMPENSATION.

❌ Why the other options are wrong:
• Metabolic acidosis with respiratory compensation — Metabolic acidosis would have a low pH and a low HCO₃⁻.
• Respiratory acidosis with metabolic compensation — Respiratory acidosis would have a LOW pH with a high PaCO₂.
• Acute respiratory alkalosis from hyperventilation — Respiratory alkalosis would have a LOW PaCO₂.

⭐ Key point: Causes of metabolic alkalosis: vomiting, NG suction, diuretics, low potassium, too much bicarbonate. Treat with saline and potassium chloride.$x$, null),
(90, $x$A normal anion gap metabolic acidosis is caused by:$x$, $x$Diarrhoea or large volumes of 0.9% saline$x$, $x$✅ Correct answer: Diarrhoea or large volumes of 0.9% saline
The anion gap = Na⁺ − (Cl⁻ + HCO₃⁻), normally about 8–12. In NORMAL anion gap (hyperchloraemic) metabolic acidosis, bicarbonate is lost but replaced by CHLORIDE, so the gap stays normal. Causes: DIARRHOEA (loss of bicarbonate-rich gut fluid), large volumes of 0.9% SALINE (high chloride), renal tubular acidosis, and pancreatic fistulae.

❌ Why the other options are wrong:
• Methanol poisoning with visual loss — Methanol causes a HIGH anion gap acidosis.
• Diabetic ketoacidosis with high ketones — DKA causes a HIGH anion gap acidosis (ketones).
• Lactic acidosis from septic shock — Lactic acidosis causes a HIGH anion gap acidosis.

⭐ Key point: High anion gap causes: MUDPILES (Methanol, Uraemia, DKA, Paraldehyde, Iron/Isoniazid, Lactate, Ethylene glycol, Salicylates).$x$, null),
(91, $x$Hypokalaemia on the ECG shows:$x$, $x$Flat T waves and prominent U waves$x$, $x$✅ Correct answer: Flat T waves and prominent U waves
Low potassium slows the recovery (repolarisation) of heart muscle cells. The ECG shows FLAT or inverted T WAVES, prominent U WAVES (an extra small wave after the T), ST depression, and a prolonged QU interval. Severe hypokalaemia can cause dangerous arrhythmias (VT, VF, torsades), especially with digoxin.

❌ Why the other options are wrong:
• ST elevation in all of the leads — ST elevation in all leads suggests pericarditis.
• Tall, peaked T waves in V2–V4 — Tall, peaked T waves are a sign of HIGH potassium.
• Wide QRS complexes and sine waves — Wide QRS and sine waves are signs of severe HIGH potassium.

⭐ Key point: Keep K⁺ at 4.0–5.0 mmol/L in cardiac patients. Low magnesium often comes with low potassium; replace both.$x$, null),
(92, $x$IV potassium on a general ICU line should usually not exceed:$x$, $x$10–20 mmol/hour via a central line with monitoring$x$, $x$✅ Correct answer: 10–20 mmol/hour via a central line with monitoring
IV potassium is a HIGH-ALERT drug: if given too fast, it can stop the heart. Peripherally, give no more than 10 mmol/hour. Via a CENTRAL line with ECG monitoring, up to 20 mmol/hour (and higher only in very specific ICU protocols). Always use pre-mixed bags or syringes on an infusion pump, never a bolus.

❌ Why the other options are wrong:
• 50 mmol given over 5 minutes in an arrest — 50 mmol over 5 minutes would cause cardiac arrest.
• An undiluted bolus through any IV line — An undiluted bolus is NEVER given; it can be fatal.
• 100 mmol/hour through a peripheral cannula — 100 mmol/hour peripherally is extremely dangerous and would damage the vein.

⭐ Key point: Check K⁺ levels regularly during replacement, keep the patient on a cardiac monitor for fast infusions, and store concentrated KCl securely.$x$, null),
(93, $x$Hypomagnesaemia may cause:$x$, $x$Torsades and refractory hypokalaemia$x$, $x$✅ Correct answer: Torsades and refractory hypokalaemia
Magnesium is needed to stabilise heart muscle and nerve cells, and for the kidneys to hold on to potassium. Low magnesium causes muscle weakness, tremor, seizures and ARRHYTHMIAS, including TORSADES de pointes. It also makes LOW POTASSIUM hard to correct (refractory), because the kidneys keep wasting potassium.

❌ Why the other options are wrong:
• Hypertension only, with headache — Hypertension alone with headache isn't the typical effect.
• Bradycardia only, with heart block — Bradycardia and heart block are not typical.
• Polyuria only, with thirst — Polyuria and thirst are not typical.

⭐ Key point: If potassium won't come up, check and replace magnesium first. Normal Mg is 0.7–1.0 mmol/L.$x$, null),
(94, $x$Hypophosphataemia in ICU may cause:$x$, $x$Respiratory muscle weakness and failed weaning$x$, $x$✅ Correct answer: Respiratory muscle weakness and failed weaning
Phosphate is needed to make ATP (energy) for muscles, including the diaphragm. Low phosphate causes RESPIRATORY MUSCLE WEAKNESS, FAILED WEANING from the ventilator, heart failure, confusion, seizures and red cell breakdown. It is common in refeeding syndrome, DKA treatment (insulin drives phosphate into cells), alcoholism and CRRT.

❌ Why the other options are wrong:
• Hypercalcaemia with kidney stones and polyuria — Low phosphate doesn't cause high calcium with kidney stones.
• Tetany only, without any muscle weakness — Low phosphate causes weakness, not just tetany (low calcium causes tetany).
• Severe hypertension with headache and blurring — Low phosphate doesn't cause severe hypertension.

⭐ Key point: Check phosphate in patients who are hard to wean. Normal phosphate is 0.8–1.5 mmol/L.$x$, null),
(95, $x$Fluid balance charts are most useful when:$x$, $x$Totalled every 24 hours, with daily weights$x$, $x$✅ Correct answer: Totalled every 24 hours, with daily weights
Fluid balance charts show all fluid IN (IV, enteral, oral, drugs) and OUT (urine, drains, vomit, NG, stool, insensible losses). They are most useful when totalled EVERY 24 HOURS and added to a CUMULATIVE balance, together with DAILY WEIGHTS. This shows whether the patient is getting overloaded or dry. A large cumulative positive balance in ICU is linked to worse outcomes.

❌ Why the other options are wrong:
• Left blank during the night shift — Leaving the chart blank at night gives wrong totals.
• Estimated without any measurement — Estimating without measuring is inaccurate.
• Filled in once a week by the manager — Weekly totals miss daily changes.

⭐ Key point: Record fluids accurately in real time. Daily weight is the best single measure of fluid change (1 kg is about 1 L of fluid).$x$, null),
(96, $x$Over-hydration (fluid overload) is suggested by:$x$, $x$Weight gain, raised JVP, crackles, oedema$x$, $x$✅ Correct answer: Weight gain, raised JVP, crackles, oedema
Fluid overload shows: WEIGHT GAIN (fluid weighs 1 kg per litre), RAISED JVP or CVP, lung CRACKLES (pulmonary oedema), breathlessness, falling SpO₂, peripheral OEDEMA (swollen legs, sacrum), and high BP. In ICU, it can impair healing and organ function.

❌ Why the other options are wrong:
• Low JVP with tachycardia and cool hands — A low JVP with tachycardia and cool hands suggests DEHYDRATION.
• Weight loss with a dry mouth and thirst — Weight loss with a dry mouth and thirst suggests DEHYDRATION.
• Concentrated dark urine with high urea — Concentrated dark urine with high urea suggests DEHYDRATION.

⭐ Key point: Treat overload with fluid restriction, diuretics (furosemide) or ultrafiltration (CRRT) if the kidneys fail.$x$, null),
(97, $x$Dehydration is suggested by:$x$, $x$Tachycardia, dry mucosa, oliguria, raised urea$x$, $x$✅ Correct answer: Tachycardia, dry mucosa, oliguria, raised urea
Dehydration (hypovolaemia) shows: TACHYCARDIA (the heart compensates for low volume), dry MUCOUS membranes (mouth, tongue), OLIGURIA (low urine output, concentrated urine), poor skin turgor, low BP (late), and RAISED UREA (urea rises more than creatinine in pre-renal states, a urea-to-creatinine ratio above 100:1 in µmol units).

❌ Why the other options are wrong:
• Polyuria with very dilute urine and low urea — Polyuria with dilute urine and low urea doesn't fit dehydration (it suggests diabetes insipidus or diuresis).
• Bradycardia with peripheral oedema and weight gain — Bradycardia with oedema and weight gain suggests fluid overload.
• Raised JVP with basal crackles and a gallop — Raised JVP with crackles suggests fluid overload or heart failure.

⭐ Key point: Treat with IV fluid boluses (and find the cause), reassessing after each bolus.$x$, null),
(98, $x$The kidneys compensate for respiratory acidosis by:$x$, $x$Retaining bicarbonate and excreting H⁺$x$, $x$✅ Correct answer: Retaining bicarbonate and excreting H⁺
In respiratory acidosis, CO₂ (acid) builds up because of poor breathing. The KIDNEYS compensate by RETAINING (reabsorbing and making more) BICARBONATE and EXCRETING more hydrogen ions (acid) in the urine. This raises the blood bicarbonate and brings the pH back toward normal. It takes 3–5 days to work fully.

❌ Why the other options are wrong:
• Retaining hydrogen ions in the blood — Retaining hydrogen ions would make the acidosis worse.
• Excreting bicarbonate in the urine — Excreting bicarbonate would make the acidosis worse.
• Increasing the rate of breathing — Increasing breathing is a lung response, not kidney compensation.

⭐ Key point: In chronic CO₂ retention (COPD), a raised HCO₃⁻ shows the kidneys have compensated over time.$x$, null),
(99, $x$The lungs compensate for metabolic acidosis by:$x$, $x$Hyperventilation to lower PaCO₂$x$, $x$✅ Correct answer: Hyperventilation to lower PaCO₂
In metabolic acidosis, the blood has too much acid (low HCO₃⁻). The LUNGS compensate quickly (within minutes) by HYPERVENTILATING: breathing faster and deeper to blow off CO₂ and lower the PaCO₂. Less CO₂ means less carbonic acid, so the pH rises toward normal. Kussmaul breathing in DKA is a classic example.

❌ Why the other options are wrong:
• Hypoventilation to raise PaCO₂ — Hypoventilation would RAISE PaCO₂ and worsen the acidosis.
• Retaining bicarbonate — Retaining bicarbonate is a KIDNEY response.
• Excreting ammonium — Excreting ammonium is a KIDNEY response.

⭐ Key point: Winter's formula checks if compensation is appropriate: expected PaCO₂ = 1.5 × HCO₃⁻ + 8 (±2).$x$, null),
(100, $x$Nephrotoxic drugs to avoid in AKI include:$x$, $x$Aminoglycosides, NSAIDs, IV contrast$x$, $x$✅ Correct answer: Aminoglycosides, NSAIDs, IV contrast
In AKI, avoid drugs that damage the kidneys further: AMINOGLYCOSIDES (gentamicin, amikacin, which are toxic to the tubules), NSAIDs (reduce kidney blood flow), IV CONTRAST (tubular injury and vasoconstriction), and also vancomycin (monitor levels), ACE inhibitors and ARBs in dehydration, and amphotericin. Doses of drugs cleared by the kidneys must be adjusted.

❌ Why the other options are wrong:
• Insulin given by continuous infusion — Insulin isn't nephrotoxic (though doses may need reducing in kidney failure).
• Oxygen given by face mask or cannula — Oxygen isn't nephrotoxic.
• Paracetamol in normal therapeutic doses — Paracetamol in normal doses is safe for the kidneys.

⭐ Key point: Review all drugs daily in AKI: stop nephrotoxins and adjust the doses of renally cleared drugs (such as antibiotics, LMWH, opioids).$x$, null),
(101, $x$Coagulopathy or low platelet count in a patient with GI bleeding:$x$, $x$Increases the risk of rebleeding$x$, $x$✅ Correct answer: Increases the risk of rebleeding
Clotting (coagulation factors and platelets) is what seals a bleeding blood vessel. In a GI bleed, if the patient has a COAGULOPATHY (high INR, liver disease, anticoagulants) or LOW PLATELETS, the bleeding point can't form a stable clot, so bleeding is more likely to continue or START AGAIN after it stops (rebleeding).

❌ Why the other options are wrong:
• Has no bearing on bleeding risk — Clotting problems clearly affect bleeding risk.
• Reduces the risk of rebleeding — They INCREASE, not reduce, the risk of rebleeding.
• Only matters in upper GI bleeds, not lower — They matter in both upper and lower GI bleeding.

⭐ Key point: Correct clotting in GI bleeding: vitamin K, PCC or FFP for high INR, platelets if below 50, and review anticoagulants and antiplatelets.$x$, null),
(102, $x$A client is receiving a blood transfusion. The critical care nurse observes that the client is experiencing diarrhoea, abdominal pain, and chills. Which of the following actions should the nurse take FIRST?$x$, $x$Stop the transfusion.$x$, $x$✅ Correct answer: Stop the transfusion.
Diarrhoea, abdominal pain and chills during a transfusion are signs of a TRANSFUSION REACTION (possibly haemolytic or septic). The FIRST action is to STOP the transfusion immediately, keep the IV line open with 0.9% saline through a new giving set, check vital signs, and call the doctor. Then return the blood bag and giving set to the lab.

❌ Why the other options are wrong:
• Administer meperidine. — Meperidine (pethidine) may treat rigors but doesn't address the cause and isn't first.
• Assist the client to the bathroom. — Helping to the bathroom doesn't stop the reaction.
• Get a warming blanket. — A warming blanket may comfort the patient but doesn't stop the reaction.

⭐ Key point: Any new symptom during transfusion: STOP first, then assess. Check the patient's ID against the blood bag again.$x$, null),
(103, $x$Percussion as an airway clearance technique is contraindicated in a patient with:$x$, $x$Platelet count <20,000$x$, $x$✅ Correct answer: Platelet count <20,000
Percussion means rhythmically clapping the chest with cupped hands to loosen secretions. In a patient with a very LOW PLATELET count (below 20,000/mm³, or 20 × 10⁹/L), the repeated impacts can cause bruising, bleeding into the chest wall or lungs, or haemoptysis. It is therefore contraindicated.

❌ Why the other options are wrong:
• Cystic fibrosis — Cystic fibrosis is an INDICATION for chest physiotherapy (thick secretions).
• Post-operative atelectasis — Post-operative atelectasis is an INDICATION.
• Retained secretions — Retained secretions are an INDICATION.

⭐ Key point: Other contraindications to percussion: rib fractures, severe osteoporosis, chest wall wounds or burns, pneumothorax (undrained), haemoptysis and unstable BP.$x$, null),
(104, $x$A febrile non-haemolytic transfusion reaction is managed by:$x$, $x$Slow or stop the transfusion; give paracetamol$x$, $x$✅ Correct answer: Slow or stop the transfusion; give paracetamol
A febrile non-haemolytic transfusion reaction (FNHTR) is caused by white cells or cytokines in the donor blood. It causes a temperature rise (usually less than 2 °C) and chills, but the patient is otherwise stable. SLOW or STOP the transfusion, give PARACETAMOL, and check the patient. Serious causes (haemolysis, bacterial contamination) must be excluded before continuing.

❌ Why the other options are wrong:
• Ignore it and continue at the same rate — Ignoring the fever could miss a serious reaction.
• Speed up the transfusion to finish it — Speeding up the transfusion could make a reaction worse.
• Give IV potassium to correct the fever — Potassium has no role in treating fever.

⭐ Key point: If the fever is high (above 39 °C), or comes with low BP, back pain or breathlessness, STOP and treat as a serious reaction.$x$, null),
(105, $x$Transfusion-related acute lung injury (TRALI) presents within 6 hours with:$x$, $x$Hypoxia and bilateral infiltrates, no fluid overload$x$, $x$✅ Correct answer: Hypoxia and bilateral infiltrates, no fluid overload
TRALI (transfusion-related acute lung injury) is caused by antibodies in donor plasma that attack the recipient's white cells in the lungs, making the lung capillaries leak. Within 6 HOURS of transfusion, the patient develops breathlessness, HYPOXIA and BILATERAL lung INFILTRATES on X-ray, WITHOUT fluid overload (the JVP is normal, and BP is often low).

❌ Why the other options are wrong:
• Hypertension with a raised JVP and oedema — High BP with raised JVP and oedema describes TACO (fluid overload).
• Hyperkalaemia only, with peaked T waves — High potassium is a separate complication of massive transfusion.
• A localised rash only, with normal oxygen — A localised rash with normal oxygen is a mild allergic reaction.

⭐ Key point: TRALI: low or normal BP, normal JVP, no response to diuretics. Treat with oxygen and ventilation support. Report to the blood bank.$x$, null),
(106, $x$Transfusion-associated circulatory overload (TACO) is treated with:$x$, $x$Stop, sit up, give oxygen and diuretics$x$, $x$✅ Correct answer: Stop, sit up, give oxygen and diuretics
TACO (transfusion-associated circulatory overload) happens when blood is given too FAST or in too large a volume for the patient's heart to cope, especially in the elderly, heart failure or kidney failure. It causes breathlessness, high BP, raised JVP and pulmonary oedema. STOP or slow the transfusion, SIT the patient UP, give OXYGEN and DIURETICS (furosemide).

❌ Why the other options are wrong:
• Give more blood quickly to finish — More blood quickly would make the overload worse.
• Start broad-spectrum antibiotics — Antibiotics don't treat fluid overload.
• Lie the patient completely flat — Lying flat makes breathing harder in pulmonary oedema.

⭐ Key point: Prevent TACO: transfuse one unit at a time, slowly (over 3–4 hours) in at-risk patients, sometimes with furosemide between units.$x$, null),
(107, $x$Each unit of blood should be completed within:$x$, $x$4 hours of leaving the fridge$x$, $x$✅ Correct answer: 4 hours of leaving the fridge
Each unit of red cells must be COMPLETED within 4 HOURS of leaving the controlled-temperature storage (the blood fridge). After that, bacteria can grow in the warm blood, increasing the risk of a septic transfusion reaction.

❌ Why the other options are wrong:
• 24 hours of leaving the fridge — 24 hours is far too long; bacteria would multiply.
• 12 hours of leaving the fridge — 12 hours is too long.
• 30 minutes of leaving the fridge — 30 minutes is too short to give a unit safely (except in an emergency).

⭐ Key point: Start the transfusion within 30 minutes of collecting the blood from the fridge, and finish within 4 hours.$x$, null),
(108, $x$Platelets should not be given through:$x$, $x$A used blood giving set$x$, $x$✅ Correct answer: A used blood giving set
Platelets are sticky cells. If they are given through a giving set already used for red cells, many platelets stick to the debris and clots in the filter, reducing the dose that reaches the patient. Platelets should be given through a NEW standard blood giving set or a dedicated platelet set, never a USED blood giving set.

❌ Why the other options are wrong:
• A central line — Platelets can be given through a central line.
• A platelet or new standard giving set — A new or platelet giving set is the RIGHT choice.
• A peripheral cannula — Platelets can be given through a peripheral cannula.

⭐ Key point: Platelets are stored at room temperature (20–24 °C) with constant gentle agitation. NEVER refrigerate them; give over about 30 minutes.$x$, null),
(109, $x$DIC laboratory findings include:$x$, $x$Low platelets and fibrinogen, long PT/APTT, high D-dimer$x$, $x$✅ Correct answer: Low platelets and fibrinogen, long PT/APTT, high D-dimer
In disseminated intravascular coagulation (DIC), widespread small clots use up (consume) platelets and clotting factors. Lab results show: LOW PLATELETS, LOW FIBRINOGEN, PROLONGED PT and APTT (factors used up), and HIGH D-DIMER (from clot breakdown). Patients may bleed from many sites and also have organ damage from clots.

❌ Why the other options are wrong:
• Normal clotting times with a low D-dimer level — Normal clotting times with low D-dimer rule out DIC.
• High platelets and high fibrinogen with short clotting times — High platelets and fibrinogen with short clotting times are the opposite of DIC.
• Isolated high haemoglobin with normal platelets — A high haemoglobin with normal platelets doesn't fit DIC.

⭐ Key point: DIC causes: sepsis, trauma, obstetric emergencies (abruption, AFE), malignancy. Treat the cause; give platelets, FFP and cryoprecipitate if bleeding.$x$, null),
(110, $x$Heparin-induced thrombocytopenia (HIT) typically occurs:$x$, $x$5–10 days after starting heparin, with thrombosis$x$, $x$✅ Correct answer: 5–10 days after starting heparin, with thrombosis
Heparin-induced thrombocytopenia (HIT) is an immune reaction in which antibodies form against heparin bound to platelet factor 4. It usually starts 5–10 DAYS after starting heparin (sooner if exposed in the last 100 days). Platelets fall by more than 50%, and paradoxically the patient develops new CLOTS (DVT, PE, arterial thrombosis), not bleeding.

❌ Why the other options are wrong:
• Only after switching to oral warfarin — Switching to warfarin isn't the trigger.
• Within minutes of the first heparin dose — It doesn't occur within minutes of the first dose (except in re-exposure).
• Only with LMWH given to young children — It can occur with unfractionated heparin and LMWH in all ages.

⭐ Key point: In HIT, STOP ALL heparin (including flushes) and start a non-heparin anticoagulant (argatroban, fondaparinux). Don't give platelets.$x$, null),
(111, $x$A sickle cell crisis transfusion target is usually HbS below:$x$, $x$30%$x$, $x$✅ Correct answer: 30%
In severe sickle cell complications (acute chest syndrome, stroke, multi-organ failure), the aim of transfusion is to reduce the proportion of sickle haemoglobin (HbS) to BELOW 30%. This means most red cells carry normal haemoglobin (HbA), reducing sickling, improving blood flow and oxygen delivery. EXCHANGE transfusion removes sickle cells while giving normal cells.

❌ Why the other options are wrong:
• 70% — 70% HbS would still allow lots of sickling.
• 50% — 50% is not low enough for severe crises.
• 90% — 90% is close to untreated levels.

⭐ Key point: Avoid raising the haemoglobin above about 100 g/L with simple transfusion, because thicker blood increases sickling and stroke risk.$x$, null),
(112, $x$A low reticulocyte count in anaemia indicates:$x$, $x$Reduced bone marrow production$x$, $x$✅ Correct answer: Reduced bone marrow production
Reticulocytes are young red blood cells newly released from the bone marrow. Their count shows how hard the marrow is working. A LOW reticulocyte count in anaemia means the BONE MARROW is NOT making enough red cells: iron, B12 or folate deficiency, marrow failure, kidney disease (low erythropoietin), or chronic illness.

❌ Why the other options are wrong:
• Acute bleeding with good marrow — Acute bleeding with a healthy marrow gives a HIGH reticulocyte count (after a few days).
• Increased red cell destruction — Increased red cell destruction (haemolysis) gives a HIGH reticulocyte count.
• Haemolysis — Haemolysis gives a HIGH reticulocyte count.

⭐ Key point: High reticulocytes = marrow responding (haemolysis, bleeding). Low reticulocytes = production problem.$x$, null),
(113, $x$A blood film showing fragmented red cells (schistocytes) suggests:$x$, $x$Microangiopathic haemolysis (DIC, TTP)$x$, $x$✅ Correct answer: Microangiopathic haemolysis (DIC, TTP)
Schistocytes are fragmented red cells, broken as they are forced through small vessels partly blocked by tiny clots or damaged endothelium. This is MICROANGIOPATHIC HAEMOLYTIC ANAEMIA, seen in DIC, TTP (thrombotic thrombocytopenic purpura), HUS (haemolytic uraemic syndrome), HELLP syndrome, and malignant hypertension.

❌ Why the other options are wrong:
• Vitamin B12 deficiency with large cells — B12 deficiency shows LARGE red cells (macrocytes) and hypersegmented neutrophils.
• Iron deficiency from chronic bleeding — Iron deficiency shows SMALL, pale red cells (microcytic, hypochromic).
• A normal blood film in a healthy adult — A normal film doesn't have fragmented cells.

⭐ Key point: TTP is an emergency: low platelets, haemolysis, fever, confusion, kidney problems. Treat with urgent plasma exchange; don't give platelets.$x$, null),
(114, $x$The commonest pathogens in Nigerian ICUs include:$x$, $x$Klebsiella, Pseudomonas, S. aureus, Acinetobacter$x$, $x$✅ Correct answer: Klebsiella, Pseudomonas, S. aureus, Acinetobacter
Studies of Nigerian ICUs show that the most common bacteria causing infections are Gram-negative germs: KLEBSIELLA pneumoniae, PSEUDOMONAS aeruginosa, ACINETOBACTER baumannii, and E. coli, plus the Gram-positive STAPHYLOCOCCUS AUREUS (including MRSA). Many are multidrug-resistant, so culture and sensitivity results are essential.

❌ Why the other options are wrong:
• Only respiratory viruses such as influenza — Respiratory viruses cause some infections, but they're not the main ICU pathogens.
• Only fungi such as Candida and Aspergillus — Fungi like Candida occur, especially in long-stay patients, but they aren't the commonest.
• Only parasites such as malaria and worms — Parasites like malaria are important in Nigeria but are not the commonest ICU hospital infections.

⭐ Key point: Antibiotic resistance is a growing problem. Use local antibiograms (resistance patterns) to choose empirical antibiotics.$x$, null),
(115, $x$Blood cultures should be taken:$x$, $x$Before antibiotics, from two sites, aseptically$x$, $x$✅ Correct answer: Before antibiotics, from two sites, aseptically
Blood cultures should be taken BEFORE antibiotics are given (antibiotics can stop bacteria growing in the bottles), from TWO separate SITES (to tell a true infection from skin contamination), using strict ASEPTIC technique (clean the skin with 2% chlorhexidine in 70% alcohol and let it dry). Take at least 10 mL per bottle in adults.

❌ Why the other options are wrong:
• Without skin preparation, to save time — Skipping skin preparation causes contamination with skin bacteria.
• After antibiotics, from a single site only — Cultures after antibiotics may give false negatives.
• From the arterial line only, after flushing — Taking cultures only from an arterial line after flushing increases contamination.

⭐ Key point: In sepsis, take cultures quickly, but never delay antibiotics for more than about 45 minutes to get them.$x$, null),
(116, $x$Culture and sensitivity results guide:$x$, $x$Antibiotic choice and de-escalation$x$, $x$✅ Correct answer: Antibiotic choice and de-escalation
Culture and sensitivity (C&S) results show WHICH germ is causing the infection and WHICH ANTIBIOTICS it is sensitive or resistant to. This guides the choice of antibiotic and allows DE-ESCALATION: switching from a broad-spectrum empirical antibiotic to a narrower, targeted one.

❌ Why the other options are wrong:
• Sedation dosing in ventilated patients — Sedation doses aren't guided by culture results.
• Blood group selection for transfusion — Blood group selection uses group and cross-match tests.
• The choice of IV maintenance fluid — IV fluid choice isn't guided by cultures.

⭐ Key point: Review antibiotics at 48–72 hours, when culture results are usually available: stop, narrow, or continue.$x$, null),
(117, $x$Albumin is low in critical illness mainly because of:$x$, $x$Inflammation and capillary leak$x$, $x$✅ Correct answer: Inflammation and capillary leak
Albumin falls quickly in critical illness, mainly because of INFLAMMATION and CAPILLARY LEAK. Inflammation tells the liver to make less albumin (it is a "negative acute phase protein"), and leaky capillaries let albumin escape into the tissues. Dilution by IV fluids also lowers it. That is why albumin is a poor marker of nutrition in ICU.

❌ Why the other options are wrong:
• Overfeeding with enteral feeds — Overfeeding doesn't lower albumin.
• Excess dietary intake — Dietary excess doesn't lower albumin.
• Dehydration and diuretics — Dehydration actually RAISES albumin concentration.

⭐ Key point: Low albumin in ICU is a marker of illness severity, not just poor nutrition.$x$, null),
(118, $x$Raised serum lactate after cardiac arrest mainly reflects:$x$, $x$Tissue hypoperfusion and anaerobic metabolism$x$, $x$✅ Correct answer: Tissue hypoperfusion and anaerobic metabolism
During cardiac arrest, blood flow to the tissues stops or is very poor (even with good CPR). Without oxygen, cells use ANAEROBIC metabolism, which produces LACTATE. A high lactate after cardiac arrest shows how long and how severely the tissues lacked perfusion. If the lactate falls after return of circulation (lactate clearance), perfusion is improving.

❌ Why the other options are wrong:
• Hyperventilation by the team during CPR — Hyperventilation lowers CO₂, but it isn't the main cause of high lactate.
• Excess dietary lactate given in the enteral feed — Enteral feeds don't cause high lactate.
• Liver overproduction of glucose after adrenaline — Adrenaline can raise lactate a little, but the main cause is hypoperfusion.

⭐ Key point: Persistently high lactate after resuscitation suggests ongoing poor perfusion and a worse prognosis.$x$, null),
(119, $x$The modified Allen's test is positive (normal) when:$x$, $x$Colour returns within 5–15 seconds after ulnar release$x$, $x$✅ Correct answer: Colour returns within 5–15 seconds after ulnar release
The modified Allen test checks blood flow through the ULNAR artery to the hand before using the radial artery. Both arteries are pressed while the patient clenches the fist (the hand goes pale). Then the ulnar artery is released. If COLOUR returns within 5–15 SECONDS, the ulnar artery can supply the hand: a normal (positive) result. The radial artery can then be used.

❌ Why the other options are wrong:
• The hand stays pale for more than 30 seconds — Paleness lasting more than 30 seconds is ABNORMAL; don't use that radial artery.
• The patient feels pain in the fingers — Pain in the fingers isn't how the test is read.
• The radial pulse disappears on release — The radial pulse isn't released in this test, and its disappearance isn't the result.

⭐ Key point: An abnormal Allen test means the radial artery shouldn't be punctured. Choose another site.$x$, null),
(120, $x$Protein-calorie malnutrition in ICU leads to:$x$, $x$Poor healing, infection and weak breathing muscles$x$, $x$✅ Correct answer: Poor healing, infection and weak breathing muscles
Protein-calorie malnutrition in ICU leads to muscle breakdown (including the diaphragm and breathing muscles), WEAK IMMUNITY (more infections), POOR WOUND HEALING and pressure injuries, WEAKNESS of breathing muscles (difficult weaning), longer ICU stay, and higher death rates.

❌ Why the other options are wrong:
• Faster recovery from the critical illness — Malnutrition slows recovery.
• Better immunity against hospital infections — Malnutrition weakens immunity.
• Weight gain only, with no harmful effects — Malnutrition causes weight LOSS and harm.

⭐ Key point: Start enteral nutrition within 24–48 hours of ICU admission when possible, aiming for adequate calories and protein (1.2–2 g/kg/day).$x$, null),
(121, $x$In a tension pneumothorax on X-ray, the trachea deviates to the:$x$, $x$Opposite (contralateral) side$x$, $x$✅ Correct answer: Opposite (contralateral) side
In a tension pneumothorax, air keeps entering the pleural space and can't escape. Pressure builds up and PUSHES the mediastinum, heart and TRACHEA to the OPPOSITE (contralateral) side. This compresses the other lung and kinks the great veins, so blood can't return to the heart, causing shock.

❌ Why the other options are wrong:
• Same (ipsilateral) side — The trachea moves AWAY from, not towards, the affected side.
• Remains exactly midline — In tension pneumothorax the trachea shifts; it doesn't stay midline.
• Cannot be assessed on X-ray — Tracheal deviation CAN be seen on X-ray (but the diagnosis is clinical; don't wait for an X-ray).

⭐ Key point: Trachea pushed AWAY: tension pneumothorax, large effusion. Trachea pulled TOWARDS: lobar collapse, pneumonectomy.$x$, null),
(122, $x$Patient had head trauma and you suspect that he has intracranial haemorrhage, Which of following modalities you will choose?$x$, $x$CT$x$, $x$✅ Correct answer: CT
CT (computed tomography) of the head WITHOUT contrast is the first-choice imaging for suspected bleeding inside the skull after head trauma. It is FAST, widely available, shows fresh blood clearly (bright white), shows skull fractures, swelling and midline shift, and can be done in unstable patients.

❌ Why the other options are wrong:
• Conventional x-ray — A plain skull X-ray shows fractures but not bleeding inside the brain.
• MRI — MRI is slower, harder to do in unstable or ventilated patients, and less sensitive for very fresh blood and fractures.
• X-ray with contrast — Contrast X-ray isn't used for head trauma.

⭐ Key point: CT head is urgent with GCS below 13 (or below 15 after 2 hours), focal neurological signs, seizures, repeated vomiting, signs of skull base fracture, or anticoagulant use.$x$, null),
(123, $x$On a chest X-ray, the tip of a central venous catheter should lie in the:$x$, $x$Lower SVC, just above the right atrium$x$, $x$✅ Correct answer: Lower SVC, just above the right atrium
The tip of a central venous catheter (from the jugular or subclavian vein) should sit in the LOWER SUPERIOR VENA CAVA, just above the junction with the RIGHT ATRIUM (around the level of the carina on X-ray). Here, blood flow is high, which dilutes the drugs, and pressure readings are accurate.

❌ Why the other options are wrong:
• High in the internal jugular vein — High in the internal jugular vein is too short and the line may come out.
• Inside the right ventricle cavity — Inside the right ventricle risks arrhythmias and heart perforation.
• In the left subclavian vein — In the left subclavian vein is malpositioned and may cause thrombosis.

⭐ Key point: A tip in the right atrium may cause arrhythmias or, rarely, cardiac tamponade from perforation.$x$, null),
(124, $x$A nasogastric tube on chest X-ray is correctly placed when it:$x$, $x$Down the midline, below the diaphragm on the left$x$, $x$✅ Correct answer: Down the midline, below the diaphragm on the left
A correctly placed NG tube on chest X-ray goes straight DOWN the MIDLINE (following the oesophagus), passes the carina, crosses the DIAPHRAGM, and its tip is seen in the stomach BELOW the LEFT diaphragm.

❌ Why the other options are wrong:
• Coiled in the pharynx behind the tongue — Coiled in the pharynx means it hasn't gone down.
• Ending above the clavicle in the neck — Ending above the clavicle means it is too short.
• Following the line of the right main bronchus — Following the right main bronchus means it is in the LUNG, which is dangerous; remove it before any feed.

⭐ Key point: Feeding through a tube in the lung can kill. Always confirm position (pH 5.5 or below, or X-ray) before the first feed.$x$, null),
(125, $x$Air bronchograms on chest X-ray indicate:$x$, $x$Air-filled bronchi within consolidated lung$x$, $x$✅ Correct answer: Air-filled bronchi within consolidated lung
Normally, the airways (bronchi) contain air and are surrounded by air-filled lung, so they can't be seen on X-ray. When the alveoli around them fill with fluid, pus or blood (CONSOLIDATION), the white lung makes the AIR-FILLED BRONCHI stand out as dark branching lines. These are air bronchograms, seen in pneumonia, pulmonary oedema and ARDS.

❌ Why the other options are wrong:
• A pneumothorax with collapse of the lung — In pneumothorax, the lung is collapsed and there are no lung markings.
• A pleural effusion at the lung base — A pleural effusion is fluid outside the lung, without air bronchograms.
• Normal lung with clear, aerated air spaces — Normal lung doesn't show air bronchograms.

⭐ Key point: Air bronchograms = the lung tissue is filled (consolidated) but the airways are still open.$x$, null),
(126, $x$Bat-wing perihilar shadowing with Kerley B lines suggests:$x$, $x$Cardiogenic pulmonary oedema$x$, $x$✅ Correct answer: Cardiogenic pulmonary oedema
Cardiogenic pulmonary oedema (from left heart failure) shows on X-ray: "BAT-WING" (butterfly) shadowing around both hila, KERLEY B LINES (short horizontal lines at the lung edges from swollen lymphatics), UPPER LOBE VENOUS DIVERSION, cardiomegaly, and pleural effusions.

❌ Why the other options are wrong:
• Right lower lobe pneumonia — Right lower lobe pneumonia shows one area of consolidation.
• Tension pneumothorax — Tension pneumothorax shows a black hemithorax with mediastinal shift.
• Massive pulmonary embolism — PE often shows a nearly normal X-ray.

⭐ Key point: Treat cardiogenic pulmonary oedema: sit up, oxygen or CPAP, nitrates, diuretics.$x$, null),
(127, $x$A haemothorax on an erect chest X-ray shows:$x$, $x$A meniscus opacity blunting the costophrenic angle$x$, $x$✅ Correct answer: A meniscus opacity blunting the costophrenic angle
A haemothorax is blood in the pleural space. On an ERECT chest X-ray, the fluid settles at the bottom and appears as a WHITE (opaque) area that BLUNTS the costophrenic angle, with a curved upper edge rising at the sides (MENISCUS sign). If air is also present (haemopneumothorax), there is a straight air–fluid level instead.

❌ Why the other options are wrong:
• Hyperinflation with flat diaphragms — Hyperinflation with flat diaphragms suggests COPD or asthma.
• A visible lung edge with no markings beyond it — A visible lung edge with no markings beyond is a pneumothorax.
• Free air under the right hemidiaphragm — Free air under the diaphragm suggests a perforated bowel.

⭐ Key point: Massive haemothorax (more than 1500 mL) causes shock and needs a chest drain, blood transfusion and possibly thoracotomy.$x$, null),
(128, $x$A pneumothorax on chest X-ray shows:$x$, $x$A pleural line with no lung markings beyond$x$, $x$✅ Correct answer: A pleural line with no lung markings beyond
A pneumothorax shows a thin white PLEURAL LINE (the edge of the collapsed lung) with NO LUNG MARKINGS (black, no blood vessels) beyond it, towards the chest wall. On a supine X-ray, it may show as a deep sulcus sign (a deep, dark costophrenic angle).

❌ Why the other options are wrong:
• White-out of the whole of one lung — White-out of one lung suggests effusion, collapse or consolidation.
• Kerley B lines at both lung bases — Kerley B lines suggest pulmonary oedema.
• Air bronchograms within a lobe — Air bronchograms suggest consolidation.

⭐ Key point: In a tension pneumothorax, the mediastinum and trachea are also shifted to the opposite side. Treat clinically without waiting for an X-ray.$x$, null),
(129, $x$Dilated small bowel loops with multiple air-fluid levels suggest:$x$, $x$Small bowel obstruction$x$, $x$✅ Correct answer: Small bowel obstruction
In small bowel obstruction, gas and fluid build up above the blockage. The X-ray shows DILATED loops of small bowel (more than 3 cm) in the centre of the abdomen, with VALVULAE CONNIVENTES (folds crossing the whole width) and, on an erect or decubitus film, multiple AIR–FLUID LEVELS (flat lines where gas sits on fluid).

❌ Why the other options are wrong:
• A normal gas pattern — A normal gas pattern doesn't show dilated loops with multiple fluid levels.
• Gross ascites — Ascites gives a hazy, ground-glass abdomen.
• Perforation only — Perforation shows free air under the diaphragm.

⭐ Key point: Treat with "drip and suck" (IV fluids, NG tube on free drainage), and surgery if there are signs of strangulation.$x$, null),
(130, $x$Free air under the diaphragm on erect chest X-ray suggests:$x$, $x$Perforated hollow viscus$x$, $x$✅ Correct answer: Perforated hollow viscus
Free air under the diaphragm (pneumoperitoneum) on an ERECT chest X-ray appears as a dark crescent between the diaphragm and the liver (or stomach). It means air has escaped from a PERFORATED HOLLOW VISCUS: a perforated peptic ulcer, bowel or appendix. It is a surgical emergency.

❌ Why the other options are wrong:
• Right lower lobe pneumonia — Pneumonia appears in the lung, above the diaphragm.
• Amoebic liver abscess — A liver abscess appears as an area in the liver, not free air.
• Right-sided pleural effusion — Pleural effusion is fluid above the diaphragm.

⭐ Key point: Free air can also be normal for a few days after abdominal surgery (laparotomy or laparoscopy).$x$, null),
(131, $x$Before IV contrast, the nurse checks:$x$, $x$Renal function, allergy history, metformin use$x$, $x$✅ Correct answer: Renal function, allergy history, metformin use
Before giving IV contrast, check: KIDNEY FUNCTION (creatinine or eGFR), because contrast can damage the kidneys; ALLERGY history (previous contrast reactions, asthma, severe allergies); and METFORMIN use, because metformin with kidney injury can cause lactic acidosis, so it may be stopped. Make sure the patient is well hydrated.

❌ Why the other options are wrong:
• Hearing and the use of hearing aids — Hearing isn't relevant to contrast.
• Visual acuity and the use of spectacles — Visual acuity isn't relevant.
• Hair colour and the use of hair dye — Hair dye isn't relevant.

⭐ Key point: Have resuscitation equipment ready during contrast injection, in case of anaphylaxis.$x$, null),
(132, $x$An intravenous urogram (IVU/IVP) shows:$x$, $x$Kidneys, ureters and bladder after contrast$x$, $x$✅ Correct answer: Kidneys, ureters and bladder after contrast
An intravenous urogram (IVU or IVP) injects iodine contrast into a vein, then takes X-rays as the kidneys filter the contrast into the urine. It shows the KIDNEYS, URETERS and BLADDER, revealing stones, blockages, tumours and abnormal anatomy. It has mostly been replaced by CT urography.

❌ Why the other options are wrong:
• The lungs and the pleural spaces — The lungs and pleura are seen on a chest X-ray or CT chest.
• The brain ventricles and basal cisterns — The brain is seen on CT or MRI head.
• The heart chambers and the heart valves — The heart is seen on an echocardiogram.

⭐ Key point: Check kidney function and allergy history before an IVU, and keep the patient well hydrated.$x$, null),
(133, $x$A CVP line check X-ray is also used to exclude:$x$, $x$Pneumothorax after insertion$x$, $x$✅ Correct answer: Pneumothorax after insertion
After inserting a central line through the jugular or subclavian vein, a chest X-ray is taken to check the TIP POSITION and to EXCLUDE a PNEUMOTHORAX, because the needle can puncture the lung. Subclavian lines carry the highest pneumothorax risk.

❌ Why the other options are wrong:
• An acute ischaemic stroke — Stroke is diagnosed by CT or MRI of the brain.
• Acute appendicitis — Appendicitis is diagnosed clinically, by ultrasound or CT.
• A fractured femoral neck — A fractured femoral neck is seen on a hip X-ray.

⭐ Key point: Ultrasound-guided insertion reduces the risk of pneumothorax and arterial puncture.$x$, null),
(134, $x$Radiation protection for the ICU nurse during portable X-ray includes:$x$, $x$Standing 2 metres away or wearing a lead apron$x$, $x$✅ Correct answer: Standing 2 metres away or wearing a lead apron
X-ray radiation decreases with distance (the inverse square law: doubling the distance cuts the dose to a quarter). During a portable X-ray, the nurse should STAND at least 2 METRES away from the X-ray tube, or wear a LEAD APRON if they must stay close. Time, distance and shielding are the three principles of radiation protection.

❌ Why the other options are wrong:
• Taking no precautions for portable films — Precautions ARE needed for portable films.
• Standing directly behind the X-ray tube — Standing behind the tube exposes you to scattered radiation.
• Holding the patient still within the beam — Holding the patient in the beam exposes the nurse to direct radiation.

⭐ Key point: Pregnant staff should not be near the X-ray. Use positioning aids instead of holding the patient.$x$, null),
(135, $x$An endotracheal tube on X-ray should be:$x$, $x$3–5 cm above the carina$x$, $x$✅ Correct answer: 3–5 cm above the carina
The ETT tip should lie 3–5 cm ABOVE the CARINA (about at the level of T2–T4, or between the clavicle heads). This allows both lungs to be ventilated, while leaving room for the tube to move a little when the head moves.

❌ Why the other options are wrong:
• In the right bronchus — In the right bronchus, only the right lung is ventilated.
• Below the carina — Below the carina means in a main bronchus (usually the right).
• At the vocal cords — At the vocal cords, it is too high and may slip out.

⭐ Key point: Neck flexion pushes the tube DOWN; neck extension pulls it UP ("the tube follows the chin").$x$, null),
(136, $x$A 'white-out' of one hemithorax with mediastinal shift away suggests:$x$, $x$A large pleural effusion$x$, $x$✅ Correct answer: A large pleural effusion
A large pleural effusion fills one side of the chest with fluid, making it completely WHITE on X-ray. The large volume PUSHES the mediastinum and trachea AWAY to the opposite side.

❌ Why the other options are wrong:
• Tension pneumothorax — Tension pneumothorax shows a BLACK (not white) hemithorax with shift away.
• Lobar collapse — Lobar collapse PULLS the mediastinum TOWARDS the white side.
• Previous pneumonectomy — After pneumonectomy, the mediastinum shifts TOWARDS the operated side.

⭐ Key point: White-out: shift AWAY = effusion. Shift TOWARDS = collapse or pneumonectomy. No shift = consolidation (or effusion with collapse).$x$, null),
(137, $x$CT scanning is preferred over plain X-ray in head injury because it shows:$x$, $x$Intracranial bleeding and swelling$x$, $x$✅ Correct answer: Intracranial bleeding and swelling
A plain skull X-ray only shows bones. CT of the head shows the BRAIN: intracranial BLEEDING (extradural, subdural, subarachnoid, intracerebral), brain SWELLING (oedema), midline shift and hydrocephalus, as well as skull fractures. These findings decide whether surgery is needed.

❌ Why the other options are wrong:
• Only wounds of the scalp — CT shows much more than scalp wounds.
• Only disease of the sinuses — CT isn't mainly for sinus disease.
• Only fractures of the skull — CT shows more than skull fractures.

⭐ Key point: Non-contrast CT head is the first investigation in head injury and suspected stroke.$x$, null),
(138, $x$When transferring a ventilated patient for CT, the nurse should:$x$, $x$Portable monitoring, oxygen, suction and emergency drugs$x$, $x$✅ Correct answer: Portable monitoring, oxygen, suction and emergency drugs
Transferring a ventilated patient to CT is a high-risk time: tubes can be dislodged, monitors and pumps can fail, and the patient can deteriorate away from the ICU. Take PORTABLE MONITORING (ECG, SpO₂, BP, EtCO₂), a transport ventilator, OXYGEN (enough for the trip plus extra), SUCTION, a bag-valve-mask, and EMERGENCY DRUGS, with a trained nurse and doctor.

❌ Why the other options are wrong:
• Stop all infusions until the patient returns — Stopping infusions (such as vasopressors or sedation) can cause collapse or awareness.
• Disconnect all monitoring to make the transfer faster — Disconnecting monitoring hides deterioration.
• Send the patient without a nurse to save staff — Ventilated patients must be accompanied by trained staff.

⭐ Key point: Use a transfer checklist. Secure all tubes and lines, and check oxygen and battery levels before leaving.$x$, null),
(139, $x$Ultrasound is useful in ICU to:$x$, $x$Guide line insertion; assess fluid, lungs, heart$x$, $x$✅ Correct answer: Guide line insertion; assess fluid, lungs, heart
Point-of-care ULTRASOUND in ICU is versatile: it guides LINE INSERTION (central and arterial lines), assesses FLUID status (IVC size and collapse), the LUNGS (B-lines in oedema, effusions, pneumothorax), and the HEART (contraction, tamponade, RV size). It is safe (no radiation), fast and done at the bedside.

❌ Why the other options are wrong:
• Measure the ICP directly at the bedside — ICP isn't measured directly by ultrasound (though optic nerve sheath diameter can suggest raised ICP).
• Replace every CT scan in the ICU — It doesn't replace every CT.
• Diagnose all fractures in trauma patients — It doesn't diagnose all fractures.

⭐ Key point: Ultrasound-guided central line insertion reduces complications like pneumothorax and arterial puncture.$x$, null),
(140, $x$Pneumoperitoneum after laparoscopy usually:$x$, $x$Resolves within a few days$x$, $x$✅ Correct answer: Resolves within a few days
During laparoscopy, the abdomen is inflated with CO₂ gas. Small amounts can remain after surgery, showing as free air under the diaphragm on X-ray. This is EXPECTED and usually RESOLVES within a few days (CO₂ is absorbed quickly). The patient may have shoulder-tip pain from diaphragm irritation.

❌ Why the other options are wrong:
• Never occurs — It does occur commonly after laparoscopy.
• Always means perforation — It doesn't always mean perforation after recent surgery.
• Requires surgery — It doesn't usually need surgery.

⭐ Key point: Free air plus signs of peritonitis (fever, rigid abdomen, rising inflammatory markers) after surgery needs urgent review for a leak or perforation.$x$, null),
(141, $x$Which of the following macronutrients in parenteral nutrition may need to be increased in a patient who has large, nonhealing wounds?$x$, $x$Protein$x$, $x$✅ Correct answer: Protein
PROTEIN supplies the amino acids needed to build new tissue (collagen, skin, muscle) and support immunity. Large, non-healing wounds (pressure ulcers, burns, surgical wounds) lose protein through exudate and need more for repair. Increasing protein (often to 1.5–2.0 g/kg/day) supports wound healing.

❌ Why the other options are wrong:
• Trace elements — Trace elements (zinc, vitamin C) help healing, but protein is the macronutrient to increase.
• Lipids — Lipids provide energy but don't build tissue.
• Carbohydrates — Carbohydrates provide energy but don't supply the amino acids for repair.

⭐ Key point: Wound healing needs protein, calories, vitamin C, zinc and good perfusion.$x$, null),
(142, $x$A patient's enteral feed provides 60 g carbohydrate, 20 g protein, and 15 g fat per serving. Using standard Atwater factors, approximately how many total kilocalories does this serving provide?$x$, $x$455 kcal$x$, $x$✅ Correct answer: 455 kcal
Use the Atwater factors: carbohydrate 4 kcal per gram, protein 4 kcal per gram, fat 9 kcal per gram. Carbohydrate 60 g × 4 = 240 kcal. Protein 20 g × 4 = 80 kcal. Fat 15 g × 9 = 135 kcal. Total = 240 + 80 + 135 = 455 kcal.

❌ Why the other options are wrong:
• 395 kcal — 395 kcal comes from a calculation error (for example using 5 kcal/g for fat).
• 275 kcal — 275 kcal would leave out some of the nutrients.
• 605 kcal — 605 kcal comes from using 9 kcal/g for carbohydrate or protein.

⭐ Key point: Remember: carbohydrate 4, protein 4, fat 9, alcohol 7 kcal per gram.$x$, null),
(143, $x$Raised intracranial pressure above what value is a contraindication to physiotherapy?$x$, $x$>20mmHg$x$, $x$✅ Correct answer: >20mmHg
Chest physiotherapy (positioning, percussion, suction, coughing) can temporarily RAISE ICP. When ICP is already HIGH (above 20 mmHg, the treatment threshold), further rises could reduce brain perfusion and cause harm. Physiotherapy is therefore avoided or modified when ICP is above 20 mmHg.

❌ Why the other options are wrong:
• >5mmHg — 5 mmHg is normal ICP.
• >50mmHg — 50 mmHg is dangerously high; physiotherapy would have stopped long before.
• ICP is not a consideration — ICP IS an important consideration.

⭐ Key point: Cluster care sensibly in head injury, and give sedation before suction or physiotherapy if ICP rises easily.$x$, null),
(144, $x$Postural drainage is contraindicated in a patient with raised ICP above:$x$, $x$20mmHg$x$, $x$✅ Correct answer: 20mmHg
Postural drainage uses gravity, sometimes with HEAD-DOWN positions, to drain secretions. Head-down positions RAISE ICP by reducing venous drainage from the brain. When ICP is already above 20 mmHg, these positions are dangerous and contraindicated.

❌ Why the other options are wrong:
• ICP is not relevant to PD — ICP IS relevant to postural drainage.
• 5mmHg — 5 mmHg is normal; postural drainage is fine.
• 100mmHg — 100 mmHg is extremely high; the threshold is much lower.

⭐ Key point: In head-injured patients, keep the head of the bed up at 30° and the neck straight.$x$, null),
(145, $x$Percussion during airway clearance techniques is performed using:$x$, $x$Cupped hands$x$, $x$✅ Correct answer: Cupped hands
Percussion uses CUPPED HANDS (fingers and thumb together, palm hollowed) to clap rhythmically over the chest wall. The cupped shape traps a cushion of air, which creates a vibration that loosens secretions without hurting the patient. It makes a hollow "clopping" sound.

❌ Why the other options are wrong:
• Flat, open-palm slapping — Flat, open palms slap the skin and cause pain and redness.
• Mechanical hammers only — Mechanical percussors exist, but "hammers only" is incorrect.
• A closed fist — A closed fist would hurt and could injure the patient.

⭐ Key point: Percuss over a thin layer of clothing or a towel, avoid bony areas (spine, sternum) and the kidneys, and stop if the patient becomes unstable.$x$, null),
(146, $x$Enteral feeding is preferred to parenteral because it:$x$, $x$It maintains gut integrity with fewer infections$x$, $x$✅ Correct answer: It maintains gut integrity with fewer infections
Enteral nutrition (feeding into the gut) is preferred because it MAINTAINS the gut lining (preventing atrophy and bacterial translocation), supports gut immunity, and has FEWER INFECTIONS than parenteral nutrition (no central line, fewer metabolic complications). It is also cheaper.

❌ Why the other options are wrong:
• It needs no monitoring once it has started — Enteral feeding still needs monitoring (tolerance, glucose, tube position).
• It is always more accurate in calorie delivery — It isn't always more accurate in delivering calories; interruptions are common.
• It avoids every risk of aspiration completely — It doesn't remove aspiration risk; head elevation and tube checks are still needed.

⭐ Key point: "If the gut works, use it." Use TPN only when the gut can't be used or enteral feeding isn't enough.$x$, null),
(147, $x$Before giving an NG feed, the nurse confirms tube position by:$x$, $x$Aspirate pH 5.5 or below, or X-ray$x$, $x$✅ Correct answer: Aspirate pH 5.5 or below, or X-ray
Before giving any NG feed, confirm the tube is in the stomach. The FIRST-line test is to aspirate and test the pH: pH 5.5 OR BELOW means stomach acid (safe to feed). If no aspirate or the pH is above 5.5, get a CHEST X-RAY, interpreted by a trained person.

❌ Why the other options are wrong:
• Asking the patient if it feels right — Asking the patient isn't reliable; a tube in the lung may not cause symptoms.
• Listening for injected air (whoosh test) — The "whoosh" test (listening for air) is UNRELIABLE and must not be used.
• Placing the tube end in a cup of water — Bubbles in a cup of water aren't reliable and risk aspiration.

⭐ Key point: Mark the tube's length at the nostril and recheck its position before each feed and medication.$x$, null),
(148, $x$To reduce aspiration during enteral feeding, the patient should be:$x$, $x$Head elevated 30–45 degrees$x$, $x$✅ Correct answer: Head elevated 30–45 degrees
Elevating the HEAD of the bed 30–45° during enteral feeding uses gravity to keep stomach contents in the stomach, reducing reflux and ASPIRATION into the lungs. Keep the head up during feeding and for 30–60 minutes after bolus feeds.

❌ Why the other options are wrong:
• Flat on the back — Lying flat increases reflux and aspiration.
• Head-down tilt — A head-down tilt greatly increases aspiration.
• Prone without support — Prone without support isn't recommended during feeding (it needs special care if prone).

⭐ Key point: Also check feed tolerance (abdominal distension, vomiting), tube position, and gastric residual volume (as per policy).$x$, null),
(149, $x$A patient on TPN develops fever and rigors. The nurse suspects:$x$, $x$Catheter-related bloodstream infection$x$, $x$✅ Correct answer: Catheter-related bloodstream infection
Fever and RIGORS in a patient on TPN suggest a CATHETER-RELATED BLOODSTREAM INFECTION (CRBSI). TPN is rich in glucose and fat, which helps bacteria and fungi grow in the line. Take blood cultures from the central line AND a peripheral vein, inform the doctor, and consider removing the line.

❌ Why the other options are wrong:
• A normal reaction to the lipids — Lipid reactions are rare and usually occur early.
• Dehydration from the glucose load — Dehydration isn't caused by TPN glucose in this way, and doesn't cause rigors.
• Refeeding syndrome from the TPN — Refeeding syndrome causes low phosphate, potassium and magnesium, not fever and rigors.

⭐ Key point: Prevent CRBSI with TPN: a dedicated lumen, strict asepsis, scrub the hub, and change the giving set every 24 hours.$x$, null),
(150, $x$Hyperglycaemia during TPN is managed by:$x$, $x$Insulin and adjusting the glucose content$x$, $x$✅ Correct answer: Insulin and adjusting the glucose content
TPN contains a lot of glucose, and critically ill patients often have insulin resistance. High glucose increases infections and complications. Manage it with INSULIN (usually an infusion or a sliding scale) and, if needed, ADJUST the glucose content of the TPN. Target 6–10 mmol/L.

❌ Why the other options are wrong:
• Ignoring glucose levels while on TPN — Ignoring high glucose leads to infections and osmotic diuresis.
• Giving extra dextrose to the TPN — Adding more dextrose would worsen hyperglycaemia.
• Stopping all nutrition immediately — Stopping all nutrition causes malnutrition and rebound hypoglycaemia.

⭐ Key point: When TPN is stopped, insulin must be adjusted too, to prevent hypoglycaemia.$x$, null),
(151, $x$A burn patient's protein requirement is:$x$, $x$Increased, about 1.5–2 g/kg/day$x$, $x$✅ Correct answer: Increased, about 1.5–2 g/kg/day
Major burns cause a HYPERMETABOLIC state: energy and protein use can almost double. Protein is lost through the burn wound exudate and used for tissue repair and immunity. Protein needs rise to about 1.5–2.0 g/kg/day (sometimes more in large burns), with early enteral feeding.

❌ Why the other options are wrong:
• Normal at 0.8 g/kg/day — 0.8 g/kg/day is a normal healthy adult's need.
• Reduced to 0.5 g/kg/day — 0.5 g/kg/day is too low and causes muscle wasting.
• Nil until healing begins — Nil protein would stop healing completely.

⭐ Key point: Start enteral feeding early (within 24 hours) in major burns. It reduces the stress response and infections.$x$, null),
(152, $x$Fat provides how many kcal per gram?$x$, $x$9$x$, $x$✅ Correct answer: 9
FAT provides 9 KILOCALORIES PER GRAM, more than double carbohydrate or protein (4 kcal/g each). That's why fats (lipids) are an energy-dense part of nutrition and are used in TPN to provide calories in a small volume.

❌ Why the other options are wrong:
• 2 — 2 kcal/g isn't correct for any macronutrient.
• 7 — 7 kcal/g is the value for alcohol.
• 4 — 4 kcal/g is the value for carbohydrate and protein.

⭐ Key point: Propofol is given in a 10% lipid emulsion, which provides about 1.1 kcal/mL. Count it in the patient's calorie intake.$x$, null),
(153, $x$In COPD patients, excessive carbohydrate feeding can:$x$, $x$Raise CO₂ production and worsen respiratory failure$x$, $x$✅ Correct answer: Raise CO₂ production and worsen respiratory failure
When the body burns carbohydrate, it makes more CO₂ than when it burns fat (a higher respiratory quotient). Excess carbohydrate (overfeeding) INCREASES CO₂ production. In COPD patients who already struggle to breathe out CO₂, this can raise the PaCO₂, worsen respiratory failure, and make weaning harder.

❌ Why the other options are wrong:
• Lower the PaCO₂ by improving ventilation — Extra carbohydrate RAISES PaCO₂, not lowers it.
• Improve weaning by giving energy to the muscles — It can make weaning harder.
• Reduce the oxygen consumption of the body — It increases oxygen consumption and CO₂ production.

⭐ Key point: Avoid overfeeding in COPD and ventilated patients. A balanced feed with some fat helps.$x$, null),
(154, $x$Chest physiotherapy aims to:$x$, $x$Clear secretions, re-expand lungs, aid ventilation$x$, $x$✅ Correct answer: Clear secretions, re-expand lungs, aid ventilation
Chest physiotherapy aims to CLEAR SECRETIONS (so they don't block airways or cause infection), RE-EXPAND collapsed areas of lung (atelectasis), and improve VENTILATION and gas exchange. Techniques include positioning, postural drainage, percussion, vibration, deep breathing exercises, incentive spirometry and suction.

❌ Why the other options are wrong:
• Replace the need for any suctioning — It doesn't replace suction; the two often work together.
• Reduce the cardiac output and heart rate — It doesn't aim to reduce cardiac output.
• Increase sedation and reduce agitation — It doesn't increase sedation.

⭐ Key point: Monitor SpO₂, heart rate and BP during physiotherapy, and stop if the patient becomes unstable.$x$, null),
(155, $x$Suctioning should be limited to about:$x$, $x$10–15 seconds, with pre-oxygenation$x$, $x$✅ Correct answer: 10–15 seconds, with pre-oxygenation
Each suction pass should last only 10–15 SECONDS. Suction removes oxygen along with secretions, so long passes cause HYPOXIA, arrhythmias, bradycardia (vagal stimulation), raised ICP and lung collapse. PRE-OXYGENATE with 100% oxygen for 30–60 seconds before suctioning, and allow recovery between passes.

❌ Why the other options are wrong:
• 60 seconds or more each time — 60 seconds or more is far too long.
• 2 minutes for every pass — 2 minutes is dangerous.
• As long as secretions appear — Suctioning "as long as secretions appear" causes serious hypoxia.

⭐ Key point: Apply suction only while withdrawing the catheter, never while inserting it.$x$, null),
(156, $x$Suction pressure for adults is usually:$x$, $x$100–150 mmHg$x$, $x$✅ Correct answer: 100–150 mmHg
For adults, suction pressure is usually 100–150 mmHg (about 13–20 kPa). This is strong enough to remove secretions without damaging the delicate airway lining. Higher pressures cause mucosal trauma, bleeding and lung collapse.

❌ Why the other options are wrong:
• 300–400 mmHg — 300–400 mmHg is far too high and causes damage.
• 500 mmHg — 500 mmHg is dangerously high.
• 20–30 mmHg — 20–30 mmHg is too weak to clear secretions.

⭐ Key point: Children use about 80–100 mmHg; neonates use 60–80 mmHg.$x$, null),
(157, $x$Early mobilisation in ICU includes:$x$, $x$Sitting out, standing and walking when stable$x$, $x$✅ Correct answer: Sitting out, standing and walking when stable
Early mobilisation means starting movement as soon as the patient is stable, even while ventilated: passive exercises, then active exercises, SITTING on the edge of the bed, SITTING OUT in a chair, STANDING and WALKING. It reduces ICU-acquired weakness, delirium, ventilator days and ICU stay.

❌ Why the other options are wrong:
• Deep sedation to reduce oxygen use — Deep sedation prevents mobilisation and increases delirium.
• Bed rest for all ventilated patients — Bed rest for all ventilated patients causes weakness and complications.
• Avoiding physiotherapy until extubation — Waiting until extubation delays recovery.

⭐ Key point: Check safety before mobilising: stable HR and BP, SpO₂ above 90%, FiO₂ 0.6 or less, PEEP 10 or less, and secured lines and tubes.$x$, null),
(158, $x$A contraindication to chest percussion is:$x$, $x$Rib fractures or severe osteoporosis$x$, $x$✅ Correct answer: Rib fractures or severe osteoporosis
Chest percussion involves repeated impacts on the chest wall. With RIB FRACTURES, it causes severe pain and can move the broken ends, injuring the lung. With severe OSTEOPOROSIS, it can CAUSE fractures. These are contraindications.

❌ Why the other options are wrong:
• Sputum retention in the lower lobes — Sputum retention is an INDICATION.
• Pneumonia with purulent secretions — Pneumonia with secretions is an INDICATION.
• Atelectasis of the left lower lobe — Atelectasis is an INDICATION.

⭐ Key point: Other contraindications: low platelets, haemoptysis, untreated pneumothorax, unstable haemodynamics, raised ICP and chest wall burns or wounds.$x$, null),
(159, $x$Clinical outcome measures in ICU physiotherapy include:$x$, $x$Muscle strength, mobility level, weaning time$x$, $x$✅ Correct answer: Muscle strength, mobility level, weaning time
ICU physiotherapy outcomes measure how the patient is recovering physically: MUSCLE STRENGTH (the MRC sum score), MOBILITY level (the ICU Mobility Scale: from lying in bed to walking), WEANING time from the ventilator, and length of stay. These show whether rehabilitation is working.

❌ Why the other options are wrong:
• Hearing level and balance assessment — Hearing and balance aren't routine ICU physiotherapy outcomes.
• Hair growth and the condition of the nails — Hair and nails aren't relevant.
• Visual acuity and colour vision testing — Vision isn't a physiotherapy outcome.

⭐ Key point: An MRC sum score below 48/60 means ICU-acquired weakness.$x$, null),
(160, $x$Manual hyperoxygenation before suction is used to:$x$, $x$Prevent hypoxaemia during suction$x$, $x$✅ Correct answer: Prevent hypoxaemia during suction
Suctioning removes oxygen-rich air from the lungs along with secretions, causing a drop in oxygen levels. Giving 100% oxygen (by the ventilator or a bag) for 30–60 SECONDS before suction raises the oxygen reserve, PREVENTING HYPOXAEMIA during suction. It is also given after suction.

❌ Why the other options are wrong:
• Reduce the cardiac output and heart rate — Hyperoxygenation doesn't aim to reduce cardiac output.
• Increase the CO₂ level in the blood — It doesn't increase CO₂.
• Help to remove the endotracheal tube — It doesn't help remove the ETT.

⭐ Key point: Use the ventilator's oxygen boost function, or closed (in-line) suction, which keeps PEEP and oxygen on.$x$, null),
(161, $x$The first step in planning a new ICU service is:$x$, $x$Needs assessment of the population$x$, $x$✅ Correct answer: Needs assessment of the population
Before opening a new ICU, the first step is a NEEDS ASSESSMENT: How many critically ill patients does the population and hospital produce? What types of illness and surgery? What services are already available? This decides the number of BEDS, STAFF, EQUIPMENT and BUDGET needed.

❌ Why the other options are wrong:
• Recruiting doctors from abroad — Recruiting doctors abroad comes later and depends on the needs assessment.
• Painting and decorating the unit — Painting the unit comes much later.
• Buying ventilators and monitors first — Buying equipment first, without knowing needs, wastes money.

⭐ Key point: Planning steps: assess needs, set objectives, plan resources (beds, staff, equipment, budget), implement, and evaluate.$x$, null),
(162, $x$ICU bed numbers in a general hospital are often planned at about:$x$, $x$1–4% of total hospital beds$x$, $x$✅ Correct answer: 1–4% of total hospital beds
ICU beds are usually planned at about 1–4% of total hospital beds in a general hospital. Larger teaching or tertiary hospitals with major surgery, trauma and specialist services need a HIGHER proportion (sometimes 5–10%).

❌ Why the other options are wrong:
• 50% of total hospital beds — 50% would mean half the hospital is ICU, which is unrealistic.
• Less than 0.01% of beds — Less than 0.01% would be almost no ICU beds.
• 25% of total hospital beds — 25% is far too high for a general hospital.

⭐ Key point: Planning must also consider high dependency (Level 2) beds and the referral population.$x$, null),
(163, $x$A clear nursing hierarchy in ICU helps by:$x$, $x$Defining responsibility and communication$x$, $x$✅ Correct answer: Defining responsibility and communication
A clear nursing hierarchy (unit manager, charge nurse, staff nurses, juniors) DEFINES who is RESPONSIBLE for what and who reports to whom. This makes COMMUNICATION clear, avoids confusion in emergencies, ensures accountability, and helps supervision and decision-making.

❌ Why the other options are wrong:
• Removing accountability from leaders — Hierarchy CREATES accountability; it doesn't remove it.
• Preventing teamwork on the unit — Hierarchy supports teamwork when roles are clear.
• Increasing confusion among staff — Clear structure reduces confusion.

⭐ Key point: Good hierarchy works best combined with open communication: juniors must feel able to speak up about safety.$x$, null),
(164, $x$The charge nurse on an ICU shift is responsible for:$x$, $x$Allocating patients, coordinating care, solving problems$x$, $x$✅ Correct answer: Allocating patients, coordinating care, solving problems
The charge nurse (shift leader) manages the unit during the shift: ALLOCATES patients to nurses (matching skills to patient needs), COORDINATES care (admissions, discharges, transfers), SOLVES problems (staffing, equipment, conflicts), supports junior staff, and communicates with doctors, managers and families.

❌ Why the other options are wrong:
• Prescribing drugs and fluids for all the patients — Nurses don't prescribe drugs and fluids (except trained nurse prescribers in some places).
• Performing emergency surgery at the bedside — Nurses don't perform emergency surgery.
• Doing all the patient care alone without any help — The charge nurse leads the team; they don't work alone.

⭐ Key point: Good shift leadership includes a safety briefing ("huddle") at the start of each shift.$x$, null),
(165, $x$Supervision of ICU students and juniors aims to:$x$, $x$Ensure safe care and support learning$x$, $x$✅ Correct answer: Ensure safe care and support learning
Supervision of students and junior nurses aims to ENSURE SAFE patient care (by checking their work and correcting errors) and to SUPPORT their LEARNING (teaching, feedback, building confidence and competence). Preceptors and mentors guide them through the ICU's complex care.

❌ Why the other options are wrong:
• Replace formal teaching sessions — Supervision complements formal teaching; it doesn't replace it.
• Increase the workload of the juniors — Supervision isn't meant to increase workload.
• Punish errors made by students — Supervision should support learning, not punish.

⭐ Key point: Give constructive feedback: what went well, what to improve, and how.$x$, null),
(166, $x$Effective handover in ICU uses:$x$, $x$A structured tool such as SBAR, at the bedside$x$, $x$✅ Correct answer: A structured tool such as SBAR, at the bedside
Effective handover uses a STRUCTURED tool such as SBAR (Situation, Background, Assessment, Recommendation) so nothing important is missed. In ICU, handover is best done at the BEDSIDE, so the incoming nurse can see the patient and check lines, pumps, drains, alarms and the ventilator together with the outgoing nurse.

❌ Why the other options are wrong:
• No handover, as notes are enough — Notes alone miss important details and plans.
• An unstructured chat in the corridor — An unstructured corridor chat misses information and breaches confidentiality.
• Notes left on the bed for the next nurse — Notes left on the bed are unsafe and unprofessional.

⭐ Key point: Poor handover is a major cause of errors. Use a checklist and allow time for questions.$x$, null),
(167, $x$Leadership style that involves staff in decisions is:$x$, $x$Democratic (participative)$x$, $x$✅ Correct answer: Democratic (participative)
In the DEMOCRATIC (participative) leadership style, the leader involves STAFF in DECISIONS: asking for ideas, discussing options, and reaching agreement together. Staff feel valued and committed, which improves morale and teamwork. However, decisions can be slow, so it is less suitable in emergencies.

❌ Why the other options are wrong:
• Bureaucratic (rule-bound) — Bureaucratic leadership follows strict rules and procedures.
• Laissez-faire (hands-off) — Laissez-faire leadership gives staff freedom with little direction.
• Autocratic (directive) — Autocratic leadership makes decisions alone, without involving staff.

⭐ Key point: Use democratic leadership for planning and change; switch to autocratic in emergencies.$x$, null),
(168, $x$Laissez-faire leadership in ICU may lead to:$x$, $x$Poor coordination and unsafe care$x$, $x$✅ Correct answer: Poor coordination and unsafe care
Laissez-faire ("let it be") leadership gives staff almost total freedom with little direction or supervision. In a complex, high-risk unit like ICU, this can lead to POOR COORDINATION, unclear roles, missed tasks, and UNSAFE CARE, unless the team is highly skilled and motivated.

❌ Why the other options are wrong:
• Quicker decisions in emergencies — It doesn't speed up decisions in emergencies; there may be no decision at all.
• Clear accountability — Accountability becomes unclear.
• Better teamwork always — Teamwork often suffers without direction.

⭐ Key point: Laissez-faire can work with expert, self-motivated teams on long-term projects, but not in emergencies.$x$, null),
(169, $x$Authority in management means:$x$, $x$The legitimate right to give instructions$x$, $x$✅ Correct answer: The legitimate right to give instructions
AUTHORITY is the LEGITIMATE (official) RIGHT to give instructions, make decisions and use resources, given by a person's POSITION in the organisation (such as unit manager or charge nurse). It always comes with responsibility (duties) and accountability (answering for results).

❌ Why the other options are wrong:
• Seniority in age within the team — Age doesn't give authority.
• Personal popularity among the staff — Popularity gives influence but not formal authority.
• The number of qualifications held — Qualifications support competence but don't give authority by themselves.

⭐ Key point: Authority = the right to act. Responsibility = the duty to act. Accountability = answering for the results.$x$, null),
(170, $x$A policy on ICU admission and discharge criteria improves:$x$, $x$Fair and consistent use of beds$x$, $x$✅ Correct answer: Fair and consistent use of beds
Clear ICU admission and discharge criteria help the team decide fairly and CONSISTENTLY who needs an ICU bed (and who can be discharged), especially when beds are limited. This ensures the sickest patients who can benefit get ICU care, reduces conflict, and supports triage decisions.

❌ Why the other options are wrong:
• Shorter waiting times only — Waiting times may improve, but that isn't the main purpose.
• Better catering services — Catering isn't affected by admission policies.
• Longer visiting hours — Visiting hours have their own policy.

⭐ Key point: Criteria are based on need for organ support, reversibility of illness, and the likely benefit from ICU care.$x$, null),
(171, $x$Equipment failure during use in ICU should be:$x$, $x$Reported, labelled out of use, sent for repair$x$, $x$✅ Correct answer: Reported, labelled out of use, sent for repair
If equipment fails during use, first make the PATIENT safe (switch to backup equipment). Then REPORT the fault (incident form), LABEL the equipment "Out of use – faulty" so no one else uses it, and send it to biomedical engineering for REPAIR. This prevents harm to other patients.

❌ Why the other options are wrong:
• Ignored until it breaks down completely — Ignoring faults risks serious harm.
• Used carefully anyway until replaced — Using faulty equipment is unsafe.
• Hidden in a store to avoid blame — Hiding faults is dishonest and dangerous.

⭐ Key point: Report equipment incidents, even near misses, so patterns can be found and fixed.$x$, null),
(172, $x$A drug error audit in ICU is used to:$x$, $x$Identify patterns and improve systems$x$, $x$✅ Correct answer: Identify patterns and improve systems
A drug error audit reviews medication errors and near misses to IDENTIFY PATTERNS (common drugs, times, steps where errors happen) and IMPROVE SYSTEMS: better labelling, double-checking, smart pumps, training, safer storage. The aim is learning, not blame.

❌ Why the other options are wrong:
• Identify and punish the nurses — Punishing individuals discourages reporting and doesn't fix system problems.
• Increase the number of errors — The aim is to reduce errors, not increase them.
• Reduce the reporting of errors — The aim is to ENCOURAGE reporting.

⭐ Key point: A "just culture" encourages honest reporting while still addressing reckless behaviour.$x$, null),
(173, $x$Communication with relatives in ICU should be:$x$, $x$Regular, honest and coordinated by the team$x$, $x$✅ Correct answer: Regular, honest and coordinated by the team
Communication with relatives should be REGULAR (at least daily updates), HONEST (truthful about the condition and prognosis, in plain language) and COORDINATED by the team (consistent messages from doctors and nurses, with family meetings for big decisions). This builds trust and reduces anxiety.

❌ Why the other options are wrong:
• Given in technical jargon to be accurate — Technical jargon confuses relatives.
• Done only by porters and cleaners — Porters and cleaners shouldn't give clinical information.
• Avoided to save time for clinical care — Avoiding communication increases anxiety and conflict.

⭐ Key point: Document family meetings: who was present, what was discussed, and what was decided.$x$, null),
(174, $x$In-service training in ICU should be:$x$, $x$Planned around identified learning needs$x$, $x$✅ Correct answer: Planned around identified learning needs
In-service training (training at work) should be PLANNED around identified LEARNING NEEDS: new equipment, new policies, audit results, incident trends and staff appraisal. Regular, relevant training maintains COMPETENCE and safe practice.

❌ Why the other options are wrong:
• Random and offered only occasionally — Random, occasional training doesn't build consistent skills.
• Given only to the medical doctors — Nurses need training too, not only doctors.
• Given only after a serious error — Training shouldn't only follow errors; it should prevent them.

⭐ Key point: Keep training records and use competency checklists for key ICU skills.$x$, null),
(175, $x$The ICU unit manager reports mainly to:$x$, $x$The nursing service and hospital management$x$, $x$✅ Correct answer: The nursing service and hospital management
The ICU unit manager (nurse manager) reports mainly to the NURSING SERVICE (Director of Nursing Services) and HOSPITAL MANAGEMENT. Reports cover unit activity (admissions, occupancy), QUALITY (infection rates, incidents), STAFFING and RESOURCES (budget, equipment needs).

❌ Why the other options are wrong:
• The catering department head — Catering is a separate department.
• The hospital pharmacist only — The pharmacist is a colleague, not the manager's line manager.
• The patients' relatives and visitors — Relatives aren't the reporting line.

⭐ Key point: Clear reporting lines support accountability and help the manager advocate for ICU resources.$x$, null),
(176, $x$Staff health and safety in ICU includes:$x$, $x$Vaccination, PPE, manual handling training, support$x$, $x$✅ Correct answer: Vaccination, PPE, manual handling training, support
ICU staff face hazards: infections (blood-borne viruses, TB), back injuries from lifting, stress and burnout, chemicals, and radiation. Health and safety measures include VACCINATION (hepatitis B), PPE, safe sharps use, MANUAL HANDLING training and equipment (hoists, slide sheets), and SUPPORT (counselling, debriefing, reasonable hours).

❌ Why the other options are wrong:
• No precautions, as ICU staff are low risk — ICU staff are at HIGH risk, not low risk.
• Ignoring needle-stick injuries if they are small — All needlestick injuries must be reported, even small ones.
• Unlimited overtime to cover shortages — Unlimited overtime causes fatigue and errors.

⭐ Key point: Check your own hepatitis B antibody level after vaccination.$x$, null),
(177, $x$A needle-stick injury in ICU should be:$x$, $x$Washed, reported at once, assessed for prophylaxis$x$, $x$✅ Correct answer: Washed, reported at once, assessed for prophylaxis
After a needlestick injury: encourage the wound to BLEED gently, WASH it with soap and running water (don't scrub or suck), REPORT it immediately to the supervisor and occupational health, and get a RISK ASSESSMENT for post-exposure prophylaxis (HIV PEP within 1–2 hours, hepatitis B vaccine or immunoglobulin), plus baseline blood tests.

❌ Why the other options are wrong:
• Sucked to remove the blood from the wound — Sucking the wound is not recommended.
• Reported at the end of the month to the manager — Reporting at the end of the month delays PEP, which works best within hours.
• Ignored if the injury is small and not bleeding — All needlesticks must be reported, regardless of size.

⭐ Key point: HIV PEP should start as soon as possible, ideally within 1–2 hours, and no later than 72 hours.$x$, null),
(178, $x$An ICU policy manual should be:$x$, $x$Up to date, accessible and known to staff$x$, $x$✅ Correct answer: Up to date, accessible and known to staff
An ICU policy manual guides safe, consistent practice. It must be UP TO DATE (reviewed regularly, usually every 2–3 years or when evidence changes), ACCESSIBLE (on the unit and online) and KNOWN to all staff (through induction and training).

❌ Why the other options are wrong:
• Written once and never reviewed again — Policies must be reviewed regularly.
• Available only to managers and seniors — All staff must have access, not only managers.
• Kept locked in the manager's office — Locking it away means staff can't use it.

⭐ Key point: Policies are only useful if staff know them and follow them. Include them in orientation.$x$, null),
(179, $x$Teamwork in ICU is improved by:$x$, $x$Clear roles, communication training, respect$x$, $x$✅ Correct answer: Clear roles, communication training, respect
Good ICU teamwork depends on CLEAR ROLES (everyone knows their job), COMMUNICATION training (closed-loop communication, speaking up about safety), and mutual RESPECT. Crew resource management principles from aviation (briefings, situational awareness, debriefs) improve safety.

❌ Why the other options are wrong:
• Competition between staff members — Competition between staff harms teamwork.
• Strict silence during every shift — Strict silence stops the communication needed for safety.
• Avoiding team meetings and briefings — Team meetings and briefings IMPROVE teamwork.

⭐ Key point: Simulation training for emergencies (arrests, airway emergencies) builds team skills.$x$, null),
(180, $x$The role of the nurse in ICU unit organisation includes:$x$, $x$Planning care, managing resources, keeping standards$x$, $x$✅ Correct answer: Planning care, managing resources, keeping standards
ICU nurses play a central role in unit organisation: PLANNING patient care, MANAGING RESOURCES (equipment, drugs, supplies, staff time), and MAINTAINING STANDARDS (policies, infection control, quality). They coordinate the multidisciplinary team and are central to ICU safety.

❌ Why the other options are wrong:
• Only completing the nursing documentation — Documentation is only one part of the nurse's role.
• Only following orders from doctors without question — Nurses use professional judgement and question unsafe orders.
• Only cleaning and tidying the unit each shift — Cleaning is done by support staff, though nurses oversee standards.

⭐ Key point: ICU nurses are the constant presence at the bedside, so they are key to spotting problems early.$x$, null),
(181, $x$When the neonates heart rate falls or fails to respond after five inflation breath next action is$x$, $x$Commence chest compression$x$, $x$✅ Correct answer: Commence chest compression
In newborn resuscitation, the first 5 INFLATION BREATHS aim to fill the fluid-filled lungs with air. If the heart rate doesn't rise, first make sure the breaths are moving the chest (reposition, jaw thrust, suction). If the heart rate stays below 60 despite effective ventilation (chest moving), START CHEST COMPRESSIONS at a ratio of 3:1 with ventilation.

❌ Why the other options are wrong:
• Insert umbilical catheter — An umbilical catheter is placed later if drugs are needed.
• Insert endotracheal tube — Intubation may help but isn't the immediate next step for a low heart rate.
• Recheck airway — Rechecking the airway is important, but the key answer is compressions if the HR stays low despite good ventilation.

⭐ Key point: Newborn resuscitation: dry and warm, airway, 5 inflation breaths, ventilation breaths, compressions (HR below 60), then drugs.$x$, null),
(182, $x$Blue colour, Moderate tone, Inadequate breath and Slow heart rate in a neonate should be followed by which action$x$, $x$Commence active resuscitation$x$, $x$✅ Correct answer: Commence active resuscitation
A newborn who is BLUE, has only MODERATE (reduced) tone, INADEQUATE breathing and a SLOW heart rate is not coping after birth and needs ACTIVE RESUSCITATION: open the airway, give inflation breaths with a bag-mask, and reassess the heart rate. Delay can cause hypoxic brain injury or death.

❌ Why the other options are wrong:
• Wrap baby and handover to mother — Wrapping the baby and handing over ignores a baby in trouble.
• Commence breastfeeding — Breastfeeding is for a well baby; this baby needs help breathing.
• Keep baby in the cot — Leaving the baby in the cot could be fatal.

⭐ Key point: Assess every newborn quickly: colour, tone, breathing, heart rate. Most babies who need help need only breaths.$x$, null),
(183, $x$One of the following neonates does not need resuscitation$x$, $x$Baby with heart rate of 100bpm$x$, $x$✅ Correct answer: Baby with heart rate of 100bpm
A newborn heart rate of 100 bpm or more (normal 110–160) shows the baby is coping. Resuscitation is guided by heart rate and breathing: a heart rate below 100 suggests the need for ventilation, and below 60 needs compressions. A baby with a heart rate of 100 and good breathing doesn't need resuscitation.

❌ Why the other options are wrong:
• Baby whose mother is on sedatives — A baby whose mother had sedatives may be born sleepy, with depressed breathing, and may need help.
• Baby with hypothermia — A hypothermic baby is at risk and needs warming and support.
• Baby with congenital heart disease — A baby with congenital heart disease may need resuscitation or special care.

⭐ Key point: Heart rate is the most important sign of whether resuscitation is working.$x$, null),
(184, $x$The APGAR score is assessed at:$x$, $x$1 and 5 minutes after birth$x$, $x$✅ Correct answer: 1 and 5 minutes after birth
The APGAR score is done at 1 MINUTE and 5 MINUTES after birth (and every 5 minutes after if the score is low). It scores 5 signs from 0 to 2: Appearance (colour), Pulse (heart rate), Grimace (reflex irritability), Activity (tone) and Respiration. A score of 7–10 is normal, 4–6 moderately low, and 0–3 very low.

❌ Why the other options are wrong:
• Only once, at 24 hours after birth — One assessment at 24 hours is too late.
• Before delivery, using the CTG — APGAR is done after birth, not before.
• 30 minutes and 1 hour after birth — 30 minutes and 1 hour aren't the standard times.

⭐ Key point: Don't wait for the 1-minute APGAR to start resuscitation. Start as soon as the baby isn't breathing well.$x$, null),
(185, $x$A newborn with HR 80, gasping breaths and floppy tone needs:$x$, $x$Bag-mask ventilation$x$, $x$✅ Correct answer: Bag-mask ventilation
A newborn with HR 80 (below 100), GASPING breaths and FLOPPY tone needs effective BAG-MASK VENTILATION. Most newborns in trouble have a breathing problem, and the heart rate usually rises once the lungs are ventilated. If the HR stays below 60 despite good ventilation, then start compressions.

❌ Why the other options are wrong:
• Adrenaline first — Adrenaline is only given if the HR stays below 60 after effective ventilation and compressions.
• Chest compressions immediately — Compressions start only if the HR is below 60 despite effective ventilation.
• Routine care with the mother — Routine care is wrong; the baby is in trouble.

⭐ Key point: Ventilation is the most important step in newborn resuscitation.$x$, null),
(186, $x$Thermal care of the newborn includes:$x$, $x$Drying, removing wet towels, skin-to-skin or warmer$x$, $x$✅ Correct answer: Drying, removing wet towels, skin-to-skin or warmer
Newborns lose heat quickly (large surface area, little fat, wet skin). Hypothermia increases death, low glucose, breathing problems and acidosis. Thermal care: DRY the baby immediately, REMOVE WET TOWELS, put the baby SKIN-TO-SKIN with the mother (or under a radiant warmer), cover the head with a hat, and keep the room warm.

❌ Why the other options are wrong:
• Bathing the baby immediately after birth — Bathing immediately causes heat loss; delay bathing for at least 24 hours.
• Leaving the baby wet until the cord is cut — Leaving the baby wet causes heat loss by evaporation.
• Nursing the baby in a cool, airy room — A cool, airy room causes heat loss by convection.

⭐ Key point: The "warm chain": warm delivery room, immediate drying, skin-to-skin, breastfeeding, delayed bathing, warm transport.$x$, null),
(187, $x$Phototherapy works by:$x$, $x$Converting bilirubin to water-soluble isomers$x$, $x$✅ Correct answer: Converting bilirubin to water-soluble isomers
Bilirubin in the skin absorbs BLUE LIGHT (wavelength about 430–490 nm). The light changes it into WATER-SOLUBLE forms (isomers such as lumirubin) that can be excreted in bile and URINE without the liver having to process them first. This lowers the bilirubin level.

❌ Why the other options are wrong:
• Blocking the liver enzymes temporarily — Phototherapy doesn't block liver enzymes.
• Increasing the production of bilirubin — It doesn't increase bilirubin production.
• Destroying the baby's red cells faster — It doesn't destroy red cells.

⭐ Key point: During phototherapy: cover the eyes, expose as much skin as possible, turn the baby, monitor temperature and hydration, and check bilirubin regularly.$x$, null),
(188, $x$Exchange transfusion is indicated when bilirubin:$x$, $x$Reaches exchange levels or shows encephalopathy$x$, $x$✅ Correct answer: Reaches exchange levels or shows encephalopathy
Exchange transfusion replaces the baby's blood with donor blood, quickly removing bilirubin and antibodies (in haemolytic disease). It is indicated when the bilirubin REACHES the EXCHANGE level (on charts that depend on the baby's age in hours and gestation) despite phototherapy, or if there are signs of BILIRUBIN ENCEPHALOPATHY (lethargy, poor feeding, high-pitched cry, arching).

❌ Why the other options are wrong:
• Is within the normal range for age — Normal bilirubin doesn't need treatment.
• Is falling steadily on phototherapy — Bilirubin falling on phototherapy is responding.
• Is just above the phototherapy line only — Just above the phototherapy line needs only phototherapy.

⭐ Key point: Kernicterus (bilirubin brain damage) causes permanent deafness, cerebral palsy and learning disability. Treat high bilirubin promptly.$x$, null),
(189, $x$A neonate with seizures should first have checked:$x$, $x$Blood glucose and calcium$x$, $x$✅ Correct answer: Blood glucose and calcium
Seizures in newborns often have TREATABLE metabolic causes, mainly HYPOGLYCAEMIA (low blood sugar) and HYPOCALCAEMIA (low calcium). These must be checked FIRST and corrected quickly, because treating them can stop the seizures and prevent brain damage. Other causes include hypoxic-ischaemic encephalopathy, infection, bleeding and low magnesium.

❌ Why the other options are wrong:
• Hearing response to sound — Hearing isn't urgent in a seizing baby.
• Visual response to light — Visual response isn't relevant.
• Hip stability on testing — Hip stability isn't relevant.

⭐ Key point: Low glucose in a newborn: below 2.6 mmol/L. Treat with 2 mL/kg of 10% dextrose IV.$x$, null),
(190, $x$First-line drug for neonatal seizures is:$x$, $x$Phenobarbital$x$, $x$✅ Correct answer: Phenobarbital
PHENOBARBITAL is the first-line anticonvulsant for neonatal seizures. It is given IV as a loading dose of 20 mg/kg, with further doses if seizures continue. It acts on GABA receptors. Monitor breathing, as it can depress respiration.

❌ Why the other options are wrong:
• Valproate — Valproate is avoided in neonates (liver toxicity).
• Phenytoin — Phenytoin is a second-line drug.
• Carbamazepine — Carbamazepine is oral and not used for neonatal seizures.

⭐ Key point: Always check glucose and calcium first. Neonatal seizures can be subtle: lip smacking, cycling movements, eye deviation, apnoea.$x$, null),
(191, $x$Feeding intolerance in a preterm infant may indicate:$x$, $x$Necrotising enterocolitis or sepsis$x$, $x$✅ Correct answer: Necrotising enterocolitis or sepsis
In a preterm baby, feeding intolerance (vomiting, especially green bile; large residuals; a swollen, tender abdomen; blood in the stool) can be an early sign of NECROTISING ENTEROCOLITIS (NEC), a serious inflammation and death of the bowel. It can also be a sign of SEPSIS.

❌ Why the other options are wrong:
• Good bowel function and tolerance — Feeding intolerance is not a sign of good bowel function.
• Overhydration from IV fluids — Overhydration isn't the typical cause.
• Normal growth and gut maturation — It is not a sign of normal growth.

⭐ Key point: NEC: stop feeds (nil by mouth), place an NG tube on free drainage, give IV fluids and antibiotics, take an abdominal X-ray, and get a surgical review.$x$, null),
(192, $x$In neonates, fluid requirements increase with:$x$, $x$Phototherapy and radiant warmers$x$, $x$✅ Correct answer: Phototherapy and radiant warmers
Newborns lose water through the skin (insensible losses). PHOTOTHERAPY and RADIANT WARMERS increase water loss through evaporation from the skin, so the baby needs MORE FLUID (often 10–20% extra) to avoid dehydration.

❌ Why the other options are wrong:
• Feeding by NG tube only — NG feeding doesn't increase fluid needs.
• A lower room temperature — A cooler room reduces insensible loss.
• Fluid restriction orders — Fluid restriction orders reduce intake, not needs.

⭐ Key point: Monitor weight, urine output and sodium in babies under phototherapy or warmers.$x$, null),
(193, $x$Fluid for a child in shock is given as:$x$, $x$10–20 mL/kg isotonic bolus, reassessing each time$x$, $x$✅ Correct answer: 10–20 mL/kg isotonic bolus, reassessing each time
In a shocked child, give a BOLUS of ISOTONIC fluid (0.9% saline or balanced crystalloid) of 10–20 mL/kg, then REASSESS heart rate, capillary refill, BP, consciousness and liver size after each bolus. Repeat if still shocked, watching for signs of overload (crackles, enlarged liver).

❌ Why the other options are wrong:
• 50 mL/kg of 10% dextrose as a single bolus — 50 mL/kg of 10% dextrose would cause severe hyperglycaemia and isn't a resuscitation fluid.
• Oral fluids only, by cup and spoon — Oral fluids are too slow for shock.
• Hypotonic fluid given rapidly over 10 minutes — Hypotonic fluid given rapidly can cause low sodium and brain swelling.

⭐ Key point: Use smaller boluses (10 mL/kg) in children with severe malnutrition, malaria with anaemia, or heart disease.$x$, null),
(194, $x$Signs of raised intracranial pressure in infants include:$x$, $x$Bulging fontanelle, vomiting, sunset eyes$x$, $x$✅ Correct answer: Bulging fontanelle, vomiting, sunset eyes
In infants, the skull sutures are not fused and the fontanelle is open. Raised ICP shows as a BULGING (tense) FONTANELLE, VOMITING, irritability, a high-pitched cry, "SUNSET EYES" (eyes deviated downward), increasing head size (hydrocephalus), and later poor feeding, seizures and reduced consciousness.

❌ Why the other options are wrong:
• Normal head growth on the chart — Normal head growth doesn't suggest raised ICP.
• Sunken fontanelle with a dry mouth — A sunken fontanelle with a dry mouth suggests DEHYDRATION.
• Hyperactivity with increased hunger — Hyperactivity with hunger doesn't suggest raised ICP.

⭐ Key point: Measure head circumference regularly in at-risk infants. A rapidly increasing head size suggests hydrocephalus.$x$, null),
(195, $x$A child with a severe asthma attack not responding to salbutamol may need:$x$, $x$IV magnesium sulphate and oxygen$x$, $x$✅ Correct answer: IV magnesium sulphate and oxygen
In severe acute asthma that doesn't respond to salbutamol (and ipratropium) nebulisers, IV MAGNESIUM SULPHATE relaxes airway smooth muscle and helps bronchodilation. Give OXYGEN to keep SpO₂ 94–98%. Steroids are also given. If the child still doesn't improve, consider IV salbutamol or aminophylline and ventilation.

❌ Why the other options are wrong:
• Oral antibiotics and nothing else — Antibiotics aren't routine in asthma (most attacks are viral).
• Strict fluid restriction for 24 hours — Fluid restriction isn't a treatment.
• Oral sedation and discharge home — Sedation is dangerous in asthma (it reduces breathing), and discharge would be unsafe.

⭐ Key point: Signs of life-threatening asthma: silent chest, exhaustion, cyanosis, SpO₂ below 92%, confusion, a normal or rising PaCO₂.$x$, null),
(196, $x$Bronchiolitis in infants is most commonly caused by:$x$, $x$Respiratory syncytial virus (RSV)$x$, $x$✅ Correct answer: Respiratory syncytial virus (RSV)
Bronchiolitis is a viral infection of the small airways (bronchioles) in infants, most commonly caused by RESPIRATORY SYNCYTIAL VIRUS (RSV). It causes cough, fast breathing, wheeze and crackles, poor feeding, and sometimes apnoea in young babies.

❌ Why the other options are wrong:
• Streptococcus pneumoniae — Streptococcus pneumoniae causes bacterial pneumonia.
• Haemophilus influenzae type b — Haemophilus influenzae type b causes epiglottitis and meningitis.
• Candida albicans — Candida is a fungus, not the cause of bronchiolitis.

⭐ Key point: Bronchiolitis treatment is supportive: oxygen if SpO₂ is low, nasal suction, fluids (NG or IV if feeding poorly), and CPAP if severe. Antibiotics and bronchodilators don't usually help.$x$, null),
(197, $x$Paediatric poisoning with iron tablets can cause:$x$, $x$GI bleeding, shock and liver failure$x$, $x$✅ Correct answer: GI bleeding, shock and liver failure
Iron is toxic in overdose. It irritates the gut (vomiting, diarrhoea, GI BLEEDING), then damages cells, causing SHOCK and metabolic acidosis, then LIVER FAILURE (1–4 days later), and later gut scarring. Children are at risk because iron tablets look like sweets.

❌ Why the other options are wrong:
• No symptoms at any dose — Iron overdose is dangerous, especially above 60 mg/kg of elemental iron.
• Hypoglycaemia only, with sweating — Low glucose isn't the main problem.
• Hypertension only, with headache — High BP isn't typical; shock with low BP is.

⭐ Key point: The antidote is DESFERRIOXAMINE. Activated charcoal does NOT bind iron.$x$, null),
(198, $x$Kerosene ingestion in a child mainly causes:$x$, $x$Aspiration pneumonitis$x$, $x$✅ Correct answer: Aspiration pneumonitis
Kerosene (paraffin) is a hydrocarbon with low viscosity. If swallowed, it is easily inhaled into the lungs, especially if the child coughs or vomits, causing ASPIRATION PNEUMONITIS (chemical lung inflammation): coughing, choking, fast breathing, hypoxia and fever. The lungs are the main danger, not the gut.

❌ Why the other options are wrong:
• Acute liver failure — Liver failure isn't the main effect.
• Kidney stones — Kidney stones aren't related.
• Hypoglycaemia — Hypoglycaemia isn't the main effect.

⭐ Key point: Do NOT induce vomiting or give charcoal. Give oxygen and monitor for respiratory distress for at least 6 hours.$x$, null),
(199, $x$A child with HIV and severe pneumonia should receive:$x$, $x$Oxygen, antibiotics and high-dose cotrimoxazole$x$, $x$✅ Correct answer: Oxygen, antibiotics and high-dose cotrimoxazole
In a child with HIV and severe pneumonia, PNEUMOCYSTIS pneumonia (PCP) must be considered, as well as bacterial pneumonia. Treatment includes OXYGEN, ANTIBIOTICS for bacterial pneumonia (such as ampicillin and gentamicin, or ceftriaxone), and HIGH-DOSE COTRIMOXAZOLE for PCP. Steroids (prednisolone) are added for moderate to severe PCP.

❌ Why the other options are wrong:
• Oral paracetamol only, given at home — Paracetamol alone doesn't treat severe pneumonia.
• Oral fluids only, with close observation — Oral fluids alone don't treat pneumonia.
• Steroids alone, without any antibiotics — Steroids alone without antibiotics would be dangerous.

⭐ Key point: HIV-exposed infants should receive cotrimoxazole prophylaxis to prevent PCP.$x$, null),
(200, $x$Meningococcal sepsis in a child presents with:$x$, $x$Fever, non-blanching purpuric rash, shock$x$, $x$✅ Correct answer: Fever, non-blanching purpuric rash, shock
Meningococcal sepsis (Neisseria meningitidis) progresses very quickly. It presents with FEVER, a NON-BLANCHING PURPURIC (or petechial) RASH (it doesn't fade when pressed with a glass), and SHOCK (cold hands and feet, mottled skin, fast heart rate, slow capillary refill). Meningitis signs may or may not be present.

❌ Why the other options are wrong:
• Slow weight gain over several months — Slow weight gain over months isn't acute sepsis.
• Painless jaundice with pale stools — Painless jaundice with pale stools suggests biliary obstruction.
• Itchy urticaria after an injection — Itchy urticaria after an injection suggests an allergic reaction.

⭐ Key point: Give IV or IO CEFTRIAXONE IMMEDIATELY (or IM benzylpenicillin before transfer), treat shock with fluids, and give prophylaxis to close contacts.$x$, null)
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
