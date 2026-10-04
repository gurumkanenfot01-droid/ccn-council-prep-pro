import RAW from "./day1_content.json";

// Turns day1_content.json into the flat lists the screens use:
//   ROLES  - the 2 roles, each with its skills
//   SKILLS - all 18 skills (the "categories" of this class)
//   TASKS  - all 360 practice tasks, each also usable as a 4-option test question

export const COURSE = { day: RAW.day, title: RAW.title };

const SKILL_ICONS = {
  "Careful Reading": "📖",
  "Following Guidelines Exactly": "📋",
  "Attention to Detail": "🔍",
  "Critical Thinking and Judgment": "🧠",
  "Fact-Checking with Reliable Sources": "✅",
  "Writing Clear Rationales": "✍️",
  "Consistency and Calibration": "🎯",
  "Language and Tone Awareness": "💬",
  "Tool Skills": "🛠️",
  "Reliability and Integrity": "🤝",
  "Rubric Literacy": "📏",
  "Instruction-Following Checks": "☑️",
  "Accuracy Checking": "🔎",
  "Hallucination Detection": "👻",
  "Scoring Each Criterion Separately": "🔢",
  "Tone and Helpfulness Judgment": "😊",
  "Rationale Writing per Line": "📝",
  "Calibration with Golden Tasks": "🥇",
};

const ROLE_INFO = {
  g: { short: "Generalist", icon: "🧑‍🏫", intro: "You read AI tasks, follow the rulebook, check facts and give fair marks. You can work on many kinds of tasks." },
  l: { short: "LLM Rater", icon: "⭐", intro: "You score AI answers with a rubric (a marking guide), line by line, and explain every score." },
};

// "v_highlight.png" -> "/img/v_highlight.jpg" (the images were saved as JPEGs)
export function imgUrl(name) {
  if (!name) return null;
  return `/img/${name.replace(/\.(png|jpe?g)$/i, "")}.jpg`;
}

function seededShuffle(arr, seed) {
  const a = arr.slice();
  let s = seed;
  function rnd() { s |= 0; s = (s + 0x6D2B79F5) | 0; let t = Math.imul(s ^ (s >>> 15), 1 | s); t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t; return ((t ^ (t >>> 14)) >>> 0) / 4294967296; }
  for (let i = a.length - 1; i > 0; i--) { const j = Math.floor(rnd() * (i + 1)); [a[i], a[j]] = [a[j], a[i]]; }
  return a;
}

export const SKILLS = [];
export const TASKS = [];

export const ROLES = RAW.roles.map(role => {
  const info = ROLE_INFO[role.key] || { short: role.name, icon: "🎓", intro: "" };
  const skills = role.skills.map((s, si) => {
    const id = `${role.key}${si + 1}`;
    const skill = {
      ...s,
      id,
      roleKey: role.key,
      roleName: role.name,
      roleShort: info.short,
      icon: SKILL_ICONS[s.n] || "📘",
      image: imgUrl(s.img),
      taskIds: [],
    };
    s.tasks.forEach((tk, ti) => {
      const taskId = TASKS.length + 1;
      skill.taskIds.push(taskId);
      TASKS.push({
        ...tk,
        id: taskId,
        num: ti + 1,
        skillId: id,
        category: s.n,
        categoryIcon: skill.icon,
        roleKey: role.key,
        roleShort: info.short,
      });
    });
    SKILLS.push(skill);
    return skill;
  });
  return { key: role.key, name: role.name, short: info.short, icon: info.icon, intro: info.intro, skills };
});

// "Yes, ..." / "True." answers have a stance; two options with the same
// stance could both be right, so a stance question only gets wrong options
// with the opposite stance (or no stance at all).
function stanceOf(ans) {
  const m = /^(yes|no|true|false)\b/i.exec(ans.trim());
  if (!m) return null;
  return /^(yes|true)$/i.test(m[1]) ? "pos" : "neg";
}

const OPPOSITE = { yes: "No.", no: "Yes.", true: "False.", false: "True." };

// Test questions: the right answer is the task's model answer; the 3 wrong
// options are model answers from other tasks in the same skill, so every
// option "sounds" like the topic and the learner has to read the situation.
TASKS.forEach(tk => {
  const stance = stanceOf(tk.ans);
  const others = seededShuffle(TASKS.filter(o => o.skillId === tk.skillId && o.id !== tk.id && o.ans !== tk.ans), tk.id * 7919);
  let picked;
  if (stance) {
    const opposite = others.filter(o => { const s = stanceOf(o.ans); return s && s !== stance; }).slice(0, 2).map(o => o.ans);
    if (!opposite.length) opposite.push(OPPOSITE[/^\w+/.exec(tk.ans)[0].toLowerCase()]);
    const plain = others.filter(o => !stanceOf(o.ans)).map(o => o.ans);
    const moreOpposite = others.filter(o => { const s = stanceOf(o.ans); return s && s !== stance && !opposite.includes(o.ans); }).map(o => o.ans);
    picked = [...opposite, ...plain, ...moreOpposite].slice(0, 3);
  } else {
    picked = others.filter(o => !stanceOf(o.ans)).slice(0, 3).map(o => o.ans);
  }
  // Rare: not enough wrong options in this skill, so borrow from the same role.
  if (picked.length < 3) {
    const borrow = seededShuffle(TASKS.filter(o => o.roleKey === tk.roleKey && o.skillId !== tk.skillId && !stanceOf(o.ans)), tk.id * 31);
    for (const o of borrow) { if (picked.length >= 3) break; if (!picked.includes(o.ans) && o.ans !== tk.ans) picked.push(o.ans); }
  }
  tk.q = tk.task;
  tk.opts = [tk.ans, ...picked];
  tk.ansIdx = 0;
  tk.exp = tk.why;
});

export const SKILL_BY_ID = Object.fromEntries(SKILLS.map(s => [s.id, s]));
export const TASK_BY_ID = Object.fromEntries(TASKS.map(t => [t.id, t]));

// "Categories" list in the same shape the CCN app used.
export const CATEGORY_LIST = SKILLS.map(s => ({ name: s.n, id: s.id, icon: s.icon, count: s.taskIds.length, roleKey: s.roleKey }));

// Every key word in the course: the lesson words plus each task's key word.
export const GLOSSARY = (() => {
  const map = new Map();
  SKILLS.forEach(s => {
    s.words.forEach(([w, m]) => { if (!map.has(w.toLowerCase())) map.set(w.toLowerCase(), { word: w, meaning: m, skillId: s.id }); });
  });
  TASKS.forEach(tk => {
    if (tk.kw && !map.has(tk.kw.toLowerCase())) map.set(tk.kw.toLowerCase(), { word: tk.kw, meaning: tk.km, skillId: tk.skillId });
  });
  return Array.from(map.values()).sort((a, b) => a.word.localeCompare(b.word));
})();

// Picture guide for the "How AI Training Works" screen.
export const BIG_PICTURES = [
  { img: "/img/v_teacher.jpg", title: "Think of it like a teacher marking homework", text: "The AI is the student. It writes an answer. You are the teacher. You check the answer with a marking guide and write why you gave each mark. Next time, the AI learns from your marks and does better.", simple: "AI writes. You mark. AI learns." },
  { img: "/img/pipeline.jpg", title: "How labelled data teaches a model", text: "First, people add labels to data, like writing \"square\" next to a square. Then the model is trained on many labelled examples and learns the patterns. After that, it can name new things it has never seen.", simple: "Good labels make a smart model." },
  { img: "/img/f_rlhf.jpg", title: "How your ratings train the AI (RLHF)", text: "The AI writes two answers, A and B. You rate and rank them with a rubric. A reward model learns what people like. The AI is then changed to give answers people prefer. So users get better answers.", simple: "Your ratings make the AI better for everyone." },
  { img: "/img/v_day.jpg", title: "A generalist's working day", text: "A normal day: read rule updates, rate AI answers, take a short break, label images, check your feedback, flag unclear cases, then stop the tracker and log your hours.", simple: "Read, rate, label, check, log." },
  { img: "/img/ladder.jpg", title: "Where generalist work can lead", text: "You start with generalist tasks. If your quality is high, you become a trusted contributor. Then you can review other people's work. With a degree you can join specialist projects. Later you can lead and train a team.", simple: "Good work today opens bigger jobs tomorrow." },
];
