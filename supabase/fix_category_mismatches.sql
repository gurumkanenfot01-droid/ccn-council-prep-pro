-- CCN Council Prep Pro — question-bank category cleanup
-- Full audit of all 4,553 original (pre-Pre-Council) questions found 660 (14.5%)
-- mislabeled into the wrong category. This corrects them.
-- One question (id 1150) is not nursing content at all (a primary-school Hausa/Yoruba
-- teaching-methods question that slipped into the Neurology batch) and is deactivated
-- rather than recategorized. Run this once in the Supabase SQL Editor.

update public.questions set category = 'ABG & Electrolytes' where id in (412, 414, 416, 419, 617, 620, 1412, 1687, 3398, 3399, 3502, 3506, 3639, 3810, 3866);
update public.questions set category = 'Anaesthesia & Perioperative Care' where id in (241, 242, 246, 511, 550, 555, 745, 815, 1032, 1044, 1045, 1063, 1541, 1544, 1646, 1647, 3747);
update public.questions set category = 'Anatomy & Physiology' where id in (37, 909, 1040, 1041, 1432, 1487, 1503, 1594, 1602, 1634, 2649, 2650, 2651, 4415);
update public.questions set category = 'Burns & Trauma' where id in (46, 61, 73, 79, 92, 95, 174, 591, 812, 817, 1158, 1722, 1723, 1738, 1743, 1793, 1794, 3289, 3294, 3384, 3475, 3626, 3740);
update public.questions set category = 'Cardiovascular' where id in (293, 598, 650, 674, 732, 770, 921, 1616, 3245, 3247, 3248, 3662, 3663, 3664, 3666, 3667, 3668, 3669, 3670, 3677, 4422);
update public.questions set category = 'Disaster & Emergency Nursing' where id in (4, 6, 11, 321, 596, 597, 664, 667, 676, 693, 736, 738, 1039, 1043, 1131);
update public.questions set category = 'Ethics, Law & Management' where id in (84, 409, 432, 433, 437, 619, 632, 678, 829, 830, 846, 876, 1011, 1114, 1123, 1189, 1191, 1194, 1201, 1269, 1323, 1346, 1380, 1531, 1592, 1617, 1701, 3430);
update public.questions set category = 'GI, Endocrine & Metabolic' where id in (87, 106, 108, 114, 115, 126, 130, 206, 213, 214, 278, 284, 363, 489, 491, 522, 531, 534, 536, 538, 542, 545, 551, 552, 556, 557, 561, 564, 565, 566, 571, 581, 870, 891, 896, 947, 962, 963, 965, 973, 984, 987, 1024, 1025, 1093, 1097, 1127, 1129, 1163, 1212, 1284, 1315, 1317, 1388, 1394, 1460, 1470, 1566, 1567, 1614, 1664, 1751, 1752, 1754, 1755, 1760, 1783, 1791, 3037, 3258, 3259, 3260, 3261, 3262, 3263, 3433, 3434, 3535, 3656);
update public.questions set category = 'ICU Pharmacology' where id in (97, 367, 473, 474, 475, 586, 636, 903, 922, 1078, 1187, 1232, 1498, 1534, 1633);
update public.questions set category = 'Infection Prevention' where id in (175, 177, 178, 179, 180, 181, 182, 183, 184, 187, 188, 189, 190, 191, 192, 439, 445, 468, 480, 589, 1005, 1177, 1391, 1465, 1795, 1796, 1806, 1810, 1813, 1822, 1826, 1841, 1846, 1852, 1857, 1877, 1881, 1883, 1884, 1886, 1895, 1896, 1898, 1899, 1906, 1907, 1913, 1916, 1917, 1918, 1922, 1923, 1925, 1928, 1929, 1934, 1936, 1937, 1938, 3189, 3190, 3191, 3192, 3193, 3195, 3196, 3197, 3198, 3201, 3202, 3203, 3204, 3207, 3287, 3292, 3293, 3427, 4102, 4181, 4192, 4193, 4194, 4505);
update public.questions set category = 'Laboratory Sciences & Haematology' where id in (265, 946, 949, 1255, 1256, 1258, 1283, 1336, 1480, 1598, 3213, 3274, 3275, 4420);
update public.questions set category = 'Mixed Revision' where id in (81, 86, 90, 316, 427, 493, 587, 593, 622, 633, 637, 638, 639, 643, 644, 646, 666, 823, 824, 825, 858, 873, 940, 1145, 1147, 1173, 1233, 1351, 1353, 1354, 1381, 1496, 1499, 1500, 1532, 1533, 1537, 1538, 1609, 2582, 3431, 4246);
update public.questions set category = 'Neurology' where id in (304, 325, 327, 816, 836, 892, 894, 1156, 1205, 1239, 1360, 1464, 1494, 1648, 2581, 2591, 2592, 3253, 3276, 3295, 4237, 4499, 4507);
update public.questions set category = 'Nursing Informatics & ICT' where id in (840, 1425, 1441, 1448);
update public.questions set category = 'OSCE Practice' where id in (585, 1668, 3624);
update public.questions set category = 'Obstetric & Neonatal' where id in (224, 225, 226, 229, 230, 231, 232, 233, 234, 236, 262, 263, 264, 267, 272, 326, 1070, 1072, 1073, 1077, 1080, 1087, 1088, 1090, 1091, 1095, 1099, 1100, 1101, 1102, 1103, 1104, 1105, 1108, 1110, 1111, 1220, 1221, 1227, 1295, 1296, 1297, 1300, 1355, 1356, 1357, 1358, 1361, 1362, 1364, 1365, 1366, 1367, 1419, 1420, 1786, 1789, 3366, 3367);
update public.questions set category = 'Radiology & Imaging' where id in (297, 1019, 1020, 1179, 1304, 1407, 1421, 1422, 2236, 2237, 2238, 2239, 2240, 2241, 2242, 2243, 2244, 2245, 2246, 2247, 2248, 2249, 2250, 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258, 2259, 2260, 2261, 2262, 2263, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2271, 2272, 2273, 2274, 2275, 2276, 2277, 2278, 2279, 2280, 2281, 2282, 2283);
update public.questions set category = 'Rehabilitation & Mobilization' where id in (82, 342, 357, 358, 360, 364, 365, 1006, 1138, 1252, 1277, 1278, 1281, 1290, 1291, 1292, 1310, 1607, 1939, 3429, 4502, 4506);
update public.questions set category = 'Renal & Fluid Balance' where id in (455, 461, 570, 618, 983, 1238, 1338, 1339, 1344, 1399, 1411, 1428, 1461, 1529, 1744, 1745, 1746, 1747, 1748, 1749, 1756, 1757, 1761, 3272, 3273, 3505, 4447);
update public.questions set category = 'Research & Nursing Process' where id in (402, 865, 874, 936, 1530, 1553, 1611, 1659, 1669, 1675);
update public.questions set category = 'Respiratory' where id in (80, 143, 162, 247, 334, 375, 377, 540, 558, 601, 697, 834, 835, 884, 967, 1048, 1054, 1162, 1166, 1459, 1511, 1521, 1526, 1674, 1697, 3038, 3235, 3236, 3237, 3238, 3244, 3251, 3255, 3266, 3267, 3268, 3290, 3291, 3681, 3682, 3683, 3684, 4241, 4445, 4452, 4504);
update public.questions set category = 'Shock & Haemorrhage' where id in (507, 508, 594, 707, 708, 709, 710, 711, 716, 718, 719, 721, 723, 726, 727, 728, 811, 814, 895, 1462, 2497, 2498, 2499, 2500, 2501, 2502, 2503, 2504, 2505, 2506, 2507, 2508, 2509, 2510, 2511, 2512, 2513, 2514, 2515, 2516, 3323, 4410, 4451);

-- Not genuine nursing content — remove from the active bank
update public.questions set is_active = false where id in (1150);
