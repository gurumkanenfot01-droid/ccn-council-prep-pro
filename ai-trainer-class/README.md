# AI Trainer Class

A day-by-day learning app for AI trainer jobs. Each day has lessons, practice tasks, lecture notes, must-know notes and sample CVs (see `content/`).

**To put it online and to add a new day, read [HOW_TO_GO_LIVE.md](HOW_TO_GO_LIVE.md).**
Design: "Emerald Scholar": deep emerald, gold and ivory, Fraunces headings with Plus Jakarta Sans text, soft cards, a floating bottom bar on phones and an "Emerald night" dark mode.

## Content (one folder per day)
`content/day-N/` holds that day's files. `scripts/build-content.mjs` runs before every build (also on Vercel) and turns them into app data in `public/content/` (git-ignored):
- `*Lecture*Notes*.docx` → lessons for every skill (slides) + readable Lecture notes
- `*Task*Bank*.docx` → the practice tasks (situation, question, task, answer, why, key word, simple line, level)
- `*Must*Know*.docx`, `*CV*.docx`, other `.docx` → readable notes in the Library
- `course.json` + `images.json` (Day 1) → ready-made lessons and tasks in the app's own format

To add a day, upload its Word files into a new `content/day-N/` folder, or (with Supabase on) use **Teacher dashboard → Add a day** in the app. Both use the same reader (`src/data/content-core.js`); a day added in the app is stored in the Supabase `days` table and replaces a built-in day with the same number.

## How it works
- **Learn**: a bento home and a numbered course index of the 18 skills (Part 1: Generalist, Part 2: LLM Rater). Each skill has:
  - a **slide-deck lesson** (one coloured slide at a time, swipe or arrow keys, or "one page" view), with an *Extra simple* switch,
    tap-to-highlight and a **hands-free mode** where the AI Reader reads each card and turns the page by itself;
  - **20 practice tasks** in a focused screen: situation, question, your own answer, then the answer, **Why (explained simply)**,
    the **key word** and a "Remember" rule. Mark "I got it" or "Not yet";
  - a **skill test** (20 questions).
- **Practice**: Daily Challenge, Quick 10, Build a test (role/skill/size, *Learn mode* = answers as you go, *Exam mode* = answers at the end),
  Weak spots, Role Tests (Generalist, LLM Rater, Full Day 1), save and continue later, results by skill and full answer review.
- **Library**: How AI training works (picture guide), Key words glossary, Worked examples, Flashcards, Bookmarks, Wrong answers, Leaderboard.
- **Progress**: XP and levels (named after the career ladder), daily goal and 7-day chart, streak, skill map, test score line, badges.
- **AI Reader**: Listen buttons everywhere plus a radio-style "ON AIR" player with live captions, speed, voice choice and "read each task to me".
  Uses the device voice (Web Speech API): free, no key, works offline.
- Search everything with the search button or the `/` key. Installable (PWA) and works offline.
- **Class (needs Supabase)**: accounts with progress saved online and merged across devices, class leaderboard, messages from the teacher,
  assignments (typed answer or file, marked with a score and comment), and a **Teacher dashboard** (students, who is behind, hardest skills,
  CSV export, marking, messages, Add a day).
- **Certificates** for each finished day (download or share as a picture) and a **daily reminder** for the phone calendar.

Progress is always saved on the device (localStorage), so the app works with no account and offline. With
`VITE_SUPABASE_URL` and `VITE_SUPABASE_ANON_KEY` set, learners can also sign in and their progress is saved online.
The database setup is in `supabase/schema.sql` (tables, security rules, storage) and `supabase/teacher.sql`.

## Run / deploy
```bash
cd ai-trainer-class
npm install
npm run dev      # local
npm run build    # output in dist/
```
To deploy on Vercel/Netlify, make a new project from this repo and set its **root directory** to `ai-trainer-class`.
