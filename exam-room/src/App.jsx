import { useEffect, useState } from "react";
import { isConfigured } from "./lib/supabase.js";
import StudentApp from "./student/StudentApp.jsx";
import AdminApp from "./admin/AdminApp.jsx";

// Students use the main page; admins open /#/admin.
function useRoute() {
  const [hash, setHash] = useState(window.location.hash);
  useEffect(() => {
    const on = () => setHash(window.location.hash);
    window.addEventListener("hashchange", on);
    return () => window.removeEventListener("hashchange", on);
  }, []);
  return hash.startsWith("#/admin") ? "admin" : "student";
}

export default function App() {
  const route = useRoute();
  if (!isConfigured) {
    return (
      <main className="wrap narrow" style={{ paddingTop: 80, textAlign: "center" }}>
        <h1 className="serif">CCN Exam Room</h1>
        <p className="muted">This site isn’t connected to the database yet. Add VITE_SUPABASE_URL and VITE_SUPABASE_ANON_KEY in Vercel (see HOW_TO_GO_LIVE.md).</p>
      </main>
    );
  }
  return route === "admin" ? <AdminApp /> : <StudentApp />;
}
