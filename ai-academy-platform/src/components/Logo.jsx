import { Brain } from 'lucide-react'

export default function Logo({ size = 'md', light = false }) {
  const dims = size === 'lg' ? 'w-16 h-16' : size === 'sm' ? 'w-8 h-8' : 'w-10 h-10'
  const iconDims = size === 'lg' ? 28 : size === 'sm' ? 16 : 20
  return (
    <div className="flex items-center gap-2">
      <div
        className={`${dims} rounded-full grid place-items-center border-2 border-brand-400 bg-ink shadow-[0_0_18px_rgba(69,220,196,0.45)]`}
      >
        <Brain size={iconDims} className="text-magenta-400" strokeWidth={1.75} />
      </div>
      <span className={`font-display tracking-wide ${light ? 'text-ink' : 'text-white'} ${size === 'lg' ? 'text-2xl' : 'text-lg'} font-bold`}>
        Nova AI Academy
      </span>
    </div>
  )
}
