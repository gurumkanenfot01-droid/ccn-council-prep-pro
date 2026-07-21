import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  server: {
    proxy: {
      // Forwards to the Express server in server/index.js during local dev
      // (npm run dev in server/) so the frontend can always call same-origin
      // relative /api/... paths, matching how it works in production too.
      '/api': 'http://localhost:5185',
    },
  },
})
