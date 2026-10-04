import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import ErrorBoundary from './ErrorBoundary.jsx'
import { loadCourse } from './data/course.js'

// Match the saved light/night choice before anything is drawn.
try {
  const saved = JSON.parse(localStorage.getItem('aitc-theme') || 'null')
  const theme = saved || (window.matchMedia?.('(prefers-color-scheme: dark)').matches ? 'dark' : 'light')
  document.documentElement.dataset.theme = theme
} catch { /* ignore */ }

const root = createRoot(document.getElementById('root'))

root.render(
  <div style={{ minHeight: '100vh', display: 'grid', placeItems: 'center', textAlign: 'center', padding: 24 }}>
    <div>
      <div className="logo-mark" style={{ width: 64, height: 64, margin: '0 auto 16px', fontSize: 30 }}>🤖</div>
      <div className="h2">Loading your class…</div>
    </div>
  </div>,
)

loadCourse()
  .then(() => {
    root.render(
      <StrictMode>
        <ErrorBoundary>
          <App />
        </ErrorBoundary>
      </StrictMode>,
    )
  })
  .catch(err => {
    console.error('Could not load the class content:', err)
    root.render(
      <div style={{ minHeight: '100vh', display: 'grid', placeItems: 'center', textAlign: 'center', padding: 24 }}>
        <div style={{ maxWidth: 380 }}>
          <div style={{ fontSize: 44 }}>📡</div>
          <div className="h2" style={{ margin: '10px 0' }}>We could not load the lessons</div>
          <div className="muted" style={{ marginBottom: 18 }}>Check your internet and try again. After the first visit, the class also works offline.</div>
          <button className="btn primary" onClick={() => window.location.reload()}>Try again</button>
        </div>
      </div>,
    )
  })

if ('serviceWorker' in navigator && import.meta.env.PROD) {
  window.addEventListener('load', () => {
    navigator.serviceWorker.register('/sw.js')
  })
}
