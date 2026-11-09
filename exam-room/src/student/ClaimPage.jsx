import { useState } from "react";
import { GraduationCap, ArrowRight, Copy, Check, UserRound, MessageCircle, PlayCircle, Lock } from "lucide-react";
import { api } from "../lib/api.js";
import { ADMIN_WHATSAPP, ADMIN_WHATSAPP_DISPLAY, CODE_KEY } from "./StudentApp.jsx";

// The link the administrator posts in the class group (/#/claim): a student
// who has paid types their name and sees their Council Exams access code.
// Anyone not on the paid list gets nothing and is pointed to the administrator.
const PROBLEMS = {
  need_full_name: "Type at least two of your names (e.g. first name and surname), in any order.",
  already_claimed: "This code has already been collected. Each code is shown only once. If you lost it, message the administrator.",
  ambiguous: "More than one student has that name. Type your full name, as on the class list.",
  too_many_attempts: "Too many tries from this network. Wait 10 minutes and try again.",
  network: "Connection problem. Check your internet and try again.",
};

export default function ClaimPage() {
  const [name, setName] = useState("");
  const [busy, setBusy] = useState(false);
  const [problem, setProblem] = useState("");
  const [notPaid, setNotPaid] = useState(false);
  const [got, setGot] = useState(null); // { code, name }
  const [copied, setCopied] = useState(false);
  const [lost, setLost] = useState(false);

  async function submit(e) {
    e.preventDefault();
    setBusy(true); setProblem(""); setNotPaid(false); setLost(false);
    try {
      const r = await api.claimCode(name.trim());
      setGot(r);
    } catch (err) {
      if (err.code === "not_found") setNotPaid(true);
      else if (err.code === "already_claimed") { setNotPaid(false); setProblem(PROBLEMS.already_claimed); setLost(true); }
      else setProblem(PROBLEMS[err.code] || "The claim page isn’t ready yet. Please message the administrator.");
    }
    setBusy(false);
  }

  function copy() {
    const done = () => { setCopied(true); setTimeout(() => setCopied(false), 2000); };
    if (navigator.clipboard) navigator.clipboard.writeText(got.code).then(done, () => {});
  }

  function startNow() {
    try { localStorage.setItem(CODE_KEY, got.code); } catch (e) { /* they can type it */ }
    window.location.hash = "#/";
  }

  const wa = `https://wa.me/${ADMIN_WHATSAPP}?text=${encodeURIComponent(`Hello, I want my exam access code. My name is ${name.trim()}.`)}`;

  return (
    <main className="wrap" style={{ minHeight: "100vh", display: "flex", alignItems: "center" }}>
      <div className="narrow" style={{ width: "100%" }}>
        <div style={{ textAlign: "center", marginBottom: 22 }}>
          <div className="brand-mark" style={{ margin: "0 auto 10px", width: 52, height: 52, borderRadius: 16 }}><GraduationCap size={26} /></div>
          <h1 className="serif" style={{ fontSize: 24, margin: "0 0 4px" }}>Get your exam access code</h1>
          <p className="muted" style={{ margin: 0, fontSize: 14 }}>Paid students: type your name to see your personal access code.</p>
        </div>

        {got ? (<>
          <div className="card claim-result" style={{ display: "flex", flexDirection: "column", gap: 14, textAlign: "center" }}>
            <div className="muted" style={{ fontSize: 14 }}>Hello <strong>{got.name}</strong>, your access code is</div>
            <div className="claim-code" aria-label={`Access code ${got.code.split("").join(" ")}`}>{got.code}</div>
            <div className="banner banner-warn" role="note" style={{ margin: 0, textAlign: "left" }}><span><strong>Write it down or take a screenshot now.</strong> This code is shown only once — this page won’t show it again.</span></div>
            <div className="row" style={{ justifyContent: "center" }}>
              <button className="btn btn-ghost" onClick={copy}>{copied ? <Check size={16} /> : <Copy size={16} />} {copied ? "Copied" : "Copy code"}</button>
              <button className="btn btn-primary" onClick={startNow}><PlayCircle size={16} /> Open my exams</button>
            </div>
            <ol className="claim-next">
              <li>Tap <strong>Open my exams</strong> (or open the exam site later and type your code).</li>
              <li>Register your face — the page asks you once, straight after you sign in.</li>
              <li>Then type your <strong>exam number</strong> on your exams page and send it to the administrator.</li>
            </ol>
            <p className="faint" style={{ fontSize: 12.5, margin: 0, display: "flex", gap: 6, textAlign: "left" }}>
              <Lock size={14} style={{ flex: "none", marginTop: 2 }} />
              The code is only for you: your face is registered with it and checked at every exam, so nobody else can use it.
            </p>
          </div>
        </>) : (
          <form className="card" onSubmit={submit} style={{ display: "flex", flexDirection: "column", gap: 14 }}>
            <div className="field">
              <label htmlFor="claim-name"><UserRound size={11} /> Your full name</label>
              <input id="claim-name" value={name} onChange={e => setName(e.target.value.slice(0, 80))} placeholder="e.g. Dan James"
                autoComplete="name" autoCapitalize="words" required />
            </div>
            <p className="faint" style={{ fontSize: 12.5, margin: "-6px 0 0" }}>Type at least two of your names, in any order. Small spelling mistakes are fine.</p>
            {problem && <div className="error" role="alert">{problem}</div>}
            {lost && <a className="btn btn-sm btn-success" style={{ alignSelf: "flex-start" }} href={`https://wa.me/${ADMIN_WHATSAPP}?text=${encodeURIComponent(`Hello, I lost my exam access code. My name is ${name.trim()}.`)}`} target="_blank" rel="noreferrer"><MessageCircle size={14} /> Message the administrator</a>}
            {notPaid && (
              <div className="banner banner-bad" role="alert" style={{ display: "flex", flexDirection: "column", gap: 8 }}>
                <span>That name is not on the list of students who have paid. Check the spelling, or message the administrator ({ADMIN_WHATSAPP_DISPLAY}).</span>
                <a className="btn btn-sm btn-success" style={{ alignSelf: "flex-start" }} href={wa} target="_blank" rel="noreferrer"><MessageCircle size={14} /> Message the administrator</a>
              </div>
            )}
            <button className="btn btn-primary btn-full" disabled={busy || name.trim().length < 3}>
              {busy ? "Checking…" : "Get my code"} {!busy && <ArrowRight size={16} />}
            </button>
          </form>
        )}
        <p className="muted" style={{ textAlign: "center", fontSize: 13.5, marginTop: 14 }}>
          Already have your code? <a href="#/">Log in here</a>
        </p>
      </div>
    </main>
  );
}
