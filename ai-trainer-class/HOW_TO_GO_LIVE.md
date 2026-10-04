# How to put the AI Trainer Class online (and add a new day)

You do this once (Part A). After that, adding a new day takes about 3 minutes (Part B).

**Words used in this guide**
- **GitHub** is where the app's files are kept. Your repository is
  https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro
- **Vercel** is the free website host. It takes the files from GitHub, builds the app, and gives you a web link
  (for example `https://ai-trainer-class.vercel.app`). Every time something changes on GitHub, Vercel updates the
  website by itself, in about 1 minute.
- **Supabase** is an online database. **You do not need it for this app.** See Part C.

---

## Part A: Make it live (one time only)

### Step 1: Put the new app on the `main` branch
All the app's work is on a branch called `ccr-2c51234b-9t24b7`. Websites are usually built from `main`.

1. Open: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/compare/main...ccr-2c51234b-9t24b7
2. Tap **Create pull request**, then **Create pull request** again.
3. Tap **Merge pull request**, then **Confirm merge**.

This only adds the new `ai-trainer-class` folder. Your CCN Council Prep Pro app is not changed.

### Step 2: Sign in to Vercel
1. Open https://vercel.com/signup
2. Choose **Continue with GitHub** and allow access.
   (If you already use Vercel for the CCN app, just log in at https://vercel.com/login.)

### Step 3: Create the website
1. Open https://vercel.com/new
2. Find **ccn-council-prep-pro** and tap **Import**.
   (If you don't see it: tap **Adjust GitHub App Permissions** and give Vercel access to this repository.)
3. **Project Name:** type `ai-trainer-class`. This becomes your web link.
4. **Root Directory:** tap **Edit**, choose the folder **ai-trainer-class**, then tap **Continue**.
   **This is the most important step.** If you skip it, Vercel builds the CCN app instead.
5. **Framework Preset:** Vite (Vercel finds this by itself).
   Leave Build Command (`npm run build`) and Output Directory (`dist`) as they are.
6. You do **not** need any Environment Variables.
7. Tap **Deploy** and wait about 1 to 2 minutes.

### Step 4: Open your live site
When you see the confetti screen, tap **Continue to Dashboard**, then **Visit**.
Your link will be **https://ai-trainer-class.vercel.app**. If that name was taken, Vercel shows the real link on the
project page. Save it and share it with your students.

You can always find your sites here: https://vercel.com/dashboard

**Optional, your own web address:** in the Vercel project, go to **Settings → Domains** and add a domain you own
(for example `class.yourname.com`). Vercel shows what to set at your domain seller.

**Students:** they open the link on their phone. On Android tap **Install**; on iPhone tap **Share → Add to Home Screen**.
The app then works like a normal app, even offline.

---

## Part B: Add a new day (every day, from your phone or computer)

Each day lives in its own folder: `ai-trainer-class/content/day-1`, `day-2`, `day-3`, and so on.
The app reads the Word files in that folder and builds the lessons, tasks and notes **by itself**.

### What to upload for a day

| File (the name must contain these words) | What the app makes from it |
|---|---|
| `Day3_Comprehensive_Lecture_Notes.docx` | The lessons (slides) for every skill, plus readable **Lecture notes** |
| `Day3_Task_Bank.docx` | The practice tasks for every skill (and the tests) |
| `Day3_Must_Know_Notes.docx` | Readable **Must-know notes** |
| `Day3_Sample_CVs.docx` | Readable **Sample CVs** |

Use the same Word templates as Day 1 and Day 2 (same chapter boxes, "In simple English" lines, "TASK 1.1 · EASY" boxes,
and so on). Then everything appears in the right place. Any other Word file is shown as extra notes.

### Steps (example for Day 3)
1. Open: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/tree/main/ai-trainer-class/content
2. Tap **Add file → Upload files**.
3. Drag in (or choose) the Day 3 Word files.
4. **Important: put them in a new folder.** GitHub can't make an empty folder, so do this:
   - Easiest on a computer: in the upload page, drag the whole **day-3 folder** (with the files inside) onto the page.
   - On a phone: first open
     https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/new/main/ai-trainer-class/content
     In the name box type `day-3/README.md` (typing the `/` creates the folder). Type `Day 3` in the big box and tap
     **Commit changes**. Then open the new `day-3` folder, tap **Add file → Upload files**, and add the Word files there.
5. At the bottom, tap **Commit changes**.
6. Wait about 1 to 2 minutes. Vercel rebuilds the site by itself. Refresh the app, and **Day 3** appears.

To see if the update worked, open https://vercel.com/dashboard, then your project, then **Deployments**. The newest
one should say **Ready** (green). If it says **Error**, tap it to read the log. The app also writes a line starting
with ⚠ when a file could not be read.

**Fixing a mistake:** open the file on GitHub, tap **⋯ → Delete file** (or upload a corrected file with the
**same name** to replace it), then commit. The site updates again by itself.

**Students' progress is safe.** Each day's tasks have their own IDs, so adding Day 3 never changes Day 1 or Day 2 progress.

---

## Part C: Do I need Supabase?

**No. Not for this app as it is now.**

- The app needs no accounts and no payments. Each student's progress (tasks, XP, streak, badges) is saved **on their
  own phone**. So Vercel alone is enough, and it's free.
- The lessons come from the Word files on GitHub, not from a database.

Supabase is only needed **if later you want**:
- students to log in, so their progress follows them to a new phone;
- one shared leaderboard for all students (now it is per phone);
- paid subscriptions (like the CCN app's Paystack paywall).

If you want that later, ask for "add Supabase login to the AI Trainer Class". You would then:
1. Create a free project at https://supabase.com/dashboard (tap **New project**, choose a name and password, region Europe or US).
2. In **Project Settings → API**, copy the **Project URL** and the **anon public** key.
3. Add them in Vercel at **Project → Settings → Environment Variables** as `VITE_SUPABASE_URL` and `VITE_SUPABASE_ANON_KEY`,
   then **Redeploy**.

---

## Quick links
- Your code: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro
- Merge the app into main (Step 1): https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/compare/main...ccr-2c51234b-9t24b7
- Add files for a new day: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/tree/main/ai-trainer-class/content
- Create a day folder from a phone: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/new/main/ai-trainer-class/content
- Vercel new project: https://vercel.com/new
- Vercel dashboard (your sites and deployments): https://vercel.com/dashboard
- Your live site (after Part A): https://ai-trainer-class.vercel.app
- Supabase (only if needed later): https://supabase.com/dashboard
