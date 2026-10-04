# AI Trainer Class (Day 1)

A separate app built with the same design, layout and navigation as CCN Council Prep Pro.
Content: **Day 1 — Generalist AI Trainer and LLM Rater**: 2 roles, 18 skills, 360 practice tasks.

## Where things come from
- `src/data/day1_content.json`: all lessons and tasks (unchanged copy of the file you supplied)
- `public/img/*.jpg`: the pictures from `day1_images.json`, saved as image files
- `src/data/course.js`: turns the content into roles, skills, tasks and 4-option test questions

## Features
- **Lessons** (one per skill): picture, meaning, analogy, key words, where it fits, why it matters, steps, good vs bad habits,
  worked examples, common mistakes, levels, CV line, home practice, quick check. Has an "Extra simple" switch, tap-to-highlight and "Save lesson".
- **Practice tasks** (20 per skill): situation, question, a box to write your own answer, then the answer,
  **Why (explained simply)**, the **key word** and its meaning, and a "Remember" rule. Mark "Yes, I got it" or "Not yet".
- **Tests**: Practice Test set-up (by role, skill or weak tasks), Role Tests, Daily Challenge, Random Task, with timer, calculator,
  text size, question list, flags, save-and-continue later, results by skill, and a review of every answer.
- **Progress**: per skill and per role, lessons finished, test score trend, streak, badges, Wrong Answers, Bookmarks, Leaderboard.
- **AI Reader**: "Listen" buttons everywhere read text out loud with the device voice (Web Speech API: free, no key, works offline).
  It has a mini player (pause, back, speed, stop) and you can pick the voice and speed or turn on "Read each task to me" in Profile.
- Also: Flashcards, Key Words glossary, Worked Examples, How AI Training Works picture guide, Search, dark mode,
  install as an app (PWA), offline mode, Customer Care, About.

Progress is saved on the device (localStorage), so no account or server is needed.

## Run / deploy
```bash
cd ai-trainer-class
npm install
npm run dev      # local
npm run build    # output in dist/
```
To deploy on Vercel/Netlify, make a new project from this repo and set its **root directory** to `ai-trainer-class`.
