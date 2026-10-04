// Online saving with Supabase. It is switched on by two settings in Vercel
// (VITE_SUPABASE_URL and VITE_SUPABASE_ANON_KEY, see HOW_TO_GO_LIVE.md).
// Without them the app works exactly as before: everything stays on the phone.

import { supabase, cloudOn } from "./supa.js";
import { loadJSON, saveJSON } from "./store.js";
import { totalXp } from "./gamify.js";
import { computeStreak, dayKey } from "./quiz.js";

export { supabase, cloudOn };

// ---------------------------------------------------------------- saved progress
// Every key below is copied to the learner's online row and merged back on
// any phone or laptop they sign in on.
export const SYNC_KEYS = {
  taskProgress: "task-progress",
  lessonsDone: "lessons-done",
  activity: "activity",
  history: "exam-history",
  bookmarks: "bookmarks",
  wrongBank: "wrong-bank",
};

export function localSnapshot() {
  const out = {};
  for (const [k, key] of Object.entries(SYNC_KEYS)) out[k] = loadJSON(key, k === "history" || k === "bookmarks" ? [] : {});
  return out;
}

const later = (a, b) => (String(a || "") > String(b || "") ? a : b);

// Joins two copies of the progress so nothing done on either device is lost.
export function mergeProgress(a = {}, b = {}) {
  const tp = { ...(a.taskProgress || {}) };
  for (const [id, v] of Object.entries(b.taskProgress || {})) {
    const mine = tp[id];
    if (!mine || String(v.d || "") > String(mine.d || "")) tp[id] = { ...v, tries: Math.max(v.tries || 0, mine?.tries || 0) };
    else tp[id] = { ...mine, tries: Math.max(v.tries || 0, mine.tries || 0) };
  }
  const lessons = { ...(b.lessonsDone || {}) };
  for (const [id, d] of Object.entries(a.lessonsDone || {})) lessons[id] = lessons[id] && lessons[id] < d ? lessons[id] : d;
  const activity = { ...(a.activity || {}) };
  for (const [d, n] of Object.entries(b.activity || {})) activity[d] = Math.max(activity[d] || 0, n || 0);
  const seen = new Set();
  const history = [...(a.history || []), ...(b.history || [])]
    .filter(h => h && h.date && !seen.has(h.date) && seen.add(h.date))
    .sort((x, y) => (x.date < y.date ? 1 : -1))
    .slice(0, 100);
  const bookmarks = Array.from(new Set([...(a.bookmarks || []), ...(b.bookmarks || [])]));
  const wrong = {};
  for (const src of [a.wrongBank || {}, b.wrongBank || {}]) {
    for (const [id, v] of Object.entries(src)) {
      const cur = wrong[id];
      wrong[id] = cur ? { count: Math.max(cur.count || 0, v.count || 0), date: later(cur.date, v.date) } : { ...v };
    }
  }
  // A task fixed later ("got it") leaves Wrong Answers.
  for (const id of Object.keys(wrong)) if (tp[id]?.s === "got" && String(tp[id].d || "") >= String(wrong[id].date || "")) delete wrong[id];
  return { taskProgress: tp, lessonsDone: lessons, activity, history, bookmarks, wrongBank: wrong };
}

export function summaryOf(p) {
  const today = new Date();
  let week = 0;
  for (let i = 0; i < 7; i++) { const d = new Date(today); d.setDate(d.getDate() - i); week += p.activity?.[dayKey(d)] || 0; }
  const days = Object.keys(p.activity || {}).sort();
  return {
    xp: totalXp({ taskProgress: p.taskProgress || {}, lessonsDone: p.lessonsDone || {}, history: p.history || [] }),
    tasks_done: Object.values(p.taskProgress || {}).filter(v => v.s === "got").length,
    lessons_done: Object.keys(p.lessonsDone || {}).length,
    streak: computeStreak(days),
    week_count: week,
    last_active: days.length ? days[days.length - 1] : null,
  };
}

export async function pullProgress(userId) {
  const { data, error } = await supabase.from("progress").select("data").eq("user_id", userId).maybeSingle();
  if (error) throw error;
  return data?.data || null;
}

export async function pushProgress(userId, p) {
  const { error } = await supabase.from("progress").upsert({ user_id: userId, data: p, ...summaryOf(p), updated_at: new Date().toISOString() });
  if (error) throw error;
  saveJSON("last-sync", new Date().toISOString());
}

export async function pullProfile(userId) {
  const { data } = await supabase.from("profiles").select("name, city, goal, daily_goal").eq("id", userId).maybeSingle();
  return data;
}

export async function pushProfile(userId, email, profile) {
  await supabase.from("profiles").upsert({
    id: userId, email, name: profile.name || "", city: profile.city || "", goal: profile.goal || "",
    daily_goal: profile.dailyGoal || 10, updated_at: new Date().toISOString(),
  });
}

export async function checkTeacher() {
  const { data } = await supabase.rpc("is_teacher");
  return data === true;
}

// Friendly words for the errors people actually meet.
export function niceError(e) {
  const m = String(e?.message || e || "");
  if (/invalid login credentials/i.test(m)) return "Wrong email or password. Please check and try again.";
  if (/already registered|already exists/i.test(m)) return "This email already has an account. Tap Sign in instead.";
  if (/email not confirmed/i.test(m)) return "Please open the email we sent you and tap the link first.";
  if (/password.*(6|characters|short)/i.test(m)) return "The password needs at least 6 characters.";
  if (/rate limit|too many/i.test(m)) return "Too many tries. Please wait a few minutes and try again.";
  if (/failed to fetch|network/i.test(m)) return "No internet. Please connect and try again.";
  if (/valid email|invalid.*email/i.test(m)) return "Please type a real email address.";
  return m || "Something went wrong. Please try again.";
}

// ---------------------------------------------------------------- announcements
export async function fetchAnnouncements(limit = 20) {
  const { data, error } = await supabase.from("announcements").select("id, title, body, created_at").order("created_at", { ascending: false }).limit(limit);
  if (error) throw error;
  saveJSON("announcements", data);
  return data;
}
