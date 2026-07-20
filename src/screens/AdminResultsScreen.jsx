import { useEffect, useState } from "react";
import { BarChart3, ChevronLeft, Search } from "lucide-react";
import { Card, SectionHeader, EmptyState, useApp } from "../ui/kit.jsx";
import { supabase } from "../lib/supabase.js";

export default function AdminResultsScreen() {
  const { t } = useApp();
  const [rows, setRows] = useState([]);
  const [loading, setLoading] = useState(true);
  const [query, setQuery] = useState("");
  const [selected, setSelected] = useState(null); // user_id or null
  const [attempts, setAttempts] = useState([]);
  const [attemptsLoading, setAttemptsLoading] = useState(false);

  useEffect(() => {
    (async () => {
      const { data, error } = await supabase
        .from("admin_user_stats")
        .select("user_id, name, email, role, disabled, attempt_count, avg_pct, last_active")
        .order("last_active", { ascending: false, nullsFirst: false });
      if (!error && data) setRows(data);
      setLoading(false);
    })();
  }, []);

  async function openUser(row) {
    setSelected(row);
    setAttemptsLoading(true);
    const { data } = await supabase
      .from("attempts")
      .select("taken_at, total, correct, pct, time_sec, category")
      .eq("user_id", row.user_id)
      .order("taken_at", { ascending: false })
      .limit(50);
    setAttempts(data || []);
    setAttemptsLoading(false);
  }

  const filtered = rows.filter(r =>
    query.length < 2 || (r.name || "").toLowerCase().includes(query.toLowerCase()) || (r.email || "").toLowerCase().includes(query.toLowerCase())
  );

  if (selected) {
    return (
      <div className="fade-in">
        <SectionHeader icon={BarChart3} title={selected.name || selected.email}
          action={<button onClick={() => setSelected(null)} className="press" style={{ display: "flex", alignItems: "center", gap: 6, background: "none", border: "none", cursor: "pointer", color: t.textMuted, fontSize: 13, fontWeight: 700 }}><ChevronLeft size={16} /> Back</button>} />
        <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(140px, 1fr))", gap: 12, marginBottom: 20 }}>
          <Card style={{ padding: 16 }}>
            <div style={{ fontSize: 20, fontWeight: 700, color: t.text }}>{selected.attempt_count}</div>
            <div style={{ fontSize: 12, color: t.textMuted }}>Exams Taken</div>
          </Card>
          <Card style={{ padding: 16 }}>
            <div style={{ fontSize: 20, fontWeight: 700, color: t.text }}>{selected.avg_pct != null ? `${selected.avg_pct}%` : "—"}</div>
            <div style={{ fontSize: 12, color: t.textMuted }}>Average Score</div>
          </Card>
        </div>

        {attemptsLoading ? (
          <div style={{ padding: 20, textAlign: "center", color: t.textMuted, fontSize: 13.5 }}>Loading...</div>
        ) : attempts.length === 0 ? (
          <EmptyState icon={BarChart3} text="No attempts yet" />
        ) : (
          <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
            {attempts.map((a, i) => (
              <Card key={i} style={{ padding: 14, display: "flex", justifyContent: "space-between", alignItems: "center" }}>
                <div>
                  <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text }}>{a.category || "Mixed"}</div>
                  <div style={{ fontSize: 11.5, color: t.textFaint }}>{new Date(a.taken_at).toLocaleString()}</div>
                </div>
                <div style={{ textAlign: "right" }}>
                  <div style={{ fontSize: 15, fontWeight: 700, color: a.pct >= 50 ? t.emerald : t.red }}>{a.pct}%</div>
                  <div style={{ fontSize: 11.5, color: t.textFaint }}>{a.correct}/{a.total}</div>
                </div>
              </Card>
            ))}
          </div>
        )}
      </div>
    );
  }

  return (
    <div className="fade-in">
      <SectionHeader icon={BarChart3} title="All Users Results" />
      <div style={{ display: "flex", alignItems: "center", gap: 8, border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: "9px 12px", background: t.bgAlt, marginBottom: 16, maxWidth: 340 }}>
        <Search size={14} color={t.textFaint} />
        <input value={query} onChange={e => setQuery(e.target.value)} placeholder="Search by name or email..."
          style={{ border: "none", outline: "none", background: "transparent", fontSize: 13.5, color: t.text, width: "100%" }} />
      </div>

      {loading ? (
        <div style={{ padding: 30, textAlign: "center", color: t.textMuted, fontSize: 13.5 }}>Loading...</div>
      ) : filtered.length === 0 ? (
        <EmptyState icon={BarChart3} text="No users found" />
      ) : (
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {filtered.map(row => (
            <Card key={row.user_id} hover onClick={() => openUser(row)} style={{ padding: 14, display: "flex", justifyContent: "space-between", alignItems: "center" }}>
              <div style={{ minWidth: 0 }}>
                <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text, display: "flex", alignItems: "center", gap: 6 }}>
                  {row.name || "(no name)"}
                  {row.role === "admin" && <span style={{ fontSize: 10, fontWeight: 700, color: t.navy, background: t.navySoft, padding: "2px 6px", borderRadius: 6 }}>ADMIN</span>}
                  {row.disabled && <span style={{ fontSize: 10, fontWeight: 700, color: t.red, background: t.redSoft, padding: "2px 6px", borderRadius: 6 }}>DISABLED</span>}
                </div>
                <div style={{ fontSize: 12, color: t.textFaint }}>{row.email}</div>
              </div>
              <div style={{ textAlign: "right", flexShrink: 0 }}>
                <div style={{ fontSize: 15, fontWeight: 700, color: t.text }}>{row.avg_pct != null ? `${row.avg_pct}%` : "—"}</div>
                <div style={{ fontSize: 11.5, color: t.textFaint }}>{row.attempt_count} exam{row.attempt_count === 1 ? "" : "s"}</div>
              </div>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
}
