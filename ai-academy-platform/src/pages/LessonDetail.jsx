import { Link, Navigate, useParams } from 'react-router-dom'
import { CheckCircle2, ChevronLeft, ChevronRight, Clock, FileText, Sparkles } from 'lucide-react'
import { courses } from '../data/courses'
import { useAppData } from '../context/AppDataContext'

export default function LessonDetail() {
  const { courseId, lessonId } = useParams()
  const { isLessonComplete, toggleLesson } = useAppData()
  const course = courses.find((c) => c.id === courseId)
  const lessonIndex = course?.lessons.findIndex((l) => l.id === lessonId) ?? -1
  const lesson = course?.lessons[lessonIndex]

  if (!course || !lesson) return <Navigate to="/app/classroom" replace />

  const done = isLessonComplete(course.id, lesson.id)
  const prev = course.lessons[lessonIndex - 1]
  const next = course.lessons[lessonIndex + 1]

  return (
    <div className="max-w-2xl mx-auto">
      <Link to="/app/classroom" className="text-slate-400 hover:text-white text-sm flex items-center gap-1 mb-4">
        <ChevronLeft size={16} /> Back to classroom
      </Link>

      <p className="text-brand-400 text-xs font-semibold uppercase tracking-wide mb-1">{course.title}</p>
      <h1 className="text-white text-2xl font-bold mb-2">{lesson.title}</h1>
      <p className="flex items-center gap-1.5 text-slate-500 text-xs mb-6">
        <Clock size={13} /> ~{lesson.minutes} min read
      </p>

      {lesson.overview && (
        <p className="text-slate-200 text-base leading-relaxed mb-6">{lesson.overview}</p>
      )}

      {lesson.steps && lesson.steps.length > 0 && (
        <div className="mb-6">
          <h2 className="text-white font-bold text-sm uppercase tracking-wide mb-3">Steps</h2>
          <ol className="space-y-2">
            {lesson.steps.map((step, i) => (
              <li key={i} className="flex gap-3 bg-panel border border-white/10 rounded-lg p-3">
                <span className="shrink-0 w-6 h-6 rounded-full bg-brand-500/20 text-brand-400 grid place-items-center text-xs font-bold">
                  {i + 1}
                </span>
                <span className="text-slate-300 text-sm">{step}</span>
              </li>
            ))}
          </ol>
        </div>
      )}

      {lesson.takeaways && lesson.takeaways.length > 0 && (
        <div className="mb-6">
          <h2 className="text-white font-bold text-sm uppercase tracking-wide mb-3 flex items-center gap-2">
            <Sparkles size={15} className="text-magenta-400" /> Key Takeaways
          </h2>
          <ul className="space-y-2">
            {lesson.takeaways.map((t, i) => (
              <li
                key={i}
                className="text-slate-300 text-sm bg-magenta-500/5 border border-magenta-500/20 rounded-lg p-3"
              >
                {t}
              </li>
            ))}
          </ul>
        </div>
      )}

      {lesson.resources && lesson.resources.length > 0 && (
        <div className="mb-6">
          <h2 className="text-white font-bold text-sm uppercase tracking-wide mb-3">Resources</h2>
          <ul className="space-y-2">
            {lesson.resources.map((r) => (
              <li
                key={r}
                className="flex items-center gap-2 text-sm text-slate-300 bg-panel border border-white/10 rounded-lg p-3"
              >
                <FileText size={16} className="text-brand-400 shrink-0" /> {r}
              </li>
            ))}
          </ul>
        </div>
      )}

      <button
        onClick={() => toggleLesson(course.id, lesson.id)}
        className={`flex items-center gap-2 px-4 py-2.5 rounded-md font-bold transition mb-8 ${
          done
            ? 'bg-brand-500/20 text-brand-400 border border-brand-400'
            : 'bg-brand-500 hover:bg-brand-600 text-ink'
        }`}
      >
        <CheckCircle2 size={18} />
        {done ? 'Marked complete' : 'Mark as complete'}
      </button>

      <div className="flex items-center justify-between border-t border-white/10 pt-4">
        {prev ? (
          <Link
            to={`/app/classroom/${course.id}/${prev.id}`}
            className="text-sm text-slate-400 hover:text-white flex items-center gap-1"
          >
            <ChevronLeft size={16} /> {prev.title}
          </Link>
        ) : (
          <span />
        )}
        {next ? (
          <Link
            to={`/app/classroom/${course.id}/${next.id}`}
            className="text-sm text-slate-400 hover:text-white flex items-center gap-1 ml-auto"
          >
            {next.title} <ChevronRight size={16} />
          </Link>
        ) : (
          <span />
        )}
      </div>
    </div>
  )
}
