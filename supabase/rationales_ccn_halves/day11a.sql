-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 11, part A (questions 1–100)
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

⭐ Key point: Meningitis: neck stiffness, photophobia, headache, fever, a positive Kernig's and Brudzinski's signs, and possibly a purpuric rash. Start antibiotics quickly and use droplet isolation.$x$, null)
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
