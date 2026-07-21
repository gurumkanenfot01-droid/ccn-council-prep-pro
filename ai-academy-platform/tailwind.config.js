/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{js,jsx}'],
  theme: {
    extend: {
      colors: {
        ink: '#0b0f19',
        panel: '#111726',
        brand: {
          50: '#eefcf9',
          100: '#d4f7f0',
          300: '#7fe9d8',
          400: '#45dcc4',
          500: '#1fc4ac',
          600: '#149b89',
          700: '#127b6f',
        },
        magenta: {
          400: '#ff4fa3',
          500: '#ff2d92',
          600: '#e01c7c',
        },
      },
      fontFamily: {
        display: ['Georgia', 'Cambria', '"Times New Roman"', 'serif'],
      },
    },
  },
  plugins: [],
}
