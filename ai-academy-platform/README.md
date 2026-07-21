# Nova AI Academy

A free, self-contained AI-skills course platform demo: a landing page plus a
logged-in classroom, community feed, calendar, members, and leaderboard. No
payment, no pricing — signup is free and unlocks everything.

## Run it locally

```bash
npm install
npm run dev
```

Open the printed `http://localhost:5183` URL.

## What's here

- `src/pages/Landing.jsx` — the marketing/landing page
- `src/pages/Signup.jsx` / `Login.jsx` — free account creation, no payment
- `src/pages/Classroom.jsx`, `LessonDetail.jsx` — the course content
- `src/pages/Community.jsx`, `Calendar.jsx`, `Members.jsx`, `Leaderboard.jsx`
- `src/data/courses.js` — the full curriculum content
- `src/context/AuthContext.jsx`, `AppDataContext.jsx` — auth and progress,
  persisted to the browser's `localStorage`

## Notes

- There's no backend or database. Accounts, progress, and community posts
  all live in `localStorage`, so they don't sync across devices and won't
  survive clearing site data.
- This is a learning/demo project, not a production app — auth is a simple
  mock (plaintext credentials in `localStorage`) and should not hold real
  user passwords.

## Production build

```bash
npm run build   # outputs a static site to dist/
```

`dist/` can be served by any static file host — no server required, since
there's no backend to run alongside it.
