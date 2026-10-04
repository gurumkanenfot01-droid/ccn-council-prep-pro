# How to put the AI Trainer Class online (and add a new day)

You do this once (Part A). After that, adding a new day takes about 3 minutes (Part B).

**Words used in this guide**
- **GitHub** is where the app's files are kept. Your repository is
  https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro
- **Vercel** is the free website host. It takes the files from GitHub, builds the app, and gives you a web link
  (for example `https://ai-trainer-class.vercel.app`). Every time something changes on GitHub, Vercel updates the
  website by itself, in about 1 minute.
- **Supabase** is a free online database. It gives students accounts (so their progress is saved online), and gives
  you the Teacher dashboard, class leaderboard, messages, assignments and "Add a day" from your phone. See Part C.
  Without it, the app still works, but everything stays on each phone.

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
6. You do not need any Environment Variables now (Part C adds two later).
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

## Part B: Add a new day

There are two ways. Use whichever is easier.

### Option 1 (easiest): from the app, on your phone
This needs Part C (Supabase) done first.
1. Open the app and sign in with your teacher account.
2. Go to **Me → Teacher dashboard → Add a day**.
3. Type the day number, tap **Choose Word files** and pick the day's files
   (Lecture Notes, Task Bank, Must-Know notes, CVs, Assignment answers).
4. Tap **Check the files**. The app shows how many lessons, tasks and notes it found, and warns you about
   anything wrong (for example a Day 4 file picked for Day 5).
5. Tap **Publish**. Students get the new day the next time they open the app, with a "Day N is here!" banner.

You can hide or delete a day you published from the same page.

### Option 2: upload to GitHub
(every day, from your phone or computer)

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

## Part C: Switch on accounts, the Teacher dashboard and the class features (Supabase)

Do this once. It takes about 15 minutes. It is free.

**What you get:**
- Students make a free account. Their progress is saved online, so it comes back on any phone or laptop.
- **Teacher dashboard**: who studied today, each student's progress, who is behind, the skills the class finds hardest,
  and a download of everything for Excel.
- **Class leaderboard** for all students.
- **Messages**: post news, and students see it on their home screen.
- **Assignments**: students hand in answers (typed, or a Word/PDF/photo file). You mark them with a score and a comment.
- **Add a day from your phone** (Part B, Option 1).

(Certificates and the daily reminder work even without Supabase.)

### Step 1: Create a Supabase project
1. Open https://supabase.com/dashboard and sign in (tap **Continue with GitHub**, it's easiest).
2. Tap **New project**.
3. **Name:** `ai-trainer-class`. **Database password:** tap **Generate a password** and save it somewhere safe.
   **Region:** choose the one closest to your students (for Nigeria: **West EU (London)** or **Central EU (Frankfurt)**).
4. Tap **Create new project** and wait about 2 minutes until it's ready.

### Step 2: Create the tables (copy and paste one file)
1. Open the file with the setup code:
   https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/blob/main/ai-trainer-class/supabase/schema.sql
   Tap the **Copy raw file** button (two squares icon, top right of the file).
2. Open the SQL Editor: https://supabase.com/dashboard/project/_/sql/new
   (If it asks, choose your `ai-trainer-class` project.)
3. Paste everything into the big box and tap **Run** (bottom right). You should see **Success. No rows returned**.
   If Supabase asks "this query has destructive operations", tap **Run this query**. It is safe: it only removes and re-adds
   its own security rules, so you can also run it again later.

### Step 3: Let students sign up without waiting for an email
Supabase's free email sender only sends a few emails per hour, so turn off the "confirm your email" step:
1. Open https://supabase.com/dashboard/project/_/auth/providers
2. Tap **Email**. Turn **Confirm email** **off**. Tap **Save**.

### Step 4: Tell Supabase your web address (for "forgot password" emails)
1. Open https://supabase.com/dashboard/project/_/auth/url-configuration
2. **Site URL:** `https://ai-trainer-class.vercel.app` (your real link). Tap **Save**.

### Step 5: Copy two keys from Supabase
1. Open https://supabase.com/dashboard/project/_/settings/api-keys
2. Copy the **Publishable key** (starts with `sb_publishable_`). If you only see "Legacy API keys", copy the
   **anon public** key instead. Either one works. **Never** use the `secret` or `service_role` key.
3. Copy your **Project URL**. It looks like `https://abcdefghijk.supabase.co`. You can find it on
   https://supabase.com/dashboard/project/_/settings/api (or tap **Connect** at the top of the project).

### Step 6: Put the two keys in Vercel
1. Open https://vercel.com/dashboard, tap your **ai-trainer-class** project, then **Settings → Environment Variables**.
2. Add the first one:
   - **Key:** `VITE_SUPABASE_URL`
   - **Value:** your Project URL
   - Tap **Save**.
3. Add the second one:
   - **Key:** `VITE_SUPABASE_ANON_KEY`
   - **Value:** the Publishable (or anon) key
   - Tap **Save**.
4. Go to **Deployments**. On the newest one, tap **⋯ → Redeploy → Redeploy**, then wait about 1 minute.
   (The keys only take effect after a new deploy.)

### Step 7: Make yourself the teacher
1. Open your app, go to **Me → Save your progress online → Create account**, and make your own account.
2. Open the teacher file: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/blob/main/ai-trainer-class/supabase/teacher.sql
   and copy it.
3. Open https://supabase.com/dashboard/project/_/sql/new, paste it, and change `PUT-THE-EMAIL-HERE` to the email you
   just used. Tap **Run**.
4. Close and open the app again. **Me** now shows **Teacher dashboard**.

To add another teacher later, they make an account first, then you run the same file with their email.

### Good to know
- **Students' privacy:** students only see their own work. The leaderboard shows first names and scores only.
  Only teachers see emails, progress and handed-in files.
- **Free plan pause:** Supabase pauses a free project after about 1 week with **no visits at all**. If that happens, open
  https://supabase.com/dashboard and tap **Restore project**. With students using the app every day, it stays awake.
- **Forgot password:** students tap **Me → Account → Sign in → I forgot my password**. The free email sender is slow and
  limited (a few emails per hour). If a student is stuck, you can set a new password for them in
  https://supabase.com/dashboard/project/_/auth/users (tap the student → **Send password recovery**), or delete the
  user so they can sign up again.
- **See your data:** https://supabase.com/dashboard/project/_/editor (tables `progress`, `submissions`, `announcements`, `days`).

---

## Quick links
- Your code: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro
- Merge the app into main (Step 1): https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/compare/main...ccr-2c51234b-9t24b7
- Add files for a new day: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/tree/main/ai-trainer-class/content
- Create a day folder from a phone: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/new/main/ai-trainer-class/content
- Vercel new project: https://vercel.com/new
- Vercel dashboard (your sites and deployments): https://vercel.com/dashboard
- Your live site (after Part A): https://ai-trainer-class.vercel.app
- Supabase dashboard: https://supabase.com/dashboard
- Supabase SQL Editor: https://supabase.com/dashboard/project/_/sql/new
- Setup code to paste: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/blob/main/ai-trainer-class/supabase/schema.sql
- Make a teacher: https://github.com/gurumkanenfot01-droid/ccn-council-prep-pro/blob/main/ai-trainer-class/supabase/teacher.sql
