// Browsable reference library — separate from the quiz engine.
// TOPIC_GROUPS: broad areas. Each group has either `drugs` (structured drug-reference
// entries) or `topics` (summary + key points entries).

export const TOPIC_GROUPS = [
  {
    id: "management",
    title: "Nursing Management",
    icon: "⚖️",
    kind: "topics",
    topics: [
      {
        title: "Management Functions",
        summary: "The four core functions every nurse manager cycles through, in order.",
        points: [
          "Planning — setting goals, objectives, and the roadmap to achieve them; always comes first.",
          "Organizing — arranging staff, resources, and structure to carry out the plan (e.g. duty rosters).",
          "Directing/Leading — coaching, motivating, and guiding staff day to day.",
          "Controlling — monitoring performance against standards and correcting deviations.",
        ],
      },
      {
        title: "Leadership Styles",
        summary: "Different styles suit different situations — knowing when to switch is the actual skill.",
        points: [
          "Autocratic — leader decides alone, no staff input. Best for emergencies (CPR, mass casualty, cardiac arrest) where speed matters more than buy-in.",
          "Democratic — staff participate in decisions. Best for routine unit planning and morale-building.",
          "Laissez-faire — minimal direction, staff self-manage. Works only with highly experienced, self-directed teams.",
          "Transformational — inspires, motivates, and empowers staff toward a shared vision; drives innovation and engagement.",
          "Situational leadership theory — the effective style depends on the specific situation and follower readiness, not a fixed personal style.",
        ],
      },
      {
        title: "Delegation",
        summary: "Assigning a task to someone else without giving away your accountability for it.",
        points: [
          "Delegation = assigning responsibility and authority for a task while the delegator retains accountability.",
          "The 'Five Rights of Delegation': right task, right circumstance, right person, right direction/communication, right supervision.",
          "Never delegate clinical judgement tasks (assessment, evaluation) to unlicensed assistive personnel — only tasks within their scope.",
          "Before delegating, confirm the person is competent, authorized, and knows when to escalate abnormal findings.",
        ],
      },
      {
        title: "Staffing & Nursing Care Delivery Models",
        summary: "How care gets organized and assigned across a shift.",
        points: [
          "Primary nursing — one nurse provides continuous, accountable care to the same patient throughout their stay; best continuity.",
          "Team nursing — a team led by a team leader shares responsibility for a group of patients; depends on cooperation.",
          "Functional nursing — care organized by task (one nurse does all the meds, another all the dressings) rather than by patient.",
          "Staffing should be based on patient acuity and workload, not headcount alone.",
        ],
      },
      {
        title: "Quality Improvement",
        summary: "The tools and models used to systematically improve care.",
        points: [
          "PDSA cycle (Plan-Do-Study-Act) — the standard continuous quality improvement model in healthcare.",
          "Clinical audit — compares actual practice against established standards to find gaps.",
          "Root cause analysis (RCA) — used after a sentinel event to find underlying system factors, not individual blame.",
          "Fishbone (Ishikawa) diagram — a structured tool for mapping the possible causes of a problem.",
          "Just culture — encourages honest error reporting by focusing on system factors rather than punishing individuals; increases reporting and learning.",
          "Sentinel event — an unexpected event resulting in death, serious physical/psychological harm, or the risk of it.",
        ],
      },
      {
        title: "Ethics & Accountability",
        summary: "The principles that should guide every management decision involving patients or staff.",
        points: [
          "Autonomy — respecting a competent patient's right to make informed decisions, including refusal of treatment.",
          "Beneficence — actively acting in the patient's best interest.",
          "Non-maleficence — the duty to avoid causing harm ('first, do no harm').",
          "Justice — fair, equitable treatment and resource allocation, without discrimination.",
          "Professional accountability = accepting responsibility for your own actions and decisions.",
          "Incident reports exist to improve systems and prevent recurrence — not to punish the person who reported.",
        ],
      },
      {
        title: "Budgeting & Resource Management",
        summary: "The financial and supply-chain side of running a unit.",
        points: [
          "Operating budget — covers routine, day-to-day expenses.",
          "Capital budget — covers major equipment purchases (e.g. a new ventilator).",
          "FIFO (First In, First Out) — stock rotation method used to prevent supplies expiring unused.",
          "A store requisition voucher authorizes release of items from hospital stores.",
          "The core principle of resource management: efficient utilization of what's available.",
        ],
      },
    ],
  },
  {
    id: "pharmacology",
    title: "ICU Pharmacology / Drugs",
    icon: "💊",
    kind: "drugs",
    drugs: [
      { name: "Norepinephrine", class: "Vasopressor (alpha-1 agonist)", use: "First-line vasopressor in septic shock", points: ["Potent vasoconstriction; raises BP with modest inotropic effect", "Give via central line where possible — extravasation risks tissue necrosis", "Titrate to MAP target (commonly ≥65mmHg)"] },
      { name: "Dobutamine", class: "Inotrope (beta-1 agonist)", use: "Cardiogenic shock / low cardiac output states", points: ["Improves contractility and cardiac output", "Can cause tachycardia and mild vasodilation", "Not a first-line pressor — used for pump failure, not vasodilation"] },
      { name: "Vasopressin", class: "Vasopressor (V1 agonist)", use: "Adjunct in septic shock refractory to norepinephrine", points: ["Acts on a different receptor pathway than catecholamines", "Used as a norepinephrine-sparing second agent", "Fixed low dose — not typically titrated like norepinephrine"] },
      { name: "Propofol", class: "Sedative-hypnotic", use: "ICU sedation, induction of anaesthesia", points: ["Rapid onset and offset; easy to titrate", "Risk of Propofol Infusion Syndrome with prolonged high-dose use (metabolic acidosis, rhabdomyolysis)", "Causes hypotension — use cautiously in hypovolaemia"] },
      { name: "Dexmedetomidine", class: "Sedative (alpha-2 agonist)", use: "ICU sedation with preserved arousability", points: ["Minimal respiratory depression — patient remains rousable", "Can cause bradycardia and hypotension", "Useful for lighter sedation protocols / weaning"] },
      { name: "Fentanyl", class: "Opioid analgesic", use: "ICU analgesia, especially in renal impairment", points: ["No clinically significant active metabolites — safer than morphine in renal failure", "Rapid onset, short context-sensitive half-life for single doses", "Risk of respiratory depression, chest wall rigidity at high doses"] },
      { name: "Morphine", class: "Opioid analgesic", use: "Pain management, especially in cardiac ischaemia/pulmonary oedema", points: ["Active metabolites accumulate in renal failure — use cautiously", "Causes histamine release — can worsen hypotension", "Less effective for pure ischaemic cardiac pain than some alternatives"] },
      { name: "Midazolam", class: "Benzodiazepine sedative", use: "Sedation, status epilepticus, procedural sedation", points: ["Reversed by flumazenil (use cautiously — can precipitate withdrawal/seizures in chronic users)", "Accumulates with prolonged infusion, especially in hepatic/renal impairment", "Associated with more delirium risk than propofol/dexmedetomidine"] },
      { name: "Succinylcholine", class: "Depolarising neuromuscular blocker", use: "Rapid sequence intubation", points: ["Hydrolysed by plasma (pseudo)cholinesterase — not acetylcholinesterase", "Causes transient hyperkalaemia and fasciculations", "Avoid in burns, crush injury, neuromuscular disease (hyperkalaemia risk), and malignant hyperthermia history"] },
      { name: "Atracurium", class: "Non-depolarising neuromuscular blocker", use: "Maintenance paralysis, especially in organ failure", points: ["Metabolised by Hofmann elimination — independent of liver/kidney function", "Reversed with neostigmine + an antimuscarinic (e.g. glycopyrrolate)", "Monitor depth of blockade with train-of-four"] },
      { name: "Neostigmine", class: "Acetylcholinesterase inhibitor", use: "Reversal of non-depolarising neuromuscular blockade", points: ["Increases ACh at both nicotinic and muscarinic sites — co-administer an antimuscarinic to blunt muscarinic effects (bradycardia, secretions)", "Also used for reversal in myasthenia gravis contexts"] },
      { name: "Protamine sulfate", class: "Heparin antidote", use: "Reversal of unfractionated heparin", points: ["Binds and neutralises heparin directly", "Rapid onset; used for serious bleeding or before urgent procedures"] },
      { name: "Vitamin K + PCC/FFP", class: "Warfarin reversal", use: "Reversal of warfarin anticoagulation", points: ["Vitamin K restores clotting factor synthesis (takes hours)", "Prothrombin complex concentrate (PCC) or FFP gives immediate factor replacement for serious bleeding"] },
      { name: "Amiodarone", class: "Class III antiarrhythmic", use: "Ventricular/atrial arrhythmias", points: ["Requires monitoring of thyroid, liver, and pulmonary function with prolonged use", "Long half-life — effects and toxicity can persist for weeks after stopping"] },
      { name: "Naloxone", class: "Opioid antagonist", use: "Opioid overdose reversal", points: ["Duration of action may be shorter than the opioid it's reversing — monitor for re-sedation", "Can precipitate acute withdrawal in opioid-dependent patients"] },
      { name: "Flumazenil", class: "Benzodiazepine antagonist", use: "Benzodiazepine reversal", points: ["Use cautiously in chronic benzodiazepine users — risk of precipitating seizures", "Short duration of action relative to many benzodiazepines"] },
      { name: "Furosemide", class: "Loop diuretic", use: "Fluid overload, pulmonary oedema, hyperkalaemia adjunct", points: ["Monitor for hypokalaemia and other electrolyte losses", "Ototoxicity risk with rapid IV push at high doses"] },
      { name: "Calcium gluconate", class: "Cardiac membrane stabiliser", use: "Severe hyperkalaemia with ECG changes; hypocalcaemia; hypermagnesemia toxicity", points: ["Does not lower serum potassium — stabilises the myocardium while other measures (insulin/glucose, dialysis) lower it", "Also first-line for symptomatic hypocalcaemia (tetany, seizures)"] },
      { name: "Insulin + Dextrose", class: "Hyperkalaemia management", use: "Shifts potassium intracellularly in hyperkalaemia; DKA management", points: ["Onset within ~15-30 minutes, effect lasts a few hours — a temporising measure, not definitive removal", "Monitor blood glucose closely (hourly) during insulin infusion"] },
      { name: "Dantrolene", class: "Skeletal muscle relaxant", use: "Malignant hyperthermia", points: ["Definitive treatment — inhibits calcium release from the sarcoplasmic reticulum", "Triggers for MH include succinylcholine and volatile anaesthetics"] },
    ],
  },
];
