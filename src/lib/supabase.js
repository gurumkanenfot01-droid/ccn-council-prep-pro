import { createClient } from "@supabase/supabase-js";

const url = import.meta.env.VITE_SUPABASE_URL;
const anonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

if (!url || !anonKey) {
  throw new Error(
    "Missing VITE_SUPABASE_URL / VITE_SUPABASE_ANON_KEY. Copy .env.example to .env.local and fill them in."
  );
}

// flowType: "implicit" — password-reset (and other email) links are opened
// from whatever app/browser the user's email client uses, which is usually
// NOT the same browser session that requested the link. PKCE (the default)
// needs a code_verifier stored in that original browser's localStorage, so
// it silently fails across that mismatch and the user just lands back on
// the login page. Implicit flow puts a self-contained token in the link
// itself, so it works no matter where it's opened.
export const supabase = createClient(url, anonKey, {
  auth: { flowType: "implicit" },
});
