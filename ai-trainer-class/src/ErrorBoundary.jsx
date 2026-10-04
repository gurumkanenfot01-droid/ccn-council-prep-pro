import { Component } from "react";

// Safety net: if any screen crashes, show a friendly way back instead of a
// blank page. Progress is saved on the device, so nothing is lost.
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
      <div style={{ minHeight: "100vh", display: "grid", placeItems: "center", padding: 32, textAlign: "center" }}>
        <div>
          <div style={{ fontSize: 44, marginBottom: 10 }}>🛠️</div>
          <div className="h2" style={{ marginBottom: 8 }}>Something went wrong</div>
          <div className="muted" style={{ maxWidth: 360, margin: "0 auto 22px" }}>A screen had a problem. Your progress is safe. Tap the button to open the app again.</div>
          <button className="btn primary" onClick={() => window.location.reload()}>Open the app again</button>
        </div>
      </div>
    );
  }
}
