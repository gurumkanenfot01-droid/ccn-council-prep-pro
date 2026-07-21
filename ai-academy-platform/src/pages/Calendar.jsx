import { useMemo } from 'react'
import { CalendarDays } from 'lucide-react'

const events = [
  { day: 3, title: 'Live Q&A: Landing Your First AI Gig' },
  { day: 9, title: 'Workshop: Automation Workflow Clinic' },
  { day: 16, title: 'Office Hours with Mentors' },
  { day: 22, title: 'Live Build: Faceless Content Page' },
]

export default function Calendar() {
  const today = new Date()
  const year = today.getFullYear()
  const month = today.getMonth()

  const { weeks, monthLabel } = useMemo(() => {
    const first = new Date(year, month, 1)
    const daysInMonth = new Date(year, month + 1, 0).getDate()
    const startOffset = first.getDay()
    const cells = [...Array(startOffset).fill(null), ...Array.from({ length: daysInMonth }, (_, i) => i + 1)]
    while (cells.length % 7 !== 0) cells.push(null)
    const chunked = []
    for (let i = 0; i < cells.length; i += 7) chunked.push(cells.slice(i, i + 7))
    return {
      weeks: chunked,
      monthLabel: first.toLocaleDateString(undefined, { month: 'long', year: 'numeric' }),
    }
  }, [year, month])

  const eventDays = new Set(events.map((e) => e.day))

  return (
    <div className="max-w-2xl mx-auto">
      <h1 className="text-white text-2xl font-bold mb-4">Calendar</h1>

      <div className="bg-panel border border-white/10 rounded-xl p-4 mb-6">
        <p className="text-white font-semibold mb-3">{monthLabel}</p>
        <div className="grid grid-cols-7 text-center text-xs text-slate-500 mb-2">
          {['S', 'M', 'T', 'W', 'T', 'F', 'S'].map((d, i) => (
            <span key={i}>{d}</span>
          ))}
        </div>
        <div className="grid grid-cols-7 gap-1">
          {weeks.flat().map((day, i) => (
            <div
              key={i}
              className={`aspect-square grid place-items-center rounded-md text-sm ${
                day === null
                  ? ''
                  : day === today.getDate()
                    ? 'bg-brand-500 text-ink font-bold'
                    : eventDays.has(day)
                      ? 'bg-magenta-500/20 text-magenta-400 font-semibold'
                      : 'text-slate-300'
              }`}
            >
              {day}
            </div>
          ))}
        </div>
      </div>

      <h2 className="text-white font-semibold mb-3">Upcoming events</h2>
      <div className="space-y-2">
        {events.map((e) => (
          <div key={e.day} className="bg-panel border border-white/10 rounded-lg p-3 flex items-center gap-3">
            <div className="w-10 h-10 rounded-md bg-magenta-500/20 text-magenta-400 grid place-items-center shrink-0">
              <CalendarDays size={18} />
            </div>
            <div>
              <p className="text-white text-sm font-semibold">{e.title}</p>
              <p className="text-slate-500 text-xs">
                {new Date(year, month, e.day).toLocaleDateString(undefined, {
                  weekday: 'short',
                  month: 'short',
                  day: 'numeric',
                })}
              </p>
            </div>
          </div>
        ))}
      </div>
    </div>
  )
}
