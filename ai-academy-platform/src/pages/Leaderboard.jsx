import { Trophy } from 'lucide-react'
import { useAppData } from '../context/AppDataContext'
import { useAuth } from '../context/AuthContext'

const medalColor = ['text-yellow-400', 'text-slate-300', 'text-amber-600']

export default function Leaderboard() {
  const { leaderboard } = useAppData()
  const { user } = useAuth()

  return (
    <div className="max-w-xl mx-auto">
      <h1 className="text-white text-2xl font-bold mb-1">Leaderboard</h1>
      <p className="text-slate-400 text-sm mb-6">Points earned from lessons completed and posts shared.</p>
      <div className="bg-panel border border-white/10 rounded-xl divide-y divide-white/10">
        {leaderboard.map((m, i) => {
          const isYou = m.name === user?.name
          return (
            <div
              key={m.name}
              className={`flex items-center gap-3 px-4 py-3 ${isYou ? 'bg-brand-500/10' : ''}`}
            >
              <div className="w-8 text-center font-bold text-slate-400">
                {i < 3 ? <Trophy size={18} className={medalColor[i]} /> : i + 1}
              </div>
              <div className="w-8 h-8 rounded-full bg-brand-500/20 text-brand-400 grid place-items-center text-sm font-bold shrink-0">
                {m.name.charAt(0)}
              </div>
              <p className="flex-1 text-sm font-semibold text-white">
                {m.name} {isYou && <span className="text-brand-400">(you)</span>}
              </p>
              <p className="text-sm font-bold text-slate-300">{m.points} pts</p>
            </div>
          )
        })}
      </div>
    </div>
  )
}
