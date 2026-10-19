import { createClient } from "@supabase/supabase-js";

// Same Supabase project as the CCN Council Prep Pro app: same accounts,
// same subscriptions, same live question bank.
const url = import.meta.env.VITE_SUPABASE_URL;
const anonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

export const isConfigured = Boolean(url && anonKey);
export const supabase = isConfigured ? createClient(url, anonKey) : null;
