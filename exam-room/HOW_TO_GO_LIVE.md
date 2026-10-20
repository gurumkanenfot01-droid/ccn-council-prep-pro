# How to put the CCN Exam Room online

The Exam Room is a separate website for **serious, proctored exams**:
- every student gets a **personal access code**, locked to **their face**
- questions are only visible **between the times you set**
- the correct answer is shown **as soon as a student taps** an option (you can turn this off per exam)
- the camera, microphone and screen are watched for cheating, and you can **watch everyone live** as admin

It uses the **same Supabase database** as CCN Council Prep Pro (same live question bank, same admin login).
You do the setup once, in about 15 minutes.

---

## Part A: Set it up (one time)

### Step 1: Add the exam tables to Supabase
1. Open https://supabase.com/dashboard/project/ftecbdsgnvmuybptjtcs/sql/new
2. Open the file `supabase/schema_exam_room.sql` from GitHub, copy everything, paste it in and tap **Run**.
3. You should see **"Success. No rows returned"**.

### Step 2: Merge the pull request
On GitHub, open the pull request that adds the `exam-room` folder and tap **Merge pull request**, then **Confirm merge**.

### Step 3: Create the website on Vercel
1. Open https://vercel.com/new and **Import** `ccn-council-prep-pro` again.
2. **Project Name:** `ccn-exam-room`
3. **Root Directory:** tap **Edit**, choose **exam-room**, then **Continue**. (Most important step.)
4. **Environment Variables:** add the same two values your CCN app uses
   (Vercel → CCN Council Prep Pro project → Settings → Environment Variables):
   - `VITE_SUPABASE_URL`
   - `VITE_SUPABASE_ANON_KEY`
5. Tap **Deploy**. Your site will be something like **https://ccn-exam-room.vercel.app**

### Step 4: Open the admin dashboard
Go to **your site link + `/#/admin`**, e.g. `https://ccn-exam-room.vercel.app/#/admin`,
and log in with your **CCN admin email and password**. Bookmark this page.

---

## Part B: Running an exam

1. **Students & codes:** type your students' full names (one per line) and tap **Create access codes**.
   Tap **Copy codes list** and send each student their own code privately (e.g. on WhatsApp).
2. **Students register their face** by opening the site and entering their code. They turn their head
   left and right (this proves a real person, not a photo) and their face is saved.
3. **Approve faces:** in **Students & codes**, tap **Photo** next to each “Waiting for approval”,
   check it's really that student, and tap **Approve**. Students can't sit exams until approved.
4. **Exams → New exam:** set the title, **when questions become visible and when they're hidden**,
   the time allowed, seconds per question (optional), how many warnings before auto-submit,
   and pick the questions (by topic and number). Tap **Save exam**.
5. **On exam day, open Live monitor.** You'll see who is writing, online or offline, their progress, score
   and warnings. Tick **Live photos** to see their latest camera photo. You can:
   - **Message** a student (it appears on their screen within 15 seconds)
   - **End** a student's exam (logs them out of the exam immediately)
   - **Pause** the exam (hides the questions for everyone) or **Close** it
   - **View** a student's timeline: every warning with a photo, next to their registered face
6. **Results:** see everyone's score and warnings, and **Download CSV** for Excel.

---

## How cheating is handled

| What happens | Result |
|---|---|
| Someone else uses a student's code | Their face doesn't match: the exam won't start, and a photo of them is saved |
| Someone swaps in after the start | Faces are re-checked every minute; 2 failed checks in a row end the exam |
| Another person appears in view | Exam ends immediately |
| Leaves the page, switches apps, opens notifications or Control Centre | Warning |
| Phone held up in front of the camera | Warning |
| Face not visible, looking away, camera covered | Warning |
| Talking or noise | A red “keep quiet” banner the moment a voice is heard; after about 1 second of talking it becomes a warning |
| Screenshot keys, copy, print, right-click (computers) | Blocked + warning |
| Reaches the warning limit (you choose, e.g. 3) | Exam submitted automatically |
| Time runs out / you close the exam | Exam submitted automatically |

Every warning is saved with a photo for you to review. Each warning also pops up on the student's screen with a
beep and vibration, and they must tap **I understand** to continue.

## How strict should the checks be? (per exam)
In **Exams → New exam / Edit**, choose **How strict the camera & microphone are**:

| Level | Talking / noise | Head turns | Face out of view | Good for |
|---|---|---|---|---|
| **Relaxed** (default) | Murmuring and reading under your breath are fine; only **loud** talking or noise for ~3 s is a warning | Allowed | Warning after 10 s | Practice exams, noisy homes |
| **Normal** | Clear talking for ~2 s is a warning | Warning only after looking away 10 s | Warning after 7 s | Most real exams |
| **Strict** | Any talking for ~1 s is a warning | Warning after looking away 6 s | Warning after 5 s | Final, high-stakes exams |

Another person in view, a phone held up, leaving the exam screen and a face mismatch always count, at every level.

## Live monitor (exam day)
- **Table** or **Camera wall** (everyone's latest camera photo, refreshed every 20 s).
- **Live** column: face OK / no face / looking away, quiet / talking, phone seen — updated every ~15 s.
- **Filters:** All, Writing, With warnings, Not responding, Finished, Not started.
- **Alerts:** a chime, a red "New warnings" banner and a flashing tab title whenever someone gets a warning.
- **Actions per student:** View (timeline + photos), Message, **Warn** (a warning that counts, with your reason shown to them),
  **+Time** (extra minutes, e.g. after a power cut), End, Allow retake.

## Retakes
- In **Exams**, set **Attempts each student may take** (e.g. 2 or 3). After finishing — or after being
  auto-submitted at the warning limit — students see **Retake exam** while attempts remain.
- If an exam was **ended for cheating** (another person, face mismatch, or ended by you), students can't
  retake by themselves. In **Live monitor** or **Results**, tap **Allow retake** next to the student.
  You can do this as many times as you like. Every earlier attempt stays on record.
- To ban a student completely, use **Disable** in **Students & codes** (and **Enable** to lift the ban).

**Honest limits — please read:**
- **No website can fully block screenshots or screen recording on phones.** The Exam Room makes leaks
  traceable instead: the student's **name and code are printed across every question**, the questions blur
  when the student leaves the page, and opening Control Centre (used to start screen recording on iPhone)
  counts as a warning. An Android app version can block screenshots completely; ask if you want it.
- A second phone used to photograph the screen from beside or behind the device is usually out of the
  camera's view. The watermark is what protects you there.
- Face matching runs on the student's device and the comparison is done in the database, so the registered
  face never leaves your database. A very technical cheater could still attempt tricks on their own device,
  which is why **photos are kept for every check and warning** — review them for important exams.

## Good to know
- Students need a phone, tablet or laptop with a camera and microphone, and a stable internet connection.
- The first time, the site downloads about 15 MB of face and phone detection files. After that they're saved on the device.
- If a student's connection drops, their answers are already saved; they can log in again and **Resume**
  (their face is checked again). The timer keeps running on the server.
- Students can't open the questions before the start time or after the closing time — this is enforced by the database, not just the website.
- **Updating an existing setup:** whenever this guide's SQL file changes, run it again in the Supabase SQL Editor
  (Part A, Step 1). It's safe to run more than once and keeps all your data.
