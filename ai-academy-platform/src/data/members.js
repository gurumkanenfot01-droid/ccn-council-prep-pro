// Placeholder community member seed data.
const names = [
  'Jordan Lee', 'Amara Okafor', 'Ravi Patel', 'Sofia Marchetti', 'Ben Larsson',
  'Yuki Tanaka', 'Priya Nair', 'Diego Ramos', 'Chloe Bennett', 'Malik Johnson',
  'Elena Petrova', 'Tariq Hassan', 'Grace Kim', 'Noah Fischer', 'Aisha Bello',
  'Liam O\'Connor', 'Fatima Zahra', 'Carlos Mendes', 'Hana Kobayashi', 'Owen Walsh',
  'Ines Almeida', 'Samuel Osei', 'Mei Lin', 'Victor Novak', 'Zainab Idris',
]

export const members = names.map((name, i) => ({
  id: `m${i + 1}`,
  name,
  role: i === 0 ? 'Founder' : i < 3 ? 'Mentor' : 'Member',
  joined: `${2025}-${String((i % 12) + 1).padStart(2, '0')}-01`,
  points: Math.max(20, 620 - i * 22 + (i % 5) * 12),
}))
