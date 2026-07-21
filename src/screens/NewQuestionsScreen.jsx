import { BadgePlus, PlayCircle } from "lucide-react";
import { Card, Button, SectionHeader, EmptyState, useApp } from "../ui/kit.jsx";
import { QUESTION_BANK } from "../App.jsx";

export default function NewQuestionsScreen({ startQuiz }) {
  const { t } = useApp();
  const newQuestions = QUESTION_BANK.filter(q => !q.isLegacy);

  const byCategory = {};
  for (const q of newQuestions) byCategory[q.category] = (byCategory[q.category] || 0) + 1;
  const categories = Object.entries(byCategory).sort((a, b) => b[1] - a[1]);

  function practiceAll() {
    startQuiz({ count: Math.min(30, newQuestions.length), category: "New Questions", idPool: newQuestions.map(q => q.id) });
  }

  function practiceCategory(name, ids) {
    startQuiz({ count: Math.min(20, ids.length), category: name, idPool: ids });
  }

  return (
    <div className="fade-in">
      <SectionHeader icon={BadgePlus} title="New Questions" />

      {newQuestions.length === 0 ? (
        <EmptyState icon={BadgePlus} text="No new questions yet" sub="Freshly added questions will show up here as soon as they're published." />
      ) : (
        <>
          <Card style={{ padding: "14px 18px", marginBottom: 20, background: t.navySoft, border: `1px solid ${t.navy}22` }}>
            <div style={{ fontSize: 13, color: t.textMuted, lineHeight: 1.5 }}>
              {newQuestions.length} question{newQuestions.length === 1 ? "" : "s"} added since launch, not yet in your regular category quizzes' free rotation.
            </div>
          </Card>

          <Card style={{ padding: 18, marginBottom: 20 }}>
            <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between", gap: 12, marginBottom: 4 }}>
              <div>
                <div style={{ fontSize: 14, fontWeight: 700, color: t.text }}>Practice all new questions</div>
                <div style={{ fontSize: 12, color: t.textFaint }}>Mixed set across every category</div>
              </div>
            </div>
            <Button variant="primary" full icon={PlayCircle} onClick={practiceAll} style={{ marginTop: 12 }}>Start Practice</Button>
          </Card>

          <div style={{ fontSize: 11, fontWeight: 700, color: t.textFaint, textTransform: "uppercase", letterSpacing: 0.5, marginBottom: 10 }}>By Category</div>
          <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill, minmax(200px, 1fr))", gap: 14 }}>
            {categories.map(([name, count]) => {
              const ids = newQuestions.filter(q => q.category === name).map(q => q.id);
              return (
                <Card key={name} hover onClick={() => practiceCategory(name, ids)} style={{ padding: 18 }}>
                  <div style={{ fontSize: 14, fontWeight: 700, color: t.text, marginBottom: 6 }}>{name}</div>
                  <div style={{ fontSize: 12.5, color: t.textFaint }}>{count} new question{count === 1 ? "" : "s"}</div>
                </Card>
              );
            })}
          </div>
        </>
      )}
    </div>
  );
}
