import { Link, Navigate, useParams } from 'react-router-dom'
import { CheckCircle2, ChevronLeft, ChevronRight, PlayCircle } from 'lucide-react'
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
      <h1 className="text-white text-2xl font-bold mb-4">{lesson.title}</h1>

      <div
        className={`aspect-video rounded-xl bg-gradient-to-br ${course.color} flex items-center justify-center mb-4`}
      >
        <PlayCircle size={56} className="text-white/90" />
      </div>

      <p className="text-slate-300 text-sm mb-6">
        This is a placeholder lesson page (~{lesson.minutes} min). In a production build, this is
        where the lesson video, transcript, and downloadable resources would live.
      </p>

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
