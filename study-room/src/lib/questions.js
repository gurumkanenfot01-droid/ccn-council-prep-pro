import { supabase } from "./supabase.js";

// Live question bank from the CCN Supabase project, cached on the device.
// Same approach as the CCN app: ask for the tiny content_version() fingerprint
// first and only re-download the bank when questions have actually changed,
// which keeps this site well inside the Supabase free-plan egress limit.

const IDB_NAME = "study-room-cache";
const IDB_STORE = "kv";
const IDB_TIMEOUT_MS = 4000;
let idbPromise = null;
let idbBroken = false;

function withTimeout(promise, ms) {
  return new Promise((resolve, reject) => {
    const timer = setTimeout(() => { idbBroken = true; reject(new Error("indexedDB timed out")); }, ms);
    promise.then(v => { clearTimeout(timer); resolve(v); }, e => { clearTimeout(timer); reject(e); });
  });
}

function openIdb() {
  if (idbBroken) return Promise.reject(new Error("indexedDB unavailable"));
  if (!idbPromise) {
    idbPromise = new Promise((resolve, reject) => {
      if (typeof indexedDB === "undefined") return reject(new Error("no indexedDB"));
      const req = indexedDB.open(IDB_NAME, 1);
      req.onupgradeneeded = () => req.result.createObjectStore(IDB_STORE);
      req.onsuccess = () => resolve(req.result);
      req.onerror = () => reject(req.error);
    }).catch(e => { idbPromise = null; throw e; });
  }
  return idbPromise;
}

function idbRequest(mode, fn) {
  return withTimeout(openIdb().then(db => new Promise((resolve, reject) => {
    const req = fn(db.transaction(IDB_STORE, mode).objectStore(IDB_STORE));
    req.onsuccess = () => resolve(req.result);
    req.onerror = () => reject(req.error);
  })), IDB_TIMEOUT_MS);
}

async function loadCache(key) {
  try { return (await idbRequest("readonly", s => s.get(key))) || null; } catch (e) { return null; }
}

async function saveCache(key, entry) {
  try { await idbRequest("readwrite", s => s.put(entry, key)); } catch (e) { /* caching is best effort */ }
}

async function downloadAll() {
  const pageSize = 1000;
  let from = 0;
  let all = [];
  while (true) {
    const { data, error } = await supabase
      .from("questions")
      .select("id, topic, q, opts, ans_idx, exp, category, category_icon, is_legacy")
      .eq("is_active", true)
      .order("id")
      .range(from, from + pageSize - 1);
    // Throw rather than return a partial bank that would then be cached.
    if (error || !data) throw error || new Error("failed to load questions");
    all = all.concat(data);
    if (data.length < pageSize) break;
    from += pageSize;
  }
  // Drop malformed rows so the practice screen only ever sees 4-option questions.
  return all
    .filter(r => Array.isArray(r.opts) && r.opts.length === 4 && Number.isInteger(r.ans_idx) && r.ans_idx >= 0 && r.ans_idx <= 3)
    .map(r => ({
      id: r.id,
      topic: r.topic,
      q: r.q,
      opts: r.opts,
      ansIdx: r.ans_idx,
      exp: r.exp,
      category: r.category || "Mixed Revision",
      categoryIcon: r.category_icon || "📚",
      isLegacy: !!r.is_legacy,
    }));
}

export async function fetchQuestionBank() {
  const [versionRes, cached] = await Promise.all([
    supabase.rpc("content_version").then(r => r, () => ({ data: null })),
    loadCache("question-bank"),
  ]);
  const version = versionRes?.data?.questions || null;
  if (version && cached?.version === version && cached.data?.length) return cached.data;
  try {
    const fresh = await downloadAll();
    if (!fresh.length) throw new Error("empty question bank");
    await saveCache("question-bank", { data: fresh, version, savedAt: Date.now() });
    return fresh;
  } catch (e) {
    if (cached?.data?.length) return cached.data;
    throw e;
  }
}

// Paid access mirrors the CCN app: an active subscription or an admin account
// unlocks the whole bank. Everyone else practises from the older questions
// (is_legacy) in shorter sessions.
export async function fetchAccess(userId) {
  const [{ data: profile }, { data: sub }] = await Promise.all([
    supabase.from("profiles").select("name, role, disabled").eq("id", userId).maybeSingle(),
    supabase.from("subscriptions").select("expires_at").eq("user_id", userId).eq("status", "active")
      .order("expires_at", { ascending: false }).limit(1).maybeSingle(),
  ]);
  const isAdmin = profile?.role === "admin";
  const isSubscribed = !!(sub && new Date(sub.expires_at) > new Date());
  return {
    name: profile?.name || "",
    disabled: !!profile?.disabled,
    isAdmin,
    isSubscribed,
    fullAccess: isAdmin || isSubscribed,
    subscriptionEnds: sub?.expires_at || null,
  };
}

export function shuffle(list) {
  const a = list.slice();
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

// Practice history lives on this device only.
const HISTORY_KEY = "study-room-history";
export function loadHistory() {
  try { return JSON.parse(localStorage.getItem(HISTORY_KEY) || "[]"); } catch (e) { return []; }
}
export function saveToHistory(entry) {
  try {
    const next = [entry, ...loadHistory()].slice(0, 30);
    localStorage.setItem(HISTORY_KEY, JSON.stringify(next));
  } catch (e) { /* storage blocked — history just isn't kept */ }
}
