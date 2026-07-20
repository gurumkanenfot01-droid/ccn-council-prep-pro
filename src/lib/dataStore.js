import { supabase } from "./supabase";

// Keeps the exact loadJSON(key, fallback, shared) / saveJSON(key, value, shared)
// call signatures the app already used against the old (broken) window.storage
// shim, so every existing call site in App.jsx needs zero changes. Under the
// hood each key now maps to real Supabase tables, scoped by RLS to the signed
// in user (see supabase/schema.sql).

let currentUserId = null;
export function setCurrentUserId(id) {
  currentUserId = id;
}

function requireUserId() {
  if (!currentUserId) throw new Error("dataStore used before a user was signed in");
  return currentUserId;
}

// ---- profile ----
async function loadProfile(fallback) {
  const userId = requireUserId();
  const { data, error } = await supabase
    .from("profiles")
    .select("name, email, hospital, school, level, photo_url, role, disabled")
    .eq("id", userId)
    .single();
  if (error || !data) return fallback;
  return {
    name: data.name || "",
    email: data.email || "",
    hospital: data.hospital || "",
    school: data.school || "",
    level: data.level || "",
    photo: data.photo_url || null,
    role: data.role || "user",
    disabled: !!data.disabled,
  };
}

async function dataUrlToBlob(dataUrl) {
  const res = await fetch(dataUrl);
  return res.blob();
}

async function saveProfile(value) {
  const userId = requireUserId();
  let photoUrl = value.photo;
  if (typeof value.photo === "string" && value.photo.startsWith("data:")) {
    const blob = await dataUrlToBlob(value.photo);
    const ext = blob.type.split("/")[1] || "jpg";
    const path = `${userId}/profile.${ext}`;
    const { error: uploadError } = await supabase.storage
      .from("avatars")
      .upload(path, blob, { upsert: true, contentType: blob.type });
    if (!uploadError) {
      const { data: pub } = supabase.storage.from("avatars").getPublicUrl(path);
      photoUrl = pub.publicUrl;
    }
  }
  await supabase
    .from("profiles")
    .update({
      name: value.name,
      hospital: value.hospital,
      school: value.school,
      level: value.level,
      photo_url: photoUrl,
      updated_at: new Date().toISOString(),
    })
    .eq("id", userId);
}

// ---- bookmarks (number[] of question ids) ----
async function loadBookmarks() {
  const userId = requireUserId();
  const { data, error } = await supabase.from("bookmarks").select("question_id").eq("user_id", userId);
  if (error || !data) return [];
  return data.map(r => r.question_id);
}

async function saveBookmarks(ids) {
  const userId = requireUserId();
  const { data: existing } = await supabase.from("bookmarks").select("question_id").eq("user_id", userId);
  const existingIds = new Set((existing || []).map(r => r.question_id));
  const nextIds = new Set(ids);
  const toInsert = ids.filter(id => !existingIds.has(id)).map(question_id => ({ user_id: userId, question_id }));
  const toDelete = [...existingIds].filter(id => !nextIds.has(id));
  if (toInsert.length) await supabase.from("bookmarks").insert(toInsert);
  if (toDelete.length) await supabase.from("bookmarks").delete().eq("user_id", userId).in("question_id", toDelete);
}

// ---- wrong-bank ({ [questionId]: { count, date } }) ----
async function loadWrongBank() {
  const userId = requireUserId();
  const { data, error } = await supabase.from("wrong_bank").select("question_id, count, last_wrong_at").eq("user_id", userId);
  if (error || !data) return {};
  const out = {};
  for (const row of data) out[row.question_id] = { count: row.count, date: row.last_wrong_at };
  return out;
}

async function saveWrongBank(value) {
  const userId = requireUserId();
  const ids = Object.keys(value).map(Number);
  const { data: existing } = await supabase.from("wrong_bank").select("question_id").eq("user_id", userId);
  const existingIds = new Set((existing || []).map(r => r.question_id));
  const toDelete = [...existingIds].filter(id => !ids.includes(id));
  if (toDelete.length) await supabase.from("wrong_bank").delete().eq("user_id", userId).in("question_id", toDelete);
  if (ids.length) {
    const rows = ids.map(id => ({
      user_id: userId,
      question_id: id,
      count: value[id].count,
      last_wrong_at: value[id].date,
    }));
    await supabase.from("wrong_bank").upsert(rows, { onConflict: "user_id,question_id" });
  }
}

// ---- exam-history (array, newest first, capped 100) ----
// The only write path (App.jsx submitExam) always prepends exactly one new
// attempt: newHistory = [attempt, ...history].slice(0,100). Attempts are
// append-only (no update/delete RLS policy for regular users), so on save we
// only need to insert that single newest entry — everything else is already
// persisted from a prior save.
async function loadHistory() {
  const userId = requireUserId();
  const { data, error } = await supabase
    .from("attempts")
    .select("taken_at, total, correct, pct, time_sec, category, by_source")
    .eq("user_id", userId)
    .order("taken_at", { ascending: false })
    .limit(100);
  if (error || !data) return [];
  return data.map(r => ({
    date: r.taken_at,
    total: r.total,
    correct: r.correct,
    pct: Number(r.pct),
    timeSec: r.time_sec,
    category: r.category,
    bySource: r.by_source || {},
  }));
}

async function saveHistory(newHistory) {
  const userId = requireUserId();
  const attempt = newHistory[0];
  if (!attempt) return;
  await supabase.from("attempts").insert({
    user_id: userId,
    taken_at: attempt.date,
    total: attempt.total,
    correct: attempt.correct,
    pct: attempt.pct,
    time_sec: attempt.timeSec,
    category: attempt.category,
    by_source: attempt.bySource,
  });
}

// ---- in-progress (single resumable snapshot per user, or null) ----
async function loadInProgress() {
  const userId = requireUserId();
  const { data, error } = await supabase.from("in_progress").select("snapshot").eq("user_id", userId).single();
  if (error || !data) return null;
  return data.snapshot;
}

async function saveInProgress(snapshot) {
  const userId = requireUserId();
  if (snapshot === null) {
    await supabase.from("in_progress").delete().eq("user_id", userId);
    return;
  }
  await supabase
    .from("in_progress")
    .upsert({ user_id: userId, snapshot, updated_at: new Date().toISOString() }, { onConflict: "user_id" });
}

// ---- daily-<YYYYMMDD> ({ pct, date } | null) ----
function seedToDate(seed) {
  const s = String(seed);
  return `${s.slice(0, 4)}-${s.slice(4, 6)}-${s.slice(6, 8)}`;
}

async function loadDaily(seed) {
  const userId = requireUserId();
  const { data, error } = await supabase
    .from("daily_challenge_results")
    .select("pct, taken_at")
    .eq("user_id", userId)
    .eq("day", seedToDate(seed))
    .single();
  if (error || !data) return null;
  return { pct: Number(data.pct), date: data.taken_at };
}

async function saveDaily(seed, value) {
  const userId = requireUserId();
  await supabase
    .from("daily_challenge_results")
    .upsert(
      { user_id: userId, day: seedToDate(seed), pct: value.pct, taken_at: value.date },
      { onConflict: "user_id,day" }
    );
}

// ---- note-bookmarks ({ [banner]: boolean }) ----
async function loadNoteBookmarks() {
  const userId = requireUserId();
  const { data, error } = await supabase.from("note_bookmarks").select("banner").eq("user_id", userId);
  if (error || !data) return {};
  const out = {};
  for (const row of data) out[row.banner] = true;
  return out;
}

async function saveNoteBookmarks(value) {
  const userId = requireUserId();
  const nextOn = Object.keys(value).filter(k => value[k]);
  const { data: existing } = await supabase.from("note_bookmarks").select("banner").eq("user_id", userId);
  const existingOn = new Set((existing || []).map(r => r.banner));
  const toInsert = nextOn.filter(b => !existingOn.has(b)).map(banner => ({ user_id: userId, banner }));
  const toDelete = [...existingOn].filter(b => !nextOn.includes(b));
  if (toInsert.length) await supabase.from("note_bookmarks").insert(toInsert);
  if (toDelete.length) await supabase.from("note_bookmarks").delete().eq("user_id", userId).in("banner", toDelete);
}

// ---- note-highlights ({ [banner::idx]: boolean }) ----
async function loadNoteHighlights() {
  const userId = requireUserId();
  const { data, error } = await supabase.from("note_highlights").select("note_key").eq("user_id", userId);
  if (error || !data) return {};
  const out = {};
  for (const row of data) out[row.note_key] = true;
  return out;
}

async function saveNoteHighlights(value) {
  const userId = requireUserId();
  const nextOn = Object.keys(value).filter(k => value[k]);
  const { data: existing } = await supabase.from("note_highlights").select("note_key").eq("user_id", userId);
  const existingOn = new Set((existing || []).map(r => r.note_key));
  const toInsert = nextOn.filter(k => !existingOn.has(k)).map(note_key => ({ user_id: userId, note_key }));
  const toDelete = [...existingOn].filter(k => !nextOn.includes(k));
  if (toInsert.length) await supabase.from("note_highlights").insert(toInsert);
  if (toDelete.length) await supabase.from("note_highlights").delete().eq("user_id", userId).in("note_key", toDelete);
}

// ---- leaderboard-entries (shared, array capped 500) ----
// Same append-only pattern as exam-history: App.jsx's submitToLeaderboard
// pushes one entry then saves the whole (capped) array back, so the newest
// entry is always the last element after the slice(-500).
async function loadLeaderboard() {
  const { data, error } = await supabase
    .from("leaderboard_entries")
    .select("name, pct, correct, total, created_at")
    .order("pct", { ascending: false })
    .limit(500);
  if (error || !data) return [];
  return data.map(r => ({ name: r.name, pct: Number(r.pct), correct: r.correct, total: r.total, date: r.created_at }));
}

async function saveLeaderboard(entries) {
  const userId = requireUserId();
  const entry = entries[entries.length - 1];
  if (!entry) return;
  await supabase.from("leaderboard_entries").insert({
    user_id: userId,
    name: entry.name,
    pct: entry.pct,
    correct: entry.correct,
    total: entry.total,
    created_at: entry.date,
  });
}

export async function loadJSON(key, fallback, shared) {
  try {
    if (key === "theme-pref") {
      const v = window.localStorage.getItem("theme-pref");
      return v || fallback;
    }
    if (key.startsWith("daily-")) return await loadDaily(key.slice(6));
    switch (key) {
      case "profile":
        return await loadProfile(fallback);
      case "bookmarks":
        return await loadBookmarks();
      case "wrong-bank":
        return await loadWrongBank();
      case "exam-history":
        return await loadHistory();
      case "in-progress":
        return await loadInProgress();
      case "note-bookmarks":
        return await loadNoteBookmarks();
      case "note-highlights":
        return await loadNoteHighlights();
      case "leaderboard-entries":
        return await loadLeaderboard();
      default:
        return fallback;
    }
  } catch (e) {
    return fallback;
  }
}

export async function saveJSON(key, value, shared) {
  try {
    if (key === "theme-pref") {
      window.localStorage.setItem("theme-pref", value);
      return;
    }
    if (key.startsWith("daily-")) return await saveDaily(key.slice(6), value);
    switch (key) {
      case "profile":
        return await saveProfile(value);
      case "bookmarks":
        return await saveBookmarks(value);
      case "wrong-bank":
        return await saveWrongBank(value);
      case "exam-history":
        return await saveHistory(value);
      case "in-progress":
        return await saveInProgress(value);
      case "note-bookmarks":
        return await saveNoteBookmarks(value);
      case "note-highlights":
        return await saveNoteHighlights(value);
      case "leaderboard-entries":
        return await saveLeaderboard(value);
      default:
        return;
    }
  } catch (e) {
    /* best effort, mirrors the old storage helper's failure mode */
  }
}

// ---- bulk read: question bank + study notes (used once at boot) ----
// PostgREST caps each response at the project's "Max Rows" setting (1000 by
// default), so a single .select() silently truncates a 1797-row table. Page
// through with .range() instead of depending on that dashboard setting.
async function fetchAllRows(table, columns, orderBy) {
  const pageSize = 1000;
  let from = 0;
  let all = [];
  while (true) {
    let query = supabase.from(table).select(columns).range(from, from + pageSize - 1);
    if (orderBy) query = query.order(orderBy);
    if (table === "questions") query = query.eq("is_active", true);
    const { data, error } = await query;
    if (error || !data) break;
    all = all.concat(data);
    if (data.length < pageSize) break;
    from += pageSize;
  }
  return all;
}

export async function fetchQuestionBank() {
  const data = await fetchAllRows("questions", "id, topic, source, q, opts, ans_idx, exp, category, category_icon");
  return data.map(r => ({
    id: r.id,
    topic: r.topic,
    source: r.source,
    q: r.q,
    opts: r.opts,
    ansIdx: r.ans_idx,
    exp: r.exp,
    category: r.category,
    categoryIcon: r.category_icon,
  }));
}

export async function fetchStudyNotes() {
  const data = await fetchAllRows("study_notes", "banner, bullets", "sort_order");
  return data.map(r => ({ banner: r.banner, bullets: r.bullets }));
}
