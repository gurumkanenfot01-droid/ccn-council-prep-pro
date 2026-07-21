# Nova AI Academy

A demo AI-skills course platform: a sales/landing page plus a logged-in
classroom, community feed, calendar, members, and leaderboard. Frontend is a
static React SPA; checkout is real Stripe Checkout, backed by a small Express
server (Stripe requires a server — the secret key can never live in the
browser).

## Project layout

```
ai-academy-platform/
  src/            React app (Vite)
  server/         Express API: creates Stripe Checkout Sessions, verifies
                   payment, optional webhook. Also serves the built
                   frontend in production.
```

## Run it locally

You need two processes running: the Express API and the Vite dev server.

**1. API server**

```bash
cd server
npm install
cp .env.example .env
# edit .env and paste in your own Stripe *test mode* secret key
npm run dev
```

Get a test secret key from the Stripe Dashboard → Developers → API keys
(starts with `sk_test_`). Never commit `.env` or paste real keys into chat,
issues, or PRs — `.env` is already gitignored.

**2. Frontend**

```bash
npm install
npm run dev
```

Open the printed `http://localhost:5183` URL. The Vite dev server proxies
`/api/*` to the Express server on port 5185 (see `vite.config.js`), so the
frontend just calls relative paths — no CORS setup needed.

## Testing checkout

With the API server running and `STRIPE_SECRET_KEY` set, click "Enroll Now"
on the landing page. You'll be redirected to a real Stripe-hosted Checkout
page. Use one of Stripe's test cards, e.g.:

- Card number: `4242 4242 4242 4242`
- Any future expiry date, any 3-digit CVC, any postal code

On success you're redirected back to `/#/checkout/success`, where the app
verifies the payment server-side and asks you to set a password — that
becomes your login for the dashboard. Canceling from Stripe's page sends you
to `/#/checkout/cancel` with no charge made.

If `STRIPE_SECRET_KEY` isn't set, the checkout endpoints return a clear
500 error instead of failing silently.

## Production build

```bash
npm run build          # builds the frontend to dist/
cd server && npm start # serves dist/ *and* the API from one process
```

Set `CLIENT_URL` in `server/.env` to your real deployed origin (Stripe
redirects the customer's browser there after checkout — it must be publicly
reachable, not `localhost`).

## Notes on the checkout flow

- Accounts are now purchase-gated: the `/signup` route still exists
  (unlinked from the UI) as a no-payment fallback for local testing without
  Stripe configured — remove it if you want signup fully locked behind
  payment.
- Payment is verified two ways: the frontend checks `GET
  /api/checkout-session/:id` right after redirect (good enough for this
  demo, since there's no database), and `POST /api/stripe/webhook` is
  wired up with real signature verification for when you add persistent
  storage — in a production build, the webhook should be the source of
  truth, not the client-side check.
- There's no database. "Accounts" and progress live in the browser's
  `localStorage`, so they don't sync across devices and won't survive
  clearing site data.
