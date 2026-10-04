// The app's robot mark (same drawing as the app icon).
export function LogoMark({ size = 24 }) {
  return (
    <svg width={size} height={size} viewBox="0 0 24 24" fill="none" aria-hidden="true">
      <rect x="4" y="7" width="16" height="12" rx="4" stroke="currentColor" strokeWidth="2" />
      <path d="M12 7V4" stroke="currentColor" strokeWidth="2" strokeLinecap="round" />
      <circle cx="12" cy="3" r="1.4" fill="#FFC14D" />
      <circle cx="9" cy="12.5" r="1.4" fill="currentColor" />
      <circle cx="15" cy="12.5" r="1.4" fill="currentColor" />
      <path d="M9.5 15.8c1.4.9 3.6.9 5 0" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" />
    </svg>
  );
}
