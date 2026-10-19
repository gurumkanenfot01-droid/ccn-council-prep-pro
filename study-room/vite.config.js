import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  build: {
    // Same as the CCN app: support Safari/iOS 14+ instead of Vite's 16.4+ default.
    target: ['es2019', 'safari14', 'ios14', 'chrome87', 'firefox78', 'edge88'],
  },
})
