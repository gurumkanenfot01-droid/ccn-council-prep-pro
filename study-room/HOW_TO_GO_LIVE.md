# How to put the CCN Study Room online

The Study Room is a separate website for monitored practice. Students answer live CCN questions while their
camera shows their face and their microphone listens for noise. It uses the **same Supabase database** as
CCN Council Prep Pro, so students log in with the same email and password and see the same live questions.

You do this once. It takes about 10 minutes.

**Privacy:** the camera and microphone are only analysed on the student's own phone or computer. Nothing is
recorded, stored or uploaded. The site only counts warnings such as "Face not visible" or "Noise detected".

---

## Step 1: Put the Study Room on the `main` branch
Merge the pull request that adds the `study-room` folder (tap **Merge pull request**, then **Confirm merge**).
This doesn't change your CCN Council Prep Pro app.

## Step 2: Copy your two Supabase values
1. Open https://vercel.com/dashboard and open your **CCN Council Prep Pro** project.
2. Go to **Settings → Environment Variables**.
3. Copy the values of **VITE_SUPABASE_URL** and **VITE_SUPABASE_ANON_KEY**. You'll paste them in Step 3.
   (You can also find them in Supabase: **Project Settings → API**. Use the **anon public** key, never the
   service_role key.)

## Step 3: Create the website on Vercel
1. Open https://vercel.com/new
2. Find **ccn-council-prep-pro** and tap **Import**.
3. **Project Name:** type `ccn-study-room`. This becomes your web link.
4. **Root Directory:** tap **Edit**, choose the folder **study-room**, then tap **Continue**.
   **This is the most important step.** If you skip it, Vercel builds the CCN app instead.
5. **Framework Preset:** Vite (Vercel finds this by itself). Leave the Build Command and Output Directory as they are.
6. Open **Environment Variables** and add both values from Step 2:
   - Name `VITE_SUPABASE_URL`, then paste its value
   - Name `VITE_SUPABASE_ANON_KEY`, then paste its value
7. Tap **Deploy** and wait 1 to 2 minutes.

Your link will be **https://ccn-study-room.vercel.app**. If that name was taken, Vercel shows the real link
on the project page.

## Step 4: Let Supabase send students back to the Study Room
Without this, "Forgot password?" emails would open the CCN app instead of the Study Room.

1. Open https://supabase.com/dashboard/project/ftecbdsgnvmuybptjtcs/auth/url-configuration
2. Under **Redirect URLs**, tap **Add URL** and enter your Study Room link, e.g. `https://ccn-study-room.vercel.app`
3. Tap **Save**. Leave **Site URL** as your CCN app.

## Step 5: Try it yourself
1. Open your Study Room link on your phone and log in with your CCN account.
2. Tap **Allow camera & microphone** and allow both when your phone asks.
3. You should see your face, "Face in view" and "Quiet". Pick 10 questions and tap **Start monitored practice**.

---

## Who gets which questions
- **Subscribers and admins:** every live question in the bank, in sessions of 10, 20, 50 or 100.
- **Everyone else:** the older (free) questions, in sessions of 10 or 20, with a link to subscribe in the CCN app.

New questions you add to Supabase appear automatically. Each phone downloads the question bank once and only
downloads it again when questions change, so it uses very little of your Supabase data.

## What the monitor checks
| Warning | When it's counted |
|---|---|
| Face not visible | No face in view for 3 seconds |
| Another person in view | Two or more faces for 2 seconds |
| Looking away from the screen | Head turned to the side for 3 seconds |
| Camera covered or too dark | Picture is almost black for 2 seconds |
| Noise or talking detected | Sound clearly louder than the room's normal level for about 1 second |
| Left the practice screen | Student switched app or tab |

Each warning lowers the session's **Focus score** (out of 100). The result screen shows the score, focus score,
a timeline of warnings and the questions answered wrongly. Recent sessions are kept on that device.

## Good to know
- It needs **https** (Vercel provides this) and a phone, tablet or laptop with a camera and microphone.
- It works in Chrome, Safari (iOS 14 and newer), Edge and Firefox.
- The first time, the face check downloads about 5 MB. After that it's saved on the device.
- The face check is designed for people within about 2 metres of the camera.
