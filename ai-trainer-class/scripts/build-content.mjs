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
import { join, extname, basename } from "node:path";
import { createHash } from "node:crypto";
import { unzipSync, strFromU8 } from "fflate";
import { XMLParser } from "fast-xml-parser";

const ROOT = new URL("..", import.meta.url).pathname;
const SRC = process.env.CONTENT_DIR || join(ROOT, "content");
const OUT = process.env.CONTENT_OUT || join(ROOT, "public", "content");
const warnings = [];
const warn = msg => { warnings.push(msg); console.warn("  ⚠ " + msg); };

// ------------------------------------------------------------------ docx reading
const xml = new XMLParser({ preserveOrder: true, ignoreAttributes: false, attributeNamePrefix: "", trimValues: false, processEntities: true });
const tagOf = node => Object.keys(node).find(k => k !== ":@");
const kids = node => { const t = tagOf(node); return Array.isArray(node[t]) ? node[t] : []; };
const attr = (node, name) => (node[":@"] || {})[name];

function walk(nodes, fn) {
  for (const n of nodes || []) { if (fn(n) === false) continue; walk(kids(n), fn); }
}

// Reads a .docx into an ordered list of paragraphs and tables, and extracts its pictures.
function readDocx(file, imgDir, imgUrl) {
  const zip = unzipSync(readFileSync(file));
  const doc = xml.parse(strFromU8(zip["word/document.xml"]));
  const rels = {};
  const relXml = zip["word/_rels/document.xml.rels"];
  if (relXml) walk(xml.parse(strFromU8(relXml)), n => { if (tagOf(n) === "Relationship") rels[attr(n, "Id")] = attr(n, "Target"); });
  const saved = {};
  function saveImage(rid) {
    const target = rels[rid];
    if (!target) return null;
    if (saved[rid]) return saved[rid];
    const path = "word/" + target.replace(/^\.?\//, "").replace(/^word\//, "");
    const data = zip[path];
    if (!data) return null;
    if (!imgDir) return null;
    // Named by content, so a picture used in several documents is stored once.
    const name = `${createHash("sha1").update(data).digest("hex").slice(0, 16)}${extname(target).toLowerCase() || ".png"}`;
    mkdirSync(imgDir, { recursive: true });
    writeFileSync(join(imgDir, name), data);
    saved[rid] = `${imgUrl}/${name}`;
    return saved[rid];
  }

  function para(node) {
    const runs = [];
    const imgs = [];
    let style = "";
    walk(kids(node), n => {
      const t = tagOf(n);
      if (t === "w:pStyle") style = attr(n, "w:val") || "";
      if (t === "w:r") {
        let bold = false, text = "";
        walk(kids(n), m => {
          const mt = tagOf(m);
          if (mt === "w:b") { const v = attr(m, "w:val"); bold = v === undefined || (v !== "0" && v !== "false"); }
          if (mt === "w:t") text += kids(m).map(x => x["#text"] ?? "").join("");
          if (mt === "w:tab") text += "    ";
          if (mt === "w:br") text += "\n";
          if (mt === "a:blip") { const src = saveImage(attr(m, "r:embed")); if (src) imgs.push(src); }
        });
        if (text) runs.push({ t: String(text), b: bold });
        return false;
      }
      if (t === "a:blip") { const src = saveImage(attr(n, "r:embed")); if (src) imgs.push(src); }
    });
    const text = runs.map(r => r.t).join("").replace(/ /g, " ").trim();
    const boldChars = runs.filter(r => r.b).reduce((s, r) => s + r.t.trim().length, 0);
    return { k: "p", text, imgs, style, runs, allBold: text.length > 0 && boldChars >= text.replace(/\s/g, "").length * 0.9 };
  }

  function table(node) {
    const rows = [];
    for (const tr of kids(node).filter(n => tagOf(n) === "w:tr")) {
      const cells = [];
      for (const tc of kids(tr).filter(n => tagOf(n) === "w:tc")) {
        const ps = [];
        walk(kids(tc), n => { if (tagOf(n) === "w:p") { ps.push(para(n)); return false; } });
        cells.push(ps);
      }
      rows.push(cells);
    }
    return { k: "t", rows };
  }

  const body = [];
  function addBlock(n) {
    const t = tagOf(n);
    if (t === "w:p") { const p = para(n); if (p.text || p.imgs.length) body.push(p); }
    else if (t === "w:tbl") body.push(table(n));
    else if (t === "w:sdt") walk(kids(n), m => { if (tagOf(m) === "w:sdtContent") { kids(m).forEach(addBlock); return false; } });
  }
  walk(doc, n => { if (tagOf(n) === "w:body") { kids(n).forEach(addBlock); return false; } });
  return body;
}

const cellText = cell => cell.map(p => p.text).filter(Boolean).join("\n");
const isChapter = it => it.k === "t" && it.rows.length === 1 && it.rows[0].length === 1 && /^CHAPTER\s+\d+/i.test(it.rows[0][0][0]?.text || "");
const chapterTitle = it => it.rows[0][0].slice(1).map(p => p.text).join(" ").trim();
const boxOf = it => (it.k === "t" && it.rows.length === 1 && it.rows[0].length === 1 ? it.rows[0][0] : null);
const tableRows = it => it.rows.map(r => r.map(cellText));
const after = (text, label) => text.slice(label.length).trim();
const simpleOf = t => t.replace(/^In simple English:\s*/i, "").trim();
const sentenceCase = s => (s === s.toUpperCase() ? s.toLowerCase().replace(/[a-z]/, c => c.toUpperCase()) : s).replace(/\s+/g, " ").trim();
const norm = s => s.toLowerCase().replace(/[^a-z0-9]+/g, " ").trim();

// ------------------------------------------------------------------ readable documents
// Turns any docx into simple blocks the app can show (and read aloud).
function toBlocks(items) {
  const blocks = [];
  let lastImg = null;
  for (const it of items) {
    if (it.k === "t") {
      lastImg = null;
      if (isChapter(it)) { blocks.push({ t: "chapter", n: Number(/\d+/.exec(it.rows[0][0][0].text)[0]), text: chapterTitle(it) }); continue; }
      const box = boxOf(it);
      if (box) {
        const [first, ...rest] = box.filter(p => p.text);
        if (!first) continue;
        const titled = first.text === first.text.toUpperCase() || first.allBold;
        blocks.push({ t: "box", title: titled ? first.text : "", lines: (titled ? rest : [first, ...rest]).map(p => p.text) });
        continue;
      }
      blocks.push({ t: "table", rows: tableRows(it) });
      continue;
    }
    const tx = it.text;
    if (it.imgs.length) { it.imgs.forEach(src => blocks.push({ t: "img", src, caption: "" })); lastImg = blocks[blocks.length - 1]; if (!tx) continue; }
    if (lastImg && tx && tx.length < 160 && !/^(In simple English|Simply|Step \d)/i.test(tx) && !lastImg.caption) { lastImg.caption = tx; lastImg = null; continue; }
    lastImg = null;
    let m;
    if (/^In simple English:/i.test(tx)) blocks.push({ t: "simple", text: simpleOf(tx) });
    else if (/^Simply:/i.test(tx)) blocks.push({ t: "simply", text: after(tx, "Simply:") });
    else if ((m = /^Step\s+(\d+)\s+(.*)$/s.exec(tx))) blocks.push({ t: "step", n: Number(m[1]), text: m[2].trim() });
    else if ((m = /^●\s*(.*)$/.exec(tx))) blocks.push({ t: "h3", text: m[1] });
    else if ((m = /^(\d+)\.\s+(.*)$/s.exec(tx))) blocks.push({ t: "li", n: Number(m[1]), text: m[2].trim() });
    else if ((m = /^(Question|Online poll|Class poll|Poll|Quiz|Check):\s*(.*)$/is.exec(tx))) blocks.push({ t: "q", text: m[2].trim() });
    else if (/^Answer:/i.test(tx)) blocks.push({ t: "a", text: after(tx, "Answer:") });
    else if (/list/i.test(it.style)) blocks.push({ t: "bullet", text: tx });
    else if (it.allBold && tx.length < 90) blocks.push({ t: "h2", text: tx });
    else blocks.push({ t: "p", text: tx });
  }
  return blocks;
}

// ------------------------------------------------------------------ lessons from lecture notes

function parseLecture(items) {
  const chapters = [];
  items.forEach((it, i) => { if (isChapter(it)) chapters.push({ i, title: chapterTitle(it) }); });
  const sliceOf = c => { const k = chapters.indexOf(c); return items.slice(c.i + 1, chapters[k + 1] ? chapters[k + 1].i : items.length); };
  const roles = [];
  for (const c of chapters) {
    let m;
    if ((m = /^Role\s+\d+:\s*(?:The\s+)?(.*)$/i.exec(c.title))) {
      const body = sliceOf(c);
      const def = body.find(it => boxOf(it) && /^DEFINITION/i.test(boxOf(it)[0]?.text || ""));
      const defIdx = body.indexOf(def);
      const simple = body.slice(defIdx + 1).find(it => it.k === "p" && /^In simple English:/i.test(it.text));
      roles.push({ name: m[1].trim(), intro: simple ? simpleOf(simple.text) : def ? cellText(boxOf(def).slice(1)) : "", skills: [] });
    } else if ((m = /^(.+?)\s+Skill\s+(\d+):\s*(.*)$/i.exec(c.title)) && roles.length) {
      const role = roles[roles.length - 1];
      role.short = role.short || m[1].trim();
      role.skills.push(parseSkill(m[3].trim(), sliceOf(c)));
    }
  }
  return roles.filter(r => r.skills.length);
}

function parseSkill(name, body) {
  const s = { n: name, s: "", def: "", analogy: ["", ""], words: [], fits: ["", ""], why: ["", ""], tested: ["", ""], steps: [], goodbad: [], examples: [], mistakes: [], levels: [], cv: ["", ""], check: [], prac: [], images: [] };
  let section = "";
  let lastBox = "";
  let pendingQ = null;
  for (let i = 0; i < body.length; i++) {
    const it = body[i];
    const box = boxOf(it);
    if (box) {
      const head = (box[0]?.text || "").trim();
      const rest = box.slice(1).map(p => p.text).filter(Boolean);
      if (/^THINK OF IT LIKE THIS/i.test(head)) { s.analogy[0] = rest.join(" "); lastBox = "analogy"; }
      else if (/^DEFINITION/i.test(head)) { s.def = rest.join(" "); lastBox = "def"; }
      else if (section === "examples") {
        const get = label => (rest.find(t => t.toLowerCase().startsWith(label.toLowerCase())) || "").slice(label.length).trim();
        s.examples.push([sentenceCase(head), get("The situation:"), get("What to do:"), get("Why:"), ""]);
        lastBox = "example";
      }
      continue;
    }
    if (it.k === "t") {
      const rows = tableRows(it).slice(1).filter(r => r.some(Boolean));
      if (section === "words") s.words = rows.map(r => [r[0], r[1]]);
      else if (section === "goodbad") s.goodbad = rows.map(r => [r[0], r[1]]);
      else if (section === "mistakes") s.mistakes = rows.map(r => [r[0], r[1]]);
      else if (section === "levels") s.levels = rows.map(r => r[1]);
      continue;
    }
    if (it.imgs.length) { s.images.push(...it.imgs); continue; }
    const tx = it.text;
    let m;
    if (/^In simple English:/i.test(tx)) {
      const v = simpleOf(tx);
      if (lastBox === "analogy") s.analogy[1] = v;
      else if (lastBox === "def") s.s = v;
      else if (lastBox === "example" && s.examples.length) s.examples[s.examples.length - 1][4] = v;
      else if (["fits", "why", "tested", "cv"].includes(section)) s[section][1] = v;
      lastBox = "";
      continue;
    }
    lastBox = "";
    if (/^Words to know/i.test(tx)) section = "words";
    else if (/^●\s*Where it fits/i.test(tx)) section = "fits";
    else if (/^●\s*Why it matters/i.test(tx)) section = "why";
    else if (/^●\s*How it'?s tested/i.test(tx)) section = "tested";
    else if (/^●\s*What it looks like on your CV/i.test(tx)) section = "cv";
    else if (/^How to do it/i.test(tx)) section = "steps";
    else if (/^Good versus bad/i.test(tx)) section = "goodbad";
    else if (/^Worked examples/i.test(tx)) section = "examples";
    else if (/^Common mistakes/i.test(tx)) section = "mistakes";
    else if (/^How to practise/i.test(tx)) section = "prac";
    else if (/^Skill levels/i.test(tx)) section = "levels";
    else if (/^Quick check/i.test(tx)) section = "check";
    else if ((m = /^Step\s+\d+\s+(.*)$/s.exec(tx))) s.steps.push([m[1].trim(), ""]);
    else if (/^Simply:/i.test(tx) && s.steps.length) s.steps[s.steps.length - 1][1] = after(tx, "Simply:");
    else if (section === "check" && (m = /^(?!Answer:)([A-Za-z][A-Za-z ]{1,24}):\s+(.*)$/s.exec(tx))) pendingQ = m[2].trim();
    else if (/^Answer:/i.test(tx) && pendingQ != null) { s.check.push([pendingQ, after(tx, "Answer:")]); pendingQ = null; }
    else if ((m = /^\d+\.\s+(.*)$/s.exec(tx)) && section === "prac") s.prac.push(m[1].trim());
    else if (["fits", "why", "tested", "cv"].includes(section) && !s[section][0]) s[section][0] = tx;
  }
  // first picture = the steps diagram, second = the real-style picture
  s.stepsImage = s.images[0] || null;
  s.image = s.images[1] || s.images[0] || null;
  delete s.images;
  s.s = s.s || s.def;
  return s;
}

// ------------------------------------------------------------------ tasks from the task bank
function parseTaskBank(items) {
  const chapters = [];
  let cur = null;
  for (const it of items) {
    if (isChapter(it)) {
      const title = chapterTitle(it);
      const m = /^(.+?)\s+Skill\s+(\d+):\s*(.*)$/i.exec(title);
      cur = m ? { prefix: m[1].trim(), name: m[3].trim(), tasks: [] } : null;
      if (cur) chapters.push(cur);
      continue;
    }
    const box = boxOf(it);
    if (!cur || !box || !/^TASK\s+\d+/i.test(box[0]?.text || "")) continue;
    const lvl = (/·\s*(EASY|MEDIUM|HARD)/i.exec(box[0].text) || [])[1];
    const lines = box.slice(1).map(p => p.text);
    const get = label => { const l = lines.find(t => t.toLowerCase().startsWith(label.toLowerCase())); return l ? l.slice(label.length).trim() : ""; };
    const kwRaw = get("Key word:");
    const eq = kwRaw.indexOf(" = ");
    const task = {
      sit: get("The situation:"), ask: get("What is this asking?"), task: get("Your task:"), ans: get("Answer:"),
      why: get("Why (explained simply):"), kw: eq > 0 ? kwRaw.slice(0, eq).trim() : kwRaw, km: eq > 0 ? kwRaw.slice(eq + 3).trim() : "", simple: get("In simple English:"),
    };
    if (lvl) task.level = lvl.toLowerCase();
    if (task.sit && task.task && task.ans) cur.tasks.push(task);
    else warn(`A task in "${cur.name}" is missing its situation, task or answer and was skipped.`);
  }
  return chapters;
}

// ------------------------------------------------------------------ build each day
function kindOf(file) {
  const f = file.toLowerCase();
  if (/task.?bank/.test(f)) return "taskbank";
  if (/lecture/.test(f)) return "lecture";
  if (/must.?know/.test(f)) return "mustknow";
  if (/cv/.test(f)) return "cvs";
  if (/assignment|answer.?key/.test(f)) return "assignment";
  return "other";
}
const DOC_ORDER = { lecture: 1, mustknow: 2, cvs: 3, assignment: 4, other: 5 };
const DOC_LABEL = { lecture: "Lecture notes", mustknow: "Must-know notes", cvs: "Sample CVs", assignment: "Assignment answers", other: "Notes" };

function buildDay(dir, dayNum) {
  const files = readdirSync(dir).filter(f => !f.startsWith(".") && !f.startsWith("~$"));
  const imgDir = join(OUT, "img", `day-${dayNum}`);
  const imgUrl = `/content/img/day-${dayNum}`;
  const docs = [];
  let lectureRoles = null, bank = null, title = "", subtitle = "";

  for (const f of files.filter(f => extname(f).toLowerCase() === ".docx")) {
    const kind = kindOf(f);
    let items;
    try { items = readDocx(join(dir, f), kind === "taskbank" ? null : imgDir, imgUrl); }
    catch (e) { warn(`Day ${dayNum}: could not open "${f}" (${e.message}). Is it a real Word .docx file?`); continue; }
    const texts = items.filter(i => i.k === "p" && i.text).map(i => i.text);
    if (kind === "lecture") {
      try { lectureRoles = parseLecture(items); } catch (e) { warn(`Day ${dayNum}: lessons in "${f}" could not be read (${e.message}).`); }
      title = title || texts[0] || ""; subtitle = subtitle || texts[1] || "";
    }
    if (kind === "taskbank") {
      try { bank = parseTaskBank(items); } catch (e) { warn(`Day ${dayNum}: tasks in "${f}" could not be read (${e.message}).`); }
      continue; // the tasks themselves are practised in the app, so no reading copy
    }
    // Catch files put in the wrong day folder (e.g. Day 4 CVs inside day-3).
    const named = /\bDay\s*(\d+)\b/i.exec(texts[0] || "") || /^day\s*[-_ ]?(\d+)/i.exec(f);
    if (named && Number(named[1]) !== dayNum) warn(`Day ${dayNum}: "${f}" says it is for Day ${named[1]}. Is it in the right folder?`);
    const id = kind === "other" ? basename(f, extname(f)).toLowerCase().replace(/[^a-z0-9]+/g, "-") : kind;
    const blocks = toBlocks(items);
    const words = blocks.reduce((n, b) => n + JSON.stringify(b).split(/\s+/).length, 0);
    mkdirSync(join(OUT, `day-${dayNum}`), { recursive: true });
    writeFileSync(join(OUT, `day-${dayNum}`, `${id}.json`), JSON.stringify({ id, kind, day: dayNum, title: texts[0] || DOC_LABEL[kind], subtitle: texts[1] || "", blocks }));
    docs.push({ id, kind, label: DOC_LABEL[kind], title: texts[0] || DOC_LABEL[kind], subtitle: texts[1] || "", minutes: Math.max(2, Math.round(words / 200)) });
  }
  docs.sort((a, b) => DOC_ORDER[a.kind] - DOC_ORDER[b.kind]);

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

  if (bank) {
    const all = roles.flatMap(r => r.skills);
    for (const ch of bank) {
      let skill = all.find(s => norm(s.n) === norm(ch.name));
      if (!skill) {
        // A skill that only appears in the task bank still gets its tasks.
        let role = roles.find(r => norm(r.short || "") === norm(ch.prefix));
        if (!role) { role = { key: `r${roles.length + 1}`, name: ch.prefix, short: ch.prefix, intro: "", skills: [] }; roles.push(role); }
        skill = { n: ch.name, s: ch.name, def: "", analogy: ["", ""], words: [], fits: ["", ""], why: ["", ""], steps: [], goodbad: [], examples: [], mistakes: [], levels: [], cv: ["", ""], check: [], prac: [], tasks: [] };
        role.skills.push(skill);
        warn(`Day ${dayNum}: "${ch.name}" is in the task bank but not in the lecture notes, so it has tasks but no lesson.`);
      }
      if (!skill.tasks?.length) skill.tasks = ch.tasks;
    }
  }
  roles.forEach(r => r.skills.forEach(s => { if (!s.tasks?.length) warn(`Day ${dayNum}: "${s.n}" has no practice tasks yet (add a Task Bank file).`); s.tasks = s.tasks || []; }));

  const hasCourse = roles.some(r => r.skills.length);
  if (hasCourse) writeFileSync(join(OUT, `day-${dayNum}.json`), JSON.stringify({ day: dayNum, title, subtitle, roles }));
  return {
    day: dayNum,
    title: title || `Day ${dayNum}`,
    subtitle: subtitle || roles.map(r => r.name).join(" and "),
    hasCourse,
    roles: roles.map(r => ({ key: r.key, name: r.name, short: r.short, skills: r.skills.length, tasks: r.skills.reduce((n, s) => n + s.tasks.length, 0) })),
    skills: roles.reduce((n, r) => n + r.skills.length, 0),
    tasks: roles.reduce((n, r) => n + r.skills.reduce((m, s) => m + s.tasks.length, 0), 0),
    docs,
  };
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
