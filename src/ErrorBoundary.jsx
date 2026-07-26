import { Component } from "react";

// Last-resort safety net: without this, any single uncaught render error
// (e.g. a malformed question row slipping through) blanks the entire app with
// no way back in, and since exam progress autosaves, resuming can drop a user
// right back onto the same crash. This catches it, offers a way out, and never
// leaves someone stuck on a dead white screen.
export default class ErrorBoundary extends Component {
  constructor(props) {
    super(props);
    this.state = { hasError: false };
  }

  static getDerivedStateFromError() {
    return { hasError: true };
  }

  componentDidCatch(error, info) {
    console.error("Unhandled app error:", error, info);
  }

  render() {
    if (!this.state.hasError) return this.props.children;
    return (
      <div style={{
        minHeight: "100vh", display: "flex", flexDirection: "column", alignItems: "center",
        justifyContent: "center", padding: 32, textAlign: "center", background: "#F7F4EC", fontFamily: "Georgia, serif",
      }}>
        <div style={{ fontSize: 40, marginBottom: 12 }}>⚠️</div>
        <div style={{ fontSize: 19, fontWeight: 700, color: "#1B2A3A", marginBottom: 8 }}>Something went wrong</div>
        <div style={{ fontSize: 14, color: "#5B6472", maxWidth: 360, lineHeight: 1.5, marginBottom: 22 }}>
          A question or screen hit an unexpected error. Your saved progress is safe — reload to continue where you left off.
        </div>
        <button
          onClick={() => window.location.reload()}
          style={{
            background: "#1B2A3A", color: "#fff", border: "none", borderRadius: 10,
            padding: "12px 28px", fontSize: 14, fontWeight: 700, cursor: "pointer",
          }}
        >
          Reload App
        </button>
      </div>
    );
  }
}
