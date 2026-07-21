import { Link } from 'react-router-dom'
import { Check, Quote } from 'lucide-react'
import Logo from '../components/Logo'
import ModuleCard from '../components/ModuleCard'
import { courses } from '../data/courses'
import { testimonials } from '../data/testimonials'

export default function Landing() {
  return (
    <div className="min-h-screen bg-magenta-500 text-ink">
      <header className="sticky top-0 z-10 bg-magenta-500/95 backdrop-blur border-b border-black/10">
        <div className="max-w-5xl mx-auto px-4 py-3 flex items-center justify-between">
          <Logo light />
          <Link
            to="/signup"
            className="bg-ink text-white text-sm font-semibold px-4 py-2 rounded-full hover:bg-black transition"
          >
            Join Now
          </Link>
        </div>
      </header>

      <main className="max-w-5xl mx-auto px-4 pb-24">
        <section className="text-center pt-10 pb-8">
          <Logo size="lg" light />
        </section>

        <section className="text-center">
          <h1 className="font-display text-4xl sm:text-5xl font-bold">Nova AI Academy</h1>
          <p className="mt-4 text-3xl sm:text-4xl font-display font-bold">
            <span className="text-white drop-shadow-sm">$245</span>{' '}
            <span className="line-through text-black/40">$300</span>
          </p>
          <h2 className="mt-6 text-2xl sm:text-3xl font-extrabold leading-tight">
            Two Choices: You Either Master AI, or Get Left Behind By It.
          </h2>
          <Link
            to="/signup"
            className="inline-block mt-8 bg-ink text-white font-semibold px-8 py-3 rounded-full hover:bg-black transition"
          >
            Enroll Now
          </Link>
        </section>

        <section className="mt-14">
          <div className="bg-ink text-white text-center font-display font-bold text-lg py-3 rounded-md">
            Sneak Peek Of What&rsquo;s Inside
          </div>
          <div className="grid sm:grid-cols-2 md:grid-cols-3 gap-4 mt-4">
            {courses.map((c) => (
              <ModuleCard key={c.id} course={c} />
            ))}
          </div>
        </section>

        <section className="mt-14 text-center">
          <div className="bg-ink text-white font-display font-bold text-lg py-3 rounded-md">
            Our Motto: Building Wealth With AI
          </div>
        </section>

        <section className="mt-6">
          <div className="bg-ink text-white text-center font-display font-bold text-lg py-3 rounded-md mb-4">
            About Us
          </div>
          <p className="text-center text-lg leading-relaxed max-w-2xl mx-auto">
            Nova AI Academy is your all-in-one roadmap to mastering highly demanded, practical,
            income-generating AI skills. No fluff &mdash; just practical steps and results.
          </p>
        </section>

        <section className="mt-14">
          <div className="bg-ink text-white text-center font-display font-bold text-lg py-3 rounded-md mb-6">
            What You Will Get
          </div>
          <blockquote className="text-center italic text-lg max-w-xl mx-auto mb-8">
            &ldquo;The goal isn&rsquo;t just to learn AI &mdash; it&rsquo;s to position yourself
            at the top of the market before it gets crowded.&rdquo;
          </blockquote>
          <ul className="space-y-4 max-w-xl mx-auto">
            {[
              {
                title: 'Zero-Code Focus',
                body: 'You don’t need a computer science degree to train AI or build AI products that pay you while you sleep.',
              },
              {
                title: 'Hands-on courses',
                body: 'Every module converts to income upon implementation, not just theory.',
              },
              {
                title: 'Direct monetization',
                body: 'Every skill taught is tied to a specific way to make a high-paying profit.',
              },
            ].map((item) => (
              <li key={item.title} className="flex gap-3 bg-white/70 rounded-lg p-4">
                <Check className="shrink-0 text-brand-700 mt-1" size={22} />
                <p>
                  <span className="font-bold">{item.title}:</span> {item.body}
                </p>
              </li>
            ))}
          </ul>
        </section>

        <section className="mt-14">
          <div className="bg-ink text-white text-center font-display font-bold text-lg py-3 rounded-md mb-6">
            Testimonials
          </div>
          <div className="grid sm:grid-cols-3 gap-4">
            {testimonials.map((t) => (
              <div key={t.name} className="bg-white rounded-xl p-5 shadow-lg">
                <Quote className="text-brand-500 mb-2" size={22} />
                <p className="font-bold mb-1">{t.headline}</p>
                <p className="text-sm text-slate-600 mb-3">{t.body}</p>
                <p className="text-xs font-semibold text-slate-400 uppercase">{t.name}</p>
              </div>
            ))}
          </div>
          <p className="text-center text-xs text-black/50 mt-4">
            Illustrative testimonials for demo purposes.
          </p>
        </section>

        <section className="mt-16 text-center">
          <h3 className="text-2xl font-display font-bold mb-4">
            Ready to build wealth with AI?
          </h3>
          <Link
            to="/signup"
            className="inline-block bg-ink text-white font-semibold px-8 py-3 rounded-full hover:bg-black transition"
          >
            Enroll Now &mdash; $245
          </Link>
        </section>
      </main>
    </div>
  )
}
