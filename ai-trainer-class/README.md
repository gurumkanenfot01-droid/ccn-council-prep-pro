# AI Trainer Class (Day 1)

A modern learning app for **Day 1 — Generalist AI Trainer and LLM Rater**: 2 roles, 18 skills, 360 practice tasks.
It has its own playful "sticker / paper" design, completely separate from CCN Council Prep Pro: cream dotted paper, ink outlines, hard offset shadows and bright flat colours (lime, pink, sky, sunflower, tangerine, lavender); Space Grotesk headings mixed with Instrument Serif italics, DM Sans text and Space Mono numbers; a floating top navigation bar with a full-screen colour-tile menu (no sidebar, no bottom tab bar); a bento-grid home with a numbered course index; lessons as a deck of coloured slides; tasks on a sticky note and lined worksheet; a radio-style "ON AIR" AI Reader; and a neon night mode.

## Content
- `src/data/day1_content.json`: all lessons and tasks (unchanged copy of the supplied file)
- `public/img/*.jpg`: the pictures from `day1_images.json`
- `src/data/course.js`: builds roles, skills, tasks and 4-option test questions (wrong options are other answers from the same skill; a Yes/No question never gets a second "yes" option)

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

Progress is saved on the device (localStorage), so no account or server is needed.

## Run / deploy
```bash
cd ai-trainer-class
npm install
npm run dev      # local
npm run build    # output in dist/
```
To deploy on Vercel/Netlify, make a new project from this repo and set its **root directory** to `ai-trainer-class`.
