-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 9 (200 questions)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$A ventilated patient with severe pulmonary hypertension suddenly drops BP to 70/40 with a rising CVP after a large tidal volume increase. The most likely mechanism is:$x$, $x$Raised RV afterload from high intrathoracic pressure, causing acute RV failure$x$, $x$✅ Correct answer: Raised RV afterload from high intrathoracic pressure, causing acute RV failure
In pulmonary hypertension the right ventricle (RV) is already pumping against very high pressure in the lung vessels, and it is a thin-walled chamber that copes badly with any extra load. When the ventilator tidal volume is increased a lot, the pressure inside the chest (intrathoracic pressure) rises and the over-stretched alveoli squeeze the small lung capillaries. This sharply RAISES RV AFTERLOAD (the resistance the RV must pump against). The RV cannot empty, it dilates and fails: blood backs up into the veins (CVP rises) and less blood reaches the left heart, so the BP falls. This is ACUTE RV FAILURE.

❌ Why the other options are wrong:
• Tension pneumothorax from barotrauma, shifting the mediastinum to the right — A tension pneumothorax can cause low BP and high CVP, but the question links the collapse directly to the tidal volume change in a patient with pulmonary hypertension; the classic expected mechanism is RV afterload. Tension pneumothorax would also show absent breath sounds, tracheal deviation and very high airway pressures.
• Vasodilation from deep sedation, causing a distributive type of shock — Vasodilation from sedation causes LOW BP with a LOW or normal CVP, because the veins also dilate. A rising CVP does not fit distributive shock.
• Left ventricular failure from fluid overload, causing acute pulmonary oedema — LV failure from fluid overload causes pulmonary oedema with crackles and pink frothy sputum; it is not caused by increasing tidal volume.

⭐ Key point: In pulmonary hypertension or RV failure on a ventilator: use lung-protective volumes (6 mL/kg ideal body weight), avoid high plateau pressures and excessive PEEP, avoid hypoxia and hypercapnia, keep the BP up (noradrenaline) to perfuse the RV, and consider inhaled nitric oxide.$x$, null),
(2, $x$In a patient with pulmonary arterial hypertension, which factor most worsens pulmonary vascular resistance and must be avoided in the ICU?$x$, $x$Hypoxia, hypercapnia and acidosis$x$, $x$✅ Correct answer: Hypoxia, hypercapnia and acidosis
The lung blood vessels CONSTRICT (narrow) when the patient has HYPOXIA (low oxygen — "hypoxic pulmonary vasoconstriction"), HYPERCAPNIA (high CO2) and ACIDOSIS (low pH). In a patient with pulmonary hypertension, these three sharply increase pulmonary vascular resistance, which overloads the right ventricle and can trigger a "pulmonary hypertensive crisis" with RV failure and cardiac arrest. Pain, agitation, hypothermia and coughing/suction episodes also worsen it.

❌ Why the other options are wrong:
• Normothermia with adequate analgesia — Normal temperature with good pain control is GOOD for the patient; pain and cold increase pulmonary resistance.
• A slightly alkalotic pH from mild hyperventilation — A slightly alkalotic pH actually DILATES the pulmonary vessels and lowers resistance. Mild hyperventilation is sometimes used deliberately.
• Mild hyperoxia with normocapnia — Good oxygen with normal CO2 lowers pulmonary resistance. It is helpful, not harmful.

⭐ Key point: Remember: keep the patient "warm, well-oxygenated, slightly alkalotic, pain-free and calm". Avoid hypoxia, hypercapnia, acidosis, pain and hypothermia.$x$, null),
(3, $x$Inhaled nitric oxide is used in ICU patients with acute pulmonary hypertension because it:$x$, $x$Dilates pulmonary vessels in ventilated lung with little systemic effect$x$, $x$✅ Correct answer: Dilates pulmonary vessels in ventilated lung with little systemic effect
INHALED NITRIC OXIDE (iNO) is a gas given through the ventilator circuit. It relaxes the smooth muscle of the pulmonary arteries, DILATING THE LUNG VESSELS. Because it is inhaled, it reaches only the parts of the lung that are being VENTILATED, so it improves blood flow to the well-aerated lung (improving oxygenation). Once it enters the blood, it is quickly inactivated by haemoglobin, so it has LITTLE SYSTEMIC EFFECT — it does not lower the general blood pressure. This makes it ideal for acute pulmonary hypertension and RV failure.

❌ Why the other options are wrong:
• Increases right ventricular contractility directly as an inotrope — iNO is a vasodilator, not an inotrope. It helps the RV indirectly by lowering its afterload, not by making it contract harder.
• Reduces blood viscosity and platelet adhesion, preventing thrombosis — iNO is not given to prevent clots or thin the blood (it has only minor effects on platelets).
• Dilates systemic arteries more than pulmonary arteries, lowering afterload — iNO dilates PULMONARY vessels selectively; it has almost no effect on systemic arteries because haemoglobin inactivates it.

⭐ Key point: Never stop iNO suddenly — rebound pulmonary hypertension can occur; wean it slowly. Monitor methaemoglobin levels and NO2 (a toxic by-product).$x$, null),
(4, $x$A patient with chronic pulmonary hypertension and right heart failure needs fluid management. The ICU nurse should expect:$x$, $x$Small, careful fluid boluses, as the RV tolerates under- and over-filling poorly$x$, $x$✅ Correct answer: Small, careful fluid boluses, as the RV tolerates under- and over-filling poorly
A failing RIGHT VENTRICLE has a narrow safe range of filling. If it is UNDER-FILLED (too little fluid), it cannot generate enough output and the BP falls. If it is OVER-FILLED (too much fluid), it stretches and bulges to the left, squeezing the left ventricle (interventricular dependence), so cardiac output falls further and the liver and gut become congested. So fluids are given as SMALL, CAREFUL BOLUSES (e.g. 250 mL), each followed by reassessment of BP, CVP, echo findings and urine output.

❌ Why the other options are wrong:
• Large crystalloid boluses to raise preload and push blood through the lungs — Large boluses can over-distend the failing RV, push the septum to the left and cause collapse.
• Fluids guided only by hourly urine output, ignoring CVP and the echo — Urine output alone can mislead; CVP trends and echocardiography are important guides in RV failure.
• Strict fluid restriction regardless of the blood pressure or the CVP — Strict restriction regardless of BP can leave the RV under-filled and cause low cardiac output.

⭐ Key point: In RV failure: careful fluids, keep the systemic BP up (noradrenaline maintains coronary perfusion of the RV), consider inotropes (dobutamine, milrinone) and pulmonary vasodilators. Diuretics if overloaded.$x$, null),
(5, $x$Thoracotomy is generally indicated for massive haemothorax when drainage exceeds:$x$, $x$>1500ml or >200ml/hr for 3 hours$x$, $x$✅ Correct answer: >1500ml or >200ml/hr for 3 hours
A MASSIVE HAEMOTHORAX (large amount of blood in the chest) may need surgery to stop the bleeding. ATLS guidance: urgent THORACOTOMY is indicated when the INITIAL chest drain output is MORE THAN 1500 mL of blood, OR when ONGOING drainage exceeds 200 mL PER HOUR for 2–4 HOURS (the question uses 3 hours), or when the patient needs repeated blood transfusions to stay stable.

❌ Why the other options are wrong:
• >2500ml in total, regardless of the rate — There is no rule of "2500 mL regardless of rate"; waiting this long is dangerous.
• >500ml in total or >100ml/hr for 1 hour — 500 mL total or 100 mL/hr for 1 hour is too low a threshold; many patients stop bleeding without surgery at these amounts.
• >1000ml in total or any bright red blood — 1000 mL total is below the 1500 mL threshold, and any bright red blood alone does not automatically mean thoracotomy.

⭐ Key point: The patient's physiology also matters: a patient who stays unstable despite resuscitation needs surgery even below these numbers.$x$, null),
(6, $x$After a chest drain is inserted for haemothorax, the initial drainage is 1200 mL and the patient stabilises. The nurse should next:$x$, $x$Record hourly drainage; report over 200 mL/hour for 2–4 hours$x$, $x$✅ Correct answer: Record hourly drainage; report over 200 mL/hour for 2–4 hours
After the first drainage of 1200 mL (below the 1500 mL massive threshold) and the patient is now stable, the nurse must watch for ONGOING BLEEDING. Record the drain output HOURLY and report if it is more than about 200 mL/hour for 2–4 hours (a sign of continued bleeding that may need thoracotomy). Also watch the vital signs, the colour of the drainage and the haemoglobin.

❌ Why the other options are wrong:
• Clamp the drain for one hour to allow the blood to clot — Clamping a drain in haemothorax lets blood build up in the chest, which can compress the lung and heart; the drain is not clamped to "let blood clot".
• Remove the drain once the BP has been stable for 1 hour — One hour of stable BP is far too soon; drains are removed when drainage is low (e.g. under 100–200 mL/day), there is no air leak and the X-ray shows the lung is expanded.
• Milk and strip the tube vigorously every 15 minutes — Vigorous milking and stripping create very high negative pressure that can damage the lung tissue; it is not routine practice. Gentle hand-over-hand squeezing may be used to clear clots if allowed by local policy.

⭐ Key point: Keep the drainage bottle below chest level, the system sealed, and the tubing free of kinks and loops.$x$, null),
(7, $x$About the x ray features of haemothorax$x$, $x$A supine film shows a diffuse haze over the affected hemithorax$x$, $x$✅ Correct answer: A supine film shows a diffuse haze over the affected hemithorax
A patient lying flat (SUPINE) — as trauma patients usually are — has blood that spreads out along the BACK of the chest rather than collecting at the base. On a supine X-ray, a haemothorax therefore appears as a DIFFUSE HAZE (an increased greyness) over the whole affected side, through which lung markings can still be seen. There may be no clear fluid level.

❌ Why the other options are wrong:
• An erect film is less sensitive than a supine film — The opposite is true: an ERECT film is MORE sensitive, because blood falls to the base and blunts the costophrenic angle.
• It is seen only when more than 1500 mL of blood is present — Haemothorax can be seen on X-ray with much smaller amounts than 1500 mL (about 200–300 mL on an erect film).
• Costophrenic blunting appears with as little as 20 mL — About 200–300 mL is needed to blunt the costophrenic angle on an erect PA film, not 20 mL.

⭐ Key point: Ultrasound (eFAST) can detect even small haemothoraces quickly at the bedside, and CT is the most sensitive.$x$, null),
(8, $x$A patient with a left haemothorax drained by chest tube becomes hypotensive and the drainage suddenly stops. The nurse should first suspect:$x$, $x$A clotted or kinked tube with blood re-accumulating in the chest$x$, $x$✅ Correct answer: A clotted or kinked tube with blood re-accumulating in the chest
The drain had been removing blood. If drainage SUDDENLY STOPS while the patient becomes HYPOTENSIVE, the most likely cause is that the tube is BLOCKED (by a clot) or KINKED. Blood is then building up in the chest again (re-accumulating), compressing the lung and causing hypovolaemia. Check the tubing for kinks and clots, check the patient (breath sounds, oxygen saturation, trachea), and inform the doctor urgently. A chest X-ray may be needed.

❌ Why the other options are wrong:
• Air leak from the underwater seal causing pneumothorax — An air leak would cause bubbling in the water seal and possible pneumothorax, but doesn't explain blood loss and stopped drainage.
• Vasovagal reaction to the presence of the chest drain — A vasovagal reaction may cause brief hypotension, but it does not explain why drainage suddenly stopped.
• That the bleeding has stopped and the lung is re-expanded — If the bleeding had stopped, the patient would be STABLE or improving, not becoming hypotensive.

⭐ Key point: Never assume a sudden stop in drainage is good news if the patient is getting worse. Always look at the patient and the system together.$x$, null),
(9, $x$Autotransfusion from a chest drain collection system is most appropriate when:$x$, $x$A large, uncontaminated haemothorax within a few hours of injury$x$, $x$✅ Correct answer: A large, uncontaminated haemothorax within a few hours of injury
AUTOTRANSFUSION means collecting the patient's own blood from the chest drain, filtering it and giving it back into a vein. It is most appropriate for a LARGE, UNCONTAMINATED HAEMOTHORAX (e.g. from a chest injury without bowel damage) collected WITHIN A FEW HOURS (usually within 4–6 hours) of injury. It reduces the need for donor blood and avoids transfusion reactions.

❌ Why the other options are wrong:
• A known malignant pleural effusion with recent bleeding — Malignant effusion blood may contain cancer cells, which could spread if reinfused.
• Blood that has been in the collection chamber over 24 hours — Blood that has stood for over 24 hours may be contaminated and its cells and clotting factors broken down.
• A penetrating injury that has also perforated the bowel — If the bowel is perforated, the blood is contaminated with gut bacteria, which could cause severe sepsis if reinfused.

⭐ Key point: Autotransfusion requires a special collection system with an anticoagulant and filter. Follow the manufacturer's time limits.$x$, null),
(10, $x$Which chest X-ray finding most strongly suggests blunt traumatic aortic injury?$x$, $x$A widened mediastinum with loss of the aortic knob$x$, $x$✅ Correct answer: A widened mediastinum with loss of the aortic knob
Blunt traumatic aortic injury (tear of the aorta) causes bleeding into the mediastinum (the middle of the chest). On X-ray this appears as a WIDENED MEDIASTINUM (more than 8 cm on a supine AP film) and LOSS OF THE AORTIC KNOB (the normal bulge of the aortic arch becomes blurred). Other signs include deviation of the trachea or nasogastric tube to the right, depression of the left main bronchus, a left apical cap, and fractures of the first or second rib.

❌ Why the other options are wrong:
• A small apical pneumothorax on the left side — A small apical pneumothorax does not specifically suggest aortic injury.
• Fractured lower ribs on the right side only — Fractured lower right ribs suggest liver injury, not aortic injury.
• Blunting of one costophrenic angle with no shift — A blunted costophrenic angle suggests a small effusion or haemothorax, not specifically aortic injury.

⭐ Key point: CT angiography confirms the diagnosis. Most patients with aortic transection die at the scene; survivors have a contained tear that can rupture at any time.$x$, null),
(11, $x$For a patient with suspected traumatic aortic injury awaiting repair, the ICU nurse should aim to keep:$x$, $x$HR under 100 and systolic BP about 100–120 using beta-blockade$x$, $x$✅ Correct answer: HR under 100 and systolic BP about 100–120 using beta-blockade
In suspected aortic injury, the aortic wall is torn and held together only by its thin outer layer. High heart rate and high BP increase the force (shear stress) on the tear, risking complete RUPTURE. The goal is to keep the HEART RATE UNDER 100 and the SYSTOLIC BP around 100–120 mmHg, usually using a short-acting IV BETA-BLOCKER (e.g. esmolol, labetalol), with pain relief, until surgical or endovascular repair.

❌ Why the other options are wrong:
• Large fluid boluses running continuously to prevent any hypotension — Large fluid boluses raise BP and may cause rupture. Fluids are given carefully.
• Heart rate above 120 per minute to keep the cardiac output high — A heart rate over 120 increases shear force on the aorta and risks rupture.
• Systolic BP above 160 mmHg to maintain cerebral and renal flow — A systolic BP over 160 increases the risk of rupture.

⭐ Key point: Give adequate analgesia — pain causes tachycardia and hypertension. Beta-blockers are given BEFORE vasodilators to prevent reflex tachycardia.$x$, null),
(12, $x$The most common site of blunt traumatic aortic injury is the:$x$, $x$Aortic isthmus, just beyond the left subclavian$x$, $x$✅ Correct answer: Aortic isthmus, just beyond the left subclavian
The AORTIC ISTHMUS is the part of the aorta just beyond the origin of the LEFT SUBCLAVIAN ARTERY, where the ligamentum arteriosum holds it. In a sudden deceleration (e.g. head-on crash), the mobile arch keeps moving forward while the isthmus is held in place. The shearing force tears the aorta at this point. About 80–90% of blunt aortic injuries happen here.

❌ Why the other options are wrong:
• Abdominal aorta, at the level of the renal arteries — The abdominal aorta is less commonly injured in blunt trauma.
• Aortic root, just above the aortic valve — The aortic root may be injured, but these patients usually die at the scene; it is not the most common site in survivors.
• Aortic arch, at the origin of the brachiocephalic trunk — The arch at the brachiocephalic origin is a less common site.

⭐ Key point: Isthmus = the area of the ligamentum arteriosum, just distal to the left subclavian artery.$x$, null),
(13, $x$Which mechanism of injury should make the nurse suspect blunt aortic trauma?$x$, $x$High-speed deceleration, e.g. head-on crash or fall from height$x$, $x$✅ Correct answer: High-speed deceleration, e.g. head-on crash or fall from height
Blunt aortic injury is caused by HIGH-SPEED DECELERATION — when the body stops suddenly but the heart and aortic arch keep moving forward, tearing the aorta at its fixed point (the isthmus). Typical mechanisms: HEAD-ON or SIDE-IMPACT car crashes at high speed, ejection from a vehicle, and FALLS FROM A GREAT HEIGHT.

❌ Why the other options are wrong:
• A minor rear-end collision at about 10 km/h — A low-speed (10 km/h) rear-end crash is unlikely to produce enough deceleration force.
• A stab wound to the thigh with brisk bleeding — A stab wound to the thigh is penetrating limb trauma, not blunt chest trauma.
• A low-speed fall from standing height in an elderly patient — A fall from standing height usually causes hip fractures or head injuries, but not aortic tears.

⭐ Key point: "Mechanism of injury" helps predict hidden injuries. With high-speed deceleration, always think of the aorta.$x$, null),
(14, $x$Shock lung is another name for:$x$, $x$ARDS developing after shock or major trauma$x$, $x$✅ Correct answer: ARDS developing after shock or major trauma
"SHOCK LUNG" is an old name for ACUTE RESPIRATORY DISTRESS SYNDROME (ARDS) developing after SHOCK, major TRAUMA, sepsis or massive transfusion. The lungs become inflamed and leaky, filling with protein-rich fluid. This causes severe hypoxia, stiff lungs and bilateral infiltrates on X-ray — not caused by heart failure.

❌ Why the other options are wrong:
• Pulmonary oedema caused by left ventricular failure — Pulmonary oedema from LV failure is cardiogenic, not "shock lung".
• Lung collapse caused by a large pleural effusion — Lung collapse from pleural effusion is a different problem.
• Bronchospasm triggered by a blood transfusion — Bronchospasm with transfusion is an allergic reaction, not ARDS.

⭐ Key point: ARDS (Berlin definition): onset within 1 week, bilateral infiltrates, not fully explained by heart failure or fluid overload, and PaO2/FiO2 ≤300 on PEEP ≥5.$x$, null),
(15, $x$Which finding distinguishes ARDS (shock lung) from cardiogenic pulmonary oedema?$x$, $x$Normal wedge pressure with bilateral infiltrates$x$, $x$✅ Correct answer: Normal wedge pressure with bilateral infiltrates
ARDS and cardiogenic pulmonary oedema both cause bilateral infiltrates on X-ray. The key difference: in ARDS the problem is LEAKY lung capillaries, not a failing heart, so the PULMONARY CAPILLARY WEDGE PRESSURE (PCWP — a measure of left heart filling pressure) is NORMAL (usually 18 mmHg or less). In cardiogenic oedema, high left heart pressure pushes fluid into the lungs, so the wedge pressure is HIGH.

❌ Why the other options are wrong:
• Unilateral infiltrates with a large heart shadow — Unilateral infiltrates with a large heart suggest other causes; ARDS is bilateral, and a large heart suggests heart failure.
• Rapid improvement with furosemide alone — Rapid improvement with furosemide suggests cardiogenic oedema; ARDS does not resolve quickly with diuretics.
• Raised wedge pressure above 25 mmHg — A raised wedge pressure (over 25 mmHg) suggests cardiogenic pulmonary oedema.

⭐ Key point: Today, echocardiography is more commonly used than a pulmonary artery catheter to assess heart function.$x$, null),
(16, $x$A haemopneumothorax on an erect chest X-ray typically shows:$x$, $x$A straight horizontal air-fluid level$x$, $x$✅ Correct answer: A straight horizontal air-fluid level
In a HAEMOPNEUMOTHORAX there is both AIR and BLOOD in the pleural space. On an ERECT chest X-ray, the blood settles at the bottom and the air rises above it. Because air is present, the surface of the fluid forms a STRAIGHT HORIZONTAL AIR-FLUID LEVEL (like water in a glass).

❌ Why the other options are wrong:
• Diffuse ground-glass shadowing — Ground-glass shadowing suggests lung inflammation (e.g. pneumonia or ARDS).
• A deep sulcus sign only — The deep sulcus sign suggests a pneumothorax on a SUPINE film.
• A curved meniscus without any air — A curved meniscus (the fluid curving up the chest wall) is seen with pleural fluid WITHOUT air. Air changes it into a straight line.

⭐ Key point: A straight air-fluid level means air AND fluid; a curved meniscus means fluid only.$x$, null),
(17, $x$On a supine trauma chest X-ray, a pneumothorax may be suggested by:$x$, $x$A deep sulcus sign$x$, $x$✅ Correct answer: A deep sulcus sign
In a SUPINE patient, air in the pleural space rises to the FRONT and the bottom of the chest (the anterior costophrenic angle). On the X-ray, this makes the costophrenic angle look abnormally DEEP and dark: the DEEP SULCUS SIGN. It is an important sign because the usual apical lung edge may not be visible in supine films.

❌ Why the other options are wrong:
• Kerley B lines — Kerley B lines are short horizontal lines at the lung edges, seen in pulmonary oedema.
• A curved meniscus — A curved meniscus indicates fluid without air (on an erect film).
• A clear apical lung edge — A clear lung edge at the apex is the classic sign on an ERECT film, often not seen when supine.

⭐ Key point: Supine films can miss pneumothoraces. Ultrasound (absence of "lung sliding") or CT is more sensitive.$x$, null),
(18, $x$Massive haemothorax is defined by an initial drainage of at least:$x$, $x$1500 mL$x$, $x$✅ Correct answer: 1500 mL
A MASSIVE HAEMOTHORAX is defined as more than 1500 mL of blood (about one-third or more of the patient's blood volume) collecting in the chest, usually detected as the initial chest drain output. It causes hypovolaemic shock AND compresses the lung, causing breathing difficulty.

❌ Why the other options are wrong:
• 500 mL — 500 mL is a moderate haemothorax.
• 3000 mL — 3000 mL is far above the threshold; waiting for this would be fatal.
• 200 mL — 200 mL relates to the hourly rate threshold (200 mL/hour), not the definition of initial massive drainage.

⭐ Key point: Massive haemothorax: dull percussion, reduced breath sounds, shock and flat neck veins (due to blood loss). Treat with blood, chest drain and surgery.$x$, null),
(19, $x$A ventilated patient with pulmonary hypertension needs suctioning. The best approach is:$x$, $x$Pre-oxygenate and use short, closed suction to avoid hypoxia$x$, $x$✅ Correct answer: Pre-oxygenate and use short, closed suction to avoid hypoxia
Suctioning can cause hypoxia, coughing and agitation, which RAISE pulmonary vascular resistance and can trigger a pulmonary hypertensive crisis. The best approach: PRE-OXYGENATE (100% oxygen for 30–60 seconds before), use a CLOSED (in-line) suction system that keeps the ventilator connected and PEEP maintained, and make each pass SHORT (no more than 10–15 seconds). Consider sedation or an extra dose of analgesia before suctioning.

❌ Why the other options are wrong:
• Avoid suction completely to protect the pulmonary vessels — Suction cannot be avoided; secretions blocking the tube cause hypoxia, which is also dangerous.
• Disconnect the ventilator and bag with room air — Disconnecting and bagging with room air (21% oxygen) causes hypoxia and loss of PEEP.
• Long open suction to clear all secretions at once — Long open suction causes prolonged hypoxia and loss of PEEP, which may cause a crisis.

⭐ Key point: Watch the SpO2, BP and heart rate during suctioning. Stop if the patient deteriorates.$x$, null),
(20, $x$Sildenafil is used in pulmonary arterial hypertension because it:$x$, $x$Inhibits phosphodiesterase-5, increasing NO-mediated vasodilation$x$, $x$✅ Correct answer: Inhibits phosphodiesterase-5, increasing NO-mediated vasodilation
SILDENAFIL is a PHOSPHODIESTERASE-5 (PDE-5) INHIBITOR. Normally, nitric oxide (NO) relaxes blood vessels by increasing a chemical messenger called cGMP; PDE-5 breaks cGMP down. By blocking PDE-5, sildenafil keeps cGMP levels high, so NO-mediated VASODILATION in the lung vessels is stronger and longer-lasting. This lowers pulmonary vascular resistance.

❌ Why the other options are wrong:
• Acts as a potent loop diuretic that reduces right ventricular preload — Sildenafil is not a diuretic.
• Blocks endothelin receptors on the pulmonary vascular smooth muscle — Blocking endothelin receptors describes bosentan, ambrisentan and macitentan.
• Acts as a beta-blocker that slows the heart and reduces RV workload — Sildenafil is not a beta-blocker.

⭐ Key point: Sildenafil can cause systemic hypotension, especially with nitrates (never combine). It can also help wean inhaled nitric oxide.$x$, null),
(21, $x$A 70 kg man after a crash has pulse 125, BP 95/70, RR 32, urine 10 mL/hour and is anxious and confused. Using the ATLS classes, his estimated blood loss is:$x$, $x$Class III, 1500–2000 mL (30–40%)$x$, $x$✅ Correct answer: Class III, 1500–2000 mL (30–40%)
The ATLS haemorrhage classes estimate blood loss from the vital signs. This patient has: pulse 125 (120–140 = Class III), BP 95/70 (systolic decreased), respiratory rate 32 (30–40), urine 10 mL/hr (5–15 mL/hr), and is anxious and CONFUSED. All of these fit CLASS III — blood loss of 1500–2000 mL (30–40% of blood volume). For a 70 kg man, total blood volume is about 5 L (70 mL/kg).

❌ Why the other options are wrong:
• Class IV, over 2000 mL (over 40%) — Class IV (over 2000 mL) shows heart rate over 140, very low BP, negligible urine output and lethargy/unconsciousness.
• Class I, under 750 mL (under 15%) — Class I (under 750 mL) has normal vital signs.
• Class II, 750–1500 mL (15–30%) — Class II (750–1500 mL) has a heart rate of 100–120, normal systolic BP and urine 20–30 mL/hr.

⭐ Key point: Class III and IV need blood transfusion. Do not rely on BP alone — the body hides blood loss until over 30% is lost.$x$, null),
(22, $x$Which sign appears earliest in Class II haemorrhage?$x$, $x$A narrowed pulse pressure with tachycardia$x$, $x$✅ Correct answer: A narrowed pulse pressure with tachycardia
In CLASS II haemorrhage (15–30% loss), the body compensates by releasing adrenaline. This causes TACHYCARDIA (100–120) and VASOCONSTRICTION, which raises the DIASTOLIC pressure. Because the systolic stays normal while the diastolic rises, the PULSE PRESSURE (systolic minus diastolic) NARROWS. This is one of the earliest signs of significant blood loss.

❌ Why the other options are wrong:
• Anuria for more than 2 hours — Anuria is a late sign (Class IV).
• A systolic BP below 90 mmHg — A systolic BP below 90 is a late sign (Class III–IV).
• Loss of consciousness and confusion — Loss of consciousness is a late sign (Class IV).

⭐ Key point: A narrowing pulse pressure with rising heart rate is an early warning sign — act before the BP falls.$x$, null),
(23, $x$A trauma patient on beta-blockers loses 1.5 L of blood. Why may the class of haemorrhage be underestimated?$x$, $x$They blunt the tachycardic response$x$, $x$✅ Correct answer: They blunt the tachycardic response
BETA-BLOCKERS block the effect of adrenaline on the heart, so the heart CANNOT SPEED UP (tachycardia is blunted) in response to blood loss. Because tachycardia is a key sign used to grade haemorrhage, the patient may appear less shocked than they really are, and the blood loss is UNDERESTIMATED.

❌ Why the other options are wrong:
• They cause a diuresis that masks oliguria — Beta-blockers do not cause diuresis.
• They keep the patient alert despite shock — They don't keep patients alert; they can worsen shock.
• They raise the BP and so hide hypotension — Beta-blockers LOWER the BP; they don't raise it.

⭐ Key point: Other patients who may not show tachycardia: elderly people, athletes, patients with pacemakers. Look at other signs (lactate, base deficit, urine output, mental state).$x$, null),
(24, $x$The 'golden hour' in trauma emphasises:$x$, $x$Early assessment, resuscitation and definitive care$x$, $x$✅ Correct answer: Early assessment, resuscitation and definitive care
The "GOLDEN HOUR" is the critical period after injury when rapid ASSESSMENT, RESUSCITATION and DEFINITIVE CARE (e.g. surgery to stop bleeding) give the best chance of survival. Many trauma deaths in this period (from bleeding, airway problems) are preventable if treated quickly.

❌ Why the other options are wrong:
• Delaying surgery until the patient is fully stable — Delaying surgery until "fully stable" is wrong for bleeding patients; surgery IS the way to stabilise them.
• Waiting one hour before any IV fluid is given — Waiting before IV fluids delays resuscitation.
• A full secondary survey before any treatment — The secondary survey comes AFTER the primary survey and resuscitation of life-threatening problems.

⭐ Key point: Rapid transport, early resuscitation and early surgery save lives in trauma.$x$, null),
(25, $x$In the trimodal distribution of trauma deaths, the second peak (minutes to hours) is mainly due to:$x$, $x$Haemorrhage, airway and chest injuries that are treatable$x$, $x$✅ Correct answer: Haemorrhage, airway and chest injuries that are treatable
Trauma deaths occur in three peaks (trimodal distribution): FIRST PEAK (seconds to minutes) — immediately fatal injuries (e.g. brainstem damage, aortic transection), often at the scene; SECOND PEAK (minutes to hours) — HAEMORRHAGE, AIRWAY and CHEST INJURIES, which are often TREATABLE if dealt with quickly (this is the target of ATLS); THIRD PEAK (days to weeks) — sepsis and multi-organ failure.

❌ Why the other options are wrong:
• Pulmonary embolism occurring after hospital discharge — Pulmonary embolism after discharge is a late complication, not the second peak.
• Sepsis and multi-organ failure several weeks later — Sepsis and MOF weeks later are the THIRD peak.
• Immediate brain stem and aortic transection injuries — Immediate brainstem and aortic injuries cause the FIRST peak.

⭐ Key point: Rapid ATLS-style care targets the second peak, where most preventable deaths occur.$x$, null),
(26, $x$The six phases of pre-hospital trauma care begin with:$x$, $x$Detection and reporting of the incident$x$, $x$✅ Correct answer: Detection and reporting of the incident
Pre-hospital trauma care follows a chain of phases. It starts with DETECTION of the incident and REPORTING it (calling emergency services), followed by response, on-scene care, care during transport, and transfer to definitive care (hospital).

❌ Why the other options are wrong:
• Rehabilitation and follow-up — Rehabilitation is a late phase, after hospital treatment.
• The secondary survey in the ED — The secondary survey happens in the emergency department, not first.
• Hospital admission and surgery — Hospital admission is a later phase.

⭐ Key point: Fast detection and reporting reduce delays; teach communities how to call for help.$x$, null),
(27, $x$Permissive hypotension in penetrating torso trauma means:$x$, $x$A lower BP target (systolic 80–90) until bleeding is controlled$x$, $x$✅ Correct answer: A lower BP target (systolic 80–90) until bleeding is controlled
PERMISSIVE HYPOTENSION means deliberately allowing a LOWER BP (systolic about 80–90 mmHg, or a palpable radial pulse) in bleeding penetrating trauma UNTIL the bleeding is surgically CONTROLLED. A normal or high BP can "pop the clot" and increase bleeding, while too much crystalloid dilutes clotting factors. The BP target is enough to perfuse vital organs.

❌ Why the other options are wrong:
• Allowing the BP to fall to any level without any treatment — The BP is not allowed to fall to any level; there is a target to maintain organ perfusion.
• Large crystalloid boluses to bring the BP back to normal — Large crystalloid boluses dilute clotting factors and worsen bleeding.
• Vasopressors as first-line treatment instead of giving blood — Blood products are the main treatment; vasopressors are not first-line in haemorrhage.

⭐ Key point: Permissive hypotension is NOT used in traumatic brain injury, where a higher BP is needed to perfuse the brain.$x$, null),
(28, $x$Damage control resuscitation in massive haemorrhage from polytrauma emphasises:$x$, $x$Early balanced blood products, permissive hypotension and bleeding control$x$, $x$✅ Correct answer: Early balanced blood products, permissive hypotension and bleeding control
DAMAGE CONTROL RESUSCITATION aims to prevent the "lethal triad" in massive haemorrhage. It emphasises: EARLY BALANCED BLOOD PRODUCTS (red cells, plasma and platelets in roughly 1:1:1 ratio), PERMISSIVE HYPOTENSION, minimal crystalloid, tranexamic acid, keeping the patient warm, and EARLY BLEEDING CONTROL (damage control surgery or interventional radiology).

❌ Why the other options are wrong:
• Avoiding surgical bleeding control until the patient is fully stabilised — Bleeding control should happen as early as possible; delaying it worsens the patient's condition.
• Aggressive large-volume crystalloid infusion as the sole resuscitation strategy — Large-volume crystalloid worsens coagulopathy, acidosis and hypothermia.
• Delaying all blood products until the haemoglobin falls below 5 g/dL — Waiting until Hb is below 5 is far too late; blood is given early.

⭐ Key point: Damage control surgery: stop the bleeding and contamination quickly, then stabilise in ICU before definitive surgery later.$x$, null),
(29, $x$The 'lethal triad' in polytrauma refers to:$x$, $x$Hypothermia, acidosis and coagulopathy$x$, $x$✅ Correct answer: Hypothermia, acidosis and coagulopathy
The LETHAL TRIAD in trauma is HYPOTHERMIA, ACIDOSIS and COAGULOPATHY. Each worsens the others: cold slows clotting enzymes; acidosis (from poor perfusion) impairs clotting; coagulopathy causes more bleeding, more shock, more acidosis and more cooling. This vicious cycle is deadly.

❌ Why the other options are wrong:
• Anaemia, hypokalaemia and hyponatraemia — Anaemia, hypokalaemia and hyponatraemia are not the lethal triad.
• Tachycardia, tachypnoea and fever — Tachycardia, tachypnoea and fever are not the lethal triad.
• Hypoxia, hypercapnia and hypotension — Hypoxia, hypercapnia and hypotension are not the lethal triad.

⭐ Key point: Prevent the triad: warm fluids and blankets, stop bleeding early, blood products, avoid excessive crystalloid.$x$, null),
(30, $x$Tranexamic acid in major trauma is most effective when given:$x$, $x$Within 3 hours of injury$x$, $x$✅ Correct answer: Within 3 hours of injury
TRANEXAMIC ACID (TXA) reduces clot breakdown. The CRASH-2 trial showed it reduces deaths from bleeding in trauma when given WITHIN 3 HOURS of injury — ideally within 1 hour. If given after 3 hours, it may be harmful.

❌ Why the other options are wrong:
• Only once the INR exceeds 3 — TXA is not dependent on INR; it is given early.
• After 8 hours of injury — After 8 hours is too late and possibly harmful.
• Only after surgery is completed — TXA is given as early as possible, not after surgery.

⭐ Key point: TXA dose: 1 g IV over 10 minutes, then 1 g over 8 hours.$x$, null),
(31, $x$Diagnostic peritoneal lavage is considered positive in blunt trauma when the aspirate shows:$x$, $x$10 mL or more of frank blood, or over 100 000 RBC/mm³$x$, $x$✅ Correct answer: 10 mL or more of frank blood, or over 100 000 RBC/mm³
DIAGNOSTIC PERITONEAL LAVAGE (DPL) involves putting a catheter into the abdomen to look for blood. It is POSITIVE (suggesting significant injury) if: 10 mL OR MORE of FRANK BLOOD is aspirated immediately, or after washing with fluid, the lavage shows OVER 100,000 RED CELLS/mm³, over 500 white cells/mm³, bacteria, food particles or bile.

❌ Why the other options are wrong:
• A lavage amylase within the normal laboratory range — A normal amylase does not indicate a positive result.
• White cells below 500/mm³ with no bacteria seen — White cells below 500 with no bacteria is negative.
• Clear lavage fluid with a few red cells on microscopy — Clear fluid with few red cells is negative.

⭐ Key point: DPL is now mostly replaced by FAST ultrasound and CT, but may be used when these are not available.$x$, null),
(32, $x$Before diagnostic peritoneal lavage, the nurse should ensure:$x$, $x$The bladder is catheterised and the stomach decompressed$x$, $x$✅ Correct answer: The bladder is catheterised and the stomach decompressed
Before DPL, the nurse should: CATHETERISE THE BLADDER (to empty it so the needle doesn't puncture it) and DECOMPRESS THE STOMACH with a nasogastric tube (to prevent stomach puncture). This makes the procedure safer.

❌ Why the other options are wrong:
• A full bladder is maintained to lift the bowel up — A full bladder risks being punctured by the needle.
• The patient has eaten recently to stimulate the bowel — The patient should not eat; recent food increases aspiration risk.
• The patient is placed prone for the procedure — DPL is performed with the patient supine, not prone.

⭐ Key point: Pregnancy and previous abdominal surgery are relative contraindications for DPL.$x$, null),
(33, $x$FAST has largely replaced DPL in unstable trauma patients because FAST is:$x$, $x$Rapid, non-invasive, repeatable and done at the bedside$x$, $x$✅ Correct answer: Rapid, non-invasive, repeatable and done at the bedside
FAST (Focused Assessment with Sonography in Trauma) is a bedside ultrasound to look for free fluid (blood) in the abdomen and around the heart. It has largely replaced DPL because it is RAPID, NON-INVASIVE (no needle), REPEATABLE (can be repeated if the patient changes), and done at the BEDSIDE, which is ideal for unstable patients.

❌ Why the other options are wrong:
• Free of operator dependence — FAST depends on the skill of the operator.
• Able to show solid organ grading in detail — FAST does not grade solid organ injuries well; CT is better.
• More sensitive for hollow viscus injury than any test — FAST is poor at detecting hollow organ (bowel) injury.

⭐ Key point: eFAST also checks for pneumothorax and haemothorax. A positive FAST in an unstable patient usually means surgery.$x$, null),
(34, $x$In FAST, the hepatorenal space (Morison's pouch) is examined because:$x$, $x$It is the most dependent space where fluid collects when supine$x$, $x$✅ Correct answer: It is the most dependent space where fluid collects when supine
MORISON'S POUCH (the space between the liver and the right kidney) is the most DEPENDENT (lowest) part of the upper abdomen when the patient lies SUPINE. Free fluid (blood) collects here first, so it is the most sensitive view in FAST.

❌ Why the other options are wrong:
• It shows a pneumothorax more clearly than any other view — Pneumothorax is assessed by looking at lung sliding, not Morison's pouch.
• It is the window used to measure the bladder volume — Bladder volume is assessed in the pelvic view.
• It gives the clearest view of the heart and pericardium — The heart is assessed in the subxiphoid (pericardial) view.

⭐ Key point: The four FAST views: right upper quadrant (Morison's), left upper quadrant (splenorenal), pelvic, and pericardial.$x$, null),
(35, $x$A bladder scan in an ICU patient with a urinary catheter showing 450 mL suggests:$x$, $x$Catheter blockage or malposition$x$, $x$✅ Correct answer: Catheter blockage or malposition
A working catheter drains the bladder continuously, so a bladder scan should show very little urine. A scan showing 450 mL in a catheterised patient means urine is NOT draining: the CATHETER IS BLOCKED (kinked, clot, sediment) or MALPOSITIONED (e.g. balloon in the urethra).

❌ Why the other options are wrong:
• Acute kidney injury with oliguria — AKI with oliguria means the kidneys aren't making urine, so the bladder would be empty.
• Normal residual volume in a catheterised patient — A normal residual in a catheterised patient should be close to zero.
• Over-hydration requiring diuretics — Overhydration would increase urine output; this doesn't explain a full bladder with a catheter.

⭐ Key point: Before treating "oliguria", always check the catheter: look for kinks, flush it, or bladder scan.$x$, null),
(36, $x$Before concluding a patient is oliguric from acute kidney injury, the ICU nurse should:$x$, $x$Bladder-scan or flush the catheter to exclude obstruction$x$, $x$✅ Correct answer: Bladder-scan or flush the catheter to exclude obstruction
Low urine output in a catheterised patient may be due to a BLOCKED catheter rather than kidney failure. The nurse should first BLADDER-SCAN (to see if urine is trapped) or FLUSH THE CATHETER (per protocol) to EXCLUDE OBSTRUCTION. This avoids unnecessary treatment.

❌ Why the other options are wrong:
• Restrict all IV fluids immediately to avoid overload — Restricting fluids without assessment may worsen pre-renal AKI if the patient is dehydrated.
• Give furosemide 80 mg IV to test the kidneys — Giving furosemide without assessment may worsen dehydration and does not treat blockage.
• Start preparing the patient for urgent dialysis — Dialysis is far too premature without excluding simple causes.

⭐ Key point: Causes of oliguria: pre-renal (low blood volume), renal (kidney damage), post-renal (obstruction, including a blocked catheter).$x$, null),
(37, $x$During central venous catheter insertion via the subclavian route, the patient is positioned:$x$, $x$Head-down, to distend the vein and prevent air embolism$x$, $x$✅ Correct answer: Head-down, to distend the vein and prevent air embolism
For subclavian or internal jugular central line insertion, the patient is placed HEAD-DOWN (TRENDELENBURG position). This DISTENDS (fills) the vein, making it easier to puncture, and raises the venous pressure above atmospheric pressure, PREVENTING AIR from being sucked into the vein (AIR EMBOLISM).

❌ Why the other options are wrong:
• Prone, with the head turned away from the site — Prone positioning prevents access to the subclavian area.
• Left lateral, with the knees flexed to the chest — Left lateral with knees flexed is used for lumbar puncture.
• Sitting upright at 90 degrees with the arms by the side — Sitting upright reduces venous filling and increases air embolism risk.

⭐ Key point: Always confirm line position with a chest X-ray and check for pneumothorax after subclavian insertion.$x$, null),
(38, $x$During pericardiocentesis, the ECG shows ST elevation and ventricular ectopics. This suggests:$x$, $x$The needle is touching the myocardium and must be withdrawn$x$, $x$✅ Correct answer: The needle is touching the myocardium and must be withdrawn
During PERICARDIOCENTESIS, the needle is inserted into the fluid around the heart. If the ECG shows ST ELEVATION (injury current) or VENTRICULAR ECTOPICS, the needle is TOUCHING THE MYOCARDIUM (heart muscle). It must be WITHDRAWN slightly to avoid puncturing the heart or coronary arteries.

❌ Why the other options are wrong:
• The tamponade has resolved and the heart is refilling — Resolution of tamponade would show improved BP, not ST elevation and ectopics.
• A normal response to the injected local anaesthetic — Local anaesthetic does not cause ST elevation in this way.
• The effusion has been successfully and fully drained — Successful drainage would improve haemodynamics, not cause ECG changes.

⭐ Key point: Pericardiocentesis is done under ultrasound guidance with continuous ECG monitoring.$x$, null),
(39, $x$Beck's triad in cardiac tamponade after chest trauma consists of:$x$, $x$Hypotension, raised JVP and muffled heart sounds$x$, $x$✅ Correct answer: Hypotension, raised JVP and muffled heart sounds
BECK'S TRIAD is the classic sign of CARDIAC TAMPONADE: HYPOTENSION (the compressed heart can't fill, so output falls), RAISED JVP (blood backs up into the veins) and MUFFLED HEART SOUNDS (fluid around the heart muffles sounds). Pulsus paradoxus (a fall in systolic BP of more than 10 mmHg on inspiration) is another sign.

❌ Why the other options are wrong:
• Tachycardia, fever and pericardial rub — Tachycardia, fever and pericardial rub suggest pericarditis.
• Hypertension, bradycardia and irregular breathing — Hypertension, bradycardia and irregular breathing are Cushing's triad (raised ICP).
• Hypotension, low JVP and loud heart sounds — Low JVP and loud heart sounds suggest hypovolaemia, not tamponade.

⭐ Key point: Treat tamponade with pericardiocentesis or surgery. In trauma, a FAST scan shows fluid around the heart.$x$, null),
(40, $x$A polytrauma patient develops confusion, hypoxia and a petechial rash over the axillae 48 hours after femoral fracture. The likely diagnosis is:$x$, $x$Fat embolism syndrome$x$, $x$✅ Correct answer: Fat embolism syndrome
FAT EMBOLISM SYNDROME occurs 24–72 hours after long bone (especially femur) or pelvic fractures. Fat droplets enter the blood and block small vessels. The classic triad: RESPIRATORY problems (hypoxia, breathlessness), NEUROLOGICAL changes (confusion), and a PETECHIAL RASH (especially on the axillae, chest, conjunctiva and mouth).

❌ Why the other options are wrong:
• Transfusion-related lung injury — TRALI occurs within 6 hours of transfusion and doesn't cause a petechial rash.
• Pulmonary thromboembolism — Pulmonary embolism doesn't cause a petechial rash.
• Septic shock from wound infection — Septic shock from wound infection doesn't typically cause a petechial rash in the axillae.

⭐ Key point: Prevention: early fracture stabilisation. Treatment is supportive (oxygen, ventilation if needed).$x$, null),
(41, $x$According to the Monro-Kellie doctrine, once compensatory mechanisms (CSF displacement, venous compression) are exhausted, further small increases in intracranial volume cause what?$x$, $x$Sharp, exponential rises in ICP$x$, $x$✅ Correct answer: Sharp, exponential rises in ICP
The MONRO-KELLIE DOCTRINE states that the skull is a rigid box containing brain, blood and CSF. If one increases, others must decrease to keep pressure stable. Initially, CSF and venous blood are pushed out (compensation). Once these are EXHAUSTED, the skull cannot expand, so even SMALL increases in volume cause SHARP, EXPONENTIAL RISES in ICP (shown on the pressure-volume curve).

❌ Why the other options are wrong:
• A linear, predictable rise in ICP — The relationship is not linear; it becomes steeply exponential.
• No change in ICP — ICP rises once compensation is exhausted.
• A decrease in ICP — ICP does not decrease with added volume.

⭐ Key point: At this stage, small things (coughing, suctioning, lying flat) can cause large ICP spikes.$x$, null),
(42, $x$Per the Monro-Kellie doctrine, which two components are displaced early to compensate for a growing intracranial mass lesion?$x$, $x$CSF into the spinal space and venous blood out of the skull$x$, $x$✅ Correct answer: CSF into the spinal space and venous blood out of the skull
When a mass lesion (e.g. a haematoma) grows, the brain first compensates by pushing CSF DOWN into the spinal space and squeezing VENOUS BLOOD OUT of the skull (venous sinuses). This keeps ICP stable for a time.

❌ Why the other options are wrong:
• Arterial blood only, by constriction of the cerebral arteries — Arterial blood is not the main early compensation; reducing arterial flow would cause ischaemia.
• Brain tissue only, by compression of the normal cortex — Brain tissue cannot be compressed significantly without damage.
• Bone, by remodelling and expansion of the skull sutures — In adults, the skull cannot expand (sutures are fused).

⭐ Key point: When compensation fails, ICP rises sharply and herniation may follow.$x$, null),
(43, $x$What is considered the normal range for brain tissue oxygen tension (PbtO2) measured by a Licox monitor?$x$, $x$20-40 mmHg$x$, $x$✅ Correct answer: 20-40 mmHg
Brain tissue oxygen tension (PbtO2) measures the oxygen level in the brain tissue. The normal range is about 20–40 mmHg (often quoted as 25–35). Values below 20 mmHg indicate brain tissue hypoxia, and below 10–15 mmHg indicate severe hypoxia with high risk of brain damage.

❌ Why the other options are wrong:
• 100-150 mmHg — 100–150 mmHg is far too high (it's like arterial PaO2 on extra oxygen).
• 5-10 mmHg — 5–10 mmHg indicates severe brain hypoxia.
• 60-100 mmHg — 60–100 mmHg is the normal arterial PaO2, not brain tissue.

⭐ Key point: Treatment targets: keep PbtO2 above 20 mmHg.$x$, null),
(44, $x$Where is the Licox brain tissue oxygen monitoring catheter typically placed?$x$, $x$Uninjured white matter, often frontal$x$, $x$✅ Correct answer: Uninjured white matter, often frontal
The LICOX catheter is placed into the BRAIN TISSUE, usually in the FRONTAL lobe white matter. It is usually put into an area of UNINJURED (or at-risk) brain to reflect overall brain oxygenation.

❌ Why the other options are wrong:
• Peripheral muscle tissue of the thigh — Placement is in the brain, not the thigh.
• The subarachnoid space over the spine — It is not placed in the subarachnoid space over the spine.
• The ventricle, solely for CSF sampling — The ventricle is used for external ventricular drains (EVDs), not Licox.

⭐ Key point: Licox also measures brain temperature.$x$, null),
(45, $x$An external ventricular drain (EVD) that is leveled too LOW relative to the reference point will most likely cause what?$x$, $x$Over-drainage of CSF, risking ventricular collapse$x$, $x$✅ Correct answer: Over-drainage of CSF, risking ventricular collapse
In an external ventricular drain (EVD), CSF drains when the ICP is higher than the height of the drip chamber. If the system is levelled TOO LOW (e.g. the chamber is lower than intended relative to the reference point at the tragus), CSF will drain too easily: OVER-DRAINAGE. This can collapse the ventricles, tear bridging veins (causing subdural haematoma) or cause herniation upwards.

❌ Why the other options are wrong:
• Immediate infection of the ventricular catheter — Wrong levelling doesn't immediately cause infection.
• Under-drainage of CSF, with a rising ICP — Under-drainage happens when the system is levelled too HIGH.
• No effect, because drainage depends on ICP only — Drainage depends on both ICP AND the height of the system.

⭐ Key point: Re-level the EVD every time the patient's position changes.$x$, null),
(46, $x$According to the Monro-Kellie doctrine, which component can the ICU nurse most directly influence to reduce ICP?$x$, $x$Cerebral blood volume, via head-up position, neck alignment, PaCO₂ control$x$, $x$✅ Correct answer: Cerebral blood volume, via head-up position, neck alignment, PaCO₂ control
Of the three components (brain, blood, CSF), the nurse can most directly influence CEREBRAL BLOOD VOLUME. Measures: HEAD-UP 30°, keeping the NECK STRAIGHT (no tight tube ties or collars compressing the jugular veins) to help venous drainage, and controlling PaCO2 (high CO2 dilates brain vessels; target normal PaCO2 of about 35–40 mmHg).

❌ Why the other options are wrong:
• CSF volume, by encouraging the patient to cough strongly — Coughing RAISES ICP.
• Brain tissue volume, by giving large volumes of IV fluids — Large volumes of IV fluids can increase brain swelling; brain tissue volume is reduced by osmotic therapy (mannitol, hypertonic saline), not fluids.
• Skull volume, by positioning the patient completely flat — Skull volume cannot be changed; lying flat increases ICP.

⭐ Key point: Other nursing measures: avoid hip flexion, cluster care, treat pain and fever, and avoid unnecessary suctioning.$x$, null),
(47, $x$A Licox reading of PbtO₂ 12 mmHg with normal ICP and MAP indicates:$x$, $x$Brain tissue hypoxia; review oxygenation, Hb and perfusion$x$, $x$✅ Correct answer: Brain tissue hypoxia; review oxygenation, Hb and perfusion
A PbtO2 of 12 mmHg is BELOW the normal range (20–40 mmHg), showing BRAIN TISSUE HYPOXIA, even though ICP and MAP are normal. The nurse should review causes: OXYGENATION (SpO2, PaO2, FiO2), HAEMOGLOBIN (anaemia reduces oxygen delivery), PERFUSION (CPP, cardiac output), PaCO2, and also increased demand (fever, seizures).

❌ Why the other options are wrong:
• Over-drainage from the external ventricular drain — Over-drainage of an EVD causes low ICP, not specifically low PbtO2.
• Hyperoxia, so the FiO₂ should be reduced at once — 12 mmHg is low, not high; reducing oxygen would worsen it.
• Normal brain tissue oxygenation needing no action — A low PbtO2 needs action.

⭐ Key point: Brain hypoxia can occur even with normal ICP and CPP — this is why multimodal monitoring is helpful.$x$, null),
(48, $x$The transducer of an external ventricular drain is zeroed at the level of the:$x$, $x$Tragus of the ear (foramen of Monro)$x$, $x$✅ Correct answer: Tragus of the ear (foramen of Monro)
The EVD transducer is ZEROED at the level of the FORAMEN OF MONRO (the opening between the ventricles inside the head). The external landmark for this is the TRAGUS of the ear (the small flap in front of the ear canal) or the outer corner of the eye.

❌ Why the other options are wrong:
• Phlebostatic axis at the 4th intercostal space — The phlebostatic axis is used for haemodynamic (arterial and CVP) transducers.
• Sternal notch — The sternal notch is not the reference.
• Iliac crest — The iliac crest is used for intra-abdominal pressure measurement.

⭐ Key point: Always level and zero the EVD when the head position changes.$x$, null),
(49, $x$Before moving a patient with an open external ventricular drain, the nurse should:$x$, $x$Clamp per protocol, then re-level and reopen after the move$x$, $x$✅ Correct answer: Clamp per protocol, then re-level and reopen after the move
Before moving a patient with an open EVD, CLAMP THE DRAIN (per protocol) to prevent sudden over-drainage or under-drainage from position changes during the move. After the move, RE-LEVEL the system to the tragus and REOPEN it. Never forget to reopen it, or ICP may rise.

❌ Why the other options are wrong:
• Disconnect the drain from the bag for the transfer — Disconnecting the drain risks infection and loss of CSF.
• Lower the drip chamber to the floor during the move — Lowering the chamber to the floor causes massive over-drainage.
• Leave it open while sitting the patient upright — Leaving it open while sitting up changes the pressure relationship and causes over-drainage.

⭐ Key point: Clamped EVDs must be closely monitored; ICP can rise rapidly.$x$, null),
(50, $x$An EVD set at 15 cmH₂O above the tragus means CSF drains when:$x$, $x$ICP exceeds about 15 cmH₂O$x$, $x$✅ Correct answer: ICP exceeds about 15 cmH₂O
An EVD set at 15 cmH2O above the tragus means CSF drains only when the ICP is HIGHER THAN 15 cmH2O (about 11 mmHg). If ICP is below 15 cmH2O, CSF will not drain. This controls ICP by allowing drainage only when pressure exceeds the set level.

❌ Why the other options are wrong:
• Whenever the patient coughs only — Coughing can transiently raise ICP above the level, but drainage is not limited to coughing.
• ICP falls below 15 cmH₂O — CSF does not drain when ICP falls below the level.
• The patient's BP exceeds 15 mmHg — BP is not the threshold.

⭐ Key point: 1 mmHg = 1.36 cmH2O. Always check whether the order is in cmH2O or mmHg.$x$, null),
(51, $x$A sudden increase in clear EVD drainage with a falling GCS and headache on sitting up suggests:$x$, $x$Over-drainage causing low ICP or subdural collection$x$, $x$✅ Correct answer: Over-drainage causing low ICP or subdural collection
A sudden increase in CLEAR EVD drainage, a FALLING GCS and HEADACHE when sitting up suggest OVER-DRAINAGE: too much CSF is being removed, causing LOW ICP (intracranial hypotension). The brain can sag, and bridging veins can tear, causing a SUBDURAL COLLECTION. Check the levelling of the EVD and whether the patient's position changed.

❌ Why the other options are wrong:
• Cerebral vasospasm after subarachnoid bleeding — Vasospasm causes neurological deterioration, but not increased drainage.
• A normal response to sitting the patient upright — Sitting upright should not cause these changes if the EVD is properly levelled.
• A blocked drain with a steadily rising ICP — A blocked drain would cause REDUCED drainage, not increased.

⭐ Key point: Check the EVD level whenever the patient moves, and look at drainage volumes hourly.$x$, null),
(52, $x$During targeted temperature management, shivering should be prevented because it:$x$, $x$It raises metabolic rate and O₂ use, opposing neuroprotection$x$, $x$✅ Correct answer: It raises metabolic rate and O₂ use, opposing neuroprotection
SHIVERING is the body's natural way to produce heat. It sharply INCREASES METABOLIC RATE and OXYGEN CONSUMPTION (up to several times normal), increases CO2 production, and raises ICP. This OPPOSES the brain-protective goal of targeted temperature management (TTM), which is to reduce brain metabolism. Shivering is controlled with sedation, analgesia, magnesium, skin warming and, if needed, neuromuscular blockade.

❌ Why the other options are wrong:
• It improves the accuracy of the temperature probes — Shivering does not improve the accuracy of temperature probes.
• It reduces cerebral oxygen demand and so is beneficial — Shivering INCREASES oxygen demand; it is harmful.
• It lowers the core temperature far too quickly — Shivering produces heat, which makes the core temperature harder to lower.

⭐ Key point: Use the Bedside Shivering Assessment Scale (BSAS) to monitor shivering.$x$, null),
(53, $x$During the cooling phase of induced hypothermia, the nurse should monitor closely for:$x$, $x$Bradycardia, low potassium, high glucose, coagulopathy$x$, $x$✅ Correct answer: Bradycardia, low potassium, high glucose, coagulopathy
During cooling: BRADYCARDIA (the heart slows); LOW POTASSIUM (potassium moves into cells, and cold causes diuresis); HIGH GLUCOSE (insulin resistance and reduced insulin release); and COAGULOPATHY (cold slows clotting enzymes and platelets, increasing bleeding risk). Also watch for shivering, infections, and low magnesium and phosphate.

❌ Why the other options are wrong:
• Tachycardia, high potassium and low blood glucose — Hypothermia causes bradycardia (not tachycardia), low potassium (not high), and HIGH glucose (not low).
• Polycythaemia, hypercalcaemia and hypernatraemia — These are not typical effects of hypothermia.
• Hypertension with a shortened bleeding time only — Hypothermia prolongs bleeding time (not shortens it).

⭐ Key point: During rewarming, potassium moves back out of the cells, so hyperkalaemia can occur. Avoid giving too much potassium during cooling.$x$, null),
(54, $x$Rewarming after targeted temperature management should be:$x$, $x$Slow, about 0.25–0.5 °C per hour$x$, $x$✅ Correct answer: Slow, about 0.25–0.5 °C per hour
After TTM, rewarming must be SLOW and CONTROLLED, about 0.25–0.5 °C PER HOUR. Rapid rewarming can cause VASODILATION (hypotension), sudden potassium release (hyperkalaemia), raised ICP, seizures and rebound fever. Slow rewarming protects the brain.

❌ Why the other options are wrong:
• Stopped at 33 °C permanently — Hypothermia is not maintained permanently; it's for a set time (usually 24 hours).
• Rapid, 2–3 °C per hour — 2–3 °C per hour is too fast and dangerous.
• As fast as possible with hot fluids — Rewarming "as fast as possible" with hot fluids is dangerous.

⭐ Key point: Prevent fever (over 37.7 °C) for at least 72 hours after cardiac arrest.$x$, null),
(55, $x$Guillain-Barré syndrome patients in ICU need serial measurement of:$x$, $x$Vital capacity and negative inspiratory force$x$, $x$✅ Correct answer: Vital capacity and negative inspiratory force
GUILLAIN-BARRÉ SYNDROME (GBS) causes ascending muscle weakness that can affect the BREATHING MUSCLES (diaphragm). Serial measurement of VITAL CAPACITY (VC) and NEGATIVE INSPIRATORY FORCE (NIF) detects respiratory weakness early, before blood gases worsen. A VC below 20 mL/kg, NIF weaker than −30 cmH2O, or rapid decline indicates the need for intubation ("20/30/40 rule").

❌ Why the other options are wrong:
• Arterial lactate and pH every hour — Lactate and pH are late signs of respiratory failure.
• Serum calcium and magnesium daily — Calcium and magnesium are not specific monitoring tools for GBS.
• Peak expiratory flow rate every 4 hours — Peak flow measures airway obstruction (asthma), not muscle weakness.

⭐ Key point: SpO2 and blood gases may stay normal until the patient suddenly fails — measure VC regularly.$x$, null),
(56, $x$Autonomic instability in Guillain-Barré syndrome may present as:$x$, $x$Swings in BP and heart rate, with arrhythmias$x$, $x$✅ Correct answer: Swings in BP and heart rate, with arrhythmias
GBS damages the AUTONOMIC NERVES (that control BP, heart rate, sweating and gut). This causes AUTONOMIC INSTABILITY: large SWINGS in BP (severe high and low) and heart rate (tachycardia or bradycardia), and ARRHYTHMIAS (including sudden asystole, especially during suctioning). Other signs: urinary retention, ileus and abnormal sweating.

❌ Why the other options are wrong:
• Constant bradycardia with a low temperature — Constant bradycardia with low temperature is not typical; autonomic instability causes swings.
• Hypoglycaemia with recurrent seizures — Hypoglycaemia with seizures is not typical of GBS.
• Hyperkalaemia with peaked T waves — Hyperkalaemia is not a feature of autonomic dysfunction in GBS.

⭐ Key point: Monitor ECG continuously, and be prepared for bradycardia during suctioning (have atropine ready).$x$, null),
(57, $x$The specific treatments that shorten the course of Guillain-Barré syndrome are:$x$, $x$IV immunoglobulin or plasma exchange$x$, $x$✅ Correct answer: IV immunoglobulin or plasma exchange
GBS is an autoimmune disease where antibodies attack the peripheral nerves. IV IMMUNOGLOBULIN (IVIG) or PLASMA EXCHANGE (plasmapheresis) shorten the course by neutralising or removing these antibodies. They are most effective when started within 2 weeks of symptoms.

❌ Why the other options are wrong:
• Pyridostigmine and atropine — Pyridostigmine and atropine are used in myasthenia gravis.
• Dantrolene and cooling — Dantrolene and cooling treat malignant hyperthermia.
• High-dose steroids and antibiotics — Steroids do NOT help GBS, and antibiotics are not indicated.

⭐ Key point: IVIG and plasma exchange are equally effective; don't combine them.$x$, null),
(58, $x$Critical illness polyneuropathy differs from Guillain-Barré syndrome in that it:$x$, $x$It develops in sepsis and MOF, with axonal loss$x$, $x$✅ Correct answer: It develops in sepsis and MOF, with axonal loss
CRITICAL ILLNESS POLYNEUROPATHY (CIP) develops in patients with SEPSIS and MULTI-ORGAN FAILURE (MOF) during ICU stays. It damages the AXONS (the nerve fibres) of peripheral nerves, causing limb weakness and difficulty weaning from the ventilator.

❌ Why the other options are wrong:
• It follows a diarrhoeal illness, with demyelination — A diarrhoeal illness followed by demyelination describes GBS (e.g. after Campylobacter).
• It always affects the facial muscles first — CIP usually spares facial muscles; it mainly affects the limbs.
• It causes high CSF protein with no other cause — High CSF protein (with normal cells) is typical of GBS, not CIP.

⭐ Key point: Nerve conduction studies show reduced amplitudes in CIP (axonal) and slowed conduction in GBS (demyelinating).$x$, null),
(59, $x$A key risk factor for ICU-acquired weakness that the nurse can reduce is:$x$, $x$Prolonged immobility and deep sedation$x$, $x$✅ Correct answer: Prolonged immobility and deep sedation
ICU-ACQUIRED WEAKNESS (ICU-AW) is muscle and nerve weakness developing in ICU. Key risk factors that the nurse can reduce are PROLONGED IMMOBILITY and DEEP SEDATION. Muscles waste rapidly when not used. Other risk factors: sepsis, multi-organ failure, hyperglycaemia, steroids and neuromuscular blockers.

❌ Why the other options are wrong:
• Early mobilisation and physiotherapy — Early mobilisation and physiotherapy PREVENT ICU-AW; they are not risk factors.
• Tight glucose control below 10 mmol/L — Good glucose control reduces risk; it's not a risk factor.
• Daily sedation holds with SBTs — Daily sedation holds reduce risk; they're not a risk factor.

⭐ Key point: The ABCDEF bundle helps prevent ICU-AW: early mobility is "E".$x$, null),
(60, $x$The Medical Research Council (MRC) sum score is used to:$x$, $x$Grade muscle strength and diagnose ICU-AW$x$, $x$✅ Correct answer: Grade muscle strength and diagnose ICU-AW
The MRC SUM SCORE grades the strength of 6 muscle groups on both sides (12 in total) from 0 (no movement) to 5 (normal strength). The total is 0–60. A score below 48 suggests ICU-ACQUIRED WEAKNESS (ICU-AW).

❌ Why the other options are wrong:
• Measure the depth of sedation hourly — Sedation depth is measured using RASS.
• Assess delirium in ventilated patients — Delirium is assessed using CAM-ICU.
• Predict ICU mortality on admission — Mortality prediction uses scores like APACHE or SOFA.

⭐ Key point: The patient must be awake and cooperative for the MRC score.$x$, null),
(61, $x$Intra-abdominal hypertension is:$x$, $x$When IAP is \>12 mmHg without organ dysfunction$x$, $x$✅ Correct answer: When IAP is \>12 mmHg without organ dysfunction
INTRA-ABDOMINAL HYPERTENSION (IAH) is defined as a sustained or repeated INTRA-ABDOMINAL PRESSURE (IAP) of 12 mmHg OR MORE. Organ dysfunction is NOT required for IAH. If IAP is above 20 mmHg WITH new organ dysfunction, this is ABDOMINAL COMPARTMENT SYNDROME (ACS).

❌ Why the other options are wrong:
• When IAP is consistently \>12 mmHg with organ dysfunction — If organ dysfunction is present with very high pressure (over 20), it's ACS, not just IAH.
• When IAP is consistently \<12 mmHg with organ dysfunction — An IAP below 12 is not hypertension.
• When IAP is consistently \> 5 mmHg without organ dysfunction — Normal IAP in critically ill adults is about 5–7 mmHg; above 5 is not IAH.

⭐ Key point: IAH grades: I (12–15), II (16–20), III (21–25), IV (over 25 mmHg).$x$, null),
(62, $x$The following is a secondary abdominal compartment syndrome.$x$, $x$Septic shock$x$, $x$✅ Correct answer: Septic shock
Abdominal compartment syndrome (ACS) is divided by its cause. PRIMARY ACS comes from a problem INSIDE the abdomen or pelvis (e.g. abdominal trauma, bleeding, pancreatitis, bowel obstruction, abdominal surgery). SECONDARY ACS comes from a problem OUTSIDE the abdomen. In SEPTIC SHOCK, the patient receives very large volumes of IV fluid, and inflammation makes the capillaries leaky ("capillary leak"). Fluid moves into the bowel wall and tissues, the gut swells, and pressure inside the abdomen rises — even though the original disease was not in the abdomen. Severe burns and massive transfusion are other causes of secondary ACS.

❌ Why the other options are wrong:
• Ascites — Ascites (fluid in the abdomen from liver disease or abdominal disease) is an abdominal cause, so it leads to PRIMARY ACS when it raises the pressure.
• Pancreatitis — Pancreatitis is an inflammatory disease of an abdominal organ, so it causes PRIMARY ACS.
• Trauma — Abdominal trauma (bleeding, swollen injured bowel, packing) is the classic cause of PRIMARY ACS.

⭐ Key point: Primary = abdominal cause; Secondary = non-abdominal cause (sepsis, burns, massive fluid); Recurrent = ACS returns after earlier treatment. Measure bladder pressure in any patient who has had massive fluid resuscitation.$x$, null),
(63, $x$Intra-abdominal pressure is measured via the bladder with the transducer zeroed at the:$x$, $x$Mid-axillary line at the iliac crest, supine, end-expiration$x$, $x$✅ Correct answer: Mid-axillary line at the iliac crest, supine, end-expiration
IAP is measured via the bladder. The transducer is zeroed at the MID-AXILLARY LINE at the level of the ILIAC CREST, with the patient SUPINE, and measured at END-EXPIRATION. A small volume (no more than 25 mL) of saline is instilled into the bladder.

❌ Why the other options are wrong:
• The symphysis pubis, during a deep inspiration — The symphysis pubis is not the standard reference, and readings are taken at end-expiration.
• Phlebostatic axis, 4th intercostal space, at end-inspiration — The phlebostatic axis is for haemodynamic monitoring, and readings are at end-expiration.
• The umbilicus, with the patient sitting up at 45 degrees — The patient should be supine, not sitting.

⭐ Key point: Ensure abdominal muscles are relaxed (no contractions); measure in mmHg.$x$, null),
(64, $x$Abdominal perfusion pressure (APP) is calculated as:$x$, $x$Mean arterial pressure minus intra-abdominal pressure$x$, $x$✅ Correct answer: Mean arterial pressure minus intra-abdominal pressure
ABDOMINAL PERFUSION PRESSURE (APP) = MEAN ARTERIAL PRESSURE (MAP) − INTRA-ABDOMINAL PRESSURE (IAP). It reflects blood flow to the abdominal organs. A target APP of at least 60 mmHg is recommended.

❌ Why the other options are wrong:
• Intra-abdominal pressure minus CVP — IAP minus CVP is not the correct formula.
• Diastolic pressure plus intra-abdominal pressure — Diastolic pressure plus IAP is not the correct formula.
• Systolic pressure minus intra-abdominal pressure — Systolic pressure is not used; MAP is.

⭐ Key point: This is similar to cerebral perfusion pressure (CPP = MAP − ICP).$x$, null),
(65, $x$Organ effects of abdominal compartment syndrome include:$x$, $x$Oliguria, high airway pressures, low cardiac output$x$, $x$✅ Correct answer: Oliguria, high airway pressures, low cardiac output
In ACS, high pressure in the abdomen squeezes the organs: KIDNEYS (compressed renal veins and arteries → OLIGURIA); LUNGS (the diaphragm is pushed up → HIGH AIRWAY PRESSURES, low lung compliance and hypoxia); HEART (compressed inferior vena cava → reduced venous return → LOW CARDIAC OUTPUT).

❌ Why the other options are wrong:
• Hypertension with increased venous return — ACS reduces venous return and causes hypotension.
• Improved lung compliance and diuresis — ACS worsens lung compliance and causes oliguria.
• Polyuria, low airway pressures, high cardiac output — ACS causes oliguria (not polyuria), high (not low) airway pressures, and low (not high) cardiac output.

⭐ Key point: Monitor IAP in at-risk patients (massive fluids, abdominal surgery, trauma, pancreatitis).$x$, null),
(66, $x$Definitive treatment of abdominal compartment syndrome with organ failure is:$x$, $x$Surgical decompressive laparotomy$x$, $x$✅ Correct answer: Surgical decompressive laparotomy
The DEFINITIVE treatment of ACS with organ failure is SURGICAL DECOMPRESSIVE LAPAROTOMY: opening the abdomen to relieve pressure. The abdomen is often left open (with a temporary closure) until swelling settles.

❌ Why the other options are wrong:
• Oral laxatives and enemas — Laxatives and enemas may help mild IAH but are not definitive treatment of ACS.
• High-dose diuretics alone — Diuretics may help in fluid overload but are not definitive.
• Increasing PEEP to splint the abdomen — Increasing PEEP worsens ACS.

⭐ Key point: Non-surgical measures (sedation, NG decompression, fluid removal) may be tried first, but surgery is needed if organs are failing.$x$, null),
(67, $x$Stress ulcer prophylaxis in ICU is clearly indicated in a patient who:$x$, $x$Ventilated for over 48 hours, or with a coagulopathy$x$, $x$✅ Correct answer: Ventilated for over 48 hours, or with a coagulopathy
STRESS ULCER PROPHYLAXIS (e.g. a PPI or H2 blocker) is clearly indicated in patients at high risk of bleeding: those MECHANICALLY VENTILATED FOR OVER 48 HOURS and those with a COAGULOPATHY. Other risk factors: shock, sepsis, severe burns, and head or spinal injury.

❌ Why the other options are wrong:
• With no bleeding risk factors and a short stay — Patients with no risk factors don't need prophylaxis.
• Taking low-dose aspirin only, with no other risks — Low-dose aspirin alone is not usually an indication in ICU.
• Eating a full diet after minor uncomplicated surgery — A patient eating normally after minor surgery doesn't need prophylaxis.

⭐ Key point: Stop prophylaxis when risk factors resolve, since it has side effects.$x$, null),
(68, $x$A disadvantage of prolonged acid suppression for stress ulcer prophylaxis is an increased risk of:$x$, $x$Ventilator-associated pneumonia and C. difficile$x$, $x$✅ Correct answer: Ventilator-associated pneumonia and C. difficile
Stomach acid kills bacteria. Prolonged ACID SUPPRESSION allows bacteria to grow in the stomach, which can travel up and be aspirated into the lungs, increasing VENTILATOR-ASSOCIATED PNEUMONIA (VAP). It also increases CLOSTRIDIOIDES DIFFICILE infection (diarrhoea).

❌ Why the other options are wrong:
• Upper GI bleeding from rebound acid — Acid suppression does not cause upper GI bleeding; it prevents it.
• Peptic ulcer perforation and peritonitis — Acid suppression doesn't cause perforation.
• Hypercalcaemia and kidney stones — Acid suppression doesn't cause hypercalcaemia or kidney stones.

⭐ Key point: Use prophylaxis only when indicated, and review it daily.$x$, null),
(69, $x$The most effective natural protection against stress ulceration in ICU is:$x$, $x$Early enteral feeding and good splanchnic perfusion$x$, $x$✅ Correct answer: Early enteral feeding and good splanchnic perfusion
EARLY ENTERAL FEEDING protects the stomach lining by buffering acid and maintaining blood flow to the gut. GOOD SPLANCHNIC PERFUSION (adequate blood flow to the gut, through good BP and cardiac output) keeps the lining healthy.

❌ Why the other options are wrong:
• Prolonged fasting before each procedure — Prolonged fasting increases stress ulcer risk.
• Giving liquid antacids every hour by NG tube — Hourly antacids are not the most effective protection.
• Keeping the patient nil by mouth until extubation — Keeping patients nil by mouth increases risk.

⭐ Key point: Stress ulcers are caused by poor blood flow to the gut lining.$x$, null),
(70, $x$Ranson's criteria on admission for acute (non-gallstone) pancreatitis include:$x$, $x$Age over 55, WBC over 16 000, glucose over 11, raised LDH and AST$x$, $x$✅ Correct answer: Age over 55, WBC over 16 000, glucose over 11, raised LDH and AST
RANSON'S CRITERIA assess the severity of pancreatitis. On ADMISSION (non-gallstone): AGE over 55; WBC over 16,000; GLUCOSE over 11 mmol/L (200 mg/dL); LDH over 350 IU/L; AST over 250 IU/L. Further criteria are assessed at 48 hours (e.g. calcium, PaO2, fluid sequestration). 3 or more indicates severe pancreatitis.

❌ Why the other options are wrong:
• Serum sodium, potassium and chloride with urine output — Electrolytes and urine output are not part of the admission criteria.
• Haemoglobin, platelet count and serum bilirubin at admission — Haemoglobin, platelets and bilirubin are not part of the admission criteria.
• Serum amylase over 3 times normal and a raised serum lipase — Amylase and lipase diagnose pancreatitis but are not part of Ranson's severity criteria.

⭐ Key point: Other scoring systems: Glasgow-Imrie, APACHE II and BISAP.$x$, null),
(71, $x$Grey Turner's sign in severe pancreatitis is:$x$, $x$Bruising of the flanks$x$, $x$✅ Correct answer: Bruising of the flanks
GREY TURNER'S SIGN is a bluish-purple BRUISING over the FLANKS (the sides of the abdomen, between the ribs and the hip). In severe (haemorrhagic or necrotising) pancreatitis, the inflamed pancreas bleeds, and the blood tracks backwards through the tissue behind the abdomen (the retroperitoneum) to reach the flanks. It usually appears 24–48 hours after onset and indicates SEVERE disease with a higher risk of death. It can also be seen in other causes of retroperitoneal bleeding (e.g. ruptured aortic aneurysm, ruptured ectopic pregnancy).

❌ Why the other options are wrong:
• A palpable gallbladder — A palpable, non-tender gallbladder with jaundice is COURVOISIER'S sign, suggesting cancer of the pancreatic head or bile duct obstruction, not Grey Turner's sign.
• Bruising around the umbilicus — Bruising around the UMBILICUS is CULLEN'S sign. It also indicates retroperitoneal or intra-abdominal bleeding, but at a different place.
• Yellowing of the sclera — Yellow sclera is JAUNDICE, which may occur in gallstone pancreatitis, but is not Grey Turner's sign.

⭐ Key point: Memory aid: Grey TURNer = TURN the patient to see the flanks; CULLEN = belly button (umbilicus). Both are late signs of severe disease.$x$, null),
(72, $x$The most important early treatment priority in severe acute pancreatitis is:$x$, $x$Goal-directed IV fluid resuscitation$x$, $x$✅ Correct answer: Goal-directed IV fluid resuscitation
In severe acute pancreatitis, inflammation causes massive fluid loss into the tissues (third spacing), leading to hypovolaemia and organ failure. The most important early priority is GOAL-DIRECTED IV FLUID RESUSCITATION (e.g. Ringer's lactate), guided by heart rate, BP, urine output and lactate. Avoid over-resuscitation.

❌ Why the other options are wrong:
• Early surgery to remove the pancreas — Early surgery is avoided; it increases mortality.
• Strict fasting for 2 weeks — Early feeding (within 24–72 hours) is encouraged; prolonged fasting isn't.
• Prophylactic antibiotics in all cases — Prophylactic antibiotics are not recommended; they're used only for infected necrosis.

⭐ Key point: Also give analgesia, monitor for organ failure and start early enteral nutrition.$x$, null),
(73, $x$Hypocalcaemia in severe pancreatitis is caused by:$x$, $x$Saponification of calcium in fat necrosis$x$, $x$✅ Correct answer: Saponification of calcium in fat necrosis
In severe pancreatitis, enzymes break down fat around the pancreas (FAT NECROSIS). The released fatty acids bind to CALCIUM, forming "soaps" (SAPONIFICATION). This lowers the blood calcium (HYPOCALCAEMIA). A calcium below 2 mmol/L indicates severe disease.

❌ Why the other options are wrong:
• Hyperparathyroidism from pancreatic damage — Pancreatitis does not cause hyperparathyroidism; hyperparathyroidism can cause pancreatitis.
• Retention of calcium by the kidneys — The kidneys do not retain calcium in pancreatitis.
• Excess calcium absorption from the gut — Calcium absorption is not increased.

⭐ Key point: Signs of hypocalcaemia: tingling, muscle cramps, Chvostek's and Trousseau's signs, and a long QT interval.$x$, null),
(74, $x$The hallmark early sign of necrotising fasciitis is:$x$, $x$Pain out of proportion to the skin changes$x$, $x$✅ Correct answer: Pain out of proportion to the skin changes
NECROTISING FASCIITIS is a rapidly spreading infection of the deep tissues. The hallmark early sign is PAIN OUT OF PROPORTION to the skin appearance — the skin may look only slightly red, but the pain is severe. Later signs: swelling, blisters, skin discoloration, crepitus and septic shock.

❌ Why the other options are wrong:
• Itching with small blisters only — Itching with small blisters is not typical.
• A localised abscess that is fluctuant — Necrotising fasciitis spreads along tissue planes; it's not a localised fluctuant abscess.
• A painless, slowly spreading red rash — It is extremely PAINFUL and spreads rapidly.

⭐ Key point: Mark the edge of redness and monitor its spread hourly. The LRINEC score can help with diagnosis.$x$, null),
(75, $x$Type II necrotising fasciitis is caused by:$x$, $x$Group A Streptococcus, often with S. aureus$x$, $x$✅ Correct answer: Group A Streptococcus, often with S. aureus
TYPE II necrotising fasciitis is caused by GROUP A STREPTOCOCCUS (Streptococcus pyogenes), alone or with STAPHYLOCOCCUS AUREUS. It often affects the limbs of healthy people, and can cause toxic shock syndrome.

❌ Why the other options are wrong:
• Mixed anaerobic and aerobic gut organisms — Mixed anaerobic and aerobic gut organisms cause TYPE I (polymicrobial).
• Vibrio vulnificus from contact with seawater — Vibrio vulnificus causes TYPE III (marine).
• Candida species after broad-spectrum antibiotics — Candida is a fungal cause (sometimes Type IV), not Type II.

⭐ Key point: Type I is the commonest, often in diabetics or after surgery.$x$, null),
(76, $x$The definitive treatment of necrotising fasciitis is:$x$, $x$Urgent radical debridement with IV antibiotics$x$, $x$✅ Correct answer: Urgent radical debridement with IV antibiotics
NECROTISING FASCIITIS is a rapidly spreading infection that kills the fascia and the tissues around it. The dead tissue has no blood supply, so antibiotics given IV CANNOT REACH the infection there. The bacteria keep multiplying in the dead tissue and release toxins that cause septic shock. The DEFINITIVE treatment is therefore URGENT RADICAL SURGICAL DEBRIDEMENT — cutting away all dead and infected tissue until healthy, bleeding tissue is reached — together with high-dose broad-spectrum IV ANTIBIOTICS (often including clindamycin to switch off toxin production). Patients often return to theatre every 24–48 hours for further debridement. Each hour of delay increases the death rate.

❌ Why the other options are wrong:
• IV antibiotics alone for at least two weeks — Antibiotics alone fail, because they cannot penetrate dead tissue. Without surgery the death rate is very high.
• Hyperbaric oxygen therapy alone, daily — Hyperbaric oxygen may be used as an extra treatment in some centres, but it never replaces surgery.
• Warm compresses, elevation and analgesia — Warm compresses, elevation and painkillers are treatments for simple cellulitis. They would allow necrotising fasciitis to spread and kill.

⭐ Key point: ICU care after debridement: fluid resuscitation, vasopressors for septic shock, pain relief, wound care (often negative-pressure dressings), nutrition, and monitoring for kidney failure.$x$, null),
(77, $x$After transurethral resection of the prostate, continuous bladder irrigation output appears bright red with clots. The ICU nurse should:$x$, $x$Increase irrigation, check the catheter and inform the surgeon$x$, $x$✅ Correct answer: Increase irrigation, check the catheter and inform the surgeon
After TURP, continuous bladder irrigation (CBI) keeps the bladder clear of clots. BRIGHT RED drainage with CLOTS suggests active (often arterial) bleeding. The nurse should INCREASE THE IRRIGATION RATE (to flush clots and prevent blockage), CHECK THE CATHETER is draining (not blocked), monitor vital signs, and INFORM THE SURGEON.

❌ Why the other options are wrong:
• Clamp the catheter so that the clots tamponade the bleeding — Clamping the catheter causes bladder distension and possible rupture.
• Stop the irrigation completely until the bleeding settles — Stopping irrigation lets clots form and block the catheter.
• Remove the catheter and reinsert a smaller one urgently — Removing the catheter is dangerous; it may be difficult to reinsert.

⭐ Key point: The drainage should be light pink ("rosé"). Dark red with clots means bleeding.$x$, null),
(78, $x$A post-TURP patient becomes confused with BP 170/100, HR 50 and sodium 118 mmol/L. This is:$x$, $x$TURP syndrome from absorbed hypotonic irrigation$x$, $x$✅ Correct answer: TURP syndrome from absorbed hypotonic irrigation
TURP SYNDROME occurs when large volumes of HYPOTONIC irrigation fluid (e.g. glycine) are ABSORBED into the bloodstream through opened prostate veins. This causes FLUID OVERLOAD (hypertension) and DILUTIONAL HYPONATRAEMIA (sodium 118). Low sodium causes brain swelling (confusion, seizures). Reflex BRADYCARDIA can occur.

❌ Why the other options are wrong:
• Cerebral haemorrhage from the hypertension — Cerebral haemorrhage would not explain the low sodium.
• Septic shock from a urinary tract infection — Septic shock causes hypotension, not hypertension.
• Hypoglycaemia from prolonged pre-op fasting — Hypoglycaemia doesn't cause hyponatraemia and hypertension.

⭐ Key point: Treat with fluid restriction, diuretics, and hypertonic saline if severe. Correct sodium slowly.$x$, null),
(79, $x$After relief of chronic urinary tract obstruction, the ICU nurse should anticipate:$x$, $x$Post-obstructive diuresis with hypovolaemia and electrolyte loss$x$, $x$✅ Correct answer: Post-obstructive diuresis with hypovolaemia and electrolyte loss
After relief of CHRONIC URINARY OBSTRUCTION (e.g. a long-standing enlarged prostate), the kidneys may produce very large volumes of urine (POST-OBSTRUCTIVE DIURESIS). This is due to excess fluid and urea being cleared, and the kidneys temporarily being unable to concentrate urine. This can cause HYPOVOLAEMIA and ELECTROLYTE LOSS (sodium, potassium).

❌ Why the other options are wrong:
• Fluid overload, so IV fluids must be restricted at once — Patients may become dehydrated; fluids may need to be given, not restricted.
• Hyperkalaemia from potassium retention by the damaged kidneys — Potassium is often lost, not retained.
• Persistent anuria for several days after the catheter is passed — Urine output usually increases, not stops.

⭐ Key point: Monitor urine output hourly, and replace fluids (often matching a proportion of output).$x$, null),
(80, $x$A pelvic fracture with blood at the urethral meatus suggests:$x$, $x$Urethral injury; avoid urethral catheterisation until imaged$x$, $x$✅ Correct answer: Urethral injury; avoid urethral catheterisation until imaged
A pelvic fracture with BLOOD AT THE URETHRAL MEATUS suggests a URETHRAL INJURY. Do NOT insert a urethral catheter until a RETROGRADE URETHROGRAM (imaging) confirms the urethra is intact. A catheter could turn a partial tear into a complete one.

❌ Why the other options are wrong:
• Bladder infection; urgent urethral catheter is needed — Blood at the meatus does not mean infection.
• Renal injury that will need an urgent nephrectomy — Kidney injury causes haematuria, not usually meatal blood.
• A normal finding after any pelvic fracture — Blood at the meatus is never a normal finding.

⭐ Key point: Other signs of urethral injury: inability to pass urine, a high-riding prostate, and perineal bruising.$x$, null),
(81, $x$The main indication for exchange blood transfusion in a newborn is:$x$, $x$Severe jaundice despite intensive phototherapy$x$, $x$✅ Correct answer: Severe jaundice despite intensive phototherapy
EXCHANGE TRANSFUSION is used mainly for SEVERE JAUNDICE (very high unconjugated bilirubin) that does not respond to INTENSIVE PHOTOTHERAPY, or shows signs of brain damage (acute bilirubin encephalopathy). It removes bilirubin and antibodies (e.g. Rh disease) and corrects anaemia.

❌ Why the other options are wrong:
• Mild physiological jaundice on day 3 — Mild physiological jaundice resolves on its own or with phototherapy.
• Uncomplicated prematurity below 34 weeks — Prematurity alone is not an indication.
• Neonatal hypoglycaemia not responding to feeds — Hypoglycaemia is treated with IV dextrose.

⭐ Key point: Use bilirubin charts for the baby's age and risk factors to decide on treatment.$x$, null),
(82, $x$A double-volume exchange transfusion in a neonate uses about:$x$, $x$160–180 mL/kg of blood$x$, $x$✅ Correct answer: 160–180 mL/kg of blood
An EXCHANGE TRANSFUSION removes the baby's blood in small amounts and replaces it with donor blood. A term newborn's blood volume is about 80–90 mL per kg. A "DOUBLE-VOLUME" exchange replaces TWICE this volume: 2 × 80–90 = 160–180 mL/kg. For example, for a 3 kg baby: 3 × 170 = about 510 mL in total. A double-volume exchange removes about 85–90% of the baby's red cells (including antibody-coated cells in haemolytic disease) and about 50% of the circulating bilirubin. Bilirubin also moves out of the tissues back into the blood afterwards, so levels may rebound and must be rechecked.

❌ Why the other options are wrong:
• 40–60 mL/kg of blood — 40–60 mL/kg is less than even a single blood volume, so it would remove too little bilirubin and too few antibody-coated cells.
• 300–350 mL/kg of blood — 300–350 mL/kg is almost four times the baby's blood volume; it is unnecessary and increases risks (e.g. electrolyte problems, prolonged procedure).
• 80–90 mL/kg of blood — 80–90 mL/kg is a SINGLE-volume exchange (one blood volume). It is used for some conditions (e.g. polycythaemia uses a partial exchange) but not for a double-volume exchange.

⭐ Key point: Monitor during exchange: heart rate, breathing, temperature, blood glucose, calcium and potassium. Record each aliquot removed and given, so the running total is always known.$x$, null),
(83, $x$During exchange transfusion, blood is removed and replaced in small aliquots mainly to:$x$, $x$Avoid sudden swings in blood volume$x$, $x$✅ Correct answer: Avoid sudden swings in blood volume
Removing and replacing blood in SMALL ALIQUOTS (e.g. 5–10 mL/kg at a time) avoids SUDDEN SWINGS IN BLOOD VOLUME. Large swings can cause changes in BP, heart rate and brain blood flow, risking heart failure or brain bleeding.

❌ Why the other options are wrong:
• Allow more bilirubin to be removed — Small aliquots are mainly for safety.
• Speed up the whole procedure — Small aliquots make the procedure slower.
• Reduce the amount of donor blood used — The amount of donor blood depends on the total volume needed.

⭐ Key point: The procedure takes 1–2 hours. Monitor vital signs, glucose and calcium closely.$x$, null),
(84, $x$A complication of exchange transfusion that the nurse must monitor for is:$x$, $x$Hypocalcaemia from citrate, with jitteriness$x$, $x$✅ Correct answer: Hypocalcaemia from citrate, with jitteriness
Stored donor blood contains CITRATE, which is added as an anticoagulant. Citrate works by BINDING CALCIUM in the blood. During an exchange transfusion, a large amount of citrated blood is given to a very small baby, so the baby's ionised calcium can drop: HYPOCALCAEMIA. Signs in a newborn include JITTERINESS, irritability, tremors, twitching, seizures, apnoea, and prolonged QT or arrhythmias on the ECG. Calcium gluconate may be given slowly IV, with ECG monitoring, if hypocalcaemia occurs.

❌ Why the other options are wrong:
• Polycythaemia from excess donor cells — Polycythaemia does not occur because the volume taken out equals the volume given in; the aim is to keep the blood volume stable.
• Hypercalcaemia from the stored blood — Citrate LOWERS calcium; it does not cause hypercalcaemia.
• Persistent hyperglycaemia for days — Donor blood contains glucose, which can cause a brief rise in glucose, but the bigger danger after exchange is rebound HYPOglycaemia (the baby's insulin rises). Persistent hyperglycaemia for days is not typical.

⭐ Key point: Other complications of exchange transfusion: hypoglycaemia, hyperkalaemia, thrombocytopenia, infection, air embolism, portal vein thrombosis, necrotising enterocolitis, and cardiac arrhythmias.$x$, null),
(85, $x$Blood for neonatal exchange transfusion should ideally be:$x$, $x$Fresh, irradiated, CMV-negative and warmed$x$, $x$✅ Correct answer: Fresh, irradiated, CMV-negative and warmed
Blood for neonatal exchange transfusion should be: FRESH (less than 5 days old — lower potassium and better quality), IRRADIATED (prevents graft-versus-host disease), CMV-NEGATIVE (prevents infection), and WARMED (prevents hypothermia).

❌ Why the other options are wrong:
• Taken from a parent to reduce reactions — Parental blood may carry antibodies causing the problem (e.g. Rh or ABO incompatibility).
• Over 3 weeks old to reduce potassium — Older blood has more potassium and fewer working cells.
• Cold from the fridge to reduce bilirubin — Cold blood causes hypothermia and arrhythmias.

⭐ Key point: For Rh disease, use O Rh-negative blood cross-matched against the mother.$x$, null),
(86, $x$Kernicterus is caused by deposition of unconjugated bilirubin in the:$x$, $x$Basal ganglia of the brain$x$, $x$✅ Correct answer: Basal ganglia of the brain
KERNICTERUS means "yellow nucleus". It occurs when very high levels of UNCONJUGATED (fat-soluble) BILIRUBIN cross the blood–brain barrier and stain and damage parts of the brain, especially the BASAL GANGLIA (particularly the globus pallidus), the brainstem nuclei (including the auditory and eye-movement nuclei), and the cerebellum. The early stage (acute bilirubin encephalopathy) shows lethargy, poor sucking, hypotonia and a high-pitched cry; later, there is arching (opisthotonus), fever and seizures. Survivors may have permanent ATHETOID CEREBRAL PALSY, sensorineural DEAFNESS, upward gaze palsy, and dental enamel problems.

❌ Why the other options are wrong:
• Bone marrow precursors — Bilirubin does not damage the bone marrow precursors to cause kernicterus.
• Proximal renal tubules — Bilirubin can be excreted in urine in its conjugated form, but kernicterus is a BRAIN condition, not a kidney one.
• Hepatocytes of the liver — The liver processes bilirubin (conjugation), but kernicterus is defined by BRAIN damage, not liver damage.

⭐ Key point: Risk is higher in preterm babies, sick babies (sepsis, acidosis, hypoxia), and with very rapid bilirubin rises (e.g. haemolysis from Rh or ABO incompatibility or G6PD deficiency — common in Nigeria). Treat early with phototherapy or exchange transfusion.$x$, null),
(87, $x$In neonatal resuscitation, the most important and effective action is:$x$, $x$Effective ventilation of the lungs$x$, $x$✅ Correct answer: Effective ventilation of the lungs
Most newborns needing resuscitation have a breathing problem, not a heart problem. EFFECTIVE VENTILATION of the lungs is the single most important and effective action. It usually brings the heart rate up quickly.

❌ Why the other options are wrong:
• Giving sodium bicarbonate — Sodium bicarbonate is rarely used.
• Immediate chest compressions — Chest compressions are only needed if the heart rate is below 60 despite effective ventilation.
• Giving adrenaline through a UVC — Adrenaline is rarely needed if ventilation is effective.

⭐ Key point: Check chest movement — if the chest doesn't move, ventilation is not effective.$x$, null),
(88, $x$A nurse is performing neonatal resuscitation. The newborn's heart rate is below 60 beats per minute after 30 seconds of effective positive-pressure ventilation. The next step is to:$x$, $x$Initiate chest compressions$x$, $x$✅ Correct answer: Initiate chest compressions
If the heart rate stays BELOW 60 per minute after 30 seconds of EFFECTIVE positive-pressure ventilation, START CHEST COMPRESSIONS, coordinated with ventilation (3:1 ratio). Increase oxygen to 100%.

❌ Why the other options are wrong:
• Administer epinephrine — Adrenaline is given only if heart rate stays below 60 after compressions and ventilation.
• Continue positive-pressure ventilation for another 30 seconds — Continuing ventilation alone is insufficient.
• Stop resuscitation and call the physician — Stopping resuscitation is wrong; the baby needs active help.

⭐ Key point: Use the two-thumb technique for compressions on the lower third of the sternum.$x$, null),
(89, $x$The compression to ventilation ratio in newborn resuscitation is:$x$, $x$3:1, about 90 compressions and 30 breaths/min$x$, $x$✅ Correct answer: 3:1, about 90 compressions and 30 breaths/min
In newborn resuscitation, the ratio is 3 CHEST COMPRESSIONS to 1 VENTILATION BREATH (3:1). In one minute, this gives about 90 compressions and 30 breaths — a total of 120 "events" per minute. Newborns usually arrest because of a BREATHING problem (asphyxia), not a primary heart problem, so ventilation is given a larger share than in adults. Use the two-thumb technique on the lower third of the sternum, compressing about one-third of the chest depth. Reassess the heart rate every 30–60 seconds.

❌ Why the other options are wrong:
• 15:2, as in older children with two rescuers — 15:2 is used for infants and children (beyond the newborn period) when two health workers are performing CPR.
• 30:2, as in adult basic life support — 30:2 is the adult ratio (and the single-rescuer paediatric ratio).
• 5:1, with continuous compressions throughout — 5:1 with continuous compressions is not the recommended newborn ratio.

⭐ Key point: Count aloud "One-and-two-and-three-and-BREATHE-and". Increase oxygen to 100% once compressions are started. Stop compressions when the heart rate rises above 60/min.$x$, null),
(90, $x$Neonatal adrenaline dose via umbilical venous catheter is:$x$, $x$10–30 micrograms/kg (0.1–0.3 mL/kg of 1:10 000)$x$, $x$✅ Correct answer: 10–30 micrograms/kg (0.1–0.3 mL/kg of 1:10 000)
ADRENALINE (epinephrine) is given in newborn resuscitation when the heart rate stays BELOW 60/min despite 30 seconds of effective ventilation and then 60 seconds of coordinated chest compressions with ventilation. The preferred route is IV through an UMBILICAL VENOUS CATHETER (UVC). The dose is 10–30 MICROGRAMS/kg, which is 0.1–0.3 mL/kg of the 1:10,000 solution (0.1 mg/mL). Example: for a 3 kg baby, give 0.3–0.9 mL of 1:10,000 adrenaline, followed by a small saline flush. It can be repeated every 3–5 minutes.

❌ Why the other options are wrong:
• 100 micrograms/kg (0.1 mL/kg of 1:1000) — 100 micrograms/kg (0.1 mL/kg of 1:1000 — i.e. 1 mL/kg of 1:10,000 diluted) is the higher ENDOTRACHEAL dose, used only when IV access is not available. Giving it IV would be a dangerous overdose.
• 0.5 mg/kg (0.5 mL/kg of 1:1000) — 0.5 mg/kg is a massive overdose (about 20 times or more the correct IV dose) that could cause severe hypertension, brain bleeding and arrhythmias.
• 1 mg (10 mL of 1:10 000) for any weight — 1 mg is the ADULT cardiac arrest dose. It would be a fatal overdose for a newborn.

⭐ Key point: Always use the 1:10,000 strength in newborns, calculate by weight, and double-check the dose with another person.$x$, null),
(91, $x$Early-onset neonatal sepsis (within 72 hours) is most commonly caused by:$x$, $x$Group B Streptococcus and E. coli$x$, $x$✅ Correct answer: Group B Streptococcus and E. coli
EARLY-ONSET NEONATAL SEPSIS occurs within the first 72 hours of life (some definitions use 7 days). The baby is usually infected by organisms from the MOTHER'S birth canal — before or during delivery, especially when the membranes have been ruptured for a long time or the mother has chorioamnionitis. The most common organisms are GROUP B STREPTOCOCCUS (GBS) and ESCHERICHIA COLI. Listeria monocytogenes and Klebsiella are other causes. In many low-income settings, including Nigeria, gram-negative organisms (Klebsiella, E. coli) and Staphylococcus aureus are very important too.

❌ Why the other options are wrong:
• Pseudomonas from ventilators — Pseudomonas from ventilators causes LATE-onset (hospital-acquired) infection, after the baby has been in the unit for some time.
• Staphylococcus epidermidis from lines — Staphylococcus epidermidis (coagulase-negative staph) from IV lines is a common cause of LATE-onset sepsis in preterm babies with central lines.
• Candida albicans — Candida albicans causes late-onset fungal sepsis, mainly in very preterm babies on long-term antibiotics and central lines.

⭐ Key point: Late-onset sepsis (after 72 hours) is usually caught from the hospital environment or community. Hand hygiene is the main prevention.$x$, null),
(92, $x$Maternal risk factors for early-onset neonatal sepsis include:$x$, $x$Membranes ruptured over 18 hours, with maternal fever$x$, $x$✅ Correct answer: Membranes ruptured over 18 hours, with maternal fever
Maternal risk factors for early-onset sepsis include: PROLONGED RUPTURE OF MEMBRANES (over 18 hours), MATERNAL FEVER (intrapartum fever, chorioamnionitis), maternal GBS carriage, and preterm labour.

❌ Why the other options are wrong:
• Maternal age under 25 years with a first pregnancy — Young maternal age is not a major risk factor.
• Planned caesarean section before the onset of labour — Planned caesarean before labour has a lower risk.
• Maternal hypertension that is controlled with drugs — Controlled hypertension isn't a major risk factor.

⭐ Key point: Give the mother intrapartum antibiotics if she is a GBS carrier.$x$, null),
(93, $x$A neonate with sepsis may present with:$x$, $x$Unstable temperature, apnoea, poor feeding, lethargy$x$, $x$✅ Correct answer: Unstable temperature, apnoea, poor feeding, lethargy
Newborns, especially preterm babies, do not show the "typical" signs of infection seen in older children. Their signs of SEPSIS are often VAGUE and NON-SPECIFIC: TEMPERATURE INSTABILITY (fever OR, very commonly, HYPOTHERMIA), APNOEA (pauses in breathing) and breathing difficulty, POOR FEEDING or feed intolerance, LETHARGY or floppiness, irritability, jaundice, vomiting, abdominal distension, poor colour or mottling, tachycardia or bradycardia, and abnormal glucose levels. Any newborn who "is not doing well" should be assessed for sepsis.

❌ Why the other options are wrong:
• Hypertension with bradycardia and a loud cry — Newborns with sepsis more often show low BP and tachycardia or bradycardia from shock. Hypertension with a loud cry is not typical.
• Localised neck stiffness with a bulging fontanelle — Neck stiffness is uncommon in newborns even with meningitis; a bulging fontanelle is a late sign. These are not the usual presenting signs of neonatal sepsis.
• High-grade fever with rigors and sweating only — Newborns often cannot mount a high fever with rigors and sweating; they are more likely to have a LOW temperature.

⭐ Key point: Have a low threshold for doing a septic screen (blood culture, FBC, CRP, glucose, and lumbar puncture if stable) and starting IV antibiotics in an unwell newborn.$x$, null),
(94, $x$Initial empiric antibiotics for early-onset neonatal sepsis are usually:$x$, $x$Benzylpenicillin (or ampicillin) plus gentamicin$x$, $x$✅ Correct answer: Benzylpenicillin (or ampicillin) plus gentamicin
For EARLY-ONSET neonatal sepsis, the first-line antibiotics are BENZYLPENICILLIN (or AMPICILLIN) PLUS GENTAMICIN, given IV. This combination covers the main early-onset organisms: Group B Streptococcus (penicillin), Listeria (ampicillin), and E. coli and other gram-negative bacteria (gentamicin). The two drugs also work together (synergy) against some organisms. Antibiotics are adjusted once culture results are available, usually at 36–48 hours.

❌ Why the other options are wrong:
• Ceftriaxone plus metronidazole in all cases — Ceftriaxone is generally avoided in newborns because it displaces bilirubin from albumin (risk of kernicterus) and can form calcium precipitates with IV calcium. Metronidazole is for anaerobic infections like NEC, not routine sepsis.
• Vancomycin alone — Vancomycin alone is used for resistant gram-positive infections (e.g. MRSA, Staph. epidermidis in late-onset sepsis); it does not cover E. coli.
• Oral amoxicillin alone — Oral amoxicillin is not reliably absorbed in a sick newborn and is not adequate for sepsis.

⭐ Key point: Gentamicin can damage the kidneys and hearing. Check trough levels and adjust dosing intervals, especially in preterm babies.$x$, null),
(95, $x$Daily maintenance fluid for a term neonate on day 1 is about:$x$, $x$60 mL/kg/day, increasing through the first week$x$, $x$✅ Correct answer: 60 mL/kg/day, increasing through the first week
Immediately after birth, a newborn has extra body water that it needs to lose over the first few days, and its kidneys are immature. So fluid intake starts LOW and increases gradually. A term neonate on DAY 1 needs about 60 mL/kg/day, increasing by about 20–30 mL/kg/day to reach about 150 mL/kg/day by days 5–7. Example: a 3 kg baby on day 1 needs about 180 mL in 24 hours (about 7.5 mL per hour). A normal weight loss of up to about 10% in the first week is expected.

❌ Why the other options are wrong:
• 20 mL/kg/day until the baby passes urine — 20 mL/kg/day is far too little and would cause dehydration and hypoglycaemia.
• 150 mL/kg/day from the first hour of life — 150 mL/kg/day from the first hour would overload a newborn with too much fluid (risk of heart failure, patent ductus arteriosus, and NEC).
• 200 mL/kg/day to prevent jaundice — 200 mL/kg/day is excessive and does not prevent jaundice; it would cause fluid overload.

⭐ Key point: Monitor fluid balance by daily weights, urine output (normal 1–3 mL/kg/hr), serum sodium and blood glucose. Preterm babies and those under radiant warmers or phototherapy may need more fluid.$x$, null),
(96, $x$The usual IV fluid for neonates in the first 24 hours is:$x$, $x$10% dextrose$x$, $x$✅ Correct answer: 10% dextrose
In the first 24 hours, a newborn's main need is GLUCOSE to prevent hypoglycaemia (the baby has lost the continuous supply from the placenta and has limited glycogen stores). 10% DEXTROSE at 60 mL/kg/day provides about 4 mg/kg/min of glucose — close to the newborn's natural glucose production. Sodium and potassium are usually NOT added in the first 24–48 hours, because the newborn already has extra body water and sodium, and potassium may be high in the first days; they are added once urine output is established and the weight starts falling.

❌ Why the other options are wrong:
• 0.9% sodium chloride — 0.9% sodium chloride has no glucose and too much sodium for routine newborn maintenance; it is used for fluid boluses in shock.
• 5% albumin — 5% albumin is a colloid used in special cases (e.g. some forms of shock); it is not a maintenance fluid.
• Hartmann's solution with potassium — Hartmann's solution with potassium has no glucose and contains potassium, which may be dangerous in the first day before urine output is established.

⭐ Key point: Check blood glucose regularly; aim to keep it above 2.6 mmol/L (about 47 mg/dL). If high concentrations (above 12.5%) are needed, a central line is used because they damage peripheral veins.$x$, null),
(97, $x$Trophic (minimal enteral) feeding in a sick preterm neonate is given to:$x$, $x$Stimulate gut maturation and improve tolerance$x$, $x$✅ Correct answer: Stimulate gut maturation and improve tolerance
TROPHIC FEEDING (also called minimal enteral or "gut priming" feeding) gives very small amounts of milk (usually 10–20 mL/kg/day, ideally breast milk) to a sick or preterm baby whose nutrition mainly comes from IV fluids. These small feeds are not meant to provide nutrition. Instead, they STIMULATE GUT MATURATION — encouraging the release of gut hormones, improving gut movement (motility), maintaining the gut lining, and encouraging healthy gut bacteria. Babies who receive trophic feeds tolerate full feeds sooner and need fewer days on IV nutrition.

❌ Why the other options are wrong:
• Remove the need for any IV fluids at all — Trophic feeds are too small to replace IV fluids; the baby still needs IV fluids or parenteral nutrition.
• Treat neonatal jaundice by binding bilirubin — Trophic feeds do not treat jaundice. (Feeding does help bilirubin excretion in general, but that is not the purpose of trophic feeding.)
• Provide all of the baby's nutritional needs — Trophic feeds provide only a tiny fraction of nutritional needs; full nutrition comes from IV nutrition until feeds are increased.

⭐ Key point: Breast milk (mother's own or donor milk) reduces the risk of necrotising enterocolitis. Watch for feed intolerance: vomiting, abdominal distension, bile-stained aspirates or blood in the stool.$x$, null),
(98, $x$Sudden infant death syndrome risk is reduced by:$x$, $x$Back to sleep, no smoke exposure, no overheating$x$, $x$✅ Correct answer: Back to sleep, no smoke exposure, no overheating
SUDDEN INFANT DEATH SYNDROME (SIDS) is the sudden, unexplained death of an apparently healthy baby, usually during sleep, mostly in the first 6 months. The most effective prevention measures are: placing the baby on the BACK to sleep ("Back to Sleep") for every sleep; NO SMOKE EXPOSURE (during pregnancy and after birth); avoiding OVERHEATING (no heavy wrapping, hats indoors, or very warm rooms); a firm flat mattress with no pillows, bumpers, toys or loose blankets; and room-sharing (the baby in their own cot in the parents' room) for the first 6 months.

❌ Why the other options are wrong:
• Bed-sharing with parents who smoke at night — Bed-sharing, especially with parents who smoke, drink alcohol or take sedating drugs, greatly INCREASES the risk of SIDS and suffocation.
• Sleeping prone to prevent aspiration of vomit — Sleeping prone (on the tummy) INCREASES SIDS risk. Healthy babies on their backs do not choke on vomit; their airway reflexes protect them.
• Soft pillows and heavy blankets in the cot — Soft pillows and heavy blankets INCREASE the risk of suffocation and overheating.

⭐ Key point: Breastfeeding, a dummy (pacifier) at sleep time, and complete immunisation also reduce SIDS risk. Nurses should model safe sleep in hospital so parents copy it at home.$x$, null),
(99, $x$A premature neonate is at risk of retinopathy of prematurity mainly because of:$x$, $x$High or fluctuating oxygen levels$x$, $x$✅ Correct answer: High or fluctuating oxygen levels
RETINOPATHY OF PREMATURITY (ROP) is abnormal growth of blood vessels in the retina of preterm babies. In the womb the retina develops in a low-oxygen environment. When a very preterm baby is exposed to HIGH oxygen levels, normal vessel growth stops; later, the retina becomes short of oxygen and produces growth factors (VEGF) that cause abnormal, fragile new vessels. These can bleed, scar and pull the retina off (retinal detachment), causing BLINDNESS. HIGH and FLUCTUATING (up-and-down) oxygen levels are the main modifiable risk factors. The risk is highest in babies born before 32 weeks or under 1500 g.

❌ Why the other options are wrong:
• Feeding with expressed breast milk — Breast milk actually REDUCES the risk of ROP; it is not a cause.
• Phototherapy for neonatal jaundice — Phototherapy does not cause ROP.
• Repeated low blood glucose levels — Hypoglycaemia is not the main cause of ROP.

⭐ Key point: Use oxygen like a drug: set SpO2 alarm limits (usually a target around 91–95%), avoid unnecessary high oxygen, and arrange ROP eye screening for at-risk babies at about 4–6 weeks after birth (or 31–32 weeks corrected age).$x$, null),
(100, $x$Severe neonatal hypothermia increases the risk of:$x$, $x$Hypoglycaemia, acidosis and respiratory distress$x$, $x$✅ Correct answer: Hypoglycaemia, acidosis and respiratory distress
A cold newborn tries to make heat by burning BROWN FAT (non-shivering thermogenesis — newborns cannot shiver effectively). This uses large amounts of OXYGEN and GLUCOSE. As a result: glucose is used up quickly (HYPOGLYCAEMIA); oxygen demand rises while cold-induced vasoconstriction reduces tissue perfusion, so cells switch to anaerobic metabolism and produce lactic acid (METABOLIC ACIDOSIS); and acidosis with hypoxia narrows the lung blood vessels and reduces surfactant production, leading to RESPIRATORY DISTRESS. Severe hypothermia also increases the risk of infection, bleeding (including in the brain), NEC and death.

❌ Why the other options are wrong:
• Increased surfactant production — Cold REDUCES surfactant production; it does not increase it.
• Hyperglycaemia and metabolic alkalosis — Hypothermia causes LOW glucose and metabolic ACIDOSIS, not high glucose and alkalosis.
• Hypertension and polyuria — Hypothermia does not typically cause hypertension and polyuria; severe cold causes bradycardia, poor perfusion and reduced urine output.

⭐ Key point: Prevent hypothermia with the "warm chain": warm delivery room, dry the baby immediately, skin-to-skin contact, a cap, delayed bathing, early breastfeeding, and warm transport. For very preterm babies, a plastic wrap/bag at birth helps. Rewarm hypothermic babies gradually while monitoring glucose.$x$, null),
(101, $x$Mal-rotation with volvulus can be diagnosed through the following EXCEPT:$x$, $x$ESR$x$, $x$✅ Correct answer: ESR
MALROTATION is when the bowel does not rotate and fix properly in the abdomen during fetal life. The loose small bowel can then twist on its blood supply (VOLVULUS), cutting off blood flow — a surgical emergency. It is diagnosed by: HISTORY (classically a newborn or infant with sudden BILIOUS — green — vomiting, abdominal distension, and later blood in the stool or shock), ABDOMINAL X-RAY (may show a "double bubble" or few gas-filled loops, or can be normal), ABDOMINAL ULTRASOUND (may show the "whirlpool sign" of twisted vessels and abnormal position of the mesenteric vessels), and the gold standard UPPER GI CONTRAST STUDY. The ESR (erythrocyte sedimentation rate) is a non-specific blood marker of inflammation; it does NOT diagnose malrotation, so it is the EXCEPTION.

❌ Why the other options are wrong:
• History taking — History taking IS useful: bilious vomiting in an infant must be treated as malrotation with volvulus until proven otherwise.
• Abdominal ultrasound — Ultrasound IS useful: it can show the reversed position of the superior mesenteric artery and vein and the "whirlpool" twist.
• Abdominal x-ray — Abdominal X-ray IS useful: it may show obstruction or a double bubble, and rules out perforation (free air).

⭐ Key point: Bilious vomiting in a newborn = surgical emergency. Pass a nasogastric tube, keep nil by mouth, give IV fluids, and call the paediatric surgeon. Delay can cause death of the whole small bowel.$x$, null),
(102, $x$A 9-month-old has paroxysmal colic, drawing up of the legs, vomiting and 'redcurrant jelly' stools. The first-line treatment if there is no peritonitis is:$x$, $x$Air or contrast enema reduction under imaging$x$, $x$✅ Correct answer: Air or contrast enema reduction under imaging
These are the classic features of INTUSSUSCEPTION (one segment of bowel telescoping into the next) in an infant aged 6–18 months: sudden attacks of colicky pain with drawing up of the legs and crying, vomiting, and "REDCURRANT JELLY" stools (blood and mucus from the swollen bowel lining). If there are NO signs of PERITONITIS or PERFORATION, and the child is resuscitated and stable, the first-line treatment is AIR (pneumatic) or CONTRAST (hydrostatic) ENEMA REDUCTION under X-ray or ultrasound guidance. The pressure pushes the telescoped bowel back into place. It succeeds in about 80% of cases and avoids an operation.

❌ Why the other options are wrong:
• Antibiotics and observation for 48 hours — Antibiotics and observation do not unblock the bowel; waiting allows the trapped bowel to die.
• Immediate laparotomy and resection — Laparotomy is needed only if the enema fails, or there is peritonitis, perforation or shock that does not respond to resuscitation.
• Oral laxatives — Laxatives are useless and dangerous in a mechanical obstruction.

⭐ Key point: Before enema reduction: IV access, fluid resuscitation, nasogastric tube, and a surgeon must be available in case of perforation. Watch for recurrence (about 10%) after reduction.$x$, null),
(103, $x$Hirschsprung's disease is diagnosed definitively by:$x$, $x$Rectal suction biopsy showing no ganglion cells$x$, $x$✅ Correct answer: Rectal suction biopsy showing no ganglion cells
In HIRSCHSPRUNG'S DISEASE, the nerve cells (GANGLION CELLS) that make the bowel wall relax are missing from the end of the large bowel. The definitive diagnosis is a RECTAL SUCTION BIOPSY showing NO GANGLION CELLS (and often thickened nerve fibres and increased acetylcholinesterase staining). Other tests support the diagnosis: a contrast enema may show a narrow rectum with a widened bowel above it (transition zone), and anorectal manometry shows the absence of the normal relaxation reflex.

❌ Why the other options are wrong:
• Serum bilirubin and liver function tests — Bilirubin and liver function tests are used for jaundice and liver disease, not Hirschsprung's.
• Stool culture showing enteric organisms — Stool culture identifies infections, not the absence of nerve cells.
• Plain abdominal X-ray showing dilated loops — A plain X-ray may show dilated bowel loops, but this is not specific — many conditions cause it. It cannot confirm the diagnosis.

⭐ Key point: Suspect Hirschsprung's when a term baby does not pass meconium within the first 48 hours, has a swollen abdomen and bilious vomiting, or when a child has long-term constipation since birth.$x$, null),
(104, $x$Bilious vomiting in a newborn requires an urgent:$x$, $x$Upper GI contrast study to exclude malrotation$x$, $x$✅ Correct answer: Upper GI contrast study to exclude malrotation
BILIOUS (green) VOMITING in a newborn means the blockage is BELOW the opening of the bile duct (in the duodenum or beyond). The most dangerous cause is MALROTATION WITH VOLVULUS, which can kill the whole small bowel within a few hours. An URGENT UPPER GI CONTRAST STUDY is the best test to show the abnormal position of the duodenum (the duodeno-jejunal flexure is not in its normal place) and confirm or exclude malrotation. Meanwhile: stop feeds, pass a nasogastric tube, start IV fluids, and inform the surgeon.

❌ Why the other options are wrong:
• Stool test for reducing sugars and pH — Testing the stool for reducing sugars checks for lactose intolerance, which does not cause bilious vomiting.
• Trial of a change of formula milk for 24 hours — Changing formula is dangerous here; it wastes time while the bowel may be dying.
• A course of oral antibiotics and review — Antibiotics and review do not address a surgical blockage.

⭐ Key point: Never treat bilious vomiting in a newborn as "simple reflux". Green vomit = surgical emergency until proven otherwise.$x$, null),
(105, $x$A child with perforated appendicitis develops fever and abdominal distension 5 days after surgery. The nurse should suspect:$x$, $x$Pelvic or intra-abdominal abscess$x$, $x$✅ Correct answer: Pelvic or intra-abdominal abscess
When an appendix PERFORATES, pus and bowel contents spill into the abdomen. Even after surgery, infected fluid can collect in the pelvis or between bowel loops to form an ABSCESS. The typical time for an abscess to show is 5–7 days after the operation, with SPIKING (swinging) FEVER, abdominal pain or distension, poor appetite, diarrhoea (pelvic abscess irritating the rectum) and sometimes urinary symptoms. Ultrasound or CT confirms it; treatment is antibiotics and drainage.

❌ Why the other options are wrong:
• Urinary tract infection only — A UTI can cause fever, but it does not explain abdominal distension after perforated appendicitis. An abscess must be excluded first.
• Paralytic ileus without infection — Paralytic ileus causes distension, but by itself does not cause fever. Persistent ileus with fever suggests an underlying abscess.
• Normal post-operative course — Fever and distension on day 5 are NOT normal; most children are improving by then.

⭐ Key point: Monitor temperature, abdominal girth, bowel function and wound after perforated appendicitis. Report fever after day 3–4.$x$, null),
(106, $x$Before surgery for pyloric stenosis, the infant's blood gas usually shows:$x$, $x$Hypochloraemic, hypokalaemic metabolic alkalosis$x$, $x$✅ Correct answer: Hypochloraemic, hypokalaemic metabolic alkalosis
In PYLORIC STENOSIS, the thickened pylorus blocks the stomach outlet, causing repeated projectile NON-BILIOUS vomiting. The infant loses STOMACH ACID (hydrochloric acid — hydrogen and chloride ions). This leads to: HYPOCHLORAEMIA (low chloride), METABOLIC ALKALOSIS (loss of acid), and HYPOKALAEMIA (low potassium — the kidneys exchange potassium to save hydrogen ions, and potassium is also lost in vomit). This is called HYPOCHLORAEMIC, HYPOKALAEMIC METABOLIC ALKALOSIS. Surgery (pyloromyotomy) is NOT an emergency — the fluid and electrolyte problems must be corrected FIRST (IV 0.9% saline with dextrose and potassium) because anaesthesia in an alkalotic infant can cause apnoea after surgery.

❌ Why the other options are wrong:
• Respiratory acidosis from abdominal distension — Respiratory acidosis is not caused by pyloric stenosis.
• Hyperchloraemic metabolic acidosis, normal K⁺ — Hyperchloraemic acidosis is seen with diarrhoea (loss of bicarbonate), not vomiting.
• Hyperkalaemic metabolic acidosis with low Na⁺ — Hyperkalaemic acidosis is seen in kidney failure or adrenal problems, not pyloric stenosis.

⭐ Key point: Pyloric stenosis: usually first-born boys aged 2–8 weeks, projectile non-bilious vomiting after feeds, hungry baby, visible peristalsis, and an "olive-shaped" mass in the upper abdomen.$x$, null),
(107, $x$Thalassaemia major patients on regular transfusion are at risk of:$x$, $x$Iron overload needing chelation$x$, $x$✅ Correct answer: Iron overload needing chelation
In THALASSAEMIA MAJOR, the body cannot make enough normal haemoglobin, so the child needs REGULAR BLOOD TRANSFUSIONS (every 3–4 weeks). Each unit of blood contains about 200–250 mg of iron, and the body has NO natural way to remove excess iron. Over time, iron builds up (IRON OVERLOAD, haemosiderosis) in the heart (heart failure, arrhythmias — the main cause of death), liver (cirrhosis), and endocrine glands (diabetes, delayed growth and puberty, hypothyroidism). IRON CHELATION therapy (desferrioxamine, deferasirox, deferiprone) removes the excess iron.

❌ Why the other options are wrong:
• Iron deficiency anaemia — Transfused patients have too MUCH iron, not too little. Iron tablets must NOT be given.
• Vitamin K excess and bleeding — Vitamin K excess is not a complication of transfusion.
• Secondary polycythaemia — Polycythaemia (too many red cells) does not occur; the underlying problem is anaemia.

⭐ Key point: Monitor ferritin and cardiac MRI (T2*) to check iron levels. Chelation is started after about 10–20 transfusions or when ferritin is above 1000 ng/mL.$x$, null),
(108, $x$Hb electrophoresis shows HbS and HbC. This patient has:$x$, $x$HbSC disease, a sickling disorder$x$, $x$✅ Correct answer: HbSC disease, a sickling disorder
Haemoglobin ELECTROPHORESIS separates the different haemoglobin types. Finding HbS (sickle haemoglobin) AND HbC (another abnormal haemoglobin), with NO HbA (normal adult haemoglobin), means the patient inherited HbS from one parent and HbC from the other: HbSC DISEASE. It is a SICKLING DISORDER, usually milder than HbSS (sickle cell anaemia), but patients can still have painful crises, acute chest syndrome, and are at higher risk of eye damage (retinopathy) and avascular necrosis of the hip.

❌ Why the other options are wrong:
• Normal adult haemoglobin — Normal adult haemoglobin shows mainly HbA, with a little HbA2 and HbF.
• Sickle cell trait (HbAS) only — Sickle cell trait (HbAS) shows both HbA and HbS. HbAS people are usually healthy carriers.
• Beta thalassaemia major — Beta thalassaemia major shows mainly HbF and little or no HbA, with no HbS or HbC.

⭐ Key point: Genetic counselling is important: two HbAS parents have a 1 in 4 chance of having an HbSS child with each pregnancy. In Nigeria, premarital genotype testing helps prevent sickle cell disease.$x$, null),
(109, $x$Acute chest syndrome in sickle cell disease presents with:$x$, $x$New lung infiltrate with chest pain, fever, hypoxia$x$, $x$✅ Correct answer: New lung infiltrate with chest pain, fever, hypoxia
ACUTE CHEST SYNDROME (ACS) is a serious, potentially fatal complication of sickle cell disease. It is defined as a NEW INFILTRATE on chest X-ray PLUS one or more of: CHEST PAIN, FEVER, HYPOXIA, cough, wheeze or breathing difficulty. It is caused by infection, fat embolism from infarcted bone marrow, or sickling in the lung vessels, and can rapidly progress to respiratory failure.

❌ Why the other options are wrong:
• Isolated limb pain without any fever or hypoxia — Isolated limb pain without fever or hypoxia describes a simple vaso-occlusive (painful) crisis.
• Pallor and a rapidly enlarging spleen only — Pallor with a rapidly enlarging spleen describes splenic sequestration.
• Haematuria with loin pain and normal oxygen — Haematuria with loin pain suggests renal papillary necrosis, not ACS.

⭐ Key point: Treat ACS with oxygen, antibiotics (including a macrolide for atypical organisms), analgesia, incentive spirometry, careful fluids, and blood transfusion (simple or exchange) if severe.$x$, null),
(110, $x$In sickle cell crisis, the ICU nurse should avoid:$x$, $x$Hypothermia, dehydration, hypoxia, acidosis$x$, $x$✅ Correct answer: Hypothermia, dehydration, hypoxia, acidosis
Sickling of red cells is TRIGGERED by: HYPOTHERMIA (cold causes vasoconstriction, slowing blood flow), DEHYDRATION (thicker blood), HYPOXIA (low oxygen makes HbS polymerise and sickle) and ACIDOSIS (low pH promotes sickling). The ICU nurse must actively AVOID these: keep the patient warm, well hydrated, well oxygenated and treat any acidosis or infection. Pain must be well controlled.

❌ Why the other options are wrong:
• IV fluids at the maintenance rate — IV fluids at maintenance rate are HELPFUL; they prevent dehydration.
• Opioid analgesia for severe crisis pain — Opioid analgesia is the standard treatment for severe crisis pain and should NOT be withheld.
• Oxygen therapy when the SpO₂ is low — Oxygen should be GIVEN when SpO2 is low to prevent further sickling.

⭐ Key point: Do not use cold compresses for pain in sickle cell disease — cold triggers sickling.$x$, null),
(111, $x$A child with acute leukaemia and a WBC of 300 × 10⁹/L is at risk of:$x$, $x$Leucostasis and tumour lysis syndrome$x$, $x$✅ Correct answer: Leucostasis and tumour lysis syndrome
A very high white cell count (over 100 × 10⁹/L — called HYPERLEUKOCYTOSIS) makes the blood thick and sticky. The large leukaemic cells clog small blood vessels (LEUCOSTASIS), especially in the lungs (breathlessness, hypoxia) and brain (confusion, stroke). In addition, when treatment starts, the huge number of cancer cells breaks down quickly and releases their contents (TUMOUR LYSIS SYNDROME), causing dangerous electrolyte changes and kidney failure.

❌ Why the other options are wrong:
• Secondary polycythaemia and stroke — Polycythaemia means too many RED cells; leukaemia usually causes anaemia.
• Hypercoagulability only, with DVT — Hypercoagulability may occur, but leucostasis and tumour lysis are the main dangers.
• Iron overload and haemosiderosis — Iron overload results from repeated transfusions, not directly from a high WBC.

⭐ Key point: Treatment: aggressive IV hydration, allopurinol or rasburicase, close electrolyte monitoring, and sometimes leukapheresis. Avoid red cell transfusion if possible because it increases blood thickness.$x$, null),
(112, $x$Tumour lysis syndrome produces:$x$, $x$High K⁺, high phosphate, high urate, low Ca²⁺$x$, $x$✅ Correct answer: High K⁺, high phosphate, high urate, low Ca²⁺
In TUMOUR LYSIS SYNDROME, large numbers of cancer cells break down and release their contents into the blood: POTASSIUM (cells are rich in potassium → HYPERKALAEMIA → arrhythmias), PHOSPHATE (→ HYPERPHOSPHATAEMIA), and nucleic acids that are broken down into URIC ACID (→ HYPERURICAEMIA → crystals block the kidneys). The high phosphate binds calcium, causing HYPOCALCAEMIA (tingling, cramps, seizures, arrhythmias).

❌ Why the other options are wrong:
• Low K⁺, low phosphate and high Ca²⁺ — Potassium and phosphate are HIGH, and calcium is LOW, not the reverse.
• Low glucose with high Ca²⁺ and low urate — Glucose is not typically low, calcium is low, and urate is high.
• Low Na⁺ only, with normal potassium — Sodium is not the main problem; potassium is high.

⭐ Key point: Prevention: IV hydration (2–3 L/m²/day), allopurinol or rasburicase, and frequent monitoring of electrolytes, urate, creatinine and urine output.$x$, null),
(113, $x$A febrile neutropenic child (neutrophils below 0.5 × 10⁹/L) needs:$x$, $x$Broad-spectrum IV antibiotics within 1 hour$x$, $x$✅ Correct answer: Broad-spectrum IV antibiotics within 1 hour
A child with NEUTROPENIA (neutrophils below 0.5 × 10⁹/L) cannot fight bacterial infections. Fever may be the ONLY sign of a life-threatening infection that can kill within hours. The child needs BROAD-SPECTRUM IV ANTIBIOTICS (e.g. piperacillin-tazobactam) WITHIN 1 HOUR of arrival, after taking blood cultures. Do not wait for results.

❌ Why the other options are wrong:
• Live vaccines to boost immunity — Live vaccines are dangerous in immunocompromised children.
• Antibiotics only after culture results — Waiting for culture results (24–48 hours) can be fatal.
• Oral paracetamol and observation — Paracetamol and observation delay life-saving treatment.

⭐ Key point: Avoid rectal temperatures, suppositories and enemas in neutropenic children.$x$, null),
(114, $x$Lassa fever is transmitted mainly by:$x$, $x$The multimammate rat and infected body fluids$x$, $x$✅ Correct answer: The multimammate rat and infected body fluids
LASSA FEVER is spread mainly by the MULTIMAMMATE RAT (Mastomys natalensis), which lives in and around homes. People are infected by eating food contaminated with rat urine or droppings, inhaling dust, or catching and eating the rats. It also spreads from PERSON TO PERSON through contact with BLOOD and BODY FLUIDS (especially in hospitals without good infection control).

❌ Why the other options are wrong:
• Contaminated beef from infected cattle — Lassa is not spread by eating beef.
• Tick bites in grassland areas — Lassa is not spread by tick bites.
• Anopheles mosquito bites at night — Lassa is not spread by mosquitoes; malaria is spread by Anopheles mosquitoes.

⭐ Key point: Prevention: store food in rat-proof containers, keep homes clean, avoid drying food in the open, and use standard precautions in hospitals.$x$, null),
(115, $x$The specific antiviral used for Lassa fever is:$x$, $x$Ribavirin, best started early$x$, $x$✅ Correct answer: Ribavirin, best started early
RIBAVIRIN is the specific antiviral drug used for Lassa fever. It works best when STARTED EARLY (within the first 6 days of illness), greatly reducing the risk of death. It is given IV for treatment, and orally for post-exposure prophylaxis in high-risk contacts.

❌ Why the other options are wrong:
• Oseltamivir given orally — Oseltamivir (Tamiflu) is used for influenza.
• Acyclovir given IV 8-hourly — Acyclovir is used for herpes viruses.
• Zidovudine with lamivudine — Zidovudine and lamivudine are HIV drugs.

⭐ Key point: Side effects of ribavirin include haemolytic anaemia — monitor haemoglobin. Supportive care (fluids, electrolytes, oxygen, blood products) is also essential.$x$, null),
(116, $x$A child with suspected Lassa fever is admitted. The nurse's first priority is:$x$, $x$Strict isolation with full PPE$x$, $x$✅ Correct answer: Strict isolation with full PPE
Lassa fever spreads through blood and body fluids, so the FIRST PRIORITY is to protect staff and other patients: STRICT ISOLATION in a single room with FULL PPE (gloves, gown, face shield or goggles, mask). Inform the infection control team and NCDC (notifiable disease).

❌ Why the other options are wrong:
• Relatives providing care freely at the bedside — Relatives caring freely spreads infection.
• Admission to an open paediatric ward — An open ward exposes other children.
• Isolation only after results return — Isolation must start as soon as Lassa is SUSPECTED, not after results.

⭐ Key point: Safe sharps disposal and proper waste management are also essential.$x$, null),
(117, $x$Ebola virus disease is transmitted mainly by:$x$, $x$Contact with blood or body fluids of the sick or dead$x$, $x$✅ Correct answer: Contact with blood or body fluids of the sick or dead
EBOLA virus disease spreads by DIRECT CONTACT with BLOOD or BODY FLUIDS (vomit, diarrhoea, urine, saliva, sweat, semen, breast milk) of SICK or DEAD people, and with contaminated items (needles, bedding). It also spreads from infected animals (bats, monkeys).

❌ Why the other options are wrong:
• Drinking contaminated water supplies only — Ebola is not spread mainly by contaminated water.
• Bites from infected mosquitoes at dawn and dusk — Ebola is not spread by mosquitoes.
• Airborne spread over long distances in the community — Ebola is not spread through the air over long distances.

⭐ Key point: Bodies of Ebola victims are highly infectious. Safe burial practices are essential to control outbreaks.$x$, null),
(118, $x$In a child with Ebola virus disease, the main supportive treatment is:$x$, $x$Aggressive fluid and electrolyte replacement$x$, $x$✅ Correct answer: Aggressive fluid and electrolyte replacement
Ebola causes massive fluid loss through severe vomiting and diarrhoea, leading to dehydration, electrolyte imbalance and shock. The main supportive treatment is AGGRESSIVE FLUID AND ELECTROLYTE REPLACEMENT (oral rehydration and IV fluids), with correction of potassium, sodium, glucose and acidosis. Specific antibodies (e.g. Inmazeb, Ebanga) are now available for the Zaire strain.

❌ Why the other options are wrong:
• Routine whole blood transfusion every day — Routine daily blood transfusion is not standard.
• High-dose steroids and IV antihistamines — Steroids and antihistamines don't treat Ebola.
• Broad-spectrum antibiotics alone, given IV — Antibiotics don't treat viruses, though they may be used for secondary infections.

⭐ Key point: Early supportive care greatly improves survival.$x$, null),
(119, $x$Bacterial meningitis in a child: the priority after suspecting it is:$x$, $x$Blood cultures, then IV antibiotics without delay$x$, $x$✅ Correct answer: Blood cultures, then IV antibiotics without delay
Bacterial meningitis can kill within hours. After suspecting it, the priority is to take BLOOD CULTURES (quickly) and then give IV ANTIBIOTICS (e.g. ceftriaxone) WITHOUT DELAY. Antibiotics should not be delayed for a CT scan or lumbar puncture.

❌ Why the other options are wrong:
• CT scan before any antibiotics in all cases — CT is only needed before LP if signs of raised ICP; it should not delay antibiotics.
• Lumbar puncture before any treatment, even if shocked — LP should be delayed if the patient is shocked or has signs of raised ICP.
• Oral antibiotics and observation — Oral antibiotics are inadequate for meningitis.

⭐ Key point: Give antibiotics within 1 hour of arrival.$x$, null),
(120, $x$In bacterial meningitis, dexamethasone is given before or with the first antibiotic dose to reduce:$x$, $x$Hearing loss and neurological complications$x$, $x$✅ Correct answer: Hearing loss and neurological complications
DEXAMETHASONE given before or with the first antibiotic dose REDUCES the inflammatory response in the brain caused by dying bacteria. This decreases HEARING LOSS and other NEUROLOGICAL COMPLICATIONS (especially in Haemophilus influenzae and pneumococcal meningitis).

❌ Why the other options are wrong:
• The need for maintenance IV fluids — Steroids don't affect fluid needs.
• The total duration of the antibiotic course — Steroids don't shorten the antibiotic course.
• Fever only, with no effect on outcome — Steroids are given for their effect on outcomes, not just fever.

⭐ Key point: Dexamethasone is not given in neonates or if antibiotics have already been given for several hours.$x$, null),
(121, $x$Polyhydramnios is defined as an amniotic fluid index above:$x$, $x$24–25 cm (or deepest pool above 8 cm)$x$, $x$✅ Correct answer: 24–25 cm (or deepest pool above 8 cm)
POLYHYDRAMNIOS is too much amniotic fluid. It is defined as an AMNIOTIC FLUID INDEX (AFI — the sum of the deepest pools in four quadrants) ABOVE 24–25 cm, or a single DEEPEST VERTICAL POOL above 8 cm.

❌ Why the other options are wrong:
• 10 cm (or deepest pool above 3 cm) — An AFI of 10 cm is normal.
• 5 cm (or deepest pool above 2 cm) — An AFI below 5 cm (deepest pool below 2 cm) indicates OLIGOhydramnios.
• 15 cm (or deepest pool above 5 cm) — An AFI of 15 cm is normal.

⭐ Key point: Normal AFI is about 5–24 cm.$x$, null),
(122, $x$A recognised cause of polyhydramnios is:$x$, $x$Fetal oesophageal atresia, preventing swallowing$x$, $x$✅ Correct answer: Fetal oesophageal atresia, preventing swallowing
Amniotic fluid is constantly being made (mainly fetal urine) and removed (mainly by the fetus swallowing it and absorbing it through the gut). POLYHYDRAMNIOS happens when there is too much production or too little removal. In OESOPHAGEAL ATRESIA, the oesophagus ends in a blind pouch, so the fetus CANNOT SWALLOW amniotic fluid into the stomach and gut. Fluid is still produced as fetal urine but not removed, so it builds up. Ultrasound may show polyhydramnios with a small or absent stomach bubble. Other causes: maternal diabetes (fetal polyuria), twin-to-twin transfusion, fetal anaemia, anencephaly (poor swallowing), duodenal atresia, and neuromuscular disorders.

❌ Why the other options are wrong:
• Placental insufficiency with growth restriction — Placental insufficiency reduces blood flow to the fetal kidneys, so urine output falls, causing OLIGOhydramnios.
• Fetal renal agenesis, preventing urine output — Renal agenesis means no fetal kidneys and no urine, causing severe OLIGOhydramnios.
• Post-term pregnancy beyond 42 weeks — Post-term pregnancy is associated with reduced (OLIGO) fluid, as placental function declines.

⭐ Key point: After delivery of a baby from a pregnancy with polyhydramnios, pass a nasogastric tube before the first feed to check for oesophageal atresia. If the tube does not pass, do not feed and refer to surgery.$x$, null),
(123, $x$A woman with severe polyhydramnios is at risk during labour of:$x$, $x$Cord prolapse and postpartum haemorrhage$x$, $x$✅ Correct answer: Cord prolapse and postpartum haemorrhage
In severe polyhydramnios, the uterus is over-stretched. During labour, when the membranes rupture, a gush of fluid can sweep the cord down (CORD PROLAPSE). After delivery, the over-stretched uterus may not contract well, causing POSTPARTUM HAEMORRHAGE. Also: unstable lie, malpresentation and placental abruption.

❌ Why the other options are wrong:
• Uterine hypertonia and fetal hypoxia — Uterine hypertonia is not a typical risk.
• Shoulder dystocia and perineal tears — Shoulder dystocia is linked to macrosomia, not polyhydramnios itself.
• Prolonged pregnancy and macrosomia — Polyhydramnios is associated with preterm labour, not prolonged pregnancy.

⭐ Key point: Rupture membranes in a controlled way (with the head engaged) to reduce cord prolapse risk.$x$, null),
(124, $x$Asymmetrical intra-uterine growth restriction is usually caused by:$x$, $x$Placental insufficiency late in pregnancy$x$, $x$✅ Correct answer: Placental insufficiency late in pregnancy
In ASYMMETRICAL IUGR, the baby's body is small but the HEAD is relatively normal ("head-sparing"). It is usually caused by PLACENTAL INSUFFICIENCY developing LATE in pregnancy (third trimester), for example from pre-eclampsia, hypertension, smoking, or maternal vascular disease. When the placenta fails to supply enough oxygen and nutrients, the fetus redistributes blood to protect the BRAIN, heart and adrenals ("brain-sparing effect"), while reducing blood flow to the liver, gut and kidneys. The liver stores less glycogen, so the abdominal circumference becomes small, while the head circumference stays near normal.

❌ Why the other options are wrong:
• Congenital infection in the first trimester — Congenital infection early in pregnancy (e.g. rubella, CMV) limits cell number in all organs, causing SYMMETRICAL IUGR.
• Genetic small stature — Genetically small (constitutionally small) babies are healthy and proportionally small; they are not growth-restricted.
• Chromosomal abnormalities early in pregnancy — Chromosomal abnormalities affect growth from early pregnancy, causing SYMMETRICAL IUGR.

⭐ Key point: Asymmetrical IUGR is the commonest type (about 70–80%). These babies often show catch-up growth after birth if well fed, but are at risk of hypoglycaemia in the first days.$x$, null),
(125, $x$An IUGR newborn is at particular risk of:$x$, $x$Hypoglycaemia, hypothermia and polycythaemia$x$, $x$✅ Correct answer: Hypoglycaemia, hypothermia and polycythaemia
IUGR babies have specific risks after birth: HYPOGLYCAEMIA — they have small glycogen and fat stores, and may have high insulin levels, so their glucose drops quickly; HYPOTHERMIA — they have little body fat for insulation and heat production, and a large surface area compared to their weight; POLYCYTHAEMIA — chronic low oxygen in the womb stimulates the fetus to make more red cells (erythropoietin), so the blood becomes thick, which can cause jaundice, breathing problems and poor circulation. Other risks: perinatal asphyxia, meconium aspiration, hypocalcaemia and infection.

❌ Why the other options are wrong:
• Hyperglycaemia, hyperthermia and anaemia — IUGR babies have LOW glucose (not high), and are prone to hypothermia (not hyperthermia). They usually have polycythaemia, not anaemia.
• Hyperbilirubinaemia only, from haemolysis — Jaundice can occur (from polycythaemia), but it is not the only risk, and it is not usually caused by haemolysis in IUGR.
• Macrosomia, birth injury and fractures — Macrosomia (a large baby) is the opposite of IUGR; birth injury and fractures are risks of macrosomia.

⭐ Key point: Feed IUGR babies early and frequently, keep them warm (skin-to-skin), check glucose before feeds in the first 24–48 hours, and check haematocrit if the baby looks plethoric (very red).$x$, null),
(126, $x$Doppler showing absent or reversed end-diastolic flow in the umbilical artery indicates:$x$, $x$Severe placental insufficiency with fetal compromise$x$, $x$✅ Correct answer: Severe placental insufficiency with fetal compromise
The UMBILICAL ARTERY DOPPLER measures blood flow from the fetus to the placenta. Normally, blood keeps flowing forward even during the heart's resting phase (diastole), because the placenta has low resistance. When the placenta is badly damaged, resistance rises. First, flow during diastole falls; then it stops completely (ABSENT END-DIASTOLIC FLOW, AEDF); and in the worst cases it goes backwards (REVERSED END-DIASTOLIC FLOW, REDF). This indicates SEVERE PLACENTAL INSUFFICIENCY and FETAL COMPROMISE — the fetus is at high risk of hypoxia, acidosis and stillbirth (REDF is especially dangerous).

❌ Why the other options are wrong:
• Normal placental function in late pregnancy — Normal placental function shows forward flow in diastole throughout pregnancy. Absent or reversed flow is never normal.
• Fetal macrosomia from maternal diabetes — Macrosomia (a large baby from diabetes) is associated with normal or high placental flow, not absent flow.
• Polyhydramnios from excess fetal urine — Polyhydramnios is unrelated; placental insufficiency is associated with OLIGOhydramnios.

⭐ Key point: Abnormal Doppler requires urgent obstetric review, close fetal monitoring (CTG, ductus venosus Doppler), antenatal steroids and magnesium sulphate if preterm, and planning for delivery (often by caesarean section).$x$, null),
(127, $x$Cervical incompetence typically presents as:$x$, $x$Painless dilatation with second-trimester loss$x$, $x$✅ Correct answer: Painless dilatation with second-trimester loss
CERVICAL INCOMPETENCE (cervical insufficiency) means the cervix is too weak to stay closed as the pregnancy grows. It typically presents as PAINLESS DILATATION of the cervix in the SECOND TRIMESTER (about 16–24 weeks), often with bulging membranes and pressure, followed by rupture of membranes and rapid delivery of a baby who is too immature to survive (SECOND-TRIMESTER LOSS). Women often have a history of repeated painless mid-trimester losses. Causes include previous cervical surgery (cone biopsy), repeated dilatation, cervical trauma from previous deliveries, and congenital weakness.

❌ Why the other options are wrong:
• Hypertension with heavy proteinuria — Hypertension with proteinuria indicates PRE-ECLAMPSIA, not cervical incompetence.
• Painful contractions in the first trimester — Painful contractions suggest labour or miscarriage from other causes. Cervical incompetence is classically PAINLESS.
• Bleeding from placenta praevia at term — Bleeding at term from placenta praevia is a placental problem, not cervical incompetence.

⭐ Key point: Management: cervical cerclage (a stitch around the cervix, usually at 12–14 weeks in women with a history of losses), or progesterone. Ultrasound measurement of cervical length helps identify at-risk women.$x$, null),
(128, $x$A woman with a cervical cerclage goes into labour at 35 weeks. The nurse should:$x$, $x$Arrange urgent removal of the suture$x$, $x$✅ Correct answer: Arrange urgent removal of the suture
A CERVICAL CERCLAGE is a stitch that holds the cervix closed. When labour starts, the uterus contracts strongly and pushes the baby against the cervix. If the stitch stays in place, it can TEAR THE CERVIX (lacerations that may extend into the uterus), cause heavy bleeding, or even cause uterine rupture. So when a woman with a cerclage goes into established labour (or her membranes rupture), the nurse should arrange URGENT REMOVAL of the suture by the obstetric team. At 35 weeks, the baby is mature enough that labour can usually be allowed to continue after removal.

❌ Why the other options are wrong:
• Give tocolytics and keep the stitch — Tocolytics (to stop labour) are not appropriate at 35 weeks, and keeping the stitch during contractions risks serious cervical injury.
• Leave the suture until delivery — Leaving the suture until delivery risks cervical tearing and bleeding.
• Start oxytocin infusion — Starting oxytocin with the suture in place would increase contractions against the closed cervix, causing serious injury.

⭐ Key point: Elective removal of a cerclage is usually done at 36–37 weeks, before labour starts. If a caesarean is planned, the stitch may be removed at the same time.$x$, null),
(129, $x$Puerperal sepsis is infection of the genital tract occurring:$x$, $x$From membrane rupture or labour to 42 days postpartum$x$, $x$✅ Correct answer: From membrane rupture or labour to 42 days postpartum
PUERPERAL SEPSIS is infection of the genital tract occurring any time from RUPTURE OF MEMBRANES or LABOUR to 42 DAYS after delivery (WHO definition).

❌ Why the other options are wrong:
• Only after the 6-week postnatal check — It's not only after 6 weeks.
• Only in the first 24 hours after delivery — It's not only in the first 24 hours.
• Only during the first stage of labour — It's not only during the first stage of labour.

⭐ Key point: Signs include fever, pelvic pain, foul lochia, and delayed uterine involution.$x$, null),
(130, $x$The most dangerous organism causing puerperal sepsis is:$x$, $x$Group A Streptococcus (S. pyogenes)$x$, $x$✅ Correct answer: Group A Streptococcus (S. pyogenes)
GROUP A STREPTOCOCCUS (Streptococcus pyogenes) is the MOST DANGEROUS cause of puerperal sepsis. It can spread from the woman's throat or skin, or from carers' hands, into the genital tract after delivery. It multiplies rapidly and releases powerful toxins, causing STREPTOCOCCAL TOXIC SHOCK SYNDROME, necrotising fasciitis and death — sometimes within hours. Before antibiotics and hand hygiene, it caused epidemics of "childbed fever" that killed many women. Early signs may be subtle: severe abdominal pain, diarrhoea, fever, rapid pulse — then rapid collapse.

❌ Why the other options are wrong:
• Staphylococcus epidermidis from the skin — Staphylococcus epidermidis is a common skin organism that mostly causes line-related infections; it is not the most dangerous cause of puerperal sepsis.
• Lactobacillus species from the vagina — Lactobacilli are normal, protective vaginal bacteria; they do not cause puerperal sepsis.
• Candida albicans after antibiotics — Candida causes vaginal thrush, usually mild; it is not a major cause of life-threatening puerperal sepsis.

⭐ Key point: Strict hand hygiene by staff, early recognition and IV antibiotics (e.g. penicillin with clindamycin) save lives. Close contacts may need prophylaxis in invasive Group A Strep infection.$x$, null),
(131, $x$A postpartum woman has fever 38.9 °C, HR 125, BP 85/50, foul lochia and confusion. The nurse should immediately:$x$, $x$Sepsis bundle: cultures, IV antibiotics within 1 hour, fluids$x$, $x$✅ Correct answer: Sepsis bundle: cultures, IV antibiotics within 1 hour, fluids
This woman has SEPTIC SHOCK (fever, tachycardia, hypotension, confusion, foul lochia). The nurse should immediately start the SEPSIS BUNDLE: take blood CULTURES, give IV ANTIBIOTICS within 1 hour, give IV FLUIDS, measure lactate, give oxygen and monitor urine output.

❌ Why the other options are wrong:
• Encourage breastfeeding to help the uterus contract — Breastfeeding doesn't treat sepsis.
• Oral paracetamol and a review of the observations in 4 hours — Paracetamol and waiting delays treatment.
• Oxytocin infusion and hourly observation only — Oxytocin isn't the main treatment for sepsis.

⭐ Key point: Look for the source (retained products, wound infection).$x$, null),
(132, $x$Risk factors for puerperal sepsis include:$x$, $x$Caesarean section, long labour, retained products, many VEs$x$, $x$✅ Correct answer: Caesarean section, long labour, retained products, many VEs
RISK FACTORS for puerperal sepsis are things that allow bacteria to reach the genital tract or reduce the woman's ability to fight infection. They include: CAESAREAN SECTION (the strongest risk factor — surgery opens the uterus and abdomen), PROLONGED LABOUR, prolonged rupture of membranes, RETAINED PRODUCTS of conception (placenta or membranes that become infected), MANY VAGINAL EXAMINATIONS (each VE can carry bacteria upwards), manual removal of the placenta, perineal tears, anaemia, diabetes, obesity, HIV, and poor hygiene.

❌ Why the other options are wrong:
• Multiparity with a quick spontaneous vaginal birth — Multiparity with a quick spontaneous vaginal birth carries a LOW risk of infection.
• A short labour with intact membranes until delivery — A short labour with intact membranes until delivery reduces the time for bacteria to ascend, so the risk is low.
• An elective delivery with no vaginal examinations — Elective delivery with no vaginal examinations has a low risk of infection.

⭐ Key point: Prevention: limit VEs, aseptic technique during delivery and procedures, prophylactic antibiotics at caesarean section, check the placenta is complete, and treat anaemia during pregnancy.$x$, null),
(133, $x$Supine hypotensive syndrome in late pregnancy is relieved by:$x$, $x$Left lateral tilt or manual uterine displacement$x$, $x$✅ Correct answer: Left lateral tilt or manual uterine displacement
SUPINE HYPOTENSIVE SYNDROME occurs when the heavy uterus compresses the inferior vena cava (and aorta) when lying on the back. This reduces blood return to the heart, causing low BP. It's relieved by LEFT LATERAL TILT or MANUAL UTERINE DISPLACEMENT.

❌ Why the other options are wrong:
• A steep head-down (Trendelenburg) position — Head-down position doesn't relieve compression.
• Raising both legs on pillows while supine — Raising legs while supine doesn't relieve compression.
• Lying flat on the back with arms by the side — Lying flat causes the problem.

⭐ Key point: Never let a pregnant woman lie flat on her back in late pregnancy.$x$, null),
(134, $x$During CPR in a woman over 20 weeks pregnant, the team should:$x$, $x$Displace the uterus left and prepare for perimortem caesarean by 4–5 min$x$, $x$✅ Correct answer: Displace the uterus left and prepare for perimortem caesarean by 4–5 min
During CPR in a woman over 20 weeks pregnant: DISPLACE THE UTERUS LEFT (to relieve compression) and PREPARE for PERIMORTEM CAESAREAN by 4–5 minutes if there is no return of circulation. This helps both mother and baby.

❌ Why the other options are wrong:
• Avoid defibrillation altogether because of the fetal heart — Defibrillation is safe and should not be avoided.
• Use a slower compression rate to protect the pregnant uterus — Compression rate should be normal (100–120/min).
• Delay CPR until the baby has been delivered by caesarean section — CPR should not be delayed.

⭐ Key point: Perimortem caesarean should be done in the resuscitation room.$x$, null),
(135, $x$Hypotension after spinal anaesthesia for caesarean section is best treated with:$x$, $x$Phenylephrine infusion with fluid co-loading$x$, $x$✅ Correct answer: Phenylephrine infusion with fluid co-loading
Spinal anaesthesia blocks the SYMPATHETIC nerves that keep the blood vessels tight. The vessels dilate (vasodilation), blood pools in the legs and abdomen, and BP falls. In pregnancy this is worsened by compression of the vena cava by the uterus. Low BP reduces blood flow to the placenta and can cause FETAL DISTRESS, and causes nausea, vomiting and dizziness in the mother. The best treatment is a vasoconstrictor that reverses the vasodilation: PHENYLEPHRINE (an alpha-agonist) given as a prophylactic INFUSION or boluses, together with FLUID CO-LOADING (giving fluid rapidly at the time the spinal is inserted) and LEFT UTERINE DISPLACEMENT.

❌ Why the other options are wrong:
• Large doses of IV furosemide and fluid restriction — Furosemide and fluid restriction would make hypotension much worse by reducing blood volume.
• Withholding all IV fluids to avoid oedema — Withholding fluids worsens hypotension.
• Head-up tilt to 45 degrees with the legs down — Head-up tilt with the legs down causes more pooling of blood in the legs and worsens hypotension.

⭐ Key point: Ephedrine can also be used, but phenylephrine is preferred because it causes less fetal acidosis. Aim to keep systolic BP close to the woman's baseline.$x$, null),
(136, $x$Amniotic fluid embolism classically presents with:$x$, $x$Sudden collapse, hypoxia, hypotension and DIC$x$, $x$✅ Correct answer: Sudden collapse, hypoxia, hypotension and DIC
AMNIOTIC FLUID EMBOLISM (AFE) is a rare but often fatal emergency occurring during labour, delivery or shortly after. Amniotic fluid and fetal cells enter the mother's circulation and trigger a massive inflammatory and allergic-like reaction. The classic presentation is SUDDEN COLLAPSE with: HYPOXIA (severe breathlessness, cyanosis — from acute lung injury), HYPOTENSION/cardiovascular collapse or cardiac arrest (acute right then left heart failure), and DISSEMINATED INTRAVASCULAR COAGULATION (DIC) — severe bleeding from the uterus, IV sites and wounds. The woman may also have seizures or agitation, and fetal distress.

❌ Why the other options are wrong:
• A slowly rising blood pressure — A slowly rising BP suggests pre-eclampsia, not AFE, which causes sudden collapse.
• Gradual onset of fever and a rash — A gradual fever with rash suggests infection or allergy, not AFE.
• Headache and visual disturbance only — Headache and visual disturbance suggest pre-eclampsia, not AFE.

⭐ Key point: Treatment is supportive and urgent: call for help, CPR if arrested, high-flow oxygen and intubation, vasopressors and inotropes, massive transfusion with clotting factors, and immediate delivery of the baby if the mother arrests.$x$, null),
(137, $x$The Modified Early Obstetric Warning Score (MEOWS) is used to:$x$, $x$Detect deterioration in pregnant and postnatal women$x$, $x$✅ Correct answer: Detect deterioration in pregnant and postnatal women
The MODIFIED EARLY OBSTETRIC WARNING SCORE (MEOWS) is a chart for PREGNANT and POSTNATAL WOMEN that tracks: respiratory rate, oxygen saturation, heart rate, BP, temperature, level of consciousness, and sometimes pain and lochia. Abnormal values (usually coloured yellow or red zones) trigger escalation. It is modified from the general early warning score because pregnancy changes normal values (e.g. higher heart rate, lower BP). Its purpose is to DETECT DETERIORATION early (e.g. from haemorrhage, sepsis, pre-eclampsia), so that medical review happens before the woman becomes critically ill.

❌ Why the other options are wrong:
• Interpret fetal heart rate patterns in labour — Fetal heart rate patterns are interpreted using CTG (cardiotocography), not MEOWS.
• Assess the maturity of the newborn at birth — Newborn maturity is assessed using the Ballard or Dubowitz score.
• Grade perineal tears after vaginal delivery — Perineal tears are graded first to fourth degree by examination, not MEOWS.

⭐ Key point: Escalate when the score triggers: one red or two yellow scores usually need urgent medical review. Document and repeat observations as the chart indicates.$x$, null),
(138, $x$Hyperemesis gravidarum may lead to which serious neurological complication?$x$, $x$Wernicke's encephalopathy (thiamine deficiency)$x$, $x$✅ Correct answer: Wernicke's encephalopathy (thiamine deficiency)
HYPEREMESIS GRAVIDARUM is severe, persistent vomiting in pregnancy, causing dehydration, weight loss and electrolyte disturbance. Prolonged vomiting and poor intake lead to THIAMINE (vitamin B1) DEFICIENCY, because the body has small thiamine stores. Thiamine is needed for the brain to use glucose. Deficiency causes WERNICKE'S ENCEPHALOPATHY: CONFUSION, ophthalmoplegia (eye movement problems, nystagmus), and ATAXIA (unsteady gait). Untreated, it can progress to Korsakoff's psychosis (memory loss), coma and death. Giving glucose-containing IV fluid without thiamine can precipitate or worsen it.

❌ Why the other options are wrong:
• Guillain-Barré syndrome after infection — Guillain-Barré syndrome follows infections (e.g. Campylobacter), not hyperemesis.
• Bell's palsy from dehydration — Bell's palsy (facial nerve weakness) is more common in pregnancy but is not caused by dehydration from vomiting.
• Myasthenia gravis triggered by vomiting — Myasthenia gravis is an autoimmune disease; vomiting does not trigger it.

⭐ Key point: Give IV or oral thiamine to all women admitted with hyperemesis, before or with dextrose-containing fluids. Also correct potassium, sodium and magnesium, and give anti-emetics and thromboprophylaxis.$x$, null),
(139, $x$In severe pre-eclampsia, magnesium sulphate toxicity is first detected by:$x$, $x$Loss of the patellar reflex$x$, $x$✅ Correct answer: Loss of the patellar reflex
MAGNESIUM SULPHATE prevents eclamptic seizures, but too much causes toxicity. The FIRST sign of toxicity is LOSS OF THE PATELLAR (knee-jerk) REFLEX, which occurs at serum levels of about 3.5–5 mmol/L (7–10 mEq/L). As levels rise further: respiratory depression (breathing rate below 12/min, at about 5–6.5 mmol/L), then cardiac conduction problems and CARDIAC ARREST (above about 7.5 mmol/L). Because reflexes disappear before breathing is affected, checking reflexes regularly gives an early warning.

❌ Why the other options are wrong:
• A rising heart rate — Magnesium toxicity causes a SLOWER heart rate and conduction block, not tachycardia.
• An increasing urine output — Magnesium is excreted by the kidneys, so REDUCED urine output (below 30 mL/hr) raises the risk of toxicity. An increasing urine output is not a sign of toxicity.
• A rising blood pressure — Magnesium can LOWER BP slightly by relaxing blood vessels; a rising BP is a sign of pre-eclampsia worsening, not magnesium toxicity.

⭐ Key point: Hourly checks during magnesium therapy: patellar reflexes, respiratory rate, SpO2 and urine output. If reflexes are absent, stop the infusion and inform the doctor. Antidote: calcium gluconate 10%, 10 mL IV over 10 minutes.$x$, null),
(140, $x$Postpartum DIC is most commonly associated with:$x$, $x$Placental abruption, amniotic fluid embolism, sepsis$x$, $x$✅ Correct answer: Placental abruption, amniotic fluid embolism, sepsis
DISSEMINATED INTRAVASCULAR COAGULATION (DIC) is a condition where the clotting system is activated throughout the body, using up clotting factors and platelets, leading to both clots and severe BLEEDING. In obstetrics, DIC is most commonly triggered by: PLACENTAL ABRUPTION (the damaged placenta releases tissue factor into the mother's blood), AMNIOTIC FLUID EMBOLISM, SEPSIS, severe pre-eclampsia/HELLP, retained dead fetus, and massive postpartum haemorrhage (with dilution of clotting factors).

❌ Why the other options are wrong:
• Mild iron-deficiency anaemia during pregnancy — Mild iron-deficiency anaemia does not cause DIC.
• Uncomplicated breastfeeding in the first week — Breastfeeding has no link to DIC.
• Normal vaginal delivery at term without problems — An uncomplicated normal delivery does not usually cause DIC.

⭐ Key point: Signs: bleeding from multiple sites (uterus, IV sites, gums, wounds), low platelets, prolonged PT/APTT, low fibrinogen, raised D-dimers. Treat the cause (e.g. deliver the baby, control bleeding) and replace blood, fresh frozen plasma, platelets and cryoprecipitate.$x$, null),
(141, $x$Active euthanasia differs from withdrawal of futile treatment because euthanasia:$x$, $x$It intentionally ends life by a direct act, which is illegal$x$, $x$✅ Correct answer: It intentionally ends life by a direct act, which is illegal
ACTIVE EUTHANASIA means INTENTIONALLY ENDING LIFE by a DIRECT ACT (e.g. a lethal injection). It is ILLEGAL in Nigeria. WITHDRAWAL OF FUTILE TREATMENT means stopping treatment that no longer benefits the patient, allowing natural death — it is legal and ethical.

❌ Why the other options are wrong:
• It must always be requested by the family — Euthanasia doesn't depend on family request.
• It involves stopping a ventilator after brain death — Stopping a ventilator after brain death is not euthanasia; the patient is already dead.
• It allows the disease to take its natural course — Allowing natural death describes withdrawal of treatment, not euthanasia.

⭐ Key point: The intention and the act are what distinguish euthanasia from withdrawal.$x$, null),
(142, $x$A conscious, competent ICU patient asks the nurse to give a lethal dose of morphine. The nurse should:$x$, $x$Refuse, explore the suffering and get the team to improve symptom control$x$, $x$✅ Correct answer: Refuse, explore the suffering and get the team to improve symptom control
Giving a lethal dose is illegal and unethical. The nurse should REFUSE, but also EXPLORE THE SUFFERING (pain, fear, depression) and work with the team to IMPROVE SYMPTOM CONTROL and support.

❌ Why the other options are wrong:
• Give the dose, because the patient's autonomy must be respected — Autonomy does not extend to requesting illegal acts.
• Ask the relatives to decide whether the dose should be given — Relatives cannot authorise illegal acts.
• Give a smaller dose secretly so that the patient feels comforted — Secretly giving drugs is deceptive.

⭐ Key point: Requests to die often reflect unrelieved suffering.$x$, null),
(143, $x$A dying declaration is:$x$, $x$A statement by someone who believes death is imminent about the cause$x$, $x$✅ Correct answer: A statement by someone who believes death is imminent about the cause
A DYING DECLARATION is a statement made by someone who BELIEVES THEIR DEATH IS IMMINENT about the CAUSE or circumstances of their death. It can be used as evidence in court.

❌ Why the other options are wrong:
• A written will made by a healthy person before any illness — A will is made in advance.
• A request by the patient to withdraw life support — A request to withdraw support isn't a dying declaration.
• A certificate issued by a doctor confirming the death — A death certificate confirms death.

⭐ Key point: Record it accurately.$x$, null),
(144, $x$When an assault victim in ICU makes a dying declaration, the nurse should:$x$, $x$Record the exact words, the time and witnesses, and sign$x$, $x$✅ Correct answer: Record the exact words, the time and witnesses, and sign
A DYING DECLARATION can be used as evidence in court, so it must be recorded accurately. The nurse should: RECORD THE EXACT WORDS of the patient (verbatim — not her own interpretation), note the DATE and TIME, note the patient's mental state (e.g. alert, oriented), list the WITNESSES present, and SIGN the record (with witnesses also signing if possible). If possible, a magistrate or police officer should record it, but if death is imminent and they are not available, the doctor or nurse may record it. The patient should not be pressured.

❌ Why the other options are wrong:
• Ignore it because only the police may record it — Ignoring it would lose important evidence. Health workers may record a dying declaration if the police or a magistrate are not available.
• Ask leading questions to obtain more details — Leading questions (suggesting answers) can make the statement unreliable and inadmissible in court.
• Summarise it in her own words at the end of the shift — Summarising in her own words could change the meaning; the exact words must be recorded immediately, not at the end of the shift.

⭐ Key point: Keep the record in a secure place and hand a copy to the appropriate authority following hospital policy.$x$, null),
(145, $x$The 'principle of double effect' supports giving high-dose opioids to a dying patient when:$x$, $x$The intention is to relieve suffering, even if death is hastened$x$, $x$✅ Correct answer: The intention is to relieve suffering, even if death is hastened
The DOCTRINE OF DOUBLE EFFECT supports giving high-dose opioids when the INTENTION is to RELIEVE SUFFERING, even if death may be hastened as a side effect.

❌ Why the other options are wrong:
• The ICU bed is urgently needed for another patient — Freeing a bed is not an ethical reason.
• The intention is to shorten the patient's life — Intending to shorten life is euthanasia.
• The family has asked for a quicker death — Family wishes don't justify hastening death.

⭐ Key point: Document the intention and doses.$x$, null),
(146, $x$A Do-Not-Attempt-Resuscitation order means:$x$, $x$No CPR, but all other appropriate care continues$x$, $x$✅ Correct answer: No CPR, but all other appropriate care continues
A DO-NOT-ATTEMPT-CARDIOPULMONARY-RESUSCITATION (DNACPR) order means that if the patient's heart stops or they stop breathing, CPR (chest compressions, defibrillation, emergency ventilation) WILL NOT be attempted, because it would not work or would not be in the patient's best interests (or the patient has refused it). However, ALL OTHER APPROPRIATE CARE CONTINUES: pain relief, comfort, nutrition and hydration, antibiotics, oxygen, monitoring, and even ICU treatment if appropriate. DNACPR is not the same as "do not treat".

❌ Why the other options are wrong:
• Only the family may give medications — Medicines are prescribed and given by health workers as usual; the family does not take over.
• All treatment, including feeding, is stopped — Feeding and other appropriate treatments continue. Stopping them is a separate decision.
• The patient is discharged from ICU at once — A DNACPR order does not mean immediate discharge from ICU; the patient may still benefit from ICU care.

⭐ Key point: DNACPR decisions should be made by the senior doctor, discussed with the patient and/or family, clearly documented, communicated to the team, and reviewed regularly.$x$, null),
(147, $x$The Patient's Bill of Rights includes the right to:$x$, $x$Information, consent or refusal, privacy and respect$x$, $x$✅ Correct answer: Information, consent or refusal, privacy and respect
A PATIENT'S BILL OF RIGHTS lists what patients can expect from health services. Key rights include: the right to INFORMATION about their condition and treatment in understandable language; the right to give INFORMED CONSENT or REFUSE treatment; the right to PRIVACY and confidentiality; the right to be treated with RESPECT and dignity without discrimination; the right to safe, quality care; the right to complain; and the right to access their own records.

❌ Why the other options are wrong:
• Demanding any treatment regardless of clinical need — Patients cannot demand any treatment regardless of need; clinicians must not provide treatment that is not clinically appropriate.
• Choosing the nurses' shift patterns and rotas — Patients do not choose nurses' shift patterns; staffing is a management responsibility.
• Reading other patients' records on request — Patients cannot read other patients' records; this would breach confidentiality.

⭐ Key point: Nurses act as patient advocates: they explain rights, protect privacy and dignity, and speak up when rights are not respected.$x$, null),
(148, $x$The following are among the patients' bill of rights EXCEPT:$x$, $x$Right to get married before discharge$x$, $x$✅ Correct answer: Right to get married before discharge
A PATIENT'S BILL OF RIGHTS covers rights related to HEALTHCARE: RIGHT TO DIGNITY and respect of personality, RIGHT TO PROMPT ATTENTION and attendance (timely care, especially in emergencies), RIGHT TO ACCESS CARE when and as due, as well as rights to information, consent, privacy, confidentiality and complaint. The "RIGHT TO GET MARRIED BEFORE DISCHARGE" is NOT a healthcare right and is not in the bill of rights, so it is the EXCEPTION.

❌ Why the other options are wrong:
• Right to dignity and personality — Dignity and personality are central patient rights.
• Right to prompt attention and attendance — Prompt attention and attendance are patient rights, especially in emergencies.
• Right to access care when and as due — Access to care when due is a core patient right.

⭐ Key point: Know the main patient rights so you can respect and protect them.$x$, null),
(149, $x$Res ipsa loquitur applies when:$x$, $x$The injury would not occur without negligence and the defendant controlled the cause$x$, $x$✅ Correct answer: The injury would not occur without negligence and the defendant controlled the cause
RES IPSA LOQUITUR ("the thing speaks for itself") applies when an injury would NOT normally occur WITHOUT NEGLIGENCE, and the defendant had CONTROL of the cause (e.g. a swab left inside a patient).

❌ Why the other options are wrong:
• The injury was caused only by the natural progression of the patient's disease — Natural disease progression is not negligence.
• The nurse followed all the written protocols and the injury was unavoidable — Following protocols suggests no negligence.
• The patient signed a written consent form before the procedure was carried out — Consent doesn't cover negligence.

⭐ Key point: The burden of proof shifts to the defendant.$x$, null),
(150, $x$A nurse who helps at a road accident while off duty is protected under Good Samaritan principles if she:$x$, $x$Acts in good faith, within competence, without gross negligence$x$, $x$✅ Correct answer: Acts in good faith, within competence, without gross negligence
GOOD SAMARITAN principles protect people who help at an emergency voluntarily. A nurse helping at a road accident while off duty is protected if she ACTS IN GOOD FAITH (genuinely trying to help), WITHIN HER COMPETENCE (doing only what she is trained to do), and WITHOUT GROSS NEGLIGENCE (no reckless or seriously careless actions). Examples of reasonable help: making the scene safe, calling emergency services, opening the airway, controlling bleeding, CPR and staying with the casualty until help arrives.

❌ Why the other options are wrong:
• Performs procedures she has never been trained to do — Performing procedures she has never been trained to do (e.g. an emergency surgical airway) is outside her competence and is NOT protected.
• Leaves the casualty halfway through care to go home — Abandoning a casualty partway through care may cause harm and is NOT protected.
• Charges a reasonable fee for the help given at the scene — Charging a fee changes the help from voluntary to professional service, so Good Samaritan protection does not apply.

⭐ Key point: At any emergency: safety first, call for help, give care within your competence, and hand over clearly to the ambulance team.$x$, null),
(151, $x$A patient bitten by a dog of unknown vaccination status arrives in the emergency unit. The nurse's legal and clinical duty includes:$x$, $x$Wound care, rabies PEP and reporting the bite$x$, $x$✅ Correct answer: Wound care, rabies PEP and reporting the bite
A dog bite from an animal whose vaccination status is UNKNOWN is a possible RABIES exposure. Rabies is almost 100% fatal once symptoms start, but it is PREVENTABLE if treatment is given promptly. The nurse's duty includes: WOUND CARE (wash immediately and thoroughly with soap and running water for at least 15 minutes, then apply an antiseptic such as povidone-iodine; avoid suturing deep bites immediately if possible), RABIES POST-EXPOSURE PROPHYLAXIS (PEP — rabies vaccine, plus rabies immunoglobulin for severe bites), tetanus prophylaxis and antibiotics if needed, and REPORTING the bite to the public health / veterinary authorities so the dog can be traced and observed.

❌ Why the other options are wrong:
• Waiting for the dog to die before giving any treatment — Waiting for the dog to die wastes vital time. PEP should start immediately; it can be stopped if the dog stays healthy for 10 days.
• Treating only if the dog's owner agrees to pay — Treatment cannot depend on payment from the dog owner. Emergency care is a professional and ethical duty.
• Discharge without treatment if the wound is small — Even small wounds can transmit rabies, especially on the face, head and hands. Size does not decide the need for PEP.

⭐ Key point: Rabies PEP must never be delayed. Document the exposure, the wound category, the doses given and the follow-up dates for the vaccine schedule.$x$, null),
(152, $x$Rabies post-exposure prophylaxis for a severe (category III) bite includes:$x$, $x$Wound washing, rabies vaccine and immunoglobulin$x$, $x$✅ Correct answer: Wound washing, rabies vaccine and immunoglobulin
WHO classifies animal bites into categories. CATEGORY III (severe) exposures include single or multiple bites or scratches that break the skin, licks on broken skin, or contamination of mucous membranes (eyes, mouth) with saliva, and any exposure to bats. These need the FULL post-exposure prophylaxis: (1) immediate and thorough WOUND WASHING with soap and water for 15 minutes, (2) RABIES VACCINE (a full course), and (3) RABIES IMMUNOGLOBULIN (RIG), infiltrated into and around the wound to neutralise the virus immediately, before the vaccine has had time to produce antibodies.

❌ Why the other options are wrong:
• Tetanus toxoid only, with a booster — Tetanus toxoid is important for all wounds, but it does not protect against rabies.
• Oral antibiotics only for seven days — Antibiotics may prevent bacterial wound infection, but they have no effect on the rabies virus.
• Observation of the dog for 10 days only — Observing the dog for 10 days alone is not enough. PEP must start immediately; observation can only guide stopping the vaccine later.

⭐ Key point: Category I (touching or feeding animals, licks on intact skin): no PEP. Category II (minor scratches without bleeding, nibbling of uncovered skin): wound washing and vaccine. Category III: washing, vaccine AND immunoglobulin.$x$, null),
(153, $x$The Code of Professional Conduct for nurses in Nigeria is issued by:$x$, $x$The Nursing and Midwifery Council of Nigeria$x$, $x$✅ Correct answer: The Nursing and Midwifery Council of Nigeria
The NURSING AND MIDWIFERY COUNCIL OF NIGERIA (NMCN) is the statutory (legal) body that regulates nursing and midwifery in Nigeria. It sets standards of education and practice, registers and licenses nurses and midwives, issues the CODE OF PROFESSIONAL CONDUCT, and disciplines nurses who break the code (for misconduct such as negligence, falsifying records, breach of confidentiality).

❌ Why the other options are wrong:
• The Federal Ministry of Health, Abuja — The Federal Ministry of Health makes health policy, but it is not the body that issues the nurses' professional code.
• The hospital's management board — A hospital's management board sets local policies, but it does not issue the national professional code.
• The Medical and Dental Council of Nigeria — The Medical and Dental Council of Nigeria (MDCN) regulates doctors and dentists, not nurses.

⭐ Key point: Every nurse must know and follow the NMCN Code of Professional Conduct, and must renew their licence to practise as required.$x$, null),
(154, $x$In a suspected criminal case, a bullet removed from a patient in ICU should be:$x$, $x$Labelled, sealed and given to police with chain of custody$x$, $x$✅ Correct answer: Labelled, sealed and given to police with chain of custody
A bullet removed from a patient is FORENSIC EVIDENCE in a criminal case. To be valid in court, its handling must be documented from removal to handing over — this is the CHAIN OF CUSTODY. The bullet should be handled carefully (avoid metal instruments that scratch it if possible, as scratches can affect ballistic matching), placed in a clean container, LABELLED (patient name, date, time, description, who removed it), SEALED and signed, and handed directly to the POLICE, with each transfer recorded and signed.

❌ Why the other options are wrong:
• Washed and handed to the relatives on request — Washing it may destroy evidence (e.g. fibres, blood), and relatives have no right to it — it belongs to the legal investigation.
• Discarded with the clinical waste in theatre — Discarding it destroys important evidence and could obstruct justice.
• Kept by the surgeon in a pot as a souvenir — Keeping it as a souvenir is unprofessional, unlawful and breaks the chain of custody.

⭐ Key point: The same chain-of-custody principles apply to other evidence: clothing (place in paper, not plastic, bags), weapons, and samples in poisoning or assault cases.$x$, null),
(155, $x$Fidelity in nursing ethics means:$x$, $x$Keeping promises and commitments$x$, $x$✅ Correct answer: Keeping promises and commitments
FIDELITY means being FAITHFUL to one's COMMITMENTS and PROMISES — keeping your word to patients, being loyal to the patient's interests, and fulfilling professional duties. Example: if a nurse promises to return with pain medication in 10 minutes, fidelity means doing so, or explaining a delay. It builds trust between nurse and patient.

❌ Why the other options are wrong:
• Distributing resources fairly — Distributing resources fairly is JUSTICE.
• Telling the truth at all times — Telling the truth is VERACITY.
• Avoiding harm to the patient — Avoiding harm is NON-MALEFICENCE.

⭐ Key point: The key ethical principles: autonomy (self-determination), beneficence (doing good), non-maleficence (avoiding harm), justice (fairness), veracity (truthfulness), fidelity (keeping promises), and confidentiality.$x$, null),
(156, $x$A nurse documents care after the patient's death that was not actually given. This is:$x$, $x$Falsification of records and misconduct$x$, $x$✅ Correct answer: Falsification of records and misconduct
Documenting care that was NOT ACTUALLY GIVEN is FALSIFICATION OF RECORDS. It is dishonest, misleads other health workers and the court, and hides possible omissions in care. It is PROFESSIONAL MISCONDUCT that can lead to disciplinary action by the NMCN (suspension or removal from the register) and even criminal charges.

❌ Why the other options are wrong:
• Good documentation practice in ICU — This is the opposite of good documentation. Records must reflect only what was actually done.
• Required by law to complete the chart — The law requires TRUTHFUL records, not completed charts with false information.
• Acceptable if the care had been planned — Planned care that was not given must never be recorded as given. Record what was done and, if appropriate, why planned care was missed.

⭐ Key point: Records are legal documents. "If it wasn't documented, it wasn't done" — but equally, "if it wasn't done, it must not be documented".$x$, null),
(157, $x$Informed consent for an ICU procedure is not valid if:$x$, $x$The patient was coerced or not told material risks$x$, $x$✅ Correct answer: The patient was coerced or not told material risks
For consent to be VALID, it must be: (1) given VOLUNTARILY (free from COERCION, pressure, threats or manipulation); (2) INFORMED (the patient was told the nature of the procedure, its benefits, MATERIAL RISKS and alternatives); and (3) given by a patient with CAPACITY (able to understand, retain, weigh and communicate the information). If the patient was COERCED or NOT TOLD the MATERIAL RISKS, the consent is NOT valid, even if a form was signed.

❌ Why the other options are wrong:
• A witness was present at the signing — A witness being present supports validity; it does not make consent invalid.
• The patient asked questions before signing — A patient asking questions shows engagement and understanding; it does not make consent invalid.
• The doctor explained the alternatives — The doctor explaining alternatives is a requirement for valid consent, not a reason for invalidity.

⭐ Key point: A signature on a form is only evidence of consent. What makes consent valid is the process of explanation, understanding and free choice.$x$, null),
(158, $x$When a non-responsive on-call doctor fails to attend a deteriorating patient, the nurse should:$x$, $x$Escalate through the chain of command, documenting calls$x$, $x$✅ Correct answer: Escalate through the chain of command, documenting calls
When a patient is deteriorating and the on-call doctor does not respond, the nurse must not wait. She should ESCALATE THROUGH THE CHAIN OF COMMAND: repeat the call, then contact the next senior doctor (registrar, consultant), the nursing supervisor or the rapid response team, following the hospital escalation policy. She must DOCUMENT each call (time, person called, information given, response) and continue to monitor and support the patient within her scope of practice (e.g. oxygen, positioning, emergency protocols).

❌ Why the other options are wrong:
• Transfer the patient to another hospital herself — Transferring a patient to another hospital requires medical decisions and arrangements; it is not a nurse's independent action.
• Wait until the consultant's morning ward round — Waiting until the morning round could allow the patient to die; delay is negligence.
• Treat the patient beyond her scope without orders — Acting beyond her scope without orders exposes the patient to risk and the nurse to legal liability. She acts within approved protocols only.

⭐ Key point: Use SBAR (Situation, Background, Assessment, Recommendation) to communicate clearly and convincingly when escalating.$x$, null),
(159, $x$Advance directives made by a competent patient should be:$x$, $x$Respected when valid and applicable$x$, $x$✅ Correct answer: Respected when valid and applicable
An ADVANCE DIRECTIVE is a statement made by a competent person about the treatment they would or would not want if they later lose capacity (e.g. "no mechanical ventilation" or "no blood transfusion"). If it is VALID (made voluntarily by a competent adult, not withdrawn) and APPLICABLE (it covers the current situation and treatment), it must be RESPECTED, as it represents the patient's own autonomous decision.

❌ Why the other options are wrong:
• Overruled by the relatives' wishes — Relatives cannot overrule a valid advance directive, because the decision belongs to the patient.
• Ignored once the patient is unconscious — The directive is designed exactly for when the patient becomes unconscious; it must not be ignored then.
• Followed only if the doctor agrees — The doctor's agreement is not required; a valid and applicable refusal must be followed even if the doctor disagrees.

⭐ Key point: Check that the directive is valid and applicable, document it clearly, and involve the senior team and legal advice if in doubt.$x$, null),
(160, $x$Vicarious liability means that:$x$, $x$The employer may be liable for staff negligence at work$x$, $x$✅ Correct answer: The employer may be liable for staff negligence at work
VICARIOUS LIABILITY is a legal principle where an EMPLOYER (e.g. the hospital) can be held LIABLE for the NEGLIGENCE of its employees, if the negligence occurred while they were doing their job ("in the course of employment"). This allows patients to claim compensation from the hospital. The nurse is still personally accountable professionally.

❌ Why the other options are wrong:
• The patient is liable for the errors made by staff — The patient is not liable for staff errors.
• Nurses are never personally accountable for errors — Nurses remain personally and professionally accountable; vicarious liability does not remove this.
• Only the employer can ever be sued for negligence — Individual staff can also be sued; it is not only the employer.

⭐ Key point: Nurses should practise within their scope and follow policies, as acting outside them may remove the employer's cover. Personal indemnity insurance is advisable.$x$, null),
(161, $x$The level of ICU that possess an active research programme with dedicated research staff is:$x$, $x$Level 111$x$, $x$✅ Correct answer: Level 111
ICUs are classified by the level of care they provide. A LEVEL III ICU is the highest level: it is a tertiary referral unit that provides the full range of complex intensive care (multi-organ support, advanced ventilation, renal replacement therapy, invasive monitoring), has specialist intensivists available 24 hours, and runs teaching and an ACTIVE RESEARCH PROGRAMME with dedicated research staff.

❌ Why the other options are wrong:
• Level 1 — A Level I unit provides basic care (e.g. short-term ventilation and monitoring) and does not usually have research staff.
• Level 11 — A Level II unit provides more complex care, but does not usually have an active research programme with dedicated staff.
• Level 1V — Level IV is not a standard category in this classification.

⭐ Key point: Level I = basic, Level II = intermediate, Level III = tertiary, with full support, teaching and research.$x$, null),
(162, $x$The ICU manager knows that some of her staffs prefers to be directed rather than to be allowed to use initiative or to exercise responsibility. This statement implies:$x$, $x$Theory x$x$, $x$✅ Correct answer: Theory x
Douglas McGREGOR'S THEORY X assumes that workers DISLIKE work, AVOID RESPONSIBILITY, lack ambition and PREFER TO BE DIRECTED. Managers holding this view use close supervision, control and rules. The statement that staff "prefer to be directed rather than use initiative or exercise responsibility" matches Theory X exactly.

❌ Why the other options are wrong:
• Theory A — "Theory A" is not part of McGregor's model.
• Theory b — "Theory B" is not part of McGregor's model.
• Theory y — Theory Y assumes staff enjoy work, seek responsibility and are self-directed — the opposite of the statement.

⭐ Key point: Some staff may need more direction (e.g. new nurses), so effective managers adapt their style to staff needs (situational leadership).$x$, null),
(163, $x$An ICU team designs a new sedation-weaning protocol, trials it on one shift for a week, then reviews compliance and outcome data before deciding whether to adopt it unit-wide. This is an example of:$x$, $x$A PDSA quality improvement cycle$x$, $x$✅ Correct answer: A PDSA quality improvement cycle
A PDSA cycle (PLAN–DO–STUDY–ACT) is a quality improvement method for testing a change on a small scale before wider use. Here: PLAN — design the sedation-weaning protocol; DO — trial it on one shift for a week; STUDY — review compliance and outcome data; ACT — decide whether to adopt, adapt or abandon it unit-wide. This exactly matches the scenario.

❌ Why the other options are wrong:
• A retrospective nursing audit — A retrospective audit looks back at past practice against standards; it does not test a new change.
• A root cause analysis of an incident — Root cause analysis investigates WHY an incident happened; it does not test a new protocol.
• A risk financing strategy — Risk financing deals with funding the costs of risks (e.g. insurance), not testing practice changes.

⭐ Key point: PDSA cycles are small, rapid and repeated — each cycle builds on what was learned from the last.$x$, null),
(164, $x$Which of these is an example of a structure standard in a critical care unit QA programme?$x$, $x$Ratio of one nurse to two ventilated patients$x$, $x$✅ Correct answer: Ratio of one nurse to two ventilated patients
Donabedian's model of quality uses three types of standards: STRUCTURE (the resources and setting — staff numbers, equipment, buildings, policies), PROCESS (what is done — the care activities), and OUTCOME (the results for patients). A NURSE-TO-PATIENT RATIO (e.g. one nurse to two ventilated patients) is about staffing resources, so it is a STRUCTURE standard.

❌ Why the other options are wrong:
• Nurse documents pain score every 2 hours — Documenting pain scores every 2 hours is a PROCESS standard (an activity of care).
• Patient reports satisfaction with pain control — Patient satisfaction with pain control is an OUTCOME standard.
• Reduction in ventilator-associated pneumonia rate — A reduction in VAP rate is an OUTCOME standard.

⭐ Key point: Structure = "what we have", Process = "what we do", Outcome = "what we achieve".$x$, null),
(165, $x$A QA audit reveals that although the ICU has adequate equipment and staff (structure) and nurses are documenting care appropriately (process), patient outcomes remain poor. This scenario illustrates that:$x$, $x$Structure and process alone are insufficient; outcomes must be measured$x$, $x$✅ Correct answer: Structure and process alone are insufficient; outcomes must be measured
Good STRUCTURE (adequate equipment and staff) and good PROCESS (proper documentation) are necessary, but they do NOT GUARANTEE good OUTCOMES. Outcomes may still be poor because of other factors: the wrong processes being measured, poor quality of care despite documentation, case mix, or system problems. So OUTCOMES MUST ALSO BE MEASURED to judge real quality of care, and the reasons for poor outcomes must be investigated.

❌ Why the other options are wrong:
• The audit should be stopped because the standards are met — The audit should not stop; poor outcomes show there is still a problem.
• Outcome measures are irrelevant when the structure is adequate — Outcome measures are the most important indicator of whether care is effective.
• Good structure and process always guarantee good patient outcomes — This scenario shows the opposite: good structure and process do not always guarantee good outcomes.

⭐ Key point: A complete quality programme measures all three (structure, process, outcome) and looks for links between them.$x$, null),
(166, $x$A Level 3 critical care patient is one who needs:$x$, $x$Advanced respiratory support, or support of two or more organs$x$, $x$✅ Correct answer: Advanced respiratory support, or support of two or more organs
Critical care levels describe the patient's needs. LEVEL 3 patients need ADVANCED RESPIRATORY SUPPORT (invasive mechanical ventilation) alone, or SUPPORT OF TWO OR MORE ORGAN SYSTEMS (e.g. ventilation plus vasopressors, or vasopressors plus renal replacement). They need intensive care unit care.

❌ Why the other options are wrong:
• Routine post-operative care after minor surgery — Routine post-op care after minor surgery is Level 0 (normal ward care).
• Observation more frequent than is possible on the ward — Observation more frequent than possible on the ward describes Level 1 or 2.
• Single organ support such as non-invasive ventilation — Single organ support (e.g. non-invasive ventilation) is Level 2 (high dependency).

⭐ Key point: Level 0 = ward, Level 1 = at risk / step-down, Level 2 = single organ support (HDU), Level 3 = advanced respiratory or multi-organ support (ICU).$x$, null),
(167, $x$The recommended nurse-to-patient ratio for a ventilated Level 3 patient is:$x$, $x$1:1$x$, $x$✅ Correct answer: 1:1
A ventilated LEVEL 3 patient is critically ill: they depend on a machine for breathing, often need multiple infusions (sedation, vasopressors), and can deteriorate within seconds (e.g. tube blockage or displacement, sudden hypotension, arrhythmia). They need a NURSE-TO-PATIENT RATIO of 1:1 — one nurse continuously at the bedside — for close monitoring, rapid response to alarms, titration of drugs, suctioning, positioning and family support. Some very complex patients (e.g. ECMO) may need even more than one nurse.

❌ Why the other options are wrong:
• 1:2 — 1:2 is the usual ratio for LEVEL 2 (high dependency) patients who need single-organ support, not for ventilated Level 3 patients.
• 1:4 — 1:4 is a general ward ratio and would be unsafe for a ventilated patient.
• 1:6 — 1:6 is far too low and would put a ventilated patient in serious danger.

⭐ Key point: Studies show that inadequate ICU nurse staffing increases errors, hospital infections, unplanned extubations and deaths.$x$, null),
(168, $x$The most appropriate use of an ICU admission policy is to:$x$, $x$Give beds to patients most likely to benefit$x$, $x$✅ Correct answer: Give beds to patients most likely to benefit
An ICU ADMISSION POLICY helps make fair, consistent decisions about who should receive scarce ICU beds. Its main purpose is to give beds to patients MOST LIKELY TO BENEFIT — those who are critically ill with a reversible condition, rather than those who are too well (could be managed on the ward) or too sick to benefit.

❌ Why the other options are wrong:
• Admit only post-operative surgical patients — ICUs serve all types of critically ill patients, not just surgical ones.
• Keep some beds empty for private patients — Keeping beds empty for private patients is unjust.
• Admit patients strictly in order of arrival — Admission strictly by arrival order ignores clinical need and benefit.

⭐ Key point: Admission decisions should be made by senior clinicians and documented.$x$, null),
(169, $x$An ICU outreach (rapid response) team mainly aims to:$x$, $x$Identify and treat deteriorating ward patients early$x$, $x$✅ Correct answer: Identify and treat deteriorating ward patients early
An ICU OUTREACH or RAPID RESPONSE TEAM is a group of critical care staff who go to the wards to IDENTIFY and TREAT DETERIORATING PATIENTS EARLY (triggered by early warning scores like NEWS2). This can prevent cardiac arrest and unplanned ICU admission, and support ward staff. They also follow up patients discharged from ICU.

❌ Why the other options are wrong:
• Replace ward nursing staff during staff shortages — They do not replace ward nurses during shortages.
• Discharge ICU patients faster to free beds — Their aim is not to speed up discharges but to support safe care.
• Perform elective procedures on the wards — They do not perform elective procedures on the wards.

⭐ Key point: Early recognition and response to deterioration saves lives.$x$, null),
(170, $x$The APACHE II score is used in ICU to:$x$, $x$Estimate illness severity and predicted mortality$x$, $x$✅ Correct answer: Estimate illness severity and predicted mortality
The APACHE II score (Acute Physiology and Chronic Health Evaluation) uses the worst values of physiological measurements in the first 24 hours (e.g. temperature, BP, heart rate, oxygenation, pH, sodium, potassium, creatinine, haematocrit, WBC, GCS), plus age and chronic health conditions, to ESTIMATE ILLNESS SEVERITY and PREDICT MORTALITY. A higher score means a higher risk of death.

❌ Why the other options are wrong:
• Calculate nursing workload for the duty roster — Nursing workload is measured using tools like TISS or NAS.
• Assess the depth of sedation in ventilated patients — Sedation depth is assessed using RASS or Ramsay scores.
• Measure pain in patients who cannot self-report — Pain in non-communicative patients is assessed using CPOT or BPS.

⭐ Key point: APACHE II is used for comparing ICU performance and research, not to decide individual treatment.$x$, null),
(171, $x$The SOFA score assesses dysfunction in:$x$, $x$Six organs: lung, heart, liver, clotting, kidney, CNS$x$, $x$✅ Correct answer: Six organs: lung, heart, liver, clotting, kidney, CNS
The SOFA score (Sequential Organ Failure Assessment) measures dysfunction in SIX ORGAN SYSTEMS: LUNGS (PaO2/FiO2), HEART/CARDIOVASCULAR (MAP and vasopressors), LIVER (bilirubin), CLOTTING (platelets), KIDNEYS (creatinine or urine output), and CNS (GCS). Each is scored 0–4. A rise of 2 or more points from baseline with infection defines SEPSIS.

❌ Why the other options are wrong:
• Nutritional status, using albumin and weight — SOFA doesn't assess nutrition.
• Only the brain, using the GCS and the pupils — SOFA assesses six organs, not only the brain.
• Only the lungs and kidneys, as in ARDS with AKI — SOFA assesses six organs, not only lungs and kidneys.

⭐ Key point: qSOFA (RR ≥22, altered mental state, SBP ≤100) is a quick bedside screen.$x$, null),
(172, $x$The best method to distribute ICU nurses on a shift is according to:$x$, $x$Patient acuity and nurse competence$x$, $x$✅ Correct answer: Patient acuity and nurse competence
ICU nurses should be allocated according to PATIENT ACUITY (how sick and complex the patient is) and NURSE COMPETENCE (skills and experience). The sickest patients get the most experienced nurses, and new nurses get supervision. This ensures safe, effective care.

❌ Why the other options are wrong:
• Personal preference of nurses — Personal preference doesn't ensure safe care.
• Alphabetical order of names — Alphabetical order ignores patient needs and nurse skills.
• Seniority of the nurses only — Seniority alone ignores patient acuity and specific skills.

⭐ Key point: Review allocation during the shift as patient conditions change.$x$, null),
(173, $x$In the design of an ICU, each bed space should have:$x$, $x$Space, oxygen, air, suction and several power outlets$x$, $x$✅ Correct answer: Space, oxygen, air, suction and several power outlets
Each ICU bed space should have: enough SPACE (for equipment and staff to work, e.g. around 20–25 m²), OXYGEN outlets, medical AIR outlets, SUCTION outlets (usually at least 2 each), and SEVERAL POWER OUTLETS (often 12–16, including emergency supply) for monitors, ventilators, pumps and other equipment.

❌ Why the other options are wrong:
• No hand-washing basin, to save floor space — Hand-washing basins are essential for infection control.
• Oxygen outlets shared with the next bed space — Shared oxygen outlets risk cross-infection and supply problems.
• A single power socket for all the equipment — A single socket is unsafe and inadequate for ICU equipment.

⭐ Key point: Good design also includes natural light, privacy, and space for family.$x$, null),
(174, $x$An ICU discharge to the ward should ideally occur:$x$, $x$During the day with a structured handover$x$, $x$✅ Correct answer: During the day with a structured handover
ICU discharge should ideally happen DURING THE DAY, with a STRUCTURED HANDOVER (written and verbal) to the ward team. Night-time discharges are linked to higher readmission and death rates, because ward staffing is lower and fewer senior doctors are available.

❌ Why the other options are wrong:
• Without notes to save time — Notes are essential for continuity of care.
• At night to free beds quickly — Night discharges increase risk.
• Before the ward has accepted the patient — The ward must accept the patient and be prepared to receive them.

⭐ Key point: Outreach teams should follow up patients after ICU discharge.$x$, null),
(175, $x$An ICU manager notices rising central line infections. The best first step is:$x$, $x$Audit compliance with the central line bundle$x$, $x$✅ Correct answer: Audit compliance with the central line bundle
When central line infections rise, the first step is to AUDIT COMPLIANCE with the CENTRAL LINE BUNDLE (hand hygiene, full barrier precautions during insertion, chlorhexidine skin prep, avoiding the femoral site, daily review of line need, and proper dressing care). This shows where practice is failing so that it can be corrected.

❌ Why the other options are wrong:
• Give antibiotic prophylaxis to all patients — Antibiotic prophylaxis for all increases resistance and doesn't address the cause.
• Ban the use of central lines in the unit — Banning central lines would harm patients who need them.
• Discipline the nurse who was on duty — Disciplining one nurse without investigation is unfair and doesn't address system problems.

⭐ Key point: CLABSI = central line-associated bloodstream infection. Remove lines as soon as they're not needed.$x$, null),
(176, $x$Equipment management in ICU includes:$x$, $x$Planned maintenance, inventory and staff training$x$, $x$✅ Correct answer: Planned maintenance, inventory and staff training
EQUIPMENT MANAGEMENT in ICU includes: PLANNED (preventive) MAINTENANCE (servicing equipment on schedule), keeping an INVENTORY (knowing what equipment is available, where it is, and its condition), and STAFF TRAINING (ensuring staff can use equipment safely).

❌ Why the other options are wrong:
• Allowing untrained staff to set up ventilators — Untrained staff using ventilators is unsafe.
• Repairing equipment only when it fails in use — Waiting for failures puts patients at risk.
• Keeping faulty equipment at the bedside for spares — Faulty equipment should be removed and labelled, not kept at the bedside.

⭐ Key point: Report equipment faults and remove them from use.$x$, null),
(177, $x$Burnout among ICU nurses is best reduced by:$x$, $x$Adequate staffing, breaks, debriefing and support$x$, $x$✅ Correct answer: Adequate staffing, breaks, debriefing and support
BURNOUT (emotional exhaustion, cynicism, reduced sense of achievement) is common in ICU nurses because of high stress and moral distress. It is reduced by: ADEQUATE STAFFING, regular BREAKS, DEBRIEFING after difficult events, and SUPPORT (counselling, supervision, recognition).

❌ Why the other options are wrong:
• Removing teaching sessions to reduce workload — Removing teaching reduces development and doesn't reduce burnout.
• Ignoring signs of distress to keep morale up — Ignoring distress worsens burnout.
• Longer shifts with fewer days off each month — Longer shifts and fewer days off increase burnout.

⭐ Key point: Burnout affects patient safety; it's a management responsibility.$x$, null),
(178, $x$The ICU budget is mainly used to plan for:$x$, $x$Staffing, consumables, drugs and equipment upkeep$x$, $x$✅ Correct answer: Staffing, consumables, drugs and equipment upkeep
The ICU budget plans for the main costs of running the unit: STAFFING (the largest cost), CONSUMABLES (e.g. syringes, catheters, dressings), DRUGS, and EQUIPMENT UPKEEP (maintenance and replacement).

❌ Why the other options are wrong:
• Only the salaries of the ICU nursing staff — The budget covers more than salaries.
• Only food and catering for the patients — Catering isn't the main ICU budget item.
• Only buying new buildings and furniture — Buildings and furniture are capital costs, not the main operating budget.

⭐ Key point: Good budgeting helps maintain safe staffing and equipment.$x$, null),
(179, $x$An open ICU differs from a closed ICU in that, in an open ICU:$x$, $x$Patients stay under their admitting consultants, not an intensivist$x$, $x$✅ Correct answer: Patients stay under their admitting consultants, not an intensivist
In an OPEN ICU, patients remain under the care of their ADMITTING CONSULTANTS (e.g. the surgeon or physician), who make the main decisions, sometimes with input from an intensivist. In a CLOSED ICU, an INTENSIVIST team takes over the patient's care while in ICU.

❌ Why the other options are wrong:
• Patients can walk in freely without any referral or review — Open ICUs still require proper referral and admission.
• Only the intensivists may write prescriptions for patients — In a closed (not open) ICU, intensivists write prescriptions.
• There are no doors or walls separating the bed spaces — "Open" refers to management, not physical layout.

⭐ Key point: Closed ICUs led by intensivists are associated with better outcomes.$x$, null),
(180, $x$After a cardiac arrest in ICU, a team debrief is mainly held to:$x$, $x$Review what went well and what to improve, and support staff$x$, $x$✅ Correct answer: Review what went well and what to improve, and support staff
A TEAM DEBRIEF after a cardiac arrest helps the team REVIEW WHAT WENT WELL and WHAT COULD BE IMPROVED (e.g. communication, equipment, roles), and SUPPORTS STAFF emotionally after a stressful event.

❌ Why the other options are wrong:
• Prepare a statement to inform the media about the event — Debriefs are not for media statements.
• Replace the need for an incident report on the arrest — Incident reports may still be required.
• Identify the person to blame for the cardiac arrest — Debriefs focus on learning, not blame.

⭐ Key point: Debriefs should be safe, supportive, and held soon after the event.$x$, null),
(181, $x$The chemical injury in Mendelson's syndrome primarily results from which mechanism?$x$, $x$Acid damage to the alveolar-capillary membrane, causing leaky oedema$x$, $x$✅ Correct answer: Acid damage to the alveolar-capillary membrane, causing leaky oedema
MENDELSON'S SYNDROME is a CHEMICAL PNEUMONITIS caused by inhaling ACIDIC gastric contents (especially pH below 2.5 and volume over 25 mL). The acid DAMAGES THE ALVEOLAR-CAPILLARY MEMBRANE, making it LEAKY. Fluid and protein flood the alveoli (non-cardiogenic pulmonary oedema), causing hypoxia, wheeze and bilateral infiltrates — similar to ARDS.

❌ Why the other options are wrong:
• Mechanical obstruction of the trachea by food particles alone — Solid food particles can block airways, but Mendelson's is mainly a chemical (acid) injury.
• Immune complex deposition in the pulmonary vascular bed — It is not an immune complex disease.
• Pulmonary arterial vasospasm triggered by the low pH — Vasospasm is not the main mechanism.

⭐ Key point: Mendelson's is chemical injury; bacterial aspiration pneumonia may follow later.$x$, null),
(182, $x$A patient aspirates acidic gastric contents during an emergency intubation. Within hours, the most likely picture is:$x$, $x$Wheeze, hypoxaemia and bilateral infiltrates (chemical pneumonitis)$x$, $x$✅ Correct answer: Wheeze, hypoxaemia and bilateral infiltrates (chemical pneumonitis)
After aspirating acid, within hours the patient develops CHEMICAL PNEUMONITIS: WHEEZE (bronchospasm), HYPOXAEMIA (low oxygen), tachypnoea, and BILATERAL INFILTRATES on chest X-ray (often in the dependent lung areas, e.g. the right lower lobe).

❌ Why the other options are wrong:
• A normal chest X-ray with no respiratory symptoms at all — Aspiration of acid causes symptoms; the X-ray may later show infiltrates.
• A unilateral pleural effusion with a shift of the trachea — Pleural effusion with tracheal shift is not typical.
• Lobar consolidation with a high fever within the first hour — Lobar consolidation with high fever in the first hour suggests bacterial pneumonia, which develops later.

⭐ Key point: Treatment is supportive: oxygen, suction, bronchodilators, and ventilation if needed. Steroids are not recommended.$x$, null),
(183, $x$Prevention of Mendelson's syndrome in an emergency caesarean section includes:$x$, $x$Antacids, H2 blockers, RSI and cricoid pressure$x$, $x$✅ Correct answer: Antacids, H2 blockers, RSI and cricoid pressure
Prevention of Mendelson's in emergency caesarean: ANTACIDS (e.g. 30 mL sodium citrate) to neutralise acid; H2 BLOCKERS (e.g. ranitidine) or PPIs to reduce acid production; RAPID SEQUENCE INDUCTION (RSI) to secure the airway quickly; and CRICOID PRESSURE (to compress the oesophagus). Regional anaesthesia is preferred where possible.

❌ Why the other options are wrong:
• A large meal two hours before surgery — Eating before surgery increases risk.
• Inhalational induction with a face mask — Inhalational induction with a face mask is slow and increases risk.
• Avoiding pre-oxygenation to save time — Pre-oxygenation is essential, especially in pregnancy.

⭐ Key point: Metoclopramide may be given to speed stomach emptying.$x$, null),
(184, $x$Anaesthetic deaths are reported and reviewed mainly to:$x$, $x$Learn lessons and prevent deaths, with medico-legal accountability$x$, $x$✅ Correct answer: Learn lessons and prevent deaths, with medico-legal accountability
When a patient dies in connection with anaesthesia, the death is REPORTED (to the hospital, and where required, to the coroner/police and national bodies) and REVIEWED (e.g. in mortality meetings or national confidential enquiries). The main aim is to LEARN LESSONS — find out what went wrong (equipment, drugs, airway management, staffing, communication) and change systems to PREVENT future DEATHS. Reporting also ensures MEDICO-LEGAL ACCOUNTABILITY: the case is investigated transparently and the family is told honestly what happened.

❌ Why the other options are wrong:
• Avoid informing the family about the cause of the death — Families have a right to an honest explanation (duty of candour); reviews must never be used to hide information.
• Identify and punish the anaesthetist responsible for the death — The aim is learning, not punishment. A blame culture discourages reporting and hides problems.
• Delay the death certificate until the review is complete — A review should not unnecessarily delay the death certificate or burial; legal procedures (e.g. coroner) are followed when required.

⭐ Key point: Many anaesthetic deaths are linked to airway problems, aspiration, drug errors and inadequate monitoring — so learning from reviews has improved safety worldwide.$x$, null),
(185, $x$The Subjective Global Assessment (SGA) classifies nutritional status using:$x$, $x$History (weight loss, intake, GI symptoms, function) plus examination$x$, $x$✅ Correct answer: History (weight loss, intake, GI symptoms, function) plus examination
The SUBJECTIVE GLOBAL ASSESSMENT (SGA) classifies nutritional status (well-nourished, moderately or severely malnourished) using: HISTORY (weight loss, dietary intake, GI symptoms, functional capacity) PLUS physical EXAMINATION (loss of fat, muscle wasting, oedema).

❌ Why the other options are wrong:
• Blood glucose and HbA1c measured on the first ICU day — Glucose and HbA1c assess diabetes control.
• Body mass index alone, calculated from height and weight — BMI alone is incomplete.
• Serum albumin alone, measured on admission and weekly — Albumin alone is affected by inflammation.

⭐ Key point: SGA is simple and doesn't need lab tests.$x$, null),
(186, $x$A patient with hepatic encephalopathy needs nutrition. The current approach is:$x$, $x$Normal protein, with branched-chain amino acids if intolerant$x$, $x$✅ Correct answer: Normal protein, with branched-chain amino acids if intolerant
In HEPATIC ENCEPHALOPATHY (brain dysfunction from liver failure), ammonia from protein breakdown in the gut contributes to confusion. In the past, protein was restricted. Now we know that protein restriction causes MUSCLE WASTING, and muscle is an important site for removing ammonia. Malnutrition worsens outcome. Current guidelines recommend NORMAL PROTEIN intake (about 1.2–1.5 g/kg/day), with energy of about 35 kcal/kg/day, small frequent meals and a late-evening snack. If the patient truly cannot tolerate dietary protein, BRANCHED-CHAIN AMINO ACIDS (BCAAs) or vegetable and dairy protein may be used.

❌ Why the other options are wrong:
• Fasting until the encephalopathy has resolved fully — Fasting causes the body to break down muscle for energy, which INCREASES ammonia production and worsens encephalopathy.
• Complete protein restriction until the ammonia normalises — Complete protein restriction is no longer recommended; it worsens malnutrition and muscle loss.
• A high-fat, carbohydrate-free diet to reduce ammonia — A high-fat, carbohydrate-free diet is not recommended and may worsen nutrition and liver function.

⭐ Key point: Treat encephalopathy with lactulose (to cause 2–3 soft stools daily and reduce ammonia absorption), rifaximin, and correction of precipitating factors (GI bleeding, infection, constipation, electrolyte imbalance, sedatives).$x$, null),
(187, $x$A patient on CRRT (dialysis) in ICU needs:$x$, $x$More protein, as amino acids are lost in the effluent$x$, $x$✅ Correct answer: More protein, as amino acids are lost in the effluent
CONTINUOUS RENAL REPLACEMENT THERAPY (CRRT) filters the blood continuously. Small molecules, including AMINO ACIDS (the building blocks of protein), pass through the filter and are LOST in the effluent (waste fluid) — about 10–15 g of amino acids per day. Critically ill patients are already breaking down muscle rapidly. So patients on CRRT need MORE PROTEIN — about 1.5 g/kg/day, and up to 2.5 g/kg/day — to prevent muscle wasting and support healing.

❌ Why the other options are wrong:
• Potassium supplements added to every feed — Potassium is often removed by CRRT, but replacement depends on blood levels; it is not added routinely to every feed.
• Very low protein to reduce the urea production — Very low protein is not recommended; urea is controlled by the CRRT, so protein does not need restriction.
• No nutrition at all until dialysis has stopped — Nutrition should not be withheld; malnutrition increases complications and mortality.

⭐ Key point: CRRT also removes water-soluble vitamins (e.g. vitamin C, thiamine, folate) and trace elements (e.g. selenium, zinc), which may need supplementing. Monitor phosphate and magnesium, which can fall during CRRT.$x$, null),
(188, $x$Refeeding syndrome after starting feeds in a malnourished ICU patient causes:$x$, $x$Low phosphate, low potassium and low magnesium$x$, $x$✅ Correct answer: Low phosphate, low potassium and low magnesium
REFEEDING SYNDROME occurs when feeding starts after starvation. Insulin rises, driving phosphate, potassium and magnesium into cells. This causes LOW PHOSPHATE, LOW POTASSIUM and LOW MAGNESIUM, which can cause heart failure, arrhythmias, breathing problems and death.

❌ Why the other options are wrong:
• High calcium, high sodium and high chloride — Calcium, sodium and chloride aren't high.
• High blood glucose with normal electrolytes — Electrolytes are abnormal.
• High phosphate, high potassium and high urea — Phosphate, potassium and magnesium are LOW, not high.

⭐ Key point: Start feeds slowly, give thiamine, and monitor electrolytes daily.$x$, null),
(189, $x$Inspiratory muscle training in a patient who is difficult to wean aims to:$x$, $x$Strengthen the diaphragm and aid weaning$x$, $x$✅ Correct answer: Strengthen the diaphragm and aid weaning
Patients on prolonged mechanical ventilation often develop DIAPHRAGM WEAKNESS (from disuse, sepsis and drugs). This makes weaning difficult. INSPIRATORY MUSCLE TRAINING (IMT) uses a device that provides resistance when the patient breathes in (like weight training for the breathing muscles). Regular IMT STRENGTHENS THE DIAPHRAGM and other inspiratory muscles, improving inspiratory pressure and endurance, and helping the patient WEAN from the ventilator.

❌ Why the other options are wrong:
• Reduce cough strength to rest the lungs — IMT does not reduce cough strength; stronger respiratory muscles can actually improve coughing.
• Replace the need for ventilator settings — IMT is a training method; the ventilator settings are still needed and adjusted by the team.
• Increase the patient's sedation needs — IMT does not increase sedation needs; the patient needs to be awake and cooperative to participate.

⭐ Key point: IMT is usually done in short sessions (e.g. sets of 6 breaths, several times a day) by physiotherapists, with careful monitoring of SpO2, heart rate and fatigue.$x$, null),
(190, $x$Incentive spirometry after thoracic or abdominal surgery mainly prevents:$x$, $x$Atelectasis and pneumonia$x$, $x$✅ Correct answer: Atelectasis and pneumonia
After THORACIC or ABDOMINAL SURGERY, patients breathe shallowly because of pain, anaesthetic effects and lying in bed. Shallow breathing allows small airways and alveoli to collapse (ATELECTASIS), and secretions collect, which can lead to PNEUMONIA. INCENTIVE SPIROMETRY uses a device that shows the patient how deeply they are breathing in, encouraging slow, deep breaths (sustained maximal inspiration). This re-expands the alveoli and helps clear secretions.

❌ Why the other options are wrong:
• Urinary retention — Urinary retention is prevented by early mobilisation, good pain control and bladder monitoring, not spirometry.
• Pressure ulcers — Pressure ulcers are prevented by repositioning, good nutrition and pressure-relieving devices.
• Deep vein thrombosis — DVT is prevented by early mobilisation, compression stockings and anticoagulants.

⭐ Key point: Teach before surgery: hold the device upright, seal lips around the mouthpiece, breathe in slowly and deeply, hold for 3–5 seconds, then breathe out. Repeat about 10 times every hour while awake, and support the wound with a pillow when coughing.$x$, null),
(191, $x$Transcutaneous electrical nerve stimulation (TENS) in critical care is used to:$x$, $x$Relieve pain by stimulating large nerve fibres$x$, $x$✅ Correct answer: Relieve pain by stimulating large nerve fibres
TENS (Transcutaneous Electrical Nerve Stimulation) uses a small battery device with electrodes on the skin that delivers mild electrical impulses. It RELIEVES PAIN by stimulating LARGE NERVE FIBRES (A-beta fibres) that carry touch sensation. According to the GATE CONTROL THEORY, these signals "close the gate" in the spinal cord, blocking pain signals carried by small fibres. It may also stimulate the release of natural painkillers (endorphins). It is used for post-operative pain, musculoskeletal pain and labour pain.

❌ Why the other options are wrong:
• Defibrillate the heart in ventricular fibrillation — Defibrillation requires a high-energy shock delivered by a defibrillator; TENS currents are far too weak.
• Pace the phrenic nerve to replace ventilation — Phrenic nerve pacing requires implanted electrodes; TENS cannot replace ventilation.
• Measure muscle strength in ICU-acquired weakness — Muscle strength in ICU-acquired weakness is measured using the MRC score, not TENS.

⭐ Key point: Avoid TENS over the front of the neck, over broken skin, and in patients with pacemakers (unless approved), and avoid placing electrodes over the uterus during pregnancy (except for labour use as directed).$x$, null),
(192, $x$Which condition is a well-established indication for therapeutic plasma exchange?$x$, $x$Thrombotic thrombocytopenic purpura (TTP)$x$, $x$✅ Correct answer: Thrombotic thrombocytopenic purpura (TTP)
THERAPEUTIC PLASMA EXCHANGE (TPE, plasmapheresis) removes the patient's plasma (which contains harmful substances like antibodies or abnormal proteins) and replaces it with donor plasma or albumin. In THROMBOTIC THROMBOCYTOPENIC PURPURA (TTP), antibodies block an enzyme (ADAMTS13) that normally breaks down large von Willebrand factor molecules; without it, platelets clump in small vessels, causing low platelets, haemolytic anaemia, kidney problems, fever and neurological symptoms. TPE removes the antibodies AND replaces the missing ADAMTS13 enzyme from donor plasma. It has reduced TTP mortality from about 90% to about 10–20%. Other established indications: Guillain-Barré syndrome, myasthenia crisis, and some autoimmune kidney diseases.

❌ Why the other options are wrong:
• Simple dehydration — Simple dehydration is treated with oral or IV fluids.
• Uncomplicated urinary tract infection — An uncomplicated UTI is treated with antibiotics.
• Mild hyperkalemia — Mild hyperkalaemia is treated with diet and drug changes, or medications if needed.

⭐ Key point: TTP is a medical emergency; start plasma exchange urgently. Avoid platelet transfusion in TTP unless there is life-threatening bleeding, as it can worsen clotting.$x$, null),
(193, $x$A common electrolyte complication of plasmapheresis, related to the citrate anticoagulant used in the extracorporeal circuit, is:$x$, $x$Hypocalcaemia (citrate toxicity), with perioral tingling$x$, $x$✅ Correct answer: Hypocalcaemia (citrate toxicity), with perioral tingling
During PLASMAPHERESIS, blood flows through a machine outside the body (extracorporeal circuit). CITRATE is added as an anticoagulant to stop the blood clotting in the circuit; it works by BINDING CALCIUM. Citrate returns to the patient with the blood, lowering the ionised calcium (HYPOCALCAEMIA, called citrate toxicity), especially when fresh frozen plasma (which also contains citrate) is used as the replacement fluid. Signs: PERIORAL TINGLING (around the mouth), tingling in the fingers, muscle cramps, nausea, and in severe cases tetany, arrhythmias and hypotension.

❌ Why the other options are wrong:
• Hypernatraemia from the replacement fluid — Hypernatraemia is not a common complication of plasmapheresis.
• Hyperkalaemia from haemolysis in the circuit — Hyperkalaemia from haemolysis is uncommon; the circuit is designed to minimise haemolysis.
• Hyperphosphataemia from cell breakdown — Hyperphosphataemia from cell breakdown is not a typical complication.

⭐ Key point: Monitor ionised calcium; give oral or IV calcium (calcium gluconate) as per protocol. Slow the procedure if symptoms appear.$x$, null),
(194, $x$After renal transplant, a sudden fall in urine output with graft tenderness and fever suggests:$x$, $x$Acute rejection or graft vessel thrombosis$x$, $x$✅ Correct answer: Acute rejection or graft vessel thrombosis
After a kidney transplant, a SUDDEN FALL IN URINE OUTPUT with GRAFT TENDERNESS (pain over the new kidney, usually in the iliac fossa) and FEVER suggests: ACUTE REJECTION — the recipient's immune system attacks the new kidney, causing inflammation, swelling and failure of function; or GRAFT VESSEL THROMBOSIS — a clot blocks the artery or vein of the new kidney, causing sudden loss of function (often within the first days). Both are emergencies that can cause loss of the graft.

❌ Why the other options are wrong:
• Over-hydration from excess IV fluids — Over-hydration would cause oedema, high BP and possibly high urine output, not tenderness and fever.
• Hypoglycaemia caused by the steroids — Steroids cause HYPERglycaemia, not hypoglycaemia.
• A normal post-operative recovery pattern — A sudden fall in urine output, pain and fever are not part of normal recovery; they must be urgently reported.

⭐ Key point: Investigate urgently: Doppler ultrasound of the graft, serum creatinine, drug levels (tacrolimus), and possibly a biopsy. Also check the catheter for blockage.$x$, null),
(195, $x$A renal transplant recipient on tacrolimus is at particular risk of:$x$, $x$Infection, nephrotoxicity and hyperglycaemia$x$, $x$✅ Correct answer: Infection, nephrotoxicity and hyperglycaemia
TACROLIMUS is a calcineurin inhibitor that suppresses the immune system to PREVENT REJECTION of a transplanted kidney. Its main side effects: INFECTION — the weakened immune system increases the risk of bacterial, viral (e.g. CMV), and fungal infections; NEPHROTOXICITY — it constricts the kidney's blood vessels and can damage the transplanted kidney itself; HYPERGLYCAEMIA — it reduces insulin release, causing new-onset diabetes after transplant. Other effects: tremor, hypertension, high potassium, low magnesium and headache.

❌ Why the other options are wrong:
• Weight loss and persistent hypotension — Tacrolimus tends to cause HYPERtension and weight gain, not persistent hypotension and weight loss.
• Increased antibody production and allergy — Tacrolimus REDUCES immune activity, including antibody production; it does not increase allergy.
• Hypercoagulability from a strong immune system — It suppresses the immune system, it does not strengthen it.

⭐ Key point: Monitor tacrolimus trough levels, kidney function, glucose, potassium and magnesium. Many drugs interact with it (e.g. some antifungals, antibiotics and anticonvulsants), so check before giving new medicines.$x$, null),
(196, $x$In toxic epidermal necrolysis, more than 30% of the body surface is detached. ICU care is similar to:$x$, $x$Major burns: fluids, warmth, wound care, infection control, nutrition$x$, $x$✅ Correct answer: Major burns: fluids, warmth, wound care, infection control, nutrition
TOXIC EPIDERMAL NECROLYSIS (TEN) is a severe, life-threatening skin reaction (usually to a drug, e.g. sulfonamides including co-trimoxazole, nevirapine, anticonvulsants, allopurinol). The top layer of skin (epidermis) separates from the body over large areas (more than 30% of body surface area). This causes problems very similar to MAJOR BURNS: loss of fluid and protein through the raw skin (needs IV FLUIDS), loss of heat (keep the room WARM), raw areas needing careful WOUND CARE (non-adherent dressings), high INFECTION risk (strict INFECTION CONTROL), and a high metabolic rate (high-calorie NUTRITION). Mucous membranes (eyes, mouth, genitals) are also affected.

❌ Why the other options are wrong:
• Cellulitis: oral antibiotics and elevation of the limbs — Cellulitis care (oral antibiotics and elevation) would be inadequate; TEN is not a simple skin infection.
• A simple allergy: antihistamines and observation on the ward — Antihistamines and ward observation are inadequate for a life-threatening condition.
• Eczema: emollients and topical steroids at home — Emollients and topical steroids are for eczema; TEN needs intensive or burns unit care.

⭐ Key point: STOP the causative drug immediately. Get eye care early (to prevent blindness) and treat in a burns unit or ICU. Mortality can be high, especially in older patients or those with large areas affected.$x$, null),
(197, $x$Hospital-acquired infections in ICU are reduced most by:$x$, $x$Hand hygiene and care bundles$x$, $x$✅ Correct answer: Hand hygiene and care bundles
HOSPITAL-ACQUIRED INFECTIONS (HAIs) in ICU — such as ventilator-associated pneumonia, central line bloodstream infections and catheter-associated urinary infections — are mostly spread by staff HANDS and invasive devices. They are reduced most by: HAND HYGIENE (washing or alcohol rub before and after patient contact, following WHO's "5 moments") and CARE BUNDLES (groups of evidence-based practices performed together for every patient, e.g. the VAP bundle and the central line bundle).

❌ Why the other options are wrong:
• Changing all IV lines every day — Changing IV lines daily increases manipulation and infection risk; lines are changed only when needed or by policy.
• Routine broad-spectrum antibiotics for all — Routine broad-spectrum antibiotics for all patients cause antibiotic resistance and C. difficile, without preventing most HAIs.
• Keeping the windows open for fresh air — Open windows do not reduce ICU infections and may introduce dust and insects.

⭐ Key point: Hand hygiene is the single most important and cheapest way to prevent the spread of infection.$x$, null),
(198, $x$A key principle of adult learning (andragogy) when teaching ICU staff is that adults:$x$, $x$Learn best when content is relevant and builds on experience$x$, $x$✅ Correct answer: Learn best when content is relevant and builds on experience
ANDRAGOGY is the theory of how adults learn (Malcolm Knowles). Key principles: adults learn best when the content is RELEVANT to their work and life (they want to know why they need to learn something); learning BUILDS ON their previous EXPERIENCE; they are self-directed; they are problem-centred (prefer solving real problems); and they are motivated mainly by internal factors. For ICU staff, teaching should therefore use real cases, discussion of experiences, simulations and practical problem-solving.

❌ Why the other options are wrong:
• Do not need any feedback on their performance — Adults need regular feedback to improve their performance.
• Prefer lectures with no participation or discussion — Adults usually prefer active participation and discussion, not passive lectures.
• Learn best by memorising facts without any context — Adults learn best when facts are given in context, not memorised without meaning.

⭐ Key point: Use case studies, simulation, reflective discussions and hands-on practice when teaching ICU nurses.$x$, null),
(199, $x$The 'politics of health care' in ICU management refers to:$x$, $x$How power, resources and decisions are negotiated$x$, $x$✅ Correct answer: How power, resources and decisions are negotiated
The POLITICS OF HEALTH CARE refers to how POWER, RESOURCES and DECISIONS are NEGOTIATED among different groups (government, hospital management, doctors, nurses, patients, unions, funders). In ICU management, this includes negotiating for budget, staff, equipment, beds and policies, and influencing decisions that affect patient care. The nurse manager needs political skills: building relationships, using evidence, negotiating, and advocating for patients and staff.

❌ Why the other options are wrong:
• Elections held to choose the ward manager — It does not refer to elections for the ward manager position.
• Nurses joining and campaigning for political parties — It is not about nurses joining or campaigning for political parties.
• Government salary scales for health workers only — It is broader than government salary scales; it covers how all resources and decisions are negotiated.

⭐ Key point: Effective nurse leaders understand organisational politics to gain resources for safe patient care.$x$, null),
(200, $x$Reusable ventilator circuits and laryngoscope blades in ICU must undergo at least:$x$, $x$Cleaning, then high-level disinfection or sterilisation$x$, $x$✅ Correct answer: Cleaning, then high-level disinfection or sterilisation
The SPAULDING CLASSIFICATION groups equipment by infection risk. Items that contact MUCOUS MEMBRANES or non-intact skin, such as reusable VENTILATOR CIRCUITS and LARYNGOSCOPE BLADES, are SEMI-CRITICAL. They must first be CLEANED (to remove secretions and organic material — disinfection cannot work through dirt), then undergo at least HIGH-LEVEL DISINFECTION (killing all microorganisms except large numbers of bacterial spores) or STERILISATION. Critical items (entering sterile tissue, e.g. surgical instruments) need sterilisation; non-critical items (touching intact skin, e.g. BP cuffs) need low-level disinfection.

❌ Why the other options are wrong:
• Wiping with a dry cloth after each use — Wiping with a dry cloth does not remove or kill germs.
• Rinsing with tap water between each patient — Rinsing with tap water does not disinfect and may contaminate equipment with waterborne bacteria (e.g. Pseudomonas).
• Low-level disinfection with soap and water only — Low-level disinfection is only suitable for non-critical items touching intact skin.

⭐ Key point: Many ICUs use single-use ventilator circuits and laryngoscope blades to reduce cross-infection.$x$, null)
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
