import { useEffect, useMemo, useState } from "react";
import { LayoutDashboard, Users, CreditCard, School, Search } from "lucide-react";
import { Card, SectionHeader, EmptyState, StatCard, useApp } from "../ui/kit.jsx";
import { supabase } from "../lib/supabase.js";

export default function AdminOverviewScreen() {
  const { t } = useApp();
  const [profiles, setProfiles] = useState([]);
  const [subs, setSubs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [query, setQuery] = useState("");

  useEffect(() => {
    (async () => {
      const [{ data: profileRows }, { data: subRows }] = await Promise.all([
        supabase.from("profiles").select("id, name, email, school, role, disabled, created_at"),
        supabase.from("subscriptions").select("user_id, plan, status, expires_at").eq("status", "active"),
      ]);
      setProfiles(profileRows || []);
      setSubs(subRows || []);
      setLoading(false);
    })();
  }, []);

  const activeSubsByUser = useMemo(() => {
    const map = new Map();
    for (const s of subs) {
      if (new Date(s.expires_at) > new Date()) map.set(s.user_id, s);
    }
    return map;
  }, [subs]);

  const schoolBreakdown = useMemo(() => {
    const counts = new Map();
    for (const p of profiles) {
      const school = (p.school || "").trim() || "Not set";
      counts.set(school, (counts.get(school) || 0) + 1);
    }
    return [...counts.entries()].sort((a, b) => b[1] - a[1]);
  }, [profiles]);

  const subscriberRows = useMemo(() => {
    return profiles
      .filter(p => activeSubsByUser.has(p.id))
      .map(p => ({ ...p, sub: activeSubsByUser.get(p.id) }));
  }, [profiles, activeSubsByUser]);

  const filtered = subscriberRows.filter(r =>
    query.length < 2 || (r.name || "").toLowerCase().includes(query.toLowerCase()) || (r.email || "").toLowerCase().includes(query.toLowerCase())
  );

  if (loading) {
    return (
      <div className="fade-in">
        <SectionHeader icon={LayoutDashboard} title="Overview" />
        <div style={{ padding: 30, textAlign: "center", color: t.textMuted, fontSize: 13.5 }}>Loading...</div>
      </div>
    );
  }

  return (
    <div className="fade-in">
      <SectionHeader icon={LayoutDashboard} title="Overview" />

      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(150px, 1fr))", gap: 12, marginBottom: 20 }}>
        <StatCard icon={Users} label="Total Members" value={profiles.length} color={t.navy} bg={t.navySoft} />
        <StatCard icon={CreditCard} label="Active Subscribers" value={subscriberRows.length} color={t.emerald} bg={t.emeraldSoft} />
        <StatCard icon={School} label="Schools" value={schoolBreakdown.length} color={t.amber} bg={t.amberSoft} />
      </div>

      <Card style={{ padding: 16, marginBottom: 20 }}>
        <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text, marginBottom: 10, display: "flex", alignItems: "center", gap: 6 }}>
          <School size={15} /> Members by School
        </div>
        {schoolBreakdown.length === 0 ? (
          <div style={{ fontSize: 12.5, color: t.textFaint }}>No data yet</div>
        ) : (
          <div style={{ display: "flex", flexDirection: "column", gap: 6 }}>
            {schoolBreakdown.map(([school, count]) => (
              <div key={school} style={{ display: "flex", justifyContent: "space-between", alignItems: "center", fontSize: 13 }}>
                <span style={{ color: t.textMuted }}>{school}</span>
                <span style={{ fontWeight: 700, color: t.text }}>{count}</span>
              </div>
            ))}
          </div>
        )}
      </Card>

      <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text, marginBottom: 10 }}>Active Subscribers</div>
      <div style={{ display: "flex", alignItems: "center", gap: 8, border: `1px solid ${t.cardBorder}`, borderRadius: 10, padding: "9px 12px", background: t.bgAlt, marginBottom: 12, maxWidth: 340 }}>
        <Search size={14} color={t.textFaint} />
        <input value={query} onChange={e => setQuery(e.target.value)} placeholder="Search by name or email..."
          style={{ border: "none", outline: "none", background: "transparent", fontSize: 13.5, color: t.text, width: "100%" }} />
      </div>

      {filtered.length === 0 ? (
        <EmptyState icon={CreditCard} text="No active subscribers found" />
      ) : (
        <div style={{ display: "flex", flexDirection: "column", gap: 8 }}>
          {filtered.map(row => (
            <Card key={row.id} style={{ padding: 14, display: "flex", justifyContent: "space-between", alignItems: "center", flexWrap: "wrap", gap: 10 }}>
              <div style={{ minWidth: 0 }}>
                <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text }}>{row.name || "(no name)"}</div>
                <div style={{ fontSize: 12, color: t.textFaint }}>{row.email}</div>
                {row.school && <div style={{ fontSize: 11.5, color: t.textFaint }}>{row.school}</div>}
              </div>
              <div style={{ textAlign: "right", flexShrink: 0 }}>
                <div style={{ fontSize: 12.5, fontWeight: 700, color: t.emerald }}>{row.sub.plan === "1year" ? "1 Year" : "6 Months"}</div>
                <div style={{ fontSize: 11.5, color: t.textFaint }}>Expires {new Date(row.sub.expires_at).toLocaleDateString()}</div>
              </div>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
}
