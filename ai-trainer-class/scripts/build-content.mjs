// Builds the class content from the files in content/day-N/ folders.
//
// Runs automatically before `npm run dev` and `npm run build` (so also on
// Vercel). To add a new day, upload its Word files into a new folder such as
// content/day-3/ and push: nothing else to do.
//
// What each folder can hold (file names just need to contain these words):
//   *Lecture*Notes*.docx  -> lessons for every skill + a readable "Lecture notes" document
//   *Task*Bank*.docx      -> the practice tasks (20 per skill)
//   *Must*Know*.docx      -> a readable "Must-know notes" document
//   *CV*.docx             -> a readable "Sample CVs" document
//   any other .docx       -> shown as a readable document
//   course.json           -> (optional) ready-made lessons and tasks in the app's own format
//   images.json           -> (optional) pictures used by course.json, as data URLs
//
// Output (git-ignored, rebuilt every time):
//   public/content/index.json            list of days, roles, documents
//   public/content/day-N.json            lessons + tasks of day N
//   public/content/day-N/<doc>.json      each readable document
//   public/content/img/day-N/*           pictures

import { readFileSync, writeFileSync, mkdirSync, readdirSync, existsSync, rmSync, statSync } from "node:fs";
import { join, extname } from "node:path";
import { readDayFiles, finishRoles, dayInfo, norm, setWarn } from "../src/data/content-core.js";

const ROOT = new URL("..", import.meta.url).pathname;
const SRC = process.env.CONTENT_DIR || join(ROOT, "content");
const OUT = process.env.CONTENT_OUT || join(ROOT, "public", "content");
const warnings = [];
const warn = msg => { warnings.push(msg); console.warn("  ⚠ " + msg); };
setWarn(warn);

// ------------------------------------------------------------------ build each day
function buildDay(dir, dayNum) {
  const files = readdirSync(dir).filter(f => !f.startsWith(".") && !f.startsWith("~$"));
  const imgDir = join(OUT, "img", `day-${dayNum}`);
  const imgUrl = `/content/img/day-${dayNum}`;
  const saveImage = (name, data) => { mkdirSync(imgDir, { recursive: true }); writeFileSync(join(imgDir, name), data); };
  const docx = files.filter(f => extname(f).toLowerCase() === ".docx").map(f => ({ name: f, bytes: readFileSync(join(dir, f)) }));
  const read = readDayFiles(dayNum, docx, saveImage, imgUrl);
  const { docs, lectureRoles } = read;
  let { title, subtitle } = read;
  for (const d of docs) {
    mkdirSync(join(OUT, `day-${dayNum}`), { recursive: true });
    writeFileSync(join(OUT, `day-${dayNum}`, `${d.id}.json`), JSON.stringify(d.json));
  }

  // Lessons + tasks: course.json wins if present, else built from the Word files.
  let roles = [];
  if (files.includes("course.json")) {
    const course = JSON.parse(readFileSync(join(dir, "course.json"), "utf8"));
    title = course.title || title;
    let images = {};
    if (files.includes("images.json")) images = JSON.parse(readFileSync(join(dir, "images.json"), "utf8"));
    const imgFor = name => {
      if (!name) return null;
      const key = name.replace(/\.(png|jpe?g)$/i, "");
      const data = images[key];
      if (!data) return null;
      const [head, b64] = data.split(",");
      const ext = /png/.test(head) ? "png" : "jpg";
      mkdirSync(imgDir, { recursive: true });
      writeFileSync(join(imgDir, `${key}.${ext}`), Buffer.from(b64, "base64"));
      return `${imgUrl}/${key}.${ext}`;
    };
    Object.keys(images).forEach(imgFor); // all pictures (also the "big picture" ones)
    const lecSkills = new Map((lectureRoles || []).flatMap(r => r.skills).map(s => [norm(s.n), s]));
    roles = course.roles.map(r => ({
      key: r.key, name: r.name, short: r.short, intro: r.intro,
      skills: r.skills.map(s => {
        const lec = lecSkills.get(norm(s.n));
        return { ...s, image: imgFor(s.img) || lec?.image || null, stepsImage: lec?.stepsImage || null, tested: s.tested || lec?.tested };
      }),
    }));
    const lecRoles = lectureRoles || [];
    roles.forEach((r, i) => { r.short = r.short || lecRoles[i]?.short || r.name; r.intro = r.intro || lecRoles[i]?.intro || ""; });
  } else if (lectureRoles) {
    roles = lectureRoles.map((r, i) => ({ key: `r${i + 1}`, name: r.name, short: r.short, intro: r.intro, skills: r.skills.map(s => ({ ...s, tasks: [] })) }));
  }
  finishRoles(dayNum, roles, read.bank);

  const info = dayInfo(dayNum, title, subtitle, roles, docs);
  if (info.hasCourse) writeFileSync(join(OUT, `day-${dayNum}.json`), JSON.stringify({ day: dayNum, title, subtitle, roles }));
  return info;
}

// ------------------------------------------------------------------ main
rmSync(OUT, { recursive: true, force: true });
mkdirSync(OUT, { recursive: true });
const days = [];
if (existsSync(SRC)) {
  const folders = readdirSync(SRC)
    .map(f => ({ f, m: /^day[-_ ]?(\d+)$/i.exec(f) }))
    .filter(x => x.m && statSync(join(SRC, x.f)).isDirectory())
    .sort((a, b) => Number(a.m[1]) - Number(b.m[1]));
  for (const { f, m } of folders) {
    const n = Number(m[1]);
    console.log(`• Day ${n} (content/${f})`);
    try {
      const info = buildDay(join(SRC, f), n);
      if (!info.hasCourse && !info.docs.length) { warn(`Day ${n}: the folder has no files the app can use yet.`); continue; }
      days.push(info);
      console.log(`  ${info.skills} skills, ${info.tasks} tasks, ${info.docs.length} documents`);
    } catch (e) {
      warn(`Day ${n} was skipped because of an error: ${e.message}`);
    }
  }
}
const version = `${Date.now()}`;
writeFileSync(join(OUT, "index.json"), JSON.stringify({ version, days, warnings }));
console.log(`Content ready: ${days.length} day(s), ${warnings.length} warning(s).`);
