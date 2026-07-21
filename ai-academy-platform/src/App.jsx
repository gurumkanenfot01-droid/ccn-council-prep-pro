import { Navigate, Route, Routes } from 'react-router-dom'
import { AuthProvider, useAuth } from './context/AuthContext'
import { AppDataProvider } from './context/AppDataContext'
import Landing from './pages/Landing'
import Login from './pages/Login'
import Signup from './pages/Signup'
import CheckoutSuccess from './pages/CheckoutSuccess'
import CheckoutCancel from './pages/CheckoutCancel'
import AppShell from './components/AppShell'
import Community from './pages/Community'
import Classroom from './pages/Classroom'
import LessonDetail from './pages/LessonDetail'
import Calendar from './pages/Calendar'
import Members from './pages/Members'
import Leaderboard from './pages/Leaderboard'

function RequireAuth({ children }) {
  const { user, ready } = useAuth()
  if (!ready) return null
  if (!user) return <Navigate to="/login" replace />
  return children
}

function AppRoutes() {
  return (
    <Routes>
      <Route path="/" element={<Landing />} />
      <Route path="/login" element={<Login />} />
      <Route path="/signup" element={<Signup />} />
      <Route path="/checkout/success" element={<CheckoutSuccess />} />
      <Route path="/checkout/cancel" element={<CheckoutCancel />} />
      <Route
        path="/app"
        element={
          <RequireAuth>
            <AppDataProvider>
              <AppShell />
            </AppDataProvider>
          </RequireAuth>
        }
      >
        <Route index element={<Navigate to="community" replace />} />
        <Route path="community" element={<Community />} />
        <Route path="classroom" element={<Classroom />} />
        <Route path="classroom/:courseId/:lessonId" element={<LessonDetail />} />
        <Route path="calendar" element={<Calendar />} />
        <Route path="members" element={<Members />} />
        <Route path="leaderboard" element={<Leaderboard />} />
      </Route>
      <Route path="*" element={<Navigate to="/" replace />} />
    </Routes>
  )
}

export default function App() {
  return (
    <AuthProvider>
      <AppRoutes />
    </AuthProvider>
  )
}
