-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 9, part A (questions 1–100)
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

⭐ Key point: Prevent hypothermia with the "warm chain": warm delivery room, dry the baby immediately, skin-to-skin contact, a cap, delayed bathing, early breastfeeding, and warm transport. For very preterm babies, a plastic wrap/bag at birth helps. Rewarm hypothermic babies gradually while monitoring glucose.$x$, null)
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
