// One-time seed: upload data/questions.json + data/study-notes.json into Supabase.
// Requires SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY as env vars (service role only,
// never the anon key — this bypasses RLS to write rows directly). Never commit the
// service role key or run this script anywhere but your own machine.
import { readFile } from "node:fs/promises";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { createClient } from "@supabase/supabase-js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const dataDir = path.join(__dirname, "..", "data");

const SUPABASE_URL = process.env.SUPABASE_URL;
const SERVICE_ROLE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SUPABASE_URL || !SERVICE_ROLE_KEY) {
  console.error("Set SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY env vars before running this script.");
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SERVICE_ROLE_KEY);

function chunk(arr, size) {
  const out = [];
  for (let i = 0; i < arr.length; i += size) out.push(arr.slice(i, i + size));
  return out;
}

async function seedQuestions() {
  const raw = JSON.parse(await readFile(path.join(dataDir, "questions.json"), "utf8"));
  const rows = raw.map(q => ({
    id: q.id,
    topic: q.topic,
    source: q.source,
    q: q.q,
    opts: q.opts,
    ans_idx: q.ansIdx,
    exp: q.exp,
    category: q.category,
    category_icon: q.categoryIcon,
  }));
  let inserted = 0;
  for (const batch of chunk(rows, 500)) {
    const { error } = await supabase.from("questions").upsert(batch, { onConflict: "id" });
    if (error) throw error;
    inserted += batch.length;
    console.log(`Upserted ${inserted}/${rows.length} questions...`);
  }
}

async function seedStudyNotes() {
  const raw = JSON.parse(await readFile(path.join(dataDir, "study-notes.json"), "utf8"));
  const rows = raw.map((n, i) => ({ banner: n.banner, bullets: n.bullets, sort_order: i }));
  const { error } = await supabase.from("study_notes").upsert(rows, { onConflict: "banner" });
  if (error) throw error;
  console.log(`Upserted ${rows.length} study note topics.`);
}

async function main() {
  await seedQuestions();
  await seedStudyNotes();
  console.log("Seed complete.");
}

main().catch(err => {
  console.error(err);
  process.exit(1);
});
