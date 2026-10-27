import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// A new id for every build; written into the page and into /version.json so
// open pages can tell when a newer version has gone live (src/lib/update.js).
const BUILD_ID = Date.now().toString(36)

const versionFile = {
  name: 'version-file',
  generateBundle() {
    this.emitFile({ type: 'asset', fileName: 'version.json', source: JSON.stringify({ id: BUILD_ID }) })
  },
}

export default defineConfig({
  plugins: [react(), versionFile],
  define: { __BUILD_ID__: JSON.stringify(BUILD_ID) },
  build: {
    // Same as the CCN app: support Safari/iOS 14+ instead of Vite's 16.4+ default.
    target: ['es2019', 'safari14', 'ios14', 'chrome87', 'firefox78', 'edge88'],
  },
})
