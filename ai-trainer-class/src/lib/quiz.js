import { TASKS, SKILLS } from "../data/course.js";

export const LETTERS = ["A", "B", "C", "D"];

export function shuffle(arr, seed) {
  const a = arr.slice();
  let s = seed;
  function rnd() { s |= 0; s = (s + 0x6D2B79F5) | 0; let t = Math.imul(s ^ (s >>> 15), 1 | s); t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t; return ((t ^ (t >>> 14)) >>> 0) / 4294967296; }
  for (let i = a.length - 1; i > 0; i--) { const j = Math.floor(rnd() * (i + 1)); [a[i], a[j]] = [a[j], a[i]]; }
  return a;
}

export function dailySeed() {
  const d = new Date();
  return d.getFullYear() * 10000 + (d.getMonth() + 1) * 100 + d.getDate();
}

// Picks `count` tasks (from idPool, or from every task) and shuffles each
// question's 4 options so the right answer is not always in the same place.
export function buildQuizSet(count, seed, idPool) {
  const pool = idPool ? TASKS.filter(q => idPool.includes(q.id)) : TASKS;
  const picked = shuffle(pool, seed).slice(0, Math.min(count, pool.length));
  return picked.map((q, i) => {
    const order = shuffle([0, 1, 2, 3], seed + i * 7 + 3);
    return { ...q, opts: order.map(oi => q.opts[oi]), ansIdx: order.indexOf(q.ansIdx) };
  });
}

// Same number of questions from every skill in the list, so a role test
// covers the whole role and not just one or two skills.
export function buildBalancedPool(seed, skillIds, perSkill) {
  let pool = [];
  skillIds.forEach((sid, i) => {
    const skill = SKILLS.find(s => s.id === sid);
    pool = pool.concat(shuffle(skill.taskIds, seed + i * 97 + 13).slice(0, perSkill));
  });
  return pool;
}

export function formatTime(sec) {
  const h = Math.floor(sec / 3600);
  const m = Math.floor((sec % 3600) / 60).toString().padStart(2, "0");
  const s = Math.floor(sec % 60).toString().padStart(2, "0");
  return h > 0 ? `${h}:${m}:${s}` : `${m}:${s}`;
}

// About one minute per question: the situations take some reading.
export function estimateMinutes(count) { return Math.max(1, Math.round(count * 1)); }

export function dayKey(date) {
  const d = date ? new Date(date) : new Date();
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}-${String(d.getDate()).padStart(2, "0")}`;
}

// Days in a row with any study (a test, a practice task or a finished lesson).
export function computeStreak(activityDays) {
  const days = new Set(activityDays);
  if (!days.size) return 0;
  let streak = 0;
  const cursor = new Date();
  if (!days.has(dayKey(cursor))) cursor.setDate(cursor.getDate() - 1); // today not done yet: streak still counts from yesterday
  while (days.has(dayKey(cursor))) {
    streak++;
    cursor.setDate(cursor.getDate() - 1);
  }
  return streak;
}

// What the AI Reader says for a test question.
export function questionSpeech(q) {
  return [
    `Situation. ${q.sit}`,
    `Question. ${q.task}`,
    ...q.opts.map((o, i) => `Option ${LETTERS[i]}. ${o}`),
  ];
}

// What the AI Reader says for a practice task (with or without the answer).
export function taskSpeech(q, withAnswer) {
  const parts = [`Situation. ${q.sit}`, `Question. ${q.ask}`, `Your task. ${q.task}`];
  if (withAnswer) {
    parts.push(`The answer. ${q.ans}`, `Why, explained simply. ${q.why}`, `Key word: ${q.kw}. It means: ${q.km}`, `Remember. ${q.simple}`);
  }
  return parts;
}

export function explainSpeech(q) {
  return [`The right answer is: ${q.ans}`, `Why, explained simply. ${q.why}`, `Key word: ${q.kw}. It means: ${q.km}`, `Remember. ${q.simple}`];
}
