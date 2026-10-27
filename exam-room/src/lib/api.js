import { supabase } from "./supabase.js";

// Student-side calls to the exam_* database functions. Every rule (time
// window, face match, warning limit) is enforced there; this file only
// carries requests and turns error codes into plain messages.

export const MESSAGES = {
  invalid_code: "That access code isn't valid. Check it and try again, or ask your administrator.",
  too_many_attempts: "Too many wrong codes from this network. Wait 10 minutes and try again.",
  already_enrolled: "Your face is already registered.",
  name_required: "Type your full name (first name and surname) before registering.",
  bad_face_data: "Your face couldn't be read clearly. Face the camera in good light and try again.",
  bad_photo: "The photo couldn't be taken. Try again.",
  exam_not_found: "This exam isn't available to you.",
  face_not_approved: "Your face registration hasn't been approved yet. Ask your administrator.",
  face_not_registered: "Register your face first, then start the exam.",
  face_mismatch: "Your face doesn't match the registered student for this code. This attempt has been recorded.",
  already_taken: "You have used all your attempts for this exam. Ask your administrator if you need another try.",
  retake_needs_admin: "Your last attempt was ended for breaking the rules. Only your administrator can allow a retake.",
  exam_closed: "This exam has been closed.",
  exam_not_started: "This exam hasn't started yet.",
  exam_ended: "This exam has ended.",
  exam_paused: "The exam is paused by the administrator. Please wait.",
  exam_has_no_questions: "This exam has no questions yet. Tell your administrator.",
  not_current_question: "That question is no longer active.",
  bad_choice: "Choose one of the options.",
  answer_first: "Answer this question before moving on.",
  app_required: "On Android phones, exams must be taken in the CCN Exam Room app. Download it from your exam list.",
  devices_off: "Turn your camera and microphone back on to continue.",
  invalid_session: "Your exam session has ended. Log in again.",
  network: "Connection problem. Check your internet — your answers so far are saved.",
};

export class ExamError extends Error {
  constructor(code, detail) {
    super(MESSAGES[code] || detail || "Something went wrong. Try again.");
    this.code = code;
  }
}

function isNetwork(message) {
  return /failed to fetch|load failed|networkerror|network request failed|fetch failed/i.test(message || "");
}

// Server clock offset, so timers are correct even if the device clock is wrong.
let offsetMs = 0;
export function serverNow() { return Date.now() + offsetMs; }
function syncClock(data) {
  if (data && data.server_time) offsetMs = new Date(data.server_time).getTime() - Date.now();
}

const TIMEOUT_MS = 15000;

export async function rpc(fn, args) {
  let res;
  const ctl = typeof AbortController !== "undefined" ? new AbortController() : null;
  const timer = ctl && setTimeout(() => ctl.abort(), TIMEOUT_MS);
  try {
    const call = supabase.rpc(fn, args);
    res = await (ctl ? call.abortSignal(ctl.signal) : call);
  } catch (e) {
    throw new ExamError("network", e.message);
  } finally {
    if (timer) clearTimeout(timer);
  }
  if (res.error && ctl && ctl.signal.aborted) throw new ExamError("network", "timed out");
  const { data, error } = res;
  if (error) {
    if (isNetwork(error.message)) throw new ExamError("network", error.message);
    const code = Object.keys(MESSAGES).find(k => (error.message || "").includes(k));
    throw new ExamError(code || "unknown", error.message);
  }
  if (data && data.error) throw new ExamError(data.error);
  syncClock(data);
  return data;
}

// For calls that are safe to repeat (answering the same question twice, or
// "next" before the new one is answered, changes nothing): on a weak network,
// try again quietly a few times before showing an error.
async function retry(fn, args) {
  for (let attempt = 0; ; attempt++) {
    try {
      return await rpc(fn, args);
    } catch (e) {
      if (e.code !== "network" || attempt >= 3) throw e;
      await new Promise(r => setTimeout(r, 1000 * (attempt + 1)));
    }
  }
}

export const api = {
  login: code => rpc("exam_login", { p_code: code }),
  // p_name is only sent for blank codes, so registration keeps working on a
  // database that hasn't been updated with the blank-code version yet.
  enroll: (code, descriptor, photo, name = null) =>
    rpc("exam_enroll", { p_code: code, p_descriptor: descriptor, p_photo: photo, ...(name ? { p_name: name } : {}) }),
  start: (code, examId, descriptor, photo) =>
    rpc("exam_start", { p_code: code, p_exam_id: examId, p_descriptor: descriptor, p_photo: photo, p_user_agent: navigator.userAgent }),
  question: token => retry("exam_question", { p_token: token }),
  answer: (token, questionId, choice) => retry("exam_answer", { p_token: token, p_question_id: questionId, p_choice: choice }),
  next: token => retry("exam_next", { p_token: token }),
  heartbeat: (token, descriptor = null, photo = null, status = null) =>
    rpc("exam_heartbeat", { p_token: token, p_descriptor: descriptor, p_photo: photo, p_status: status }),
  liveFrame: (token, frame) => rpc("exam_live_frame", { p_token: token, p_frame: frame }),
  report: (token, type, detail = "", photo = null) =>
    rpc("exam_report", { p_token: token, p_type: type, p_detail: detail, p_photo: photo }),
  submit: token => rpc("exam_submit", { p_token: token }),
};

// Admin pages read columns added by later versions of schema_exam_room.sql.
// When that SQL hasn't been re-run yet, say so plainly instead of a raw error.
export function adminDbMessage(error) {
  const msg = (error && error.message) || "";
  if (/does not exist|could not find the|schema cache/i.test(msg)) {
    return "The Exam Room database needs updating. Open the Supabase SQL Editor, paste all of supabase/schema_exam_room.sql from GitHub and tap Run (it keeps all your data). Then reload this page.";
  }
  return msg || "Something went wrong.";
}

export function fmtClock(ms) {
  const s = Math.max(0, Math.floor(ms / 1000));
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = String(s % 60).padStart(2, "0");
  return h ? `${h}:${String(m).padStart(2, "0")}:${sec}` : `${String(m).padStart(2, "0")}:${sec}`;
}
