import { members } from '../data/members'
import { useAuth } from '../context/AuthContext'

const roleColor = {
  Founder: 'bg-magenta-500/20 text-magenta-400',
  Mentor: 'bg-brand-500/20 text-brand-400',
  Member: 'bg-white/10 text-slate-300',
}

export default function Members() {
  const { user } = useAuth()
  const all = [{ id: 'you', name: user?.name ?? 'You', role: 'Member', joined: 'Today', isYou: true }, ...members]

  return (
    <div>
      <h1 className="text-white text-2xl font-bold mb-4">Members</h1>
      <p className="text-slate-400 text-sm mb-6">{all.length} people in the academy</p>
      <div className="grid sm:grid-cols-2 md:grid-cols-3 gap-3">
        {all.map((m) => (
          <div
            key={m.id}
            className={`bg-panel border rounded-xl p-4 flex items-center gap-3 ${
              m.isYou ? 'border-brand-400' : 'border-white/10'
            }`}
          >
            <div className="w-10 h-10 rounded-full bg-brand-500/20 text-brand-400 grid place-items-center font-bold shrink-0">
              {m.name.charAt(0)}
            </div>
            <div className="min-w-0">
              <p className="text-white text-sm font-semibold truncate">
                {m.name} {m.isYou && <span className="text-brand-400">(you)</span>}
              </p>
              <span className={`inline-block text-xs px-2 py-0.5 rounded-full mt-1 ${roleColor[m.role]}`}>
                {m.role}
              </span>
            </div>
          </div>
        ))}
      </div>
    </div>
  )
}
