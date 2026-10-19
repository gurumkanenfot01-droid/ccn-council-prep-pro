import { createClient } from "@supabase/supabase-js";

// Same Supabase project as CCN Council Prep Pro. Students never sign in to
// Supabase: they use access codes through the exam_* database functions.
// Admins sign in with their CCN admin account.
const url = import.meta.env.VITE_SUPABASE_URL;
const anonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

export const isConfigured = Boolean(url && anonKey);
export const supabase = isConfigured
  ? createClient(url, anonKey, { auth: { storageKey: "exam-room-admin" } })
  : null;
