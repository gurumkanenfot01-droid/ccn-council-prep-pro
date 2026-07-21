import { createContext, useContext, useEffect, useState } from 'react'

const AuthContext = createContext(null)

const USERS_KEY = 'naa_users'
const SESSION_KEY = 'naa_session'

function loadUsers() {
  try {
    return JSON.parse(localStorage.getItem(USERS_KEY)) ?? []
  } catch {
    return []
  }
}

function saveUsers(users) {
  localStorage.setItem(USERS_KEY, JSON.stringify(users))
}

export function AuthProvider({ children }) {
  const [user, setUser] = useState(null)
  const [ready, setReady] = useState(false)

  useEffect(() => {
    const email = localStorage.getItem(SESSION_KEY)
    if (email) {
      const found = loadUsers().find((u) => u.email === email)
      if (found) setUser(found)
    }
    setReady(true)
  }, [])

  function signup(name, email, password) {
    const users = loadUsers()
    if (users.some((u) => u.email === email)) {
      return { ok: false, error: 'An account with that email already exists.' }
    }
    const newUser = { name, email, password, joined: new Date().toISOString() }
    saveUsers([...users, newUser])
    localStorage.setItem(SESSION_KEY, email)
    setUser(newUser)
    return { ok: true }
  }

  function login(email, password) {
    const found = loadUsers().find((u) => u.email === email && u.password === password)
    if (!found) return { ok: false, error: 'Incorrect email or password.' }
    localStorage.setItem(SESSION_KEY, email)
    setUser(found)
    return { ok: true }
  }

  function logout() {
    localStorage.removeItem(SESSION_KEY)
    setUser(null)
  }

  return (
    <AuthContext.Provider value={{ user, ready, signup, login, logout }}>
      {children}
    </AuthContext.Provider>
  )
}

export function useAuth() {
  const ctx = useContext(AuthContext)
  if (!ctx) throw new Error('useAuth must be used within AuthProvider')
  return ctx
}
