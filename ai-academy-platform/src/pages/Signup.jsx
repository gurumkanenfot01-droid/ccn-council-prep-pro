import { useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import Logo from '../components/Logo'
import { useAuth } from '../context/AuthContext'

export default function Signup() {
  const { signup } = useAuth()
  const navigate = useNavigate()
  const [name, setName] = useState('')
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [error, setError] = useState('')

  function handleSubmit(e) {
    e.preventDefault()
    setError('')
    if (!name.trim() || !email.trim() || password.length < 4) {
      setError('Please fill every field. Password must be at least 4 characters.')
      return
    }
    const res = signup(name.trim(), email.trim().toLowerCase(), password)
    if (!res.ok) {
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
      <form
        onSubmit={handleSubmit}
        className="bg-panel border border-white/10 rounded-xl p-6 w-full max-w-sm"
      >
        <h1 className="text-white text-xl font-bold mb-1">Create your account</h1>
        <p className="text-slate-400 text-sm mb-5">Join the academy and start learning.</p>
        {error && (
          <p className="bg-red-500/10 text-red-400 text-sm rounded-md px-3 py-2 mb-4">{error}</p>
        )}
        <label className="block text-sm text-slate-300 mb-1">Name</label>
        <input
          className="w-full mb-4 rounded-md bg-ink border border-white/10 px-3 py-2 text-white outline-none focus:border-brand-400"
          value={name}
          onChange={(e) => setName(e.target.value)}
          placeholder="Jordan Lee"
        />
        <label className="block text-sm text-slate-300 mb-1">Email</label>
        <input
          type="email"
          className="w-full mb-4 rounded-md bg-ink border border-white/10 px-3 py-2 text-white outline-none focus:border-brand-400"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          placeholder="you@example.com"
        />
        <label className="block text-sm text-slate-300 mb-1">Password</label>
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
          Create Account
        </button>
        <p className="text-slate-400 text-sm mt-4 text-center">
          Already a member?{' '}
          <Link to="/login" className="text-brand-400 hover:underline">
            Log in
          </Link>
        </p>
      </form>
    </div>
  )
}
