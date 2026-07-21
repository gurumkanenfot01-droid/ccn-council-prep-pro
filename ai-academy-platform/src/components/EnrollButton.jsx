import { useState } from 'react'
import { startCheckout } from '../lib/checkout'

export default function EnrollButton({ className, children }) {
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')

  async function handleClick() {
    setError('')
    setLoading(true)
    try {
      await startCheckout()
      // startCheckout redirects the browser on success; if we get here
      // without navigating away, something went wrong client-side.
    } catch (err) {
      setError(err.message)
      setLoading(false)
    }
  }

  return (
    <div className="inline-flex flex-col items-center gap-2">
      <button type="button" onClick={handleClick} disabled={loading} className={className}>
        {loading ? 'Redirecting to checkout...' : children}
      </button>
      {error && <p className="text-red-600 text-xs font-semibold max-w-xs text-center">{error}</p>}
    </div>
  )
}
