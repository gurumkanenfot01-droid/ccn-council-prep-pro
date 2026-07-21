export default function ModuleCard({ course }) {
  const totalMinutes = course.lessons.reduce((n, l) => n + l.minutes, 0)
  return (
    <div className="rounded-xl overflow-hidden bg-white text-ink shadow-lg">
      <div className={`h-24 bg-gradient-to-br ${course.color} flex items-center px-4`}>
        <p className="font-display font-bold text-white text-lg leading-tight drop-shadow">
          {course.title}
        </p>
      </div>
      <div className="p-4">
        <p className="text-sm text-slate-600 mb-3">{course.blurb}</p>
        <p className="text-xs font-semibold text-slate-400 uppercase tracking-wide">
          {course.lessons.length} lessons &middot; {totalMinutes} min
        </p>
      </div>
    </div>
  )
}
