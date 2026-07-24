import { useEffect, useMemo, useState } from "react";
import { Eye, ArrowRight, RotateCcw, CheckCircle2 } from "lucide-react";
import { Card, Button, SectionHeader, EmptyState, Chip, useApp } from "../ui/kit.jsx";
import { supabase } from "../lib/supabase.js";

const LETTERS = ["A", "B", "C", "D"];

async function fetchAllRows(table, columns, filters = {}) {
  const pageSize = 1000;
  let from = 0;
  let all = [];
  while (true) {
    let query = supabase.from(table).select(columns).range(from, from + pageSize - 1);
    for (const [col, val] of Object.entries(filters)) query = query.eq(col, val);
    const { data, error } = await query;
    if (error || !data) break;
    all = all.concat(data);
    if (data.length < pageSize) break;
    from += pageSize;
  }
  return all;
}

export default function AdminReviewScreen() {
  const { t, userId } = useApp();
  const [questions, setQuestions] = useState([]);
  const [reviewedIds, setReviewedIds] = useState(new Set());
  const [category, setCategory] = useState("All");
  const [loading, setLoading] = useState(true);
  const [marking, setMarking] = useState(false);

  async function load() {
    setLoading(true);
    const [qs, reviews] = await Promise.all([
      fetchAllRows("questions", "id, q, opts, ans_idx, exp, category, topic", { is_active: true }),
      fetchAllRows("question_reviews", "question_id", { admin_id: userId }),
    ]);
    setQuestions(qs);
    setReviewedIds(new Set(reviews.map(r => r.question_id)));
    setLoading(false);
  }

  useEffect(() => { load(); }, []);

  const categories = useMemo(() => ["All", ...Array.from(new Set(questions.map(q => q.category))).sort()], [questions]);

  const inCategory = useMemo(() => (
    category === "All" ? questions : questions.filter(q => q.category === category)
  ), [questions, category]);

  const unreviewed = useMemo(() => inCategory.filter(q => !reviewedIds.has(q.id)), [inCategory, reviewedIds]);
  const current = unreviewed[0];
  const reviewedInCategory = inCategory.length - unreviewed.length;

  async function markReviewedAndNext() {
    if (!current) return;
    setMarking(true);
    await supabase.from("question_reviews").upsert({ admin_id: userId, question_id: current.id }, { onConflict: "admin_id,question_id" });
    setReviewedIds(prev => new Set(prev).add(current.id));
    setMarking(false);
  }

  async function resetProgress() {
    const label = category === "All" ? "all categories" : `"${category}"`;
    if (!confirm(`Reset your review progress for ${label}? Already-reviewed questions will show again.`)) return;
    const idsToReset = inCategory.map(q => q.id).filter(id => reviewedIds.has(id));
    if (idsToReset.length) {
      await supabase.from("question_reviews").delete().eq("admin_id", userId).in("question_id", idsToReset);
    }
    setReviewedIds(prev => {
      const next = new Set(prev);
      idsToReset.forEach(id => next.delete(id));
      return next;
    });
  }

  if (loading) {
    return (
      <div className="fade-in">
        <SectionHeader icon={Eye} title="Review Questions" />
        <div style={{ padding: 30, textAlign: "center", color: t.textMuted, fontSize: 13.5 }}>Loading...</div>
      </div>
    );
  }

  return (
    <div className="fade-in">
      <SectionHeader icon={Eye} title="Review Questions" />
      <div style={{ fontSize: 12, color: t.textFaint, marginBottom: 14, lineHeight: 1.5 }}>
        Step through the bank one question at a time — the correct answer and its explanation are shown right away, and once you move past a question it won't show again. AI-generated, deeper option-by-option explanations will be added here once an AI API key is set up.
      </div>

      <div style={{ display: "flex", gap: 6, flexWrap: "wrap", marginBottom: 16 }}>
        {categories.slice(0, 12).map(c => (
          <Chip key={c} active={category === c} onClick={() => setCategory(c)}>{c}</Chip>
        ))}
      </div>

      <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", marginBottom: 14 }}>
        <div style={{ fontSize: 12.5, color: t.textMuted }}>{reviewedInCategory} of {inCategory.length} reviewed</div>
        <Button size="sm" variant="ghost" icon={RotateCcw} onClick={resetProgress} disabled={reviewedInCategory === 0}>Reset Progress</Button>
      </div>

      {!current ? (
        <EmptyState icon={CheckCircle2} text="All reviewed" sub={`You've reviewed every question in ${category === "All" ? "the bank" : `"${category}"`}.`} />
      ) : (
        <Card style={{ padding: 20 }}>
          <div style={{ fontSize: 11, fontWeight: 700, color: t.navy, marginBottom: 8 }}>#{current.id} · {current.category}{current.topic ? ` · ${current.topic}` : ""}</div>
          <div style={{ fontSize: 15, fontWeight: 600, color: t.text, marginBottom: 16, lineHeight: 1.5 }}>{current.q}</div>
          <div style={{ display: "flex", flexDirection: "column", gap: 8, marginBottom: 16 }}>
            {current.opts.map((opt, i) => {
              const isCorrect = i === current.ans_idx;
              return (
                <div key={i} style={{
                  display: "flex", alignItems: "center", gap: 10, padding: "10px 14px", borderRadius: 10,
                  background: isCorrect ? t.emeraldSoft : t.bgAlt,
                  border: `1px solid ${isCorrect ? t.emerald : t.cardBorder}`,
                }}>
                  <div style={{ fontWeight: 700, fontSize: 13, color: isCorrect ? t.emerald : t.textFaint }}>{LETTERS[i]}</div>
                  <div style={{ flex: 1, fontSize: 13.5, color: isCorrect ? t.emerald : t.text, fontWeight: isCorrect ? 700 : 500 }}>{opt}</div>
                  {isCorrect && <CheckCircle2 size={16} color={t.emerald} />}
                </div>
              );
            })}
          </div>
          <div style={{ background: t.navySoft, borderRadius: 10, padding: 14, marginBottom: 18 }}>
            <div style={{ fontSize: 11.5, fontWeight: 700, color: t.navy, marginBottom: 4, textTransform: "uppercase", letterSpacing: 0.4 }}>Explanation</div>
            <div style={{ fontSize: 13, color: t.text, lineHeight: 1.55 }}>
              {current.exp && current.exp.trim() ? current.exp : "No stored explanation for this question yet — add one via Admin > Manage Questions."}
            </div>
          </div>
          <Button variant="primary" full icon={ArrowRight} disabled={marking} onClick={markReviewedAndNext}>
            {marking ? "Saving..." : "Got It — Next Question"}
          </Button>
        </Card>
      )}
    </div>
  );
}
