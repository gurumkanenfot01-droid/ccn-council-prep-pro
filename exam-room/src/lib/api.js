import { supabase } from "./supabase.js";

// Student-side calls to the exam_* database functions. Every rule (time
// window, face match, warning limit) is enforced there; this file only
// carries requests and turns error codes into plain messages.

export const MESSAGES = {
  invalid_code: "That access code isn't valid. Check it and try again, or ask your administrator.",
  too_many_attempts: "Too many wrong codes from this network. Wait 10 minutes and try again.",
  already_enrolled: "Your face is already registered.",
  bad_face_data: "Your face couldn't be read clearly. Face the camera in good light and try again.",
  bad_photo: "The photo couldn't be taken. Try again.",
  exam_not_found: "This exam isn't available to you.",
  face_not_approved: "Your face registration hasn't been approved yet. Ask your administrator.",
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

export async function rpc(fn, args) {
  let res;
  try {
    res = await supabase.rpc(fn, args);
  } catch (e) {
    throw new ExamError("network", e.message);
  }
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

export const api = {
  login: code => rpc("exam_login", { p_code: code }),
  enroll: (code, descriptor, photo) => rpc("exam_enroll", { p_code: code, p_descriptor: descriptor, p_photo: photo }),
  start: (code, examId, descriptor, photo) =>
    rpc("exam_start", { p_code: code, p_exam_id: examId, p_descriptor: descriptor, p_photo: photo, p_user_agent: navigator.userAgent }),
  question: token => rpc("exam_question", { p_token: token }),
  answer: (token, questionId, choice) => rpc("exam_answer", { p_token: token, p_question_id: questionId, p_choice: choice }),
  next: token => rpc("exam_next", { p_token: token }),
  heartbeat: (token, descriptor = null, photo = null) =>
    rpc("exam_heartbeat", { p_token: token, p_descriptor: descriptor, p_photo: photo }),
  report: (token, type, detail = "", photo = null) =>
    rpc("exam_report", { p_token: token, p_type: type, p_detail: detail, p_photo: photo }),
  submit: token => rpc("exam_submit", { p_token: token }),
};

export function fmtClock(ms) {
  const s = Math.max(0, Math.floor(ms / 1000));
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = String(s % 60).padStart(2, "0");
  return h ? `${h}:${String(m).padStart(2, "0")}:${sec}` : `${String(m).padStart(2, "0")}:${sec}`;
}
