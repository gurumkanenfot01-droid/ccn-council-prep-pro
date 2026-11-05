-- Nursing Exam Room: full rationales for CCN Mock Exam — Day 7 (200 questions)
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

⭐ Key point: After targeting comes POSITIONING — how you want the target clients to see your service compared with competitors (e.g. "reliable, expert respiratory home care").$x$, null),
(101, $x$Which source of start-up finance does NOT have to be repaid with interest?$x$, $x$The owner's personal savings (owner's equity)$x$, $x$✅ Correct answer: The owner's personal savings (owner's equity)
The OWNER'S PERSONAL SAVINGS put into the business are called OWNER'S EQUITY. This money belongs to the owner, so it does NOT have to be REPAID, and NO INTEREST is charged. It also shows lenders and partners that the owner is committed. The disadvantage is that the owner risks losing their own savings if the business fails, and savings may be limited.

❌ Why the other options are wrong:
• A bank overdraft — A bank OVERDRAFT is borrowed money that must be repaid, usually with high interest.
• A microfinance loan — A MICROFINANCE LOAN must be repaid with interest, often within a short period.
• A bank loan — A BANK LOAN must be repaid with interest and may require collateral.

⭐ Key point: Other non-repayable sources include grants (e.g. government or NGO entrepreneurship grants) and gifts from family. Investors provide equity but take a share of ownership and profits.$x$, null),
(102, $x$Keeping accurate records of all income and expenses in a small nursing business is important mainly to:$x$, $x$Know the financial position, guide decisions and meet tax and legal obligations$x$, $x$✅ Correct answer: Know the financial position, guide decisions and meet tax and legal obligations
ACCURATE RECORDS of all INCOME and EXPENSES (cash book, receipts, invoices, bank statements) allow the nurse entrepreneur to: know the FINANCIAL POSITION (Is the business making a profit or loss? How much cash is available?); GUIDE DECISIONS (pricing, controlling costs, planning expansion or buying equipment); MEET TAX and LEGAL OBLIGATIONS (filing tax returns, audits, regulatory requirements); and support applications for loans or grants. Without good records, a business can fail without the owner realising there is a problem.

❌ Why the other options are wrong:
• Avoid paying staff — Records are not kept to avoid paying staff; staff must be paid fairly and on time.
• Impress clients — Impressing clients is not the main purpose of financial records.
• Replace the business plan — Records support the business plan by showing actual performance; they do not replace it.

⭐ Key point: Keep business money separate from personal money (separate bank account), record every transaction promptly, and review accounts monthly.$x$, null),
(103, $x$An entrepreneur's ability to recognise an unmet need in the community that could become a business is called:$x$, $x$Opportunity recognition$x$, $x$✅ Correct answer: Opportunity recognition
OPPORTUNITY RECOGNITION is the entrepreneur's ability to NOTICE an UNMET NEED or problem in the community and see that it could become a viable business. Nurses are well placed to recognise opportunities because they see gaps in care every day — e.g. no home-care services for elderly people after discharge, lack of wound-care clinics, poor access to health education, or the need for trained caregivers. Recognising the opportunity is the first step in the entrepreneurial process.

❌ Why the other options are wrong:
• Bureaucracy — BUREAUCRACY refers to rigid rules and procedures in organisations.
• Stagnation — STAGNATION means lack of growth or development.
• Risk aversion — RISK AVERSION means avoiding risk, which tends to prevent entrepreneurship.

⭐ Key point: Opportunity recognition is followed by evaluating the opportunity (feasibility), then organising resources to exploit it.$x$, null),
(104, $x$Social entrepreneurship differs from purely commercial entrepreneurship mainly because its main goal is to:$x$, $x$Solve a social or health problem, with any profit reinvested in the mission$x$, $x$✅ Correct answer: Solve a social or health problem, with any profit reinvested in the mission
SOCIAL ENTREPRENEURSHIP uses business methods to SOLVE a SOCIAL or HEALTH PROBLEM (e.g. maternal deaths in rural areas, lack of affordable care for people with disabilities, poor sanitation). Its main goal is SOCIAL IMPACT rather than personal wealth. Any PROFIT is mainly REINVESTED in the MISSION (to expand or improve services). Commercial entrepreneurship, in contrast, mainly aims to make profit for the owners.

❌ Why the other options are wrong:
• Maximise profit for the owner only — Maximising profit for the owner only is the goal of purely commercial entrepreneurship.
• Avoid paying taxes — Avoiding taxes is not the purpose; social enterprises must still follow tax laws (though some may qualify for exemptions as registered non-profits).
• Compete only with government hospitals — Competing only with government hospitals is not the definition.

⭐ Key point: Examples of nurse social entrepreneurship: community health insurance schemes, mobile clinics, affordable home-care for the elderly, health education programmes.$x$, null),
(105, $x$When a nurse entrepreneur advertises her services, which practice is MOST consistent with professional ethics?$x$, $x$Truthful advertising with no false claims of cure or guaranteed results$x$, $x$✅ Correct answer: Truthful advertising with no false claims of cure or guaranteed results
Nurse entrepreneurs must follow the NMCN CODE OF PROFESSIONAL CONDUCT when advertising. Advertising must be TRUTHFUL and accurate, with NO FALSE CLAIMS of cure or GUARANTEED RESULTS, and must not mislead the public or exploit vulnerable people. Advertising should describe the services offered, qualifications, location and contact details honestly. This protects the public and the reputation of the nursing profession.

❌ Why the other options are wrong:
• Using clients' photographs without consent — Using clients' photographs without consent breaches confidentiality and privacy.
• Criticising named colleagues to win their clients — Criticising named colleagues to win clients is unprofessional and may be defamatory.
• Promising guaranteed cures to attract clients — Promising guaranteed cures is dishonest and unethical; no health professional can guarantee outcomes.

⭐ Key point: Ethical marketing builds long-term trust; satisfied clients and professional referrals are often the best advertisement.$x$, null),
(106, $x$The following are qualities of a good leader EXCEPT:$x$, $x$Pride$x$, $x$✅ Correct answer: Pride
Good leaders have qualities that inspire trust and help teams achieve goals: VISION (a clear picture of the future and direction), INTEGRITY (honesty, consistency and strong ethics), KNOWLEDGE and competence, good communication, empathy, decisiveness, fairness, humility and the ability to motivate others. PRIDE (arrogance, excessive self-importance) is NOT a quality of a good leader — a proud leader may refuse feedback, take credit for others' work, refuse to admit mistakes and damage teamwork and morale.

❌ Why the other options are wrong:
• Vision — Vision is a key leadership quality.
• Integrity — Integrity is a key leadership quality.
• Knowledge — Knowledge is a key leadership quality.

⭐ Key point: Effective ICU leaders combine clinical expertise with emotional intelligence, listen to staff, and model the behaviour they expect.$x$, null),
(107, $x$"The organisation is a complex whole with parts working together like the human body." Which theory fits this statement?$x$, $x$Systems theory$x$, $x$✅ Correct answer: Systems theory
SYSTEMS THEORY (from Ludwig von Bertalanffy) views an ORGANISATION as a COMPLEX WHOLE made up of interrelated PARTS (subsystems — e.g. departments, units, staff) that WORK TOGETHER to achieve common goals, LIKE THE HUMAN BODY, where organs work together. A change in one part affects the whole system. Organisations take in INPUTS (staff, money, patients, equipment), process them (THROUGHPUT — care delivery), produce OUTPUTS (recovered patients, services) and use FEEDBACK to adjust.

❌ Why the other options are wrong:
• Human relations theory — Human relations theory (Elton Mayo, Hawthorne studies) focuses on social relationships, morale and the human side of work.
• Classical theory — Classical theory (Taylor, Fayol, Weber) focuses on structure, efficiency, rules and hierarchy.
• Humanist theory — Humanist theory (e.g. Maslow, McGregor) focuses on human needs, motivation and potential.

⭐ Key point: Systems thinking in ICU: a staffing problem (input) affects care quality (throughput) and patient outcomes (output).$x$, null),
(108, $x$The theory that individuals compare their job inputs and outcomes with others' to remove inequities is:$x$, $x$Equity theory$x$, $x$✅ Correct answer: Equity theory
EQUITY THEORY (J. Stacy Adams, 1963) states that employees COMPARE the ratio of their own job INPUTS (effort, skills, experience, time) to OUTCOMES (salary, recognition, promotion) with the ratio of OTHER people in similar roles. If they perceive INEQUITY (unfairness) — e.g. a colleague doing less work gets the same pay — they feel demotivated and try to REMOVE the inequity: by working less, asking for a raise, changing their comparison, or leaving.

❌ Why the other options are wrong:
• Reinforcement theory — Reinforcement theory (Skinner) states behaviour is shaped by rewards and punishments.
• Efficacy theory — Efficacy (self-efficacy) theory (Bandura) is about a person's belief in their ability to succeed.
• Maslow's hierarchy — Maslow's hierarchy describes levels of human needs, not comparison with others.

⭐ Key point: Managers should ensure fair, transparent allocation of workload, pay, recognition and opportunities to maintain motivation.$x$, null),
(109, $x$A leadership style that allows the opinion of the majority of group members is:$x$, $x$Democratic$x$, $x$✅ Correct answer: Democratic
DEMOCRATIC (PARTICIPATIVE) LEADERSHIP involves team members in DECISION-MAKING. The leader shares information, invites ideas and discussion, and decisions often reflect the MAJORITY OPINION of the group, although the leader remains responsible. It improves staff motivation, creativity, commitment and job satisfaction. It works well for planning, policy development and routine unit management, but can be slow in emergencies.

❌ Why the other options are wrong:
• Bureaucratic — BUREAUCRATIC leadership relies strictly on rules, procedures and hierarchy.
• Autocratic — AUTOCRATIC leadership makes decisions alone without consulting the team; useful in emergencies (e.g. cardiac arrest).
• Laissez-faire — LAISSEZ-FAIRE leadership gives little or no direction, leaving the team to make decisions on their own.

⭐ Key point: Good leaders adapt their style to the situation (situational leadership): autocratic in emergencies, democratic for routine decisions.$x$, null),
(110, $x$The unwritten personal expectations an employee brings to an organisation are called the:$x$, $x$Psychological contract$x$, $x$✅ Correct answer: Psychological contract
The PSYCHOLOGICAL CONTRACT is the set of UNWRITTEN, informal beliefs and EXPECTATIONS between an employee and the organisation about what each will give and receive. Examples: the employee expects fair treatment, respect, support, training, career development and job security; the organisation expects loyalty, effort and commitment. When these unwritten expectations are not met ("breach of the psychological contract"), staff may lose trust, become demotivated, or leave.

❌ Why the other options are wrong:
• Official contract — The official (employment) contract is a WRITTEN legal document with terms such as salary and hours.
• Job description — The job description is a WRITTEN document listing duties and responsibilities.
• Personal ambition — Personal ambition refers to an individual's career goals, not mutual expectations.

⭐ Key point: Managers can protect the psychological contract by being fair, keeping promises, communicating openly and supporting staff development.$x$, null),
(111, $x$The purchase of a new ventilator should be included in the:$x$, $x$Capital budget$x$, $x$✅ Correct answer: Capital budget
A CAPITAL BUDGET plans for the purchase of MAJOR, EXPENSIVE, LONG-LASTING items (usually lasting more than one year and costing above a set amount) — such as a NEW VENTILATOR, monitors, dialysis machines, beds, vehicles, or building renovation. Because these purchases are large, they are planned separately, often years ahead, with justification of need and cost.

❌ Why the other options are wrong:
• Operating budget — The OPERATING budget covers day-to-day running expenses (consumables, drugs, utilities, maintenance).
• Salary budget — The SALARY (personnel) budget covers staff wages, allowances and overtime — usually the largest part of the operating budget.
• Revenue budget — The REVENUE budget estimates expected income (e.g. fees, government funding).

⭐ Key point: The ICU manager justifies capital requests with data (e.g. occupancy, equipment age, breakdown rates, patient needs).$x$, null),
(112, $x$FIFO is mainly used to:$x$, $x$Prevent expiry of supplies$x$, $x$✅ Correct answer: Prevent expiry of supplies
FIFO (FIRST IN, FIRST OUT) is a stock rotation method in which the OLDEST STOCK (the items received first) is USED FIRST. New stock is placed behind or below older stock. This PREVENTS items from passing their EXPIRY DATE on the shelf, reducing WASTE and cost, and ensuring patients receive safe, in-date drugs and supplies. It is especially important for drugs, IV fluids, sterile supplies and blood products.

❌ Why the other options are wrong:
• Increase waste — FIFO reduces, not increases, waste.
• Delay procurement — FIFO does not delay procurement; good stock control helps order the right amounts at the right time.
• Increase stock — FIFO is about rotation, not increasing stock levels.

⭐ Key point: Check expiry dates regularly, remove expired items, and use a stock register or inventory system.$x$, null),
(113, $x$A medication error is detected and corrected before it reaches the patient. This event is classified as a:$x$, $x$Near miss$x$, $x$✅ Correct answer: Near miss
A NEAR MISS is an error or unsafe event that is DETECTED and CORRECTED BEFORE it REACHES the PATIENT, so no harm occurs. Example: a nurse notices a wrong drug dose during a double-check and corrects it before administration. Near misses must be REPORTED because they show weaknesses in the system that could cause harm next time.

❌ Why the other options are wrong:
• Never event — A NEVER EVENT is a serious, largely preventable incident that should never happen if proper safety measures are followed (e.g. wrong-site surgery, retained swab).
• Adverse event — An ADVERSE EVENT is an incident that DOES reach the patient and causes harm.
• Sentinel event — A SENTINEL EVENT is an unexpected event causing death or serious physical or psychological injury.

⭐ Key point: A culture that encourages reporting near misses helps prevent serious incidents.$x$, null),
(114, $x$Which quality tool is commonly used to identify the underlying causes of a problem?$x$, $x$Fishbone (Ishikawa) diagram$x$, $x$✅ Correct answer: Fishbone (Ishikawa) diagram
A FISHBONE (ISHIKAWA or cause-and-effect) DIAGRAM is a quality tool used to identify and organise the POSSIBLE UNDERLYING CAUSES of a problem. The problem (effect) is written at the "head" of the fish, and the main categories of causes form the "bones" — commonly People, Methods/Procedures, Equipment, Materials, Environment and Management. The team brainstorms causes in each category. It is often used in root cause analysis (e.g. of medication errors or rising infection rates).

❌ Why the other options are wrong:
• Duty roster — A duty roster schedules staff shifts.
• Organizational chart — An organisational chart shows reporting relationships and structure.
• Leave register — A leave register records staff leave.

⭐ Key point: Other quality tools: Pareto chart (most frequent causes), flowchart (process steps), run chart (trends over time), PDSA cycle (testing changes).$x$, null),
(115, $x$A nurse manager observes that staff members are reluctant to report medication errors due to fear of punishment. Which culture should be promoted?$x$, $x$Just culture$x$, $x$✅ Correct answer: Just culture
A JUST CULTURE encourages staff to REPORT errors and near misses WITHOUT FEAR of unfair PUNISHMENT, so the organisation can LEARN and fix SYSTEM problems. It distinguishes between: HUMAN ERROR (an honest mistake — console the person and fix the system), AT-RISK BEHAVIOUR (taking shortcuts — coach the person), and RECKLESS BEHAVIOUR (conscious disregard of serious risk — disciplinary action). This balances learning with accountability.

❌ Why the other options are wrong:
• Competitive culture — A competitive culture may discourage openness about mistakes.
• Blame culture — A blame culture punishes individuals, so staff hide errors.
• Punitive culture — A punitive culture punishes errors, discouraging reporting.

⭐ Key point: Most errors are caused by system weaknesses (e.g. poor labelling, high workload); a just culture helps identify and correct them.$x$, null),
(116, $x$Frederick Winslow Taylor's mechanism of scientific management includes:$x$, $x$All of the above$x$, $x$✅ Correct answer: All of the above
Frederick Winslow TAYLOR, the "father of SCIENTIFIC MANAGEMENT", used scientific methods to find the most efficient way to do each job. His mechanisms included: SCIENTIFIC TASK SETTING (determining a fair day's work through time and motion studies), PLANNING THE TASK (separating planning from doing — managers plan, workers execute), STANDARDISATION OF TOOLS AND EQUIPMENT (and working conditions and methods), scientific selection and training of workers, differential piece-rate pay, and functional foremanship. So "ALL OF THE ABOVE" is correct.

❌ Why the other options are wrong:
• Scientific task setting — Scientific task setting is only one of Taylor's mechanisms.
• Planning the task — Planning the task is only one of Taylor's mechanisms.
• Standardisation of tools and equipment — Standardisation is only one of Taylor's mechanisms.

⭐ Key point: In nursing, standard procedures, protocols and time studies for workload reflect Taylor's ideas, but too much focus on tasks can ignore human needs.$x$, null),
(117, $x$Henri Fayol was a:$x$, $x$Mining engineer$x$, $x$✅ Correct answer: Mining engineer
Henri FAYOL (1841–1925) was a French MINING ENGINEER and later managing director of a large mining company. From his experience, he developed the classical "ADMINISTRATIVE MANAGEMENT" theory, describing the FIVE FUNCTIONS of management (planning, organising, commanding, coordinating and controlling — often summarised today as POSDCORB or planning, organising, leading, controlling) and the 14 PRINCIPLES OF MANAGEMENT (e.g. division of work, authority, discipline, unity of command, unity of direction, scalar chain, order, equity, esprit de corps).

❌ Why the other options are wrong:
• Social scientist — He was not a social scientist (e.g. Elton Mayo studied human relations).
• Accountant — He was not an accountant.
• Production engineer — He was not a production engineer (Taylor was associated with production engineering).

⭐ Key point: Fayol is called the "father of modern management".$x$, null),
(118, $x$What is the full form of MBO?$x$, $x$Management By Objectives$x$, $x$✅ Correct answer: Management By Objectives
MBO stands for MANAGEMENT BY OBJECTIVES, introduced by Peter DRUCKER (1954). In MBO, managers and staff TOGETHER agree on clear, measurable OBJECTIVES (goals) for a period, plan how to achieve them, MONITOR progress, and EVALUATE performance against the agreed objectives. It improves motivation, clarity of roles, and links individual goals to organisational goals.

❌ Why the other options are wrong:
• Method By Objective — "Method By Objective" is not the correct expansion.
• Method By opportunity — "Method By Opportunity" is not the correct expansion.
• Management By Opportunity — "Management By Opportunity" is not the correct expansion.

⭐ Key point: MBO objectives should be SMART: Specific, Measurable, Achievable, Relevant and Time-bound. Example: "Reduce CLABSI rate by 50% within 6 months."$x$, null),
(119, $x$____ involves harmony and team spirit among employees.$x$, $x$Esprit de corps$x$, $x$✅ Correct answer: Esprit de corps
ESPRIT DE CORPS (French for "spirit of the group") is one of FAYOL'S 14 principles. It means promoting HARMONY, UNITY and TEAM SPIRIT among employees. Managers should encourage teamwork, cooperation and good communication, and avoid dividing staff. Strong team spirit increases morale, job satisfaction and performance — vital in the ICU, where care depends on teamwork.

❌ Why the other options are wrong:
• Standardisation — STANDARDISATION refers to uniform methods and procedures (associated with Taylor).
• Order — ORDER (Fayol's principle) means "a place for everything and everything in its place" — for materials and people.
• Discipline — DISCIPLINE means respect for rules and agreements.

⭐ Key point: Other Fayol principles: division of work, authority and responsibility, unity of command, unity of direction, remuneration, centralisation, scalar chain, equity, stability of tenure, initiative.$x$, null),
(120, $x$According to Kurt Lewin, which of the following is not a stage in the change process?$x$, $x$Restraining$x$, $x$✅ Correct answer: Restraining
Kurt LEWIN'S change model has THREE STAGES: (1) UNFREEZING — preparing people for change by explaining why the current practice must change and reducing resistance; (2) CHANGING (MOVING) — introducing the new practice, with training and support; (3) REFREEZING — stabilising the change so it becomes the new normal (through policies, reinforcement, monitoring). "RESTRAINING" is NOT a stage. Restraining forces (forces resisting change, e.g. fear, habit, lack of resources) are part of Lewin's FORCE-FIELD ANALYSIS, along with driving forces (forces pushing for change).

❌ Why the other options are wrong:
• Unfreezing — Unfreezing is a stage.
• Changing — Changing is a stage.
• Refreezing — Refreezing is a stage.

⭐ Key point: To make change succeed, strengthen driving forces and reduce restraining forces.$x$, null),
(121, $x$General Systems Theory, foundational to many nursing conceptual models, is most closely associated with which theorist?$x$, $x$Ludwig von Bertalanffy$x$, $x$✅ Correct answer: Ludwig von Bertalanffy
GENERAL SYSTEMS THEORY was developed by LUDWIG VON BERTALANFFY, an Austrian biologist, in the 1930s–1950s. It proposes that all living and social systems (cells, people, families, organisations) are made of interacting parts, and that the whole is more than the sum of its parts. Systems have boundaries, take inputs from the environment, process them and produce outputs, using feedback to maintain balance. It became the foundation for several nursing models, including those of Betty Neuman (Systems Model), Sister Callista Roy (Adaptation Model) and Imogene King.

❌ Why the other options are wrong:
• Virginia Henderson — Virginia Henderson defined nursing and identified 14 basic needs.
• Abraham Maslow — Abraham Maslow developed the hierarchy of human needs.
• Florence Nightingale — Florence Nightingale developed the environmental theory of nursing.

⭐ Key point: Systems thinking helps nurses view the patient holistically — physical, psychological, social and spiritual aspects interact.$x$, null),
(122, $x$In systems theory, 'entropy' refers to:$x$, $x$The tendency of a system toward disorder, disorganization, and eventual energy depletion$x$, $x$✅ Correct answer: The tendency of a system toward disorder, disorganization, and eventual energy depletion
In systems theory, ENTROPY is the natural tendency of a system to move toward DISORDER, DISORGANISATION and eventual ENERGY DEPLETION (breakdown or death) if it does not receive energy from its environment. OPEN systems (like humans and organisations) take in energy and information (inputs) to resist entropy and maintain order. The opposite, NEGENTROPY, is the tendency toward increasing order and organisation.

❌ Why the other options are wrong:
• The boundary that separates a system from its environment — The BOUNDARY is the line that separates a system from its environment.
• The tendency of a system to gain increasing order and energy over time — A tendency to gain order and energy is NEGENTROPY.
• The exchange of information between two systems — The exchange of information between systems is communication or feedback.

⭐ Key point: In nursing, illness can be seen as increasing entropy; nursing care provides "inputs" (oxygen, nutrition, support) to restore order.$x$, null),
(123, $x$A nurse opens the windows of a patient's room to allow fresh air circulation and moves the patient's bed closer to a window for natural sunlight. This action best reflects which nursing theorist's framework?$x$, $x$Florence Nightingale$x$, $x$✅ Correct answer: Florence Nightingale
FLORENCE NIGHTINGALE'S ENVIRONMENTAL THEORY states that the nurse's role is to manipulate the ENVIRONMENT to put the patient in the best condition for nature to heal. She emphasised FRESH AIR (ventilation), LIGHT (especially sunlight), warmth, cleanliness, pure water, efficient drainage, quiet, good nutrition and observation. Opening windows for fresh air and moving the bed nearer to a window for natural sunlight are classic applications of her theory.

❌ Why the other options are wrong:
• Dorothea Orem — Dorothea Orem's theory focuses on self-care deficits.
• Sister Callista Roy — Sister Callista Roy's theory focuses on adaptation to stimuli.
• Marjory Gordon — Marjory Gordon developed the 11 functional health patterns for assessment.

⭐ Key point: Nightingale's principles remain relevant: hand hygiene, ventilation and cleanliness reduce infections, and natural light and quiet reduce ICU delirium.$x$, null),
(124, $x$Virginia Henderson defined the unique function of the nurse as assisting the individual, sick or well, in the performance of activities contributing to health, recovery, or:$x$, $x$A peaceful death$x$, $x$✅ Correct answer: A peaceful death
Virginia HENDERSON (1966) defined the unique function of the nurse as: "to assist the individual, sick or well, in the performance of those activities contributing to health or its recovery (OR TO A PEACEFUL DEATH) that he would perform unaided if he had the necessary strength, will or knowledge, and to do this in such a way as to help him gain independence as rapidly as possible." This recognises that supporting a dignified, peaceful death is part of nursing.

❌ Why the other options are wrong:
• Financial independence — Financial independence is not part of Henderson's definition.
• Employment reintegration — Employment reintegration is not part of Henderson's definition.
• Permanent institutionalization — Permanent institutionalisation is the opposite of the independence Henderson emphasised.

⭐ Key point: Henderson's definition was adopted by the International Council of Nurses (ICN) and is still widely quoted.$x$, null),
(125, $x$According to Henderson, the overarching goal of nursing assistance is to help the client achieve:$x$, $x$Independence as rapidly as possible$x$, $x$✅ Correct answer: Independence as rapidly as possible
According to HENDERSON, the overarching goal of nursing assistance is to help the client gain INDEPENDENCE AS RAPIDLY AS POSSIBLE. The nurse temporarily does for the client what they would do for themselves if they had the necessary strength, will or knowledge, and gradually helps them do it themselves. Henderson identified 14 BASIC NEEDS (e.g. breathing normally, eating and drinking, elimination, moving, sleep and rest, dressing, maintaining body temperature, hygiene, avoiding dangers, communication, worship, work, play, and learning).

❌ Why the other options are wrong:
• Total reliance on family caregivers — Total reliance on family is not the goal.
• A prolonged hospital stay to ensure thorough recovery — A prolonged hospital stay is not the goal.
• Complete and permanent dependence on the healthcare team — Complete and permanent dependence on staff is the opposite of Henderson's goal.

⭐ Key point: In ICU, Henderson's ideas guide early mobilisation, weaning, self-care, and patient education.$x$, null),
(126, $x$According to Orem, a 'self-care deficit' exists when:$x$, $x$The client's self-care agency (ability) is insufficient to meet the therapeutic self-care demand$x$, $x$✅ Correct answer: The client's self-care agency (ability) is insufficient to meet the therapeutic self-care demand
In OREM'S SELF-CARE DEFICIT THEORY, a SELF-CARE DEFICIT exists when the client's SELF-CARE AGENCY (their ABILITY to perform self-care) is INSUFFICIENT to meet their THERAPEUTIC SELF-CARE DEMAND (all the self-care actions needed to maintain health and well-being). When this happens, nursing is needed to make up the gap. Example: a patient after stroke cannot wash, dress or feed themselves.

❌ Why the other options are wrong:
• The nurse is unavailable to provide any physical care — Nurse unavailability is not part of the definition.
• The client has more self-care ability than is needed — If the client has MORE ability than needed, there is no deficit.
• The client's family refuses to participate in care — Family refusal to participate is not the definition of a self-care deficit.

⭐ Key point: Orem's model has three linked theories: self-care, self-care deficit, and nursing systems.$x$, null),
(127, $x$Orem categorized self-care requisites into three types. Which of the following correctly lists them?$x$, $x$Universal, developmental, and health-deviation self-care requisites$x$, $x$✅ Correct answer: Universal, developmental, and health-deviation self-care requisites
OREM identified three types of SELF-CARE REQUISITES (needs): (1) UNIVERSAL requisites — common to all people (air, water, food, elimination, activity and rest, solitude and social interaction, prevention of hazards, normality); (2) DEVELOPMENTAL requisites — related to life stages and events (e.g. pregnancy, childhood, ageing, bereavement); (3) HEALTH-DEVIATION requisites — needs arising from illness, injury, disability or medical treatment (e.g. managing a colostomy, taking medications).

❌ Why the other options are wrong:
• Physiological, psychological, and spiritual self-care requisites — Physiological, psychological and spiritual is not Orem's classification.
• Primary, secondary, and tertiary self-care requisites — Primary, secondary and tertiary relates to levels of prevention.
• Focal, contextual, and residual self-care requisites — Focal, contextual and residual are ROY'S types of stimuli.

⭐ Key point: Orem's model is widely used in rehabilitation, chronic disease management and patient education.$x$, null),
(128, $x$Orem described three nursing systems used to address self-care deficits. In which system does the nurse perform all of the client's therapeutic self-care because the client is totally unable to do so?$x$, $x$Wholly compensatory nursing system$x$, $x$✅ Correct answer: Wholly compensatory nursing system
OREM described three NURSING SYSTEMS based on how much the client can do: (1) WHOLLY COMPENSATORY — the nurse performs ALL of the client's self-care because the client is TOTALLY UNABLE (e.g. an unconscious, sedated, ventilated ICU patient); (2) PARTLY COMPENSATORY — the nurse and client share self-care tasks (e.g. a post-operative patient who can feed themselves but needs help with walking and wound care); (3) SUPPORTIVE-EDUCATIVE — the client can perform self-care but needs teaching, guidance and support.

❌ Why the other options are wrong:
• Partly compensatory nursing system — Partly compensatory involves shared care, not total care.
• Supportive-educative nursing system — Supportive-educative involves teaching only.
• Independent nursing system — "Independent nursing system" is not one of Orem's systems.

⭐ Key point: As the ICU patient recovers, care moves from wholly compensatory to partly compensatory, then supportive-educative.$x$, null),
(129, $x$A client who is fully capable of performing self-care but needs teaching and guidance to safely administer insulin at home would be best supported using which of Orem's nursing systems?$x$, $x$Supportive-educative (supportive-developmental) nursing system$x$, $x$✅ Correct answer: Supportive-educative (supportive-developmental) nursing system
The SUPPORTIVE-EDUCATIVE (supportive-developmental) nursing system is used when the client IS ABLE to perform self-care but needs TEACHING, GUIDANCE, SUPPORT or a supportive environment to do so safely. A client who is physically capable but needs to learn how to administer INSULIN at home fits this system — the nurse teaches, demonstrates, observes a return demonstration and provides support.

❌ Why the other options are wrong:
• Wholly compensatory nursing system — Wholly compensatory is for clients who cannot do any self-care.
• Partly compensatory nursing system — Partly compensatory is for clients who can do some but not all self-care.
• Restorative nursing system — "Restorative nursing system" is not one of Orem's three systems.

⭐ Key point: Patient teaching is a core nursing role in discharge planning, especially for chronic conditions.$x$, null),
(130, $x$Rogers' principle of 'helicy' refers to:$x$, $x$The continuous, innovative, unpredictable, increasingly diverse nature of the mutual human-environment field process, evolving in a probabilistic, non-repeating manner$x$, $x$✅ Correct answer: The continuous, innovative, unpredictable, increasingly diverse nature of the mutual human-environment field process, evolving in a probabilistic, non-repeating manner
Martha ROGERS' "Science of Unitary Human Beings" sees humans and their environment as continuous, inseparable ENERGY FIELDS. Her principle of HELICY describes the nature of change in the human-environment field as CONTINUOUS, INNOVATIVE, UNPREDICTABLE and INCREASINGLY DIVERSE — evolving in a non-repeating, spiral (helical) way rather than returning to the same state. Life is always moving forward and changing.

❌ Why the other options are wrong:
• The exact repetition of identical life patterns over time — Exact repetition of identical patterns contradicts helicy (change is non-repeating).
• The idea that only physical, three-dimensional space governs human experience — Rogers emphasised energy fields and pattern, not only physical, three-dimensional space.
• The classification of illness into discrete, static stages — Rogers did not classify illness into discrete, static stages.

⭐ Key point: Rogers' three principles of homeodynamics: HELICY (continuous, innovative change), RESONANCY (change from lower to higher frequency patterns), and INTEGRALITY (continuous mutual process between human and environment).$x$, null),
(131, $x$In Neuman's model, the 'basic core structure' refers to:$x$, $x$The central, innermost structure containing basic survival factors common to the species, such as genetic features and organ strength$x$, $x$✅ Correct answer: The central, innermost structure containing basic survival factors common to the species, such as genetic features and organ strength
In Betty NEUMAN'S Systems Model, the client is drawn as a set of concentric circles. At the centre is the BASIC CORE STRUCTURE — the innermost part containing the BASIC SURVIVAL FACTORS common to the species, such as genetic structure, organ strength or weakness, normal temperature range, response patterns and ego structure. If stressors penetrate to the core, the client's survival is threatened. Surrounding the core are the LINES OF RESISTANCE, the NORMAL LINE OF DEFENCE and, on the outside, the FLEXIBLE LINE OF DEFENCE.

❌ Why the other options are wrong:
• The outermost, accordion-like protective buffer against stressors — The outermost, accordion-like buffer is the FLEXIBLE LINE OF DEFENCE.
• The client's coping mechanisms only — Coping mechanisms relate to the lines of resistance and defence.
• A ranked list of psychosocial needs — A ranked list of needs relates to Maslow, not Neuman's core.

⭐ Key point: Neuman's goal of nursing is to keep the client system stable by reducing stressors and strengthening the lines of defence.$x$, null),
(132, $x$Neuman classifies stressors into three types based on their relationship to the client system. Which of the following correctly identifies them?$x$, $x$Intrapersonal, interpersonal, and extrapersonal stressors$x$, $x$✅ Correct answer: Intrapersonal, interpersonal, and extrapersonal stressors
NEUMAN classifies STRESSORS by their relationship to the client system: (1) INTRAPERSONAL — arising WITHIN the person (e.g. pain, anxiety, fever, infection); (2) INTERPERSONAL — arising BETWEEN people (e.g. family conflict, communication problems with staff, role expectations); (3) EXTRAPERSONAL — arising OUTSIDE the person, at a distance (e.g. financial problems, hospital policies, unemployment, community issues).

❌ Why the other options are wrong:
• Focal, contextual, and residual stressors — Focal, contextual and residual are ROY'S types of stimuli.
• Universal, developmental, and health-deviation stressors — Universal, developmental and health-deviation are OREM'S self-care requisites.
• Primary, secondary, and tertiary stressors — Primary, secondary and tertiary are levels of PREVENTION, not stressor types.

⭐ Key point: Assessing all three types of stressors gives a holistic picture of the ICU patient and family.$x$, null),
(133, $x$Neuman describes three levels of prevention as intervention. Which level is aimed at strengthening the flexible line of defense BEFORE a stressor invades the client system?$x$, $x$Primary prevention$x$, $x$✅ Correct answer: Primary prevention
NEUMAN uses three levels of PREVENTION AS INTERVENTION: PRIMARY PREVENTION — done BEFORE a stressor invades; it identifies risk factors and STRENGTHENS the FLEXIBLE LINE OF DEFENCE (e.g. immunisation, health education, VTE prophylaxis, pre-operative teaching); SECONDARY PREVENTION — done AFTER a stressor has penetrated and symptoms appear; it treats symptoms and strengthens the lines of resistance (e.g. early treatment of infection); TERTIARY PREVENTION — done during recovery to maintain stability and prevent recurrence (e.g. rehabilitation).

❌ Why the other options are wrong:
• Quaternary prevention — Quaternary prevention is not one of Neuman's levels.
• Secondary prevention — Secondary prevention occurs after the stressor has invaded.
• Tertiary prevention — Tertiary prevention supports readaptation after treatment.

⭐ Key point: Primary prevention in ICU includes VAP and pressure ulcer prevention bundles.$x$, null),
(134, $x$In Roy's model, the stimulus that is immediately confronting the person and requires the most immediate attention is called the:$x$, $x$Focal stimulus$x$, $x$✅ Correct answer: Focal stimulus
In Sister Callista ROY'S Adaptation Model, people respond to three types of STIMULI: the FOCAL STIMULUS — the stimulus IMMEDIATELY CONFRONTING the person, demanding the most attention (e.g. acute pain after surgery, difficulty breathing); CONTEXTUAL STIMULI — other factors present that influence the situation (e.g. fear, noisy environment, lack of sleep); RESIDUAL STIMULI — factors whose effects are unclear (e.g. past experiences, beliefs, cultural attitudes).

❌ Why the other options are wrong:
• Compensatory stimulus — "Compensatory stimulus" is not a term in Roy's model.
• Residual stimulus — Residual stimuli have uncertain or unclear effects.
• Contextual stimulus — Contextual stimuli are other factors in the situation that contribute.

⭐ Key point: Nursing interventions in Roy's model aim to manage stimuli to promote adaptation.$x$, null),
(135, $x$Roy's model describes two major internal control processes, or coping subsystems, that a person uses to adapt to stimuli. What are they?$x$, $x$The regulator and cognator subsystems$x$, $x$✅ Correct answer: The regulator and cognator subsystems
ROY'S model describes two COPING SUBSYSTEMS (internal control processes): the REGULATOR SUBSYSTEM — physiological coping through the neural, chemical and endocrine systems (e.g. increased heart rate and adrenaline release in response to blood loss); and the COGNATOR SUBSYSTEM — psychological coping through perception and information processing, learning, judgement and emotion (e.g. understanding the illness, problem-solving, seeking support). Their responses are seen in four ADAPTIVE MODES: physiological, self-concept, role function and interdependence.

❌ Why the other options are wrong:
• The wholly compensatory and partly compensatory subsystems — Wholly and partly compensatory are OREM'S nursing systems.
• The self-care agency and therapeutic self-care demand — Self-care agency and therapeutic self-care demand are OREM'S concepts.
• The core structure and flexible line of defense — The core structure and flexible line of defence are NEUMAN'S concepts.

⭐ Key point: The nurse assesses behaviour in the four modes, identifies stimuli, and intervenes to promote adaptive responses.$x$, null),
(136, $x$Gordon's framework organizes assessment data into how many functional health patterns?$x$, $x$11$x$, $x$✅ Correct answer: 11
Marjory GORDON (1987) organised nursing assessment into 11 FUNCTIONAL HEALTH PATTERNS, to give a holistic picture of the client: (1) health perception–health management, (2) nutritional–metabolic, (3) elimination, (4) activity–exercise, (5) sleep–rest, (6) cognitive–perceptual, (7) self-perception–self-concept, (8) role–relationship, (9) sexuality–reproductive, (10) coping–stress tolerance, and (11) value–belief. Data in each pattern are used to identify nursing diagnoses.

❌ Why the other options are wrong:
• 5 — 5 is too few; Gordon's framework is wider.
• 9 — 9 is not correct.
• 14 — 14 is the number of basic needs in VIRGINIA HENDERSON'S model, not Gordon's patterns.

⭐ Key point: Gordon's patterns fit well with NANDA nursing diagnoses and are widely used in nursing assessment forms.$x$, null),
(137, $x$Abraham Maslow's hierarchy of needs is typically depicted as a pyramid with which level at the very base, representing the most fundamental needs?$x$, $x$Physiological needs$x$, $x$✅ Correct answer: Physiological needs
MASLOW'S HIERARCHY OF NEEDS is drawn as a PYRAMID. The BASE (most fundamental) level is PHYSIOLOGICAL NEEDS — oxygen, water, food, elimination, sleep, temperature regulation and shelter — which are needed for survival. Above these come safety and security, then love and belonging, then esteem, and at the top, SELF-ACTUALISATION (reaching one's full potential). Lower needs generally must be met before higher ones become the main focus.

❌ Why the other options are wrong:
• Love and belonging needs — Love and belonging is the THIRD level.
• Safety and security needs — Safety and security is the SECOND level.
• Self-actualization needs — Self-actualisation is the TOP level.

⭐ Key point: In nursing, Maslow's hierarchy helps set priorities: life-threatening physiological problems (airway, breathing, circulation) come first.$x$, null),
(138, $x$A nurse is caring for four clients simultaneously. Which client's need should the nurse prioritize FIRST according to Maslow's hierarchy of needs?$x$, $x$A client with an oxygen saturation of 84% on room air$x$, $x$✅ Correct answer: A client with an oxygen saturation of 84% on room air
According to MASLOW, PHYSIOLOGICAL needs come FIRST, and OXYGEN is the most urgent of all physiological needs — without it, brain damage and death occur within minutes. A client with an OXYGEN SATURATION of 84% on room air is HYPOXIC (normal is about 95–100%), so this need must be addressed FIRST (e.g. position upright, give oxygen, assess the airway and breathing, call for help). The other clients' needs are important but not immediately life-threatening.

❌ Why the other options are wrong:
• A client expressing embarrassment about needing help with bathing — Embarrassment about bathing relates to ESTEEM needs (higher level).
• A client requesting a chaplain visit for spiritual support — A chaplain visit relates to spiritual/self-actualisation needs (higher level).
• A client worried about being discharged without family support — Worry about discharge without family support relates to SAFETY and LOVE/BELONGING needs (higher level).

⭐ Key point: Use the ABC (Airway, Breathing, Circulation) approach together with Maslow to prioritise care.$x$, null),
(139, $x$Which nurse theorist first introduced the term "nursing process" into nursing literature?$x$, $x$Lydia Hall$x$, $x$✅ Correct answer: Lydia Hall
LYDIA HALL first used the term "NURSING PROCESS" in 1955, describing nursing as a process (in her "Care, Core and Cure" model). Later, Ida Jean ORLANDO (1961) described the "deliberative nursing process", and the process was developed into the steps used today: Assessment, Diagnosis, Planning, Implementation and Evaluation (ADPIE).

❌ Why the other options are wrong:
• Virginia Henderson — Virginia Henderson defined the unique function of the nurse and the 14 basic needs.
• Dorothea Orem — Dorothea Orem developed the Self-Care Deficit Theory.
• Ida Jean Orlando — Ida Jean Orlando developed the deliberative nursing process (1961), after Hall first used the term.

⭐ Key point: The nursing process is systematic, client-centred, goal-oriented, cyclical and dynamic.$x$, null),
(140, $x$The addition of "Nursing Diagnosis" as a distinct fifth step of the nursing process is most closely associated with which development?$x$, $x$The founding of the National Conference Group (later NANDA) in 1973$x$, $x$✅ Correct answer: The founding of the National Conference Group (later NANDA) in 1973
Originally, the nursing process had FOUR steps (assessment, planning, implementation, evaluation). In 1973, the NATIONAL CONFERENCE GROUP for the Classification of Nursing Diagnoses was formed (it became NANDA — North American Nursing Diagnosis Association — in 1982, now NANDA International). This led to NURSING DIAGNOSIS being recognised as a distinct step, giving the FIVE-STEP process: Assessment, Diagnosis, Planning, Implementation, Evaluation.

❌ Why the other options are wrong:
• Publication of Florence Nightingale's Notes on Nursing — Nightingale's "Notes on Nursing" (1859) predates the nursing process.
• The Nurse Practice Act of 1938 — The Nurse Practice Act of 1938 regulated nursing practice, not the nursing process steps.
• The introduction of SMART goal criteria — SMART goals are a tool for writing objectives, not related to adding the diagnosis step.

⭐ Key point: NANDA-I provides standardised nursing diagnosis labels, definitions, defining characteristics and related factors.$x$, null),
(141, $x$Which characteristic of the nursing process reflects the requirement that care be tailored to each individual rather than applied uniformly?$x$, $x$Client-centeredness$x$, $x$✅ Correct answer: Client-centeredness
CLIENT-CENTREDNESS means the nursing process is TAILORED to EACH INDIVIDUAL client's unique needs, values, preferences, culture and circumstances, rather than applying the same plan to everyone. The client (and family) are involved in planning care and setting goals.

❌ Why the other options are wrong:
• Interpersonal nature — The interpersonal nature refers to the relationship and communication between nurse and client.
• Systematic organization — Systematic organisation means following an orderly sequence of steps.
• Universality — Universality means the process can be used in all settings and with all clients — it does not mean care is uniform.

⭐ Key point: Characteristics of the nursing process: systematic, dynamic, interpersonal, goal-oriented, client-centred, and universally applicable.$x$, null),
(142, $x$A client reports, "I have a throbbing headache that is a 7 out of 10." This is an example of which type of data?$x$, $x$Subjective data$x$, $x$✅ Correct answer: Subjective data
SUBJECTIVE DATA are what the CLIENT SAYS — their own feelings, perceptions and SYMPTOMS, which only the client can describe. "I have a throbbing headache that is a 7 out of 10" is the client's own report of pain, so it is subjective. Pain, nausea, anxiety and dizziness are typical subjective data. Record subjective data in the client's own words, using quotation marks.

❌ Why the other options are wrong:
• Validated data — Validated data have been checked or confirmed for accuracy (any type of data can be validated).
• Objective data — OBJECTIVE data are observed or measured by the nurse (e.g. BP, temperature, wound appearance, lab results).
• Secondary data — Secondary data come from sources other than the client (e.g. family, chart).

⭐ Key point: Subjective = what the client SAYS (symptoms). Objective = what the nurse OBSERVES or MEASURES (signs).$x$, null),
(143, $x$The client is the ____ source of data, while the client's chart, family members, and other health professionals are ____ sources.$x$, $x$primary; secondary$x$, $x$✅ Correct answer: primary; secondary
The CLIENT is the PRIMARY (main and most important) source of data, because the client directly experiences their health problem. SECONDARY sources are everything else: the client's chart/medical records, family members and friends, other health professionals, laboratory and diagnostic reports, and literature. Secondary sources are used to supplement or confirm information, especially when the client cannot communicate (e.g. unconscious ICU patient).

❌ Why the other options are wrong:
• unreliable; reliable — The client is not "unreliable"; the client is the primary source.
• primary; tertiary — Family and records are SECONDARY, not tertiary.
• secondary; primary — This reverses the correct order.

⭐ Key point: In ICU, many patients cannot speak, so secondary sources (family, records, monitoring data) become very important.$x$, null),
(144, $x$Which physical examination technique uses tapping on the body surface to assess underlying structures based on the sound produced (e.g., dullness vs resonance)?$x$, $x$Percussion$x$, $x$✅ Correct answer: Percussion
PERCUSSION involves TAPPING on the body surface (usually with the fingers) to produce SOUNDS that reveal the density of underlying structures. Sounds include: RESONANCE (normal air-filled lung), HYPER-RESONANCE (too much air — e.g. pneumothorax, emphysema), DULLNESS (solid organs or fluid — e.g. liver, consolidation), STONY DULLNESS (pleural effusion), FLATNESS (bone, muscle), and TYMPANY (air-filled bowel or stomach).

❌ Why the other options are wrong:
• Inspection — INSPECTION is looking (observing) carefully.
• Auscultation — AUSCULTATION is listening with a stethoscope (e.g. heart, breath and bowel sounds).
• Palpation — PALPATION is feeling with the hands (e.g. texture, temperature, tenderness, masses).

⭐ Key point: The usual examination order is inspection, palpation, percussion, auscultation — EXCEPT the abdomen.$x$, null),
(145, $x$What is the correct sequence of physical examination techniques when assessing the abdomen, and why does it differ from other body systems?$x$, $x$Inspection, auscultation, percussion, palpation — because palpation and percussion can alter bowel motility and sounds before they can be auscultated$x$, $x$✅ Correct answer: Inspection, auscultation, percussion, palpation — because palpation and percussion can alter bowel motility and sounds before they can be auscultated
For the ABDOMEN, the order is INSPECTION, AUSCULTATION, PERCUSSION, PALPATION. Auscultation is done BEFORE percussion and palpation, because touching, tapping or pressing the abdomen can STIMULATE or ALTER BOWEL MOTILITY and BOWEL SOUNDS, giving a false impression. Listening first records the natural bowel sounds accurately. Palpation is done last, also because it may cause pain and tensing.

❌ Why the other options are wrong:
• Inspection, palpation, percussion, auscultation — because palpation stimulates bowel sounds — Palpation before auscultation alters bowel sounds — this is the reason the order is changed.
• Percussion, palpation, inspection, auscultation — Percussion first is not the standard order.
• Auscultation, inspection, palpation, percussion — because auscultation must always come first — Auscultation does not always come first; inspection is always first.

⭐ Key point: Listen to the abdomen in all four quadrants. Normal bowel sounds are 5–30 per minute. Listen for at least 2–5 minutes before saying they are absent.$x$, null),
(146, $x$A nurse rapidly assesses an unresponsive trauma patient's airway, breathing, and circulation. This is an example of what type of assessment?$x$, $x$Emergency assessment$x$, $x$✅ Correct answer: Emergency assessment
An EMERGENCY ASSESSMENT is a RAPID assessment performed during a crisis to identify LIFE-THREATENING problems and act immediately. Checking the AIRWAY, BREATHING and CIRCULATION (ABC) of an unresponsive trauma patient is an emergency assessment.

❌ Why the other options are wrong:
• Focused assessment — A focused assessment examines a specific problem in detail (e.g. assessing a wound or pain).
• Time-lapsed reassessment — A time-lapsed reassessment compares current status with earlier data after some time.
• Initial comprehensive assessment — An initial comprehensive assessment is a complete, detailed assessment on admission.

⭐ Key point: Types of assessment: initial comprehensive, focused (problem-oriented), emergency, and time-lapsed.$x$, null),
(147, $x$A nurse compares a client's current status to data obtained several months ago during a scheduled follow-up visit. This type of assessment is called:$x$, $x$Time-lapsed reassessment$x$, $x$✅ Correct answer: Time-lapsed reassessment
A TIME-LAPSED REASSESSMENT is done after a significant period of time (e.g. weeks or months) to COMPARE the client's CURRENT STATUS with BASELINE data collected earlier. It identifies changes — improvement, stability or deterioration — and helps evaluate whether treatment goals are being met. Example: at a scheduled follow-up clinic visit, the nurse compares the client's current weight, BP, blood glucose control and functional ability with the data recorded months ago.

❌ Why the other options are wrong:
• Initial assessment — An INITIAL (comprehensive) assessment is done when the client first enters care to collect baseline data.
• Focused assessment — A FOCUSED assessment examines a specific problem or body system in detail (e.g. reassessing pain after analgesia).
• Emergency assessment — An EMERGENCY assessment is a rapid check of life-threatening problems (ABC).

⭐ Key point: Comparing data over time is how nurses identify trends, which are often more meaningful than single readings.$x$, null),
(148, $x$A nurse writes the diagnosis "Risk for Infection related to presence of invasive central venous catheter." Which type of nursing diagnosis is this?$x$, $x$Risk$x$, $x$✅ Correct answer: Risk
A RISK NURSING DIAGNOSIS describes a problem that is NOT present now, but the client is at HIGH RISK of developing it because of RISK FACTORS. "Risk for Infection related to presence of invasive central venous catheter" is a risk diagnosis: there is no infection now, but the catheter is a risk factor. Risk diagnoses have two parts (problem + risk factors) and are written as "Risk for…".

❌ Why the other options are wrong:
• Possible — A "possible" diagnosis means the nurse suspects a problem but needs more data to confirm it.
• Actual — An ACTUAL diagnosis describes a problem that is present now, with defining characteristics (signs and symptoms).
• Syndrome — A SYNDROME diagnosis describes a cluster of nursing diagnoses that occur together.

⭐ Key point: Nursing interventions for risk diagnoses focus on PREVENTION and monitoring.$x$, null),
(149, $x$"Rape-Trauma Syndrome" and "Disuse Syndrome" are examples of which type of nursing diagnosis?$x$, $x$Syndrome diagnosis$x$, $x$✅ Correct answer: Syndrome diagnosis
A SYNDROME DIAGNOSIS describes a CLUSTER of actual or risk NURSING DIAGNOSES that are predicted to occur together because of a certain event or situation. Examples: "RAPE-TRAUMA SYNDROME" (a cluster of psychological and physical responses after rape) and "DISUSE SYNDROME" (risk of complications from immobility, e.g. pressure ulcers, constipation, contractures, pneumonia).

❌ Why the other options are wrong:
• Risk diagnosis — A risk diagnosis is a single potential problem.
• Actual diagnosis — An actual diagnosis is a single present problem.
• Health promotion diagnosis — A health promotion diagnosis describes a client's readiness to improve health (e.g. "Readiness for enhanced nutrition").

⭐ Key point: Types of NANDA nursing diagnoses: actual (problem-focused), risk, health promotion, and syndrome.$x$, null),
(150, $x$In the standard PES format for writing an actual nursing diagnosis, what does the "E" represent?$x$, $x$Etiology (related factors)$x$, $x$✅ Correct answer: Etiology (related factors)
The PES format is used to write ACTUAL nursing diagnoses: P = PROBLEM (the NANDA diagnostic label, e.g. "Impaired Gas Exchange"); E = ETIOLOGY (the RELATED FACTORS or causes, written after "related to"); S = SIGNS AND SYMPTOMS (the defining characteristics, written after "as evidenced by"). Example: "Acute Pain related to surgical incision as evidenced by client reporting pain 8/10 and grimacing."

❌ Why the other options are wrong:
• Emergency status — "Emergency status" is not part of PES.
• Evaluation — Evaluation is a step of the nursing process.
• Examination findings — Examination findings are part of the S (signs and symptoms).

⭐ Key point: The etiology guides nursing interventions — nurses treat the cause where possible.$x$, null),
(151, $x$Which of the following diagnostic statements contains an error because the etiology names something that cannot legally or ethically be documented as a "cause" by a nurse?$x$, $x$"Impaired Skin Integrity related to inadequate nursing care"$x$, $x$✅ Correct answer: "Impaired Skin Integrity related to inadequate nursing care"
The ETIOLOGY of a nursing diagnosis must never be written in a way that is LEGALLY INADVISABLE or blames staff. "Impaired Skin Integrity related to INADEQUATE NURSING CARE" admits negligence in the legal record and could be used against the nurse and hospital in court. It should be written with the real cause, e.g. "related to immobility and pressure over bony prominences".

❌ Why the other options are wrong:
• "Ineffective Coping related to situational crisis" — "Ineffective Coping related to situational crisis" is correctly written.
• "Risk for Falls related to unsteady gait" — "Risk for Falls related to unsteady gait" is correctly written.
• "Acute Pain related to surgical incision" — "Acute Pain related to surgical incision" is correctly written.

⭐ Key point: Other errors to avoid: using medical diagnoses as the problem, writing circular statements, value judgements, and nursing interventions as diagnoses.$x$, null),
(152, $x$Which of the following best describes a "collaborative problem" as distinguished from a nursing diagnosis?$x$, $x$A potential physiological complication that nurses monitor and manage using interventions prescribed by both nursing and medicine$x$, $x$✅ Correct answer: A potential physiological complication that nurses monitor and manage using interventions prescribed by both nursing and medicine
A COLLABORATIVE PROBLEM is a potential PHYSIOLOGICAL COMPLICATION (e.g. "Potential Complication: haemorrhage", "PC: hypoglycaemia", "PC: increased intracranial pressure") that nurses MONITOR to detect early, and MANAGE using BOTH NURSING-PRESCRIBED and PHYSICIAN-PRESCRIBED interventions. Nurses cannot treat these independently.

❌ Why the other options are wrong:
• A diagnosis exclusively determined by the physician — It is not determined only by physicians; nurses identify and monitor them.
• A synonym for an actual nursing diagnosis — It is not the same as an actual nursing diagnosis.
• A problem that the nurse manages independently using nursing interventions alone — A problem managed independently with nursing interventions alone is a NURSING DIAGNOSIS.

⭐ Key point: Collaborative problems are usually written as "PC: [complication]" (Carpenito's bifocal model).$x$, null),
(153, $x$When a nurse writes "Impaired Gas Exchange related to Impaired Gas Exchange," what diagnostic error has occurred?$x$, $x$This is a "circular" statement, in which the etiology restates the problem rather than identifying its cause$x$, $x$✅ Correct answer: This is a "circular" statement, in which the etiology restates the problem rather than identifying its cause
"Impaired Gas Exchange related to Impaired Gas Exchange" is a CIRCULAR STATEMENT: the ETIOLOGY simply REPEATS the PROBLEM, and does not identify its cause. This gives no guidance for interventions. A correct statement would identify a cause, e.g. "Impaired Gas Exchange related to alveolar-capillary membrane changes (fluid in alveoli)".

❌ Why the other options are wrong:
• This is an example of a wellness diagnosis — A wellness diagnosis describes a healthy state.
• The statement correctly follows the PES format — It does not follow the PES format correctly.
• This is an example of a syndrome diagnosis — A syndrome diagnosis is a cluster of diagnoses.

⭐ Key point: Always make the etiology a different, specific cause that nursing can address.$x$, null),
(154, $x$What does the "S" in SMART goal criteria stand for?$x$, $x$Specific$x$, $x$✅ Correct answer: Specific
SMART is a framework for writing clear, useful goals/objectives: S = SPECIFIC — clearly states WHAT the client will do (not vague); M = MEASURABLE — can be observed or measured (e.g. distance walked, pain score); A = ACHIEVABLE/ATTAINABLE — realistic for this client; R = RELEVANT/REALISTIC — related to the nursing diagnosis and the client's priorities; T = TIME-BOUND — includes a deadline. Example: "The client will walk 30 metres along the corridor with one assistant by the third post-operative day."

❌ Why the other options are wrong:
• Standard — "Standard" is not what S stands for.
• Subjective — "Subjective" is not what S stands for; goals should be objective and measurable.
• Simple — "Simple" is not what S stands for.

⭐ Key point: Goals should be client-centred ("The client will…"), written with the client, and evaluated at the stated time.$x$, null),
(155, $x$A nurse writes: "Nurse will teach the client about insulin administration." What is wrong with this outcome statement?$x$, $x$It describes a nursing intervention/action, not a measurable client outcome$x$, $x$✅ Correct answer: It describes a nursing intervention/action, not a measurable client outcome
An OUTCOME (goal) must describe what the CLIENT will achieve, in measurable terms. "NURSE WILL TEACH the client about insulin administration" describes a NURSING INTERVENTION (the nurse's action), NOT a CLIENT OUTCOME. A correct outcome would be: "The client will correctly demonstrate insulin self-injection by the day of discharge."

❌ Why the other options are wrong:
• Nothing; it is a correctly written outcome — It is not correct as an outcome statement.
• It is too specific — It is not too specific.
• It lacks a time frame only — The main problem is not just the missing time frame; it is not a client outcome at all.

⭐ Key point: Outcomes start with "The client will…", and describe observable behaviour.$x$, null),
(156, $x$In the acronym RUMBA, sometimes used alongside SMART to evaluate outcome statements, what does the "M" represent?$x$, $x$Measurable$x$, $x$✅ Correct answer: Measurable
RUMBA is a set of criteria used (alongside SMART) to check that outcome statements are well written: R = REAL (realistic and relevant), U = UNDERSTANDABLE (clear to the client, family and team), M = MEASURABLE (progress can be observed or measured — e.g. "SpO2 above 94% on room air", "walks 20 metres"), B = BEHAVIOURAL (describes an observable client behaviour or action), A = ACHIEVABLE (the client can reasonably reach it). The "M" therefore stands for MEASURABLE.

❌ Why the other options are wrong:
• Multidisciplinary — "Multidisciplinary" is not what M stands for.
• Motivating — "Motivating" is not what M stands for.
• Mandatory — "Mandatory" is not what M stands for.

⭐ Key point: If an outcome cannot be measured, the nurse cannot evaluate whether it has been achieved.$x$, null),
(157, $x$A nurse administers a prescribed antibiotic according to the physician's order. This is an example of which type of nursing intervention?$x$, $x$Dependent intervention$x$, $x$✅ Correct answer: Dependent intervention
A DEPENDENT nursing intervention is carried out based on a PHYSICIAN'S (or other prescriber's) ORDER. Administering a PRESCRIBED ANTIBIOTIC is dependent, because the nurse needs a prescription. However, the nurse still uses judgement (e.g. checking allergies, dose, and observing for side effects).

❌ Why the other options are wrong:
• Unauthorized intervention — Unauthorised interventions are actions outside the nurse's scope.
• Interdependent (collaborative) intervention — Interdependent (collaborative) interventions are done in collaboration with other team members (e.g. physiotherapists, dieticians).
• Independent intervention — Independent interventions are initiated by the nurse without an order (e.g. repositioning, mouth care, teaching).

⭐ Key point: Types of nursing interventions: independent, dependent and interdependent (collaborative).$x$, null),
(158, $x$Discharge planning should ideally begin:$x$, $x$At the time of admission and continuing throughout the hospital stay$x$, $x$✅ Correct answer: At the time of admission and continuing throughout the hospital stay
DISCHARGE PLANNING should begin AT THE TIME OF ADMISSION and continue THROUGHOUT the hospital stay. Early planning identifies needs (e.g. home care, equipment, education, follow-up appointments), reduces delays in discharge, and helps prevent readmissions.

❌ Why the other options are wrong:
• Only after the physician writes the discharge order — Waiting for the discharge order delays planning.
• On the day of discharge only — Starting on the day of discharge is too late.
• Only if the client requests it — Discharge planning is required for all clients, not just those who request it.

⭐ Key point: Involve the client, family and multidisciplinary team in discharge planning.$x$, null),
(159, $x$A critical pathway (care map) used in an ICU for post-cardiac-surgery clients is BEST described as:$x$, $x$A standardized, multidisciplinary plan outlining the sequence and timing of interventions expected to achieve outcomes within a specific time frame$x$, $x$✅ Correct answer: A standardized, multidisciplinary plan outlining the sequence and timing of interventions expected to achieve outcomes within a specific time frame
A CRITICAL PATHWAY (care map) is a STANDARDISED, MULTIDISCIPLINARY plan that outlines the SEQUENCE and TIMING of key INTERVENTIONS expected to achieve OUTCOMES within a specific TIME FRAME for a particular condition or procedure (e.g. post-cardiac surgery). It coordinates care, reduces variation, and identifies "variances" (when the patient does not progress as expected).

❌ Why the other options are wrong:
• A document that replaces the need for nursing assessment — It does not replace nursing assessment.
• A tool used exclusively for billing purposes — It is a clinical tool, not just for billing.
• A plan used only for clients with no comorbidities — It can be adapted for patients with comorbidities.

⭐ Key point: Variances from the pathway are documented and analysed to improve care.$x$, null),
(160, $x$A nurse delegates the task of ambulating a stable postoperative client to a nursing assistant. Which principle of delegation is MOST important for the registered nurse to apply?$x$, $x$Ensuring the task is within the delegatee's scope of practice/competency and does not require nursing judgment$x$, $x$✅ Correct answer: Ensuring the task is within the delegatee's scope of practice/competency and does not require nursing judgment
When delegating, the registered nurse must ensure the task is WITHIN the delegatee's SCOPE OF PRACTICE and COMPETENCY, and does NOT REQUIRE NURSING JUDGEMENT. Ambulating a stable post-operative client is suitable for a nursing assistant. The nurse remains accountable and must give clear instructions and supervise.

❌ Why the other options are wrong:
• Delegating without providing any instructions — Delegating without instructions is unsafe.
• Avoiding all delegation regardless of task complexity — Avoiding all delegation is inefficient.
• Delegating tasks that require independent nursing judgment — Tasks requiring nursing judgement (assessment, evaluation, teaching) must not be delegated to unlicensed staff.

⭐ Key point: Use the five rights of delegation: right task, circumstance, person, direction, supervision.$x$, null),
(161, $x$Which of the following is NOT an exercise-prescription variable?$x$, $x$Gender$x$, $x$✅ Correct answer: Gender
EXERCISE PRESCRIPTION describes the "dose" of exercise using variables summarised as FITT-P: FREQUENCY (how often — e.g. sessions per day or week), INTENSITY (how hard — e.g. % of maximum heart rate, perceived exertion, resistance), TIME/DURATION (how long each session lasts), TYPE (mode — e.g. walking, cycling, resistance, range-of-motion exercises), and PROGRESSION (how the programme is gradually increased as the patient improves). GENDER is a personal characteristic that may influence planning, but it is NOT an exercise-prescription variable.

❌ Why the other options are wrong:
• Intensity — Intensity is a core prescription variable.
• Progression — Progression is a core prescription variable.
• Duration — Duration is a core prescription variable.

⭐ Key point: Exercise for ICU survivors should start at low intensity and progress gradually, with monitoring of heart rate, BP, SpO2 and fatigue.$x$, null),
(162, $x$Which of the following is an example of a balance and coordination exercise?$x$, $x$Frenkel's exercises$x$, $x$✅ Correct answer: Frenkel's exercises
FRENKEL'S EXERCISES are a series of slow, controlled, repetitive movements designed to improve BALANCE and COORDINATION in patients with ATAXIA — especially sensory ataxia from loss of proprioception (position sense), e.g. in tabes dorsalis, multiple sclerosis or cerebellar disorders. Patients use their EYES (visual feedback) to guide movements, compensating for poor position sense. They progress from lying, to sitting, to standing, to walking, from simple to complex movements.

❌ Why the other options are wrong:
• Kegel exercise — Kegel exercises strengthen the pelvic floor muscles (for incontinence).
• Ballistic stretching — Ballistic stretching uses bouncing movements to increase flexibility (and risks injury).
• Squatting exercise — Squatting is a strengthening exercise for the legs.

⭐ Key point: Frenkel's exercises require concentration, so they are done in a quiet environment, with short sessions to avoid fatigue.$x$, null),
(163, $x$Passive exercise is used clinically mainly to:$x$, $x$Maintain joint range of motion$x$, $x$✅ Correct answer: Maintain joint range of motion
PASSIVE EXERCISE is performed by another person (e.g. nurse, physiotherapist) or a machine, WITHOUT the patient's muscle effort. It is used mainly to MAINTAIN JOINT RANGE OF MOTION and prevent contractures in patients who cannot move themselves (e.g. unconscious or paralysed ICU patients). It does NOT build muscle strength.

❌ Why the other options are wrong:
• Increase muscle tone — Muscle tone is not increased by passive exercise.
• Increase muscle power — Muscle power requires active exercise.
• Increase muscle strength — Muscle strength requires active (resisted) exercise.

⭐ Key point: Move each joint through its full range, slowly and gently, several times a day.$x$, null),
(164, $x$Which technique is used for airway clearance and lung inflation in a ventilated ICU patient?$x$, $x$Manual hyperinflation$x$, $x$✅ Correct answer: Manual hyperinflation
MANUAL HYPERINFLATION (MHI, "bagging") is a physiotherapy technique for VENTILATED patients. The patient is disconnected from the ventilator and given slow, deep breaths with a manual resuscitation bag, often with a brief inspiratory hold, followed by a QUICK RELEASE of the bag. The large breaths RE-INFLATE collapsed alveoli (improving lung volume and compliance), and the fast expiratory flow MOBILISES SECRETIONS towards the large airways, where they can be suctioned (AIRWAY CLEARANCE).

❌ Why the other options are wrong:
• Inspiratory muscle training — Inspiratory muscle training strengthens the breathing muscles for weaning; it does not directly clear secretions.
• Diaphragmatic breathing — Diaphragmatic breathing is an active technique for awake, cooperative patients.
• Pursed-lip breathing — Pursed-lip breathing helps awake COPD patients slow breathing and reduce air trapping.

⭐ Key point: MHI risks include pneumothorax, haemodynamic instability, loss of PEEP and raised ICP; use a manometer and avoid it in unstable patients.$x$, null),
(165, $x$Which of the following is NOT a barrier to early mobilisation in the ICU?$x$, $x$The patient's gender$x$, $x$✅ Correct answer: The patient's gender
Many factors can delay or prevent EARLY MOBILISATION in ICU: CO-MORBIDITIES (e.g. heart failure, obesity, arthritis); PHYSIOLOGICAL INSTABILITY (low BP, high vasopressor needs, low SpO2, arrhythmias); deep SEDATION and delirium; pain; the ICU ENVIRONMENT (multiple lines, tubes, drains and equipment); staff shortages and lack of training; lack of protocols and equipment; and safety concerns. The PATIENT'S GENDER is NOT a barrier — men and women both benefit from early mobilisation.

❌ Why the other options are wrong:
• Co-morbidities — Co-morbidities are a recognised barrier.
• Physiological instability — Physiological instability is a recognised barrier.
• The ICU environment (lines, tubes, equipment) — The ICU environment is a recognised barrier.

⭐ Key point: Protocols with clear safety criteria, light sedation, teamwork and proper equipment help overcome barriers safely.$x$, null),
(166, $x$Decreased orthostatic tolerance after prolonged bed rest is characterised by:$x$, $x$Dizziness or faintness when the patient suddenly sits or stands up$x$, $x$✅ Correct answer: Dizziness or faintness when the patient suddenly sits or stands up
After PROLONGED BED REST, the body's ability to adjust blood pressure on standing (ORTHOSTATIC TOLERANCE) decreases. When the patient suddenly sits or stands up, blood pools in the legs, BP drops (orthostatic hypotension) and the patient feels DIZZY or FAINT.

❌ Why the other options are wrong:
• Cerebral hyperaemia — Cerebral hyperaemia (too much blood to the brain) does not occur; blood flow to the brain decreases.
• A fall in heart rate on standing — The heart rate usually increases on standing.
• Hypertension on standing — BP falls (hypotension) on standing, not rises.

⭐ Key point: Mobilise gradually: sit up, dangle legs, then stand with support.$x$, null),
(167, $x$Which statement about the Oxford (MRC) scale for grading muscle power is FALSE?$x$, $x$Grade 5 means movement against gravity only$x$, $x$✅ Correct answer: Grade 5 means movement against gravity only
The OXFORD (MRC) SCALE grades MUSCLE POWER from 0 to 5: 0 = no contraction; 1 = flicker of contraction; 2 = movement with gravity eliminated; 3 = movement AGAINST GRAVITY only; 4 = movement against gravity and SOME resistance; 5 = NORMAL power. The statement "Grade 5 means movement against gravity only" is FALSE — that describes grade 3.

❌ Why the other options are wrong:
• Grade 0 means no contraction at all — Grade 0 means no contraction — true.
• It is used to measure muscle strength — It is used to measure muscle strength — true.
• It grades power from 0 to 5 — It grades power from 0 to 5 — true.

⭐ Key point: The MRC sum score (0–60) is used to diagnose ICU-acquired weakness (below 48).$x$, null),
(168, $x$The effects of prolonged immobility on the musculoskeletal system include all of the following EXCEPT:$x$, $x$Increased muscle mass$x$, $x$✅ Correct answer: Increased muscle mass
PROLONGED IMMOBILITY has many harmful effects on the musculoskeletal system: MUSCLE ATROPHY (DECREASED muscle mass and strength — up to 1–1.5% per day of bed rest), REDUCED MUSCLE ENDURANCE, JOINT CONTRACTURES (shortened muscles and tendons fixing joints in abnormal positions, e.g. foot drop), DECREASED JOINT STABILITY and mobility, and BONE LOSS (disuse osteoporosis, leading to high calcium and risk of kidney stones and fractures). INCREASED MUSCLE MASS does NOT occur with immobility.

❌ Why the other options are wrong:
• Joint contracture — Joint contracture is a recognised effect of immobility.
• Decreased joint stability — Decreased joint stability is a recognised effect.
• Reduced muscle endurance — Reduced muscle endurance is a recognised effect.

⭐ Key point: Prevent with early mobilisation, range-of-motion exercises, correct positioning, splints (e.g. to prevent foot drop) and good nutrition.$x$, null),
(169, $x$Which of the following is NOT a therapeutic (physiotherapy) modality?$x$, $x$X-ray machine$x$, $x$✅ Correct answer: X-ray machine
THERAPEUTIC (physiotherapy) MODALITIES are physical agents used to TREAT patients — to relieve pain, reduce swelling and promote healing. Examples: CRYOTHERAPY (cold packs/ice — reduces pain, swelling and inflammation after acute injury); TENS (electrical stimulation for pain relief); THERAPEUTIC ULTRASOUND (deep heating, tissue healing); heat therapy (hot packs, infrared); electrical muscle stimulation; and hydrotherapy. An X-RAY MACHINE is a DIAGNOSTIC imaging device used to visualise bones and organs; it is NOT a therapeutic modality.

❌ Why the other options are wrong:
• Cryotherapy — Cryotherapy is a therapeutic modality.
• Transcutaneous electrical nerve stimulator (TENS) — TENS is a therapeutic modality.
• Therapeutic ultrasound — Therapeutic ultrasound is a therapeutic modality.

⭐ Key point: Each modality has contraindications — e.g. avoid heat over acute inflammation and avoid TENS near pacemakers.$x$, null),
(170, $x$Accidental displacement of a chest drain while turning a patient may cause:$x$, $x$Pneumothorax$x$, $x$✅ Correct answer: Pneumothorax
A CHEST DRAIN removes air or fluid from the pleural space and allows the lung to stay expanded. If the drain is ACCIDENTALLY DISPLACED or pulled out (e.g. while turning a patient), air from the atmosphere can be sucked into the pleural space through the open wound, causing the lung to collapse — a PNEUMOTHORAX (which can become a tension pneumothorax in a ventilated patient). The nurse should immediately cover the site with a sterile occlusive dressing (often taped on three sides to allow air out), assess breathing and SpO2, and call the doctor urgently.

❌ Why the other options are wrong:
• Internal bleeding — Internal bleeding is not the main risk of displacement.
• Pneumonia — Pneumonia may develop later from poor lung expansion, but it is not the immediate risk.
• Atelectasis only — Atelectasis may follow, but pneumothorax is the immediate, main risk.

⭐ Key point: Secure the drain and tubing well, plan turns with enough staff, and keep the drain below chest level.$x$, null),
(171, $x$The head-down (Trendelenburg) position used for postural drainage may cause which complication?$x$, $x$Raised intracranial pressure$x$, $x$✅ Correct answer: Raised intracranial pressure
POSTURAL DRAINAGE uses gravity to drain secretions from specific lung segments. The HEAD-DOWN (Trendelenburg) position drains the lower lobes, but it causes blood to pool in the head and reduces venous drainage from the brain, which RAISES INTRACRANIAL PRESSURE (ICP). It is therefore contraindicated in head injury, raised ICP, recent neurosurgery, uncontrolled hypertension and recent eye surgery. It can also push abdominal contents up against the diaphragm, increasing breathlessness and the risk of reflux and aspiration.

❌ Why the other options are wrong:
• Deep vein thrombosis — DVT is caused by immobility and other factors, not directly by head-down positioning.
• Neck fracture — A neck fracture is not caused by the position.
• Air embolism — Air embolism is not a typical complication of postural drainage.

⭐ Key point: Other contraindications to head-down positioning: severe breathlessness, haemoptysis, recent oesophageal surgery, and gastro-oesophageal reflux.$x$, null),
(172, $x$An important adverse effect of manual hyperinflation (bagging) is:$x$, $x$Pneumothorax$x$, $x$✅ Correct answer: Pneumothorax
MANUAL HYPERINFLATION gives LARGE TIDAL VOLUMES at HIGH PRESSURE. If the airway pressure is too high, or the lungs are fragile (e.g. emphysema, ARDS, bullae), the alveoli can rupture and air leaks into the pleural space, causing a PNEUMOTHORAX (barotrauma). Other complications: hypotension (from high chest pressure reducing venous return), loss of PEEP and alveolar collapse, raised ICP, and hypoxia during disconnection.

❌ Why the other options are wrong:
• Hypoglycaemia — Hypoglycaemia is not related to manual hyperinflation.
• Increased intracranial compliance — MHI does not increase intracranial compliance; it can raise ICP.
• Pulmonary embolism — Pulmonary embolism is not a typical complication of MHI.

⭐ Key point: Use a manometer to keep peak pressure below about 40 cmH2O, include a PEEP valve, and avoid MHI with an undrained pneumothorax or unstable haemodynamics.$x$, null),
(173, $x$Which of the following contraceptive methods does NOT protect against sexually transmitted infections (STIs)?$x$, $x$Combined oral contraceptive pill$x$, $x$✅ Correct answer: Combined oral contraceptive pill
The COMBINED ORAL CONTRACEPTIVE PILL (COC) contains oestrogen and progestogen. It prevents pregnancy mainly by stopping ovulation, thickening cervical mucus and thinning the endometrium. It is highly effective for pregnancy prevention, but it does NOT form a barrier, so it does NOT protect against SEXUALLY TRANSMITTED INFECTIONS (STIs) such as HIV, gonorrhoea, chlamydia, syphilis or hepatitis B.

❌ Why the other options are wrong:
• Abstinence — Abstinence protects against both pregnancy and STIs.
• Male condom — Male condoms provide a barrier that reduces STI transmission.
• Female condom — Female condoms provide a barrier that reduces STI transmission.

⭐ Key point: Advise "dual protection": a highly effective contraceptive (e.g. pill, implant, IUD) PLUS condoms for STI protection.$x$, null),
(174, $x$What is the purpose of emergency contraception?$x$, $x$To prevent pregnancy after unprotected intercourse$x$, $x$✅ Correct answer: To prevent pregnancy after unprotected intercourse
EMERGENCY CONTRACEPTION (EC) is used to PREVENT PREGNANCY after UNPROTECTED INTERCOURSE, CONTRACEPTIVE FAILURE (e.g. a burst condom, missed pills) or sexual assault. Options: emergency contraceptive PILLS (levonorgestrel within 72 hours, or ulipristal acetate within 120 hours) and the COPPER IUD (within 5 days). They work mainly by delaying ovulation (pills) or preventing fertilisation (copper IUD). EC does NOT end an established pregnancy.

❌ Why the other options are wrong:
• To treat infertility — It does not treat infertility.
• To terminate an established pregnancy — It does not terminate an established pregnancy (it is not an abortion pill).
• To regulate menstrual cycles — It is not used to regulate menstrual cycles.

⭐ Key point: The sooner EC is taken, the more effective it is. Offer ongoing contraception and STI screening.$x$, null),
(175, $x$What is the purpose of male condoms in family planning?$x$, $x$Both A and B$x$, $x$✅ Correct answer: Both A and B
The MALE CONDOM is a sheath worn over the erect penis. It acts as a physical barrier that stops sperm entering the vagina, so it PREVENTS PREGNANCY (about 98% effective with perfect use, about 87% with typical use). It also stops contact with genital fluids and reduces skin contact, so it REDUCES the RISK of STIs including HIV. It is the only male method (apart from vasectomy and withdrawal) and offers dual protection, so "BOTH A AND B" is correct.

❌ Why the other options are wrong:
• Preventing pregnancy — Preventing pregnancy alone is incomplete.
• Reducing the risk of STIs — Reducing STI risk alone is incomplete.
• None of the above — "None of the above" is incorrect.

⭐ Key point: Teach correct use: check expiry date, open carefully, put on before any genital contact, pinch the tip, hold the base during withdrawal, use a new condom each time, and use water-based lubricants with latex.$x$, null),
(176, $x$How does a copper intrauterine device (IUD) mainly prevent pregnancy?$x$, $x$By creating a uterine environment that is toxic to sperm, preventing fertilisation$x$, $x$✅ Correct answer: By creating a uterine environment that is toxic to sperm, preventing fertilisation
The COPPER INTRAUTERINE DEVICE (IUD) is a small T-shaped device placed in the uterus. It releases COPPER IONS that cause a local inflammatory reaction in the uterus and fallopian tubes. This environment is TOXIC TO SPERM (reducing their movement and survival) and to the egg, so FERTILISATION is PREVENTED. It contains no hormones, so ovulation continues normally. It is over 99% effective and lasts up to 10–12 years.

❌ Why the other options are wrong:
• By thinning the endometrium through hormone release — Thinning the endometrium with hormones describes the LEVONORGESTREL (hormonal) IUD.
• By causing abortion of the implanted embryo — It does not cause abortion of an implanted embryo; it acts mainly before fertilisation.
• By inhibiting ovulation — It does not inhibit ovulation.

⭐ Key point: Side effects: heavier, more painful periods. Risks: expulsion, perforation (rare), and infection soon after insertion.$x$, null),
(177, $x$What is the main mechanism of action of emergency contraceptive pills (e.g. levonorgestrel)?$x$, $x$Delaying or preventing ovulation$x$, $x$✅ Correct answer: Delaying or preventing ovulation
LEVONORGESTREL emergency contraceptive pills (e.g. Postinor) work mainly by DELAYING or PREVENTING OVULATION — they stop the release of an egg, so sperm in the reproductive tract cannot fertilise one. If ovulation has already happened, the pill is much less effective. They do NOT cause abortion and do not harm an existing pregnancy.

❌ Why the other options are wrong:
• Killing sperm in the vagina — They do not kill sperm in the vagina (that is how spermicides work).
• Inducing an abortion — They do not induce abortion.
• Destroying an implanted embryo — They do not destroy an implanted embryo.

⭐ Key point: Most effective within 72 hours (best within 24 hours). Less effective in women with higher body weight; the copper IUD is more effective.$x$, null),
(178, $x$What is considered the most effective form of emergency contraception?$x$, $x$Copper IUD$x$, $x$✅ Correct answer: Copper IUD
The COPPER IUD is the MOST EFFECTIVE form of emergency contraception — over 99% effective when inserted within 5 days (120 hours) of unprotected intercourse. Its effectiveness is not affected by body weight or the timing of ovulation, and it can be left in place to provide LONG-TERM contraception for up to 10–12 years.

❌ Why the other options are wrong:
• Diaphragm — A diaphragm is a barrier method used before intercourse, not emergency contraception.
• Condoms — Condoms are used during intercourse; they are not emergency contraception.
• Levonorgestrel emergency pill — Levonorgestrel pills are less effective (about 85–89% reduction in pregnancy risk), especially if ovulation is near or body weight is high.

⭐ Key point: Offer the copper IUD as the first-line emergency option where trained providers are available.$x$, null),
(179, $x$If a woman becomes pregnant while using an IUD, which complication should be suspected and excluded?$x$, $x$Ectopic pregnancy$x$, $x$✅ Correct answer: Ectopic pregnancy
IUDs prevent pregnancies in the UTERUS very effectively, but are LESS effective at preventing pregnancies in the FALLOPIAN TUBES. So if a woman DOES become pregnant with an IUD in place, there is a HIGHER PROPORTION of ECTOPIC (tubal) pregnancies. Ectopic pregnancy can rupture and cause life-threatening internal bleeding, so it must be suspected and EXCLUDED urgently (pregnancy test, transvaginal ultrasound).

❌ Why the other options are wrong:
• Twin pregnancy — Twin pregnancy is not linked to IUD use.
• Pre-eclampsia — Pre-eclampsia is not linked to IUD use.
• Gestational diabetes — Gestational diabetes is not linked to IUD use.

⭐ Key point: If an intrauterine pregnancy is confirmed and the IUD strings are visible, the IUD should be removed early to reduce the risk of miscarriage and infection.$x$, null),
(180, $x$How long does one injection of DMPA (Depo-Provera, 150 mg IM) protect against pregnancy?$x$, $x$3 months$x$, $x$✅ Correct answer: 3 months
DMPA (DEPOT MEDROXYPROGESTERONE ACETATE, Depo-Provera), given as 150 mg by DEEP INTRAMUSCULAR injection, protects against pregnancy for 3 MONTHS (12–13 weeks), with a grace period of a few weeks for repeat injections. It works by stopping ovulation and thickening cervical mucus. There is also a subcutaneous version (DMPA-SC, Sayana Press, 104 mg) that women can self-inject, also every 3 months.

❌ Why the other options are wrong:
• 6 months — 6 months is too long; protection would be lost.
• 1 month — 1 month is the duration of the MONTHLY combined injectable (e.g. Cyclofem).
• 1 year — 1 year is far too long.

⭐ Key point: Side effects: irregular bleeding or amenorrhoea, weight gain, delayed return of fertility (up to 10 months after stopping), and reduced bone density with long-term use.$x$, null),
(181, $x$Which barrier method is suitable for a couple when one partner has a latex allergy?$x$, $x$Female condom (nitrile/polyurethane)$x$, $x$✅ Correct answer: Female condom (nitrile/polyurethane)
If one partner has a LATEX ALLERGY, latex barrier methods (latex male condoms, latex diaphragms) can cause reactions ranging from itching and rash to anaphylaxis. The FEMALE CONDOM is made of NITRILE (or polyurethane), which is non-latex, so it is a suitable barrier method that also protects against STIs. Non-latex male condoms (polyurethane or polyisoprene) are also available.

❌ Why the other options are wrong:
• Male latex condom — Male latex condoms would trigger the allergy.
• Latex diaphragm — Latex diaphragms would trigger the allergy.
• None — barrier methods cannot be used — Barrier methods CAN be used if they are made of non-latex materials.

⭐ Key point: Always ask about latex allergy before using latex products; use non-latex gloves and equipment in the ICU for allergic patients.$x$, null),
(182, $x$How does the fertility-awareness (natural family planning) method identify fertile days?$x$, $x$Both A and B$x$, $x$✅ Correct answer: Both A and B
FERTILITY-AWARENESS (natural family planning) methods identify the FERTILE days of the cycle so that intercourse is avoided (or a barrier is used) on those days. They use several signs: CERVICAL MUCUS changes (around ovulation, mucus becomes clear, slippery and stretchy like raw egg white — "fertile mucus"); BASAL BODY TEMPERATURE charting (temperature rises about 0.2–0.5 °C after ovulation and stays raised until the period); and calendar calculations. Combining these (the SYMPTO-THERMAL method) is the most effective, so "BOTH A AND B" is correct.

❌ Why the other options are wrong:
• By monitoring changes in cervical mucus — Cervical mucus alone is only one method.
• By daily basal body temperature charting — Basal body temperature alone is only one method.
• None of the above — "None of the above" is incorrect.

⭐ Key point: These methods require training, motivation and partner cooperation, and do not protect against STIs.$x$, null),
(183, $x$In a central venous pressure (CVP) waveform, the 'a' wave represents:$x$, $x$Atrial contraction$x$, $x$✅ Correct answer: Atrial contraction
The CVP waveform reflects pressure changes in the RIGHT ATRIUM. It has three positive waves and two descents: the "a" WAVE — RIGHT ATRIAL CONTRACTION, which pushes blood into the right ventricle (seen just after the P wave on the ECG); the "c" wave — bulging of the closed tricuspid valve into the atrium at the start of ventricular contraction; the "x" descent — atrial relaxation; the "v" wave — filling of the right atrium against the closed tricuspid valve; the "y" descent — opening of the tricuspid valve and rapid emptying of the atrium.

❌ Why the other options are wrong:
• Atrial relaxation — Atrial relaxation is the x descent.
• Ventricular relaxation — Ventricular relaxation relates to the y descent/v wave period.
• Ventricular contraction — Ventricular contraction produces the c wave.

⭐ Key point: Absent "a" waves occur in atrial fibrillation; large "cannon a" waves occur in complete heart block; large "v" waves suggest tricuspid regurgitation.$x$, null),
(184, $x$In a pulmonary artery pressure waveform, the dicrotic notch represents:$x$, $x$Closure of the pulmonary valve$x$, $x$✅ Correct answer: Closure of the pulmonary valve
The PULMONARY ARTERY (PA) pressure waveform looks like an arterial waveform. The DICROTIC NOTCH on the downstroke represents CLOSURE OF THE PULMONARY VALVE at the end of right ventricular systole — after this, the pressure falls slowly during diastole. (In the systemic arterial waveform, the dicrotic notch represents AORTIC valve closure.)

❌ Why the other options are wrong:
• Opening of the mitral valve — Opening of the mitral valve is not seen on the PA waveform.
• The peak of ventricular systole — The peak of ventricular systole is the top of the waveform, not the notch.
• Closure of the tricuspid valve — Closure of the tricuspid valve is related to the "c" wave on the CVP waveform.

⭐ Key point: Normal PA pressure is about 15–30/5–15 mmHg; normal PA wedge pressure is about 6–12 mmHg.$x$, null),
(185, $x$Cardiac output is calculated as:$x$, $x$Stroke volume × heart rate$x$, $x$✅ Correct answer: Stroke volume × heart rate
CARDIAC OUTPUT (CO) is the volume of blood the heart pumps per minute. CO = STROKE VOLUME (SV — the volume pumped with each beat) × HEART RATE (HR — beats per minute). Example: SV 70 mL × HR 80/min = 5,600 mL/min = 5.6 L/min. Normal CO is about 4–8 L/min. Stroke volume depends on PRELOAD (filling), AFTERLOAD (resistance) and CONTRACTILITY.

❌ Why the other options are wrong:
• Blood pressure ÷ heart rate — BP ÷ HR is not a formula for cardiac output.
• Blood pressure × heart rate — BP × HR is related to myocardial oxygen demand ("rate-pressure product"), not cardiac output.
• Stroke volume ÷ heart rate — SV ÷ HR is not meaningful.

⭐ Key point: Cardiac index (CI) = CO ÷ body surface area (normal 2.5–4.0 L/min/m²). Also, MAP = CO × SVR (approximately).$x$, null),
(186, $x$When levelling and zeroing an arterial or CVP transducer, it should be placed at the:$x$, $x$Phlebostatic axis (4th intercostal space, mid-axillary line)$x$, $x$✅ Correct answer: Phlebostatic axis (4th intercostal space, mid-axillary line)
Pressure transducers for arterial lines, CVP and PA catheters must be LEVELLED at the PHLEBOSTATIC AXIS — the point where the 4th INTERCOSTAL SPACE meets the MID-AXILLARY LINE. This approximates the level of the RIGHT ATRIUM (the reference point for haemodynamic pressures). Then the transducer is ZEROED (opened to air) to remove the effect of atmospheric pressure.

❌ Why the other options are wrong:
• Any level, as it does not matter — The level matters: a transducer too low gives falsely high readings; too high gives falsely low readings (about 7.4 mmHg per 10 cm).
• Level of the head — The level of the head is used for intracranial pressure (tragus/foramen of Monro), not arterial or CVP.
• Level of the feet — The level of the feet is never the reference.

⭐ Key point: Re-level the transducer every time the patient's position or bed height changes.$x$, null),
(187, $x$Right ventricular preload is best estimated at the bedside by:$x$, $x$Central venous pressure (CVP)$x$, $x$✅ Correct answer: Central venous pressure (CVP)
PRELOAD is the stretch (filling) of the ventricle at the end of diastole. RIGHT VENTRICULAR PRELOAD is estimated at the bedside by the CENTRAL VENOUS PRESSURE (CVP), which reflects right atrial pressure (normal about 2–8 mmHg or 3–10 cmH2O). A low CVP may suggest hypovolaemia; a high CVP may suggest fluid overload, right heart failure, tamponade or high intrathoracic pressure.

❌ Why the other options are wrong:
• Mean arterial pressure (MAP) — MAP reflects the average arterial pressure perfusing organs.
• Cardiac output (CO) — Cardiac output reflects the heart's pumping, not preload.
• Systemic vascular resistance (SVR) — SVR reflects left ventricular AFTERLOAD.

⭐ Key point: Single CVP values are poor predictors of fluid responsiveness; trends and dynamic tests (e.g. passive leg raising) are more useful.$x$, null),
(188, $x$What is the normal range for systemic vascular resistance (SVR) in an adult?$x$, $x$800–1200 dyn·s·cm⁻⁵$x$, $x$✅ Correct answer: 800–1200 dyn·s·cm⁻⁵
SYSTEMIC VASCULAR RESISTANCE (SVR) is the resistance that the left ventricle must pump against — mainly determined by the tone of small arteries (arterioles). Normal SVR in adults is about 800–1200 dyn·s·cm⁻⁵. It is calculated as SVR = 80 × (MAP − CVP) ÷ CO. HIGH SVR (vasoconstriction) is seen in hypovolaemic and cardiogenic shock; LOW SVR (vasodilation) in septic, anaphylactic and neurogenic shock.

❌ Why the other options are wrong:
• 1600–2000 dyn·s·cm⁻⁵ — 1600–2000 is HIGH (vasoconstriction).
• 400–600 dyn·s·cm⁻⁵ — 400–600 is LOW (vasodilation, e.g. sepsis).
• 200–400 dyn·s·cm⁻⁵ — 200–400 is very low.

⭐ Key point: SVR index (SVRI) adjusts for body size: normal about 1970–2390 dyn·s·cm⁻⁵·m².$x$, null),
(189, $x$A patient has a low cardiac output with a high systemic vascular resistance and adequate filling pressures. Which therapy is most appropriate to improve output?$x$, $x$Vasodilators (afterload reduction)$x$, $x$✅ Correct answer: Vasodilators (afterload reduction)
This patient has LOW CARDIAC OUTPUT with HIGH SVR (the vessels are tightly constricted) and ADEQUATE FILLING PRESSURES (fluids are not needed). The heart is struggling to pump against the high resistance (high AFTERLOAD). VASODILATORS (e.g. nitroprusside, GTN, or inodilators like milrinone/dobutamine) reduce afterload, making it easier for the heart to eject blood, so CARDIAC OUTPUT IMPROVES. BP must be watched closely.

❌ Why the other options are wrong:
• Beta-blockers — Beta-blockers reduce heart rate and contractility, further lowering cardiac output.
• Vasopressors — Vasopressors would increase SVR further, worsening output.
• Rapid fluid boluses — Rapid fluid boluses are not needed when filling is adequate and could cause pulmonary oedema.

⭐ Key point: Low output + high SVR + adequate filling = afterload reduction (± inotropes). Low output + low filling = fluids.$x$, null),
(190, $x$Which is a key intervention to prevent ventilator-associated pneumonia (VAP)?$x$, $x$Elevating the head of the bed 30–45°$x$, $x$✅ Correct answer: Elevating the head of the bed 30–45°
ELEVATING the HEAD OF THE BED to 30–45° is a key part of the VAP prevention bundle. Lying flat allows stomach contents to reflux up the oesophagus and be aspirated past the endotracheal tube cuff into the lungs, where bacteria can cause pneumonia. Head-up positioning uses gravity to reduce reflux and micro-aspiration.

❌ Why the other options are wrong:
• Daily chest X-rays — Daily chest X-rays do not prevent VAP; they are used for diagnosis.
• Prophylactic antibiotics for all ventilated patients — Prophylactic antibiotics for all ventilated patients increase antibiotic resistance and are not recommended routinely.
• Routine 2-hourly suctioning whether needed or not — Routine suctioning when not needed causes trauma, hypoxia and infection risk; suction only when indicated.

⭐ Key point: The VAP bundle: head-of-bed 30–45°, daily sedation hold and SBT, oral care (chlorhexidine/toothbrushing), subglottic secretion drainage, cuff pressure 20–30 cmH2O, DVT and stress ulcer prophylaxis.$x$, null),
(191, $x$Which organism is commonly associated with late-onset ventilator-associated pneumonia in the ICU?$x$, $x$Pseudomonas aeruginosa$x$, $x$✅ Correct answer: Pseudomonas aeruginosa
LATE-ONSET VAP (developing 5 or more days after intubation) is commonly caused by hospital-acquired, often MULTIDRUG-RESISTANT organisms, such as PSEUDOMONAS AERUGINOSA, Acinetobacter baumannii, MRSA, Klebsiella and other Enterobacterales. These organisms colonise the ICU environment, equipment and patients' oropharynx. Pseudomonas is particularly resistant and needs specific antibiotics (e.g. piperacillin-tazobactam, meropenem, ceftazidime).

❌ Why the other options are wrong:
• Clostridium tetani — Clostridium tetani causes tetanus.
• Neisseria meningitidis — Neisseria meningitidis causes meningitis and septicaemia.
• Streptococcus pyogenes — Streptococcus pyogenes causes throat, skin and soft-tissue infections.

⭐ Key point: Early-onset VAP (within 4 days) is usually caused by community organisms such as Streptococcus pneumoniae, Haemophilus influenzae and MSSA.$x$, null),
(192, $x$A patient is suspected of carrying a multidrug-resistant organism (MDRO). What is the FIRST infection-control action?$x$, $x$Implement contact precautions$x$, $x$✅ Correct answer: Implement contact precautions
When a patient is suspected of carrying a MULTIDRUG-RESISTANT ORGANISM (MDRO) — e.g. MRSA, VRE, ESBL-producing or carbapenem-resistant bacteria — the FIRST action is to IMPLEMENT CONTACT PRECAUTIONS immediately, without waiting for confirmation: single room or cohorting, gloves and gown/apron for contact with the patient or surroundings, DEDICATED equipment (stethoscope, BP cuff), strict HAND HYGIENE, and signage. This prevents spread to other vulnerable ICU patients.

❌ Why the other options are wrong:
• Remove all invasive devices — Invasive devices are removed only when no longer needed; removing all devices is not the first step.
• Transfer the patient to another hospital — Transferring the patient is not necessary and could spread the organism.
• Start broad-spectrum antibiotics — Antibiotics should be guided by culture results; colonisation alone may not need treatment.

⭐ Key point: Inform the infection prevention team, screen contacts if required by policy, and clean the environment thoroughly.$x$, null),
(193, $x$Which practice is a key principle of antimicrobial stewardship?$x$, $x$De-escalating to a narrower-spectrum antibiotic once culture results are known$x$, $x$✅ Correct answer: De-escalating to a narrower-spectrum antibiotic once culture results are known
ANTIMICROBIAL STEWARDSHIP is a set of actions to use antibiotics wisely, to improve patient outcomes and reduce resistance. A key principle is DE-ESCALATION: start broad-spectrum antibiotics in serious infection (after taking cultures), then, when CULTURE and SENSITIVITY results are known (usually 48–72 hours), SWITCH to a NARROWER-SPECTRUM antibiotic that targets the identified organism, or stop antibiotics if no infection is found. Other principles: correct dose, route and duration; IV-to-oral switch; and daily review.

❌ Why the other options are wrong:
• Using broad-spectrum antibiotics for as long as possible — Prolonged broad-spectrum use promotes resistance and C. difficile infection.
• Avoiding cultures before starting antibiotics — Cultures should be taken BEFORE starting antibiotics to guide treatment.
• Prolonging every course of antibiotics — Courses should be as short as effective; prolonged courses increase harm.

⭐ Key point: Nurses contribute by ensuring cultures are taken before antibiotics, giving doses on time, and prompting daily antibiotic review.$x$, null),
(194, $x$Which measure helps prevent central line-associated bloodstream infection (CLABSI)?$x$, $x$Skin antisepsis with chlorhexidine (2% in alcohol)$x$, $x$✅ Correct answer: Skin antisepsis with chlorhexidine (2% in alcohol)
SKIN ANTISEPSIS with 2% CHLORHEXIDINE GLUCONATE in 70% ALCOHOL before central line insertion and during dressing changes is one of the most effective measures to prevent CENTRAL LINE-ASSOCIATED BLOODSTREAM INFECTION (CLABSI). Chlorhexidine kills skin bacteria and has a lasting effect. Allow it to dry completely before insertion or dressing.

❌ Why the other options are wrong:
• Routine replacement of central lines every 48 hours — Routine replacement of central lines every 48 hours is not recommended; it increases risk.
• Using the femoral site in preference to all others — The FEMORAL site has a HIGHER infection risk; the subclavian site is preferred where possible.
• Leaving an unneeded line in place 'just in case' — Unneeded lines should be removed promptly; every day a line stays in increases infection risk.

⭐ Key point: CLABSI bundle: hand hygiene, maximal sterile barrier precautions, chlorhexidine skin prep, optimal site selection, and daily review of line necessity.$x$, null),
(195, $x$What is the usual target Richmond Agitation–Sedation Scale (RASS) score for a lightly sedated ICU patient?$x$, $x$−2 to 0$x$, $x$✅ Correct answer: −2 to 0
The RICHMOND AGITATION–SEDATION SCALE (RASS) ranges from +4 (combative) to −5 (unrousable). The usual target for LIGHT SEDATION in most ventilated ICU patients is −2 to 0: 0 = alert and calm; −1 = drowsy but sustained awakening to voice (more than 10 seconds); −2 = light sedation, briefly awakens to voice with eye contact (less than 10 seconds). Light sedation reduces ventilator days, ICU stay and delirium.

❌ Why the other options are wrong:
• +1 to +2 — +1 to +2 is restless to agitated.
• −5 to −4 — −5 to −4 is deep sedation (no response to voice), used only for specific indications (e.g. severe ARDS, raised ICP).
• +3 to +4 — +3 to +4 is very agitated to combative.

⭐ Key point: Assess RASS regularly and use daily sedation interruption (spontaneous awakening trials) where appropriate.$x$, null),
(196, $x$Which sedative causes the LEAST respiratory depression?$x$, $x$Dexmedetomidine$x$, $x$✅ Correct answer: Dexmedetomidine
DEXMEDETOMIDINE is an alpha-2 agonist sedative. It causes "cooperative sedation": patients are calm but ROUSABLE, and it causes MINIMAL RESPIRATORY DEPRESSION, so it can be used in non-intubated patients and during weaning and extubation. It may also reduce delirium compared with benzodiazepines.

❌ Why the other options are wrong:
• Fentanyl — Fentanyl (an opioid) causes significant respiratory depression.
• Midazolam — Midazolam (a benzodiazepine) causes respiratory depression and increases delirium.
• Propofol — Propofol causes respiratory depression and apnoea at higher doses.

⭐ Key point: Side effects of dexmedetomidine: bradycardia and hypotension. Monitor heart rate and BP closely.$x$, null),
(197, $x$Which group of drugs should generally be avoided when managing ICU delirium?$x$, $x$Benzodiazepines$x$, $x$✅ Correct answer: Benzodiazepines
BENZODIAZEPINES (e.g. midazolam, lorazepam) are associated with an INCREASED RISK of DELIRIUM in ICU patients and should generally be AVOIDED for sedation or delirium management. The exception is delirium due to ALCOHOL or benzodiazepine WITHDRAWAL, where benzodiazepines are the treatment of choice.

❌ Why the other options are wrong:
• Dexmedetomidine — Dexmedetomidine may reduce delirium and can help agitated patients.
• Antipsychotics such as haloperidol — Haloperidol may be used short-term for distressing agitation or hallucinations (though it does not shorten delirium).
• Atypical antipsychotics such as quetiapine — Quetiapine (an atypical antipsychotic) may be used for agitation in delirium.

⭐ Key point: Prevent delirium with the ABCDEF bundle: Assess pain, Both SAT and SBT, Choice of sedation, Delirium monitoring (CAM-ICU), Early mobility, Family engagement — plus sleep hygiene and reorientation.$x$, null),
(198, $x$The diaphragm, the main muscle of breathing, is supplied by the:$x$, $x$Phrenic nerve$x$, $x$✅ Correct answer: Phrenic nerve
The DIAPHRAGM, the main muscle of breathing, is supplied by the PHRENIC NERVE, which arises from the cervical spinal nerves C3, C4 and C5. When the diaphragm contracts, it moves down, enlarging the chest and drawing air into the lungs. Injury to the spinal cord at or above C3–C5 can paralyse the diaphragm, requiring long-term ventilation.

❌ Why the other options are wrong:
• Brachial plexus — The brachial plexus (C5–T1) supplies the arm.
• Sciatic nerve — The sciatic nerve supplies the leg.
• Vagus nerve — The vagus nerve supplies the heart, lungs and gut (autonomic), not the diaphragm's motor function.

⭐ Key point: Memory aid: "C3, 4, 5 keeps the diaphragm alive." Phrenic nerve injury can occur after cardiac surgery or central line insertion.$x$, null),
(199, $x$The volume of air remaining in the lungs after a maximal forced expiration is the:$x$, $x$Residual volume$x$, $x$✅ Correct answer: Residual volume
RESIDUAL VOLUME (RV) is the volume of air REMAINING in the lungs after a MAXIMAL FORCED EXPIRATION (about 1.2 L in an average adult). It cannot be breathed out and keeps the alveoli from collapsing completely. It cannot be measured by simple spirometry (needs body plethysmography or gas dilution). In COPD, residual volume is increased (air trapping).

❌ Why the other options are wrong:
• Inspiratory reserve volume — Inspiratory reserve volume (IRV) is the extra air that can be breathed IN after a normal inspiration (about 3 L).
• Tidal volume — Tidal volume (TV) is the volume of a normal breath (about 500 mL).
• Expiratory reserve volume — Expiratory reserve volume (ERV) is the extra air that can be breathed OUT after a normal expiration (about 1.1 L).

⭐ Key point: Functional residual capacity (FRC) = ERV + RV; total lung capacity = IRV + TV + ERV + RV.$x$, null),
(200, $x$Which of the following is NOT part of the conducting zone of the respiratory system?$x$, $x$Alveoli$x$, $x$✅ Correct answer: Alveoli
The respiratory system has two zones. The CONDUCTING ZONE — nose, pharynx, larynx, TRACHEA, BRONCHI, bronchioles and TERMINAL BRONCHIOLES — conducts, warms, humidifies and filters air but does NOT take part in gas exchange (it forms the anatomical DEAD SPACE, about 150 mL). The RESPIRATORY ZONE — respiratory bronchioles, alveolar ducts, alveolar sacs and ALVEOLI — is where GAS EXCHANGE happens. Alveoli are NOT part of the conducting zone.

❌ Why the other options are wrong:
• Bronchi — Bronchi are part of the conducting zone.
• Terminal bronchioles — Terminal bronchioles are the last part of the conducting zone.
• Trachea — The trachea is part of the conducting zone.

⭐ Key point: The lungs contain about 300–500 million alveoli, giving a huge surface area (about 70 m²) for gas exchange.$x$, null)
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
select count(distinct n) as "questions updated (should be 200)", count(*) as "rows changed" from upd;
