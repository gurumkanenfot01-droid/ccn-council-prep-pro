import { useState } from 'react'
import { Heart, MessageCircle } from 'lucide-react'
import { useAppData } from '../context/AppDataContext'
import { useAuth } from '../context/AuthContext'

export default function Community() {
  const { posts, addPost, toggleLike, likedPosts } = useAppData()
  const { user } = useAuth()
  const [title, setTitle] = useState('')
  const [body, setBody] = useState('')

  function handleSubmit(e) {
    e.preventDefault()
    if (!title.trim() || !body.trim()) return
    addPost(title.trim(), body.trim())
    setTitle('')
    setBody('')
  }

  return (
    <div className="max-w-2xl mx-auto">
      <h1 className="text-white text-2xl font-bold mb-4">Community</h1>

      <form onSubmit={handleSubmit} className="bg-panel border border-white/10 rounded-xl p-4 mb-6">
        <p className="text-sm text-slate-400 mb-2">Share a win, question, or update, {user?.name?.split(' ')[0]}.</p>
        <input
          value={title}
          onChange={(e) => setTitle(e.target.value)}
          placeholder="Title"
          className="w-full mb-2 rounded-md bg-ink border border-white/10 px-3 py-2 text-white outline-none focus:border-brand-400"
        />
        <textarea
          value={body}
          onChange={(e) => setBody(e.target.value)}
          placeholder="What's on your mind?"
          rows={3}
          className="w-full mb-3 rounded-md bg-ink border border-white/10 px-3 py-2 text-white outline-none focus:border-brand-400 resize-none"
        />
        <button
          type="submit"
          className="bg-brand-500 hover:bg-brand-600 text-ink font-bold px-4 py-2 rounded-md transition"
        >
          Post
        </button>
      </form>

      <div className="space-y-4">
        {posts.map((post) => {
          const liked = likedPosts.includes(post.id)
          return (
            <article key={post.id} className="bg-panel border border-white/10 rounded-xl p-4">
              <div className="flex items-center gap-2 mb-2">
                <div className="w-8 h-8 rounded-full bg-brand-500/20 text-brand-400 grid place-items-center text-sm font-bold">
                  {post.author.charAt(0)}
                </div>
                <div>
                  <p className="text-white text-sm font-semibold">{post.author}</p>
                  <p className="text-slate-500 text-xs">{post.time}</p>
                </div>
              </div>
              <h3 className="text-white font-bold mb-1">{post.title}</h3>
              <p className="text-slate-300 text-sm mb-3">{post.body}</p>
              <div className="flex items-center gap-4 text-sm">
                <button
                  onClick={() => toggleLike(post.id)}
                  className={`flex items-center gap-1 transition ${
                    liked ? 'text-magenta-400' : 'text-slate-400 hover:text-magenta-400'
                  }`}
                >
                  <Heart size={16} fill={liked ? 'currentColor' : 'none'} /> {post.likes}
                </button>
                <span className="flex items-center gap-1 text-slate-400">
                  <MessageCircle size={16} /> {post.comments}
                </span>
              </div>
            </article>
          )
        })}
      </div>
    </div>
  )
}
