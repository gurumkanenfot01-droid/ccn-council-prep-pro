-- Nursing Exam Room: full rationales for CCN Mock Exam — Days 11 to 15 (all in one)
-- HOW TO USE: copy everything in this file, paste it into Supabase → SQL Editor → New query, then press Run.
-- It is safe to run again. At the end you will see one table: each day should show 200
-- (Day 1 may show fewer if some of its questions were changed earlier — that is fine).

create temp table if not exists rationale_report(day int primary key, questions_updated int, rows_changed int);

-- ===================== DAY 11 =====================
-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 11 (200 questions)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$On haemodynamic monitoring, a patient shows low cardiac output, high systemic vascular resistance, and a high pulmonary capillary wedge pressure. This pattern is most consistent with:$x$, $x$Cardiogenic shock$x$, $x$✅ Correct answer: Cardiogenic shock
Read each number. LOW cardiac output means the heart is not pumping enough. HIGH SVR means the arteries have clamped down to keep up the BP (a compensation for the low output). HIGH wedge pressure (PCWP above 18) means blood is backing up behind a failing left ventricle. A weak pump with backed-up blood and tight vessels is CARDIOGENIC shock.

❌ Why the other options are wrong:
• Hypovolaemic shock — Hypovolaemic shock also has low output and high SVR, but the wedge pressure is LOW, because the tank is empty.
• Distributive (septic) shock — Septic (distributive) shock has LOW SVR (dilated vessels), often with a normal or high cardiac output.
• Normal haemodynamics — Normal haemodynamics would show normal output, SVR and wedge pressure.

⭐ Key point: The wedge pressure tells you about filling. Low output + high wedge = pump failure (cardiogenic). Low output + low wedge = empty tank (hypovolaemic).$x$, null),
(2, $x$A patient on continuous ECG monitoring develops wide, bizarre QRS complexes at a rate of 160/min with no discernible P waves, and is hypotensive. This rhythm most likely represents:$x$, $x$Ventricular tachycardia$x$, $x$✅ Correct answer: Ventricular tachycardia
Ventricular tachycardia (VT) starts in the ventricles, not the normal conduction system, so the QRS is WIDE (more than 0.12 s) and bizarre. There are no normal P waves before each QRS, and the rate is fast (usually 120–250/min). Low BP means this is UNSTABLE VT: the heart beats too fast and too inefficiently to fill and pump properly.

❌ Why the other options are wrong:
• Sinus tachycardia — Sinus tachycardia has a normal P wave before every narrow QRS.
• First-degree heart block — First-degree heart block is a long PR interval with a normal rate and QRS.
• Normal sinus rhythm — Normal sinus rhythm has a rate of 60–100 with normal P waves and narrow QRS.

⭐ Key point: VT with a pulse and adverse signs (low BP, chest pain, confusion, heart failure) needs synchronised cardioversion. Pulseless VT needs defibrillation and CPR.$x$, null),
(3, $x$Haemodynamic monitoring in cardiogenic shock classically shows:$x$, $x$High pulmonary capillary wedge pressure and low cardiac output$x$, $x$✅ Correct answer: High pulmonary capillary wedge pressure and low cardiac output
In cardiogenic shock the heart muscle is too weak to pump (often after a big MI). Because it can't empty properly, pressure builds up behind it, so the wedge pressure (PCWP) RISES (usually above 18 mmHg). At the same time, the amount pumped out, the cardiac output, FALLS (cardiac index below 2.2). The body tightens the arteries (high SVR) to protect BP.

❌ Why the other options are wrong:
• Low systemic vascular resistance — Low SVR is seen in septic, anaphylactic and neurogenic shock, not cardiogenic.
• Normal filling pressures with high cardiac output — Normal filling with high output is the opposite of pump failure.
• Low pulmonary capillary wedge pressure and high cardiac output — Low wedge pressure with high output fits early septic shock, not cardiogenic.

⭐ Key point: Cardiogenic shock profile: low CO, high PCWP, high SVR, high CVP, with cold clammy skin and crackles in the lungs.$x$, null),
(4, $x$Torsades de pointes, a polymorphic ventricular tachycardia, is classically associated with:$x$, $x$A prolonged QT interval$x$, $x$✅ Correct answer: A prolonged QT interval
Torsades de pointes ("twisting of the points") is a polymorphic VT in which the QRS complexes twist around the baseline, changing in height. It happens when the QT interval is PROLONGED, meaning the heart takes too long to recover between beats. Causes: low magnesium, low potassium, low calcium, drugs (amiodarone, haloperidol, erythromycin, ondansetron, methadone) and inherited long QT syndrome.

❌ Why the other options are wrong:
• A shortened QT interval — A SHORT QT interval does not cause torsades.
• Normal QT interval in all cases — Torsades is defined by a long QT, so "normal QT in all cases" is wrong.
• Complete heart block only — Complete heart block can trigger torsades because the slow rate lengthens the QT, but it is not the classic link.

⭐ Key point: Normal QTc is under 440 ms in men and 460 ms in women. Above 500 ms is high risk. Check QT before and during QT-prolonging drugs.$x$, null),
(5, $x$A patient in cardiogenic shock has a low cardiac output despite adequate preload. Which mechanism is most likely responsible?$x$, $x$Impaired myocardial contractility$x$, $x$✅ Correct answer: Impaired myocardial contractility
Cardiac output = heart rate × stroke volume. Stroke volume depends on preload (filling), afterload (resistance) and CONTRACTILITY (squeeze). If the heart is well filled (adequate preload) and the output is still low, the problem must be the SQUEEZE: the damaged heart muscle cannot contract strongly. This is the basic cause of cardiogenic shock.

❌ Why the other options are wrong:
• Bradycardia-induced increase in stroke volume — Bradycardia lowers cardiac output; it doesn't increase stroke volume enough to cause shock.
• Excessively low afterload — Low afterload would make it EASIER for the heart to pump, raising output.
• Excess venous return — Extra venous return increases preload and would raise output in a healthy heart.

⭐ Key point: Treat poor contractility with inotropes (dobutamine, milrinone, adrenaline), and treat the cause (PCI for MI).$x$, null),
(6, $x$A patient with an inferior STEMI becomes hypotensive after sublingual GTN, with clear lungs and a raised JVP. The likely cause is:$x$, $x$Right ventricular infarction$x$, $x$✅ Correct answer: Right ventricular infarction
The right coronary artery supplies both the INFERIOR wall of the left ventricle and the RIGHT ventricle. So an inferior STEMI can also cause a right ventricular infarct. A failing RV depends on good filling (it is "preload-dependent"). GTN dilates the veins and reduces filling, so the BP drops suddenly. Clear lungs (the left side isn't overloaded) with a raised JVP (blood backing up behind the right ventricle) is the classic picture.

❌ Why the other options are wrong:
• Cardiac tamponade from free wall rupture of the LV — Free wall rupture with tamponade is a later complication (days), with sudden collapse and PEA.
• Allergic reaction to the GTN tablet given — An allergic reaction to GTN is very rare and would show rash or wheeze.
• Left ventricular failure with pulmonary oedema — LV failure would cause crackles and pulmonary oedema, but here the lungs are clear.

⭐ Key point: In inferior MI, record right-sided leads (V4R). If RV infarct is present, give IV fluids and AVOID nitrates, morphine and diuretics.$x$, null),
(7, $x$The door-to-balloon target for primary PCI in STEMI is within:$x$, $x$90 minutes$x$, $x$✅ Correct answer: 90 minutes
In STEMI, a coronary artery is completely blocked and "time is muscle": every minute of delay kills more heart muscle. The target for primary PCI (opening the artery with a balloon and stent) is within 90 minutes of first medical contact or arrival (door-to-balloon). If PCI can't be done within 120 minutes, thrombolysis should be given within 30 minutes of arrival (door-to-needle).

❌ Why the other options are wrong:
• 30 minutes of discharge — "30 minutes of discharge" makes no sense; discharge is at the END of care.
• 6 hours of arrival — 6 hours is far too slow and would allow much more muscle to die.
• 24 hours of the onset — 24 hours from onset is too late for emergency reperfusion in most patients.

⭐ Key point: STEMI targets: ECG within 10 minutes of arrival, door-to-needle under 30 minutes, door-to-balloon under 90 minutes.$x$, null),
(8, $x$A contraindication to thrombolysis in STEMI is:$x$, $x$Ischaemic stroke within 3 months$x$, $x$✅ Correct answer: Ischaemic stroke within 3 months
Thrombolytic drugs (streptokinase, alteplase, tenecteplase) dissolve clots everywhere in the body, so anything that could cause dangerous bleeding is a contraindication. An ischaemic stroke within the last 3 months is an absolute contraindication, because the damaged brain area can bleed (haemorrhagic transformation).

❌ Why the other options are wrong:
• Controlled hypertension on treatment — Controlled hypertension is not a contraindication; only severe uncontrolled BP (above 180/110) is a relative one.
• Age over 60 years with diabetes — Age over 60 with diabetes is not a contraindication.
• Previous MI more than 5 years ago — An old MI (over 5 years ago) is not a contraindication.

⭐ Key point: Absolute contraindications: any previous brain bleed, ischaemic stroke in 3 months, brain tumour, active bleeding, suspected aortic dissection, major head trauma or surgery in 3 weeks.$x$, null),
(9, $x$Successful reperfusion after thrombolysis is suggested by:$x$, $x$ST elevation falls by over 50% and the pain settles$x$, $x$✅ Correct answer: ST elevation falls by over 50% and the pain settles
When the clot is dissolved and blood flows again (reperfusion), the heart muscle stops being injured. The ST elevation falls quickly (by more than 50% within 60–90 minutes) and the chest pain eases. Reperfusion arrhythmias, such as accelerated idioventricular rhythm, may also briefly appear and are a good sign.

❌ Why the other options are wrong:
• Complete heart block develops with a slow ventricular rate — Complete heart block is a complication, not a sign of success.
• Chest pain persists with steadily rising ST segments — Ongoing pain with rising ST elevation means the artery is still blocked; the patient needs rescue PCI.
• New Q waves appear in the same leads within an hour — New Q waves show dead muscle (infarction), not successful reperfusion.

⭐ Key point: If ST elevation does not fall by 50% within 90 minutes of thrombolysis, refer for rescue PCI.$x$, null),
(10, $x$A patient 4 days after MI develops a new harsh pansystolic murmur and acute pulmonary oedema. The nurse suspects:$x$, $x$Papillary muscle or ventricular septal rupture$x$, $x$✅ Correct answer: Papillary muscle or ventricular septal rupture
Three to five days after an MI, dead heart muscle is at its softest and can tear. A papillary muscle rupture causes sudden severe mitral regurgitation (blood leaks back into the lungs). A ventricular septal rupture makes a hole between the ventricles. Both cause a NEW, loud, harsh pansystolic murmur and sudden pulmonary oedema or shock. They are surgical emergencies.

❌ Why the other options are wrong:
• Acute pericarditis with a pericardial friction rub — Pericarditis causes a scratchy friction rub and sharp pain, not a pansystolic murmur with pulmonary oedema.
• Normal healing of the infarct with scar formation — Normal healing does not produce a new murmur and pulmonary oedema.
• Dressler's syndrome with fever and pleuritic pain — Dressler's syndrome occurs weeks later, with fever, pleuritic pain and a rub.

⭐ Key point: Mechanical complications after MI (papillary muscle rupture, VSD, free wall rupture) usually happen at 3–5 days. Listen to the heart every day after MI.$x$, null),
(11, $x$Hypertensive emergency differs from hypertensive urgency because emergency has:$x$, $x$Acute end-organ damage$x$, $x$✅ Correct answer: Acute end-organ damage
The difference is end-organ damage. In hypertensive EMERGENCY, very high BP (usually above 180/120) is actively damaging organs now: brain (encephalopathy, stroke), heart (ACS, pulmonary oedema), kidneys (AKI), aorta (dissection), eyes (papilloedema), or pregnancy (eclampsia). Hypertensive URGENCY has very high BP WITHOUT acute organ damage.

❌ Why the other options are wrong:
• A history of hypertension — A history of hypertension is common in both and doesn't separate them.
• Symptoms of headache only — A headache alone doesn't prove organ damage; urgency can also cause headache.
• A systolic BP above 180 — Both can have systolic BP above 180; the number alone doesn't decide.

⭐ Key point: Emergency = high BP + organ damage → ICU and IV drugs, lowering BP carefully. Urgency = high BP alone → oral drugs, lowering BP over 24–48 hours.$x$, null),
(12, $x$In hypertensive emergency (without aortic dissection), the MAP should be reduced in the first hour by no more than:$x$, $x$25%$x$, $x$✅ Correct answer: 25%
In chronic hypertension, the brain, heart and kidneys have adapted to high pressure (autoregulation is reset higher). If the BP is dropped too fast, these organs suddenly don't get enough blood and can be damaged: stroke, MI, AKI or blindness. The rule is to lower MAP by no more than 25% in the first hour, then to about 160/100 over the next 2–6 hours, then to normal over 24–48 hours.

❌ Why the other options are wrong:
• 5% — 5% is too little to protect organs that are being damaged.
• 75% — 75% is a dangerous, catastrophic drop.
• 50% — 50% is too fast and risks ischaemic damage.

⭐ Key point: Exceptions where BP is lowered faster: aortic dissection (systolic 100–120 within 20 minutes) and severe pre-eclampsia or eclampsia.$x$, null),
(13, $x$A patient with tearing chest pain radiating to the back and unequal arm blood pressures most likely has:$x$, $x$Aortic dissection$x$, $x$✅ Correct answer: Aortic dissection
Aortic dissection is a tear in the inner layer of the aorta. Blood forces its way between the layers, causing sudden, severe, TEARING or ripping pain that goes through to the back (between the shoulder blades). If the tear affects the branches to the arms, the BP and pulses differ between the arms (more than 20 mmHg). The chest X-ray may show a wide mediastinum, and CT angiography confirms it.

❌ Why the other options are wrong:
• Oesophageal spasm — Oesophageal spasm causes squeezing chest pain, often with swallowing, but normal BP in both arms.
• Pulmonary embolism — PE causes breathlessness and pleuritic pain, not unequal arm pressures.
• Acute pericarditis — Pericarditis causes sharp pain better sitting forward, not tearing back pain with unequal pulses.

⭐ Key point: NEVER give thrombolysis or heparin in suspected dissection. Lower the HR and BP and call the cardiothoracic surgeons (type A involves the ascending aorta and needs surgery).$x$, null),
(14, $x$In aortic dissection, IV beta-blockers are given before vasodilators to:$x$, $x$Prevent reflex tachycardia that raises shear stress$x$, $x$✅ Correct answer: Prevent reflex tachycardia that raises shear stress
In aortic dissection, the force of each heartbeat (shear stress) pushes the tear further along. Vasodilators like nitroprusside lower BP but cause a REFLEX TACHYCARDIA (the heart speeds up), which increases the force on the aortic wall and can extend the dissection. Giving a beta-blocker first (such as labetalol or esmolol) slows the heart and reduces the force of contraction, so the vasodilator can then lower BP safely.

❌ Why the other options are wrong:
• Raise the blood pressure before surgical repair — The aim is to LOWER the BP, not raise it.
• Increase the cardiac output and organ perfusion — The aim is to reduce the force of pumping, not increase output.
• Dissolve the intimal flap and close the false lumen — No drug dissolves the flap; repair is surgical or with an endovascular stent.

⭐ Key point: Dissection targets: heart rate about 60/min and systolic BP 100–120 mmHg. Give pain relief (opioids), because pain raises HR and BP.$x$, null),
(15, $x$A patient with new atrial fibrillation (rate 160) becomes hypotensive and confused. The immediate treatment is:$x$, $x$Synchronised DC cardioversion$x$, $x$✅ Correct answer: Synchronised DC cardioversion
This patient has new AF with a fast rate AND adverse features: low BP and confusion (shock and poor brain perfusion). An UNSTABLE tachyarrhythmia needs immediate SYNCHRONISED DC cardioversion (under sedation if conscious), which resets the heart into normal rhythm. The shock is timed to the R wave so it doesn't land on the T wave and cause VF.

❌ Why the other options are wrong:
• Observation with repeat ECG in 24 hours — Waiting 24 hours with observation would let the patient deteriorate or die.
• IV furosemide bolus and fluid restriction — Furosemide and fluid restriction don't treat the rhythm and would lower BP further.
• Oral digoxin loading over 24 hours — Oral digoxin takes hours to work and is far too slow for an unstable patient.

⭐ Key point: Adverse features that demand cardioversion: shock (low BP), syncope, myocardial ischaemia (chest pain), and heart failure. Stable AF is treated with rate control (beta-blockers) and anticoagulation.$x$, null),
(16, $x$Before elective cardioversion of AF lasting more than 48 hours, the patient needs:$x$, $x$3 weeks of anticoagulation, or TOE to exclude thrombus$x$, $x$✅ Correct answer: 3 weeks of anticoagulation, or TOE to exclude thrombus
In AF lasting more than 48 hours, blood pools in the left atrium (especially the appendage) and can form a clot. When normal rhythm returns, the atrium contracts again and can throw the clot to the brain, causing a stroke. To prevent this, the patient needs at least 3 WEEKS of effective anticoagulation BEFORE cardioversion, or a TOE (trans-oesophageal echo) to show there is no clot, then anticoagulation for at least 4 weeks afterwards.

❌ Why the other options are wrong:
• Only a chest X-ray to check the heart size — A chest X-ray can't show a clot inside the heart.
• A single loading dose of aspirin on the day — A single dose of aspirin doesn't protect against AF stroke.
• No preparation, as long as the patient is stable — Being stable does not remove the clot risk.

⭐ Key point: Use the CHA₂DS₂-VASc score to decide long-term anticoagulation in AF.$x$, null),
(17, $x$Adenosine is used in narrow-complex regular tachycardia (SVT). The nurse should warn the patient about:$x$, $x$Brief chest tightness and a sense of impending doom$x$, $x$✅ Correct answer: Brief chest tightness and a sense of impending doom
Adenosine briefly blocks the AV node for a few seconds to stop SVT. Its half-life is under 10 seconds, so it must be pushed RAPIDLY into a large vein (antecubital), followed immediately by a fast saline flush. As it works, the heart may pause for a few seconds, and the patient often feels chest tightness, flushing, breathlessness and a frightening "sense of impending doom". Warn the patient beforehand that it lasts only seconds.

❌ Why the other options are wrong:
• Permanent bradycardia needing a pacemaker — Adenosine works for seconds; it does not cause permanent bradycardia.
• Long-lasting drowsiness for several hours after — Its effects pass in seconds, not hours.
• Severe hypertension lasting for several hours — It causes brief flushing and possible low BP, not hours of high BP.

⭐ Key point: Doses: 6 mg rapid IV, then 12 mg, then a further 12 mg (some guidelines 18 mg). Avoid in severe asthma (bronchospasm). Run an ECG strip during the injection.$x$, null),
(18, $x$Torsades de pointes is treated first with:$x$, $x$IV magnesium sulphate 2 g$x$, $x$✅ Correct answer: IV magnesium sulphate 2 g
IV magnesium sulphate 2 g (8 mmol) over 10 minutes is the first-line treatment for torsades de pointes, even if the magnesium level is normal. Magnesium stabilises the heart muscle cell membrane and stops the abnormal triggered beats. Also stop all QT-prolonging drugs and correct potassium to 4.5–5.0. Pulseless torsades is defibrillated.

❌ Why the other options are wrong:
• IV amiodarone 300 mg — Amiodarone PROLONGS the QT interval and can make torsades worse.
• IV digoxin 500 micrograms — Digoxin doesn't treat torsades and can cause other arrhythmias.
• IV adenosine 6 mg — Adenosine is for narrow-complex SVT, not polymorphic VT.

⭐ Key point: If torsades keeps recurring, overdrive pacing or isoprenaline (which shortens the QT by raising the heart rate) can be used.$x$, null),
(19, $x$Cardiogenic shock after a large anterior MI is treated with:$x$, $x$Urgent revascularisation, inotropes and IABP support$x$, $x$✅ Correct answer: Urgent revascularisation, inotropes and IABP support
Cardiogenic shock after a large anterior MI is caused by a big area of dead or stunned heart muscle. The most important treatment is URGENT REVASCULARISATION (PCI or CABG) to restore blood flow to the living muscle. Meanwhile, inotropes (dobutamine, or noradrenaline if BP is very low) support the pump, and mechanical support (IABP or Impella) reduces afterload and improves coronary flow.

❌ Why the other options are wrong:
• Routine high-dose diuretics only, until the BP improves — High-dose diuretics alone lower BP further and don't fix the pump.
• IV beta-blockers to lower the heart rate and oxygen use — Beta-blockers WEAKEN contraction and can worsen shock.
• Large fluid boluses alone to fill the failing ventricle — Large fluid boluses would flood the lungs in a failing left ventricle (careful small boluses only if preload is low).

⭐ Key point: The SHOCK trial showed early revascularisation saves lives in cardiogenic shock. Death rate without treatment is very high (about 50%).$x$, null),
(20, $x$Troponin in acute MI begins to rise within about:$x$, $x$3–4 hours of symptom onset$x$, $x$✅ Correct answer: 3–4 hours of symptom onset
Troponin is released when heart muscle cells are damaged. It begins to rise in the blood about 3–4 hours after symptoms start (high-sensitivity tests detect it earlier, within 1–3 hours). It peaks at about 24–48 hours and stays raised for up to 10–14 days. That's why troponin is checked on arrival and repeated after a few hours if the first is normal.

❌ Why the other options are wrong:
• 30 minutes of symptom onset — At 30 minutes it is often still normal, so a normal early troponin doesn't rule out MI.
• 7 days after the event — By 7 days it is falling, not just starting to rise.
• 24 hours only — It rises much earlier than 24 hours.

⭐ Key point: Never wait for troponin to treat a STEMI. The ECG diagnoses STEMI; troponin confirms damage in NSTEMI.$x$, null),
(21, $x$A patient in DKA presents with deep, rapid breathing (Kussmaul respirations) and a fruity breath odour. This reflects the body's attempt to:$x$, $x$Compensate for metabolic acidosis by blowing off CO2$x$, $x$✅ Correct answer: Compensate for metabolic acidosis by blowing off CO2
In DKA, ketones (acids) build up, causing metabolic acidosis. The body tries to raise the pH by breathing faster and deeper (Kussmaul breathing) to blow off CO₂, which is a respiratory acid. This is respiratory COMPENSATION for metabolic acidosis. The "fruity" or pear-drop smell on the breath is acetone, a ketone breathed out.

❌ Why the other options are wrong:
• Increase oxygen delivery with no relation to acid-base status — The breathing pattern is about acid, not oxygen delivery.
• Reduce blood glucose directly through breathing — Breathing does not lower blood glucose.
• Compensate for respiratory alkalosis — The problem is ACIDOSIS, not alkalosis; Kussmaul breathing compensates for acidosis.

⭐ Key point: Kussmaul breathing = deep, sighing, rapid breaths in metabolic acidosis (DKA, kidney failure, lactic acidosis). It slows as the acidosis is corrected.$x$, null),
(22, $x$A patient with diabetic ketoacidosis has K⁺ 5.2 mEq/L before insulin therapy. After starting insulin, which K⁺ level indicates effective treatment?$x$, $x$3.2 mEq/L$x$, $x$✅ Correct answer: 3.2 mEq/L
Insulin drives potassium (with glucose) into the cells. In DKA, total body potassium is low even if the blood level looks normal or high, because acidosis pushes potassium out of the cells. When insulin starts, potassium moves back in and the blood level FALLS. A drop from 5.2 to 3.2 shows insulin is working (potassium has shifted into cells). But 3.2 is LOW and must be replaced to prevent arrhythmias.

❌ Why the other options are wrong:
• 4.8 mEq/L — 4.8 shows almost no shift.
• 3.9 mEq/L — 3.9 is a smaller fall, and the question's key looks for the biggest shift that shows the insulin effect.
• 5.0 mEq/L — 5.0 is almost unchanged.

⭐ Key point: In DKA, add potassium to the IV fluids once K⁺ is below 5.5 and urine is flowing. Check K⁺ every 1–2 hours at first. Hold insulin if K⁺ is below 3.3.$x$, null),
(23, $x$The LEAST important part of initial DKA treatment is:$x$, $x$Giving sodium bicarbonate$x$, $x$✅ Correct answer: Giving sodium bicarbonate
The question asks which is LEAST important. Sodium bicarbonate is rarely needed in DKA, and only if the pH is below about 6.9. The acidosis corrects itself once insulin stops ketone production and fluids restore circulation. Bicarbonate can cause harm: low potassium, worsening acidosis inside brain cells, and cerebral oedema in children.

❌ Why the other options are wrong:
• Lowering blood glucose with insulin — Insulin IS essential: it stops ketone production and lowers glucose.
• Giving potassium chloride — Potassium IS essential: levels fall dangerously once insulin starts.
• Giving fluids — Fluids ARE the first and most important treatment: patients are often 5–8 litres dry.

⭐ Key point: DKA priority order: 1) fluids, 2) potassium check and replacement, 3) fixed-rate insulin, 4) find and treat the trigger (infection, missed insulin, MI).$x$, null),
(24, $x$In DKA, insulin infusion is started at a fixed rate of:$x$, $x$0.1 units/kg/hour$x$, $x$✅ Correct answer: 0.1 units/kg/hour
Current DKA guidance uses a FIXED-RATE IV insulin infusion of 0.1 units/kg/hour (about 7 units/hour for a 70 kg adult), using soluble insulin (50 units in 50 mL of 0.9% saline). It is fixed by weight, not adjusted by glucose level. The aim is to clear ketones (falling by at least 0.5 mmol/L per hour). When glucose falls below 14 mmol/L, add 10% dextrose and keep the insulin going until the ketones clear.

❌ Why the other options are wrong:
• 10 units/hour for all — 10 units/hour for everyone ignores body weight and is too much for most patients.
• 1 unit/kg/hour — 1 unit/kg/hour is ten times too much.
• 0.01 units/kg/hour — 0.01 units/kg/hour is ten times too little.

⭐ Key point: Continue the patient's usual long-acting insulin during DKA treatment. Don't stop the IV insulin until ketones are below 0.6 and the patient is eating.$x$, null),
(25, $x$Insulin should not be started in DKA until the potassium is at least:$x$, $x$3.3 mmol/L$x$, $x$✅ Correct answer: 3.3 mmol/L
Insulin pushes potassium into the cells and lowers the blood level quickly. If potassium is already LOW (below 3.3 mmol/L) when insulin starts, it can drop to a dangerous level and cause fatal arrhythmias (VT, VF) and muscle weakness, including of the breathing muscles. So if K⁺ is below 3.3, give potassium first (and fluids), then start insulin once K⁺ reaches 3.3 or more.

❌ Why the other options are wrong:
• 2.0 mmol/L — 2.0 is dangerously low; insulin must not be started at this level.
• 6.5 mmol/L — 6.5 is HIGH; insulin can be started (and will help lower it).
• 5.5 mmol/L — 5.5 is above the safe threshold; the minimum is 3.3, not 5.5.

⭐ Key point: Potassium in DKA: above 5.5, give no K⁺ in the fluids; 3.5–5.5, add 40 mmol/L; below 3.3, hold insulin and replace K⁺ first.$x$, null),
(26, $x$A major risk of correcting DKA too rapidly in a child is:$x$, $x$Cerebral oedema$x$, $x$✅ Correct answer: Cerebral oedema
In DKA, the brain cells adapt to the high glucose and osmolality. If fluids are given too fast or glucose falls too quickly, water rushes into the brain cells, causing CEREBRAL OEDEMA. Children are at the highest risk; it is the main cause of death in childhood DKA. Fluids are therefore given more slowly in children (over 48 hours), with no insulin bolus.

❌ Why the other options are wrong:
• Hyperkalaemia — Hyperkalaemia is not the main risk of rapid correction; potassium usually falls with treatment.
• Hypernatraemia — Sodium does rise as glucose falls, but hypernatraemia is not the classic danger.
• Pulmonary embolism — PE can occur in HHS (thick blood) but isn't the main risk of rapid DKA correction in a child.

⭐ Key point: Warning signs of cerebral oedema: headache, irritability, falling GCS, slow pulse and rising BP. Treat with mannitol or 3% saline and reduce the fluid rate.$x$, null),
(27, $x$Hyperosmolar hyperglycaemic state differs from DKA because HHS has:$x$, $x$Very high glucose and osmolality with little ketosis$x$, $x$✅ Correct answer: Very high glucose and osmolality with little ketosis
HHS (hyperosmolar hyperglycaemic state) occurs mainly in older type 2 diabetics. They still make a little insulin, enough to stop ketone production but not enough to control glucose. Glucose climbs very high (often above 30–33 mmol/L), the blood becomes very concentrated (osmolality above 320 mOsm/kg), and the patient becomes severely dehydrated and confused, with little or no ketosis or acidosis.

❌ Why the other options are wrong:
• Low serum osmolality with a metabolic alkalosis — HHS has HIGH osmolality, not low, and no metabolic alkalosis.
• Hypoglycaemia with confusion and sweating — Hypoglycaemia is the opposite problem.
• Severe ketoacidosis with a low or normal glucose — Severe ketoacidosis with low or normal glucose fits euglycaemic DKA (for example with SGLT2 inhibitors), not HHS.

⭐ Key point: HHS develops over days, and the fluid loss is huge (10 L or more). The death rate is higher than in DKA. Watch for clots and give prophylactic LMWH.$x$, null),
(28, $x$In HHS, the first-line treatment is:$x$, $x$Slow IV 0.9% saline rehydration$x$, $x$✅ Correct answer: Slow IV 0.9% saline rehydration
In HHS, the main problem is extreme dehydration and very high osmolality. The first treatment is IV 0.9% saline given steadily (about 1 L in the first hour, then guided by response), which itself lowers glucose and osmolality. Correction must be SLOW (osmolality falling by no more than 3–8 mOsm/kg per hour) to avoid cerebral oedema and central pontine myelinolysis. Low-dose insulin (0.05 units/kg/hour) is added only when glucose stops falling with fluids.

❌ Why the other options are wrong:
• Hypotonic fluid rapidly — Fast hypotonic fluid lowers osmolality too quickly and risks brain swelling.
• Sodium bicarbonate infusion — Bicarbonate isn't needed; there is little acidosis.
• High-dose insulin bolus — A high-dose insulin bolus lowers glucose too fast and pushes water into the cells.

⭐ Key point: In HHS, fluids alone lower glucose. Monitor osmolality, sodium, glucose and fluid balance closely, and watch for heart failure in older patients.$x$, null),
(29, $x$Thyroid storm presents with:$x$, $x$Hyperpyrexia, tachyarrhythmia, agitation, heart failure$x$, $x$✅ Correct answer: Hyperpyrexia, tachyarrhythmia, agitation, heart failure
Thyroid storm is life-threatening hyperthyroidism, usually triggered by surgery, infection, labour, or stopping anti-thyroid drugs. Too much thyroid hormone speeds up everything: very high fever (hyperpyrexia, often above 40 °C), very fast heart rate or AF, heart failure, agitation, confusion, delirium, vomiting and diarrhoea, and finally coma.

❌ Why the other options are wrong:
• Hypothermia, bradycardia and a slow decline into coma — Hypothermia, bradycardia and coma describe myxoedema coma (low thyroid).
• Hypoglycaemia with low sodium and high potassium — Low glucose, low sodium and high potassium describe adrenal crisis.
• Weight gain, cold intolerance and slowed thinking — Weight gain, cold intolerance and slow thinking describe hypothyroidism.

⭐ Key point: Treatment order: beta-blocker (propranolol) for the heart, PTU or carbimazole to stop hormone production, Lugol's iodine 1 hour AFTER PTU, hydrocortisone, and cooling with paracetamol (not aspirin).$x$, null),
(30, $x$Myxoedema coma is characterised by:$x$, $x$Hypothermia, bradycardia, hypoventilation, coma$x$, $x$✅ Correct answer: Hypothermia, bradycardia, hypoventilation, coma
Myxoedema coma is the most severe form of hypothyroidism. Lack of thyroid hormone slows everything down: low body temperature (hypothermia), slow pulse (bradycardia), slow breathing with CO₂ retention (hypoventilation), low BP, low sodium, low glucose, and reduced consciousness leading to coma. The face is puffy and the skin dry. It is often triggered by cold, infection or sedatives in elderly women.

❌ Why the other options are wrong:
• Hyperthermia, tachycardia and agitation — High temperature, fast pulse and agitation describe thyroid STORM (too much hormone).
• Severe hypertension with a headache — Severe hypertension with headache doesn't fit myxoedema coma.
• Diarrhoea, weight loss and tremor — Diarrhoea, weight loss and tremor are signs of HYPERthyroidism.

⭐ Key point: Treat with IV thyroxine or T3, plus IV hydrocortisone (adrenal insufficiency may coexist), slow passive rewarming, ventilation, and treatment of the trigger.$x$, null),
(31, $x$Addisonian (adrenal) crisis typically presents with:$x$, $x$Hypotension, low Na⁺, high K⁺ and low glucose$x$, $x$✅ Correct answer: Hypotension, low Na⁺, high K⁺ and low glucose
The adrenal glands make cortisol (which keeps BP and glucose up) and aldosterone (which keeps sodium in and pushes potassium out). In adrenal crisis, both are lacking. The patient has low BP or shock not responding to fluids, LOW sodium, HIGH potassium, LOW glucose, vomiting and abdominal pain. It is often triggered by stopping long-term steroids suddenly, or by infection or surgery in someone with Addison's disease.

❌ Why the other options are wrong:
• Hypertension with low potassium and alkalosis — High BP with low potassium describes HYPERaldosteronism (Conn's syndrome).
• High glucose with weight gain and striae — High glucose with weight gain and striae describes Cushing's syndrome (too much cortisol).
• High sodium with polyuria and thirst — High sodium with polyuria and thirst suggests diabetes insipidus.

⭐ Key point: Give IV hydrocortisone 100 mg immediately (don't wait for results), IV 0.9% saline, and dextrose for low glucose.$x$, null),
(32, $x$The first drug for anaphylaxis with stridor and hypotension is:$x$, $x$IM adrenaline 0.5 mg (1:1000)$x$, $x$✅ Correct answer: IM adrenaline 0.5 mg (1:1000)
Adrenaline is the most important drug in anaphylaxis. It narrows the blood vessels (raises BP, reduces swelling), opens the airways (relieves wheeze and stridor) and stops further release of chemicals from mast cells. The dose is 0.5 mg IM (0.5 mL of 1:1000) into the outer thigh, repeated every 5 minutes if needed. IM works fast and is safe.

❌ Why the other options are wrong:
• Nebulised salbutamol 5 mg via mask — Nebulised salbutamol helps wheeze but does not treat swelling or shock.
• IV hydrocortisone 200 mg bolus — Hydrocortisone works too slowly (hours) to save life in the first minutes.
• IV chlorphenamine 10 mg slowly — Chlorphenamine only helps itching and hives; it doesn't treat airway swelling or shock.

⭐ Key point: IM adrenaline doses: adult 0.5 mg, child 6–12 years 0.3 mg, child under 6 years 0.15 mg. Also give high-flow oxygen and a fluid bolus.$x$, null),
(33, $x$After anaphylaxis is treated, the patient is observed for at least 6–12 hours because of:$x$, $x$Biphasic (late) reactions$x$, $x$✅ Correct answer: Biphasic (late) reactions
About 5–20% of patients have a BIPHASIC reaction: symptoms come back hours after the first reaction settles (usually within 12 hours, but up to 72 hours), without re-exposure to the trigger. Patients are observed for at least 6–12 hours (longer if the reaction was severe or needed more than one adrenaline dose) so a second reaction can be treated quickly.

❌ Why the other options are wrong:
• Steroid side effects — Steroid side effects are not the reason for observation.
• Delayed drug absorption — Delayed drug absorption is not the main reason; the risk is a return of the reaction itself.
• Hypoglycaemia — Hypoglycaemia is not a feature of anaphylaxis.

⭐ Key point: Before discharge: two adrenaline auto-injectors, teaching on how to use them, an allergy referral, and a clear record of the allergy.$x$, null),
(34, $x$Severe hypoglycaemia in an unconscious ICU patient is treated with:$x$, $x$IV 10% dextrose 150–200 mL (or 20% dextrose 75–100 mL)$x$, $x$✅ Correct answer: IV 10% dextrose 150–200 mL (or 20% dextrose 75–100 mL)
An unconscious patient cannot swallow, so oral glucose is dangerous (aspiration). The fastest safe treatment is IV dextrose: 150–200 mL of 10% dextrose (or 75–100 mL of 20%) over about 15 minutes. Recheck glucose after 10–15 minutes and repeat if still below 4 mmol/L. Then find the cause (insulin infusion rate, feeds stopped, liver failure, sepsis).

❌ Why the other options are wrong:
• IV insulin 10 units to reset the glucose control — Insulin would make hypoglycaemia worse and could kill.
• Oral glucose gel placed into the patient's mouth — Oral gel in an unconscious patient risks aspiration.
• IM glucagon only, repeated every 10 minutes — IM glucagon is used when there is NO IV access; it works poorly in liver disease or starvation and is not repeated every 10 minutes.

⭐ Key point: 50% dextrose is no longer preferred because it damages veins if it leaks. Once the patient wakes, give a longer-acting carbohydrate or feed.$x$, null),
(35, $x$Hyperkalaemia with ECG changes is first treated with:$x$, $x$IV calcium gluconate 10% to protect the heart$x$, $x$✅ Correct answer: IV calcium gluconate 10% to protect the heart
High potassium makes heart muscle cells unstable and can cause fatal arrhythmias (VF, asystole). IV calcium gluconate 10% (30 mL) STABILISES the heart muscle membrane within minutes, protecting the heart while other treatments lower the potassium. It does NOT lower the potassium itself. The ECG should improve; repeat the dose if it doesn't.

❌ Why the other options are wrong:
• Oral potassium binders as the only treatment — Oral binders work far too slowly (hours to days) for an emergency.
• IV furosemide alone to excrete potassium — Furosemide helps remove potassium only if the kidneys work; it's not the first step.
• IV potassium chloride to correct the ECG — Giving potassium chloride would make hyperkalaemia worse and could cause cardiac arrest.

⭐ Key point: The order is: 1) protect the heart (calcium), 2) shift K⁺ into cells (insulin 10 units with 25 g glucose, salbutamol nebuliser), 3) remove K⁺ (dialysis, binders, diuretics).$x$, null),
(36, $x$Syndrome of inappropriate ADH (SIADH) causes:$x$, $x$Low sodium with concentrated urine, euvolaemic$x$, $x$✅ Correct answer: Low sodium with concentrated urine, euvolaemic
In SIADH, too much ADH makes the kidneys keep too much water. The extra water dilutes the blood, giving LOW sodium (hyponatraemia), while the urine is CONCENTRATED (inappropriately, given the low sodium). The patient is euvolaemic (no obvious swelling or dehydration), because the extra water spreads throughout all body compartments. Causes: head injury, meningitis, pneumonia, lung cancer, drugs (carbamazepine, SSRIs), and surgery.

❌ Why the other options are wrong:
• High sodium with very dilute urine and thirst — High sodium with dilute urine and thirst describes DIABETES INSIPIDUS (too little ADH).
• High potassium with a metabolic acidosis — High potassium with metabolic acidosis suggests adrenal insufficiency or kidney failure.
• Hypovolaemia with polyuria and low urine sodium — Hypovolaemia with lots of urine suggests diabetes insipidus or cerebral salt wasting, not SIADH.

⭐ Key point: Treat SIADH with fluid restriction (about 800–1000 mL/day). Raise sodium slowly: no more than 8–10 mmol/L in 24 hours.$x$, null),
(37, $x$Too-rapid correction of chronic hyponatraemia can cause:$x$, $x$Osmotic demyelination syndrome$x$, $x$✅ Correct answer: Osmotic demyelination syndrome
In long-standing low sodium, brain cells adjust by losing solutes so they don't swell. If sodium is then raised too quickly, water is pulled out of the brain cells and the myelin around nerves in the pons (brainstem) is damaged. This is osmotic demyelination syndrome (central pontine myelinolysis). It appears 2–6 days later with difficulty speaking and swallowing, weakness of all limbs, "locked-in" syndrome, or death.

❌ Why the other options are wrong:
• Severe hyperkalaemia and arrhythmia — Hyperkalaemia is not caused by correcting sodium.
• Acute intracerebral haemorrhage — Brain haemorrhage is not the typical complication.
• Pulmonary oedema and hypoxia — Pulmonary oedema can follow too much IV fluid, but it is not the classic complication of rapid sodium correction.

⭐ Key point: Safe correction: no more than 8–10 mmol/L in 24 hours (6–8 in high-risk patients such as alcohol misuse or malnutrition). If it rises too fast, it can be lowered again with water or desmopressin.$x$, null),
(38, $x$Lactic acidosis in septic shock mainly reflects:$x$, $x$Tissue hypoperfusion and anaerobic metabolism$x$, $x$✅ Correct answer: Tissue hypoperfusion and anaerobic metabolism
In septic shock, blood flow to the tissues is poor (low BP, microcirculation problems), so cells don't get enough oxygen. Without oxygen, cells switch to ANAEROBIC metabolism, which makes lactate (lactic acid). A high lactate (above 2 mmol/L) shows tissue hypoperfusion; above 4 mmol/L means severe shock and a high risk of death. A falling lactate shows resuscitation is working.

❌ Why the other options are wrong:
• Renal retention of bicarbonate in shock — The kidneys don't hold bicarbonate in shock; the problem is acid production.
• Liver overproduction of glucose from stress — The liver CLEARS lactate; liver failure can worsen it, but overproduction of glucose isn't the cause.
• Excess dietary lactate from enteral feeding — Enteral feeds don't cause lactic acidosis.

⭐ Key point: Measure lactate in the first hour of sepsis and repeat it within 2–4 hours if it was raised ("lactate clearance").$x$, null),
(39, $x$Paracetamol overdose is treated with:$x$, $x$IV N-acetylcysteine according to the nomogram$x$, $x$✅ Correct answer: IV N-acetylcysteine according to the nomogram
N-acetylcysteine (NAC) replaces glutathione, which mops up the toxic paracetamol breakdown product (NAPQI) that destroys liver cells. Treatment is guided by the paracetamol blood level taken 4 hours or more after ingestion, plotted on the treatment nomogram. If the level is above the line, NAC is given IV (usually as a 2- or 3-bag regimen). It works best within 8 hours but is still given later.

❌ Why the other options are wrong:
• IV flumazenil — Flumazenil reverses benzodiazepines, not paracetamol.
• Oral activated charcoal only after 24 hours — Activated charcoal helps only within about 1 hour of ingestion, not after 24 hours.
• IV naloxone — Naloxone reverses opioids, not paracetamol.

⭐ Key point: Give NAC immediately without waiting for the level if the time of ingestion is unknown, the overdose was staggered, or the patient presents more than 8 hours after a large overdose.$x$, null),
(40, $x$Organophosphate poisoning is treated with:$x$, $x$Atropine until the chest is dry, plus pralidoxime$x$, $x$✅ Correct answer: Atropine until the chest is dry, plus pralidoxime
Organophosphates block the enzyme acetylcholinesterase, so acetylcholine builds up and overstimulates nerves. ATROPINE blocks the muscarinic effects: it dries the "wet" chest (bronchorrhoea), raises a slow heart rate and stops vomiting and diarrhoea. Double the dose every 5 minutes until the chest is dry, the heart rate is above 80 and the systolic BP is above 80. PRALIDOXIME (an oxime) reactivates the enzyme and helps muscle weakness if given early.

❌ Why the other options are wrong:
• Naloxone and flumazenil given together — Naloxone and flumazenil reverse opioids and benzodiazepines, not organophosphates.
• Neostigmine infusion to reverse weakness — Neostigmine blocks the same enzyme and would make the poisoning WORSE.
• Adrenaline and hydrocortisone IV — Adrenaline and hydrocortisone treat anaphylaxis, not organophosphate poisoning.

⭐ Key point: Organophosphate signs: SLUDGE (salivation, lacrimation, urination, defecation, GI cramps, emesis), "killer Bs" (bradycardia, bronchorrhoea, bronchospasm), small pupils and twitching. Decontaminate the patient and protect staff with PPE.$x$, null),
(41, $x$Identify the five main components of a computer system in their order?$x$, $x$CPU, Memory, System bus, Input, Output$x$, $x$✅ Correct answer: CPU, Memory, System bus, Input, Output
Every computer system has five main parts that work together in this order. The CPU is the brain that processes instructions. MEMORY (RAM) holds data and programs while they are used. The SYSTEM BUS is the set of electrical pathways that carries data between the parts. INPUT devices (keyboard, mouse, scanner) put data in, and OUTPUT devices (monitor, printer, speakers) give results out.

❌ Why the other options are wrong:
• Modem, Keyboard, Word Processor, Printer, Screen — A modem, word processor and screen are individual devices or software, not the five core system parts.
• Memory, Video card, Monitor, Software, Hardware — A video card is one component, and "software" and "hardware" are categories, not system components.
• CPU, CD-ROM, Mouse, Keyboard, Sound card — A CD-ROM, sound card and mouse are individual devices, not the core architecture.

⭐ Key point: Hardware = the physical parts. Software = the programs. The CPU contains the control unit and the ALU (arithmetic logic unit).$x$, null),
(42, $x$Multi-user processing in a hospital computer system allows:$x$, $x$Multiple users to access and use the system concurrently$x$, $x$✅ Correct answer: Multiple users to access and use the system concurrently
A multi-user system lets MANY people use the same computer system AT THE SAME TIME, each from their own terminal, with their own login and access rights. In a hospital, nurses, doctors, the pharmacy, the laboratory and radiology can all enter and view patient data at once. This is how hospital information systems and electronic records work.

❌ Why the other options are wrong:
• Only one staff member to use the system at any given time — Allowing only one person at a time would be a single-user system.
• No simultaneous data entry by different departments — Multi-user systems specifically ALLOW simultaneous data entry.
• Only administrators to log in — Many types of user (not only administrators) can log in, each with role-based access.

⭐ Key point: In multi-user systems, each user must have their own password, and all actions are recorded (audit trail). Never share your login.$x$, null),
(43, $x$A nurse is explaining the units of data to a patient. The smallest unit of data in a computer is a:$x$, $x$Bit$x$, $x$✅ Correct answer: Bit
A BIT (binary digit) is the smallest unit of data. It can only be 0 or 1 (off or on). Computers store everything as patterns of bits. Eight bits make one BYTE, which can store one character (such as a letter).

❌ Why the other options are wrong:
• Kilobyte — A kilobyte is about 1000 bytes (8000 bits), much bigger than a bit.
• Megabyte — A megabyte is about 1 million bytes.
• Byte — A byte is 8 bits, so it is bigger than a bit.

⭐ Key point: Order from smallest: bit → byte (8 bits) → kilobyte → megabyte → gigabyte → terabyte (each step about 1000 times bigger; strictly 1024).$x$, null),
(44, $x$A hybrid computer used in ICU monitoring combines:$x$, $x$Analogue signal input with digital processing$x$, $x$✅ Correct answer: Analogue signal input with digital processing
A hybrid computer combines ANALOGUE and DIGITAL features. ICU monitors receive continuous analogue signals from the body (the ECG wave, arterial pressure waves, breathing), then convert them into digital numbers for processing, display, alarms and storage. This combination is what makes them hybrid.

❌ Why the other options are wrong:
• A mainframe linked to a microcomputer — A mainframe linked to a microcomputer is a network, not a hybrid computer.
• Two digital computers working together — Two digital computers working together is a multi-processor or networked system.
• Hardware and software in one box only — Hardware and software are always together in every computer.

⭐ Key point: Analogue = continuous signals (like a wave). Digital = separate numbers (0s and 1s). An analogue-to-digital converter changes one into the other.$x$, null),
(45, $x$Computers classified by size, from largest to smallest, are:$x$, $x$Supercomputer, mainframe, minicomputer, microcomputer$x$, $x$✅ Correct answer: Supercomputer, mainframe, minicomputer, microcomputer
Computers are grouped by size and power, from largest to smallest: SUPERCOMPUTERS (the most powerful; weather forecasting and research), MAINFRAMES (large organisations, banks, big hospital systems), MINICOMPUTERS (medium-sized, for departments), and MICROCOMPUTERS (personal computers: desktops, laptops, tablets).

❌ Why the other options are wrong:
• Server, router, modem, scanner — Servers, routers, modems and scanners are network and input devices, not size classes.
• Microcomputer, minicomputer, mainframe, supercomputer — That order is reversed (smallest to largest).
• Laptop, desktop, tablet, mainframe — Laptops, desktops and tablets are all microcomputers, and mainframe is put in the wrong place.

⭐ Key point: Most computers on hospital wards are microcomputers (personal computers) linked by a network to central servers.$x$, null),
(46, $x$The first generation of computers used:$x$, $x$Vacuum tubes$x$, $x$✅ Correct answer: Vacuum tubes
The first generation of computers (about 1940–1956) used VACUUM TUBES (valves) for their circuits. They were huge (filling whole rooms), used a lot of electricity, produced great heat, and broke down often. ENIAC and UNIVAC are examples.

❌ Why the other options are wrong:
• Integrated circuits — Integrated circuits were used in the THIRD generation (1964–1971).
• Transistors — Transistors were used in the SECOND generation (1956–1963).
• Microprocessors — Microprocessors were used in the FOURTH generation (1971 to today).

⭐ Key point: Generations: 1st vacuum tubes, 2nd transistors, 3rd integrated circuits, 4th microprocessors, 5th artificial intelligence.$x$, null),
(47, $x$The control unit of the CPU:$x$, $x$Directs and coordinates the computer's operations$x$, $x$✅ Correct answer: Directs and coordinates the computer's operations
The CPU has two main parts. The CONTROL UNIT is like a manager: it fetches instructions from memory, decodes them, and directs and coordinates the work of all other parts (memory, ALU, input and output). The ARITHMETIC LOGIC UNIT (ALU) does the actual calculations and logical comparisons.

❌ Why the other options are wrong:
• Performs arithmetic and nothing else — Doing arithmetic is the job of the ALU, not the control unit.
• Prints the results of each calculation — Printing results is done by an output device (the printer).
• Stores data permanently when switched off — Permanent storage is done by the hard disk or other storage, not the control unit.

⭐ Key point: CPU = control unit (directs) + ALU (calculates) + registers (very fast small memory).$x$, null),
(48, $x$A barcode scanner used for patient identification is an example of:$x$, $x$An input device$x$, $x$✅ Correct answer: An input device
An INPUT device puts data INTO the computer. A barcode scanner reads the barcode on a patient's wristband (or a drug) and sends the data into the system. This is used in barcode medication administration (BCMA) to confirm the right patient and the right drug.

❌ Why the other options are wrong:
• A processing device — Processing is done by the CPU.
• An output device — Output devices give information OUT, such as monitors, printers and speakers.
• A storage device — Storage devices keep data, such as hard drives and flash drives.

⭐ Key point: Input: keyboard, mouse, scanner, microphone, touchscreen, webcam. Output: monitor, printer, speaker. Some devices do both (a touchscreen, a modem).$x$, null),
(49, $x$Utility software includes:$x$, $x$Antivirus, compression and backup programs$x$, $x$✅ Correct answer: Antivirus, compression and backup programs
Utility software is a type of SYSTEM software that helps maintain, protect and manage the computer. Examples: antivirus programs (protect against malware), file compression tools (make files smaller, such as zip), backup programs (copy data for safety), disk cleanup and defragmentation.

❌ Why the other options are wrong:
• Microsoft Word, Excel and PowerPoint — Word, Excel and PowerPoint are APPLICATION software (for user tasks).
• The ICU patient monitoring display screen — The ICU monitoring display is application software running on special hardware.
• The computer's processor chip and memory — The processor and memory are HARDWARE.

⭐ Key point: Software types: system software (operating system plus utilities) and application software (programs for users' tasks).$x$, null),
(50, $x$A computer network within one hospital building is a:$x$, $x$Local Area Network (LAN)$x$, $x$✅ Correct answer: Local Area Network (LAN)
A Local Area Network (LAN) connects computers in a small area such as one building, one hospital or one campus. It lets departments share data, printers and the hospital information system quickly and securely. It is usually connected by cables (Ethernet) or Wi-Fi.

❌ Why the other options are wrong:
• Metropolitan Area Network — A Metropolitan Area Network (MAN) covers a city.
• Wide Area Network (WAN) — A Wide Area Network (WAN) covers large distances, such as hospitals in different cities; the internet is the biggest WAN.
• Personal Area Network — A Personal Area Network (PAN) covers a few metres around one person (Bluetooth between a phone and earpiece).

⭐ Key point: From smallest to largest network: PAN → LAN → MAN → WAN.$x$, null),
(51, $x$Electronic mail (e-mail) of patient information should be:$x$, $x$Encrypted and sent only to authorised people$x$, $x$✅ Correct answer: Encrypted and sent only to authorised people
Patient information is CONFIDENTIAL and protected by law and professional codes (including the Nigeria Data Protection Act). When sent by email, it must be ENCRYPTED (scrambled so only the intended receiver can read it) and sent only to authorised people who need it for care, using official hospital email accounts.

❌ Why the other options are wrong:
• Printed and posted on the ward notice board — Posting patient information on a notice board breaches confidentiality.
• Shared in staff group chats for quick advice — Group chats (such as WhatsApp) are not secure and share information with people who don't need it.
• Sent to personal accounts because it is faster — Personal email accounts are not secure or approved for patient data.

⭐ Key point: Only share the minimum information needed, check the address before sending, and never share patient photos on social media.$x$, null),
(52, $x$Telemedicine in critical care (tele-ICU) allows:$x$, $x$Remote specialists to monitor and advise on ICU patients$x$, $x$✅ Correct answer: Remote specialists to monitor and advise on ICU patients
Tele-ICU (telemedicine in critical care) uses video, audio and remote access to monitors and records so that intensivists and specialists at a central hub can watch and advise on ICU patients in other hospitals. This helps remote or understaffed ICUs get expert advice 24 hours a day and can improve survival.

❌ Why the other options are wrong:
• Surgery to be performed by computers on their own — Computers do not perform surgery on their own; even robotic surgery is controlled by surgeons.
• Drugs to be sent to the patient by electronic mail — Drugs cannot be sent by email.
• Patients to be cared for without any bedside nurses — Bedside nurses are still essential; tele-ICU supports them, it does not replace them.

⭐ Key point: Telemedicine benefits include better access, faster expert decisions and less travel. It needs secure, reliable systems and patient consent.$x$, null),
(53, $x$A CT scanner and ultrasound machine are examples of ICT in:$x$, $x$Diagnosis$x$, $x$✅ Correct answer: Diagnosis
ICT in health care is grouped by purpose: DIAGNOSIS (finding out what is wrong), MONITORING, TREATMENT, ADMINISTRATION and EDUCATION. CT scanners and ultrasound machines create images that help doctors find the diagnosis, so they are diagnostic ICT.

❌ Why the other options are wrong:
• Treatment only — Treatment ICT includes infusion pumps, ventilators and radiotherapy machines.
• Administration only — Administration ICT includes billing, staff rotas and records management.
• Nursing education only — Education ICT includes e-learning platforms and simulators.

⭐ Key point: Monitoring ICT includes cardiac monitors and pulse oximeters (they watch the patient continuously).$x$, null),
(54, $x$An infusion pump with a drug library ('smart pump') improves safety by:$x$, $x$Alerting the nurse to doses outside safe limits$x$, $x$✅ Correct answer: Alerting the nurse to doses outside safe limits
A smart pump has a built-in drug library with safe dose limits for each drug and concentration. If the nurse programmes a dose outside the limits (for example a 10-fold error), the pump ALERTS. A soft limit can be overridden after checking; a hard limit cannot be overridden. This reduces programming errors, a major cause of drug harm in ICU.

❌ Why the other options are wrong:
• Removing the need to check the prescription — The prescription must STILL be checked; the pump does not replace this.
• Calculating the diagnosis from the drug list — Pumps do not make diagnoses.
• Choosing the correct drug for the patient — The pump does not choose the drug; the prescriber and nurse do.

⭐ Key point: Smart pumps only work if the drug library is used and kept updated. Always double-check high-risk infusions with a second nurse.$x$, null),
(55, $x$A computer-based patient record differs from a paper record because it:$x$, $x$It can be used by authorised staff in many places at once$x$, $x$✅ Correct answer: It can be used by authorised staff in many places at once
A computer-based patient record can be viewed by authorised staff in MANY PLACES AT THE SAME TIME (ward, lab, pharmacy, clinic). Unlike paper notes, it is always legible, easy to search, can produce reports and graphs, can give alerts (allergies, abnormal results), and keeps an audit trail of who did what.

❌ Why the other options are wrong:
• It has no confidentiality rules attached to it — Electronic records have STRICT confidentiality rules (passwords, access levels).
• It never needs any backup or protection from loss — They need regular backup and protection from loss and cyber-attack.
• It cannot be audited or checked after it is written — They can be audited; the system records every entry and change.

⭐ Key point: Advantages: legibility, availability, fewer errors, data analysis. Risks: system failure, hacking, privacy breaches, and copy-paste errors.$x$, null),
(56, $x$Data standardisation in nursing informatics is important because it:$x$, $x$It lets data be compared, shared and analysed$x$, $x$✅ Correct answer: It lets data be compared, shared and analysed
Data standardisation means everyone uses the same terms and codes for the same thing (for example NANDA-I for nursing diagnoses, NIC for interventions, NOC for outcomes). When data are standardised, they can be COMPARED between wards and hospitals, SHARED between computer systems, and ANALYSED for research, quality improvement and planning.

❌ Why the other options are wrong:
• It prevents any coding of nursing diagnoses — Standardisation ENABLES coding of nursing diagnoses; it does not prevent it.
• It reduces the need for any documentation — It doesn't reduce the need to document; it makes documentation more useful.
• It increases the use of free-text descriptions — It REDUCES free text in favour of standard terms.

⭐ Key point: Standard languages make nursing work visible in data and help show the impact of nursing care on outcomes.$x$, null),
(57, $x$A 'virus' in computing is:$x$, $x$A malicious program that damages files$x$, $x$✅ Correct answer: A malicious program that damages files
A computer virus is a MALICIOUS program (malware) that attaches itself to files or programs, copies itself, spreads to other computers, and can damage or delete files, steal data or slow the system. In hospitals, viruses and ransomware can lock patient records and disrupt care.

❌ Why the other options are wrong:
• An input device such as a scanner — A scanner is an input device.
• A cracked or broken computer screen — A broken screen is a hardware fault, not a virus.
• A type of portable storage disk — A portable storage disk is a device, although it can CARRY viruses.

⭐ Key point: Protect hospital systems: up-to-date antivirus software, no unknown USB drives, don't open suspicious email attachments or links, and keep regular backups.$x$, null),
(58, $x$A gigabyte (GB) is approximately:$x$, $x$1000 megabytes$x$, $x$✅ Correct answer: 1000 megabytes
A gigabyte (GB) is about 1000 megabytes (strictly 1024 MB). Storage units increase by about 1000 at each step: 1 KB ≈ 1000 bytes, 1 MB ≈ 1000 KB, 1 GB ≈ 1000 MB, 1 TB ≈ 1000 GB.

❌ Why the other options are wrong:
• 1 terabyte — 1 terabyte is about 1000 GB, much bigger than a gigabyte.
• 100 kilobytes — 100 kilobytes is far smaller than a gigabyte.
• 10 bytes — 10 bytes is tiny, just a few characters.

⭐ Key point: Order: bit, byte (8 bits), kilobyte, megabyte, gigabyte, terabyte. A typical X-ray image is a few megabytes; a CT study can be several hundred megabytes.$x$, null),
(59, $x$The main effect of ICT on quality nursing care in ICU is:$x$, $x$Faster access to accurate information, fewer errors$x$, $x$✅ Correct answer: Faster access to accurate information, fewer errors
ICT improves nursing care mainly by giving FASTER access to ACCURATE information (results, records, drug information) and by reducing errors through electronic charting, barcode scanning, smart pumps, alerts and decision support. Nurses can spend less time searching for information and more time on care.

❌ Why the other options are wrong:
• Increasing the paperwork for every patient — Well-designed ICT reduces paperwork, not increases it.
• Reducing the need for consent from patients — Consent is still required; ICT doesn't change patients' rights.
• Removing the need for nurses at the bedside — Nurses are still needed at the bedside; ICT supports their work.

⭐ Key point: ICT supports, but never replaces, clinical judgement and the nurse–patient relationship.$x$, null),
(60, $x$Real-time (online) processing is used in ICU for:$x$, $x$Continuous monitoring of vital signs$x$, $x$✅ Correct answer: Continuous monitoring of vital signs
Real-time (online) processing handles data IMMEDIATELY as it arrives. ICU monitors process ECG, BP and SpO₂ continuously, show the values instantly, and raise alarms within seconds. This is essential for patient safety, because changes need immediate action.

❌ Why the other options are wrong:
• Annual ICU budget planning — Annual budget planning uses batch processing (data processed together later).
• Yearly staff appraisal reports — Yearly staff appraisals are not real-time processing.
• Monthly salary calculations — Monthly salary calculations are classic BATCH processing.

⭐ Key point: Real-time = instant (monitoring, alarms, online booking). Batch = grouped and processed later (payroll, monthly reports).$x$, null),
(61, $x$A family caregiver of a chronically critically ill ICU patient reports exhaustion, feeling overwhelmed by care responsibilities, and increasing strain in the relationship with the patient. The most appropriate NANDA-I diagnosis is:$x$, $x$Caregiver Role Strain$x$, $x$✅ Correct answer: Caregiver Role Strain
Caregiver Role Strain is the NANDA-I diagnosis for a family member who has difficulty performing the caregiving role. Its defining features match this case exactly: exhaustion, feeling overwhelmed by care tasks, worry, and strain in the relationship with the person being cared for. It is common in families of long-stay ICU patients.

❌ Why the other options are wrong:
• Ineffective Family Coping — Ineffective Family Coping is when the family's coping is so poor it harms the patient; it doesn't focus on the caregiver role.
• Interrupted Family Processes — Interrupted Family Processes is a change in how the family functions (roles, communication), not specifically caregiver exhaustion.
• Compromised Family Coping — Compromised Family Coping is when a usually supportive person gives insufficient support; it doesn't describe the caregiver's own strain.

⭐ Key point: Interventions: listen, give information, arrange respite and rest, involve social work, and teach care skills. Look after the carer as well as the patient.$x$, null),
(62, $x$Which NANDA-I diagnosis is most appropriate for a patient who is unconscious with an absent gag reflex and is receiving enteral tube feedings, placing them at risk of food or fluid entering the airway?$x$, $x$Risk for Aspiration$x$, $x$✅ Correct answer: Risk for Aspiration
Risk for Aspiration fits this patient exactly. He is UNCONSCIOUS (can't protect his airway), has NO GAG REFLEX (can't stop secretions or food entering the trachea), and is on TUBE FEEDS (stomach contents can come back up and be inhaled). It is a "risk" diagnosis because aspiration hasn't happened yet but is likely.

❌ Why the other options are wrong:
• Risk for Suffocation — Risk for Suffocation relates to things blocking breathing from outside (pillows, choking on objects), not tube feeds entering the airway.
• Impaired Swallowing — Impaired Swallowing is about difficulty swallowing in an awake patient; this patient isn't swallowing at all.
• Ineffective Airway Clearance — Ineffective Airway Clearance is an actual problem with clearing secretions, not the specific risk of feeds entering the airway.

⭐ Key point: Prevent aspiration: head of bed 30–45°, check tube position, check gastric residual volumes as per policy, keep the cuff inflated if intubated, and do mouth care.$x$, null),
(63, $x$In assessment of unconscious patient which of this is the ideal sequence used?$x$, $x$ABCDE$x$, $x$✅ Correct answer: ABCDE
ABCDE is the internationally used sequence for assessing any seriously ill or unconscious patient: AIRWAY (is it open?), BREATHING (rate, SpO₂, chest movement), CIRCULATION (pulse, BP, perfusion, bleeding), DISABILITY (GCS or AVPU, pupils, glucose), EXPOSURE (examine the whole body, keep warm). Each problem is treated as it is found before moving to the next step.

❌ Why the other options are wrong:
• EACAB — "EACAB" is not a recognised sequence.
• CABDE — CABDE is used in CARDIAC ARREST (compressions first), not for assessing an unconscious patient with a pulse.
• BACDE — BACDE is not a recognised sequence; airway always comes before breathing.

⭐ Key point: In trauma, catastrophic bleeding is treated first: <C>ABCDE. Reassess ABCDE after every intervention.$x$, null),
(64, $x$Selye's General Adaptation Syndrome has three stages in order:$x$, $x$Alarm, resistance, exhaustion$x$, $x$✅ Correct answer: Alarm, resistance, exhaustion
Hans Selye described the General Adaptation Syndrome (GAS) as three stages, in order. 1) ALARM: the stressor triggers fight or flight (adrenaline and cortisol). 2) RESISTANCE: the body adapts and tries to cope with the continuing stress. 3) EXHAUSTION: if stress continues, resources run out and illness, burnout or death can follow.

❌ Why the other options are wrong:
• Exhaustion, alarm, resistance — Exhaustion comes LAST, not first.
• Shock, denial, acceptance — Shock, denial and acceptance are stages of grief (Kübler-Ross type ideas), not GAS.
• Resistance, alarm, exhaustion — Resistance comes SECOND, after alarm.

⭐ Key point: Critically ill patients, their families and ICU staff can all reach the exhaustion stage. Recognise it and give support.$x$, null),
(65, $x$During the alarm stage of GAS, the body shows:$x$, $x$Sympathetic activation: high HR, BP and glucose$x$, $x$✅ Correct answer: Sympathetic activation: high HR, BP and glucose
In the ALARM stage, the sympathetic nervous system and adrenal glands release adrenaline, noradrenaline and cortisol. This prepares the body for "fight or flight": fast heart rate, high BP, fast breathing, dilated pupils, high blood glucose (energy), and blood diverted to the muscles.

❌ Why the other options are wrong:
• Reduced cortisol and adrenaline secretion — Cortisol and adrenaline go UP, not down.
• Bradycardia, hypotension and low blood glucose — The heart rate, BP and glucose go UP, not down.
• Deep sleep, relaxation and slow breathing — The body becomes alert and aroused, not relaxed and sleepy.

⭐ Key point: In ICU, the stress response causes high glucose (stress hyperglycaemia), fluid retention and muscle breakdown. That is why glucose is monitored and controlled.$x$, null),
(66, $x$The most important need reported by families of ICU patients is:$x$, $x$Honest, understandable information about the patient$x$, $x$✅ Correct answer: Honest, understandable information about the patient
Research on the needs of families in ICU (Molter's study, and Leske's Critical Care Family Needs Inventory) consistently shows the most important needs are ASSURANCE (hope, knowing the patient gets the best care) and INFORMATION: honest, understandable, regular updates about the patient's condition, treatment and likely outcome.

❌ Why the other options are wrong:
• Unlimited visiting at night for all relatives — Unlimited night visiting is valued but ranks lower than information.
• Free meals in the hospital canteen each day — Free meals are a comfort need and rank low.
• A private waiting room with a television only — A comfortable waiting room is a comfort need and ranks low.

⭐ Key point: Meet family needs: update them at least daily, use plain language, name a contact person, involve them in care, and let them see the patient as much as possible.$x$, null),
(67, $x$A wife shouts at the ICU nurse that her husband is 'not being cared for'. This is most likely:$x$, $x$An expression of fear and helplessness under stress$x$, $x$✅ Correct answer: An expression of fear and helplessness under stress
When a loved one is critically ill, family members feel fear, helplessness, loss of control and anxiety. These feelings are often expressed as ANGER directed at staff. This is a normal stress reaction and usually not a real complaint about care. The best response is to stay calm, acknowledge her feelings ("I can see you're very worried"), listen, and give clear information.

❌ Why the other options are wrong:
• A clear sign that she intends to sue the hospital — Anger does not mean she intends to sue; it is more often fear.
• Normal behaviour that needs no response from staff — Staff must respond with empathy; ignoring her would increase her distress.
• Evidence of a mental illness needing a psychiatrist — Shouting under stress is not a sign of mental illness.

⭐ Key point: Use therapeutic communication: listen, acknowledge, don't argue or become defensive, give information, and involve senior staff if needed.$x$, null),
(68, $x$Signs that a family is not coping include:$x$, $x$Withdrawal, constant anger, no decision-making$x$, $x$✅ Correct answer: Withdrawal, constant anger, no decision-making
Signs that a family is NOT coping include WITHDRAWAL (stopping visiting, avoiding staff), persistent ANGER or hostility, inability to make decisions, denial of obvious facts, family conflict, and neglect of their own health. These families need extra support: social work, counselling, chaplaincy or psychology.

❌ Why the other options are wrong:
• Expressing sadness and crying at the bedside — Crying and sadness at the bedside are NORMAL, healthy expressions of grief.
• Asking appropriate questions about the care — Asking appropriate questions shows the family is engaged and coping.
• Visiting regularly at the permitted times — Visiting regularly shows involvement and coping.

⭐ Key point: Assess the family, not just the patient. Normal grief reactions need support; signs of not coping need referral.$x$, null),
(69, $x$A nursing diagnosis for a family in crisis in ICU could be:$x$, $x$Interrupted family processes related to critical illness$x$, $x$✅ Correct answer: Interrupted family processes related to critical illness
Interrupted Family Processes is a NANDA-I diagnosis for when a family's normal relationships, roles and functioning are disrupted by a crisis, such as the sudden critical illness of a family member. Roles change (who earns, who cares for children), communication changes, and daily routines break down.

❌ Why the other options are wrong:
• Risk for infection related to invasive lines — Risk for infection relates to the PATIENT's lines, not the family.
• Acute pain related to the surgical incision — Acute pain relates to the PATIENT's incision.
• Ineffective airway clearance related to secretions — Ineffective airway clearance relates to the PATIENT's breathing.

⭐ Key point: Family nursing interventions: give information, involve the family in care, support decision-making, and refer to social work or counselling services.$x$, null),
(70, $x$Family presence during resuscitation, when supported by a staff member, has been shown to:$x$, $x$Helps relatives cope, without disrupting care$x$, $x$✅ Correct answer: Helps relatives cope, without disrupting care
Studies show that when family members are present during resuscitation, supported by a dedicated staff member who explains what is happening, they cope BETTER afterwards: less anxiety, depression and PTSD-like symptoms, and an easier grieving process if the patient dies. Care is not disrupted, and there is no increase in legal claims.

❌ Why the other options are wrong:
• It always disrupts the resuscitation team's work — Family presence does not usually disrupt the team when the family is supported.
• It increases legal claims in every case — Legal claims do not increase; families who see the effort made often feel reassured.
• It lengthens the resuscitation time considerably — Resuscitation time is not lengthened.

⭐ Key point: Offer family presence where possible, assign a staff member to stay with them, and allow them to leave at any time.$x$, null),
(71, $x$Glasgow Coma Scale of E1 V1 M4 means the patient:$x$, $x$No eye opening, no voice, and withdraws from pain$x$, $x$✅ Correct answer: No eye opening, no voice, and withdraws from pain
Read each part of the score. E1 = eyes do NOT open even to pain. V1 = NO verbal sound at all. M4 = WITHDRAWS from pain (pulls the limb away from the painful stimulus). Total GCS = 1 + 1 + 4 = 6, which is a severe brain injury (GCS 8 or less), so the airway needs protecting.

❌ Why the other options are wrong:
• Obeys commands but makes no sound at all — Obeying commands would be M6, and making no sound is V1; this doesn't match E1 V1 M4.
• Is fully conscious and orientated to place — Fully conscious and orientated would be E4 V5 M6 (GCS 15).
• Opens eyes to speech and is confused in speech — Eyes opening to speech is E3 and confused speech is V4; neither is in this score.

⭐ Key point: Motor scores: M6 obeys, M5 localises, M4 withdraws (normal flexion), M3 abnormal flexion (decorticate), M2 extension (decerebrate), M1 none. The motor score is the best predictor of outcome.$x$, null),
(72, $x$The priority nursing care of an unconscious patient is to:$x$, $x$Keep the airway patent and prevent aspiration$x$, $x$✅ Correct answer: Keep the airway patent and prevent aspiration
An unconscious patient loses the protective reflexes (cough and gag), and the tongue may fall back and block the throat. The airway is therefore always the FIRST priority. Position the patient on the side (recovery or lateral position) or head-up, suction secretions, use an airway adjunct if needed, and intubate if GCS is 8 or less. Without a clear airway, the patient dies within minutes.

❌ Why the other options are wrong:
• Restrict all IV and enteral fluids — Fluids are needed (IV or enteral) to prevent dehydration; they shouldn't be restricted.
• Begin oral feeding to maintain nutrition — Oral feeding is dangerous in an unconscious patient: high risk of aspiration.
• Remove all monitoring to allow rest — Monitoring is essential in unconscious patients to detect deterioration.

⭐ Key point: Priorities always follow ABC: Airway, Breathing, Circulation. Other unconscious care (eyes, mouth, skin, nutrition) comes after the airway is safe.$x$, null),
(73, $x$Eye care in the unconscious patient prevents:$x$, $x$Corneal ulceration from exposure$x$, $x$✅ Correct answer: Corneal ulceration from exposure
In an unconscious patient, the blink reflex is lost and the eyelids may not close fully (lagophthalmos). The cornea dries out, becomes damaged and can ulcerate or become infected (exposure keratopathy), which can lead to blindness. Eye care includes cleaning, lubricating eye drops or gel, moist gauze or moisture chambers, and taping the lids closed if needed.

❌ Why the other options are wrong:
• Acute angle-closure glaucoma — Acute angle-closure glaucoma is caused by blocked drainage of fluid in the eye, not exposure.
• Retinal detachment and blindness — Retinal detachment is not prevented by routine eye care.
• Cataract formation in the lens — Cataracts develop slowly over years and are not caused by short-term exposure.

⭐ Key point: Check the eyes every shift. Report redness, cloudiness or discharge. Eye care is especially important in prone positioning and in patients on muscle relaxants.$x$, null),
(74, $x$Mouth care in the unconscious ventilated patient is done with chlorhexidine to:$x$, $x$Reduce ventilator-associated pneumonia$x$, $x$✅ Correct answer: Reduce ventilator-associated pneumonia
In a ventilated patient, germs from dental plaque and the mouth are swallowed past the tube cuff into the lungs, causing ventilator-associated pneumonia (VAP). Chlorhexidine (0.12–0.2%) mouthwash or gel kills these bacteria and reduces dental plaque. Toothbrushing (at least twice daily) and oral care every 2–4 hours are part of the VAP prevention bundle.

❌ Why the other options are wrong:
• Whiten the teeth for the family — Whitening the teeth is not the purpose of oral care.
• Reduce oral ulcers and nothing else — Oral care does more than prevent ulcers; its main ICU purpose is reducing VAP.
• Stimulate the flow of saliva — Chlorhexidine doesn't stimulate saliva; mouth moisturisers help a dry mouth.

⭐ Key point: VAP bundle: head up 30–45°, daily sedation hold, oral care with chlorhexidine, subglottic suction, cuff pressure 20–30 cmH₂O, and DVT and stress ulcer prophylaxis.$x$, null),
(75, $x$Passive range-of-motion exercises in the unconscious patient prevent:$x$, $x$Contractures and muscle wasting$x$, $x$✅ Correct answer: Contractures and muscle wasting
When a patient can't move, joints stiffen and muscles shorten (contractures), and muscles weaken and shrink (wasting) within days. Passive range-of-motion exercises, where the nurse or physiotherapist moves each joint through its full range at least twice a day, keep joints flexible and maintain blood flow to muscles. Splints keep the ankles at 90° to prevent foot drop.

❌ Why the other options are wrong:
• Hypoglycaemia — ROM exercises don't affect blood sugar.
• Urinary infection — ROM doesn't prevent urinary infection; catheter care does.
• Pressure ulcers on the heels — Heel pressure ulcers are prevented by turning and offloading the heels, not by ROM exercises alone.

⭐ Key point: Early mobilisation (passive, then active, then sitting out and walking) reduces ICU-acquired weakness and shortens recovery.$x$, null),
(76, $x$Hearing is thought to be the last sense lost in unconscious patients, so nurses should:$x$, $x$Talk to the patient and explain procedures$x$, $x$✅ Correct answer: Talk to the patient and explain procedures
Hearing is believed to be one of the last senses lost in unconscious and dying patients, and some patients later remember things said around them. Nurses should therefore TALK to the patient: greet them by name, explain what you are about to do, reorient them (day, time, place) and encourage the family to speak to them. This respects dignity and may reduce fear and delirium.

❌ Why the other options are wrong:
• Play loud music continuously — Loud continuous music can be disturbing and stops rest; gentle familiar music may help.
• Discuss the prognosis loudly at the bedside — Discussing a poor prognosis at the bedside can distress the patient.
• Avoid speaking near the bed — Avoiding speaking leaves the patient isolated and frightened.

⭐ Key point: Always assume an unconscious patient can hear. Don't say things at the bedside you wouldn't say if they were awake.$x$, null),
(77, $x$A family member caring for a long-term ICU patient feels exhausted and overwhelmed. This is called:$x$, $x$Caregiver burden (role strain)$x$, $x$✅ Correct answer: Caregiver burden (role strain)
Caregiver burden (Caregiver Role Strain in NANDA-I) is the physical, emotional and financial strain on a family member caring for a loved one for a long time. Signs: exhaustion, feeling overwhelmed, poor sleep, anxiety, anger, depression, and neglect of their own health. It is common in families of long-term ICU patients.

❌ Why the other options are wrong:
• Compassion satisfaction — Compassion satisfaction is a POSITIVE feeling from helping others.
• Normal anticipatory grieving — Anticipatory grieving is grief before an expected death; it isn't the same as exhaustion from caregiving.
• Learned resilience — Learned resilience is a positive ability to cope.

⭐ Key point: Support carers: encourage rest and breaks (respite), share the care, refer to social work and support groups, and give clear information.$x$, null),
(78, $x$Coping mechanisms that families use in crisis include:$x$, $x$Seeking information, spiritual and social support$x$, $x$✅ Correct answer: Seeking information, spiritual and social support
Healthy coping mechanisms for families in crisis include SEEKING INFORMATION (understanding helps them feel in control), SPIRITUAL support (prayer, faith leaders), and SOCIAL support (friends, extended family, community). Nurses should encourage and reinforce these positive strategies.

❌ Why the other options are wrong:
• Avoiding visiting the patient completely — Avoiding visiting completely is a sign of poor coping (withdrawal).
• Ignoring all the medical and nursing staff — Ignoring staff blocks communication and information.
• Refusing all information about the patient — Refusing all information is denial, a negative coping response.

⭐ Key point: Ask families what helps them, provide information regularly, and offer chaplaincy and social support services.$x$, null),
(79, $x$Post-intensive care syndrome-family (PICS-F) includes:$x$, $x$Anxiety, depression and PTSD in relatives$x$, $x$✅ Correct answer: Anxiety, depression and PTSD in relatives
Post-intensive care syndrome-family (PICS-F) describes the psychological problems family members develop after a loved one's critical illness: ANXIETY, DEPRESSION, POST-TRAUMATIC STRESS DISORDER (PTSD) and complicated grief. They can last months to years. Up to a third of relatives are affected, especially after a death in ICU or when they had to make difficult decisions.

❌ Why the other options are wrong:
• Financial benefit to the family after discharge — PICS-F is harmful; there is no financial benefit.
• Improved family relationships in every case — Relationships may become strained rather than improved.
• Infection transmitted to the family members — PICS-F is psychological, not an infection.

⭐ Key point: Reduce PICS-F with good communication, family involvement in care and decisions, ICU diaries, and follow-up support.$x$, null),
(80, $x$ICU diaries written by nurses and families help patients by:$x$, $x$Filling memory gaps and reducing PTSD$x$, $x$✅ Correct answer: Filling memory gaps and reducing PTSD
Many ICU patients have no memory, or only frightening, false memories (from delirium), of their ICU stay. This gap can cause anxiety, nightmares and PTSD after discharge. An ICU diary written in plain language by nurses and family, with dates, events and sometimes photos, helps the patient later understand what happened. This fills memory gaps and reduces PTSD symptoms.

❌ Why the other options are wrong:
• Increasing the ICU length of stay — Diaries don't affect the length of stay.
• Recording drug doses for legal purposes — Diaries are not legal drug records; drug doses are in the official chart.
• Replacing the official medical record — They do not replace the medical record; they are a personal account.

⭐ Key point: Write entries in simple, kind language; give the diary to the patient after discharge, ideally with a follow-up visit to explain it.$x$, null),
(81, $x$A positive Babinski sign in an adult (great toe dorsiflexes, toes fan out) indicates:$x$, $x$An upper motor neurone (corticospinal) lesion$x$, $x$✅ Correct answer: An upper motor neurone (corticospinal) lesion
The Babinski sign tests the corticospinal tract (upper motor neurone pathway from the brain to the spinal cord). In a healthy adult, stroking the sole makes the toes curl DOWN (plantar flexion). If the big toe goes UP (dorsiflexes) and the other toes fan out, this is a positive Babinski sign, which means damage to the upper motor neurone: stroke, brain injury, spinal cord injury, or raised ICP.

❌ Why the other options are wrong:
• A lower motor neurone lesion in the leg — A lower motor neurone lesion causes absent or reduced reflexes, not a positive Babinski.
• A normal plantar reflex in an adult — In adults, the normal response is toes curling DOWN; an upgoing toe is abnormal.
• Peripheral neuropathy from diabetes — Diabetic peripheral neuropathy reduces reflexes; it doesn't cause a Babinski sign.

⭐ Key point: A positive Babinski is NORMAL in babies under about 1–2 years, because their corticospinal tracts are not yet fully developed (myelinated).$x$, null),
(82, $x$Babinski sign is tested by:$x$, $x$Stroking the lateral sole from heel to toes$x$, $x$✅ Correct answer: Stroking the lateral sole from heel to toes
The Babinski sign (plantar reflex) is tested by firmly stroking the OUTER (lateral) edge of the sole with a blunt object (the handle of a reflex hammer or a key), from the HEEL up toward the toes, then across the ball of the foot toward the big toe. Watch the big toe: normal adults show toes curling down; upgoing is a positive Babinski.

❌ Why the other options are wrong:
• Flexing the neck forward towards the chest — Flexing the neck tests for Brudzinski's sign (meningeal irritation).
• Tapping the patellar tendon with a hammer — Tapping the patellar tendon tests the knee jerk reflex.
• Pricking the big toe with a sterile pin — Pricking the toe tests pain sensation, not the plantar reflex.

⭐ Key point: Use a blunt object, not a sharp one. Always compare both feet.$x$, null),
(83, $x$A patient with GBS has absent knee and ankle jerks. This indicates:$x$, $x$Lower motor neurone involvement (areflexia)$x$, $x$✅ Correct answer: Lower motor neurone involvement (areflexia)
Guillain–Barré syndrome attacks the PERIPHERAL nerves, which are part of the LOWER motor neurone pathway. Damaged peripheral nerves can't carry the reflex arc, so reflexes are reduced or lost (areflexia), usually early in the illness. GBS causes flaccid (floppy) weakness that usually starts in the legs and moves up.

❌ Why the other options are wrong:
• Upper motor neurone involvement in the cord — Upper motor neurone lesions cause BRISK reflexes, not absent ones.
• Spinal shock from an injury above T6 — Spinal shock happens after spinal cord injury, not GBS.
• A normal finding in critically ill adults — Absent reflexes are an abnormal finding, not normal.

⭐ Key point: GBS: ascending flaccid weakness, absent reflexes, tingling. Monitor breathing (FVC) and the autonomic system (BP and heart rate swings).$x$, null),
(84, $x$In a trauma patient needing intubation, the airway is secured with:$x$, $x$RSI with manual in-line stabilisation$x$, $x$✅ Correct answer: RSI with manual in-line stabilisation
A trauma patient needing intubation may have a cervical spine injury and a full stomach. RAPID SEQUENCE INDUCTION (RSI) means pre-oxygenation, then a sedative and a fast-acting muscle relaxant given together, then intubation without bag ventilation where possible. This reduces the risk of aspiration. MANUAL IN-LINE STABILISATION (an assistant holds the head and neck still) protects the spine, with the front of the collar opened.

❌ Why the other options are wrong:
• Awake nasal intubation in every trauma case — Awake nasal intubation is not routine in trauma; it is contraindicated in basal skull fracture.
• Blind finger sweep and bag ventilation only — A blind finger sweep can push objects further in and is not a definitive airway.
• Head tilt and chin lift without neck support — Head tilt and chin lift move the neck and risk spinal cord injury; use jaw thrust instead.

⭐ Key point: Always confirm tube placement with waveform capnography (EtCO₂) after intubation.$x$, null),
(85, $x$Nasal intubation is avoided in trauma with:$x$, $x$Suspected basal skull fracture$x$, $x$✅ Correct answer: Suspected basal skull fracture
A basal skull fracture (signs: raccoon eyes, Battle's sign behind the ear, CSF leak from the nose or ear) can break the thin bone between the nose and the brain (the cribriform plate). A nasal tube (nasal ETT or NG tube) could pass through the fracture INTO THE BRAIN. Use the mouth instead: oral intubation and an orogastric tube.

❌ Why the other options are wrong:
• Isolated limb fractures — Isolated limb fractures do not affect the nasal route.
• Mandibular fracture only — A mandibular fracture may make oral intubation harder; nasal intubation may even be used, but it isn't the classic contraindication.
• Simple scalp lacerations — Scalp lacerations don't affect the nasal route.

⭐ Key point: CSF leak test: clear fluid from the nose that tests positive for glucose, or a "halo sign" (a clear ring around blood on gauze).$x$, null),
(86, $x$A ventilated patient suddenly has high pressure alarms, low tidal volume and cannot pass a suction catheter. The nurse should first:$x$, $x$Suspect a blocked tube, remove it and bag-mask ventilate$x$, $x$✅ Correct answer: Suspect a blocked tube, remove it and bag-mask ventilate
A high-pressure alarm with low tidal volume and a suction catheter that WON'T PASS down the tube means the endotracheal tube is BLOCKED (thick secretions, blood clot, kink or biting). The patient is not being ventilated and will quickly become hypoxic. If you can't clear the tube, remove it and give oxygen by bag-mask ventilation, then re-intubate.

❌ Why the other options are wrong:
• Give a sedative bolus and wait for 10 minutes — Sedation and waiting 10 minutes wastes time while the patient becomes hypoxic.
• Check the ventilator settings and do nothing else — Checking settings without acting won't fix a blocked tube.
• Increase the PEEP to open up the small airways — Increasing PEEP won't help if the tube is blocked; gas can't get through.

⭐ Key point: A suction catheter that won't pass = blocked or kinked tube (or the patient biting it). Disconnect, bag with 100% O₂, and call for help.$x$, null),
(87, $x$The DOPE mnemonic for a ventilated patient deteriorating stands for:$x$, $x$Displacement, Obstruction, Pneumothorax, Equipment$x$, $x$✅ Correct answer: Displacement, Obstruction, Pneumothorax, Equipment
DOPE helps you remember the causes of sudden deterioration in an intubated, ventilated patient. D = DISPLACEMENT (the tube has moved into the oesophagus, a main bronchus, or out). O = OBSTRUCTION (secretions, blood, kink, biting). P = PNEUMOTHORAX (especially a tension pneumothorax). E = EQUIPMENT failure (ventilator, oxygen supply, circuit disconnection).

❌ Why the other options are wrong:
• Delirium, Over-sedation, Pain, Exhaustion — Delirium, over-sedation, pain and exhaustion are not DOPE.
• Drugs, Oxygen, Pulse and Electrolytes — Drugs, oxygen, pulse and electrolytes are not DOPE.
• Dehydration, Oedema, Pain and Embolism — Dehydration, oedema, pain and embolism are not DOPE.

⭐ Key point: Response: disconnect from the ventilator, hand-ventilate with 100% oxygen, check tube position and EtCO₂, pass a suction catheter, listen to the chest, and check the equipment.$x$, null),
(88, $x$Prevention of endotracheal tube blockage includes:$x$, $x$Humidified gases and suction when needed$x$, $x$✅ Correct answer: Humidified gases and suction when needed
Normally, the nose warms and moistens the air we breathe. An endotracheal tube bypasses the nose, so dry gas would dry out the airway lining, making secretions thick and sticky, and they can block the tube. HUMIDIFIED gases (from a heated humidifier or an HME filter) keep secretions thin. Suction when needed (not on a fixed schedule) clears them.

❌ Why the other options are wrong:
• Dry inspired gases to reduce secretions — Dry gases make secretions thicker and cause blockage.
• Suctioning every 15 minutes as routine — Suctioning every 15 minutes is too frequent; it damages the airway lining and causes hypoxia.
• Instilling large saline volumes routinely — Large volumes of saline are not recommended routinely; they can push germs into the lungs.

⭐ Key point: Signs that the patient needs suction: visible secretions, coarse crackles, a rising airway pressure, falling SpO₂, a sawtooth pattern on the ventilator flow curve.$x$, null),
(89, $x$Accidental extubation is most likely when:$x$, $x$An agitated patient with a poorly secured tube$x$, $x$✅ Correct answer: An agitated patient with a poorly secured tube
Accidental (unplanned) extubation happens most often in an AGITATED or delirious patient who is not adequately sedated or monitored, especially if the tube is not securely fixed. The patient may pull the tube out themselves, or it may come out during turning, transfer or coughing.

❌ Why the other options are wrong:
• Tube ties that are checked every shift — Tube ties checked every shift REDUCE the risk.
• A calm, orientated and cooperative patient — A calm, cooperative patient is at low risk.
• A deeply sedated patient on a ventilator — A deeply sedated patient is less likely to pull out the tube (though it can still happen during movement).

⭐ Key point: Prevent unplanned extubation: secure fixation, check tube position (length at the lips) every shift, manage pain, sedation and delirium, and take care when turning.$x$, null),
(90, $x$The layer of skin containing blood vessels, nerves and sweat glands is the:$x$, $x$Dermis$x$, $x$✅ Correct answer: Dermis
The skin has three layers. The EPIDERMIS is the outer protective layer with no blood vessels. The DERMIS is the middle layer containing blood vessels, nerves, sweat glands, hair follicles and sebaceous glands. The HYPODERMIS (subcutaneous layer) is fat and connective tissue below it. Because the dermis contains the vessels and nerves, deep burns into the dermis are painful and bleed.

❌ Why the other options are wrong:
• Epidermis — The epidermis has no blood vessels; it gets nutrients from the dermis.
• Stratum corneum — The stratum corneum is the outermost dead layer of the epidermis.
• Hypodermis only — The hypodermis contains fat and larger vessels, but sweat glands and most nerve endings are in the dermis.

⭐ Key point: Burn depth: superficial (epidermis only), partial thickness (into the dermis), full thickness (through the dermis; painless because the nerves are destroyed).$x$, null),
(91, $x$Skin plays a role in thermoregulation mainly through:$x$, $x$Sweating and changes in skin blood flow$x$, $x$✅ Correct answer: Sweating and changes in skin blood flow
The skin controls body temperature in two main ways. SWEATING: sweat evaporates and removes heat. Changes in SKIN BLOOD FLOW: when hot, the skin vessels widen (vasodilation) to lose heat; when cold, they narrow (vasoconstriction) to keep heat in. Shivering also produces heat.

❌ Why the other options are wrong:
• Absorbing oxygen from the air — The skin doesn't absorb significant oxygen from the air.
• Producing red cells in the skin — Red cells are made in the bone marrow, not the skin.
• Producing insulin in the dermis — Insulin is made by the pancreas.

⭐ Key point: Patients with large burns or TEN lose this control and lose heat rapidly. Keep the room warm (28–32 °C) and use warming devices.$x$, null),
(92, $x$In critically ill patients, skin failure ('acute skin failure') is caused by:$x$, $x$Skin hypoperfusion during multi-organ failure$x$, $x$✅ Correct answer: Skin hypoperfusion during multi-organ failure
Acute skin failure happens when the skin's blood supply falls during critical illness: shock, multi-organ failure, vasopressor use, and low oxygen. Like any other organ, the skin is damaged when it isn't perfused. Pressure injuries can develop even with excellent nursing care, because the skin is already failing.

❌ Why the other options are wrong:
• Early mobilisation and turning in bed — Early mobilisation and turning PROTECT the skin.
• Regular use of moisturisers on the skin — Moisturisers protect the skin and prevent cracks.
• Excessive bathing with soap and water only — Excessive bathing can dry the skin but doesn't cause acute skin failure.

⭐ Key point: Document skin assessment carefully. Not all pressure injuries in dying or shocked patients are due to poor care.$x$, null),
(93, $x$Peripheral polyneuritis causing glove-and-stocking sensory loss is commonly due to:$x$, $x$Diabetes and vitamin B deficiency$x$, $x$✅ Correct answer: Diabetes and vitamin B deficiency
Peripheral polyneuritis (polyneuropathy) damages the longest nerves first, so symptoms start in the feet and hands: a "GLOVE-AND-STOCKING" pattern of numbness, tingling and burning pain. The most common causes are DIABETES and VITAMIN B deficiency (B1 thiamine, B6, B12), often linked to alcohol misuse, poor diet, or drugs like isoniazid.

❌ Why the other options are wrong:
• Hypothyroidism on its own — Hypothyroidism can cause neuropathy, but less commonly.
• Excess intake of vitamin C — Excess vitamin C doesn't cause neuropathy (excess B6 can).
• Hypertension and bronchial asthma — Hypertension and asthma are not causes of neuropathy.

⭐ Key point: Patients with sensory neuropathy can't feel injuries. Check and protect the feet daily, especially in diabetes.$x$, null),
(94, $x$Isoniazid neuropathy is prevented by giving:$x$, $x$Pyridoxine (vitamin B6)$x$, $x$✅ Correct answer: Pyridoxine (vitamin B6)
Isoniazid, a key anti-TB drug, interferes with vitamin B6 (pyridoxine) in the body, causing a peripheral neuropathy (tingling and numbness in the hands and feet). Giving pyridoxine (10–25 mg daily) prevents this, especially in people at higher risk: diabetes, HIV, malnutrition, alcohol misuse, pregnancy and breastfeeding.

❌ Why the other options are wrong:
• Vitamin K (phytomenadione) — Vitamin K is for clotting.
• Folic acid (vitamin B9) — Folic acid is for red cell production and pregnancy.
• Ascorbic acid (vitamin C) — Vitamin C does not prevent isoniazid neuropathy.

⭐ Key point: Isoniazid can also cause liver damage (hepatitis), so check LFTs in high-risk patients. In isoniazid overdose (seizures), give high-dose pyridoxine.$x$, null),
(95, $x$A deep tendon reflex graded 4+ means:$x$, $x$Very brisk, with clonus$x$, $x$✅ Correct answer: Very brisk, with clonus
Deep tendon reflexes are graded from 0 to 4+. A grade of 4+ means VERY BRISK, hyperactive reflexes WITH CLONUS (repeated rhythmic jerking when the muscle is stretched, such as the foot beating when the ankle is pushed up). This suggests an upper motor neurone lesion or a hyperexcitable state (such as magnesium deficiency or pre-eclampsia).

❌ Why the other options are wrong:
• Normal, as expected — Normal is 2+.
• Sluggish and diminished — Sluggish or diminished is 1+.
• Absent, even with reinforcement — Absent is 0.

⭐ Key point: In pre-eclampsia, brisk reflexes and clonus suggest a risk of fits. With magnesium therapy, LOSS of reflexes is a sign of toxicity.$x$, null),
(96, $x$Spinal shock after cord injury is characterised by:$x$, $x$Flaccid paralysis and areflexia below the injury$x$, $x$✅ Correct answer: Flaccid paralysis and areflexia below the injury
Spinal shock happens right after a spinal cord injury. All function below the injury temporarily stops: FLACCID (floppy) paralysis, loss of all reflexes (areflexia), loss of sensation, and loss of bladder and bowel control. It usually lasts days to weeks. As it resolves, reflexes return and may become brisk, with spasticity (if it is an upper motor neurone injury).

❌ Why the other options are wrong:
• Normal reflexes with weakness — Reflexes are LOST, not normal.
• Hypertension and tachycardia — High BP and fast pulse are not typical of spinal shock.
• Spastic paralysis with hyperreflexia at once — Spastic paralysis with brisk reflexes comes LATER, after spinal shock resolves, not at once.

⭐ Key point: Spinal shock is a neurological state (no reflexes). Neurogenic shock is a circulatory state (low BP and slow pulse). They can occur together.$x$, null),
(97, $x$Neurogenic shock after high cord injury presents with:$x$, $x$Hypotension with bradycardia and warm skin$x$, $x$✅ Correct answer: Hypotension with bradycardia and warm skin
An injury above T6 cuts off the sympathetic nerves that control BP and heart rate. Without sympathetic tone, the blood vessels dilate (low BP) and the vagus nerve slows the heart unopposed (slow pulse). The skin stays WARM and DRY because the vessels are dilated. This is NEUROGENIC SHOCK: the only shock with a slow pulse and warm skin.

❌ Why the other options are wrong:
• Hypertension with bradycardia — High BP with slow pulse describes Cushing's triad or autonomic dysreflexia.
• Hypotension with tachycardia and cold skin — Low BP with fast pulse and cold skin describes hypovolaemic shock.
• Normal blood pressure — Neurogenic shock causes low BP, not normal.

⭐ Key point: Treat neurogenic shock with fluids (careful), vasopressors (noradrenaline) and atropine for bradycardia. Always rule out bleeding as a cause of low BP in trauma.$x$, null),
(98, $x$Autonomic dysreflexia in a T4 cord injury patient is triggered by:$x$, $x$A full bladder or constipation$x$, $x$✅ Correct answer: A full bladder or constipation
Autonomic dysreflexia happens in spinal cord injury at T6 or above. A stimulus below the injury, most often a FULL BLADDER (blocked catheter) or CONSTIPATION, triggers a massive sympathetic response. The vessels below the injury constrict, causing dangerously high BP. The body above the injury tries to compensate: slow pulse, flushing, sweating and a pounding headache above the injury.

❌ Why the other options are wrong:
• A low blood sugar level — Low blood sugar doesn't trigger autonomic dysreflexia.
• Excess oral fluid intake — Drinking extra fluid doesn't trigger it directly, although a full bladder does.
• Hypothermia after bathing — Hypothermia doesn't usually trigger it.

⭐ Key point: Act at once: sit the patient upright, loosen clothing, check the catheter or empty the bladder, check for constipation, and give fast-acting BP drugs (GTN, nifedipine) if BP stays high.$x$, null),
(99, $x$Decerebrate posturing (extension of arms and legs) indicates:$x$, $x$Brain stem damage (midbrain/pons)$x$, $x$✅ Correct answer: Brain stem damage (midbrain/pons)
Decerebrate posturing is when the arms and legs EXTEND (straighten), the arms rotate inward, the wrists flex and the toes point down. It shows severe damage to the BRAINSTEM (midbrain or upper pons). It is scored M2 on the GCS and has a poor prognosis.

❌ Why the other options are wrong:
• A cortical lesion only — A cortical (upper brain) lesion causes DECORTICATE posturing (arms flexed to the chest), scored M3.
• An isolated spinal cord injury — A spinal cord injury causes paralysis below the injury, not posturing.
• A normal response to pain — Posturing is never a normal response to pain.

⭐ Key point: Decorticate (flexion, M3) = injury above the brainstem. Decerebrate (extension, M2) = brainstem injury, which is worse. A change from flexion to extension means the patient is getting worse.$x$, null),
(100, $x$Brudzinski's sign is positive when:$x$, $x$Neck flexion causes hip and knee flexion$x$, $x$✅ Correct answer: Neck flexion causes hip and knee flexion
Brudzinski's sign is a test for meningeal irritation (meningitis, subarachnoid haemorrhage). With the patient lying flat, the examiner gently bends the patient's neck forward. If the hips and knees automatically BEND (flex), the sign is positive. The legs bend to reduce the stretch on the inflamed meninges.

❌ Why the other options are wrong:
• The pupils dilate on neck movement — Pupils don't dilate with neck movement in Brudzinski's sign.
• The knee cannot be fully extended — Being unable to fully straighten the knee (with the hip flexed) is KERNIG's sign.
• The great toe extends upwards on stroking — The big toe going up on stroking the sole is the BABINSKI sign.

⭐ Key point: Meningitis: neck stiffness, photophobia, headache, fever, a positive Kernig's and Brudzinski's signs, and possibly a purpuric rash. Start antibiotics quickly and use droplet isolation.$x$, null),
(101, $x$A 2-year-old with intussusception becomes lethargic and the abdomen is rigid. The nurse should prepare for:$x$, $x$Urgent laparotomy, not enema reduction$x$, $x$✅ Correct answer: Urgent laparotomy, not enema reduction
Intussusception can cut off the blood supply to the trapped bowel. If the bowel dies (gangrene) or perforates, the child develops PERITONITIS: a rigid, tender abdomen, lethargy, fever and shock. An air or contrast enema is then CONTRAINDICATED, because it would push air or contrast through the hole. The child needs resuscitation and an urgent LAPAROTOMY (open surgery).

❌ Why the other options are wrong:
• Air enema reduction under imaging — Air enema reduction is for stable children WITHOUT signs of perforation or peritonitis.
• Discharge home with oral antibiotics — This child is critically ill, so discharge would be fatal.
• Oral rehydration solution only — Oral fluids are dangerous; the child needs nil by mouth, IV fluids and surgery.

⭐ Key point: Contraindications to enema reduction: peritonitis, perforation (free air on X-ray), shock that doesn't respond to fluids.$x$, null),
(102, $x$A classic triad of intussusception is:$x$, $x$Colicky pain, sausage-shaped mass, redcurrant jelly stool$x$, $x$✅ Correct answer: Colicky pain, sausage-shaped mass, redcurrant jelly stool
The classic triad of intussusception: 1) COLICKY abdominal pain (the child screams and draws up the legs in episodes, quiet between), 2) a SAUSAGE-SHAPED mass in the abdomen (the telescoped bowel), and 3) REDCURRANT JELLY stools (blood and mucus, a late sign). Vomiting is also common. Not every child has all three.

❌ Why the other options are wrong:
• Bilious vomiting, jaundice and pale, chalky stools — Bilious vomiting, jaundice and pale stools suggest biliary problems (such as biliary atresia).
• Projectile vomiting, an olive mass and a metabolic alkalosis — Projectile vomiting, an olive mass and metabolic alkalosis describe PYLORIC STENOSIS.
• Fever, rash, conjunctivitis and peeling of the fingertips — Fever, rash, conjunctivitis and peeling fingertips describe KAWASAKI disease.

⭐ Key point: Intussusception usually affects children aged 3 months to 3 years, often after a viral illness (swollen lymph tissue in the bowel acts as the lead point).$x$, null),
(103, $x$Appendicitis in a child under 5 is more dangerous because:$x$, $x$Early perforation; the omentum is poorly developed$x$, $x$✅ Correct answer: Early perforation; the omentum is poorly developed
In young children (under 5), appendicitis is often diagnosed LATE, because the child can't describe the pain clearly and the symptoms are vague (vomiting, irritability, fever). Their OMENTUM (the fatty apron that normally wraps around and contains an infected appendix) is short and poorly developed, so it can't wall off the infection. Perforation happens early and spreads, causing generalised peritonitis.

❌ Why the other options are wrong:
• Young children always present very early — Young children usually present LATE, not early.
• The pain is always well localised in them — Pain in young children is often POORLY localised.
• Appendicitis never occurs below this age — Appendicitis does occur in young children, though less often.

⭐ Key point: Perforation rates are very high in children under 5. Have a high suspicion and get a surgical review early.$x$, null),
(104, $x$Hirschsprung's disease is treated definitively by:$x$, $x$A pull-through operation removing the aganglionic bowel$x$, $x$✅ Correct answer: A pull-through operation removing the aganglionic bowel
In Hirschsprung's disease, a segment of the bowel (usually the rectum and part of the colon) has NO nerve cells (aganglionic), so it can't relax and push stool along. The definitive treatment is a PULL-THROUGH operation: the abnormal bowel is removed and normal bowel (with nerve cells) is pulled down and joined to the anus. Sometimes a temporary colostomy is done first.

❌ Why the other options are wrong:
• Long-term laxatives and a high-fibre diet — Laxatives and fibre don't fix the missing nerve cells.
• Appendicectomy and a temporary ileostomy — Appendicectomy has no role; an ileostomy may be done in some cases but is not the definitive treatment.
• Rectal irrigation for life, without surgery — Rectal irrigation is a temporary measure before surgery, not lifelong treatment.

⭐ Key point: Watch for Hirschsprung's enterocolitis (fever, distension, explosive foul diarrhoea) before and after surgery. It can be life-threatening.$x$, null),
(105, $x$Malrotation with midgut volvulus is a surgical emergency because:$x$, $x$The twisted mesenteric artery causes gut ischaemia$x$, $x$✅ Correct answer: The twisted mesenteric artery causes gut ischaemia
In malrotation, the bowel didn't rotate and fix properly during fetal development. The small bowel can TWIST around its blood supply (volvulus), twisting the superior mesenteric artery. This cuts off the blood supply to most of the small bowel, causing ischaemia and death of the gut within hours. It presents with BILIOUS (green) vomiting in a baby and needs emergency surgery (Ladd's procedure).

❌ Why the other options are wrong:
• It causes only mild constipation in the infant — It causes severe illness, not mild constipation.
• It affects only the stomach and duodenum — It affects the whole midgut (most of the small bowel and part of the colon), not only the stomach and duodenum.
• It resolves without treatment in most babies — Without surgery, the bowel dies and the baby can die.

⭐ Key point: Bilious (green) vomiting in a newborn or infant is a surgical emergency until proven otherwise. Keep nil by mouth, place an NG tube on free drainage, give IV fluids and refer urgently.$x$, null),
(106, $x$Epiglottitis has become less common because of vaccination against:$x$, $x$Haemophilus influenzae type b$x$, $x$✅ Correct answer: Haemophilus influenzae type b
Epiglottitis was mostly caused by Haemophilus influenzae type b (Hib). The Hib vaccine, given as part of the pentavalent vaccine in the Nigerian childhood immunisation schedule (at 6, 10 and 14 weeks), has made epiglottitis much rarer in children.

❌ Why the other options are wrong:
• Tuberculosis (BCG) — BCG protects against severe forms of TB.
• Measles (rubeola virus) — Measles vaccine protects against measles.
• Rotavirus infection — Rotavirus vaccine protects against rotavirus diarrhoea.

⭐ Key point: Pentavalent vaccine covers diphtheria, pertussis, tetanus, hepatitis B and Hib. Epiglottitis can still occur in unvaccinated children and adults.$x$, null),
(107, $x$A child with suspected epiglottitis should:$x$, $x$Be kept calm with a parent, with airway expert present$x$, $x$✅ Correct answer: Be kept calm with a parent, with airway expert present
In epiglottitis, the swollen epiglottis can block the airway completely at any moment. Upsetting the child (crying, lying down, examining the throat, inserting a cannula) can trigger complete obstruction and cardiac arrest. Keep the child CALM, sitting up on a parent's lap, with oxygen given gently if tolerated, and call the most experienced airway experts (anaesthetist, ENT) to secure the airway in theatre.

❌ Why the other options are wrong:
• Lie flat on a trolley for a lateral neck X-ray — Lying flat can cause the epiglottis to fall back and block the airway.
• Have an IV cannula inserted immediately — Painful procedures like cannulation can cause panic and obstruction; delay until the airway is safe.
• Have the throat examined with a spatula at once — Examining the throat with a spatula can trigger laryngospasm and complete obstruction.

⭐ Key point: Signs: toxic-looking child, high fever, drooling, tripod sitting, muffled voice, soft stridor, no cough. Don't upset the child.$x$, null),
(108, $x$Sudden infant death syndrome is most common at age:$x$, $x$2–4 months$x$, $x$✅ Correct answer: 2–4 months
Sudden infant death syndrome (SIDS) is the sudden, unexplained death of an apparently healthy baby during sleep. It is most common at 2–4 MONTHS of age, and 90% of cases occur before 6 months. Risk factors: sleeping on the front (prone), parental smoking, overheating, soft bedding, bed-sharing, and prematurity.

❌ Why the other options are wrong:
• 1–2 years — SIDS is rare after 1 year.
• 5–6 years — SIDS doesn't occur at 5–6 years.
• Newborn first week — The first week of life is not the peak period.

⭐ Key point: Prevent SIDS: sleep on the back, in the parents' room but in their own cot, firm mattress, no pillows or loose bedding, no smoking, avoid overheating, and breastfeed.$x$, null),
(109, $x$A baby is brought in apnoeic and pulseless at home. The nurse should:$x$, $x$Start paediatric CPR and call the team$x$, $x$✅ Correct answer: Start paediatric CPR and call the team
A baby who is not breathing and has no pulse is in cardiac arrest. The nurse must START CPR immediately and call for help (the resuscitation team). In infants, give 5 rescue breaths first, then chest compressions at a ratio of 15:2 (two rescuers; 30:2 for a lone rescuer), with two thumbs encircling the chest or two fingers on the lower sternum, 100–120 compressions per minute.

❌ Why the other options are wrong:
• Give oxygen by mask and observe — Oxygen by mask alone won't help a baby with no breathing and no pulse.
• Wait for the doctor to confirm death — Waiting for the doctor wastes vital minutes.
• Ask the parents what happened first — Asking the parents can wait; resuscitation comes first.

⭐ Key point: In children, cardiac arrest is usually caused by hypoxia (breathing problems), so rescue breaths are very important.$x$, null),
(110, $x$Acute lymphoblastic leukaemia treatment in ICU may cause:$x$, $x$Neutropenic sepsis and tumour lysis syndrome$x$, $x$✅ Correct answer: Neutropenic sepsis and tumour lysis syndrome
Treatment of acute lymphoblastic leukaemia (ALL) with chemotherapy destroys cancer cells AND normal white cells. This causes NEUTROPENIA, which can lead to life-threatening NEUTROPENIC SEPSIS. When many cancer cells are killed quickly, their contents flood the blood: TUMOUR LYSIS SYNDROME (high potassium, high phosphate, high uric acid, low calcium), which can cause kidney failure and arrhythmias.

❌ Why the other options are wrong:
• Immediate iron overload needing chelation — Iron overload builds up over years of transfusions, not immediately.
• Hypercoagulability with deep vein thrombosis — Clots can occur (for example with asparaginase), but this is less typical than infection and TLS.
• Polycythaemia with hyperviscosity and stroke — Leukaemia causes ANAEMIA, not polycythaemia.

⭐ Key point: Neutropenic sepsis: fever with a low neutrophil count. Give antibiotics within 1 hour. Prevent TLS with hydration and allopurinol or rasburicase.$x$, null),
(111, $x$Platelet transfusion in a leukaemic child is usually given when the count falls below:$x$, $x$10 × 10⁹/L, or higher if bleeding$x$, $x$✅ Correct answer: 10 × 10⁹/L, or higher if bleeding
Platelets are needed to stop bleeding. In leukaemia, chemotherapy and the disease itself reduce platelet production. A platelet transfusion is given when the count falls below 10 × 10⁹/L (to prevent spontaneous bleeding), or at a higher threshold if the child is bleeding, has a fever or infection, or needs a procedure (such as a lumbar puncture or line insertion).

❌ Why the other options are wrong:
• 150 × 10⁹/L in every child — 150 × 10⁹/L is the lower limit of NORMAL; transfusing at this level is unnecessary.
• 100 × 10⁹/L, even if not bleeding — 100 × 10⁹/L is too high a threshold without bleeding (used only for brain or eye surgery).
• 400 × 10⁹/L before any procedure — 400 × 10⁹/L is above normal; no transfusion is needed.

⭐ Key point: Thresholds: 10 for prevention, 20 with fever or infection, 50 for most procedures and bleeding, 100 for brain or eye surgery.$x$, null),
(112, $x$In Ebola, health workers must remove PPE:$x$, $x$In a set sequence with a trained observer$x$, $x$✅ Correct answer: In a set sequence with a trained observer
Most Ebola infections in health workers happen while TAKING OFF (doffing) PPE, because the outside of the PPE is heavily contaminated with blood, vomit and stool. PPE must be removed in a strict, step-by-step order, with hand hygiene between steps, while a TRAINED OBSERVER (buddy) watches and reads out each step to catch mistakes.

❌ Why the other options are wrong:
• In the patient's room with the patient watching — Removing PPE in the patient's room risks contamination; it is done in a separate doffing area.
• Without hand hygiene — Hand hygiene is essential between every step.
• Quickly in any order — Rushing and doing it in any order causes self-contamination.

⭐ Key point: Ebola PPE includes a fluid-resistant gown or coverall, double gloves, a face shield or goggles, an N95 or surgical mask, a head cover, and boots or overshoes.$x$, null),
(113, $x$The incubation period of Ebola virus disease is:$x$, $x$2–21 days$x$, $x$✅ Correct answer: 2–21 days
The incubation period of Ebola (from infection to the first symptoms) is 2–21 days, usually 8–10 days. That's why people who have been in contact with an Ebola patient are monitored for 21 DAYS after their last contact. An outbreak is declared over after 42 days (two incubation periods) without a new case.

❌ Why the other options are wrong:
• 1–2 hours — 1–2 hours is far too short.
• 2 months — 2 months is too long.
• 1 year — 1 year is far too long.

⭐ Key point: During incubation, a person is NOT infectious. They become infectious when symptoms start (fever, weakness, vomiting, diarrhoea, bleeding).$x$, null),
(114, $x$A child with Ebola is not infectious:$x$, $x$Before symptoms begin$x$, $x$✅ Correct answer: Before symptoms begin
Ebola is NOT infectious BEFORE symptoms begin, because the virus is not yet at high levels in the blood and body fluids. Once symptoms start, the person becomes infectious, and infectiousness increases as the illness gets worse (vomiting, diarrhoea, bleeding). After death, the body is EXTREMELY infectious.

❌ Why the other options are wrong:
• After death — After death the body contains very high levels of virus; unsafe burials spread Ebola.
• During the vomiting phase — During the vomiting phase, body fluids are highly infectious.
• When bleeding — When bleeding, blood is highly infectious.

⭐ Key point: Safe and dignified burial by trained teams is essential in Ebola control. Survivors can carry the virus in semen for months.$x$, null),
(115, $x$Severe pneumonia in a child is suggested by:$x$, $x$Chest indrawing, grunting or SpO₂ below 90%$x$, $x$✅ Correct answer: Chest indrawing, grunting or SpO₂ below 90%
WHO signs of SEVERE pneumonia in children include CHEST INDRAWING (the lower chest wall pulls in when breathing in), GRUNTING (a short sound when breathing out, keeping the alveoli open), oxygen saturation BELOW 90%, central cyanosis, inability to drink or breastfeed, convulsions, lethargy and vomiting everything. These children need hospital admission, oxygen and IV antibiotics.

❌ Why the other options are wrong:
• A normal breathing rate for the child's age — A normal breathing rate is not a sign of pneumonia.
• A mild dry cough lasting for a few days — A mild dry cough for a few days suggests a simple cold or viral illness.
• A runny nose with sneezing and mild fever — A runny nose with sneezing is a cold (upper respiratory infection).

⭐ Key point: Pneumonia is a leading cause of death in children under 5 in Nigeria. Give oxygen if SpO₂ is below 90% (some guidelines use 92%).$x$, null),
(116, $x$The respiratory rate considered fast breathing in a child aged 2–12 months is:$x$, $x$50 breaths/min or more$x$, $x$✅ Correct answer: 50 breaths/min or more
WHO fast breathing thresholds (counted for a full minute while the child is calm): under 2 months, 60 breaths/min or more; 2–12 months, 50 breaths/min or more; 1–5 years, 40 breaths/min or more. A child aged 2–12 months breathing 50 or more per minute has fast breathing, which suggests pneumonia.

❌ Why the other options are wrong:
• 20 breaths/min or more — 20 breaths/min is normal for an older child, not fast for an infant.
• 80 breaths/min or more — 80 breaths/min is very fast, but the threshold is 50.
• 30 breaths/min or more — 30 breaths/min is normal for an infant.

⭐ Key point: Count breaths for a FULL minute when the child is calm (not crying or feeding), because the rate varies.$x$, null),
(117, $x$A child with diabetic ketoacidosis should have fluids replaced:$x$, $x$Slowly over 48 hours to reduce cerebral oedema$x$, $x$✅ Correct answer: Slowly over 48 hours to reduce cerebral oedema
In children with DKA, the brain is at risk of CEREBRAL OEDEMA if fluids are given too quickly or glucose and osmolality fall too fast. Fluid deficits are therefore replaced SLOWLY and evenly over 48 HOURS. Boluses are given only if the child is in shock (10 mL/kg, repeated carefully).

❌ Why the other options are wrong:
• Only by mouth, with no IV fluids — DKA children are too dehydrated and vomiting for oral fluids alone.
• Rapidly over 2 hours to correct shock — Rapid replacement over 2 hours increases the risk of cerebral oedema.
• With hypotonic fluid to lower sodium — Hypotonic fluids increase the risk of cerebral oedema; 0.9% saline is used.

⭐ Key point: In children's DKA: no insulin bolus, start insulin (0.05–0.1 units/kg/hour) 1–2 hours AFTER fluids begin, and watch for headache, slow pulse and falling GCS.$x$, null),
(118, $x$Neonatal tetanus is prevented by:$x$, $x$Maternal tetanus toxoid and clean cord care$x$, $x$✅ Correct answer: Maternal tetanus toxoid and clean cord care
Neonatal tetanus happens when tetanus spores enter the baby through the cut umbilical cord (from unclean cutting tools or traditional cord dressings). It is prevented by: 1) giving TETANUS TOXOID vaccine to the mother before or during pregnancy, so her antibodies cross the placenta and protect the baby; and 2) CLEAN delivery and clean cord care (sterile blade, keep the cord clean and dry; chlorhexidine is applied in Nigeria).

❌ Why the other options are wrong:
• Vitamin K injection given at birth — Vitamin K prevents bleeding (haemorrhagic disease of the newborn), not tetanus.
• Antibiotics given to every baby at birth — Routine antibiotics don't prevent tetanus.
• Routine BCG given in the first week — BCG protects against tuberculosis, not tetanus.

⭐ Key point: Neonatal tetanus usually starts around day 5–7: the baby stops sucking, has a stiff jaw (trismus), muscle spasms and arching. It has a very high death rate.$x$, null),
(119, $x$Kwashiorkor in a critically ill child presents with:$x$, $x$Oedema, skin changes and low albumin$x$, $x$✅ Correct answer: Oedema, skin changes and low albumin
Kwashiorkor is a form of severe acute malnutrition with PROTEIN deficiency. Low blood albumin lets fluid leak into the tissues, causing OEDEMA (swelling of the feet, legs and face). Other features: skin changes (peeling, "flaky paint" skin), thin, pale hair, an enlarged fatty liver, apathy, and misery. Muscle wasting is hidden under the oedema.

❌ Why the other options are wrong:
• High albumin with polycythaemia — Albumin is LOW in kwashiorkor, and polycythaemia is not a feature.
• Obesity with hypertension — Obesity with hypertension is the opposite of malnutrition.
• Severe wasting without any oedema — Severe wasting WITHOUT oedema describes MARASMUS.

⭐ Key point: Danger in SAM: hypoglycaemia, hypothermia, infection and dehydration. Feed slowly (F-75 formula first) to avoid refeeding syndrome.$x$, null),
(120, $x$Severe acute malnutrition with shock is treated with:$x$, $x$Cautious IV fluids (15 mL/kg) with close monitoring$x$, $x$✅ Correct answer: Cautious IV fluids (15 mL/kg) with close monitoring
Children with severe acute malnutrition have weak hearts and abnormal salt and water handling. Normal fluid boluses can quickly cause HEART FAILURE and death. If in shock, give CAUTIOUS IV fluids (15 mL/kg over 1 hour, with Ringer's lactate plus 5% dextrose, or half-strength Darrow's with 5% glucose) and monitor pulse and breathing every 5–10 minutes. Stop if the pulse or breathing rate rises.

❌ Why the other options are wrong:
• No IV or oral fluids at all until feeding — Withholding all fluids in shock would be fatal.
• IV diuretics to remove excess body water — Diuretics would make dehydration and shock worse.
• Rapid 60 mL/kg boluses over 15 minutes — Rapid 60 mL/kg boluses would cause fluid overload and heart failure.

⭐ Key point: For dehydration WITHOUT shock in SAM, use oral ReSoMal (a low-sodium ORS), not standard ORS or IV fluids.$x$, null),
(121, $x$A woman at 34 weeks lies flat for a scan and becomes pale, sweaty and hypotensive. The nurse should:$x$, $x$Turn her to the left lateral position$x$, $x$✅ Correct answer: Turn her to the left lateral position
When a woman in late pregnancy lies flat on her back, the heavy uterus presses on the inferior vena cava (IVC). Blood returning to the heart drops, cardiac output falls, and the BP drops. She becomes pale, sweaty, dizzy and hypotensive: supine hypotensive syndrome. TURNING HER TO THE LEFT side moves the uterus off the IVC and restores blood flow.

❌ Why the other options are wrong:
• Raise both legs and keep her flat — Raising the legs while still flat doesn't remove the uterus from the IVC.
• Give IV furosemide — Furosemide would reduce blood volume and worsen the hypotension.
• Sit her upright at 90 degrees — Sitting fully upright isn't the standard treatment, and she may faint.

⭐ Key point: In late pregnancy, avoid lying flat. Use a left lateral tilt (or a wedge under the right hip) for procedures and CPR.$x$, null),
(122, $x$Cervical cerclage is usually inserted at:$x$, $x$12–14 weeks of gestation$x$, $x$✅ Correct answer: 12–14 weeks of gestation
Cervical cerclage is a stitch placed around the cervix to keep it closed in women with cervical weakness (insufficiency). A planned (history-indicated) cerclage is usually placed at 12–14 WEEKS, after the first-trimester scan confirms a healthy pregnancy and after most miscarriages for other reasons would have occurred.

❌ Why the other options are wrong:
• 4–6 weeks of gestation — At 4–6 weeks it's too early; the pregnancy may not yet be confirmed as viable.
• 28–30 weeks of gestation — At 28–30 weeks it's too late for routine placement (an emergency rescue cerclage may be placed up to about 24 weeks).
• 36–38 weeks of gestation — At 36–38 weeks the stitch is REMOVED, not inserted.

⭐ Key point: The stitch is removed at about 36–37 weeks, or immediately if labour starts or the membranes rupture, to prevent cervical tearing.$x$, null),
(123, $x$Puerperal sepsis can progress rapidly to septic shock. An early sign is:$x$, $x$Tachycardia and tachypnoea with abdominal tenderness$x$, $x$✅ Correct answer: Tachycardia and tachypnoea with abdominal tenderness
Puerperal sepsis (infection of the genital tract after childbirth) can quickly progress to septic shock. Early signs include TACHYCARDIA (fast pulse), TACHYPNOEA (fast breathing) and abdominal or uterine TENDERNESS, often with foul-smelling lochia. Fever may be ABSENT in severe sepsis, so don't rely on temperature alone.

❌ Why the other options are wrong:
• An increased appetite and good sleep — Increased appetite and good sleep are signs of health.
• Bradycardia with hypertension and headache — Bradycardia with hypertension doesn't fit sepsis.
• A normal temperature with a calm patient — A calm patient with normal temperature doesn't rule out sepsis, but it's not an early sign of it.

⭐ Key point: Use the MEOWS chart to spot deterioration early. Give the sepsis Hour-1 bundle: cultures, antibiotics, fluids and lactate.$x$, null),
(124, $x$The '3 delays' model for maternal death refers to delays in:$x$, $x$Deciding to seek care, reaching care, receiving care$x$, $x$✅ Correct answer: Deciding to seek care, reaching care, receiving care
The "three delays" model explains why women die in pregnancy and childbirth. 1) DELAY IN DECIDING to seek care (not recognising danger signs, cultural barriers, cost). 2) DELAY IN REACHING care (distance, transport, roads). 3) DELAY IN RECEIVING care at the facility (staff shortages, lack of blood, drugs or equipment). Reducing each delay saves lives.

❌ Why the other options are wrong:
• Diagnosis, treatment and payment of bills — Diagnosis, treatment and payment are not the three delays.
• Labour, delivery and discharge from hospital — Labour, delivery and discharge are not the three delays.
• Booking, scanning and laboratory testing — Booking, scanning and testing are not the three delays.

⭐ Key point: Nigeria has one of the highest maternal mortality rates in the world. Educate about danger signs, plan transport, and make sure facilities are ready with blood and drugs.$x$, null),
(125, $x$Obstetric haemorrhage of 1500 mL with ongoing bleeding needs:$x$, $x$Activation of the massive haemorrhage protocol$x$, $x$✅ Correct answer: Activation of the massive haemorrhage protocol
Losing 1500 mL with ongoing bleeding is a MAJOR obstetric haemorrhage that can quickly become life-threatening. The MASSIVE HAEMORRHAGE PROTOCOL must be activated: call senior obstetric and anaesthetic help, alert the blood bank, give blood products (red cells, FFP, platelets, cryoprecipitate), tranexamic acid 1 g IV, warm all fluids, and treat the cause (the 4 Ts).

❌ Why the other options are wrong:
• Oral iron tablets and review next day — Oral iron is for long-term anaemia, not active bleeding.
• IV diuretics to reduce fluid overload — Diuretics would worsen shock.
• Observation of vital signs for 4 hours — Waiting 4 hours would be fatal.

⭐ Key point: Major PPH: more than 1000 mL. Massive PPH: more than 1500–2000 mL or ongoing bleeding with shock. Monitor blood loss by weighing pads.$x$, null),
(126, $x$In placenta accreta spectrum, the placenta:$x$, $x$Invades the uterine wall and fails to separate$x$, $x$✅ Correct answer: Invades the uterine wall and fails to separate
In placenta accreta spectrum, the placenta grows INTO the uterine wall: accreta into the muscle surface, increta deeper into the muscle, percreta through the wall to other organs such as the bladder. The placenta can't separate normally after birth, causing massive haemorrhage. The main risk factor is a PREVIOUS CAESAREAN SECTION, especially with a low-lying placenta (placenta praevia).

❌ Why the other options are wrong:
• Separates completely before the baby is born — In accreta, the placenta does NOT separate; separating before birth describes abruption.
• Lies over the cervix and bleeds painlessly — Lying over the cervix and bleeding painlessly describes placenta praevia.
• Is much smaller than normal for gestation — The size of the placenta isn't the problem in accreta.

⭐ Key point: Planned delivery in a specialist centre, with blood available and often a planned caesarean hysterectomy.$x$, null),
(127, $x$Peripartum cardiomyopathy presents with:$x$, $x$Heart failure in late pregnancy or months after$x$, $x$✅ Correct answer: Heart failure in late pregnancy or months after
Peripartum cardiomyopathy is HEART FAILURE caused by weakness of the heart muscle (ejection fraction below 45%) that develops in the LAST MONTH of pregnancy or within 5 MONTHS after delivery, with no other cause. Symptoms: breathlessness, orthopnoea, swollen legs, cough, tiredness and palpitations, which are easily mistaken for normal pregnancy symptoms. Risk factors: multiple pregnancies, older age, hypertension, twins and African descent. It is unusually common in northern Nigeria, possibly linked to postpartum customs of very high salt intake and heated rooms.

❌ Why the other options are wrong:
• Sudden tearing chest pain radiating to the back — Tearing chest pain to the back suggests aortic dissection.
• Hypertension and seizures without heart failure — High BP and seizures WITHOUT heart failure describe eclampsia.
• Fever with a widespread rash and joint pains — Fever with rash and joint pains suggests an infection or autoimmune disease.

⭐ Key point: Treat with heart failure drugs (diuretics, beta-blockers; ACE inhibitors after delivery), anticoagulation if the EF is very low, and bromocriptine in some cases. Advise about future pregnancy risk.$x$, null),
(128, $x$Oxytocin infusion is given cautiously in patients with heart disease because it can cause:$x$, $x$Hypotension, tachycardia and fluid overload$x$, $x$✅ Correct answer: Hypotension, tachycardia and fluid overload
Oxytocin, given as a large IV bolus, relaxes the smooth muscle of blood vessels, causing HYPOTENSION and reflex TACHYCARDIA, which can be dangerous in heart disease. Given in large volumes of fluid over a long time, it has an ADH-like (antidiuretic) effect, causing water retention, FLUID OVERLOAD, low sodium and even pulmonary oedema. In heart disease, give it slowly and in a concentrated form.

❌ Why the other options are wrong:
• Severe hyperkalaemia — Oxytocin doesn't cause severe hyperkalaemia.
• Hypertension with a slow heart rate — High BP with slow pulse is more typical of ergometrine.
• Profound hypoglycaemia — Oxytocin doesn't cause severe hypoglycaemia.

⭐ Key point: In cardiac patients: slow IV oxytocin (not a fast bolus), concentrated infusions (to limit fluid volume), and strict fluid balance.$x$, null),
(129, $x$Ergometrine is contraindicated in:$x$, $x$Pre-eclampsia and heart disease$x$, $x$✅ Correct answer: Pre-eclampsia and heart disease
Ergometrine strongly contracts the uterus, but it also tightens blood vessels, causing severe HYPERTENSION and coronary artery spasm. In PRE-ECLAMPSIA it can cause a stroke or eclampsia. In HEART DISEASE it can cause ischaemia, MI or heart failure. It is therefore contraindicated in both.

❌ Why the other options are wrong:
• Mild iron-deficiency anaemia — Mild iron-deficiency anaemia is not a contraindication.
• Primary postpartum haemorrhage — Primary PPH is an INDICATION for ergometrine (if no contraindications).
• Uterine atony after delivery — Uterine atony is an INDICATION for ergometrine.

⭐ Key point: In pre-eclampsia or heart disease, use oxytocin (and carboprost or misoprostol if needed) instead of ergometrine or Syntometrine.$x$, null),
(130, $x$Carboprost (15-methyl PGF2α) should be avoided in:$x$, $x$Asthma$x$, $x$✅ Correct answer: Asthma
Carboprost is a prostaglandin F2α drug used for PPH caused by uterine atony. It contracts smooth muscle, including the uterus AND the airways. In people with ASTHMA, it can cause severe BRONCHOSPASM (wheezing and respiratory failure), so it should be avoided.

❌ Why the other options are wrong:
• Diabetes — Diabetes is not a contraindication to carboprost.
• Anaemia — Anaemia is not a contraindication.
• Hypertension — Hypertension is a caution but not the main contraindication.

⭐ Key point: Carboprost is given 250 micrograms IM (or into the uterine muscle), repeated every 15 minutes, up to 8 doses. Side effects: diarrhoea, vomiting, fever.$x$, null),
(131, $x$Sickle cell disease in pregnancy increases the risk of:$x$, $x$Crises, pre-eclampsia, infection and growth restriction$x$, $x$✅ Correct answer: Crises, pre-eclampsia, infection and growth restriction
Pregnancy is dangerous for women with sickle cell disease. It increases the risk of: sickle CRISES (pain and acute chest syndrome), PRE-ECLAMPSIA, INFECTIONS (urinary, chest, malaria), clots, and a small, growth-restricted baby (IUGR), preterm birth and miscarriage. These women need care from a specialist team.

❌ Why the other options are wrong:
• Post-term pregnancy continuing beyond 42 weeks — Sickle cell disease is linked to PRETERM birth, not post-term.
• Polycythaemia and hyperviscosity in the mother — Sickle cell disease causes ANAEMIA, not polycythaemia.
• Fetal macrosomia and shoulder dystocia at delivery — Babies tend to be SMALL (growth-restricted), not large.

⭐ Key point: Care in pregnancy: daily folic acid (5 mg), malaria prophylaxis, low-dose aspirin, hydration, avoid cold, early treatment of crises and infection, and growth scans for the baby.$x$, null),
(132, $x$Severe malaria in pregnancy is treated with:$x$, $x$IV artesunate$x$, $x$✅ Correct answer: IV artesunate
IV ARTESUNATE is the first-line treatment for severe malaria in all patients, including pregnant women in ANY trimester. It clears parasites faster and saves more lives than quinine. Give 2.4 mg/kg IV at 0, 12 and 24 hours, then daily until the patient can take oral treatment, followed by a full course of oral artemisinin combination therapy (ACT).

❌ Why the other options are wrong:
• Oral metronidazole — Metronidazole is an antibiotic for anaerobic and protozoal infections, not malaria.
• IM penicillin — Penicillin is an antibiotic and doesn't treat malaria.
• Oral chloroquine only — Chloroquine is no longer effective in Nigeria due to resistance, and oral treatment is not suitable for severe malaria.

⭐ Key point: Severe malaria in pregnancy: watch for hypoglycaemia (check glucose often, especially with quinine), pulmonary oedema, anaemia and preterm labour.$x$, null),
(133, $x$Polyhydramnios with a fetus that cannot swallow suggests:$x$, $x$Oesophageal atresia or neurological anomaly$x$, $x$✅ Correct answer: Oesophageal atresia or neurological anomaly
Before birth, the fetus swallows amniotic fluid, which helps keep the fluid volume normal. If the fetus CANNOT SWALLOW, fluid builds up, causing POLYHYDRAMNIOS. Causes: OESOPHAGEAL ATRESIA (the oesophagus is blocked), duodenal atresia, or NEUROLOGICAL problems that affect swallowing (anencephaly, muscle disorders).

❌ Why the other options are wrong:
• Post-maturity beyond 42 weeks — Post-maturity is linked to reduced fluid (oligohydramnios).
• Bilateral fetal renal agenesis — Bilateral renal agenesis causes NO fluid (oligohydramnios), because the fetus makes no urine.
• Placental insufficiency and IUGR — Placental insufficiency with IUGR is linked to reduced fluid (oligohydramnios).

⭐ Key point: At birth, pass an NG tube to check the oesophagus is open. If it won't pass, suspect oesophageal atresia: no feeds, suction the upper pouch.$x$, null),
(134, $x$A growth-restricted baby at delivery requires preparation for:$x$, $x$Resuscitation, hypoglycaemia and hypothermia$x$, $x$✅ Correct answer: Resuscitation, hypoglycaemia and hypothermia
A growth-restricted (IUGR) baby has limited energy stores (low glycogen and fat). After birth, the baby is at high risk of HYPOGLYCAEMIA (low sugar) and HYPOTHERMIA (cold). These babies may have been short of oxygen in the womb, so they may need RESUSCITATION at birth. Prepare a warm environment, resuscitation equipment and early feeding.

❌ Why the other options are wrong:
• Fluid overload and generalised oedema — Fluid overload and oedema are not typical of growth-restricted babies.
• Hyperglycaemia and polyuria at birth — They have LOW glucose, not high, and don't usually have polyuria.
• Macrosomia and shoulder dystocia — Macrosomia (a large baby) and shoulder dystocia are the opposite of growth restriction.

⭐ Key point: Check blood glucose regularly in IUGR babies, feed early (within the first hour), and keep them warm (skin-to-skin contact, a hat).$x$, null),
(135, $x$Women with a history of second-trimester loss from cervical weakness may be offered:$x$, $x$Cervical length scans with cerclage or progesterone$x$, $x$✅ Correct answer: Cervical length scans with cerclage or progesterone
Women who have lost a pregnancy in the second trimester because of a weak cervix are at risk of it happening again. They are offered CERVICAL LENGTH SCANS (transvaginal ultrasound) from about 14–16 weeks. If the cervix shortens, a CERCLAGE (stitch) or vaginal PROGESTERONE can be offered to prevent another loss.

❌ Why the other options are wrong:
• Routine caesarean section at 20 weeks — A caesarean at 20 weeks would deliver a baby too premature to survive.
• Strict bed rest only for the whole pregnancy — Strict bed rest alone hasn't been shown to work and increases clot risk.
• No treatment, as recurrence is very rare — Recurrence is NOT rare, so treatment is offered.

⭐ Key point: Cervical length below 25 mm before 24 weeks means a high risk of preterm birth.$x$, null),
(136, $x$Pulmonary oedema in severe pre-eclampsia is worsened by:$x$, $x$Excessive IV fluids$x$, $x$✅ Correct answer: Excessive IV fluids
In severe pre-eclampsia, the blood vessels are leaky (damaged endothelium), and the blood albumin is low. Extra IV fluid easily leaks into the lungs, causing PULMONARY OEDEMA. That's why fluids are RESTRICTED (usually to about 80 mL/hour total, or 1 mL/kg/hour), with strict fluid balance, even if urine output is low.

❌ Why the other options are wrong:
• Magnesium sulphate — Magnesium sulphate doesn't cause pulmonary oedema; it prevents fits.
• Fluid restriction — Fluid restriction PREVENTS pulmonary oedema.
• Left lateral position — The left lateral position improves blood flow and doesn't worsen pulmonary oedema.

⭐ Key point: Low urine output in pre-eclampsia is usually NOT treated with fluid boluses. Monitor fluid balance hourly and SpO₂ to detect oedema early.$x$, null),
(137, $x$After delivery, a woman on magnesium sulphate has respiratory rate 8/min. The nurse should:$x$, $x$Stop the infusion and give IV calcium gluconate$x$, $x$✅ Correct answer: Stop the infusion and give IV calcium gluconate
Magnesium sulphate prevents seizures in pre-eclampsia, but too much is toxic. Toxicity signs appear in order: loss of knee reflexes, then RESPIRATORY DEPRESSION (RR below 12), then cardiac arrest. A respiratory rate of 8/min is a sign of serious toxicity. STOP the infusion immediately and give the antidote, IV CALCIUM GLUCONATE 10% (10 mL over 10 minutes). Give oxygen and support breathing.

❌ Why the other options are wrong:
• Increase the magnesium dose to prevent fits — Increasing the dose would worsen toxicity and could cause respiratory arrest.
• Encourage breastfeeding to help recovery — Breastfeeding doesn't treat respiratory depression.
• Give a sedative to calm the patient — A sedative would further depress breathing.

⭐ Key point: Monitor hourly on magnesium: respiratory rate (above 12), knee reflexes (present), urine output (above 30 mL/hour) and SpO₂. Keep calcium gluconate at the bedside.$x$, null),
(138, $x$Retained products of conception after delivery cause:$x$, $x$Secondary PPH and infection$x$, $x$✅ Correct answer: Secondary PPH and infection
Retained products of conception (pieces of placenta or membranes left in the uterus) stop the uterus from contracting properly and become infected. This causes SECONDARY PPH (bleeding from 24 hours to 12 weeks after birth) and INFECTION (endometritis, puerperal sepsis): fever, offensive lochia and a tender, bulky uterus.

❌ Why the other options are wrong:
• Hyperemesis gravidarum — Hyperemesis gravidarum is severe vomiting in early pregnancy.
• Hypertension and seizures — Hypertension and seizures are caused by pre-eclampsia and eclampsia.
• Polyhydramnios in the next pregnancy — Retained products don't cause polyhydramnios in the next pregnancy.

⭐ Key point: Treatment: antibiotics, then evacuation of retained products (ERPC or manual vacuum aspiration) under antibiotic cover.$x$, null),
(139, $x$The nurse should monitor a woman after caesarean section with general anaesthesia for:$x$, $x$Airway, bleeding, uterine tone and pain$x$, $x$✅ Correct answer: Airway, bleeding, uterine tone and pain
After a caesarean section under general anaesthesia, monitor: AIRWAY and breathing (the patient is recovering from anaesthesia and is at risk of airway obstruction and aspiration), BLEEDING (wound, vaginal loss, PPH risk), UTERINE TONE (a soft uterus means atony and bleeding), and PAIN (good pain relief helps breathing and early mobility). Also check vital signs, urine output and the wound. Record on the MEOWS chart.

❌ Why the other options are wrong:
• Hypoglycaemia only, every hour — Glucose monitoring alone is not enough.
• Visual acuity only, every hour — Visual acuity is not a routine post-op check.
• Polyuria only, every hour — Urine output alone is not enough.

⭐ Key point: Most post-caesarean complications in the first hours are airway problems, bleeding and low BP. Check the uterus (fundus) and lochia regularly.$x$, null),
(140, $x$Maternal hypothermia after massive transfusion worsens:$x$, $x$Coagulopathy and bleeding$x$, $x$✅ Correct answer: Coagulopathy and bleeding
Clotting factors are enzymes that work best at normal body temperature (37 °C). HYPOTHERMIA slows them down and stops platelets working properly, so blood doesn't clot well (COAGULOPATHY) and bleeding continues. Cold blood products from the fridge (red cells are stored at 4 °C) given in large amounts can quickly make the patient cold.

❌ Why the other options are wrong:
• The blood pressure only — Hypothermia affects more than blood pressure; its main effect here is clotting.
• Uterine contraction — Hypothermia makes uterine contraction WORSE, not better.
• The urine output only — Hypothermia affects more than urine output.

⭐ Key point: The "lethal triad" in bleeding: hypothermia, acidosis, coagulopathy. Use blood warmers and forced-air warming blankets.$x$, null),
(141, $x$The Code of Professional Conduct for nurses mainly sets out:$x$, $x$Standards of behaviour and duties nurses must follow$x$, $x$✅ Correct answer: Standards of behaviour and duties nurses must follow
The Code of Professional Conduct (issued in Nigeria by the NMCN) sets out the STANDARDS of behaviour and DUTIES every nurse must follow: respect for patients, confidentiality, competence, honesty, working within the scope of practice, accountability, and protecting patients from harm. It guides practice and is used to judge misconduct.

❌ Why the other options are wrong:
• The prescribing rules that apply to doctors — Prescribing rules for doctors are set by the Medical and Dental Council, not the nursing code.
• The salaries that nurses should receive each grade — Salaries are set by employers and government, not by the code of conduct.
• The building requirements for hospitals and clinics — Building standards are set by health and building regulators.

⭐ Key point: Breaking the code can lead to NMCN disciplinary action: a warning, suspension, or removal from the register.$x$, null),
(142, $x$A Do-Not-Resuscitate decision should be:$x$, $x$Clearly documented, discussed and reviewed$x$, $x$✅ Correct answer: Clearly documented, discussed and reviewed
A Do-Not-Resuscitate (DNACPR) decision is a serious decision about withholding CPR. It must be made by the senior doctor in charge, DISCUSSED with the patient (if they have capacity) and/or the family, clearly DOCUMENTED on the proper form, COMMUNICATED to the whole team, and REVIEWED regularly or when the patient's condition changes.

❌ Why the other options are wrong:
• Made by the bedside nurse alone at night — A bedside nurse alone cannot make a DNR decision.
• Applied automatically to all elderly patients — Age alone is never a reason for DNR; each patient is assessed individually.
• Kept secret from the rest of the team — The decision must be shared with the team, or CPR might be started wrongly.

⭐ Key point: DNR means no CPR only. All other appropriate care continues (oxygen, fluids, antibiotics, pain relief, nursing care).$x$, null),
(143, $x$Passive euthanasia is sometimes confused with:$x$, $x$Withdrawing or withholding futile treatment$x$, $x$✅ Correct answer: Withdrawing or withholding futile treatment
Some people wrongly call withholding or withdrawing futile treatment "passive euthanasia". But stopping treatment that cannot help (such as a ventilator in a patient who cannot recover), after proper discussion and documentation, is lawful and ethical. The patient dies from the underlying disease, not from an act intended to kill. Active euthanasia (giving something to deliberately end life) is illegal in Nigeria.

❌ Why the other options are wrong:
• Starting CPR in an unexpected cardiac arrest — Starting CPR is an attempt to save life, not euthanasia.
• Giving adequate pain relief at the end of life — Good pain relief at the end of life is good care (principle of double effect).
• Feeding the patient by nasogastric tube — Tube feeding is a form of treatment and nutrition, not euthanasia.

⭐ Key point: Futile treatment is treatment that won't achieve the goals of care. Decisions are made by the senior team with the family, and comfort care continues.$x$, null),
(144, $x$A dying declaration recorded by a nurse is valuable in court because:$x$, $x$A person facing death is presumed to be truthful$x$, $x$✅ Correct answer: A person facing death is presumed to be truthful
A dying declaration is a statement made by a person who believes they are about to die, about the cause or circumstances of their death (for example, who attacked them). Courts accept it as evidence because the law presumes a person facing death has no reason to lie. The nurse should record it word for word, with the date, time, the patient's mental state and the names of witnesses.

❌ Why the other options are wrong:
• It replaces the need for a police investigation — It doesn't replace a police investigation; it is one piece of evidence.
• It is always written down by a lawyer — It can be recorded by a nurse, doctor or magistrate; a lawyer isn't required.
• It counts as a formal medical diagnosis — It is legal evidence, not a medical diagnosis.

⭐ Key point: Record the exact words in quotation marks, note whether the patient was conscious and orientated, and get witnesses to sign.$x$, null),
(145, $x$A swab left inside a patient after surgery would allow the doctrine of:$x$, $x$Res ipsa loquitur$x$, $x$✅ Correct answer: Res ipsa loquitur
Res ipsa loquitur means "the thing speaks for itself". It applies when the harm would not normally happen without negligence, and the thing that caused it was under the professional's control. A surgical swab left inside a patient is the classic example: the swab itself proves something went wrong, so negligence is presumed without the patient needing to prove exactly how it happened.

❌ Why the other options are wrong:
• Double effect — Double effect is an ethical principle about actions with good and bad effects (such as end-of-life pain relief).
• Vicarious immunity — "Vicarious immunity" is not a real doctrine; vicarious LIABILITY makes employers responsible for employees.
• Good Samaritan — Good Samaritan laws protect people who give emergency help outside work.

⭐ Key point: Prevent retained swabs and instruments with careful counting (before, during and after surgery) and the WHO surgical safety checklist.$x$, null),
(146, $x$The Patient's Bill of Rights includes the right to:$x$, $x$Know who is providing their care$x$, $x$✅ Correct answer: Know who is providing their care
The Patient's Bill of Rights lists rights patients have in health care, including: the right to KNOW WHO is providing their care (names and roles of staff), to respectful care, to information about their condition and treatment, to give or refuse consent, to privacy and confidentiality, and to complain.

❌ Why the other options are wrong:
• Choose any staff member's salary — Patients don't choose staff salaries.
• Read the notes of other patients — Patients cannot read other patients' notes; that would breach confidentiality.
• Refuse to pay all hospital bills — Patients have the responsibility to pay for services as agreed; refusing all bills is not a right.

⭐ Key point: Patients also have responsibilities: give accurate information, follow agreed treatment, respect staff and other patients.$x$, null),
(147, $x$A patient bitten by a dog should have the wound:$x$, $x$Washed with soap and water for 15 minutes$x$, $x$✅ Correct answer: Washed with soap and water for 15 minutes
After a dog bite, the most important first step is to WASH the wound thoroughly with SOAP and running WATER for at least 15 minutes. This removes saliva and much of the rabies virus and bacteria, and greatly reduces the risk of rabies. Then apply an antiseptic (povidone-iodine or alcohol), give tetanus prophylaxis, and start rabies vaccine (and rabies immunoglobulin for severe bites) as indicated.

❌ Why the other options are wrong:
• Covered with a dressing without cleaning — Covering without cleaning leaves the virus and bacteria in the wound.
• Left untreated if the wound is small — Even a small bite can transmit rabies; it must be treated.
• Sutured tightly at once to stop bleeding — Bite wounds are usually NOT sutured tightly at first (high infection risk), except on the face.

⭐ Key point: Rabies is almost 100% fatal once symptoms start, but it is preventable with prompt wound care and vaccination after exposure.$x$, null),
(148, $x$Good Samaritan laws do not apply when the nurse:$x$, $x$Is on duty and has a duty of care$x$, $x$✅ Correct answer: Is on duty and has a duty of care
Good Samaritan laws protect people who give emergency help VOLUNTARILY, in good faith, OUTSIDE their job (off duty, without payment). When a nurse is ON DUTY, they have a professional DUTY OF CARE to the patients, and the usual professional standards and liability apply. Good Samaritan protection doesn't cover on-duty work.

❌ Why the other options are wrong:
• Gives first aid at a church — First aid at a church (off duty, voluntary) is covered by Good Samaritan principles.
• Helps at a road crash off duty — Helping at a road crash off duty is the classic Good Samaritan situation.
• Assists at a market collapse — Helping at a market collapse off duty is covered.

⭐ Key point: Even as a Good Samaritan, stay within your skills, get consent if possible, hand over properly to emergency services, and document what you did.$x$, null),
(149, $x$The legal term for a person who brings a negligence claim is:$x$, $x$Plaintiff$x$, $x$✅ Correct answer: Plaintiff
In a negligence (civil) case, the PLAINTIFF (also called the claimant) is the person who brings the claim, usually the patient or their family. The DEFENDANT is the person or organisation being sued (the nurse, doctor or hospital).

❌ Why the other options are wrong:
• Defendant — The defendant is the one being sued, not the one bringing the claim.
• Witness — A witness gives evidence but is not a party to the case.
• Judge — The judge hears the case and decides the outcome.

⭐ Key point: In criminal cases, the state (prosecution) brings the case against the accused.$x$, null),
(150, $x$Malpractice differs from negligence in that malpractice:$x$, $x$It is negligence by a professional in their role$x$, $x$✅ Correct answer: It is negligence by a professional in their role
MALPRACTICE is professional negligence: negligence by a professional (nurse, doctor, midwife) while acting in their professional role. It is judged against the standard of a reasonably competent professional. Like ordinary negligence, it needs a duty of care, a breach of that duty, causation, and damage.

❌ Why the other options are wrong:
• It is always intentional and criminal — Malpractice is usually NOT intentional; it is a failure to meet the standard of care.
• It applies only to doctors, not nurses — It applies to ALL professionals, including nurses.
• It has no legal consequence at all — It has serious legal consequences: compensation, disciplinary action, and sometimes criminal charges.

⭐ Key point: Negligence is the general legal concept; malpractice is negligence in professional practice.$x$, null),
(151, $x$An ICU nurse who leaves her shift without handover may be liable for:$x$, $x$Abandonment of patients$x$, $x$✅ Correct answer: Abandonment of patients
Patient ABANDONMENT happens when a nurse leaves patients in their care without a proper handover to another qualified nurse, so the patients are left without care. In ICU, this is very dangerous, because patients need continuous monitoring. Abandonment can lead to disciplinary action and legal liability if harm results.

❌ Why the other options are wrong:
• Res ipsa loquitur — Res ipsa loquitur is a legal doctrine for obvious negligence, not specifically abandonment.
• Good professional practice — Leaving without handover is NOT good practice.
• Vicarious immunity — "Vicarious immunity" doesn't exist.

⭐ Key point: Always give a full handover (using SBAR) before leaving, and never leave the unit unless your patients are handed over to someone competent.$x$, null),
(152, $x$Assault means:$x$, $x$A threat of unlawful touching$x$, $x$✅ Correct answer: A threat of unlawful touching
In law, ASSAULT is a THREAT or attempt to touch someone unlawfully, which makes them fear harm (even if no touching happens). For example, threatening to give an injection against the patient's will. BATTERY is the actual unlawful touching without consent.

❌ Why the other options are wrong:
• Actual unlawful touching — Actual unlawful touching is BATTERY, not assault.
• Lawful physical restraint — Lawful restraint (with proper legal authority and procedure) is not assault.
• Valid consent to treatment — Valid consent makes touching LAWFUL.

⭐ Key point: Always get consent before procedures, and never threaten a patient to make them comply.$x$, null),
(153, $x$When a patient wants to leave ICU against medical advice, the nurse should:$x$, $x$Explain the risks, inform the doctor, document$x$, $x$✅ Correct answer: Explain the risks, inform the doctor, document
A competent adult has the right to refuse treatment, including leaving hospital against medical advice (AMA). The nurse should explain the RISKS of leaving clearly, try to understand and address the reasons, INFORM the doctor, ask the patient to sign a discharge-against-advice form, and DOCUMENT everything carefully. The patient cannot be held against their will if they have capacity.

❌ Why the other options are wrong:
• Lock the doors so that the patient cannot leave — Locking the doors is false imprisonment, which is illegal.
• Sedate the patient to keep them in the unit — Sedating a patient to keep them in is assault and battery.
• Ignore the request and continue the care — Ignoring the request disrespects autonomy and could lead to harm.

⭐ Key point: If the patient lacks capacity (confused, delirious), they may be kept for their safety under the appropriate legal framework. Assess capacity carefully.$x$, null),
(154, $x$A nurse who discloses a patient's HIV status to the patient's employer without consent has committed:$x$, $x$Breach of confidentiality$x$, $x$✅ Correct answer: Breach of confidentiality
Patient information, including HIV status, is CONFIDENTIAL. Disclosing it to an employer (or anyone not involved in care) WITHOUT the patient's CONSENT is a breach of confidentiality. It can lead to discrimination and harm, and the nurse can face disciplinary and legal action. Disclosure is only allowed with consent, or when required by law.

❌ Why the other options are wrong:
• An act of beneficence — Beneficence means doing good; this disclosure harms the patient.
• Good professional practice — This is not good professional practice; it breaks the code of conduct.
• An example of fidelity — Fidelity is about keeping promises, including the promise of confidentiality; this breaks it.

⭐ Key point: Exceptions to confidentiality: patient consent, a court order, notifiable diseases (public health), or a serious risk to others (decided by senior staff and recorded).$x$, null),
(155, $x$Ethical dilemmas in ICU are best resolved by:$x$, $x$Team discussion using ethics and the patient's values$x$, $x$✅ Correct answer: Team discussion using ethics and the patient's values
Ethical dilemmas, such as whether to continue treatment, have no easy right answer. They are best resolved by the multidisciplinary TEAM discussing together, using ETHICAL principles (autonomy, beneficence, non-maleficence, justice) and the PATIENT'S VALUES and wishes (from the patient or family). A hospital ethics committee can help with difficult cases.

❌ Why the other options are wrong:
• Ignoring the problem until it goes away — Ignoring the problem can lead to harm and distress.
• Following whoever argues the loudest — The loudest voice isn't necessarily right; decisions should be based on ethics and evidence.
• The most junior nurse deciding on behalf of all — A junior nurse shouldn't make major decisions alone.

⭐ Key point: Steps: gather facts, identify the ethical issue, consider options and consequences, involve the patient and family, decide, document, and review.$x$, null),
(156, $x$Felony-related cases in ICU (e.g. gunshot wounds) require the nurse to:$x$, $x$Give care and notify police as the law requires$x$, $x$✅ Correct answer: Give care and notify police as the law requires
Felony-related injuries (gunshot wounds, stab wounds, assault) are medico-legal cases. The nurse's first duty is to GIVE CARE: emergency treatment is never delayed or refused. At the same time, the nurse must NOTIFY the police as required by law, preserve evidence properly (bag clothing, keep bullets, maintain the chain of custody), and document carefully.

❌ Why the other options are wrong:
• Refuse to treat the patient until police arrive — Refusing treatment until police arrive is illegal and unethical (the right to emergency care).
• Discharge the patient quickly to avoid trouble — Early discharge to avoid trouble is unsafe and unethical.
• Investigate the crime personally at the bedside — Investigating the crime is the police's job, not the nurse's.

⭐ Key point: In Nigeria, the Compulsory Treatment and Care for Victims of Gunshots Act (2017) requires hospitals to treat gunshot victims immediately, without waiting for a police report.$x$, null),
(157, $x$Telephone orders in an emergency should be:$x$, $x$Read back, documented and countersigned$x$, $x$✅ Correct answer: Read back, documented and countersigned
In an emergency, a doctor may give a verbal or telephone order. To prevent errors, the nurse must READ BACK the order (repeat it to the doctor to confirm the drug, dose, route and time), DOCUMENT it immediately (date, time, doctor's name, "telephone order, read back"), and ensure the doctor COUNTERSIGNS it as soon as possible (usually within 24 hours).

❌ Why the other options are wrong:
• Ignored until a doctor attends in person — Ignoring an emergency order could harm the patient.
• Accepted from any caller on the phone — Orders should only be accepted from known, authorised prescribers.
• Accepted without writing anything down — Unwritten orders cannot be checked and are a legal risk.

⭐ Key point: Avoid telephone orders except in emergencies. Never accept them for high-risk drugs if avoidable, and always have a second nurse listen if possible.$x$, null),
(158, $x$Professional accountability means the nurse:$x$, $x$She answers for her actions and omissions$x$, $x$✅ Correct answer: She answers for her actions and omissions
ACCOUNTABILITY means the nurse takes responsibility for, and can explain and justify, their own ACTIONS and OMISSIONS (things they failed to do). Nurses are accountable to the patient, the employer, the profession (NMCN) and the law. It means being competent, following standards, documenting care, and admitting mistakes.

❌ Why the other options are wrong:
• She avoids making any decisions — Avoiding decisions is not accountable practice; nurses must make decisions within their role.
• She is never responsible for any outcome — Nurses ARE responsible for the outcomes of their own actions.
• She shifts all blame to the doctors — Shifting blame to doctors avoids accountability.

⭐ Key point: You are accountable for what you do and for what you delegate. You cannot transfer accountability to someone else.$x$, null),
(159, $x$Standards of practice are used in court to judge whether:$x$, $x$She acted as a reasonably competent nurse would$x$, $x$✅ Correct answer: She acted as a reasonably competent nurse would
In a negligence case, the court asks whether the nurse acted as a REASONABLY COMPETENT nurse with similar training would have acted in the same situation (the "reasonable nurse" standard). Standards of practice (policies, guidelines, the code of conduct, expert evidence) are used to judge this.

❌ Why the other options are wrong:
• The patient had paid all the hospital bills — Whether bills were paid has nothing to do with the standard of care.
• She was the best nurse in the whole hospital — The court doesn't expect the "best" nurse, only a reasonably competent one.
• A doctor was present when she gave care — A doctor's presence doesn't decide whether the nurse met the standard.

⭐ Key point: Following policies and guidelines and documenting your care clearly are your best defence.$x$, null),
(160, $x$A nurse ordered by a doctor to give a clearly wrong dose should:$x$, $x$Question the order and withhold until clarified$x$, $x$✅ Correct answer: Question the order and withhold until clarified
A nurse is legally and professionally ACCOUNTABLE for every drug they give, even if a doctor prescribed it. If an order is clearly wrong or unsafe (wrong dose, drug or route), the nurse must NOT give it. Withhold the drug, question the order, contact the prescriber to clarify, and document what was done. If the doctor insists on an unsafe order, escalate to senior staff.

❌ Why the other options are wrong:
• Give it because the doctor wrote the order — "The doctor ordered it" is not a legal defence if the nurse gives a clearly wrong dose.
• Give half the dose as a compromise — Giving half the dose is still not correct and could cause harm.
• Ask the patient to decide what to do — The patient isn't responsible for checking prescriptions.

⭐ Key point: Before giving any drug, check the rights: right patient, right drug, right dose, right route, right time, right documentation, and right reason.$x$, null),
(161, $x$ICU organisation in the curriculum includes the role of the nurse in:$x$, $x$Unit organisation, staffing, equipment and quality$x$, $x$✅ Correct answer: Unit organisation, staffing, equipment and quality
The CCN curriculum includes ICU organisation and management: how the unit is ORGANISED (design, levels of care), STAFFING (numbers, skill mix, rosters), EQUIPMENT (buying, maintaining, checking), and QUALITY (audit, standards, safety). The ICU nurse manager coordinates people, resources and standards to provide safe care.

❌ Why the other options are wrong:
• Hospital finance, billing and insurance claims only — Hospital finance, billing and insurance are mainly administration's job, not the core ICU nurse role.
• Surgery and anaesthesia in the main theatre only — Surgery and anaesthesia in theatre are other specialities.
• Pharmacy dispensing and stock control only — Pharmacy dispensing and stock control are the pharmacist's job.

⭐ Key point: ICU management covers planning, organising, staffing, directing (leading) and controlling (quality and audit).$x$, null),
(162, $x$The most appropriate ICU nurse-patient ratio for a Level 2 (HDU) patient is:$x$, $x$1:2$x$, $x$✅ Correct answer: 1:2
A Level 2 (High Dependency) patient needs more observation than a ward patient but less than a fully ventilated ICU patient, for example single-organ support or close monitoring after major surgery. The recommended nurse-to-patient ratio is 1:2 (one nurse for two patients). Level 3 (ICU) patients need 1:1.

❌ Why the other options are wrong:
• 1:4 — 1:4 is more like a general ward or Level 1 care.
• 1:8 — 1:8 is far too few nurses for HDU patients.
• 1:1 — 1:1 is for Level 3 (ventilated or multi-organ support) patients.

⭐ Key point: Levels of care: Level 0 (ward), Level 1 (ward with extra support), Level 2 (HDU, 1:2), Level 3 (ICU, 1:1).$x$, null),
(163, $x$An ICU duty roster should be planned:$x$, $x$In advance, balancing skill mix, leave, continuity$x$, $x$✅ Correct answer: In advance, balancing skill mix, leave, continuity
A good ICU roster is planned IN ADVANCE (usually 4–6 weeks), and balances: SKILL MIX (experienced and junior nurses on every shift), annual LEAVE and study days, CONTINUITY of care (the same nurses for the same patients where possible), and fairness (equal distribution of nights and weekends). Good rosters reduce stress, sickness and absenteeism.

❌ Why the other options are wrong:
• Without considering skill mix, using staff names only — Ignoring skill mix could leave a shift with only junior staff, which is unsafe.
• Daily at the start of each shift by whoever is in charge — Daily planning at the start of each shift is too late and causes chaos.
• By the patients' relatives at the weekly family meeting — Relatives are not involved in planning staff rosters.

⭐ Key point: Every ICU shift should have an experienced ICU-trained nurse in charge.$x$, null),
(164, $x$Span of control in ICU management refers to:$x$, $x$Staff one leader can supervise effectively$x$, $x$✅ Correct answer: Staff one leader can supervise effectively
SPAN OF CONTROL is the NUMBER OF STAFF one manager or leader can effectively supervise. A narrow span (few staff per leader) allows closer supervision and support, which is often needed in ICU, where care is complex. A wide span (many staff per leader) suits routine, experienced teams.

❌ Why the other options are wrong:
• The number of ventilators in the unit — The number of ventilators is equipment, not span of control.
• The total budget of the ICU each year — The budget is a financial measure.
• The size of the ICU in number of beds — The number of beds is unit size, not span of control.

⭐ Key point: A related principle is unity of command: each staff member should report to one boss.$x$, null),
(165, $x$Decision-making in ICU management follows the steps:$x$, $x$Identify, gather data, weigh options, decide, evaluate$x$, $x$✅ Correct answer: Identify, gather data, weigh options, decide, evaluate
Good decision-making follows logical steps. 1) IDENTIFY the problem clearly. 2) GATHER information and data. 3) Generate and WEIGH the options (pros and cons). 4) DECIDE (choose the best option). 5) Implement it. 6) EVALUATE the outcome and learn from it.

❌ Why the other options are wrong:
• Decide first, and then look for the problem — Deciding before identifying the problem leads to poor decisions.
• Ask only the patient's relatives to decide — Relatives can contribute to patient care decisions, but they don't make ICU management decisions.
• Choose an option at random and hope — Random choice is not systematic decision-making.

⭐ Key point: The decision-making process is similar to the nursing process (assess, diagnose, plan, implement, evaluate).$x$, null),
(166, $x$Delegation of a task to a junior nurse requires:$x$, $x$Right task, person, communication and supervision$x$, $x$✅ Correct answer: Right task, person, communication and supervision
Delegation is giving a task to someone else while still being responsible for the outcome. Safe delegation follows the rights: the RIGHT TASK (suitable to delegate), the RIGHT PERSON (competent and allowed to do it), the RIGHT COMMUNICATION (clear instructions and expected results), the RIGHT SUPERVISION (checking and support), and the right circumstances.

❌ Why the other options are wrong:
• Complete transfer of all accountability — Accountability is NOT fully transferred; the person who delegates remains accountable for the decision to delegate.
• No explanation to the person delegated — Clear explanation is essential for safe delegation.
• Only the absence of the senior nurse — Delegation is not just about absence; it is planned and appropriate.

⭐ Key point: Never delegate tasks that need professional judgement (assessment, care planning, evaluation) to unqualified staff.$x$, null),
(167, $x$Staff motivation in ICU is improved by:$x$, $x$Recognition, training and involvement$x$, $x$✅ Correct answer: Recognition, training and involvement
Staff motivation is improved by RECOGNITION (praise, rewards for good work), TRAINING and development (learning new skills, career growth), and INVOLVEMENT in decisions (feeling valued and listened to). Motivated staff are more productive and give better patient care.

❌ Why the other options are wrong:
• Constant criticism of mistakes — Constant criticism lowers morale.
• Withholding unit information — Withholding information makes staff feel excluded.
• Unequal and unfair workloads — Unfair workloads cause resentment and burnout.

⭐ Key point: Herzberg's motivators: achievement, recognition, responsibility, the work itself, and growth.$x$, null),
(168, $x$Disciplinary action in an ICU should be:$x$, $x$Fair, documented and following due process$x$, $x$✅ Correct answer: Fair, documented and following due process
Disciplinary action must be FAIR, DOCUMENTED, and follow DUE PROCESS (proper procedure): hear the staff member's side, gather facts, give written warnings, and offer support and improvement plans. Progressive discipline starts with counselling, then verbal warning, written warning, suspension, and finally dismissal if needed.

❌ Why the other options are wrong:
• Immediate and in front of colleagues — Disciplining in front of colleagues humiliates the staff member and lowers morale.
• Without hearing the staff member — Not hearing the staff member is unfair and against natural justice.
• Based on rumours from other staff — Rumours are not evidence; decisions must be based on facts.

⭐ Key point: The aim of discipline is to correct behaviour and improve performance, not to punish.$x$, null),
(169, $x$Accounting and budgeting in ICU management help to:$x$, $x$Plan and control spending on staff, drugs and equipment$x$, $x$✅ Correct answer: Plan and control spending on staff, drugs and equipment
Accounting and budgeting help the ICU manager to PLAN how much will be spent on staff, drugs, equipment and supplies, and to CONTROL spending by comparing actual costs with the budget (variance analysis). This ensures resources are used efficiently and that money is available for priorities.

❌ Why the other options are wrong:
• Increase waste of disposable items in the unit — Budgeting REDUCES waste.
• Avoid planning so that money can be used freely — Budgeting IS planning; it doesn't avoid it.
• Hide the true costs from the hospital management — Budgeting makes costs transparent, not hidden.

⭐ Key point: Budget types: operating budget (day-to-day running costs), capital budget (large items like ventilators), and personnel budget (staff costs).$x$, null),
(170, $x$Job performance evaluation should be based on:$x$, $x$Clear standards and objective evidence$x$, $x$✅ Correct answer: Clear standards and objective evidence
Performance evaluation (appraisal) should be based on CLEAR STANDARDS (job description and agreed objectives) and OBJECTIVE EVIDENCE (observed practice, records, audit results, feedback). It should be fair, consistent, and include feedback and a development plan. Regular feedback during the year is better than a single annual review.

❌ Why the other options are wrong:
• Rumours and complaints from patients — Rumours and isolated complaints are not reliable evidence.
• The manager's personal likes and dislikes — Personal likes and dislikes make appraisal unfair and biased.
• The age and seniority of the staff — Age and seniority don't measure performance.

⭐ Key point: Good appraisal is a two-way discussion: review achievements, identify learning needs, and set SMART objectives for next year.$x$, null),
(171, $x$An ICU equipment inventory is used to:$x$, $x$Track equipment, maintenance and replacement$x$, $x$✅ Correct answer: Track equipment, maintenance and replacement
An equipment inventory is a list of all the unit's equipment (ventilators, monitors, pumps, defibrillators) with their serial numbers, location, maintenance and service history, and replacement dates. It helps the manager TRACK equipment, plan MAINTENANCE, and plan REPLACEMENT of old or broken items.

❌ Why the other options are wrong:
• Document drug errors and near misses — Drug errors are recorded on incident forms.
• Plan annual leave for the nursing staff — Annual leave is planned on the roster.
• Record patient diagnoses and outcomes — Patient diagnoses and outcomes are recorded in patient records.

⭐ Key point: Planned preventive maintenance by biomedical engineering keeps equipment safe. Never use equipment that is overdue for service.$x$, null),
(172, $x$Interdepartmental communication between ICU and laboratory improves:$x$, $x$Speed and accuracy of critical results$x$, $x$✅ Correct answer: Speed and accuracy of critical results
Good communication between the ICU and the laboratory speeds up the reporting of CRITICAL RESULTS (dangerously abnormal values such as K⁺ above 6.5, glucose below 3, or a positive blood culture). The lab phones critical results directly to the nurse or doctor, who READS BACK the result and DOCUMENTS it. This ensures fast, accurate action.

❌ Why the other options are wrong:
• The length of the family visiting hours — Visiting hours are not related to lab communication.
• The spread of rumours among the staff — Good communication reduces rumours, not spreads them.
• The quality of catering for the patients — Catering is unrelated.

⭐ Key point: Always read back critical results received by phone and inform the doctor immediately.$x$, null),
(173, $x$The role of an ICU link nurse for infection control is to:$x$, $x$Promote infection prevention and audit compliance$x$, $x$✅ Correct answer: Promote infection prevention and audit compliance
An infection control link nurse is a ward or ICU nurse with special interest and training in infection prevention. They PROMOTE good practice (hand hygiene, bundles, isolation), teach staff, AUDIT compliance, and LINK the unit with the hospital infection prevention and control team.

❌ Why the other options are wrong:
• Perform surgical drainage of infections — Link nurses don't do surgery.
• Replace the hospital infection control team — They support the infection control team; they don't replace it.
• Prescribe antibiotics for infected patients — They don't prescribe antibiotics; doctors do.

⭐ Key point: Regular audits of hand hygiene, line care and bundles, fed back to staff, improve compliance.$x$, null),
(174, $x$Clinical governance in ICU includes:$x$, $x$Audit, risk management, training, patient involvement$x$, $x$✅ Correct answer: Audit, risk management, training, patient involvement
Clinical governance is the system through which health services make sure they provide high-quality, safe care and stay accountable. It includes clinical AUDIT, RISK MANAGEMENT (incident reporting), staff TRAINING and education, PATIENT INVOLVEMENT, evidence-based practice, and clinical effectiveness.

❌ Why the other options are wrong:
• Only the recruitment of new staff — Recruitment is only one small part of management, not clinical governance.
• Only the financial management of the unit — Finance is not the focus of clinical governance.
• Only the maintenance of the buildings — Building maintenance is not clinical governance.

⭐ Key point: The pillars of clinical governance: audit, risk management, education and training, evidence-based practice, patient involvement, staff management, and openness.$x$, null),
(175, $x$An ICU admission request for a patient with no chance of recovery should prompt:$x$, $x$Senior discussion of goals of care and options$x$, $x$✅ Correct answer: Senior discussion of goals of care and options
ICU care is intensive, invasive and limited. If a patient has NO chance of recovery, admission may cause suffering without benefit. The request should prompt a SENIOR discussion (consultant intensivist with the referring team) about the GOALS OF CARE, the patient's wishes, and options, including palliative and comfort care on the ward.

❌ Why the other options are wrong:
• Refusal without any explanation to the team — Refusing without explanation is poor communication and may not be in the patient's best interest.
• Transfer to another hospital without notice — Transferring without notice is unsafe and unethical.
• Immediate admission without any discussion — Admitting without discussion may lead to futile treatment.

⭐ Key point: ICU admission decisions balance benefit, patient wishes and resources. Palliative care is active care, not "giving up".$x$, null),
(176, $x$Readmission to ICU within 48 hours of discharge is a marker of:$x$, $x$Possible premature discharge or poor ward care$x$, $x$✅ Correct answer: Possible premature discharge or poor ward care
Readmission to ICU within 48 hours of discharge suggests the patient may have been DISCHARGED TOO EARLY (still unstable) or the WARD could not meet their needs (staffing, skills, monitoring). It is used as a QUALITY INDICATOR for ICU discharge decisions and ward care.

❌ Why the other options are wrong:
• Good ward staffing and early review — It suggests problems, not good ward staffing.
• Low patient acuity across the hospital — It doesn't indicate low patient acuity.
• Excellent ICU care and good outcomes — It is a warning sign, not a sign of excellent care.

⭐ Key point: Reduce readmissions: discharge during the day (not at night), good handover to the ward, outreach team follow-up, and clear step-down plans.$x$, null),
(177, $x$Nursing workload in ICU can be measured with tools such as:$x$, $x$TISS or NAS (Nursing Activities Score)$x$, $x$✅ Correct answer: TISS or NAS (Nursing Activities Score)
Nursing workload tools measure how much nursing time and work patients need. TISS (Therapeutic Intervention Scoring System) scores the treatments and procedures a patient receives. NAS (Nursing Activities Score) measures nursing activities and time (100 points ≈ one nurse's full time). These help plan staffing.

❌ Why the other options are wrong:
• The Braden pressure ulcer scale — The Braden scale assesses pressure ulcer risk.
• The Bishop score for labour — The Bishop score assesses the cervix before induction of labour.
• The APGAR score at birth — The APGAR score assesses newborns at birth.

⭐ Key point: Workload tools help managers show the need for staff and plan safe staffing.$x$, null),
(178, $x$The best approach to new technology introduction in ICU is:$x$, $x$Training, protocols and evaluation before full use$x$, $x$✅ Correct answer: Training, protocols and evaluation before full use
New technology (a new ventilator, pump or monitoring system) should be introduced in a planned way: TRAIN all staff, write PROTOCOLS, check COMPETENCY, run a trial or pilot, then EVALUATE before full use. This reduces errors and harm.

❌ Why the other options are wrong:
• Letting one nurse decide how it is used — One nurse deciding alone leads to inconsistent and unsafe use.
• Keeping it locked away until it is needed — Locking it away means staff won't be familiar with it when it is needed.
• Immediate use without any staff training — Using it immediately without training is dangerous.

⭐ Key point: Keep training records and assess competency for all staff using new equipment.$x$, null),
(179, $x$A sentinel event in ICU is:$x$, $x$An unexpected event causing death or serious harm$x$, $x$✅ Correct answer: An unexpected event causing death or serious harm
A SENTINEL EVENT is an UNEXPECTED event that causes DEATH or SERIOUS harm (physical or psychological), not related to the natural course of the illness. Examples: wrong-site surgery, a fatal drug error, an infant abduction, a retained instrument. It requires immediate reporting and a ROOT CAUSE ANALYSIS (RCA) to find and fix system failures.

❌ Why the other options are wrong:
• A normal shift change with handover — Shift handover is normal routine.
• A routine planned admission from theatre — A planned admission from theatre is routine.
• A planned discharge to the ward in the day — A planned discharge is routine.

⭐ Key point: RCA asks "why?" repeatedly (5 whys, fishbone diagram), focuses on systems, not blame, and results in an action plan.$x$, null),
(180, $x$Visiting policies in ICU should balance:$x$, $x$Family needs, patient rest and infection control$x$, $x$✅ Correct answer: Family needs, patient rest and infection control
A good ICU visiting policy balances: the FAMILY'S needs (being near, information, supporting the patient), the PATIENT'S need for REST, privacy and safety, and INFECTION CONTROL (hand hygiene, limits when there are outbreaks). Flexible, family-centred visiting improves family satisfaction and may reduce delirium.

❌ Why the other options are wrong:
• Unlimited visitors at all hours of the day — Unlimited visitors at all hours can stop rest and increase infection risk.
• Staff convenience and nothing else — Staff convenience shouldn't be the only consideration.
• Strict exclusion of all visitors at all times — Strict exclusion increases family distress and patient isolation.

⭐ Key point: Flexible visiting can be adjusted for procedures, patient preference and outbreaks.$x$, null),
(181, $x$Martha Rogers' Science of Unitary Human Beings views the person as:$x$, $x$An energy field interacting with the environment$x$, $x$✅ Correct answer: An energy field interacting with the environment
Martha Rogers' Science of Unitary Human Beings sees each person as a unified ENERGY FIELD, constantly interacting with the ENVIRONMENTAL energy field. The person can't be divided into separate parts; nursing aims to promote harmony between the person and the environment (for example through therapeutic touch).

❌ Why the other options are wrong:
• A set of separate, independent organ systems — Separate organ systems is a medical (biomedical) view, the opposite of Rogers' holistic view.
• A passive recipient of nursing care — Rogers sees the person as an active energy field, not a passive recipient.
• A machine that needs to be repaired — A machine to repair is a mechanistic view, not Rogers'.

⭐ Key point: Rogers' principles (homeodynamics): resonancy, helicy and integrality.$x$, null),
(182, $x$Gordon's functional health patterns are used mainly for:$x$, $x$Organising assessment into 11 patterns$x$, $x$✅ Correct answer: Organising assessment into 11 patterns
Marjory Gordon's 11 functional health patterns help nurses ORGANISE ASSESSMENT holistically. The patterns: health perception and management, nutrition and metabolism, elimination, activity and exercise, sleep and rest, cognition and perception, self-perception and self-concept, roles and relationships, sexuality and reproduction, coping and stress tolerance, and values and beliefs.

❌ Why the other options are wrong:
• Planning the ICU's annual budget — Budgets aren't related to Gordon's patterns.
• Classifying surgical wounds — Wound classification uses other systems.
• Calculating drug doses in children — Drug calculations aren't part of assessment frameworks.

⭐ Key point: Gordon's patterns are often used in admission forms and link well with NANDA-I nursing diagnoses.$x$, null),
(183, $x$Betty Neuman's systems model focuses on:$x$, $x$Responses to stressors and lines of defence$x$, $x$✅ Correct answer: Responses to stressors and lines of defence
Betty Neuman's Systems Model sees the person (client system) as being affected by STRESSORS (intra-, inter- and extrapersonal). The person has protective LINES OF DEFENCE (the flexible line, the normal line, and lines of resistance). Nursing aims to help the system stay stable through PREVENTION: primary (before stress breaks through), secondary (treating symptoms), and tertiary (rehabilitation).

❌ Why the other options are wrong:
• Self-care deficits and nursing systems — Self-care deficits are Orem's theory.
• Environmental cleanliness and fresh air only — Environmental cleanliness and fresh air are Nightingale's theory.
• Interpersonal phases of the relationship — Interpersonal phases are Peplau's theory.

⭐ Key point: Neuman's three levels of prevention fit public health and ICU care well.$x$, null),
(184, $x$Quality assurance in ICU uses Donabedian's framework of:$x$, $x$Structure, process and outcome$x$, $x$✅ Correct answer: Structure, process and outcome
Avedis Donabedian's model judges quality in three parts. STRUCTURE: the resources (staff, equipment, buildings, policies). PROCESS: what is done (how care is given, such as hand hygiene compliance, bundle use). OUTCOME: the results (VAP rate, mortality, patient satisfaction). Good structure supports good process, which leads to good outcomes.

❌ Why the other options are wrong:
• Planning, organising and controlling — Planning, organising and controlling are management functions.
• Input, output and feedback only — Input, output and feedback describe a general systems model.
• Assessment, diagnosis and planning — Assessment, diagnosis and planning are steps of the nursing process.

⭐ Key point: Example in ICU: Structure = enough trained nurses; Process = the VAP bundle is followed; Outcome = low VAP rate.$x$, null),
(185, $x$Critical thinking in the ICU nurse is shown by:$x$, $x$Noticing subtle changes, questioning and acting$x$, $x$✅ Correct answer: Noticing subtle changes, questioning and acting
Critical thinking means actively analysing information to make sound decisions. In ICU, it is shown when a nurse NOTICES subtle changes (a slowly rising heart rate, slightly lower urine output), QUESTIONS what they mean ("Is this early sepsis?"), and ACTS appropriately (escalates, assesses further). It underpins clinical judgement and patient safety.

❌ Why the other options are wrong:
• Following routine without any question — Following routine without question is the opposite of critical thinking.
• Recording observations without analysis — Recording without analysis misses the meaning of changes.
• Waiting for doctors to notice any change — Waiting for doctors delays care; nurses should notice and escalate.

⭐ Key point: Critical thinking skills: assessing, analysing, questioning, interpreting, evaluating and reflecting.$x$, null),
(186, $x$Reflective practice using Gibbs' cycle includes:$x$, $x$Description, feelings, evaluation, analysis, conclusion, action$x$, $x$✅ Correct answer: Description, feelings, evaluation, analysis, conclusion, action
Gibbs' reflective cycle (1988) has six stages. DESCRIPTION (what happened?), FEELINGS (what were you thinking and feeling?), EVALUATION (what was good and bad?), ANALYSIS (what sense can you make of it?), CONCLUSION (what else could you have done?), ACTION PLAN (what will you do next time?). It helps nurses learn from experience.

❌ Why the other options are wrong:
• Assess, diagnose, plan, implement and evaluate care — Assess, diagnose, plan, implement and evaluate is the nursing process.
• Input, process, output and feedback as a system — Input, process, output and feedback is a systems model.
• Plan, do, study and act, repeated as a quality cycle — Plan, do, study, act is the PDSA quality improvement cycle.

⭐ Key point: Reflection is required for CPD and helps turn experience into learning.$x$, null),
(187, $x$A health talk to a group of ICU relatives should start with:$x$, $x$Assessing their learning needs$x$, $x$✅ Correct answer: Assessing their learning needs
Before teaching, ASSESS the LEARNING NEEDS of the group: what they already know, what they want to know, their concerns, language and literacy level. Teaching is then planned around their needs. This makes the session relevant and effective, and respects adult learners.

❌ Why the other options are wrong:
• A long lecture using jargon — A long lecture with jargon won't be understood by most relatives.
• Handing out leaflets only — Leaflets alone don't address individual needs or questions.
• Testing their knowledge first — Testing first can feel intimidating; assessing needs is more appropriate.

⭐ Key point: Teaching steps: assess needs, plan objectives, implement (simple language, visual aids), and evaluate (ask them to explain back).$x$, null),
(188, $x$The 'politics of health care' affects ICU nursing through:$x$, $x$Funding, staffing decisions and policy$x$, $x$✅ Correct answer: Funding, staffing decisions and policy
Health care politics affects ICU nursing through government and hospital decisions on FUNDING (money for ICU beds and equipment), STAFFING (number of nurses employed, salaries), and POLICY (laws, guidelines, health insurance). Nurse leaders need to advocate for adequate resources for safe critical care.

❌ Why the other options are wrong:
• Nurses' personal voting choices — Personal voting is a private matter, not how politics affects nursing practice.
• Individual patient diagnoses — Individual diagnoses are clinical, not political.
• The pharmacology of ICU drugs — Drug pharmacology is science, not politics.

⭐ Key point: Nurses can influence health policy through professional bodies (NANNM, NMCN), research, and leadership.$x$, null),
(189, $x$Subjective Global Assessment grade C means the patient is:$x$, $x$Severely malnourished$x$, $x$✅ Correct answer: Severely malnourished
Subjective Global Assessment (SGA) grades nutritional status as A, B or C, using history (weight loss, food intake, gut symptoms, function) and examination (loss of fat and muscle, oedema). Grade A = well nourished. Grade B = mildly to moderately malnourished. Grade C = SEVERELY malnourished.

❌ Why the other options are wrong:
• Obese — SGA doesn't grade obesity.
• Well nourished — Well nourished is grade A.
• Mildly malnourished — Mild malnutrition is grade B.

⭐ Key point: Severely malnourished patients (SGA C) are at high risk of complications and refeeding syndrome. Start nutrition support early but carefully.$x$, null),
(190, $x$Nutrition in acute kidney injury without dialysis aims for:$x$, $x$Enough calories, moderate protein, electrolyte control$x$, $x$✅ Correct answer: Enough calories, moderate protein, electrolyte control
In acute kidney injury without dialysis, nutrition aims to provide ENOUGH CALORIES (25–30 kcal/kg/day) to prevent muscle breakdown, MODERATE protein (0.8–1.0 g/kg/day) to limit urea build-up, and careful control of ELECTROLYTES (potassium, phosphate, sodium) and fluid. If dialysis starts, protein needs rise (1.0–1.5 g/kg/day or more), because dialysis removes amino acids.

❌ Why the other options are wrong:
• Fasting until the kidney function improves — Fasting causes muscle breakdown and worsens outcomes.
• No protein at all until the kidneys recover — No protein at all causes muscle wasting and poor healing.
• Unlimited potassium in the feeds — Unlimited potassium is dangerous in AKI (hyperkalaemia).

⭐ Key point: Critically ill patients should not have protein restricted just to delay dialysis.$x$, null),
(191, $x$Feeding a diabetic ICU patient enterally requires:$x$, $x$Glucose checks and insulin matched to the feed$x$, $x$✅ Correct answer: Glucose checks and insulin matched to the feed
Enteral feeds contain carbohydrates that raise blood glucose. In a diabetic ICU patient, check GLUCOSE regularly (every 1–4 hours) and match INSULIN to the feed (insulin infusion, or regular insulin while feeds run). If feeds stop suddenly (vomiting, tube blocked, procedure), insulin must be reduced or stopped, or hypoglycaemia can occur.

❌ Why the other options are wrong:
• Adding sugar to the feeds to prevent lows — Adding sugar to feeds will cause high glucose.
• No glucose checks while on enteral feeds — Glucose checks are essential in diabetics on feeds.
• Stopping all feeds to control the glucose — Stopping all feeds causes malnutrition; glucose should be managed with insulin.

⭐ Key point: ICU glucose target is usually 6–10 mmol/L. Avoid both high and low glucose.$x$, null),
(192, $x$Respiratory muscle training is mainly indicated in:$x$, $x$Weak inspiratory muscles and difficult weaning$x$, $x$✅ Correct answer: Weak inspiratory muscles and difficult weaning
Respiratory muscle training (inspiratory muscle training) uses a device that adds resistance when the patient breathes in, like weight training for the diaphragm. It strengthens WEAK INSPIRATORY MUSCLES and helps patients who are DIFFICULT TO WEAN from the ventilator, for example after long ventilation or with neuromuscular weakness.

❌ Why the other options are wrong:
• An active, undrained pneumothorax — An undrained pneumothorax is a contraindication to respiratory training and positive pressure.
• Unconscious patients only — Unconscious patients can't cooperate with training.
• Patients with normal lungs and strength — Patients with normal strength don't need it.

⭐ Key point: Other weaning aids: early mobilisation, good nutrition, correcting low phosphate and magnesium, and minimising sedation.$x$, null),
(193, $x$Postural drainage uses gravity to:$x$, $x$Drain secretions from specific lung segments$x$, $x$✅ Correct answer: Drain secretions from specific lung segments
Postural drainage uses GRAVITY: the patient is placed in positions that put a specific lung segment ABOVE the main airway, so secretions drain downward into the bigger airways, where they can be coughed up or suctioned. Different positions drain different lung segments. It is often combined with percussion and vibration.

❌ Why the other options are wrong:
• Improve the patient's appetite and feeding — It doesn't improve appetite.
• Increase the blood pressure in hypotension — It doesn't treat hypotension.
• Reduce the intracranial pressure after injury — Head-down positions RAISE ICP, so they are avoided in raised ICP.

⭐ Key point: Avoid head-down positions in raised ICP, recent eye or brain surgery, heart failure, and after meals or feeds.$x$, null),
(194, $x$TENS (transcutaneous electrical nerve stimulation) should not be placed:$x$, $x$Over a pacemaker or the front of the neck$x$, $x$✅ Correct answer: Over a pacemaker or the front of the neck
TENS sends electrical pulses through the skin. It should NOT be placed OVER A PACEMAKER (it can interfere with how the pacemaker senses and fires), or over the FRONT OF THE NECK (it can stimulate the carotid sinus, causing a drop in BP and heart rate, or cause laryngeal spasm). Other places to avoid: the eyes, broken skin, the pregnant abdomen (except approved labour TENS), and over tumours.

❌ Why the other options are wrong:
• On the lower back over the muscles — The lower back is a common, safe site for TENS.
• On the legs over the thigh muscles — The thigh muscles are a safe site.
• On the arms over the forearm muscles — The forearm muscles are a safe site.

⭐ Key point: Patients with pacemakers or implanted defibrillators should generally avoid TENS unless a cardiologist approves it.$x$, null),
(195, $x$Sterilisation by steam (autoclave) at 134 °C usually takes:$x$, $x$3 minutes holding time$x$, $x$✅ Correct answer: 3 minutes holding time
Steam autoclaves kill all microorganisms, including spores. The higher the temperature, the shorter the time needed. At 134 °C (high pressure), the holding time is about 3 MINUTES. At 121 °C, it is about 15 MINUTES. These times count only from when the load reaches the full temperature.

❌ Why the other options are wrong:
• 24 hours holding time — 24 hours is far too long.
• 30 seconds holding time — 30 seconds is too short to kill spores.
• 1 hour holding time — 1 hour is longer than needed at 134 °C.

⭐ Key point: Clean items first. Use chemical and biological indicators to check the process.$x$, null),
(196, $x$Chemical indicators (indicator tape) on packs show that:$x$, $x$The pack was exposed to the sterilising process$x$, $x$✅ Correct answer: The pack was exposed to the sterilising process
Indicator tape (chemical indicator) changes colour when exposed to the sterilisation conditions (such as heat and steam). It only shows that the pack WENT THROUGH the sterilisation process. It doesn't prove the contents are sterile, because the inside may not have reached the right temperature for long enough.

❌ Why the other options are wrong:
• The pack is new and has not been opened — The tape doesn't show whether the pack is new or unopened.
• The contents are definitely sterile inside — The tape doesn't prove sterility inside the pack.
• The pack is free of all bacterial spores — Only a BIOLOGICAL indicator (spore test) proves spores are killed.

⭐ Key point: Check packs before use: tape changed colour, pack intact and dry, within the expiry date.$x$, null),
(197, $x$High-level disinfection kills:$x$, $x$All organisms except large numbers of spores$x$, $x$✅ Correct answer: All organisms except large numbers of spores
High-level disinfection (HLD) kills ALL bacteria, viruses and fungi, but NOT large numbers of bacterial SPORES. It is used for SEMI-CRITICAL items, which touch mucous membranes but don't enter sterile tissue: laryngoscope blades, endoscopes, respiratory equipment. Agents include glutaraldehyde 2%, peracetic acid and ortho-phthalaldehyde.

❌ Why the other options are wrong:
• Only bacteria, not viruses or fungi — HLD kills more than just bacteria; it also kills viruses and fungi.
• All spores in every case, like sterilisation — HLD doesn't reliably kill all spores; that is sterilisation.
• Only viruses, not bacteria or fungi — HLD kills more than just viruses.

⭐ Key point: Critical items (entering sterile tissue) need sterilisation. Semi-critical items need high-level disinfection. Non-critical items (intact skin) need low-level disinfection or cleaning.$x$, null),
(198, $x$Hospital-acquired infection is defined as an infection appearing:$x$, $x$48 hours or more after admission, not incubating$x$, $x$✅ Correct answer: 48 hours or more after admission, not incubating
A hospital-acquired (nosocomial) infection is one that appears 48 HOURS OR MORE after admission and was NOT present or incubating on admission. It is caused by germs picked up in hospital (from staff hands, equipment, devices or the environment). ICU patients have the highest risk, because of invasive devices, weak immunity and antibiotics.

❌ Why the other options are wrong:
• Only after the patient has been discharged — HAIs can appear during the hospital stay; they don't only show after discharge (though some surgical site infections do).
• Only in surgical patients after an operation — HAIs occur in all patients, not only surgical ones.
• Within 6 hours of admission to the hospital — An infection within 6 hours of admission was almost certainly acquired before admission.

⭐ Key point: Common ICU HAIs: VAP, CLABSI (central line bloodstream infection), CAUTI (catheter urinary infection), and surgical site infection.$x$, null),
(199, $x$The leading hospital-acquired infection in ventilated ICU patients is:$x$, $x$Ventilator-associated pneumonia$x$, $x$✅ Correct answer: Ventilator-associated pneumonia
Ventilator-associated pneumonia (VAP) is the most common hospital-acquired infection in mechanically ventilated ICU patients. It is pneumonia that develops 48 hours or more after intubation. The ETT bypasses the body's defences, allowing germs from the mouth and stomach to enter the lungs. VAP increases ventilation time, ICU stay, cost and deaths.

❌ Why the other options are wrong:
• Conjunctivitis — Conjunctivitis can occur but is far less common and less serious.
• Skin infection — Skin infections can occur but are less common.
• Urinary tract infection only — UTI is common in catheterised patients, but VAP is the leading infection in ventilated patients.

⭐ Key point: Prevent VAP with the bundle: head up 30–45°, daily sedation hold, oral care, subglottic suction, cuff pressure 20–30 cmH₂O, hand hygiene.$x$, null),
(200, $x$A sickle cell disease patient's haemoglobin genotype is:$x$, $x$HbSS$x$, $x$✅ Correct answer: HbSS
Haemoglobin genotype shows which haemoglobin genes a person has. Sickle cell DISEASE (sickle cell anaemia) is HbSS: two sickle genes, one from each parent. The red cells contain mainly HbS, which sickles when short of oxygen, causing crises, anaemia and organ damage.

❌ Why the other options are wrong:
• HbAS — HbAS is sickle cell TRAIT (a carrier): one normal and one sickle gene, usually without symptoms.
• HbAC — HbAC is a carrier of haemoglobin C; it is not sickle cell disease.
• HbAA — HbAA is normal haemoglobin.

⭐ Key point: If both parents are AS, each child has a 25% chance of SS, 50% chance of AS and 25% chance of AA. Genotype testing before marriage helps prevent sickle cell disease.$x$, null)
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
insert into rationale_report select 11, count(distinct n), count(*) from upd
  on conflict (day) do update set questions_updated = excluded.questions_updated, rows_changed = excluded.rows_changed;

-- ===================== DAY 12 =====================
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
insert into rationale_report select 12, count(distinct n), count(*) from upd
  on conflict (day) do update set questions_updated = excluded.questions_updated, rows_changed = excluded.rows_changed;

-- ===================== DAY 13 =====================
-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 13 (200 questions)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).
--   Q112: correct answer changed to: 28%
--   Q151: correct answer changed to: Thrombocytopenia and elevated bleeding time


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$The maintenance infusion rate of magnesium sulphate after the loading dose is:$x$, $x$1–2g/hour$x$, $x$✅ Correct answer: 1–2g/hour
In severe pre-eclampsia and eclampsia, magnesium sulphate is given as a loading dose (4 g IV over 5–15 minutes) and then a MAINTENANCE infusion of 1–2 g per HOUR (usually 1 g/hour) for 24 hours after delivery or the last fit. This keeps the blood magnesium in the therapeutic range (2–4 mmol/L) to prevent further seizures.

❌ Why the other options are wrong:
• 0.1g/hour — 0.1 g/hour is far too little to keep a therapeutic level.
• 10g/hour — 10 g/hour would cause dangerous toxicity (respiratory arrest).
• No maintenance is needed — Maintenance IS needed; magnesium falls quickly after the loading dose.

⭐ Key point: Monitor hourly on magnesium: knee reflexes, respiratory rate above 12, urine output above 30 mL/hour, and SpO₂. Antidote: calcium gluconate 10%, 10 mL IV.$x$, null),
(2, $x$Which spinal nerves give rise to the cervical plexus?$x$, $x$C1–C4$x$, $x$✅ Correct answer: C1–C4
The cervical plexus is a network of nerves formed by the front branches (anterior rami) of spinal nerves C1–C4. It supplies the skin and muscles of the neck and gives off the PHRENIC nerve (C3, C4, C5), which controls the diaphragm.

❌ Why the other options are wrong:
• T1–T12 — T1–T12 are the thoracic nerves (intercostal nerves).
• C3–T3 — C3–T3 isn't a recognised plexus.
• C5–T1 — C5–T1 form the BRACHIAL plexus, which supplies the arm.

⭐ Key point: "C3, 4, 5 keeps the diaphragm alive": spinal injuries at or above C3–C5 can stop breathing.$x$, null),
(3, $x$Which of these is a granulocyte?$x$, $x$An eosinophil$x$, $x$✅ Correct answer: An eosinophil
Granulocytes are white cells with granules in their cytoplasm: NEUTROPHILS, EOSINOPHILS and BASOPHILS. An eosinophil is therefore a granulocyte. Eosinophils fight parasites and are involved in allergic reactions.

❌ Why the other options are wrong:
• An erythrocyte — An erythrocyte is a red blood cell, not a white cell.
• A macrophage — A macrophage comes from monocytes (agranulocytes).
• A lymphocyte — A lymphocyte is an agranulocyte.

⭐ Key point: Granulocytes = neutrophils, eosinophils, basophils. Agranulocytes = lymphocytes and monocytes.$x$, null),
(4, $x$Tall-tented T waves and widened QRS are seen in:$x$, $x$Hyperkalemia$x$, $x$✅ Correct answer: Hyperkalemia
High potassium (hyperkalaemia) changes the heart's electrical recovery. As potassium rises, the ECG shows TALL, peaked (tented) T WAVES first, then flattened or lost P waves, a long PR interval, and WIDENING of the QRS. Very high levels give a sine-wave pattern, then VF or asystole.

❌ Why the other options are wrong:
• Hyperglycemia — Hyperglycaemia doesn't cause these ECG changes.
• Hyperphosphatemia — Hyperphosphataemia doesn't cause these changes directly.
• Hyponatremia — Hyponatraemia doesn't cause tall T waves.

⭐ Key point: Treat hyperkalaemia with ECG changes as an emergency: calcium gluconate first, then insulin with glucose.$x$, null),
(5, $x$Which muscle aids deep (forced) expiration?$x$, $x$Rectus abdominis$x$, $x$✅ Correct answer: Rectus abdominis
Normal breathing out is passive (the lungs recoil). DEEP or FORCED expiration (coughing, exercise, asthma) uses the ABDOMINAL muscles, such as the RECTUS ABDOMINIS, plus the internal intercostals. They push the abdominal contents up against the diaphragm and pull the ribs down, forcing air out.

❌ Why the other options are wrong:
• Scalenes — The scalenes help INSPIRATION (they lift the upper ribs).
• Sternocleidomastoid — The sternocleidomastoid helps INSPIRATION (an accessory muscle).
• External intercostals — The external intercostals help INSPIRATION.

⭐ Key point: Patients with abdominal surgery or weakness can't cough well, so they need help clearing secretions (pain relief, supported coughing, physiotherapy).$x$, null),
(6, $x$A patient with hypokalemia has U waves on ECG. Which drug increases the risk of this finding?$x$, $x$Furosemide$x$, $x$✅ Correct answer: Furosemide
Furosemide is a loop diuretic. It blocks the Na-K-2Cl pump in the loop of Henle, so more sodium reaches the collecting duct, where it is swapped for POTASSIUM, which is lost in the urine. This causes HYPOKALAEMIA, and low potassium shows U waves on the ECG.

❌ Why the other options are wrong:
• Metoprolol — Metoprolol (a beta-blocker) can slightly RAISE potassium.
• Spironolactone — Spironolactone is a potassium-SPARING diuretic and raises potassium.
• Amlodipine — Amlodipine (a calcium channel blocker) doesn't affect potassium significantly.

⭐ Key point: Monitor potassium in patients on loop or thiazide diuretics, and replace it as needed.$x$, null),
(7, $x$Which electrolyte abnormality pattern is classically associated with primary adrenal insufficiency due to combined cortisol and aldosterone deficiency?$x$, $x$Hyponatremia and hyperkalemia$x$, $x$✅ Correct answer: Hyponatremia and hyperkalemia
In primary adrenal insufficiency (Addison's disease), the adrenal cortex fails, so both cortisol AND ALDOSTERONE are lacking. Without aldosterone, the kidneys lose SODIUM (hyponatraemia) and keep POTASSIUM (hyperkalaemia). Low cortisol also causes low glucose and low BP.

❌ Why the other options are wrong:
• Hypernatremia and hypokalemia — High sodium with low potassium is the pattern of TOO MUCH aldosterone (Conn's syndrome).
• Normal sodium with hyperkalemia only — Normal sodium with high potassium alone is incomplete.
• Hyponatremia and hypokalemia — Low sodium with low potassium suggests diuretics or vomiting, not Addison's.

⭐ Key point: Adrenal crisis: give IV hydrocortisone 100 mg and IV saline immediately.$x$, null),
(8, $x$A patient with end-stage renal disease has a serum K⁺ of 6.8 mEq/L and ECG shows widened QRS complexes. Which intervention is MOST urgent?$x$, $x$Give calcium gluconate 10% IV$x$, $x$✅ Correct answer: Give calcium gluconate 10% IV
K⁺ 6.8 with a WIDENED QRS shows the heart is in danger of a fatal arrhythmia. The MOST urgent step is IV CALCIUM GLUCONATE 10% (30 mL), which stabilises the heart muscle membrane within minutes. It doesn't lower potassium, but it buys time for the other treatments.

❌ Why the other options are wrong:
• Administer sodium polystyrene sulfonate orally — Oral binders (sodium polystyrene) work over hours to days.
• Initiate hemodialysis — Haemodialysis is the definitive treatment but takes time to arrange; calcium comes first.
• Infuse 10 units of regular insulin IV with 50% dextrose — Insulin with dextrose (shifting K⁺ into cells) is the next step after calcium.

⭐ Key point: Order: protect the heart (calcium), shift K⁺ into cells (insulin and glucose, salbutamol), remove K⁺ (dialysis, binders, diuretics).$x$, null),
(9, $x$A patient with chronic kidney disease commonly develops which acid-base abnormality due to reduced renal excretion of hydrogen ions and reduced bicarbonate regeneration?$x$, $x$Metabolic acidosis$x$, $x$✅ Correct answer: Metabolic acidosis
Healthy kidneys remove the daily acid load (hydrogen ions) and make new bicarbonate. In chronic kidney disease, these functions fail, so acid builds up and bicarbonate falls: METABOLIC ACIDOSIS. Phosphate and other acids also accumulate.

❌ Why the other options are wrong:
• Respiratory acidosis — Respiratory acidosis is caused by lung problems (CO₂ retention).
• Respiratory alkalosis — Respiratory alkalosis is caused by over-breathing.
• Metabolic alkalosis — Metabolic alkalosis is caused by vomiting or diuretics, not CKD.

⭐ Key point: Metabolic acidosis in CKD is treated with oral sodium bicarbonate, and with dialysis if severe.$x$, null),
(10, $x$A patient with hypochloremia (Cl⁻ 88 mEq/L) and metabolic alkalosis should receive:$x$, $x$0.45% saline IV$x$, $x$✅ Correct answer: 0.45% saline IV
Vomiting or NG drainage causes loss of hydrochloric acid, leading to low chloride (hypochloraemia) and metabolic alkalosis. This "chloride-responsive" alkalosis is corrected by giving CHLORIDE, usually as IV SALINE (sodium chloride). The kidneys can then excrete the extra bicarbonate. The answer key lists 0.45% saline; isotonic 0.9% saline is the usual choice, and both supply chloride.

❌ Why the other options are wrong:
• Acetazolamide — Acetazolamide makes the kidneys lose bicarbonate and is used only in special cases (such as fluid-overloaded patients).
• Potassium supplements — Potassium supplements help (low K⁺ often coexists), but chloride replacement is the key.
• Ammonium chloride — Ammonium chloride is an acidifying agent used very rarely for severe alkalosis.

⭐ Key point: Replace potassium as well, because hypokalaemia keeps the alkalosis going.$x$, null),
(11, $x$In a patient with hypophosphatemia (PO₄²⁻ 1.0 mg/dL), which complication should the nurse anticipate?$x$, $x$Muscle weakness and respiratory failure$x$, $x$✅ Correct answer: Muscle weakness and respiratory failure
Phosphate is needed to make ATP, the energy for every cell. Severe HYPOPHOSPHATAEMIA (very low phosphate) leaves muscles without energy, causing MUSCLE WEAKNESS, including the diaphragm, which leads to RESPIRATORY FAILURE and failure to wean. It can also cause heart failure, confusion, seizures and red cell breakdown.

❌ Why the other options are wrong:
• Tetany and positive Trousseau’s sign — Tetany and Trousseau's sign are signs of LOW CALCIUM.
• Polyuria and polydipsia — Polyuria and polydipsia suggest high glucose or high calcium.
• Hypertension and edema — Hypertension and oedema are not typical of low phosphate.

⭐ Key point: Low phosphate is common in refeeding syndrome, DKA treatment, alcoholism and CRRT. Check and replace it.$x$, null),
(12, $x$A patient with SIADH has serum Na⁺ 120 mEq/L and urine osmolality 600 mOsm/kg. Which intervention is indicated?$x$, $x$Fluid restriction to 800 mL/day$x$, $x$✅ Correct answer: Fluid restriction to 800 mL/day
In SIADH, too much ADH makes the body keep water, diluting the sodium (Na⁺ 120) while the urine is CONCENTRATED (600 mOsm/kg). The first-line treatment is FLUID RESTRICTION (for example 800 mL/day), so the body loses more water than it takes in and the sodium slowly rises.

❌ Why the other options are wrong:
• Free water bolus IV — A free water bolus would make the low sodium WORSE.
• Start 0.9% saline at 150 mL/hr — 0.9% saline can worsen hyponatraemia in SIADH, because the salt is excreted and the water kept.
• Administer desmopressin — Desmopressin acts like ADH and would worsen the problem.

⭐ Key point: For severe symptoms (seizures, coma), give 3% hypertonic saline. Correct no faster than 8–10 mmol/L in 24 hours.$x$, null),
(13, $x$Cranial nerves originate directly from the:$x$, $x$Brain and brainstem$x$, $x$✅ Correct answer: Brain and brainstem
The 12 pairs of CRANIAL NERVES come directly from the BRAIN and BRAINSTEM (the olfactory and optic nerves from the forebrain; the others from the midbrain, pons and medulla). They control the senses, eye movements, face, swallowing, and the vagus supplies the heart, lungs and gut.

❌ Why the other options are wrong:
• Peripheral muscles — Nerves don't originate in muscles.
• Autonomic ganglia only — Autonomic ganglia are relay stations, not the origin of cranial nerves.
• Spinal cord only — Spinal nerves (31 pairs) come from the spinal cord.

⭐ Key point: Cranial nerve checks in ICU include pupils (CN III), the corneal reflex (V and VII), and the gag and cough reflexes (IX and X).$x$, null),
(14, $x$Which electrolyte would the nurse identify as the major electrolyte responsible for determining the concentration of the extracellular fluid?$x$, $x$Sodium$x$, $x$✅ Correct answer: Sodium
SODIUM is the main positively charged ion (cation) outside the cells, in the extracellular fluid. It determines the ECF's concentration (osmolality) and controls where water goes. Serum osmolality is roughly 2 × Na⁺ + glucose + urea.

❌ Why the other options are wrong:
• Bicarbonate — Bicarbonate is a buffer, not the main determinant.
• Chloride — Chloride is the main negative ion outside cells but follows sodium.
• Phosphate — Phosphate is mainly inside the cells.

⭐ Key point: Potassium is the main cation INSIDE the cells.$x$, null),
(15, $x$Immediate hemostatic responds to the damage vessel is$x$, $x$Vasoconstriction$x$, $x$✅ Correct answer: Vasoconstriction
When a blood vessel is damaged, the FIRST and IMMEDIATE response is VASOCONSTRICTION: the vessel wall muscle contracts, narrowing the vessel and reducing blood loss within seconds. Next, platelets stick to the damaged wall (adhesion), clump together (aggregation) to form a plug, and then the clotting cascade forms fibrin.

❌ Why the other options are wrong:
• Platelet aggregation — Platelet aggregation comes after adhesion.
• Platelet viscous metamorphosis — "Viscous metamorphosis" is an old term for platelets changing shape and fusing, which comes after adhesion.
• Platelet adhesion — Platelet adhesion comes after vasoconstriction.

⭐ Key point: Haemostasis steps: 1) vasoconstriction, 2) platelet plug, 3) coagulation (fibrin clot), 4) clot breakdown (fibrinolysis).$x$, null),
(16, $x$Aldosterone is secreted from which zone of the adrenal cortex?$x$, $x$Zona glomerulosa$x$, $x$✅ Correct answer: Zona glomerulosa
The adrenal cortex has three layers. The outermost layer, the ZONA GLOMERULOSA, makes mineralocorticoids such as ALDOSTERONE (which keeps sodium and water and excretes potassium). Remember "GFR" from outside in: Glomerulosa = salt (aldosterone), Fasciculata = sugar (cortisol), Reticularis = sex hormones (androgens).

❌ Why the other options are wrong:
• Zona reticularis — The zona reticularis makes androgens.
• Adrenal medulla — The adrenal medulla makes adrenaline and noradrenaline.
• Zona fasciculata — The zona fasciculata makes cortisol.

⭐ Key point: Aldosterone is controlled mainly by the renin-angiotensin system and by potassium levels.$x$, null),
(17, $x$An ICU patient has pH 7.30, PaCO₂ 30 mmHg, HCO₃⁻ 14 mmol/L, Na⁺ 140 and Cl⁻ 104 mmol/L. The best interpretation is:$x$, $x$High anion gap metabolic acidosis with respiratory compensation$x$, $x$✅ Correct answer: High anion gap metabolic acidosis with respiratory compensation
Step 1: pH 7.30 shows ACIDOSIS. Step 2: HCO₃⁻ 14 is low, so it is METABOLIC. Step 3: PaCO₂ 30 is low, which is respiratory compensation. Step 4: anion gap = Na⁺ − (Cl⁻ + HCO₃⁻) = 140 − (104 + 14) = 22. Normal is about 8–12, so this is a HIGH anion gap metabolic acidosis (such as lactic acidosis or DKA).

❌ Why the other options are wrong:
• Primary respiratory alkalosis with renal compensation — Respiratory alkalosis would have a high pH.
• Normal anion gap metabolic acidosis with respiratory compensation — The anion gap is high (22), not normal.
• Mixed respiratory acidosis and metabolic alkalosis — Mixed respiratory acidosis and metabolic alkalosis would show a high PaCO₂ and high HCO₃⁻.

⭐ Key point: High anion gap causes: MUDPILES (Methanol, Uraemia, DKA, Paraldehyde, Iron/Isoniazid, Lactic acid, Ethylene glycol, Salicylates).$x$, null),
(18, $x$A septic patient has HCO₃⁻ 12 mmol/L and PaCO₂ 40 mmHg. Using Winter's formula, the nurse recognises:$x$, $x$A coexisting respiratory acidosis (the patient is tiring)$x$, $x$✅ Correct answer: A coexisting respiratory acidosis (the patient is tiring)
Winter's formula predicts the expected PaCO₂ in metabolic acidosis: 1.5 × HCO₃⁻ + 8 (±2). Here: 1.5 × 12 + 8 = 26 (24–28 mmHg). The actual PaCO₂ is 40, much HIGHER than expected. The lungs aren't compensating, so there is ALSO a RESPIRATORY ACIDOSIS. The patient is tiring and may need ventilation.

❌ Why the other options are wrong:
• A coexisting respiratory alkalosis (hyperventilation) — A coexisting respiratory alkalosis would give a PaCO₂ LOWER than expected.
• Fully appropriate compensation for the acidosis — Compensation is NOT appropriate (40 is far above 26).
• A pure metabolic alkalosis with no acidosis — There is clearly an acidosis (HCO₃⁻ 12).

⭐ Key point: A septic patient with metabolic acidosis and a "normal" PaCO₂ is in danger. They are tiring, so prepare for respiratory support.$x$, null),
(19, $x$A patient's anion gap has risen by 12 but HCO₃⁻ has fallen by only 6 (delta ratio about 2). This suggests:$x$, $x$A coexisting metabolic alkalosis$x$, $x$✅ Correct answer: A coexisting metabolic alkalosis
The delta ratio compares how much the anion gap has RISEN with how much the bicarbonate has FALLEN. In a pure high anion gap acidosis, they change by about the same amount (ratio 1–2). Here the gap rose by 12 but HCO₃⁻ fell only 6 (ratio 2). The bicarbonate is HIGHER than expected, meaning something is ADDING bicarbonate: a coexisting METABOLIC ALKALOSIS (such as from vomiting).

❌ Why the other options are wrong:
• Pure respiratory acidosis — Pure respiratory acidosis doesn't explain an anion gap change.
• A coexisting normal-gap acidosis — A coexisting normal-gap acidosis would make HCO₃⁻ fall MORE (ratio below 1).
• A laboratory error in sodium — A lab error in sodium is possible but not the interpretation here.

⭐ Key point: Delta ratio below 1 = extra normal-gap acidosis; 1–2 = pure high-gap acidosis; above 2 = extra metabolic alkalosis.$x$, null),
(20, $x$For hyperkalaemia with ECG changes, after calcium the usual insulin–dextrose dose is:$x$, $x$10 units soluble insulin with 50 mL of 50% dextrose IV$x$, $x$✅ Correct answer: 10 units soluble insulin with 50 mL of 50% dextrose IV
After calcium, the standard way to SHIFT potassium into cells is 10 UNITS of soluble (short-acting) INSULIN with 25 g of glucose (50 mL of 50% dextrose, or 250 mL of 10%) IV. Insulin lowers K⁺ by 0.6–1.0 mmol/L within 15–30 minutes; the glucose prevents hypoglycaemia.

❌ Why the other options are wrong:
• 1 unit soluble insulin with 500 mL of 50% dextrose — 1 unit of insulin is too little, and 500 mL of 50% dextrose is far too much glucose.
• 100 units soluble insulin with 50 mL of 5% dextrose — 100 units of insulin would cause severe hypoglycaemia.
• 10 units long-acting insulin subcutaneously only — Long-acting subcutaneous insulin works too slowly.

⭐ Key point: Check blood glucose regularly for up to 6 hours after insulin and dextrose; hypoglycaemia is common, especially in kidney failure.$x$, null),
(21, $x$Paradoxical chest wall movement, where the flail segment moves inward on inspiration, is characteristic of:$x$, $x$Flail chest$x$, $x$✅ Correct answer: Flail chest
A FLAIL CHEST happens when 2 or more adjacent ribs are broken in 2 or more places, so a segment of chest wall is "floating" free. On breathing IN, the negative pressure in the chest sucks the flail segment INWARD while the rest of the chest moves out. On breathing out, it moves outward. This PARADOXICAL movement reduces ventilation.

❌ Why the other options are wrong:
• Pericardial tamponade — Pericardial tamponade affects the heart (low BP, high JVP, muffled heart sounds), not chest wall movement.
• Pulmonary contusion — Pulmonary contusion is bruising of the lung; it often occurs WITH flail chest but doesn't cause paradoxical movement itself.
• Simple pneumothorax — A simple pneumothorax reduces chest movement on that side; it doesn't make a segment move inward.

⭐ Key point: Flail chest management: oxygen, strong pain relief (epidural, nerve blocks), physiotherapy, and ventilation if needed. The underlying lung contusion causes most of the hypoxia.$x$, null),
(22, $x$A critical care nurse while performing a suctioning procedure noticed some signs of hypercapnia in the patient. The MOST appropriate intervention to be taken is:$x$, $x$Hyper oxygenate and intubate if possible$x$, $x$✅ Correct answer: Hyper oxygenate and intubate if possible
Signs of hypercapnia (rising CO₂, flushing, drowsiness, high BP, fast heart rate) during suctioning show the patient isn't ventilating adequately and is becoming hypoxic. The keyed answer is to HYPER-OXYGENATE (give 100% oxygen and ventilate) and secure the airway by INTUBATING if the patient isn't already intubated and can't ventilate adequately.

❌ Why the other options are wrong:
• Stop and document the findings — Stopping and documenting alone doesn't treat the patient.
• Stop the procedure and inform the seniors — Stopping and informing seniors is reasonable but doesn't immediately support the patient's breathing.
• Reassure the patient — Reassurance alone doesn't treat hypercapnia.

⭐ Key point: During suction: pre-oxygenate, keep passes to 10–15 seconds, watch SpO₂, heart rate and colour, and stop if the patient deteriorates.$x$, null),
(23, $x$What percentage of mechanically ventilated patients develop significant weakness?$x$, $x$25%$x$, $x$✅ Correct answer: 25%
ICU-acquired weakness (ICU-AW) affects about 25% (roughly a quarter, and up to 50% in sepsis) of patients ventilated for more than a few days. It is caused by critical illness polyneuropathy and myopathy, immobility, inflammation, high glucose, and drugs (steroids, muscle relaxants). It causes difficult weaning and long recovery.

❌ Why the other options are wrong:
• 5% — 5% underestimates it.
• 100% — 100% is too high; not every patient develops it.
• 75% — 75% overestimates it for ventilated patients overall.

⭐ Key point: Reduce ICU-AW: early mobilisation, glucose control, minimising sedation and muscle relaxants, and good nutrition.$x$, null),
(24, $x$Cardiopulmonary arrest in an asthmatic patient is classified as which type of intubation indication?$x$, $x$Absolute$x$, $x$✅ Correct answer: Absolute
Cardiac or respiratory ARREST is an ABSOLUTE indication for securing the airway and ventilating. The patient isn't breathing or circulating oxygen, so intubation (or another advanced airway) is needed immediately to give oxygen and support resuscitation. In asthma, very high airway pressures are expected.

❌ Why the other options are wrong:
• Contraindicated — Arrest is not a contraindication; it is an emergency need.
• Not an indication at all — It is clearly an indication.
• Relative — It is not just relative; it is absolute.

⭐ Key point: Other absolute indications: inability to protect the airway (GCS 8 or less), impending airway obstruction, and failure of oxygenation or ventilation despite other support.$x$, null),
(25, $x$The mode of Mechanical Ventilation which has the risk of producing Hyper ventilation and Respiratory Alkalosis is:$x$, $x$Assist Control Mode$x$, $x$✅ Correct answer: Assist Control Mode
In Assist-Control (AC) ventilation, EVERY breath the patient triggers gets a FULL set tidal volume (or pressure). If the patient breathes fast (pain, anxiety, sepsis, fever), each fast breath gets a full-size breath, so minute ventilation becomes very large, CO₂ is blown off, and RESPIRATORY ALKALOSIS can develop.

❌ Why the other options are wrong:
• Controlled Mandatory Ventilation — Controlled mandatory ventilation delivers only the set rate (the patient can't trigger extra).
• Synchronous Intermittent Mandatory Ventilation — SIMV allows extra spontaneous breaths, but they aren't full-sized machine breaths.
• Pressure Control Mode — Pressure control limits pressure; it can cause alkalosis too, but AC is the classic answer.

⭐ Key point: If a patient on AC is over-breathing, look for and treat the cause (pain, agitation, sepsis), or consider changing the mode.$x$, null),
(26, $x$HFCC (High-Frequency Chest Wall Oscillation) uses an air-filled vest that squeezes the chest at a rate of:$x$, $x$5–20 times/second$x$, $x$✅ Correct answer: 5–20 times/second
High-frequency chest wall oscillation (HFCWO) uses an inflatable VEST connected to a machine that rapidly inflates and deflates it, squeezing the chest about 5–20 TIMES PER SECOND (5–20 Hz). The rapid vibrations loosen secretions and move them towards the larger airways, where they can be coughed out. It is used in cystic fibrosis and bronchiectasis.

❌ Why the other options are wrong:
• 50–60 times/second — 50–60 times per second is far faster than the vest works.
• 1–2 times/second — 1–2 times per second is too slow.
• Once per minute — Once per minute is far too slow.

⭐ Key point: HFCWO is an airway clearance technique that doesn't need a physiotherapist, so patients can use it at home.$x$, null),
(27, $x$A 24 year old male patient is brought to the Emergency by his family with head injury. Initial survey was done by the Nurse in Triage. The Nurse informed physician that he has no respiratory efforts. Which mode of the ventilation will be used for this patient?$x$, $x$Assist Control Ventilation$x$, $x$✅ Correct answer: Assist Control Ventilation
This patient has NO respiratory effort, so the ventilator must provide every breath. ASSIST-CONTROL (AC) ventilation guarantees a set number of full breaths per minute (set rate and tidal volume), and if the patient later starts to breathe, each effort is fully supported. This ensures adequate ventilation in an apnoeic head-injured patient.

❌ Why the other options are wrong:
• Volume controlled — Volume control is part of AC, but the question is about the mode that guarantees breaths whatever the patient's effort.
• Synchronized Intermittent Mandatory Ventilation (SIMV) — SIMV relies on spontaneous breathing between mandatory breaths; this patient has none.
• Pressure controlled — Pressure control is possible, but AC is the keyed answer for full support.

⭐ Key point: In head injury, ventilate to normal CO₂ (PaCO₂ 35–40 mmHg); avoid hyperventilation, which narrows brain vessels.$x$, null),
(28, $x$A 16-year old patient with cystic fibrosis is admitted with increased shortness of breath and possible pneumonia. Which nursing activity is most important to include in the patient's care?$x$, $x$Perform postural drainage and chest physiotherapy every 4 hours.$x$, $x$✅ Correct answer: Perform postural drainage and chest physiotherapy every 4 hours.
Cystic fibrosis causes THICK, sticky mucus in the airways, which blocks them and causes repeated infections. During an exacerbation with pneumonia, regular POSTURAL DRAINAGE and CHEST PHYSIOTHERAPY (every 4 hours, plus airway clearance techniques) is the most important nursing activity to clear secretions and improve breathing.

❌ Why the other options are wrong:
• Place the patient in a private room to decrease the risk of further infection. — A private room is used for infection control (especially to protect other CF patients), but it isn't the MOST important activity here.
• Plan activities to allow at least 8 hours of uninterrupted sleep. — Sleep is important, but clearing secretions comes first.
• Allow the patient to decide whether she needs aerosolized medications. — Nebulised medicines are prescribed and shouldn't be left to the patient to decide.

⭐ Key point: CF patients also need antibiotics, nebulised mucolytics (dornase alfa, hypertonic saline), high-calorie nutrition and pancreatic enzymes.$x$, null),
(29, $x$Vibration, as an airway clearance technique, is applied:$x$, $x$During expiration only$x$, $x$✅ Correct answer: During expiration only
VIBRATION is a chest physiotherapy technique where the hands are placed on the chest wall and fine, rapid shaking movements are applied during EXPIRATION (breathing out). Vibrating while air is leaving helps loosen secretions and move them towards the larger airways.

❌ Why the other options are wrong:
• Only during coughing — It isn't applied only during coughing.
• During inspiration only — It isn't applied during inspiration (it would restrict the breath in).
• Throughout the whole breathing cycle — It isn't applied throughout the whole cycle.

⭐ Key point: Vibration is often combined with deep breaths, postural drainage and coughing or suctioning.$x$, null),
(30, $x$During a routine respiratory assessment of a mechanically ventilated patient, the nurse notes new asymmetric chest expansion and absent breath sounds on the right, with tracheal deviation to the left. This most urgently suggests:$x$, $x$Right-sided tension pneumothorax$x$, $x$✅ Correct answer: Right-sided tension pneumothorax
In a ventilated patient, new ABSENT breath sounds on the right, ASYMMETRIC chest expansion, and the trachea DEVIATED to the LEFT (AWAY from the right side) are classic signs of a RIGHT TENSION PNEUMOTHORAX. Positive pressure ventilation makes it worse quickly. It is an emergency needing needle decompression and a chest drain.

❌ Why the other options are wrong:
• Right mainstem intubation — Right mainstem intubation causes absent breath sounds on the LEFT, and the trachea isn't pushed away.
• Mucus plugging of the left mainstem bronchus — A left bronchus mucus plug would reduce LEFT breath sounds, and may PULL the trachea toward the left.
• A normal variant — These findings aren't normal.

⭐ Key point: Tension pneumothorax in a ventilated patient: high airway pressures, falling SpO₂, falling BP, absent breath sounds, tracheal shift. Decompress immediately.$x$, null),
(31, $x$The nurse is caring for a patient with a UWSD. The nurse notices the water-seal chamber has a small amount of intermittent bubbling. This is most likely caused by:$x$, $x$The patient's respirations$x$, $x$✅ Correct answer: The patient's respirations
A small amount of INTERMITTENT bubbling in the water-seal chamber, especially when the patient coughs or breathes out, is NORMAL when draining a pneumothorax. It shows air is still leaving the pleural space as the patient breathes. It usually decreases as the lung heals.

❌ Why the other options are wrong:
• A blockage in the drainage system — A blockage would STOP bubbling and swinging.
• A kink in the tubing — A kink would also stop drainage.
• A large air leak — A LARGE air leak would cause CONTINUOUS, vigorous bubbling.

⭐ Key point: Continuous bubbling = a significant air leak (from the lung or a loose connection). No swing = blockage or the lung has fully expanded.$x$, null),
(32, $x$Is initiated by the patient, but controlled and ended by the ventilator.$x$, $x$Assisted breath$x$, $x$✅ Correct answer: Assisted breath
An ASSISTED breath is STARTED (triggered) by the patient's effort, but the ventilator then CONTROLS how much it delivers (set volume or pressure) and ENDS (cycles) the breath. Assist-control and SIMV mandatory breaths can be assisted breaths.

❌ Why the other options are wrong:
• Mandatory breath — A mandatory breath is started, controlled and ended by the ventilator.
• Spontaneous breath — A spontaneous breath is started and ended by the patient (perhaps with pressure support).
• None of them — One of the options (assisted breath) fits.

⭐ Key point: Breath types: mandatory (machine controls all), assisted (patient triggers, machine controls), spontaneous (patient controls).$x$, null),
(33, $x$In patients with normal cardiopulmonary status, increasing the ________ is the treatment of choice in improving the patient's oxygenation.$x$, $x$FiO2$x$, $x$✅ Correct answer: FiO2
Oxygenation is controlled by FiO₂ (oxygen concentration) and PEEP (mean airway pressure). In patients with NORMAL heart and lung function, simply increasing the FiO₂ is the quickest and easiest way to improve oxygenation. PEEP is added mainly when alveoli are collapsed or flooded (ARDS, oedema).

❌ Why the other options are wrong:
• PSV — Pressure support helps ventilation and the work of breathing, not mainly oxygenation.
• VT — Tidal volume mainly affects CO₂ removal (ventilation).
• PEEP — PEEP is the treatment of choice when the lungs are damaged, not in normal cardiopulmonary status.

⭐ Key point: Use the lowest FiO₂ that achieves the target SpO₂ (avoid oxygen toxicity, ideally FiO₂ below 0.6).$x$, null),
(34, $x$A patient requires a low, consistent concentration of oxygen. The most appropriate oxygen delivery device for this purpose is a:$x$, $x$Venturi mask$x$, $x$✅ Correct answer: Venturi mask
A VENTURI mask delivers a PRECISE, CONSISTENT oxygen concentration (24%, 28%, 31%, 35%, 40% or 60%), whatever the patient's breathing pattern. It uses a jet of oxygen to draw in a set amount of room air, providing a high total flow. It is ideal for patients who need a low, accurate FiO₂, such as COPD patients who retain CO₂.

❌ Why the other options are wrong:
• Simple face mask — A simple face mask gives a variable FiO₂ (40–60%) that changes with breathing.
• Non-rebreather mask — A non-rebreather gives a HIGH, variable FiO₂ (60–90%).
• Nasal cannula — A nasal cannula gives a variable FiO₂ (24–44%) that depends on breathing.

⭐ Key point: COPD target SpO₂ is 88–92%. Start with a 24% or 28% Venturi mask.$x$, null),
(35, $x$In respiratory acidosis, the kidneys compensate by:$x$, $x$Increasing HCO3 reabsorption and H+ excretion$x$, $x$✅ Correct answer: Increasing HCO3 reabsorption and H+ excretion
In respiratory acidosis (CO₂ retention), the kidneys compensate by INCREASING BICARBONATE reabsorption and making new bicarbonate, while EXCRETING more hydrogen ions (as ammonium and acid phosphate) in the urine. This raises blood bicarbonate, bringing the pH back towards normal. It takes 3–5 days.

❌ Why the other options are wrong:
• Decreasing HCO3 reabsorption — Decreasing bicarbonate would worsen the acidosis.
• Having no role in compensation — The kidneys DO have a role, the main compensation in respiratory acidosis.
• Immediately normalising pH within minutes — Kidney compensation is slow (days), not minutes.

⭐ Key point: Acute respiratory acidosis = low pH, normal HCO₃⁻. Chronic (compensated) = near-normal pH, high HCO₃⁻.$x$, null),
(36, $x$A history of previous ICU admission or intubation for asthma indicates:$x$, $x$High risk of a fatal or near-fatal future attack$x$, $x$✅ Correct answer: High risk of a fatal or near-fatal future attack
A history of previous ICU admission or intubation for asthma is one of the strongest PREDICTORS of a future FATAL or NEAR-FATAL asthma attack. These patients have severe, unstable asthma and must be treated as high risk: early aggressive treatment, a low threshold for admission, and an action plan.

❌ Why the other options are wrong:
• Asthma has likely resolved — It doesn't mean asthma has resolved.
• The patient no longer needs controller medication — They need controller medication, not less.
• No increased future risk — They have an increased, not normal, future risk.

⭐ Key point: Other risk factors for fatal asthma: frequent admissions, heavy use of reliever inhalers, poor adherence, and psychosocial problems.$x$, null),
(37, $x$A ventilated ARDS patient has plateau pressure 35 cmH₂O on tidal volume 8 mL/kg. The priority change is to:$x$, $x$Reduce tidal volume toward 6 mL/kg predicted body weight$x$, $x$✅ Correct answer: Reduce tidal volume toward 6 mL/kg predicted body weight
Lung-protective ventilation in ARDS aims for a plateau pressure of 30 cmH₂O or LESS. A plateau of 35 means the lungs are being over-stretched, risking volutrauma. The priority is to REDUCE the tidal volume to 6 mL/kg PREDICTED body weight (or lower, down to 4 mL/kg if needed), accepting a higher CO₂ (permissive hypercapnia).

❌ Why the other options are wrong:
• Switch to high inspiratory flow to shorten inspiration — High inspiratory flow doesn't lower plateau pressure.
• Increase tidal volume to improve CO₂ clearance — Increasing tidal volume would RAISE the plateau further.
• Remove all PEEP to lower the plateau pressure — Removing PEEP would cause alveolar collapse and worsen hypoxia.

⭐ Key point: Plateau pressure ≤30, driving pressure (plateau − PEEP) ≤15, and tidal volume 6 mL/kg predicted body weight.$x$, null),
(38, $x$On a volume-controlled ventilator, peak pressure rises sharply but plateau pressure is unchanged. The likely cause is:$x$, $x$Raised airway resistance, e.g. secretions, kinked tube or bronchospasm$x$, $x$✅ Correct answer: Raised airway resistance, e.g. secretions, kinked tube or bronchospasm
PEAK pressure = pressure to overcome airway RESISTANCE + pressure to inflate the alveoli. PLATEAU pressure = alveolar pressure only (no flow, so no resistance). If PEAK rises but PLATEAU is unchanged, the extra pressure is due to RAISED AIRWAY RESISTANCE: secretions, a kinked or bitten tube, or bronchospasm.

❌ Why the other options are wrong:
• A large air leak around a deflated cuff — An air leak would cause LOW pressures.
• Reduced lung compliance, e.g. pulmonary oedema or ARDS — Reduced compliance (oedema, ARDS) raises BOTH peak and plateau.
• Tension pneumothorax with lung collapse — Tension pneumothorax reduces compliance, raising both peak and plateau.

⭐ Key point: High peak, normal plateau → suction, check the tube, give a bronchodilator.$x$, null),
(39, $x$Both peak and plateau pressures rise together in a ventilated patient. This points to:$x$, $x$Reduced compliance, e.g. pneumothorax or endobronchial intubation$x$, $x$✅ Correct answer: Reduced compliance, e.g. pneumothorax or endobronchial intubation
If BOTH peak and plateau pressures rise together, the problem is in the LUNGS or chest wall: REDUCED COMPLIANCE (stiffer lungs). Causes: pneumothorax, endobronchial (right main bronchus) intubation, pulmonary oedema, ARDS, atelectasis, abdominal distension or a stiff chest wall.

❌ Why the other options are wrong:
• Thick secretions inside the endotracheal tube only — Secretions inside the tube raise PEAK only (resistance).
• A large leak in the ventilator circuit tubing — A circuit leak LOWERS pressures.
• Increased airway resistance from a bitten tube — A bitten tube raises PEAK only (resistance).

⭐ Key point: High peak and high plateau → examine the chest, check tube position, consider pneumothorax, and get a chest X-ray.$x$, null),
(40, $x$Intrinsic PEEP (auto-PEEP) in a ventilated asthmatic is best measured by:$x$, $x$An end-expiratory hold manoeuvre$x$, $x$✅ Correct answer: An end-expiratory hold manoeuvre
Intrinsic PEEP (auto-PEEP) is pressure left in the alveoli at the end of expiration because air is trapped. It's measured with an END-EXPIRATORY HOLD: the ventilator closes the valves at the end of expiration, so pressure in the alveoli equalises with the circuit and can be read. Total PEEP − set PEEP = intrinsic PEEP.

❌ Why the other options are wrong:
• An end-inspiratory hold manoeuvre — An end-INSPIRATORY hold measures PLATEAU pressure.
• Measuring peak flow before suction — Peak flow isn't measured on a ventilated patient this way.
• A cuff leak test — The cuff leak test checks for laryngeal swelling.

⭐ Key point: Treat auto-PEEP: lower the rate, shorten inspiration (allow more expiratory time), and give bronchodilators.$x$, null),
(41, $x$Which class of medication reduces mortality in chronic heart failure with reduced ejection fraction by blocking the renin-angiotensin system?$x$, $x$ACE inhibitors$x$, $x$✅ Correct answer: ACE inhibitors
ACE inhibitors (such as enalapril, ramipril, lisinopril) block the conversion of angiotensin I to angiotensin II. This lowers afterload (vasodilation), reduces aldosterone (less salt and water retention), and slows harmful heart remodelling. They REDUCE DEATHS and hospital admissions in heart failure with reduced ejection fraction (HFrEF).

❌ Why the other options are wrong:
• Loop diuretics alone — Loop diuretics relieve fluid overload and symptoms but don't reduce mortality on their own.
• Calcium channel blockers (non-dihydropyridine) — Non-dihydropyridine calcium channel blockers (verapamil, diltiazem) can WORSEN HFrEF.
• Short-acting nitrates — Short-acting nitrates relieve symptoms but don't reduce mortality.

⭐ Key point: Mortality-reducing HFrEF drugs: ACE inhibitors (or ARBs/ARNI), beta-blockers, mineralocorticoid antagonists (spironolactone), and SGLT2 inhibitors.$x$, null),
(42, $x$About cardiac pacemaker$x$, $x$Cardiac pacemakers can be inserted by trans venous only$x$, $x$✅ Correct answer: Cardiac pacemakers can be inserted by trans venous only
This question asks for the statement that is NOT correct. "Cardiac pacemakers can be inserted by transvenous approach ONLY" is FALSE, because pacemakers can also be placed EPICARDIALLY (surgically on the heart surface, such as after cardiac surgery), TRANSCUTANEOUSLY (external pads) and transoesophageally. The other statements are true.

❌ Why the other options are wrong:
• When viewed on a chest radiograph, the pacemaker lead should terminate in the right ventricular apex — It is TRUE that the pacing lead on X-ray should end at the right ventricular apex.
• The right internal jugular and the left subclavian veins are often preferred — It is TRUE that the right internal jugular and left subclavian veins are often used.
• Most often the trans venous approach is used — It is TRUE that the transvenous route is used most often.

⭐ Key point: Temporary pacing options: transcutaneous (emergency, pads), transvenous (wire via a central vein), and epicardial (wires after cardiac surgery).$x$, null),
(43, $x$Hemodynamic pressure monitoring provides information about the following parameters:$x$, $x$Blood volume and fluid balance$x$, $x$✅ Correct answer: Blood volume and fluid balance
Haemodynamic pressure monitoring (CVP, PA pressures, arterial pressure) gives information about the circulation, especially the patient's BLOOD VOLUME (filling status) and FLUID BALANCE (whether they are dry or overloaded), helping guide fluid therapy.

❌ Why the other options are wrong:
• Fluid balance and Stroke Volume — Stroke volume is measured by cardiac output monitoring, not pressure monitoring alone.
• Blood Volume and Stroke Volume — Stroke volume is not directly measured by pressure.
• Blood Volume and Heart Rate — Heart rate is measured by the ECG.

⭐ Key point: Pressures are only one part of the picture. Combine them with clinical signs, urine output, lactate and fluid responsiveness tests.$x$, null),
(44, $x$Post-thyroidectomy, a nurse observes hypotension and tachycardia. The most probable cause is:$x$, $x$Hemorrhage$x$, $x$✅ Correct answer: Hemorrhage
After thyroidectomy, the neck has many blood vessels. Bleeding (HAEMORRHAGE) can cause HYPOVOLAEMIA (low BP, fast pulse) and, importantly, a neck haematoma that can COMPRESS the airway. Hypotension with tachycardia most likely means bleeding.

❌ Why the other options are wrong:
• Hypothyroidism — Hypothyroidism develops slowly and causes slow pulse, not acute hypotension with tachycardia.
• Laryngospasm — Laryngospasm causes breathing problems and stridor, not mainly low BP and fast pulse.
• Anxiety — Anxiety can cause a fast pulse but not hypotension.

⭐ Key point: Post-thyroidectomy: check the neck and dressing for swelling, watch for stridor, keep stitch-cutters or clip removers at the bedside, and watch for low calcium (tingling, tetany).$x$, null),
(45, $x$The required dose of Amiodarone in Refractory VF and Pulseless VT:$x$, $x$300 mg$x$, $x$✅ Correct answer: 300 mg
In shock-resistant (refractory) VF or pulseless VT, AMIODARONE 300 mg IV is given after the 3rd shock. A further 150 mg is given after the 5th shock. Amiodarone stabilises the heart's electrical activity and helps defibrillation succeed.

❌ Why the other options are wrong:
• 150 mg — 150 mg is the SECOND dose (after the 5th shock).
• 100 mg — 100 mg is not the standard dose.
• 250 mg — 250 mg is not the standard dose.

⭐ Key point: Lidocaine 1 mg/kg is an alternative if amiodarone isn't available. Give adrenaline 1 mg every 3–5 minutes as well.$x$, null),
(46, $x$During CPR, the recommended compression-to-ventilation ratio for a single rescuer performing adult CPR without an advanced airway is:$x$, $x$30:2$x$, $x$✅ Correct answer: 30:2
For adult CPR without an advanced airway, the ratio is 30 COMPRESSIONS to 2 BREATHS (30:2), for both single rescuers and teams. Compressions are 5–6 cm deep at 100–120 per minute, allowing full chest recoil and minimising interruptions.

❌ Why the other options are wrong:
• Continuous compressions with no ventilation — Continuous compressions without breaths are used by untrained bystanders (compression-only CPR) or once an advanced airway is in place (with ventilation at 10 per minute).
• 5:1 — 5:1 is an old, outdated ratio.
• 15:2 — 15:2 is the ratio for CHILDREN with two rescuers.

⭐ Key point: Once an advanced airway (ETT or supraglottic) is in place, give continuous compressions with 10 breaths per minute.$x$, null),
(47, $x$When the delivery button is pushed, there will be a slight delay in firing because the machine is sensing the R wave in order to deliver the energy at the precise moment. This phenomenon is known as:$x$, $x$Synchronized Cardio Version$x$, $x$✅ Correct answer: Synchronized Cardio Version
In SYNCHRONISED CARDIOVERSION, the defibrillator is set to SYNC mode, so it detects the patient's R wave and times the shock to land on it. This avoids shocking during the vulnerable T wave, which could cause VF. That's why there's a slight DELAY after pressing the button. It is used for unstable tachycardias WITH a pulse (AF, flutter, SVT, VT with a pulse).

❌ Why the other options are wrong:
• Defibrillation — Defibrillation is UNSYNCHRONISED (given immediately), used for VF and pulseless VT.
• Cardio Version — "Cardioversion" alone is incomplete; the R-wave timing is what makes it synchronised.
• A Synchronized Cardio Version — "A synchronized cardioversion" is a duplicate distractor of the correct answer.

⭐ Key point: Turn SYNC on for cardioversion. It often switches OFF after each shock, so check it before the next one.$x$, null),
(48, $x$Electrocariaogram strip of a patient shows: P wave and QRS complexes --regular, PR-Interval - 0.14 seconds, QRS complexes measure- 0.08 seconds, overall hert beat rate- 82beats per minutes. This cardiac rhythm is____________$x$, $x$Normal sinus rhythm$x$, $x$✅ Correct answer: Normal sinus rhythm
Check each part of the ECG strip. Regular P waves and QRS complexes, with each P followed by a QRS. PR interval 0.14 s (normal 0.12–0.20). QRS 0.08 s (normal under 0.12, narrow). Heart rate 82/min (normal 60–100). Everything is normal, so this is NORMAL SINUS RHYTHM.

❌ Why the other options are wrong:
• First-degree heart block — First-degree heart block has a PR interval LONGER than 0.20 s.
• Sinus tachycardia — Sinus tachycardia has a rate ABOVE 100.
• Sinus bradycardia — Sinus bradycardia has a rate BELOW 60.

⭐ Key point: The ECG checklist: rate, rhythm (regular?), P waves (present before each QRS?), PR interval, QRS width, ST segment and T waves.$x$, null),
(49, $x$A paradoxical pulse occurs in a client who had a coronary artery bypass graft (CABG) surgery two (2) days ago. Which of the following surgical complications should the nurse suspect?$x$, $x$Pericardial tamponade$x$, $x$✅ Correct answer: Pericardial tamponade
PULSUS PARADOXUS is an exaggerated fall in systolic BP (more than 10 mmHg) during inspiration. After cardiac surgery, blood can collect around the heart (the pericardium), squeezing it so it can't fill: CARDIAC TAMPONADE. Other signs: low BP, raised JVP, muffled heart sounds (Beck's triad), and a sudden fall in chest drain output (clot blocking the drain).

❌ Why the other options are wrong:
• Left-sided heart failure — Left heart failure causes pulmonary oedema and crackles, not typically pulsus paradoxus.
• Aortic regurgitation — Aortic regurgitation causes a wide pulse pressure and a diastolic murmur.
• Complete heart block — Complete heart block causes a slow pulse, not pulsus paradoxus.

⭐ Key point: Post-cardiac surgery tamponade is a surgical emergency: return to theatre or reopen the chest.$x$, null),
(50, $x$IV furosemide is administered for acute pulmonary oedema. Besides diuresis, what additional early therapeutic effect makes it useful in this emergency?$x$, $x$Venodilation reducing preload$x$, $x$✅ Correct answer: Venodilation reducing preload
IV furosemide works in TWO ways in acute pulmonary oedema. EARLY (within 5–15 minutes, before urine output increases), it causes VENODILATION, widening the veins so more blood is held in them. This reduces PRELOAD (blood returning to the heart) and lowers pressure in the lung capillaries, easing breathlessness. LATER, its diuretic effect removes excess fluid.

❌ Why the other options are wrong:
• Afterload reduction via arterial vasodilation — Arterial vasodilation (afterload reduction) isn't its main early effect.
• Positive inotropy — Furosemide has no positive inotropic effect.
• Bronchodilation — Furosemide doesn't cause bronchodilation.

⭐ Key point: GTN (nitrates) also reduces preload quickly. Sit the patient upright and give oxygen or CPAP.$x$, null),
(51, $x$Which of the following statement is false?$x$, $x$Hypertensive urgency is associated with end organ injury or damage$x$, $x$✅ Correct answer: Hypertensive urgency is associated with end organ injury or damage
This question asks for the FALSE statement. Hypertensive URGENCY is severe high BP WITHOUT acute end-organ damage. The statement that urgency "is associated with end organ damage" is FALSE, because organ damage defines a hypertensive EMERGENCY. The other three statements are true.

❌ Why the other options are wrong:
• Hypertensive crises are categorized as either hypertensive emergency or hypertensive urgency — It is TRUE that hypertensive crises are divided into emergency and urgency.
• Hypertensive emergencies require an immediate but gradual reduction in BP over a period of several minutes to several hours using intravenous antihypertensive agents. — It is TRUE that hypertensive emergencies need immediate but gradual BP reduction with IV drugs.
• Hypertensive emergency are extreme elevations in BP that a accompanied by acute or progressing target-organ damage — It is TRUE that hypertensive emergencies involve extreme BP with acute or progressing organ damage.

⭐ Key point: Emergency = high BP + organ damage (IV drugs, ICU). Urgency = high BP alone (oral drugs, gradual reduction).$x$, null),
(52, $x$A patient with suspected myocardial infarction has ECG changes showing ST elevation in leads II, III, and aVF. This localises the infarction to the:$x$, $x$Inferior wall$x$, $x$✅ Correct answer: Inferior wall
ECG leads II, III and aVF look at the INFERIOR (bottom) wall of the heart. ST elevation in these leads means an INFERIOR MI, usually from blockage of the right coronary artery (RCA). The RCA also supplies the right ventricle and the AV node, so watch for RV infarction and heart block.

❌ Why the other options are wrong:
• Posterior wall only — A posterior MI shows ST DEPRESSION in V1–V3 (with tall R waves).
• Anterior wall — An anterior MI shows changes in V1–V4.
• Lateral wall — A lateral MI shows changes in I, aVL, V5 and V6.

⭐ Key point: In an inferior MI, record V4R to check for RV involvement, and avoid nitrates if the RV is involved.$x$, null),
(53, $x$A patient is undergoing cardiac catheterization. Which of the following sensations reported by the patient during the procedure has the highest priority?$x$, $x$Chest pain$x$, $x$✅ Correct answer: Chest pain
CHEST PAIN during cardiac catheterisation may mean myocardial ISCHAEMIA (the catheter or contrast may be blocking a coronary artery), a coronary artery dissection, spasm, or an MI. It is the highest-priority sensation, because it could be life-threatening. Report it immediately and record a 12-lead ECG.

❌ Why the other options are wrong:
• Warm, flushed feeling — A warm, flushed feeling is NORMAL when contrast is injected.
• Pressure at the insertion site — Pressure at the insertion site is expected.
• Urge to cough — An urge to cough can happen with contrast and is usually harmless.

⭐ Key point: After cardiac catheterisation: check the puncture site for bleeding or haematoma, check distal pulses, and keep the limb straight as instructed.$x$, null),
(54, $x$Stimulation of the vagus nerve (CN X), for example during suctioning or straining, would be expected to cause which cardiovascular response?$x$, $x$Bradycardia, and potentially hypotension$x$, $x$✅ Correct answer: Bradycardia, and potentially hypotension
The VAGUS NERVE (CN X) is part of the parasympathetic nervous system. Stimulating it (suction, straining, vomiting, pressure on the eyes or the carotid sinus) slows the SA node and AV conduction, causing BRADYCARDIA and possibly HYPOTENSION. In severe cases it can cause asystole.

❌ Why the other options are wrong:
• Tachycardia and hypertension — Tachycardia and hypertension are SYMPATHETIC effects.
• No cardiovascular effect — Vagal stimulation does have cardiovascular effects.
• Isolated increase in respiratory rate — It doesn't simply increase breathing rate.

⭐ Key point: Keep suction passes short, pre-oxygenate, and keep atropine available for patients prone to vagal bradycardia.$x$, null),
(55, $x$Which of the following pairs is correct?$x$, $x$Vasodilators: reduce preload$x$, $x$✅ Correct answer: Vasodilators: reduce preload
VASODILATORS widen blood vessels. Venodilators (like GTN) increase the capacity of the veins, so more blood pools there and less returns to the heart, which REDUCES PRELOAD. This is why nitrates help in pulmonary oedema and angina.

❌ Why the other options are wrong:
• Arterial dilators: reduce cardiac output — Arterial dilators REDUCE afterload, which usually INCREASES cardiac output.
• Arterial dilators: increase afterload — Arterial dilators DECREASE (not increase) afterload.
• Venodilators: increase blood volume returning to the heart — Venodilators DECREASE (not increase) the volume returning to the heart.

⭐ Key point: Venodilators reduce preload (nitrates); arterial dilators reduce afterload (hydralazine); some do both (nitroprusside, ACE inhibitors).$x$, null),
(56, $x$A client is scheduled for a cardiac catheterization using a radiopaque dye. Which of the following assessments is most critical before the procedure?$x$, $x$Allergy to iodine or shellfish$x$, $x$✅ Correct answer: Allergy to iodine or shellfish
Cardiac catheterisation uses an iodine-based radiopaque contrast (dye). The most critical pre-procedure check is for ALLERGY to IODINE or contrast (and a history of severe allergies). Shellfish allergy is traditionally asked about, although it's not a reliable predictor. A known allergy may need pre-medication (steroids, antihistamines) or alternative plans. Kidney function is also important.

❌ Why the other options are wrong:
• Height and weight — Height and weight matter for drug doses but are less critical.
• Intake and output — Intake and output is routine monitoring.
• Baseline peripheral pulse rates — Baseline peripheral pulses are important for comparison after the procedure, but allergy is most critical.

⭐ Key point: Also check: creatinine (contrast nephropathy), anticoagulants, metformin, and that consent is signed.$x$, null),
(57, $x$A patient has cardiac output 4 L/min and body surface area 2 m². The cardiac index is:$x$, $x$2.0 L/min/m², below normal$x$, $x$✅ Correct answer: 2.0 L/min/m², below normal
Cardiac index (CI) = cardiac output ÷ body surface area. Here: 4 L/min ÷ 2 m² = 2.0 L/min/m². Normal CI is 2.5–4.0 L/min/m², so 2.0 is BELOW NORMAL. Although a cardiac output of 4 L/min looks normal, it is too low for this large person.

❌ Why the other options are wrong:
• 4.0 L/min/m², normal — 4.0 would mean no division by body surface area.
• 8.0 L/min/m², above normal — 8.0 comes from multiplying instead of dividing.
• 0.5 L/min/m², incompatible with life — 0.5 comes from dividing the wrong way round (BSA ÷ CO).

⭐ Key point: A cardiac index below 2.2 with signs of poor perfusion suggests cardiogenic shock.$x$, null),
(58, $x$MAP 65 mmHg, CVP 5 mmHg and cardiac output 6 L/min give an SVR of about:$x$, $x$800 dyn·s/cm⁵, low, as in distributive shock$x$, $x$✅ Correct answer: 800 dyn·s/cm⁵, low, as in distributive shock
SVR = (MAP − CVP) × 80 ÷ cardiac output. Here: (65 − 5) × 80 ÷ 6 = 60 × 80 ÷ 6 = 4800 ÷ 6 = 800 dyn·s/cm⁵. This is at the LOWER limit of normal (800–1200), which points to vasodilation, as seen in DISTRIBUTIVE shock (sepsis, anaphylaxis).

❌ Why the other options are wrong:
• 2400 dyn·s/cm⁵, high, as in hypovolaemia — 2400 would be very high (vasoconstricted).
• 80 dyn·s/cm⁵, low, as in heart block — 80 forgets to multiply by 80.
• 1600 dyn·s/cm⁵, high, as in cardiogenic shock — 1600 comes from a calculation error.

⭐ Key point: Low SVR = distributive shock, treated with vasopressors. High SVR = hypovolaemic or cardiogenic shock.$x$, null),
(59, $x$In a fully ventilated patient in sinus rhythm, pulse pressure variation above 13% suggests:$x$, $x$The patient is likely to respond to a fluid bolus$x$, $x$✅ Correct answer: The patient is likely to respond to a fluid bolus
In a patient on controlled ventilation in SINUS rhythm, positive pressure breaths reduce venous return slightly with each breath. If the patient needs fluid (preload-dependent), the pulse pressure varies a lot between breaths. Pulse pressure variation (PPV) above 13% suggests the patient is likely to RESPOND to a FLUID BOLUS (cardiac output will rise).

❌ Why the other options are wrong:
• The arterial line trace is over-damped — An over-damped trace doesn't produce high PPV.
• Severe left ventricular systolic failure — Severe LV failure tends to show LOW PPV.
• The patient is already fluid overloaded — Fluid overload shows LOW PPV.

⭐ Key point: PPV is valid only with controlled ventilation, tidal volume of about 8 mL/kg, sinus rhythm and a closed chest.$x$, null),
(60, $x$A passive leg raise predicts fluid responsiveness when it raises stroke volume or cardiac output by more than:$x$, $x$10%$x$, $x$✅ Correct answer: 10%
A passive leg raise (PLR) lifts the legs to 45° from a semi-recumbent position, returning about 300 mL of blood to the heart, like a reversible fluid challenge. If the STROKE VOLUME or CARDIAC OUTPUT rises by more than 10%, the patient is likely fluid responsive and may benefit from fluids.

❌ Why the other options are wrong:
• 100% — 100% is an impossible rise.
• 50% — 50% is far too high a threshold.
• 1% — 1% is too small to be meaningful.

⭐ Key point: Measure the response with a cardiac output monitor or echo, not just BP, and read it within 1–2 minutes.$x$, null),
(61, $x$Fasciculations may develop with disease of the:$x$, $x$Anterior horn of the spinal cord$x$, $x$✅ Correct answer: Anterior horn of the spinal cord
FASCICULATIONS are small, visible twitches of muscle under the skin, caused by spontaneous firing of a motor unit. They are a sign of LOWER MOTOR NEURONE disease, especially disease of the ANTERIOR HORN cells of the spinal cord, where the motor neurones' cell bodies are (for example motor neurone disease or polio).

❌ Why the other options are wrong:
• Lateral column of the spinal cord — The lateral column carries upper motor neurone tracts.
• Posterior horn of the spinal cord — The posterior horn is sensory.
• Internal capsule — The internal capsule carries upper motor neurone fibres in the brain.

⭐ Key point: Lower motor neurone signs: weakness, wasting, fasciculations, low tone, and reduced or absent reflexes.$x$, null),
(62, $x$Abnormal flexion (decorticate posturing) corresponds to which motor score on the Glasgow Coma Scale?$x$, $x$3$x$, $x$✅ Correct answer: 3
In the GCS motor score, ABNORMAL FLEXION (decorticate posturing: arms bent up to the chest, wrists flexed, legs extended) scores M3. It shows damage above the brainstem (cerebral hemispheres or internal capsule).

❌ Why the other options are wrong:
• 6 — M6 means obeying commands.
• 5 — M5 means localising to pain.
• 4 — M4 means normal flexion (withdrawal) from pain.

⭐ Key point: GCS motor: 6 obeys, 5 localises, 4 withdraws, 3 abnormal flexion (decorticate), 2 extension (decerebrate), 1 none.$x$, null),
(63, $x$A positive Lasègue sign (straight-leg raise) suggests damage to:$x$, $x$Spinal roots L5–S1 or sciatic nerve$x$, $x$✅ Correct answer: Spinal roots L5–S1 or sciatic nerve
Lasègue's sign (the straight-leg raise test): with the patient lying flat, the straight leg is lifted. Pain shooting down the back of the leg between 30° and 70° is a positive sign. It stretches the SCIATIC nerve and the L5–S1 nerve roots, suggesting compression or irritation, usually from a herniated (slipped) lumbar disc.

❌ Why the other options are wrong:
• Spinal roots C5–C8 or radial nerve — The C5–C8 roots and the radial nerve supply the arm.
• Meninges of the brain — The meninges of the brain are tested by neck stiffness, Kernig's and Brudzinski's signs.
• Anterior horns at the level L5–S1 — Anterior horn damage causes weakness, not pain on stretching.

⭐ Key point: A slipped disc with saddle numbness, bladder or bowel dysfunction, and leg weakness suggests cauda equina syndrome, which is a surgical emergency.$x$, null),
(64, $x$After ROSC, targeted temperature management is used to protect:$x$, $x$The brain$x$, $x$✅ Correct answer: The brain
After the heart restarts (ROSC), the BRAIN is vulnerable to further damage (post-cardiac arrest brain injury) from swelling, inflammation and free radicals. TARGETED TEMPERATURE MANAGEMENT (keeping temperature at 32–36 °C, and above all AVOIDING FEVER) reduces this damage and improves neurological outcome.

❌ Why the other options are wrong:
• The liver — TTM isn't mainly to protect the liver.
• The kidneys — TTM isn't mainly to protect the kidneys.
• The skin — TTM isn't to protect the skin.

⭐ Key point: After cardiac arrest, prevent fever (above 37.7 °C) for at least 72 hours, and control shivering.$x$, null),
(65, $x$Babinski's sign, when positive (upgoing toe) in an adult, suggests:$x$, $x$Upper motor neuron pathology$x$, $x$✅ Correct answer: Upper motor neuron pathology
A positive Babinski sign (the big toe goes UP and the toes fan out when the sole is stroked) in an ADULT means damage to the UPPER MOTOR NEURONE pathway (corticospinal tract): stroke, brain or spinal cord injury, tumours or raised ICP.

❌ Why the other options are wrong:
• A normal finding in all healthy adults — It is NOT normal in healthy adults (adults' toes curl down).
• No clinical significance — It is clinically significant.
• A peripheral nerve injury only — Peripheral nerve injury doesn't cause a Babinski sign.

⭐ Key point: Babinski is normal in infants under about 1–2 years, because their corticospinal tracts aren't fully myelinated.$x$, null),
(66, $x$Which of the following is a FOCAL neurological sign?$x$, $x$Hemiparesis$x$, $x$✅ Correct answer: Hemiparesis
A FOCAL neurological sign points to damage in a SPECIFIC part of the brain or nervous system. HEMIPARESIS (weakness of one side of the body) is focal: it means a lesion in the opposite side of the brain (such as a stroke). Other focal signs: unequal pupils, aphasia, visual field loss and facial droop.

❌ Why the other options are wrong:
• Vomiting — Vomiting is a general sign (raised ICP, many causes).
• Generalised drowsiness — Generalised drowsiness reflects overall brain dysfunction, not a specific site.
• Headache — Headache is a general symptom.

⭐ Key point: New focal signs in a head-injured or stroke patient need urgent CT and senior review.$x$, null),
(67, $x$Hemianaesthesia, hemianopia and sensory hemiataxia together suggest damage to the:$x$, $x$Thalamus$x$, $x$✅ Correct answer: Thalamus
The THALAMUS is the brain's sensory relay station. Damage to it (often a stroke) causes loss of sensation on the opposite side of the body (HEMIANAESTHESIA), poor coordination from loss of position sense (SENSORY HEMIATAXIA), and sometimes loss of half the visual field (HEMIANOPIA). Later, thalamic pain syndrome may develop.

❌ Why the other options are wrong:
• Substantia nigra — The substantia nigra is involved in Parkinson's disease (movement).
• Internal capsule — The internal capsule mainly causes MOTOR weakness (hemiparesis).
• Spinal cord — Spinal cord lesions don't cause hemianopia.

⭐ Key point: Thalamic pain syndrome (Dejerine–Roussy) causes severe burning pain on the affected side after a thalamic stroke.$x$, null),
(68, $x$Muscle wasting (hypotrophy) usually develops with disease of the:$x$, $x$Lower motor neuron$x$, $x$✅ Correct answer: Lower motor neuron
MUSCLE WASTING (atrophy) develops in LOWER MOTOR NEURONE disease (damage to anterior horn cells, nerve roots or peripheral nerves), because the muscle loses its nerve supply and the trophic factors that keep it healthy. Wasting is marked and appears early.

❌ Why the other options are wrong:
• Upper motor neuron — Upper motor neurone lesions cause little wasting (only mild disuse atrophy).
• Caudate nucleus — The caudate nucleus is part of the basal ganglia (movement control).
• Cerebellum — Cerebellar lesions cause incoordination, not wasting.

⭐ Key point: LMN signs: wasting, fasciculations, weakness, low tone, and reduced or absent reflexes.$x$, null),
(69, $x$After the initial assessment of a patient with suspected stroke, the next immediate step is:$x$, $x$Obtaining a non-contrast CT scan of the head$x$, $x$✅ Correct answer: Obtaining a non-contrast CT scan of the head
After initial assessment (ABC, glucose), the next immediate step in suspected stroke is an urgent NON-CONTRAST CT of the head. It distinguishes ISCHAEMIC stroke (a clot, which may be treated with thrombolysis) from HAEMORRHAGIC stroke (a bleed, where thrombolysis would be fatal). Time is brain.

❌ Why the other options are wrong:
• Obtaining a neurosurgical consultation — Neurosurgical consultation may follow if CT shows a bleed.
• Preparing for carotid Doppler ultrasonography — Carotid Doppler is done later to look for the cause.
• Administering tissue plasminogen activator — tPA (thrombolysis) can only be given AFTER CT excludes bleeding.

⭐ Key point: Thrombolysis for ischaemic stroke should be given within 4.5 hours of symptom onset, ideally within 60 minutes of arrival.$x$, null),
(70, $x$A nurse while conducting a physical examination on newly admitted patient observed that, the patient is photophobic, easily irritated by alarm sounds in the unit. The most likely condition of this patient is:$x$, $x$Meningitis$x$, $x$✅ Correct answer: Meningitis
PHOTOPHOBIA (discomfort with light) and IRRITABILITY to stimuli (such as alarm sounds) are classic signs of MENINGEAL IRRITATION, found in MENINGITIS (and subarachnoid haemorrhage). Other signs: headache, fever, neck stiffness, and positive Kernig's and Brudzinski's signs.

❌ Why the other options are wrong:
• Tetanus — Tetanus causes spasms triggered by stimuli, but not photophobia.
• Epilepsy — Epilepsy causes seizures; photophobia isn't typical between seizures.
• Severe malaria — Severe malaria can cause altered consciousness, but photophobia is typical of meningitis.

⭐ Key point: Suspected bacterial meningitis: blood cultures, IV ceftriaxone immediately, and droplet precautions.$x$, null),
(71, $x$Coma (head injury) is classified as severe when the Glasgow Coma Scale is:$x$, $x$≤8$x$, $x$✅ Correct answer: ≤8
Head injury severity by GCS: MILD 13–15, MODERATE 9–12, SEVERE 8 OR LESS. A GCS of 8 or less is severe and is also the usual threshold for intubation to protect the airway.

❌ Why the other options are wrong:
• ≤12 — 12 or less includes moderate injuries.
• ≤14 — 14 or less includes mild injuries.
• ≤10 — 10 or less isn't the standard cut-off.

⭐ Key point: "GCS 8, intubate." Protect the brain: oxygen, normal CO₂, adequate BP, head up 30°.$x$, null),
(72, $x$Cushing's triad, a late sign of raised intracranial pressure, consists of:$x$, $x$Hypertension, bradycardia, and irregular respirations$x$, $x$✅ Correct answer: Hypertension, bradycardia, and irregular respirations
Cushing's triad is a LATE sign of raised ICP and approaching brainstem herniation. It includes HYPERTENSION (with a widened pulse pressure, as the body pushes blood into the brain), BRADYCARDIA (a reflex and brainstem compression), and IRREGULAR RESPIRATIONS (pressure on the breathing centre).

❌ Why the other options are wrong:
• Normal vital signs with confusion — Normal vital signs with confusion is an early but non-specific picture.
• Hypotension, bradycardia, and regular respirations — Low BP with slow pulse and regular breathing isn't Cushing's triad.
• Hypotension, tachycardia, and tachypnoea — Low BP, fast pulse and fast breathing is shock.

⭐ Key point: Cushing's triad is a pre-terminal sign. Call for help and prepare for emergency ICP-lowering measures.$x$, null),
(73, $x$Abnormal extension (decerebrate posturing) corresponds to which motor score on the Glasgow Coma Scale?$x$, $x$2$x$, $x$✅ Correct answer: 2
In the GCS motor score, ABNORMAL EXTENSION (decerebrate posturing: arms and legs straight, arms rotated inwards, wrists flexed) scores M2. It indicates damage at the level of the BRAINSTEM (midbrain or pons) and has a worse prognosis than decorticate posturing.

❌ Why the other options are wrong:
• 4 — M4 is withdrawal from pain.
• 3 — M3 is abnormal flexion (decorticate).
• 5 — M5 is localising to pain.

⭐ Key point: A change from flexion (M3) to extension (M2) means the patient is getting worse; report it immediately.$x$, null),
(74, $x$When managing an unconscious patient, the nurse should be aware that the most significant risk associated with impaired consciousness is:$x$, $x$Aspiration$x$, $x$✅ Correct answer: Aspiration
An unconscious patient loses the protective airway reflexes (gag, cough, swallow). Saliva, vomit or feeds can then go into the lungs, causing ASPIRATION, aspiration pneumonia, or airway obstruction. This is the most significant risk, and it can kill quickly.

❌ Why the other options are wrong:
• Hypotension — Hypotension may occur but is not the most significant general risk of unconsciousness.
• Hyperglycemia — High glucose is not the main risk.
• Hypothermia — Hypothermia can occur but isn't the most significant risk.

⭐ Key point: Protect the airway: lateral (recovery) position or head-up, suction, nil by mouth, and intubate if GCS is 8 or less.$x$, null),
(75, $x$What blood pressure threshold must generally be achieved before administering IV tPA for acute ischemic stroke?$x$, $x$Less than 185/110 mmHg$x$, $x$✅ Correct answer: Less than 185/110 mmHg
Before thrombolysis with IV tPA (alteplase) for ischaemic stroke, the BP must be BELOW 185/110 mmHg, and kept below 180/105 for 24 hours afterwards. High BP greatly increases the risk of bleeding into the brain after tPA. IV labetalol or nicardipine are used to lower it.

❌ Why the other options are wrong:
• There is no blood pressure limit — There IS a BP limit for thrombolysis.
• Less than 160/100 mmHg — 160/100 is lower than the required threshold (not the standard cut-off).
• Less than 220/120 mmHg — 220/120 is the threshold for lowering BP in strokes NOT receiving tPA.

⭐ Key point: Check BP every 15 minutes during and after thrombolysis, and watch for neurological deterioration (bleeding).$x$, null),
(76, $x$Which glial cell forms tight junctions with capillary endothelial cells and contributes end-feet processes that help maintain the blood-brain barrier?$x$, $x$Astrocyte$x$, $x$✅ Correct answer: Astrocyte
ASTROCYTES are star-shaped glial cells. Their "end-feet" wrap around brain capillaries and signal the endothelial cells to form TIGHT JUNCTIONS. This creates the BLOOD–BRAIN BARRIER, which protects the brain from toxins and many drugs.

❌ Why the other options are wrong:
• Microglia — Microglia are the brain's immune cells (macrophages).
• Schwann cell — Schwann cells make myelin in the PERIPHERAL nervous system.
• Ependymal cell — Ependymal cells line the ventricles and help make CSF.

⭐ Key point: The blood–brain barrier explains why some antibiotics (and drugs) don't reach the brain well. Inflammation (meningitis) makes it leakier.$x$, null),
(77, $x$A head-injured patient has MAP 80 mmHg and ICP 25 mmHg. The cerebral perfusion pressure is:$x$, $x$55 mmHg, below target$x$, $x$✅ Correct answer: 55 mmHg, below target
Cerebral perfusion pressure (CPP) = MAP − ICP. Here: 80 − 25 = 55 mmHg. The target CPP is 60–70 mmHg, so 55 is BELOW target. The brain isn't getting enough blood. Treat by lowering ICP (head up, sedation, osmotherapy, CSF drainage) and/or raising MAP (vasopressors).

❌ Why the other options are wrong:
• 25 mmHg, at target — 25 is the ICP, not the CPP.
• 105 mmHg, above target — 105 is MAP + ICP (wrong calculation).
• 80 mmHg, at target — 80 is the MAP, not the CPP.

⭐ Key point: Keep ICP below 20–22 mmHg and CPP at 60–70 mmHg in severe brain injury.$x$, null),
(78, $x$Cushing's triad, a late sign of raised ICP, is:$x$, $x$Hypertension with wide pulse pressure, bradycardia and irregular breathing$x$, $x$✅ Correct answer: Hypertension with wide pulse pressure, bradycardia and irregular breathing
Cushing's triad, a late sign of raised ICP, consists of HYPERTENSION with a WIDE pulse pressure, BRADYCARDIA, and IRREGULAR breathing. It shows the brainstem is being compressed and herniation is imminent, so it needs immediate action.

❌ Why the other options are wrong:
• Hypotension, tachycardia and rapid shallow breathing — Low BP, fast pulse and fast breathing describe shock.
• Hypertension, tachycardia and a fever above 39 °C — High BP with fast pulse and fever doesn't fit; the pulse is SLOW in Cushing's triad.
• Hypotension, bradycardia and warm, dry, flushed skin — Low BP, slow pulse and warm dry skin describe NEUROGENIC shock.

⭐ Key point: Immediate actions: call for help, head up 30°, ensure oxygenation, short hyperventilation only for herniation, mannitol or hypertonic saline, and urgent CT or neurosurgery.$x$, null),
(79, $x$When giving mannitol for raised ICP, the nurse should withhold further doses if serum osmolality is above:$x$, $x$320 mOsm/kg$x$, $x$✅ Correct answer: 320 mOsm/kg
Mannitol draws water out of brain cells by raising serum osmolality. If the serum osmolality rises above 320 mOsm/kg, further mannitol can damage the KIDNEYS (acute kidney injury) and cause fluid and electrolyte problems, with little extra benefit. Withhold further doses at this level and consider hypertonic saline instead.

❌ Why the other options are wrong:
• 250 mOsm/kg — 250 is below normal.
• 200 mOsm/kg — 200 is very low.
• 280 mOsm/kg — 280 is normal (275–295).

⭐ Key point: When giving mannitol: check serum osmolality and sodium, monitor urine output, use a filter (crystals can form), and watch for low BP from diuresis.$x$, null),
(80, $x$In the apnoea test for brainstem death, the test is positive when no breathing occurs with PaCO₂ rising to at least:$x$, $x$60 mmHg (8 kPa), or 20 mmHg above baseline$x$, $x$✅ Correct answer: 60 mmHg (8 kPa), or 20 mmHg above baseline
In the apnoea test for brainstem death, the patient is disconnected from the ventilator (with oxygen given) to see if a high CO₂ triggers breathing. The test is positive (confirming no breathing drive) if NO breathing occurs when PaCO₂ rises to at least 60 mmHg (8 kPa), or 20 mmHg above baseline. UK guidance uses above 6.0 kPa with a rise of at least 0.5 kPa.

❌ Why the other options are wrong:
• 40 mmHg (5.3 kPa), the normal value — 40 mmHg is the normal PaCO₂ and wouldn't stimulate breathing enough to test.
• 30 mmHg (4 kPa) at any time — 30 mmHg is low.
• 100 mmHg (13 kPa) as a minimum — 100 mmHg isn't required as a minimum.

⭐ Key point: Before testing, exclude sedatives, hypothermia, and metabolic or endocrine causes. Two senior doctors perform the tests, twice.$x$, null),
(81, $x$The nurse is monitoring a patient on TPN. Which of the following is an early sign of a catheter-related blood stream infection (CRBSI)?$x$, $x$Fever and chills$x$, $x$✅ Correct answer: Fever and chills
A catheter-related bloodstream infection (CRBSI) causes FEVER and CHILLS (rigors), often when the line is flushed or the infusion is started. Patients on TPN are at high risk, because the nutrient-rich solution supports bacterial and fungal growth.

❌ Why the other options are wrong:
• Refeeding syndrome — Refeeding syndrome is a metabolic problem (low phosphate), not a sign of infection.
• Hyperglycemia — High glucose can occur with TPN and infection, but it isn't the early sign.
• Hypocalcemia — Low calcium isn't a sign of infection.

⭐ Key point: Suspected CRBSI: take blood cultures from the line and a peripheral vein, inform the doctor, and consider removing the line.$x$, null),
(82, $x$Hyperacute transplant rejection occurs within:$x$, $x$Minutes to hours$x$, $x$✅ Correct answer: Minutes to hours
HYPERACUTE rejection occurs within MINUTES to HOURS after the transplanted organ's blood supply is connected. It is caused by PRE-FORMED antibodies in the recipient (from ABO incompatibility, or previous transfusions, pregnancies or transplants) that immediately attack the organ's blood vessels, causing clotting and organ death.

❌ Why the other options are wrong:
• Months to years — Chronic rejection develops over months to years.
• 1–4 days — 1–4 days isn't the timing for hyperacute rejection.
• Days to weeks — Acute rejection develops over days to weeks.

⭐ Key point: Hyperacute rejection is prevented by cross-matching and ABO matching before transplant.$x$, null),
(83, $x$Insulin is infusing via a standard concentration of 1 unit/mL (100 units in 100 mL NS), and the order is for 6 units/hr. What rate should the pump be set to, in mL/hr?$x$, $x$6 mL/hr$x$, $x$✅ Correct answer: 6 mL/hr
At a concentration of 1 unit/mL (100 units in 100 mL), each mL contains 1 unit. So the rate in mL/hour EQUALS the dose in units/hour. For 6 units/hour, set the pump to 6 mL/hour.

❌ Why the other options are wrong:
• 16.7 mL/hr — 16.7 mL/hour comes from a calculation error (100 ÷ 6).
• 0.6 mL/hr — 0.6 mL/hour is ten times too little.
• 60 mL/hr — 60 mL/hour is ten times too much.

⭐ Key point: Formula: rate (mL/hour) = dose (units/hour) ÷ concentration (units/mL). Always double-check insulin infusions with a second nurse.$x$, null),
(84, $x$Acute adrenal (Addisonian) crisis is a life-threatening emergency best managed with immediate administration of which agent, alongside aggressive fluid resuscitation?$x$, $x$IV hydrocortisone$x$, $x$✅ Correct answer: IV hydrocortisone
In an adrenal (Addisonian) crisis, the body lacks cortisol and can't maintain BP or glucose. IV HYDROCORTISONE (100 mg immediately, then 50 mg every 6 hours or an infusion) replaces cortisol, and at high doses it also has mineralocorticoid (aldosterone-like) effects. It is given with aggressive IV 0.9% saline and dextrose.

❌ Why the other options are wrong:
• Oral fludrocortisone only — Oral fludrocortisone works too slowly and doesn't replace cortisol in a crisis.
• IV levothyroxine — Levothyroxine is for hypothyroidism.
• IV insulin — Insulin would worsen low glucose.

⭐ Key point: Give hydrocortisone immediately if adrenal crisis is suspected; don't wait for blood results.$x$, null),
(85, $x$A 35-year-old woman from the Jos Plateau presents with an anterior neck swelling that moves with swallowing. She has no systemic symptoms. What is the most likely diagnosis?$x$, $x$Simple non-toxic goitre$x$, $x$✅ Correct answer: Simple non-toxic goitre
A painless swelling in the front of the neck that MOVES WITH SWALLOWING is a THYROID swelling. Without systemic symptoms (no weight loss, palpitations, heat intolerance), the most likely diagnosis is a SIMPLE NON-TOXIC GOITRE. In Nigeria, especially the Jos Plateau and other iodine-deficient areas, IODINE DEFICIENCY is a common cause.

❌ Why the other options are wrong:
• Thyrotoxicosis — Thyrotoxicosis causes symptoms (weight loss, tremor, palpitations).
• Follicular carcinoma — Follicular carcinoma is less likely and usually presents as a nodule.
• Hashimoto's thyroiditis — Hashimoto's thyroiditis often causes hypothyroid symptoms.

⭐ Key point: Iodised salt has greatly reduced iodine-deficiency goitre. Large goitres can compress the trachea, so assess the airway before surgery.$x$, null),
(86, $x$Which laboratory test is generally considered the most sensitive initial screening test for primary thyroid dysfunction?$x$, $x$Serum TSH$x$, $x$✅ Correct answer: Serum TSH
Serum TSH (thyroid-stimulating hormone) is the most SENSITIVE initial test for primary thyroid problems. Because of the feedback loop, a small change in thyroid hormone causes a LARGE change in TSH. High TSH means hypothyroidism; low TSH means hyperthyroidism.

❌ Why the other options are wrong:
• Thyroglobulin — Thyroglobulin is used to monitor thyroid cancer.
• Total T4 — Total T4 is affected by binding proteins and is less sensitive.
• Free T3 — Free T3 is useful in some hyperthyroid cases but isn't the first test.

⭐ Key point: In critical illness, thyroid tests are often abnormal (sick euthyroid syndrome). Interpret them carefully.$x$, null),
(87, $x$Subacute (subfulminant) hepatic failure develops over a timeframe of:$x$, $x$2–12 weeks$x$, $x$✅ Correct answer: 2–12 weeks
Liver failure is classified by how quickly encephalopathy develops after jaundice: HYPERACUTE (under 1 week), ACUTE (1–4 weeks), and SUBACUTE (subfulminant), developing over about 2–12 WEEKS. Subacute failure has a worse prognosis without transplant, despite a slower onset.

❌ Why the other options are wrong:
• <2 weeks — Under 2 weeks is the fulminant (hyperacute or acute) range.
• Months to years — Months to years describes chronic liver disease.
• Decades — Decades describes long-term chronic disease.

⭐ Key point: In acute liver failure, watch for low glucose, cerebral oedema (raised ICP), bleeding and infection.$x$, null),
(88, $x$Hyperglycaemia is linked to ICU-AW because it:$x$, $x$Damages muscle and nerve tissue$x$, $x$✅ Correct answer: Damages muscle and nerve tissue
HIGH BLOOD GLUCOSE in critical illness damages the small blood vessels and the nerve and muscle cells (through oxidative stress, inflammation and impaired energy use). This contributes to critical illness polyneuropathy and myopathy, which together cause ICU-acquired weakness (ICU-AW). Good glucose control helps reduce it.

❌ Why the other options are wrong:
• Has no effect on nerves or muscle — Hyperglycaemia DOES affect nerves and muscles.
• Only affects the kidneys — It affects more than the kidneys.
• Prevents muscle wasting — It doesn't prevent wasting; it contributes to weakness.

⭐ Key point: ICU glucose target: about 6–10 mmol/L. Avoid both very high and very low glucose.$x$, null),
(89, $x$A diabetic patient on iv normal saline was discovered to have random blood sugar RBS of 2.5mmol/l, which of this action will you take as critical care Nurse?$x$, $x$Change the fluid to glucose containing fluid$x$, $x$✅ Correct answer: Change the fluid to glucose containing fluid
A blood sugar of 2.5 mmol/L is HYPOGLYCAEMIA (below 4 mmol/L), which can cause seizures, brain damage and death. Plain normal saline contains no glucose. The nurse should immediately CHANGE to (or add) a GLUCOSE-containing fluid (such as 10% dextrose 150–200 mL), recheck glucose in 10–15 minutes, and inform the doctor.

❌ Why the other options are wrong:
• Change to ringers' lactate — Ringer's lactate has no glucose and won't correct hypoglycaemia.
• Stop the fluid and wait for the Physician — Stopping the fluid and waiting wastes time.
• Send for the physician and wait for his order — Waiting for an order delays urgent treatment.

⭐ Key point: Treat hypoglycaemia promptly under protocol, then find the cause (insulin dose, missed feeds, sepsis, liver failure).$x$, null),
(90, $x$Which vascular access is generally preferred for long-term hemodialysis due to lower infection and thrombosis rates compared with other options?$x$, $x$Arteriovenous fistula$x$, $x$✅ Correct answer: Arteriovenous fistula
An ARTERIOVENOUS FISTULA (AVF) is a surgical connection between an artery and a vein (usually in the forearm). It is the PREFERRED long-term access for haemodialysis, because it uses the patient's own vessels, so it has the LOWEST rates of infection and thrombosis and lasts longest.

❌ Why the other options are wrong:
• Peripheral IV line — A peripheral IV line can't support dialysis.
• Temporary femoral catheter — A temporary femoral catheter has a HIGH infection risk.
• Tunneled central venous catheter — A tunnelled central catheter has higher infection and clotting risk than an AVF.

⭐ Key point: Protect the fistula arm: no BP measurements, no cannulas or blood tests, and check the thrill and bruit daily.$x$, null),
(91, $x$A 36 year old male patient is diagnosed with acute kidney injury. The patient is voiding 4 L/day of urine. What complication can arise based on the stage of AKI this patient is in? Select all that apply:$x$, $x$Water intoxication$x$, $x$✅ Correct answer: Water intoxication
This patient passes 4 L of urine a day: the POLYURIC (DIURETIC) PHASE of AKI. The recovering tubules can't yet concentrate urine, so large volumes of dilute urine are lost, along with sodium and potassium. If these losses are replaced with too much plain water or hypotonic fluid, WATER INTOXICATION (dilutional hyponatraemia) can result, which is the keyed answer. Dehydration and low potassium are also risks.

❌ Why the other options are wrong:
• High urine specific gravity — Urine specific gravity is LOW (dilute), not high.
• Hypotension — Hypotension can occur from dehydration, but it isn't the keyed answer.
• Hyperkalemia — Potassium tends to FALL (lost in urine), not rise, in the polyuric phase.

⭐ Key point: In the polyuric phase, monitor weight, fluid balance and electrolytes closely, and replace losses with the right fluid.$x$, null),
(92, $x$The most accurate day-to-day measure of fluid balance in a critically ill patient is:$x$, $x$Daily weight$x$, $x$✅ Correct answer: Daily weight
DAILY WEIGHT is the most accurate everyday measure of fluid balance. A change of 1 kg is roughly 1 litre of fluid gained or lost. Weigh at the same time each day, with the same scales and similar clothing or bedding (bed scales in ICU).

❌ Why the other options are wrong:
• Urine colour — Urine colour is a rough guide only.
• Thirst — Thirst is unreliable, especially in sedated or elderly patients.
• Skin turgor — Skin turgor is unreliable, especially in the elderly.

⭐ Key point: Combine daily weight with fluid balance charts, clinical examination and blood tests.$x$, null),
(93, $x$When hypocalcaemia occurs, the nurse avoids disturbing the client because:$x$, $x$Anxiety worsens spasms$x$, $x$✅ Correct answer: Anxiety worsens spasms
In HYPOCALCAEMIA, nerves and muscles become overexcitable, causing spasms, tetany, cramps and even seizures and laryngospasm. Anxiety, noise and stimulation can WORSEN the spasms (hyperventilation from anxiety also lowers ionised calcium). Keeping the patient calm and in a quiet environment reduces spasms while calcium is replaced.

❌ Why the other options are wrong:
• Pain relief is priority — Pain relief isn't the reason here.
• Movement increases bleeding — Movement doesn't cause bleeding in hypocalcaemia.
• Rest prevents infection — Rest doesn't prevent infection.

⭐ Key point: Treat symptomatic hypocalcaemia with IV calcium gluconate 10% (10–20 mL slowly), on a cardiac monitor.$x$, null),
(94, $x$Uremic pericarditis, a potential complication of untreated or inadequately dialyzed end-stage renal disease, is classically treated by:$x$, $x$Intensified or urgent dialysis$x$, $x$✅ Correct answer: Intensified or urgent dialysis
Uraemic pericarditis is inflammation of the pericardium caused by toxins (urea and others) that build up when the kidneys fail and dialysis is inadequate. It causes chest pain, a pericardial friction rub, fever, and possibly an effusion or tamponade. The treatment is INTENSIFIED or URGENT DIALYSIS, which removes the toxins.

❌ Why the other options are wrong:
• Fluid restriction only, with no change to dialysis — Fluid restriction alone doesn't remove toxins.
• Beta-blockers alone — Beta-blockers don't treat uraemic pericarditis.
• High-dose diuretics — Diuretics don't work well in end-stage kidney disease and don't remove the toxins.

⭐ Key point: Watch for tamponade (low BP, raised JVP, muffled heart sounds). Heparin during dialysis may increase bleeding into the pericardium.$x$, null),
(95, $x$The nurse is preparing to administer TPN. What is the most important nursing responsibility before starting the infusion?$x$, $x$Verifying the TPN solution with another nurse$x$, $x$✅ Correct answer: Verifying the TPN solution with another nurse
TPN is a complex, high-risk infusion (it contains glucose, amino acids, lipids, electrolytes, vitamins and trace elements). Before starting, the most important step is to VERIFY the TPN bag against the prescription (patient name, contents, rate, expiry) WITH ANOTHER NURSE. This prevents serious errors such as giving the wrong formulation.

❌ Why the other options are wrong:
• Checking the patient's blood pressure — Checking BP is routine but not the key safety step.
• Documenting the patient's height and weight — Height and weight are needed for planning but are usually already done.
• Administering a dose of insulin — Insulin isn't routinely given before TPN.

⭐ Key point: TPN safety: a dedicated central line lumen, aseptic technique, an infusion pump, a filter, a 24-hour giving set change, and regular glucose checks.$x$, null),
(96, $x$In adult DKA, the recommended fixed-rate IV insulin infusion is:$x$, $x$0.1 unit/kg/hour of soluble insulin$x$, $x$✅ Correct answer: 0.1 unit/kg/hour of soluble insulin
Adult DKA is treated with a FIXED-RATE IV insulin infusion of 0.1 units/kg/hour using SOLUBLE (short-acting) insulin. It suppresses ketone production and lowers glucose steadily. Continue the patient's usual long-acting insulin as well.

❌ Why the other options are wrong:
• 0.01 unit/kg/hour of long-acting insulin — Long-acting insulin is not used in the IV infusion.
• 10 units/hour for every patient — 10 units/hour for everyone ignores weight.
• 1 unit/kg/hour of soluble insulin — 1 unit/kg/hour is ten times too much.

⭐ Key point: Targets: ketones fall at least 0.5 mmol/L per hour, and glucose falls about 3 mmol/L per hour. Add potassium to fluids once K⁺ is below 5.5 and urine is passed.$x$, null),
(97, $x$In DKA, when blood glucose falls below 14 mmol/L, the nurse should:$x$, $x$Add 10% dextrose and continue the insulin infusion$x$, $x$✅ Correct answer: Add 10% dextrose and continue the insulin infusion
In DKA, glucose usually falls faster than ketones clear. When glucose drops below 14 mmol/L, ADD 10% DEXTROSE to prevent hypoglycaemia, and CONTINUE the insulin infusion, because insulin is still needed to clear the ketones and correct the acidosis. Continue until ketones are below 0.6 mmol/L and pH is above 7.3.

❌ Why the other options are wrong:
• Stop insulin, as the DKA has resolved — DKA hasn't resolved just because glucose is lower; ketones are still present.
• Give a 50% dextrose bolus and stop the fluids — A 50% dextrose bolus isn't needed and stopping fluids would be wrong.
• Switch to subcutaneous insulin at once — Switching to subcutaneous insulin is done only once DKA has resolved and the patient is eating.

⭐ Key point: When stopping the IV insulin, give subcutaneous insulin first and overlap by 30–60 minutes to prevent rebound DKA.$x$, null),
(98, $x$The feature that best separates hyperosmolar hyperglycaemic state (HHS) from DKA is:$x$, $x$Osmolality above 320 mOsm/kg with little or no ketosis$x$, $x$✅ Correct answer: Osmolality above 320 mOsm/kg with little or no ketosis
HHS is defined by a very high OSMOLALITY (above 320 mOsm/kg) due to extreme hyperglycaemia (often above 30 mmol/L) and dehydration, with LITTLE OR NO KETOSIS (ketones below 3 mmol/L) and no significant acidosis (pH above 7.3). It mostly affects older type 2 diabetics and develops over days.

❌ Why the other options are wrong:
• pH below 7.0 with a very high anion gap — pH below 7.0 with a very high anion gap describes severe DKA.
• Rapid onset over 1–2 hours in young people — Rapid onset in young people describes DKA.
• Blood glucose below 11 mmol/L with high ketones — Glucose below 11 with high ketones describes euglycaemic DKA.

⭐ Key point: In HHS, fluids come first (and alone often lower glucose). Lower glucose slowly, and watch for clots and cerebral oedema.$x$, null),
(99, $x$By KDIGO criteria, AKI stage 3 includes urine output below 0.3 mL/kg/h for 24 hours or:$x$, $x$Serum creatinine 3 times the baseline$x$, $x$✅ Correct answer: Serum creatinine 3 times the baseline
KDIGO Stage 3 AKI includes ANY of: serum CREATININE 3 TIMES baseline (or at least 354 µmol/L), urine output below 0.3 mL/kg/hour for 24 hours or more, ANURIA for 12 hours or more, or starting renal replacement therapy.

❌ Why the other options are wrong:
• Serum creatinine 1.2 times the baseline — Creatinine 1.2 times baseline doesn't meet even Stage 1 (which is 1.5 times).
• Urine output 0.5 mL/kg/h for 6 hours — 0.5 mL/kg/hour for 6 hours is Stage 1.
• A single raised urea level — A single raised urea isn't a KDIGO criterion.

⭐ Key point: Stage 1: creatinine 1.5–1.9 times; Stage 2: 2.0–2.9 times; Stage 3: 3 times or more.$x$, null),
(100, $x$Which is an urgent indication for renal replacement therapy in AKI?$x$, $x$Refractory hyperkalaemia despite medical treatment$x$, $x$✅ Correct answer: Refractory hyperkalaemia despite medical treatment
Urgent dialysis (renal replacement therapy) is indicated for complications that can't be controlled medically. REFRACTORY HYPERKALAEMIA despite treatment is a classic urgent indication, because it can cause fatal arrhythmias. Remember AEIOU: Acidosis, Electrolytes (K⁺), Intoxication, Overload, Uraemic complications.

❌ Why the other options are wrong:
• Urea of 9 mmol/L on admission — A urea of 9 mmol/L is only mildly raised.
• Mild metabolic acidosis with pH 7.33 — Mild acidosis (pH 7.33) can be managed medically.
• Creatinine rising slowly with good urine output — Slowly rising creatinine with good urine output doesn't need urgent dialysis.

⭐ Key point: Uraemic complications that need dialysis: pericarditis, encephalopathy and bleeding.$x$, null),
(101, $x$The basal metabolic rate (BMR) in a major burns patient can increase by:$x$, $x$100–200%$x$, $x$✅ Correct answer: 100–200%
A major burn triggers a massive stress response (catecholamines, cortisol, inflammation), and heat and fluid are lost through the burn wound. The basal metabolic rate rises by 100–200% (the body may need double or triple its normal energy), and this can last for months. Muscle protein is broken down rapidly.

❌ Why the other options are wrong:
• 500–600% — 500–600% is far higher than seen in burns.
• No change — There IS a large change.
• 10–20% — 10–20% is the rise seen after minor surgery, not major burns.

⭐ Key point: Burns patients need early enteral feeding, high protein (1.5–2 g/kg/day), a warm room (28–32 °C) and sometimes drugs (propranolol, oxandrolone) to reduce hypermetabolism.$x$, null),
(102, $x$Effective disaster response coordination between a hospital and emergency medical services primarily requires:$x$, $x$Clear communication, pre-established protocols, and a defined command structure$x$, $x$✅ Correct answer: Clear communication, pre-established protocols, and a defined command structure
In a disaster, many agencies (hospital, ambulance service, fire service, police) must work together. This needs CLEAR COMMUNICATION channels, PRE-ESTABLISHED PROTOCOLS (a hospital major incident plan, practised in drills), and a defined COMMAND STRUCTURE (an incident commander, clear roles). Without these, there is chaos, duplication and lost patients.

❌ Why the other options are wrong:
• Each agency working entirely independently with no communication — Agencies working alone without communication leads to confusion.
• No advance planning, since disasters are unpredictable — Disasters ARE planned for in advance (risk assessment, drills).
• Only the hospital's decisions being followed, regardless of on-scene conditions — Hospital decisions must take account of on-scene conditions reported by ambulance teams.

⭐ Key point: Hospital major incident plan: activation, command and control, communication, triage, surge capacity (extra beds and staff), and recovery.$x$, null),
(103, $x$The single most important management strategy for ICU-Acquired Weakness is:$x$, $x$Early mobilisation$x$, $x$✅ Correct answer: Early mobilisation
ICU-acquired weakness comes from muscle wasting and nerve damage caused by critical illness and IMMOBILITY. EARLY MOBILISATION (passive then active exercises, sitting, standing, walking as soon as safe) is the single most effective strategy to prevent and treat it. It also reduces delirium and ventilator days.

❌ Why the other options are wrong:
• Heavy sedation — Heavy sedation increases immobility and weakness.
• Strict immobilisation of all joints — Strict immobilisation causes weakness and contractures.
• Prolonged bed rest — Prolonged bed rest makes weakness worse.

⭐ Key point: Also: minimise sedation, control glucose, avoid prolonged neuromuscular blockers and steroids where possible, and give good nutrition.$x$, null),
(104, $x$Supraglottic inhalational injury is primarily caused by:$x$, $x$Heat$x$, $x$✅ Correct answer: Heat
Supraglottic (upper airway, above the vocal cords) inhalation injury is caused mainly by HEAT (hot air, steam, flames). The heat burns the mouth, pharynx and larynx, causing rapid SWELLING that can block the airway within hours. Lower airway injury (below the cords) is mainly caused by chemicals in smoke, because the upper airway cools hot air before it reaches the lungs (except steam).

❌ Why the other options are wrong:
• Carbon monoxide only — Carbon monoxide causes poisoning of the blood (it binds haemoglobin), not upper airway burns.
• Chemical irritants only — Chemical irritants mainly injure the LOWER airways.
• Bacterial infection — Infection is a later complication, not the cause.

⭐ Key point: Signs of upper airway burn: facial burns, singed nasal hairs, soot in the mouth, hoarseness and stridor. Intubate early before swelling closes the airway.$x$, null),
(105, $x$A 20 year male presented to ER with motor bike accident. The Nurse is performing initial assessment of the patient in triage and finds out that the patient has delayed capillary refill, Cool, Moist skin, Decreasing blood pressure and increasing heart rate. What is the suspected medical diagnose of this patient?$x$, $x$Shock$x$, $x$✅ Correct answer: Shock
This patient has signs of poor tissue perfusion: delayed capillary refill, cool and moist (clammy) skin, falling BP and a rising heart rate. Together, these describe SHOCK (circulatory failure). After a motorbike crash, it is most likely hypovolaemic (haemorrhagic) shock from bleeding.

❌ Why the other options are wrong:
• Hypotension — Hypotension is one sign, not the full clinical diagnosis.
• Hemorrhage — Haemorrhage is the likely CAUSE, but the clinical state described is shock.
• Acute Renal Failure(ARF) — Acute renal failure isn't diagnosed from these findings (it may follow shock).

⭐ Key point: Shock = inadequate tissue perfusion. Look for bleeding: "on the floor and four more" (chest, abdomen, pelvis, long bones).$x$, null),
(106, $x$Compartment syndrome following an electrical burn is treated with:$x$, $x$Fasciotomy$x$, $x$✅ Correct answer: Fasciotomy
Electrical burns cause deep damage to muscles along the current's path, with severe swelling inside the tight muscle compartments (fascia). This raises the pressure, cutting off blood flow (compartment syndrome). The treatment is FASCIOTOMY: surgically cutting the fascia to release the pressure and save the muscle and limb.

❌ Why the other options are wrong:
• Compression bandaging — Compression bandaging INCREASES compartment pressure.
• Amputation immediately — Amputation is a last resort for dead limbs, not the first treatment.
• Ice packs only — Ice packs don't relieve compartment pressure.

⭐ Key point: Signs of compartment syndrome: pain out of proportion, pain on passive stretch, tense swelling, numbness, and late loss of pulses.$x$, null),
(107, $x$Using the Rule of Nines, each entire upper limb of an adult represents approximately what percentage of total body surface area?$x$, $x$9%$x$, $x$✅ Correct answer: 9%
In the adult Rule of Nines, each ENTIRE upper limb (arm) is 9% of total body surface area. Other areas: head and neck 9%, front of trunk 18%, back of trunk 18%, each leg 18%, perineum 1%. Total = 100%.

❌ Why the other options are wrong:
• 18% — 18% is the value for each whole leg, or the front or back of the trunk.
• 36% — 36% is the value for both legs, or the whole trunk.
• 4.5% — 4.5% is the value for the front OR back of one arm.

⭐ Key point: For small or scattered burns, the patient's PALM (with fingers) is about 1% of their TBSA. Children have relatively bigger heads (use the Lund–Browder chart).$x$, null),
(108, $x$A nurse is teaching a family about the classification of burns. A third-degree burn is also known as a:$x$, $x$Full-thickness burn$x$, $x$✅ Correct answer: Full-thickness burn
A THIRD-DEGREE burn is a FULL-THICKNESS burn: it destroys ALL layers of the skin (epidermis and dermis) and may reach the fat below. The skin looks white, leathery, brown or charred, and is PAINLESS (nerve endings are destroyed). It usually needs skin grafting.

❌ Why the other options are wrong:
• Superficial partial-thickness burn — A superficial partial-thickness burn is second-degree (painful, blistered).
• Partial-thickness burn — A partial-thickness burn is second-degree.
• Superficial burn — A superficial burn is first-degree.

⭐ Key point: Burn depth: first-degree (superficial, red, painful), second-degree (partial thickness, blisters), third-degree (full thickness, painless, leathery), fourth-degree (into muscle and bone).$x$, null),
(109, $x$A nurse is assessing the depth of a burn. A burn that is characterized by redness and pain but no blisters is a:$x$, $x$First-degree burn$x$, $x$✅ Correct answer: First-degree burn
A FIRST-DEGREE (superficial) burn involves ONLY the epidermis. The skin is RED and PAINFUL but has NO BLISTERS (like mild sunburn). It blanches when pressed and heals in 3–7 days without scarring. It is NOT counted in TBSA for fluid resuscitation.

❌ Why the other options are wrong:
• Fourth-degree burn — A fourth-degree burn extends to muscle and bone.
• Third-degree burn — A third-degree burn is full thickness, white or charred, and painless.
• Second-degree burn — A second-degree burn has BLISTERS.

⭐ Key point: Only partial and full-thickness burns are counted in TBSA for the Parkland formula.$x$, null),
(110, $x$A trauma patient with a systolic blood pressure of 85mmHg, heart rate 128, and cool clammy skin after a motor vehicle accident is most likely in which type of shock?$x$, $x$Hypovolaemic shock$x$, $x$✅ Correct answer: Hypovolaemic shock
After trauma, a low BP (systolic 85), fast heart rate (128), and COOL, CLAMMY skin indicate HYPOVOLAEMIC shock, most likely from blood loss. The body tightens blood vessels to protect vital organs (cool skin) and speeds the heart to compensate.

❌ Why the other options are wrong:
• Anaphylactic shock — Anaphylactic shock follows an allergen, with warm, flushed skin, rash and wheeze.
• Cardiogenic shock — Cardiogenic shock follows heart failure or MI, with pulmonary oedema.
• Neurogenic shock — Neurogenic shock (spinal injury) has SLOW pulse and WARM skin.

⭐ Key point: Treat haemorrhagic shock: control bleeding, give blood products early, tranexamic acid within 3 hours, and keep the patient warm.$x$, null),
(111, $x$In a disaster triage system, a casualty who is breathing normally, has a normal pulse, and can follow simple commands, but has a significant injury that will need treatment, is typically categorised as:$x$, $x$Delayed (yellow)$x$, $x$✅ Correct answer: Delayed (yellow)
In disaster triage, DELAYED (YELLOW) patients have serious injuries that need treatment but are STABLE enough to wait a while: breathing normally, a normal pulse and able to follow commands. Example: a fractured femur with stable vital signs.

❌ Why the other options are wrong:
• Immediate (red) — IMMEDIATE (RED) patients have life-threatening problems needing treatment now (airway compromise, shock).
• Deceased (black) — BLACK means dead or expected to die (unsurvivable injuries).
• Minor (green) — MINOR (GREEN) patients are the "walking wounded" with small injuries.

⭐ Key point: START triage: can walk → green; not breathing after the airway is opened → black; breathing over 30/min, capillary refill over 2 s, or can't obey commands → red; otherwise → yellow.$x$, null),
(112, $x$A patient has total burns to the groin, anterior trunk and the the left upper limb. Using the Wallace rules of nine, the TBSAB is?$x$, $x$36%$x$, $x$✅ Correct answer: 28%
Add up the areas using the Rule of Nines. GROIN (perineum and genitalia) = 1%. ANTERIOR (front) TRUNK = 18%. LEFT UPPER LIMB (whole arm) = 9%. Total = 1 + 18 + 9 = 28% TBSA. (The old answer key said 36%, which does not match the Rule of Nines; it has been corrected to 28%.)

❌ Why the other options are wrong:
• 36% — 36% would be the whole trunk (front and back) or both legs, not this combination.
• 29% — 29% comes from a miscount (such as counting the groin as 2%).
• 27% — 27% leaves out the groin (1%).

⭐ Key point: Rule of Nines: head 9, each arm 9, front trunk 18, back trunk 18, each leg 18, perineum 1.$x$, $x$28%$x$),
(113, $x$In ICU monitoring, which principle is emphasised as more important than a single reading?$x$, $x$Trends over time$x$, $x$✅ Correct answer: Trends over time
In ICU, the TREND of a value over time (rising, falling, stable) is more important than a single reading. A single number can be affected by errors (a loose probe, patient movement, wrong levelling) or short-term changes. A gradual rise in heart rate or fall in urine output over hours may show early deterioration before any single value looks alarming.

❌ Why the other options are wrong:
• Only the lowest recorded value — The lowest value alone doesn't show the pattern.
• The most recent value alone — The most recent value alone may be misleading.
• Only the highest recorded value — The highest value alone doesn't show the pattern.

⭐ Key point: Chart vital signs on flowcharts or graphs to see trends, and use early warning scores (NEWS2).$x$, null),
(114, $x$A nurse is performing initial emergency care for a burn patient. The first priority is to:$x$, $x$Stop the burning process$x$, $x$✅ Correct answer: Stop the burning process
The FIRST priority in burn care is to STOP THE BURNING PROCESS: remove the person from the source, put out flames ("stop, drop and roll"), remove burned or hot clothing and jewellery, switch off the electricity for electrical burns, and COOL the burn with cool running water for 20 minutes (within 3 hours of injury). This stops further tissue damage.

❌ Why the other options are wrong:
• Cover the burned area with a dry sterile dressing — Covering the wound comes after stopping the burn and cooling.
• Administer pain medication — Pain relief is important but comes after stopping the burn.
• Start fluid resuscitation — Fluid resuscitation comes after first aid and assessment.

⭐ Key point: After stopping the burn: ABCDE assessment, oxygen (smoke inhalation), estimate TBSA, start fluids, give analgesia, and cover with cling film.$x$, null),
(115, $x$A patient with a severe burn is at high risk for which of the following complications in the first 24 hours?$x$, $x$Hypovolemic shock$x$, $x$✅ Correct answer: Hypovolemic shock
In the first 24–48 hours after a major burn, damaged capillaries become LEAKY, and large amounts of fluid and protein move from the blood vessels into the tissues (burn oedema). Fluid is also lost through the burn wound. The blood volume falls, causing HYPOVOLAEMIC (burn) SHOCK unless fluids are replaced quickly.

❌ Why the other options are wrong:
• Hypertension — Hypertension isn't typical early on; BP tends to FALL.
• Fluid volume excess — Fluid excess comes later (when fluid moves back into the vessels after 48–72 hours), or from over-resuscitation.
• Hyperglycemia — Hyperglycaemia can occur (stress) but isn't the main early risk.

⭐ Key point: Parkland formula: 4 mL × weight (kg) × % TBSA of Hartmann's in 24 hours; half in the first 8 hours from the time of the burn. Target urine output of 0.5 mL/kg/hour.$x$, null),
(116, $x$Front of trunk (chest + abdomen) accounts for what percentage of TBSA under the Rule of Nines?$x$, $x$18%$x$, $x$✅ Correct answer: 18%
In the Rule of Nines, the FRONT of the TRUNK (chest and abdomen) is 18% of TBSA (2 × 9%). The BACK of the trunk is also 18%. So the whole trunk is 36%.

❌ Why the other options are wrong:
• 27% — 27% isn't a standard Rule of Nines area.
• 9% — 9% is the head, or one arm.
• 36% — 36% is the WHOLE trunk (front and back).

⭐ Key point: Rule of Nines adds to 100%: head 9, arms 9 + 9, front trunk 18, back trunk 18, legs 18 + 18, perineum 1.$x$, null),
(117, $x$The Surviving Sepsis hour-1 bundle includes:$x$, $x$Lactate, blood cultures before antibiotics, then broad-spectrum antibiotics$x$, $x$✅ Correct answer: Lactate, blood cultures before antibiotics, then broad-spectrum antibiotics
The Surviving Sepsis "Hour-1 bundle" includes: 1) measure LACTATE, 2) take BLOOD CULTURES BEFORE ANTIBIOTICS, 3) give BROAD-SPECTRUM ANTIBIOTICS, 4) give 30 mL/kg crystalloid for low BP or lactate of 4 or more, 5) start vasopressors if MAP stays below 65. All should start within the first hour.

❌ Why the other options are wrong:
• IV steroids for all patients before blood cultures — Steroids are not given to all sepsis patients before cultures.
• A CT scan before any fluids or antibiotics are given — A CT scan before fluids and antibiotics delays life-saving treatment.
• Antibiotics only after the culture results come back — Waiting for culture results (48–72 hours) delays antibiotics dangerously.

⭐ Key point: Every hour's delay in antibiotics for septic shock increases death. Never delay antibiotics for tests.$x$, null),
(118, $x$By Sepsis-3, septic shock is sepsis needing vasopressors to keep MAP ≥65 mmHg and:$x$, $x$Lactate above 2 mmol/L despite adequate fluids$x$, $x$✅ Correct answer: Lactate above 2 mmol/L despite adequate fluids
Sepsis-3 defines SEPTIC SHOCK as sepsis needing VASOPRESSORS to keep MAP at 65 mmHg or above AND a serum LACTATE ABOVE 2 mmol/L, despite adequate fluid resuscitation. These patients have a hospital death rate above 40%.

❌ Why the other options are wrong:
• A white cell count above 12 × 10⁹/L on admission — A high white cell count isn't part of the septic shock definition.
• A positive blood culture result from the lab — A positive blood culture isn't required (many septic patients have negative cultures).
• A temperature above 38 °C for over an hour — Fever isn't part of the definition.

⭐ Key point: Sepsis (Sepsis-3) = infection + organ dysfunction (a rise in SOFA score of 2 or more).$x$, null),
(119, $x$The qSOFA criteria are respiratory rate ≥22/min, altered mentation and:$x$, $x$Systolic BP ≤100 mmHg$x$, $x$✅ Correct answer: Systolic BP ≤100 mmHg
qSOFA (quick SOFA) has three bedside criteria for patients with suspected infection outside ICU: respiratory rate of 22/min or more, altered mental state (GCS below 15), and SYSTOLIC BP of 100 mmHg OR LESS. Two or more criteria suggest a higher risk of death.

❌ Why the other options are wrong:
• Urine output ≤0.5 mL/kg/h — Urine output isn't part of qSOFA.
• Temperature ≥38 °C — Temperature isn't part of qSOFA.
• Heart rate ≥90/min — Heart rate isn't part of qSOFA.

⭐ Key point: qSOFA = "HAT": Hypotension (SBP 100 or less), Altered mentation, Tachypnoea (RR 22 or more). It is a warning tool, not a diagnosis.$x$, null),
(120, $x$In a major haemorrhage protocol, tranexamic acid works best when given:$x$, $x$Within 3 hours of injury$x$, $x$✅ Correct answer: Within 3 hours of injury
Tranexamic acid (TXA) stops clots being broken down too early (an antifibrinolytic). In trauma and PPH, it reduces deaths from bleeding when given EARLY, within 3 HOURS of injury (1 g IV over 10 minutes, then 1 g over 8 hours). Given after 3 hours, it doesn't help and may cause harm.

❌ Why the other options are wrong:
• Only to children — TXA is used in adults and children.
• After bleeding has stopped — After the bleeding has stopped, it isn't needed.
• Only after 24 hours — After 24 hours, it is too late.

⭐ Key point: Major haemorrhage protocol: TXA early, blood products in balanced ratios (red cells : FFP : platelets ≈ 1:1:1), warming, and stopping the bleeding.$x$, null),
(121, $x$A pregnant patient with severe hyperemesis gravidarum is at risk of thiamine deficiency, which can cause:$x$, $x$Wernicke's encephalopathy$x$, $x$✅ Correct answer: Wernicke's encephalopathy
In hyperemesis gravidarum, prolonged vomiting and poor intake use up thiamine (vitamin B1). This can cause WERNICKE'S ENCEPHALOPATHY: confusion, ataxia (unsteady walking) and eye movement problems (nystagmus). Giving IV glucose without thiamine can trigger or worsen it.

❌ Why the other options are wrong:
• No neurological consequences — Thiamine deficiency DOES have neurological effects.
• Only mild fatigue with no other risk — It's more than mild fatigue; it can cause permanent brain damage.
• Improved neurological function — It worsens, not improves, neurological function.

⭐ Key point: Give thiamine before or with IV dextrose in women with prolonged vomiting.$x$, null),
(122, $x$In DIC, fibrinogen levels are typically:$x$, $x$Decreased$x$, $x$✅ Correct answer: Decreased
In DIC, widespread clotting uses up clotting factors, including FIBRINOGEN, faster than the liver can make them. So fibrinogen levels FALL (below 1.5 g/L is significant). Low fibrinogen, with low platelets, long PT and APTT, and high D-dimer, confirms DIC.

❌ Why the other options are wrong:
• Not measurable — Fibrinogen is measurable.
• Increased — In DIC fibrinogen falls (it rises in inflammation and pregnancy).
• Unchanged — It changes in DIC; it falls.

⭐ Key point: Replace fibrinogen with CRYOPRECIPITATE (or fibrinogen concentrate) if it's below 1.5 g/L with bleeding.$x$, null),
(123, $x$The purpose of performing an EBT in a severely jaundiced baby is to urgently reduce the blood level of unconjugated bilirubin so as to prevent$x$, $x$Brain damage$x$, $x$✅ Correct answer: Brain damage
An exchange blood transfusion (EBT) quickly removes the baby's blood, which is high in unconjugated bilirubin (and antibodies in haemolytic disease), and replaces it with donor blood. Very high unconjugated bilirubin can cross into the brain and cause KERNICTERUS (bilirubin encephalopathy): BRAIN DAMAGE causing deafness, cerebral palsy and learning disability.

❌ Why the other options are wrong:
• Unconjugated bilirubin — "Unconjugated bilirubin" is what the EBT removes; it's not the harm being prevented.
• Asphyxia — Asphyxia isn't caused by bilirubin.
• Febrile illness — Fever isn't caused by bilirubin.

⭐ Key point: Signs of acute bilirubin encephalopathy: lethargy, poor feeding, high-pitched cry, arching (opisthotonus) and seizures.$x$, null),
(124, $x$What proportion of maternal deaths are estimated to occur in the postpartum period?$x$, $x$40%$x$, $x$✅ Correct answer: 40%
About 40% (and in some estimates more than half) of maternal deaths occur in the POSTPARTUM period, especially the first 24 hours after birth (PPH, pre-eclampsia, infection, embolism). This highlights the need for close monitoring after delivery.

❌ Why the other options are wrong:
• 100% — 100% is incorrect; deaths also occur in pregnancy and labour.
• 5% — 5% underestimates the postpartum risk.
• 75% — 75% overestimates the figure used in this question.

⭐ Key point: Monitor closely after birth: vital signs, uterine tone, blood loss, and BP (pre-eclampsia can appear postpartum). Use MEOWS.$x$, null),
(125, $x$Oxygen saturation of 95-100% in room air Conscious and easily arausable good muscle tone, respiration 30-60 is average 40 describes$x$, $x$A healthy baby$x$, $x$✅ Correct answer: A healthy baby
A healthy newborn has SpO₂ of 95–100% in room air (after the first minutes), is CONSCIOUS and easily rousable, has GOOD MUSCLE TONE, and breathes 30–60 times per minute (average about 40). These findings describe a HEALTHY baby.

❌ Why the other options are wrong:
• A sick neonate — A sick neonate shows poor tone, abnormal breathing, low SpO₂ or lethargy.
• An apnoeic baby — An apnoeic baby isn't breathing.
• An asphyxiated baby — An asphyxiated baby is floppy, blue or pale, with poor breathing.

⭐ Key point: Newborn normal values: HR 110–160, RR 30–60 (some use 40–60), temperature 36.5–37.5 °C, SpO₂ 95% or above after 10 minutes.$x$, null),
(126, $x$A 25 years old para 4, was seen in the clinic with the diagnosis of mastitis. what feeding advice will nurse Iyabo give?$x$, $x$Continue breastfeeding$x$, $x$✅ Correct answer: Continue breastfeeding
Mastitis is inflammation (sometimes infection) of the breast, often from milk stasis (a blocked duct or poor drainage). The best advice is to CONTINUE BREASTFEEDING (or expressing) from the affected breast. Emptying the breast removes the stagnant milk and speeds recovery. The milk is safe for the baby. Antibiotics may be needed if it doesn't improve.

❌ Why the other options are wrong:
• Wean the baby — Weaning the baby causes more milk stasis and can lead to an abscess.
• Feed the baby with express breast milk — Expressed breast milk works, but feeding directly is preferred.
• Give infant formula — Infant formula is unnecessary and reduces milk supply.

⭐ Key point: Also advise: rest, fluids, warm compresses before feeds, a good latch, pain relief (paracetamol, ibuprofen), and antibiotics if not better in 12–24 hours.$x$, null),
(127, $x$Corticosteroids are given to a mother whose delivery is planned before 37 weeks to:$x$, $x$Help the baby's lungs mature$x$, $x$✅ Correct answer: Help the baby's lungs mature
Antenatal corticosteroids (dexamethasone or betamethasone, two doses 12–24 hours apart) are given to mothers likely to deliver preterm (usually before 34–35 weeks, and in some cases up to 37 weeks). They cross the placenta and speed up the maturation of the baby's LUNGS (surfactant production), reducing respiratory distress syndrome, brain bleeds and deaths.

❌ Why the other options are wrong:
• Prepare the cervix for delivery — They don't prepare the cervix (prostaglandins do).
• Prevent maternal fits — Magnesium sulphate prevents fits.
• Keep the mother calm — Steroids don't calm the mother.

⭐ Key point: Steroids work best when given 24 hours to 7 days before delivery.$x$, null),
(128, $x$This condition describe a birth defect where some nerve cells are missing in the large intestine:$x$, $x$Hirsh sprung disease$x$, $x$✅ Correct answer: Hirsh sprung disease
HIRSCHSPRUNG'S DISEASE is a birth defect where nerve cells (ganglion cells) are MISSING in part of the large intestine (usually the rectum and sigmoid colon). Without nerves, that segment can't relax and push stool along, causing constipation, distension, vomiting, and delayed passage of meconium (beyond 48 hours).

❌ Why the other options are wrong:
• Appendicitis — Appendicitis is inflammation of the appendix.
• Birth stenosis — "Birth stenosis" isn't a recognised condition.
• Pyloric Hirsh sprung — "Pyloric Hirschsprung" isn't a real term (pyloric stenosis is a different condition).

⭐ Key point: Diagnosed by rectal biopsy (no ganglion cells). Treated with a pull-through operation.$x$, null),
(129, $x$Using the Holliday-Segar method, what is the daily maintenance IV fluid requirement for a 22 kg child?$x$, $x$1540 mL/day$x$, $x$✅ Correct answer: 1540 mL/day
Holliday–Segar method for daily maintenance fluid: first 10 kg = 100 mL/kg (1000 mL); next 10 kg = 50 mL/kg (500 mL); each kg above 20 = 20 mL/kg. For 22 kg: 1000 + 500 + (2 × 20 = 40) = 1540 mL/day.

❌ Why the other options are wrong:
• 1000 mL/day — 1000 mL/day covers only the first 10 kg.
• 1100 mL/day — 1100 mL/day is a miscalculation.
• 2200 mL/day — 2200 mL/day comes from using 100 mL/kg for the whole weight.

⭐ Key point: Hourly version (4-2-1 rule): 4 mL/kg/hour for the first 10 kg, 2 mL/kg/hour for the next 10 kg, 1 mL/kg/hour above 20 kg. For 22 kg: 40 + 20 + 2 = 62 mL/hour.$x$, null),
(130, $x$Vaginal bleeding after 28 weeks of pregnancy which is sudden in onset, painless, causeless and recurrent is known as.$x$, $x$Placenta praevia$x$, $x$✅ Correct answer: Placenta praevia
PLACENTA PRAEVIA is when the placenta lies low in the uterus, over or near the cervix. In the third trimester, as the lower uterus stretches, the placenta separates and bleeds. The classic bleeding is SUDDEN, PAINLESS, CAUSELESS (no trigger), and RECURRENT, usually bright red, after 28 weeks.

❌ Why the other options are wrong:
• Abortion — Abortion (miscarriage) occurs before 28 weeks (before viability in many definitions).
• Vasa praevia — Vasa praevia causes bleeding when the membranes rupture, with fetal distress.
• Abruption placentae — Abruptio placentae causes PAINFUL bleeding with a tense, tender uterus.

⭐ Key point: In suspected placenta praevia, NEVER do a vaginal examination. Confirm with ultrasound.$x$, null),
(131, $x$Among the 4 Ts of PPH, 'Tissue' refers to:$x$, $x$Retained placental tissue$x$, $x$✅ Correct answer: Retained placental tissue
The 4 Ts of PPH: TONE (soft uterus), TRAUMA (tears), TISSUE (retained placenta or membranes), and THROMBIN (clotting problems). "TISSUE" refers to RETAINED PLACENTAL TISSUE or membranes inside the uterus, which stop it from contracting fully and cause bleeding.

❌ Why the other options are wrong:
• Uterine muscle tone — Uterine muscle tone is "TONE".
• Clotting factor deficiency — Clotting factor deficiency is "THROMBIN".
• Genital tract lacerations — Genital tract tears are "TRAUMA".

⭐ Key point: Check the placenta and membranes are complete after every delivery. Retained tissue needs manual removal or evacuation.$x$, null),
(132, $x$Foetal complications occurs in Eclampsia as a result of$x$, $x$Placenta hypo-perfusion$x$, $x$✅ Correct answer: Placenta hypo-perfusion
In eclampsia (and pre-eclampsia), the blood vessels of the PLACENTA are narrowed and damaged, reducing blood flow to the placenta (PLACENTAL HYPOPERFUSION). Less oxygen and nutrients reach the baby, causing growth restriction (IUGR), fetal distress, placental abruption, preterm birth and stillbirth.

❌ Why the other options are wrong:
• Placenta pigmentation — "Placental pigmentation" isn't the mechanism.
• Placental bleeding — Placental bleeding (abruption) can occur, but the main cause of fetal problems is poor perfusion.
• Placenta hyper perfusion — Placental HYPER-perfusion doesn't occur in eclampsia.

⭐ Key point: Monitor the fetus with CTG and growth scans in pre-eclampsia. Delivery is the definitive treatment.$x$, null),
(133, $x$In eclampsia, the Zuspan regimen of magnesium sulfate is:$x$, $x$4 g IV loading dose over 5–20 min, then 1 g/hour$x$, $x$✅ Correct answer: 4 g IV loading dose over 5–20 min, then 1 g/hour
The ZUSPAN regimen of magnesium sulphate (IV): a LOADING DOSE of 4 g IV over 5–20 minutes, then a MAINTENANCE infusion of 1 g per hour, continued for 24 hours after delivery or the last seizure. The Pritchard regimen uses IM injections instead.

❌ Why the other options are wrong:
• 0.5 g orally every 8 hours — 0.5 g orally isn't used for eclampsia.
• 10 g IV push in one minute, then nothing — A 10 g IV push in one minute would cause dangerous toxicity.
• 1 g IM once daily for 3 days — 1 g IM once daily is far too little.

⭐ Key point: Pritchard regimen: 4 g IV plus 10 g IM (5 g in each buttock), then 5 g IM every 4 hours.$x$, null),
(134, $x$The first clinical sign of magnesium toxicity is usually:$x$, $x$Loss of patellar (knee) reflexes$x$, $x$✅ Correct answer: Loss of patellar (knee) reflexes
As magnesium levels rise, signs of toxicity appear in order: LOSS of the PATELLAR (knee) REFLEX is usually first (at about 4–5 mmol/L), then respiratory depression (about 6–7.5 mmol/L), then cardiac arrest (above 12 mmol/L). Checking knee reflexes hourly detects toxicity early.

❌ Why the other options are wrong:
• Excess urine output — Toxicity reduces urine output; magnesium itself doesn't cause excess urine.
• Hypertension and tachycardia — Toxicity causes LOW BP and SLOW heart rate.
• Dilated reactive pupils — Pupils aren't typically dilated as the first sign.

⭐ Key point: If knee reflexes are absent, stop the magnesium infusion and check the magnesium level. (Use biceps reflexes if an epidural blocks the legs.)$x$, null),
(135, $x$The antidote for magnesium sulfate toxicity is:$x$, $x$10 mL of 10% calcium gluconate IV over 10 minutes$x$, $x$✅ Correct answer: 10 mL of 10% calcium gluconate IV over 10 minutes
CALCIUM GLUCONATE reverses magnesium toxicity, because calcium competes with magnesium at the nerve and muscle membranes. The dose is 10 mL of 10% calcium gluconate (1 g) IV slowly over 10 minutes. Stop the magnesium infusion and support breathing (oxygen, ventilation if needed).

❌ Why the other options are wrong:
• IV potassium chloride 20 mmol over 10 minutes — Potassium chloride doesn't reverse magnesium toxicity.
• IV sodium bicarbonate 50 mmol over 10 minutes — Sodium bicarbonate doesn't reverse it.
• IV naloxone 0.4 mg repeated every 2 minutes — Naloxone reverses opioids, not magnesium.

⭐ Key point: Keep calcium gluconate at the bedside whenever magnesium sulphate is running.$x$, null),
(136, $x$A woman on MgSO₄ has RR 10/min and urine output 15 mL/h. The nurse should:$x$, $x$Stop the infusion and inform the doctor$x$, $x$✅ Correct answer: Stop the infusion and inform the doctor
A respiratory rate of 10/min (below 12) shows RESPIRATORY DEPRESSION from magnesium toxicity. Urine output of 15 mL/hour (below 25–30) shows that magnesium (cleared by the kidneys) will build up further. The nurse should STOP the infusion immediately, INFORM the doctor, check reflexes and the magnesium level, and be ready to give calcium gluconate.

❌ Why the other options are wrong:
• Increase the infusion rate — Increasing the infusion would worsen toxicity.
• Give oral fluids and continue — Oral fluids and continuing are unsafe.
• Record only and recheck tomorrow — Recording and rechecking tomorrow could be fatal.

⭐ Key point: Hold magnesium if: RR below 12, urine output below 25–30 mL/hour, or reflexes are absent.$x$, null),
(137, $x$The first-line drug for preventing and treating postpartum haemorrhage is:$x$, $x$Oxytocin$x$, $x$✅ Correct answer: Oxytocin
OXYTOCIN (10 units IM or IV) is the FIRST-LINE drug to prevent and treat PPH. It makes the uterus contract strongly, squeezing the blood vessels at the placental site. It is safe in hypertension and pre-eclampsia, unlike ergometrine.

❌ Why the other options are wrong:
• Ergometrine in pre-eclampsia — Ergometrine causes severe hypertension and is avoided in pre-eclampsia.
• Nifedipine — Nifedipine relaxes the uterus (a tocolytic), so it would worsen bleeding.
• Salbutamol — Salbutamol relaxes the uterus and would worsen bleeding.

⭐ Key point: Other uterotonics for PPH: ergometrine (avoid in high BP), carboprost (avoid in asthma), misoprostol. Also give tranexamic acid.$x$, null),
(138, $x$In cardiac arrest in a woman more than 20 weeks pregnant, CPR should include:$x$, $x$Manual left uterine displacement and perimortem caesarean by 5 minutes$x$, $x$✅ Correct answer: Manual left uterine displacement and perimortem caesarean by 5 minutes
In maternal cardiac arrest after 20 weeks, the heavy uterus compresses the vena cava and aorta (aortocaval compression), so CPR is ineffective. Push the uterus to the LEFT by hand (MANUAL LEFT UTERINE DISPLACEMENT) during compressions. If there is no return of circulation by 4 minutes, perform a PERIMORTEM CAESAREAN SECTION by 5 minutes; this helps resuscitate the mother and may save the baby.

❌ Why the other options are wrong:
• Lying the woman on her right side for compressions — Lying her on her right side increases aortocaval compression.
• Delaying CPR until the baby has been delivered — CPR must never be delayed.
• Using much lower defibrillation energy than in adults — Defibrillation energy is the SAME as for other adults.

⭐ Key point: Remember the 4 and 5 minute rule: decide by 4 minutes, deliver by 5 minutes.$x$, null),
(139, $x$Sudden dyspnoea, hypoxia, hypotension and bleeding from IV sites during labour suggest:$x$, $x$Amniotic fluid embolism with DIC$x$, $x$✅ Correct answer: Amniotic fluid embolism with DIC
AMNIOTIC FLUID EMBOLISM (AFE) happens when amniotic fluid enters the mother's circulation (usually in labour or just after), triggering a severe reaction: SUDDEN BREATHLESSNESS, HYPOXIA, HYPOTENSION, collapse or cardiac arrest, and then DIC (bleeding from IV sites, the uterus and wounds). It is rare but often fatal.

❌ Why the other options are wrong:
• A simple vasovagal faint — A vasovagal faint doesn't cause hypoxia and bleeding.
• Normal anxiety of labour — Anxiety doesn't cause hypoxia, low BP and bleeding.
• Mild pre-eclampsia only — Mild pre-eclampsia doesn't cause sudden collapse and DIC.

⭐ Key point: Treat AFE: CPR if needed, oxygen and ventilation, circulatory support, massive transfusion (including cryoprecipitate), and delivery of the baby.$x$, null),
(140, $x$A normal arterial PaCO₂ in late pregnancy is about:$x$, $x$4 kPa (30 mmHg), due to increased minute ventilation$x$, $x$✅ Correct answer: 4 kPa (30 mmHg), due to increased minute ventilation
In pregnancy, progesterone stimulates breathing, increasing minute ventilation by about 40%. This lowers the PaCO₂ to about 4 kPa (30 mmHg), with the kidneys compensating by lowering bicarbonate. So a "normal" PaCO₂ of 5.3 kPa (40 mmHg) in a pregnant woman suggests she is TIRING and may be in respiratory failure.

❌ Why the other options are wrong:
• 8 kPa (60 mmHg), due to progesterone — 8 kPa (60 mmHg) is HIGH (respiratory failure).
• 5.3 kPa (40 mmHg), the same as non-pregnant women — 5.3 kPa is normal for NON-pregnant women.
• 6.5 kPa (49 mmHg), due to splinting of the diaphragm — 6.5 kPa is high; the diaphragm doesn't cause CO₂ retention in normal pregnancy.

⭐ Key point: Interpret ABGs in pregnancy with pregnancy normal values: PaCO₂ about 4 kPa (30 mmHg), HCO₃⁻ about 18–21 mmol/L.$x$, null),
(141, $x$A drug is available as a 1:10,000 solution, commonly used for cardiac arrest adrenaline. How many milligrams are in a 10 mL prefilled syringe of this solution?$x$, $x$1 mg$x$, $x$✅ Correct answer: 1 mg
"1:10,000" means 1 g in 10,000 mL. 1 g = 1000 mg, so 1000 mg ÷ 10,000 mL = 0.1 mg/mL. A 10 mL syringe contains 10 × 0.1 = 1 mg. This is the standard adult cardiac arrest dose of adrenaline.

❌ Why the other options are wrong:
• 10 mg — 10 mg is ten times too much.
• 0.1 mg — 0.1 mg is the amount in only 1 mL.
• 100 mg — 100 mg is far too much.

⭐ Key point: Adrenaline: 1:1000 = 1 mg/mL (used IM for anaphylaxis, 0.5 mL). 1:10,000 = 0.1 mg/mL (used IV in cardiac arrest, 10 mL).$x$, null),
(142, $x$Atracurium is muscle relaxant which is$x$, $x$Metabolized by Hoffman degradation$x$, $x$✅ Correct answer: Metabolized by Hoffman degradation
ATRACURIUM is a non-depolarising muscle relaxant broken down mainly by HOFMANN DEGRADATION: a spontaneous chemical breakdown that depends on body temperature and pH, not on the liver or kidneys. Its action stays predictable in liver or kidney failure.

❌ Why the other options are wrong:
• Contraindicated in renal transplant — It isn't contraindicated in renal transplant; it's actually useful in kidney failure.
• Metabolized by liver — It doesn't rely on liver metabolism.
• Metabolized by kidney — It doesn't rely on kidney excretion.

⭐ Key point: Atracurium can release histamine (flushing, low BP). Cisatracurium releases less histamine and is often preferred in ICU.$x$, null),
(143, $x$Nasal airway is not indicated in one of the following$x$, $x$Basal skull fracture$x$, $x$✅ Correct answer: Basal skull fracture
A NASAL (nasopharyngeal) airway is NOT used in suspected BASAL SKULL FRACTURE (signs: raccoon eyes, Battle's sign, CSF leak from the nose or ears). The fracture can break the bone between the nose and brain (cribriform plate), and the tube could pass INTO the skull and brain.

❌ Why the other options are wrong:
• Pediatric patient — Children can receive nasal airways (with the correct size).
• Comatose patient — Comatose patients can use nasal airways (they're often tolerated better than oral airways).
• Full conscious patient — Fully conscious patients can tolerate a nasal airway better than an oral airway, if they need one.

⭐ Key point: Nasal airway size: from the nostril to the earlobe (tragus). Lubricate it, and insert it along the floor of the nose.$x$, null),
(144, $x$Which inhalational anaesthetic agent has the lowest blood-gas partition coefficient among the following, resulting in the most rapid induction and emergence?$x$, $x$Desflurane$x$, $x$✅ Correct answer: Desflurane
The BLOOD–GAS PARTITION COEFFICIENT shows how soluble an anaesthetic gas is in blood. A LOW coefficient means the gas doesn't dissolve much, so it quickly reaches the brain and quickly leaves, giving FAST induction and FAST recovery. DESFLURANE has the lowest (about 0.42) of the common volatile agents.

❌ Why the other options are wrong:
• Sevoflurane — Sevoflurane is about 0.65 (also fast, but higher than desflurane).
• Halothane — Halothane is about 2.4 (slow).
• Isoflurane — Isoflurane is about 1.4 (slower).

⭐ Key point: Sevoflurane is preferred for gas INDUCTION (pleasant smell, not irritating). Desflurane is irritating to the airway, so it's used for maintenance, not induction.$x$, null),
(145, $x$A patient on IV nitroglycerin has a headache. Which action is BEST?$x$, $x$Administer PRN acetaminophen$x$, $x$✅ Correct answer: Administer PRN acetaminophen
HEADACHE is the most common side effect of nitroglycerin (GTN), caused by dilation of blood vessels in the head. It is usually mild and often improves as tolerance develops. The best action is to give a simple painkiller such as PARACETAMOL (acetaminophen) PRN, while continuing the GTN if it's still needed for chest pain or BP.

❌ Why the other options are wrong:
• Switch to oral nitrates — Switching to oral nitrates isn't necessary for a headache.
• Increase the infusion rate — Increasing the rate would worsen the headache and may lower BP.
• Hold the next dose — Holding the dose could allow chest pain or high BP to return.

⭐ Key point: Also monitor BP on GTN; hypotension is the main serious side effect. Avoid it with PDE-5 inhibitors (sildenafil).$x$, null),
(146, $x$If manual bagging of a patient with a suspected blocked ETT meets high resistance and chest rise is absent despite confirmed tube position, the appropriate next step is:$x$, $x$Prepare to remove/change the endotracheal tube emergently$x$, $x$✅ Correct answer: Prepare to remove/change the endotracheal tube emergently
If bag ventilation meets HIGH RESISTANCE and the chest DOESN'T RISE even though the tube is confirmed to be in the right place, the ETT is likely BLOCKED (thick secretions, blood clot, kink). If suction can't clear it, PREPARE TO REMOVE or CHANGE the ETT urgently, and oxygenate by bag-mask until a new tube is placed.

❌ Why the other options are wrong:
• Administer a bronchodilator via metered-dose inhaler through the tube — A bronchodilator won't help if the tube itself is blocked.
• Wait for the physician without further action — Waiting without action allows life-threatening hypoxia.
• Increase bagging force and continue indefinitely — Bagging harder can cause barotrauma and won't clear a blocked tube.

⭐ Key point: If the patient can't be ventilated, remove the tube and use bag-mask ventilation. A patent airway saves lives, not the tube itself.$x$, null),
(147, $x$Neostigmine is used to$x$, $x$To reverse the action of non depolarizing muscle relaxant$x$, $x$✅ Correct answer: To reverse the action of non depolarizing muscle relaxant
NEOSTIGMINE blocks acetylcholinesterase, the enzyme that breaks down acetylcholine at the neuromuscular junction. More acetylcholine builds up and competes with NON-DEPOLARISING muscle relaxants (rocuronium, vecuronium, atracurium), REVERSING their effect at the end of surgery. It is given with glycopyrrolate or atropine to block its slowing effect on the heart.

❌ Why the other options are wrong:
• Increase the action of muscle relaxant — It doesn't increase the action of muscle relaxants.
• To increase the action of depolarizing muscle relaxant — It PROLONGS (not reverses) the action of DEPOLARISING relaxants (suxamethonium).
• Reduce the action of muscle relaxant — "Reduce the action of muscle relaxant" is vague; the correct answer specifically names non-depolarising relaxants.

⭐ Key point: Sugammadex is another reversal agent; it binds rocuronium and vecuronium directly and works faster.$x$, null),
(148, $x$A patient is receiving a sedative with a continuous infusion. The nurse notes that the patient's respiratory rate is 8 breaths per minute. The most appropriate action is to:$x$, $x$Stop the sedative infusion and stimulate the patient$x$, $x$✅ Correct answer: Stop the sedative infusion and stimulate the patient
A respiratory rate of 8 breaths/min in a sedated patient shows RESPIRATORY DEPRESSION, which can lead to hypoxia and respiratory arrest. The most appropriate action is to STOP the SEDATIVE INFUSION and STIMULATE the patient (call their name, gentle shaking). Assess airway, oxygen and SpO₂, give oxygen, and support ventilation if needed. Call for help.

❌ Why the other options are wrong:
• Increase the sedative infusion rate — Increasing the sedation would worsen respiratory depression.
• Continue to monitor the patient closely — Continuing to monitor without action is dangerous.
• Stop the sedative infusion and administer Naloxone — Naloxone only reverses OPIOIDS; the question says "sedative", so stop and stimulate first.

⭐ Key point: Sedation scores (RASS) help prevent over-sedation. Keep a bag-valve-mask and reversal agents ready.$x$, null),
(149, $x$The dose of suxthamethonium for intubation is$x$, $x$2mg/kg$x$, $x$✅ Correct answer: 2mg/kg
Suxamethonium (succinylcholine) is a fast-acting depolarising muscle relaxant used for rapid sequence intubation. The usual intubating dose is 1–1.5 mg/kg IV, and up to 2 mg/kg is cited, which is the keyed answer here. It works within 30–60 seconds and lasts about 5–10 minutes.

❌ Why the other options are wrong:
• 0.2mg/kg — 0.2 mg/kg is far too little.
• 1gm for pediatrics — 1 g for children is a massive overdose.
• 100mg for adult — 100 mg is a common adult dose (about 1.5 mg/kg for 70 kg), but the question looks for the weight-based dose.

⭐ Key point: Suxamethonium side effects: high potassium (avoid after burns over 24 hours old, crush injury, spinal injury), malignant hyperthermia, bradycardia, muscle pain.$x$, null),
(150, $x$Rapid sequence induction is primarily indicated for patients:$x$, $x$At high risk of pulmonary aspiration$x$, $x$✅ Correct answer: At high risk of pulmonary aspiration
Rapid sequence induction (RSI) is used when the patient is at HIGH RISK of ASPIRATION of stomach contents: not fasted ("full stomach"), trauma, bowel obstruction, pregnancy, emergency surgery, or reflux. Drugs are given quickly together, and the tube is placed fast, to shorten the time between loss of airway reflexes and securing the airway.

❌ Why the other options are wrong:
• Who are fasted for over 12 hours — Patients fasted for more than 12 hours are low risk.
• Undergoing elective minor surgery — Elective minor surgery usually doesn't need RSI.
• With no comorbidities — Having no comorbidities isn't an indication.

⭐ Key point: RSI steps: preparation, pre-oxygenation (3–5 minutes), induction and paralysis together, intubation, and confirmation with capnography.$x$, null),
(151, $x$Regional anaesthesia is contraindicated in$x$, $x$Eclampsia$x$, $x$✅ Correct answer: Thrombocytopenia and elevated bleeding time
Regional (spinal or epidural) anaesthesia is CONTRAINDICATED in THROMBOCYTOPENIA and a prolonged BLEEDING TIME, because inserting a needle near the spinal cord can cause a spinal or epidural HAEMATOMA, which can compress the cord and cause permanent paralysis. (The old answer key said "eclampsia"; eclampsia itself isn't a contraindication if platelets and clotting are normal, so the key has been corrected.)

❌ Why the other options are wrong:
• Diagnosis of placenta previa — Placenta praevia isn't an absolute contraindication; neuraxial anaesthesia is often used for caesarean if the mother is stable.
• Abrutio placenta — Placental abruption is only a contraindication if there is DIC or shock.
• Eclampsia — Eclampsia isn't itself a contraindication; check platelets and clotting first. Neuraxial anaesthesia is often preferred in pre-eclampsia.

⭐ Key point: Check platelets (usually above 75–80 × 10⁹/L) and clotting before spinal or epidural anaesthesia.$x$, $x$Thrombocytopenia and elevated bleeding time$x$),
(152, $x$The second-line drug of choice for status epilepticus, given as an IV loading dose, is:$x$, $x$Phenytoin$x$, $x$✅ Correct answer: Phenytoin
Status epilepticus is treated in steps. FIRST-LINE: a benzodiazepine (lorazepam, diazepam or midazolam). If seizures continue after two doses, give a SECOND-LINE IV loading dose: PHENYTOIN (or fosphenytoin), levetiracetam, or valproate. If seizures still continue, the third line is general anaesthesia (propofol or thiopentone) with intubation.

❌ Why the other options are wrong:
• Lorazepam — Lorazepam is the FIRST-line drug, not second.
• Salbutamol — Salbutamol is a bronchodilator.
• Adrenaline — Adrenaline is used for anaphylaxis and cardiac arrest.

⭐ Key point: Phenytoin loading: 20 mg/kg IV, no faster than 50 mg/minute, with ECG and BP monitoring (it can cause arrhythmias and hypotension).$x$, null),
(153, $x$Which of the following agents is most likely to cause airway irritation, coughing, and breath-holding, making it unsuitable for inhalational induction?$x$, $x$Desflurane$x$, $x$✅ Correct answer: Desflurane
DESFLURANE is PUNGENT (irritating) to the airway. When breathed in, it causes coughing, breath-holding, laryngospasm and increased secretions. That's why it isn't used for gas (inhalational) induction, but only for maintaining anaesthesia once the patient is asleep and intubated.

❌ Why the other options are wrong:
• Sevoflurane — Sevoflurane is sweet-smelling and non-irritating, the agent of choice for gas induction.
• Nitrous oxide — Nitrous oxide is not irritating.
• Propofol — Propofol is an IV drug, not an inhaled agent.

⭐ Key point: Desflurane has fast recovery because of its low blood solubility, but it irritates the airway.$x$, null),
(154, $x$Minimum fasting time for a light meal before elective anaesthesia is generally:$x$, $x$6 hours$x$, $x$✅ Correct answer: 6 hours
Before elective anaesthesia, the fasting times are: a LIGHT MEAL, 6 HOURS; a heavy or fatty meal, 8 hours; formula milk, 6 hours; breast milk, 4 hours; clear fluids, 2 hours. This lets the stomach empty and reduces the risk of aspiration.

❌ Why the other options are wrong:
• 2 hours — 2 hours is the time for clear fluids.
• 24 hours — 24 hours is unnecessarily long and causes dehydration and low glucose.
• 1 hour — 1 hour is too short for food (some centres allow clear fluids up to 1 hour for children).

⭐ Key point: Long fasting causes dehydration, low glucose and discomfort. Encourage clear fluids up to 2 hours before surgery.$x$, null),
(155, $x$A patient on furosemide (a loop diuretic) should be monitored closely for which electrolyte disturbance?$x$, $x$Hypokalaemia$x$, $x$✅ Correct answer: Hypokalaemia
Furosemide is a loop diuretic. It makes the kidneys lose sodium, and in exchange the kidneys also lose POTASSIUM in the urine, causing HYPOKALAEMIA. Low potassium can cause muscle weakness, cramps and dangerous arrhythmias (especially with digoxin). Magnesium is also lost.

❌ Why the other options are wrong:
• Hypernatraemia only — Furosemide doesn't usually cause high sodium.
• Hyperkalaemia — It causes LOW, not high, potassium.
• Hypercalcaemia only — It causes calcium LOSS (it's used to treat high calcium), not hypercalcaemia.

⭐ Key point: Monitor U&Es on loop diuretics. Give potassium supplements or combine with a potassium-sparing diuretic if needed.$x$, null),
(156, $x$Guedel's classification describes depth of anaesthesia in how many stages, with which stage representing the ideal plane for surgery?$x$, $x$Four stages; Stage III$x$, $x$✅ Correct answer: Four stages; Stage III
Guedel described FOUR stages of anaesthesia (with ether). Stage I: analgesia (from induction to loss of consciousness). Stage II: excitement (delirium, struggling, vomiting, risk of laryngospasm). Stage III: SURGICAL ANAESTHESIA (the ideal level for surgery, divided into 4 planes). Stage IV: medullary paralysis (overdose, with respiratory and cardiac arrest).

❌ Why the other options are wrong:
• Two stages; Stage I — There are four stages, not two.
• Three stages; Stage II — Stage II is the dangerous excitement stage, not ideal for surgery.
• Five stages; Stage IV — There are four stages, not five; Stage IV is overdose.

⭐ Key point: Modern IV induction passes quickly through Stage II, but the excitement stage can still occur during gas induction and emergence.$x$, null),
(157, $x$Propofol infusion syndrome is most associated with:$x$, $x$High doses for more than 48 hours, causing acidosis and rhabdomyolysis$x$, $x$✅ Correct answer: High doses for more than 48 hours, causing acidosis and rhabdomyolysis
Propofol infusion syndrome (PRIS) is rare but often fatal. It is associated with HIGH doses (above 4–5 mg/kg/hour) given for MORE THAN 48 HOURS, especially in children, sepsis, head injury, and with catecholamines or steroids. It causes metabolic ACIDOSIS, RHABDOMYOLYSIS (raised CK), high potassium, high triglycerides, kidney failure, arrhythmias and heart failure.

❌ Why the other options are wrong:
• Low doses used for short day-case procedures — Low doses for short procedures are not associated with PRIS.
• Diluting propofol with 0.9% normal saline — Diluting with saline is not a cause.
• A single induction dose given to a healthy adult — A single induction dose doesn't cause PRIS.

⭐ Key point: On long propofol infusions, monitor triglycerides, CK, lactate and the ECG, and keep the dose below 4 mg/kg/hour.$x$, null),
(158, $x$Suxamethonium should be avoided in a patient who is 5 days post major burn because of the risk of:$x$, $x$Severe hyperkalaemia and cardiac arrest$x$, $x$✅ Correct answer: Severe hyperkalaemia and cardiac arrest
After a major burn (from about 24–48 hours onward), the muscle develops many extra acetylcholine receptors. Suxamethonium stimulates all of them, causing a massive release of potassium from the muscles: SEVERE HYPERKALAEMIA, which can cause CARDIAC ARREST. It should be avoided from about 24 hours after the burn until healing.

❌ Why the other options are wrong:
• Hypocalcaemia and tetany — Low calcium and tetany are not the risk.
• Prolonged hypertension only — Prolonged hypertension isn't the risk.
• Severe hypoglycaemia and seizures — Hypoglycaemia isn't the risk.

⭐ Key point: Avoid suxamethonium in burns, crush injuries, spinal cord injury, prolonged immobility, and neuromuscular disease. Use rocuronium instead.$x$, null),
(159, $x$An early sign of malignant hyperthermia under anaesthesia is:$x$, $x$An unexplained rise in end-tidal CO₂$x$, $x$✅ Correct answer: An unexplained rise in end-tidal CO₂
In MALIGNANT HYPERTHERMIA (triggered by volatile anaesthetics or suxamethonium), the muscles' metabolism becomes uncontrolled, producing large amounts of CO₂ and heat. An UNEXPLAINED RISE in END-TIDAL CO₂ (despite increased ventilation) is one of the EARLIEST signs, along with tachycardia and masseter (jaw) rigidity. High temperature is a LATE sign.

❌ Why the other options are wrong:
• A fall in heart rate and blood pressure — Heart rate RISES, not falls.
• Pinpoint pupils — Pupils aren't a typical early sign.
• A falling body temperature — Temperature RISES, not falls.

⭐ Key point: Treatment: stop triggering agents, give 100% oxygen at high flow, give DANTROLENE 2.5 mg/kg IV, cool the patient, and treat high potassium and acidosis.$x$, null),
(160, $x$Local anaesthetic systemic toxicity with cardiovascular collapse is treated with:$x$, $x$20% lipid emulsion 1.5 mL/kg IV bolus$x$, $x$✅ Correct answer: 20% lipid emulsion 1.5 mL/kg IV bolus
Local anaesthetic systemic toxicity (LAST) happens when too much local anaesthetic (such as bupivacaine) enters the blood. Early signs: tingling around the mouth, metallic taste, tinnitus, confusion, then seizures, arrhythmias and cardiac arrest. Treatment with cardiovascular collapse: 20% LIPID EMULSION, 1.5 mL/kg IV bolus, then an infusion of 15 mL/kg/hour. The lipid soaks up the drug from the heart.

❌ Why the other options are wrong:
• IV calcium gluconate 10 mL only — Calcium gluconate alone doesn't treat LAST.
• IV naloxone 0.4 mg — Naloxone reverses opioids.
• IV atropine 3 mg — Atropine doesn't reverse LAST.

⭐ Key point: Prevent LAST: calculate the maximum dose, aspirate before injecting, and inject slowly in small amounts. Continue CPR, which may be prolonged.$x$, null),
(161, $x$The unit in which comprehensive care of a critically ill patient which is deemed to recoverable stage is carried out.$x$, $x$Critical Care Unit$x$, $x$✅ Correct answer: Critical Care Unit
A CRITICAL CARE UNIT (Intensive Care Unit) is a special unit where comprehensive, continuous care is given to critically ill patients with life-threatening but potentially RECOVERABLE conditions. It provides advanced monitoring, organ support (ventilation, dialysis, vasopressors) and a high nurse-to-patient ratio.

❌ Why the other options are wrong:
• Critical Care — "Critical care" is the type of care, not the unit.
• Cardiac ICU — A cardiac ICU is specialised for heart patients.
• Coronary Care Unit — A coronary care unit is specialised for acute heart attacks and heart rhythm problems.

⭐ Key point: ICU admission is for patients who can benefit from intensive treatment; those who can't recover may be better served by palliative care.$x$, null),
(162, $x$A document that lists the medical treatment a person chooses to refuse if unable to make decisions is the:$x$, $x$Living will$x$, $x$✅ Correct answer: Living will
A LIVING WILL is a type of advance directive: a written document in which a person lists the medical treatments they would REFUSE (such as CPR, ventilation or tube feeding) if they lose the ability to make decisions in the future. It lets their wishes be respected.

❌ Why the other options are wrong:
• Durable power of attorney — A durable power of attorney names a PERSON to make decisions for the patient.
• Informed consent — Informed consent is agreement to a specific treatment at the time.
• Advance directives — "Advance directives" is the general term; the specific document listing refused treatments is the living will.

⭐ Key point: Advance directives include living wills and the appointment of a health care proxy (power of attorney).$x$, null),
(163, $x$A manager who encourages staff to report errors without fear of unfair punishment is promoting a:$x$, $x$Just culture$x$, $x$✅ Correct answer: Just culture
A JUST CULTURE encourages staff to REPORT errors and near misses openly, without fear of unfair punishment. It focuses on fixing SYSTEM problems, while still holding people accountable for reckless behaviour. More reporting means more learning and safer care.

❌ Why the other options are wrong:
• Blame culture — A blame culture punishes individuals, so errors are hidden.
• Competitive culture — A competitive culture doesn't promote error reporting.
• Punitive culture — A punitive culture punishes errors, so staff hide mistakes.

⭐ Key point: Just culture: human error is consoled, at-risk behaviour is coached, reckless behaviour is disciplined.$x$, null),
(164, $x$Which document should be reviewed FIRST during a nursing quality audit?$x$, $x$Patient care records$x$, $x$✅ Correct answer: Patient care records
In a nursing quality audit, PATIENT CARE RECORDS are reviewed FIRST. They show what care was actually given, documented and evaluated (assessments, care plans, observations, drug charts). They are the main source for checking practice against standards.

❌ Why the other options are wrong:
• Staff attendance book — The staff attendance book relates to staffing, not care quality.
• Hospital inventory — The hospital inventory relates to supplies.
• Payroll register — The payroll register relates to salaries.

⭐ Key point: Audit cycle: set a standard, measure practice, compare with the standard, make changes, and re-audit.$x$, null),
(165, $x$The first step in an effective risk management cycle is typically to:$x$, $x$Identify the risk$x$, $x$✅ Correct answer: Identify the risk
The risk management cycle starts with IDENTIFYING RISKS (what could go wrong?), using incident reports, audits, complaints and risk assessments. Then: analyse (likelihood and severity), control (put measures in place), monitor and review.

❌ Why the other options are wrong:
• Report the incident to the media — Reporting to the media isn't part of risk management.
• Terminate the staff member involved — Terminating staff isn't part of the cycle; the focus is on systems.
• Implement a control plan immediately without analysis — Implementing a control plan without analysis may not target the real risk.

⭐ Key point: The risk register lists identified risks, their ratings, the actions taken, and who is responsible.$x$, null),
(166, $x$Risk/Benefit Ratio is a consideration under which ethical principle?$x$, $x$Beneficence$x$, $x$✅ Correct answer: Beneficence
BENEFICENCE means doing good and acting in the patient's best interests. Considering the RISK/BENEFIT ratio (weighing possible harms against expected benefits) is part of beneficence: an intervention should do more good than harm. It is especially important in research and in deciding on treatments.

❌ Why the other options are wrong:
• Confidentiality — Confidentiality is about keeping information private.
• Justice — Justice is about fairness.
• Plagiarism avoidance — Avoiding plagiarism is about academic honesty.

⭐ Key point: Beneficence (do good) and non-maleficence (do no harm) are closely linked. Both involve weighing risks and benefits.$x$, null),
(167, $x$A nurse is caring for a patient who is refusing treatment for his condition. The patient's family is pressuring the nurse to persuade the patient to accept treatment. What should the nurse do?$x$, $x$Respect the patient's autonomy and allow him refuse treatment.$x$, $x$✅ Correct answer: Respect the patient's autonomy and allow him refuse treatment.
A competent adult has the RIGHT to refuse treatment (AUTONOMY), even if the family disagrees and even if refusing may lead to harm. The nurse should RESPECT the patient's decision, make sure they are fully informed about the risks, explore their reasons, document the discussion, and support both patient and family.

❌ Why the other options are wrong:
• Persuade the patient to accept treatment to satisfy the family's wishes — Persuading the patient for the family's sake ignores autonomy.
• Consult with another nurse to determine the best course of action — Consulting another nurse doesn't change the patient's right to refuse.
• Seek a court order to force the patient to accept treatment — A court order isn't appropriate for a competent adult's refusal.

⭐ Key point: Family members can't override a competent adult's decision. Respect autonomy, document, and keep offering care.$x$, null),
(168, $x$In a critical care unit, an audit reveals that pain assessment scores were documented for only 40% of eligible patients over the audit period, against a set standard of 100%. This finding represents:$x$, $x$A process criterion deficiency$x$, $x$✅ Correct answer: A process criterion deficiency
Donabedian's model judges care by STRUCTURE (resources), PROCESS (what is done) and OUTCOME (results). Pain ASSESSMENT and DOCUMENTATION is a nursing ACTIVITY, so it is a PROCESS criterion. Doing it for only 40% of patients against a 100% standard is a PROCESS DEFICIENCY that needs improvement.

❌ Why the other options are wrong:
• A structure standard being met — Structure refers to resources; this finding is about what nurses do.
• A satisfactory outcome — It isn't satisfactory; 40% is far below the standard.
• An incident report — It's an audit finding, not an individual incident.

⭐ Key point: Fix process gaps with training, reminders, documentation prompts and re-audit.$x$, null),
(169, $x$The Critical Care Nurse manager knowns that, the art of getting an organizational activities done through other people using available resources is called.$x$, $x$Management$x$, $x$✅ Correct answer: Management
MANAGEMENT is the process of getting organisational work done THROUGH OTHER PEOPLE, using the available RESOURCES (staff, money, equipment, time) efficiently and effectively. It involves planning, organising, staffing, directing and controlling.

❌ Why the other options are wrong:
• Delegation — Delegation is one management skill (giving a task to someone), not the whole process.
• Leadership — Leadership is about influencing and motivating people towards a vision.
• Governance — Governance is about oversight, accountability and standards.

⭐ Key point: Management focuses on systems and resources; leadership focuses on people and direction. Good nurse managers need both.$x$, null),
(170, $x$A hospital has many unreported needle-stick injuries and incidents of workplace violence, with no reporting or compensation system for staff. The victims of maleficence here are the:$x$, $x$Employees$x$, $x$✅ Correct answer: Employees
Maleficence means causing harm. The hospital owes its EMPLOYEES a safe workplace. Unreported needlestick injuries (risk of HIV, hepatitis B and C) and workplace violence, with no reporting or compensation systems, mean staff are being harmed without support or protection. The EMPLOYEES are the victims.

❌ Why the other options are wrong:
• Patients — The patients aren't the main victims in this scenario.
• Families — The families aren't the main victims.
• Communities — The communities aren't the direct victims.

⭐ Key point: Every hospital needs needlestick and violence reporting systems, post-exposure prophylaxis, and staff support.$x$, null),
(171, $x$A patient experiences a medication error with no resulting harm. This event is classified as a:$x$, $x$Near miss$x$, $x$✅ Correct answer: Near miss
A medication error that reaches the patient but causes NO harm is classified here as a NEAR MISS (also called a "no harm" incident). It must still be reported, so the cause can be found and fixed before a similar error causes harm.

❌ Why the other options are wrong:
• Sentinel event — A sentinel event causes death or serious harm.
• Adverse event — An adverse event causes harm.
• Never event — A never event is a serious, preventable event that should never happen (such as wrong-site surgery).

⭐ Key point: Strictly, many systems define a near miss as an error caught BEFORE reaching the patient. Either way, report every error.$x$, null),
(172, $x$As a critical care nurse working in ICU, you know that the MOST important equipment needed for patient care is:$x$, $x$Mechanical ventilator$x$, $x$✅ Correct answer: Mechanical ventilator
The MECHANICAL VENTILATOR is often seen as the most essential piece of ICU equipment, because it directly SUSTAINS LIFE in patients who can't breathe adequately on their own. Most ICU patients need some form of respiratory support, and the ventilator defines intensive care.

❌ Why the other options are wrong:
• Arterial blood gases analyser — An ABG analyser is important for monitoring but doesn't keep the patient alive.
• Defibrillator — A defibrillator is vital in emergencies but isn't used continuously.
• Bed side cardiac monitor — A cardiac monitor watches the patient but doesn't support life.

⭐ Key point: All ICU equipment matters. Every ventilated patient also needs a bag-valve-mask and oxygen at the bedside.$x$, null),
(173, $x$A production manager contacting the division manager to discuss the schedule of product delivery and quality is an example of:$x$, $x$Lateral communication$x$, $x$✅ Correct answer: Lateral communication
LATERAL (horizontal) communication happens between people at the SAME LEVEL in an organisation, or between different departments, to coordinate work. A production manager and a division manager discussing schedules and quality is lateral communication.

❌ Why the other options are wrong:
• Upward communication — Upward communication goes from junior staff to managers.
• Downward communication — Downward communication goes from managers to staff.
• Grapevine communication — The grapevine is informal, unofficial communication (rumours).

⭐ Key point: In ICU, lateral communication between departments (lab, pharmacy, radiology) is vital for coordinated care.$x$, null),
(174, $x$A health worker is working in a community which is spread out over a large rural area. She is too lazy to go to the farthest homes to invite them to participate in an environmental sanitation to campaign. This led to the lack of:$x$, $x$Distributive justice$x$, $x$✅ Correct answer: Distributive justice
DISTRIBUTIVE JUSTICE means sharing resources and services FAIRLY among everyone, according to need. By not visiting the farthest homes (because of laziness), the health worker denies those families a fair share of the health service, a failure of distributive justice.

❌ Why the other options are wrong:
• The 2 categories of justice. — "The 2 categories of justice" is vague.
• Equality and fairness — Equality and fairness are related ideas, but the specific principle is distributive justice.
• Justice and fairness — "Justice and fairness" is general; the specific type is distributive justice.

⭐ Key point: Justice in health care: treat people fairly and distribute resources (time, beds, services) fairly, especially to vulnerable and hard-to-reach groups.$x$, null),
(175, $x$The rate of catheter-associated urinary tract infections (CAUTI) in an ICU over a quarter is an example of a(n):$x$, $x$Outcome indicator$x$, $x$✅ Correct answer: Outcome indicator
OUTCOME indicators measure the END RESULTS of care for patients, such as infection rates, mortality, pressure ulcers and complications. The CAUTI rate in ICU is an OUTCOME indicator: it shows the result of catheter care practices.

❌ Why the other options are wrong:
• Input indicator — Input indicators describe resources put in.
• Process indicator — Process indicators measure what is DONE (such as the percentage of catheters with daily review).
• Structure indicator — Structure indicators measure resources and facilities (such as the number of nurses).

⭐ Key point: Donabedian: Structure (resources) → Process (care given) → Outcome (results).$x$, null),
(176, $x$For a mechanically ventilated level 3 ICU patient, the recommended nurse-to-patient ratio is:$x$, $x$1:1$x$, $x$✅ Correct answer: 1:1
A Level 3 ICU patient (on a ventilator, or with support of two or more organs) needs continuous, intensive monitoring and care, so the recommended nurse-to-patient ratio is 1:1 (one nurse per patient).

❌ Why the other options are wrong:
• 1:4 — 1:4 is typical of a general ward.
• 1:6 — 1:6 is too few nurses for ICU.
• 1:8 — 1:8 is far too few.

⭐ Key point: Level 2 (HDU) patients are usually nursed 1:2.$x$, null),
(177, $x$A patient needing advanced respiratory support, or support of two or more organs, needs which level of care?$x$, $x$Level 3 (intensive care)$x$, $x$✅ Correct answer: Level 3 (intensive care)
A patient needing ADVANCED RESPIRATORY SUPPORT (invasive ventilation) alone, OR support of TWO OR MORE organ systems (for example ventilation plus vasopressors, or dialysis plus inotropes), needs LEVEL 3 care: intensive care.

❌ Why the other options are wrong:
• Level 0 (normal ward) — Level 0 is normal ward care.
• Level 1 (ward with outreach) — Level 1 is ward care with extra monitoring or outreach support.
• Level 2 (high dependency) — Level 2 (HDU) is for single organ support or close monitoring.

⭐ Key point: Levels of care guide staffing, admission and discharge decisions.$x$, null),
(178, $x$SBAR, used for safe communication between ICU staff, stands for:$x$, $x$Situation, Background, Assessment, Recommendation$x$, $x$✅ Correct answer: Situation, Background, Assessment, Recommendation
SBAR is a structured communication tool. S = SITUATION (what is happening now). B = BACKGROUND (relevant history). A = ASSESSMENT (what you think the problem is). R = RECOMMENDATION (what you want done). It makes handovers and calls to doctors clear and concise, reducing errors.

❌ Why the other options are wrong:
• Staff, Budget, Audit, Reporting — Staff, Budget, Audit, Reporting is not SBAR.
• Safety, Bedside, Airway, Resuscitation — Safety, Bedside, Airway, Resuscitation is not SBAR.
• Signs, Blood pressure, Alertness, Respiration — Signs, BP, Alertness, Respiration is not SBAR.

⭐ Key point: Use SBAR when calling a doctor about a deteriorating patient. Have the vital signs and chart ready.$x$, null),
(179, $x$After a serious medication incident in ICU, a root cause analysis aims to:$x$, $x$Find system causes and prevent recurrence$x$, $x$✅ Correct answer: Find system causes and prevent recurrence
A root cause analysis (RCA) after a serious incident looks beyond individual blame to find the underlying SYSTEM CAUSES (such as poor labelling, staffing, equipment design, communication or policies). The aim is to PREVENT the incident from happening AGAIN, through changes to processes and systems.

❌ Why the other options are wrong:
• Hide the event from the family — Hiding the event is dishonest; there is a duty of candour to the family.
• Calculate the cost to the hospital only — Cost is not the main focus.
• Find one person to discipline — Finding one person to blame misses system causes and discourages reporting.

⭐ Key point: RCA tools: the "5 whys", fishbone (cause and effect) diagrams, and timelines. Results lead to an action plan.$x$, null),
(180, $x$Which equipment management method best keeps ICU ventilators reliable?$x$, $x$Planned preventive maintenance on a schedule$x$, $x$✅ Correct answer: Planned preventive maintenance on a schedule
PLANNED PREVENTIVE MAINTENANCE (PPM) means servicing equipment (ventilators, monitors, pumps) on a regular SCHEDULE by trained biomedical engineers, BEFORE it fails. This keeps equipment reliable and safe, reduces breakdowns, and extends its life.

❌ Why the other options are wrong:
• Lending ventilators without records — Lending without records loses track of equipment and maintenance.
• Cleaning them only at the end of the year — Cleaning only once a year is unsafe and poor infection control.
• Repairing machines only after they break — Repairing only after breakdown means failures can happen during patient care.

⭐ Key point: Keep an equipment register with service dates, and never use equipment overdue for maintenance.$x$, null),
(181, $x$A nurse researcher numbers all 200 patient files in an ICU register and uses a random number generator to select 40 files for chart review. This is an example of$x$, $x$Simple random sampling$x$, $x$✅ Correct answer: Simple random sampling
SIMPLE RANDOM SAMPLING gives every member of the population an EQUAL CHANCE of being chosen. Numbering all 200 files and using a random number generator to pick 40 is a classic example. It reduces selection bias.

❌ Why the other options are wrong:
• Convenience sampling — Convenience sampling picks whoever is easiest to reach.
• Quota sampling — Quota sampling picks a set number from different groups, non-randomly.
• Purposive sampling — Purposive sampling picks participants deliberately for a reason.

⭐ Key point: Probability sampling types: simple random, systematic (every nth), stratified (random within groups), and cluster.$x$, null),
(182, $x$Repositioning an immobile client every 2 hours to prevent pressure injury, without a physician's order, is an example of which type of nursing intervention?$x$, $x$Independent intervention$x$, $x$✅ Correct answer: Independent intervention
An INDEPENDENT nursing intervention is one a nurse can start based on their OWN professional judgement, without a doctor's order. Turning an immobile patient every 2 hours to prevent pressure injury is a classic independent intervention.

❌ Why the other options are wrong:
• Interdependent intervention — Interdependent interventions involve collaboration with other team members (such as with a physiotherapist or dietitian).
• Delegated medical intervention — Delegated medical interventions need a doctor's authority.
• Dependent intervention — Dependent interventions need a doctor's order (such as giving prescribed drugs).

⭐ Key point: Independent nursing actions include positioning, mouth care, health teaching, emotional support and monitoring.$x$, null),
(183, $x$A patient receiving a lipid-containing TPN infusion should have which laboratory value monitored to detect a potential metabolic complication of the lipid emulsion?$x$, $x$Serum triglyceride level$x$, $x$✅ Correct answer: Serum triglyceride level
The lipid (fat) emulsion in TPN can raise blood TRIGLYCERIDES (hypertriglyceridaemia), especially if infused too fast, in sepsis, or with propofol (which is also a lipid). Very high triglycerides can cause pancreatitis and affect lung function. Serum triglycerides are monitored, and the lipid is reduced if they are high (above 4–4.5 mmol/L).

❌ Why the other options are wrong:
• Serum uric acid level — Uric acid isn't specifically affected by lipid emulsions.
• Serum amylase level only — Amylase alone isn't the routine test.
• Serum bilirubin level only — Bilirubin and liver function are monitored too, but triglycerides are the specific lipid complication.

⭐ Key point: TPN monitoring: glucose, electrolytes (K, PO₄, Mg), triglycerides, LFTs and weight.$x$, null),
(184, $x$A nurse researcher notices a rising rate of pressure ulcers in immobile ICU patients and decides to investigate the issue. This scenario best illustrates the research process step of$x$, $x$Problem identification$x$, $x$✅ Correct answer: Problem identification
The first step in the research process is PROBLEM IDENTIFICATION: noticing an issue in practice (rising pressure ulcers in immobile patients) and deciding it is worth investigating. The problem is then defined and refined into a research question.

❌ Why the other options are wrong:
• Data analysis — Data analysis comes after data collection.
• Formulating recommendations — Recommendations come at the end.
• Reporting research findings — Reporting the findings comes at the end.

⭐ Key point: Research steps: identify the problem, review the literature, define the question or hypothesis, design, sample, collect data, analyse, interpret, and report.$x$, null),
(185, $x$A patient's vital sign trends are monitored continuously, and the information is used to adjust nursing interventions in real time. This best illustrates which systems theory concept?$x$, $x$Feedback$x$, $x$✅ Correct answer: Feedback
In systems theory, FEEDBACK is information about the system's OUTPUT that is fed back to adjust the INPUT or process. Continuously monitoring vital signs (output) and using the information to adjust nursing care (input) is a feedback loop that keeps the patient stable.

❌ Why the other options are wrong:
• Equifinality — Equifinality means a system can reach the same end state by different routes.
• Entropy — Entropy means a system tends towards disorder.
• Suprasystem — A suprasystem is a larger system containing smaller ones.

⭐ Key point: Negative feedback keeps systems stable (homeostasis). Nursing uses feedback through constant reassessment.$x$, null),
(186, $x$Which of the following is an example of a common ERROR in writing a nursing diagnosis, in which the statement is written as a medical diagnosis rather than a nursing diagnosis?$x$, $x$"Diagnosis: Congestive Heart Failure"$x$, $x$✅ Correct answer: "Diagnosis: Congestive Heart Failure"
A NURSING diagnosis describes the patient's RESPONSE to a health problem that NURSES can treat independently (such as Activity Intolerance, Acute Pain). A MEDICAL diagnosis names a DISEASE. "Congestive Heart Failure" is a medical diagnosis, so writing it as a nursing diagnosis is an ERROR.

❌ Why the other options are wrong:
• "Activity Intolerance related to fatigue" — "Activity Intolerance related to fatigue" is a correctly written nursing diagnosis.
• "Deficient Fluid Volume related to vomiting" — "Deficient Fluid Volume related to vomiting" is a correctly written nursing diagnosis.
• "Acute Pain related to tissue trauma" — "Acute Pain related to tissue trauma" is a correctly written nursing diagnosis.

⭐ Key point: Use NANDA-I labels in PES format (Problem, Etiology, Signs and symptoms) for nursing diagnoses.$x$, null),
(187, $x$A study measuring both nurses' workload and their reported levels of burnout to determine whether the two are related, without manipulating either variable, uses a$x$, $x$Correlational design$x$, $x$✅ Correct answer: Correlational design
A CORRELATIONAL design measures two (or more) variables as they naturally occur, WITHOUT manipulating either, to see whether they are RELATED (correlated). Measuring nurses' workload and burnout to see whether they are linked is correlational research. It shows association, not cause and effect.

❌ Why the other options are wrong:
• True experimental design — A true experiment manipulates a variable with random assignment.
• Historical design — A historical design studies past events and records.
• Case-control design with random assignment — A case-control design compares people with and without an outcome; random assignment isn't used.

⭐ Key point: Correlation (r) ranges from −1 (perfect negative) to +1 (perfect positive). Correlation does not prove causation.$x$, null),
(188, $x$On the periodic table, which element used in contrast media has the highest atomic number of the three commonly referenced in radiology (iodine, barium, gadolinium)?$x$, $x$Gadolinium (64)$x$, $x$✅ Correct answer: Gadolinium (64)
Atomic numbers: IODINE = 53, BARIUM = 56, GADOLINIUM = 64. GADOLINIUM has the HIGHEST atomic number. Iodine is used in CT and X-ray contrast, barium in GI studies (swallow, meal, enema), and gadolinium in MRI contrast (it is paramagnetic, which changes the magnetic signal).

❌ Why the other options are wrong:
• They are all equal — They aren't equal; each element has a unique atomic number.
• Iodine (53) — Iodine (53) is the lowest of the three.
• Barium (56) — Barium (56) is in the middle.

⭐ Key point: Gadolinium contrast is avoided in severe kidney failure (risk of nephrogenic systemic fibrosis) and in pregnancy.$x$, null),
(189, $x$A nurse is concerned about data security when accessing patient records on a computer. Which of the following is a fundamental principle of data security in healthcare?$x$, $x$Implementing strong passwords, encryption, and access controls$x$, $x$✅ Correct answer: Implementing strong passwords, encryption, and access controls
Healthcare data security depends on several layers of protection: STRONG, individual PASSWORDS (never shared), ENCRYPTION (scrambling data so only authorised people can read it), and ACCESS CONTROLS (staff can see only what they need for their role). Logging out and audit trails also help.

❌ Why the other options are wrong:
• Using a single, shared password for all computers — A shared password removes accountability and security.
• Allowing all staff members to have full access to all patient records — Giving all staff access to all records breaches confidentiality.
• Ensuring all data is stored on a single, non-networked device — A single non-networked device risks loss and prevents proper use.

⭐ Key point: Report suspected data breaches immediately, and never leave a computer logged in and unattended.$x$, null),
(190, $x$A nurse is discussing the importance of data storage with a patient. What is the primary function of a hard drive in a computer?$x$, $x$To store data and programs permanently$x$, $x$✅ Correct answer: To store data and programs permanently
A HARD DRIVE (hard disk) is a STORAGE device that keeps data and programs PERMANENTLY, even when the computer is switched off (non-volatile). It stores the operating system, applications and files.

❌ Why the other options are wrong:
• To display visual information — Displaying information is the monitor's job.
• To provide temporary working memory — Temporary working memory is RAM.
• To execute computer programs — Executing programs is the CPU's job.

⭐ Key point: Storage types: hard disk drive (HDD), solid-state drive (SSD), USB flash drives, and cloud storage. Back up important data regularly.$x$, null),
(191, $x$It is an establishment and implementation of policies, procedures, education and monitoring of staff adherence to reduce infection among patients, staff and visitors in ICU or hospital in general$x$, $x$Infection prevention and control$x$, $x$✅ Correct answer: Infection prevention and control
INFECTION PREVENTION AND CONTROL (IPC) is the organised programme of POLICIES, PROCEDURES, EDUCATION and MONITORING (audits) of staff adherence to REDUCE INFECTIONS among patients, staff and visitors. It includes hand hygiene, isolation, sterilisation, surveillance and antibiotic stewardship.

❌ Why the other options are wrong:
• Infection prevention and safety — "Infection prevention and safety" isn't the standard term.
• Infection prevention — "Infection prevention" alone is incomplete.
• Infection control — "Infection control" alone is incomplete; the full term includes prevention.

⭐ Key point: Every hospital should have an IPC committee, an IPC team, policies, surveillance, and staff training.$x$, null),
(192, $x$Which assessment covers past medical history, family history, reason for admission, current medications, psychosocial and complete physical assessment?$x$, $x$Initial assessment$x$, $x$✅ Correct answer: Initial assessment
The INITIAL (admission) assessment is COMPREHENSIVE: past medical history, family history, reason for admission, current medications and allergies, psychosocial history, and a complete head-to-toe physical examination. It forms the baseline for the care plan.

❌ Why the other options are wrong:
• Focused assessment — A focused assessment looks at one specific problem or system.
• Ongoing assessment — An ongoing assessment is the regular reassessment during care.
• Emergency assessment — An emergency assessment is a rapid check of life-threatening problems (ABCDE).

⭐ Key point: Types of assessment: initial (comprehensive), focused (problem-specific), ongoing (reassessment) and emergency (ABCDE).$x$, null),
(193, $x$A researcher selects every 5th patient admitted to the ICU, starting from a randomly chosen first patient, until the desired sample size is reached. This sampling technique is$x$, $x$Systematic sampling$x$, $x$✅ Correct answer: Systematic sampling
SYSTEMATIC SAMPLING selects every kth person (here, every 5th) from an ordered list, after choosing the first one at random. It is easy to use and gives an even spread through the population.

❌ Why the other options are wrong:
• Stratified random sampling — Stratified random sampling divides the population into groups and samples randomly within each.
• Purposive sampling — Purposive sampling deliberately chooses participants for a reason.
• Snowball sampling — Snowball sampling asks participants to recruit others.

⭐ Key point: Systematic sampling can be biased if the list has a hidden repeating pattern that matches the sampling interval.$x$, null),
(194, $x$A nurse is documenting patient information and notices that the file size is very large. The file size is measured in kilobytes (KB), but the nurse needs to know how many bytes are in one kilobyte. The correct answer is:$x$, $x$1,024 bytes$x$, $x$✅ Correct answer: 1,024 bytes
In computing, a KILOBYTE (KB) is traditionally 1,024 BYTES (2 to the power of 10), because computers work in binary (base 2). Similarly, 1 MB = 1,024 KB and 1 GB = 1,024 MB. (In some modern standards, 1 KB = 1,000 bytes, but 1,024 is the traditional answer.)

❌ Why the other options are wrong:
• 100 bytes — 100 bytes is too small.
• 1,000 bytes — 1,000 bytes is the decimal approximation, but the binary answer is 1,024.
• 10,000 bytes — 10,000 bytes is too large.

⭐ Key point: 1 byte = 8 bits. Bit → byte → KB → MB → GB → TB.$x$, null),
(195, $x$The gold-standard method for confirming initial placement of a blindly inserted nasogastric or orogastric feeding tube before starting feeds is:$x$, $x$Abdominal or chest X-ray$x$, $x$✅ Correct answer: Abdominal or chest X-ray
The GOLD STANDARD to confirm the position of a blindly inserted feeding tube (NG or OG) before starting feeds is an X-RAY (chest and/or abdomen) showing the tip below the diaphragm in the stomach. It is especially important in ventilated or unconscious patients, who can't cough if the tube enters the airway.

❌ Why the other options are wrong:
• Checking that the external tube length looks approximately correct — External tube length is useful for monitoring movement but doesn't confirm initial position.
• Auscultation of air insufflation over the epigastrium (the "whoosh test") — The "whoosh test" is UNRELIABLE and must NOT be used.
• Observing the patient for coughing during insertion only — Coughing during insertion may or may not occur; it doesn't confirm position.

⭐ Key point: A pH of 5.5 or below on aspirate is the first-line bedside test where available, but X-ray is the gold standard.$x$, null),
(196, $x$Your patient has developed a low-grade fever and states that she has felt very tired lately. You interpret these findings as indicating which stage of infection?$x$, $x$Prodromal stage$x$, $x$✅ Correct answer: Prodromal stage
The PRODROMAL stage of infection is the short period when the person first feels unwell with VAGUE, non-specific symptoms such as low-grade fever, tiredness (fatigue), malaise and headache, before the specific symptoms of the disease appear. The person is often infectious during this stage.

❌ Why the other options are wrong:
• Full stage of illness — The full stage of illness has specific symptoms of the disease.
• Incubation period — The incubation period has no symptoms (from infection to the first symptoms).
• Convalescent period — The convalescent period is recovery.

⭐ Key point: Stages of infection: incubation, prodromal, illness (acute), decline, convalescence.$x$, null),
(197, $x$A test's sensitivity is the proportion of:$x$, $x$Patients with the disease who test positive$x$, $x$✅ Correct answer: Patients with the disease who test positive
SENSITIVITY is the proportion of patients WHO HAVE the disease who TEST POSITIVE (true positives ÷ all people with the disease). A highly sensitive test rarely misses the disease, so a NEGATIVE result helps RULE OUT the disease (SnOut).

❌ Why the other options are wrong:
• All tests that are correct — "All tests that are correct" describes accuracy.
• Positive tests that are true positives — "Positive tests that are true positives" is the POSITIVE PREDICTIVE VALUE.
• Patients without the disease who test negative — "Patients without the disease who test negative" is SPECIFICITY.

⭐ Key point: Sensitivity rules OUT (SnOut); specificity rules IN (SpIn).$x$, null),
(198, $x$A study reports p = 0.03. This means that:$x$, $x$With no real effect, a result this extreme would occur 3% of the time$x$, $x$✅ Correct answer: With no real effect, a result this extreme would occur 3% of the time
A p-value of 0.03 means that, IF there were truly no effect (the null hypothesis is true), a result this extreme (or more) would happen by chance only 3% of the time. Because 0.03 is below 0.05, the result is called "statistically significant", and the null hypothesis is usually rejected.

❌ Why the other options are wrong:
• The study lost 3% of its data, so the result is not valid — The p-value isn't about missing data.
• 3% of the patients in the study had serious side effects — It isn't the rate of side effects.
• There is a 97% chance that the new treatment really works — It doesn't mean a 97% chance that the treatment works (a common misunderstanding).

⭐ Key point: Statistical significance doesn't always mean clinical importance. Look at the effect size and confidence interval too.$x$, null),
(199, $x$A type I error in research is:$x$, $x$Rejecting a null hypothesis that is actually true$x$, $x$✅ Correct answer: Rejecting a null hypothesis that is actually true
A TYPE I ERROR is REJECTING the null hypothesis when it is actually TRUE: concluding there IS an effect or difference when there really ISN'T (a false positive). The risk of a type I error is set by alpha (usually 0.05).

❌ Why the other options are wrong:
• Losing participants during follow-up — Losing participants during follow-up is attrition.
• Accepting a null hypothesis that is false — Accepting a false null hypothesis is a TYPE II error (a false negative).
• Using the wrong sample size — Using the wrong sample size can lead to errors, but isn't the definition of a type I error.

⭐ Key point: Type I = false positive (alpha). Type II = false negative (beta), often from too small a sample. Power = 1 − beta.$x$, null),
(200, $x$On a chest X-ray, the tip of an adult endotracheal tube should lie about:$x$, $x$3–5 cm above the carina$x$, $x$✅ Correct answer: 3–5 cm above the carina
On a chest X-ray, the tip of an adult ETT should lie about 3–5 cm ABOVE the CARINA (where the trachea divides into the two main bronchi), roughly at the level of the medial ends of the clavicles. This allows ventilation of both lungs and room for the tube to move a little with head movement.

❌ Why the other options are wrong:
• At the level of the vocal cords — At the vocal cords, the tube is too high and can slip out.
• In the right main bronchus — In the right main bronchus, only the right lung is ventilated.
• Below the carina in the left bronchus — In the left bronchus, only the left lung is ventilated.

⭐ Key point: A tube that is too deep usually goes into the RIGHT main bronchus (it is shorter, wider and more vertical).$x$, null)
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
insert into rationale_report select 13, count(distinct n), count(*) from upd
  on conflict (day) do update set questions_updated = excluded.questions_updated, rows_changed = excluded.rows_changed;

-- ===================== DAY 14 =====================
-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 14 (200 questions)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).
--   Q33: correct answer changed to: Nasotracheal intubation
--   Q48: correct answer changed to: <40bpm
--   Q55: correct answer changed to: 1.4ml
--   Q73: correct answer changed to: 5


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$The gag reflex primarily depends on which cranial nerve(s)?$x$, $x$Cranial nerves IX and X$x$, $x$✅ Correct answer: Cranial nerves IX and X
The gag reflex protects the airway. Touching the back of the throat sends a SENSORY signal through the GLOSSOPHARYNGEAL nerve (CN IX) to the brainstem. The MOTOR response (the throat muscles contracting) comes through the VAGUS nerve (CN X). Both are needed, and both come from the medulla.

❌ Why the other options are wrong:
• Cranial nerve VII only — CN VII (facial) controls facial expression and taste at the front of the tongue.
• Cranial nerves I and II — CN I (smell) and CN II (sight) aren't involved.
• Cranial nerve XII only — CN XII (hypoglossal) moves the tongue, but isn't the main gag nerve.

⭐ Key point: An absent gag reflex in an unconscious patient means a high risk of aspiration. It is also part of brainstem death testing.$x$, null),
(2, $x$The osmolality of the renal interstitium increases from the cortex toward the tip of the inner medulla, reaching approximately what value in a maximally concentrating human kidney?$x$, $x$About 1200 mOsm/kg$x$, $x$✅ Correct answer: About 1200 mOsm/kg
The loop of Henle creates a gradient of increasing saltiness (osmolality) in the kidney interstitium: about 300 mOsm/kg in the cortex, rising to about 1200 mOsm/kg at the tip of the inner medulla (papilla) in a maximally concentrating kidney. This lets ADH concentrate urine up to about 1200 mOsm/kg.

❌ Why the other options are wrong:
• About 300 mOsm/kg — 300 mOsm/kg is the value in the cortex (like plasma).
• About 600 mOsm/kg at the papilla — 600 mOsm/kg is only about halfway.
• About 2500 mOsm/kg — 2500 mOsm/kg is far higher than the human kidney can reach.

⭐ Key point: Loop diuretics (furosemide) wash out this gradient, so the kidney can't concentrate urine.$x$, null),
(3, $x$In a patient undergoing surgery, it was vital to aspirate the contents of the upper gastrointestinal tract. After the operation, the following values were acquired from an arterial blood sample: pH 7.55, PCO2 52 mm Hg and HCO3- 40 mmol/l. What is the underlying disorder?$x$, $x$Metabolic Alkalosis$x$, $x$✅ Correct answer: Metabolic Alkalosis
Step 1: pH 7.55 is HIGH, so ALKALOSIS. Step 2: HCO₃⁻ 40 is HIGH (pH and HCO₃⁻ both up), so it is METABOLIC. Step 3: PCO₂ 52 is high, which is the lungs COMPENSATING by retaining CO₂. Cause: aspiration (suction) of the upper GI tract removed acidic stomach contents (HCl), leaving excess bicarbonate.

❌ Why the other options are wrong:
• Metabolic Acidosis — Metabolic acidosis would have a LOW pH and LOW HCO₃⁻.
• Respiratory Acidosis — Respiratory acidosis would have a LOW pH.
• Respiratory Alkalosis — Respiratory alkalosis would have a LOW PCO₂.

⭐ Key point: NG suction and vomiting cause hypochloraemic, hypokalaemic metabolic alkalosis. Replace chloride (saline) and potassium.$x$, null),
(4, $x$A patient with blood group O negative is often called the:$x$, $x$Universal donor$x$, $x$✅ Correct answer: Universal donor
O-negative red cells have NO A or B antigens and NO Rh(D) antigen, so they can be given to almost any patient without causing a major ABO or Rh reaction. O-negative is therefore called the UNIVERSAL (red cell) DONOR, and it is used in emergencies before the patient's blood group is known.

❌ Why the other options are wrong:
• Universal recipient — The universal recipient is AB-positive.
• Least compatible donor — O-negative is the MOST compatible donor, not the least.
• Rh-positive donor — O-negative is Rh-NEGATIVE, not positive.

⭐ Key point: For plasma it is reversed: AB plasma is the universal plasma donor.$x$, null),
(5, $x$The approximate total body water content of an adult woman is:$x$, $x$50%$x$, $x$✅ Correct answer: 50%
Total body water is about 60% of body weight in adult MEN and about 50–55% in adult WOMEN. Women have more body fat, and fat contains less water than muscle. Water content also falls with age and obesity.

❌ Why the other options are wrong:
• 80% — 80% is too high for adults (newborns are about 75–80%).
• 70% — 70% is too high for adult women.
• 60% — 60% is the value for adult men.

⭐ Key point: Two-thirds of body water is inside the cells (ICF) and one-third outside (ECF: interstitial fluid and plasma).$x$, null),
(6, $x$Which of the following is NOT a hormone?$x$, $x$Renin$x$, $x$✅ Correct answer: Renin
RENIN is an ENZYME, not a hormone. It is released by the kidney's juxtaglomerular cells and converts angiotensinogen into angiotensin I, which then becomes angiotensin II (a hormone). All the other options are hormones.

❌ Why the other options are wrong:
• Atrial natriuretic peptide — Atrial natriuretic peptide IS a hormone, from the heart's atria; it makes the kidneys excrete sodium.
• Prolactin — Prolactin IS a hormone, from the anterior pituitary; it controls milk production.
• Thymosin — Thymosin IS a hormone, from the thymus; it helps develop T-cells.

⭐ Key point: RAAS: renin (enzyme) → angiotensin I → angiotensin II (via ACE) → aldosterone and vasoconstriction.$x$, null),
(7, $x$Filtration of blood in the nephron primarily occurs at the:$x$, $x$Glomerulus$x$, $x$✅ Correct answer: Glomerulus
FILTRATION of blood happens at the GLOMERULUS, a tuft of capillaries inside Bowman's capsule. High pressure pushes water, salts, glucose, urea and small molecules through the capillary wall into the capsule (the filtrate). Blood cells and large proteins stay in the blood.

❌ Why the other options are wrong:
• Collecting duct — The collecting duct concentrates urine under ADH.
• Loop of Henle — The loop of Henle creates the concentration gradient.
• Distal convoluted tubule — The distal tubule fine-tunes sodium, potassium and acid.

⭐ Key point: Normal GFR is about 120 mL/min (180 L/day), and about 99% of the filtrate is reabsorbed.$x$, null),
(8, $x$An elementary student, was rushed to the hospital due to vomiting and a decreased level of consciousness. The patient displays slow and deep (Kussmaul breathing), and he is lethargic and irritable in response to stimulation. He appears to be dehydrated—his eyes are sunken and mucous membranes are dry—and he has a two-week history of polydipsia, polyuria, and weight loss. Measurement of arterial blood gas shows pH 7.0, PaO2 90 mm Hg, PaCO2 23 mm Hg, and HCO3 12 mmol/L; other results are Na+ 126 mmol/L, K+ 5 mmol/L, and Cl- 95 mmol/L. What is your assessment?$x$, $x$Metabolic Acidosis, Partially, Compensated$x$, $x$✅ Correct answer: Metabolic Acidosis, Partially, Compensated
Step 1: pH 7.0 is very LOW, so ACIDOSIS. Step 2: HCO₃⁻ 12 is LOW, so it is METABOLIC (DKA, with polyuria, polydipsia, weight loss and Kussmaul breathing). Step 3: PaCO₂ 23 is low, meaning the lungs are blowing off CO₂ to COMPENSATE. The pH is still abnormal, so it is PARTIALLY compensated metabolic acidosis.

❌ Why the other options are wrong:
• Respiratory Acidosis, Partially Compensated — Respiratory acidosis would have a HIGH PaCO₂.
• Metabolic Alkalosis, Uncompensated — Metabolic alkalosis would have a HIGH pH and HCO₃⁻.
• Respiratory Acidosis, Uncompensated — Respiratory acidosis would have a HIGH PaCO₂ again.

⭐ Key point: Anion gap here = 126 − (95 + 12) = 19, which is high, as expected in DKA.$x$, null),
(9, $x$Which nerve innervates the diaphragm?$x$, $x$Phrenic nerve$x$, $x$✅ Correct answer: Phrenic nerve
The PHRENIC nerve (from spinal roots C3, C4 and C5) supplies the DIAPHRAGM, the main muscle of breathing. "C3, 4, 5 keeps the diaphragm alive." Spinal cord injury at or above C3–C5 can paralyse the diaphragm and stop breathing.

❌ Why the other options are wrong:
• Median nerve — The median nerve supplies the forearm and hand.
• Radial nerve — The radial nerve supplies the back of the arm and hand.
• Vagus nerve — The vagus nerve supplies the heart, lungs and gut (autonomic), not the diaphragm muscle.

⭐ Key point: Phrenic nerve injury (after neck or heart surgery) causes a raised hemidiaphragm on X-ray.$x$, null),
(10, $x$How many pulmonary veins empty into the right atrium?$x$, $x$None$x$, $x$✅ Correct answer: None
There are FOUR pulmonary veins (two from each lung). They carry OXYGENATED blood from the lungs to the LEFT ATRIUM. NONE empty into the right atrium. The right atrium receives deoxygenated blood from the superior and inferior vena cava and the coronary sinus.

❌ Why the other options are wrong:
• Four — Four is the total number, but they drain into the LEFT atrium.
• Two — Two drain from each lung, into the left atrium.
• One — One is incorrect.

⭐ Key point: Pulmonary veins carry oxygenated blood (the exception to "veins carry deoxygenated blood"); pulmonary arteries carry deoxygenated blood.$x$, null),
(11, $x$The thick ascending limb of the loop of Henle actively reabsorbs sodium, potassium, and chloride via which transporter, the target of loop diuretics?$x$, $x$Na+-K+-2Cl- cotransporter (NKCC2)$x$, $x$✅ Correct answer: Na+-K+-2Cl- cotransporter (NKCC2)
The thick ascending limb of the loop of Henle reabsorbs sodium, potassium and chloride together using the Na⁺-K⁺-2Cl⁻ COTRANSPORTER (NKCC2). LOOP DIURETICS (furosemide, bumetanide) block NKCC2, so large amounts of salt and water are lost in the urine, making them very powerful diuretics.

❌ Why the other options are wrong:
• Sodium-glucose cotransporter (SGLT2) — SGLT2 is in the proximal tubule; SGLT2 inhibitors (gliflozins) block it.
• Epithelial sodium channel (ENaC) — ENaC is in the collecting duct; amiloride blocks it.
• Na+-Cl- cotransporter (NCC) — NCC is in the distal tubule; thiazides block it.

⭐ Key point: Loop diuretic side effects: low potassium, magnesium and calcium, dehydration, and ototoxicity at high doses.$x$, null),
(12, $x$Which pH finding would be consistent with respiratory alkalosis?$x$, $x$7.49$x$, $x$✅ Correct answer: 7.49
Respiratory alkalosis is caused by hyperventilation (anxiety, pain, early sepsis, PE, high altitude), which lowers PaCO₂. Less CO₂ means less acid, so the pH RISES above 7.45. A pH of 7.49 is alkalotic.

❌ Why the other options are wrong:
• 7.35 — 7.35 is the lower limit of normal.
• 7.29 — 7.29 is acidotic.
• 7.45 — 7.45 is the upper limit of normal.

⭐ Key point: Normal pH 7.35–7.45. Below 7.35 is acidosis; above 7.45 is alkalosis.$x$, null),
(13, $x$A patient with hypokalemia (K⁺ 2.8 mEq/L) is receiving IV potassium. Which nursing action is essential?$x$, $x$Monitor serum K⁺ every 2 hours$x$, $x$✅ Correct answer: Monitor serum K⁺ every 2 hours
When giving IV potassium, check the serum K⁺ REGULARLY (about every 2–4 hours during rapid replacement) to avoid overcorrection to dangerous HYPERKALAEMIA. Also use an infusion pump, continuous ECG monitoring for faster rates, and watch the IV site (potassium irritates veins).

❌ Why the other options are wrong:
• Infuse at 20 mEq/hr via central line — 20 mmol/hour via a central line is possible with monitoring, but monitoring K⁺ is the essential action.
• Administer as an IV bolus — IV potassium must NEVER be given as a bolus; it can cause cardiac arrest.
• Dilute in 50 mL D5W over 10 minutes — 50 mL over 10 minutes is far too fast.

⭐ Key point: Peripheral K⁺ is usually no more than 10 mmol/hour. Always use pre-diluted solutions.$x$, null),
(14, $x$A patient with syndrome of inappropriate ADH secretion (SIADH) causing symptomatic hyponatremia is treated with fluid restriction. Which additional mechanism-based therapy directly antagonizes ADH's renal action?$x$, $x$Vasopressin receptor antagonists (vaptans)$x$, $x$✅ Correct answer: Vasopressin receptor antagonists (vaptans)
In SIADH, excess ADH acts on V2 receptors in the kidney collecting ducts to keep water. VASOPRESSIN RECEPTOR ANTAGONISTS ("vaptans", such as tolvaptan and conivaptan) BLOCK these V2 receptors, so the kidneys excrete more free water (aquaresis) and the sodium rises.

❌ Why the other options are wrong:
• Exogenous desmopressin (DDAVP) — Desmopressin acts LIKE ADH and would worsen SIADH.
• IV isotonic saline as first-line for all severities — Isotonic saline isn't first-line for all SIADH and can worsen hyponatraemia.
• Loop diuretics as monotherapy without sodium replacement — Loop diuretics alone without sodium replacement can worsen hyponatraemia.

⭐ Key point: With vaptans, sodium can rise too fast. Monitor sodium closely to avoid osmotic demyelination.$x$, null),
(15, $x$A patient develops tingling of fingers, muscle cramps, and carpopedal spasm after thyroidectomy. The nurse should suspect:$x$, $x$Hypocalcaemia$x$, $x$✅ Correct answer: Hypocalcaemia
After thyroidectomy, the PARATHYROID glands (behind the thyroid) may be damaged or removed, so PTH falls and blood CALCIUM drops (HYPOCALCAEMIA). Low calcium makes nerves and muscles overexcitable: tingling around the mouth and fingers, muscle cramps, CARPOPEDAL SPASM (Trousseau's sign), facial twitching (Chvostek's sign), and in severe cases laryngospasm and seizures.

❌ Why the other options are wrong:
• Hyperkalemia — High potassium causes weakness and ECG changes, not spasms.
• Hypercalcaemia — High calcium causes weakness, constipation and confusion, not spasms.
• Hyponatremia — Low sodium causes confusion and seizures, not carpopedal spasm.

⭐ Key point: Treat with IV calcium gluconate 10%, and keep it available after thyroid and parathyroid surgery.$x$, null),
(16, $x$Which organs are both involved in the synthesis of calcitriol and erythropoietin?$x$, $x$Liver and kidneys$x$, $x$✅ Correct answer: Liver and kidneys
CALCITRIOL (active vitamin D) needs two steps: the LIVER adds a hydroxyl group (25-hydroxylation), then the KIDNEY adds another (1-hydroxylation). ERYTHROPOIETIN (which stimulates red cell production) is made mainly by the KIDNEYS, with a smaller amount from the LIVER. So the liver and kidneys are involved in both.

❌ Why the other options are wrong:
• Thyroid and thymus — The thyroid and thymus don't make either.
• Anterior and posterior pituitary — The pituitary doesn't make either.
• Parathyroids and pancreatic islets — The parathyroids stimulate calcitriol production but don't make erythropoietin.

⭐ Key point: In CKD, low calcitriol causes low calcium and bone disease, and low erythropoietin causes anaemia.$x$, null),
(17, $x$A patient has measured Na⁺ 128 mmol/L with blood glucose 40 mmol/L (720 mg/dL). The corrected sodium is about:$x$, $x$143 mmol/L$x$, $x$✅ Correct answer: 143 mmol/L
High glucose draws water from the cells into the blood, DILUTING the sodium (pseudo-hyponatraemia, or translocational hyponatraemia). To find the true (corrected) sodium, add about 2.4 mmol/L for every 5.5 mmol/L of glucose above normal. Glucose 40 is about 34.5 above 5.5 → 34.5 ÷ 5.5 ≈ 6.3 × 2.4 ≈ 15. Corrected Na⁺ = 128 + 15 ≈ 143 mmol/L.

❌ Why the other options are wrong:
• 160 mmol/L — 160 mmol/L is too high a correction.
• 118 mmol/L — 118 mmol/L subtracts instead of adding.
• 128 mmol/L — 128 mmol/L ignores the correction.

⭐ Key point: In DKA and HHS, watch the corrected sodium. If it rises as glucose falls, the patient is losing free water.$x$, null),
(18, $x$In chronic severe hyponatraemia, sodium should not be raised by more than about:$x$, $x$8–10 mmol/L in the first 24 hours$x$, $x$✅ Correct answer: 8–10 mmol/L in the first 24 hours
In chronic severe hyponatraemia, brain cells have adapted. If sodium is corrected too quickly, osmotic demyelination syndrome (central pontine myelinolysis) can cause paralysis, swallowing difficulty or death. Sodium should NOT be raised by more than about 8–10 mmol/L in the first 24 hours (6–8 in high-risk patients).

❌ Why the other options are wrong:
• 2 mmol/L in the first week — 2 mmol/L in a week is far too slow.
• 15 mmol/L in the first hour — 15 mmol/L in an hour is dangerously fast.
• 20–25 mmol/L in the first 24 hours — 20–25 mmol/L in 24 hours is far too fast.

⭐ Key point: For severe symptoms (seizures), raise sodium by 4–6 mmol/L quickly with 3% saline, then stay within the 24-hour limit.$x$, null),
(19, $x$The electrolyte abnormality most typical of refeeding syndrome in a starved ICU patient is:$x$, $x$Hypophosphataemia$x$, $x$✅ Correct answer: Hypophosphataemia
In REFEEDING syndrome, a starved patient's body switches back to carbohydrate metabolism when feeding starts. Insulin rises, driving glucose, PHOSPHATE, potassium and magnesium into the cells. Blood phosphate drops sharply (HYPOPHOSPHATAEMIA), causing muscle weakness, respiratory failure, heart failure, confusion and seizures.

❌ Why the other options are wrong:
• Hypercalcaemia — Hypercalcaemia isn't typical of refeeding.
• Hyperkalaemia — Potassium FALLS (hypokalaemia), it doesn't rise.
• Hypernatraemia — Hypernatraemia isn't typical; sodium and water retention can occur, but not high sodium.

⭐ Key point: Prevent refeeding: identify at-risk patients, give thiamine, start slowly (10–20 kcal/kg/day), and check and replace phosphate, potassium and magnesium daily.$x$, null),
(20, $x$A patient has Hb 10 g/dL, SaO₂ 100% and PaO₂ 100 mmHg. The arterial oxygen content (CaO₂) is about:$x$, $x$13.7 mL O₂ per dL of blood$x$, $x$✅ Correct answer: 13.7 mL O₂ per dL of blood
Arterial oxygen content (CaO₂) = (1.34 × Hb × SaO₂) + (0.003 × PaO₂). Here: (1.34 × 10 × 1.0) + (0.003 × 100) = 13.4 + 0.3 = 13.7 mL O₂/dL. Most oxygen is carried by HAEMOGLOBIN; dissolved oxygen (from PaO₂) adds very little.

❌ Why the other options are wrong:
• 1.34 mL O₂ per dL of blood — 1.34 is just the oxygen-binding constant.
• 10.0 mL O₂ per dL of blood — 10.0 is the haemoglobin value.
• 20.1 mL O₂ per dL of blood — 20.1 is the normal CaO₂ with Hb 15 g/dL.

⭐ Key point: To improve oxygen delivery, correcting low haemoglobin is often more effective than raising PaO₂ above normal.$x$, null),
(21, $x$Systemic carbon monoxide poisoning in burns patients is best treated with:$x$, $x$Humidified 100% oxygen$x$, $x$✅ Correct answer: Humidified 100% oxygen
Carbon monoxide (CO) binds haemoglobin about 240 times more strongly than oxygen, forming carboxyhaemoglobin (COHb), which can't carry oxygen. Breathing 100% OXYGEN (humidified, via a non-rebreather mask or ETT) speeds CO removal: its half-life falls from about 4–5 hours on room air to about 1 hour on 100% oxygen.

❌ Why the other options are wrong:
• Room air only — Room air takes much longer to remove CO.
• Bronchodilators alone — Bronchodilators don't remove CO.
• Antibiotics — Antibiotics don't treat CO poisoning.

⭐ Key point: Pulse oximeters give FALSELY normal SpO₂ in CO poisoning. Measure COHb on a co-oximetry blood gas. Hyperbaric oxygen is used if available.$x$, null),
(22, $x$A patient is experiencing respiratory failure. Arterial Blood Gas (ABG) results show a PaO₂ of 55 mmHg. Which type of respiratory failure is this most likely to be?$x$, $x$Type I (Hypoxemic) Respiratory Failure$x$, $x$✅ Correct answer: Type I (Hypoxemic) Respiratory Failure
TYPE I (hypoxaemic) respiratory failure means a LOW PaO₂ (below 60 mmHg or 8 kPa) with a NORMAL or LOW PaCO₂. It is caused by problems with oxygen transfer: pneumonia, pulmonary oedema, ARDS, PE. A PaO₂ of 55 mmHg is hypoxaemic, and with no raised CO₂ mentioned, this is most likely type I.

❌ Why the other options are wrong:
• Mixed Respiratory Failure — Mixed failure needs both low O₂ and a raised CO₂ in a specific context.
• There is not enough information to determine the type — Strictly, the PaCO₂ is needed to be certain, but the question looks for the type based on low PaO₂.
• Type II (Hypercapnic) Respiratory Failure — Type II requires a HIGH PaCO₂ (above 45–50 mmHg).

⭐ Key point: Type I = oxygenation failure. Type II = ventilation failure (high CO₂). Always check PaCO₂.$x$, null),
(23, $x$Decreasing level of consciousness in a severe asthmatic patient is classified as:$x$, $x$An absolute indication for intubation$x$, $x$✅ Correct answer: An absolute indication for intubation
In severe asthma, a FALLING level of consciousness means the patient is exhausted, with rising CO₂ and hypoxia, and can no longer protect the airway or keep breathing. It is an ABSOLUTE indication for intubation and ventilation, and a sign of imminent respiratory arrest.

❌ Why the other options are wrong:
• A relative indication for intubation — It isn't relative; it demands immediate action.
• A sign of improvement — It's a sign of deterioration, not improvement.
• Not related to asthma severity — It IS related to asthma severity (a life-threatening feature).

⭐ Key point: Other life-threatening asthma signs: silent chest, cyanosis, exhaustion, bradycardia, hypotension, PEF below 33%, SpO₂ below 92%, and a normal or rising PaCO₂.$x$, null),
(24, $x$The nurse is monitoring the drainage from a UWSD. The nurse should report which of the following findings to the physician immediately?$x$, $x$A sudden increase of bloody drainage$x$, $x$✅ Correct answer: A sudden increase of bloody drainage
A SUDDEN INCREASE in BLOODY (especially bright red) drainage from a chest drain suggests active BLEEDING (haemorrhage), for example from a damaged vessel. It can quickly cause shock. Report it IMMEDIATELY (typically more than 100–200 mL/hour, or more than 1500 mL at insertion).

❌ Why the other options are wrong:
• Clear, serous fluid — Clear serous fluid is normal drainage for an effusion.
• The presence of a small amount of drainage — A small amount of drainage is expected.
• Intermittent bubbling in the water-seal chamber — Intermittent bubbling (with breathing or coughing) is normal with a pneumothorax.

⭐ Key point: Record drainage hourly. Also report sudden cessation with distress (blockage) or new continuous bubbling (air leak).$x$, null),
(25, $x$Severe subcutaneous emphysema after chest trauma raises suspicion of:$x$, $x$Tracheobronchial injury$x$, $x$✅ Correct answer: Tracheobronchial injury
Subcutaneous (surgical) emphysema is air under the skin, which feels like crackling (crepitus) when pressed. SEVERE or rapidly spreading subcutaneous emphysema after chest trauma suggests a large air leak from the AIRWAY: a TRACHEOBRONCHIAL INJURY (a torn trachea or bronchus), or a pneumothorax with a lung tear.

❌ Why the other options are wrong:
• Pericardial tamponade — Tamponade causes low BP, raised JVP and muffled heart sounds.
• Normal healing — Severe emphysema isn't part of normal healing.
• Simple rib fracture — A simple rib fracture may cause mild local emphysema, but severe emphysema suggests airway injury.

⭐ Key point: Tracheobronchial injury can cause a persistent large air leak despite a chest drain. It needs bronchoscopy and surgical repair.$x$, null),
(26, $x$A 7-year-old client is brought to the E.R. He’s tachypneic and afebrile and has a respiratory rate of 36 breaths/minute and a nonproductive cough. He recently had a cold. From his history, the client may have which of the following?$x$, $x$Acute asthma$x$, $x$✅ Correct answer: Acute asthma
A 7-year-old with fast breathing (RR 36), NO fever, a dry (non-productive) cough, and a recent cold (a viral trigger) most likely has ACUTE ASTHMA. Viral infections are common triggers. Listen for wheeze and check for a history of atopy.

❌ Why the other options are wrong:
• Chronic obstructive pulmonary disease (COPD) — COPD occurs in adults, usually smokers.
• Emphysema — Emphysema is an adult disease (part of COPD).
• Bronchial pneumonia — Bronchial pneumonia usually causes FEVER and a productive cough.

⭐ Key point: Treat acute asthma in children: salbutamol (spacer or nebuliser), oral prednisolone, oxygen if SpO₂ is below 94%, and escalate if severe.$x$, null),
(27, $x$In acute severe asthma, steroids should ideally be administered within:$x$, $x$1 hour$x$, $x$✅ Correct answer: 1 hour
In acute severe asthma, steroids (oral prednisolone 40–50 mg, or IV hydrocortisone 100 mg) reduce airway inflammation, but they take several hours to work. They should be given EARLY, ideally within 1 HOUR of arrival, so their effect starts as soon as possible.

❌ Why the other options are wrong:
• 24 hours — 24 hours is too late.
• 6 hours — 6 hours is too late.
• 10 minutes — 10 minutes is ideal but not the standard target.

⭐ Key point: Asthma emergency treatment: oxygen, salbutamol, ipratropium, steroids within 1 hour, and IV magnesium if severe.$x$, null),
(28, $x$An ABG analysis report shows: pH - 7.30; PCO2 - 35mmHg; HCO3- -18mEq/L. These findings are suggestive of$x$, $x$Metabolic acidosis$x$, $x$✅ Correct answer: Metabolic acidosis
Step 1: pH 7.30 is LOW, so ACIDOSIS. Step 2: HCO₃⁻ 18 is LOW, so it is METABOLIC. Step 3: PCO₂ 35 is at the lower end of normal, so there is little respiratory compensation yet. This is METABOLIC ACIDOSIS.

❌ Why the other options are wrong:
• Metabolic alkalosis — Metabolic alkalosis would have a HIGH pH and HCO₃⁻.
• Respiratory alkalosis — Respiratory alkalosis would have a HIGH pH and LOW PCO₂.
• Respiratory acidosis — Respiratory acidosis would have a HIGH PCO₂.

⭐ Key point: ROME: Respiratory = Opposite (pH and PCO₂ move opposite ways); Metabolic = Equal (pH and HCO₃⁻ move the same way).$x$, null),
(29, $x$Which client is at greater risk for respiratory depression while receiving opioids for analgesia?$x$, $x$A child with an arm fracture and cystic fibrosis$x$, $x$✅ Correct answer: A child with an arm fracture and cystic fibrosis
A child with CYSTIC FIBROSIS already has damaged lungs, thick secretions and reduced respiratory reserve. Opioids depress the breathing centre and the cough reflex, so this child is at the greatest risk of respiratory depression, CO₂ retention and retained secretions. Children are also more sensitive to opioids per kilogram.

❌ Why the other options are wrong:
• A young female client with advanced multiple myeloma — A young woman with myeloma may be opioid-tolerant from long-term use.
• A client with a heroin addiction and back pain — A person with heroin addiction is usually TOLERANT to opioids.
• An elderly chronic pain client with a hip fracture — An elderly person with chronic pain is at risk, but long-term users may be tolerant; the child with lung disease is highest risk.

⭐ Key point: Monitor respiratory rate, sedation level and SpO₂ in high-risk patients on opioids, and keep naloxone available.$x$, null),
(30, $x$A patient with respiratory failure has a PaO₂ of 45 mmHg despite receiving oxygen via a non-rebreather mask. The nurse anticipates that the next step in the patient's care will be:$x$, $x$Intubation and mechanical ventilation$x$, $x$✅ Correct answer: Intubation and mechanical ventilation
A PaO₂ of 45 mmHg while on a non-rebreather mask (the highest-concentration oxygen without ventilation) shows SEVERE respiratory failure that isn't responding to oxygen alone. The next step is INTUBATION and MECHANICAL VENTILATION (or NIV in selected cases) to support oxygenation and breathing.

❌ Why the other options are wrong:
• Weaning the patient from oxygen — Weaning from oxygen is the opposite of what is needed.
• Transferring the patient to a regular medical floor — Transfer to a regular ward is unsafe.
• Increasing the oxygen flow rate to 15 L/min — A non-rebreather is already at 15 L/min; more flow won't help much.

⭐ Key point: Signs that oxygen therapy is failing: rising RR, falling SpO₂ despite high FiO₂, exhaustion, confusion, rising CO₂.$x$, null),
(31, $x$For severe choking in a conscious adult, management alternates between:$x$, $x$5 back slaps and 5 abdominal thrusts$x$, $x$✅ Correct answer: 5 back slaps and 5 abdominal thrusts
For severe choking (the person can't speak, cough or breathe) in a conscious ADULT, alternate 5 BACK BLOWS (between the shoulder blades with the heel of the hand) with 5 ABDOMINAL THRUSTS (Heimlich manoeuvre). Each method uses a different force to dislodge the object. Continue until it clears or the person becomes unconscious (then start CPR).

❌ Why the other options are wrong:
• 10 chest compressions and rescue breaths — Chest compressions with rescue breaths are for UNCONSCIOUS patients (CPR).
• Head-tilt chin-lift and jaw thrust — Head-tilt chin-lift and jaw thrust open the airway; they don't clear a foreign body.
• Recovery position and CPR — The recovery position and CPR are for unconscious patients.

⭐ Key point: For infants under 1 year, use 5 back blows and 5 CHEST thrusts (not abdominal thrusts). If the person becomes unconscious, start CPR.$x$, null),
(32, $x$In a ventilated life-threatening asthma patient, an inspiratory pressure target is generally set at:$x$, $x$30–35cmH2O$x$, $x$✅ Correct answer: 30–35cmH2O
In ventilated life-threatening asthma, the airways are very narrow, so high pressures are needed. With pressure-controlled ventilation, the inspiratory pressure target is usually around 30–35 cmH₂O. This gives enough ventilation while trying to limit barotrauma.

❌ Why the other options are wrong:
• 80–90cmH2O — 80–90 cmH₂O would cause barotrauma (pneumothorax).
• 10–15cmH2O — 10–15 cmH₂O is too low to ventilate tight airways.
• 50–60cmH2O — 50–60 cmH₂O is too high.

⭐ Key point: Asthma ventilation: low rate, long expiratory time, small tidal volumes, minimal PEEP, and permissive hypercapnia, with a watch for auto-PEEP.$x$, null),
(33, $x$Which route of intubation is preferable in children undergoing intensive care and requiring prolonged intubation?$x$, $x$Tracheostomy$x$, $x$✅ Correct answer: Nasotracheal intubation
For children who need PROLONGED intubation in intensive care, NASOTRACHEAL intubation is traditionally preferred. The tube is held more firmly by the nose, moves less with mouth and head movement, is better tolerated (less gagging and biting), allows easier mouth care, and reduces the risk of accidental extubation. (The old answer key said "tracheostomy"; a tracheostomy is a surgical airway, not a route of intubation, so the key has been corrected to nasotracheal.)

❌ Why the other options are wrong:
• Laryngotracheal intubation — Laryngotracheal intubation isn't a standard route category.
• Tracheostomy — Tracheostomy is a surgical airway considered for VERY prolonged ventilation, not a route of intubation.
• Orotracheal intubation — Orotracheal intubation is used for emergencies but is less stable for long-term use in children.

⭐ Key point: Avoid nasal routes in suspected basal skull fracture and coagulopathy (risk of nosebleeds).$x$, $x$Nasotracheal intubation$x$),
(34, $x$Patient was wheeled into ICU from A&E unit, during assessment percussing the chest bilaterally provided hyper-resonance or dullness, this is an evidence for internal injuries such as:$x$, $x$Pneumothorax$x$, $x$✅ Correct answer: Pneumothorax
Percussing the chest gives clues about what's inside. HYPER-RESONANCE (a hollow, drum-like sound) means extra air, as in PNEUMOTHORAX. DULLNESS means fluid or solid tissue, as in haemothorax, effusion or consolidation. After trauma, hyper-resonance with reduced breath sounds strongly suggests pneumothorax.

❌ Why the other options are wrong:
• Atelectasis — Atelectasis causes dullness, not hyper-resonance.
• Asthma — Asthma may cause slight hyper-resonance but isn't an internal injury.
• Haematoma — A haematoma causes dullness, but the question's hyper-resonance points to pneumothorax.

⭐ Key point: After chest trauma: hyper-resonance = pneumothorax; stony dullness = haemothorax or effusion.$x$, null),
(35, $x$The critical care nurse while managing patient's airways knows that, the most appropriate head position to prevent falling of tongue thus preventing obstruction of the upper airway is:$x$, $x$Sniffing position$x$, $x$✅ Correct answer: Sniffing position
The SNIFFING position (the neck slightly bent forward and the head tilted back, like sniffing the morning air) lines up the mouth, pharynx and larynx, and lifts the tongue away from the back of the throat, opening the upper airway. It is used for airway management and intubation.

❌ Why the other options are wrong:
• Right lateral position — The right lateral position is a recovery position option, but not the classic head position for airway alignment.
• Dorsal position — The dorsal (supine) position alone lets the tongue fall back.
• Left lateral position — The left lateral position is a recovery position, used to drain secretions.

⭐ Key point: For an unconscious patient who is breathing, the recovery (lateral) position protects the airway. For airway opening, use head tilt–chin lift or jaw thrust.$x$, null),
(36, $x$Concerning pressure-control versus volume-control ventilation:$x$, $x$Volume control will provide a set tidal volume.$x$, $x$✅ Correct answer: Volume control will provide a set tidal volume.
VOLUME-CONTROL ventilation delivers a SET TIDAL VOLUME with each breath. The pressure needed to deliver it changes with lung stiffness (compliance) and airway resistance. In pressure control, the PRESSURE is set and the tidal volume varies with compliance.

❌ Why the other options are wrong:
• Lung compliance is irrelevant with pressure control. — Lung compliance matters greatly in pressure control (it determines the tidal volume).
• Paediatric ventilation never uses pressure control ventilation. — Pressure control IS commonly used in paediatric ventilation.
• Pressure control will provide a set tidal volume. — Pressure control does NOT guarantee a set tidal volume.

⭐ Key point: Volume control: watch the peak and plateau pressures. Pressure control: watch the tidal volume and minute volume.$x$, null),
(37, $x$Tidal volume 500 mL, plateau pressure 30 cmH₂O and PEEP 10 cmH₂O give a static compliance of:$x$, $x$25 mL/cmH₂O$x$, $x$✅ Correct answer: 25 mL/cmH₂O
Static compliance = tidal volume ÷ (plateau pressure − PEEP) = 500 ÷ (30 − 10) = 500 ÷ 20 = 25 mL/cmH₂O. Normal compliance is about 50–100 mL/cmH₂O, so this shows STIFF lungs (as in ARDS or pulmonary oedema).

❌ Why the other options are wrong:
• 12.5 mL/cmH₂O — 12.5 comes from a calculation error.
• 16.7 mL/cmH₂O — 16.7 = 500 ÷ 30, which ignores PEEP.
• 50 mL/cmH₂O — 50 mL/cmH₂O is normal, not the result here.

⭐ Key point: Driving pressure = plateau − PEEP (here 20). Keep it below 15 if possible to protect the lungs.$x$, null),
(38, $x$In ARDS, driving pressure (plateau minus PEEP) is linked to survival when kept:$x$, $x$Below about 15 cmH₂O$x$, $x$✅ Correct answer: Below about 15 cmH₂O
DRIVING PRESSURE (plateau pressure minus PEEP) reflects how much the lungs are stretched with each breath relative to their size. Studies show that keeping it BELOW about 15 cmH₂O is linked to BETTER SURVIVAL in ARDS. A high driving pressure means more stress and injury to the lungs.

❌ Why the other options are wrong:
• Above about 25 cmH₂O — Above 25 cmH₂O is linked to higher mortality.
• Above the peak pressure — Driving pressure can't be above peak pressure.
• Exactly equal to the PEEP — Driving pressure equal to PEEP makes no sense.

⭐ Key point: Lower the driving pressure by reducing tidal volume or optimising PEEP.$x$, null),
(39, $x$Prone positioning in moderate–severe ARDS is recommended when PaO₂/FiO₂ is below 150 mmHg, for at least:$x$, $x$16 hours a day$x$, $x$✅ Correct answer: 16 hours a day
In moderate to severe ARDS (P/F ratio below 150 mmHg), PRONE positioning (lying face down) improves oxygenation and survival. It must be done for long periods: at least 16 HOURS a day. It works by opening collapsed lung areas at the back and improving V/Q matching.

❌ Why the other options are wrong:
• 1 hour a day — 1 hour a day is too short to work.
• 4 hours a week — 4 hours a week is far too short.
• 30 minutes after each meal — 30 minutes after meals is unrelated to ARDS treatment.

⭐ Key point: Nursing in prone position: protect the eyes, face and pressure areas, secure the ETT and lines, and continue enteral feeding with caution.$x$, null),
(40, $x$A ventilated patient has PaO₂ 90 mmHg on FiO₂ 0.6 with PEEP 8. By the Berlin definition this ARDS is:$x$, $x$Moderate (P/F ratio 100–200)$x$, $x$✅ Correct answer: Moderate (P/F ratio 100–200)
P/F ratio = PaO₂ ÷ FiO₂ = 90 ÷ 0.6 = 150 mmHg. By the Berlin definition (with PEEP 5 or above): mild 200–300, MODERATE 100–200, severe 100 or less. A P/F of 150 means MODERATE ARDS.

❌ Why the other options are wrong:
• Severe (P/F ratio below 100) — Severe ARDS is a P/F of 100 or less.
• Not ARDS, as P/F is above 300 — The P/F is 150, not above 300.
• Mild (P/F ratio 200–300) — Mild ARDS is 200–300.

⭐ Key point: A P/F below 150 means moderate to severe ARDS: consider prone positioning and neuromuscular blockade.$x$, null),
(41, $x$A nurse notices frequent artifacts on the ECG monitor for a client whose leads are connected by cable to a console at the bedside. The nurse examines the client to determine the cause. Which of the following items is unlikely to be responsible for the artifact?$x$, $x$Tightly secured cable connections.$x$, $x$✅ Correct answer: Tightly secured cable connections.
Artefact (interference) on the ECG comes from things that disturb the electrical signal: patient MOVEMENT (shivering, tremor), electrodes on HAIRY skin (poor contact), electrodes on the LIMBS (more muscle movement), loose connections and dried gel. TIGHTLY SECURED cable connections REDUCE artefact, so they are UNLIKELY to be the cause.

❌ Why the other options are wrong:
• Leads applied over hairy areas. — Hairy areas DO cause artefact (poor contact).
• Frequent movement of the client. — Frequent movement DOES cause artefact.
• Leads applied to the limbs. — Limb leads DO cause more artefact from muscle movement.

⭐ Key point: Reduce artefact: clip hair, clean and dry the skin, use fresh electrodes, place them over bone on the chest, and secure the cables.$x$, null),
(42, $x$A patient is on the AC volume ventilation after open heart surgery, which of the following is to be taken care of during this mode to pneumothorax?$x$, $x$high peak inspiratory pressure$x$, $x$✅ Correct answer: high peak inspiratory pressure
In assist-control volume ventilation, the machine forces a set volume into the lungs. If the lungs are stiff or the volume is too large, the PEAK INSPIRATORY PRESSURE rises, increasing the risk of BAROTRAUMA and PNEUMOTHORAX (especially after open heart surgery, with fragile lungs and chest drains). Watch the peak and plateau pressures closely.

❌ Why the other options are wrong:
• keeping the patient sedated — Sedation is used for comfort, but it isn't the main way to prevent pneumothorax.
• delivering low PEEP — Low PEEP doesn't cause pneumothorax (high PEEP increases the risk).
• patient effort to breath more comfortable — Patient comfort with breathing isn't the key monitoring point for pneumothorax.

⭐ Key point: Signs of pneumothorax on a ventilator: rising peak pressures, falling SpO₂, falling BP, absent breath sounds on one side.$x$, null),
(43, $x$Chest tube drainage exceeding approximately 200–300mL per hour after coronary artery bypass surgery should prompt concern for:$x$, $x$Postoperative haemorrhage requiring urgent evaluation$x$, $x$✅ Correct answer: Postoperative haemorrhage requiring urgent evaluation
After CABG, some chest drain bleeding is normal, but output of more than about 200–300 mL per HOUR (or 400 mL in the first hour, or persistent output over 100–200 mL/hour) suggests ongoing surgical BLEEDING (POSTOPERATIVE HAEMORRHAGE). It may need correction of clotting, blood transfusion and a return to theatre.

❌ Why the other options are wrong:
• Resolution of the surgical procedure — High drainage doesn't mean the procedure has resolved.
• Chest tube malfunction only, with no clinical significance — High drainage is clinically significant, not just a tube problem.
• Normal expected postoperative drainage — This volume is above normal expected drainage.

⭐ Key point: Also watch for SUDDEN cessation of drainage with low BP and rising CVP, which suggests cardiac tamponade from blocked drains.$x$, null),
(44, $x$Which of the following is not a common potential side effect of Class II Antiarrhythmic drugs (e.g. propranolol, atenolol, carvedilol)?$x$, $x$Hepatotoxicity$x$, $x$✅ Correct answer: Hepatotoxicity
Class II antiarrhythmics are BETA-BLOCKERS (propranolol, atenolol, carvedilol, metoprolol). They block the heart's beta-receptors, causing BRADYCARDIA (slow heart), HYPOTENSION (low BP) and NEGATIVE INOTROPY (weaker contraction). They can also cause bronchospasm, tiredness and hide hypoglycaemia. HEPATOTOXICITY (liver damage) is NOT a typical side effect.

❌ Why the other options are wrong:
• Hypotension — Hypotension IS a common side effect.
• Negative inotropes — Negative inotropy IS a common effect.
• Bradycardia — Bradycardia IS a common side effect.

⭐ Key point: Avoid beta-blockers in severe asthma, acute heart failure with shock, and high-degree heart block.$x$, null),
(45, $x$As a nurse performing cardio-pulmonary resuscitation on a cardiac arrest patient, you are aware that the correct cardiac compression to optimised cardiac function is:$x$, $x$120 Compressions per minute$x$, $x$✅ Correct answer: 120 Compressions per minute
Current guidelines recommend chest compressions at 100–120 per MINUTE, with the aim of about 120/min at the upper end. The keyed answer is 120. Push 5–6 cm deep in adults, allow full chest recoil, and minimise pauses.

❌ Why the other options are wrong:
• 110 compressions per minute — 110 per minute is within the range, but the keyed answer is the upper target.
• 115 compressions per minute — 115 per minute is within the range, but not the keyed answer.
• 100 Compressions per minute — 100 per minute is the lower limit, not the optimum here.

⭐ Key point: Change the person doing compressions every 2 minutes to avoid fatigue. Use capnography to check compression quality.$x$, null),
(46, $x$ST-segment elevation in leads II, III, and aVF is most consistent with a myocardial infarction affecting the:$x$, $x$Inferior wall$x$, $x$✅ Correct answer: Inferior wall
Leads II, III and aVF view the INFERIOR wall of the left ventricle. ST elevation in these leads means an INFERIOR MI, usually caused by blockage of the right coronary artery. Watch for bradycardia, heart block and right ventricular infarction.

❌ Why the other options are wrong:
• Anterior wall — An anterior MI shows changes in V1–V4.
• Lateral wall — A lateral MI shows changes in I, aVL, V5–V6.
• Posterior wall exclusively — A posterior MI shows ST depression in V1–V3 with tall R waves.

⭐ Key point: In an inferior MI, check right-sided leads (V4R). If the RV is involved, give fluids and avoid nitrates.$x$, null),
(47, $x$The action to be taken by critical care nurse before administering morphine 4.0 mg intravenously to a patient complaining of incisional pain is$x$, $x$Assess the patient's respiratory status.$x$, $x$✅ Correct answer: Assess the patient's respiratory status.
IV MORPHINE can cause RESPIRATORY DEPRESSION (slow, shallow breathing), especially in the elderly, the opioid-naive, and patients with lung disease or on other sedatives. Before giving it, ASSESS RESPIRATORY STATUS: rate, depth, SpO₂ and sedation level. Don't give it if the respiratory rate is low or the patient is very drowsy.

❌ Why the other options are wrong:
• Monitor the patient's heart rate. — Heart rate is important, but respiratory status is the priority for opioids.
• Clarify the order with the prescriber. — Clarifying the order isn't needed unless the order is unclear.
• Assess the patient's incision. — Assessing the incision is useful but isn't the safety priority before giving morphine.

⭐ Key point: After IV morphine, monitor respiratory rate, sedation and SpO₂, and keep naloxone available.$x$, null),
(48, $x$A heart rate below what value is used as an ICU admission threshold?$x$, $x$<55bpm$x$, $x$✅ Correct answer: <40bpm
ICU admission and outreach ("call criteria") use physiological thresholds that suggest a patient is dangerously unstable. A heart rate BELOW 40 bpm (or above 140–150) is commonly used. Such a slow rate may cause low cardiac output and signals conditions like complete heart block, hypoxia or drug toxicity. (The old answer key said below 55 bpm; the usual threshold is below 40, so the key has been corrected.)

❌ Why the other options are wrong:
• <90bpm — Below 90 bpm is normal.
• <55bpm — Below 55 bpm is mild bradycardia and often normal (for example in athletes).
• <70bpm — Below 70 bpm is normal.

⭐ Key point: Other common triggers: systolic BP below 90, RR below 8 or above 30, SpO₂ below 90%, a fall in GCS of 2 or more, seizures.$x$, $x$<40bpm$x$),
(49, $x$The classic triad of fat embolism syndrome is:$x$, $x$Confusion, dyspnoea, petechiae$x$, $x$✅ Correct answer: Confusion, dyspnoea, petechiae
Fat embolism syndrome happens 24–72 hours after long bone or pelvic fractures. Fat droplets from the marrow travel to small vessels. The classic TRIAD: 1) DYSPNOEA (breathlessness and hypoxia, as fat blocks lung capillaries), 2) CONFUSION (neurological: drowsiness, agitation), and 3) PETECHIAE (a pinpoint rash on the chest, armpits and conjunctiva).

❌ Why the other options are wrong:
• Hypotension, tachycardia, pallor — Low BP, fast pulse and pallor describe shock.
• Fever, cough, chest pain — Fever, cough and chest pain describe pneumonia.
• Jaundice, ascites, confusion — Jaundice, ascites and confusion describe liver failure.

⭐ Key point: Prevent with early fracture fixation. Treatment is supportive (oxygen, ventilation if needed).$x$, null),
(50, $x$A nurse is assessing Blood pressure of the patient, she knows that the invasive method of measuring Blood pressure is:$x$, $x$Arterial line$x$, $x$✅ Correct answer: Arterial line
An ARTERIAL LINE is a catheter placed in an artery (usually the radial) and connected to a pressure transducer. It measures BP DIRECTLY and CONTINUOUSLY (beat by beat), making it the INVASIVE method of BP measurement. It's used in shock, on vasopressors, and when frequent ABGs are needed.

❌ Why the other options are wrong:
• Cardiac Monitor — A cardiac monitor shows the ECG, not invasive BP.
• PA catheter — A PA catheter measures pressures in the pulmonary artery, not systemic BP.
• Blood pressure cuff — A BP cuff is NON-invasive.

⭐ Key point: Arterial line care: level and zero the transducer, keep the pressure bag at 300 mmHg, check hand perfusion, and label the line clearly.$x$, null),
(51, $x$A nurse monitors a thyroidectomy patient for thyroid crisis. The most important vital sign to observe is:$x$, $x$Pulse rate$x$, $x$✅ Correct answer: Pulse rate
Thyroid crisis (storm) after thyroidectomy releases a flood of thyroid hormone, causing a very fast heart rate (tachycardia above 140, AF), fever, agitation and heart failure. The PULSE RATE is the most important vital sign to watch, because tachycardia is usually the earliest and most telling sign.

❌ Why the other options are wrong:
• Blood pressure — BP may change, but tachycardia appears earlier.
• Respiratory rate — Respiratory rate is important but is not the key early sign.
• Temperature — Temperature rises in thyroid storm, but tachycardia is often noticed first.

⭐ Key point: Thyroid storm treatment: beta-blockers (propranolol), anti-thyroid drugs (PTU), iodine, steroids and cooling.$x$, null),
(52, $x$The purpose of inserting central venous pressure (CVP) into the major vein of body such as jugular vein, subclavian vein, and femoral is to monitor the pressure in;$x$, $x$Right ventricle$x$, $x$✅ Correct answer: Right ventricle
A CVP catheter sits in the superior vena cava near the right atrium. It measures RIGHT ATRIAL pressure, which reflects the FILLING pressure of the RIGHT VENTRICLE (right ventricular end-diastolic pressure, because the tricuspid valve is open in diastole). It guides fluid status and right heart function.

❌ Why the other options are wrong:
• Pulmonary artery — The pulmonary artery is measured with a PA catheter.
• Left atrium — The left atrium is estimated by the wedge pressure (PAWP).
• Left ventricle — The left ventricle is estimated indirectly by the wedge pressure.

⭐ Key point: Normal CVP is 2–8 mmHg. A high CVP means fluid overload, right heart failure or tamponade; a low CVP means hypovolaemia.$x$, null),
(53, $x$A nurse is caring for a post- CABG patient. While performing hemodynamic monitoring, he noted that Pulmonary Artery pressure is 31/18. The nurse would understand which of the following abnormality as the cause of the this PA pressure reading:$x$, $x$Left side heart failure$x$, $x$✅ Correct answer: Left side heart failure
Normal pulmonary artery pressure is about 15–25 / 8–15 mmHg. A PA pressure of 31/18 is RAISED. After CABG, the commonest cause is LEFT SIDED HEART FAILURE: the weakened left ventricle can't pump effectively, so pressure backs up into the left atrium, the lung veins and the pulmonary artery (post-capillary pulmonary hypertension).

❌ Why the other options are wrong:
• Pulmonary valve stenosis — Pulmonary valve stenosis causes a pressure DROP across the valve, with low PA pressure.
• Right sided heart failure — Right heart failure alone doesn't raise PA pressure (the RV can't generate pressure).
• Pulmonary infection — A lung infection can raise PA pressure slightly, but LV failure is the most likely cause here.

⭐ Key point: Check the wedge pressure: a high PAWP confirms the left heart is the cause.$x$, null),
(54, $x$Malignant hypertension is defined as a medical emergency involving:$x$, $x$SBP>180, DBP>120, plus organ damage$x$, $x$✅ Correct answer: SBP>180, DBP>120, plus organ damage
MALIGNANT hypertension (a hypertensive emergency) is very high BP (typically systolic above 180 and/or diastolic above 120 mmHg) WITH acute ORGAN DAMAGE: the brain (encephalopathy, stroke), eyes (papilloedema, retinal haemorrhages), kidneys (AKI), and heart (pulmonary oedema, ACS).

❌ Why the other options are wrong:
• Low blood pressure with organ damage — Low BP with organ damage is shock.
• Only diastolic pressure elevation — It involves both systolic and diastolic pressure.
• Any blood pressure reading above normal — Any high reading without organ damage isn't malignant hypertension.

⭐ Key point: Lower BP gradually: by no more than 25% in the first hour, using IV drugs in the ICU.$x$, null),
(55, $x$Inj. Digoxin ampoules available contains 500 micrograms in 2ml. What volume is needed when 350 microgram is prescribed?$x$, $x$0.7ml$x$, $x$✅ Correct answer: 1.4ml
The stock is 500 micrograms in 2 mL, so the concentration is 500 ÷ 2 = 250 micrograms per mL. Volume needed = dose wanted ÷ concentration = 350 ÷ 250 = 1.4 mL. Using the formula (want ÷ have) × volume: (350 ÷ 500) × 2 = 0.7 × 2 = 1.4 mL. (The old answer key said 0.7 mL, which is the wrong answer; it has been corrected to 1.4 mL.)

❌ Why the other options are wrong:
• 0.7ml — 0.7 mL forgets to multiply by the 2 mL stock volume (it would give only 175 micrograms).
• 1.4µg — "1.4 µg" uses the wrong unit; the answer is a volume in mL.
• 0.7µg — "0.7 µg" is the wrong number and the wrong unit.

⭐ Key point: Formula: (Dose wanted ÷ Stock strength) × Stock volume. Always check the answer makes sense: 350 is less than 500, so the volume must be less than 2 mL.$x$, $x$1.4ml$x$),
(56, $x$A patient's ECG shows ST-segment depression in the anterior leads during an episode of chest pain, which resolves when the pain resolves. This pattern most likely represents:$x$, $x$Myocardial ischaemia$x$, $x$✅ Correct answer: Myocardial ischaemia
ST-segment DEPRESSION that appears DURING chest pain and goes away when the pain goes is the classic sign of reversible MYOCARDIAL ISCHAEMIA (lack of oxygen to the heart muscle, not yet an infarction), as in angina or NSTE-ACS.

❌ Why the other options are wrong:
• Normal variant with no clinical significance — It isn't a normal variant; it's linked to symptoms.
• Old, resolved myocardial infarction with no current significance — An old MI shows Q waves, not transient ST depression.
• Ventricular hypertrophy only — Ventricular hypertrophy can cause fixed ST changes (strain), not changes that come and go with pain.

⭐ Key point: Dynamic ST changes with chest pain need urgent assessment: troponin, aspirin, anticoagulation and cardiology review.$x$, null),
(57, $x$An arterial line trace becomes over-damped. The nurse expects:$x$, $x$Falsely low systolic and falsely high diastolic readings$x$, $x$✅ Correct answer: Falsely low systolic and falsely high diastolic readings
An OVER-DAMPED arterial line (from air bubbles, clots, kinks, soft tubing or a low flush bag) blunts the waveform. The SYSTOLIC reads FALSELY LOW and the DIASTOLIC reads FALSELY HIGH (the MAP is usually still roughly correct). The trace looks flattened, with a poor dicrotic notch.

❌ Why the other options are wrong:
• A correct systolic but zero diastolic reading — A correct systolic with zero diastolic doesn't describe damping.
• An accurate trace but a slow heart rate display — An over-damped trace isn't accurate.
• Falsely high systolic and falsely low diastolic readings — Falsely high systolic and falsely low diastolic describes UNDER-damping.

⭐ Key point: Check damping with the fast-flush (square wave) test, then remove bubbles, flush and check the system.$x$, null),
(58, $x$The fast-flush (square wave) test on a pressure line checks:$x$, $x$The dynamic response (damping) of the system$x$, $x$✅ Correct answer: The dynamic response (damping) of the system
The fast-flush (square wave) test checks the DYNAMIC RESPONSE (damping) of the pressure monitoring system. Pull the flush valve briefly, release it, and watch the trace: an optimally damped system shows 1–2 oscillations before returning to the waveform. More oscillations = under-damped; a slow return with no oscillation = over-damped.

❌ Why the other options are wrong:
• Whether the catheter tip is intravascular — It doesn't check whether the catheter is in the vessel.
• The correct zero level of the transducer — Zeroing is a separate procedure.
• The patient's fluid responsiveness — Fluid responsiveness is tested by PLR or PPV.

⭐ Key point: Do the square wave test at the start of each shift and whenever the waveform looks wrong.$x$, null),
(59, $x$If a CVP transducer is placed below the phlebostatic axis, the reading will be:$x$, $x$Falsely high$x$, $x$✅ Correct answer: Falsely high
The transducer must be at the level of the right atrium (the phlebostatic axis: 4th intercostal space, mid-axillary line). If it is placed BELOW this level, the column of fluid above it adds extra pressure, so the reading is FALSELY HIGH. If it is placed above, the reading is falsely low.

❌ Why the other options are wrong:
• Unchanged — The reading will change.
• Zero — It won't read zero.
• Falsely low — Falsely low readings happen when the transducer is ABOVE the axis.

⭐ Key point: Every 1 cm difference in height changes the reading by about 0.74 mmHg. Re-level after every position change.$x$, null),
(60, $x$After cardiac surgery, chest drain output suddenly stops while CVP rises and BP falls with pulsus paradoxus. The nurse suspects:$x$, $x$Cardiac tamponade from clotted drains$x$, $x$✅ Correct answer: Cardiac tamponade from clotted drains
After cardiac surgery, if chest drain output SUDDENLY STOPS (the drains are blocked by clot) while CVP RISES, BP FALLS and PULSUS PARADOXUS appears, blood is collecting around the heart and squeezing it: CARDIAC TAMPONADE. It is a life-threatening emergency.

❌ Why the other options are wrong:
• Hypovolaemia needing fluid restriction — Hypovolaemia would cause LOW CVP, and fluid restriction would be wrong.
• Right-sided pneumothorax only — A pneumothorax doesn't usually cause pulsus paradoxus with a rising CVP and blocked drains.
• Recovery of normal clotting function — Stopped drainage with collapse isn't recovery.

⭐ Key point: Milk or strip the drains as per policy, call the surgeon immediately, and prepare for re-sternotomy.$x$, null),
(61, $x$A patient in the ICU develops new-onset agitation, disorientation, and pulling at lines, fluctuating throughout the day. The nurse should assess for:$x$, $x$ICU delirium, using a validated delirium assessment tool$x$, $x$✅ Correct answer: ICU delirium, using a validated delirium assessment tool
New-onset AGITATION, DISORIENTATION, pulling at lines, with symptoms that FLUCTUATE through the day, are classic signs of ICU DELIRIUM (acute brain dysfunction). The nurse should assess with a validated tool such as CAM-ICU or ICDSC, then look for causes (infection, drugs, hypoxia, pain, metabolic problems).

❌ Why the other options are wrong:
• Normal ICU behaviour requiring no assessment — This behaviour needs assessment.
• Nothing — this is expected and not clinically significant — It is clinically significant; delirium increases mortality.
• Definite dementia with no other cause considered — Dementia is chronic, not sudden and fluctuating.

⭐ Key point: Delirium prevention: reorientation, sleep, early mobility, pain control, less sedation, family involvement.$x$, null),
(62, $x$Upper motor neuron impairment produces which change in muscle tone?$x$, $x$Spasticity$x$, $x$✅ Correct answer: Spasticity
Upper motor neurone (UMN) lesions (stroke, spinal cord injury) remove the brain's control over spinal reflexes. Muscle tone INCREASES, causing SPASTICITY: resistance that increases with faster movement ("clasp-knife"), along with brisk reflexes and a Babinski sign.

❌ Why the other options are wrong:
• Flaccidity — Flaccidity (floppy tone) is a LOWER motor neurone sign.
• "Cog-wheel" rigidity — Cog-wheel rigidity is seen in Parkinson's disease.
• Myoclonus — Myoclonus is sudden jerking movements, not a tone change.

⭐ Key point: In acute spinal cord injury, tone is initially flaccid (spinal shock), then becomes spastic over weeks.$x$, null),
(63, $x$What is the generally recommended target cerebral perfusion pressure (CPP) in the management of severe traumatic brain injury?$x$, $x$60-70 mmHg$x$, $x$✅ Correct answer: 60-70 mmHg
In severe traumatic brain injury, the brain needs enough blood flow. Guidelines recommend keeping CEREBRAL PERFUSION PRESSURE (CPP = MAP − ICP) at 60–70 mmHg. Too low causes brain ischaemia; too high (above 70) can increase complications like ARDS.

❌ Why the other options are wrong:
• 90-100 mmHg — 90–100 mmHg is too high.
• Greater than 100 mmHg — Above 100 is too high.
• 40-50 mmHg — 40–50 mmHg is too low and risks brain ischaemia.

⭐ Key point: Keep ICP below 22 mmHg and CPP at 60–70. Avoid hypotension (systolic below 110 in head injury).$x$, null),
(64, $x$Which brainstem structure contains the primary neurons responsible for the automatic, rhythmic control of breathing?$x$, $x$The medulla oblongata$x$, $x$✅ Correct answer: The medulla oblongata
The MEDULLA OBLONGATA (in the brainstem) contains the respiratory centres (the dorsal and ventral respiratory groups) that automatically set the rhythm of breathing. It responds to CO₂ and pH changes through the central chemoreceptors. The pons fine-tunes the pattern.

❌ Why the other options are wrong:
• The cerebellum — The cerebellum controls balance and coordination.
• The hypothalamus — The hypothalamus controls temperature, hunger and hormones.
• The occipital cortex — The occipital cortex processes vision.

⭐ Key point: Damage to the medulla (herniation, brainstem stroke) causes abnormal breathing or apnoea.$x$, null),
(65, $x$Which of the following is a meningeal sign?$x$, $x$Kernig$x$, $x$✅ Correct answer: Kernig
KERNIG's sign is a MENINGEAL sign. With the patient lying flat and the hip bent to 90°, straightening the knee causes pain or resistance in the back of the thigh and the back. It is caused by inflamed meninges and nerve roots being stretched. It is seen in meningitis and subarachnoid haemorrhage.

❌ Why the other options are wrong:
• Babinski — Babinski is an upper motor neurone sign.
• Romberg — Romberg tests balance (proprioception).
• Lasègue — Lasègue (straight leg raise) tests sciatic nerve or lumbar root irritation.

⭐ Key point: Other meningeal signs: neck stiffness, Brudzinski's sign, photophobia.$x$, null),
(66, $x$Which pathological reflex occurs in central paralysis (upper motor neuron lesion)?$x$, $x$Babinski$x$, $x$✅ Correct answer: Babinski
The BABINSKI reflex (the big toe goes up and the toes fan out when the sole is stroked) is the classic PATHOLOGICAL reflex of an UPPER MOTOR NEURONE (central) lesion: damage to the corticospinal tract from stroke, brain injury, MS or spinal cord injury.

❌ Why the other options are wrong:
• Brudzinski — Brudzinski's sign is a meningeal sign.
• Neri — Neri's sign is a less common test for nerve root irritation.
• Brown-Séquard — Brown-Séquard is a syndrome (hemisection of the spinal cord), not a reflex.

⭐ Key point: A positive Babinski is normal in babies under about 1–2 years.$x$, null),
(67, $x$A patient is assessed as GCS E3 V4 M5. The total GCS score is:$x$, $x$12$x$, $x$✅ Correct answer: 12
Add the three parts: Eye opening E3 (opens eyes to speech) + Verbal V4 (confused conversation) + Motor M5 (localises to pain) = 3 + 4 + 5 = 12. A GCS of 12 is a MODERATE head injury (9–12).

❌ Why the other options are wrong:
• 10 — 10 is wrong; it doesn't match the sum.
• 8 — 8 would be severe.
• 15 — 15 is normal (E4 V5 M6).

⭐ Key point: GCS: Eyes 1–4, Verbal 1–5, Motor 1–6. Total 3–15. Always report the individual parts, not just the total.$x$, null),
(68, $x$Normal intracranial pressure in an adult is generally considered to be:$x$, $x$0–15 mmHg$x$, $x$✅ Correct answer: 0–15 mmHg
Normal intracranial pressure in adults is about 0–15 mmHg (some sources say 5–15). Pressures above 20–22 mmHg need treatment, because they reduce brain perfusion and risk herniation.

❌ Why the other options are wrong:
• Above 25 mmHg at baseline — Above 25 mmHg at baseline is HIGH.
• 50–60 mmHg — 50–60 mmHg is dangerously high.
• 30–40 mmHg — 30–40 mmHg is dangerously high.

⭐ Key point: CPP = MAP − ICP. Keep ICP below 22 and CPP at 60–70 mmHg.$x$, null),
(69, $x$Which is NOT an ancillary investigation for brainstem death?$x$, $x$Electromyography$x$, $x$✅ Correct answer: Electromyography
Ancillary (supportive) tests for brainstem death show NO BLOOD FLOW to the brain (cerebral angiography, transcranial Doppler, CT angiography, nuclear perfusion scan) or NO BRAIN ELECTRICAL ACTIVITY (EEG). ELECTROMYOGRAPHY (EMG) tests MUSCLE and peripheral nerve activity, not the brain, so it is NOT an ancillary test for brainstem death.

❌ Why the other options are wrong:
• Cerebral angiography — Cerebral angiography IS an ancillary test (no brain blood flow).
• Electroencephalography — EEG IS an ancillary test (no brain electrical activity).
• Transcranial Doppler — Transcranial Doppler IS an ancillary test (reverberating or absent flow).

⭐ Key point: In most countries, brainstem death is diagnosed clinically. Ancillary tests are used when clinical tests can't be fully completed.$x$, null),
(70, $x$Voluntary control of breathing (e.g. holding one's breath) originates in the:$x$, $x$Cerebral cortex$x$, $x$✅ Correct answer: Cerebral cortex
Breathing is automatic (controlled by the medulla), but we can also control it VOLUNTARILY: holding our breath, breathing faster, speaking, singing. This voluntary control comes from the CEREBRAL CORTEX (motor cortex), which can temporarily override the brainstem.

❌ Why the other options are wrong:
• Medulla oblongata — The medulla controls AUTOMATIC breathing.
• Pons only — The pons fine-tunes breathing but isn't the voluntary centre.
• Spinal cord — The spinal cord carries signals but doesn't originate voluntary control.

⭐ Key point: We can't hold our breath until we die: rising CO₂ eventually forces the medulla to make us breathe.$x$, null),
(71, $x$A client is undergoing a comphrensive admission assessment, the critical care nurse knows that, the single most significant indicator of cerebral perfusion and functioning is called$x$, $x$Level of consciousness$x$, $x$✅ Correct answer: Level of consciousness
LEVEL OF CONSCIOUSNESS (LOC) is the single most sensitive and earliest indicator of how well the brain is perfused and functioning. A subtle change (restlessness, confusion, drowsiness) often appears before other signs of deterioration such as pupil changes or Cushing's triad.

❌ Why the other options are wrong:
• Intra cranial pressure — ICP is a measured value, not the clinical indicator.
• Glasgow coma scale — The GCS is a tool for MEASURING level of consciousness.
• Pupils dilatation — Pupil dilatation is a later sign of brain compression.

⭐ Key point: Report ANY change in level of consciousness promptly. It is often the first sign of trouble.$x$, null),
(72, $x$A polyneuropathic pattern of sensory loss presents as:$x$, $x$Numbness and pain in the distal parts of the extremities$x$, $x$✅ Correct answer: Numbness and pain in the distal parts of the extremities
Polyneuropathy (damage to many peripheral nerves, as in diabetes, alcohol, B12 deficiency or drugs) affects the LONGEST nerves first. Symptoms start in the feet and hands, giving a symmetrical "glove-and-stocking" pattern of NUMBNESS, PAIN, tingling and burning in the DISTAL parts of the limbs.

❌ Why the other options are wrong:
• Numbness and analgesia in half of the body — Numbness of half the body suggests a brain lesion (a stroke).
• Analgesia and sensory ataxia in the proximal parts of the extremities — Proximal sensory loss doesn't fit polyneuropathy.
• Pain and sensory ataxia in half of the body — Pain and ataxia in half the body suggest a central lesion.

⭐ Key point: Protect numb feet: check them daily, wear proper footwear, and test bath water temperature.$x$, null),
(73, $x$One of the tools used for monitoring a polytrauma patient is Glasgow Coma scale. The second parameter has a total of what score?$x$, $x$6$x$, $x$✅ Correct answer: 5
The Glasgow Coma Scale has three parameters in this order: 1) EYE opening (maximum 4), 2) VERBAL response (maximum 5), 3) MOTOR response (maximum 6). The SECOND parameter, verbal response, has a maximum score of 5: orientated (5), confused (4), inappropriate words (3), incomprehensible sounds (2), none (1). (The old answer key said 6, which is the motor maximum; it has been corrected to 5.)

❌ Why the other options are wrong:
• 3 — 3 isn't the maximum of any GCS part.
• 6 — 6 is the maximum of the THIRD parameter (motor).
• 15 — 15 is the total maximum GCS.

⭐ Key point: Total GCS ranges from 3 to 15. A GCS of 8 or less means severe injury.$x$, $x$5$x$),
(74, $x$Which of these drugs is used as an antidote for paralytic agents$x$, $x$Neostigmin$x$, $x$✅ Correct answer: Neostigmin
NEOSTIGMINE is an anticholinesterase. It stops the breakdown of acetylcholine at the neuromuscular junction, so more acetylcholine is available to compete with NON-DEPOLARISING muscle relaxants (paralytic agents like rocuronium, vecuronium, atracurium), REVERSING their effect. It is given with glycopyrrolate or atropine to block its effects on the heart and gut.

❌ Why the other options are wrong:
• Atropine — Atropine is given WITH neostigmine to prevent bradycardia, but it doesn't reverse paralysis.
• Adrenaline — Adrenaline isn't a reversal agent.
• Atracurium — Atracurium IS a paralytic agent, not an antidote.

⭐ Key point: Sugammadex directly binds rocuronium and vecuronium and reverses them faster, even from deep block.$x$, null),
(75, $x$The validated clinical tools used in ICU for detecting delirium are:$x$, $x$CAM-ICU and ICDSC$x$, $x$✅ Correct answer: CAM-ICU and ICDSC
The two validated tools for detecting delirium in ICU patients (including those on ventilators) are the CAM-ICU (Confusion Assessment Method for the ICU) and the ICDSC (Intensive Care Delirium Screening Checklist). They check for acute change, inattention, disorganised thinking and altered consciousness.

❌ Why the other options are wrong:
• Braden and Waterlow scales — Braden and Waterlow assess pressure ulcer risk.
• MMSE and AVPU — MMSE assesses cognition (dementia) and needs a verbal patient; AVPU assesses consciousness.
• RASS and GCS — RASS assesses sedation level, and GCS assesses consciousness; neither detects delirium.

⭐ Key point: Use RASS first (the patient must be rousable, RASS −3 or higher) before doing CAM-ICU.$x$, null),
(76, $x$A patient exhibits rhythmic jerking of all four limbs with impaired awareness that correlates with epileptiform discharges on EEG. This is best classified as which of the following?$x$, $x$A convulsive seizure$x$, $x$✅ Correct answer: A convulsive seizure
RHYTHMIC jerking of all four limbs with IMPAIRED AWARENESS, with matching EPILEPTIFORM DISCHARGES on EEG, is a CONVULSIVE (generalised tonic-clonic) SEIZURE: abnormal, excessive electrical activity in the brain causing visible convulsions.

❌ Why the other options are wrong:
• Rigors from fever — Rigors (shivering with fever) don't cause epileptiform EEG changes.
• Decerebrate posturing only — Decerebrate posturing is rigid extension, not rhythmic jerking.
• A simple faint (vasovagal syncope) — A vasovagal faint is brief loss of consciousness without epileptiform EEG activity.

⭐ Key point: Seizures lasting more than 5 minutes are status epilepticus: give benzodiazepines.$x$, null),
(77, $x$Nimodipine is given after aneurysmal subarachnoid haemorrhage to:$x$, $x$Reduce delayed cerebral ischaemia from vasospasm$x$, $x$✅ Correct answer: Reduce delayed cerebral ischaemia from vasospasm
After aneurysmal subarachnoid haemorrhage (SAH), the blood around the brain arteries can cause them to spasm (VASOSPASM) from day 3–14, reducing blood flow and causing DELAYED CEREBRAL ISCHAEMIA (stroke-like deficits). NIMODIPINE (a calcium channel blocker, 60 mg orally every 4 hours for 21 days) improves outcomes by reducing this.

❌ Why the other options are wrong:
• Lower ICP by reducing CSF production — Nimodipine doesn't lower ICP by reducing CSF.
• Prevent rebleeding by clotting the aneurysm — Nimodipine doesn't prevent rebleeding; securing the aneurysm (coiling or clipping) does.
• Treat seizures in the first week — Nimodipine isn't an anti-seizure drug.

⭐ Key point: Watch for hypotension with nimodipine. Keep the patient normovolaemic, and avoid hypotension, which worsens ischaemia.$x$, null),
(78, $x$Hyperventilation to lower PaCO₂ in traumatic brain injury should be used:$x$, $x$Only briefly as a rescue for signs of herniation$x$, $x$✅ Correct answer: Only briefly as a rescue for signs of herniation
Lowering PaCO₂ by hyperventilation narrows the brain's blood vessels (vasoconstriction), which quickly lowers ICP, but it also REDUCES brain blood flow and can cause ISCHAEMIA. It should be used ONLY BRIEFLY as a RESCUE measure for signs of impending herniation (such as a blown pupil, Cushing's triad), while other treatments are started. The normal target is PaCO₂ 4.5–5.0 kPa (35–40 mmHg).

❌ Why the other options are wrong:
• Routinely to keep PaCO₂ below 3 kPa — Routine PaCO₂ below 3 kPa (22 mmHg) causes dangerous brain ischaemia.
• For all patients in the first 24 hours — Routine hyperventilation in all patients in the first 24 hours is harmful.
• Instead of sedation and head elevation — It doesn't replace sedation and head elevation.

⭐ Key point: Avoid hypocapnia, hypoxia and hypotension in brain injury.$x$, null),
(79, $x$After a head injury, urine output rises to 400 mL/h with low urine specific gravity and serum Na⁺ 152 mmol/L. The nurse suspects:$x$, $x$Diabetes insipidus; expect desmopressin$x$, $x$✅ Correct answer: Diabetes insipidus; expect desmopressin
After head injury, damage to the hypothalamus or pituitary can stop ADH release: cranial DIABETES INSIPIDUS. Without ADH, the kidneys pass large volumes of DILUTE urine (400 mL/hour, low specific gravity), so the blood becomes concentrated, with high SODIUM (152). Treatment is DESMOPRESSIN (synthetic ADH) and replacing fluid losses.

❌ Why the other options are wrong:
• Acute tubular necrosis; expect dialysis — ATN causes LOW urine output usually, and wouldn't cause high sodium this way.
• SIADH; expect fluid restriction — SIADH causes LOW urine output and LOW sodium.
• Cerebral salt wasting; expect hypertonic saline — Cerebral salt wasting causes LOW sodium.

⭐ Key point: DI: very high urine output, urine SG below 1.005, serum Na above 145. Monitor urine output hourly and sodium regularly.$x$, null),
(80, $x$Cerebral salt wasting differs from SIADH because in cerebral salt wasting the patient is:$x$, $x$Hypovolaemic and needs sodium and fluid replacement$x$, $x$✅ Correct answer: Hypovolaemic and needs sodium and fluid replacement
Both cerebral salt wasting (CSW) and SIADH cause low sodium after brain injury, but CSW patients are HYPOVOLAEMIC (dehydrated): the kidneys lose both salt AND water. Treatment is SODIUM and FLUID REPLACEMENT (0.9% or hypertonic saline, fludrocortisone). Fluid restriction would worsen dehydration and brain ischaemia.

❌ Why the other options are wrong:
• Hypervolaemic and needs loop diuretics — CSW patients are dry, not overloaded; diuretics would be harmful.
• Normonatraemic and needs no treatment — They have LOW sodium, not normal.
• Euvolaemic and needs strict fluid restriction — Euvolaemia with fluid restriction is the SIADH treatment.

⭐ Key point: Telling them apart: check fluid status (weight, CVP, urea, fluid balance). Dry = CSW; normal or wet = SIADH.$x$, null),
(81, $x$Daily weight monitoring in a patient with renal or cardiac fluid balance concerns is valuable because:$x$, $x$Rapid weight change closely reflects fluid gain or loss$x$, $x$✅ Correct answer: Rapid weight change closely reflects fluid gain or loss
DAILY WEIGHT is valuable because rapid weight change closely reflects FLUID gain or loss (1 kg ≈ 1 L of fluid). In heart or kidney patients, a sudden gain (such as more than 1–2 kg in a day) suggests fluid retention; a loss suggests diuresis or dehydration.

❌ Why the other options are wrong:
• It replaces the need for intake/output charting entirely — It doesn't replace intake/output charting; both are used together.
• It has no correlation with fluid status — It correlates closely with fluid status.
• It only reflects nutritional status — Short-term changes reflect FLUID, not nutrition (nutritional changes are slower).

⭐ Key point: Weigh at the same time each day, on the same scales, with the same clothing.$x$, null),
(82, $x$Which serum marker is increasingly used as an earlier and more specific indicator of reduced GFR than creatinine, particularly in patients with reduced muscle mass?$x$, $x$Cystatin C$x$, $x$✅ Correct answer: Cystatin C
CYSTATIN C is a protein made at a CONSTANT rate by all nucleated cells and filtered by the kidneys. Its blood level rises EARLIER than creatinine when GFR falls, and it isn't affected by muscle mass. This makes it useful in the elderly, malnourished, amputees and ICU patients with low muscle mass, where creatinine can look falsely normal.

❌ Why the other options are wrong:
• C-reactive protein — CRP is an inflammation marker.
• Alkaline phosphatase — Alkaline phosphatase is a liver and bone enzyme.
• Troponin — Troponin is a heart muscle marker.

⭐ Key point: Creatinine depends on muscle mass. In frail or wasted patients, a normal creatinine may hide reduced kidney function.$x$, null),
(83, $x$Which viral hepatitis is the most common viral cause of fulminant hepatic failure?$x$, $x$Hepatitis B$x$, $x$✅ Correct answer: Hepatitis B
HEPATITIS B is the most common VIRAL cause of fulminant (acute) liver failure worldwide, and in Nigeria. Acute infection, flare-ups of chronic infection, or reactivation (with chemotherapy or steroids) can cause sudden severe liver failure.

❌ Why the other options are wrong:
• Hepatitis C — Hepatitis C rarely causes fulminant failure.
• Hepatitis A — Hepatitis A can cause it but is less common than B.
• Hepatitis E only — Hepatitis E can cause it (especially in pregnancy), but B is more common overall.

⭐ Key point: Hepatitis B is preventable by vaccination. All health workers should be vaccinated and check their antibody levels.$x$, null),
(84, $x$The nurse is preparing to change the dressing on a central line used for TPN. What type of dressing is most appropriate?$x$, $x$A transparent, semipermeable membrane dressing$x$, $x$✅ Correct answer: A transparent, semipermeable membrane dressing
A TRANSPARENT, semipermeable membrane dressing is preferred for central lines (including TPN lines). It lets the nurse SEE the insertion site for redness, swelling or pus without removing the dressing, keeps the site sealed against bacteria, and allows moisture to escape. Change it every 7 days, or sooner if loose, wet or soiled.

❌ Why the other options are wrong:
• A simple gauze dressing — Gauze hides the site and must be changed every 2 days.
• A bandage with adhesive tape — A bandage with tape isn't sterile or sealed.
• An occlusive dressing with petroleum jelly — Petroleum jelly isn't used on central line sites.

⭐ Key point: Use chlorhexidine-impregnated dressings or sponges where available to further reduce infection.$x$, null),
(85, $x$A client with cirrhosis is taught about thiamine-rich foods. Which food shows the best understanding?$x$, $x$Pork$x$, $x$✅ Correct answer: Pork
Patients with cirrhosis (especially alcohol-related) are often THIAMINE (vitamin B1) deficient, which can cause Wernicke's encephalopathy. PORK is one of the richest food sources of thiamine. Others: whole grains, legumes (beans, peas), nuts and fortified cereals.

❌ Why the other options are wrong:
• Chicken — Chicken contains some thiamine but much less than pork.
• Broccoli — Broccoli contains small amounts.
• Milk — Milk contains small amounts.

⭐ Key point: In alcohol-related liver disease, give thiamine supplements, especially before glucose.$x$, null),
(86, $x$A nurse finds the TPN bag has been hanging for 26 hours. The most appropriate nursing action is to:$x$, $x$Discard the current bag and obtain a new one$x$, $x$✅ Correct answer: Discard the current bag and obtain a new one
TPN is rich in nutrients, so bacteria and fungi can grow in it once it is opened. TPN bags (and giving sets) should hang for no more than 24 HOURS. A bag hanging for 26 hours must be DISCARDED and replaced with a new bag to prevent bloodstream infection.

❌ Why the other options are wrong:
• Clamp the line and flush it with saline — Clamping and flushing doesn't fix the contamination risk; a new bag is needed.
• Slow the infusion rate until the new bag arrives — Slowing the rate continues the infection risk.
• Continue the infusion as it is still safe — After 24 hours it isn't safe.

⭐ Key point: To avoid hypoglycaemia while waiting, give 10% dextrose until the new bag arrives (if TPN is stopped).$x$, null),
(87, $x$Protein reintroduction in PSE patients is generally recommended at:$x$, $x$20–50g/day$x$, $x$✅ Correct answer: 20–50g/day
In hepatic (portosystemic) encephalopathy, old practice was to severely restrict protein to reduce ammonia. Current advice is NOT to restrict protein severely, because malnutrition worsens outcomes. In this question's keyed answer, protein is REINTRODUCED at a moderate level (20–50 g/day), then increased gradually as tolerated. Modern guidelines aim for a normal protein intake (1.2–1.5 g/kg/day).

❌ Why the other options are wrong:
• No restriction needed — No restriction at all isn't the keyed answer, though modern practice is close to normal intake.
• 100–150g/day — 100–150 g/day is high for initial reintroduction.
• 0–10g/day — 0–10 g/day would cause malnutrition and muscle wasting.

⭐ Key point: Treat hepatic encephalopathy with lactulose (2–3 soft stools a day) and rifaximin, and correct the triggers (bleeding, infection, constipation, sedatives).$x$, null),
(88, $x$The recommended dose of neomycin in the management of PSE is:$x$, $x$1g every 6 hours$x$, $x$✅ Correct answer: 1g every 6 hours
Neomycin is an antibiotic poorly absorbed from the gut. It reduces the bacteria that produce ammonia, lowering blood ammonia in hepatic (portosystemic) encephalopathy. The traditional dose is 1 g orally every 6 hours (4 g/day), for short courses.

❌ Why the other options are wrong:
• 100mg every 6 hours — 100 mg every 6 hours is too little.
• 10g once daily — 10 g once daily is too much.
• 500mg once weekly — 500 mg once weekly is far too little.

⭐ Key point: Neomycin can cause kidney damage and deafness. Rifaximin is now preferred, as it is safer.$x$, null),
(89, $x$To inhibit pancreatic secretions, which pharmacologic agent would you anticipate administering to a patient with acute pancreatitis?$x$, $x$Somatostatin$x$, $x$✅ Correct answer: Somatostatin
SOMATOSTATIN (or its analogue octreotide) inhibits the release of pancreatic enzymes. In acute pancreatitis, reducing pancreatic secretion may lessen autodigestion of the pancreas. (Evidence for routine use is mixed; mainstays are fluids, pain relief and nutrition.)

❌ Why the other options are wrong:
• Pancrelipase — Pancrelipase REPLACES pancreatic enzymes; it doesn't inhibit secretion.
• Pepcid — Pepcid (famotidine) reduces stomach acid, not pancreatic secretion directly.
• Nitroglycerin — Nitroglycerin is a vasodilator, not used for pancreatitis.

⭐ Key point: Acute pancreatitis care: aggressive IV fluids, strong analgesia, early enteral feeding, and monitoring for complications.$x$, null),
(90, $x$Which combination of medications places a critically ill patient at greatest risk of prerenal AKI due to loss of compensatory glomerular autoregulation?$x$, $x$ACE inhibitors and NSAIDs$x$, $x$✅ Correct answer: ACE inhibitors and NSAIDs
The kidney keeps its filtration rate stable (autoregulation) by adjusting two arterioles: it WIDENS the afferent (incoming) arteriole using prostaglandins, and TIGHTENS the efferent (outgoing) arteriole using angiotensin II. NSAIDs block prostaglandins (the afferent arteriole narrows), and ACE inhibitors block angiotensin II (the efferent arteriole relaxes). Together, they remove both protections, causing a big fall in GFR (pre-renal AKI), especially in dehydration.

❌ Why the other options are wrong:
• Calcium channel blockers and insulin — Calcium channel blockers and insulin don't cause this.
• Proton pump inhibitors and antihistamines — PPIs and antihistamines don't cause this (PPIs can rarely cause interstitial nephritis).
• Beta blockers and statins — Beta-blockers and statins don't cause this.

⭐ Key point: The "triple whammy" (ACE inhibitor or ARB + diuretic + NSAID) is especially dangerous for the kidneys.$x$, null),
(91, $x$A bilirubin level above what value is used as a transplant criterion in FHF?$x$, $x$>300 micromol/L$x$, $x$✅ Correct answer: >300 micromol/L
The King's College criteria for liver transplant in non-paracetamol acute liver failure include a BILIRUBIN above 300 µmol/L (17.5 mg/dL), with other factors (INR above 3.5, age, cause, and time from jaundice to encephalopathy). Very high bilirubin shows severe liver dysfunction.

❌ Why the other options are wrong:
• >50 micromol/L — Above 50 µmol/L is mild jaundice.
• >100 micromol/L — Above 100 µmol/L is moderate jaundice.
• >1000 micromol/L — Above 1000 µmol/L is too high a threshold.

⭐ Key point: Also in King's criteria: INR above 6.5 alone, or 3 of 5 factors (age, cause, jaundice-to-encephalopathy time, INR, bilirubin).$x$, null),
(92, $x$A patient with an NG tube to suction has metabolic alkalosis. The nurse anticipates:$x$, $x$Hypokalemia$x$, $x$✅ Correct answer: Hypokalemia
NG suction removes stomach fluid containing hydrochloric acid (H⁺ and Cl⁻), and also some potassium. Losing acid causes METABOLIC ALKALOSIS. In alkalosis, potassium moves into cells, and the kidneys excrete more potassium to save hydrogen ions, causing HYPOKALAEMIA.

❌ Why the other options are wrong:
• Hypercalcemia — Hypercalcaemia isn't typical.
• Hypermagnesemia — Hypermagnesaemia isn't typical.
• Hypernatremia — Hypernatraemia isn't the expected finding.

⭐ Key point: Replace NG losses with saline plus potassium chloride.$x$, null),
(93, $x$Which patient would require the least amount of, or no, heparin anticoagulation during hemodialysis?$x$, $x$A patient who is actively bleeding or recently had surgery$x$, $x$✅ Correct answer: A patient who is actively bleeding or recently had surgery
During haemodialysis, heparin is normally used to stop the blood clotting in the circuit. In patients with ACTIVE BLEEDING or RECENT SURGERY (high bleeding risk), heparin would be dangerous, so dialysis is done with LITTLE OR NO HEPARIN (heparin-free dialysis with saline flushes, or regional citrate anticoagulation).

❌ Why the other options are wrong:
• A patient with a well-functioning arteriovenous fistula — A good fistula doesn't reduce the need for anticoagulation.
• A patient with no bleeding risk undergoing routine outpatient dialysis — Patients with no bleeding risk can have standard heparin.
• A patient with a normal platelet count and coagulation studies — Normal clotting means standard heparin is appropriate.

⭐ Key point: Watch the circuit closely for clotting in heparin-free dialysis.$x$, null),
(94, $x$A 35 year old male is presented to ER with Necrotic Diabetic foot. The physician advised for admission. In which level of care the patient will be admitted?$x$, $x$Level 1$x$, $x$✅ Correct answer: Level 1
A patient with a NECROTIC DIABETIC FOOT needs hospital care (antibiotics, glucose control, wound care, possible surgery), but without organ failure, they don't need ICU or HDU. This fits LEVEL 1 care: ward care with extra observation and support (they may deteriorate, for example into sepsis).

❌ Why the other options are wrong:
• Level 0 — Level 0 is routine ward care without extra monitoring.
• Level 2 — Level 2 (HDU) is for single organ support.
• Level 3 — Level 3 (ICU) is for advanced organ support.

⭐ Key point: If the patient develops sepsis with organ dysfunction, escalate to Level 2 or 3.$x$, null),
(95, $x$A patient's TPN is discontinued. What is the most appropriate nursing action to prevent a rapid drop in blood glucose (hypoglycemia)?$x$, $x$Hanging a bag of D10W (10% Dextrose in Water)$x$, $x$✅ Correct answer: Hanging a bag of D10W (10% Dextrose in Water)
TPN contains a lot of glucose, so the pancreas makes extra insulin. If TPN stops suddenly, the high insulin continues for a while and blood glucose can DROP dangerously (rebound HYPOGLYCAEMIA). Hanging 10% DEXTROSE (D10W) temporarily, or tapering the TPN rate gradually over 1–2 hours, prevents this.

❌ Why the other options are wrong:
• Administering a dose of insulin — Insulin would worsen hypoglycaemia.
• Immediately capping the central line — Capping the line immediately stops glucose suddenly.
• Decreasing the TPN rate to half for 24 hours — Halving the rate for 24 hours isn't the usual approach (tapering is over 1–2 hours).

⭐ Key point: Check blood glucose 30–60 minutes after stopping TPN.$x$, null),
(96, $x$During CRRT with regional citrate anticoagulation, the nurse must closely monitor:$x$, $x$Systemic and post-filter ionised calcium$x$, $x$✅ Correct answer: Systemic and post-filter ionised calcium
Citrate anticoagulation in CRRT works by binding CALCIUM in the circuit, which stops clotting. Monitor POST-FILTER ionised calcium (to check citrate is working, target about 0.25–0.35 mmol/L) and SYSTEMIC (patient) ionised calcium (to ensure the patient has enough, target about 1.0–1.2 mmol/L), with calcium replaced by infusion.

❌ Why the other options are wrong:
• Urine specific gravity every hour — Urine specific gravity isn't relevant.
• Serum troponin every hour — Troponin isn't related to citrate.
• Serum amylase and lipase every 6 hours — Amylase and lipase aren't related.

⭐ Key point: Citrate accumulation (liver failure) shows a low ionised calcium with a high total calcium (total/ionised ratio above 2.5) and metabolic acidosis.$x$, null),
(97, $x$In pre-renal AKI, urine tests usually show:$x$, $x$Urine Na⁺ below 20 mmol/L and FENa below 1%$x$, $x$✅ Correct answer: Urine Na⁺ below 20 mmol/L and FENa below 1%
In PRE-RENAL AKI (from dehydration, low BP), the kidney tubules are still healthy, so they hold on to SODIUM to restore volume. Urine sodium is LOW (below 20 mmol/L), and the fractional excretion of sodium (FENa) is below 1%. The urine is concentrated, and the urine sediment is bland.

❌ Why the other options are wrong:
• Muddy brown granular casts — Muddy brown casts suggest ATN.
• Red cell casts and heavy proteinuria — Red cell casts and heavy proteinuria suggest glomerulonephritis.
• Urine Na⁺ above 40 mmol/L and FENa above 2% — High urine sodium and FENa above 2% suggest ATN (damaged tubules).

⭐ Key point: Diuretics raise urine sodium, making FENa unreliable; use the fractional excretion of urea instead.$x$, null),
(98, $x$Abdominal compartment syndrome is defined as intra-abdominal (bladder) pressure above 20 mmHg with:$x$, $x$New organ dysfunction$x$, $x$✅ Correct answer: New organ dysfunction
Abdominal compartment syndrome (ACS) is defined as intra-abdominal pressure (bladder pressure) ABOVE 20 mmHg (sustained) WITH NEW ORGAN DYSFUNCTION: kidney failure (low urine output), breathing problems (high airway pressures), low cardiac output, or gut ischaemia.

❌ Why the other options are wrong:
• A normal urine output — ACS usually causes LOW urine output.
• Bowel sounds present — Bowel sounds don't define ACS.
• A soft abdomen on palpation — The abdomen is usually TENSE and distended, not soft.

⭐ Key point: Measure bladder pressure at end-expiration, supine, zeroed at the mid-axillary line. Treat by decompression (NG and rectal tubes, drainage, surgery).$x$, null),
(99, $x$Suspected variceal bleeding in a cirrhotic patient should be treated before endoscopy with:$x$, $x$Terlipressin and IV antibiotics$x$, $x$✅ Correct answer: Terlipressin and IV antibiotics
Variceal bleeding in cirrhosis is an emergency. Before endoscopy, give TERLIPRESSIN (a vasopressin analogue that lowers portal pressure and reduces bleeding) and IV ANTIBIOTICS (such as ceftriaxone; infection is common and increases rebleeding and death). Then do endoscopic band ligation. Transfuse cautiously to Hb 7–8 g/dL.

❌ Why the other options are wrong:
• Heparin infusion and aspirin — Heparin and aspirin would worsen bleeding.
• Oral lactulose alone — Lactulose treats encephalopathy, not the bleeding.
• Large-volume saline to Hb above 12 g/dL — Over-transfusion (to Hb above 12) RAISES portal pressure and increases bleeding.

⭐ Key point: Other measures: protect the airway, correct clotting if needed, and use a Sengstaken–Blakemore tube as a bridge for uncontrolled bleeding.$x$, null),
(100, $x$In severe acute pancreatitis, the preferred nutrition route when tolerated is:$x$, $x$Early enteral feeding (nasogastric or nasojejunal)$x$, $x$✅ Correct answer: Early enteral feeding (nasogastric or nasojejunal)
In severe acute pancreatitis, EARLY ENTERAL feeding (via a nasogastric or nasojejunal tube, started within 24–72 hours) is preferred over TPN. It protects the gut barrier, reduces bacterial translocation and infected necrosis, and lowers infection and mortality.

❌ Why the other options are wrong:
• Oral fatty meals to stimulate the pancreas — Fatty meals by mouth may not be tolerated in severe disease.
• Routine parenteral nutrition from day one — Routine TPN from day one has more infections and complications.
• Nil by mouth with no feeding for 2 weeks — Prolonged starvation (2 weeks) harms the gut and nutrition.

⭐ Key point: Use TPN only if enteral feeding fails or isn't tolerated. Start oral feeding when pain settles.$x$, null),
(101, $x$According to the Parkland formula, how much fluid is a nurse required to administer to a patient weighing 70 kg with 30% total body surface area (TBSA) burns in the first 8 hours?$x$, $x$4200 mL$x$, $x$✅ Correct answer: 4200 mL
Parkland formula: 4 mL × weight (kg) × %TBSA = total fluid for the FIRST 24 hours. 4 × 70 × 30 = 8400 mL. HALF of this is given in the FIRST 8 HOURS (counted from the time of the burn, not arrival): 8400 ÷ 2 = 4200 mL. The other half (4200 mL) is given over the next 16 hours.

❌ Why the other options are wrong:
• 2100 mL — 2100 mL is a quarter of the total (an error).
• 8400 mL — 8400 mL is the TOTAL for 24 hours, not the first 8 hours.
• 2800 mL — 2800 mL comes from a calculation error.

⭐ Key point: Use Hartmann's (Ringer's lactate). Adjust the rate to keep urine output at 0.5–1 mL/kg/hour in adults.$x$, null),
(102, $x$Inhalational injury is responsible for approximately what percentage of burns deaths?$x$, $x$90%$x$, $x$✅ Correct answer: 90%
Inhalation injury (smoke and heat damage to the airways and lungs, plus carbon monoxide and cyanide poisoning) is the main cause of death in burns and house fires. In this question's key it accounts for about 90% of burn deaths, especially in fires in enclosed spaces. It greatly increases mortality compared with a burn of the same size without inhalation injury.

❌ Why the other options are wrong:
• 50% — 50% underestimates it in this question.
• 10% — 10% underestimates it.
• 100% — 100% is incorrect; other causes (shock, sepsis, organ failure) also cause deaths.

⭐ Key point: Suspect inhalation injury with enclosed-space fires, facial burns, soot in the mouth, a hoarse voice and stridor. Give 100% oxygen and consider early intubation.$x$, null),
(103, $x$Rubbing frozen tissue during frostbite management is:$x$, $x$Never done — it worsens tissue damage$x$, $x$✅ Correct answer: Never done — it worsens tissue damage
In frostbite, ice crystals form in and around the cells, making the tissue very fragile. RUBBING or massaging the frozen part damages the tissue further (and snow rubbing adds more cold injury). It is NEVER done. Instead, rewarm rapidly in warm water (37–39 °C) for 15–30 minutes, give analgesia, and protect the area.

❌ Why the other options are wrong:
• Only done on the hands — It isn't done on any area, including the hands.
• Recommended to restore circulation — Rubbing worsens damage; it doesn't restore circulation.
• Only done if pain-free — It isn't done even if pain-free.

⭐ Key point: Don't rewarm if there is a risk of refreezing (rewarming then refreezing causes more damage).$x$, null),
(104, $x$A patient with a large burn is being monitored for infection. The nurse should be aware that the primary source of infection in a burn patient is:$x$, $x$The burn wound itself$x$, $x$✅ Correct answer: The burn wound itself
A burn wound is the PRIMARY source of infection in burn patients. The skin barrier is destroyed, and the dead tissue (eschar) and protein-rich fluid are an ideal environment for bacteria, which come from the patient's own skin and gut, and from the environment. The wound becomes colonised within days, and invasive wound infection can lead to sepsis.

❌ Why the other options are wrong:
• The hospital environment — The hospital environment contributes but isn't the primary source.
• The patient's visitors — Visitors can bring germs but aren't the main source.
• The patient's own skin flora — The patient's own skin flora colonises the wound, but the wound itself is the main site.

⭐ Key point: Burn wound care: aseptic dressings, topical antimicrobials (such as silver sulfadiazine), early excision and grafting, and monitoring for sepsis.$x$, null),
(105, $x$Which of the following is the most widely used method of gut decontamination in modern poisoning management, when indicated?$x$, $x$Single-dose activated charcoal$x$, $x$✅ Correct answer: Single-dose activated charcoal
SINGLE-DOSE ACTIVATED CHARCOAL (50 g in adults, 1 g/kg in children) is the most widely used gut decontamination method. It binds many drugs in the gut and stops absorption. It works best within 1 hour of ingestion and in patients with a protected airway.

❌ Why the other options are wrong:
• Gastric lavage as routine for all poisonings — Gastric lavage is no longer routine; it has more risks (aspiration) and limited benefit.
• Whole bowel irrigation for all ingestions — Whole bowel irrigation is only for special cases (iron, lithium, body packers, slow-release drugs).
• Induced vomiting with ipecac — Ipecac-induced vomiting is NOT recommended (aspiration risk, no benefit).

⭐ Key point: Charcoal doesn't bind iron, lithium, alcohols, acids, alkalis or hydrocarbons.$x$, null),
(106, $x$The target urine output in an adult burns patient during fluid resuscitation is:$x$, $x$0.5–1.0ml/kg/hr$x$, $x$✅ Correct answer: 0.5–1.0ml/kg/hr
Urine output is the best bedside guide to whether burn fluid resuscitation is adequate. The target in adults is 0.5–1.0 mL/kg/hour (about 30–50 mL/hour for 70 kg). Children: 1 mL/kg/hour. In electrical burns with myoglobinuria: 1–2 mL/kg/hour (dark urine) to protect the kidneys.

❌ Why the other options are wrong:
• 5ml/kg/hr — 5 mL/kg/hour is too high and means over-resuscitation.
• 2–3ml/kg/hr — 2–3 mL/kg/hour is too high for routine adult burns.
• 0.1–0.2ml/kg/hr — 0.1–0.2 mL/kg/hour is far too low (kidney failure risk).

⭐ Key point: Insert a urinary catheter in major burns and measure output hourly. Too much fluid causes "fluid creep" (oedema, compartment syndromes).$x$, null),
(107, $x$A nurse is providing wound care for a patient with a burn. The main goal of burn wound care is to:$x$, $x$Prevent infection and promote healing$x$, $x$✅ Correct answer: Prevent infection and promote healing
The main GOALS of burn wound care are to PREVENT INFECTION (the main cause of death after the first days) and PROMOTE HEALING (moist wound environment, removing dead tissue, grafting deep burns). Care also aims to reduce pain, maintain function, and limit scarring.

❌ Why the other options are wrong:
• Promote the formation of eschar — Eschar (dead tissue) is removed, not encouraged, because it harbours bacteria.
• Keep the wound wet to prevent infection — A moist environment helps healing, but a "wet" wound doesn't prevent infection.
• Only use topical antibiotics — Topical antibiotics are one tool, not the only goal.

⭐ Key point: Change dressings with aseptic technique, give analgesia before dressing changes, and assess the wound for signs of infection.$x$, null),
(108, $x$A poly-trauma patient with multiple long bone fractures develops sudden dyspnoea, a petechial rash, and confusion 24-48 hours after injury. This presentation should raise suspicion for:$x$, $x$Fat embolism syndrome$x$, $x$✅ Correct answer: Fat embolism syndrome
Sudden breathlessness, a PETECHIAL rash (pinpoint spots on the chest, armpits and conjunctiva) and CONFUSION 24–72 hours after MULTIPLE LONG BONE fractures is the classic picture of FAT EMBOLISM SYNDROME. Fat droplets from the bone marrow travel to the lungs, brain and skin.

❌ Why the other options are wrong:
• Anaesthetic death — "Anaesthetic death" isn't a diagnosis that fits these signs.
• Chronic bronchitis exacerbation — Chronic bronchitis doesn't present this way after trauma.
• A simple wound infection — A wound infection doesn't cause a petechial rash and confusion this quickly.

⭐ Key point: Treat fat embolism with supportive care: oxygen, ventilation if needed, fluids. Early fixation of fractures reduces the risk.$x$, null),
(109, $x$A 23 year old young adult presented to ER Road Traffic accident (RTA).He has poly traumas and massive bleeding. The characteristic of the blood is dark red in color and steady in flow. Which type of hemorrhage is this?$x$, $x$Venous Hemorrhage$x$, $x$✅ Correct answer: Venous Hemorrhage
VENOUS bleeding is DARK RED (low oxygen) and flows STEADILY, because veins are under lower pressure. ARTERIAL bleeding is BRIGHT RED (oxygenated) and SPURTS with each heartbeat, because arteries are under high pressure. Capillary bleeding oozes.

❌ Why the other options are wrong:
• Arterial Hemorrhage — Arterial bleeding is bright red and spurting.
• Internal Hemorrhage — "Internal" describes where the bleeding is, not its type; here it is visible.
• External Hemorrhage — "External" describes location; the colour and flow tell you it is venous.

⭐ Key point: Control external bleeding with direct pressure first. Use a tourniquet for life-threatening limb bleeding.$x$, null),
(110, $x$Which of the following is an orthopaedic-specific indication for ICU admission?$x$, $x$Fat embolism syndrome$x$, $x$✅ Correct answer: Fat embolism syndrome
FAT EMBOLISM SYNDROME is a serious, systemic, potentially life-threatening complication of long bone and pelvic fractures. It can cause respiratory failure (ARDS-like), confusion and coma, needing ventilation and organ support. It is an orthopaedic-specific reason for ICU admission.

❌ Why the other options are wrong:
• Minor wrist fracture — A minor wrist fracture is managed in clinic or on the ward.
• Isolated ankle sprain — An ankle sprain is managed as an outpatient.
• Uncomplicated cast application — An uncomplicated cast doesn't need ICU care.

⭐ Key point: Other orthopaedic reasons for ICU: major polytrauma, massive bleeding (pelvic fractures), compartment syndrome with rhabdomyolysis, and spinal cord injury.$x$, null),
(111, $x$After a burn, a client has BP 70/40, HR 140, RR 25, pallor and weak pedal pulses. The nurse's first action is to:$x$, $x$Start intravenous fluids$x$, $x$✅ Correct answer: Start intravenous fluids
After a burn, low BP (70/40), fast heart rate (140), fast breathing, pallor and weak pulses mean HYPOVOLAEMIC (burn) SHOCK from fluid leaking out of the vessels. The FIRST action is to START IV FLUIDS (large-bore cannulas, Hartmann's) to restore circulating volume.

❌ Why the other options are wrong:
• Check pulses with a Doppler — A Doppler pulse check doesn't treat shock.
• Obtain a complete blood count — A blood count can wait; treatment comes first.
• Obtain an ECG — An ECG can wait; fluid resuscitation is the priority.

⭐ Key point: Follow ABCDE: secure the airway (watch for inhalation injury), give oxygen, then start fluids using the Parkland formula.$x$, null),
(112, $x$Diaphragmatic injury should be suspected with penetrating trauma at or below the:$x$, $x$5th intercostal space$x$, $x$✅ Correct answer: 5th intercostal space
The diaphragm rises as high as the 4th–5th intercostal space during expiration. Any penetrating wound (stab, gunshot) at or below the 5TH INTERCOSTAL SPACE (or the nipple line in front, the scapular tip behind) can injure the diaphragm and the abdominal organs below it (liver, spleen, stomach).

❌ Why the other options are wrong:
• Diaphragmatic injury is never related to wound location — Wound location DOES matter for diaphragm injury.
• 2nd intercostal space — The 2nd intercostal space is too high to reach the diaphragm.
• 10th intercostal space — The 10th intercostal space is below most of the diaphragm's range.

⭐ Key point: Diaphragmatic injuries may be missed initially. Bowel can herniate into the chest later. Laparoscopy or CT helps diagnose them.$x$, null),
(113, $x$The first-line vasopressor recommended in septic shock, according to major guidelines, is:$x$, $x$Norepinephrine$x$, $x$✅ Correct answer: Norepinephrine
NOREPINEPHRINE (noradrenaline) is the FIRST-LINE vasopressor in septic shock in all major guidelines (Surviving Sepsis Campaign). It mainly constricts blood vessels (alpha-1) to raise BP, with little rise in heart rate, and is linked to fewer arrhythmias and better outcomes than dopamine.

❌ Why the other options are wrong:
• Vasopressin as first choice — Vasopressin is ADDED second, to reduce the noradrenaline dose.
• Phenylephrine as first choice — Phenylephrine isn't first-line (it can lower cardiac output).
• Dopamine — Dopamine causes more arrhythmias and is no longer first-line.

⭐ Key point: Target MAP of 65 mmHg or more. Ideally give through a central line, but it can be started peripherally in a large vein briefly.$x$, null),
(114, $x$The monophasic shock energy is used:$x$, $x$200-300 J$x$, $x$✅ Correct answer: 200-300 J
MONOPHASIC defibrillators send current in one direction and need HIGHER energy than biphasic machines. They usually deliver 200–360 J for defibrillation; this question's key uses 200–300 J. Many guidelines recommend 360 J for monophasic shocks in VF and pulseless VT.

❌ Why the other options are wrong:
• 100-200 J — 100–200 J is lower, closer to biphasic energies.
• 150-200 J — 150–200 J is the typical BIPHASIC range.
• 120-200 J — 120–200 J is the typical BIPHASIC range.

⭐ Key point: Biphasic defibrillators are more effective at lower energy (150–200 J). Follow the manufacturer's recommended setting.$x$, null),
(115, $x$In the trauma patient, which route of nutrition support is generally preferred over parenteral nutrition when the gastrointestinal tract is functional, primarily because of superior outcomes related to gut integrity?$x$, $x$Enteral nutrition$x$, $x$✅ Correct answer: Enteral nutrition
In trauma patients with a working gut, ENTERAL nutrition (via the gut) is preferred over parenteral nutrition. It maintains the gut lining (reducing bacterial translocation and infection), supports immunity, is cheaper and has fewer complications. "If the gut works, use it."

❌ Why the other options are wrong:
• Intravenous dextrose alone — IV dextrose alone doesn't provide complete nutrition.
• Parenteral nutrition — Parenteral nutrition has more infections and metabolic complications.
• Oral rehydration solution alone — Oral rehydration solution provides fluid and electrolytes, not nutrition.

⭐ Key point: Start enteral feeding within 24–48 hours of injury once the patient is stable.$x$, null),
(116, $x$Which of the following is the initial analgesic drug of choice for a patient who is in severe pain, with a score of 9 out of 10, due to a fracture?$x$, $x$IV opiate$x$, $x$✅ Correct answer: IV opiate
For SEVERE pain (9/10) from a fracture, the first-line analgesic is an IV OPIOID (such as morphine titrated in small doses). It works quickly and strongly. Combine it with non-drug measures (splinting, elevation) and other analgesics (paracetamol).

❌ Why the other options are wrong:
• Splint — A splint is important for comfort but isn't an analgesic drug.
• IV paracetamol — IV paracetamol helps mild to moderate pain but isn't enough alone for 9/10 pain.
• Rectal NSAID — Rectal NSAIDs are slower and may be avoided in trauma (bleeding, kidney risk).

⭐ Key point: Titrate IV morphine in small doses (1–2 mg every few minutes) to effect, and monitor respiratory rate and sedation.$x$, null),
(117, $x$The 'lethal triad' in major trauma is:$x$, $x$Hypothermia, acidosis and coagulopathy$x$, $x$✅ Correct answer: Hypothermia, acidosis and coagulopathy
The "LETHAL TRIAD" in major trauma is HYPOTHERMIA, ACIDOSIS and COAGULOPATHY. Each worsens the others: cold slows clotting enzymes and platelets, acidosis (from shock) impairs clotting, and ongoing bleeding worsens shock, acidosis and cooling. Breaking the cycle is key to survival.

❌ Why the other options are wrong:
• Hypertension, bradycardia and apnoea — Hypertension, bradycardia and apnoea is Cushing's triad.
• Hypoxia, hypercapnia and hypotension — Hypoxia, hypercapnia and hypotension isn't the trauma triad.
• Fever, tachycardia and leucocytosis — Fever, tachycardia and leucocytosis are signs of inflammation or infection.

⭐ Key point: Prevent the triad: warm the patient, fluids and blood, stop bleeding early (damage control surgery), and give blood products in balanced ratios.$x$, null),
(118, $x$In penetrating torso trauma without head injury, permissive hypotension aims for a systolic BP of about:$x$, $x$80–90 mmHg until bleeding is controlled$x$, $x$✅ Correct answer: 80–90 mmHg until bleeding is controlled
In PERMISSIVE HYPOTENSION, BP is kept lower than normal (systolic about 80–90 mmHg, enough to perfuse the brain and heart) until the bleeding is surgically controlled. Raising BP too high with lots of fluid can dislodge clots, dilute clotting factors, and increase bleeding. It is NOT used in head injury, where higher BP is needed to protect the brain.

❌ Why the other options are wrong:
• 140–160 mmHg using vasopressors — 140–160 mmHg is too high and would increase bleeding.
• 50 mmHg using no fluids at all — 50 mmHg is too low and risks organ damage.
• 120 mmHg using large crystalloid volumes — 120 mmHg with large crystalloid volumes increases bleeding.

⭐ Key point: In TBI, keep systolic BP at 110 mmHg or above (higher in older patients).$x$, null),
(119, $x$A trauma patient has HR 130, falling systolic BP, RR 35 and confusion. The estimated blood loss class is:$x$, $x$Class III (30–40% of blood volume)$x$, $x$✅ Correct answer: Class III (30–40% of blood volume)
ATLS haemorrhage Class III (30–40% blood loss, about 1500–2000 mL): heart rate above 120 (here 130), FALLING systolic BP, respiratory rate 30–40 (here 35), and anxious or confused mental state. Class III is the first class where BP falls, and it usually needs blood transfusion.

❌ Why the other options are wrong:
• No loss; this is anxiety — These signs show significant bleeding, not anxiety.
• Class II (15–30% with normal BP) — Class II has a NORMAL systolic BP.
• Class I (up to 15% of blood volume) — Class I has nearly normal signs.

⭐ Key point: Falling BP is a late sign of blood loss. Act on tachycardia and narrowing pulse pressure early.$x$, null),
(120, $x$A burns patient from a house fire has soot in the mouth, a hoarse voice and singed nasal hair. The nurse should prepare for:$x$, $x$Early intubation before airway oedema develops$x$, $x$✅ Correct answer: Early intubation before airway oedema develops
Soot in the mouth, a hoarse voice and singed nasal hair after a house fire suggest INHALATION INJURY. Heat and smoke cause rapid SWELLING of the upper airway, which can block it within hours, especially as fluids are given. EARLY INTUBATION (before oedema develops) by an experienced operator secures the airway safely.

❌ Why the other options are wrong:
• Delaying airway care until fluids are given — Delaying airway care risks complete obstruction.
• Discharge after 4 hours of observation — Early discharge is dangerous; swelling progresses over 24 hours.
• Nasal cannula oxygen at 1 L/min only — Low-flow oxygen is inadequate; give 100% oxygen (CO poisoning) and secure the airway.

⭐ Key point: Other signs of airway burn: stridor, wheeze, carbonaceous sputum, facial burns, and burns in an enclosed space.$x$, null),
(121, $x$Concerning convulsions in eclampsia, which is correct?$x$, $x$Strict monitoring of respiratory rate and urine output is essential$x$, $x$✅ Correct answer: Strict monitoring of respiratory rate and urine output is essential
Magnesium sulphate is cleared by the KIDNEYS. If urine output falls, magnesium builds up, causing toxicity: loss of reflexes, RESPIRATORY DEPRESSION and cardiac arrest. Strict monitoring of RESPIRATORY RATE, URINE OUTPUT and reflexes (hourly) is essential.

❌ Why the other options are wrong:
• Diazepam is the first-line anticonvulsant — MAGNESIUM SULPHATE (not diazepam) is the first-line anticonvulsant in eclampsia.
• The total MgSO4 loading dose is 15 g — The usual loading dose is 4 g IV (Pritchard total initial dose is 14 g), not 15 g.
• After MgSO4 at 34 weeks the pregnancy should continue to 40 weeks — After eclampsia, delivery is planned once the mother is stable; continuing to 40 weeks isn't appropriate.

⭐ Key point: Hold magnesium if RR is below 12, urine output below 30 mL/hour, or reflexes are absent. Antidote: calcium gluconate 10%.$x$, null),
(122, $x$A nurse is providing family-centered NICU care. The primary goal of family-centered care is to:$x$, $x$Involve the parents as partners in the newborn's care$x$, $x$✅ Correct answer: Involve the parents as partners in the newborn's care
Family-centred care in the NICU sees the PARENTS as PARTNERS in their baby's care. They are given information, involved in decisions and care (feeding, skin-to-skin contact, kangaroo care), and supported emotionally. This improves bonding, breastfeeding, and parental confidence.

❌ Why the other options are wrong:
• Keep the parents separated from the newborn to prevent infection — Separating parents harms bonding and isn't necessary with good infection control.
• Allow the parents to make all of the medical decisions — Parents share decisions with the team; they don't make all medical decisions alone.
• Only communicate with the parents when they ask a question — Communication should be proactive and regular, not only on request.

⭐ Key point: Kangaroo mother care (skin-to-skin) improves temperature control, breastfeeding and survival in low birth weight babies.$x$, null),
(123, $x$Which statement about intussusception is FALSE?$x$, $x$It is mostly found in adolescents$x$, $x$✅ Correct answer: It is mostly found in adolescents
The question asks for the FALSE statement. Intussusception is MOSTLY found in INFANTS and toddlers (3 months to 3 years, peak 6–18 months), NOT adolescents. In adolescents and adults it is rare and usually has a lead point (a polyp or tumour).

❌ Why the other options are wrong:
• The proximal bowel telescopes into the distal bowel — It is TRUE that the proximal bowel telescopes into the distal bowel.
• It usually occurs in healthy babies without a demonstrable cause — It is TRUE that it usually occurs in healthy babies without a clear cause (often after a viral illness).
• It most commonly occurs at the ileocolic junction — It is TRUE that it most commonly occurs at the ileocolic junction.

⭐ Key point: Classic triad: colicky pain, a sausage-shaped mass, and redcurrant jelly stools.$x$, null),
(124, $x$Amniotic fluid embolism is definitively confirmed by:$x$, $x$Autopsy$x$, $x$✅ Correct answer: Autopsy
Amniotic fluid embolism (AFE) is a CLINICAL diagnosis during life (sudden collapse, hypoxia, hypotension and DIC in labour, after excluding other causes). There is no reliable test to confirm it while the patient is alive. Definitive confirmation is at AUTOPSY, finding fetal cells and debris (squames) in the mother's lung blood vessels.

❌ Why the other options are wrong:
• Clinical symptoms alone — Clinical symptoms suggest AFE but don't definitively confirm it.
• Ultrasound — Ultrasound doesn't diagnose AFE.
• Routine blood test — No routine blood test confirms AFE.

⭐ Key point: AFE is rare but has a high mortality. Treat with resuscitation, ventilation, circulatory support, and massive transfusion for DIC.$x$, null),
(125, $x$The most critical period of the puerperium is:$x$, $x$The early (immediate) period$x$, $x$✅ Correct answer: The early (immediate) period
The puerperium is the 6 weeks after birth. The most CRITICAL period is the EARLY (immediate) period, especially the first 24 hours, when the risks of PPH, eclampsia, shock and amniotic fluid embolism are highest. Close monitoring (vital signs, uterine tone, blood loss) is essential.

❌ Why the other options are wrong:
• Active management of the third stage — Active management of the third stage is a delivery procedure, not a puerperium period.
• The postnatal family-planning visit — The postnatal family-planning visit is later and lower risk.
• The whole 6 weeks equally — The risk is NOT equal throughout; it is highest early.

⭐ Key point: Monitor the mother closely in the first hours: pulse, BP, uterine tone, lochia and bladder.$x$, null),
(126, $x$HELLP syndrome is:$x$, $x$A complication of severe pre-eclampsia$x$, $x$✅ Correct answer: A complication of severe pre-eclampsia
HELLP syndrome (Haemolysis, Elevated Liver enzymes, Low Platelets) is a severe complication of PRE-ECLAMPSIA (though it can occur without high BP). It causes RUQ or epigastric pain, nausea, and can lead to DIC, liver rupture and death. Delivery is the main treatment.

❌ Why the other options are wrong:
• A form of gestational hypertension only — It isn't just gestational hypertension; it involves blood and liver damage.
• A type of fetal growth restriction — It isn't a type of fetal growth restriction (though IUGR may occur).
• An inherited maternal coagulopathy — It isn't inherited; it is a complication of pregnancy.

⭐ Key point: Check platelets and liver enzymes in pre-eclampsia. Platelets below 100 × 10⁹/L are a warning sign.$x$, null),
(127, $x$Which statement about hypertensive disorders of pregnancy is true?$x$, $x$Placental pathology is implicated in the aetiology of pre-eclampsia$x$, $x$✅ Correct answer: Placental pathology is implicated in the aetiology of pre-eclampsia
Pre-eclampsia is caused mainly by ABNORMAL PLACENTATION: the spiral arteries of the uterus don't remodel properly, so the placenta gets poor blood flow. The stressed placenta releases factors that damage the mother's blood vessel lining throughout the body, causing high BP, protein in the urine and organ damage.

❌ Why the other options are wrong:
• Gestational hypertension means any BP ≥140/90 at any time in pregnancy — Gestational hypertension is NEW high BP after 20 weeks WITHOUT protein or organ damage, not "any BP at any time".
• Prolonged barrier contraception is protective — Barrier contraception may actually increase risk (limited exposure to partner's sperm antigens); it isn't protective.
• The Korotkoff V sound marks systolic pressure — The Korotkoff V sound (disappearance) marks DIASTOLIC pressure, not systolic.

⭐ Key point: Low-dose aspirin from 12 weeks reduces pre-eclampsia in high-risk women.$x$, null),
(128, $x$This describe the premature separation of a normally situated placenta occurring after the 28th week of pregnancy.$x$, $x$Abruption placentae$x$, $x$✅ Correct answer: Abruption placentae
ABRUPTIO PLACENTAE (placental abruption) is the PREMATURE SEPARATION of a NORMALLY SITED placenta from the uterine wall after 28 weeks (or after 20 weeks in some definitions). It causes painful bleeding (which may be concealed), a tense, tender uterus, fetal distress and possibly DIC.

❌ Why the other options are wrong:
• Placenta praevia — Placenta praevia is an ABNORMALLY low-lying placenta.
• Placenta accrete — Placenta accreta is abnormal invasion into the uterine wall.
• Placenta circumventer — Placenta circumvallata is an abnormal shape of the placental edge.

⭐ Key point: Risk factors for abruption: hypertension, trauma, cocaine, smoking, previous abruption.$x$, null),
(129, $x$The most common presentation of a pre-eclamptic patient is:$x$, $x$No symptoms$x$, $x$✅ Correct answer: No symptoms
Most women with pre-eclampsia have NO SYMPTOMS. It is usually found at a routine antenatal check by finding HIGH BP and PROTEIN in the urine. That's why regular antenatal visits are so important. Symptoms (headache, visual changes, epigastric pain, swelling) appear when it becomes severe.

❌ Why the other options are wrong:
• Dyspareunia — Dyspareunia (painful intercourse) is unrelated.
• Abdominal pain — Abdominal (epigastric) pain is a sign of SEVERE disease or HELLP.
• Convulsions — Convulsions mean ECLAMPSIA, a late complication.

⭐ Key point: Check BP and urine for protein at every antenatal visit.$x$, null),
(130, $x$A nurse is assessing a newborn for signs of birth asphyxia. Which of the following is a key sign?$x$, $x$Poor muscle tone and a low Apgar score$x$, $x$✅ Correct answer: Poor muscle tone and a low Apgar score
Birth asphyxia (lack of oxygen around birth) causes a baby that is FLOPPY (poor muscle tone), with poor breathing, a slow heart rate, and a LOW APGAR score. The baby may need resuscitation and may develop hypoxic-ischaemic encephalopathy (HIE).

❌ Why the other options are wrong:
• A vigorous kick and a respiratory rate of 40 breaths per minute — A vigorous kick and normal breathing describe a healthy baby.
• A pink color and a strong cry — A pink colour and strong cry describe a healthy baby.
• A heart rate of 120 beats per minute — A heart rate of 120 is normal.

⭐ Key point: Severe birth asphyxia may be treated with therapeutic cooling (if available) to protect the brain.$x$, null),
(131, $x$Management of hyperemesis gravidarum involves:$x$, $x$Vitamin B6 combined with doxylamine$x$, $x$✅ Correct answer: Vitamin B6 combined with doxylamine
For nausea and vomiting in pregnancy and hyperemesis gravidarum, VITAMIN B6 (PYRIDOXINE) combined with DOXYLAMINE (an antihistamine) is a safe and effective first-line treatment. Severe cases need IV fluids (0.9% saline with potassium), thiamine, other antiemetics, and thromboprophylaxis.

❌ Why the other options are wrong:
• Mandatory IM analgin — IM analgin (metamizole) isn't a treatment for hyperemesis.
• Nil by mouth until discharge — Nil by mouth until discharge isn't recommended; oral intake is reintroduced as tolerated.
• Dextrose water as the preferred fluid — Dextrose solutions without thiamine can trigger Wernicke's encephalopathy; saline is preferred.

⭐ Key point: Give thiamine to women with prolonged vomiting before giving dextrose.$x$, null),
(132, $x$A nurse is providing care for a newborn who is at risk for hypothermia. The most effective nursing intervention is to:$x$, $x$Place the newborn under a radiant warmer$x$, $x$✅ Correct answer: Place the newborn under a radiant warmer
A RADIANT WARMER provides direct heat to the baby (especially preterm, low birth weight or sick babies), preventing heat loss while allowing access for care. It is a highly effective way to prevent hypothermia, along with drying, skin-to-skin contact and a hat.

❌ Why the other options are wrong:
• Keep the newborn's crib away from any heat sources — Keeping the crib away from heat sources isn't a warming measure.
• Bathe the newborn immediately after birth — Immediate bathing causes heat loss.
• Wrap the newborn in a cold towel — A cold towel causes heat loss.

⭐ Key point: Newborns lose heat by evaporation, conduction, convection and radiation. Keep the delivery room warm (25–28 °C).$x$, null),
(133, $x$Severe hypertension in pre-eclampsia (≥160/110 mmHg) is treated urgently with:$x$, $x$IV labetalol or hydralazine, or oral nifedipine$x$, $x$✅ Correct answer: IV labetalol or hydralazine, or oral nifedipine
Severe hypertension in pre-eclampsia (160/110 mmHg or above) must be treated URGENTLY (within 30–60 minutes) to prevent STROKE. First-line drugs: IV LABETALOL, IV HYDRALAZINE, or ORAL NIFEDIPINE (immediate-release). The target is about 140–150/90–100.

❌ Why the other options are wrong:
• No treatment until after the delivery — Waiting until after delivery risks maternal stroke.
• IV furosemide alone, repeated hourly — Furosemide doesn't treat pre-eclampsia hypertension (it may worsen low blood volume).
• ACE inhibitors such as oral lisinopril — ACE inhibitors are contraindicated in pregnancy (harm to the fetus).

⭐ Key point: Avoid dropping BP too quickly; it can reduce placental blood flow and harm the baby.$x$, null),
(134, $x$Peripartum cardiomyopathy is heart failure that develops:$x$, $x$Late in pregnancy or within 5 months after delivery$x$, $x$✅ Correct answer: Late in pregnancy or within 5 months after delivery
PERIPARTUM CARDIOMYOPATHY is heart failure caused by weak heart muscle (ejection fraction below 45%) that develops in the LAST MONTH of pregnancy or within 5 MONTHS after delivery, with no other cause. It presents with breathlessness, orthopnoea, cough and swelling, often mistaken for normal pregnancy symptoms.

❌ Why the other options are wrong:
• Only in women over 50 years of age — It occurs in women of childbearing age, not only over 50.
• Only after a twin or triplet pregnancy — It isn't limited to multiple pregnancies (though twins are a risk factor).
• Only in the first trimester of pregnancy — It occurs late in pregnancy or after delivery, not in the first trimester.

⭐ Key point: Diagnose with echocardiography. Treat with heart failure drugs (some are avoided in pregnancy) and anticoagulation if the EF is very low.$x$, null),
(135, $x$In neonatal resuscitation, chest compressions start when heart rate stays below 60/min despite:$x$, $x$30 seconds of effective ventilation$x$, $x$✅ Correct answer: 30 seconds of effective ventilation
In neonatal resuscitation, ventilation is the key step. If the heart rate stays BELOW 60/min despite 30 SECONDS of EFFECTIVE VENTILATION (with the chest visibly moving), start CHEST COMPRESSIONS at a 3:1 ratio with ventilation (90 compressions and 30 breaths per minute).

❌ Why the other options are wrong:
• 5 minutes of free-flow oxygen — Free-flow oxygen alone isn't effective ventilation.
• One minute of drying only — Drying alone isn't enough to decide on compressions.
• Two doses of adrenaline — Adrenaline comes AFTER compressions, not before.

⭐ Key point: Recheck the heart rate every 30 seconds. If it stays below 60 despite compressions, give adrenaline via an umbilical venous catheter.$x$, null),
(136, $x$The usual threshold for treating neonatal hypoglycaemia is blood glucose below:$x$, $x$2.6 mmol/L (about 45 mg/dL)$x$, $x$✅ Correct answer: 2.6 mmol/L (about 45 mg/dL)
The usual threshold for treating neonatal hypoglycaemia is a blood glucose below 2.6 mmol/L (about 45 mg/dL). Babies at risk: preterm, small or large for gestational age, infants of diabetic mothers, those who are cold or sick, and those with poor feeding.

❌ Why the other options are wrong:
• 1.0 mmol/L only if the baby has seizures — 1.0 mmol/L is dangerously low; treatment should start well before this.
• 5.5 mmol/L (about 100 mg/dL) — 5.5 mmol/L is normal.
• 8.0 mmol/L (about 145 mg/dL) — 8.0 mmol/L is high.

⭐ Key point: Treat with feeding first if the baby is well. If glucose is very low or the baby is symptomatic, give 2 mL/kg of 10% dextrose IV and an infusion.$x$, null),
(137, $x$Newborn resuscitation begins with:$x$, $x$Five inflation breaths of 2–3 seconds each$x$, $x$✅ Correct answer: Five inflation breaths of 2–3 seconds each
Newborn resuscitation begins (after drying, warming and opening the airway) with FIVE INFLATION BREATHS, each lasting 2–3 SECONDS at 30 cmH₂O (25 in preterm babies). These long breaths push fluid out of the lungs and fill them with air for the first time. Then reassess heart rate and chest movement.

❌ Why the other options are wrong:
• Immediate chest compressions at 120/min — Chest compressions start only if the heart rate stays below 60 despite effective ventilation.
• IV adrenaline before any breaths — Adrenaline is given late, after ventilation and compressions.
• Deep suction of the stomach for one minute — Deep stomach suction isn't part of initial resuscitation (it can cause bradycardia).

⭐ Key point: Most babies respond to effective ventilation alone. Check that the chest is moving.$x$, null),
(138, $x$Oxygen saturation targets of about 91–95% in preterm infants help prevent:$x$, $x$Retinopathy of prematurity$x$, $x$✅ Correct answer: Retinopathy of prematurity
Preterm babies' retinas are still developing. TOO MUCH oxygen damages the growing blood vessels in the retina, causing RETINOPATHY OF PREMATURITY (ROP), which can lead to blindness. Keeping SpO₂ at about 91–95% reduces ROP while still preventing harm from too little oxygen.

❌ Why the other options are wrong:
• Umbilical cord infection — Umbilical infection isn't related to oxygen targets.
• Neonatal hypoglycaemia — Hypoglycaemia isn't related to oxygen targets.
• Physiological neonatal jaundice — Jaundice isn't related to oxygen targets.

⭐ Key point: Preterm babies need eye screening for ROP. Avoid both hyperoxia and hypoxia.$x$, null),
(139, $x$Respiratory distress syndrome in a 28-week preterm baby is mainly due to:$x$, $x$Surfactant deficiency$x$, $x$✅ Correct answer: Surfactant deficiency
In respiratory distress syndrome (RDS), preterm babies (especially below 32–34 weeks) don't make enough SURFACTANT, the substance that keeps the alveoli open. Without it, the alveoli collapse, causing breathing difficulty, grunting, recession and hypoxia.

❌ Why the other options are wrong:
• Meconium aspiration — Meconium aspiration affects term or post-term babies.
• Congenital heart disease — Congenital heart disease is a different cause of cyanosis.
• Excess surfactant — RDS is due to too LITTLE surfactant, not too much.

⭐ Key point: Prevent and treat RDS with antenatal steroids, CPAP, and surfactant given via the ETT.$x$, null),
(140, $x$The estimated weight of a 5-year-old child using (age + 4) × 2 is:$x$, $x$18 kg$x$, $x$✅ Correct answer: 18 kg
The formula weight (kg) = (age + 4) × 2 estimates the weight of children aged 1–10 years in emergencies. For a 5-year-old: (5 + 4) × 2 = 9 × 2 = 18 kg.

❌ Why the other options are wrong:
• 25 kg — 25 kg comes from a calculation error.
• 10 kg — 10 kg is too low (more like a 1-year-old).
• 30 kg — 30 kg is too high.

⭐ Key point: Use the estimate for emergency drug and fluid doses only when the child can't be weighed. Use the actual weight when possible.$x$, null),
(141, $x$The specific antidote for benzodiazepine overdose is:$x$, $x$Flumazenil$x$, $x$✅ Correct answer: Flumazenil
FLUMAZENIL is a competitive antagonist at the benzodiazepine receptor (GABA-A). It reverses the sedation and respiratory depression caused by benzodiazepines (midazolam, diazepam). The dose is 200 micrograms IV, then 100 micrograms every minute as needed.

❌ Why the other options are wrong:
• Naloxone — Naloxone reverses OPIOIDS.
• Protamine sulfate — Protamine reverses HEPARIN.
• Dantrolene — Dantrolene treats malignant hyperthermia.

⭐ Key point: Use flumazenil cautiously: it can trigger SEIZURES in long-term benzodiazepine users or in mixed overdoses (such as with tricyclics).$x$, null),
(142, $x$The nurse is caring for a patient who is on a continuous infusion of Propofol. The nurse should be aware that the infusion should be changed every:$x$, $x$12 hours$x$, $x$✅ Correct answer: 12 hours
Propofol is a lipid emulsion that supports rapid bacterial growth once opened. Propofol infusions (the bottle or syringe and the tubing) should be changed every 12 HOURS (or as per the manufacturer's instructions) to prevent bloodstream infection. Use strict aseptic technique.

❌ Why the other options are wrong:
• 48 hours — 48 hours is too long.
• 24 hours — 24 hours is too long for propofol (it's the time for TPN with lipids).
• 72 hours — 72 hours is far too long.

⭐ Key point: Discard any unused propofol from an opened vial or syringe after 6–12 hours, depending on local policy.$x$, null),
(143, $x$A patient receiving cyclosporine post-transplant has hypertension. Which drug is CONTRAINDICATED?$x$, $x$Verapamil$x$, $x$✅ Correct answer: Verapamil
Ciclosporin is broken down by the liver enzyme CYP3A4. VERAPAMIL (a non-dihydropyridine calcium channel blocker) INHIBITS CYP3A4, so ciclosporin levels RISE, risking toxicity (kidney damage, high BP, tremor). Verapamil is the drug to avoid in this question.

❌ Why the other options are wrong:
• Lisinopril — Lisinopril (an ACE inhibitor) can be used with caution (watch potassium and kidney function).
• Amlodipine — Amlodipine is commonly used in transplant patients for BP.
• Nifedipine — Nifedipine is also a dihydropyridine used for BP.

⭐ Key point: Many drugs interact with ciclosporin and tacrolimus. Always check interactions and monitor drug levels.$x$, null),
(144, $x$A nurse mistakenly calculates a dopamine infusion using the patient's weight in pounds (80 lb) instead of converting to kilograms (36.4 kg) first. If the ordered dose is 5 mcg/kg/min with a concentration of 1600 mcg/mL, by roughly what factor will the error inflate the calculated rate compared to the correct rate?$x$, $x$Approximately 2.2 times too high$x$, $x$✅ Correct answer: Approximately 2.2 times too high
The dose depends on weight in KILOGRAMS. 80 lb = 36.4 kg. Using 80 (pounds) instead of 36.4 (kg) makes the weight figure 80 ÷ 36.4 = 2.2 times too big. The infusion rate is directly proportional to weight, so the rate would be about 2.2 TIMES TOO HIGH, a dangerous overdose.

❌ Why the other options are wrong:
• Approximately 10 times too high — 10 times too high is wrong; the factor is 2.2.
• No difference, the rate is unaffected — There IS a difference.
• Approximately half the correct rate — It would be HIGHER, not half.

⭐ Key point: Always weigh in kilograms. 1 kg = 2.2 lb. Double-check weight-based infusions with a second nurse.$x$, null),
(145, $x$The nurse is caring for a patient on a continuous sedative infusion. The nurse should be aware that which of the following is a major complication of prolonged sedation?$x$, $x$Delirium and an increased length of stay in the ICU$x$, $x$✅ Correct answer: Delirium and an increased length of stay in the ICU
Prolonged deep sedation causes DELIRIUM, longer ventilation, ICU-acquired weakness, pressure ulcers, VAP, and a LONGER ICU STAY. Guidelines recommend light sedation, daily sedation holds, and using propofol or dexmedetomidine rather than benzodiazepines.

❌ Why the other options are wrong:
• A decreased need for mechanical ventilation — Prolonged sedation INCREASES the need for ventilation.
• Increased mobility and decreased risk of pressure ulcers — It DECREASES mobility and increases pressure ulcers.
• An increased level of consciousness — It decreases, not increases, the level of consciousness.

⭐ Key point: Target light sedation (RASS 0 to −1) unless there is a reason for deeper sedation.$x$, null),
(146, $x$A nurse is managing the pain of a patient who is sedated. The nurse knows that the most effective way to assess a sedated patient's pain is by:$x$, $x$Using a behavioral pain scale, such as the BPS or CPOT$x$, $x$✅ Correct answer: Using a behavioral pain scale, such as the BPS or CPOT
Sedated or ventilated patients often can't report pain. Use a validated BEHAVIOURAL pain scale: the BPS (Behavioural Pain Scale: facial expression, upper limb movement, ventilator compliance) or the CPOT (Critical-Care Pain Observation Tool). These detect pain reliably.

❌ Why the other options are wrong:
• Assessing the patient's heart rate and blood pressure — Heart rate and BP can change for many reasons and are unreliable pain indicators on their own.
• Assuming the patient is not in pain since they are sedated — Sedated patients CAN feel pain; never assume they don't.
• Asking the patient to rate their pain on a scale of 1-10 — Sedated patients usually can't rate their pain on a number scale.

⭐ Key point: Treat pain first ("analgesia first" sedation). Pain causes agitation, which is often mistaken for a need for more sedation.$x$, null),
(147, $x$Which action should the nurse take when preparing patient-controlled analgesia for a postoperative patient?$x$, $x$Ask another nurse to double-check the setup before patient use.$x$, $x$✅ Correct answer: Ask another nurse to double-check the setup before patient use.
Patient-controlled analgesia (PCA) delivers opioids, and programming errors can cause fatal overdoses. Having a SECOND NURSE DOUBLE-CHECK the setup (the drug, concentration, bolus dose, lockout time and hourly limit) before use is a key safety step.

❌ Why the other options are wrong:
• Caution the patient to limit the number of times he presses the dosing button. — Patients should press the button when they need pain relief; don't tell them to limit it.
• Provide clear, simple instructions for dosing if the patient is cognitively impaired — PCA isn't suitable for cognitively impaired patients who can't use it correctly.
• Instruct the patient to administer a dose only when experiencing pain. — Patients can also press it before painful activities (such as physiotherapy or coughing), not only when in pain.

⭐ Key point: Only the PATIENT should press the button, never family or staff ("PCA by proxy" causes overdoses).$x$, null),
(148, $x$What is the antidote for a cholinergic crisis caused by anticholinesterase medication overdose?$x$, $x$Atropine$x$, $x$✅ Correct answer: Atropine
A CHOLINERGIC crisis is too much acetylcholine (from an overdose of anticholinesterase drugs like neostigmine or pyridostigmine, or from organophosphates). It causes SLUDGE (salivation, lacrimation, urination, diarrhoea, GI cramps, emesis), slow pulse, bronchospasm and weakness. ATROPINE blocks the muscarinic effects.

❌ Why the other options are wrong:
• Flumazenil — Flumazenil reverses benzodiazepines.
• Naloxone — Naloxone reverses opioids.
• Protamine sulfate — Protamine reverses heparin.

⭐ Key point: Cholinergic crisis can look like myasthenic crisis; both cause weakness, but cholinergic crisis has SLUDGE signs and small pupils.$x$, null),
(149, $x$A patient on warfarin has an INR of 8.0. Which reversal agent is used for active bleeding?$x$, $x$FFP$x$, $x$✅ Correct answer: FFP
An INR of 8.0 with ACTIVE BLEEDING needs IMMEDIATE replacement of clotting factors. FRESH FROZEN PLASMA (FFP) provides all clotting factors and works immediately; it is the keyed answer here. IV vitamin K (5–10 mg) should also be given, because it takes 6–24 hours but gives lasting reversal. Where available, prothrombin complex concentrate (PCC) is preferred, as it works faster and needs a smaller volume.

❌ Why the other options are wrong:
• Vitamin K IV — Vitamin K alone works too slowly for active bleeding (but should also be given).
• Protamine sulfate — Protamine reverses heparin, not warfarin.
• Andexanet alfa — Andexanet alfa reverses factor Xa inhibitors (apixaban, rivaroxaban), not warfarin.

⭐ Key point: Warfarin reversal for major bleeding: PCC (or FFP) plus IV vitamin K.$x$, null),
(150, $x$A nurse is monitoring a sedated patient in the ICU using the Richmond Agitation-Sedation Scale (RASS). A score of 0 on the RASS indicates:$x$, $x$Alert and calm$x$, $x$✅ Correct answer: Alert and calm
The Richmond Agitation-Sedation Scale (RASS) runs from +4 (combative) to −5 (unrousable). A score of 0 means the patient is ALERT AND CALM: the ideal target for many ICU patients.

❌ Why the other options are wrong:
• Unarousable — Unrousable is −5.
• Agitated or restless — Agitated or restless is +1 to +2.
• Light sedation — Light sedation is −1 to −2.

⭐ Key point: The usual ICU target is RASS 0 to −1 (alert and calm to drowsy), unless deeper sedation is needed.$x$, null),
(151, $x$What is the first-line antidote for suspected opioid overdose causing respiratory depression?$x$, $x$Naloxone$x$, $x$✅ Correct answer: Naloxone
NALOXONE is the first-line antidote for opioid overdose. It competitively blocks opioid receptors, reversing respiratory depression, sedation and pinpoint pupils within 1–2 minutes when given IV. The usual dose is 0.4 mg IV (or IM, intranasal), repeated as needed.

❌ Why the other options are wrong:
• N-acetylcysteine — N-acetylcysteine is the antidote for paracetamol.
• Atropine — Atropine treats bradycardia and organophosphate poisoning.
• Flumazenil — Flumazenil reverses benzodiazepines.

⭐ Key point: Naloxone lasts a shorter time than many opioids (30–90 minutes), so monitor for re-sedation and give repeat doses or an infusion.$x$, null),
(152, $x$Clinically significant carbon monoxide production within an anaesthesia circuit is most associated with which agent reacting with desiccated (dried-out) CO2 absorbent?$x$, $x$Desflurane$x$, $x$✅ Correct answer: Desflurane
When CO₂ absorbent (soda lime) in the anaesthetic circuit becomes very DRY (desiccated), it can react with some volatile agents to produce CARBON MONOXIDE. DESFLURANE produces the most (isoflurane less, sevoflurane very little). This can cause CO poisoning in the patient.

❌ Why the other options are wrong:
• Sevoflurane — Sevoflurane produces Compound A (not much CO) with dry absorbent.
• Propofol — Propofol is an IV drug, not used in the circuit.
• Oxygen alone — Oxygen alone doesn't produce CO.

⭐ Key point: Prevent CO production: change absorbent regularly, and turn off the fresh gas flow when the machine isn't in use (it dries the absorbent).$x$, null),
(153, $x$The oxygen flush valve on an anaesthesia machine delivers pure oxygen directly to the common gas outlet, bypassing the vaporizer, at a flow rate of approximately:$x$, $x$35-75 L/min$x$, $x$✅ Correct answer: 35-75 L/min
The OXYGEN FLUSH valve on an anaesthesia machine delivers 100% oxygen directly to the common gas outlet, bypassing the flowmeters and vaporiser, at a very HIGH flow of about 35–75 L/min. It quickly fills the circuit or breathing bag in an emergency.

❌ Why the other options are wrong:
• 1-2 L/min — 1–2 L/min is a normal low fresh gas flow.
• 100-150 L/min — 100–150 L/min is too high.
• 5-10 L/min — 5–10 L/min is a normal fresh gas flow.

⭐ Key point: Using the flush during inspiration can cause barotrauma; it can also dilute anaesthetic agents and risk awareness.$x$, null),
(154, $x$A commonly used first-line antiemetic for postoperative nausea and vomiting prophylaxis is:$x$, $x$Ondansetron$x$, $x$✅ Correct answer: Ondansetron
ONDANSETRON is a 5-HT3 receptor antagonist, a standard first-line drug to prevent and treat postoperative nausea and vomiting (PONV). It blocks serotonin receptors in the gut and the brain's vomiting centre. The usual dose is 4 mg IV.

❌ Why the other options are wrong:
• Atropine — Atropine is an anticholinergic for bradycardia.
• Morphine — Morphine CAUSES nausea and vomiting.
• Succinylcholine — Succinylcholine is a muscle relaxant.

⭐ Key point: Other PONV drugs: dexamethasone, cyclizine, droperidol. Risk factors: female, non-smoker, previous PONV, postoperative opioids.$x$, null),
(155, $x$Compound A, a potentially nephrotoxic breakdown product identified in animal studies, forms when which agent is used with low fresh gas flows and desiccated CO2 absorbent?$x$, $x$Sevoflurane$x$, $x$✅ Correct answer: Sevoflurane
SEVOFLURANE can break down when it contacts CO₂ absorbents (especially dry ones), producing COMPOUND A, which was toxic to the kidneys in animal studies. This happens more with LOW fresh gas flows. Using adequate gas flows (at least 1–2 L/min) reduces Compound A.

❌ Why the other options are wrong:
• Isoflurane — Isoflurane doesn't produce significant Compound A.
• Desflurane — Desflurane produces carbon monoxide with dry absorbent, not Compound A.
• Nitrous oxide — Nitrous oxide doesn't produce Compound A.

⭐ Key point: There's no clear evidence of kidney harm in humans, but low-flow limits are often still followed.$x$, null),
(156, $x$During adult cardiac arrest, IV adrenaline (epinephrine) is administered at what dose and interval?$x$, $x$1mg every 3–5 minutes$x$, $x$✅ Correct answer: 1mg every 3–5 minutes
In adult cardiac arrest, ADRENALINE 1 mg IV (or IO) is given every 3–5 MINUTES (every second CPR cycle). In non-shockable rhythms (asystole, PEA), give it as soon as possible. In shockable rhythms (VF, pulseless VT), give it after the 3rd shock.

❌ Why the other options are wrong:
• 0.1mg every 1 minute — 0.1 mg every minute is the wrong dose and interval.
• 1mg every 15 minutes — Every 15 minutes is too infrequent.
• 10mg once only — 10 mg once only is a dangerous overdose.

⭐ Key point: Flush each dose with 20 mL of saline and raise the arm (for peripheral access).$x$, null),
(157, $x$Noradrenaline has leaked from a peripheral IV into the tissues. The specific treatment is:$x$, $x$Local infiltration with phentolamine$x$, $x$✅ Correct answer: Local infiltration with phentolamine
Noradrenaline is a strong vasoconstrictor. If it leaks into the tissues (extravasation), it narrows the local blood vessels, causing tissue ischaemia and necrosis (skin death). The specific treatment is LOCAL INFILTRATION with PHENTOLAMINE (an alpha-blocker), which reverses the vasoconstriction. Stop the infusion and leave the cannula in place to aspirate first.

❌ Why the other options are wrong:
• Applying heat and massaging the area — Applying heat and massage can spread the drug.
• Giving IV furosemide — Furosemide doesn't treat extravasation.
• Local injection of more noradrenaline — More noradrenaline would worsen the damage.

⭐ Key point: Prevent extravasation: give vasopressors through a central line where possible, and check peripheral sites frequently.$x$, null),
(158, $x$Flushing and rash on the upper body during IV vancomycin is best managed by:$x$, $x$Slowing the infusion rate$x$, $x$✅ Correct answer: Slowing the infusion rate
"Red man syndrome" (flushing and a rash on the face, neck and upper body, sometimes with itching and low BP) happens when vancomycin is infused too FAST. It is caused by histamine release, not a true allergy. Treat by SLOWING the infusion (over at least 60 minutes, or longer for large doses) and giving antihistamines.

❌ Why the other options are wrong:
• Giving it as an IV push — An IV push would make it worse.
• Doubling the dose — Doubling the dose would make it worse.
• Stopping all antibiotics permanently — Stopping all antibiotics permanently isn't necessary; it's an infusion-rate reaction.

⭐ Key point: Monitor vancomycin trough levels (or AUC) to avoid kidney damage and ototoxicity.$x$, null),
(159, $x$Dexmedetomidine is useful in ICU because it:$x$, $x$Sedates with little respiratory depression$x$, $x$✅ Correct answer: Sedates with little respiratory depression
DEXMEDETOMIDINE is an alpha-2 agonist that provides calm, cooperative ("rousable") sedation with LITTLE RESPIRATORY DEPRESSION. Patients can often be woken and can follow commands. It causes less delirium than benzodiazepines and is useful for weaning and for agitated patients.

❌ Why the other options are wrong:
• Is a long-acting opioid analgesic — It isn't an opioid, though it has some analgesic effect.
• Has no effect on heart rate — It DOES affect heart rate: it causes BRADYCARDIA.
• Causes deep amnesia and apnoea — It doesn't cause deep amnesia or apnoea.

⭐ Key point: Watch for bradycardia and hypotension. It is less suitable when deep sedation is needed.$x$, null),
(160, $x$Ketamine is useful for induction in a shocked asthmatic patient because it:$x$, $x$Maintains blood pressure and causes bronchodilation$x$, $x$✅ Correct answer: Maintains blood pressure and causes bronchodilation
KETAMINE is an NMDA receptor antagonist. It MAINTAINS BLOOD PRESSURE (it stimulates the sympathetic system, making it useful in shocked patients) and causes BRONCHODILATION (useful in asthma). It also preserves airway reflexes better than other induction agents.

❌ Why the other options are wrong:
• Has no effect on airway reflexes — It largely PRESERVES airway reflexes, so the statement "no effect" is wrong.
• Lowers BP and causes bronchospasm — It RAISES BP and causes bronchodilation, not the opposite.
• Reverses opioid-induced breathing problems — It doesn't reverse opioids.

⭐ Key point: Ketamine can cause emergence phenomena (hallucinations, agitation) in adults; benzodiazepines can reduce them. It increases secretions.$x$, null),
(161, $x$Which of the following is a commonly recognized high-risk category for nurses in clinical practice?$x$, $x$Medication administration errors$x$, $x$✅ Correct answer: Medication administration errors
MEDICATION ADMINISTRATION ERRORS are one of the most common high-risk areas in nursing. In ICU, many high-alert drugs (insulin, potassium, opioids, vasopressors, heparin), complex calculations and frequent changes increase the risk. Errors can cause serious harm or death.

❌ Why the other options are wrong:
• Correctly documenting a normal vital sign — Correctly documenting a normal vital sign isn't a risk category.
• Attending a staff meeting — Attending a staff meeting isn't a clinical risk.
• Taking an approved lunch break — An approved break isn't a risk category.

⭐ Key point: Prevent drug errors: the rights of medication administration, double checks, smart pumps, barcode scanning and clear labelling.$x$, null),
(162, $x$A critically-ill patient has a "Living Will" in the chart. The patient's condition has deteriorated, but the spouse wants "everything done" regardless of the patient's wishes. Which ethical principle is the spouse violating?$x$, $x$Autonomy$x$, $x$✅ Correct answer: Autonomy
A LIVING WILL documents the patient's own wishes about treatment if they can't decide for themselves. When the spouse wants "everything done" against these written wishes, the spouse is ignoring the patient's right to decide: a violation of the patient's AUTONOMY.

❌ Why the other options are wrong:
• Beneficence — Beneficence means doing good.
• Non-maleficence — Non-maleficence means avoiding harm.
• Justice — Justice means fairness.

⭐ Key point: A valid advance directive must be respected. Support the family through the decision with clear communication.$x$, null),
(163, $x$The nurse manager wants to assess the compliance of staff with a new hand hygiene protocol. Which type of audit would be most effective for this purpose?$x$, $x$Concurrent audit$x$, $x$✅ Correct answer: Concurrent audit
A CONCURRENT audit happens IN REAL TIME, while care is being given. To check hand hygiene compliance, the manager directly OBSERVES staff during their work and records whether they clean their hands at the right moments. This is the most accurate way to assess current practice.

❌ Why the other options are wrong:
• Retrospective audit — A retrospective audit looks back at records; hand hygiene isn't usually documented.
• Outcome audit — An outcome audit measures results (such as infection rates), not compliance.
• Chart audit — A chart audit reviews records, which don't capture hand hygiene.

⭐ Key point: Use the WHO "5 Moments" observation tool for hand hygiene audits, and feed results back to staff.$x$, null),
(164, $x$Documentation of hourly neurological observations for a patient with a head injury is an example of which type of standard in the Donabedian model?$x$, $x$Process$x$, $x$✅ Correct answer: Process
In the Donabedian model, PROCESS standards describe the activities done in delivering care. Documenting hourly neurological observations for a head-injured patient is a nursing ACTIVITY, so it is a PROCESS standard.

❌ Why the other options are wrong:
• Structure — Structure standards relate to resources (staff, equipment, facilities).
• Outcome — Outcome standards relate to results (recovery, complications).
• Input — "Input" isn't one of the three Donabedian categories.

⭐ Key point: Structure (resources) → Process (what is done) → Outcome (results).$x$, null),
(165, $x$Which ethical principle refers to a patient's right to make their own healthcare decisions?$x$, $x$Autonomy$x$, $x$✅ Correct answer: Autonomy
AUTONOMY is the ethical principle that a competent patient has the RIGHT to make their own healthcare decisions, including accepting or refusing treatment, based on adequate information. It underpins informed consent.

❌ Why the other options are wrong:
• Non-maleficence — Non-maleficence means doing no harm.
• Justice — Justice means fairness.
• Beneficence — Beneficence means doing good.

⭐ Key point: Respect autonomy by giving full information, checking capacity, and accepting the patient's decision, even if you disagree.$x$, null),
(166, $x$Which of the following organizations requires a mechanism for addressing ethical issues?$x$, $x$The Joint Commission$x$, $x$✅ Correct answer: The Joint Commission
The JOINT COMMISSION (the US accreditation body for hospitals) requires healthcare organisations to have a MECHANISM for addressing ETHICAL issues, such as an ethics committee or consultation service. This supports staff, patients and families with ethical dilemmas.

❌ Why the other options are wrong:
• American Hospital Association — The American Hospital Association is a trade association; it doesn't set this requirement.
• American Association of Critical-Care Nurses — AACN is a professional nursing association; it supports ethics, but doesn't require it of hospitals.
• Society of Critical Care Medicine — SCCM is a professional society, not an accreditation body.

⭐ Key point: In Nigeria, hospital ethics committees serve a similar role, especially for research and difficult clinical decisions.$x$, null),
(167, $x$An effective handover should be:$x$, $x$Brief but comprehensive$x$, $x$✅ Correct answer: Brief but comprehensive
An effective handover is BRIEF but COMPREHENSIVE: it conveys all the important information (diagnosis, current condition, treatments, risks, plans and pending tasks) clearly and concisely, often using a structured tool like SBAR. Too long wastes time; too short misses important details.

❌ Why the other options are wrong:
• Conducted without documentation — Handover should be documented and supported by records.
• Based on assumptions — It should be based on facts, not assumptions.
• Done only when convenient — It must happen at every shift change, not only when convenient.

⭐ Key point: Bedside handover lets the incoming nurse see the patient and check equipment, lines and drugs.$x$, null),
(168, $x$Which of the following is ethical issue during CPR:$x$, $x$Family presence during CPR$x$, $x$✅ Correct answer: Family presence during CPR
FAMILY PRESENCE DURING CPR is one of the most debated ethical issues in resuscitation. Benefits: families may cope better, see that everything was done, and be present at death. Concerns: possible distress, interference, and staff discomfort. Many guidelines now support offering it, with a dedicated staff member to support the family.

❌ Why the other options are wrong:
• Refusal and discontinuation of treatment — Refusal and discontinuation of treatment are ethical issues, but the keyed answer focuses on CPR family presence.
• Consent for Treatment — Consent for treatment is an ethical issue, but not specific to CPR here.
• Trained healthcare providers — Trained providers is a staffing matter, not an ethical issue.

⭐ Key point: Offer family presence where appropriate, with a staff member to explain what's happening and support them.$x$, null),
(169, $x$The process of attracting qualified persons to apply for jobs that are open is referred to as:$x$, $x$Recruitment$x$, $x$✅ Correct answer: Recruitment
RECRUITMENT is the process of ATTRACTING qualified people to APPLY for vacant jobs, through advertising, job fairs, referrals, or recruitment agencies. It is followed by SELECTION (choosing the best applicant through interviews and tests).

❌ Why the other options are wrong:
• Training — Training develops existing staff skills.
• Transfer — Transfer moves staff to another position or unit.
• Human resource management — Human resource management is the whole field (recruitment, training, appraisal, welfare), not the specific process.

⭐ Key point: HR process: workforce planning → recruitment → selection → orientation → training → appraisal → retention.$x$, null),
(170, $x$Which ethical principle is demonstrated by respecting a competent patient's informed refusal of treatment?$x$, $x$Autonomy$x$, $x$✅ Correct answer: Autonomy
Respecting a competent patient's informed REFUSAL of treatment demonstrates AUTONOMY: the patient's right to make decisions about their own body and care, even if others disagree.

❌ Why the other options are wrong:
• Justice — Justice is fairness in care and resources.
• Fidelity — Fidelity is keeping promises and being loyal.
• Beneficence — Beneficence is doing good; it may conflict with the patient's refusal, but autonomy takes priority for a competent patient.

⭐ Key point: Make sure the refusal is informed (the patient understands the risks), document it, and continue other care.$x$, null),
(171, $x$It is a specially staffed and equipped area of a hospital that provides a level of care intermediate between intensive care and general ward care. The critical care nurse knows this is:$x$, $x$High dependency unit$x$, $x$✅ Correct answer: High dependency unit
A HIGH DEPENDENCY UNIT (HDU, Level 2 care) is a specially staffed and equipped area that provides care INTERMEDIATE between intensive care and the general ward. It is for patients needing closer monitoring or single-organ support (such as NIV), with a nurse-to-patient ratio of about 1:2.

❌ Why the other options are wrong:
• Critical care unit — A critical care (intensive care) unit provides Level 3 care (1:1).
• General ward — A general ward provides Level 0–1 care.
• Post anaesthesia recovery unit — A post-anaesthesia recovery unit is for immediate recovery after surgery.

⭐ Key point: HDUs help step patients down from ICU and prevent deteriorating ward patients needing ICU.$x$, null),
(172, $x$A family that does not know the patient's end-of-life wishes assumes they know what is best for the patient. This reflects:$x$, $x$Paternalism$x$, $x$✅ Correct answer: Paternalism
PATERNALISM happens when others (family, staff) decide what is "best" for a patient WITHOUT knowing or respecting the patient's own wishes, overriding the patient's autonomy. A family that doesn't know the patient's end-of-life wishes but assumes it knows best is acting paternalistically.

❌ Why the other options are wrong:
• Veracity — Veracity is truthfulness.
• Pragmatism — Pragmatism is a practical approach, not this ethical concept.
• Justice — Justice is fairness.

⭐ Key point: Encourage patients to discuss and document their wishes (advance directives) before they lose capacity.$x$, null),
(173, $x$In functional nursing, care is organized according to:$x$, $x$Nursing tasks$x$, $x$✅ Correct answer: Nursing tasks
In FUNCTIONAL nursing, care is organised by TASKS: one nurse gives all the medications, another does all the dressings, another takes all the vital signs. It is efficient with few staff, but care is fragmented, and no one nurse has the full picture of the patient.

❌ Why the other options are wrong:
• Bed numbers — Bed numbers describe patient allocation, not functional nursing.
• Family preference — Family preference doesn't define a nursing care model.
• Patient diagnosis — Diagnosis-based allocation isn't functional nursing.

⭐ Key point: Other models: team nursing, primary nursing (one nurse responsible for a patient's full care), and patient allocation.$x$, null),
(174, $x$Discipline, as part of the Controlling function of management, should ideally be:$x$, $x$Fair, consistent, and applied according to established policy$x$, $x$✅ Correct answer: Fair, consistent, and applied according to established policy
Discipline is part of the CONTROLLING function of management. It should be FAIR, CONSISTENT (the same rules for everyone), and follow ESTABLISHED POLICY and due process, usually step by step: counselling, verbal warning, written warning, suspension, dismissal.

❌ Why the other options are wrong:
• Used only as a first response before any coaching or feedback — Discipline should usually come AFTER coaching and feedback, not before.
• Avoided entirely regardless of the situation — Avoiding discipline entirely allows poor practice to continue.
• Applied inconsistently depending on personal relationships — Inconsistent discipline based on relationships is unfair and damages morale.

⭐ Key point: The aim of discipline is to correct behaviour, not to punish. Document every step.$x$, null),
(175, $x$A nursing audit reveals that many nurses are not completing the required pain assessment documentation. The next step in quality assurance should be to:$x$, $x$Provide a refresher course on pain assessment and documentation$x$, $x$✅ Correct answer: Provide a refresher course on pain assessment and documentation
If an audit shows poor documentation of pain assessment, the likely cause is a KNOWLEDGE or SKILL gap, or a system issue. The next step in quality improvement is to address the cause: provide a REFRESHER COURSE (education) on pain assessment and documentation, then RE-AUDIT to check improvement.

❌ Why the other options are wrong:
• Punish the nurses who failed to document — Punishing staff discourages honesty and doesn't fix the cause.
• Change the pain assessment policy — The policy may be fine; the problem is compliance.
• Tell the patients to complain if their pain is not assessed — Asking patients to complain isn't a quality improvement method.

⭐ Key point: The audit cycle: standard → measure → compare → change (such as education) → re-audit.$x$, null),
(176, $x$A ward patient's NEWS2 score is 7. The ICU outreach nurse expects:$x$, $x$An emergency response by a critical care team$x$, $x$✅ Correct answer: An emergency response by a critical care team
NEWS2 (National Early Warning Score) adds up points for RR, SpO₂, BP, heart rate, consciousness and temperature. A total of 7 OR MORE means HIGH clinical risk: an EMERGENCY response is needed, with urgent review by a critical care outreach team, continuous monitoring, and consideration of ICU transfer.

❌ Why the other options are wrong:
• Routine 12-hourly observations on the ward — 12-hourly observations are for a score of 0.
• No change, as this score is in the normal range — A score of 7 isn't normal; it is high risk.
• Discharge home later that same evening — Discharge would be unsafe.

⭐ Key point: NEWS2 responses: 0 = routine; 1–4 = ward review; 5–6 (or 3 in one parameter) = urgent review; 7 or more = emergency.$x$, null),
(177, $x$When one ICU bed is free and two patients need it, the bed should go to the patient who:$x$, $x$Is most likely to benefit from ICU care$x$, $x$✅ Correct answer: Is most likely to benefit from ICU care
When ICU beds are limited, they should go to the patient MOST LIKELY to BENEFIT from intensive care: the one whose condition is reversible and who is likely to survive with ICU treatment. This follows the principle of JUSTICE (fair use of scarce resources) and clinical need.

❌ Why the other options are wrong:
• Can pay for the ICU bed in cash today — Ability to pay isn't an ethical basis for allocation.
• Has the highest social status in the town — Social status isn't an ethical basis.
• Arrived at the hospital first that day — First-come, first-served doesn't consider clinical need and benefit.

⭐ Key point: Use clear, written ICU admission criteria and document the decision-making process.$x$, null),
(178, $x$Which practice best reduces burnout and moral distress in ICU nurses?$x$, $x$Regular team debriefing after critical events$x$, $x$✅ Correct answer: Regular team debriefing after critical events
Regular TEAM DEBRIEFING after critical events (deaths, cardiac arrests, difficult cases) helps ICU nurses process emotions, learn from the event, feel supported, and reduce burnout and moral distress. Other helpful measures: adequate staffing, manageable workload, breaks, clinical supervision, and psychological support.

❌ Why the other options are wrong:
• Removing all staff rotation — Removing staff rotation doesn't reduce burnout.
• Banning staff from discussing deaths — Banning discussion of deaths increases distress.
• Longer shifts without breaks — Longer shifts without breaks increase burnout.

⭐ Key point: Signs of burnout: emotional exhaustion, cynicism, and reduced sense of achievement. Seek support early.$x$, null),
(179, $x$Discharging patients from ICU at night is discouraged mainly because it is linked to:$x$, $x$Higher readmission and mortality$x$, $x$✅ Correct answer: Higher readmission and mortality
Discharging patients from ICU at NIGHT is linked to HIGHER READMISSION rates and HIGHER MORTALITY. At night, wards have fewer staff, fewer senior doctors, and handovers may be rushed, so deteriorating patients may be missed. Discharges should be planned in the DAYTIME, with a full handover.

❌ Why the other options are wrong:
• Better sleep for the patient — Night discharge disturbs sleep rather than improving it.
• A lower nursing workload overnight — It doesn't reduce overall workload; it shifts risk to the ward.
• Lower overall hospital costs — It doesn't save costs if patients are readmitted.

⭐ Key point: Night discharge is often caused by bed pressure. Track it as a quality indicator.$x$, null),
(180, $x$Three ICU patients develop the same resistant organism within a week. The manager's first step is to:$x$, $x$Inform infection control and cohort or isolate the patients$x$, $x$✅ Correct answer: Inform infection control and cohort or isolate the patients
Three patients with the same resistant organism within a week suggest a possible OUTBREAK (cross-transmission). The first step is to INFORM the INFECTION CONTROL team and ISOLATE or COHORT the affected patients (with contact precautions) to stop further spread. Then review practices, screen contacts and reinforce hand hygiene and cleaning.

❌ Why the other options are wrong:
• Wait for more cases before taking any action — Waiting for more cases allows further spread.
• Stop the hand hygiene audits to save time — Stopping hand hygiene audits would make things worse.
• Close the whole hospital to new admissions — Closing the whole hospital is excessive as a first step.

⭐ Key point: Outbreak control: identify, isolate, inform, investigate, intensify hand hygiene and cleaning, and monitor.$x$, null),
(181, $x$Which of the following is a risk associated with the use of portable tablets for documentation in a busy clinical setting?$x$, $x$They are susceptible to being lost, stolen, or damaged$x$, $x$✅ Correct answer: They are susceptible to being lost, stolen, or damaged
Portable tablets and mobile devices are easily LOST, STOLEN or DAMAGED in a busy clinical setting. If they contain patient information, this risks a DATA BREACH. Devices need password protection, encryption, remote-wipe ability, and secure storage.

❌ Why the other options are wrong:
• They require constant access to a wired internet connection — Tablets usually use Wi-Fi, not a wired connection.
• The tablets are too heavy for nurses to carry — Tablets aren't too heavy.
• The tablet screen is too small to view information — Screen size may be a minor issue but isn't the main risk.

⭐ Key point: Never store patient data on personal devices. Log out and lock devices when not in use.$x$, null),
(182, $x$In research study where the researcher present what he hopes to achieve at the end of study will be expressed under:$x$, $x$Aims/purpose of the study$x$, $x$✅ Correct answer: Aims/purpose of the study
The AIMS or PURPOSE of a study is the broad statement of what the researcher HOPES TO ACHIEVE by the end of the study. For example: "The aim of this study is to improve pain management in ICU patients."

❌ Why the other options are wrong:
• Statement of the problem — The statement of the problem describes the issue that prompted the study.
• Objectives of the study — Objectives are SPECIFIC, measurable steps to achieve the aim.
• Background of the study — The background gives context and existing knowledge.

⭐ Key point: Aim = the overall goal. Objectives = specific, measurable steps (SMART). Research questions or hypotheses come from the objectives.$x$, null),
(183, $x$Which of the following is a procedure that enables the researcher to organise, interpret, and communicate numerical information?$x$, $x$Statistics$x$, $x$✅ Correct answer: Statistics
STATISTICS is the set of procedures for ORGANISING, SUMMARISING, INTERPRETING and COMMUNICATING numerical data. It has two branches: DESCRIPTIVE statistics (summarising data: mean, median, percentages, charts) and INFERENTIAL statistics (drawing conclusions about a population: t-test, chi-square, p-values).

❌ Why the other options are wrong:
• Descriptive — "Descriptive" is one branch of statistics, not the whole procedure.
• Inferential — "Inferential" is one branch of statistics.
• Means — "Means" is just one measure (the average).

⭐ Key point: Descriptive = describe the sample. Inferential = generalise to the population and test hypotheses.$x$, null),
(184, $x$Which nursing diagnosis format is used when the nurse suspects a problem may exist but needs additional data to confirm or rule it out?$x$, $x$Possible diagnosis$x$, $x$✅ Correct answer: Possible diagnosis
A POSSIBLE nursing diagnosis is used when the nurse SUSPECTS a problem but doesn't yet have ENOUGH DATA to confirm or rule it out. More assessment is needed. For example: "Possible social isolation", which is then confirmed or ruled out.

❌ Why the other options are wrong:
• Actual diagnosis — An actual diagnosis is confirmed by signs and symptoms (defining characteristics).
• Syndrome diagnosis — A syndrome diagnosis groups related diagnoses (such as rape-trauma syndrome).
• Wellness diagnosis — A wellness diagnosis describes readiness to improve a healthy state.

⭐ Key point: Types of nursing diagnosis: actual, risk, possible, syndrome, and health-promotion (wellness).$x$, null),
(185, $x$A nurse made Mr Kay's care plan on admission on Tuesday, then made another care plan for him on Wednesday's shift. Wednesday's plan is a(n):$x$, $x$Ongoing plan$x$, $x$✅ Correct answer: Ongoing plan
The INITIAL care plan is made on ADMISSION (Tuesday). Plans made or updated on LATER shifts (Wednesday), as the nurse gathers new information and the patient's condition changes, are ONGOING care plans. Care planning is continuous and dynamic.

❌ Why the other options are wrong:
• Reviewed plan — "Reviewed plan" isn't the standard term used here.
• Initial plan — The initial plan was made on Tuesday.
• Discharge plan — A discharge plan prepares for leaving hospital.

⭐ Key point: Types of planning: initial (on admission), ongoing (during the stay), and discharge (before leaving).$x$, null),
(186, $x$The New York Heart Association (NYHA) functional classification (Class I-IV) for heart failure severity is an example of which scale of measurement?$x$, $x$Ordinal scale$x$, $x$✅ Correct answer: Ordinal scale
NYHA classes I–IV rank heart failure severity in ORDER (I = no symptoms, IV = symptoms at rest). The categories have a meaningful order, but the GAPS between classes aren't equal or measurable, so this is an ORDINAL scale.

❌ Why the other options are wrong:
• Ratio scale — Ratio scales have equal intervals and a true zero (such as weight).
• Interval scale — Interval scales have equal intervals but no true zero (such as temperature in °C).
• Nominal scale — Nominal scales are categories without order (such as blood group).

⭐ Key point: Other ordinal scales: GCS, pain scores, Likert scales, cancer stages.$x$, null),
(187, $x$Which step of the research process involves condensing raw data into tables, charts, and summary statistics to make it more understandable?$x$, $x$Organisation and analysis of data$x$, $x$✅ Correct answer: Organisation and analysis of data
ORGANISATION and ANALYSIS of data condenses raw data into tables, charts, graphs and summary statistics (descriptive and inferential) so the results can be understood and interpreted. This step follows data collection.

❌ Why the other options are wrong:
• Literature review — The literature review looks at existing research before the study.
• Problem identification — Problem identification is the first step.
• Formulation of research questions — Formulating research questions happens early in the process.

⭐ Key point: After analysis: interpretation of findings, conclusions, recommendations and dissemination (reporting).$x$, null),
(188, $x$Mr john a post-operative patient in ICU developed a severe fever 4 days after the surgery, this is typical of:$x$, $x$Secondary infection$x$, $x$✅ Correct answer: Secondary infection
A new fever appearing several days (3–5 days) after surgery suggests a SECONDARY (hospital-acquired) INFECTION such as a wound infection, pneumonia, UTI or line infection. These are acquired after admission, from surgery, devices or the hospital environment.

❌ Why the other options are wrong:
• Primary infection — "Primary infection" isn't the term used for an infection developing days after surgery.
• Malnutrition — Malnutrition doesn't cause a severe fever on day 4.
• Normal surgical process — A mild fever in the first 24–48 hours can be part of the normal response to surgery, but a SEVERE fever on day 4 isn't.

⭐ Key point: Causes of post-op fever by day ("5 Ws"): Wind (lungs, days 1–2), Water (urine, days 3–5), Wound (days 5–7), Walking (DVT, day 5+), Wonder drugs (any time).$x$, null),
(189, $x$The guiding clinical principle for choosing between enteral and parenteral nutrition in a critically ill patient is best summarized as:$x$, $x$"If the gut works, use it" — enteral nutrition is preferred whenever the GI tract is functional$x$, $x$✅ Correct answer: "If the gut works, use it" — enteral nutrition is preferred whenever the GI tract is functional
The guiding principle in nutrition support is "IF THE GUT WORKS, USE IT". Enteral nutrition is preferred whenever the GI tract is functional, because it maintains gut integrity, supports immunity, has fewer infections and is cheaper. Parenteral nutrition is used only when the gut can't be used or enteral feeding isn't enough.

❌ Why the other options are wrong:
• Parenteral nutrition should always be used first regardless of GI function — Parenteral nutrition shouldn't always be used first.
• Enteral and parenteral nutrition are equally preferred with no clinical rationale for choosing one over the other — They aren't equally preferred; there are clear reasons to prefer enteral.
• Oral intake should always be attempted before any tube feeding is considered, regardless of aspiration risk — Oral intake is preferred when safe, but not "regardless of aspiration risk".

⭐ Key point: Start enteral feeding within 24–48 hours in critically ill patients if possible.$x$, null),
(190, $x$A pleural effusion typically becomes visible on a standard chest X-ray only once fluid volume reaches approximately:$x$, $x$150–300ml$x$, $x$✅ Correct answer: 150–300ml
A pleural effusion usually needs about 150–300 mL of fluid before it can be seen on a standard upright (PA) chest X-ray, as blunting of the costophrenic angle. Smaller amounts may be seen on a lateral X-ray (about 50 mL) or ultrasound (very small volumes).

❌ Why the other options are wrong:
• 2–3 litres — 2–3 litres would cause a large white-out, far above the detection threshold.
• 5–10ml — 5–10 mL is too small to see on X-ray.
• There is no minimum volume — any amount is visible — Small amounts are NOT visible on X-ray.

⭐ Key point: Ultrasound is the most sensitive bedside test for effusions and guides safe drainage.$x$, null),
(191, $x$---------------- is a standard healthcare practice that helps prevent the transfer of germs to or from an open wound and other susceptible areas on a patient's body.$x$, $x$Aseptic Technique$x$, $x$✅ Correct answer: Aseptic Technique
ASEPTIC TECHNIQUE is the standard practice that prevents germs from being transferred to or from open wounds, invasive devices and other susceptible sites. It uses hand hygiene, sterile equipment, a non-touch technique and a clean field (aseptic non-touch technique, ANTT).

❌ Why the other options are wrong:
• Clean Technique — Clean technique reduces germs but isn't strict enough for open wounds and devices.
• Sterile Technique — Sterile technique is a stricter form used mainly in theatre; aseptic technique is the general standard.
• Asepitic Technique — "Asepitic technique" is a misspelling distractor.

⭐ Key point: Use ANTT for IV medicines, line care, catheter insertion and wound dressings.$x$, null),
(192, $x$Which insertion site for a central venous catheter is generally associated with the LOWEST risk of catheter-related bloodstream infection?$x$, $x$Subclavian vein$x$, $x$✅ Correct answer: Subclavian vein
Central venous catheters in the SUBCLAVIAN vein have the LOWEST risk of catheter-related bloodstream infection. The femoral site has the highest risk (more skin bacteria in the groin), and the internal jugular site is intermediate. The subclavian site is easier to keep clean and dressed.

❌ Why the other options are wrong:
• Internal jugular vein with a dressing changed daily — Daily dressing changes on the internal jugular don't make it the lowest-risk site, and frequent changes aren't recommended.
• Any site is equally low-risk once inserted — The sites are NOT equally low-risk.
• Femoral vein — The femoral vein has the HIGHEST infection risk.

⭐ Key point: The subclavian site has a higher pneumothorax risk; use ultrasound guidance and weigh the risks.$x$, null),
(193, $x$Which type of nursing diagnosis describes a problem that is currently present and validated by the existence of defining characteristics (signs and symptoms)?$x$, $x$Actual nursing diagnosis$x$, $x$✅ Correct answer: Actual nursing diagnosis
An ACTUAL nursing diagnosis describes a problem that is PRESENT now, confirmed by defining characteristics (signs and symptoms). It is written in PES format: Problem, Etiology ("related to"), Signs and symptoms ("as evidenced by").

❌ Why the other options are wrong:
• Risk nursing diagnosis — A risk diagnosis describes a problem that might develop (no signs yet).
• Health promotion diagnosis — A health promotion diagnosis describes readiness to improve wellbeing.
• Possible nursing diagnosis — A possible diagnosis means the problem is suspected but not confirmed.

⭐ Key point: Example: "Ineffective airway clearance related to thick secretions as evidenced by coarse crackles and a weak cough."$x$, null),
(194, $x$During electronic health documentation, which computer part allows a critical care nurse to enter patient data?$x$, $x$Input device$x$, $x$✅ Correct answer: Input device
An INPUT DEVICE lets the user enter data into the computer: a keyboard, mouse, touchscreen, scanner (barcode), microphone. During electronic documentation, the nurse uses input devices to enter patient data.

❌ Why the other options are wrong:
• Software — Software is the programs, not a computer part for entering data.
• Operating system — The operating system manages the computer; it isn't an input device.
• Output device — Output devices display or print data (monitor, printer).

⭐ Key point: Input → Processing (CPU) → Output → Storage.$x$, null),
(195, $x$The Glasgow Coma Scale (GCS) score, which ranks a patient's level of consciousness from 3 to 15, is best classified as which scale of measurement?$x$, $x$Ordinal$x$, $x$✅ Correct answer: Ordinal
The GCS ranks levels of consciousness in ORDER (3 = deepest coma, 15 = fully alert), but the differences between scores aren't equal (a change from 3 to 4 isn't the same as from 14 to 15). It is an ORDINAL scale.

❌ Why the other options are wrong:
• Ratio — Ratio scales have a true zero and equal intervals.
• Interval — Interval scales have equal intervals.
• Nominal — Nominal scales are categories without order.

⭐ Key point: Ordinal data are best summarised with the median, not the mean.$x$, null),
(196, $x$For a patient expected to need enteral tube feeding for only 2-3 weeks, the most appropriate feeding access is:$x$, $x$A short-term nasogastric or orogastric tube$x$, $x$✅ Correct answer: A short-term nasogastric or orogastric tube
For SHORT-TERM enteral feeding (less than about 4–6 weeks), a NASOGASTRIC (or orogastric) tube is appropriate. It is simple, non-invasive, quick to insert, and easy to remove. Longer-term feeding (more than 4–6 weeks) is usually given through a gastrostomy (PEG) or jejunostomy.

❌ Why the other options are wrong:
• A percutaneous endoscopic gastrostomy (PEG) tube — A PEG is for long-term feeding (more than 4–6 weeks).
• Total parenteral nutrition — TPN isn't needed if the gut works.
• A surgically placed jejunostomy — A surgical jejunostomy is for long-term feeding or after major upper GI surgery.

⭐ Key point: Orogastric tubes are used in intubated patients and those with basal skull fractures.$x$, null),
(197, $x$The ideal tip position for a central venous catheter is:$x$, $x$The lower superior vena cava at the cavo-atrial junction$x$, $x$✅ Correct answer: The lower superior vena cava at the cavo-atrial junction
The ideal tip position for a central venous catheter (jugular or subclavian) is in the LOWER SUPERIOR VENA CAVA at the CAVO-ATRIAL JUNCTION (where the SVC meets the right atrium). Blood flow there dilutes irritant drugs, and pressure readings are accurate.

❌ Why the other options are wrong:
• Deep in the right ventricle near the apex — Deep in the right ventricle risks arrhythmias and perforation.
• In the left atrium across the septum — The left atrium is abnormal (wrong position).
• In the internal jugular vein near the jaw — High in the internal jugular vein is too short and risks thrombosis or dislodgement.

⭐ Key point: Always check the post-insertion X-ray for tip position and pneumothorax before using the line.$x$, null),
(198, $x$The recommended bedside check of nasogastric tube position before feeding is:$x$, $x$Aspirate pH of 5.5 or below$x$, $x$✅ Correct answer: Aspirate pH of 5.5 or below
The recommended BEDSIDE check of NG tube position is to ASPIRATE fluid and test its pH. A pH of 5.5 OR BELOW confirms stomach acid, so the tube is in the stomach and it is safe to feed. If the pH is above 5.5 or no aspirate is obtained, confirm with X-ray.

❌ Why the other options are wrong:
• Placing the tube end in water to look for bubbles — Bubbles in water aren't a reliable test.
• Patient comfort with no coughing — Patient comfort doesn't confirm position.
• The 'whoosh' test with air and a stethoscope — The "whoosh" test is UNRELIABLE and must not be used.

⭐ Key point: Acid-suppressing drugs (PPIs) can raise gastric pH, so an X-ray may be needed in these patients.$x$, null),
(199, $x$Which is one of the WHO 'five moments' for hand hygiene?$x$, $x$Before an aseptic or clean procedure$x$, $x$✅ Correct answer: Before an aseptic or clean procedure
The WHO "Five Moments" for hand hygiene: 1) BEFORE touching a patient, 2) BEFORE a CLEAN or ASEPTIC procedure, 3) AFTER body fluid exposure risk, 4) AFTER touching a patient, 5) AFTER touching the patient's surroundings.

❌ Why the other options are wrong:
• Only after removing gloves at home — After removing gloves at home isn't one of the five moments.
• Only at the start of the shift — The start of the shift isn't one of the five moments.
• Before entering the hospital car park — Before entering the car park isn't one of the five moments.

⭐ Key point: Hand hygiene is the single most important measure to prevent hospital-acquired infections.$x$, null),
(200, $x$After a needlestick injury from a patient with HIV, the nurse should first wash the wound, report it, and start post-exposure prophylaxis:$x$, $x$As soon as possible, ideally within hours and no later than 72 hours$x$, $x$✅ Correct answer: As soon as possible, ideally within hours and no later than 72 hours
After a needlestick from an HIV-positive source: let the wound bleed, wash with soap and water, REPORT it, and start POST-EXPOSURE PROPHYLAXIS (PEP) AS SOON AS POSSIBLE, ideally within hours (within 1–2 hours) and NO LATER than 72 HOURS. PEP is a 28-day course of antiretroviral drugs.

❌ Why the other options are wrong:
• Only after 1 week, if symptoms of infection appear — Waiting 1 week for symptoms is too late; PEP must start within 72 hours.
• Only if the source patient agrees to it — PEP shouldn't depend on the source patient's agreement.
• Only after their own HIV test comes back positive — Waiting for your own positive HIV test defeats the purpose of prevention.

⭐ Key point: Also assess hepatitis B and C risk, take baseline blood tests, and follow up at 6 weeks, 3 months and 6 months.$x$, null)
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
insert into rationale_report select 14, count(distinct n), count(*) from upd
  on conflict (day) do update set questions_updated = excluded.questions_updated, rows_changed = excluded.rows_changed;

-- ===================== DAY 15 =====================
-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 15 (200 questions)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).
--   Q28: correct answer changed to: Place the patient on oxygen.
--   Q56: correct answer changed to: Pulse oximeter
--   Q67: correct answer changed to: Status epilepticus


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$After a chest injury, ABGs show pH 7.26, PaCO2 52 mmHg, HCO3 25 mmol/L. This is:$x$, $x$Respiratory acidosis$x$, $x$✅ Correct answer: Respiratory acidosis
Step 1: pH 7.26 is LOW, so ACIDOSIS. Step 2: PaCO₂ 52 is HIGH (pH and PaCO₂ move in opposite directions), so it is RESPIRATORY. Step 3: HCO₃⁻ 25 is normal, so the kidneys haven't compensated yet: an ACUTE (uncompensated) respiratory acidosis. After a chest injury, pain, rib fractures, flail chest or pneumothorax cause hypoventilation.

❌ Why the other options are wrong:
• Metabolic alkalosis — Metabolic alkalosis would have a HIGH pH and HIGH HCO₃⁻.
• Respiratory alkalosis — Respiratory alkalosis would have a HIGH pH and LOW PaCO₂.
• Metabolic acidosis — Metabolic acidosis would have a LOW HCO₃⁻.

⭐ Key point: Treat the cause: pain relief (allows deep breathing), drain a pneumothorax, and support ventilation if needed.$x$, null),
(2, $x$Chvostek's and Trousseau's signs are clinical indicators of:$x$, $x$Hypocalcaemia$x$, $x$✅ Correct answer: Hypocalcaemia
CHVOSTEK's sign: tapping the facial nerve in front of the ear causes twitching of the face. TROUSSEAU's sign: inflating a BP cuff above systolic for 3 minutes causes spasm of the hand and wrist (carpal spasm). Both show NERVE and MUSCLE overexcitability caused by HYPOCALCAEMIA (low calcium).

❌ Why the other options are wrong:
• Hypomagnesaemia exclusively — Low magnesium can cause these signs too, but they are classic signs of low calcium; "exclusively magnesium" is wrong.
• Hyperkalaemia — High potassium causes weakness and ECG changes, not these signs.
• Hypernatraemia — High sodium causes confusion and seizures, not these signs.

⭐ Key point: Hypocalcaemia causes tingling, cramps, tetany, laryngospasm, seizures and a long QT. Treat with IV calcium gluconate.$x$, null),
(3, $x$Clotting factors are primarily synthesised by the:$x$, $x$Liver$x$, $x$✅ Correct answer: Liver
The LIVER makes most clotting factors: fibrinogen (I), prothrombin (II), V, VII, IX, X, XI and others. Factors II, VII, IX and X also need VITAMIN K. That's why liver disease causes bleeding and a raised INR.

❌ Why the other options are wrong:
• Spleen — The spleen stores platelets and removes old blood cells.
• Kidneys — The kidneys make erythropoietin and renin, not clotting factors.
• Pancreas — The pancreas makes digestive enzymes and insulin.

⭐ Key point: In liver failure, a high INR doesn't always correct with vitamin K, because the liver can't make the factors. FFP or PCC may be needed for bleeding.$x$, null),
(4, $x$Accidental removal of the parathyroid glands during thyroidectomy results in:$x$, $x$Hypocalcaemia$x$, $x$✅ Correct answer: Hypocalcaemia
The parathyroid glands (usually four, behind the thyroid) make PARATHYROID HORMONE (PTH), which keeps blood calcium normal. If they are accidentally removed or damaged during thyroidectomy, PTH falls and HYPOCALCAEMIA develops (usually within 24–48 hours), with tingling, cramps, Chvostek's and Trousseau's signs, and laryngospasm in severe cases.

❌ Why the other options are wrong:
• Hyperthyroidism — Removing the parathyroids doesn't cause hyperthyroidism.
• Hyperkalaemia — It doesn't cause high potassium.
• Hypoglycaemia — It doesn't cause low glucose.

⭐ Key point: Check calcium after thyroid surgery and keep IV calcium gluconate available.$x$, null),
(5, $x$A postoperative patient with hypocalcemia (ionized Ca²⁺ 0.8 mmol/L) exhibits carpopedal spasm and laryngeal stridor. Which action takes priority?$x$, $x$Infuse 10% calcium gluconate IV$x$, $x$✅ Correct answer: Infuse 10% calcium gluconate IV
Ionised calcium of 0.8 mmol/L (normal 1.1–1.3) with CARPOPEDAL SPASM and LARYNGEAL STRIDOR is severe, symptomatic hypocalcaemia. Laryngospasm can block the airway. The priority is IV 10% CALCIUM GLUCONATE (10–20 mL slowly over 10 minutes, then an infusion), with cardiac monitoring.

❌ Why the other options are wrong:
• Apply a nasal cannula at 2 L/min — Low-flow oxygen doesn't treat the cause of stridor here.
• Give vitamin D supplements — Vitamin D takes days to work.
• Administer oral calcium carbonate — Oral calcium is too slow for an emergency.

⭐ Key point: Give IV calcium slowly; fast injection can cause arrhythmias. Check magnesium too (low magnesium causes low calcium).$x$, null),
(6, $x$In a patient with hyperkalemia, which ECG change warrants IMMEDIATE intervention?$x$, $x$Peaked T waves$x$, $x$✅ Correct answer: Peaked T waves
PEAKED T WAVES are an early ECG sign of hyperkalaemia, but any ECG change in high potassium means the heart is affected and IMMEDIATE treatment is needed (calcium gluconate to protect the heart, then insulin with glucose). Without treatment, changes can quickly progress to a wide QRS, a sine-wave pattern, VF or asystole.

❌ Why the other options are wrong:
• ST-segment depression — ST depression isn't a typical sign of hyperkalaemia.
• Sinus tachycardia — Sinus tachycardia isn't a sign of hyperkalaemia.
• First-degree AV block — First-degree AV block can occur, but peaked T waves are the classic warning sign.

⭐ Key point: Hyperkalaemia ECG changes in order: peaked T → flat P → long PR → wide QRS → sine wave → VF or asystole.$x$, null),
(7, $x$A patient with hypermagnesemia (Mg²⁺ 4.5 mg/dL) has hypotension and absent deep tendon reflexes. Which intervention is MOST appropriate?$x$, $x$Give calcium chloride 10% IV$x$, $x$✅ Correct answer: Give calcium chloride 10% IV
High magnesium blocks nerve and muscle transmission and relaxes blood vessels, causing ABSENT reflexes, weakness, HYPOTENSION, slow pulse and respiratory depression. CALCIUM (calcium chloride or gluconate IV) directly opposes magnesium's effects on the heart and muscles. It is the first, most important treatment.

❌ Why the other options are wrong:
• Administer magnesium sulfate IV — More magnesium would worsen toxicity.
• Infuse 0.9% normal saline bolus — Saline can help the kidneys excrete magnesium, but isn't the most urgent step.
• Start furosemide 40 mg IV — Furosemide increases magnesium excretion but works too slowly for a symptomatic patient.

⭐ Key point: Stop all magnesium, give IV calcium, and consider dialysis in severe toxicity with kidney failure.$x$, null),
(8, $x$The kidney has more of which structure than any of the others listed?$x$, $x$Afferent arterioles$x$, $x$✅ Correct answer: Afferent arterioles
Each kidney has about 1 million NEPHRONS, and each nephron has its own AFFERENT ARTERIOLE (the small artery bringing blood into the glomerulus). So there are far more afferent arterioles than arcuate arteries, medullary pyramids or minor calyces.

❌ Why the other options are wrong:
• Arcuate arteries — Arcuate arteries are fewer (dozens).
• Medullary pyramids — Medullary pyramids number about 8–18 per kidney.
• Minor calyces — Minor calyces number about 8–18 per kidney.

⭐ Key point: The afferent arteriole widens and narrows to keep GFR stable (autoregulation).$x$, null),
(9, $x$Positive Chvostek's sign indicates:$x$, $x$Hypocalcaemia$x$, $x$✅ Correct answer: Hypocalcaemia
A positive CHVOSTEK's sign (twitching of the facial muscles when the facial nerve in front of the ear is tapped) shows nerve overexcitability caused by HYPOCALCAEMIA.

❌ Why the other options are wrong:
• Hypernatremia — High sodium doesn't cause Chvostek's sign.
• Hypercalcaemia — HIGH calcium causes weakness, not twitching.
• Hypokalemia — Low potassium causes weakness, not Chvostek's sign.

⭐ Key point: Trousseau's sign (carpal spasm with a BP cuff) is more specific for hypocalcaemia than Chvostek's.$x$, null),
(10, $x$A patient with heart failure and severe hyponatremia (Na⁺ 115 mEq/L) develops seizures. Which intervention should the nurse initiate FIRST?$x$, $x$Administer 3% hypertonic saline IV$x$, $x$✅ Correct answer: Administer 3% hypertonic saline IV
A sodium of 115 with SEIZURES is severe, symptomatic hyponatraemia; brain cells are swelling. The FIRST step is 3% HYPERTONIC SALINE IV (often 150 mL over 10–20 minutes, repeated as needed) to raise sodium by 4–6 mmol/L quickly and stop the seizures. Then correct slowly (no more than 8–10 mmol/L in 24 hours).

❌ Why the other options are wrong:
• Start oral sodium chloride tablets — Oral salt tablets work too slowly for seizures.
• Give furosemide 40 mg IV — Furosemide alone doesn't raise sodium quickly enough.
• Restrict oral fluid intake to 500 mL/day — Fluid restriction is too slow for a seizing patient.

⭐ Key point: Monitor sodium every 2–4 hours to avoid over-correction (osmotic demyelination).$x$, null),
(11, $x$A completely normal pH on an ABG:$x$, $x$Does NOT rule out a mixed disorder$x$, $x$✅ Correct answer: Does NOT rule out a mixed disorder
A NORMAL pH doesn't always mean everything is normal. Two OPPOSING disorders (for example respiratory acidosis plus metabolic alkalosis, or metabolic acidosis plus respiratory alkalosis) can cancel each other out, giving a normal pH. So a normal pH does NOT rule out a MIXED acid–base disorder. Always check the PaCO₂ and HCO₃⁻.

❌ Why the other options are wrong:
• Only occurs in healthy people — A normal pH can occur in sick people with mixed disorders.
• Always rules out any acid-base disorder — It doesn't always rule out a disorder.
• Means PaCO2 and HCO3 must also be normal — PaCO₂ and HCO₃⁻ can both be abnormal with a normal pH.

⭐ Key point: If PaCO₂ and HCO₃⁻ are both abnormal but the pH is normal, suspect a mixed disorder.$x$, null),
(12, $x$The process by which water and diffusible substances move together across a membrane in response to fluid pressure is:$x$, $x$Filtration$x$, $x$✅ Correct answer: Filtration
FILTRATION is the movement of water and small dissolved substances TOGETHER across a membrane, driven by FLUID (hydrostatic) PRESSURE. Example: in the glomerulus, blood pressure pushes water and solutes out into Bowman's capsule. In capillaries, it pushes fluid into the tissues.

❌ Why the other options are wrong:
• Diffusion — Diffusion moves solutes from high to low concentration (no pressure needed).
• Active transport — Active transport uses energy (ATP) to move substances against a concentration gradient.
• Osmosis — Osmosis moves WATER across a membrane toward higher solute concentration.

⭐ Key point: Filtration = pressure-driven; diffusion = concentration-driven; osmosis = water moving to concentrated areas.$x$, null),
(13, $x$Characteristic ECG changes of hypokalaemia include:$x$, $x$Flattened T waves and prominent U waves$x$, $x$✅ Correct answer: Flattened T waves and prominent U waves
Low potassium slows the heart's recovery (repolarisation). The ECG shows FLATTENED or inverted T WAVES, prominent U WAVES (an extra wave after the T), ST depression, and a longer QU interval. Severe hypokalaemia can cause dangerous arrhythmias.

❌ Why the other options are wrong:
• Shortened QT interval — A shortened QT is seen in HIGH calcium.
• Peaked T waves and widened QRS — Peaked T waves and a wide QRS are signs of HIGH potassium.
• Complete absence of P waves in all cases — Absent P waves occur in severe hyperkalaemia or AF.

⭐ Key point: Replace potassium carefully (IV no faster than 10 mmol/hour peripherally) and check magnesium.$x$, null),
(14, $x$A patient with hypercalcemia is prescribed calcitonin. The nurse should monitor for:$x$, $x$Tachyphylaxis$x$, $x$✅ Correct answer: Tachyphylaxis
CALCITONIN lowers calcium quickly (it reduces bone breakdown and increases kidney calcium excretion), but its effect fades after about 48 hours because the body stops responding: TACHYPHYLAXIS. The nurse should monitor for this loss of effect (calcium rising again). Bisphosphonates are given at the same time for a longer-lasting effect.

❌ Why the other options are wrong:
• Hyperphosphatemia — Calcitonin doesn't cause high phosphate.
• Hypoglycemia — It doesn't usually cause hypoglycaemia.
• Hypocalcemia — Hypocalcaemia is possible but uncommon; tachyphylaxis is the expected issue.

⭐ Key point: Hypercalcaemia treatment: IV saline (first), calcitonin (fast but short-acting), and bisphosphonates (slow but long-acting).$x$, null),
(15, $x$A potassium chloride infusion of 40 mEq is ordered in 500 mL of NS to run over 4 hours via a peripheral line. What is the resulting rate of potassium delivery in mEq/hr, and is this within the generally accepted peripheral IV limit of 10 mEq/hr?$x$, $x$10 mEq/hr; at the upper safe peripheral limit$x$, $x$✅ Correct answer: 10 mEq/hr; at the upper safe peripheral limit
Rate of potassium = total dose ÷ time = 40 mmol ÷ 4 hours = 10 mmol per hour. This is AT the usual maximum safe rate for a PERIPHERAL line (10 mmol/hour), so it is acceptable, but at the upper limit.

❌ Why the other options are wrong:
• 20 mEq/hr; exceeds the peripheral limit — 20 mmol/hour would need 40 mmol over 2 hours.
• 5 mEq/hr; well within the peripheral limit — 5 mmol/hour would need 40 mmol over 8 hours.
• 40 mEq/hr; grossly exceeds the peripheral limit — 40 mmol/hour would be 40 mmol in 1 hour, which is dangerous.

⭐ Key point: Faster potassium (up to 20 mmol/hour or more) needs a central line and continuous ECG monitoring.$x$, null),
(16, $x$Renal autoregulation maintains a relatively constant glomerular filtration rate across which approximate range of mean arterial pressure?$x$, $x$80-180 mmHg$x$, $x$✅ Correct answer: 80-180 mmHg
The kidneys protect their filtration through AUTOREGULATION. They widen or narrow the afferent arteriole (myogenic response) and use tubuloglomerular feedback to keep renal blood flow and GFR roughly constant when the mean arterial pressure is between about 80 and 180 mmHg. Below about 80, GFR falls with BP.

❌ Why the other options are wrong:
• 60-80 mmHg — 60–80 mmHg is below the autoregulation range.
• 40-60 mmHg — 40–60 mmHg is far too low.
• 180-220 mmHg — 180–220 mmHg is above the range.

⭐ Key point: In chronic hypertension, the autoregulation range shifts higher, so these patients may need a higher MAP to protect the kidneys.$x$, null),
(17, $x$On room air at sea level a patient has PaO₂ 60 mmHg and PaCO₂ 40 mmHg. The A–a gradient is about:$x$, $x$40 mmHg, raised, suggesting V/Q mismatch or shunt$x$, $x$✅ Correct answer: 40 mmHg, raised, suggesting V/Q mismatch or shunt
Alveolar oxygen (PAO₂) = FiO₂ × (barometric pressure − water vapour pressure) − PaCO₂ ÷ 0.8. Here: 0.21 × (760 − 47) − 40 ÷ 0.8 = 150 − 50 = about 100 mmHg. A–a gradient = PAO₂ − PaO₂ = 100 − 60 = 40 mmHg. This is RAISED (normal is about 5–15 in young adults), suggesting a problem with gas transfer: V/Q mismatch or shunt (pneumonia, PE, oedema).

❌ Why the other options are wrong:
• 10 mmHg, normal for a young adult — 10 mmHg would be normal, but the calculation gives 40.
• 0 mmHg, normal, showing pure hypoventilation — 0 mmHg would mean perfect gas exchange (pure hypoventilation gives a normal gradient, not zero).
• 150 mmHg, equal to the inspired oxygen pressure — 150 mmHg is the inspired oxygen pressure, not the gradient.

⭐ Key point: Normal A–a gradient increases with age: roughly (age ÷ 4) + 4. A normal gradient with hypoxia suggests hypoventilation.$x$, null),
(18, $x$Hypokalaemia that does not correct despite potassium replacement should prompt the nurse to check:$x$, $x$Serum magnesium, as low Mg²⁺ causes renal K⁺ loss$x$, $x$✅ Correct answer: Serum magnesium, as low Mg²⁺ causes renal K⁺ loss
Magnesium is needed for the kidney to hold on to potassium. When magnesium is LOW, the kidneys keep losing potassium, so the hypokalaemia won't correct even with replacement. Check SERUM MAGNESIUM and replace it first (or at the same time); then the potassium will rise.

❌ Why the other options are wrong:
• Serum urea, as it pushes K⁺ into cells — Urea doesn't push potassium into cells.
• Serum sodium, as high Na⁺ blocks K⁺ uptake — Sodium doesn't block potassium uptake in this way.
• Serum albumin, as it binds most of the K⁺ — Albumin doesn't bind most potassium.

⭐ Key point: Low potassium and low magnesium often occur together (diuretics, diarrhoea, alcohol, refeeding).$x$, null),
(19, $x$A patient with persistent vomiting has metabolic alkalosis and urine chloride below 20 mmol/L. This alkalosis is:$x$, $x$Saline-responsive; treat with 0.9% saline and potassium$x$, $x$✅ Correct answer: Saline-responsive; treat with 0.9% saline and potassium
Persistent vomiting causes loss of acid (HCl) and fluid, creating metabolic alkalosis with low chloride. A URINE CHLORIDE BELOW 20 mmol/L shows the kidneys are holding on to chloride (chloride and volume depletion). This is SALINE-RESPONSIVE alkalosis: treat with 0.9% SALINE (replacing chloride and volume) plus POTASSIUM.

❌ Why the other options are wrong:
• Saline-resistant; treat with spironolactone only — Saline-RESISTANT alkalosis has a HIGH urine chloride (such as mineralocorticoid excess).
• Respiratory in origin; treat with rebreathing — The cause is metabolic, not respiratory.
• Due to mineralocorticoid excess; treat with surgery — Mineralocorticoid excess causes saline-resistant alkalosis with high urine chloride.

⭐ Key point: Urine chloride below 20 = saline-responsive (vomiting, NG suction, diuretics after stopping). Above 20 = saline-resistant (Conn's syndrome, Cushing's, severe low potassium).$x$, null),
(20, $x$The Haldane effect describes:$x$, $x$Deoxygenated haemoglobin carrying more CO₂ than oxygenated Hb$x$, $x$✅ Correct answer: Deoxygenated haemoglobin carrying more CO₂ than oxygenated Hb
The HALDANE effect: DEOXYGENATED haemoglobin carries MORE CO₂ than oxygenated haemoglobin. In the tissues, haemoglobin releases oxygen and picks up more CO₂. In the lungs, haemoglobin picks up oxygen and releases CO₂. In COPD patients given too much oxygen, haemoglobin releases its CO₂, which partly explains why their CO₂ can rise.

❌ Why the other options are wrong:
• CO₂ diffusing 20 times faster than oxygen — CO₂ diffusing faster than oxygen (about 20 times) is a fact about diffusion, not the Haldane effect.
• Hypoxic vasoconstriction in poorly ventilated lung — Hypoxic pulmonary vasoconstriction is a different mechanism.
• Oxygen release from Hb increasing as pH falls — Oxygen release from haemoglobin as pH falls is the BOHR effect.

⭐ Key point: Bohr effect = acid helps haemoglobin release O₂. Haldane effect = O₂ helps haemoglobin release CO₂.$x$, null),
(21, $x$20, PCO2 55 mm hg, PO2 65 mm hg, HCO3 22 m mol. What does this mean?$x$, $x$Respiratory acidosis$x$, $x$✅ Correct answer: Respiratory acidosis
Read the values (the pH is shown as ".20", meaning 7.20). pH 7.20 is LOW, so ACIDOSIS. PCO₂ 55 is HIGH, so it is RESPIRATORY. HCO₃⁻ 22 is normal (no kidney compensation yet). PO₂ 65 is low (hypoxaemia). This is acute RESPIRATORY ACIDOSIS with hypoxaemia: type 2 respiratory failure.

❌ Why the other options are wrong:
• Metabolic acidosis — Metabolic acidosis would have a LOW HCO₃⁻.
• Metabolic alkalosis — Metabolic alkalosis would have a HIGH pH and HCO₃⁻.
• Respiratory alkalosis — Respiratory alkalosis would have a HIGH pH and LOW PCO₂.

⭐ Key point: Treat acute respiratory acidosis by improving ventilation (treat the cause, NIV, or intubation).$x$, null),
(22, $x$Which of the following mode of Mechanical Ventilation cannot be used for weaning off patients from Mechanical Ventilation:$x$, $x$Controlled Mechanical ventilation (CMV)$x$, $x$✅ Correct answer: Controlled Mechanical ventilation (CMV)
CONTROLLED MECHANICAL VENTILATION (CMV) delivers ALL breaths at a set rate and volume; the patient can't trigger breaths or breathe on their own. Because the patient does no breathing work, CMV can't be used to assess or train the breathing muscles, so it is unsuitable for weaning.

❌ Why the other options are wrong:
• Synchronized intermittent mandatory ventilation (SIMV) — SIMV allows spontaneous breaths between mandatory breaths; it has been used for weaning.
• Pressure support ventilation (PSV) — PSV supports the patient's own breaths; it is the main weaning mode.
• Assist-control ventilation (ACV) — Assist-control lets the patient trigger breaths and can be used before weaning trials.

⭐ Key point: Weaning usually uses pressure support ventilation with gradual reduction, or T-piece spontaneous breathing trials.$x$, null),
(23, $x$The peak inspiratory pressure safety limit during mechanical ventilation for asthma is:$x$, $x$<40cmH2O$x$, $x$✅ Correct answer: <40cmH2O
In ventilated severe asthma, the lungs are over-inflated and fragile. High peak pressures risk BAROTRAUMA (pneumothorax, pneumomediastinum). The peak inspiratory pressure is usually kept BELOW about 40 cmH₂O (and plateau pressure below 30) to reduce this risk.

❌ Why the other options are wrong:
• <20cmH2O — Below 20 cmH₂O is too low for narrowed asthmatic airways.
• <60cmH2O — Below 60 cmH₂O allows dangerously high pressures.
• No limit needed — A limit IS needed.

⭐ Key point: Asthma ventilation: low rate, long expiratory time, small tidal volumes, and permissive hypercapnia.$x$, null),
(24, $x$Needle decompression for tension pneumothorax is performed at the:$x$, $x$2nd ICS midclavicular line$x$, $x$✅ Correct answer: 2nd ICS midclavicular line
Needle decompression for TENSION PNEUMOTHORAX is classically done at the 2nd INTERCOSTAL SPACE in the MID-CLAVICULAR line (just above the 3rd rib), using a large-bore cannula. Current ATLS guidance prefers the 4th–5th intercostal space in the mid-axillary line in adults (thinner chest wall). Either way, a chest drain must follow.

❌ Why the other options are wrong:
• 2nd ICS posterior axillary line — The 2nd ICS posterior axillary line isn't the standard site.
• 5th ICS anterior axillary line — The 5th ICS ANTERIOR axillary line is near the newer site, but the classic keyed answer is the 2nd ICS mid-clavicular line.
• Xiphoid process — The xiphoid process is the site for pericardiocentesis.

⭐ Key point: Tension pneumothorax is a clinical diagnosis. Decompress immediately; don't wait for an X-ray.$x$, null),
(25, $x$Which ventilator practice should be avoided in a hemodynamically unstable patient with status asthmaticus, due to risk of breath stacking?$x$, $x$High respiratory rates with short expiratory time$x$, $x$✅ Correct answer: High respiratory rates with short expiratory time
In status asthmaticus, the narrowed airways need a LONG time to breathe out. HIGH respiratory rates with SHORT expiratory times don't allow full exhalation, so air builds up with each breath (BREATH STACKING, auto-PEEP). This raises intrathoracic pressure, reduces venous return, and can cause hypotension, barotrauma and cardiac arrest.

❌ Why the other options are wrong:
• Low tidal volume ventilation — Low tidal volume ventilation is RECOMMENDED in asthma.
• A permissive hypercapnia strategy — Permissive hypercapnia is RECOMMENDED (accepting high CO₂ to avoid over-inflation).
• Adequate sedation to reduce patient-ventilator dyssynchrony — Adequate sedation is RECOMMENDED to reduce dyssynchrony.

⭐ Key point: If a ventilated asthmatic suddenly becomes hypotensive, disconnect them from the ventilator briefly to let trapped air escape.$x$, null),
(26, $x$A nurse is caring for a patient with a hemothorax. What is the most appropriate action if the patient's chest tube drainage decreases significantly and the patient's condition worsens?$x$, $x$Notify the physician immediately$x$, $x$✅ Correct answer: Notify the physician immediately
In a haemothorax, a SUDDEN DECREASE in chest drain output while the patient's condition WORSENS (more breathlessness, low BP, falling SpO₂) suggests the tube is BLOCKED (by clot), so blood is collecting in the chest, or there is ongoing bleeding. NOTIFY THE PHYSICIAN IMMEDIATELY for urgent assessment.

❌ Why the other options are wrong:
• Milk the tubing to dislodge the clot — Milking or stripping tubing may be done per local policy, but notifying the doctor is the priority with a deteriorating patient.
• Clamp the chest tube to prevent further drainage — Clamping would trap blood and air in the chest.
• Increase the suction to the UWSD system — Increasing suction won't clear a blocked tube and isn't the right action.

⭐ Key point: A drain that stops draining with a worsening patient is an emergency (blocked drain, tension, tamponade).$x$, null),
(27, $x$How many bronchopulmonary segments does the right lung have?$x$, $x$10$x$, $x$✅ Correct answer: 10
The RIGHT lung has 3 lobes and 10 bronchopulmonary segments: upper lobe 3, middle lobe 2, lower lobe 5. The LEFT lung has 2 lobes and usually 8–10 segments (some segments are combined).

❌ Why the other options are wrong:
• 12 — 12 is too many.
• 8 — 8 is the number often given for the left lung.
• 6 — 6 is too few.

⭐ Key point: Each segment has its own bronchus and artery, so it can be drained (postural drainage) or surgically removed separately.$x$, null),
(28, $x$A 40-year-old woman is involved in an equestrian accident. She presents with chest pain, shortness of breath, and difficulty breathing. Her arterial oxygen saturation is 85% and her respiratory rate is 40b/minute. A chest tube is placed and the nurse observes a return of 300 mls blood into the system. What is the nurse's next line of action?$x$, $x$Clamp the tube and notify surgeon immediately.$x$, $x$✅ Correct answer: Place the patient on oxygen.
This patient is HYPOXIC (SpO₂ 85%) and breathing fast (RR 40) after chest trauma. Following ABCDE, the immediate priority is to give high-flow OXYGEN. A first drainage of 300 mL of blood is NOT massive (massive haemothorax is 1500 mL or more at insertion, or more than 200 mL/hour for 2–4 hours), and chest drains should NOT be clamped (clamping traps blood and air). Continue to monitor drainage and inform the surgeon. (The old answer key said "clamp the tube", which is unsafe; it has been corrected.)

❌ Why the other options are wrong:
• Explain to the patient what is going on to alley anxiety. — Explanation reduces anxiety but doesn't treat hypoxia.
• Clamp the tube and notify surgeon immediately. — Clamping the tube is unsafe, and 300 mL isn't massive bleeding.
• Call for a chest x-ray. — A chest X-ray is useful later, but oxygen comes first.

⭐ Key point: Massive haemothorax: 1500 mL or more on insertion, or ongoing more than 200 mL/hour. This needs blood transfusion and surgery (thoracotomy).$x$, $x$Place the patient on oxygen.$x$),
(29, $x$A minimum respiratory rate of what value should be maintained during MgSO4 therapy?$x$, $x$>12/min$x$, $x$✅ Correct answer: >12/min
During magnesium sulphate therapy, the RESPIRATORY RATE must stay ABOVE 12 breaths per minute. A rate below 12 suggests magnesium toxicity depressing breathing. Stop the infusion, give oxygen, check reflexes and magnesium level, and give calcium gluconate if needed.

❌ Why the other options are wrong:
• >6/min — Above 6/min is too low a threshold; toxicity would already be dangerous.
• No specific value is required — A specific value IS required.
• >30/min — Above 30/min isn't the safety threshold.

⭐ Key point: Also check hourly: knee reflexes present and urine output above 30 mL/hour.$x$, null),
(30, $x$In metabolic acidosis, the expected respiratory compensation (fall in PaCO2) is calculated as:$x$, $x$1.25 × the HCO3 fall$x$, $x$✅ Correct answer: 1.25 × the HCO3 fall
In metabolic acidosis, the lungs compensate by breathing faster to lower PaCO₂. A rule of thumb: the PaCO₂ falls by about 1.25 mmHg for every 1 mmol/L fall in HCO₃⁻. Winter's formula is another way: expected PaCO₂ = 1.5 × HCO₃⁻ + 8 (±2).

❌ Why the other options are wrong:
• 2 × the pH change — 2 × the pH change isn't the compensation formula.
• 0.1 × the HCO3 fall — 0.1 × the HCO₃⁻ fall is too small.
• No compensation ever occurs — Compensation DOES occur, through the lungs within minutes.

⭐ Key point: If the actual PaCO₂ is higher than expected, there is also respiratory acidosis (the patient is tiring).$x$, null),
(31, $x$ARDS in the context of orthopaedic trauma most often develops as a complication of:$x$, $x$Fat embolism or severe polytrauma$x$, $x$✅ Correct answer: Fat embolism or severe polytrauma
In orthopaedic trauma, ARDS most often develops after FAT EMBOLISM (fat from long bone fractures damaging the lung capillaries) or SEVERE POLYTRAUMA (massive bleeding, transfusion, shock and inflammation). These cause widespread lung inflammation and leaky capillaries.

❌ Why the other options are wrong:
• Simple plaster cast application — A plaster cast doesn't cause ARDS.
• Isolated finger fractures — Isolated finger fractures don't cause ARDS.
• Routine elective joint replacement with no complications — Uncomplicated elective joint replacement rarely causes ARDS.

⭐ Key point: Early fixation of long bone fractures reduces fat embolism and ARDS.$x$, null),
(32, $x$A nurse is assessing a patient with respiratory failure. The nurse notes that the patient's respiratory rate is 35 breaths per minute. This is an example of:$x$, $x$Tachypnea$x$, $x$✅ Correct answer: Tachypnea
TACHYPNOEA means an abnormally FAST breathing rate, usually above 20 breaths per minute in adults. A rate of 35 is tachypnoea, a sign of respiratory distress (and often the earliest sign of deterioration).

❌ Why the other options are wrong:
• Eupnea — Eupnoea is NORMAL breathing (12–20/min).
• Bradypnea — Bradypnoea is SLOW breathing (below 12/min).
• Apnea — Apnoea is NO breathing.

⭐ Key point: Respiratory rate is one of the most sensitive early warning signs of deterioration. Always count it for a full minute.$x$, null),
(33, $x$This occurs when air enters the pleura but cannot escape, resulting in one-way valve effect, thus produces shift in the mediastinum.$x$, $x$Tension pneumothorax$x$, $x$✅ Correct answer: Tension pneumothorax
A TENSION PNEUMOTHORAX happens when air enters the pleural space but CAN'T ESCAPE (a one-way valve effect). Pressure builds up with each breath, collapsing the lung and SHIFTING the MEDIASTINUM (heart, trachea and great vessels) to the opposite side. This reduces blood return to the heart and causes shock. It is an emergency.

❌ Why the other options are wrong:
• Traumatic pneumothorax — A traumatic pneumothorax is caused by injury but isn't necessarily under tension.
• Primary spontaneous pneumothorax — A primary spontaneous pneumothorax occurs in healthy people (often tall, thin young men) and usually isn't tension.
• Secondary spontaneous pneumothorax — A secondary spontaneous pneumothorax occurs with lung disease (such as COPD) and isn't necessarily tension.

⭐ Key point: Signs: distress, absent breath sounds, hyper-resonance, tracheal deviation away, raised JVP, low BP. Decompress immediately.$x$, null),
(34, $x$During insertion of a subclavian central line for TPN, the patient suddenly develops sharp chest pain, dyspnea, and decreased breath sounds on the affected side. The nurse should suspect:$x$, $x$Pneumothorax$x$, $x$✅ Correct answer: Pneumothorax
During SUBCLAVIAN (or jugular) central line insertion, the needle can puncture the top of the lung, causing a PNEUMOTHORAX. Sudden sharp chest pain, breathlessness and reduced breath sounds on the same side are classic signs.

❌ Why the other options are wrong:
• Catheter occlusion — Catheter occlusion stops the line working; it doesn't cause chest pain and breathlessness.
• Hyperglycemia — Hyperglycaemia doesn't cause these sudden symptoms.
• Air embolism — Air embolism can cause sudden breathlessness and chest pain, but reduced breath sounds on one side point to pneumothorax.

⭐ Key point: Always get a chest X-ray after subclavian or jugular line insertion. Ultrasound guidance reduces this risk.$x$, null),
(35, $x$A patient is receiving oxygen via a non-rebreather mask. The nurse notices the reservoir bag is completely deflating with each inspiration. The most appropriate nursing action is to:$x$, $x$Increase the oxygen flow rate to the mask$x$, $x$✅ Correct answer: Increase the oxygen flow rate to the mask
The reservoir bag of a non-rebreather mask should stay at least partly INFLATED throughout breathing (about one-third to one-half full on inspiration). If it COLLAPSES completely with each breath in, the patient isn't getting enough oxygen. INCREASE the OXYGEN FLOW (usually to 15 L/min) so the bag stays inflated.

❌ Why the other options are wrong:
• Clamp the oxygen tubing — Clamping the tubing would stop the oxygen.
• Replace the mask with a simple face mask — A simple face mask gives LESS oxygen.
• Loosen the mask to allow more room air to enter — Loosening the mask lets in room air, lowering the oxygen concentration.

⭐ Key point: Fill the reservoir bag before putting the mask on the patient, and use 10–15 L/min.$x$, null),
(36, $x$A patient requires mechanical ventilation for airway protection due to a decreased level of consciousness (GCS 6) after a head injury. This is an example of which broad indication for ventilation?$x$, $x$Inability to protect the airway$x$, $x$✅ Correct answer: Inability to protect the airway
A GCS of 6 means the patient can't protect their airway: the gag and cough reflexes are weak, and the tongue may block the throat. Intubation and ventilation are needed to PROTECT THE AIRWAY from obstruction and aspiration, even if oxygenation and CO₂ are initially normal.

❌ Why the other options are wrong:
• Primary ventilatory (CO2) failure — Primary ventilatory failure is when CO₂ rises because of poor breathing.
• Primary oxygenation failure — Primary oxygenation failure is when O₂ is low despite oxygen.
• Post-anesthesia recovery only — This isn't post-anaesthesia recovery.

⭐ Key point: Indications for intubation: can't protect the airway, can't oxygenate, can't ventilate, or the expected clinical course (such as transfer or worsening).$x$, null),
(37, $x$During a spontaneous breathing trial, the rapid shallow breathing index (f/VT) that predicts weaning failure is above:$x$, $x$105 breaths/min/L$x$, $x$✅ Correct answer: 105 breaths/min/L
The rapid shallow breathing index (RSBI) = respiratory rate ÷ tidal volume in litres. An RSBI ABOVE 105 predicts WEANING FAILURE: the patient is breathing fast and shallow. For example, RR 35 with VT 0.25 L = 140, which is likely to fail.

❌ Why the other options are wrong:
• 25 breaths/min/L — 25 is far below the cut-off.
• 50 breaths/min/L — 50 is a good value.
• 10 breaths/min/L — 10 is unrealistically low.

⭐ Key point: RSBI below 105 predicts success, but use it with clinical judgement.$x$, null),
(38, $x$A ventilated patient suddenly desaturates. The 'DOPE' mnemonic for the cause stands for:$x$, $x$Displacement, Obstruction, Pneumothorax, Equipment failure$x$, $x$✅ Correct answer: Displacement, Obstruction, Pneumothorax, Equipment failure
DOPE helps troubleshoot sudden desaturation in a ventilated patient. D = DISPLACEMENT of the tube (into the oesophagus, a main bronchus or out). O = OBSTRUCTION (secretions, kink, biting). P = PNEUMOTHORAX (especially tension). E = EQUIPMENT failure (ventilator, oxygen supply, circuit).

❌ Why the other options are wrong:
• Disconnection, Oxygen, PEEP, Exhaustion — Disconnection, Oxygen, PEEP, Exhaustion isn't DOPE.
• Drugs, Oxygen, Pressure, Electrolytes — Drugs, Oxygen, Pressure, Electrolytes isn't DOPE.
• Dehydration, Oedema, Pneumonia, Embolism — Dehydration, Oedema, Pneumonia, Embolism isn't DOPE.

⭐ Key point: First step: disconnect from the ventilator and hand-ventilate with 100% oxygen while checking DOPE.$x$, null),
(39, $x$Shortly after extubation a patient develops stridor. The first-line nursing treatment is:$x$, $x$Sit upright, give oxygen and nebulised adrenaline$x$, $x$✅ Correct answer: Sit upright, give oxygen and nebulised adrenaline
STRIDOR after extubation is usually caused by LARYNGEAL OEDEMA (swelling of the larynx from the tube). First-line treatment: SIT the patient UPRIGHT, give OXYGEN (humidified), and give NEBULISED ADRENALINE (which shrinks the swollen tissue). IV steroids (dexamethasone) may also be given. Prepare for reintubation if it worsens.

❌ Why the other options are wrong:
• Give oral antibiotics and observe for a day — Antibiotics don't treat swelling, and observing for a day is unsafe.
• Deflate the cuff of the removed tube — The tube has already been removed; its cuff can't be deflated.
• Lie flat and give a large IV fluid bolus — Lying flat and a fluid bolus would worsen airway swelling and breathing.

⭐ Key point: A cuff-leak test before extubation can identify patients at risk of post-extubation stridor.$x$, null),
(40, $x$In pressure-controlled ventilation, if lung compliance falls the nurse expects:$x$, $x$Delivered tidal volume to fall at the same set pressure$x$, $x$✅ Correct answer: Delivered tidal volume to fall at the same set pressure
In PRESSURE-CONTROLLED ventilation, the PRESSURE is FIXED. The tidal volume delivered depends on lung compliance. If compliance FALLS (stiffer lungs, such as with ARDS, pneumothorax or abdominal distension), the same pressure delivers LESS VOLUME. Watch for low tidal volume and low minute volume alarms.

❌ Why the other options are wrong:
• The respiratory rate to fall automatically — The respiratory rate doesn't change automatically.
• Delivered tidal volume to rise automatically — Tidal volume FALLS, not rises.
• Peak pressure to rise above the set level — Peak pressure stays at the set level in pressure control.

⭐ Key point: Pressure control: watch the volumes. Volume control: watch the pressures.$x$, null),
(41, $x$A woman with severe mitral stenosis and mitral regurgitation has a pulmonary artery catheter inserted. The physician orders pulmonary artery pressure monitoring, including pulmonary capillary wedge pressures. The purpose of this is to help assess the:$x$, $x$Pressure from fluid within the left ventricle.$x$, $x$✅ Correct answer: Pressure from fluid within the left ventricle.
The pulmonary capillary wedge pressure (PCWP) reflects LEFT ATRIAL pressure, which (when the mitral valve is open in diastole) reflects LEFT VENTRICULAR filling pressure (preload). In mitral valve disease, it helps assess how much pressure is building up behind the valve and guides fluid and drug therapy.

❌ Why the other options are wrong:
• Peripheral arterial pressure. — Peripheral arterial pressure is measured by an arterial line.
• Degree of coronary artery stenosis. — Coronary artery narrowing is assessed by coronary angiography.
• Oxygen and carbon dioxide concentration is the blood. — Blood gases are measured by an ABG.

⭐ Key point: In mitral stenosis, PCWP overestimates LV filling, because pressure builds up behind the narrowed valve.$x$, null),
(42, $x$A patient has a PAWP of 22 mmHg, cardiac index of 1.8 L/min/m2, and elevated SVR. This hemodynamic profile is most consistent with:$x$, $x$Cardiogenic shock$x$, $x$✅ Correct answer: Cardiogenic shock
A HIGH wedge pressure (PAWP 22, normal 6–12) means blood is backing up behind a failing LEFT VENTRICLE. A LOW CARDIAC INDEX (1.8, normal 2.5–4.0) means the heart isn't pumping enough. HIGH SVR shows the vessels are clamping down to compensate. This is CARDIOGENIC SHOCK.

❌ Why the other options are wrong:
• Distributive shock — Distributive (septic) shock has LOW SVR.
• Hypovolemic shock — Hypovolaemic shock has LOW PAWP.
• Normal hemodynamics — These values aren't normal.

⭐ Key point: Treat cardiogenic shock: inotropes, careful fluids, reperfusion (PCI for MI), mechanical support (IABP).$x$, null),
(43, $x$A 2-year old was admitted for digoxin toxicity. BP is 94/60 mmhg, capillary refill time is 2 seconds and the ECG reveals 1st degree AV block with a heart rate of 60. The critical care nurse should:$x$, $x$Continue to monitor.$x$, $x$✅ Correct answer: Continue to monitor.
This child with digoxin toxicity has a STABLE BP (94/60), normal capillary refill (2 seconds), and only FIRST-DEGREE AV block with a heart rate of 60. First-degree block alone is usually benign, and the child is well perfused. The right action is to CONTINUE MONITORING closely (ECG, potassium, digoxin level, signs of deterioration).

❌ Why the other options are wrong:
• Prepare for cardioversion. — Cardioversion is dangerous in digoxin toxicity (it can trigger VF) and isn't indicated.
• Administer atropine. — Atropine isn't needed; the child is stable.
• Administer vasovagal maneuvers. — Vagal manoeuvres would slow the heart further.

⭐ Key point: Signs of serious digoxin toxicity: severe bradycardia, high-degree heart block, ventricular arrhythmias, high potassium. Treat with Digibind (digoxin-specific antibody).$x$, null),
(44, $x$Which ECG finding, though neither sensitive nor specific, is classically associated with acute PE and right heart strain?$x$, $x$S1Q3T3 pattern$x$, $x$✅ Correct answer: S1Q3T3 pattern
The S1Q3T3 pattern (a deep S wave in lead I, a Q wave and inverted T wave in lead III) reflects RIGHT HEART STRAIN from a large pulmonary embolism. It is classically associated with PE, but it is neither sensitive nor specific. The commonest ECG finding in PE is sinus tachycardia.

❌ Why the other options are wrong:
• Delta wave — A delta wave is seen in Wolff–Parkinson–White syndrome.
• Prolonged QT interval — A prolonged QT is seen with drugs and electrolyte problems.
• U waves — U waves are seen in hypokalaemia.

⭐ Key point: Other PE ECG findings: sinus tachycardia, right bundle branch block, right axis deviation, T inversion in V1–V4.$x$, null),
(45, $x$Which gas is used to inflate balloon during diastole in Intra-aortic Balloon pump (IABP) machine?$x$, $x$Helium$x$, $x$✅ Correct answer: Helium
The IABP balloon is inflated with HELIUM gas. Helium is very light (low density), so it moves in and out of the balloon very quickly, allowing rapid inflation and deflation with each heartbeat. It is also quickly absorbed into the blood if the balloon ruptures, reducing the risk of gas embolism.

❌ Why the other options are wrong:
• Chlorine — Chlorine is a toxic gas.
• Iodine — Iodine isn't a gas used in medical balloons.
• Hydrogen — Hydrogen is explosive and dangerous.

⭐ Key point: If blood appears in the IABP gas tubing, the balloon has ruptured: stop the pump and inform the doctor immediately.$x$, null),
(46, $x$When is the use of spironolactone possibly contraindicated?$x$, $x$In hyperkalaemia patients$x$, $x$✅ Correct answer: In hyperkalaemia patients
Spironolactone is a POTASSIUM-SPARING diuretic: it blocks aldosterone, so the kidneys keep potassium. In a patient who already has HYPERKALAEMIA (high potassium), it can raise potassium to dangerous levels and cause cardiac arrest. It is contraindicated in hyperkalaemia.

❌ Why the other options are wrong:
• In patients with refractory congestive heart failure — Spironolactone is USED in refractory heart failure (it reduces mortality).
• When also prescribing furosemide — It is often combined with furosemide (which balances potassium loss).
• In hypernatremia patients — High sodium isn't a contraindication.

⭐ Key point: Avoid combining spironolactone with ACE inhibitors and potassium supplements without close monitoring.$x$, null),
(47, $x$Propranolol prophylaxis for variceal bleeding aims to reduce heart rate by approximately:$x$, $x$25% or to 55bpm$x$, $x$✅ Correct answer: 25% or to 55bpm
Non-selective beta-blockers (propranolol, nadolol) reduce portal pressure in cirrhosis, lowering the risk of variceal bleeding. The dose is increased until the resting heart rate falls by about 25% or to about 55 bpm, which indicates enough beta-blockade, as long as BP stays acceptable.

❌ Why the other options are wrong:
• 10% or to 90bpm — 10% or 90 bpm isn't enough reduction.
• No specific target — A target IS used.
• 50% or to 40bpm — 50% or 40 bpm is too much (dangerous bradycardia).

⭐ Key point: Endoscopic band ligation is an alternative or addition for large varices.$x$, null),
(48, $x$On the day of surgery, a patient's regular β-blocker medication should generally be:$x$, $x$Continued$x$, $x$✅ Correct answer: Continued
Regular BETA-BLOCKERS should generally be CONTINUED on the day of surgery (taken with a sip of water). Stopping them suddenly can cause REBOUND effects: fast heart rate, high BP, angina or MI. Continuing them protects the heart during the stress of surgery.

❌ Why the other options are wrong:
• Stopped abruptly — Stopping abruptly causes rebound tachycardia and ischaemia.
• Doubled in dose — Doubling the dose isn't recommended.
• Replaced with a diuretic — Replacing it with a diuretic isn't appropriate.

⭐ Key point: Other drugs usually continued: statins and most anti-epileptics. Often held: ACE inhibitors, diuretics, oral hypoglycaemics (check local policy).$x$, null),
(49, $x$On the day of surgery, diuretics are generally:$x$, $x$Usually withheld$x$, $x$✅ Correct answer: Usually withheld
DIURETICS are usually WITHHELD on the morning of surgery. Patients are already fasting (with less fluid intake), and anaesthesia lowers BP. Diuretics could add to dehydration, low BP, and electrolyte problems (low potassium).

❌ Why the other options are wrong:
• Continued as normal — Continuing as normal risks dehydration and low potassium.
• Doubled in dose — Doubling the dose is never appropriate here.
• Given intravenously regardless of oral status — IV diuretics aren't routinely given before surgery.

⭐ Key point: Restart diuretics after surgery when the patient is eating and drinking and fluid balance is stable.$x$, null),
(50, $x$Which of the following is NOT a reversible cause of Cardiac Arrest?$x$, $x$Hypertension$x$, $x$✅ Correct answer: Hypertension
The reversible causes of cardiac arrest are the 4 Hs and 4 Ts. 4 Hs: HYPOXIA, HYPOVOLAEMIA, HYPO/HYPERKALAEMIA (and other metabolic causes), HYPOTHERMIA. 4 Ts: TENSION PNEUMOTHORAX, TAMPONADE, TOXINS, THROMBOSIS (coronary or pulmonary). HYPERTENSION is NOT one of them.

❌ Why the other options are wrong:
• Hypoxia — Hypoxia IS a reversible cause.
• Hypovolemia — Hypovolaemia IS a reversible cause.
• Tension pneumothorax — Tension pneumothorax IS a reversible cause.

⭐ Key point: During CPR, actively look for and treat the 4 Hs and 4 Ts.$x$, null),
(51, $x$A patient with cirrhosis and a GI bleed carries higher rebleeding risk mainly because of:$x$, $x$Portal hypertension and poor clotting$x$, $x$✅ Correct answer: Portal hypertension and poor clotting
Cirrhosis causes PORTAL HYPERTENSION (high pressure in the portal vein), which creates fragile, enlarged veins (VARICES) in the oesophagus and stomach that bleed easily. The damaged liver also makes fewer CLOTTING factors and the spleen traps platelets, so bleeding is harder to stop and more likely to recur.

❌ Why the other options are wrong:
• Improved clotting function — Clotting is WORSE, not improved, in cirrhosis.
• Lower blood pressure at baseline only — Low BP alone isn't the main reason.
• No increased risk compared to others — The risk IS higher than in other patients.

⭐ Key point: Prevent rebleeding: beta-blockers, band ligation, and treating the cause (stopping alcohol).$x$, null),
(52, $x$Rapid deflation of Balloon of IABP will decrease:$x$, $x$After Load$x$, $x$✅ Correct answer: After Load
The IABP DEFLATES rapidly just before the heart contracts (systole). This suddenly lowers the pressure in the aorta, so the left ventricle pushes blood out against less resistance: AFTERLOAD is REDUCED. This lowers the heart's oxygen needs and improves cardiac output.

❌ Why the other options are wrong:
• Contraction — Deflation doesn't decrease contraction.
• Pre-load — Deflation doesn't mainly affect preload.
• Heart Rate — Deflation doesn't directly change heart rate.

⭐ Key point: IABP: inflate in diastole (improves coronary flow), deflate before systole (reduces afterload).$x$, null),
(53, $x$Elective surgery is generally considered for cancellation when blood pressure exceeds:$x$, $x$SBP >180 AND DBP >110$x$, $x$✅ Correct answer: SBP >180 AND DBP >110
Elective (non-urgent) surgery is often postponed if the BP is very high, commonly a SYSTOLIC above 180 AND a DIASTOLIC above 110 mmHg (or systolic 200 or more alone). Very high BP increases the risk of stroke, MI, bleeding and BP swings during anaesthesia. The BP is controlled first.

❌ Why the other options are wrong:
• SBP >120 AND DBP >80 — 120/80 is normal BP.
• Any blood pressure above normal — Any BP above normal doesn't justify cancellation.
• SBP >100 alone — A systolic above 100 alone is normal.

⭐ Key point: Emergency surgery isn't delayed for high BP; it is managed during the operation.$x$, null),
(54, $x$A nurse is assessing an electrocardiogram rhythm strip. The P waves and QRS complexes are regular. The PR interval is 0.16 second, and QRS complexes measure 0.06 second. The overall heart rate is 64 beats per minute. The nurse assesses the cardiac rhythm as:$x$, $x$Normal sinus rhythm$x$, $x$✅ Correct answer: Normal sinus rhythm
Check each part: rhythm REGULAR; rate 64 (normal 60–100); PR interval 0.16 s (normal 0.12–0.20); QRS 0.06 s (normal, under 0.12). Every value is normal, so this is NORMAL SINUS RHYTHM.

❌ Why the other options are wrong:
• Sinus bradycardia — Sinus bradycardia has a rate BELOW 60.
• Sick sinus syndrome — Sick sinus syndrome shows alternating slow and fast rhythms, or pauses.
• First-degree heart block — First-degree heart block has a PR interval ABOVE 0.20 s.

⭐ Key point: ECG interpretation: rate, rhythm, P waves, PR interval, QRS width, ST segment, T waves.$x$, null),
(55, $x$A 50-year old man is admitted to the trauma resuscitation unit. He is intubated on arrival. What is the next step in the primary survey?$x$, $x$Listen to lung sounds to assess for ventilation.$x$, $x$✅ Correct answer: Listen to lung sounds to assess for ventilation.
In the primary survey (ABCDE), after the airway is secured by intubation, the next step is BREATHING: confirm the tube is working by LISTENING to LUNG SOUNDS on both sides (and checking chest rise and capnography). This checks for correct tube placement and problems like pneumothorax.

❌ Why the other options are wrong:
• Obtain a chest x-ray to determine tube placement — A chest X-ray is useful, but comes after the clinical check.
• Initiate large-bore intravenous catheter placement and replace fluid. — Circulation (IV lines, fluids) comes after breathing.
• Assess the patient's blood pressure and peripheral pulses. — Assessing BP and pulses is circulation, which follows breathing.

⭐ Key point: Confirm ETT placement with waveform capnography (the gold standard) plus clinical signs.$x$, null),
(56, $x$Which of the following should be the first monitor attached to the patient on arrival in the post anaesthesia care area (PACU):$x$, $x$Cardiac monitor$x$, $x$✅ Correct answer: Pulse oximeter
On arrival in the PACU (recovery), the PULSE OXIMETER is usually the first monitor attached. Oxygenation and the airway are the top priority after anaesthesia (hypoxia from airway obstruction, residual drugs or hypoventilation is the commonest early danger), and the oximeter also shows the heart rate. ECG and BP monitoring follow immediately. (The old answer key said "cardiac monitor"; airway and oxygenation come first, so the key has been corrected to pulse oximeter.)

❌ Why the other options are wrong:
• Temperature monitoring device — Temperature monitoring is important but isn't the first priority.
• Non-invasive blood pressure — Non-invasive BP is important but comes after oxygenation.
• Cardiac monitor — A cardiac monitor is important but follows pulse oximetry in airway-first priority.

⭐ Key point: PACU priorities: airway, breathing (SpO₂, RR), circulation (HR, BP, ECG), consciousness, pain, temperature and the surgical site.$x$, $x$Pulse oximeter$x$),
(57, $x$With an intra-aortic balloon pump, the balloon should inflate at:$x$, $x$The dicrotic notch (aortic valve closure)$x$, $x$✅ Correct answer: The dicrotic notch (aortic valve closure)
The IABP balloon should INFLATE at the DICROTIC NOTCH on the arterial waveform, which marks AORTIC VALVE CLOSURE (the start of diastole). Inflating then pushes blood back into the coronary arteries, improving heart muscle blood flow. It deflates just before the next systole.

❌ Why the other options are wrong:
• The upstroke of the arterial waveform — Inflating on the upstroke (systole) would block the heart's ejection, which is dangerous.
• The peak of the R wave on the ECG — Inflating at the peak of the R wave is wrong timing (the R wave triggers deflation timing).
• The start of atrial contraction (P wave) — Inflating at the P wave is wrong timing.

⭐ Key point: Wrong timing harms the heart. Early inflation raises afterload; late deflation increases cardiac work.$x$, null),
(58, $x$ST depression in V1–V3 with tall R waves in a patient with chest pain suggests:$x$, $x$Posterior MI; record leads V7–V9$x$, $x$✅ Correct answer: Posterior MI; record leads V7–V9
ST DEPRESSION in V1–V3 with TALL R WAVES in a patient with chest pain suggests a POSTERIOR MI. The front leads see the back of the heart "in reverse". Record posterior leads (V7–V9): ST elevation there confirms a posterior STEMI, which needs urgent reperfusion (PCI).

❌ Why the other options are wrong:
• Anterior wall ischaemia only — Anterior ischaemia doesn't explain the tall R waves.
• Normal early repolarisation — Early repolarisation causes ST elevation, not depression.
• Right bundle branch block only — Right bundle branch block causes a wide QRS with an RSR' pattern.

⭐ Key point: A posterior MI is often missed. Think of it when there is ST depression in V1–V3.$x$, null),
(59, $x$The first-line drug for torsades de pointes with a pulse is:$x$, $x$IV magnesium sulfate 2 g$x$, $x$✅ Correct answer: IV magnesium sulfate 2 g
IV MAGNESIUM SULPHATE (2 g over 10–15 minutes) is the first-line treatment for torsades de pointes with a pulse, even if the magnesium level is normal. It stabilises the heart muscle membrane. Also STOP QT-prolonging drugs and CORRECT potassium. Pulseless torsades is defibrillated.

❌ Why the other options are wrong:
• IV adenosine 6 mg — Adenosine is for SVT, not torsades.
• Oral digoxin 250 mcg — Digoxin doesn't treat torsades.
• IV amiodarone 900 mg — Amiodarone prolongs QT and can worsen torsades.

⭐ Key point: Torsades is associated with long QT (drugs, low K, low Mg, congenital). Overdrive pacing or isoprenaline may help recurrent episodes.$x$, null),
(60, $x$Beck's triad of cardiac tamponade is:$x$, $x$Hypotension, raised neck veins and muffled heart sounds$x$, $x$✅ Correct answer: Hypotension, raised neck veins and muffled heart sounds
BECK'S TRIAD of cardiac tamponade: 1) HYPOTENSION (the squeezed heart can't fill and pump), 2) RAISED neck veins (JVP; blood can't enter the heart), 3) MUFFLED heart sounds (fluid around the heart). Pulsus paradoxus is another sign.

❌ Why the other options are wrong:
• Hypertension, bradycardia and irregular breathing — Hypertension, bradycardia and irregular breathing is Cushing's triad (raised ICP).
• Chest pain, ST elevation and raised troponin — Chest pain, ST elevation and raised troponin describe MI.
• Fever, new murmur and splinter haemorrhages — Fever, a new murmur and splinter haemorrhages describe infective endocarditis.

⭐ Key point: Treat tamponade urgently with pericardiocentesis or surgical drainage.$x$, null),
(61, $x$Which does NOT need to be excluded before testing for brain death?$x$, $x$Limb fractures$x$, $x$✅ Correct answer: Limb fractures
Before brainstem death testing, conditions that can mimic brainstem death must be EXCLUDED: DRUGS (sedatives, opioids, neuromuscular blockers), HYPOTHERMIA (below 34 °C), and severe METABOLIC and ELECTROLYTE disturbances (sodium, glucose, potassium) or endocrine problems. LIMB FRACTURES don't affect brainstem function, so they don't need to be excluded.

❌ Why the other options are wrong:
• Electrolyte imbalances — Electrolyte imbalances MUST be excluded.
• Hypothermia — Hypothermia MUST be excluded.
• Drug intoxication — Drug intoxication MUST be excluded.

⭐ Key point: Brainstem death tests are done by two experienced doctors, on two occasions.$x$, null),
(62, $x$Bilateral damage to the spinal cord at the cervical level may produce:$x$, $x$tetraplegia$x$, $x$✅ Correct answer: tetraplegia
The cervical spinal cord carries nerves for the ARMS and LEGS (and breathing). BILATERAL (both sides) damage at the cervical level causes paralysis of ALL FOUR limbs: TETRAPLEGIA (quadriplegia). High cervical injuries (C3–C5) can also paralyse the diaphragm.

❌ Why the other options are wrong:
• monoplegia — Monoplegia is paralysis of ONE limb.
• hemiplegia — Hemiplegia is paralysis of ONE SIDE of the body (often a stroke).
• paraplegia — Paraplegia is paralysis of the LEGS (thoracic or lumbar injury).

⭐ Key point: "C3, 4, 5 keeps the diaphragm alive." High cervical injuries need breathing support.$x$, null),
(63, $x$The nurse is providing skin care for an unconscious patient. What is the most effective intervention to prevent pressure ulcers?$x$, $x$Repositioning the patient every 2 hours$x$, $x$✅ Correct answer: Repositioning the patient every 2 hours
REPOSITIONING the patient every 2 HOURS is the most effective way to prevent pressure ulcers. It relieves pressure on bony areas (sacrum, heels, hips), restoring blood flow before tissue damage occurs. Use pressure-relieving mattresses too.

❌ Why the other options are wrong:
• Applying a thick layer of lotion to the skin — Thick lotion doesn't relieve pressure and may make the skin too moist.
• Using a firm mattress on the bed — A firm mattress INCREASES pressure; a pressure-relieving mattress is needed.
• Massaging reddened areas of the skin — MASSAGING red areas damages fragile tissue and should be avoided.

⭐ Key point: Use the Braden scale to assess risk. Keep skin clean and dry, and ensure good nutrition.$x$, null),
(64, $x$Central paresis and loss of proprioception on one side with loss of pain and temperature sensation on the opposite side form which syndrome?$x$, $x$Brown-Séquard$x$, $x$✅ Correct answer: Brown-Séquard
BROWN-SÉQUARD syndrome happens with damage to ONE SIDE (hemisection) of the spinal cord (such as from a stab wound). On the SAME side: weakness (central paresis) and loss of position and vibration sense. On the OPPOSITE side: loss of pain and temperature sensation (because these fibres cross over soon after entering the cord).

❌ Why the other options are wrong:
• Strümpell–Lorrain — Strümpell–Lorrain disease is hereditary spastic paraplegia.
• Argyll Robertson — Argyll Robertson pupils are seen in neurosyphilis.
• Lambert–Eaton — Lambert–Eaton syndrome is a neuromuscular junction disorder linked to cancer.

⭐ Key point: Brown-Séquard has the best prognosis of the incomplete spinal cord syndromes.$x$, null),
(65, $x$A nurse is positioning an unconscious patient. The patient's head should be maintained in a:$x$, $x$Neutral, midline position$x$, $x$✅ Correct answer: Neutral, midline position
An unconscious patient's head should be kept in a NEUTRAL, MIDLINE position (not turned or bent). This keeps the AIRWAY OPEN and allows good VENOUS DRAINAGE from the brain through the jugular veins, which helps prevent raised ICP.

❌ Why the other options are wrong:
• Hyperextended position — Hyperextension can strain the neck and may close the airway in some patients.
• Flexed position on the chest — Flexion onto the chest can block the airway and jugular veins.
• Rotated position to the side — Rotation to the side compresses the jugular veins and raises ICP.

⭐ Key point: Keep the head of the bed up at 30° and avoid tight ETT ties or collars that compress the neck veins.$x$, null),
(66, $x$If a patient continues seizing despite first- and second-line drugs, the next step generally involves:$x$, $x$Escalating to general anaesthesia/ICU-level care$x$, $x$✅ Correct answer: Escalating to general anaesthesia/ICU-level care
If seizures continue despite first-line (benzodiazepines) and second-line drugs (phenytoin, levetiracetam, valproate), this is REFRACTORY status epilepticus. The next step is GENERAL ANAESTHESIA (propofol, midazolam infusion, or thiopentone) with intubation and ventilation in ICU, and continuous EEG monitoring if available.

❌ Why the other options are wrong:
• Discharging the patient home — Discharging the patient is dangerous.
• Simply waiting for the seizure to stop on its own — Waiting risks brain damage and death.
• No further treatment is available — Further treatment IS available.

⭐ Key point: Prolonged seizures cause brain injury, hyperthermia, acidosis and rhabdomyolysis. Treat aggressively.$x$, null),
(67, $x$This disease condition consists of train of severe seizures with relatively short intervals or no interval between, the patient becomes exhausted and frequently hyperthermia. Death not uncommonly occurs during the attacks.$x$, $x$Persistent convulsion$x$, $x$✅ Correct answer: Status epilepticus
STATUS EPILEPTICUS is a continuous seizure, or a series of seizures without recovery between them, lasting more than 5 minutes. The patient becomes exhausted, may develop hyperthermia, acidosis and rhabdomyolysis, and death can occur. It is a medical emergency. (The old answer key said "persistent convulsion", which isn't the medical term; it has been corrected to status epilepticus.)

❌ Why the other options are wrong:
• Persistent convulsion — "Persistent convulsion" describes the event loosely but isn't the recognised diagnosis.
• Poor epilepsy — "Poor epilepsy" isn't a medical term.
• Meningeal irritation — Meningeal irritation is a sign of meningitis, not repeated seizures.

⭐ Key point: Treatment: ABC, check glucose, benzodiazepine, second-line IV drug, then anaesthesia if refractory.$x$, $x$Status epilepticus$x$),
(68, $x$The onset of delirium is usually rapid, within:$x$, $x$Hours to a few days$x$, $x$✅ Correct answer: Hours to a few days
Delirium has a RAPID ONSET, developing over HOURS to a FEW DAYS, and FLUCTUATES through the day. It is caused by an acute problem (infection, drugs, hypoxia, metabolic changes). DEMENTIA, in contrast, develops slowly over months to years.

❌ Why the other options are wrong:
• Months to years — Months to years describes dementia.
• 30 minutes to 1 hour — 30 minutes to 1 hour is too fast for typical delirium onset.
• Weeks to months — Weeks to months describes a slower process.

⭐ Key point: Delirium is often reversible if the cause is found and treated. Screen ICU patients every shift.$x$, null),
(69, $x$A seizure that stops on its own after 3 minutes and the patient regains consciousness would be classified as:$x$, $x$Not status epilepticus$x$, $x$✅ Correct answer: Not status epilepticus
Status epilepticus is a seizure lasting MORE THAN 5 MINUTES, or repeated seizures without recovery between them. A seizure that STOPS ON ITS OWN after 3 minutes, with the patient waking up, is NOT status epilepticus. It is a single seizure.

❌ Why the other options are wrong:
• Cannot be determined — It can be classified from the information given.
• Epilepsy by definition — A single seizure doesn't define epilepsy (two or more unprovoked seizures are needed).
• Status epilepticus — It doesn't meet the 5-minute status definition.

⭐ Key point: Treat seizures lasting more than 5 minutes with benzodiazepines. Investigate the cause of any first seizure.$x$, null),
(70, $x$The presence of dysphagia suggests damage to cranial nerves:$x$, $x$IX-X$x$, $x$✅ Correct answer: IX-X
DYSPHAGIA (difficulty swallowing) suggests damage to the GLOSSOPHARYNGEAL (CN IX) and VAGUS (CN X) nerves, which supply the throat (pharynx) and larynx muscles and control swallowing and the gag reflex.

❌ Why the other options are wrong:
• V-VII — CN V–VII control chewing (V) and facial movement (VII), not mainly swallowing.
• III-VI — CN III–VI control eye movements.
• VII-XI — CN VII–XI is a broad group; the key swallowing nerves are IX and X.

⭐ Key point: Patients with dysphagia are at high risk of aspiration. Do a swallow assessment before giving oral food, fluids or drugs.$x$, null),
(71, $x$A nurse is caring for an unconscious patient. Which of the following is a priority nursing intervention to prevent complications?$x$, $x$Performing frequent oral care and airway suctioning$x$, $x$✅ Correct answer: Performing frequent oral care and airway suctioning
In an unconscious patient, the AIRWAY is the priority. They can't clear secretions or protect against aspiration. Frequent ORAL CARE (reduces bacteria and VAP) and AIRWAY SUCTIONING (removes secretions) prevent aspiration pneumonia and airway obstruction.

❌ Why the other options are wrong:
• Leaving the patient in the same position for extended periods — Leaving the patient in one position causes pressure ulcers and lung collapse.
• Administering oral fluids every hour — Oral fluids in an unconscious patient cause aspiration.
• Encouraging the patient to cough and deep breathe — An unconscious patient can't cough and deep breathe on request.

⭐ Key point: Unconscious patient care: airway, breathing, circulation, eyes, mouth, skin, nutrition, elimination, mobility and family support.$x$, null),
(72, $x$Arranged from outermost to innermost, the correct order of the three meningeal layers surrounding the brain and spinal cord is$x$, $x$dura mater, arachnoid mater, pia mater$x$, $x$✅ Correct answer: dura mater, arachnoid mater, pia mater
The three meninges, from OUTSIDE to INSIDE: DURA mater (the tough outer layer), ARACHNOID mater (the middle, web-like layer), PIA mater (the thin inner layer stuck to the brain). Remember "DAP": Dura, Arachnoid, Pia. CSF flows in the subarachnoid space, between the arachnoid and pia.

❌ Why the other options are wrong:
• dura mater, pia mater, arachnoid mater — Dura, pia, arachnoid is the wrong order.
• arachnoid mater, dura mater, pia mater — Arachnoid, dura, pia is the wrong order.
• pia mater, arachnoid mater, dura mater — Pia, arachnoid, dura is the reverse order (inside to outside).

⭐ Key point: Bleeds: extradural (between skull and dura), subdural (between dura and arachnoid), subarachnoid (in the CSF space).$x$, null),
(73, $x$Xanthochromia (yellow discoloration) of the cerebrospinal fluid on lumbar puncture is most suggestive of which condition?$x$, $x$Subarachnoid hemorrhage$x$, $x$✅ Correct answer: Subarachnoid hemorrhage
XANTHOCHROMIA is yellow discolouration of the CSF caused by the breakdown of red blood cells into BILIRUBIN. It appears about 6–12 hours after bleeding into the CSF, and is the classic sign of SUBARACHNOID HAEMORRHAGE (helping to distinguish it from a traumatic "bloody tap" during the LP).

❌ Why the other options are wrong:
• Guillain-Barre syndrome — Guillain–Barré syndrome shows high protein with normal cells, not xanthochromia.
• Normal CSF findings — Normal CSF is clear and colourless.
• Bacterial meningitis only — Bacterial meningitis gives cloudy CSF with many white cells.

⭐ Key point: Do the LP at least 12 hours after headache onset to detect xanthochromia if CT is negative.$x$, null),
(74, $x$What is the main target of neuromuscular blockers?$x$, $x$Motor end plate$x$, $x$✅ Correct answer: Motor end plate
Neuromuscular blockers (muscle relaxants like rocuronium, vecuronium, suxamethonium) act at the MOTOR END PLATE (the neuromuscular junction), where nerve signals pass to the muscle. They block acetylcholine receptors there, causing paralysis.

❌ Why the other options are wrong:
• Synoptic vesicles — Synaptic vesicles store acetylcholine in the nerve ending; blockers don't target them.
• Central nervous system (CNS) — They don't act on the CNS (patients remain conscious if not sedated).
• Muscle membrane — They act at the end plate receptors, not the whole muscle membrane.

⭐ Key point: Neuromuscular blockers cause NO sedation or pain relief. Always give sedation and analgesia with them, to prevent awareness.$x$, null),
(75, $x$When assessing the neurological status of an unconscious patient, which component of the Glasgow Coma Scale (GCS) is used to evaluate eye opening?$x$, $x$Eye Opening$x$, $x$✅ Correct answer: Eye Opening
The GCS has three parts: EYE OPENING (1–4), VERBAL response (1–5) and MOTOR response (1–6). EYE OPENING is the part used to assess whether and how the eyes open (spontaneously, to voice, to pain, or not at all).

❌ Why the other options are wrong:
• Pupillary Response — Pupillary response is checked separately; it isn't part of the GCS.
• Motor Response — Motor response assesses movement.
• Verbal Response — Verbal response assesses speech.

⭐ Key point: Record pupils (size, reaction) alongside the GCS in neurological observations.$x$, null),
(76, $x$An epidural hematoma classically results from injury to which structure, located in the potential space between the skull and the dura mater?$x$, $x$The middle meningeal artery$x$, $x$✅ Correct answer: The middle meningeal artery
An EPIDURAL (extradural) haematoma is usually caused by a skull fracture (often the temporal bone at the pterion) that tears the MIDDLE MENINGEAL ARTERY. Arterial blood collects between the skull and the dura, forming a lens-shaped (biconvex) clot on CT. A lucid interval is common.

❌ Why the other options are wrong:
• The superior sagittal sinus — The superior sagittal sinus is a large vein; damage causes venous bleeding.
• The internal carotid artery — The internal carotid artery isn't the classic cause.
• A bridging vein — Bridging veins cause SUBDURAL haematomas.

⭐ Key point: Extradural haematoma needs urgent surgical evacuation. Outcomes are good if treated quickly.$x$, null),
(77, $x$In Guillain–Barré syndrome, elective intubation should be considered when vital capacity falls below:$x$, $x$15–20 mL/kg$x$, $x$✅ Correct answer: 15–20 mL/kg
In Guillain–Barré syndrome, breathing muscles can weaken quickly. VITAL CAPACITY (VC) is measured regularly. Elective intubation is considered when VC falls BELOW about 15–20 mL/kg (or there is a rapid fall, a weak cough, or bulbar weakness), before respiratory failure happens.

❌ Why the other options are wrong:
• 50 mL/kg — 50 mL/kg is near normal.
• 70 mL/kg — 70 mL/kg is normal.
• 100 mL/kg — 100 mL/kg is above normal.

⭐ Key point: SpO₂ falls LATE in neuromuscular weakness. Rely on vital capacity, not oxygen saturation.$x$, null),
(78, $x$Which nursing measure helps reduce raised ICP in a ventilated head-injured patient?$x$, $x$Head up 30°, neck midline, loose tube ties$x$, $x$✅ Correct answer: Head up 30°, neck midline, loose tube ties
To reduce raised ICP: keep the HEAD UP at 30° (helps venous drainage), the NECK in the MIDLINE (no twisting that blocks the jugular veins), and the ETT ties LOOSE (tight ties compress the neck veins). Also avoid hypoxia, high CO₂, fever, hypotension, and coughing or straining.

❌ Why the other options are wrong:
• Head flat with tight tube ties — A flat head and tight ties INCREASE ICP.
• Frequent, long suction sessions — Frequent, long suction RAISES ICP.
• Neck flexed down onto the chest — Flexing the neck onto the chest blocks venous drainage and raises ICP.

⭐ Key point: Cluster care carefully, give sedation before suction if ICP rises, and keep suction passes under 10 seconds.$x$, null),
(79, $x$For an external ventricular drain, the zero reference point is usually the:$x$, $x$Tragus of the ear (level of the foramen of Monro)$x$, $x$✅ Correct answer: Tragus of the ear (level of the foramen of Monro)
For an external ventricular drain (EVD), the zero reference point is the TRAGUS of the ear (approximating the level of the FORAMEN OF MONRO, the opening between the ventricles). The drip chamber is set at a prescribed height (such as 10–20 cmH₂O) above this point.

❌ Why the other options are wrong:
• Umbilicus with the patient flat — The umbilicus isn't the reference.
• Phlebostatic axis at the 4th intercostal space — The phlebostatic axis is for CVP and arterial lines, not EVDs.
• Sternal notch with the patient upright — The sternal notch isn't the reference.

⭐ Key point: CLAMP the EVD before moving or repositioning the patient, then re-level and unclamp, to avoid over- or under-drainage.$x$, null),
(80, $x$A new unilateral fixed dilated pupil in a head-injured patient most likely indicates:$x$, $x$Compression of cranial nerve III by uncal herniation on that side$x$, $x$✅ Correct answer: Compression of cranial nerve III by uncal herniation on that side
A NEW, UNILATERAL, FIXED, DILATED pupil in a head-injured patient means the OCULOMOTOR nerve (CN III) is being compressed, usually by UNCAL HERNIATION: part of the brain (the uncus) is pushed down through the tentorium by rising ICP. This is a NEUROSURGICAL EMERGENCY.

❌ Why the other options are wrong:
• A normal pupil response to the bright pen torch — A normal pupil constricts to light; a fixed dilated pupil is abnormal.
• Opioid toxicity, which affects both pupils equally — Opioids cause small (pinpoint) pupils on both sides.
• Optic nerve damage on the opposite side of the head — Optic nerve damage on the opposite side doesn't cause a fixed dilated pupil this way.

⭐ Key point: Inform the team immediately, prepare for urgent CT and surgery, and start ICP-lowering measures (mannitol or hypertonic saline).$x$, null),
(81, $x$Which class of antibiotics is well known for nephrotoxic potential requiring renal dose adjustment and trough level monitoring in ICU patients?$x$, $x$Aminoglycosides$x$, $x$✅ Correct answer: Aminoglycosides
AMINOGLYCOSIDES (gentamicin, amikacin) build up in kidney tubule cells, causing NEPHROTOXICITY (acute tubular necrosis). They are also toxic to the ears (OTOTOXICITY: hearing loss, balance problems). Doses are adjusted for kidney function, and TROUGH (pre-dose) levels are monitored.

❌ Why the other options are wrong:
• First-generation cephalosporins — First-generation cephalosporins are rarely nephrotoxic.
• Macrolides — Macrolides (erythromycin) aren't typically nephrotoxic.
• Penicillins — Penicillins are rarely nephrotoxic (occasional interstitial nephritis).

⭐ Key point: Aminoglycosides are often given once daily to reduce toxicity. Avoid them with other nephrotoxins.$x$, null),
(82, $x$Preoperative preparation for thyroidectomy includes administering Lugol's iodine to:$x$, $x$Decrease gland vascularity$x$, $x$✅ Correct answer: Decrease gland vascularity
LUGOL'S IODINE is given for about 10–14 days before thyroidectomy in hyperthyroid patients (especially Graves' disease). It DECREASES the BLOOD SUPPLY (vascularity) of the thyroid and makes it FIRMER, reducing bleeding during surgery. It also briefly blocks thyroid hormone release.

❌ Why the other options are wrong:
• Reduce laryngeal spasm — It doesn't reduce laryngeal spasm.
• Increase hormone release — It REDUCES, not increases, hormone release.
• Induce euthyroid state — Anti-thyroid drugs (carbimazole) achieve the euthyroid state; iodine's main pre-op role is reducing vascularity.

⭐ Key point: Patients must be euthyroid (normal thyroid levels) before surgery, to avoid thyroid storm.$x$, null),
(83, $x$A farmer presents with goitre and reports eating cassava regularly. Which mechanism explains his condition?$x$, $x$Cassava inhibits iodine trapping$x$, $x$✅ Correct answer: Cassava inhibits iodine trapping
Cassava contains cyanogenic compounds (linamarin), which release cyanide and then THIOCYANATE in the body. Thiocyanate blocks the thyroid's ability to TRAP IODINE, so less thyroid hormone is made. TSH rises and the gland enlarges (GOITRE), especially where iodine is already lacking (as in parts of Nigeria).

❌ Why the other options are wrong:
• Cassava enhances thyroglobulin coupling — Cassava doesn't enhance thyroglobulin coupling.
• Cassava reduces TRH secretion — It doesn't directly reduce TRH.
• Cassava increases TSH secretion — TSH rises as a RESULT of low hormone; cassava doesn't directly increase TSH secretion.

⭐ Key point: Proper cassava processing (soaking, fermenting, cooking) removes most cyanide. Iodised salt prevents goitre.$x$, null),
(84, $x$Chronic transplant rejection typically develops over:$x$, $x$Months to years$x$, $x$✅ Correct answer: Months to years
CHRONIC transplant rejection develops slowly over MONTHS to YEARS. It involves gradual scarring and narrowing of the blood vessels and tissue of the transplanted organ, leading to slow loss of function. It is the main cause of long-term graft loss.

❌ Why the other options are wrong:
• Minutes to hours — Minutes to hours describes HYPERACUTE rejection.
• 1–4 days — 1–4 days is too short.
• Days to weeks — Days to weeks describes ACUTE rejection.

⭐ Key point: Lifelong immunosuppression, good drug adherence, and regular monitoring reduce rejection.$x$, null),
(85, $x$When administering a TPN solution, a nurse must verify that it contains all the prescribed components. What are the three main macronutrients provided in TPN?$x$, $x$Dextrose, amino acids, and lipids$x$, $x$✅ Correct answer: Dextrose, amino acids, and lipids
The three main MACRONUTRIENTS in TPN: DEXTROSE (carbohydrate, the main energy source), AMINO ACIDS (protein, for building and repairing tissue), and LIPIDS (fats, for energy and essential fatty acids). Electrolytes, vitamins and trace elements are added as micronutrients.

❌ Why the other options are wrong:
• Carbohydrates, proteins, and fats — Carbohydrates, proteins and fats is the general description, but the TPN components are specifically dextrose, amino acids and lipids.
• Sodium, potassium, and chloride — Sodium, potassium and chloride are electrolytes (micronutrients), not macronutrients.
• Water, electrolytes, and vitamins — Water, electrolytes and vitamins aren't the main macronutrients.

⭐ Key point: TPN is given through a central line, because it is very concentrated (hyperosmolar).$x$, null),
(86, $x$Pre-operative anti-thyroid drug (ATD) treatment before thyroid surgery is typically given for:$x$, $x$4–6 weeks$x$, $x$✅ Correct answer: 4–6 weeks
Before thyroid surgery for hyperthyroidism, ANTI-THYROID DRUGS (carbimazole or propylthiouracil) are given for about 4–6 WEEKS (often 6–8 weeks) to make the patient EUTHYROID (normal thyroid hormone levels). Operating on an uncontrolled hyperthyroid patient risks thyroid storm.

❌ Why the other options are wrong:
• 1–2 years — 1–2 years is the length of a full medical treatment course, not pre-operative preparation.
• No pre-operative treatment is needed — Pre-operative treatment IS needed.
• 1–2 days — 1–2 days isn't long enough to normalise hormone levels.

⭐ Key point: Beta-blockers control symptoms (fast heart rate, tremor) while anti-thyroid drugs take effect.$x$, null),
(87, $x$A patient on TPN is showing signs of fluid volume excess. Which of the following nursing interventions is most appropriate?$x$, $x$Notifying the provider to decrease the fluid rate$x$, $x$✅ Correct answer: Notifying the provider to decrease the fluid rate
Signs of fluid volume EXCESS (crackles, oedema, weight gain, raised BP, breathlessness) in a patient on TPN mean the total fluid is too much. The nurse should NOTIFY the PROVIDER so the fluid rate or TPN volume can be REDUCED (a more concentrated TPN may be ordered, or diuretics given).

❌ Why the other options are wrong:
• Increasing the TPN infusion rate — Increasing the rate would worsen overload.
• Monitoring the patient's blood glucose levels — Glucose monitoring is routine but doesn't treat fluid overload.
• Administering a bolus of intravenous fluids — An IV fluid bolus would worsen overload.

⭐ Key point: Monitor daily weight, fluid balance and signs of overload in patients on TPN.$x$, null),
(88, $x$A patient has an elevated TSH with a low free T4. This laboratory pattern is most consistent with which condition?$x$, $x$Primary hypothyroidism$x$, $x$✅ Correct answer: Primary hypothyroidism
In PRIMARY HYPOTHYROIDISM, the THYROID gland itself fails, so free T4 is LOW. The pituitary senses this and releases MORE TSH to stimulate the thyroid, so TSH is HIGH. High TSH with low T4 is the classic pattern.

❌ Why the other options are wrong:
• Secondary (central) hypothyroidism — Secondary (central) hypothyroidism has LOW TSH with low T4 (the pituitary fails).
• Subclinical hyperthyroidism — Subclinical hyperthyroidism has low TSH with normal T4.
• Primary hyperthyroidism — Primary hyperthyroidism has LOW TSH with HIGH T4.

⭐ Key point: The commonest cause of primary hypothyroidism worldwide is iodine deficiency; in iodine-sufficient areas it is Hashimoto's thyroiditis.$x$, null),
(89, $x$A patient presents with palpitations, tremor, exophthalmos, and weight loss. The most probable diagnosis is:$x$, $x$Toxic goitre$x$, $x$✅ Correct answer: Toxic goitre
Palpitations, tremor, weight loss and EXOPHTHALMOS (bulging eyes) are signs of HYPERTHYROIDISM. With a goitre, this is a TOXIC GOITRE (toxic diffuse goitre, Graves' disease, which classically causes exophthalmos). The gland makes too much thyroid hormone.

❌ Why the other options are wrong:
• Thyroid cyst — A thyroid cyst is a fluid-filled lump, usually without hormone excess.
• Hashimoto's disease — Hashimoto's disease usually causes HYPOthyroidism.
• Simple goitre — A simple goitre doesn't cause hyperthyroid symptoms.

⭐ Key point: Treatment options: anti-thyroid drugs, radioactive iodine, or surgery (thyroidectomy).$x$, null),
(90, $x$The most life-threatening intraoperative complication of thyroidectomy is:$x$, $x$Hemorrhage$x$, $x$✅ Correct answer: Hemorrhage
The thyroid has a very rich blood supply. HAEMORRHAGE during or after thyroidectomy is the most life-threatening complication: bleeding into the closed space of the neck can form a haematoma that COMPRESSES the TRACHEA and blocks the airway within minutes.

❌ Why the other options are wrong:
• Hypocalcaemia — Hypocalcaemia is common but usually develops after surgery and is treatable.
• Hoarseness — Hoarseness (recurrent laryngeal nerve injury) is serious but less immediately life-threatening.
• Hypothyroidism — Hypothyroidism develops later and is easily treated.

⭐ Key point: If a neck haematoma causes breathing difficulty, open the wound (remove the clips or sutures) at the bedside to release the pressure, and call for help.$x$, null),
(91, $x$During thyroid surgery, which structure must be preserved to prevent hypocalcaemia?$x$, $x$Parathyroid glands$x$, $x$✅ Correct answer: Parathyroid glands
The PARATHYROID glands (usually four) sit behind or within the thyroid. They make PTH, which controls blood CALCIUM. They must be PRESERVED during thyroid surgery to prevent HYPOCALCAEMIA.

❌ Why the other options are wrong:
• Submandibular duct — The submandibular duct is in the floor of the mouth, not near the thyroid.
• Recurrent laryngeal nerve — The recurrent laryngeal nerve must also be preserved, but to prevent HOARSENESS, not hypocalcaemia.
• Carotid artery — The carotid artery isn't related to calcium.

⭐ Key point: After thyroidectomy, watch for tingling, cramps and Chvostek's and Trousseau's signs (hypocalcaemia).$x$, null),
(92, $x$Lugol's iodine is used pre-operatively in thyroid surgery at a dose of:$x$, $x$2–5 drops for 10–15 days$x$, $x$✅ Correct answer: 2–5 drops for 10–15 days
Before thyroid surgery, LUGOL'S IODINE is given at about 2–5 drops (or 0.1–0.3 mL) THREE times a day for 10–15 DAYS. This short course reduces the gland's blood supply and makes it firmer, making surgery safer.

❌ Why the other options are wrong:
• It is not used pre-operatively — It IS used before surgery.
• 50 drops for 1 day — 50 drops for 1 day is the wrong dose and duration.
• 1 drop for 1 year — 1 drop for 1 year is the wrong regimen.

⭐ Key point: Iodine's effect wears off after about 2 weeks ("escape"), so surgery is timed accordingly.$x$, null),
(93, $x$The central control pathway for thyroid hormone production follows the sequence:$x$, $x$Hypothalamus → TRH → Pituitary → TSH → Thyroid$x$, $x$✅ Correct answer: Hypothalamus → TRH → Pituitary → TSH → Thyroid
Thyroid hormone is controlled by a feedback loop. The HYPOTHALAMUS releases TRH (thyrotropin-releasing hormone), which tells the PITUITARY to release TSH (thyroid-stimulating hormone), which tells the THYROID to make T3 and T4. High T3 and T4 then switch off TRH and TSH (negative feedback).

❌ Why the other options are wrong:
• Thyroid → TSH → Pituitary → TRH → Hypothalamus — That sequence is backwards.
• Pituitary → Hypothalamus → TSH → TRH → Thyroid — That sequence is in the wrong order.
• TSH → Hypothalamus → TRH → Pituitary → Thyroid — That sequence is in the wrong order.

⭐ Key point: The same pattern applies to other hormones, such as the hypothalamus → pituitary → adrenal axis (CRH → ACTH → cortisol).$x$, null),
(94, $x$A patient with fulminant hepatic failure develops worsening confusion and asterixis (flapping tremor). This presentation is most consistent with:$x$, $x$Hepatic encephalopathy$x$, $x$✅ Correct answer: Hepatic encephalopathy
In liver failure, the liver can't clear AMMONIA and other toxins, which reach the brain and cause HEPATIC ENCEPHALOPATHY. Signs: confusion, drowsiness, personality change, and ASTERIXIS (a flapping tremor of the outstretched hands), progressing to coma. Cerebral oedema can develop in fulminant failure.

❌ Why the other options are wrong:
• Hypoglycaemia unrelated to liver disease — Hypoglycaemia can cause confusion but doesn't cause asterixis.
• Simple fatigue — Fatigue doesn't cause asterixis.
• A normal finding with no significance — These are significant, not normal, findings.

⭐ Key point: Treat with lactulose (2–3 soft stools a day) and rifaximin, and correct the triggers (bleeding, infection, constipation, electrolytes).$x$, null),
(95, $x$To reduce aspiration risk during nasogastric tube feeding, the head of bed should be maintained at:$x$, $x$Elevated 30–45 degrees$x$, $x$✅ Correct answer: Elevated 30–45 degrees
Raising the HEAD OF BED to 30–45° during and after NG feeding uses gravity to keep stomach contents down, reducing reflux and ASPIRATION into the lungs.

❌ Why the other options are wrong:
• Prone position — Prone positioning isn't routine during feeding and needs special care.
• Flat, 0 degrees — Lying flat increases aspiration.
• Trendelenburg position — Head-down (Trendelenburg) greatly increases aspiration.

⭐ Key point: Also check tube position before feeding and monitor for vomiting or abdominal distension.$x$, null),
(96, $x$When giving lactulose for hepatic encephalopathy, the nurse aims for:$x$, $x$2–3 soft stools per day$x$, $x$✅ Correct answer: 2–3 soft stools per day
LACTULOSE treats hepatic encephalopathy by drawing water into the bowel (softening stools), speeding the passage of stool, and acidifying the colon, which turns ammonia into ammonium that can't be absorbed. The aim is 2–3 SOFT STOOLS a day.

❌ Why the other options are wrong:
• No stools to prevent fluid loss — No stools would let ammonia build up.
• 10 or more liquid stools daily — 10 or more liquid stools cause dehydration and low potassium, which can worsen encephalopathy.
• One hard stool every 3 days — A hard stool every 3 days means constipation, which worsens encephalopathy.

⭐ Key point: Look for and treat precipitants: GI bleeding, infection, constipation, sedatives, dehydration and electrolyte imbalance.$x$, null),
(97, $x$The antidote for paracetamol (acetaminophen) overdose is:$x$, $x$IV N-acetylcysteine$x$, $x$✅ Correct answer: IV N-acetylcysteine
N-ACETYLCYSTEINE (NAC) is the antidote for paracetamol overdose. It replenishes glutathione, which detoxifies the harmful paracetamol metabolite (NAPQI) and protects the liver. It is most effective within 8 hours of ingestion, but is given even later. The treatment nomogram guides its use.

❌ Why the other options are wrong:
• IV flumazenil — Flumazenil reverses benzodiazepines.
• IV naloxone — Naloxone reverses opioids.
• IV protamine sulfate — Protamine reverses heparin.

⭐ Key point: Monitor LFTs, INR, glucose and kidney function. Paracetamol liver damage may not appear for 24–72 hours.$x$, null),
(98, $x$For septic shock that stays refractory despite fluids and vasopressors, guidelines suggest:$x$, $x$IV hydrocortisone about 200 mg per day$x$, $x$✅ Correct answer: IV hydrocortisone about 200 mg per day
In septic shock that remains REFRACTORY despite fluids and vasopressors, guidelines suggest IV HYDROCORTISONE about 200 mg per DAY (50 mg every 6 hours, or a continuous infusion). It helps restore vascular responsiveness to vasopressors and shortens the duration of shock.

❌ Why the other options are wrong:
• IV dexamethasone 40 mg as a single bolus — A single 40 mg dexamethasone bolus isn't the recommended regimen.
• Oral prednisolone 5 mg daily — Oral prednisolone 5 mg is too little and too slow.
• IV methylprednisolone 1 g daily for 3 days — Methylprednisolone 1 g daily is far too high (it is a pulse dose for other conditions).

⭐ Key point: Monitor glucose closely with steroids, and stop them when vasopressors are no longer needed.$x$, null),
(99, $x$In thyroid storm, iodine (e.g. Lugol's) should be given:$x$, $x$At least 1 hour after the antithyroid drug$x$, $x$✅ Correct answer: At least 1 hour after the antithyroid drug
In thyroid storm, the ANTI-THYROID drug (PTU or carbimazole) is given FIRST to block the making of new hormone. IODINE (Lugol's) is given at least 1 HOUR AFTER. If iodine is given first, the thyroid uses it as raw material to make even MORE hormone, worsening the storm.

❌ Why the other options are wrong:
• Instead of beta-blockers — Iodine doesn't replace beta-blockers; they control the heart rate and symptoms.
• Only if the patient is hypothermic — Iodine isn't given only in hypothermia.
• Before any antithyroid drug — Iodine BEFORE anti-thyroid drugs can worsen the storm.

⭐ Key point: Thyroid storm treatment: beta-blockers, anti-thyroid drugs, iodine (after 1 hour), steroids and cooling.$x$, null),
(100, $x$Treatment of myxoedema coma includes IV levothyroxine, IV hydrocortisone and:$x$, $x$Passive rewarming and support of breathing$x$, $x$✅ Correct answer: Passive rewarming and support of breathing
Myxoedema coma (severe hypothyroidism) is treated with IV LEVOTHYROXINE (or T3), IV HYDROCORTISONE (until adrenal insufficiency is excluded), PASSIVE REWARMING (warm blankets, warm room), and SUPPORT OF BREATHING (ventilation if CO₂ is high). Active rapid rewarming can cause vasodilation and circulatory collapse.

❌ Why the other options are wrong:
• Immediate propranolol infusion — Propranolol would worsen the slow heart rate and low BP.
• Strict fluid boluses of 5% dextrose — 5% dextrose boluses can worsen low sodium.
• Rapid active external rewarming — Rapid active external rewarming can cause shock from vasodilation.

⭐ Key point: Also treat low sodium, low glucose and the trigger (infection, cold exposure, sedatives).$x$, null),
(101, $x$A patient with a high spinal cord injury develops hypotension WITH bradycardia (rather than the expected compensatory tachycardia). This is most consistent with:$x$, $x$Neurogenic shock$x$, $x$✅ Correct answer: Neurogenic shock
A high spinal cord injury (above T6) cuts the sympathetic nerves that control the blood vessels and heart. The vessels DILATE (low BP), and the unopposed vagus nerve SLOWS the heart. So the patient has HYPOTENSION with BRADYCARDIA (instead of the usual fast pulse in shock), and warm, dry skin: NEUROGENIC SHOCK.

❌ Why the other options are wrong:
• Hypovolaemic shock — Hypovolaemic shock causes a FAST pulse and cold skin.
• Cardiogenic shock — Cardiogenic shock usually causes a fast pulse with signs of heart failure.
• Septic shock — Septic shock usually causes a fast pulse.

⭐ Key point: In trauma, always look for bleeding too, as both can coexist. Treat neurogenic shock with fluids, vasopressors and atropine.$x$, null),
(102, $x$A widened mediastinum after chest trauma raises suspicion of:$x$, $x$Thoracic aortic disruption$x$, $x$✅ Correct answer: Thoracic aortic disruption
A WIDENED MEDIASTINUM (more than 8 cm on a chest X-ray) after chest trauma, especially a high-speed deceleration injury (car crash, fall), is the most important X-ray sign of THORACIC AORTIC DISRUPTION (a tear of the aorta). It is life-threatening and needs urgent CT angiography and surgical or endovascular repair.

❌ Why the other options are wrong:
• Simple rib fracture — A simple rib fracture doesn't widen the mediastinum.
• Normal anatomical variant — After trauma, a wide mediastinum shouldn't be dismissed as normal.
• Minor bruising only — Minor bruising doesn't cause mediastinal widening.

⭐ Key point: Other signs: loss of the aortic knuckle, a deviated trachea or NG tube to the right, and left haemothorax. Keep SBP 100–120 until repair.$x$, null),
(103, $x$A patient with a spinal cord injury above T6 develops sudden severe hypertension, a pounding headache, bradycardia, and flushing above the level of injury after the bladder becomes distended. Which NANDA-I diagnosis best matches this presentation?$x$, $x$Autonomic Dysreflexia$x$, $x$✅ Correct answer: Autonomic Dysreflexia
The patient ALREADY has the signs (sudden severe hypertension, pounding headache, bradycardia, flushing above the injury) after a trigger (a distended bladder), with a spinal injury above T6. This is the actual NANDA-I diagnosis AUTONOMIC DYSREFLEXIA. Act at once: sit the patient up, empty the bladder, and check for other triggers.

❌ Why the other options are wrong:
• Risk for Autonomic Dysreflexia — "Risk for Autonomic Dysreflexia" is used BEFORE it happens; here it is already happening.
• Ineffective Cerebral Tissue Perfusion — Ineffective cerebral tissue perfusion doesn't describe the full syndrome.
• Decreased Cardiac Output — Decreased cardiac output doesn't describe this problem.

⭐ Key point: Common triggers: a full bladder (a blocked catheter), constipation, pressure ulcers and tight clothing.$x$, null),
(104, $x$For small or patchy burns, a quick estimate of surface area can be made using:$x$, $x$The patient's own palm ≈ 1% TBSA$x$, $x$✅ Correct answer: The patient's own palm ≈ 1% TBSA
For small or patchy (scattered) burns, the PALM METHOD gives a quick estimate. The patient's own palm (including the fingers) is about 1% of their total body surface area. Count how many "palms" the burns cover.

❌ Why the other options are wrong:
• No estimation method exists — Estimation methods DO exist.
• Lund and Browder chart only in adults — The Lund–Browder chart is accurate for all ages, but the question asks for a quick method for small burns.
• The Rule of Nines only — The Rule of Nines is used for large burns; it is less practical for small, patchy ones.

⭐ Key point: Use the Lund–Browder chart for children (their heads are bigger and their legs smaller).$x$, null),
(105, $x$A 24 year old male is presented to ER with head injury. The patient has Tracheostomy intact. Heart Rate is below 50/min.Physician advised to administer Atropine 1 mg immediately. The only route of administering medication is Trachea now. Along with Atropine what other medications can be administered through Trachea;$x$, $x$Adrenaline$x$, $x$✅ Correct answer: Adrenaline
When there is NO IV or IO access, some drugs can be given down the ETT or tracheostomy and absorbed through the lungs. Remember NAVEL: Naloxone, Atropine, Vasopressin, Epinephrine (ADRENALINE), and Lidocaine. So adrenaline can also be given through the trachea (at a higher dose, about 2–2.5 times the IV dose, diluted in saline).

❌ Why the other options are wrong:
• Calcium — Calcium is irritant and is NOT given by the tracheal route.
• NaHCO3 — Sodium bicarbonate damages the lungs and is NOT given by this route.
• Amiodarone, — Amiodarone is NOT given by the tracheal route.

⭐ Key point: The tracheal route is a last resort. Intraosseous (IO) access is preferred when IV access fails.$x$, null),
(106, $x$Compartment syndrome causing pain on passive stretch of the affected muscle is significant because it is:$x$, $x$Often one of the earliest warning signs$x$, $x$✅ Correct answer: Often one of the earliest warning signs
In compartment syndrome, the swollen muscles are squeezed inside their tight fascial compartments, cutting off blood flow. PAIN OUT OF PROPORTION to the injury, especially pain on PASSIVE STRETCH of the muscles (moving the fingers or toes), is often one of the EARLIEST and most reliable warning signs. Pulses are often still present until late.

❌ Why the other options are wrong:
• Only seen after the compartment has already been decompressed — It occurs before decompression, not only after.
• Never associated with compartment syndrome — It IS associated with compartment syndrome.
• A late, unreliable sign — It is an EARLY sign, not a late one (pulselessness and paralysis are late).

⭐ Key point: The 6 Ps: Pain, Pain on passive stretch, Pallor, Paraesthesia, Paralysis, Pulselessness (late). Treat with fasciotomy.$x$, null),
(107, $x$The overarching principle guiding resource allocation in a mass casualty disaster response is:$x$, $x$Achieve the greatest good for the greatest number of casualties$x$, $x$✅ Correct answer: Achieve the greatest good for the greatest number of casualties
In a mass casualty disaster, resources (staff, beds, blood, operating theatres) are limited. The guiding principle is to do THE GREATEST GOOD FOR THE GREATEST NUMBER of casualties. Triage prioritises patients who are most likely to survive with treatment, rather than spending all resources on one patient who is unlikely to survive.

❌ Why the other options are wrong:
• Treat the most severely injured patient first no matter what — Treating the most severely injured first, no matter what, can waste resources on unsurvivable injuries.
• Treat only patients who can pay for care — Ability to pay is not an ethical basis for disaster care.
• Treat whoever arrived first, regardless of severity — First-come, first-served doesn't consider severity.

⭐ Key point: Triage categories: red (immediate), yellow (delayed), green (minor), black (dead or expectant).$x$, null),
(108, $x$The critical care nurse knows simultaneous injury of different regions of the body of which one or the combination of these injuries is life threatening, is popularly known as:$x$, $x$Polytrauma$x$, $x$✅ Correct answer: Polytrauma
POLYTRAUMA means simultaneous injuries to two or more body regions or systems (such as the head, chest, abdomen, pelvis and limbs), where at least one injury, or the combination, is life-threatening. These patients need a coordinated trauma team approach (ATLS).

❌ Why the other options are wrong:
• Very severe trauma — "Very severe trauma" isn't the recognised term.
• Poly head injuries — "Poly head injuries" isn't a recognised term.
• Severe multiple injuries — "Severe multiple injuries" is descriptive, but the recognised term is polytrauma.

⭐ Key point: Polytrauma patients need a primary survey (ABCDE), resuscitation, then a secondary survey (head to toe).$x$, null),
(109, $x$The correct first aid for a chemical burn is:$x$, $x$Copious irrigation with water$x$, $x$✅ Correct answer: Copious irrigation with water
For chemical burns, the first aid is COPIOUS IRRIGATION with large volumes of running WATER (for at least 20–30 minutes, longer for alkalis), after brushing off any dry chemical powder and removing contaminated clothing. Water dilutes and washes away the chemical, stopping the burning.

❌ Why the other options are wrong:
• Apply a neutralising agent immediately — Neutralising agents can cause a heat-producing reaction, worsening the burn.
• Apply ice directly — Ice can cause cold injury.
• Cover with a dry dressing only — A dry dressing alone leaves the chemical on the skin.

⭐ Key point: Alkali burns (cement, lye) are often more damaging than acids and need longer irrigation. Protect yourself with PPE.$x$, null),
(110, $x$Voltage above what threshold is classified as 'high voltage' in electrical burns?$x$, $x$1000V$x$, $x$✅ Correct answer: 1000V
Electrical injuries are classified by voltage. HIGH VOLTAGE is above 1000 VOLTS (1 kV), as in power lines and industrial sources. High voltage causes deep tissue damage along the path of the current, cardiac arrhythmias, compartment syndrome, rhabdomyolysis and kidney injury, even if the skin burns look small.

❌ Why the other options are wrong:
• 10,000V — 10,000 V is high voltage, but the threshold is 1000 V.
• 100V — 100 V is low voltage.
• 100,000V — 100,000 V is far above the threshold.

⭐ Key point: All electrical injuries need an ECG, and high-voltage injuries need cardiac monitoring, CK and urine checks.$x$, null),
(111, $x$A prolonged capillary refill time (greater than 2–3 seconds) in a shocked patient suggests:$x$, $x$Reduced peripheral perfusion$x$, $x$✅ Correct answer: Reduced peripheral perfusion
A capillary refill time longer than 2–3 seconds means the blood is slow to return to the skin after pressure. This shows REDUCED PERIPHERAL PERFUSION from vasoconstriction (the body diverting blood to vital organs in shock) or low cardiac output.

❌ Why the other options are wrong:
• Adequate peripheral perfusion — A prolonged refill means POOR, not adequate, perfusion.
• Only a cold ambient room temperature, never clinical significance — A cold room can prolong it, but in a shocked patient it is clinically significant.
• Improved cardiac output — It suggests REDUCED, not improved, cardiac output.

⭐ Key point: Check capillary refill on the sternum or fingertip (press for 5 seconds). Use it together with other signs of perfusion.$x$, null),
(112, $x$Because of extensive skin loss, TENS patients are managed most similarly to which other critical care population?$x$, $x$Major burn patients$x$, $x$✅ Correct answer: Major burn patients
In TEN (toxic epidermal necrolysis), large areas of skin peel away, causing massive FLUID loss, heat loss, protein loss, pain and a high risk of INFECTION, just like a major burn. These patients are therefore managed like MAJOR BURN patients, ideally in a burns unit or ICU.

❌ Why the other options are wrong:
• Uncomplicated cellulitis patients — Uncomplicated cellulitis is a localised skin infection.
• Stable post-operative orthopedic patients — Stable post-operative orthopaedic patients don't have widespread skin loss.
• Chronic wound outpatients — Chronic wound outpatients don't have acute, widespread skin loss.

⭐ Key point: TEN care: stop the causing drug, warm the room, fluids, non-adherent dressings, eye and mouth care, nutrition and pain relief.$x$, null),
(113, $x$A 30 years old male admitted to ICU with RTA (road traffic accident), she is unconscious and is on ventilator with Tidal volume=550 and FiO2=90%. She has CVP line inserted because of failure to insert I/V cannula, IV bolus of 1 litre and blood was infused. You are measuring his CVP which is 12cm of H2O, what does this indicate?$x$, $x$Hypervolemia$x$, $x$✅ Correct answer: Hypervolemia
Normal CVP is about 3–10 cmH₂O (or 2–8 mmHg). A CVP of 12 cmH₂O (about 9 mmHg) after 1 litre of fluid and blood is above the normal range and, in this question, indicates HYPERVOLAEMIA (volume overload). The trend after a fluid challenge is more useful than a single reading.

❌ Why the other options are wrong:
• Normal volume — Normal volume would be within 3–10 cmH₂O.
• Hypovolemia — Hypovolaemia would give a LOW CVP.
• Mixed state — "Mixed state" isn't a recognised interpretation.

⭐ Key point: Always note whether the CVP is in mmHg or cmH₂O (1 mmHg ≈ 1.36 cmH₂O).$x$, null),
(114, $x$A 30-year-old man with a stab wound to the neck is alert but bleeding actively in the resuscitation bay. You should first:$x$, $x$Apply direct pressure to the site$x$, $x$✅ Correct answer: Apply direct pressure to the site
Active bleeding from a neck wound needs immediate DIRECT PRESSURE on the bleeding site. This is the quickest and most effective way to control external haemorrhage, while help is called and resuscitation is prepared. Don't probe or explore the wound in the resuscitation bay.

❌ Why the other options are wrong:
• Locally explore the wound to find the bleeding point — Locally exploring the wound can dislodge clots and cause catastrophic bleeding.
• Clamp the bleeding vessels blindly — Blind clamping can damage vessels and nerves (and airway structures).
• Place two large-bore IV cannulae and give O-negative blood — IV access and blood are needed, but stopping the bleeding with pressure comes first.

⭐ Key point: Neck wounds can also threaten the airway (expanding haematoma). Watch for stridor and voice change.$x$, null),
(115, $x$For monitoring global perfusion, venous oxygen saturation is NOT reliably measured from a:$x$, $x$Femoral venous catheter$x$, $x$✅ Correct answer: Femoral venous catheter
Global venous oxygen saturation (ScvO₂ or SvO₂) reflects oxygen use by the whole body. It is measured from a catheter in the SUPERIOR VENA CAVA (ScvO₂) or PULMONARY ARTERY (SvO₂). A FEMORAL venous catheter samples blood from the LEGS only, which doesn't reflect the whole body.

❌ Why the other options are wrong:
• Central venous catheter in the superior vena cava — An SVC catheter is reliable for ScvO₂.
• Pulmonary artery catheter — A PA catheter gives true mixed venous SvO₂.
• Continuous oximetric central catheter — A continuous oximetric central catheter measures ScvO₂ continuously.

⭐ Key point: Normal ScvO₂ is above 70%; SvO₂ is 60–80%. Low values suggest poor oxygen delivery.$x$, null),
(116, $x$A patient with carbon monoxide poisoning from smoke inhalation should be treated with:$x$, $x$Humidified 100% oxygen$x$, $x$✅ Correct answer: Humidified 100% oxygen
Carbon monoxide binds haemoglobin about 240 times more strongly than oxygen. HUMIDIFIED 100% OXYGEN (via a non-rebreather mask or ETT) speeds up its removal from haemoglobin (its half-life falls from about 4–5 hours on room air to about 1 hour on 100% oxygen) and treats tissue hypoxia.

❌ Why the other options are wrong:
• IV antibiotics as the primary treatment — Antibiotics don't treat CO poisoning.
• Room air only — Room air removes CO slowly.
• No oxygen therapy is needed — Oxygen IS needed.

⭐ Key point: Pulse oximeters read FALSELY normal in CO poisoning. Measure COHb on co-oximetry.$x$, null),
(117, $x$After a high-voltage electrical burn with dark red urine, the target urine output is about:$x$, $x$1–1.5 mL/kg/h until the urine clears$x$, $x$✅ Correct answer: 1–1.5 mL/kg/h until the urine clears
High-voltage electrical burns damage muscles, releasing MYOGLOBIN, which turns the urine dark red or brown. Myoglobin can block the kidney tubules and cause AKI. Fluids are given to keep the urine output higher than in ordinary burns, about 1–1.5 mL/kg/hour (or 100 mL/hour in adults), until the urine clears.

❌ Why the other options are wrong:
• 5 mL/kg/h using diuretics only — 5 mL/kg/hour with diuretics only is excessive and doesn't replace fluid.
• 0.1 mL/kg/h to protect the kidneys — 0.1 mL/kg/hour is far too low and would harm the kidneys.
• 0.3 mL/kg/h with fluid restriction — 0.3 mL/kg/hour with fluid restriction would harm the kidneys.

⭐ Key point: Also monitor the ECG (arrhythmias), CK, potassium, and limbs for compartment syndrome.$x$, null),
(118, $x$Adult anaphylaxis is first treated with IM adrenaline at a dose of:$x$, $x$0.5 mg (0.5 mL of 1:1000) into the anterolateral thigh$x$, $x$✅ Correct answer: 0.5 mg (0.5 mL of 1:1000) into the anterolateral thigh
Adult anaphylaxis is treated FIRST with IM ADRENALINE 0.5 mg (0.5 mL of 1:1000) into the ANTEROLATERAL THIGH (outer middle thigh). The thigh muscle absorbs it quickly. Repeat after 5 minutes if there's no improvement.

❌ Why the other options are wrong:
• 5 mg (5 mL of 1:1000) IV push — 5 mg IV push is a massive, dangerous overdose.
• 1 mg (10 mL of 1:10,000) intramuscularly in the deltoid — 1 mg of 1:10,000 is the cardiac arrest dose and concentration, given IV, not IM.
• 0.05 mg (0.5 mL of 1:10,000) subcutaneously — 0.05 mg subcutaneously is too little and absorbed too slowly.

⭐ Key point: Then give high-flow oxygen, IV fluids, and lie the patient flat with the legs raised (or sitting if breathless).$x$, null),
(119, $x$The current ATLS site for needle decompression of tension pneumothorax in adults is:$x$, $x$4th–5th intercostal space, anterior to mid-axillary line$x$, $x$✅ Correct answer: 4th–5th intercostal space, anterior to mid-axillary line
Current ATLS guidance for needle decompression in ADULTS recommends the 4th–5th INTERCOSTAL SPACE, just ANTERIOR to the MID-AXILLARY line. The chest wall is thinner here than at the 2nd ICS mid-clavicular line, so the needle is more likely to reach the pleural space. (The 2nd ICS mid-clavicular line is still used in children.)

❌ Why the other options are wrong:
• Just above the umbilicus — Above the umbilicus is in the abdomen.
• 2nd intercostal space in the lateral chest — The 2nd ICS in the lateral chest isn't the recommended site.
• 7th intercostal space, posterior axillary line — The 7th ICS posterior axillary line risks injuring abdominal organs.

⭐ Key point: Follow needle decompression with a chest drain.$x$, null),
(120, $x$A FAST ultrasound scan in trauma looks for free fluid in the pericardium, right and left upper quadrants and:$x$, $x$Pelvis$x$, $x$✅ Correct answer: Pelvis
FAST (Focused Assessment with Sonography for Trauma) is a quick bedside ultrasound looking for FREE FLUID (usually blood) in four areas: the PERICARDIUM, the RIGHT upper quadrant (Morison's pouch, between the liver and kidney), the LEFT upper quadrant (around the spleen), and the PELVIS (behind the bladder).

❌ Why the other options are wrong:
• Thyroid — The thyroid isn't part of FAST.
• Spinal canal — The spinal canal isn't part of FAST.
• Brain — The brain isn't part of FAST.

⭐ Key point: Extended FAST (eFAST) also checks both chest sides for pneumothorax and haemothorax.$x$, null),
(121, $x$A pregnant patient presents with severe, constant abdominal pain, a tense/rigid uterus, and dark vaginal bleeding. This presentation is most concerning for:$x$, $x$Placental abruption$x$, $x$✅ Correct answer: Placental abruption
Severe, constant abdominal pain, a TENSE, RIGID ("woody"), tender uterus, and DARK vaginal bleeding in late pregnancy are classic signs of PLACENTAL ABRUPTION (premature separation of a normally sited placenta). The bleeding may be partly hidden behind the placenta, so the shock may be worse than the visible blood loss suggests.

❌ Why the other options are wrong:
• Normal labour onset — Normal labour has contractions that come and go, not constant pain and a rigid uterus.
• Placenta praevia — Placenta praevia causes PAINLESS, bright red bleeding with a soft uterus.
• Braxton Hicks contractions — Braxton Hicks contractions are painless and irregular, without bleeding.

⭐ Key point: Abruption is an emergency: risk of fetal death, DIC and haemorrhage. Resuscitate and deliver.$x$, null),
(122, $x$The compression depth recommended for an infant during CPR is approximately:$x$, $x$4cm$x$, $x$✅ Correct answer: 4cm
For an INFANT, chest compressions should be about ONE-THIRD of the chest depth, approximately 4 cm. Use two thumbs (encircling technique) or two fingers on the lower half of the sternum, at 100–120 compressions per minute.

❌ Why the other options are wrong:
• 5–6cm — 5–6 cm is the depth for ADULTS.
• 1cm — 1 cm is too shallow to circulate blood.
• 8cm — 8 cm is far too deep for an infant.

⭐ Key point: For a child (1 year to puberty), compress about 5 cm (one-third of the chest depth).$x$, null),
(123, $x$Rh incompatibility is of particular clinical concern in pregnancy when:$x$, $x$An Rh-negative mother carries an Rh-positive fetus$x$, $x$✅ Correct answer: An Rh-negative mother carries an Rh-positive fetus
Rh incompatibility matters when an Rh-NEGATIVE mother carries an Rh-POSITIVE baby. Fetal red cells entering her blood can make her produce anti-D antibodies. In a later pregnancy with an Rh-positive baby, these antibodies cross the placenta and destroy the baby's red cells (haemolytic disease of the newborn).

❌ Why the other options are wrong:
• The mother is blood type O — Blood group O alone isn't the Rh issue (ABO incompatibility is a different, milder problem).
• An Rh-positive mother carries an Rh-negative fetus — An Rh-positive mother with an Rh-negative baby isn't a problem.
• Both parents are Rh-negative — If both parents are Rh-negative, the baby is Rh-negative, so there's no problem.

⭐ Key point: Give anti-D immunoglobulin to Rh-negative mothers at 28 weeks, after delivery (if the baby is Rh-positive), and after any sensitising event.$x$, null),
(124, $x$MEOWS stands for:$x$, $x$Modified Early Obstetric Warning Score$x$, $x$✅ Correct answer: Modified Early Obstetric Warning Score
MEOWS stands for MODIFIED EARLY OBSTETRIC WARNING SCORE. It is a chart that scores vital signs (BP, pulse, RR, SpO₂, temperature, consciousness) adjusted for pregnancy, to detect early deterioration in pregnant and postnatal women and trigger urgent review.

❌ Why the other options are wrong:
• Maternal Early Warning Signs — Maternal Early Warning Signs isn't the correct term.
• Modified Early Obstetric Warning Signs — "Signs" isn't correct; it is a "Score".
• Moment Evaluation of Obstetric Syndrome — "Moment Evaluation of Obstetric Syndrome" isn't a real term.

⭐ Key point: Pregnancy changes normal vital signs, so obstetric-specific warning charts are used.$x$, null),
(125, $x$Which of the following is not an obstetric cause of disseminated intravascular coagulopathy;$x$, $x$Uterine inversion$x$, $x$✅ Correct answer: Uterine inversion
Obstetric causes of DIC include PLACENTAL ABRUPTION, AMNIOTIC FLUID EMBOLISM, PRE-ECLAMPSIA, ECLAMPSIA and HELLP, severe PPH, sepsis, and retained dead fetus. UTERINE INVERSION causes shock and haemorrhage, but it is not typically listed as a direct cause of DIC.

❌ Why the other options are wrong:
• Pre-eclampsia/eclampsia — Pre-eclampsia and eclampsia ARE causes of DIC.
• Amniotic fluid embolism — Amniotic fluid embolism IS a major cause of DIC.
• Abruptio placentae — Abruptio placentae IS a major cause of DIC.

⭐ Key point: Uterine inversion is an emergency: replace the uterus immediately and treat shock.$x$, null),
(126, $x$An acute event involving the cardiorespiratory and/or central nervous system that causes reduced or absent consciousness in pregnancy is:$x$, $x$Maternal collapse$x$, $x$✅ Correct answer: Maternal collapse
MATERNAL COLLAPSE is an acute event involving the cardiorespiratory and/or central nervous systems, causing reduced or absent consciousness (and potentially death) at any stage of pregnancy and up to 6 weeks after delivery. Causes include haemorrhage, PE, AFE, eclampsia, sepsis and cardiac disease.

❌ Why the other options are wrong:
• Ectopic pregnancy — Ectopic pregnancy is a cause of collapse, not the definition.
• Placenta praevia — Placenta praevia causes bleeding, not the definition of collapse.
• Hyperemesis gravidarum — Hyperemesis gravidarum is severe vomiting.

⭐ Key point: Maternal collapse: call for help, left lateral tilt or manual uterine displacement, ABCDE, CPR if needed, and perimortem caesarean by 5 minutes.$x$, null),
(127, $x$A 35year old para 7+2 [6alive] ,just had a spontaneous vaginal delivery of a live baby boy, she is lying on bed not talking, on examination her pulse rate is 100b/m, blood pressure 50/?, the possible cause is: ___________$x$, $x$Thromboembolism$x$, $x$✅ Correct answer: Thromboembolism
This grand multiparous woman (para 7) collapsed just after delivery with a fast pulse and very LOW BP (50 systolic). The commonest cause in a grand multipara is POSTPARTUM HAEMORRHAGE (uterine atony), which must be checked first (uterus, blood loss). Among the options given, the keyed answer is THROMBOEMBOLISM (such as amniotic fluid embolism or pulmonary embolism), which causes sudden collapse after delivery.

❌ Why the other options are wrong:
• Inadequate history during antenatal booking — Inadequate antenatal booking history doesn't cause collapse.
• Inadequate history of onset of labor — Inadequate history of labour onset doesn't cause collapse.
• Not regular in antenatal visit prenatally — Irregular antenatal visits don't directly cause collapse.

⭐ Key point: Postpartum collapse: check for PPH first (rub the uterus, check blood loss), then think of AFE, PE, sepsis and eclampsia.$x$, null),
(128, $x$The commonest surgical procedure used to treat ruptured tubal pregnancy is$x$, $x$Salpingectomy$x$, $x$✅ Correct answer: Salpingectomy
For a RUPTURED tubal (ectopic) pregnancy with bleeding, the standard surgery is SALPINGECTOMY: removal of the affected fallopian tube. It stops the bleeding quickly and removes the pregnancy. It can be done by laparotomy (if unstable) or laparoscopy.

❌ Why the other options are wrong:
• Salpingo-oophorectomy — Salpingo-oophorectomy removes the ovary too, which is usually unnecessary.
• Total hysterectomy — Total hysterectomy is far too extensive.
• oophorectomy — Oophorectomy (removing the ovary) doesn't treat a tubal pregnancy.

⭐ Key point: Ruptured ectopic with shock: resuscitate, cross-match blood, and take to theatre urgently.$x$, null),
(129, $x$Which drug is contraindicated for controlling postpartum bleeding in a woman with eclampsia?$x$, $x$Ergometrine$x$, $x$✅ Correct answer: Ergometrine
ERGOMETRINE strongly tightens blood vessels (vasoconstriction), causing a sharp rise in BP. In a woman with ECLAMPSIA (already very high BP), this can cause stroke, worsening seizures, or heart problems. It is CONTRAINDICATED in eclampsia, pre-eclampsia, hypertension and heart disease.

❌ Why the other options are wrong:
• Carboprost — Carboprost is avoided in asthma, but is fine in eclampsia.
• Misoprostol — Misoprostol is safe in eclampsia.
• Oxytocin — Oxytocin is the FIRST-LINE drug and safe in eclampsia.

⭐ Key point: Syntometrine (oxytocin plus ergometrine) also contains ergometrine, so avoid it in hypertension.$x$, null),
(130, $x$A child weighing 18 kg is prescribed an antibiotic at 10 mg/kg/day divided every 8 hours. How many milligrams should be given per dose?$x$, $x$60 mg$x$, $x$✅ Correct answer: 60 mg
Step 1: total daily dose = 18 kg × 10 mg/kg/day = 180 mg/day. Step 2: "divided every 8 hours" = 3 doses a day (24 ÷ 8 = 3). Step 3: dose per administration = 180 ÷ 3 = 60 mg.

❌ Why the other options are wrong:
• 180 mg — 180 mg is the total daily dose, not each dose.
• 30 mg — 30 mg would be 6 doses a day (every 4 hours).
• 90 mg — 90 mg would be 2 doses a day (every 12 hours).

⭐ Key point: Always check whether the order is "per dose" or "per day divided".$x$, null),
(131, $x$Which statement about pre-eclampsia is correct?$x$, $x$It is mainly a disease of primigravidae$x$, $x$✅ Correct answer: It is mainly a disease of primigravidae
PRE-ECLAMPSIA is mainly a disease of FIRST pregnancies (PRIMIGRAVIDAE). Other risk factors: a new partner, previous pre-eclampsia, multiple pregnancy, age over 40, obesity, chronic hypertension, diabetes and kidney disease.

❌ Why the other options are wrong:
• BP >140/110 defines severe disease — Severe pre-eclampsia is BP of 160/110 or above, not 140/110.
• MgSO4 is used to lower blood pressure in emergencies — Magnesium sulphate PREVENTS SEIZURES; it isn't used to lower BP (labetalol, hydralazine and nifedipine are used).
• Oedema is required for diagnosis — Oedema is NOT required for diagnosis (it is common in normal pregnancy).

⭐ Key point: Pre-eclampsia = new hypertension after 20 weeks plus proteinuria or organ dysfunction.$x$, null),
(132, $x$Common causes of antepartum haemorrhage from 24 weeks' gestation include which of the following?$x$, $x$placenta praevia$x$, $x$✅ Correct answer: placenta praevia
Antepartum haemorrhage (bleeding from 24 weeks until birth) is commonly caused by PLACENTA PRAEVIA (a low-lying placenta, causing painless bleeding) and PLACENTAL ABRUPTION (painful bleeding). In this question, the keyed answer is placenta praevia, a leading recognised cause.

❌ Why the other options are wrong:
• Uterine rupture — Uterine rupture is a rare cause, usually during labour.
• Placenta abruption — Abruption is also a common cause; the question accepts placenta praevia as its answer.
• Normal period — A normal period doesn't occur in pregnancy.

⭐ Key point: Never do a vaginal examination in antepartum haemorrhage until placenta praevia has been excluded by ultrasound.$x$, null),
(133, $x$A child in septic shock needs a fluid bolus of:$x$, $x$10 mL/kg of crystalloid, then reassess$x$, $x$✅ Correct answer: 10 mL/kg of crystalloid, then reassess
For a child in septic shock, give a fluid BOLUS of 10 mL/kg of isotonic CRYSTALLOID (0.9% saline or balanced solution), then REASSESS (heart rate, capillary refill, BP, liver size, crackles) before giving more. Repeat as needed (up to 40–60 mL/kg), watching for fluid overload.

❌ Why the other options are wrong:
• 100 mL/kg of 5% dextrose quickly — 100 mL/kg of 5% dextrose is dangerous (hyperglycaemia, low sodium, overload).
• 1 mL/kg of blood only — 1 mL/kg of blood only is far too little.
• 50 mL/kg of 0.18% saline — 0.18% saline is hypotonic and unsafe for resuscitation.

⭐ Key point: Give antibiotics within 1 hour, and start inotropes if the child stays shocked after 40–60 mL/kg.$x$, null),
(134, $x$The defibrillation energy for a child in VF is:$x$, $x$4 J/kg$x$, $x$✅ Correct answer: 4 J/kg
For a child in VF or pulseless VT, the defibrillation energy is 4 JOULES per KILOGRAM (for example, 4 × 20 kg = 80 J). Then resume CPR immediately for 2 minutes before checking the rhythm.

❌ Why the other options are wrong:
• 360 J for all ages — 360 J for all ages is an old adult monophasic dose, far too high for children.
• 40 J/kg — 40 J/kg is ten times too high.
• 0.4 J/kg — 0.4 J/kg is ten times too low.

⭐ Key point: Use paediatric pads (or adult pads placed front and back) in small children.$x$, null),
(135, $x$The IV adrenaline dose in paediatric cardiac arrest is:$x$, $x$10 mcg/kg (0.1 mL/kg of 1:10,000)$x$, $x$✅ Correct answer: 10 mcg/kg (0.1 mL/kg of 1:10,000)
In paediatric cardiac arrest, the IV or IO adrenaline dose is 10 MICROGRAMS per KILOGRAM, which is 0.1 mL/kg of 1:10,000 adrenaline. Repeat every 3–5 minutes. Example: a 20 kg child gets 200 micrograms (2 mL of 1:10,000).

❌ Why the other options are wrong:
• 1 mg/kg (10 mL/kg of 1:10,000) — 1 mg/kg is a massive overdose.
• 0.1 mcg/kg (0.001 mL/kg of 1:1000) — 0.1 mcg/kg is far too little.
• 100 mcg/kg (1 mL/kg of 1:1000) — 100 mcg/kg is ten times too much (an old high-dose regimen no longer used).

⭐ Key point: Paediatric cardiac arrest doses: adrenaline 10 mcg/kg, amiodarone 5 mg/kg, defibrillation 4 J/kg.$x$, null),
(136, $x$For a 4-year-old, the uncuffed endotracheal tube size (age ÷ 4 + 4) is:$x$, $x$5.0 mm internal diameter$x$, $x$✅ Correct answer: 5.0 mm internal diameter
Formula for uncuffed ETT size (internal diameter) in children over 1 year: age ÷ 4 + 4. For a 4-year-old: 4 ÷ 4 + 4 = 1 + 4 = 5.0 mm. (For cuffed tubes: age ÷ 4 + 3.5 = 4.5 mm.)

❌ Why the other options are wrong:
• 3.0 mm internal diameter — 3.0 mm is the size for a newborn.
• 8.0 mm internal diameter — 8.0 mm is an adult male size.
• 7.5 mm internal diameter — 7.5 mm is an adult size.

⭐ Key point: Oral tube length is about age ÷ 2 + 12 cm (14 cm for a 4-year-old). Keep half a size above and below ready.$x$, null),
(137, $x$In children aged 1–10 years, hypotension is a systolic BP below:$x$, $x$70 + (2 × age in years) mmHg$x$, $x$✅ Correct answer: 70 + (2 × age in years) mmHg
In children aged 1–10 years, HYPOTENSION is a systolic BP below 70 + (2 × age in years) mmHg. Example: a 5-year-old is hypotensive below 70 + 10 = 80 mmHg. Hypotension is a LATE sign of shock in children; tachycardia and poor perfusion appear first.

❌ Why the other options are wrong:
• 100 + (age in years) mmHg — 100 + age is closer to the expected normal systolic BP, not the hypotension threshold.
• 50 mmHg at any age — 50 mmHg is too low as a general threshold.
• 90 mmHg at any age — 90 mmHg is the adult threshold.

⭐ Key point: Children compensate for shock well. When BP falls, they are close to cardiac arrest.$x$, null),
(138, $x$A child with croup has stridor at rest. The nurse expects:$x$, $x$Oral dexamethasone and nebulised adrenaline$x$, $x$✅ Correct answer: Oral dexamethasone and nebulised adrenaline
Croup with STRIDOR AT REST is moderate to severe. The nurse expects ORAL DEXAMETHASONE (0.15–0.6 mg/kg), which reduces airway swelling over hours, and NEBULISED ADRENALINE (which shrinks the swelling quickly, within 10–30 minutes, but wears off after about 2 hours). Keep the child calm on the parent's lap.

❌ Why the other options are wrong:
• Throat swab and oral antibiotics only — Croup is viral; antibiotics don't help.
• Immediate chest physiotherapy — Chest physiotherapy isn't useful and may upset the child.
• Nebulised salbutamol alone — Salbutamol doesn't help croup (the problem is upper airway swelling, not bronchospasm).

⭐ Key point: Observe for at least 2–4 hours after nebulised adrenaline, as the stridor may return.$x$, null),
(139, $x$A drooling, toxic-looking child sitting forward with stridor may have epiglottitis. The nurse should:$x$, $x$Keep the child calm and upright and not examine the throat$x$, $x$✅ Correct answer: Keep the child calm and upright and not examine the throat
EPIGLOTTITIS is a life-threatening swelling of the epiglottis. The child is toxic, drooling, sitting forward (tripod position) with stridor. KEEP THE CHILD CALM and UPRIGHT (on the parent's lap), and DON'T examine the throat or do painful procedures. Upsetting the child can cause sudden complete airway obstruction. Call senior anaesthetic and ENT help to secure the airway in theatre.

❌ Why the other options are wrong:
• Lie the child flat and inspect the throat — Lying flat and inspecting the throat can cause complete obstruction.
• Take all blood samples first, then act — Blood tests can upset the child; secure the airway first.
• Give a sedative to stop the child crying — Sedation can depress breathing and cause obstruction.

⭐ Key point: Hib vaccination has made epiglottitis rare in children.$x$, null),
(140, $x$Children in DKA are at risk of cerebral oedema, so management includes:$x$, $x$Slow fluid replacement over 48 hours and no insulin bolus$x$, $x$✅ Correct answer: Slow fluid replacement over 48 hours and no insulin bolus
Children with DKA are at risk of CEREBRAL OEDEMA, especially if fluids are given too fast or glucose falls too quickly. Management includes SLOW fluid replacement over 48 HOURS, NO insulin bolus (start the infusion at 0.05–0.1 units/kg/hour, 1–2 hours after fluids begin), and close neurological monitoring.

❌ Why the other options are wrong:
• An insulin bolus of 1 unit/kg at the start — An insulin bolus increases the risk of cerebral oedema and low potassium.
• Hypotonic fluid to correct sodium quickly — Hypotonic fluids increase the risk of cerebral oedema.
• Rapid 20 mL/kg fluid boluses repeated hourly — Rapid repeated boluses increase the risk of cerebral oedema.

⭐ Key point: Warning signs of cerebral oedema: headache, slowing heart rate, rising BP, falling GCS, irritability. Treat with mannitol or 3% saline.$x$, null),
(141, $x$The specific antidote for opioid overdose (e.g. morphine, fentanyl) is:$x$, $x$Naloxone$x$, $x$✅ Correct answer: Naloxone
NALOXONE is the specific antidote for OPIOID overdose (morphine, heroin, fentanyl, tramadol). It blocks opioid receptors, reversing respiratory depression and sedation within minutes. Typical dose: 0.4 mg IV (or IM or intranasal), repeated as needed.

❌ Why the other options are wrong:
• N-acetylcysteine — N-acetylcysteine is for paracetamol overdose.
• Activated charcoal — Activated charcoal reduces gut absorption of some drugs; it isn't an antidote.
• Flumazenil — Flumazenil reverses benzodiazepines.

⭐ Key point: Naloxone wears off before many opioids, so watch for re-sedation and repeat doses or start an infusion.$x$, null),
(142, $x$Zopiclone, a cyclopyrrolone-class Z-drug similar to zolpidem, is particularly associated with which distinctive adverse effect?$x$, $x$A metallic or bitter taste after use$x$, $x$✅ Correct answer: A metallic or bitter taste after use
ZOPICLONE (a "Z-drug" sleeping tablet) is well known for causing a distinctive METALLIC or BITTER TASTE in the mouth, which can last into the next day. Other side effects: drowsiness, dizziness, and the risk of dependence.

❌ Why the other options are wrong:
• Serotonin syndrome — Serotonin syndrome is linked to serotonergic drugs (SSRIs, tramadol).
• Severe hepatotoxicity in most patients — Severe liver damage in most patients isn't typical.
• Malignant hyperthermia — Malignant hyperthermia is linked to volatile anaesthetics and suxamethonium.

⭐ Key point: Z-drugs can cause falls and confusion in the elderly. Avoid long-term use.$x$, null),
(143, $x$A patient presents with pinpoint pupils, respiratory rate of 6 breaths/min, decreased level of consciousness, and bradycardia. Which toxidrome does this most likely represent?$x$, $x$Opioid toxidrome$x$, $x$✅ Correct answer: Opioid toxidrome
The OPIOID toxidrome (the classic pattern of opioid overdose): PINPOINT pupils (miosis), RESPIRATORY DEPRESSION (here RR 6), decreased level of CONSCIOUSNESS, and often bradycardia and hypotension. Treat with naloxone and support breathing.

❌ Why the other options are wrong:
• Cholinergic toxidrome — The cholinergic toxidrome also causes small pupils, but with SLUDGE signs (salivation, diarrhoea, sweating).
• Anticholinergic toxidrome — The anticholinergic toxidrome causes DILATED pupils, a fast pulse, hot dry skin and confusion.
• Sympathomimetic toxidrome — The sympathomimetic toxidrome (cocaine, amphetamines) causes dilated pupils, a fast pulse, high BP and agitation.

⭐ Key point: Toxidromes help identify a poison quickly when the cause is unknown.$x$, null),
(144, $x$The concentration of epinephrine used for endoscopic injection in bleeding ulcers is:$x$, $x$1:10,000$x$, $x$✅ Correct answer: 1:10,000
During endoscopy for a bleeding peptic ulcer, adrenaline (epinephrine) diluted to 1:10,000 (0.1 mg/mL) is injected around the bleeding point. It narrows the vessels and compresses the tissue, slowing the bleeding. It is combined with another method (heat or clips) for lasting haemostasis.

❌ Why the other options are wrong:
• 1:1,000,000 — 1:1,000,000 is too dilute to be effective.
• 1:100,000 — 1:100,000 is weaker than the standard concentration.
• 1:1,000 — 1:1,000 is too concentrated and could cause dangerous systemic effects.

⭐ Key point: After endoscopic treatment, give high-dose IV PPI to reduce the risk of rebleeding.$x$, null),
(145, $x$Which volatile anaesthetic agent is most associated with sensitizing the myocardium to catecholamines, predisposing to arrhythmias, particularly if epinephrine is administered concurrently?$x$, $x$Halothane$x$, $x$✅ Correct answer: Halothane
HALOTHANE (an older volatile anaesthetic) strongly SENSITISES the heart muscle to CATECHOLAMINES (adrenaline). If adrenaline is given (such as in local anaesthetic to reduce bleeding), dangerous ARRHYTHMIAS (ventricular ectopics, VT, VF) can occur. Halothane is now rarely used in many countries but may still appear in exams.

❌ Why the other options are wrong:
• Sevoflurane — Sevoflurane causes much less sensitisation.
• Nitrous oxide — Nitrous oxide doesn't significantly sensitise the heart.
• Desflurane — Desflurane causes less sensitisation than halothane.

⭐ Key point: Halothane can also cause "halothane hepatitis" (liver damage), especially with repeated exposure.$x$, null),
(146, $x$Which class of immunosuppressant medications, including tacrolimus and cyclosporine, inhibits calcineurin to reduce T-cell activation but carries a significant risk of nephrotoxicity?$x$, $x$Calcineurin inhibitors$x$, $x$✅ Correct answer: Calcineurin inhibitors
CALCINEURIN INHIBITORS (tacrolimus and ciclosporin) block calcineurin, an enzyme that activates T-cells, reducing the immune response and preventing transplant rejection. A major side effect is NEPHROTOXICITY (kidney damage), as well as high BP, tremor, high potassium and diabetes.

❌ Why the other options are wrong:
• Induction antibody agents — Induction antibody agents (such as basiliximab) are used at the time of transplant.
• Corticosteroids — Corticosteroids have different side effects (diabetes, osteoporosis).
• Antimetabolites, such as mycophenolate — Antimetabolites (mycophenolate, azathioprine) mainly suppress the bone marrow.

⭐ Key point: Monitor tacrolimus and ciclosporin blood levels, kidney function, potassium and BP.$x$, null),
(147, $x$A patient on fentanyl PCA has a respiratory rate of 8/min and is somnolent. Which antidote should the nurse administer?$x$, $x$Naloxone$x$, $x$✅ Correct answer: Naloxone
A respiratory rate of 8 and sleepiness on fentanyl PCA show OPIOID-INDUCED respiratory depression. The antidote is NALOXONE (given in small doses, such as 40–100 micrograms IV, repeated, to reverse breathing problems without completely removing pain relief). Stop the PCA, stimulate the patient, give oxygen and support breathing.

❌ Why the other options are wrong:
• Romazicon — Romazicon is flumazenil, a benzodiazepine antagonist.
• Flumazenil — Flumazenil reverses benzodiazepines, not opioids.
• Physostigmine — Physostigmine reverses anticholinergic toxicity.

⭐ Key point: Monitor patients on PCA: respiratory rate, sedation score and SpO₂, especially in the first 24 hours.$x$, null),
(148, $x$The pharmacy needs 500 mL of a 5% dextrose solution but only has 50% dextrose stock solution and sterile water available. How much of the 50% stock solution is needed?$x$, $x$50 mL of stock, diluted with 450 mL water$x$, $x$✅ Correct answer: 50 mL of stock, diluted with 450 mL water
Use the dilution formula C1 × V1 = C2 × V2. Stock concentration (C1) = 50%, needed concentration (C2) = 5%, needed volume (V2) = 500 mL. 50 × V1 = 5 × 500 → V1 = 2500 ÷ 50 = 50 mL of stock. Then add 500 − 50 = 450 mL of sterile water to make 500 mL of 5% dextrose.

❌ Why the other options are wrong:
• 100 mL of stock, diluted with 400 mL water — 100 mL of stock would give 10% dextrose.
• 250 mL of stock, diluted with 250 mL water — 250 mL of stock would give 25% dextrose.
• 5 mL of stock, diluted with 495 mL water — 5 mL of stock would give 0.5% dextrose.

⭐ Key point: Check: 50 mL of 50% contains 25 g of dextrose; 25 g in 500 mL = 5 g per 100 mL = 5%.$x$, null),
(149, $x$A nurse must give a 40 mg IV push dose over 4 minutes. The drug is supplied as 40 mg in 4 mL. At what rate, in mL/min, should the nurse push the medication?$x$, $x$1 mL/min$x$, $x$✅ Correct answer: 1 mL/min
The concentration is 40 mg in 4 mL = 10 mg/mL. To give the whole 40 mg (4 mL) over 4 minutes: 4 mL ÷ 4 minutes = 1 mL per minute.

❌ Why the other options are wrong:
• 10 mL/min — 10 mL/min would give 4 mL in 24 seconds, too fast.
• 0.5 mL/min — 0.5 mL/min would take 8 minutes.
• 4 mL/min — 4 mL/min would give the whole dose in 1 minute, too fast.

⭐ Key point: Use a timer or count seconds when giving slow IV push drugs. Some drugs are dangerous if pushed too fast.$x$, null),
(150, $x$A patient taking ibuprofen 400 mg twice daily for chronic back pain develops leg oedema. This is most likely caused by:$x$, $x$A decrease in renal function$x$, $x$✅ Correct answer: A decrease in renal function
NSAIDs (like ibuprofen) block prostaglandins that keep the kidney's afferent arterioles open. Kidney blood flow and filtration (GFR) fall, especially in the elderly or dehydrated. The kidneys retain salt and water, causing OEDEMA, and kidney function DECREASES (rising creatinine).

❌ Why the other options are wrong:
• A low creatinine level — Kidney damage RAISES creatinine, not lowers it.
• An increase in plasma proteins — NSAIDs don't increase plasma proteins.
• An increased glomerular filtration rate — NSAIDs DECREASE, not increase, GFR.

⭐ Key point: Avoid NSAIDs in kidney disease, heart failure, dehydration, and with ACE inhibitors and diuretics (the "triple whammy").$x$, null),
(151, $x$Compared with the other agents listed, which is most likely to cause direct, dose-dependent myocardial contractile depression rather than predominantly vasodilation?$x$, $x$Halothane$x$, $x$✅ Correct answer: Halothane
HALOTHANE directly DEPRESSES heart muscle CONTRACTILITY in a dose-dependent way (a negative inotropic effect), lowering cardiac output and BP. Newer agents (isoflurane, desflurane, sevoflurane) lower BP mainly by VASODILATION, with less direct heart depression.

❌ Why the other options are wrong:
• Isoflurane — Isoflurane mainly causes vasodilation.
• Desflurane — Desflurane mainly causes vasodilation (and can raise heart rate).
• Sevoflurane at low concentrations — Sevoflurane at low doses causes mild vasodilation with little heart depression.

⭐ Key point: Halothane is the classic answer for myocardial depression, arrhythmias with adrenaline, and hepatitis.$x$, null),
(152, $x$A patient with myasthenia gravis is prescribed neostigmine. The nurse should monitor for:$x$, $x$Cholinergic crisis$x$, $x$✅ Correct answer: Cholinergic crisis
NEOSTIGMINE (an anticholinesterase) increases acetylcholine at the neuromuscular junction, improving muscle strength in myasthenia gravis. Too much causes a CHOLINERGIC CRISIS: excessive acetylcholine leads to WEAKNESS (including the breathing muscles), plus SLUDGE signs (salivation, sweating, diarrhoea), small pupils and a slow pulse.

❌ Why the other options are wrong:
• Neuroleptic malignant syndrome — Neuroleptic malignant syndrome is caused by antipsychotics.
• Thyroid storm — Thyroid storm is a thyroid emergency.
• Serotonin syndrome — Serotonin syndrome is caused by serotonergic drugs.

⭐ Key point: Myasthenic crisis (too little drug) and cholinergic crisis (too much) both cause weakness. SLUDGE signs suggest cholinergic crisis.$x$, null),
(153, $x$A thyroidectomy patient complains of palpitations and anxiety preoperatively. The nurse should administer:$x$, $x$Propanolol$x$, $x$✅ Correct answer: Propanolol
Before thyroid surgery, palpitations and anxiety come from excess thyroid hormone stimulating the sympathetic system (like adrenaline). PROPRANOLOL (a non-selective beta-blocker) controls these symptoms: it slows the heart rate, reduces tremor and anxiety, and also reduces conversion of T4 to active T3.

❌ Why the other options are wrong:
• Dopamine — Dopamine would increase heart rate and palpitations.
• Adrenaline — Adrenaline would worsen palpitations and anxiety.
• Morphine — Morphine doesn't treat the cause and could depress breathing.

⭐ Key point: Patients should be euthyroid before thyroid surgery, to prevent thyroid storm.$x$, null),
(154, $x$Which of the following is not an ideal characteristic of a volatile anaesthetic agent?$x$, $x$Flammable$x$, $x$✅ Correct answer: Flammable
An ideal volatile anaesthetic would be pleasant to breathe, cheap, NON-FLAMMABLE, stable, have a fast onset and recovery, cause minimal side effects, and be safe for all ages. FLAMMABILITY is dangerous (fires and explosions in theatre, as with old agents like ether and cyclopropane), so it isn't an ideal characteristic.

❌ Why the other options are wrong:
• Odourless or pleasant to inhale — Being odourless or pleasant to inhale IS ideal (for gas induction).
• Cheap to manufacture — Being cheap IS ideal.
• Safe for all ages and in pregnancy — Being safe for all ages and in pregnancy IS ideal.

⭐ Key point: Modern volatile agents (sevoflurane, desflurane, isoflurane) are non-flammable.$x$, null),
(155, $x$The concentration of inhalational anaesthetic at which a patient responds purposefully to verbal command during emergence is referred to as:$x$, $x$MAC-awake$x$, $x$✅ Correct answer: MAC-awake
MAC-AWAKE is the concentration of inhaled anaesthetic at which 50% of patients open their eyes or respond PURPOSEFULLY to a VERBAL COMMAND during emergence. It is about 0.3–0.5 times the standard MAC. It helps understand awareness and recovery.

❌ Why the other options are wrong:
• MAC95 — MAC95 is the concentration that prevents movement to incision in 95% of patients.
• Blood-gas MAC — "Blood-gas MAC" isn't a standard term.
• MAC-BAR — MAC-BAR is the concentration that blocks the adrenergic (stress) response to incision.

⭐ Key point: Standard MAC = the concentration preventing movement to surgical incision in 50% of patients.$x$, null),
(156, $x$A patient on dopamine at 15 mcg/kg/min is likely to experience:$x$, $x$Vasoconstriction$x$, $x$✅ Correct answer: Vasoconstriction
Dopamine's effects depend on the dose. Low dose (1–5 mcg/kg/min): dopamine receptors. Medium (5–10): beta-1 receptors (increased contractility and heart rate). HIGH dose (above 10 mcg/kg/min, such as 15): ALPHA receptors, causing VASOCONSTRICTION (raised SVR and BP), which can reduce blood flow to the limbs and organs.

❌ Why the other options are wrong:
• Bronchospasm — Bronchospasm isn't a typical dopamine effect.
• Renal artery dilation — Renal artery dilation is the old idea of a LOW-dose effect (not proven to protect the kidneys).
• Hyperglycemia — Hyperglycaemia isn't the main dose-related effect.

⭐ Key point: Noradrenaline is now preferred over dopamine for septic shock (fewer arrhythmias).$x$, null),
(157, $x$Rocuronium-induced neuromuscular block can be rapidly reversed by:$x$, $x$Sugammadex$x$, $x$✅ Correct answer: Sugammadex
SUGAMMADEX is a modified cyclodextrin that ENCAPSULATES (binds and traps) rocuronium (and vecuronium) molecules in the blood, quickly reversing even DEEP neuromuscular block within minutes. It works much faster and more reliably than neostigmine.

❌ Why the other options are wrong:
• Neostigmine alone at any depth of block — Neostigmine works only for SHALLOW block (when some recovery has begun), not at any depth.
• Suxamethonium — Suxamethonium is a muscle relaxant, not a reversal agent.
• Dantrolene — Dantrolene treats malignant hyperthermia.

⭐ Key point: Sugammadex is also used in "can't intubate, can't oxygenate" situations after rocuronium. It may reduce hormonal contraceptive effectiveness.$x$, null),
(158, $x$A patient on heparin has platelets falling by more than 50% with new thrombosis. The nurse expects to:$x$, $x$Stop all heparin, including flushes, and start a non-heparin anticoagulant$x$, $x$✅ Correct answer: Stop all heparin, including flushes, and start a non-heparin anticoagulant
A platelet fall of more than 50% with NEW THROMBOSIS while on heparin suggests HEPARIN-INDUCED THROMBOCYTOPENIA (HIT). STOP ALL HEPARIN immediately, including heparin flushes and heparin-coated lines, and start a NON-HEPARIN anticoagulant (argatroban, fondaparinux, bivalirudin) to treat and prevent clots.

❌ Why the other options are wrong:
• Give a platelet transfusion and keep the heparin — Platelet transfusion can worsen clotting in HIT, and continuing heparin is dangerous.
• Switch to low molecular weight heparin injections — LMWH cross-reacts with HIT antibodies and must also be avoided.
• Increase the heparin dose to treat the new clot — More heparin would make HIT worse.

⭐ Key point: HIT causes CLOTS, not bleeding. It typically appears 5–10 days after starting heparin.$x$, null),
(159, $x$In shockable cardiac arrest, the first dose of amiodarone is:$x$, $x$300 mg IV after the third shock$x$, $x$✅ Correct answer: 300 mg IV after the third shock
In shockable cardiac arrest (VF or pulseless VT), give AMIODARONE 300 mg IV AFTER the THIRD shock. A further 150 mg may be given after the fifth shock. It helps stabilise the heart rhythm and improve the chance of successful defibrillation.

❌ Why the other options are wrong:
• 50 mg IV after every shock — 50 mg after every shock isn't the regimen.
• 900 mg IV after the first shock — 900 mg after the first shock is far too much and too early.
• 150 mg IV before the first shock — 150 mg before the first shock is the wrong dose and timing.

⭐ Key point: Give adrenaline 1 mg after the third shock as well, then every 3–5 minutes.$x$, null),
(160, $x$Once-daily dosing of gentamicin is used because aminoglycosides:$x$, $x$Kill bacteria in a concentration-dependent way$x$, $x$✅ Correct answer: Kill bacteria in a concentration-dependent way
Aminoglycosides (gentamicin) kill bacteria in a CONCENTRATION-DEPENDENT way: higher peak levels kill more bacteria. They also have a "post-antibiotic effect" (bacteria stay suppressed after levels fall). Once-daily dosing gives a high peak (better killing) and a low trough (less kidney and ear toxicity, because the drug has time to clear).

❌ Why the other options are wrong:
• Are not toxic to the kidney or ear — Aminoglycosides ARE toxic to the kidneys and ears.
• Are best given as a continuous infusion — Continuous infusion isn't used; it would keep levels constantly raised and increase toxicity.
• Kill bacteria in a time-dependent way only — Time-dependent killing applies to beta-lactams (penicillins, cephalosporins), not aminoglycosides.

⭐ Key point: Check gentamicin levels and kidney function, and adjust the dosing interval in kidney impairment.$x$, null),
(161, $x$A nursing manager is using a concurrent audit to identify potential issues with patient care. The advantage of a concurrent audit is that it allows for:$x$, $x$Immediate intervention to correct a problem$x$, $x$✅ Correct answer: Immediate intervention to correct a problem
A CONCURRENT audit is done WHILE the patient is still receiving care. Its main advantage is that problems can be found and CORRECTED IMMEDIATELY, before the patient is harmed or discharged.

❌ Why the other options are wrong:
• The collection of a large amount of data from many patients at once — Collecting lots of data from many patients at once suits a retrospective audit.
• A review of care after the patient has been discharged — Reviewing after discharge is a RETROSPECTIVE audit.
• A historical analysis of care over a long period — Historical analysis over a long period is retrospective.

⭐ Key point: Concurrent audits help real-time quality improvement; retrospective audits show long-term patterns.$x$, null),
(162, $x$A ward sister reviews a currently admitted patient's chart mid-treatment to check whether nursing care so far meets set standards, allowing immediate correction if needed. This exemplifies:$x$, $x$Concurrent audit$x$, $x$✅ Correct answer: Concurrent audit
Reviewing a CURRENTLY ADMITTED patient's chart DURING treatment to check whether care meets standards, so corrections can be made IMMEDIATELY, is a CONCURRENT AUDIT.

❌ Why the other options are wrong:
• Retrospective audit — A retrospective audit reviews care AFTER discharge.
• Risk transfer — Risk transfer is a risk management strategy (such as insurance).
• Sentinel event review — A sentinel event review investigates a serious incident.

⭐ Key point: Audit types: concurrent (during care), retrospective (after care), prospective (before care, policy review).$x$, null),
(163, $x$He was the first to systematically describe management behaviour and also pioneered the identification of the principles and skills that underlie effective management.$x$, $x$Henri Fayol$x$, $x$✅ Correct answer: Henri Fayol
HENRI FAYOL (a French mining engineer, 1841–1925) was the first to systematically describe management behaviour. He identified the FUNCTIONS of management (planning, organising, commanding, coordinating, controlling) and 14 PRINCIPLES of management (division of labour, authority, discipline, unity of command and others). He is called the father of modern (administrative) management.

❌ Why the other options are wrong:
• F. Taylor — F. Taylor is the father of SCIENTIFIC management (efficiency, time-and-motion studies).
• Max waber — Max Weber developed the theory of BUREAUCRACY.
• Gashinge et all. — "Gashinge et al." isn't a recognised management theorist.

⭐ Key point: Classical management theorists: Taylor (scientific), Fayol (administrative), Weber (bureaucratic).$x$, null),
(164, $x$Which leadership style is most appropriate during cardiopulmonary resuscitation?$x$, $x$Autocratic$x$, $x$✅ Correct answer: Autocratic
During CPR, decisions must be made quickly and tasks coordinated precisely. The AUTOCRATIC (directive) leadership style, with one team leader giving clear, direct instructions, is most effective in this emergency. Team members follow instructions while giving feedback (closed-loop communication).

❌ Why the other options are wrong:
• Laissez-faire — Laissez-faire gives little direction, which is dangerous in an emergency.
• Transformational — Transformational leadership is best for long-term change and motivation, not emergencies.
• Democratic — Democratic leadership takes time for discussion, which isn't possible in CPR.

⭐ Key point: Good resuscitation leaders stay "hands off", watch the whole picture, and assign clear roles.$x$, null),
(165, $x$A competent patient's living will refuses aggressive cancer treatment, but the physician insists on chemotherapy for the patient's benefit. The physician is exercising:$x$, $x$Paternalism$x$, $x$✅ Correct answer: Paternalism
PATERNALISM is overriding a competent patient's known wishes "for their own good". The patient's living will REFUSES aggressive cancer treatment, but the physician insists on chemotherapy for the patient's benefit. This overrides the patient's AUTONOMY, which is paternalism.

❌ Why the other options are wrong:
• Veracity — Veracity means truthfulness.
• Ideal beneficence — "Ideal beneficence" isn't a standard term; real beneficence respects the patient's values.
• Respect for autonomy — Respect for autonomy would mean honouring the living will.

⭐ Key point: A competent patient's valid refusal (including an advance directive) must be respected.$x$, null),
(166, $x$The Critical care unit manager as an overall seer of the unit activities can employed one of the following as a principle of organizing the unit to achieve the organizational objectives.$x$, $x$Balance$x$, $x$✅ Correct answer: Balance
The unit manager organises the ICU to meet its objectives using principles of organising. BALANCE is one such principle: keeping activities, staff, workload and resources in proportion (for example, balancing skill mix, patient acuity and staff numbers across shifts) so the unit runs smoothly.

❌ Why the other options are wrong:
• Planning — Planning is a management FUNCTION, not an organising principle.
• Directing — Directing is a management FUNCTION.
• Motivation — Motivation is part of directing, not an organising principle.

⭐ Key point: Other organising principles: unity of command, span of control, division of work, and delegation.$x$, null),
(167, $x$Which level of management is responsible for implementing programs that are intended to carry out the broader objectives of an organization set by executives?$x$, $x$middle managers$x$, $x$✅ Correct answer: middle managers
MIDDLE MANAGERS (such as departmental heads or nursing service managers) translate the broad goals set by top executives into specific PROGRAMMES and PLANS, and oversee first-line managers who carry them out.

❌ Why the other options are wrong:
• chief financial managers — Chief financial managers are part of top management.
• first level managers — First-level managers (such as ward sisters) supervise day-to-day operations.
• supervisory managers — Supervisory managers are first-line managers.

⭐ Key point: Levels of management: top (strategic), middle (tactical, implementing programmes), first-line (operational, day-to-day).$x$, null),
(168, $x$Conflict arising from unclear or overlapping job expectations between two staff members is known as:$x$, $x$Role conflict$x$, $x$✅ Correct answer: Role conflict
ROLE CONFLICT arises when job expectations are UNCLEAR, OVERLAPPING or contradictory, so two staff members don't know who is responsible for what, or are expected to do incompatible things. Clear job descriptions and role definitions help prevent it.

❌ Why the other options are wrong:
• Distributive conflict — Distributive conflict is about dividing limited resources.
• Intrapersonal conflict — Intrapersonal conflict is within one person (inner conflict).
• Intragroup conflict — Intragroup conflict is between members of the same group, often over goals or personalities, not specifically unclear roles.

⭐ Key point: Resolve conflict early: clarify roles, communicate openly, and use collaborative problem-solving.$x$, null),
(169, $x$A hospital's quality assurance team is performing a prospective audit. This audit would involve:$x$, $x$Reviewing and establishing new policies and procedures before they are implemented$x$, $x$✅ Correct answer: Reviewing and establishing new policies and procedures before they are implemented
A PROSPECTIVE audit looks FORWARD: it reviews and evaluates new policies, procedures and plans BEFORE they are implemented, to make sure they are sound and will meet standards. It helps prevent problems before they happen.

❌ Why the other options are wrong:
• Reviewing the outcomes of a patient's treatment after they leave the hospital — Reviewing outcomes after discharge is a retrospective audit.
• Examining the care provided to a patient in real-time — Real-time review during care is a concurrent audit.
• Analyzing a patient's chart after a critical event has occurred — Analysing a chart after a critical event is a retrospective review.

⭐ Key point: Prospective = before; concurrent = during; retrospective = after.$x$, null),
(170, $x$As an ICU manager you are aware that a formal document that most supervisors or managers keep for future reference is called$x$, $x$Incident report$x$, $x$✅ Correct answer: Incident report
An INCIDENT REPORT is a formal document recording an unexpected event (an error, fall, near miss, equipment failure) with the facts, time, people involved, and actions taken. Supervisors and managers keep it for FUTURE REFERENCE: analysis, learning, risk management and possible legal use.

❌ Why the other options are wrong:
• Incident reporting — "Incident reporting" is the process, not the document itself.
• Report writing — Report writing is a general skill.
• Incident writing — "Incident writing" isn't a recognised term.

⭐ Key point: Incident reports are NOT kept in the patient's notes. Record the facts of the event and care given in the notes.$x$, null),
(171, $x$The type of audit that involves reviewing a patient's chart while they are still in the hospital is called a:$x$, $x$Concurrent audit$x$, $x$✅ Correct answer: Concurrent audit
A CONCURRENT audit reviews a patient's chart and care WHILE the patient is STILL IN HOSPITAL receiving care. This allows problems to be identified and corrected in real time.

❌ Why the other options are wrong:
• Outcome audit — An outcome audit focuses on results of care.
• Prospective audit — A prospective audit evaluates policies before implementation.
• Retrospective audit — A retrospective audit reviews charts after discharge.

⭐ Key point: Concurrent auditing can include direct observation, interviews and chart review.$x$, null),
(172, $x$The last function in the sequence, which culminates in the attainment of organization objectives, is:$x$, $x$controlling$x$, $x$✅ Correct answer: controlling
The functions of management: PLANNING, ORGANISING, (staffing), DIRECTING (leading, coordinating), and CONTROLLING. CONTROLLING is the LAST function: it measures performance, compares it with standards and objectives, and corrects deviations, so the organisation attains its objectives. It then feeds back into new planning.

❌ Why the other options are wrong:
• coordinating — Coordinating comes before controlling.
• organizing — Organising is the second function.
• planning — Planning is the FIRST function.

⭐ Key point: Controlling tools include audits, budgets, performance appraisals and quality indicators.$x$, null),
(173, $x$The Belmont Report's 3 core ethical principles are:$x$, $x$Autonomy, Beneficence, Justice$x$, $x$✅ Correct answer: Autonomy, Beneficence, Justice
The BELMONT REPORT (1979, USA) set out three core ethical principles for research involving people: 1) RESPECT FOR PERSONS (AUTONOMY: informed consent, protecting vulnerable people), 2) BENEFICENCE (maximise benefits, minimise harm), 3) JUSTICE (fair selection of participants, fair sharing of the burdens and benefits of research).

❌ Why the other options are wrong:
• Honesty, Accuracy, Transparency — Honesty, accuracy and transparency are research integrity values, not the Belmont principles.
• Consent, Privacy, Fairness — Consent, privacy and fairness are related ideas, but not the three principles.
• Safety, Dignity, Respect — Safety, dignity and respect are general values.

⭐ Key point: Ethical research needs informed consent, an ethics committee approval, confidentiality, and the right to withdraw.$x$, null),
(174, $x$Which management principle promotes employee participation in decision-making?$x$, $x$Decentralization$x$, $x$✅ Correct answer: Decentralization
DECENTRALISATION spreads decision-making authority DOWN to lower levels of the organisation (unit managers, staff nurses). This promotes employee PARTICIPATION in decisions, faster local decisions, and staff motivation.

❌ Why the other options are wrong:
• Discipline — Discipline means respect for rules and agreements.
• Centralization — Centralisation keeps decision-making at the TOP.
• Unity of command — Unity of command means each employee has one boss.

⭐ Key point: Shared governance in nursing is a form of decentralised decision-making.$x$, null),
(175, $x$Which document outlines the duties and responsibilities of a staff nurse?$x$, $x$Job description$x$, $x$✅ Correct answer: Job description
A JOB DESCRIPTION is a formal document that outlines the DUTIES, RESPONSIBILITIES, qualifications, reporting relationships and working conditions of a specific job, such as a staff nurse. It guides practice, recruitment and performance appraisal.

❌ Why the other options are wrong:
• Nursing care plan — A nursing care plan outlines care for a specific patient.
• Ward report — A ward report communicates the state of the ward.
• Duty roster — A duty roster shows staff work schedules.

⭐ Key point: Job descriptions should be reviewed regularly and given to new staff at induction.$x$, null),
(176, $x$Clinical audit in the ICU is an important part of:$x$, $x$Clinical governance$x$, $x$✅ Correct answer: Clinical governance
CLINICAL AUDIT is a key part of CLINICAL GOVERNANCE, the framework through which health services ensure high-quality, safe care and remain accountable. Other parts include risk management, education and training, research and evidence-based practice, patient involvement, and staff management.

❌ Why the other options are wrong:
• Building maintenance — Building maintenance isn't clinical governance.
• Payroll management — Payroll management isn't clinical governance.
• Hospital marketing — Hospital marketing isn't clinical governance.

⭐ Key point: The audit cycle: set a standard, measure practice, compare, make changes, and re-audit.$x$, null),
(177, $x$Which handover practice is most likely to improve safety in ICU?$x$, $x$A structured bedside handover with a checklist$x$, $x$✅ Correct answer: A structured bedside handover with a checklist
A STRUCTURED BEDSIDE handover with a CHECKLIST improves safety. Using a structured format (such as SBAR) makes sure important information isn't missed. At the bedside, both nurses can see the patient and check lines, pumps, drains, the ventilator and alarms together.

❌ Why the other options are wrong:
• Skipping handover when the unit is busy — Skipping handover leads to errors and missed information.
• Handing over by text message only — Text messages are incomplete, insecure and risk confidentiality breaches.
• A quick corridor chat with no notes — A quick corridor chat misses details and breaches confidentiality.

⭐ Key point: Poor communication at handover is a leading cause of adverse events.$x$, null),
(178, $x$A 'par level' stock system in ICU ensures that:$x$, $x$A minimum stock of each item is kept at all times$x$, $x$✅ Correct answer: A minimum stock of each item is kept at all times
A "PAR LEVEL" system sets a MINIMUM stock level for each item (drugs, consumables) in the unit. When stock falls to this level, it is reordered. This ensures items are ALWAYS AVAILABLE, preventing shortages of emergency drugs and supplies.

❌ Why the other options are wrong:
• Each nurse buys their own supplies — Nurses don't buy their own supplies.
• Items are ordered only after they run out — Ordering only after items run out causes dangerous shortages.
• Expired stock is used first — Using expired stock is unsafe; use the oldest in-date stock first (FIFO).

⭐ Key point: Check emergency trolley stock and expiry dates daily.$x$, null),
(179, $x$Buying a new ventilator for the ICU falls under the:$x$, $x$Capital budget$x$, $x$✅ Correct answer: Capital budget
A new ventilator is an expensive, long-lasting piece of equipment (lasting many years). It falls under the CAPITAL BUDGET, which covers major purchases (equipment, buildings, renovations) that cost a lot and last a long time.

❌ Why the other options are wrong:
• Petty cash budget — Petty cash covers small, everyday expenses.
• Operating budget — The operating budget covers recurring costs (consumables, utilities, drugs).
• Personnel budget — The personnel budget covers staff salaries and benefits.

⭐ Key point: Capital purchases usually need a business case justifying the need and benefits.$x$, null),
(180, $x$The ABCDEF bundle used in ICU is mainly aimed at:$x$, $x$Reducing delirium, weakness and time on the ventilator$x$, $x$✅ Correct answer: Reducing delirium, weakness and time on the ventilator
The ABCDEF bundle aims to reduce ICU DELIRIUM, ICU-acquired WEAKNESS, and TIME ON THE VENTILATOR. A: Assess, prevent and manage pain. B: Both spontaneous awakening and breathing trials (SAT and SBT). C: Choice of analgesia and sedation. D: Delirium assessment, prevention and management. E: Early mobility and exercise. F: Family engagement and empowerment.

❌ Why the other options are wrong:
• Increasing the use of physical restraints — The bundle REDUCES restraints.
• Shortening the family visiting hours — It encourages family involvement, not shorter visiting.
• Reducing staff numbers on night shifts — It isn't about reducing staff numbers.

⭐ Key point: Using the full bundle is linked to better survival, less delirium and fewer ventilator days.$x$, null),
(181, $x$Which contrast media type is preferred in high-risk patients such as those with renal failure, cardiac failure, or diabetes mellitus?$x$, $x$Non-ionic (Low Osmolar) contrast media$x$, $x$✅ Correct answer: Non-ionic (Low Osmolar) contrast media
In high-risk patients (kidney failure, heart failure, diabetes, dehydration), NON-IONIC LOW-OSMOLAR contrast media (LOCM) are preferred. They have lower osmolality and don't break into charged particles, so they cause fewer side effects, less contrast-induced kidney injury, and fewer allergic-type reactions than ionic high-osmolar agents.

❌ Why the other options are wrong:
• Barium sulfate only — Barium is used for GI studies, not IV contrast.
• Ionic (High Osmolar) contrast media — Ionic high-osmolar contrast causes MORE side effects.
• No contrast is ever needed in high-risk patients — Contrast can still be used in high-risk patients if needed, with precautions.

⭐ Key point: Also hydrate well, use the lowest dose, stop nephrotoxic drugs, and check creatinine after contrast.$x$, null),
(182, $x$A nurse assesses a client's exercise habits, activities of daily living, and any factors that interfere with the client's desired activity level (such as dyspnea or chest pain). This corresponds to which Gordon functional health pattern?$x$, $x$Activity-exercise pattern$x$, $x$✅ Correct answer: Activity-exercise pattern
Gordon's ACTIVITY-EXERCISE pattern assesses the patient's exercise habits, activities of daily living (ADLs), leisure activities, and factors that limit activity (breathlessness, chest pain, fatigue, weakness).

❌ Why the other options are wrong:
• Self-perception-self-concept pattern — The self-perception–self-concept pattern assesses how the patient views themselves.
• Nutritional-metabolic pattern — The nutritional-metabolic pattern assesses diet, fluid and metabolism.
• Sleep-rest pattern — The sleep-rest pattern assesses sleep and rest.

⭐ Key point: Gordon's 11 functional health patterns give a complete, holistic nursing assessment.$x$, null),
(183, $x$A researcher writes: 'What are the lived experiences of family members of patients admitted to the ICU?' This is best classified as a$x$, $x$Qualitative research question$x$, $x$✅ Correct answer: Qualitative research question
An open-ended question exploring "LIVED EXPERIENCES" (what it is like for family members) is a QUALITATIVE RESEARCH QUESTION. Qualitative research explores meanings, feelings and experiences using interviews and observation, not numbers. This type of question suits phenomenology.

❌ Why the other options are wrong:
• Null hypothesis — A null hypothesis states there is no difference or relationship.
• Statistical hypothesis requiring inferential testing — A statistical hypothesis needs numbers and testing.
• Directional hypothesis — A directional hypothesis predicts the direction of a relationship.

⭐ Key point: Qualitative research asks "what", "how" and "why" about experiences. Quantitative research measures and tests.$x$, null),
(184, $x$A researcher wants to explore in depth the coping strategies of five ICU nurses who have personally experienced a patient's cardiac arrest during their shift, deliberately selecting nurses with this specific experience. This is an example of$x$, $x$Purposive sampling$x$, $x$✅ Correct answer: Purposive sampling
PURPOSIVE sampling means DELIBERATELY choosing participants who have specific knowledge or experience relevant to the research question (here, nurses who have experienced a patient's cardiac arrest). It is common in qualitative research.

❌ Why the other options are wrong:
• Simple random sampling — Simple random sampling gives everyone an equal chance of selection.
• Cluster sampling — Cluster sampling randomly selects whole groups.
• Systematic sampling — Systematic sampling selects every kth person.

⭐ Key point: Qualitative studies use small, information-rich samples; quantitative studies use larger, random samples to generalise.$x$, null),
(185, $x$Per current evidence-based critical care nutrition guidance, gastric residual volume (GRV) monitoring should generally prompt the nurse to hold or reassess feeding when the volume exceeds approximately:$x$, $x$500 mL$x$, $x$✅ Correct answer: 500 mL
Current critical care nutrition guidelines suggest holding or reassessing enteral feeding when the gastric residual volume (GRV) is above about 500 mL (in 6 hours), unless there are other signs of intolerance. Stopping feeds for smaller volumes leads to underfeeding without reducing pneumonia.

❌ Why the other options are wrong:
• 50 mL — 50 mL is far too low a threshold.
• 1500 mL — 1500 mL is far too high.
• GRV should never be checked regardless of volume — GRV may still be checked as per local policy; some units no longer routinely check it.

⭐ Key point: If GRV is high: use prokinetics (metoclopramide, erythromycin), check the head-of-bed elevation, consider post-pyloric feeding.$x$, null),
(186, $x$Mr Zee says his heart pounds and he is short of breath on the stairs. The nurse then auscultates the heart and checks the pulse. The nurse is:$x$, $x$Validating data$x$, $x$✅ Correct answer: Validating data
Mr Zee REPORTS (subjective data) a pounding heart and breathlessness. The nurse then auscultates the heart and checks the pulse (objective data) to CONFIRM the complaint. Checking that data are accurate by comparing subjective and objective information is VALIDATING DATA.

❌ Why the other options are wrong:
• Collecting data — Collecting data is gathering information; this step goes further to confirm it.
• Processing data into information — Processing data into information is analysis.
• Organising data — Organising data is grouping it into categories.

⭐ Key point: Validation prevents errors in nursing diagnosis, for example confirming a pain complaint with observation.$x$, null),
(187, $x$A nurse reviewing an electronic health record to identify a client's past surgical history and allergies is using which source and method of data collection?$x$, $x$Secondary source, record review method$x$, $x$✅ Correct answer: Secondary source, record review method
The electronic health record is a SECONDARY SOURCE of data (information not obtained directly from the patient). Reviewing it to find past surgical history and allergies is the RECORD REVIEW method of data collection.

❌ Why the other options are wrong:
• Secondary source, physical examination method — Physical examination is a method used with the patient (a primary source), not the record.
• Primary source, observation method — Observation of the patient is a primary source method.
• Primary source, interview method — Interviewing the patient is a primary source method.

⭐ Key point: The patient is the PRIMARY source. Family, records, and other professionals are SECONDARY sources.$x$, null),
(188, $x$A patient's marital status (single, married, divorced, widowed) recorded in a research questionnaire is measured on which scale?$x$, $x$Nominal$x$, $x$✅ Correct answer: Nominal
Marital status (single, married, divorced, widowed) consists of CATEGORIES with NO natural order or numerical value. This is a NOMINAL scale.

❌ Why the other options are wrong:
• Ratio — Ratio scales have equal intervals and a true zero (such as weight).
• Ordinal — Ordinal scales have ordered categories (such as pain mild, moderate, severe).
• Interval — Interval scales have equal intervals without a true zero (such as temperature in °C).

⭐ Key point: Nominal data are summarised with counts and percentages, and analysed with chi-square tests.$x$, null),
(189, $x$Which of the following data collection methods relies most heavily on the nurse's use of the senses (sight, hearing, smell, touch) without direct questioning of the client?$x$, $x$Observation$x$, $x$✅ Correct answer: Observation
OBSERVATION uses the nurse's SENSES (sight, hearing, smell, touch) to gather data about the patient WITHOUT asking questions, for example noticing skin colour, breathing pattern, facial expressions, smells (ketones, infection) and sounds (wheeze).

❌ Why the other options are wrong:
• Consultation with the physician — Consultation with the physician gathers information from another professional.
• Chart review — Chart review uses written records.
• Interview — An interview involves questioning the patient.

⭐ Key point: Assessment methods: observation, interview, physical examination (inspection, palpation, percussion, auscultation) and record review.$x$, null),
(190, $x$______ describes the present state of affairs as it exists without having any control over variables.$x$, $x$Descriptive research$x$, $x$✅ Correct answer: Descriptive research
DESCRIPTIVE research describes the PRESENT state of affairs, as it exists, WITHOUT CONTROLLING or manipulating any variables. It answers "what is happening?" (such as surveys of nurses' knowledge).

❌ Why the other options are wrong:
• Distinctive research — "Distinctive research" isn't a recognised research type.
• Applied research — Applied research aims to solve practical problems (it can be of any design).
• Analytical research — Analytical research explains relationships and causes, often testing hypotheses.

⭐ Key point: Descriptive studies often come first, identifying problems that later experimental studies can test.$x$, null),
(191, $x$The assessment approach in which the cardiovascular system is assessed before the genito-urinary system is the:$x$, $x$Body systems approach$x$, $x$✅ Correct answer: Body systems approach
The BODY SYSTEMS approach assesses one body SYSTEM at a time (cardiovascular, respiratory, neurological, gastrointestinal, genitourinary and so on). Assessing the cardiovascular system before the genitourinary system follows this approach.

❌ Why the other options are wrong:
• Systematic approach — "Systematic approach" is general and doesn't specify the order by system.
• Cephalocaudal approach — The cephalocaudal (head-to-toe) approach examines from head down, by body region.
• Approach by order of priority — The order-of-priority approach assesses the most urgent problems first (ABCDE).

⭐ Key point: ICU assessment often combines ABCDE (priority) with a systems review (body systems).$x$, null),
(192, $x$A literature review that is organized by grouping studies according to recurring topics or findings, rather than simply listing them chronologically, is following a$x$, $x$Thematic organization approach$x$, $x$✅ Correct answer: Thematic organization approach
A THEMATIC organisation groups studies by recurring THEMES or topics (such as "barriers to pain assessment" or "nurse education"), comparing and contrasting their findings. It gives a clearer, more analytical literature review than listing studies one by one in date order.

❌ Why the other options are wrong:
• Random and unstructured approach — A random, unstructured approach lacks clarity.
• Purely alphabetical listing with no analysis — An alphabetical list with no analysis doesn't synthesise the literature.
• Approach that ignores all study findings — Ignoring study findings defeats the purpose of a review.

⭐ Key point: A good literature review summarises, compares, critiques, and identifies gaps that the new study will address.$x$, null),
(193, $x$Before a data collection tool (such as a questionnaire) is used in the main study, it should first undergo:$x$, $x$Pilot testing to check its clarity, validity, and reliability$x$, $x$✅ Correct answer: Pilot testing to check its clarity, validity, and reliability
Before a data collection tool (questionnaire) is used in the main study, it should be PILOT TESTED on a small group similar to the study population. This checks that the questions are CLEAR and understood, that the tool is VALID (measures what it should) and RELIABLE (consistent), and how long it takes. Problems are fixed before the main study.

❌ Why the other options are wrong:
• Immediate distribution to all participants without review — Distributing without review risks poor-quality data.
• Full statistical analysis of anticipated results — Statistical analysis is done after data collection.
• Translation into as many languages as possible regardless of relevance — Translation is only needed where relevant to the population.

⭐ Key point: Pilot study participants are usually not included in the main study.$x$, null),
(194, $x$A survey of ICU nurses' knowledge and attitudes toward pain assessment in non-verbal patients, without any intervention, best exemplifies a$x$, $x$Descriptive research design$x$, $x$✅ Correct answer: Descriptive research design
A survey that DESCRIBES nurses' existing knowledge and attitudes WITHOUT any intervention or manipulation is a DESCRIPTIVE research design. It shows the current situation.

❌ Why the other options are wrong:
• Quasi-experimental research design with two groups — A quasi-experimental design involves an intervention without random assignment.
• True experimental research design — A true experiment involves an intervention with random assignment and a control group.
• Case-control design — A case-control design compares people with and without an outcome to find causes.

⭐ Key point: Descriptive surveys are often used to identify education needs before an intervention study.$x$, null),
(195, $x$A jejunal (post-pyloric) feeding tube is generally preferred over a gastric feeding tube in which situation?$x$, $x$A patient with gastroparesis or a high risk of aspiration$x$, $x$✅ Correct answer: A patient with gastroparesis or a high risk of aspiration
A post-pyloric (jejunal) feeding tube places feed BEYOND the stomach, into the small bowel. It is preferred when the stomach empties poorly (GASTROPARESIS) or the patient has a HIGH RISK OF ASPIRATION (repeated vomiting, reflux, high gastric residuals), because feed is less likely to reflux into the lungs.

❌ Why the other options are wrong:
• A patient with a normal swallow evaluation — A normal swallow means oral or gastric feeding is fine.
• A patient with normal gastric emptying and low aspiration risk — Normal gastric emptying and low aspiration risk mean gastric feeding is fine.
• A patient who will be extubated within 24 hours — A patient about to be extubated may soon eat orally.

⭐ Key point: Post-pyloric tubes are placed endoscopically, under fluoroscopy, or with special bedside techniques. Confirm position by X-ray.$x$, null),
(196, $x$Ionic (High Osmolar) contrast media, compared to non-ionic (Low Osmolar) contrast media, are associated with:$x$, $x$More side effects but lower cost$x$, $x$✅ Correct answer: More side effects but lower cost
IONIC (high-osmolar) contrast media break into charged particles and are much more concentrated than blood. They cause MORE SIDE EFFECTS (pain, heat, nausea, allergic-type reactions, kidney injury) than non-ionic low-osmolar agents, but are CHEAPER.

❌ Why the other options are wrong:
• No side effects at any dose — Non-ionic low-osmolar agents have fewer side effects and a higher cost; this option describes those.
• Fewer side effects and higher cost — All contrast can cause side effects.
• Identical side-effect profile and cost — They don't have identical side effects or cost.

⭐ Key point: Most hospitals now use non-ionic low-osmolar contrast for IV studies because it is safer.$x$, null),
(197, $x$ICU-acquired weakness is best reduced by:$x$, $x$Early mobilisation and minimising sedation$x$, $x$✅ Correct answer: Early mobilisation and minimising sedation
ICU-acquired weakness is reduced by EARLY MOBILISATION (passive then active exercises, sitting, standing, walking as soon as safe) and MINIMISING SEDATION (so patients can take part). Physiotherapy can start safely even in ventilated patients.

❌ Why the other options are wrong:
• Routine deep sedation for all patients — Deep sedation increases weakness.
• Strict bed rest until ICU discharge — Strict bed rest increases weakness.
• Higher doses of steroids — Steroids can CAUSE muscle weakness (steroid myopathy).

⭐ Key point: Also: control glucose, give adequate nutrition, and avoid prolonged muscle relaxants.$x$, null),
(198, $x$In an electronic health record, an audit trail is used to:$x$, $x$Record who accessed or changed each record and when$x$, $x$✅ Correct answer: Record who accessed or changed each record and when
An AUDIT TRAIL in an electronic health record automatically RECORDS WHO accessed or changed each record, WHAT they did, and WHEN. It supports confidentiality (detecting inappropriate access) and accountability (tracking changes).

❌ Why the other options are wrong:
• Speed up the hospital computer system — It doesn't speed up the computer system.
• Print discharge summaries automatically — It doesn't print discharge summaries.
• Delete old patient files automatically — It doesn't delete files.

⭐ Key point: Only access records of patients you are caring for. Inappropriate access is detected through audit trails.$x$, null),
(199, $x$A potassium result of 6.9 mmol/L comes back from a difficult blood draw in a patient with a normal ECG. The nurse should suspect:$x$, $x$A haemolysed sample; arrange a repeat sample$x$, $x$✅ Correct answer: A haemolysed sample; arrange a repeat sample
A very high potassium (6.9) from a DIFFICULT blood draw, with a NORMAL ECG, suggests a HAEMOLYSED sample. When red cells are damaged during collection (a small needle, squeezing, a long tourniquet time, shaking), they release potassium, giving a falsely high result (pseudohyperkalaemia). Arrange a REPEAT sample, while still checking the ECG and the patient.

❌ Why the other options are wrong:
• Normal value for an ICU patient — 6.9 isn't normal for any patient.
• Definite hyperkalaemia; give insulin at once — Giving insulin for a likely false result could cause dangerous hypoglycaemia and hypokalaemia.
• Laboratory error in sodium only — The question is about potassium, not sodium.

⭐ Key point: If the repeat sample confirms high potassium, or the ECG changes, treat urgently.$x$, null),
(200, $x$Procalcitonin is used in ICU mainly to help:$x$, $x$Guide when to stop antibiotics in bacterial infection$x$, $x$✅ Correct answer: Guide when to stop antibiotics in bacterial infection
PROCALCITONIN is a blood marker that rises in BACTERIAL infections (much less in viral infections). In ICU, it is mainly used to help decide WHEN TO STOP antibiotics: falling levels (for example by 80% or more, or below 0.5 ng/mL) support stopping earlier, which reduces antibiotic use and resistance.

❌ Why the other options are wrong:
• Measure kidney function in AKI — It doesn't measure kidney function.
• Monitor anticoagulation with heparin — It doesn't monitor heparin.
• Diagnose an acute myocardial infarction — Troponin, not procalcitonin, is used for MI.

⭐ Key point: Procalcitonin supports, but doesn't replace, clinical judgement in sepsis.$x$, null)
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
insert into rationale_report select 15, count(distinct n), count(*) from upd
  on conflict (day) do update set questions_updated = excluded.questions_updated, rows_changed = excluded.rows_changed;

select day as "Day", questions_updated as "Questions updated (should be 200)", rows_changed as "Rows changed" from rationale_report order by day;
