import { useEffect, useState } from "react";
import { isConfigured } from "./lib/supabase.js";
import StudentApp from "./student/StudentApp.jsx";
import AdminApp from "./admin/AdminApp.jsx";
import { useUpdateAvailable, reloadNow } from "./lib/update.js";

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

// Shown when a newer version of the site has gone live since this page opened.
function UpdateBar({ inExam }) {
  return (
    <div className="update-bar" role="status">
      <span style={{ flex: 1 }}>
        <strong>A new version of the Exam Room is available.</strong>{" "}
        {inExam ? "It refreshes by itself within 1 minute (or tap Refresh now). Your answers and time are saved — log in again and tap Continue exam." : "Tap Refresh to update."}
      </span>
      <button className="btn btn-sm btn-primary" onClick={reloadNow}>Refresh</button>
    </div>
  );
}

export default function App() {
  const route = useRoute();
  const updateReady = useUpdateAvailable();
  if (!isConfigured) {
    return (
      <main className="wrap narrow" style={{ paddingTop: 80, textAlign: "center" }}>
        <h1 className="serif">CCN Exam Room</h1>
        <p className="muted">This site isn’t connected to the database yet. Add VITE_SUPABASE_URL and VITE_SUPABASE_ANON_KEY in Vercel (see HOW_TO_GO_LIVE.md).</p>
      </main>
    );
  }
  return (
    <>
      {updateReady && <UpdateBar inExam={route === "student"} />}
      {route === "admin" ? <AdminApp /> : <StudentApp updateReady={updateReady} />}
    </>
  );
}
