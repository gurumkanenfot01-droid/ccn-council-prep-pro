import { Link } from 'react-router-dom'
import { XCircle } from 'lucide-react'
import Logo from '../components/Logo'

export default function CheckoutCancel() {
  return (
    <div className="min-h-screen bg-ink flex flex-col items-center justify-center px-4">
      <Link to="/" className="mb-8">
        <Logo />
      </Link>
      <div className="bg-panel border border-white/10 rounded-xl p-6 w-full max-w-sm text-center">
        <XCircle className="text-slate-500 mx-auto mb-3" size={32} />
        <h1 className="text-white text-xl font-bold mb-2">Checkout canceled</h1>
        <p className="text-slate-400 text-sm mb-6">No charge was made. You can pick up where you left off any time.</p>
        <Link
          to="/"
          className="block w-full bg-brand-500 hover:bg-brand-600 text-ink font-bold py-2.5 rounded-md transition"
        >
          Back to pricing
        </Link>
      </div>
    </div>
  )
}
