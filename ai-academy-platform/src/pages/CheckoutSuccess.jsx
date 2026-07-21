import { useEffect, useState } from 'react'
import { Link, useNavigate, useSearchParams } from 'react-router-dom'
import { CheckCircle2 } from 'lucide-react'
import Logo from '../components/Logo'
import { useAuth } from '../context/AuthContext'

function formatAmount(cents, currency) {
  if (cents == null) return null
  return new Intl.NumberFormat('en-US', { style: 'currency', currency: (currency || 'usd').toUpperCase() }).format(
    cents / 100,
  )
}

export default function CheckoutSuccess() {
  const [searchParams] = useSearchParams()
  const sessionId = searchParams.get('session_id')
  const { signup } = useAuth()
  const navigate = useNavigate()

  const [status, setStatus] = useState('checking') // checking | ready | already-exists | error
  const [error, setError] = useState('')
  const [session, setSession] = useState(null)
  const [name, setName] = useState('')
  const [password, setPassword] = useState('')

  useEffect(() => {
    if (!sessionId) {
      setStatus('error')
      setError('Missing checkout session — this page should only be reached after Stripe redirects you back.')
      return
    }
    fetch(`/api/checkout-session/${sessionId}`)
      .then((res) => res.json().then((body) => ({ ok: res.ok, body })))
      .then(({ ok, body }) => {
        if (!ok) {
          setStatus('error')
          setError(body.error || 'Could not verify your payment.')
          return
        }
        if (!body.paid) {
          setStatus('error')
          setError('This checkout has not completed payment yet.')
          return
        }
        setSession(body)
        setName(body.name || '')
        setStatus('ready')
      })
      .catch(() => {
        setStatus('error')
        setError('Could not verify your payment. If you were charged, contact support with your receipt.')
      })
  }, [sessionId])

  function handleSubmit(e) {
    e.preventDefault()
    if (!name.trim() || password.length < 4) {
      setError('Enter your name and a password of at least 4 characters.')
      return
    }
    const res = signup(name.trim(), session.email.toLowerCase(), password, {
      sessionId,
      amountTotal: session.amountTotal,
      currency: session.currency,
      purchasedAt: new Date().toISOString(),
    })
    if (!res.ok) {
      if (res.code === 'exists') {
        setStatus('already-exists')
        return
      }
      setError(res.error)
      return
    }
    navigate('/app/community')
  }

  return (
    <div className="min-h-screen bg-ink flex flex-col items-center justify-center px-4">
      <Link to="/" className="mb-8">
        <Logo />
      </Link>

      <div className="bg-panel border border-white/10 rounded-xl p-6 w-full max-w-sm">
        {status === 'checking' && <p className="text-slate-300 text-sm">Verifying your payment...</p>}

        {status === 'error' && (
          <>
            <h1 className="text-white text-xl font-bold mb-2">We hit a snag</h1>
            <p className="text-red-400 text-sm mb-4">{error}</p>
            <Link to="/" className="text-brand-400 text-sm hover:underline">
              Back to home
            </Link>
          </>
        )}

        {status === 'already-exists' && (
          <>
            <h1 className="text-white text-xl font-bold mb-2">You're already a member</h1>
            <p className="text-slate-300 text-sm mb-4">
              An account already exists for {session?.email}. Log in below to reach your dashboard.
            </p>
            <Link
              to="/login"
              className="block text-center w-full bg-brand-500 hover:bg-brand-600 text-ink font-bold py-2.5 rounded-md transition"
            >
              Log In
            </Link>
          </>
        )}

        {status === 'ready' && (
          <>
            <div className="flex items-center gap-2 mb-1 text-brand-400">
              <CheckCircle2 size={20} />
              <span className="text-sm font-semibold">Payment successful</span>
            </div>
            <p className="text-slate-400 text-sm mb-5">
              {formatAmount(session.amountTotal, session.currency)} charged. Set a password to secure your account —
              you'll use it to log back in.
            </p>
            {error && (
              <p className="bg-red-500/10 text-red-400 text-sm rounded-md px-3 py-2 mb-4">{error}</p>
            )}
            <form onSubmit={handleSubmit}>
              <label className="block text-sm text-slate-300 mb-1">Email</label>
              <input
                disabled
                value={session.email ?? ''}
                className="w-full mb-4 rounded-md bg-ink border border-white/10 px-3 py-2 text-slate-500"
              />
              <label className="block text-sm text-slate-300 mb-1">Name</label>
              <input
                className="w-full mb-4 rounded-md bg-ink border border-white/10 px-3 py-2 text-white outline-none focus:border-brand-400"
                value={name}
                onChange={(e) => setName(e.target.value)}
                placeholder="Jordan Lee"
              />
              <label className="block text-sm text-slate-300 mb-1">Create a password</label>
              <input
                type="password"
                className="w-full mb-6 rounded-md bg-ink border border-white/10 px-3 py-2 text-white outline-none focus:border-brand-400"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                placeholder="••••••••"
              />
              <button
                type="submit"
                className="w-full bg-brand-500 hover:bg-brand-600 text-ink font-bold py-2.5 rounded-md transition"
              >
                Access My Dashboard
              </button>
            </form>
          </>
        )}
      </div>
    </div>
  )
}
