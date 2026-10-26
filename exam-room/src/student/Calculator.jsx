import { useState } from "react";
import { X } from "lucide-react";

// A simple on-screen calculator for drug, drip and fluid calculations. It's
// part of the exam page, so using it never counts as leaving the exam.

// Evaluates + − × ÷ with brackets, decimals and percent (no eval()).
function evaluate(expr) {
  const tokens = expr.replace(/×/g, "*").replace(/÷/g, "/").replace(/−/g, "-").match(/\d*\.?\d+|[-+*/()%]/g);
  if (!tokens) return null;
  let i = 0;
  const peek = () => tokens[i];
  const next = () => tokens[i++];
  function primary() {
    const t = next();
    if (t === "-") return -primary();
    if (t === "+") return primary();
    if (t === "(") { const v = sum(); if (next() !== ")") throw new Error("bracket"); return postfix(v); }
    const n = parseFloat(t);
    if (Number.isNaN(n)) throw new Error("number");
    return postfix(n);
  }
  function postfix(v) { while (peek() === "%") { next(); v /= 100; } return v; }
  function product() {
    let v = primary();
    while (peek() === "*" || peek() === "/") {
      const op = next(); const r = primary();
      v = op === "*" ? v * r : v / r;
    }
    return v;
  }
  function sum() {
    let v = product();
    while (peek() === "+" || peek() === "-") {
      const op = next(); const r = product();
      v = op === "+" ? v + r : v - r;
    }
    return v;
  }
  const v = sum();
  if (i !== tokens.length || !Number.isFinite(v)) throw new Error("syntax");
  return Math.round(v * 1e8) / 1e8;
}

const KEYS = [
  ["C", "(", ")", "÷"],
  ["7", "8", "9", "×"],
  ["4", "5", "6", "−"],
  ["1", "2", "3", "+"],
  ["0", ".", "⌫", "="],
];

export default function Calculator({ onClose }) {
  const [expr, setExpr] = useState("");
  const [result, setResult] = useState("");

  function press(k) {
    if (k === "C") { setExpr(""); setResult(""); return; }
    if (k === "⌫") { setExpr(e => e.slice(0, -1)); return; }
    if (k === "=") {
      try { const v = evaluate(expr); setResult(v == null ? "" : String(v)); }
      catch (e) { setResult("Error"); }
      return;
    }
    // Start a new calculation from the last answer.
    if (result && result !== "Error" && expr && /[-+×÷−%]/.test(k) && !/[-+×÷−(]$/.test(expr)) {
      setExpr(result + k); setResult(""); return;
    }
    setExpr(e => (e + k).slice(0, 60));
  }

  return (
    <div className="calc card" role="dialog" aria-label="Calculator">
      <div className="row" style={{ marginBottom: 8 }}>
        <strong style={{ fontSize: 14 }}>Calculator</strong>
        <span className="spacer" />
        <button className="btn btn-ghost btn-sm" onClick={onClose} aria-label="Close calculator"><X size={14} /></button>
      </div>
      <div className="calc-screen" aria-live="polite">
        <div className="calc-expr">{expr || "0"}</div>
        <div className="calc-result">{result ? `= ${result}` : " "}</div>
      </div>
      <div className="calc-keys">
        {KEYS.flat().map(k => (
          <button key={k} type="button" className={`calc-key ${/[÷×−+=]/.test(k) ? "op" : ""} ${k === "C" ? "clear" : ""}`} onClick={() => press(k)}>{k}</button>
        ))}
        <button type="button" className="calc-key" onClick={() => press("%")}>%</button>
      </div>
    </div>
  );
}
