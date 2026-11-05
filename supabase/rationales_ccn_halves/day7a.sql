-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 7, part A (questions 1–100)
-- Run this once in the Supabase SQL Editor. It is safe to run again.
--
-- Each explanation now says: the correct answer and why, why each other option is wrong,
-- and a key point to remember. The same questions in the practice app get the new explanation too.
-- Questions are found by their exact wording and correct answer. Where the old answer key was wrong,
-- the correct option is also fixed (listed at the top of the file).


with r(n, q, answer, exp, fixed_answer) as (values
(1, $x$The physical and tangible parts of a computer are called ____$x$, $x$Hardware$x$, $x$✅ Correct answer: Hardware
A computer system has two main parts. HARDWARE is the PHYSICAL, TANGIBLE part — everything you can see and touch: the monitor, keyboard, mouse, printer, CPU (processor), hard disk, RAM, cables and the casing. SOFTWARE is the set of programs and instructions that tell the hardware what to do; you cannot touch software. Hardware without software cannot do useful work, and software needs hardware to run. In the ICU, hardware includes the bedside monitors' screens, the computers at the nursing station, barcode scanners and printers.

❌ Why the other options are wrong:
• Values — "Values" are data items (e.g. a patient's temperature of 37.2), not physical parts of a computer.
• Software — Software is the programs (e.g. Windows, the EHR, Microsoft Word); it is not physical or tangible.
• Tables — "Tables" are a way of organising data in a database or document; they are not physical parts.

⭐ Key point: Simple rule: if you can touch it, it is HARDWARE; if it is a program you run, it is SOFTWARE.$x$, null),
(2, $x$What is Computer Memory (Storage devices)?$x$, $x$They are devices that are used for storing data and information permanently or temporarily$x$, $x$✅ Correct answer: They are devices that are used for storing data and information permanently or temporarily
COMPUTER MEMORY (STORAGE DEVICES) are the parts of a computer used for STORING DATA AND INFORMATION, either TEMPORARILY or PERMANENTLY. PRIMARY memory (main memory) includes RAM (Random Access Memory — temporary; it holds what you are working on now and is lost when the power goes off) and ROM (Read Only Memory — permanent instructions needed to start the computer). SECONDARY storage keeps data permanently even when the computer is off: hard disks, solid-state drives (SSD), USB flash drives, memory cards, CDs/DVDs and cloud storage. Patient records in an electronic health record are kept on secondary storage (usually servers), so they are not lost when a computer is switched off.

❌ Why the other options are wrong:
• They are devices that command the computer on how to execute programs to solve problems — Devices that "command the computer how to execute programs" describes software / the control unit, not storage.
• They are devices that perform all the processing in the computer. — Devices that perform all the processing describes the CPU (processor), not storage.
• They are devices that convert information from the form that the computer understands to a form that humans can understand. — Devices that convert computer information into a human-readable form are OUTPUT devices (e.g. monitor, printer).

⭐ Key point: RAM = temporary working memory (volatile). Hard disk / SSD / flash drive = permanent storage (non-volatile). Always save your work, because unsaved work in RAM is lost in a power cut.$x$, null),
(3, $x$Software designed and installed on a computer intended to solve specific problems or perform particular tasks is called?$x$, $x$Application software$x$, $x$✅ Correct answer: Application software
APPLICATION SOFTWARE is software designed to help the USER do a SPECIFIC TASK or solve a particular problem. Examples: Microsoft Word (writing reports), Excel (spreadsheets and calculations), PowerPoint (presentations), web browsers, email programs, and hospital programs such as an electronic health record (EHR), a laboratory information system, or a drug-dose calculator. It runs on top of the system software (the operating system).

❌ Why the other options are wrong:
• Open Source Software — Open source software describes how software is LICENSED (its source code is freely available, e.g. Linux, LibreOffice); it can be any type of software.
• Utility — Utility software performs maintenance tasks for the computer itself (e.g. antivirus, disk cleanup, backup, file compression) rather than the user's main work.
• Spreadsheet — A spreadsheet is ONE example of application software, not the general name for this category.

⭐ Key point: System software runs the computer; application software does the user's job; utility software keeps the computer healthy.$x$, null),
(4, $x$System software is a software that ____$x$, $x$manages the resources on the computer and enable the hardware to function properly$x$, $x$✅ Correct answer: manages the resources on the computer and enable the hardware to function properly
SYSTEM SOFTWARE MANAGES THE RESOURCES of the computer (processor, memory, storage, input/output devices) and ENABLES THE HARDWARE TO FUNCTION properly. It also provides a platform on which application software runs. The most important system software is the OPERATING SYSTEM (OS), e.g. Windows, macOS, Linux, Android, iOS. Other system software includes device drivers (which let the OS talk to printers, scanners, etc.) and firmware (BIOS). Without system software, the computer cannot start up or run any programs.

❌ Why the other options are wrong:
• is used in making presentations — Making presentations is done with APPLICATION software (e.g. PowerPoint).
• is used for data analysis — Data analysis is done with APPLICATION software (e.g. Excel, SPSS).
• is used to manage health information of patients — Managing patients' health information is done with APPLICATION software (e.g. an EHR or hospital information system).

⭐ Key point: The operating system is the "manager" of the computer: it controls files, memory, devices, security (user logins), and runs the applications.$x$, null),
(5, $x$The devices that give out data and information from the computer are called ____$x$, $x$Output devices$x$, $x$✅ Correct answer: Output devices
OUTPUT DEVICES take the results of processing from the computer and present them to the user (or another device) in a form people can understand — text, pictures, sound or print. Examples: MONITOR (screen), PRINTER, SPEAKERS, headphones, projector, and plotters. In the ICU, the screen of a central monitoring station and a printed ECG strip or lab report are outputs.

❌ Why the other options are wrong:
• Universal Serial Bus — Universal Serial Bus (USB) is a type of connection/port used to connect devices; it is not a category of devices that give out information.
• Network Topology — Network topology describes how computers in a network are arranged and connected (bus, star, ring, mesh).
• Sink/Receiver — A sink/receiver is the device that RECEIVES data in a communication system; it is not the general term for output devices.

⭐ Key point: Input → Process → Output → Storage is the basic cycle of every computer system.$x$, null),
(6, $x$The devices that send data and control signals INTO the computer are called ____$x$, $x$Input devices$x$, $x$✅ Correct answer: Input devices
INPUT DEVICES are used to SEND DATA and CONTROL SIGNALS INTO the computer. Examples: KEYBOARD, MOUSE, touchscreen, SCANNER, BARCODE READER, microphone, webcam, digital camera, card reader, and biometric (fingerprint) readers. In the ICU, a barcode scanner reading a patient's wristband before giving a drug, and a nurse typing observations into the EHR, are examples of input.

❌ Why the other options are wrong:
• Network — A network is a group of interconnected computers, not a category of devices that send data in.
• Operating System — The operating system is SYSTEM SOFTWARE that manages the computer.
• Arithmetic Unit — The Arithmetic (and Logic) Unit is part of the CPU that performs calculations and comparisons; it is part of processing, not input.

⭐ Key point: Some devices are BOTH input and output — e.g. a touchscreen (you touch to input and it displays output) and a modem.$x$, null),
(7, $x$A network in which all the communicating computers are of the same or similar capacity is called a ____?$x$, $x$Peer to peer network$x$, $x$✅ Correct answer: Peer to peer network
In a PEER-TO-PEER (P2P) NETWORK, all the connected computers are of EQUAL or SIMILAR status and capacity. Each computer (a "peer") can act as both a client (requesting resources) and a server (sharing its own files or printer). There is NO DEDICATED CENTRAL SERVER. It is simple and cheap, suitable for small offices (e.g. a few computers in a nursing school office sharing a printer), but it is harder to secure and manage as it grows.

❌ Why the other options are wrong:
• Mainframe network — A mainframe network has one very powerful central computer serving many terminals.
• Server-client network — A client–server network has a powerful central SERVER that stores data and provides services to less powerful CLIENT computers; the computers are not equal. Most hospital information systems use client–server networks.
• Cloud computing Network — Cloud computing provides storage and services over the internet from remote data centres.

⭐ Key point: Peer-to-peer = equals, no central server. Client–server = central server controls and shares resources (better for security and large organisations like hospitals).$x$, null),
(8, $x$In a Computer Network the means of connection is ____?$x$, $x$Medium/channel$x$, $x$✅ Correct answer: Medium/channel
Every data communication system has five components: (1) the SENDER (source) — the device that sends the message; (2) the RECEIVER (sink) — the device that receives it; (3) the MESSAGE — the data being sent; (4) the MEDIUM (CHANNEL) — the physical or wireless PATH that CONNECTS the sender and receiver and carries the data (e.g. twisted-pair cable, coaxial cable, fibre-optic cable, radio waves/Wi-Fi, microwave, satellite); and (5) the PROTOCOL — the rules for communication. The means of connection is therefore the MEDIUM/CHANNEL.

❌ Why the other options are wrong:
• Speaker — A speaker is an output device that produces sound; it is not the means of connection.
• Receiver/sink — The receiver/sink is the device at the END that receives the data, not the connection between devices.
• Sender/source — The sender/source is the device that STARTS the communication, not the connection.

⭐ Key point: Wired media: twisted pair, coaxial, fibre optic. Wireless media: radio (Wi-Fi, Bluetooth), microwave, infrared, satellite.$x$, null),
(9, $x$What is a Computer Network?$x$, $x$A Computer Network is the interconnection of two or more computers or computing devices through a medium for the purpose of sharing resources.$x$, $x$✅ Correct answer: A Computer Network is the interconnection of two or more computers or computing devices through a medium for the purpose of sharing resources.
A COMPUTER NETWORK is the INTERCONNECTION of TWO OR MORE COMPUTERS or computing devices through a MEDIUM (cable or wireless) for the purpose of SHARING RESOURCES — such as files, data, printers, internet connection and applications — and for COMMUNICATION (e.g. email, messaging). In a hospital, a network lets a nurse in the ICU see a patient's lab results as soon as the laboratory enters them, and lets the pharmacy receive electronic prescriptions.

❌ Why the other options are wrong:
• A Computer Network is the interconnection of two or more agents to achieve a goal — Interconnection of "agents to achieve a goal" is too vague; it does not mention computers, a medium, or sharing resources.
• A Computer Network is the interconnection people to increase productivity — Interconnecting PEOPLE to increase productivity describes social or professional networks, not a computer network.
• A Computer Network is the interconnection of schools to give information — Interconnecting SCHOOLS to give information is not the definition of a computer network.

⭐ Key point: Types by size: PAN (personal), LAN (local — e.g. one hospital building), MAN (metropolitan — a city), WAN (wide — across countries; the internet is the largest WAN).$x$, null),
(10, $x$Which of these best defines a computer?$x$, $x$A computer is an electronic device that accepts data processes data stores data and gives out information.$x$, $x$✅ Correct answer: A computer is an electronic device that accepts data processes data stores data and gives out information.
A COMPUTER is an ELECTRONIC DEVICE that ACCEPTS DATA (input), PROCESSES DATA according to instructions (programs), STORES DATA, and GIVES OUT INFORMATION (output). This definition covers the four basic functions: input, processing, storage and output. For example, an ICU monitor accepts signals from ECG leads, processes them to calculate heart rate, stores trends, and displays the information on screen.

❌ Why the other options are wrong:
• A computer is an electronic communication device. — A computer can be used for communication, but "an electronic communication device" is too narrow (a telephone also fits that).
• A computer is a music playing calculation device. — Playing music and calculating are only some of the things computers can do; this is not a proper definition.
• A computer is an education device for presentation. — A computer can be used for education and presentations, but that is one use, not a definition.

⭐ Key point: DATA = raw facts (e.g. "38.9"); INFORMATION = processed, meaningful data (e.g. "the patient has a fever of 38.9 °C").$x$, null),
(11, $x$What does a spreadsheet software like Microsoft Excel allow users to do?$x$, $x$Create, organize, and analyze data in a tabular format$x$, $x$✅ Correct answer: Create, organize, and analyze data in a tabular format
SPREADSHEET software, such as MICROSOFT EXCEL (or Google Sheets, LibreOffice Calc), arranges data in ROWS and COLUMNS of CELLS (a TABLE/grid format). It allows users to CREATE, ORGANISE and ANALYSE data — enter numbers and text, use FORMULAS and functions to calculate automatically (e.g. sums, averages, drug dose calculations), sort and filter data, and create CHARTS and graphs. In nursing, it is useful for staff rosters, fluid balance charts, audit data (e.g. hand-hygiene compliance), budgets and research data.

❌ Why the other options are wrong:
• Create and edit images — Creating and editing images is done with graphics software (e.g. Photoshop, Paint).
• Manage emails — Managing emails is done with email clients (e.g. Outlook, Gmail).
• Browse the internet — Browsing the internet is done with a web browser (e.g. Chrome, Firefox, Edge).

⭐ Key point: In Excel, each cell has an address (e.g. B3 = column B, row 3). Formulas begin with "=", e.g. =SUM(B2:B10).$x$, null),
(12, $x$The location of a resource on the internet is given by its?$x$, $x$URL$x$, $x$✅ Correct answer: URL
A URL (UNIFORM RESOURCE LOCATOR) is the ADDRESS that tells a web browser WHERE a resource (web page, image, file) is located on the internet. Example: https://www.who.int/publications. It has parts: the PROTOCOL (https://), the DOMAIN name (www.who.int), and the PATH to the specific page (/publications). Typing a URL into a browser takes you directly to that resource.

❌ Why the other options are wrong:
• ICQ — ICQ was an old instant messaging program, not an address system.
• Protocol — A protocol (e.g. HTTP, HTTPS, FTP) is a set of RULES for communication; it is only one PART of the URL.
• E-mail address — An email address identifies a mailbox for sending and receiving messages, not the location of a web resource.

⭐ Key point: "https" means the connection is secure (encrypted) — important when entering passwords or patient information online.$x$, null),
(13, $x$Which of the following is not considered hardware?$x$, $x$Operating system$x$, $x$✅ Correct answer: Operating system
HARDWARE is the physical part of the computer. An OPERATING SYSTEM (e.g. Windows, Linux) is SOFTWARE — a program that manages the computer — so it is NOT hardware. It cannot be touched; it is stored on the hard disk and loaded into memory when the computer starts.

❌ Why the other options are wrong:
• Hard disk — A hard disk is hardware (a physical storage device).
• Keyboard — A keyboard is hardware (a physical input device).
• CPU — The CPU (Central Processing Unit) is hardware (a physical chip that processes data).

⭐ Key point: Operating systems, word processors, EHR programs, antivirus and apps are all SOFTWARE.$x$, null),
(14, $x$____ is a transmission medium that is most appropriate to carry data in a computer network that is exposed to electrical interferences$x$, $x$Optical fiber$x$, $x$✅ Correct answer: Optical fiber
OPTICAL FIBRE (fibre-optic cable) carries data as PULSES OF LIGHT through thin strands of glass or plastic, not as electrical signals. Because light is NOT affected by ELECTRICAL or MAGNETIC fields, optical fibre is IMMUNE to ELECTROMAGNETIC INTERFERENCE (EMI). This makes it the most appropriate medium in environments with heavy electrical equipment — such as hospitals (MRI scanners, X-ray machines, generators). It also offers very high speed (bandwidth), long distances and better security (hard to tap).

❌ Why the other options are wrong:
• Coaxial cable — Coaxial cable has some shielding, but it still carries electrical signals and can be affected by strong interference.
• Unshielded twisted pair — Unshielded twisted pair (UTP) has no shielding and is MOST vulnerable to electrical interference.
• Microwave — Microwave is a wireless medium; it can be affected by interference, weather and obstacles.

⭐ Key point: Optical fibre is more expensive and harder to install and repair, but is the best choice for high speed, long distance and interference-prone environments.$x$, null),
(15, $x$A collection of hyperlinked documents on the internet forms the$x$, $x$World Wide Web (WWW)$x$, $x$✅ Correct answer: World Wide Web (WWW)
The WORLD WIDE WEB (WWW, or "the web") is a huge collection of WEB PAGES and documents stored on computers around the world, which are linked together by HYPERLINKS (clickable links that take you from one page to another). These documents are accessed through the internet using a web browser and the HTTP/HTTPS protocol. The web was invented by Tim Berners-Lee in 1989. Note: the INTERNET is the global network of networks (the infrastructure); the WEB is one SERVICE that runs on the internet.

❌ Why the other options are wrong:
• Hypertext markup language — HTML (Hypertext Markup Language) is the LANGUAGE used to create web pages, not the collection of pages.
• E-mail system — The email system is a different internet service for sending messages.
• Mailing list — A mailing list is a list of email addresses for sending messages to a group.

⭐ Key point: Other internet services besides the web: email, file transfer (FTP), video calls, instant messaging.$x$, null),
(16, $x$The Central Processing Unit (CPU) of a computer is primarily responsible for:$x$, $x$Executing instructions and processing data$x$, $x$✅ Correct answer: Executing instructions and processing data
The CENTRAL PROCESSING UNIT (CPU) is the "BRAIN" of the computer. It is primarily responsible for EXECUTING INSTRUCTIONS (from programs) and PROCESSING DATA (performing calculations, comparisons, and controlling data flow). The CPU has three main parts: the CONTROL UNIT (directs and coordinates operations), the ARITHMETIC AND LOGIC UNIT — ALU (performs calculations and logical comparisons), and REGISTERS (very fast, small memory for immediate data). CPU speed is measured in gigahertz (GHz).

❌ Why the other options are wrong:
• Permanent data storage only — Permanent data storage is done by secondary storage (hard disk, SSD), not the CPU.
• Displaying output on the monitor only — Displaying output is done by the monitor (output device) and the graphics card.
• Providing internet connectivity only — Internet connectivity is provided by a network card/modem and router.

⭐ Key point: The CPU, together with RAM, determines how fast a computer can process tasks.$x$, null),
(17, $x$Batch processing, as a method of file processing, is best described as:$x$, $x$Collecting and processing a group of transactions together at a scheduled time$x$, $x$✅ Correct answer: Collecting and processing a group of transactions together at a scheduled time
BATCH PROCESSING means COLLECTING a GROUP (batch) of transactions over a period of time and PROCESSING them ALL TOGETHER at a SCHEDULED time, usually without user interaction. Examples: payroll (salaries processed at the end of the month), monthly billing, end-of-day hospital census reports, and backing up data overnight. It is efficient for large volumes of data where immediate results are not needed.

❌ Why the other options are wrong:
• A method used only for video files — Batch processing is not limited to video files; it can process any data.
• Processing that requires no computer at all — Batch processing requires a computer.
• Processing transactions immediately as they occur, one at a time — Processing transactions immediately as they occur is REAL-TIME (online) processing — e.g. an ICU monitor alarm, or an EHR updating lab results instantly.

⭐ Key point: Real-time processing is needed for patient monitoring and medication administration; batch processing is suitable for reports and payroll.$x$, null),
(18, $x$A master file in a computerised records system typically contains:$x$, $x$Relatively permanent, core reference data about an entity (e.g. patient demographic records)$x$, $x$✅ Correct answer: Relatively permanent, core reference data about an entity (e.g. patient demographic records)
A MASTER FILE contains RELATIVELY PERMANENT, CORE REFERENCE DATA about an entity (a person or thing) that does not change often. For example, the PATIENT MASTER INDEX holds each patient's demographic details: hospital number, name, date of birth, sex, address, next of kin. Other examples: staff master file, drug formulary master file. Master files are updated by TRANSACTION FILES, which record day-to-day events (e.g. admissions, drug administrations, lab results).

❌ Why the other options are wrong:
• Only images and video files — Master files are not only images and videos.
• Only system error logs — System error logs are log files, not master files.
• Temporary data deleted after each session — Temporary data deleted after each session is stored in temporary files (or transaction/work files), not master files.

⭐ Key point: Master file = permanent, core data. Transaction file = temporary record of events used to update the master file.$x$, null),
(19, $x$Data standardization and classification in nursing informatics (e.g. using NANDA, NIC, NOC) primarily helps to:$x$, $x$Enable consistent communication, data comparison and research across different settings$x$, $x$✅ Correct answer: Enable consistent communication, data comparison and research across different settings
STANDARDISED NURSING LANGUAGES and CLASSIFICATION systems — such as NANDA-I (nursing diagnoses), NIC (Nursing Interventions Classification) and NOC (Nursing Outcomes Classification) — give nurses COMMON, AGREED TERMS and codes for describing patient problems, nursing actions and outcomes. This enables CONSISTENT COMMUNICATION between nurses and settings, allows DATA to be COMPARED across units, hospitals and countries, supports electronic health records, and makes nursing RESEARCH, quality improvement and evidence-based practice possible. It also makes nursing's contribution to patient outcomes visible.

❌ Why the other options are wrong:
• Increase paperwork with no benefit — Standardisation REDUCES unnecessary paperwork and makes data more useful.
• Make nursing documentation ambiguous and inconsistent — Standardisation makes documentation CLEARER and more consistent, not ambiguous.
• Replace the need for any nursing assessment — Standard languages support documentation of assessment; they do not replace the need to assess patients.

⭐ Key point: Other standardised terminologies: SNOMED CT, ICNP (International Classification for Nursing Practice), ICD (diagnoses), LOINC (lab tests).$x$, null),
(20, $x$USB flash drives and optical disks (CD/DVD) are examples of:$x$, $x$Secondary/portable storage devices$x$, $x$✅ Correct answer: Secondary/portable storage devices
USB FLASH DRIVES (memory sticks) and OPTICAL DISKS (CDs, DVDs, Blu-ray) are SECONDARY (auxiliary) STORAGE devices. They store data PERMANENTLY (non-volatile — data stays when the power is off) and are PORTABLE (can be moved between computers). Other secondary storage: external hard disks, memory cards (SD cards), and cloud storage.

❌ Why the other options are wrong:
• Primary memory (RAM) — Primary memory (RAM) is inside the computer, is temporary, and is lost when power is off.
• Input devices only — They are storage devices, not input devices (although you can read data from them).
• Output devices only — They are storage devices, not output devices only.

⭐ Key point: Portable storage devices carry security risks: patient data on a lost USB drive can cause a confidentiality breach. Use encrypted devices and follow hospital policy.$x$, null),
(21, $x$A Hospital Information System (HIS) is best defined as:$x$, $x$An integrated system that manages a hospital's clinical, administrative and financial information$x$, $x$✅ Correct answer: An integrated system that manages a hospital's clinical, administrative and financial information
A HOSPITAL INFORMATION SYSTEM (HIS) is a comprehensive, INTEGRATED computer system that manages ALL the information needs of a hospital: CLINICAL information (patient records, nursing documentation, orders, lab and radiology results, pharmacy), ADMINISTRATIVE information (admissions, discharges, transfers, bed management, scheduling, staff records) and FINANCIAL information (billing, insurance, inventory, payroll). The different modules share data, so information entered once is available wherever needed.

❌ Why the other options are wrong:
• A single stand-alone computer used only by the IT department — A single stand-alone computer used only by IT is not an integrated hospital-wide system.
• A manual paper filing cabinet — A paper filing cabinet is a manual system, not an information system in the computing sense.
• A type of medical imaging machine — A medical imaging machine is clinical equipment (e.g. CT scanner), not an information system.

⭐ Key point: HIS improves efficiency, reduces errors, supports decision-making and enables data for audit and research — but requires training, security and downtime plans.$x$, null),
(22, $x$Protecting electronic access to client data primarily relies on which of the following measures?$x$, $x$User authentication (passwords/logins), access controls and audit trails$x$, $x$✅ Correct answer: User authentication (passwords/logins), access controls and audit trails
Protecting ELECTRONIC ACCESS to client data relies on: USER AUTHENTICATION (unique usernames and strong PASSWORDS, smart cards, biometrics, two-factor authentication) to confirm who the user is; ACCESS CONTROLS (role-based access — staff can only see the information they need for their job); and AUDIT TRAILS (the system records who accessed which record, when, and what they did, so inappropriate access can be detected). Other measures: encryption, automatic log-off, firewalls, antivirus and staff training.

❌ Why the other options are wrong:
• Printing all records to avoid computer use entirely — Printing all records increases the risk of paper records being lost or seen by the wrong people.
• Leaving all records openly accessible to any staff member for convenience — Leaving records openly accessible to anyone breaches confidentiality.
• Disabling all data backups — Disabling backups risks permanent loss of patient data; backups are essential.

⭐ Key point: Never share your password, always log off or lock the screen when leaving a computer, and only access records of patients you are caring for.$x$, null),
(23, $x$Index-sequential file organisation allows records to be accessed:$x$, $x$Both sequentially and directly via an index, combining the benefits of both methods$x$, $x$✅ Correct answer: Both sequentially and directly via an index, combining the benefits of both methods
INDEX-SEQUENTIAL file organisation stores records in a SEQUENCE (e.g. by hospital number) AND maintains an INDEX (like the index of a book) that points to where groups of records are located. This allows records to be accessed BOTH SEQUENTIALLY (one after another, useful for producing reports of all patients) AND DIRECTLY (jumping straight to a specific record using the index, useful for retrieving one patient's record quickly). It combines the benefits of both methods.

❌ Why the other options are wrong:
• Only by physically searching every record one by one with no index — Searching every record one by one without an index describes SERIAL/sequential access only.
• Only in the exact order they were originally entered, with no shortcuts — Accessing only in the order entered with no shortcuts describes SEQUENTIAL access.
• Never — it is a theoretical method with no real use — Index-sequential organisation is widely used in real systems (e.g. databases).

⭐ Key point: File organisation types: serial, sequential, direct (random) and index-sequential.$x$, null),
(24, $x$A hospital's electronic health record system experiences a temporary outage. The nurse's most appropriate immediate action is to:$x$, $x$Follow the unit's downtime/contingency procedure (e.g. paper documentation) to ensure continuity of safe care$x$, $x$✅ Correct answer: Follow the unit's downtime/contingency procedure (e.g. paper documentation) to ensure continuity of safe care
When the electronic health record (EHR) is temporarily unavailable (DOWNTIME — planned or unplanned), patient care must continue SAFELY. The nurse should FOLLOW THE UNIT'S DOWNTIME / CONTINGENCY PROCEDURE: use PAPER forms (observation charts, medication administration records, nursing notes), refer to the latest printed backup reports (e.g. medication lists, allergies), and communicate verbally and in writing. When the system returns, the paper records are entered into (or scanned into) the EHR according to policy.

❌ Why the other options are wrong:
• Stop all patient care until the system returns — Stopping care would endanger patients.
• Discharge all patients immediately — Discharging patients because of a computer outage is unsafe and inappropriate.
• Guess at patient information from memory with no documentation — Guessing from memory without documentation risks errors and leaves no legal record.

⭐ Key point: Every unit should have downtime kits (paper forms), regularly updated backup reports, and staff trained in downtime procedures.$x$, null),
(25, $x$The main purpose of barcode medication administration (BCMA) is to:$x$, $x$Verify the five rights of medication administration and reduce medication errors$x$, $x$✅ Correct answer: Verify the five rights of medication administration and reduce medication errors
BARCODE MEDICATION ADMINISTRATION (BCMA) uses barcodes on the patient's wristband and on each medication. Before giving a drug, the nurse SCANS the patient's wristband and the drug. The system checks these against the electronic prescription and VERIFIES the FIVE RIGHTS: RIGHT PATIENT, RIGHT DRUG, RIGHT DOSE, RIGHT ROUTE and RIGHT TIME. It alerts the nurse to mismatches, allergies or timing errors, REDUCING MEDICATION ERRORS. It also automatically records the administration.

❌ Why the other options are wrong:
• Replace the need for a medication administration record — BCMA works with the electronic medication administration record (eMAR); it does not replace it.
• Track staff attendance — BCMA is not used to track staff attendance.
• Speed up medication rounds regardless of accuracy — Speed is not the goal; accuracy and safety are.

⭐ Key point: Never override or "work around" BCMA alerts (e.g. scanning a copy of a barcode) — this defeats its safety purpose.$x$, null),
(26, $x$Tele-ICU (remote ICU monitoring) primarily allows:$x$, $x$Remote specialists to monitor and support ICU care across multiple sites$x$, $x$✅ Correct answer: Remote specialists to monitor and support ICU care across multiple sites
TELE-ICU (remote ICU or eICU) uses video, audio and electronic monitoring links so that INTENSIVISTS and critical care NURSES at a central location can MONITOR patients in MULTIPLE ICUs (even at different hospitals) in real time. They review vital signs, alarms, lab results and images, and SUPPORT bedside teams with advice, early warning of deterioration, and help during emergencies — especially at night or in hospitals without on-site intensivists.

❌ Why the other options are wrong:
• Only administrative record-keeping — Tele-ICU is clinical support, not just administrative record-keeping.
• Replacement of ventilator alarms — It does not replace ventilator alarms.
• Elimination of bedside nurses — It supports, but does not replace, bedside nurses.

⭐ Key point: Tele-ICU has been linked to lower ICU mortality and shorter stays, and is useful in areas with a shortage of specialists.$x$, null),
(27, $x$A clinical decision support system (CDSS) in an EHR is designed to:$x$, $x$Alert clinicians to potential issues such as drug interactions or abnormal values$x$, $x$✅ Correct answer: Alert clinicians to potential issues such as drug interactions or abnormal values
A CLINICAL DECISION SUPPORT SYSTEM (CDSS) is a feature in the EHR that uses patient data and clinical knowledge to give clinicians helpful ALERTS, REMINDERS and RECOMMENDATIONS at the point of care. Examples: alerts for DRUG INTERACTIONS, drug ALLERGIES, wrong doses, ABNORMAL LAB VALUES (e.g. critical potassium), sepsis screening alerts, early warning scores, and reminders for VTE prophylaxis. It SUPPORTS clinical judgement; the clinician makes the final decision.

❌ Why the other options are wrong:
• Automatically treat the patient without clinician input — A CDSS does not treat patients automatically; a clinician must decide and act.
• Only manage billing — A CDSS is a clinical tool, not only for billing.
• Replace nursing assessment — A CDSS does not replace nursing assessment; it adds to it.

⭐ Key point: Too many alerts can cause "alert fatigue", where clinicians ignore warnings. Alerts should be relevant and well designed.$x$, null),
(28, $x$Health Level Seven (HL7) standards exist primarily to support:$x$, $x$Interoperability and standardised exchange of health information between systems$x$, $x$✅ Correct answer: Interoperability and standardised exchange of health information between systems
HEALTH LEVEL SEVEN (HL7) is a set of international STANDARDS for the EXCHANGE, integration, sharing and retrieval of electronic health information. It allows different computer systems (e.g. lab system, pharmacy system, EHR, radiology system) — often from different manufacturers — to "talk" to each other and understand the data being sent. This is called INTEROPERABILITY. The newer HL7 FHIR standard uses modern web technology.

❌ Why the other options are wrong:
• Hospital parking systems — HL7 is not related to parking systems.
• Physical security of hospital buildings — HL7 is not related to physical building security.
• Only nursing schedules — HL7 is not only for nursing schedules.

⭐ Key point: Interoperability allows patient information to follow the patient across departments and facilities, reducing repeated tests and errors.$x$, null),
(29, $x$Nursing informatics is best defined as the specialty that:$x$, $x$Integrates nursing science with information and computer science to manage and communicate data, information, and knowledge$x$, $x$✅ Correct answer: Integrates nursing science with information and computer science to manage and communicate data, information, and knowledge
NURSING INFORMATICS is a specialty that INTEGRATES NURSING SCIENCE with INFORMATION SCIENCE and COMPUTER SCIENCE to MANAGE and COMMUNICATE DATA, INFORMATION, KNOWLEDGE and WISDOM in nursing practice (American Nurses Association definition). It supports nurses, patients and other providers in decision-making, using information technology (e.g. EHRs, CDSS, telehealth). Informatics nurses help design, implement and evaluate health IT systems.

❌ Why the other options are wrong:
• Focuses only on hospital billing software — Nursing informatics is broader than billing software.
• Replaces the need for clinical nursing skills — It supports, but does not replace, clinical nursing skills.
• Is only relevant to IT department staff — It is relevant to ALL nurses, not just IT staff.

⭐ Key point: Data → Information → Knowledge → Wisdom (DIKW) is the framework of nursing informatics.$x$, null),
(30, $x$Two-factor authentication improves EHR security by:$x$, $x$Requiring a second independent verification step beyond just a password$x$, $x$✅ Correct answer: Requiring a second independent verification step beyond just a password
TWO-FACTOR AUTHENTICATION (2FA) requires TWO DIFFERENT, INDEPENDENT ways to prove your identity before access is allowed: something you KNOW (password or PIN), plus something you HAVE (a phone receiving a one-time code, a smart card or token) or something you ARE (fingerprint, face recognition). Even if a password is stolen, an attacker cannot log in without the second factor, greatly improving EHR security.

❌ Why the other options are wrong:
• Disabling password requirements — 2FA does not disable passwords; it adds an extra step.
• Allowing shared generic logins — Shared generic logins reduce security and accountability.
• Requiring only a username — Requiring only a username provides no security.

⭐ Key point: Never share your login or one-time codes, and report any suspicious login requests.$x$, null),
(31, $x$Encrypting patient data primarily protects against:$x$, $x$Unauthorised parties reading intercepted or stolen data$x$, $x$✅ Correct answer: Unauthorised parties reading intercepted or stolen data
ENCRYPTION converts data into a coded (scrambled) form using a mathematical key. Only someone with the correct key can DECRYPT and read it. If encrypted patient data is INTERCEPTED during transmission (e.g. over the internet or Wi-Fi) or STOLEN (e.g. a lost laptop or USB drive), UNAUTHORISED people CANNOT READ it. This protects confidentiality.

❌ Why the other options are wrong:
• Slower data transmission — Encryption may slightly slow transmission, but that is a side effect, not what it protects against.
• Hardware failure — Encryption does not protect against hardware failure; backups do.
• Loss of internet connectivity — Encryption does not protect against loss of internet connectivity.

⭐ Key point: Use encrypted devices and secure (https, VPN) connections for patient data.$x$, null),
(32, $x$In data transfer process, what does FTP stand for?$x$, $x$File transfer Protocol$x$, $x$✅ Correct answer: File transfer Protocol
FTP stands for FILE TRANSFER PROTOCOL. It is a standard set of rules (protocol) for TRANSFERRING FILES between computers over a network such as the internet — e.g. uploading files to a web server or downloading large files. Secure versions (SFTP, FTPS) encrypt the transfer.

❌ Why the other options are wrong:
• File transmission protocol — "File transmission protocol" is not the correct expansion.
• File transfer program — "File transfer program" is not correct; FTP is a protocol (set of rules), not a program.
• File transfer protection — "File transfer protection" is not correct.

⭐ Key point: Other protocols: HTTP/HTTPS (web pages), SMTP (sending email), POP3/IMAP (receiving email), TCP/IP (internet communication).$x$, null),
(33, $x$The four main functional components of a standard computer are:$x$, $x$Input, process, output and memory (storage)$x$, $x$✅ Correct answer: Input, process, output and memory (storage)
A standard computer system performs four main functions, carried out by four functional components: (1) INPUT — accepting data and instructions (keyboard, mouse, scanner); (2) PROCESSING — working on the data according to instructions (CPU); (3) OUTPUT — presenting the results (monitor, printer); (4) MEMORY/STORAGE — keeping data and programs temporarily or permanently (RAM, hard disk).

❌ Why the other options are wrong:
• Laptop, desktop, tablet and hand-held — Laptop, desktop, tablet and hand-held are TYPES/sizes of computers, not functional components.
• Keyboard, mouse, monitor and CPU — Keyboard, mouse, monitor and CPU are specific hardware items, not the four functional components.
• Hardware, software, system apps and applications — Hardware, software, system apps and applications are categories of computer parts, not functional components.

⭐ Key point: Remember the IPOS cycle: Input → Processing → Output → Storage.$x$, null),
(34, $x$According to size, computers are classified as:$x$, $x$Super, mainframe, mini and micro computers$x$, $x$✅ Correct answer: Super, mainframe, mini and micro computers
According to SIZE (and processing power), computers are classified into: (1) SUPERCOMPUTERS — the largest and fastest, used for complex calculations (weather forecasting, scientific research); (2) MAINFRAME computers — large, powerful systems used by big organisations (banks, governments, large hospitals) to serve many users at once; (3) MINI computers — medium-sized, serving smaller organisations or departments; (4) MICRO computers — personal computers (desktops, laptops, tablets, smartphones), the most common type.

❌ Why the other options are wrong:
• Large, ultra-large, small and compact — "Large, ultra-large, small and compact" is not the standard classification.
• Laptop, desktop and hand-held — Laptop, desktop and hand-held are types of MICRO computers only.
• Big-scale and small-scale — "Big-scale and small-scale" is not the standard classification.

⭐ Key point: Computers are also classified by TYPE (analogue, digital, hybrid) and by PURPOSE (general-purpose, special-purpose).$x$, null),
(35, $x$Computer software is classified into:$x$, $x$System, application and utility software$x$, $x$✅ Correct answer: System, application and utility software
Computer SOFTWARE is classified into: (1) SYSTEM SOFTWARE — manages the computer's hardware and provides a platform for other software (operating systems such as Windows, Linux; device drivers); (2) APPLICATION SOFTWARE — helps users perform specific tasks (word processors, spreadsheets, EHRs, web browsers); (3) UTILITY SOFTWARE — performs maintenance and support tasks (antivirus, backup, disk cleanup, file compression). Some textbooks treat utilities as part of system software.

❌ Why the other options are wrong:
• Special, general and specific packages — "Special, general and specific packages" is not the standard classification.
• Personal and industrial software — "Personal and industrial software" is not the standard classification.
• Word, PowerPoint and Excel — Word, PowerPoint and Excel are examples of APPLICATION software only.

⭐ Key point: Application software may be "general-purpose" (e.g. Word) or "special-purpose/tailor-made" (e.g. a hospital pharmacy system).$x$, null),
(36, $x$Which one is NOT an input device?$x$, $x$Monitor$x$, $x$✅ Correct answer: Monitor
A MONITOR is an OUTPUT device — it DISPLAYS information (text, images, video) from the computer to the user. It does NOT send data INTO the computer, so it is NOT an input device (unless it is a touchscreen, which is both input and output).

❌ Why the other options are wrong:
• Mouse — A mouse is an input device (pointing and clicking).
• Scanner — A scanner is an input device (converts paper documents or images into digital form).
• Keyboard — A keyboard is an input device (typing text and commands).

⭐ Key point: Common input devices: keyboard, mouse, scanner, microphone, webcam, barcode reader. Common output devices: monitor, printer, speakers, projector.$x$, null),
(37, $x$Which of the following is NOT a network topology?$x$, $x$Peer to Peer$x$, $x$✅ Correct answer: Peer to Peer
NETWORK TOPOLOGY describes the physical or logical ARRANGEMENT (layout) of computers and connections in a network. Common topologies: BUS (all devices share one main cable), STAR (all devices connect to a central hub/switch — most common in hospitals and offices), RING (devices connected in a closed loop), MESH (devices connected to many others) and TREE (hierarchical). PEER-TO-PEER is NOT a topology — it describes the RELATIONSHIP between computers (all equal, no central server), i.e. a network architecture/model.

❌ Why the other options are wrong:
• Bus — Bus is a topology.
• Star — Star is a topology.
• Ring — Ring is a topology.

⭐ Key point: Star topology: if one cable fails, only that device is affected; but if the central switch fails, the whole network goes down.$x$, null),
(38, $x$A nurse is teaching a group of nursing students about the history of computers. Which generation of computers is characterized by the use of vacuum tubes?$x$, $x$First Generation$x$, $x$✅ Correct answer: First Generation
Computers are grouped into GENERATIONS based on the main technology used: FIRST GENERATION (about 1940–1956) used VACUUM TUBES — they were very large, expensive, generated a lot of heat, used much electricity and broke down often (e.g. ENIAC, UNIVAC). Second generation (1956–1963) used TRANSISTORS; third generation (1964–1971) used INTEGRATED CIRCUITS; fourth generation (1971–present) uses MICROPROCESSORS; fifth generation (present and future) is based on ARTIFICIAL INTELLIGENCE.

❌ Why the other options are wrong:
• Second Generation — The second generation used transistors.
• Third Generation — The third generation used integrated circuits.
• Fourth Generation — The fourth generation uses microprocessors.

⭐ Key point: Each generation made computers smaller, faster, cheaper, more reliable and more energy-efficient.$x$, null),
(39, $x$Which of the following units of data is the largest?$x$, $x$Terabyte (TB)$x$, $x$✅ Correct answer: Terabyte (TB)
Units of data storage, from smallest to largest: BIT → BYTE (8 bits) → KILOBYTE (KB, about 1,000 bytes) → MEGABYTE (MB, about 1,000 KB) → GIGABYTE (GB, about 1,000 MB) → TERABYTE (TB, about 1,000 GB) → petabyte (PB). So the TERABYTE is the LARGEST of the options. (In binary, each step is 1,024.)

❌ Why the other options are wrong:
• Gigabyte (GB) — A gigabyte is about 1/1000 of a terabyte.
• Megabyte (MB) — A megabyte is about one-millionth of a terabyte.
• Kilobyte (KB) — A kilobyte is very small (about a billionth of a terabyte).

⭐ Key point: A typical text document is a few KB; a photo a few MB; a film a few GB; large hospital servers store TBs of data (e.g. imaging).$x$, null),
(40, $x$A nurse is explaining units of data to a colleague. The smallest unit of data in a computer is a:$x$, $x$Bit$x$, $x$✅ Correct answer: Bit
The SMALLEST unit of data in a computer is a BIT (short for BInary digiT). A bit can have only ONE of TWO values: 0 or 1 (off or on). All data in a computer — text, numbers, images, sound — is ultimately stored as patterns of bits. EIGHT BITS make ONE BYTE, which can represent one character (e.g. a letter).

❌ Why the other options are wrong:
• Byte — A byte is 8 bits — larger than a bit.
• Megabyte — A megabyte is about a million bytes.
• Kilobyte — A kilobyte is about a thousand bytes.

⭐ Key point: Internet speed is usually measured in bits per second (e.g. Mbps), while file size is measured in bytes (e.g. MB).$x$, null),
(41, $x$Research usually starts with a problem and ends with:$x$, $x$Conclusions and recommendations (dissemination of findings)$x$, $x$✅ Correct answer: Conclusions and recommendations (dissemination of findings)
The RESEARCH PROCESS is a series of steps: it starts with IDENTIFYING A PROBLEM, followed by literature review, formulating objectives/hypotheses, designing the study, sampling, data collection, data analysis and interpretation, and ENDS with drawing CONCLUSIONS, making RECOMMENDATIONS, and DISSEMINATING (communicating) the FINDINGS — through reports, publications, conference presentations — so they can be used to improve practice.

❌ Why the other options are wrong:
• A literature review — The literature review is an early step, not the end.
• A hypothesis — A hypothesis is formulated early in the process.
• Data collection — Data collection happens in the middle of the process.

⭐ Key point: Research that is not disseminated cannot improve practice. Nurses should share findings and apply evidence in care.$x$, null),
(42, $x$In research, the term "universe" refers to the:$x$, $x$Entire population$x$, $x$✅ Correct answer: Entire population
In research, the "UNIVERSE" (also called the TARGET POPULATION) refers to the ENTIRE POPULATION — ALL the people, objects or events that meet the criteria for the study and to which the researcher wants to apply (generalise) the results. For example, "all critically ill patients on mechanical ventilation in Nigerian teaching hospitals". A SAMPLE is a smaller group selected from this population.

❌ Why the other options are wrong:
• Study setting — The study setting is the PLACE where the study is conducted.
• Research instrument — A research instrument is the TOOL used to collect data (e.g. questionnaire, checklist).
• Sample — A sample is a subset of the population, not the whole universe.

⭐ Key point: Target population → accessible population → sampling frame → sample.$x$, null),
(43, $x$All of the following are methods (sources) of problem-solving knowledge EXCEPT:$x$, $x$Assessment$x$, $x$✅ Correct answer: Assessment
Sources of knowledge for solving problems in nursing include: TRADITION (practices passed down — "we have always done it this way"), AUTHORITY (VOICES OF AUTHORITY — experts, senior staff, textbooks), personal EXPERIENCE, TRIAL AND ERROR, intuition, LOGICAL REASONING (inductive and deductive), and RESEARCH (scientific method). ASSESSMENT is a step of the NURSING PROCESS (collecting patient data); it is NOT a source/method of problem-solving knowledge, so it is the EXCEPTION.

❌ Why the other options are wrong:
• Tradition — Tradition IS a source of knowledge (though it may be outdated or wrong).
• Voices of authority — Voices of authority IS a source of knowledge.
• Logical reasoning — Logical reasoning IS a source of knowledge.

⭐ Key point: Research is the most reliable source of knowledge for evidence-based practice, because it is systematic and tested.$x$, null),
(44, $x$Which step of the research process cuts across all the other steps?$x$, $x$Literature review$x$, $x$✅ Correct answer: Literature review
The LITERATURE REVIEW is the step that CUTS ACROSS (runs through) ALL other steps of the research process. It helps to: identify and refine the research PROBLEM; develop the theoretical framework; formulate OBJECTIVES and HYPOTHESES; choose an appropriate DESIGN, sample and instruments; and DISCUSS and compare the FINDINGS with previous studies. The researcher continues reviewing literature from the beginning to the end of the study.

❌ Why the other options are wrong:
• Research variables — Research variables are identified at a specific step; they do not cut across all steps.
• Problem identification — Problem identification is the first step only.
• Hypothesis — The hypothesis is formulated at a specific step.

⭐ Key point: Use primary sources (original research reports) whenever possible, and critically appraise each study.$x$, null),
(45, $x$All the following are probability sampling methods EXCEPT:$x$, $x$Quota sampling$x$, $x$✅ Correct answer: Quota sampling
PROBABILITY sampling methods give EVERY member of the population a KNOWN, non-zero CHANCE of being selected, usually through RANDOM selection. Examples: SIMPLE RANDOM, STRATIFIED random, CLUSTER, and SYSTEMATIC sampling. QUOTA SAMPLING is a NON-PROBABILITY method: the researcher fills fixed numbers (quotas) for each subgroup (e.g. 20 males, 20 females) by selecting conveniently available people, not randomly. So it is the EXCEPTION.

❌ Why the other options are wrong:
• Stratified sampling — Stratified sampling IS probability: the population is divided into strata, then random samples are taken from each.
• Simple random sampling — Simple random sampling IS probability: everyone has an equal chance (e.g. lottery or random numbers).
• Cluster sampling — Cluster sampling IS probability: groups (clusters, e.g. hospitals) are randomly selected.

⭐ Key point: Non-probability methods: convenience, quota, purposive, and snowball sampling. They are cheaper and easier but less representative.$x$, null),
(46, $x$The measure of location that divides a data set into two equal parts is the:$x$, $x$Median$x$, $x$✅ Correct answer: Median
The MEDIAN is the MIDDLE value when data are arranged in order (from smallest to largest). It DIVIDES the data set into TWO EQUAL PARTS — half the values are below it and half are above. Example: for 3, 5, 7, 9, 11, the median is 7. If there is an even number of values, the median is the average of the two middle values. It is useful when data are skewed (e.g. length of ICU stay), because extreme values do not affect it much.

❌ Why the other options are wrong:
• Range — The range is the difference between the highest and lowest values; it is a measure of spread.
• Mode — The mode is the most frequent value.
• Mean — The mean is the arithmetic average (sum ÷ number of values); it is affected by extreme values.

⭐ Key point: Measures of central tendency: mean, median, mode. Measures of dispersion: range, variance, standard deviation.$x$, null),
(47, $x$Plagiarism means:$x$, $x$Literary theft$x$, $x$✅ Correct answer: Literary theft
PLAGIARISM is "LITERARY THEFT" — presenting someone else's WORDS, IDEAS, DATA or work as your own WITHOUT proper ACKNOWLEDGEMENT (citation and referencing). It includes copying text word-for-word without quotation marks, paraphrasing without citing the source, and submitting another person's work. It is a serious breach of academic and research ethics and can lead to failing an assignment, withdrawal of a degree, or retraction of a publication.

❌ Why the other options are wrong:
• Literary appreciation — Literary appreciation means understanding and enjoying literature.
• Literary reference — Literary reference means citing a source — the opposite of plagiarism.
• Literary competence — Literary competence means skill in reading and writing.

⭐ Key point: Avoid plagiarism by citing sources properly (e.g. APA or Vancouver style), using quotation marks for direct quotes, and using plagiarism-checking software.$x$, null),
(48, $x$An acceptable reliability coefficient is:$x$, $x$Greater than 0.6–0.7$x$, $x$✅ Correct answer: Greater than 0.6–0.7
RELIABILITY refers to the CONSISTENCY of a research instrument — whether it gives the same results when used repeatedly under the same conditions. It is measured by a RELIABILITY COEFFICIENT (e.g. Cronbach's alpha, test-retest correlation), which ranges from 0 (no reliability) to 1.0 (perfect reliability). A coefficient GREATER THAN about 0.6–0.7 is generally considered ACCEPTABLE (0.8 or above is good, especially for clinical tools).

❌ Why the other options are wrong:
• 1.01 to 1.05 — Values of 1.01–1.05 are impossible; the coefficient cannot exceed 1.0.
• 1.05 to 1.09 — Values of 1.05–1.09 are impossible for the same reason.
• Greater than 2.0 — A value greater than 2.0 is impossible.

⭐ Key point: Reliability = consistency. Validity = accuracy (measuring what it is supposed to measure). An instrument can be reliable without being valid.$x$, null),
(49, $x$Quantitative research is characterized by$x$, $x$Collection and statistical analysis of numerical data to test hypotheses or describe variables objectively$x$, $x$✅ Correct answer: Collection and statistical analysis of numerical data to test hypotheses or describe variables objectively
QUANTITATIVE RESEARCH collects NUMERICAL data (numbers, measurements, counts) and uses STATISTICAL ANALYSIS to DESCRIBE variables, examine relationships, TEST HYPOTHESES and establish cause and effect OBJECTIVELY. It uses structured instruments (questionnaires, scales, physiological measurements) and often large samples. Example: measuring whether chlorhexidine mouth care reduces VAP rates in ICU.

❌ Why the other options are wrong:
• In-depth exploration of lived experiences using words and narratives without numbers — In-depth exploration of lived experiences using words describes QUALITATIVE research.
• Avoidance of any form of measurement — Quantitative research is based on measurement.
• Reliance solely on the researcher's personal opinion — It relies on objective data, not personal opinion.

⭐ Key point: Quantitative designs: descriptive, correlational, quasi-experimental and experimental (RCT).$x$, null),
(50, $x$Qualitative research is best suited to studies that aim to$x$, $x$Explore and understand the meaning, experiences, and perspectives of individuals in depth$x$, $x$✅ Correct answer: Explore and understand the meaning, experiences, and perspectives of individuals in depth
QUALITATIVE RESEARCH aims to EXPLORE and UNDERSTAND the MEANING, EXPERIENCES and PERSPECTIVES of people IN DEPTH. It collects data in WORDS (interviews, focus groups, observation), uses small, purposively chosen samples, and analyses themes. Example: exploring the experiences of families of patients in ICU, or nurses' experiences of caring for dying patients.

❌ Why the other options are wrong:
• Test a hypothesis using a large randomly selected sample and inferential statistics — Testing hypotheses with large random samples and inferential statistics is QUANTITATIVE research.
• Measure the precise incidence rate of a disease in a population — Measuring incidence rates is QUANTITATIVE (epidemiological) research.
• Determine the statistical correlation between two numerically measured variables — Determining statistical correlation between numerical variables is QUANTITATIVE research.

⭐ Key point: Qualitative designs include phenomenology, grounded theory, ethnography and historical research.$x$, null),
(51, $x$A study that describes the characteristics of ventilator-associated pneumonia rates in an ICU without manipulating any variable is an example of$x$, $x$Descriptive research$x$, $x$✅ Correct answer: Descriptive research
DESCRIPTIVE RESEARCH aims to DESCRIBE the CHARACTERISTICS of a population, situation or phenomenon AS IT EXISTS, WITHOUT MANIPULATING any variable. Describing VAP rates in an ICU (how often it occurs, in which patients, which organisms) is descriptive research. It answers "what is happening?" and often provides the basis for further studies.

❌ Why the other options are wrong:
• Quasi-experimental research — Quasi-experimental research manipulates an intervention but lacks random assignment.
• True experimental research — True experimental research manipulates an intervention with random assignment and a control group.
• Historical research — Historical research studies PAST events.

⭐ Key point: Descriptive studies may use surveys, observation or record reviews. They do not prove cause and effect.$x$, null),
(52, $x$Historical research in nursing is primarily concerned with$x$, $x$Systematically collecting and evaluating data related to past events to understand their influence on the present$x$, $x$✅ Correct answer: Systematically collecting and evaluating data related to past events to understand their influence on the present
HISTORICAL RESEARCH SYSTEMATICALLY COLLECTS and critically EVALUATES DATA about PAST EVENTS (from documents, records, letters, interviews with people who were present) to understand how they developed and how they INFLUENCE the PRESENT. Example: studying the development of critical care nursing in Nigeria, or Florence Nightingale's contribution to nursing.

❌ Why the other options are wrong:
• Describing current staffing patterns in an ICU — Describing current staffing is descriptive research.
• Predicting future patient outcomes using statistical models — Predicting future outcomes using statistical models is predictive/correlational research.
• Manipulating an intervention to observe its immediate effect — Manipulating an intervention is experimental research.

⭐ Key point: Historical research uses primary sources (original documents) and secondary sources, and evaluates their authenticity (external criticism) and accuracy (internal criticism).$x$, null),
(53, $x$A research purpose focused on determining whether an increase in nurse-to-patient ratio causes a reduction in medication errors is best described as$x$, $x$Explanatory (causal) research$x$, $x$✅ Correct answer: Explanatory (causal) research
EXPLANATORY (CAUSAL) research aims to EXPLAIN WHY something happens — to determine whether one variable CAUSES a change in another. Determining whether an INCREASE in nurse-to-patient ratio CAUSES a REDUCTION in medication errors is explanatory/causal research. It usually uses experimental or quasi-experimental designs.

❌ Why the other options are wrong:
• Exploratory research with no measurable variables — Exploratory research investigates a new area with little existing knowledge; this question has clear measurable variables.
• Purely descriptive research — Purely descriptive research only describes what exists without examining causes.
• Historical research — Historical research studies past events.

⭐ Key point: Research purposes: exploratory (what?), descriptive (what is?), explanatory (why?), predictive (what will happen?).$x$, null),
(54, $x$'Validity' in research refers to$x$, $x$The extent to which an instrument accurately measures what it is intended to measure$x$, $x$✅ Correct answer: The extent to which an instrument accurately measures what it is intended to measure
VALIDITY refers to how ACCURATELY an instrument MEASURES WHAT IT IS INTENDED TO MEASURE. For example, a pain scale is valid if it really measures pain (not anxiety). Types of validity: CONTENT validity (covers all aspects of the concept), CRITERION validity (agrees with a "gold standard"), and CONSTRUCT validity (measures the theoretical concept).

❌ Why the other options are wrong:
• The statistical significance level chosen by the researcher — The significance level (e.g. p<0.05) is a statistical decision, not validity.
• The extent to which an instrument gives consistent results on repeated use — Consistency on repeated use is RELIABILITY.
• The total number of subjects included in a study — The number of subjects is the sample size.

⭐ Key point: A valid instrument must be reliable, but a reliable instrument may not be valid.$x$, null),
(55, $x$'Operational definition' of a variable refers to$x$, $x$A precise description of how a variable will be measured or manipulated in a specific study$x$, $x$✅ Correct answer: A precise description of how a variable will be measured or manipulated in a specific study
An OPERATIONAL DEFINITION describes PRECISELY HOW a variable will be MEASURED or MANIPULATED in a particular study. Example: "pain" may be operationally defined as "the score on a 0–10 Numeric Rating Scale recorded 1 hour after surgery". This makes the study clear, measurable and repeatable by other researchers.

❌ Why the other options are wrong:
• The name of the statistical test applied to the variable — The statistical test is chosen based on the data type and design.
• A dictionary definition of the term unrelated to the study context — A dictionary definition is a general meaning unrelated to the study.
• The theoretical meaning of a concept found in textbooks only — The theoretical (conceptual) definition describes the meaning of the concept from theory, not how it is measured.

⭐ Key point: Every variable in a quantitative study should have both a conceptual and an operational definition.$x$, null),
(56, $x$The term 'extraneous variable' refers to a variable that$x$, $x$Is not the focus of the study but may influence the dependent variable and confound the results if not controlled$x$, $x$✅ Correct answer: Is not the focus of the study but may influence the dependent variable and confound the results if not controlled
An EXTRANEOUS VARIABLE (confounding variable) is NOT the focus of the study, but it can INFLUENCE the DEPENDENT VARIABLE and CONFOUND (distort) the results if it is not controlled. Example: in a study of a new mouth-care protocol on VAP, the patient's age, severity of illness and duration of ventilation are extraneous variables. Researchers control them through randomisation, matching, inclusion/exclusion criteria, or statistical adjustment.

❌ Why the other options are wrong:
• Always improves the accuracy of the study findings — Extraneous variables can reduce the accuracy of findings.
• Refers only to variables measured using qualitative methods — They are not limited to qualitative methods.
• Is deliberately manipulated by the researcher as the main variable of interest — The variable deliberately manipulated is the INDEPENDENT variable.

⭐ Key point: Controlling extraneous variables improves the internal validity of a study.$x$, null),
(57, $x$A primary source in a literature review refers to$x$, $x$An original report of a study written by the researcher(s) who actually conducted it$x$, $x$✅ Correct answer: An original report of a study written by the researcher(s) who actually conducted it
A PRIMARY SOURCE is an ORIGINAL REPORT of a study written by the RESEARCHER(S) who ACTUALLY CONDUCTED IT — usually a research article in a peer-reviewed journal, a thesis, or a conference paper presenting original findings. It gives the most accurate, first-hand information about the study's methods and results.

❌ Why the other options are wrong:
• A newspaper article about a general health topic — A newspaper article about health is a secondary (or popular) source.
• A textbook summarizing several other people's research — A textbook summarising others' research is a SECONDARY source.
• An encyclopedia entry with no citations — An encyclopedia entry is a tertiary/secondary source.

⭐ Key point: Literature reviews should rely mainly on primary sources, which can be critically appraised.$x$, null),
(58, $x$A secondary source in a literature review is best exemplified by$x$, $x$A review article or textbook chapter that summarizes and synthesizes findings from several original studies$x$, $x$✅ Correct answer: A review article or textbook chapter that summarizes and synthesizes findings from several original studies
A SECONDARY SOURCE is a description, SUMMARY or analysis of research written by someone OTHER than the original researchers. Examples: a REVIEW ARTICLE or TEXTBOOK CHAPTER that SUMMARISES and SYNTHESISES findings from several original studies. Secondary sources give an overview but may be less detailed or may misinterpret the original.

❌ Why the other options are wrong:
• The raw dataset collected by the researcher — The raw dataset is primary data.
• The original journal article reporting a specific randomized controlled trial — The original journal article reporting an RCT is a PRIMARY source.
• An unpublished doctoral thesis reporting the author's own study — An unpublished thesis reporting the author's own study is a PRIMARY source.

⭐ Key point: Use secondary sources to find primary sources, then read the originals.$x$, null),
(59, $x$A researcher studies the effect of a structured early mobilization protocol on the length of ICU stay. In this study, the independent variable is$x$, $x$The structured early mobilization protocol$x$, $x$✅ Correct answer: The structured early mobilization protocol
The INDEPENDENT VARIABLE is the variable that the researcher MANIPULATES or introduces (the presumed "CAUSE"). In this study, the researcher introduces the STRUCTURED EARLY MOBILISATION PROTOCOL to see its effect on length of ICU stay. So the protocol is the independent variable.

❌ Why the other options are wrong:
• The name of the hospital — The hospital's name is not a variable being manipulated.
• The length of ICU stay — The length of ICU stay is the DEPENDENT variable (the outcome).
• The age of the patients — Age is an extraneous (confounding) variable.

⭐ Key point: Independent variable = cause/intervention. Dependent variable = effect/outcome.$x$, null),
(60, $x$In a study examining whether hand hygiene compliance among ICU nurses affects the rate of hospital-acquired infections, the dependent variable is$x$, $x$The rate of hospital-acquired infections$x$, $x$✅ Correct answer: The rate of hospital-acquired infections
The DEPENDENT VARIABLE is the OUTCOME — the variable that is expected to CHANGE in response to the independent variable. In this study, the researcher examines whether hand hygiene compliance (independent variable) affects the RATE OF HOSPITAL-ACQUIRED INFECTIONS. So the infection rate is the dependent variable.

❌ Why the other options are wrong:
• The type of hospital where the study is conducted — The type of hospital is a setting characteristic.
• Hand hygiene compliance — Hand hygiene compliance is the INDEPENDENT variable.
• The number of nurses working in the unit — The number of nurses is a possible extraneous variable.

⭐ Key point: The dependent variable "depends" on the independent variable.$x$, null),
(61, $x$A 'discrete variable' is one that$x$, $x$Can only take on distinct, separate values, typically whole numbers, such as the number of children a person has$x$, $x$✅ Correct answer: Can only take on distinct, separate values, typically whole numbers, such as the number of children a person has
A DISCRETE VARIABLE can only take DISTINCT, SEPARATE values — usually WHOLE NUMBERS that are counted — with no values in between. Examples: number of children, number of ICU admissions, number of pressure ulcers, number of falls. You cannot have 2.5 children.

❌ Why the other options are wrong:
• Always refers to a qualitative characteristic that cannot be counted — Qualitative characteristics are categorical variables, which can be counted.
• Can take on any value along a continuum, including fractions and decimals — A variable that can take any value, including fractions, is a CONTINUOUS variable (e.g. weight, temperature, BP).
• Cannot be measured under any circumstances — Discrete variables can be measured (counted).

⭐ Key point: Discrete = counted. Continuous = measured on a scale.$x$, null),
(62, $x$Research questions are generally used instead of hypotheses when$x$, $x$The study is exploratory or descriptive in nature and there is insufficient existing knowledge to predict a specific relationship$x$, $x$✅ Correct answer: The study is exploratory or descriptive in nature and there is insufficient existing knowledge to predict a specific relationship
RESEARCH QUESTIONS are used instead of hypotheses when the study is EXPLORATORY or DESCRIPTIVE, and there is not enough existing knowledge to PREDICT a specific relationship. For example, "What are the experiences of nurses caring for COVID-19 patients in ICU?" A HYPOTHESIS predicts a relationship and is tested statistically (e.g. "Patients who receive early mobilisation will have a shorter ICU stay").

❌ Why the other options are wrong:
• The researcher wants to test a precise cause-and-effect relationship with an experimental design — Testing precise cause-and-effect relationships with experiments uses hypotheses.
• The study must always involve statistical hypothesis testing — Not all studies require statistical hypothesis testing.
• Qualitative research is strictly prohibited from using questions — Qualitative research commonly uses research questions.

⭐ Key point: Hypotheses are used in experimental, quasi-experimental and correlational studies.$x$, null),
(63, $x$A study comparing infection rates between an ICU that adopted a new hand hygiene protocol and a similar ICU that continued standard practice, without randomly assigning patients or units to groups, is an example of a$x$, $x$Quasi-experimental design$x$, $x$✅ Correct answer: Quasi-experimental design
A QUASI-EXPERIMENTAL design is like an experiment in that the researcher introduces an INTERVENTION (here, a new hand hygiene protocol in one ICU) and usually compares the results with a COMPARISON GROUP (a similar ICU continuing standard practice). However, it LACKS RANDOM ASSIGNMENT — the units or patients are not randomly allocated to the intervention or comparison group. This design is common in hospital research because it is often impractical or unethical to randomise whole wards, hospitals or patients. Because groups may differ in other ways (staffing, patient severity), the researcher must be careful about confounding when interpreting the results.

❌ Why the other options are wrong:
• Phenomenological design — A phenomenological design is qualitative; it explores lived experiences through interviews, with no intervention.
• Historical design — A historical design studies past events using documents and records.
• True experimental design — A TRUE experimental design (RCT) requires RANDOM assignment to groups, a control group and manipulation of the intervention.

⭐ Key point: True experiment = manipulation + control group + randomisation. Quasi-experiment = manipulation, but missing randomisation (and sometimes a control group).$x$, null),
(64, $x$A cross-sectional study design involves$x$, $x$Collecting data from a population or sample at a single point in time$x$, $x$✅ Correct answer: Collecting data from a population or sample at a single point in time
A CROSS-SECTIONAL study collects data from a population or sample at a SINGLE POINT IN TIME (a "snapshot"). Example: surveying all ICU nurses in one month to measure their knowledge of VAP prevention. It is quick and inexpensive, but cannot show cause and effect over time.

❌ Why the other options are wrong:
• Following the same group of subjects over an extended period with repeated measurements — Following the same group over time is a LONGITUDINAL study.
• Manipulating the independent variable with random assignment — Manipulating the independent variable with random assignment is an EXPERIMENTAL design.
• Reviewing historical documents only — Reviewing historical documents is historical research.

⭐ Key point: Prevalence (how common something is at one point in time) is often measured using cross-sectional studies.$x$, null),
(65, $x$A phenomenological research design, a type of qualitative design, is primarily used to$x$, $x$Explore and describe the lived experiences and meanings that individuals attach to a particular phenomenon$x$, $x$✅ Correct answer: Explore and describe the lived experiences and meanings that individuals attach to a particular phenomenon
PHENOMENOLOGY is a qualitative design that EXPLORES and DESCRIBES the LIVED EXPERIENCES of people and the MEANINGS they give to a particular phenomenon. Data are collected through in-depth interviews. Example: "the lived experience of patients recovering from mechanical ventilation".

❌ Why the other options are wrong:
• Manipulate an independent variable under controlled experimental conditions — Manipulating variables is experimental research.
• Statistically test hypotheses using large, randomly selected samples — Testing hypotheses with large samples is quantitative research.
• Analyze numerical trends in large population datasets — Analysing numerical trends is quantitative research.

⭐ Key point: Phenomenology asks: "What is it like to experience this?"$x$, null),
(66, $x$An 'ethnographic' research design focuses on$x$, $x$Studying the culture, beliefs, and practices of a particular group through immersion and observation over time$x$, $x$✅ Correct answer: Studying the culture, beliefs, and practices of a particular group through immersion and observation over time
ETHNOGRAPHY is a qualitative design that studies the CULTURE, BELIEFS, VALUES and PRACTICES of a particular group through IMMERSION and OBSERVATION over time (participant observation and interviews). Example: studying the culture of an ICU nursing team, or traditional beliefs about illness in a community.

❌ Why the other options are wrong:
• Testing the statistical significance of an intervention using a control group — Testing statistical significance is quantitative research.
• Randomly assigning subjects to experimental conditions — Random assignment is experimental research.
• Reviewing quantitative survey data collected via mailed questionnaires only — Mailed questionnaires are survey research.

⭐ Key point: Ethnography developed from anthropology.$x$, null),
(67, $x$A 'sampling frame' is best described as$x$, $x$A complete list of all elements or subjects in the accessible population from which a sample will be drawn$x$, $x$✅ Correct answer: A complete list of all elements or subjects in the accessible population from which a sample will be drawn
A SAMPLING FRAME is a COMPLETE LIST of all the ELEMENTS or subjects in the ACCESSIBLE POPULATION from which the sample will be drawn. Example: a list of all registered nurses working in a hospital's ICUs. Probability sampling requires a sampling frame.

❌ Why the other options are wrong:
• A synonym for the research design — The research design is the overall plan of the study.
• The final report describing the study's results — The final report describes the results.
• The theoretical framework guiding the study — The theoretical framework guides the study.

⭐ Key point: An incomplete sampling frame can lead to sampling bias.$x$, null),
(68, $x$Systematic sampling involves$x$, $x$Selecting every kth element from a list after a random starting point$x$, $x$✅ Correct answer: Selecting every kth element from a list after a random starting point
SYSTEMATIC SAMPLING selects EVERY kth ELEMENT from a list, after a RANDOM STARTING POINT. The sampling interval k = population size ÷ sample size. Example: from 500 patients, to get 50, select every 10th patient, starting from a randomly chosen number between 1 and 10.

❌ Why the other options are wrong:
• Choosing subjects purely based on the researcher's personal judgment of who is 'typical' — Choosing based on personal judgement is purposive sampling.
• Allowing existing participants to recruit further participants — Participants recruiting others is snowball sampling.
• Selecting subjects based only on their convenient availability — Selecting conveniently available subjects is convenience sampling.

⭐ Key point: Systematic sampling is simple and efficient, but can be biased if the list has a repeating pattern.$x$, null),
(69, $x$Snowball sampling is a technique especially useful for studying$x$, $x$Hard-to-reach or hidden populations, where existing participants refer the researcher to other potential participants they know$x$, $x$✅ Correct answer: Hard-to-reach or hidden populations, where existing participants refer the researcher to other potential participants they know
SNOWBALL SAMPLING asks EXISTING PARTICIPANTS to REFER other people they know who meet the study criteria. The sample grows like a rolling snowball. It is especially useful for HARD-TO-REACH or HIDDEN POPULATIONS (e.g. drug users, people with stigmatised conditions) where there is no list.

❌ Why the other options are wrong:
• Extremely large populations with a complete and accessible sampling frame — For large populations with a complete list, probability sampling is better.
• Populations where random selection using computer software is straightforward — Where random selection is straightforward, probability sampling is better.
• Only populations with fewer than five known members in existence — Snowball sampling isn't limited to very small populations.

⭐ Key point: Snowball sampling is a non-probability method; it may introduce bias since participants refer people similar to themselves.$x$, null),
(70, $x$A researcher studying illicit drug users, a population without an available formal list or registry, asks initial participants to refer other drug users they know. This sampling technique is called$x$, $x$Snowball sampling$x$, $x$✅ Correct answer: Snowball sampling
The researcher is studying ILLICIT DRUG USERS — a HIDDEN, hard-to-reach population that has no list or registry (no sampling frame), and whose members may avoid researchers because of stigma or fear of the law. The researcher asks the first participants to REFER other drug users they know, who then refer others, so the sample grows like a SNOWBALL rolling downhill. This is SNOWBALL (chain-referral) SAMPLING, a NON-PROBABILITY method. It also helps build trust, as new participants are introduced by people they know.

❌ Why the other options are wrong:
• Systematic sampling — Systematic sampling needs a complete list of the population to select every kth person; no such list exists here.
• Stratified random sampling — Stratified random sampling needs a list divided into subgroups (strata) from which random samples are taken.
• Quota sampling — Quota sampling fills fixed numbers in chosen subgroups (e.g. 20 men, 20 women) using convenient participants, not referrals.

⭐ Key point: Snowball samples are not representative (people refer others like themselves), so findings cannot be generalised widely. Confidentiality and anonymity are especially important in studies of illegal or stigmatised behaviour.$x$, null),
(71, $x$The "null hypothesis" (H0) states that:$x$, $x$There is no significant difference or relationship between the variables being studied$x$, $x$✅ Correct answer: There is no significant difference or relationship between the variables being studied
The NULL HYPOTHESIS (H0) is the statement that there is NO SIGNIFICANT DIFFERENCE or NO RELATIONSHIP between the variables being studied — any difference seen is due to chance. Example: "There is no significant difference in VAP rates between patients who receive chlorhexidine mouth care and those who do not." Statistical tests are used to decide whether to REJECT H0. If the p-value is less than the chosen significance level (usually 0.05), H0 is rejected and the alternative hypothesis (that there IS a difference) is supported.

❌ Why the other options are wrong:
• There is a significant difference or relationship between the variables studied — A statement that there IS a significant difference or relationship is the ALTERNATIVE (research) hypothesis (H1).
• The research design used was invalid — The null hypothesis is not a statement about whether the design was valid.
• The sample size used was too small to be valid — The null hypothesis is not about sample size.

⭐ Key point: We never "prove" the null hypothesis — we either reject it or fail to reject it.$x$, null),
(72, $x$Which scale of measurement classifies data into categories with no inherent order, such as blood group (A, B, AB, O)?$x$, $x$Nominal$x$, $x$✅ Correct answer: Nominal
The NOMINAL scale is the simplest level of measurement. It places data into CATEGORIES or NAMES with NO INHERENT ORDER or ranking — one category is not "higher" or "better" than another. Examples: BLOOD GROUP (A, B, AB, O), sex (male/female), religion, marital status, ward name, diagnosis. Numbers may be used as labels (e.g. 1 = male, 2 = female), but they have no mathematical meaning. Only counts, percentages and the mode can be calculated.

❌ Why the other options are wrong:
• Interval — Interval data have equal intervals between values but no true zero (e.g. temperature in °C).
• Ratio — Ratio data have equal intervals AND a true zero (e.g. weight, height, heart rate).
• Ordinal — Ordinal data have categories with a meaningful ORDER (e.g. mild, moderate, severe).

⭐ Key point: Remember NOIR (from lowest to highest level): Nominal, Ordinal, Interval, Ratio.$x$, null),
(73, $x$A patient's pain level rated as "mild, moderate, severe" is an example of which scale of measurement?$x$, $x$Ordinal$x$, $x$✅ Correct answer: Ordinal
The ORDINAL scale places data into CATEGORIES that have a MEANINGFUL ORDER or RANK, but the DISTANCES between categories are NOT necessarily EQUAL. Pain rated as "MILD, MODERATE, SEVERE" is ordinal: severe is worse than moderate, which is worse than mild, but the "gap" between mild and moderate may not equal the gap between moderate and severe. Other examples: levels of education, Likert scales (strongly agree to strongly disagree), pressure ulcer stages, cancer stages.

❌ Why the other options are wrong:
• Ratio — Ratio data have equal intervals and a true zero (e.g. weight).
• Nominal — Nominal data have categories with NO order (e.g. blood group).
• Interval — Interval data have equal intervals between values (e.g. temperature in °C).

⭐ Key point: For ordinal data, use the median and mode, and non-parametric tests (e.g. Mann-Whitney U).$x$, null),
(74, $x$Body temperature measured in degrees Celsius is an example of which scale of measurement?$x$, $x$Interval$x$, $x$✅ Correct answer: Interval
The INTERVAL scale has ordered values with EQUAL INTERVALS between them, but NO TRUE (ABSOLUTE) ZERO. Temperature in DEGREES CELSIUS is interval: the difference between 36 °C and 37 °C is the same as between 38 °C and 39 °C, but 0 °C does NOT mean "no temperature" — it is just the freezing point of water. So you cannot say 40 °C is "twice as hot" as 20 °C.

❌ Why the other options are wrong:
• Ratio — Ratio data have a TRUE ZERO (e.g. weight, pulse rate, urine output, temperature in Kelvin).
• Ordinal — Ordinal data have order but unequal intervals.
• Nominal — Nominal data have no order.

⭐ Key point: Interval and ratio data are both "continuous" and allow the mean and standard deviation to be calculated.$x$, null),
(75, $x$Which measure of central tendency is most appropriate for a data set with extreme outlier values (a highly skewed distribution)?$x$, $x$Median$x$, $x$✅ Correct answer: Median
The MEDIAN is the middle value when data are arranged in order. It is NOT strongly affected by EXTREME OUTLIER values, so it is the most appropriate measure of central tendency for SKEWED data. Example: ICU length of stay (most patients stay 2–5 days, but a few stay 60 days) — the mean would be pulled up by the long stays, but the median better represents the "typical" patient.

❌ Why the other options are wrong:
• Standard deviation — Standard deviation measures SPREAD, not central tendency.
• Mean — The mean is pulled towards outliers, so it is misleading in skewed data.
• Mode — The mode is the most frequent value; it may not represent the centre well.

⭐ Key point: Normally distributed data: use mean and standard deviation. Skewed data: use median and interquartile range.$x$, null),
(76, $x$The "standard deviation" is a measure of:$x$, $x$The average distance or spread of individual values from the mean$x$, $x$✅ Correct answer: The average distance or spread of individual values from the mean
The STANDARD DEVIATION (SD) is a measure of DISPERSION (spread). It shows the AVERAGE DISTANCE of individual values FROM THE MEAN. A SMALL SD means values are close to the mean (data are tightly grouped); a LARGE SD means values are widely spread out. In a normal distribution, about 68% of values lie within 1 SD of the mean, about 95% within 2 SD, and about 99.7% within 3 SD.

❌ Why the other options are wrong:
• The most frequently occurring value — The most frequent value is the MODE.
• The central tendency of a data set — Central tendency is measured by the mean, median and mode.
• The relationship between two variables — The relationship between two variables is measured by correlation (e.g. Pearson's r).

⭐ Key point: SD is the square root of the variance.$x$, null),
(77, $x$A "Type I error" in hypothesis testing occurs when:$x$, $x$A true null hypothesis is incorrectly rejected (a false positive)$x$, $x$✅ Correct answer: A true null hypothesis is incorrectly rejected (a false positive)
A TYPE I ERROR (ALPHA ERROR) occurs when the researcher REJECTS a NULL HYPOTHESIS that is actually TRUE — concluding there IS a difference or effect when there really is NOT (a FALSE POSITIVE). The probability of a Type I error equals the significance level (alpha), usually set at 0.05 (5%). Example: concluding a new drug works when it really doesn't.

❌ Why the other options are wrong:
• The wrong statistical test is applied to the data — Using the wrong test is a methodological error, not a Type I error.
• A false null hypothesis is not rejected — Failing to reject a FALSE null hypothesis is a TYPE II error.
• The sample size chosen is too large — A large sample size reduces errors; it is not a Type I error.

⭐ Key point: Reduce Type I error by using a smaller alpha (e.g. 0.01), but this increases the risk of Type II error.$x$, null),
(78, $x$A "Type II error" in hypothesis testing occurs when:$x$, $x$A false null hypothesis is incorrectly accepted or not rejected (a false negative)$x$, $x$✅ Correct answer: A false null hypothesis is incorrectly accepted or not rejected (a false negative)
A TYPE II ERROR (BETA ERROR) occurs when the researcher FAILS TO REJECT a NULL HYPOTHESIS that is actually FALSE — concluding there is NO difference or effect when there really IS one (a FALSE NEGATIVE). Example: concluding a new treatment doesn't work when it actually does. It is more likely with SMALL SAMPLES (low statistical power).

❌ Why the other options are wrong:
• The alternative hypothesis is proven true — Proving the alternative hypothesis true is not an error.
• The p-value is exactly 0.05 — A p-value of exactly 0.05 is a borderline result, not a Type II error.
• A true null hypothesis is rejected — Rejecting a TRUE null hypothesis is a TYPE I error.

⭐ Key point: Reduce Type II error by increasing the sample size (power analysis). Power = 1 − beta (usually aim for 80%).$x$, null),
(79, $x$Which statistical test is commonly used to compare the means of two independent groups, such as two treatment groups?$x$, $x$Student's t-test$x$, $x$✅ Correct answer: Student's t-test
The STUDENT'S t-TEST compares the MEANS of TWO GROUPS to see whether the difference between them is statistically significant. The INDEPENDENT (unpaired) t-test is used for two separate groups (e.g. pain scores in a group given drug A versus a group given drug B). The PAIRED t-test is used for the same group measured twice (e.g. before and after an intervention). It requires interval or ratio data that are approximately normally distributed.

❌ Why the other options are wrong:
• Pearson correlation coefficient — Pearson correlation measures the strength of the relationship between two continuous variables.
• Frequency distribution table — A frequency distribution table organises data; it does not compare means.
• Chi-square test — The chi-square test compares categorical (nominal/ordinal) data, e.g. proportions.

⭐ Key point: For non-normal data, use the Mann-Whitney U test instead of the independent t-test.$x$, null),
(80, $x$When comparing the means of more than two groups simultaneously (e.g., three different ICU sedation protocols), which statistical test is most appropriate?$x$, $x$Analysis of Variance (ANOVA)$x$, $x$✅ Correct answer: Analysis of Variance (ANOVA)
ANALYSIS OF VARIANCE (ANOVA) is used to compare the MEANS of THREE OR MORE GROUPS at the same time (e.g. three ICU sedation protocols). Doing multiple t-tests instead would increase the risk of a Type I error. If ANOVA shows a significant difference, post-hoc tests identify which groups differ.

❌ Why the other options are wrong:
• Chi-square test — Chi-square compares categorical data.
• A simple frequency count — A frequency count doesn't compare means.
• Paired t-test — A paired t-test compares two measurements from the same group.

⭐ Key point: For non-normal data, the Kruskal-Wallis test is the non-parametric alternative to ANOVA.$x$, null),
(81, $x$Entrepreneurship is best defined as:$x$, $x$The process of identifying an opportunity and organising resources to create a new venture, accepting the risks in return for profit or social value$x$, $x$✅ Correct answer: The process of identifying an opportunity and organising resources to create a new venture, accepting the risks in return for profit or social value
ENTREPRENEURSHIP is the PROCESS of IDENTIFYING an OPPORTUNITY (an unmet need) and ORGANISING RESOURCES (money, people, equipment, ideas) to CREATE a NEW VENTURE (business or service), while ACCEPTING the RISKS involved, in return for PROFIT or SOCIAL VALUE. Nurses can become entrepreneurs by starting home-care services, private clinics, health education businesses, consultancy, or medical supply businesses.

❌ Why the other options are wrong:
• Saving money in a fixed deposit account — Saving money in a fixed deposit is investment, not creating a venture.
• Inheriting a family business without taking part in managing it — Inheriting a business without managing it is not entrepreneurship.
• Working as a salaried employee in a government hospital — Working as a salaried employee is employment, not entrepreneurship.

⭐ Key point: Key elements: innovation, opportunity, risk-taking, resource organisation and value creation.$x$, null),
(82, $x$A nurse who starts her own private home-care service for elderly patients discharged from hospital is an example of:$x$, $x$Nurse entrepreneurship$x$, $x$✅ Correct answer: Nurse entrepreneurship
NURSE ENTREPRENEURSHIP is when a nurse starts and OWNS her OWN BUSINESS that provides nursing or health-related services, taking the financial risk. Starting a private HOME-CARE service for elderly patients discharged from hospital is a clear example.

❌ Why the other options are wrong:
• Delegation — Delegation is assigning tasks to others.
• Intrapreneurship — Intrapreneurship is innovation WITHIN an organisation where one is employed.
• Moonlighting — Moonlighting is working a second job in addition to a main job.

⭐ Key point: Nurse entrepreneurs must be registered and licensed, follow the NMCN code, and register their business with the CAC.$x$, null),
(83, $x$A nurse who designs and leads a new discharge-teaching service inside the hospital where she is employed is practising:$x$, $x$Intrapreneurship$x$, $x$✅ Correct answer: Intrapreneurship
INTRAPRENEURSHIP is ENTREPRENEURIAL behaviour WITHIN an EXISTING ORGANISATION. An employee (an "intrapreneur") creates and leads a new product, service or process inside the organisation where she works, using its resources. Designing and leading a new discharge-teaching service in her own hospital is intrapreneurship.

❌ Why the other options are wrong:
• Outsourcing — Outsourcing is contracting work to an outside company.
• Sole proprietorship — Sole proprietorship is a business owned by one person.
• Franchising — Franchising is operating a business under another company's brand and system.

⭐ Key point: Intrapreneurs share the creativity of entrepreneurs, but the organisation carries most of the financial risk.$x$, null),
(84, $x$Which characteristic is MOST typical of a successful entrepreneur?$x$, $x$Willingness to take calculated risks$x$, $x$✅ Correct answer: Willingness to take calculated risks
Successful entrepreneurs are WILLING to TAKE CALCULATED RISKS — they assess risks carefully, plan for them, and take them when the potential reward justifies it. Other typical characteristics: creativity and innovation, self-confidence, determination and persistence, vision, initiative, leadership, flexibility, and good decision-making.

❌ Why the other options are wrong:
• Avoiding every form of risk — Avoiding every risk prevents starting or growing a business.
• Depending on others for every decision — Entrepreneurs are independent and make decisions themselves.
• Resistance to change — Entrepreneurs embrace and drive change.

⭐ Key point: "Calculated" risk means informed risk — not reckless gambling.$x$, null),
(85, $x$In a SWOT analysis, 'Strengths' and 'Weaknesses' refer to:$x$, $x$Internal factors within the business$x$, $x$✅ Correct answer: Internal factors within the business
SWOT analysis is a planning tool. STRENGTHS and WEAKNESSES are INTERNAL factors — things WITHIN the business that it can control (e.g. skilled staff, good location, reputation — or lack of capital, limited equipment). OPPORTUNITIES and THREATS are EXTERNAL factors in the environment (market, government policy, competitors, economy).

❌ Why the other options are wrong:
• External factors in the market — External factors are opportunities and threats.
• Government policies only — Government policies are external factors.
• Competitors' future plans — Competitors' plans are external factors (threats).

⭐ Key point: SWOT helps a business build on strengths, fix weaknesses, use opportunities and prepare for threats.$x$, null),
(86, $x$In a SWOT analysis for a private nursing clinic, a new government policy expanding health-insurance coverage to more families would be classified as:$x$, $x$An opportunity$x$, $x$✅ Correct answer: An opportunity
In a SWOT analysis, OPPORTUNITIES are favourable EXTERNAL conditions — things OUTSIDE the business that it can take advantage of to grow. A NEW GOVERNMENT POLICY that EXPANDS HEALTH-INSURANCE coverage (e.g. NHIA/state insurance schemes) means more families will be able to pay for health services through insurance. A private nursing clinic could register as a provider and attract many new clients. Because the policy comes from outside and could benefit the clinic, it is an OPPORTUNITY.

❌ Why the other options are wrong:
• A strength — A STRENGTH is an INTERNAL advantage of the clinic itself (e.g. experienced nurses, good reputation, convenient location).
• A weakness — A WEAKNESS is an INTERNAL disadvantage (e.g. limited capital, no ambulance, few staff).
• A threat — A THREAT is an EXTERNAL factor that could HARM the clinic (e.g. a large new hospital opening nearby, rising costs, unfavourable regulations).

⭐ Key point: Internal = Strengths and Weaknesses (you can control them). External = Opportunities and Threats (you must respond to them).$x$, null),
(87, $x$A written document that describes a new venture's goals, target market, operations, management and financial projections is called a:$x$, $x$Business plan$x$, $x$✅ Correct answer: Business plan
A BUSINESS PLAN is a written document that describes a new venture's GOALS, TARGET MARKET, OPERATIONS, MANAGEMENT and FINANCIAL PROJECTIONS (start-up costs, expected income and expenses, break-even point). It guides the business and is needed to obtain loans or investors.

❌ Why the other options are wrong:
• Memorandum of understanding — A memorandum of understanding is an agreement between parties.
• Duty roster — A duty roster is a staff schedule.
• Job description — A job description outlines a job's duties.

⭐ Key point: Main sections: executive summary, business description, market analysis, marketing plan, operations, management, and financial plan.$x$, null),
(88, $x$The FIRST step in starting a new business is usually to:$x$, $x$Identify a business idea/opportunity and assess its feasibility$x$, $x$✅ Correct answer: Identify a business idea/opportunity and assess its feasibility
The FIRST step in starting a business is to IDENTIFY a BUSINESS IDEA or OPPORTUNITY — an unmet need that people will pay for (e.g. families needing nursing care at home after discharge) — and ASSESS its FEASIBILITY: Is there enough demand? Who are the competitors? How much will it cost to start and run? Is it legal and practical? Will it make a profit? Only after the idea is shown to be feasible should the entrepreneur write a business plan, raise capital, register the business with the CAC (and obtain professional licences), find premises, buy equipment and recruit staff.

❌ Why the other options are wrong:
• Buy equipment — Buying equipment before confirming the idea is feasible risks wasting money.
• Print business cards — Business cards are part of promotion, which comes much later.
• Employ staff — Employing staff comes after the business is planned, funded and registered.

⭐ Key point: Typical sequence: idea → feasibility study → business plan → finance → registration/licensing → set-up → launch → monitor and evaluate.$x$, null),
(89, $x$A feasibility study is carried out mainly to:$x$, $x$Determine whether a proposed business idea is practical and likely to succeed financially$x$, $x$✅ Correct answer: Determine whether a proposed business idea is practical and likely to succeed financially
A FEASIBILITY STUDY is a careful investigation carried out BEFORE starting a business, to determine whether the proposed idea is PRACTICAL and LIKELY TO SUCCEED, especially FINANCIALLY. It examines: market demand (are there enough clients?), competition, location, technical requirements (equipment, skills), legal and regulatory requirements (licences, registration), start-up and running costs, expected income, and the break-even point. The results help the entrepreneur decide whether to go ahead, change the idea, or abandon it — saving time and money.

❌ Why the other options are wrong:
• Calculate staff salaries only — Calculating salaries is only a small part of the financial analysis, not the main purpose.
• Advertise the business — Advertising is a marketing activity that comes after the business is established.
• Recruit employees — Recruiting employees comes after the decision to start the business.

⭐ Key point: A feasibility study answers the question "Should we do this?"; a business plan answers "How will we do it?"$x$, null),
(90, $x$A business owned and managed by one person who bears unlimited liability for its debts is a:$x$, $x$Sole proprietorship$x$, $x$✅ Correct answer: Sole proprietorship
A SOLE PROPRIETORSHIP is a business OWNED and MANAGED by ONE PERSON, who receives all the profits but bears UNLIMITED LIABILITY — meaning the owner's personal assets (house, car, savings) can be used to pay business debts. It is the simplest and most common form of small business.

❌ Why the other options are wrong:
• Cooperative society — A cooperative is owned by members.
• Limited liability company — A limited liability company has limited liability.
• Partnership — A partnership is owned by two or more people.

⭐ Key point: Advantages: easy to start, full control. Disadvantages: unlimited liability, limited capital.$x$, null),
(91, $x$The main advantage of a limited liability company over a sole proprietorship is that:$x$, $x$The owners' personal assets are protected; their liability is limited to what they invested$x$, $x$✅ Correct answer: The owners' personal assets are protected; their liability is limited to what they invested
In a LIMITED LIABILITY COMPANY, the owners' (shareholders') PERSONAL ASSETS are PROTECTED. Their liability for business debts is LIMITED to the amount they INVESTED in the company. This is the main advantage over a sole proprietorship, where the owner has unlimited liability.

❌ Why the other options are wrong:
• Profits never have to be shared — Profits may be shared among shareholders.
• It cannot be sued — A company can be sued as a legal entity.
• It does not need to be registered — Companies must be registered.

⭐ Key point: A limited company is a separate legal entity from its owners.$x$, null),
(92, $x$In Nigeria, business names and companies are registered with the:$x$, $x$Corporate Affairs Commission (CAC)$x$, $x$✅ Correct answer: Corporate Affairs Commission (CAC)
In Nigeria, the CORPORATE AFFAIRS COMMISSION (CAC) is the government agency responsible for REGISTERING BUSINESS NAMES, COMPANIES (e.g. limited liability companies) and incorporated trustees (NGOs), under the Companies and Allied Matters Act (CAMA 2020). Registration gives the business a legal identity, protects its name, allows it to open a corporate bank account, and is needed for contracts, loans and tax purposes. Registration can now be done online through the CAC portal.

❌ Why the other options are wrong:
• Nursing and Midwifery Council of Nigeria — The Nursing and Midwifery Council of Nigeria (NMCN) registers and licenses nurses and midwives, and regulates nursing practice — not businesses.
• Central Bank of Nigeria — The Central Bank of Nigeria (CBN) regulates banks and monetary policy.
• NAFDAC — NAFDAC regulates food, drugs, cosmetics and medical devices.

⭐ Key point: A nurse-owned health business also needs a valid nursing licence (NMCN), approval from the State Ministry of Health for health facilities, and tax registration (TIN).$x$, null),
(93, $x$Money and other resources used to start and run a business are called:$x$, $x$Capital$x$, $x$✅ Correct answer: Capital
CAPITAL is the MONEY and other RESOURCES (equipment, premises, vehicles, stock) that are used to START and RUN a business. START-UP capital pays for initial costs (registration, rent deposit, equipment, first supplies), while WORKING capital pays day-to-day expenses (salaries, consumables, utilities) until income comes in. Sources of capital include personal savings, family and friends, cooperative societies, microfinance or bank loans, grants, and investors.

❌ Why the other options are wrong:
• Turnover — TURNOVER is the total income from sales in a period, before costs are subtracted.
• Profit — PROFIT is what remains after subtracting all costs from revenue.
• Dividend — A DIVIDEND is the part of a company's profit paid out to shareholders.

⭐ Key point: Many small businesses fail because they run out of working capital — plan for several months of expenses before the business becomes profitable.$x$, null),
(94, $x$Profit is calculated as:$x$, $x$Total revenue minus total costs$x$, $x$✅ Correct answer: Total revenue minus total costs
PROFIT = TOTAL REVENUE − TOTAL COSTS. Revenue is all the money received from selling goods or services (e.g. fees from home visits). Costs are all the expenses of running the business — fixed costs (rent, salaries) and variable costs (supplies, transport). If revenue is GREATER than costs, the result is a PROFIT; if costs are greater than revenue, the result is a LOSS. Example: a clinic earns ₦500,000 in a month and spends ₦380,000; profit = ₦120,000.

❌ Why the other options are wrong:
• Capital plus total revenue — Capital plus revenue is not a meaningful measure of profit; capital is the money invested, not earned.
• Total revenue plus total costs — Adding revenue and costs makes no sense — costs reduce profit.
• Total costs minus total revenue — Costs minus revenue gives the LOSS (a negative profit) when costs are higher.

⭐ Key point: Gross profit = revenue − direct costs; net profit = revenue − all costs (including tax). Keep records to calculate profit accurately each month.$x$, null),
(95, $x$The rent for a clinic's premises, which stays the same whether 5 or 50 clients are seen in a month, is an example of a:$x$, $x$Fixed cost$x$, $x$✅ Correct answer: Fixed cost
FIXED COSTS are expenses that STAY THE SAME regardless of how many clients are seen or how much is sold — at least in the short term. RENT for the clinic premises must be paid whether 5 or 50 clients are seen. Other fixed costs: permanent staff salaries, insurance, loan repayments, licence fees, security and internet subscriptions. Because fixed costs must be paid even when business is slow, the business needs enough clients to cover them (the break-even point).

❌ Why the other options are wrong:
• Variable cost — VARIABLE costs change with the level of activity (e.g. gloves, dressings).
• Revenue — REVENUE is income, not a cost.
• Dividend — A DIVIDEND is profit paid to shareholders, not a cost of running the clinic.

⭐ Key point: Total cost = fixed costs + variable costs. Keeping fixed costs low reduces the risk of a new business.$x$, null),
(96, $x$Disposable gloves and dressings, whose use rises with the number of clients seen, are examples of:$x$, $x$Variable costs$x$, $x$✅ Correct answer: Variable costs
VARIABLE COSTS RISE and FALL in direct proportion to the level of activity. Each client seen uses DISPOSABLE GLOVES, DRESSINGS, syringes, transport fuel and other consumables, so the more clients seen, the higher these costs; if no clients are seen, these costs are almost zero. Knowing the variable cost per client helps set prices: the price must be higher than the variable cost so that each visit contributes to fixed costs and profit.

❌ Why the other options are wrong:
• Fixed costs — FIXED costs stay the same regardless of activity (e.g. rent).
• Owner's equity — OWNER'S EQUITY is the owner's investment in the business, not a cost.
• Capital assets — CAPITAL ASSETS are long-term items like equipment and vehicles, not consumables used up per client.

⭐ Key point: Contribution per client = price − variable cost per client. This contribution pays fixed costs first, then becomes profit.$x$, null),
(97, $x$The break-even point is the level of sales at which:$x$, $x$Total revenue equals total costs, so there is neither profit nor loss$x$, $x$✅ Correct answer: Total revenue equals total costs, so there is neither profit nor loss
The BREAK-EVEN POINT is the level of sales at which TOTAL REVENUE EQUALS TOTAL COSTS, so there is NEITHER PROFIT NOR LOSS. Sales above this point make a profit; below it, a loss.

❌ Why the other options are wrong:
• Tax becomes payable — Tax relates to profits.
• The business makes its maximum profit — Maximum profit is not the break-even point.
• The business must close down — Break-even doesn't mean closure.

⭐ Key point: Break-even point (units) = Fixed costs ÷ (Price per unit − Variable cost per unit).$x$, null),
(98, $x$A home-care nurse has fixed costs of ₦60,000 a month. Each visit costs ₦2,000 in supplies and transport, and she charges ₦5,000 per visit. How many visits a month does she need to break even?$x$, $x$20 visits$x$, $x$✅ Correct answer: 20 visits
BREAK-EVEN = FIXED COSTS ÷ (PRICE per visit − VARIABLE COST per visit). Here: ₦60,000 ÷ (₦5,000 − ₦2,000) = ₦60,000 ÷ ₦3,000 = 20 VISITS per month. Each visit contributes ₦3,000 towards fixed costs.

❌ Why the other options are wrong:
• 12 visits — 12 visits would give ₦36,000 contribution — not enough.
• 40 visits — 40 visits would make a profit of ₦60,000.
• 30 visits — 30 visits would make a profit of ₦30,000.

⭐ Key point: The "contribution margin" (price − variable cost) shows how much each sale contributes to fixed costs and profit.$x$, null),
(99, $x$The '4 Ps' of the marketing mix are:$x$, $x$Product, Price, Place, Promotion$x$, $x$✅ Correct answer: Product, Price, Place, Promotion
The MARKETING MIX, or "4 Ps", are the four key elements a business controls to attract clients: PRODUCT — the service or goods offered (e.g. home nursing, wound care, health checks), including quality and features; PRICE — what clients pay, considering costs, competitors and what clients can afford; PLACE — where and how the service is delivered (clinic location, home visits, opening hours, accessibility); PROMOTION — how clients learn about the service (referrals from doctors, social media, flyers, health talks, word of mouth). Getting the right mix helps the business reach and satisfy its target clients.

❌ Why the other options are wrong:
• Purpose, Process, Product, Profit — "Purpose, Process, Product, Profit" is not the marketing mix.
• Plan, People, Profit, Policy — "Plan, People, Profit, Policy" is not the marketing mix.
• Patients, Providers, Payment, Premises — "Patients, Providers, Payment, Premises" is not the marketing mix.

⭐ Key point: For service businesses like nursing, the "7 Ps" add PEOPLE (staff skills and attitude), PROCESS (how the service is delivered) and PHYSICAL EVIDENCE (cleanliness, uniforms, documents).$x$, null),
(100, $x$Choosing a specific group of clients for a service (for example, families of patients discharged on home oxygen) is called:$x$, $x$Market segmentation and targeting$x$, $x$✅ Correct answer: Market segmentation and targeting
MARKET SEGMENTATION is dividing the whole market into smaller GROUPS (segments) of people with similar NEEDS or characteristics — for example, by age, health condition, location or income. TARGETING is then choosing which segment(s) to focus on and serve. Choosing FAMILIES of patients DISCHARGED ON HOME OXYGEN as clients is segmentation and targeting: the nurse can design services (oxygen management, education, equipment checks) and marketing specifically for their needs, which is more effective than trying to serve "everyone".

❌ Why the other options are wrong:
• Diversification — DIVERSIFICATION is expanding into new products, services or markets to spread risk.
• Liquidation — LIQUIDATION is closing a business and selling its assets to pay debts.
• Auditing — AUDITING is examining financial or clinical records to check accuracy and compliance.

⭐ Key point: After targeting comes POSITIONING — how you want the target clients to see your service compared with competitors (e.g. "reliable, expert respiratory home care").$x$, null)
),
upd as (
  update public.questions qq
     set exp = r.exp,
         ans_idx = coalesce((select (t.i - 1)::int from jsonb_array_elements_text(qq.opts) with ordinality t(v, i) where t.v = r.fixed_answer), qq.ans_idx)
    from r
   where qq.q = r.q
     and qq.opts ->> qq.ans_idx = r.answer
  returning r.n
)
select count(distinct n) as "questions updated (should be 100)", count(*) as "rows changed" from upd;
