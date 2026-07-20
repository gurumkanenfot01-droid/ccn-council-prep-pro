export const OSCE_PROCEDURES = [
  {
    "slug": "bls-cpr",
    "title": "Basic Life Support (BLS) / CPR",
    "category": "Resuscitation",
    "totalMarks": 20,
    "source": "JUTH Pre-Council Professional Qualifying OSCE Examination (Procedure Station 5)",
    "scenario": "A 27-year-old medical student suddenly collapsed during ward round in the High Dependency Unit while you were on duty and had cardiac arrest. Use the AED provided to demonstrate how to perform CPR. Ensure you deliver shock and recognize return of patient's breath and circulation. Report your procedure and findings as you progress.",
    "diagramIds": [
      "hand_position_compressions",
      "aed_pad_placement",
      "head_tilt_chin_lift"
    ],
    "sections": [
      {
        "label": "A. Safety, Response & Help",
        "steps": [
          {
            "no": 1,
            "marks": 1,
            "activity": "Ensure safety of environment and danger",
            "explanation": "You cannot help the patient if you become a casualty yourself — check for hazards (spilled fluids, exposed wiring, traffic) before approaching."
          },
          {
            "no": 2,
            "marks": 0.5,
            "activity": "Check responsiveness",
            "explanation": "Tap the shoulders firmly and shout the patient's name — this distinguishes a true collapse from someone who is merely asleep or resting."
          },
          {
            "no": 3,
            "marks": 2,
            "activity": "Ability to assess for circulation and breathing within 10 seconds by tilting the head backward and lifting the chin, and palpating the carotid/radial/femoral artery or auscultating for heart sound",
            "explanation": "The head-tilt/chin-lift opens the airway by lifting the tongue off the posterior pharynx. Assessment must not exceed 10 seconds — delaying compressions to search longer for a pulse worsens outcomes.",
            "diagramId": "head_tilt_chin_lift"
          },
          {
            "no": 4,
            "marks": 1,
            "activity": "Shout for help / call for help",
            "explanation": "Activating the emergency response system (crash team, get the AED/crash cart) early is one of the strongest predictors of survival — never delay this to work alone."
          }
        ]
      },
      {
        "label": "B. Airway & Breathing Check",
        "steps": [
          {
            "no": 5,
            "marks": 2,
            "activity": "Open airway and check breathing by looking, listening and feeling for not more than 10 seconds",
            "explanation": "Look for chest rise, listen for breath sounds, feel for air on your cheek. Agonal gasping is NOT normal breathing — it should be treated as absent breathing and CPR started immediately."
          }
        ]
      },
      {
        "label": "C. Compressions",
        "steps": [
          {
            "no": 6,
            "marks": 2,
            "activity": "Ability to expose the chest, position yourself directly over the patient's chest, and start chest compressions (30 compressions)",
            "explanation": "Positioning directly over the chest with straight arms allows you to use body weight rather than arm strength, which is essential for maintaining adequate depth without rapid fatigue.",
            "diagramId": "hand_position_compressions"
          },
          {
            "no": 8,
            "marks": 1,
            "activity": "Ability to deliver correct chest compression at the rate of 100–120/min, at the mid sternum",
            "explanation": "The heel of the hand goes on the lower half of the sternum (mid-sternum), never the xiphoid process, which can fracture and lacerate the liver."
          },
          {
            "no": 9,
            "marks": 0.5,
            "activity": "Ensure the depth is about 5–6cm (2–3 inches)",
            "explanation": "Compressions that are too shallow fail to generate adequate cardiac output; allowing full chest recoil between compressions is equally important to let the heart refill."
          }
        ]
      },
      {
        "label": "D. Ventilation",
        "steps": [
          {
            "no": 7,
            "marks": 1.5,
            "activity": "Ability to give ventilation using bag-valve mask after 30 compressions — give 2 rescue breaths, ensuring a good seal around the victim's mouth/mask",
            "explanation": "A poor mask seal is the most common reason for ineffective ventilation — use the C-E grip (thumb/index finger forming a 'C' over the mask, remaining fingers forming an 'E' along the jaw) to maintain the seal while lifting the jaw."
          }
        ]
      },
      {
        "label": "E. Continued CPR & Defibrillation",
        "steps": [
          {
            "no": 10,
            "marks": 1,
            "activity": "Continue the cycle of 30 compressions followed by 2 rescue breaths until the victim shows signs of life",
            "explanation": "Minimising interruptions to compressions ('hands-off time') is critical — every pause lets coronary perfusion pressure collapse, which then takes many further compressions to rebuild."
          },
          {
            "no": 11,
            "marks": 2,
            "activity": "Turn on the AED when available and follow the prompts for its use. Apply pads to the victim's chest and deliver a shock if needed",
            "explanation": "Pads go one below the right collarbone and one at the left mid-axillary line (below the armpit) so the shock vector crosses the heart. Everyone must be clear of the patient before the shock is delivered.",
            "diagramId": "aed_pad_placement"
          }
        ]
      },
      {
        "label": "F. Post-Resuscitation Care",
        "steps": [
          {
            "no": 12,
            "marks": 2,
            "activity": "Ability to recognize return of patient's circulation and breathing (ROSC)",
            "explanation": "Signs of ROSC include a palpable pulse, spontaneous breathing, movement, or coughing — CPR is stopped once ROSC is confirmed, and post-arrest care begins."
          },
          {
            "no": 13,
            "marks": 0.5,
            "activity": "Monitor patient closely",
            "explanation": "Continuous monitoring of vital signs, rhythm, and consciousness level is essential, since re-arrest can occur at any point after ROSC."
          },
          {
            "no": 14,
            "marks": 1,
            "activity": "Administer prescribed vasopressors and anti-arrhythmic medications",
            "explanation": "Adrenaline (1mg every 3–5 minutes) and, for shockable rhythms, amiodarone are the core ACLS drugs used alongside compressions/defibrillation."
          },
          {
            "no": 15,
            "marks": 0.5,
            "activity": "Make patient comfortable",
            "explanation": "Once stabilised, attend to dignity, positioning, and comfort as part of holistic post-arrest care."
          },
          {
            "no": 16,
            "marks": 0.5,
            "activity": "Perform hand hygiene",
            "explanation": "Standard infection control practice at the end of any patient contact/procedure."
          },
          {
            "no": 17,
            "marks": 1,
            "activity": "Document the procedure done",
            "explanation": "Accurate documentation of the arrest, interventions given, timings, and outcome is both a clinical and medico-legal requirement."
          }
        ]
      }
    ]
  },
  {
    "slug": "syringe-pump",
    "title": "Use of Syringe Pump",
    "category": "Medication Administration",
    "totalMarks": 18,
    "source": "Checklist for the Use of Syringe Pump",
    "diagramIds": [
      "syringe_pump_setup"
    ],
    "sections": [
      {
        "label": "A. Obtain Consent",
        "steps": [
          {
            "no": 1,
            "marks": 1,
            "activity": "Introduce self to patient",
            "explanation": "Builds rapport and confirms you are addressing the correct, conscious patient before any medication procedure."
          },
          {
            "no": 2,
            "marks": 1,
            "activity": "Inform patient and relatives about the procedure",
            "explanation": "Informed consent and reducing anxiety are core patient-rights obligations before any infusion is started."
          }
        ]
      },
      {
        "label": "B. PPE and Hygiene",
        "steps": [
          {
            "no": 3,
            "marks": 1,
            "activity": "Wears appropriate PPE (gloves, gown, etc.)",
            "explanation": "Protects both patient and nurse from cross-contamination when handling IV lines and medication."
          },
          {
            "no": 4,
            "marks": 1,
            "activity": "Washes hands, uses alcohol swabs to clean hands and equipment as needed",
            "explanation": "Hand hygiene is the single most effective infection-prevention measure before any invasive procedure."
          }
        ]
      },
      {
        "label": "C. Medication Verification",
        "steps": [
          {
            "no": 4,
            "marks": 1,
            "activity": "Verifies the medication order",
            "explanation": "Confirms the prescription is valid, legible, and appropriate before proceeding — never administer from an unclear or unsigned order."
          },
          {
            "no": 5,
            "marks": 1,
            "activity": "Verifies the patient's identity using the 5 Rights of Drug Administration (right patient, drug, route, dosage, time)",
            "explanation": "The '5 Rights' framework is the core safety check preventing medication errors — every one must be independently confirmed, not assumed."
          }
        ]
      },
      {
        "label": "D. Syringe Preparation",
        "steps": [
          {
            "no": 6,
            "marks": 1,
            "activity": "Checks the medication for correct drug, dose, and expiration date",
            "explanation": "Expired or incorrectly compounded medication can be ineffective or harmful — always inspect the vial/ampoule directly, not just the label on the tray."
          },
          {
            "no": 7,
            "marks": 1,
            "activity": "Removes air bubbles from the syringe",
            "explanation": "Air in the line can cause inaccurate dosing at the start of the infusion and, in central lines, carries a (small but real) air embolism risk."
          }
        ]
      },
      {
        "label": "E. Syringe Pump Setup",
        "steps": [
          {
            "no": 8,
            "marks": 1,
            "activity": "Loads the syringe into the pump correctly",
            "explanation": "Correct seating of the syringe barrel and plunger against the pump's sensors is essential for the pump to accurately detect occlusion and deliver the set rate.",
            "diagramId": "syringe_pump_setup"
          },
          {
            "no": 9,
            "marks": 1,
            "activity": "Attaches the IV giving set to the syringe",
            "explanation": "A secure luer-lock connection prevents disconnection and leakage once the infusion is running."
          },
          {
            "no": 10,
            "marks": 1,
            "activity": "Primes the IV giving set to remove air",
            "explanation": "Priming clears air from the entire line, not just the syringe, before it ever reaches the patient's bloodstream."
          }
        ]
      },
      {
        "label": "F. Programming the Pump",
        "steps": [
          {
            "no": 11,
            "marks": 1,
            "activity": "Turns on the syringe pump; enters the correct rate of infusion as per the medication order",
            "explanation": "The infusion rate (ml/hr) must exactly match the prescription — many high-alert drugs (e.g. vasopressors, insulin) are extremely rate-sensitive."
          },
          {
            "no": 12,
            "marks": 1,
            "activity": "Double-checks the programmed settings with the medication order",
            "explanation": "An independent double-check of pump programming against the order is a recognised high-alert medication safety practice, catching errors before they reach the patient."
          }
        ]
      },
      {
        "label": "G. Connecting to the Patient",
        "steps": [
          {
            "no": 13,
            "marks": 1,
            "activity": "Cleans the IV access port with an alcohol swab",
            "explanation": "Disinfecting the port before connection reduces the risk of introducing bacteria into the bloodstream."
          },
          {
            "no": 14,
            "marks": 1,
            "activity": "Connects the IV giving set to the patient's IV access",
            "explanation": "A secure, correctly labelled connection prevents accidental disconnection and line mix-ups (especially important with multiple concurrent infusions)."
          },
          {
            "no": 15,
            "marks": 1,
            "activity": "Ensures the connection is secure",
            "explanation": "A loose connection risks both leakage of medication and entry of air/contamination into the line."
          }
        ]
      },
      {
        "label": "H. Monitoring",
        "steps": [
          {
            "no": 16,
            "marks": 1,
            "activity": "Starts the infusion on the syringe pump",
            "explanation": "The final step activating delivery — always visually confirm the pump has started running before leaving the bedside."
          },
          {
            "no": 17,
            "marks": 1,
            "activity": "Monitors the pump for correct operation (no alarms, correct flow)",
            "explanation": "Ongoing monitoring catches occlusion, air-in-line, or completion alarms early, and confirms the patient is receiving the medication as intended."
          }
        ]
      }
    ]
  },
  {
    "slug": "et-intubation",
    "title": "Endotracheal Intubation",
    "category": "Airway Management",
    "totalMarks": 21,
    "source": "Checklist for Endotracheal Intubation",
    "diagramIds": [
      "sniffing_position",
      "laryngoscope_technique",
      "ett_landmark"
    ],
    "sections": [
      {
        "label": "A. Cockpit Drive (Equipment Check)",
        "steps": [
          {
            "no": 1,
            "marks": 1,
            "activity": "Choose appropriate size of Endotracheal Tube (ETT)",
            "explanation": "Standard adult sizes are approximately 7.0–7.5mm (female) and 7.5–8.0mm (male) internal diameter — always have a size up and size down ready as backup.",
            "diagramId": "ett_landmark"
          },
          {
            "no": 2,
            "marks": 1,
            "activity": "Inflate and deflate the cuff of the ETT",
            "explanation": "Testing the cuff before insertion confirms it holds pressure and has no leak — a failed cuff discovered after insertion means starting over."
          },
          {
            "no": 3,
            "marks": 1,
            "activity": "Mount the blade of the laryngoscope and check for light functionality",
            "explanation": "A dim or non-functioning light source will make glottic visualisation difficult or impossible during a time-critical procedure."
          },
          {
            "no": 4,
            "marks": 1,
            "activity": "Ensure all the needed drugs are available and not expired",
            "explanation": "Rapid sequence intubation requires immediate access to sedative and paralytic agents — checking availability beforehand avoids a dangerous mid-procedure delay."
          },
          {
            "no": 5,
            "marks": 1,
            "activity": "Lubricate tube with KY jelly",
            "explanation": "Lubrication reduces friction and trauma to the airway mucosa during passage of the tube."
          },
          {
            "no": 6,
            "marks": 1,
            "activity": "Insert guide wire (stylet) into the ETT",
            "explanation": "A stylet shapes the tube into a more rigid curve, making it easier to direct through the vocal cords, especially in a difficult airway."
          }
        ]
      },
      {
        "label": "B. Assessment of Patient",
        "steps": [
          {
            "no": 7,
            "marks": 1,
            "activity": "Assess the patient's oral cavity for food substances or potential impediments",
            "explanation": "Identifying dentures, foreign material, or anatomical obstacles beforehand reduces the risk of aspiration or a failed intubation attempt."
          },
          {
            "no": 8,
            "marks": 1,
            "activity": "Suction the oral cavity",
            "explanation": "Clearing secretions or vomitus improves visibility of the airway structures during laryngoscopy."
          },
          {
            "no": 9,
            "marks": 1,
            "activity": "Connect SpO2 probe",
            "explanation": "Continuous oxygen saturation monitoring throughout the procedure alerts the team promptly if the patient begins to desaturate."
          },
          {
            "no": 10,
            "marks": 1,
            "activity": "Pre-oxygenate patient",
            "explanation": "Pre-oxygenation with 100% oxygen builds an oxygen reserve, extending the 'safe apnoea time' available before desaturation during the intubation attempt."
          }
        ]
      },
      {
        "label": "C. Sedation",
        "steps": [
          {
            "no": 11,
            "marks": 1,
            "activity": "Gives the drugs in the correct order, mentions the correct drug and dose",
            "explanation": "Rapid sequence induction follows a specific sedative-then-paralytic sequence for patient safety and optimal intubating conditions."
          },
          {
            "no": 12,
            "marks": 1,
            "activity": "Gives through the correct route",
            "explanation": "IV administration ensures rapid, predictable onset needed for a time-critical procedure."
          }
        ]
      },
      {
        "label": "D. Muscle Paralysis",
        "steps": [
          {
            "no": 13,
            "marks": 1,
            "activity": "Mentions the correct drug and dose for paralysis",
            "explanation": "Neuromuscular blockade (e.g. succinylcholine or rocuronium) relaxes the jaw and vocal cords, dramatically improving intubating conditions."
          },
          {
            "no": 14,
            "marks": 1,
            "activity": "Gives through the correct route",
            "explanation": "As with sedation, IV administration is required for rapid, reliable onset."
          }
        ]
      },
      {
        "label": "E. Positioning",
        "steps": [
          {
            "no": 15,
            "marks": 1,
            "activity": "Position the patient in sniffing position by placing a pillow behind the neck and flexing the neck",
            "explanation": "The 'sniffing position' aligns the oral, pharyngeal, and laryngeal axes, giving the best possible line of sight to the glottis.",
            "diagramId": "sniffing_position"
          }
        ]
      },
      {
        "label": "F. Exposure",
        "steps": [
          {
            "no": 16,
            "marks": 1,
            "activity": "Grabs the laryngoscope with the non-dominant hand",
            "explanation": "The laryngoscope is always held in the left hand, freeing the right hand to manipulate the tube and manage the airway."
          },
          {
            "no": 17,
            "marks": 1,
            "activity": "Inserts into the oral cavity from the right and sweeps the tongue to the left",
            "explanation": "Entering from the right side and sweeping the tongue leftward clears it out of the direct line of sight to the vocal cords.",
            "diagramId": "laryngoscope_technique"
          }
        ]
      },
      {
        "label": "G. Insertion",
        "steps": [
          {
            "no": 18,
            "marks": 1,
            "activity": "Inserts the endotracheal tube",
            "explanation": "The tube is passed through the vocal cords under direct vision once they are clearly identified."
          },
          {
            "no": 19,
            "marks": 1,
            "activity": "Stops at the marked point of the ETT",
            "explanation": "Depth markings (typically ~21–23cm at the teeth/lips for adults) help avoid both accidental extubation and endobronchial (single-lung) intubation."
          },
          {
            "no": 20,
            "marks": 1,
            "activity": "Remove guide wire and inflate the cuff",
            "explanation": "The stylet is withdrawn once the tube is correctly placed, and the cuff is inflated to seal the trachea and prevent aspiration/air leak."
          }
        ]
      },
      {
        "label": "H. Assessment (Confirmation of Placement)",
        "steps": [
          {
            "no": 21,
            "marks": 1,
            "activity": "Use an Ambu bag to check for rise and fall of the chest and auscultation; connect to O2 source",
            "explanation": "Bilateral, equal chest rise and equal, bilateral breath sounds (with absence of sounds over the epigastrium) confirm correct tracheal placement — capnography is the gold standard confirmation where available."
          }
        ]
      }
    ]
  },
  {
    "slug": "central-line",
    "title": "Central Line Procedure (Insertion, Sampling & Care)",
    "category": "Vascular Access",
    "totalMarks": 13,
    "source": "Central Line Procedure Checklist",
    "diagramIds": [
      "central_line_landmark",
      "sterile_field_setup"
    ],
    "sections": [
      {
        "label": "A. Central Line Insertion (5 Marks)",
        "steps": [
          {
            "no": 1,
            "marks": 1,
            "activity": "Patient identification and consent: identify, introduce self to patient, explain the procedure, and obtain informed consent",
            "explanation": "Central line insertion is an invasive procedure with real risks (pneumothorax, bleeding, infection) — informed consent is both an ethical and legal requirement."
          },
          {
            "no": 2,
            "marks": 1,
            "activity": "Hand hygiene and aseptic preparation: perform thorough hand hygiene and prepare a sterile field",
            "explanation": "Central lines are a leading cause of CLABSI (central line-associated bloodstream infection) — strict asepsis at insertion is the single biggest modifiable risk factor.",
            "diagramId": "sterile_field_setup"
          },
          {
            "no": 3,
            "marks": 1,
            "activity": "Equipment preparation and positioning: assemble equipment and correctly position the patient (e.g. Trendelenburg)",
            "explanation": "Trendelenburg (head-down) positioning for subclavian/internal jugular access distends the vein and reduces the risk of air embolism during insertion."
          },
          {
            "no": 4,
            "marks": 1,
            "activity": "Apply chlorhexidine or povidone-iodine and drape the sterile field correctly",
            "explanation": "Chlorhexidine-based skin antisepsis has been shown to reduce catheter-related infection more effectively than povidone-iodine alone in most guidelines, though both remain in use.",
            "diagramId": "central_line_landmark"
          },
          {
            "no": 5,
            "marks": 1,
            "activity": "Insertion technique and confirmation: use correct insertion technique and confirm placement (e.g. X-ray or ultrasound)",
            "explanation": "The Seldinger technique (needle → guidewire → dilator → catheter) is standard. Confirmation by chest X-ray excludes pneumothorax and confirms the catheter tip sits at the cavo-atrial junction before use."
          }
        ]
      },
      {
        "label": "B. Blood Sampling from Central Line (4 Marks)",
        "steps": [
          {
            "no": 6,
            "marks": 0.5,
            "activity": "Use of PPE and line assessment: wear gloves and assess line patency",
            "explanation": "Confirming the line flushes and draws back easily before sampling avoids a failed draw and reduces infection risk from repeated manipulation."
          },
          {
            "no": 7,
            "marks": 1,
            "activity": "Line flushing and waste discard: flush with saline, discard initial blood per protocol",
            "explanation": "The first few millilitres drawn are discarded because they are diluted with the flush/heparin lock solution, which would otherwise skew laboratory results."
          },
          {
            "no": 8,
            "marks": 1,
            "activity": "Blood sample collection and labelling: collect correct volume and label specimens accurately",
            "explanation": "Mislabelled samples are a recognised, serious patient safety risk (e.g. wrong blood type transfused) — labelling must be done at the bedside, not later."
          },
          {
            "no": 9,
            "marks": 1.5,
            "activity": "Post-procedure care: flush line post-sampling and dispose of sharps and materials safely",
            "explanation": "Post-sampling flushing prevents blood from clotting within the lumen and occluding the line; sharps disposal protects staff from needlestick injury."
          }
        ]
      },
      {
        "label": "C. Central Line Care (4 Marks)",
        "steps": [
          {
            "no": 10,
            "marks": 1,
            "activity": "Daily site inspection and documentation: assess for redness, swelling, discharge; document findings",
            "explanation": "Daily inspection allows early detection of exit-site infection before it progresses to a bloodstream infection."
          },
          {
            "no": 11,
            "marks": 1,
            "activity": "Dressing change technique: changes dressing aseptically, using sterile gloves and materials",
            "explanation": "Aseptic non-touch technique during dressing changes is a core element of CLABSI prevention bundles."
          },
          {
            "no": 12,
            "marks": 1,
            "activity": "Catheter flushing protocol: flushes lumen(s) with appropriate solution and volume",
            "explanation": "Regular flushing maintains line patency and prevents thrombotic occlusion of unused lumens."
          },
          {
            "no": 13,
            "marks": 1,
            "activity": "Prevention of infection and complications: maintains a closed system, uses scrub-the-hub technique, and educates the patient",
            "explanation": "'Scrub the hub' — vigorously disinfecting the access port for at least 15 seconds before every access — is one of the most evidence-backed CLABSI prevention measures."
          }
        ]
      }
    ]
  },
  {
    "slug": "ett-care",
    "title": "Care of the Endotracheal Tube (ETT)",
    "category": "Airway Management",
    "totalMarks": 17,
    "source": "Checklist for Care of the Endotracheal Tube",
    "diagramIds": [
      "ett_care_check"
    ],
    "sections": [
      {
        "label": "A. Introduction",
        "steps": [
          {
            "no": 1,
            "marks": 1,
            "activity": "Greet client and introduce self if conscious",
            "explanation": "Even a sedated/ventilated patient should be greeted and oriented — hearing may persist even when a patient cannot respond."
          },
          {
            "no": 2,
            "marks": 1,
            "activity": "Explain the procedure and obtain consent",
            "explanation": "Consent (from the patient if able, otherwise appropriately from family/surrogate) remains an ethical requirement even for routine ICU care."
          },
          {
            "no": 3,
            "marks": 1,
            "activity": "Assemble all requirements at the patient's bedside",
            "explanation": "Having suction, spare tubes, and emergency airway equipment ready before starting avoids a dangerous scramble if a complication arises mid-procedure."
          },
          {
            "no": 4,
            "marks": 1,
            "activity": "Perform hand hygiene and put on gloves",
            "explanation": "Standard precaution before any airway contact, given the high risk of respiratory secretion exposure."
          }
        ]
      },
      {
        "label": "B. Procedure",
        "steps": [
          {
            "no": 5,
            "marks": 1,
            "activity": "Assess vital signs on the monitor",
            "explanation": "A baseline check before manipulating the airway allows you to quickly recognise any deterioration caused by the procedure itself."
          },
          {
            "no": 6,
            "marks": 1,
            "activity": "Ensure the ETT is connected to the ventilator via an adaptor",
            "explanation": "A secure ventilator connection is what actually delivers the set tidal volume/pressure — a loose connection silently fails to ventilate the patient."
          },
          {
            "no": 7,
            "marks": 1,
            "activity": "Support the ETT and tubing as needed",
            "explanation": "Unsupported tubing creates traction on the tube with patient movement, risking accidental displacement or extubation."
          },
          {
            "no": 8,
            "marks": 1,
            "activity": "Assess for need of suctioning",
            "explanation": "Suctioning should be performed based on clinical indication (visible/audible secretions, desaturation) rather than on a fixed routine schedule, to avoid unnecessary airway trauma."
          },
          {
            "no": 9,
            "marks": 1,
            "activity": "Perform suctioning if needed",
            "explanation": "Limit each suction pass to 10–15 seconds and pre-oxygenate first, since suctioning removes oxygen along with secretions."
          },
          {
            "no": 10,
            "marks": 1,
            "activity": "Clear around the ETT if nasally intubated, or check the bite block if orally intubated",
            "explanation": "A displaced bite block allows the patient to bite down and occlude the tube; nasal secretions around a nasal ETT increase infection and skin breakdown risk."
          },
          {
            "no": 11,
            "marks": 1,
            "activity": "Change the ETT holder if dirty",
            "explanation": "A soiled holder is both an infection risk and may have loosened its grip on the tube."
          },
          {
            "no": 12,
            "marks": 1,
            "activity": "Ensure the level mark is intact (unchanged from the documented insertion depth)",
            "explanation": "A shifted depth mark is often the first sign of tube migration toward extubation or endobronchial intubation before other symptoms appear."
          },
          {
            "no": 13,
            "marks": 1,
            "activity": "Ensure the ETT does not pull out",
            "explanation": "Ongoing vigilance against accidental self-extubation, especially in agitated or inadequately sedated patients."
          },
          {
            "no": 14,
            "marks": 1,
            "activity": "Check the safety (pilot) balloon to ensure the cuff is intact",
            "explanation": "A soft/deflated pilot balloon indicates cuff leak, which allows air leak around the tube and loses airway protection against aspiration."
          },
          {
            "no": 15,
            "marks": 1,
            "activity": "Reassess vital signs",
            "explanation": "Confirms the patient tolerated the care episode well and remains stable afterward."
          }
        ]
      },
      {
        "label": "C. Conclusion",
        "steps": [
          {
            "no": 16,
            "marks": 1,
            "activity": "Remove gloves and perform hand hygiene",
            "explanation": "Standard infection control closure of the procedure."
          },
          {
            "no": 17,
            "marks": 1,
            "activity": "Document your findings/procedure",
            "explanation": "Documentation of tube depth, cuff status, secretions, and patient tolerance provides continuity for the next shift and a medico-legal record."
          }
        ]
      }
    ]
  },
  {
    "slug": "tracheostomy-care",
    "title": "Care of the Tracheostomy Tube (TT)",
    "category": "Airway Management",
    "totalMarks": 16.5,
    "source": "Checklist for Care of the Tracheostomy Tube",
    "diagramIds": [
      "trach_anatomy"
    ],
    "sections": [
      {
        "label": "A. Introduction (4 Marks)",
        "steps": [
          {
            "no": 1,
            "marks": 0.5,
            "activity": "Greet client and introduce self if conscious",
            "explanation": "Establishes rapport and confirms patient identity before beginning."
          },
          {
            "no": 2,
            "marks": 0.5,
            "activity": "Explain the procedure and obtain consent",
            "explanation": "A conscious tracheostomy patient can often communicate (via writing/gesture) and should still be involved in decisions about their own care."
          },
          {
            "no": 3,
            "marks": 1.5,
            "activity": "Assemble all requirements at the patient's bedside",
            "explanation": "Include a spare tracheostomy tube of the same and one-size-smaller, in case of accidental decannulation requiring emergency reinsertion."
          },
          {
            "no": 4,
            "marks": 1.5,
            "activity": "Perform hand hygiene and put on gloves",
            "explanation": "Standard precaution given direct contact with the airway and stoma."
          }
        ]
      },
      {
        "label": "B. Procedure (10 Marks)",
        "steps": [
          {
            "no": 5,
            "marks": 0.5,
            "activity": "Assess vital signs on the monitor",
            "explanation": "Baseline check before beginning any airway manipulation."
          },
          {
            "no": 6,
            "marks": 1,
            "activity": "Ensure the TT is connected to the ventilator via an adaptor or an oxygen source",
            "explanation": "Confirms the patient is receiving intended respiratory support before you begin other care tasks.",
            "diagramId": "trach_anatomy"
          },
          {
            "no": 7,
            "marks": 0.5,
            "activity": "Support the TT and oxygen tubing as needed",
            "explanation": "Prevents traction injury to the stoma from unsupported tubing weight/movement."
          },
          {
            "no": 8,
            "marks": 1,
            "activity": "Assess for need of suctioning",
            "explanation": "As with ETT suctioning, base the decision on clinical signs rather than a fixed schedule."
          },
          {
            "no": 9,
            "marks": 1.5,
            "activity": "Perform suctioning if needed",
            "explanation": "Use sterile technique and appropriate catheter size/depth for the tracheostomy to minimise mucosal trauma."
          },
          {
            "no": 10,
            "marks": 0.5,
            "activity": "Remove old dressing",
            "explanation": "The stoma dressing should be changed regularly to keep the site clean and dry, reducing skin breakdown and infection."
          },
          {
            "no": 11,
            "marks": 0.5,
            "activity": "Assess the stoma for healing process or signs of infection",
            "explanation": "Redness, discharge, or odour at the stoma site are early warning signs requiring escalation before they progress to a deeper infection."
          },
          {
            "no": 12,
            "marks": 1,
            "activity": "Clean the stoma with prescribed solution and apply a new dressing",
            "explanation": "Aseptic stoma cleaning maintains skin integrity and reduces peristomal infection risk."
          },
          {
            "no": 13,
            "marks": 0.5,
            "activity": "Change the tracheostomy tube tape",
            "explanation": "Soiled or loosened tape both increases infection risk and risks accidental decannulation from an insecure tube."
          },
          {
            "no": 14,
            "marks": 1,
            "activity": "Ensure the level mark is intact",
            "explanation": "Confirms the tube has not migrated from its documented, correctly positioned depth."
          },
          {
            "no": 15,
            "marks": 0.5,
            "activity": "Ensure the tracheostomy tube does not pull out",
            "explanation": "A dislodged tracheostomy in the first 7–10 days (before a mature tract forms) is an airway emergency, since blind reinsertion risks a false passage."
          },
          {
            "no": 16,
            "marks": 1,
            "activity": "Check the safety (pilot) balloon to ensure the cuff is intact",
            "explanation": "As with ETT care, a deflated cuff signals a leak and loss of airway protection."
          },
          {
            "no": 17,
            "marks": 2,
            "activity": "Reassess vital signs",
            "explanation": "Confirms the patient's tolerance of the full care episode."
          }
        ]
      },
      {
        "label": "C. Conclusion (1 Mark)",
        "steps": [
          {
            "no": 18,
            "marks": 0.5,
            "activity": "Remove gloves and perform hand hygiene",
            "explanation": "Standard closure of the procedure."
          },
          {
            "no": 19,
            "marks": 0.5,
            "activity": "Document your findings/procedure",
            "explanation": "Stoma condition, secretions, tube security and patient tolerance should all be recorded for continuity of care."
          }
        ]
      }
    ]
  },
  {
    "slug": "opa-suctioning",
    "title": "OPA Insertion and Suctioning",
    "category": "Airway Management",
    "totalMarks": 20.0,
    "source": "Checklist for OPA Insertion and Suctioning",
    "diagramIds": [
      "opa_sizing",
      "opa_insertion_rotation"
    ],
    "sections": [
      {
        "label": "A. Preliminary (2 Marks)",
        "steps": [
          {
            "no": 1,
            "marks": 1,
            "activity": "Greets the patient",
            "explanation": "Establishing contact and confirming patient identity/consciousness level before beginning."
          },
          {
            "no": 2,
            "marks": 0.5,
            "activity": "Explains the procedure to the patient and seeks patient's consent",
            "explanation": "Even in an emergency, brief explanation (if the patient can respond) supports dignity and cooperation."
          },
          {
            "no": 3,
            "marks": 0.5,
            "activity": "Performs hand hygiene",
            "explanation": "Standard precaution before any airway contact."
          }
        ]
      },
      {
        "label": "B. OPA Insertion (5 Marks)",
        "steps": [
          {
            "no": 4,
            "marks": 2,
            "activity": "Measures the size using the anatomical landmark (the corner of the lips and the tempo-mandibular junction / angle of the jaw)",
            "explanation": "Correct sizing is critical: too small can push the tongue back and worsen obstruction; too large can traumatise the pharynx or trigger gagging/laryngospasm.",
            "diagramId": "opa_sizing"
          },
          {
            "no": 5,
            "marks": 1,
            "activity": "Insert the OPA with the hard facet (concave curve) pointing upward toward the palate",
            "explanation": "Inserting it inverted initially avoids pushing the tongue backward into the airway during the early phase of insertion."
          },
          {
            "no": 6,
            "marks": 1,
            "activity": "Advances the OPA and rotates it by 180 degrees",
            "explanation": "The 180° rotation, performed as the tip reaches the soft palate, brings the airway into its final, correct anatomical position curving over the tongue.",
            "diagramId": "opa_insertion_rotation"
          },
          {
            "no": 7,
            "marks": 1,
            "activity": "Advances and fits it well with the flange touching the lips",
            "explanation": "A flange resting against the lips confirms the device is fully and correctly seated, holding the tongue forward off the posterior pharyngeal wall."
          }
        ]
      },
      {
        "label": "C. Suctioning (10 Marks)",
        "steps": [
          {
            "no": 8,
            "marks": 1,
            "activity": "Position the patient with the head bent to one side",
            "explanation": "Lateral head positioning helps drain secretions and reduces aspiration risk during suctioning."
          },
          {
            "no": 9,
            "marks": 2,
            "activity": "Sets the appropriate pressure for the suction machine",
            "explanation": "Excessive negative pressure traumatises the airway mucosa and can cause bleeding or hypoxia; adult suction pressure is typically kept in a moderate, controlled range."
          },
          {
            "no": 10,
            "marks": 1,
            "activity": "Chooses the correct suctioning device (Yankauer catheter)",
            "explanation": "A rigid Yankauer catheter is appropriate for clearing the oropharynx of thick secretions, distinct from a soft flexible catheter used for deeper/nasotracheal suctioning."
          },
          {
            "no": 11,
            "marks": 1,
            "activity": "Inserts the suction catheter from the side of the mouth",
            "explanation": "Entering from the side (rather than straight down the midline) avoids stimulating the gag reflex as directly."
          },
          {
            "no": 12,
            "marks": 0.5,
            "activity": "Occludes the opening of the catheter to start suctioning",
            "explanation": "Suction is only applied once the catheter is positioned (not on insertion), applied by occluding the control vent, minimising unnecessary mucosal trauma."
          },
          {
            "no": 13,
            "marks": 2,
            "activity": "Suction for 10–15 seconds before removing",
            "explanation": "Limiting each pass avoids prolonged hypoxia, since suctioning removes oxygen from the airway along with secretions."
          },
          {
            "no": 14,
            "marks": 0.5,
            "activity": "Removes catheter and cleans using a sterile gauze",
            "explanation": "Cleaning the catheter tip prevents secretions from drying and blocking it before the next pass."
          },
          {
            "no": 15,
            "marks": 2,
            "activity": "Suctions again as needed, after waiting for 1 minute",
            "explanation": "Allowing a recovery interval between passes lets the patient's oxygen saturation recover before the next suctioning episode."
          }
        ]
      },
      {
        "label": "D. Conclusion (2 Marks)",
        "steps": [
          {
            "no": 16,
            "marks": 1,
            "activity": "Verbally expresses that all the fluid in the airway has been suctioned",
            "explanation": "Confirms endpoint of the procedure and communicates clinical reasoning during the OSCE assessment."
          },
          {
            "no": 17,
            "marks": 1,
            "activity": "Finishing: clean the station, make the patient comfortable",
            "explanation": "Completing the episode of care with attention to comfort and a tidy, safe environment."
          },
          {
            "no": 18,
            "marks": 1,
            "activity": "Documentation: document your findings",
            "explanation": "Record secretion characteristics, patient tolerance, and any complications for continuity of care."
          }
        ]
      }
    ]
  },
  {
    "slug": "oxygen-therapy",
    "title": "Oxygen Therapy Administration",
    "category": "Respiratory Care",
    "totalMarks": 13,
    "source": "Adult Nursing Marking Criteria (Oxygen Therapy)",
    "diagramIds": [
      "oxygen_mask_fit"
    ],
    "sections": [
      {
        "label": "Procedure",
        "steps": [
          {
            "no": 1,
            "marks": 1,
            "activity": "Explains the procedure to the person and discusses it with them",
            "explanation": "Patient understanding improves cooperation and reduces anxiety, particularly important with a device covering the face."
          },
          {
            "no": 2,
            "marks": 1,
            "activity": "Before administering, verbalises ALL checks: person/ID, drug (oxygen), dose, date/time, route/method, diluent, allergies",
            "explanation": "Oxygen is a prescribed drug and is subject to the same '5+ rights' verification as any other medication."
          },
          {
            "no": 3,
            "marks": 1,
            "activity": "Correctly checks validity of prescription, signature of prescriber, and legibility; does not proceed if any information is missing/unclear",
            "explanation": "An unclear or unsigned order must be clarified with the prescriber before proceeding — never guess at an ambiguous prescription."
          },
          {
            "no": 4,
            "marks": 1,
            "activity": "Cleans hands with alcohol hand rub or washes with soap and water, following WHO guidelines",
            "explanation": "Standard infection control practice before touching the patient or equipment."
          },
          {
            "no": 5,
            "marks": 1,
            "activity": "Identifies/selects the correct equipment and assembles and attaches tubing to the flowmeter",
            "explanation": "The correct delivery device (nasal cannula, simple mask, Venturi mask, non-rebreather) must match the prescribed method and flow rate."
          },
          {
            "no": 6,
            "marks": 1,
            "activity": "Turns on the oxygen flow meter, selecting the correct flow rate for the method of delivery",
            "explanation": "Flow rate must match the delivery device — for example, a simple face mask needs a minimum flow (usually ≥5L/min) to flush out exhaled CO2 and prevent rebreathing."
          },
          {
            "no": 7,
            "marks": 1,
            "activity": "Demonstrates covering the one-way valve with fingers and verbalises they would do this until the reservoir bag is fully inflated",
            "explanation": "For a non-rebreather mask, the reservoir bag must be filled before application so the patient receives a high FiO2 from the very first breath."
          },
          {
            "no": 8,
            "marks": 1,
            "activity": "Applies the oxygen mask by placing it over the nose and mouth, then secures the strap and adjusts the nose brace, sealing without being too tight",
            "explanation": "A good seal maximises delivered oxygen concentration, while avoiding excessive tightness that would cause pressure injury to the face.",
            "diagramId": "oxygen_mask_fit"
          },
          {
            "no": 9,
            "marks": 1,
            "activity": "Ensures the chosen delivery method is comfortable for the patient",
            "explanation": "Comfort supports compliance — a patient who removes an uncomfortable mask receives no therapeutic benefit at all."
          },
          {
            "no": 10,
            "marks": 1,
            "activity": "States that they will reassess saturations against the target range, escalating if not achieved",
            "explanation": "Oxygen therapy is titrated to a target SpO2 range (which may be lower in some chronic CO2-retaining patients) — ongoing reassessment is essential, not a one-time setup."
          },
          {
            "no": 11,
            "marks": 1,
            "activity": "States that they will inspect the patient's skin regularly around the face, ears and back of head, and provide regular mouth care",
            "explanation": "Mask straps and tubing can cause pressure injury with prolonged use, and oxygen therapy dries mucous membranes, requiring regular mouth care."
          },
          {
            "no": 12,
            "marks": 1,
            "activity": "Signs, dates and records the flow rate and device on the drug administration record",
            "explanation": "Oxygen must be documented as a prescribed therapy, supporting continuity of care and medico-legal accountability."
          },
          {
            "no": 13,
            "marks": 1,
            "activity": "Acts professionally throughout the procedure in accordance with professional standards of practice",
            "explanation": "Professional conduct is assessed throughout every OSCE station, not just at discrete checklist points."
          }
        ]
      }
    ]
  },
  {
    "slug": "pain-assessment",
    "title": "Pain Assessment (PQRST)",
    "category": "Assessment",
    "totalMarks": 9,
    "source": "Adult Nursing Marking Criteria (Pain Assessment)",
    "diagramIds": [],
    "sections": [
      {
        "label": "Procedure",
        "steps": [
          {
            "no": 1,
            "marks": 1,
            "activity": "Introduces self and explains the assessment to be carried out, and the rationale/importance of this",
            "explanation": "Explaining the purpose of pain assessment helps the patient understand why detailed questioning is necessary."
          },
          {
            "no": "2a",
            "marks": 1,
            "activity": "P = Provokes: Where is the pain? What causes it? What makes it better/worse?",
            "explanation": "Identifying aggravating/relieving factors helps localise the source and guides intervention choice."
          },
          {
            "no": "2b",
            "marks": 1,
            "activity": "Q = Quality: What does the pain feel like — dull, sharp, stabbing, burning, crushing, shooting, throbbing?",
            "explanation": "The quality of pain often points toward its underlying mechanism (e.g. burning suggests neuropathic pain; crushing suggests ischaemic cardiac pain)."
          },
          {
            "no": "2c",
            "marks": 1,
            "activity": "R = Radiating: Is it in one place? Does it move? Did it start somewhere else?",
            "explanation": "Radiation patterns are diagnostically important — e.g. cardiac pain radiating to the jaw/left arm, or renal colic radiating to the groin."
          },
          {
            "no": "2d",
            "marks": 1,
            "activity": "S = Severity: How bad is it? Uses the universal pain scale to ascertain severity",
            "explanation": "A standardised numerical or visual pain scale allows objective tracking of pain over time and response to treatment."
          },
          {
            "no": "2e",
            "marks": 1,
            "activity": "T = Time: When did it start? How long has it lasted? Constant or intermittent? Sudden or gradual?",
            "explanation": "Onset pattern helps distinguish acute emergencies (sudden severe onset) from chronic or intermittent conditions."
          },
          {
            "no": 3,
            "marks": 1,
            "activity": "Acknowledges the patient is in discomfort and offers to make them more comfortable by repositioning",
            "explanation": "Immediate comfort measures show responsiveness to the patient's distress while further assessment/treatment is arranged."
          },
          {
            "no": 4,
            "marks": 1,
            "activity": "Asks whether the patient has had any analgesia, and states will arrange suitable analgesia",
            "explanation": "Knowing what has already been tried (and its effect) avoids duplicate/unsafe dosing and informs the next analgesic choice."
          },
          {
            "no": 5,
            "marks": 1,
            "activity": "Identifies the need to communicate with the multidisciplinary team/doctor, regular reassessment, and documentation",
            "explanation": "Pain management is a team responsibility requiring prescribing input, ongoing reassessment of effectiveness, and clear documentation for continuity."
          }
        ]
      }
    ]
  },
  {
    "slug": "pefr",
    "title": "Peak Expiratory Flow Rate (PEFR) Measurement",
    "category": "Respiratory Care",
    "totalMarks": 15,
    "source": "Adult Nursing Marking Criteria (PEFR)",
    "diagramIds": [
      "peak_flow_technique"
    ],
    "sections": [
      {
        "label": "Procedure",
        "steps": [
          {
            "no": 1,
            "marks": 1,
            "activity": "Explains the procedure to the person and obtains their consent",
            "explanation": "Ensures cooperation, since PEFR technique strongly depends on patient effort."
          },
          {
            "no": 2,
            "marks": 1,
            "activity": "Cleans hands following WHO guidelines; dons non-sterile gloves and apron",
            "explanation": "Standard infection control precaution before patient contact."
          },
          {
            "no": 3,
            "marks": 1,
            "activity": "Assembles equipment",
            "explanation": "Having the meter and a clean, single-use mouthpiece ready avoids interrupting the patient mid-effort."
          },
          {
            "no": 4,
            "marks": 1,
            "activity": "Asks and assists the person to sit in an upright position",
            "explanation": "An upright posture optimises lung expansion and gives the most accurate, reproducible reading."
          },
          {
            "no": 5,
            "marks": 1,
            "activity": "Inserts a disposable mouthpiece into the peak flow meter",
            "explanation": "A clean mouthpiece each time prevents cross-infection between patients."
          },
          {
            "no": 6,
            "marks": 1,
            "activity": "Ensures the needle on the gauge is pushed down to zero",
            "explanation": "A meter not reset to zero will give a falsely elevated reading.",
            "diagramId": "peak_flow_technique"
          },
          {
            "no": 7,
            "marks": 1,
            "activity": "Asks the person to hold the peak flow meter horizontally, ensuring fingers do not impede the gauge",
            "explanation": "Fingers obstructing the sliding gauge marker will prevent an accurate reading from being recorded."
          },
          {
            "no": 8,
            "marks": 1,
            "activity": "Asks the person to take a deep breath in through their mouth to full inspiration",
            "explanation": "A true maximal inspiration is needed before the forced expiratory effort for the reading to be valid."
          },
          {
            "no": 9,
            "marks": 1,
            "activity": "Asks the person to place their lips tightly around the mouthpiece immediately, obtaining a tight seal",
            "explanation": "Any air leak around the lips will cause a falsely low reading, since some expired air escapes rather than being measured."
          },
          {
            "no": 10,
            "marks": 1,
            "activity": "Asks the person to blow out through the meter in a short, sharp 'huff' as forcefully as they can",
            "explanation": "PEFR measures peak flow, achieved by a maximally forceful, fast expiratory effort — not a slow, sustained blow."
          },
          {
            "no": 11,
            "marks": 1,
            "activity": "Takes a note of the reading and returns the needle to zero; asks the person to rest and repeat the procedure twice, noting each reading",
            "explanation": "Three attempts allow the best (most reliable, technique-dependent) reading to be identified, reducing the effect of a poorly performed single attempt."
          },
          {
            "no": 12,
            "marks": 1,
            "activity": "Accurately documents the highest of the three acceptable readings",
            "explanation": "The best of three (not the average) is the standard convention for recording PEFR."
          },
          {
            "no": 13,
            "marks": 1,
            "activity": "Disposes of equipment appropriately",
            "explanation": "Single-use mouthpieces should be discarded appropriately as clinical waste."
          },
          {
            "no": 14,
            "marks": 1,
            "activity": "Cleans hands following WHO guidelines",
            "explanation": "Standard infection control closure of the procedure."
          },
          {
            "no": 15,
            "marks": 1,
            "activity": "Acts professionally throughout the procedure in accordance with professional standards",
            "explanation": "Professionalism is assessed continuously through the encounter."
          }
        ]
      }
    ]
  },
  {
    "slug": "pressure-ulcer-prevention",
    "title": "Pressure Ulcer Prevention (Patient Education)",
    "category": "Skin Integrity",
    "totalMarks": 6,
    "source": "Adult Nursing Marking Criteria (Pressure Ulcer Prevention)",
    "diagramIds": [],
    "sections": [
      {
        "label": "Procedure",
        "steps": [
          {
            "no": "1a",
            "marks": 1,
            "activity": "Writes clearly and legibly when summarising findings/recommendations",
            "explanation": "Clear documentation ensures the care plan is understood and followed correctly by the whole team."
          },
          {
            "no": "1b",
            "marks": 1,
            "activity": "Informs the patient that a specific foam preventative dressing applied to the sacrum reduces pressure ulcer development by around 10%, though it may still occur later",
            "explanation": "Setting realistic expectations — a preventative dressing reduces but does not eliminate risk — supports informed patient understanding."
          },
          {
            "no": "1c",
            "marks": 1,
            "activity": "Explains that a very rare side effect of the foam dressing is mild skin irritation",
            "explanation": "Informed consent for a preventative intervention includes disclosing its (even minor) potential side effects."
          },
          {
            "no": "1d",
            "marks": 1,
            "activity": "Advises the patient of relevant individual risk factors (e.g. sex, immobility, nutrition)",
            "explanation": "Personalising risk information helps the patient understand why prevention measures specifically apply to them."
          },
          {
            "no": "1e",
            "marks": 1,
            "activity": "Explains that regular skin inspection, repositioning, hydration and balanced diet also help prevent pressure ulcers",
            "explanation": "Pressure ulcer prevention is multi-factorial — repositioning, skin checks, hydration and nutrition all work together, not any single measure alone."
          },
          {
            "no": "1f",
            "marks": 1,
            "activity": "Informs the patient that a foam dressing may aid prevention and will be discussed further with the tissue viability team",
            "explanation": "Complex prevention decisions benefit from specialist tissue viability input rather than being finalised by the bedside nurse alone."
          }
        ]
      }
    ]
  }
];
