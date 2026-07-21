import { Link } from 'react-router-dom'
import { CheckCircle2, Circle } from 'lucide-react'
import { courses } from '../data/courses'
import ProgressBar from '../components/ProgressBar'
import { useAppData } from '../context/AppDataContext'

export default function Classroom() {
  const { courseProgress, isLessonComplete, overallProgress } = useAppData()

  return (
    <div>
      <div className="flex items-center justify-between mb-1">
        <h1 className="text-white text-2xl font-bold">Classroom</h1>
        <span className="text-brand-400 font-semibold text-sm">{overallProgress}% complete</span>
      </div>
      <div className="mb-6">
        <ProgressBar value={overallProgress} dark />
      </div>

      <div className="space-y-3">
        {courses.map((course) => {
          const progress = courseProgress(course.id)
          return (
            <details
              key={course.id}
              className="bg-panel border border-white/10 rounded-xl overflow-hidden group"
              open={progress > 0 && progress < 100}
            >
              <summary className="cursor-pointer list-none px-4 py-3 flex items-center gap-3">
                <div className={`w-2 h-10 rounded-full bg-gradient-to-b ${course.color}`} />
                <div className="flex-1 min-w-0">
                  <p className="text-white font-semibold truncate">{course.title}</p>
                  <p className="text-slate-500 text-xs">{course.lessons.length} lessons</p>
                </div>
                <span className="text-xs font-bold text-slate-400 w-10 text-right">{progress}%</span>
              </summary>
              <div className="border-t border-white/10">
                <div className="px-4 pt-3">
                  <ProgressBar value={progress} dark />
                </div>
                <ul className="p-2">
                  {course.lessons.map((lesson) => {
                    const done = isLessonComplete(course.id, lesson.id)
                    return (
                      <li key={lesson.id}>
                        <Link
                          to={`/app/classroom/${course.id}/${lesson.id}`}
                          className="flex items-center gap-3 px-3 py-2.5 rounded-lg hover:bg-white/5 transition"
                        >
                          {done ? (
                            <CheckCircle2 size={18} className="text-brand-400 shrink-0" />
                          ) : (
                            <Circle size={18} className="text-slate-600 shrink-0" />
                          )}
                          <span className={`text-sm flex-1 ${done ? 'text-slate-400 line-through' : 'text-slate-200'}`}>
                            {lesson.title}
                          </span>
                          <span className="text-xs text-slate-500">{lesson.minutes} min</span>
                        </Link>
                      </li>
                    )
                  })}
                </ul>
              </div>
            </details>
          )
        })}
      </div>
    </div>
  )
}
