import { createContext, useContext, useEffect, useMemo, useState } from 'react'
import { courses, totalLessons } from '../data/courses'
import { seedPosts } from '../data/posts'
import { members as seedMembers } from '../data/members'
import { useAuth } from './AuthContext'

const AppDataContext = createContext(null)

function keyFor(email, suffix) {
  return `naa_${suffix}_${email}`
}

export function AppDataProvider({ children }) {
  const { user } = useAuth()
  const email = user?.email ?? 'guest'

  const [completed, setCompleted] = useState([])
  const [posts, setPosts] = useState(seedPosts)
  const [likedPosts, setLikedPosts] = useState([])

  useEffect(() => {
    try {
      setCompleted(JSON.parse(localStorage.getItem(keyFor(email, 'completed'))) ?? [])
    } catch {
      setCompleted([])
    }
    try {
      setLikedPosts(JSON.parse(localStorage.getItem(keyFor(email, 'liked'))) ?? [])
    } catch {
      setLikedPosts([])
    }
    try {
      const storedPosts = JSON.parse(localStorage.getItem('naa_posts'))
      setPosts(storedPosts ?? seedPosts)
    } catch {
      setPosts(seedPosts)
    }
  }, [email])

  function persistCompleted(next) {
    setCompleted(next)
    localStorage.setItem(keyFor(email, 'completed'), JSON.stringify(next))
  }

  function toggleLesson(courseId, lessonId) {
    const id = `${courseId}:${lessonId}`
    const next = completed.includes(id) ? completed.filter((c) => c !== id) : [...completed, id]
    persistCompleted(next)
  }

  function isLessonComplete(courseId, lessonId) {
    return completed.includes(`${courseId}:${lessonId}`)
  }

  function courseProgress(courseId) {
    const course = courses.find((c) => c.id === courseId)
    if (!course || course.lessons.length === 0) return 0
    const done = course.lessons.filter((l) => isLessonComplete(courseId, l.id)).length
    return Math.round((done / course.lessons.length) * 100)
  }

  const overallProgress = useMemo(
    () => (totalLessons === 0 ? 0 : Math.round((completed.length / totalLessons) * 100)),
    [completed],
  )

  function persistPosts(next) {
    setPosts(next)
    localStorage.setItem('naa_posts', JSON.stringify(next))
  }

  function addPost(title, body) {
    const newPost = {
      id: `p${Date.now()}`,
      author: user?.name ?? 'Guest',
      time: 'just now',
      title,
      body,
      likes: 0,
      comments: 0,
    }
    persistPosts([newPost, ...posts])
  }

  function toggleLike(postId) {
    const liked = likedPosts.includes(postId)
    const nextLiked = liked ? likedPosts.filter((id) => id !== postId) : [...likedPosts, postId]
    setLikedPosts(nextLiked)
    localStorage.setItem(keyFor(email, 'liked'), JSON.stringify(nextLiked))
    persistPosts(
      posts.map((p) => (p.id === postId ? { ...p, likes: p.likes + (liked ? -1 : 1) } : p)),
    )
  }

  const points = completed.length * 15 + posts.filter((p) => p.author === user?.name).length * 10

  const leaderboard = useMemo(() => {
    const base = seedMembers.map((m) => ({ name: m.name, points: m.points }))
    if (user) {
      const existing = base.find((m) => m.name === user.name)
      if (existing) existing.points = Math.max(existing.points, points)
      else base.push({ name: user.name, points })
    }
    return base.sort((a, b) => b.points - a.points)
  }, [user, points])

  const value = {
    completed,
    toggleLesson,
    isLessonComplete,
    courseProgress,
    overallProgress,
    posts,
    addPost,
    toggleLike,
    likedPosts,
    points,
    leaderboard,
  }

  return <AppDataContext.Provider value={value}>{children}</AppDataContext.Provider>
}

export function useAppData() {
  const ctx = useContext(AppDataContext)
  if (!ctx) throw new Error('useAppData must be used within AppDataProvider')
  return ctx
}
