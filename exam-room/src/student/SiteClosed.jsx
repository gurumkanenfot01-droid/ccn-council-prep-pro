import { useEffect, useState } from "react";
import { Lock } from "lucide-react";
import { api } from "../lib/api.js";

// The administrator can close the student site for a while (Students page).
// Checked on open and every 30 s, so it closes / reopens by itself.
export function useSiteClosed() {
  const [status, setStatus] = useState(null); // null = checking
  useEffect(() => {
    let alive = true;
    const check = () => api.siteStatus().then(r => { if (alive) setStatus(r || { closed: false }); });
    check();
    const t = setInterval(check, 30000);
    return () => { alive = false; clearInterval(t); };
  }, []);
  return status;
}

export default function SiteClosed({ message }) {
  return (
    <main className="wrap" style={{ minHeight: "100vh", display: "flex", alignItems: "center" }}>
      <div className="narrow" style={{ width: "100%", textAlign: "center" }}>
        <div className="brand-mark" style={{ margin: "0 auto 12px", width: 56, height: 56, borderRadius: 16 }}><Lock size={26} /></div>
        <h1 className="serif" style={{ fontSize: 24, margin: "0 0 8px" }}>Nursing Exam Room</h1>
        <div className="card" style={{ fontSize: 16, fontWeight: 600 }}>
          {message || "The exam site is closed for now. Please check back later."}
        </div>
      </div>
    </main>
  );
}
