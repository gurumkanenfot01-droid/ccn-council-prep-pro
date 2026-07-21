import 'dotenv/config'
import express from 'express'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import Stripe from 'stripe'

const __dirname = path.dirname(fileURLToPath(import.meta.url))

const PORT = process.env.PORT || 5185
// The browser is redirected here by Stripe after checkout, so it must be
// the origin the frontend is actually served from — not the API origin.
const CLIENT_URL = process.env.CLIENT_URL || 'http://localhost:5183'

const PRODUCT_NAME = 'Nova AI Academy — Full Access'
const PRICE_USD_CENTS = 24500

const stripeSecretKey = process.env.STRIPE_SECRET_KEY
const stripe = stripeSecretKey ? new Stripe(stripeSecretKey) : null

const app = express()

app.post('/api/create-checkout-session', express.json(), async (req, res) => {
  if (!stripe) {
    res.status(500).json({ error: 'Stripe is not configured. Add STRIPE_SECRET_KEY to server/.env.' })
    return
  }
  try {
    const session = await stripe.checkout.sessions.create({
      mode: 'payment',
      line_items: [
        {
          price_data: {
            currency: 'usd',
            product_data: { name: PRODUCT_NAME },
            unit_amount: PRICE_USD_CENTS,
          },
          quantity: 1,
        },
      ],
      // With HashRouter this is a normal absolute URL; the "#/..." part is
      // just a fragment as far as the redirect itself is concerned.
      success_url: `${CLIENT_URL}/#/checkout/success?session_id={CHECKOUT_SESSION_ID}`,
      cancel_url: `${CLIENT_URL}/#/checkout/cancel`,
    })
    res.json({ url: session.url })
  } catch (err) {
    console.error('Failed to create checkout session:', err.message)
    res.status(500).json({ error: 'Could not start checkout. Please try again.' })
  }
})

app.get('/api/checkout-session/:id', async (req, res) => {
  if (!stripe) {
    res.status(500).json({ error: 'Stripe is not configured. Add STRIPE_SECRET_KEY to server/.env.' })
    return
  }
  try {
    const session = await stripe.checkout.sessions.retrieve(req.params.id)
    res.json({
      paid: session.payment_status === 'paid',
      email: session.customer_details?.email ?? null,
      name: session.customer_details?.name ?? null,
      amountTotal: session.amount_total,
      currency: session.currency,
    })
  } catch (err) {
    console.error('Failed to retrieve checkout session:', err.message)
    res.status(404).json({ error: 'Checkout session not found.' })
  }
})

// Stripe signs the raw request body, so this route must NOT go through
// express.json() — it needs the untouched buffer to verify the signature.
app.post('/api/stripe/webhook', express.raw({ type: 'application/json' }), (req, res) => {
  const webhookSecret = process.env.STRIPE_WEBHOOK_SECRET
  if (!stripe || !webhookSecret) {
    res.status(500).send('Webhook not configured.')
    return
  }
  let event
  try {
    event = stripe.webhooks.constructEvent(req.body, req.headers['stripe-signature'], webhookSecret)
  } catch (err) {
    console.error('Webhook signature verification failed:', err.message)
    res.status(400).send(`Webhook Error: ${err.message}`)
    return
  }
  if (event.type === 'checkout.session.completed') {
    // This demo has no database — the frontend verifies payment itself via
    // GET /api/checkout-session/:id right after redirect. A production
    // build should treat this webhook as the real source of truth instead:
    // mark the order paid here, server-side, rather than trusting the client.
    console.log('checkout.session.completed:', event.data.object.id)
  }
  res.json({ received: true })
})

// Serve the built frontend (after `npm run build`), if present, so this
// single server can host the whole app in production.
const distDir = path.join(__dirname, '../dist')
app.use(express.static(distDir))
app.get(/^(?!\/api\/).*/, (req, res, next) => {
  res.sendFile(path.join(distDir, 'index.html'), (err) => {
    if (err) next()
  })
})

app.listen(PORT, () => {
  console.log(`Nova AI Academy server listening on http://localhost:${PORT}`)
  if (!stripe) {
    console.warn('STRIPE_SECRET_KEY is not set — checkout endpoints will return 500 until it is configured.')
  }
})
