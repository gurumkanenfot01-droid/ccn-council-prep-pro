// Placeholder curriculum data for the demo classroom.
export const courses = [
  {
    id: 'ai-chatbots',
    title: 'Zero-Code AI Chatbots',
    blurb: 'Build and deploy your first AI support agent without writing code.',
    color: 'from-cyan-500 to-blue-600',
    lessons: [
      { id: 'l1', title: 'Welcome & Toolkit Overview', minutes: 6 },
      { id: 'l2', title: 'Designing a Support Flow', minutes: 14 },
      { id: 'l3', title: 'Connecting Your Knowledge Base', minutes: 18 },
      { id: 'l4', title: 'Launching to Your Website', minutes: 11 },
    ],
  },
  {
    id: 'llm-training',
    title: 'LLM Training & Rater Platforms',
    blurb: 'Get started on model-response evaluation platforms and earn per task.',
    color: 'from-violet-500 to-fuchsia-600',
    lessons: [
      { id: 'l1', title: 'How AI Training Work Actually Works', minutes: 9 },
      { id: 'l2', title: 'Myths vs. Reality', minutes: 7 },
      { id: 'l3', title: 'Essential Tools & Skills', minutes: 12 },
      { id: 'l4', title: 'Passing Your Screening Interview', minutes: 15 },
      { id: 'l5', title: '3-Step Success Framework', minutes: 10 },
    ],
  },
  {
    id: 'ai-website',
    title: 'AI Website Creation',
    blurb: 'Stand up a full website and custom domain with AI tooling.',
    color: 'from-emerald-500 to-teal-600',
    lessons: [
      { id: 'l1', title: 'Planning Your Site Structure', minutes: 8 },
      { id: 'l2', title: 'Generating Pages with AI', minutes: 16 },
      { id: 'l3', title: 'Custom Domain Setup', minutes: 10 },
    ],
  },
  {
    id: 'app-builder',
    title: 'App Creation & Deployment',
    blurb: 'Ship your own app end-to-end while vibing with AI.',
    color: 'from-orange-500 to-amber-600',
    lessons: [
      { id: 'l1', title: 'Choosing Your Stack', minutes: 7 },
      { id: 'l2', title: 'Building the Core Feature', minutes: 22 },
      { id: 'l3', title: 'Deploying to Production', minutes: 13 },
    ],
  },
  {
    id: 'prompt-engineering',
    title: 'Prompt Engineering & Context Design',
    blurb: 'Craft prompts that reliably produce the output you want.',
    color: 'from-rose-500 to-pink-600',
    lessons: [
      { id: 'l1', title: 'Anatomy of a Great Prompt', minutes: 9 },
      { id: 'l2', title: 'Context Windows & Memory', minutes: 11 },
      { id: 'l3', title: 'Structured Output Techniques', minutes: 14 },
    ],
  },
  {
    id: 'faceless-marketing',
    title: 'Faceless Marketing with AI',
    blurb: 'Theme pages, UGC, and paid ads without showing your face.',
    color: 'from-indigo-500 to-blue-700',
    lessons: [
      { id: 'l1', title: 'Picking a Profitable Niche', minutes: 10 },
      { id: 'l2', title: 'AI-Generated UGC Scripts', minutes: 13 },
      { id: 'l3', title: 'Running Your First Ad Set', minutes: 15 },
    ],
  },
  {
    id: 'ai-automation-agency',
    title: 'No-Code AI Automation Agency',
    blurb: 'Leverage automation platforms to build workflows businesses pay for.',
    color: 'from-slate-500 to-slate-700',
    lessons: [
      { id: 'l1', title: 'What Is Automation?', minutes: 6 },
      { id: 'l2', title: 'What Is AI Automation?', minutes: 8 },
      { id: 'l3', title: 'Setting Up Your Automation Account', minutes: 9 },
      { id: 'l4', title: 'Building Workflow 1', minutes: 20 },
      { id: 'l5', title: 'Building Workflow 2', minutes: 18 },
      { id: 'l6', title: 'Managing Your Pipeline', minutes: 12 },
      { id: 'l7', title: 'Bonus: Full System Walkthrough', minutes: 25 },
    ],
  },
  {
    id: 'earn-while-you-learn',
    title: 'Earn While You Learn',
    blurb: 'Turn what you just learned into your first paid AI product.',
    color: 'from-lime-500 to-green-600',
    lessons: [
      { id: 'l1', title: 'Packaging Your Skill as an Offer', minutes: 8 },
      { id: 'l2', title: 'Getting Your First Client', minutes: 12 },
    ],
  },
]

export const totalLessons = courses.reduce((n, c) => n + c.lessons.length, 0)
