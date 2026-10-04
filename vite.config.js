import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  build: {
    // Vite's default only supports Safari/iOS 16.4+, which left older iPads and
    // iPhones on a blank screen. Compile down so iOS 14+ can run the app.
    target: ['es2019', 'safari14', 'ios14', 'chrome87', 'firefox78', 'edge88'],
  },
})
