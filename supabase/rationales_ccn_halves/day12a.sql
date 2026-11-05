-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 12, part A (questions 1–100)
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

⭐ Key point: Review all drugs daily in AKI: stop nephrotoxins and adjust the doses of renally cleared drugs (such as antibiotics, LMWH, opioids).$x$, null)
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
