// Redirects the browser to a Stripe-hosted Checkout page. The session is
// created server-side (server/index.js) because creating it requires the
// Stripe secret key, which must never be exposed to the browser.
export async function startCheckout() {
  const res = await fetch('/api/create-checkout-session', { method: 'POST' })
  const body = await res.json().catch(() => ({}))
  if (!res.ok) {
    throw new Error(body.error || 'Could not start checkout. Please try again.')
  }
  window.location.href = body.url
}
