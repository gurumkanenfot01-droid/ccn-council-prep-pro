import { useState } from "react";
import { Microscope, ChevronLeft } from "lucide-react";
import { Card, SectionHeader, useApp } from "../ui/kit.jsx";
import { OSCE_INSTRUMENTS } from "../data/osceInstruments.js";
import { OsceDiagram } from "../data/osceDiagrams.jsx";

function InstrumentGrid({ onSelect }) {
  const { t } = useApp();
  return (
    <div className="fade-in">
      <SectionHeader icon={Microscope} title="Viva — Instrument Identification" />
      <Card style={{ padding: "14px 18px", marginBottom: 20, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
        <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.5 }}>
          Tap an instrument to see a labeled diagram, its key parts, function, and the facts examiners typically probe for at viva.
        </div>
      </Card>
      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill, minmax(160px, 1fr))", gap: 14 }}>
        {OSCE_INSTRUMENTS.map(inst => (
          <Card key={inst.slug} hover onClick={() => onSelect(inst)} style={{ padding: 14 }}>
            <div style={{ background: t.bgAlt, borderRadius: 10, padding: 8, marginBottom: 10, border: `1px solid ${t.cardBorder}` }}>
              <OsceDiagram id={inst.diagramId} theme={t} />
            </div>
            <div style={{ fontSize: 11, fontWeight: 700, color: t.navy, textTransform: "uppercase", letterSpacing: 0.4, marginBottom: 3 }}>{inst.category}</div>
            <div style={{ fontSize: 13.5, fontWeight: 700, color: t.text, lineHeight: 1.3 }}>{inst.name}</div>
          </Card>
        ))}
      </div>
    </div>
  );
}

function InstrumentDetail({ inst, onBack }) {
  const { t } = useApp();
  return (
    <div className="fade-in">
      <button onClick={onBack} className="press" style={{ display: "flex", alignItems: "center", gap: 6, background: "none", border: "none", cursor: "pointer", color: t.navy, fontWeight: 700, fontSize: 13, marginBottom: 14, padding: 0 }}>
        <ChevronLeft size={16} /> All Instruments
      </button>

      <div style={{ fontSize: 11, fontWeight: 700, color: t.navy, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 4 }}>{inst.category}</div>
      <div className="f-serif" style={{ fontSize: 21, fontWeight: 700, color: t.text, marginBottom: 16 }}>{inst.name}</div>

      <Card style={{ padding: 18, marginBottom: 16, textAlign: "center" }}>
        <OsceDiagram id={inst.diagramId} theme={t} />
      </Card>

      <Card style={{ padding: 18, marginBottom: 14 }}>
        <div style={{ fontSize: 13, fontWeight: 700, color: t.navy, marginBottom: 8 }}>Function</div>
        <div style={{ fontSize: 13.5, color: t.text, lineHeight: 1.55 }}>{inst.function}</div>
      </Card>

      <Card style={{ padding: 18, marginBottom: 14 }}>
        <div style={{ fontSize: 13, fontWeight: 700, color: t.navy, marginBottom: 12 }}>Key Parts</div>
        {inst.parts.map((p, i) => (
          <div key={i} style={{ display: "flex", gap: 10, padding: "8px 0", borderTop: i > 0 ? `1px solid ${t.cardBorder}` : "none" }}>
            <div style={{ flexShrink: 0, width: 6, height: 6, borderRadius: "50%", background: t.navy, marginTop: 6 }} />
            <div>
              <div style={{ fontSize: 13, fontWeight: 700, color: t.text }}>{p.label}</div>
              <div style={{ fontSize: 12.5, color: t.textFaint, lineHeight: 1.45 }}>{p.description}</div>
            </div>
          </div>
        ))}
      </Card>

      <Card style={{ padding: 18 }}>
        <div style={{ fontSize: 13, fontWeight: 700, color: t.navy, marginBottom: 12 }}>Viva-Ready Facts</div>
        {inst.keyFacts.map((f, i) => (
          <div key={i} style={{ display: "flex", gap: 10, padding: "8px 0", borderTop: i > 0 ? `1px solid ${t.cardBorder}` : "none" }}>
            <div className="f-mono" style={{ flexShrink: 0, fontSize: 11, fontWeight: 800, color: t.navy }}>{i + 1}</div>
            <div style={{ fontSize: 12.5, color: t.text, lineHeight: 1.5 }}>{f}</div>
          </div>
        ))}
      </Card>
    </div>
  );
}

export default function VivaScreen() {
  const [selected, setSelected] = useState(null);
  if (selected) return <InstrumentDetail inst={selected} onBack={() => setSelected(null)} />;
  return <InstrumentGrid onSelect={setSelected} />;
}
