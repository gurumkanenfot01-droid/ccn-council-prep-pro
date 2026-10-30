// Nursing specialties. Students and exams each belong to one specialty, and a
// student only sees their own specialty's exams. The admin page works on one
// specialty at a time (chosen at the top of the page).
export const SPECIALTIES = [
  { id: "ccn", label: "Critical Care Nursing" },
  { id: "periop", label: "Perioperative Nursing" },
];
export const specialtyLabel = id => (SPECIALTIES.find(s => s.id === id) || SPECIALTIES[0]).label;

const KEY = "exam-admin-specialty";
let current = "ccn";
try { const v = localStorage.getItem(KEY); if (SPECIALTIES.some(s => s.id === v)) current = v; } catch (e) { /* ignore */ }

export function getSpecialty() { return current; }
export function setSpecialty(id) {
  current = id;
  try { localStorage.setItem(KEY, id); } catch (e) { /* ignore */ }
}
