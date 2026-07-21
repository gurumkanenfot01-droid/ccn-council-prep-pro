import { NavLink, Outlet, useNavigate } from 'react-router-dom'
import { LogOut } from 'lucide-react'
import Logo from './Logo'
import { useAuth } from '../context/AuthContext'

const tabs = [
  { to: 'community', label: 'Community' },
  { to: 'classroom', label: 'Classroom' },
  { to: 'calendar', label: 'Calendar' },
  { to: 'members', label: 'Members' },
  { to: 'leaderboard', label: 'Leaderboard' },
]

export default function AppShell() {
  const { user, logout } = useAuth()
  const navigate = useNavigate()

  function handleLogout() {
    logout()
    navigate('/')
  }

  return (
    <div className="min-h-screen bg-ink">
      <header className="border-b border-white/10 bg-panel">
        <div className="max-w-5xl mx-auto px-4 py-3 flex items-center justify-between">
          <Logo size="sm" />
          <div className="flex items-center gap-3">
            <span className="text-sm text-slate-300 hidden sm:inline">Hi, {user?.name}</span>
            <button
              onClick={handleLogout}
              className="flex items-center gap-1 text-sm text-slate-300 hover:text-white border border-white/10 rounded-full px-3 py-1.5 transition"
            >
              <LogOut size={14} /> Log out
            </button>
          </div>
        </div>
        <nav className="max-w-5xl mx-auto px-4 flex gap-1 overflow-x-auto">
          {tabs.map((tab) => (
            <NavLink
              key={tab.to}
              to={tab.to}
              className={({ isActive }) =>
                `px-4 py-2.5 text-sm font-semibold border-b-2 whitespace-nowrap transition ${
                  isActive
                    ? 'border-brand-400 text-white'
                    : 'border-transparent text-slate-400 hover:text-white'
                }`
              }
            >
              {tab.label}
            </NavLink>
          ))}
        </nav>
      </header>
      <main className="max-w-5xl mx-auto px-4 py-6">
        <Outlet />
      </main>
    </div>
  )
}
