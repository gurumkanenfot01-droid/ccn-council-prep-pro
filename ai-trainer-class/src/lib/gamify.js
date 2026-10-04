import { TASKS, SKILLS } from "../data/course.js";
import { dayKey } from "./quiz.js";

// XP is worked out from what the learner has done (never stored), so it can
// never drift out of step with their real progress.
export const XP = { taskGot: 10, taskAgain: 3, lesson: 50, testCorrect: 5, testPass: 25 };

// The level names follow the "Where generalist work can lead" ladder picture.
export const LEVELS = [
  { name: "Newcomer", xp: 0, icon: "🌱" },
  { name: "Careful Reader", xp: 150, icon: "📖" },
  { name: "Generalist", xp: 500, icon: "🧑‍🏫" },
  { name: "Trusted Contributor", xp: 1300, icon: "⭐" },
  { name: "Reviewer / QA", xp: 2600, icon: "🔍" },
  { name: "Specialist", xp: 4200, icon: "🎓" },
  { name: "Team Lead", xp: 6500, icon: "👑" },
];

export function totalXp({ taskProgress, lessonsDone, history }) {
  let xp = 0;
  for (const id in taskProgress) xp += taskProgress[id].s === "got" ? XP.taskGot : XP.taskAgain;
  xp += Object.keys(lessonsDone).length * XP.lesson;
  for (const h of history) xp += h.correct * XP.testCorrect + (h.pct >= 50 ? XP.testPass : 0);
  return xp;
}

export function levelFor(xp) {
  let i = 0;
  while (i < LEVELS.length - 1 && xp >= LEVELS[i + 1].xp) i++;
  const cur = LEVELS[i];
  const next = LEVELS[i + 1] || null;
  const pct = next ? Math.round(((xp - cur.xp) / (next.xp - cur.xp)) * 100) : 100;
  return { index: i, ...cur, next, pct, toNext: next ? next.xp - xp : 0 };
}

export function skillStats(skill, taskProgress) {
  const got = skill.taskIds.filter(id => taskProgress[id]?.s === "got").length;
  const again = skill.taskIds.filter(id => taskProgress[id]?.s === "again").length;
  const total = skill.taskIds.length;
  return { got, again, tried: got + again, total, pct: total ? Math.round((got / total) * 100) : 0 };
}

// A skill is "mastered" when the lesson is read and every task is done.
export function skillState(skill, taskProgress, lessonsDone) {
  const st = skillStats(skill, taskProgress);
  if (lessonsDone[skill.id] && st.got === st.total) return "done"; // (a skill with no tasks is done once its lesson is read)
  if (lessonsDone[skill.id] || st.tried > 0) return "started";
  return "new";
}

export function nextSkill(taskProgress, lessonsDone) {
  return SKILLS.find(s => skillState(s, taskProgress, lessonsDone) !== "done") || null;
}

export function overall(taskProgress, lessonsDone) {
  const got = TASKS.filter(q => taskProgress[q.id]?.s === "got").length;
  return { got, total: TASKS.length, pct: TASKS.length ? Math.round((got / TASKS.length) * 100) : 0, lessons: Object.keys(lessonsDone).length };
}

// Last 7 days of study, oldest first, for the weekly chart.
export function lastWeek(activity) {
  const out = [];
  for (let i = 6; i >= 0; i--) {
    const d = new Date();
    d.setDate(d.getDate() - i);
    out.push({ key: dayKey(d), label: d.toLocaleDateString(undefined, { weekday: "narrow" }), count: activity[dayKey(d)] || 0, today: i === 0 });
  }
  return out;
}
