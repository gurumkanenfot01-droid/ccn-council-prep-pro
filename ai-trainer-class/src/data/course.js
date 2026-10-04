// The class content is built from content/day-N/ by scripts/build-content.mjs
// into /content/*.json. loadCourse() fetches it once at start-up and fills
// the lists below (they are filled in place, so every screen that imports
// them sees the data).
//
//   DAYS   - every day: title, roles, documents (lecture notes, must-know, CVs)
//   ROLES  - every role of every day
//   SKILLS - every skill (lesson + 20 tasks)
//   TASKS  - every practice task, also used as a 4-option test question
//
// IDs include the day ("2-r1-3", task "2-r1-3-7"), so adding a new day never
// changes or mixes up the progress saved for older days.

import { supabase } from "../lib/supa.js";

export const COURSE = { title: "AI Trainer Class" };
export const DAYS = [];
export const ROLES = [];
export const SKILLS = [];
export const TASKS = [];
export const SKILL_BY_ID = {};
export const TASK_BY_ID = {};
export const GLOSSARY = [];
export const CATEGORY_LIST = [];
export const CONTENT = { version: "", warnings: [] };

const SKILL_ICONS = {
  "Careful Reading": "📖", "Following Guidelines Exactly": "📋", "Attention to Detail": "🔍", "Critical Thinking and Judgment": "🧠",
  "Fact-Checking with Reliable Sources": "✅", "Writing Clear Rationales": "✍️", "Consistency and Calibration": "🎯",
  "Language and Tone Awareness": "💬", "Tool Skills": "🛠️", "Reliability and Integrity": "🤝", "Rubric Literacy": "📏",
  "Instruction-Following Checks": "☑️", "Accuracy Checking": "🔎", "Hallucination Detection": "👻",
  "Scoring Each Criterion Separately": "🔢", "Tone and Helpfulness Judgment": "😊", "Rationale Writing per Line": "📝",
  "Calibration with Golden Tasks": "🥇",
};
// For new days: pick an icon from words in the skill name.
const ICON_WORDS = [
  [/scor/i, "🔢"], [/severity|risk/i, "🚨"], [/strength|preference/i, "💪"], [/tie/i, "🤝"], [/bias/i, "⚖️"], [/safety|harm/i, "🛡️"],
  [/evidence|source/i, "🧾"], [/rationale|writ/i, "📝"], [/guideline|rule/i, "📋"], [/sampl/i, "🎲"], [/categor|label/i, "🗂️"],
  [/root|cause/i, "🌱"], [/feedback/i, "💬"], [/consisten|calibrat/i, "🎯"], [/escalat|flag/i, "📣"], [/metric|quality|track/i, "📊"],
  [/fact|accura/i, "✅"], [/read/i, "📖"], [/tone|language/i, "🗣️"], [/code|program/i, "💻"], [/image|vision|photo/i, "🖼️"],
  [/audio|speech|voice/i, "🎙️"], [/prompt/i, "✏️"], [/data/i, "🗄️"], [/math|number/i, "➗"], [/translat/i, "🌍"],
];
const FALLBACK_ICONS = ["📘", "🧩", "🔧", "💡", "🧭", "🪄", "📌", "🎓"];
const ROLE_ICONS = { "1-g": "🧑‍🏫", "1-l": "⭐" };
const MORE_ROLE_ICONS = ["⚖️", "🔍", "🧩", "🚀", "🛡️", "📊", "🧠", "🎯", "🗂️", "💼"];
// Sticker colour of each role, in course order.
const ROLE_FILLS = ["lime", "pink", "blue", "violet", "orange", "yellow", "green"];

function iconFor(name, i) {
  if (SKILL_ICONS[name]) return SKILL_ICONS[name];
  const hit = ICON_WORDS.find(([re]) => re.test(name));
  return hit ? hit[1] : FALLBACK_ICONS[i % FALLBACK_ICONS.length];
}

function seededShuffle(arr, seed) {
  const a = arr.slice();
  let s = seed;
  function rnd() { s |= 0; s = (s + 0x6D2B79F5) | 0; let t = Math.imul(s ^ (s >>> 15), 1 | s); t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t; return ((t ^ (t >>> 14)) >>> 0) / 4294967296; }
  for (let i = a.length - 1; i > 0; i--) { const j = Math.floor(rnd() * (i + 1)); [a[i], a[j]] = [a[j], a[i]]; }
  return a;
}
const hashOf = str => { let h = 0; for (let i = 0; i < str.length; i++) h = (Math.imul(31, h) + str.charCodeAt(i)) | 0; return Math.abs(h) || 1; };

// "Yes, ..." / "True." answers have a stance; two options with the same stance
// could both be right, so a stance question only gets wrong options with the
// opposite stance (or none).
function stanceOf(ans) {
  const m = /^(yes|no|true|false)\b/i.exec(String(ans).trim());
  if (!m) return null;
  return /^(yes|true)$/i.test(m[1]) ? "pos" : "neg";
}
const OPPOSITE = { yes: "No.", no: "Yes.", true: "False.", false: "True." };

function makeOptions(tk) {
  const seed = hashOf(tk.id);
  const stance = stanceOf(tk.ans);
  const others = seededShuffle(TASKS.filter(o => o.skillId === tk.skillId && o.id !== tk.id && o.ans !== tk.ans), seed);
  let picked;
  if (stance) {
    const opposite = others.filter(o => { const s = stanceOf(o.ans); return s && s !== stance; }).slice(0, 2).map(o => o.ans);
    if (!opposite.length) opposite.push(OPPOSITE[/^\w+/.exec(tk.ans)[0].toLowerCase()]);
    const plain = others.filter(o => !stanceOf(o.ans)).map(o => o.ans);
    const more = others.filter(o => { const s = stanceOf(o.ans); return s && s !== stance && !opposite.includes(o.ans); }).map(o => o.ans);
    picked = [...opposite, ...plain, ...more].slice(0, 3);
  } else {
    picked = others.filter(o => !stanceOf(o.ans)).slice(0, 3).map(o => o.ans);
  }
  // Not enough in this skill: borrow from the same role, then from anywhere.
  for (const pool of [TASKS.filter(o => o.roleId === tk.roleId && o.skillId !== tk.skillId), TASKS]) {
    if (picked.length >= 3) break;
    for (const o of seededShuffle(pool.filter(o => !stanceOf(o.ans)), seed * 31)) {
      if (picked.length >= 3) break;
      if (!picked.includes(o.ans) && o.ans !== tk.ans) picked.push(o.ans);
    }
  }
  tk.q = tk.task;
  tk.opts = [tk.ans, ...picked];
  tk.ansIdx = 0;
  tk.exp = tk.why;
}

function addDay(info, data) {
  const day = { ...info, roles: [] };
  data.roles.forEach((r, ri) => {
    const roleId = `${info.day}-${r.key}`;
    const index = ROLES.length;
    const role = {
      id: roleId, key: roleId, day: info.day, name: r.name, short: r.short || r.name, intro: r.intro || "",
      icon: ROLE_ICONS[roleId] || MORE_ROLE_ICONS[(index - 2 + MORE_ROLE_ICONS.length) % MORE_ROLE_ICONS.length],
      fill: ROLE_FILLS[index % ROLE_FILLS.length], part: ri + 1, skills: [],
    };
    r.skills.forEach((s, si) => {
      const id = `${roleId}${si + 1}`;
      const skill = {
        ...s, id, day: info.day, roleKey: roleId, roleId, roleName: role.name, roleShort: role.short, num: si + 1,
        icon: iconFor(s.n, SKILLS.length), image: s.image || null, stepsImage: s.stepsImage || null, taskIds: [],
      };
      delete skill.tasks;
      (s.tasks || []).forEach((tk, ti) => {
        const taskId = `${id}-${ti + 1}`;
        skill.taskIds.push(taskId);
        const task = { ...tk, id: taskId, num: ti + 1, day: info.day, skillId: id, roleId, category: s.n, categoryIcon: skill.icon, roleShort: role.short };
        TASKS.push(task);
        TASK_BY_ID[taskId] = task;
      });
      role.skills.push(skill);
      SKILLS.push(skill);
      SKILL_BY_ID[id] = skill;
    });
    ROLES.push(role);
    day.roles.push(role);
  });
  return day;
}

// Days the teacher added from the app (Supabase "days" table). A copy is kept
// on the phone so they also open offline.
export const ONLINE_DAYS = new Set();
const ONLINE_KEY = "aitc-online-days";
// Only days that changed since the last visit are downloaded again, which
// keeps the free Supabase data allowance (egress) low.
async function onlineDays() {
  if (!supabase) return [];
  let cached = [];
  try { cached = JSON.parse(localStorage.getItem(ONLINE_KEY) || "[]"); } catch { /* ignore */ }
  try {
    const slow = new Promise((_, no) => setTimeout(() => no(new Error("slow")), 6000));
    const { data: rows, error } = await Promise.race([supabase.from("days").select("day, updated_at").eq("published", true).order("day"), slow]);
    if (error) throw error;
    const list = await Promise.all(rows.map(async r => {
      const have = cached.find(c => c.info?.day === r.day && c.v === r.updated_at);
      if (have) return have;
      const { data: full, error: e2 } = await supabase.from("days").select("info, data").eq("day", r.day).single();
      if (e2) throw e2;
      return { info: full.info, data: full.data, v: r.updated_at };
    }));
    try { localStorage.setItem(ONLINE_KEY, JSON.stringify(list)); } catch { /* too big for this phone: works online only */ }
    return list;
  } catch {
    return cached;
  }
}

let loading = null;
export function loadCourse() {
  if (!loading) loading = (async () => {
    const res = await fetch("/content/index.json", { cache: "no-cache" });
    if (!res.ok) throw new Error(`content index ${res.status}`);
    const index = await res.json();
    CONTENT.version = index.version;
    CONTENT.warnings = index.warnings || [];
    const [datas, online] = await Promise.all([
      Promise.all(index.days.map(d => d.hasCourse
        ? fetch(`/content/day-${d.day}.json?v=${index.version}`).then(r => r.json())
        : Promise.resolve({ roles: [] }))),
      onlineDays(),
    ]);
    // A day added by the teacher in the app replaces a built-in day with the same number.
    const all = index.days.map((d, i) => ({ info: d, data: datas[i] })).filter(x => !online.some(o => o.info.day === x.info.day));
    online.forEach(o => { ONLINE_DAYS.add(o.info.day); all.push(o); });
    all.sort((a, b) => a.info.day - b.info.day).forEach(x => DAYS.push(addDay(x.info, x.data)));
    TASKS.forEach(makeOptions);
    const seen = new Map();
    SKILLS.forEach(s => (s.words || []).forEach(([w, m]) => { if (w && !seen.has(w.toLowerCase())) seen.set(w.toLowerCase(), { word: w, meaning: m, skillId: s.id }); }));
    TASKS.forEach(t => { if (t.kw && !seen.has(t.kw.toLowerCase())) seen.set(t.kw.toLowerCase(), { word: t.kw, meaning: t.km, skillId: t.skillId }); });
    GLOSSARY.push(...Array.from(seen.values()).sort((a, b) => a.word.localeCompare(b.word)));
    CATEGORY_LIST.push(...SKILLS.map(s => ({ name: s.n, id: s.id, icon: s.icon, count: s.taskIds.length, roleKey: s.roleKey })));
  })();
  return loading;
}

const docCache = {};
export async function loadDoc(day, id) {
  const key = `${day}/${id}`;
  if (!docCache[key] && ONLINE_DAYS.has(Number(day))) {
    docCache[key] = (async () => {
      const cacheKey = `aitc-doc-${day}-${id}`;
      try {
        const { data, error } = await supabase.from("days").select("docs").eq("day", Number(day)).single();
        if (error || !data.docs?.[id]) throw error || new Error("missing");
        try { localStorage.setItem(cacheKey, JSON.stringify(data.docs[id])); } catch { /* full */ }
        return data.docs[id];
      } catch (e) {
        const saved = localStorage.getItem(cacheKey);
        if (saved) return JSON.parse(saved);
        delete docCache[key];
        throw e;
      }
    })();
  }
  if (!docCache[key]) docCache[key] = fetch(`/content/day-${day}/${id}.json?v=${CONTENT.version}`).then(r => { if (!r.ok) throw new Error(r.status); return r.json(); });
  return docCache[key];
}

export const dayOf = n => DAYS.find(d => d.day === n);
export const skillsOfDay = n => SKILLS.filter(s => s.day === n);
export const tasksOfDay = n => TASKS.filter(t => t.day === n);

// Day 1 pictures for the "How AI training works" guide.
const IMG = "/content/img/day-1";
export const BIG_PICTURES = [
  { img: `${IMG}/v_teacher.jpg`, title: "Think of it like a teacher marking homework", text: "The AI is the student. It writes an answer. You are the teacher. You check the answer with a marking guide and write why you gave each mark. Next time, the AI learns from your marks and does better.", simple: "AI writes. You mark. AI learns." },
  { img: `${IMG}/pipeline.jpg`, title: "How labelled data teaches a model", text: "First, people add labels to data, like writing \"square\" next to a square. Then the model is trained on many labelled examples and learns the patterns. After that, it can name new things it has never seen.", simple: "Good labels make a smart model." },
  { img: `${IMG}/f_rlhf.jpg`, title: "How your ratings train the AI (RLHF)", text: "The AI writes two answers, A and B. You rate and rank them with a rubric. A reward model learns what people like. The AI is then changed to give answers people prefer. So users get better answers.", simple: "Your ratings make the AI better for everyone." },
  { img: `${IMG}/v_day.jpg`, title: "A generalist's working day", text: "A normal day: read rule updates, rate AI answers, take a short break, label images, check your feedback, flag unclear cases, then stop the tracker and log your hours.", simple: "Read, rate, label, check, log." },
  { img: `${IMG}/ladder.jpg`, title: "Where generalist work can lead", text: "You start with generalist tasks. If your quality is high, you become a trusted contributor. Then you can review other people's work. With a degree you can join specialist projects. Later you can lead and train a team.", simple: "Good work today opens bigger jobs tomorrow." },
];
export const LADDER_IMG = `${IMG}/ladder.jpg`;
export const TEACHER_IMG = `${IMG}/v_teacher.jpg`;
