// Simple, original, schematic diagrams for OSCE procedure steps and viva instrument
// identification. Deliberately plain/labeled line-art rather than photorealistic —
// the goal is clarity of landmark/technique, not visual fidelity.
import React from "react";

const LBL = { fontSize: 11, fontFamily: "system-ui, sans-serif", fontWeight: 600 };
const SUB = { fontSize: 9.5, fontFamily: "system-ui, sans-serif", fill: "#5B6B7C" };

function Wrap({ viewBox = "0 0 320 220", children }) {
  return (
    <svg viewBox={viewBox} style={{ width: "100%", maxWidth: 380, height: "auto", display: "block", margin: "0 auto" }}>
      {children}
    </svg>
  );
}

export const DIAGRAMS = {
  hand_position_compressions: (t) => (
    <Wrap>
      <rect x="60" y="150" width="200" height="30" rx="10" fill={t.bgAlt} stroke={t.cardBorder} />
      <ellipse cx="160" cy="165" rx="90" ry="14" fill="#F3D9C9" />
      <ellipse cx="160" cy="120" rx="34" ry="20" fill="#F3D9C9" />
      <line x1="160" y1="120" x2="160" y2="150" stroke={t.textFaint} strokeWidth="1" strokeDasharray="2 2" />
      <path d="M140,105 q20,-10 40,0" fill="none" stroke={t.navy} strokeWidth="3" strokeLinecap="round" />
      <path d="M136,98 q24,-14 48,0" fill="none" stroke={t.navy} strokeWidth="3" strokeLinecap="round" opacity="0.6" />
      <circle cx="160" cy="98" r="3" fill={t.red} />
      <text x="160" y="80" textAnchor="middle" style={LBL} fill={t.text}>Heel of hand, lower half of sternum</text>
      <text x="160" y="196" textAnchor="middle" style={{ ...SUB, fontSize: 8.5 }}>Straight arms · 100–120/min</text>
      <text x="160" y="207" textAnchor="middle" style={{ ...SUB, fontSize: 8.5 }}>5–6cm depth, full recoil between</text>
    </Wrap>
  ),
  aed_pad_placement: (t) => (
    <Wrap>
      <rect x="110" y="40" width="100" height="150" rx="30" fill="#F3D9C9" />
      <circle cx="180" cy="70" r="16" fill={t.accent || t.navy} opacity="0.85" />
      <text x="180" y="55" textAnchor="middle" style={SUB} fill={t.text}>Pad 1</text>
      <text x="198" y="88" style={SUB}>Right, below collarbone</text>
      <circle cx="135" cy="140" r="16" fill={t.accent || t.navy} opacity="0.85" />
      <text x="135" y="125" textAnchor="middle" style={SUB} fill={t.text}>Pad 2</text>
      <text x="60" y="160" style={SUB}>Left mid-axillary line</text>
      <path d="M180,86 Q160,110 150,124" stroke={t.textFaint} strokeDasharray="3 3" fill="none" />
      <text x="160" y="205" textAnchor="middle" style={{ ...LBL, fontSize: 10 }} fill={t.text}>Shock vector crosses the heart</text>
    </Wrap>
  ),
  head_tilt_chin_lift: (t) => (
    <Wrap>
      <path d="M110,120 Q100,60 160,55 Q210,55 205,110 Q200,140 175,150 L165,170 L150,150 Q115,150 110,120 Z" fill="#F3D9C9" />
      <path d="M100,150 Q160,175 220,150" stroke={t.navy} strokeWidth="3" fill="none" strokeLinecap="round" />
      <circle cx="100" cy="150" r="4" fill={t.red} />
      <circle cx="165" cy="170" r="4" fill={t.red} />
      <text x="60" y="150" textAnchor="middle" style={SUB} fill={t.text}>Hand on forehead — tilt back</text>
      <text x="220" y="185" textAnchor="middle" style={SUB} fill={t.text}>Fingers under chin — lift</text>
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>Head-tilt / chin-lift opens the airway</text>
    </Wrap>
  ),
  syringe_pump_setup: (t) => (
    <Wrap>
      <rect x="40" y="90" width="240" height="70" rx="8" fill={t.bgAlt} stroke={t.cardBorder} strokeWidth="2" />
      <rect x="55" y="105" width="80" height="18" rx="3" fill={t.navySoft} stroke={t.navy} />
      <text x="95" y="118" textAnchor="middle" style={{ ...SUB, fontSize: 8.5 }} fill={t.navy}>rate display</text>
      <rect x="150" y="100" width="110" height="26" rx="13" fill="#fff" stroke={t.textFaint} />
      <rect x="150" y="108" width="70" height="10" fill={t.textFaint} opacity="0.4" />
      <circle cx="252" cy="113" r="9" fill={t.accent || t.navy} />
      <text x="252" y="116" textAnchor="middle" style={{ ...SUB, fontSize: 8 }} fill="#fff">→</text>
      <rect x="150" y="140" width="8" height="10" fill={t.textMuted} />
      <rect x="252" y="140" width="8" height="10" fill={t.textMuted} />
      <text x="154" y="158" style={{ ...SUB, fontSize: 8 }}>plunger clamp</text>
      <text x="205" y="158" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>barrel</text>
      <text x="160" y="200" textAnchor="middle" style={LBL} fill={t.text}>Syringe seated with plunger &amp; barrel clamped</text>
    </Wrap>
  ),
  sniffing_position: (t) => (
    <Wrap>
      <rect x="60" y="150" width="90" height="24" rx="8" fill={t.bgAlt} stroke={t.cardBorder} />
      <text x="105" y="167" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>pillow</text>
      <path d="M130,150 Q125,100 175,95 Q220,95 218,140 Q215,160 195,168 L188,185 L175,168 Q140,168 130,150 Z" fill="#F3D9C9" />
      <path d="M130,150 Q170,175 235,150" stroke={t.navy} strokeWidth="2.5" fill="none" strokeDasharray="0" />
      <path d="M175,95 L218,140" stroke={t.red} strokeWidth="1.5" strokeDasharray="3 3" />
      <text x="160" y="70" textAnchor="middle" style={SUB} fill={t.text}>Oral, pharyngeal &amp; laryngeal axes align</text>
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>Sniffing position — pillow under the occiput, neck flexed</text>
    </Wrap>
  ),
  laryngoscope_technique: (t) => (
    <Wrap>
      <path d="M60,180 L140,120 L200,80" stroke={t.navy} strokeWidth="6" strokeLinecap="round" fill="none" />
      <ellipse cx="205" cy="76" rx="10" ry="6" fill={t.textFaint} />
      <path d="M120,150 Q150,140 175,155" stroke="#E7A9A0" strokeWidth="10" fill="none" strokeLinecap="round" />
      <text x="90" y="140" style={{ ...SUB, fontSize: 8 }} fill={t.text}>tongue swept left</text>
      <text x="160" y="196" textAnchor="middle" style={{ ...SUB, fontSize: 8.5 }}>Held in LEFT hand · inserted from the right</text>
      <text x="160" y="207" textAnchor="middle" style={{ ...SUB, fontSize: 8.5 }}>Blade tip lifts the epiglottis</text>
      <text x="160" y="30" textAnchor="middle" style={LBL} fill={t.text}>Laryngoscope insertion technique</text>
    </Wrap>
  ),
  ett_landmark: (t) => (
    <Wrap>
      <rect x="30" y="95" width="220" height="14" rx="7" fill="#EFEFEF" stroke={t.textFaint} />
      <circle cx="215" cy="102" r="16" fill="#F0C9C0" opacity="0.7" />
      <rect x="255" y="90" width="30" height="24" rx="4" fill={t.navySoft} stroke={t.navy} />
      <text x="270" y="127" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>connector</text>
      <text x="215" y="80" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>cuff</text>
      <line x1="60" y1="95" x2="60" y2="115" stroke={t.red} strokeWidth="1.5" />
      <text x="60" y="130" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>depth mark (~21–23cm)</text>
      <path d="M255,102 Q225,150 200,160" stroke={t.textFaint} strokeDasharray="2 2" fill="none" />
      <circle cx="255" cy="102" r="3" fill={t.red} />
      <text x="200" y="175" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>pilot balloon (cuff indicator)</text>
      <text x="160" y="30" textAnchor="middle" style={LBL} fill={t.text}>Endotracheal tube — key parts</text>
    </Wrap>
  ),
  central_line_landmark: (t) => (
    <Wrap>
      <path d="M100,40 L100,90 Q100,120 130,140 L190,180 Q220,195 250,195" stroke={t.textFaint} strokeWidth="1" fill="none" />
      <ellipse cx="160" cy="90" rx="70" ry="80" fill="#F3D9C9" opacity="0.5" />
      <path d="M150,45 Q145,90 155,140" stroke="#5B8DBE" strokeWidth="8" fill="none" strokeLinecap="round" opacity="0.8" />
      <text x="175" y="70" style={{ ...SUB, fontSize: 8.5 }} fill={t.text}>Internal jugular vein</text>
      <path d="M110,150 Q160,155 210,150" stroke="#5B8DBE" strokeWidth="8" fill="none" strokeLinecap="round" opacity="0.8" />
      <text x="110" y="175" style={{ ...SUB, fontSize: 8.5 }} fill={t.text}>Subclavian vein</text>
      <circle cx="150" cy="90" r="4" fill={t.red} />
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>Common central line insertion sites</text>
    </Wrap>
  ),
  sterile_field_setup: (t) => (
    <Wrap>
      <rect x="50" y="70" width="220" height="110" fill="#fff" stroke={t.navy} strokeWidth="2" strokeDasharray="4 3" />
      <text x="160" y="65" textAnchor="middle" style={{ ...SUB, fontSize: 8.5 }}>sterile drape boundary</text>
      <rect x="70" y="90" width="40" height="12" fill={t.navySoft} stroke={t.navy} />
      <rect x="120" y="90" width="40" height="12" fill={t.navySoft} stroke={t.navy} />
      <rect x="170" y="90" width="40" height="12" fill={t.navySoft} stroke={t.navy} />
      <text x="160" y="115" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>sterile instruments laid out, not crossing the boundary</text>
      <circle cx="90" cy="150" r="14" fill="#F3D9C9" />
      <text x="90" y="170" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>antiseptic prep</text>
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>Maintain a sterile field throughout</text>
    </Wrap>
  ),
  ett_care_check: (t) => (
    <Wrap>
      <rect x="70" y="60" width="180" height="110" rx="10" fill={t.bgAlt} stroke={t.cardBorder} />
      {[0, 1, 2, 3].map((i) => (
        <g key={i}>
          <rect x="90" y={80 + i * 22} width="14" height="14" rx="3" fill="none" stroke={t.navy} strokeWidth="1.5" />
          <line x1="115" y1={87 + i * 22} x2="220" y2={87 + i * 22} stroke={t.textFaint} strokeWidth="4" opacity="0.5" />
        </g>
      ))}
      <text x="160" y="195" textAnchor="middle" style={LBL} fill={t.text}>Depth mark · cuff · bite block · tubing support</text>
    </Wrap>
  ),
  trach_anatomy: (t) => (
    <Wrap>
      <ellipse cx="160" cy="90" rx="75" ry="70" fill="#F3D9C9" opacity="0.5" />
      <rect x="140" y="120" width="16" height="14" fill="#fff" stroke={t.textFaint} />
      <path d="M148,134 Q148,150 148,160" stroke={t.navy} strokeWidth="10" strokeLinecap="round" />
      <ellipse cx="148" cy="164" rx="12" ry="6" fill={t.navySoft} stroke={t.navy} />
      <text x="200" y="128" style={{ ...SUB, fontSize: 8 }}>flange &amp; tape</text>
      <text x="200" y="165" style={{ ...SUB, fontSize: 8 }}>cuff (in trachea)</text>
      <line x1="196" y1="123" x2="158" y2="126" stroke={t.textFaint} strokeDasharray="2 2" />
      <line x1="196" y1="162" x2="162" y2="163" stroke={t.textFaint} strokeDasharray="2 2" />
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>Tracheostomy tube in the stoma</text>
    </Wrap>
  ),
  opa_sizing: (t) => (
    <Wrap>
      <path d="M110,60 Q90,110 110,160 Q140,190 180,180 Q220,165 215,110 Q210,65 170,55 Q135,50 110,60 Z" fill="#F3D9C9" />
      <circle cx="150" cy="115" r="3" fill={t.text} />
      <path d="M148,150 Q160,158 175,150" stroke={t.navy} strokeWidth="2" fill="none" />
      <path d="M148,150 L200,145" stroke={t.red} strokeWidth="2" strokeDasharray="4 2" />
      <circle cx="148" cy="150" r="3" fill={t.red} />
      <circle cx="200" cy="145" r="3" fill={t.red} />
      <text x="200" y="130" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>angle of jaw</text>
      <text x="130" y="170" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>corner of mouth</text>
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>OPA size = corner of mouth to angle of jaw</text>
    </Wrap>
  ),
  opa_insertion_rotation: (t) => (
    <Wrap viewBox="0 0 340 220">
      <text x="90" y="30" textAnchor="middle" style={{ ...SUB, fontSize: 9, fontWeight: 700 }} fill={t.text}>Step 1: insert inverted</text>
      <path d="M50,100 Q45,140 65,165" stroke={t.textFaint} strokeWidth="10" fill="none" strokeLinecap="round" opacity="0.4" />
      <path d="M50,100 Q75,90 100,105" stroke={t.navy} strokeWidth="5" fill="none" strokeLinecap="round" />
      <text x="90" y="185" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>concave curve UP</text>
      <line x1="170" y1="110" x2="170" y2="110" />
      <text x="255" y="30" textAnchor="middle" style={{ ...SUB, fontSize: 9, fontWeight: 700 }} fill={t.text}>Step 2: rotate 180°</text>
      <path d="M215,100 Q210,140 230,165" stroke={t.textFaint} strokeWidth="10" fill="none" strokeLinecap="round" opacity="0.4" />
      <path d="M215,150 Q240,160 265,145" stroke={t.navy} strokeWidth="5" fill="none" strokeLinecap="round" />
      <path d="M235,95 A18,18 0 1 1 234,94" stroke={t.red} strokeWidth="2" fill="none" markerEnd="url(#arrow)" />
      <text x="255" y="185" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>curve now follows tongue</text>
    </Wrap>
  ),
  oxygen_mask_fit: (t) => (
    <Wrap>
      <ellipse cx="160" cy="100" rx="65" ry="80" fill="#F3D9C9" opacity="0.6" />
      <path d="M120,110 Q160,150 200,110 Q205,80 160,80 Q115,80 120,110 Z" fill="#fff" stroke={t.navy} strokeWidth="2" opacity="0.9" />
      <path d="M120,105 Q90,95 70,105" stroke={t.textMuted} strokeWidth="2" fill="none" />
      <path d="M200,105 Q230,95 250,105" stroke={t.textMuted} strokeWidth="2" fill="none" />
      <circle cx="160" cy="82" r="8" fill={t.navySoft} stroke={t.navy} />
      <text x="60" y="100" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>elastic strap</text>
      <text x="160" y="65" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>nose brace</text>
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>Mask seals face — snug, not tight</text>
    </Wrap>
  ),
  peak_flow_technique: (t) => (
    <Wrap>
      <ellipse cx="90" cy="70" rx="26" ry="28" fill="#F3D9C9" />
      <rect x="115" y="90" width="150" height="26" rx="6" fill="#fff" stroke={t.navy} strokeWidth="2" />
      <rect x="115" y="90" width="60" height="26" fill={t.navySoft} opacity="0.6" />
      <line x1="175" y1="90" x2="175" y2="116" stroke={t.red} strokeWidth="2" />
      <text x="175" y="130" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>gauge reset to zero</text>
      <path d="M100,80 Q108,90 115,100" stroke={t.textMuted} strokeWidth="6" fill="none" strokeLinecap="round" />
      <text x="190" y="70" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>held horizontal</text>
      <text x="160" y="196" textAnchor="middle" style={{ ...LBL, fontSize: 9.5 }} fill={t.text}>Deep breath → tight lip seal</text>
      <text x="160" y="209" textAnchor="middle" style={{ ...LBL, fontSize: 9.5 }} fill={t.text}>→ short, sharp huff out</text>
    </Wrap>
  ),
  laryngoscope_instrument: (t) => (
    <Wrap>
      <rect x="80" y="60" width="18" height="90" rx="4" fill={t.navySoft} stroke={t.navy} strokeWidth="1.5" />
      <text x="60" y="105" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>handle</text>
      <path d="M98,70 Q160,60 200,90 Q210,95 200,100 L110,100" stroke={t.textMuted} strokeWidth="10" fill="none" strokeLinecap="round" />
      <circle cx="205" cy="93" r="5" fill="#FFD86B" stroke={t.textFaint} />
      <text x="205" y="75" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>light source</text>
      <text x="160" y="120" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>curved (Macintosh) blade</text>
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>Laryngoscope — handle + blade with light</text>
    </Wrap>
  ),
  yankauer_suction: (t) => (
    <Wrap>
      <path d="M70,110 Q140,90 200,100" stroke={t.textMuted} strokeWidth="9" fill="none" strokeLinecap="round" />
      <ellipse cx="212" cy="102" rx="16" ry="12" fill="#fff" stroke={t.navy} strokeWidth="2" />
      {[0, 1, 2, 3].map((i) => (
        <circle key={i} cx={205 + i * 5} cy={96 + (i % 2) * 10} r="1.5" fill={t.navy} />
      ))}
      <text x="212" y="130" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>rigid perforated tip</text>
      <circle cx="80" cy="112" r="7" fill={t.navySoft} stroke={t.navy} />
      <text x="65" y="135" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>thumb control vent</text>
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>Yankauer sucker — rigid oropharyngeal suction</text>
    </Wrap>
  ),
  bvm_bag: (t) => (
    <Wrap>
      <ellipse cx="110" cy="110" rx="45" ry="55" fill={t.navySoft} stroke={t.navy} strokeWidth="2" />
      <circle cx="165" cy="95" r="14" fill="#fff" stroke={t.textFaint} strokeWidth="1.5" />
      <text x="165" y="75" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>one-way valve</text>
      <path d="M178,95 Q220,95 235,80" stroke={t.textMuted} strokeWidth="6" fill="none" strokeLinecap="round" />
      <ellipse cx="240" cy="75" rx="14" ry="18" fill="#F3D9C9" stroke={t.textFaint} />
      <text x="240" y="55" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>mask</text>
      <ellipse cx="70" cy="150" rx="18" ry="22" fill="#fff" stroke={t.textFaint} opacity="0.8" />
      <text x="70" y="180" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>O2 reservoir bag</text>
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>Bag-Valve-Mask (Ambu bag)</text>
    </Wrap>
  ),
  aed_device: (t) => (
    <Wrap>
      <rect x="90" y="55" width="140" height="110" rx="10" fill={t.bgAlt} stroke={t.navy} strokeWidth="2" />
      <rect x="105" y="70" width="110" height="35" rx="4" fill="#111" />
      <text x="160" y="92" textAnchor="middle" style={{ fontSize: 10, fill: "#4BE07A", fontFamily: "monospace" }}>ANALYZING…</text>
      <circle cx="120" cy="130" r="10" fill={t.red} />
      <text x="120" y="150" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>shock button</text>
      <circle cx="200" cy="130" r="10" fill={t.navySoft} stroke={t.navy} />
      <text x="200" y="150" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>power/on</text>
      <text x="160" y="205" textAnchor="middle" style={LBL} fill={t.text}>AED — analyzes rhythm, prompts shock if indicated</text>
    </Wrap>
  ),
  central_line_kit: (t) => (
    <Wrap>
      <line x1="60" y1="100" x2="160" y2="100" stroke={t.textMuted} strokeWidth="4" strokeLinecap="round" />
      <text x="60" y="85" style={{ ...SUB, fontSize: 8 }}>needle</text>
      <path d="M170,100 q40,0 60,-4" stroke="#C9A227" strokeWidth="2" fill="none" strokeDasharray="1 2" />
      <text x="230" y="90" style={{ ...SUB, fontSize: 8 }}>guidewire</text>
      <rect x="170" y="120" width="60" height="10" rx="5" fill={t.textFaint} />
      <text x="200" y="145" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>dilator</text>
      <path d="M60,160 Q130,175 220,165" stroke={t.navy} strokeWidth="7" fill="none" strokeLinecap="round" />
      <text x="140" y="190" textAnchor="middle" style={{ ...SUB, fontSize: 8 }}>multi-lumen catheter</text>
      <text x="160" y="35" textAnchor="middle" style={LBL} fill={t.text}>Seldinger kit: needle → wire → dilator → catheter</text>
    </Wrap>
  ),
  defib_pads: (t) => (
    <Wrap>
      <rect x="100" y="50" width="120" height="90" rx="30" fill="#F3D9C9" opacity="0.5" />
      <rect x="115" y="65" width="40" height="26" rx="4" fill={t.navySoft} stroke={t.navy} strokeWidth="1.5" />
      <text x="135" y="105" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>sternal</text>
      <rect x="170" y="95" width="40" height="26" rx="4" fill={t.navySoft} stroke={t.navy} strokeWidth="1.5" />
      <text x="190" y="135" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>apical</text>
      <text x="160" y="30" textAnchor="middle" style={{ ...SUB, fontSize: 8.5 }}>anterior-lateral placement</text>
      <text x="160" y="200" textAnchor="middle" style={LBL} fill={t.text}>Defibrillator pads / paddles</text>
    </Wrap>
  ),
  iv_cannula: (t) => (
    <Wrap>
      <line x1="50" y1="120" x2="150" y2="120" stroke="#C9C9C9" strokeWidth="3" />
      <rect x="150" y="110" width="55" height="20" rx="4" fill={t.navySoft} stroke={t.navy} strokeWidth="1.5" />
      <text x="177" y="105" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>hub (colour-coded by gauge)</text>
      <rect x="205" y="116" width="12" height="8" fill="#fff" stroke={t.textFaint} />
      <text x="211" y="140" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>injection port</text>
      <line x1="217" y1="120" x2="250" y2="120" stroke="#E8CBC0" strokeWidth="5" strokeLinecap="round" />
      <text x="70" y="105" textAnchor="middle" style={{ ...SUB, fontSize: 7.5 }}>flashback chamber</text>
      <text x="160" y="200" textAnchor="middle" style={LBL} fill={t.text}>IV cannula (venflon)</text>
    </Wrap>
  ),
};

export function OsceDiagram({ id, theme }) {
  const fn = DIAGRAMS[id];
  if (!fn) return null;
  return fn(theme);
}
