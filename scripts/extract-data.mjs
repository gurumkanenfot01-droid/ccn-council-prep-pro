// One-time extraction of the embedded QUESTION_BANK / STUDY_NOTES arrays out of
// src/App.jsx into standalone JSON files, for seeding into Supabase.
import { createReadStream } from "node:fs";
import { writeFile } from "node:fs/promises";
import { createInterface } from "node:readline";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const appPath = path.join(__dirname, "..", "src", "App.jsx");
const dataDir = path.join(__dirname, "..", "data");

function stripDeclaration(line, varName) {
  const prefix = `const ${varName} = `;
  if (!line.startsWith(prefix)) {
    throw new Error(`Expected line to start with "${prefix}", got: ${line.slice(0, 60)}...`);
  }
  let json = line.slice(prefix.length).trimEnd();
  if (json.endsWith(";")) json = json.slice(0, -1);
  return JSON.parse(json);
}

async function main() {
  const rl = createInterface({ input: createReadStream(appPath, "utf8"), crlfDelay: Infinity });
  let lineNo = 0;
  let questionBankLine = null;
  let studyNotesLine = null;
  for await (const line of rl) {
    lineNo++;
    if (line.startsWith("const QUESTION_BANK = ")) questionBankLine = line;
    if (line.startsWith("const STUDY_NOTES = ")) studyNotesLine = line;
    if (questionBankLine && studyNotesLine) break;
  }
  if (!questionBankLine) throw new Error("Could not find QUESTION_BANK declaration in App.jsx");
  if (!studyNotesLine) throw new Error("Could not find STUDY_NOTES declaration in App.jsx");

  const questions = stripDeclaration(questionBankLine, "QUESTION_BANK");
  const studyNotes = stripDeclaration(studyNotesLine, "STUDY_NOTES");

  await writeFile(path.join(dataDir, "questions.json"), JSON.stringify(questions, null, 2));
  await writeFile(path.join(dataDir, "study-notes.json"), JSON.stringify(studyNotes, null, 2));

  console.log(`Extracted ${questions.length} questions -> data/questions.json`);
  console.log(`Extracted ${studyNotes.length} study note topics -> data/study-notes.json`);
}

main().catch(err => {
  console.error(err);
  process.exit(1);
});
