import { useEffect, useState } from "react";
import { User, Search, Mail, ShieldCheck, Ban, RotateCcw, Trash2 } from "lucide-react";
import { Card, SectionHeader, EmptyState, Button, useApp } from "../ui/kit.jsx";
import { supabase } from "../lib/supabase.js";

export default function AdminUsersScreen() {
  const { t, userId: myId } = useApp();
  const [rows, setRows] = useState([]);
  const [loading, setLoading] = useState(true);
  const [query, setQuery] = useState("");
  const [busyId, setBusyId] = useState(null);
  const [notice, setNotice] = useState("");

  async function load() {
    setLoading(true);
    const { data, error } = await supabase
      .from("profiles")
      .select("id, name, email, role, disabled")
      .order("name");
    if (!error && data) setRows(data);
    setLoading(false);
  }

  useEffect(() => { load(); }, []);

  async function toggleDisabled(row) {
    setBusyId(row.id);
    await supabase.from("profiles").update({ disabled: !row.disabled }).eq("id", row.id);
    setBusyId(null);
    load();
  }

  async function toggleRole(row) {
    setBusyId(row.id);
    await supabase.from("profiles").update({ role: row.role === "admin" ? "user" : "admin" }).eq("id", row.id);
    setBusyId(null);
    load();
  }

  async function sendReset(row) {
    setBusyId(row.id);
    const { error } = await supabase.auth.resetPasswordForEmail(row.email, { redirectTo: window.location.origin });
    setBusyId(null);
    setNotice(error ? `Failed to email ${row.email}` : `Password reset email sent to ${row.email}`);
    setTimeout(() => setNotice(""), 3500);
  }

  async function wipeProgress(row) {
    if (!confirm(`Wipe all exam history, bookmarks, and wrong-answer tracking for ${row.name || row.email}? This cannot be undone.`)) return;
    setBusyId(row.id);
    await Promise.all([
      supabase.from("attempts").delete().eq("user_id", row.id),
      supabase.from("bookmarks").delete().eq("user_id", row.id),
      supabase.from("wrong_bank").delete().eq("user_id", row.id),
    ]);
    setBusyId(null);
    setNotice(`Progress wiped for ${row.name || row.email}`);
    setTimeout(() => setNotice(""), 3500);
  }

  const filtered = rows.filter(r =>
    query.length < 2 || (r.name || "").toLowerCase().includes(query.toLowerCase()) || (r.email || "").toLowerCase().includes(query.toLowerCase())
  );

  return (
    <div className="fade-in">
      <SectionHeader icon={User} title="Manage Users" />
      <div style={{ display: "flex", alignItems: "center", gap: 8, border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: "9px 12px", background: t.bgAlt, marginBottom: 12, maxWidth: 340 }}>
        <Search size={14} color={t.textFaint} />
        <input value={query} onChange={e => setQuery(e.target.value)} placeholder="Search by name or email..."
          style={{ border: "none", outline: "none", background: "transparent", fontSize: 13.5, color: t.text, width: "100%" }} />
      </div>
      {notice && <div style={{ fontSize: 13, color: t.emerald, fontWeight: 600, marginBottom: 12 }}>{notice}</div>}

      {loading ? (
        <div style={{ padding: 30, textAlign: "center", color: t.textMuted, fontSize: 13.5 }}>Loading...</div>
      ) : filtered.length === 0 ? (
        <EmptyState icon={User} text="No users found" />
      ) : (
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {filtered.map(row => (
            <Card key={row.id} style={{ padding: 14 }}>
              <div style={{ display: "flex", justifyContent: "space-between", alignItems: "flex-start", flexWrap: "wrap", gap: 10 }}>
                <div style={{ minWidth: 0 }}>
                  <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text, display: "flex", alignItems: "center", gap: 6 }}>
                    {row.name || "(no name)"}
                    {row.role === "admin" && <span style={{ fontSize: 10, fontWeight: 700, color: t.navy, background: t.navySoft, padding: "2px 6px", borderRadius: 6 }}>ADMIN</span>}
                    {row.disabled && <span style={{ fontSize: 10, fontWeight: 700, color: t.red, background: t.redSoft, padding: "2px 6px", borderRadius: 6 }}>DISABLED</span>}
                    {row.id === myId && <span style={{ fontSize: 10, fontWeight: 700, color: t.textFaint }}>(you)</span>}
                  </div>
                  <div style={{ fontSize: 12, color: t.textFaint }}>{row.email}</div>
                </div>
                <div style={{ display: "flex", gap: 6, flexWrap: "wrap" }}>
                  <Button size="sm" variant="ghost" icon={Mail} disabled={busyId === row.id} onClick={() => sendReset(row)}>Reset Password</Button>
                  <Button size="sm" variant="ghost" icon={ShieldCheck} disabled={busyId === row.id || row.id === myId} onClick={() => toggleRole(row)}>
                    {row.role === "admin" ? "Demote" : "Make Admin"}
                  </Button>
                  <Button size="sm" variant="ghost" icon={row.disabled ? RotateCcw : Ban} disabled={busyId === row.id || row.id === myId} onClick={() => toggleDisabled(row)}>
                    {row.disabled ? "Enable" : "Disable"}
                  </Button>
                  <Button size="sm" variant="ghost" icon={Trash2} disabled={busyId === row.id} onClick={() => wipeProgress(row)}>Wipe Progress</Button>
                </div>
              </div>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
}
