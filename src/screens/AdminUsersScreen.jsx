import { useEffect, useState } from "react";
import { User, Search, Mail, ShieldCheck, Ban, RotateCcw, Trash2, Crown, XCircle } from "lucide-react";
import { Card, SectionHeader, EmptyState, Button, useApp } from "../ui/kit.jsx";
import { supabase } from "../lib/supabase.js";

export default function AdminUsersScreen() {
  const { t, userId: myId } = useApp();
  const [rows, setRows] = useState([]);
  const [loading, setLoading] = useState(true);
  const [query, setQuery] = useState("");
  const [busyId, setBusyId] = useState(null);
  const [notice, setNotice] = useState("");
  const [subs, setSubs] = useState({}); // user_id -> latest active expires_at
  const [grantPlan, setGrantPlan] = useState({}); // user_id -> "6month" | "1year"

  async function load() {
    setLoading(true);
    const { data, error } = await supabase
      .from("profiles")
      .select("id, name, email, role, disabled")
      .order("name");
    if (!error && data) setRows(data);
    const { data: subRows } = await supabase
      .from("subscriptions")
      .select("user_id, expires_at")
      .eq("status", "active")
      .gt("expires_at", new Date().toISOString());
    const latest = {};
    for (const s of subRows || []) {
      if (!latest[s.user_id] || s.expires_at > latest[s.user_id]) latest[s.user_id] = s.expires_at;
    }
    setSubs(latest);
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
    flash(error ? `Failed to email ${row.email}` : `Password reset email sent to ${row.email}`);
  }

  function flash(msg) {
    setNotice(msg);
    setTimeout(() => setNotice(""), 3500);
  }

  async function grantSubscription(row) {
    const plan = grantPlan[row.id] || "1year";
    const label = plan === "1year" ? "1 year" : "6 months";
    const who = row.name || row.email;
    const extra = subs[row.id] ? ` It will be added on top of their current access (until ${new Date(subs[row.id]).toLocaleDateString()}).` : "";
    if (!confirm(`Grant ${label} of paid access to ${who}?${extra}`)) return;
    setBusyId(row.id);
    const { data, error } = await supabase.rpc("admin_grant_subscription", { p_user_id: row.id, p_plan: plan });
    setBusyId(null);
    flash(error ? `Failed to grant subscription: ${error.message}` : `${who} now has paid access until ${new Date(data).toLocaleDateString()}`);
    if (!error) load();
  }

  async function revokeSubscription(row) {
    const who = row.name || row.email;
    if (!confirm(`Remove paid access for ${who}? They will lose access to subscriber content immediately.`)) return;
    setBusyId(row.id);
    const { error } = await supabase.rpc("admin_revoke_subscription", { p_user_id: row.id });
    setBusyId(null);
    flash(error ? `Failed to revoke subscription: ${error.message}` : `Paid access removed for ${who}`);
    if (!error) load();
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
    flash(`Progress wiped for ${row.name || row.email}`);
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
                    {subs[row.id] && <span style={{ fontSize: 10, fontWeight: 700, color: t.emerald, background: t.emeraldSoft, padding: "2px 6px", borderRadius: 6 }}>PAID · until {new Date(subs[row.id]).toLocaleDateString()}</span>}
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
                  <select value={grantPlan[row.id] || "1year"} disabled={busyId === row.id}
                    onChange={e => setGrantPlan(p => ({ ...p, [row.id]: e.target.value }))}
                    style={{ fontSize: 13, padding: "7px 8px", borderRadius: 12, border: `1px solid ${t.cardBorder}`, background: t.bgAlt, color: t.text }}>
                    <option value="1year">1 year</option>
                    <option value="6month">6 months</option>
                  </select>
                  <Button size="sm" variant="success" icon={Crown} disabled={busyId === row.id} onClick={() => grantSubscription(row)}>
                    {subs[row.id] ? "Extend Subscription" : "Grant Subscription"}
                  </Button>
                  {subs[row.id] && (
                    <Button size="sm" variant="ghost" icon={XCircle} disabled={busyId === row.id} onClick={() => revokeSubscription(row)}>Revoke Subscription</Button>
                  )}
                </div>
              </div>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
}
