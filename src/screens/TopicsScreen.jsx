import { useState } from "react";
import { Layers as LayersIcon, ChevronLeft, Pill } from "lucide-react";
import { Card, SectionHeader, useApp } from "../ui/kit.jsx";
import { TOPIC_GROUPS } from "../data/icuTopics.js";

function GroupList({ onSelect }) {
  const { t } = useApp();
  return (
    <div className="fade-in">
      <SectionHeader icon={LayersIcon} title="ICU Topics Reference" />
      <Card style={{ padding: "14px 18px", marginBottom: 20, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.5 }}>
          Quick reference for reading, not testing — key facts and drug summaries organized by topic. Use the
          category quizzes to test yourself on this material.
        </div>
      </Card>
      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill, minmax(220px, 1fr))", gap: 14 }}>
        {TOPIC_GROUPS.map(g => (
          <Card key={g.id} hover onClick={() => onSelect(g)} style={{ padding: 20 }}>
            <div style={{ fontSize: 28, marginBottom: 8 }}>{g.icon}</div>
            <div style={{ fontSize: 15, fontWeight: 700, color: t.text, marginBottom: 6 }}>{g.title}</div>
            <div style={{ fontSize: 12.5, color: t.textFaint }}>
              {g.kind === "drugs" ? `${g.drugs.length} drugs` : `${g.topics.length} topics`}
            </div>
          </Card>
        ))}
      </div>
    </div>
  );
}

function TopicEntry({ entry }) {
  const { t } = useApp();
  return (
    <Card style={{ padding: 18, marginBottom: 14 }}>
      <div style={{ fontSize: 14.5, fontWeight: 700, color: t.navy, marginBottom: 6 }}>{entry.title}</div>
      <div style={{ fontSize: 12.5, color: t.textMuted, marginBottom: 12, lineHeight: 1.5 }}>{entry.summary}</div>
      {entry.points.map((p, i) => (
        <div key={i} style={{ display: "flex", gap: 10, padding: "7px 0", borderTop: i > 0 ? `1px solid ${t.cardBorder}` : "none" }}>
          <div style={{ flexShrink: 0, width: 5, height: 5, borderRadius: "50%", background: t.navy, marginTop: 7 }} />
          <div style={{ fontSize: 12.5, color: t.text, lineHeight: 1.5 }}>{p}</div>
        </div>
      ))}
    </Card>
  );
}

function DrugEntry({ drug }) {
  const { t } = useApp();
  return (
    <Card style={{ padding: 18, marginBottom: 14 }}>
      <div style={{ display: "flex", alignItems: "center", gap: 8, marginBottom: 4 }}>
        <Pill size={15} color={t.navy} />
        <div style={{ fontSize: 14.5, fontWeight: 700, color: t.text }}>{drug.name}</div>
      </div>
      <div style={{ fontSize: 11, fontWeight: 700, color: t.navy, textTransform: "uppercase", letterSpacing: 0.4, marginBottom: 6 }}>{drug.class}</div>
      <div style={{ fontSize: 12.5, color: t.textMuted, marginBottom: 12, lineHeight: 1.5 }}><strong style={{ color: t.text }}>Use: </strong>{drug.use}</div>
      {drug.points.map((p, i) => (
        <div key={i} style={{ display: "flex", gap: 10, padding: "7px 0", borderTop: i > 0 ? `1px solid ${t.cardBorder}` : "none" }}>
          <div style={{ flexShrink: 0, width: 5, height: 5, borderRadius: "50%", background: t.navy, marginTop: 7 }} />
          <div style={{ fontSize: 12.5, color: t.text, lineHeight: 1.5 }}>{p}</div>
        </div>
      ))}
    </Card>
  );
}

function GroupDetail({ group, onBack }) {
  const { t } = useApp();
  return (
    <div className="fade-in">
      <button onClick={onBack} className="press" style={{ display: "flex", alignItems: "center", gap: 6, background: "none", border: "none", cursor: "pointer", color: t.navy, fontWeight: 700, fontSize: 13, marginBottom: 14, padding: 0 }}>
        <ChevronLeft size={16} /> All Topics
      </button>
      <div style={{ fontSize: 28, marginBottom: 4 }}>{group.icon}</div>
      <div className="f-serif" style={{ fontSize: 21, fontWeight: 700, color: t.text, marginBottom: 16 }}>{group.title}</div>
      {group.kind === "drugs"
        ? group.drugs.map((d, i) => <DrugEntry key={i} drug={d} />)
        : group.topics.map((tp, i) => <TopicEntry key={i} entry={tp} />)}
    </div>
  );
}

export default function TopicsScreen() {
  const [selected, setSelected] = useState(null);
  if (selected) return <GroupDetail group={selected} onBack={() => setSelected(null)} />;
  return <GroupList onSelect={setSelected} />;
}
