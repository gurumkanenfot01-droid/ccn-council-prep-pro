export default function ProgressBar({ value, dark = false }) {
  return (
    <div className={`h-2 w-full rounded-full ${dark ? 'bg-white/10' : 'bg-black/10'}`}>
      <div
        className="h-2 rounded-full bg-brand-500 transition-all"
        style={{ width: `${Math.min(100, Math.max(0, value))}%` }}
      />
    </div>
  )
}
