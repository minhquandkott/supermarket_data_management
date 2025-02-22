INSERT INTO currency (currency_id, currency_unit) VALUES
(1, 'CAD');

INSERT INTO department (department_id, manager, de_name, de_type, de_location, de_postal, de_status) VALUES
(1, NULL, 'Bishop, Munoz and Watts', 0, '01410 Juan Passage Apt. 217
West Darrell, SK S3G9L5', 'J2E 4A1', 0),
(2, NULL, 'Jenkins, Ryan and Meza', 2, '65060 Rachel Road
New Dianeshire, BC M4K1P5', 'V8R5L2', 0),
(3, NULL, 'Simmons Inc', 2, '7914 Michael Port
New Kennethchester, NS J1R1G8', 'L7R3L6', 1),
(4, NULL, 'Mann-Guzman', 0, '800 Laurie Falls
New Melissa, SK J4V 9P3', 'C1P5J9', 1),
(5, NULL, 'Johnson Group', 0, '71074 Nicole Forks
Martinezside, NU K6P2A8', 'J7R 9P7', 2),
(6, NULL, 'Villarreal, Paul and Middleton', 1, '810 Michael Meadow
Mullinsstad, SK M4S2G1', 'B9K 2T7', 1),
(7, NULL, 'Clark-Sanchez', 1, '938 Suzanne Road
West Andreatown, YT Y1M8X4', 'L3S1C5', 1),
(8, NULL, 'Williams, Schneider and Nelson', 1, '32483 Williams Hills
Lake Tony, QC M8V8B6', 'J1R7H6', 1),
(9, NULL, 'Velez PLC', 2, '5013 Evans Avenue Apt. 080
East Carrieview, ON M6R 3S2', 'J5H 6V1', 1),
(10, NULL, 'Yoder-Miller', 2, '75147 Michael Passage Apt. 491
North Allison, NT K6G 6X2', 'E9C 6M2', 2),
(11, NULL, 'Mitchell and Sons', 1, '66452 Diaz Plain
New Darlene, QC A8Y 1L4', 'J5T8K3', 0),
(12, NULL, 'Benjamin-Wall', 0, '8473 Paul Expressway
Sosaview, QC H7P1A3', 'G8S4H9', 0),
(13, NULL, 'Martinez and Sons', 1, '2886 Juarez Lane Suite 234
Katherinemouth, NT E2L 3P6', 'Y4E2G6', 0),
(14, NULL, 'Robinson, Gomez and Vaughan', 0, '06635 Collins Shores
South Ronald, MB K3R 5P2', 'G9X4V3', 1),
(15, NULL, 'Reed-Dominguez', 2, '327 Marie Lake Apt. 224
Jeremychester, AB N2B9H1', 'H3G6M3', 0),
(16, NULL, 'Fox Group', 0, '356 Clark Rue
Russellport, SK K6S 2R7', 'B4G6T5', 2),
(17, NULL, 'Salinas, Ortiz and Lucas', 0, '077 Dana Garden Apt. 675
Stephaniehaven, NS H3Y 1T2', 'C2K 1S3', 0),
(18, NULL, 'Shaw, Leonard and Anderson', 1, '638 Jennifer Green
West Jennifer, NT P9C7C4', 'H2L 2T5', 1),
(19, NULL, 'Williams, Chambers and Lane', 0, '180 Sosa Point
Debbiehaven, YT L2B 8K2', 'S2T5Y5', 0),
(20, NULL, 'Barnes Inc', 0, '99890 Bryan Loop
Lake Brianhaven, BC P9Y 7L1', 'H2K9B4', 0);

INSERT INTO employee (employee_id, department_id, first_name, last_name, em_gender, em_birthday, em_phone, em_email, em_address, em_postcode, em_position, year_hired, skill, hourly_wage, currency_id, location_type, em_status) VALUES
(1, 10, 'Michael', 'Higgins', 'Male', '1991-03-19', '+1 (929) 677-0032', 'murphywilliam@yahoo.com', '1660 Preston Mission Suite 678
Lindahaven, ON J7K 8A3', 'L2M 8L5', 'Automotive engineer', 2021, 'Technical Support', 29.4, 1, 0, 0),
(2, 2, 'Laura', 'Shepard', 'Other', '1968-07-30', '783 640 3013', 'christinedaniels@graves.com', '3559 Jennifer Forge Suite 713
Matthewport, MB G2S3J5', 'H9S 3H6', 'Industrial buyer', 2011, 'Technical Support', 48.36, 1, 2, 1),
(3, 20, 'Ann', 'Coleman', 'Female', '1970-12-18', '1 (138) 862-9023', 'kevinjones@smith-howell.com', '1231 John Parks
Port Ethan, MB T7P 7L7', 'H7J6A5', 'Geochemist', 2007, 'Technical Support', 20.57, 1, 0, 1),
(4, 17, 'Rebecca', 'Kennedy', 'Other', '1981-10-24', '310 553 0737', 'steven74@gmail.com', '992 Curtis Bypass Apt. 359
South Laurafurt, PE P3E 9N6', 'J8K8H4', 'Fine artist', 2024, 'Management', 49.17, 1, 2, 0),
(5, 14, 'Melissa', 'Stanley', 'Female', '1993-05-30', '1 (136) 364-9200', 'holly79@gmail.com', '5789 Charles Mountains
Osborneborough, QC M8A7X2', 'P7V8G6', 'Electronics engineer', 2014, 'Cash Handling', 43.9, 1, 0, 0),
(6, 14, 'Peter', 'Page', 'Female', '1999-10-03', '655-783-8396 x484', 'oarcher@leon.com', '888 Faulkner Springs
Amandabury, PE N8L 8T2', 'P6C4B9', 'Historic buildings inspector/conservation officer', 2013, 'Inventory Management', 29.67, 1, 1, 1),
(7, 20, 'Ernest', 'Smith', 'Other', '1996-11-13', '(833) 194-6559 x047', 'melissabernard@lewis.com', '36712 Rodriguez Throughway
Lake Sean, YT E8E 2S4', 'N6N 9B3', 'Producer, television/film/video', 2002, 'Cash Handling', 41.29, 1, 0, 0),
(8, 7, 'Sarah', 'Spencer', 'Male', '1976-12-31', '(630) 958-1441 x651', 'dana94@gmail.com', '41514 Robert Passage Suite 160
Brandonberg, NS M6V 2E6', 'J7L 2R3', 'Air traffic controller', 2009, 'Data Analysis', 33.67, 1, 2, 0),
(9, 7, 'Angela', 'Smith', 'Female', '1999-08-25', '903-794-1230', 'rodney64@hotmail.com', '92524 Jack Squares Suite 019
East Sarahchester, NS L1P 7V1', 'L3S 3R5', 'Illustrator', 2008, 'Logistics', 32.5, 1, 1, 1),
(10, 10, 'James', 'Jenkins', 'Male', '2005-06-06', '1 (848) 866-8225', 'william43@yahoo.com', '92467 Robin Lake
Robinsonview, ON V5V9B7', 'N5T 9T4', 'Insurance broker', 2006, 'Cash Handling', 16.98, 1, 1, 0),
(11, 11, 'Patricia', 'Hall', 'Female', '1966-08-17', '381-453-3521', 'tammydavis@smith.com', '4870 Martin Harbor
Durhamstad, QC H5V 7H5', 'T3P 5P8', 'Psychiatrist', 2004, 'Management', 47.32, 1, 2, 0),
(12, 19, 'Shelby', 'Johnson', 'Male', '1978-05-13', '764 812 8176', 'martingregory@gmail.com', '53475 Susan Falls Suite 364
Hoffmanstad, QC T5A 8H2', 'S2T 7R5', 'Professor Emeritus', 2022, 'Logistics', 27.13, 1, 0, 1),
(13, 20, 'Andrew', 'Gibbs', 'Other', '1962-03-04', '(312) 532-1649', 'james10@bowen.com', '907 Jennifer Walks
Shanefurt, NT V4K 2S4', 'S3T4T2', 'Research scientist (life sciences)', 2006, 'Cash Handling', 49.11, 1, 2, 0),
(14, 10, 'Emily', 'Ward', 'Female', '1971-01-22', '(681) 651-1427 x860', 'abaker@gmail.com', '230 Wagner Loaf
West Amanda, MB V2M 3V5', 'P1X1G7', 'Scientist, research (medical)', 2006, 'Cash Handling', 19.75, 1, 0, 1),
(15, 4, 'Lynn', 'Jones', 'Other', '1964-05-20', '979.552.9838', 'gary40@yahoo.com', '8040 Sanchez Plaza
South Maria, QC B4K 3R8', 'A6L 2K9', 'Scientist, research (life sciences)', 2007, 'Data Analysis', 19.18, 1, 1, 0),
(16, 17, 'Cynthia', 'Barber', 'Female', '2002-06-11', '382 628 0878', 'montoyamisty@patterson.com', '22637 Dennis Mall
New Kimberly, AB T3J 3G7', 'Y9H5B7', 'Press sub', 2023, 'Data Analysis', 40.37, 1, 2, 0),
(17, 15, 'Cole', 'Cruz', 'Other', '1981-05-22', '162.317.6352', 'john41@gmail.com', '36388 Fletcher Summit Suite 976
Alisonborough, AB P9J1H9', 'H5A 1H2', 'Computer games developer', 2016, 'Logistics', 40.26, 1, 0, 1),
(18, 11, 'David', 'Stewart', 'Female', '1970-08-03', '(638) 721-0666', 'ymoss@gmail.com', '540 Cruz Shoal
North Bryanbury, NL N2R5Y6', 'E3H 2J2', 'Clinical biochemist', 2015, 'Marketing', 47.99, 1, 0, 1),
(19, 14, 'Brooke', 'Williams', 'Other', '2000-02-24', '541 402 1835', 'david42@hotmail.com', '88713 Clark Ranch Apt. 150
North Jennifer, NS R3M3E7', 'E9R3R8', 'Glass blower/designer', 2007, 'Accounting', 21.2, 1, 2, 0),
(20, 16, 'Sharon', 'Johnson', 'Other', '1991-10-16', '152-600-6520 x775', 'lkhan@bennett.com', '680 Christina Centers
Cooperfurt, MB L1J2R3', 'A9N4B3', 'Engineer, drilling', 2021, 'Marketing', 20.04, 1, 2, 0),
(21, 2, 'Suzanne', 'Morales', 'Other', '2005-05-12', '377.206.8338', 'samantha93@hughes-salas.org', '72451 Hill Mountain
Zimmermanside, PE C3V 7G3', 'N1S1H7', 'Retail buyer', 2012, 'Management', 35.78, 1, 0, 0),
(22, 13, 'Andrew', 'Brown', 'Male', '1959-03-08', '+1 (777) 543-5261', 'johnsonkristin@yahoo.com', '656 Wallace Squares
Wilkersonburgh, ON S2N 2C2', 'C3S9A2', 'Research scientist (life sciences)', 2019, 'Accounting', 15.76, 1, 1, 1),
(23, 18, 'Howard', 'Zhang', 'Other', '1993-01-21', '562.523.1870', 'ichapman@gmail.com', '751 Morse Overpass
Jillhaven, NB N7A 4J7', 'C8V5A6', 'Music tutor', 2011, 'Cash Handling', 15.93, 1, 1, 0),
(24, 13, 'Amy', 'Malone', 'Other', '1981-07-29', '(105) 583-4979 x979', 'hendricksmelissa@rodriguez-garcia.biz', '12379 Elizabeth Cliff
Donaldchester, QC R5H 9V4', 'H8A 8K1', 'Designer, industrial/product', 2003, 'Data Analysis', 30.67, 1, 1, 1),
(25, 8, 'Andrew', 'Davis', 'Other', '1967-03-05', '(191) 904-5330', 'zacharydennis@yahoo.com', '822 Cook Mountain
Markhaven, BC R6C 8K5', 'T3Y 5J9', 'Financial controller', 2012, 'Technical Support', 49.31, 1, 2, 1),
(26, 12, 'Sabrina', 'Chavez', 'Female', '1999-05-22', '(597) 026-6482', 'ljames@gmail.com', '5764 Ramsey Spurs
Lake Caleb, YT T7N9P9', 'A7L 4J8', 'Accountant, chartered', 2003, 'Supply Chain', 38.39, 1, 1, 0),
(27, 10, 'William', 'Shaw', 'Male', '1987-11-04', '711 116 1628', 'oparks@mooney-rice.com', '426 Andrews Pass Suite 678
Josephville, YT S8N 1H9', 'V3Y2C6', 'Commissioning editor', 2018, 'Technical Support', 34.73, 1, 1, 1),
(28, 7, 'Katie', 'Payne', 'Male', '1987-05-11', '118-982-8888 x453', 'andersonjade@gmail.com', '089 Kaitlin Streets Apt. 443
Thorntonhaven, NL H6R 6S7', 'N6X 5G2', 'Designer, blown glass/stained glass', 2004, 'Supply Chain', 27.36, 1, 0, 0),
(29, 12, 'Rebecca', 'Brooks', 'Other', '1991-03-13', '407 071 6310', 'oterry@bailey.com', '4431 Caroline Circle
Danielmouth, NL B8B 2A4', 'H3Y5T6', 'Editor, magazine features', 2016, 'Inventory Management', 21.35, 1, 1, 0),
(30, 12, 'Mark', 'Conway', 'Female', '1961-11-13', '1 (620) 362-6674', 'zcarlson@gmail.com', '04939 Wright Mountain
Hoffmanmouth, MB M7A 6N3', 'A3H7B7', 'Academic librarian', 2001, 'Marketing', 43.27, 1, 0, 1),
(31, 1, 'Jerome', 'Brown', 'Female', '1997-09-17', '516 874 1601', 'wreilly@hotmail.com', '693 James Courts
Davisburgh, MB T6G5R3', 'K6X 9E9', 'Accountant, chartered certified', 2003, 'Sales', 38.19, 1, 1, 0),
(32, 2, 'Sergio', 'Donaldson', 'Other', '1984-05-25', '393.214.2978', 'ymiller@smith.biz', '1272 Hubbard Vista
Lake Alishaview, QC M5J 8P3', 'G3N 8K2', 'Production manager', 2003, 'Driving', 34.79, 1, 2, 1),
(33, 4, 'Jeffery', 'Garcia', 'Female', '2001-01-19', '1-251-048-4693', 'krodriguez@dixon.com', '03543 Tiffany Divide Apt. 207
Whitneyborough, NL G3V5N3', 'C7E 9E7', 'Lecturer, further education', 2024, 'Cash Handling', 17.61, 1, 0, 1),
(34, 2, 'Jonathan', 'Garcia', 'Male', '1964-01-21', '282.711.6995', 'mooneyashley@yahoo.com', '1352 Robinson Rue
Lake Eric, SK G9J 4H7', 'A2A2G4', 'Designer, multimedia', 2004, 'Data Analysis', 44.99, 1, 0, 1),
(35, 3, 'Dylan', 'Hicks', 'Male', '1991-08-08', '217-191-0987 x494', 'jharris@johnson-riley.com', '3904 Marshall Summit
South Kevinfurt, MB C8E5J3', 'E6E 5J3', 'Museum/gallery exhibitions officer', 2016, 'Marketing', 26.86, 1, 1, 0),
(36, 1, 'Barbara', 'Brown', 'Female', '1983-02-12', '1 (733) 654-3846', 'melissa94@hotmail.com', '7723 Dalton Groves
East Melissa, YT X9E 2V3', 'H9J 2M2', 'Tax inspector', 2004, 'Inventory Management', 30.85, 1, 0, 0),
(37, 1, 'James', 'Riggs', 'Female', '1960-06-03', '739 930 3560', 'lewiskristen@hotmail.com', '46423 John Plaza Suite 398
Nunezmouth, MB V3T5C2', 'V5L 1Y5', 'Furniture conservator/restorer', 2020, 'Inventory Management', 44.26, 1, 0, 0),
(38, 3, 'Katherine', 'Terry', 'Male', '1983-03-09', '755-088-2526', 'medinamichelle@gmail.com', '77136 Melissa Branch Apt. 484
Kimberg, SK R5G9L7', 'E1L 7E2', 'Counsellor', 2010, 'Technical Support', 36.52, 1, 2, 1),
(39, 1, 'Chris', 'Lam', 'Male', '1961-11-03', '1 (410) 117-5720', 'georgehunter@yahoo.com', '49730 Smith Ridges
Wileybury, MB H9E2B4', 'R7H 3B3', 'Hydrogeologist', 2017, 'Technical Support', 43.72, 1, 0, 1),
(40, 9, 'Jeffrey', 'Serrano', 'Other', '1961-05-05', '223 496 5903', 'edwardsdouglas@williams.com', '19616 Scott Extensions
North Vanessaview, MB E5V5K1', 'Y6L7J3', 'Administrator, arts', 2008, 'Technical Support', 30.66, 1, 2, 0),
(41, 1, 'Misty', 'Gilmore', 'Other', '1982-01-03', '(712) 635-9564', 'stephensonjeffery@turner.info', '64054 Victoria Center
North Brent, NL C5V9E3', 'L1L 2V4', 'Physicist, medical', 2020, 'Data Analysis', 31.13, 1, 1, 1),
(42, 13, 'Lori', 'King', 'Other', '1968-03-10', '988-718-0963', 'jeremy22@gmail.com', '2346 Levy Fork Apt. 454
Lake Angela, NU P3H 6G6', 'S7E3H8', 'Training and development officer', 2019, 'Marketing', 32.94, 1, 0, 0),
(43, 7, 'Raymond', 'Dudley', 'Other', '1994-01-10', '1-745-767-3506', 'paige95@sanchez.com', '2078 Joseph Unions Apt. 966
Hughesberg, NU E7M 9G3', 'V3A 3S1', 'Scientist, forensic', 2011, 'Driving', 15.52, 1, 2, 1),
(44, 3, 'Edward', 'Robbins', 'Other', '2004-06-06', '1-665-770-9502', 'beverlyburnett@walker.biz', '63496 Ann Plains
Michaelport, YT S2B 6S8', 'B7R 1R5', 'Actor', 2024, 'Customer Service', 24.01, 1, 1, 1),
(45, 4, 'Michael', 'Phelps', 'Female', '1999-10-16', '(794) 831-2135 x678', 'gregory70@holmes-thomas.net', '1479 Michael Estate
North Sarah, ON C5H 7N9', 'A6K 4V8', 'Runner, broadcasting/film/video', 2017, 'Technical Support', 44.45, 1, 1, 0),
(46, 13, 'Jill', 'Kelley', 'Male', '1966-03-20', '1 (997) 113-0524', 'btorres@yahoo.com', '1674 Pruitt Brook Apt. 294
Lake Amanda, NU T6E 4A7', 'C1T 9N2', 'Surveyor, planning and development', 2015, 'Customer Service', 19.48, 1, 0, 0),
(47, 18, 'Michele', 'Kline', 'Other', '1984-05-21', '1 (877) 950-7115', 'tiffany68@lozano.com', '550 Aguilar Mission
Heatherchester, NL T5C 8J5', 'K3S1T3', 'Clinical embryologist', 2022, 'Driving', 45.82, 1, 1, 1),
(48, 9, 'Holly', 'Rogers', 'Male', '1961-01-22', '497 149 9596', 'melissa80@gomez-miller.com', '40277 Elizabeth Meadow
Duartefurt, NS G1V 3P9', 'C1B 2G9', 'Industrial/product designer', 2002, 'Cash Handling', 46.15, 1, 2, 1),
(49, 15, 'Gregory', 'Schneider', 'Other', '1970-10-25', '1-233-712-7625', 'johnking@fowler-mitchell.org', '466 Torres Heights
East Mariechester, ON V3X4A4', 'C5Y9K5', 'Early years teacher', 2000, 'Sales', 32.17, 1, 2, 1),
(50, 17, 'Brian', 'Hall', 'Male', '1983-07-24', '1-411-281-5830', 'karencochran@hotmail.com', '26687 Sarah Fields Apt. 966
Brettborough, PE C4E 4M9', 'C5E 8P1', 'Scientist, product/process development', 2017, 'Cash Handling', 24.17, 1, 2, 1),
(51, 14, 'Monica', 'Roberson', 'Female', '1978-10-08', '296 878 4672', 'zmahoney@lewis.com', '267 Wilson Junctions
North Nicholas, NT V3M7Y6', 'C4B1C4', 'Podiatrist', 2015, 'Cash Handling', 48.86, 1, 2, 0),
(52, 4, 'Lori', 'Wilson', 'Other', '1978-05-01', '521 371 7993', 'simmonsjocelyn@swanson.org', '8024 Leonard Mountains Apt. 651
South Cameron, NB A6X9M4', 'B5E 8E2', 'Analytical chemist', 2012, 'Management', 28.1, 1, 0, 0),
(53, 9, 'Jared', 'Bell', 'Female', '1984-02-20', '(484) 902-0603', 'perkinsandrew@yahoo.com', '8356 Collins Streets
Virginiahaven, MB Y5E4A9', 'T4V 5L1', 'Careers adviser', 2009, 'Logistics', 49.81, 1, 1, 1),
(54, 5, 'Stephanie', 'Tate', 'Other', '2004-02-07', '(412) 364-5403', 'leahmendez@torres.com', '67918 Thomas Centers Apt. 494
Port Michaelshire, NU V7C 4C6', 'M4T 3J6', 'Chartered legal executive (England and Wales)', 2000, 'Management', 16.86, 1, 0, 0),
(55, 5, 'Melissa', 'Jones', 'Other', '1988-05-13', '804-571-1702 x762', 'wanderson@mcintyre.com', '1905 Susan Mountains Apt. 193
Ianhaven, NS A4X 3X4', 'P9Y 3L6', 'Tourism officer', 2001, 'Inventory Management', 17.84, 1, 0, 1),
(56, 16, 'Rebecca', 'Pierce', 'Other', '1974-02-28', '(619) 167-4890', 'hendrickserin@yahoo.com', '16719 Kimberly Junctions Suite 811
Lewistown, MB H9M1H3', 'M6T 3V5', 'Interpreter', 2019, 'Supply Chain', 26.45, 1, 1, 0),
(57, 1, 'Jennifer', 'Hawkins', 'Female', '2002-01-07', '771 969 6103', 'emily68@reilly-white.info', '07039 Sharon Highway Suite 227
West Dakotahaven, PE C5V3M4', 'A9P 7E3', 'Psychotherapist, child', 2000, 'Customer Service', 43.08, 1, 2, 1),
(58, 17, 'Nicole', 'Brown', 'Male', '1992-02-29', '1 (395) 494-4587', 'ymartinez@smith.biz', '09511 Erica Causeway Suite 132
Johnport, NB K2S 8K4', 'E5C8R4', 'Social worker', 2010, 'Marketing', 22.67, 1, 1, 1),
(59, 4, 'Zachary', 'Ballard', 'Other', '1991-01-16', '(713) 128-7629 x988', 'keith41@clark.org', '4476 Bernard Corner
New Andrew, NT A4L 7P7', 'R1S 3L1', 'Leisure centre manager', 2008, 'Logistics', 36.94, 1, 0, 1),
(60, 14, 'Kathleen', 'Bradley', 'Female', '1971-08-02', '640-384-7527 x993', 'ybyrd@yahoo.com', '0938 Clark Avenue
Michaelhaven, MB S4M5B7', 'B2H 8A5', 'Warden/ranger', 2024, 'Technical Support', 19.24, 1, 0, 0),
(61, 1, 'Briana', 'Fields', 'Other', '1976-06-15', '(105) 223-1178 x659', 'richardsonamanda@hotmail.com', '41431 Mccann Ridge
Lake Bryan, BC T7C 9M9', 'G6M 7M4', 'Administrator, education', 2023, 'Supply Chain', 23.05, 1, 2, 0),
(62, 12, 'Linda', 'Johnson', 'Male', '1970-10-14', '399-330-7558 x774', 'aguirredebra@walker.org', '83664 Herrera Turnpike
Robertmouth, NB P5V 8A1', 'A8H3X3', 'Midwife', 2001, 'Customer Service', 23.83, 1, 0, 1),
(63, 18, 'Laura', 'Bradley', 'Female', '1969-06-07', '226.708.4697', 'bcollins@lawrence.net', '754 Karen Terrace Suite 958
Lake Hannahshire, SK R3E3X7', 'C8G8T8', 'Ship broker', 2017, 'Data Analysis', 42.96, 1, 2, 1),
(64, 18, 'Corey', 'Reyes', 'Male', '1987-12-09', '+1 (521) 008-6201', 'ywilson@johnson.com', '3967 Kyle Square Suite 866
New Julieville, NL G4X 2C8', 'A2J 1A5', 'Personnel officer', 2019, 'Accounting', 35.73, 1, 1, 1),
(65, 12, 'Juan', 'Johnson', 'Female', '1972-05-01', '967-910-9045', 'amanda28@king.info', '4877 Stephens Bridge
East Craigburgh, AB M1A 2B8', 'N2B3S7', 'Customer service manager', 2013, 'Inventory Management', 22.5, 1, 2, 1),
(66, 11, 'Diane', 'Price', 'Male', '2000-08-07', '1-160-168-1462', 'desireesantiago@lee.org', '335 Tiffany Trafficway
North Heather, MB Y2Y9E8', 'Y7H3G3', 'Theme park manager', 2015, 'Cash Handling', 25.08, 1, 1, 0),
(67, 6, 'Ruben', 'Brown', 'Male', '1967-04-30', '(960) 384-0842', 'kingshannon@dean-neal.com', '42385 Martin Fork
Ianborough, NB S3K 7M2', 'N2R 2X2', 'Insurance risk surveyor', 2002, 'Customer Service', 17.86, 1, 0, 1),
(68, 20, 'Debra', 'Brown', 'Other', '1973-06-30', '+1 (890) 551-4467', 'osanchez@yahoo.com', '25931 Ethan Mill
Lake Justinside, BC P5G 1A4', 'B8X7H5', 'Environmental health practitioner', 2014, 'Marketing', 33.21, 1, 2, 0),
(69, 18, 'Becky', 'Fisher', 'Other', '1970-12-01', '807-371-8557', 'jeffery48@burke.com', '6220 Stewart Junction
Port Jennifer, AB P8L 5G9', 'P9S 6B4', 'Curator', 2019, 'Cash Handling', 46.33, 1, 2, 0),
(70, 20, 'Shawna', 'Bernard', 'Male', '1977-06-18', '+1 (543) 480-8002', 'bryan48@yahoo.com', '548 Villegas Drives
Lake Emilychester, PE A2J 6C1', 'R9Y 3P6', 'Holiday representative', 2006, 'Marketing', 18.43, 1, 1, 1),
(71, 1, 'Keith', 'Fisher', 'Male', '1998-12-18', '(820) 751-2523', 'gabriel53@yahoo.com', '4011 Young Curve Apt. 957
Port Jamie, ON R6S1A2', 'S6K 8B8', 'Cytogeneticist', 2005, 'Logistics', 35.02, 1, 0, 0),
(72, 4, 'Shirley', 'Fox', 'Other', '1982-08-25', '923.728.6601', 'jackie26@hotmail.com', '56248 Mccall Causeway Apt. 620
West Barbara, NS V8M 8T4', 'C2M 3G7', 'Engineer, land', 2018, 'Driving', 18.2, 1, 2, 0),
(73, 16, 'Amy', 'Greene', 'Female', '1979-10-10', '760-537-0603', 'dannylynch@yahoo.com', '693 Parrish Square
Pamelafort, MB E3V8J6', 'Y3V9E9', 'Stage manager', 2024, 'Logistics', 15.71, 1, 0, 0),
(74, 16, 'Matthew', 'Carpenter', 'Female', '1989-11-19', '770-485-1064', 'jacquelinewarren@ramirez-dennis.info', '68526 Garza Turnpike Suite 795
South Lindsaystad, QC K1S 6K7', 'B7P5M4', 'Chemical engineer', 2000, 'Management', 41.7, 1, 0, 0),
(75, 2, 'Robert', 'Wells', 'Other', '2004-08-13', '(120) 069-4680 x425', 'robertsanchez@hotmail.com', '61795 Warren Unions
New Arianaport, YT R9C2B1', 'J6V 2E8', 'Probation officer', 2012, 'Cash Handling', 34.35, 1, 0, 1),
(76, 10, 'Xavier', 'Walker', 'Female', '1984-08-05', '+1 (368) 481-3728', 'ericoconnor@reid-holder.biz', '851 Sullivan Springs Apt. 567
New Timothy, PE T2B 7P8', 'L8G1K2', 'Meteorologist', 2016, 'Customer Service', 20.47, 1, 0, 1),
(77, 15, 'Daniel', 'Brown', 'Female', '1995-07-11', '(606) 567-4453 x453', 'marymartin@rodriguez-davis.com', '01697 Angel Stravenue
Lake Chelsey, PE E9G8L2', 'T4E4G3', 'Engineer, automotive', 2010, 'Cash Handling', 16.12, 1, 1, 0),
(78, 18, 'Danielle', 'Martin', 'Male', '1969-11-22', '1 (350) 695-2187', 'wrighttiffany@hotmail.com', '164 Luis Manors
Colechester, PE X6G9N2', 'T6X 5B7', 'Psychiatric nurse', 2016, 'Management', 16.02, 1, 1, 0),
(79, 2, 'Erika', 'Young', 'Other', '1960-01-13', '1-973-438-3393', 'matthewkennedy@gmail.com', '9959 Frances Rest
Rossburgh, NT N2B1K8', 'S5J1M5', 'Hydrographic surveyor', 2007, 'Supply Chain', 18.21, 1, 2, 0),
(80, 17, 'Jeffrey', 'Diaz', 'Female', '1979-08-20', '1-644-338-7323', 'rebeccaparker@lambert.com', '0337 Melissa Pines
South Michaeltown, ON L5Y1C5', 'P1V 3G8', 'Armed forces operational officer', 2002, 'Technical Support', 43.4, 1, 1, 1),
(81, 17, 'Sarah', 'Steele', 'Male', '1969-10-01', '331 801 7206', 'timothy05@gmail.com', '4208 Robert Hollow
West Manuel, SK J4S3M9', 'H2K2C4', 'Records manager', 2017, 'Data Analysis', 30.11, 1, 1, 0),
(82, 15, 'Jeffrey', 'Oneill', 'Other', '1990-07-29', '(351) 089-0827 x821', 'pgarcia@gmail.com', '718 Cynthia Shoals
West Tashamouth, ON S4T5P3', 'V3N 3G3', 'Science writer', 2022, 'Customer Service', 44.19, 1, 0, 0),
(83, 15, 'Emily', 'Ramirez', 'Other', '1969-06-23', '941-072-1783 x056', 'wgarcia@stevens.biz', '83771 Jack Ridges Suite 615
Garzatown, BC J9R8M3', 'X6R6B8', 'Herbalist', 2011, 'Technical Support', 48.35, 1, 0, 0),
(84, 19, 'James', 'Fox', 'Male', '1997-12-16', '129-899-2503', 'omoore@powers-bean.com', '28420 Brenda Valley Apt. 087
New Timothyberg, NS K2L2B3', 'N5Y 1G5', 'Private music teacher', 2014, 'Logistics', 33.41, 1, 0, 0),
(85, 11, 'Joshua', 'Jones', 'Female', '2001-11-26', '+1 (227) 117-6675', 'robert39@castillo.com', '6520 Cunningham Corners
Port Justinmouth, NL G6X 6X3', 'V7R4H8', 'Therapist, music', 2000, 'Technical Support', 25.73, 1, 2, 1),
(86, 18, 'Amy', 'Bradley', 'Male', '2003-08-02', '1-884-105-9838', 'patriciajohnson@frost.info', '06526 Matthew Ridge Suite 009
Michelleville, BC P9V 3J6', 'Y7V3S7', 'Fitness centre manager', 2012, 'Technical Support', 26.52, 1, 0, 0),
(87, 11, 'Susan', 'Johnson', 'Male', '1974-10-18', '1-312-721-0027', 'ronniewheeler@daniel.com', '599 Thomas Route
North Sarah, AB S1S4J5', 'R4A1X1', 'Research officer, government', 2011, 'Technical Support', 45.18, 1, 2, 1),
(88, 4, 'Ashley', 'Mayo', 'Male', '2006-03-13', '+1 (701) 605-2414', 'shawkristen@morales-miller.org', '93276 Angelica Key
Brayport, PE Y9P 2E8', 'V5C3L5', 'Doctor, hospital', 2004, 'Inventory Management', 36.41, 1, 2, 0),
(89, 12, 'Elaine', 'Mclean', 'Male', '1991-05-30', '894 881 1947', 'fbrown@morales.com', '8047 Victoria Plains Suite 610
Lake Jeremytown, AB B5T 6S5', 'L6X8R8', 'Exhibition designer', 2011, 'Driving', 29.48, 1, 0, 1),
(90, 14, 'Dennis', 'Conrad', 'Other', '1965-10-03', '807.269.3758', 'clarkdylan@yahoo.com', '8903 Derek Ways
New Darrenberg, NL A2J 8C9', 'L5T5E6', 'Cabin crew', 2022, 'Cash Handling', 49.49, 1, 1, 1),
(91, 12, 'Steven', 'Stokes', 'Other', '1981-04-04', '453-151-3015 x453', 'riosjohn@shaw.com', '2175 Julie Radial
Johnsonside, BC X2N 3H4', 'N1Y 4K6', 'Biochemist, clinical', 2012, 'Customer Service', 22.09, 1, 1, 1),
(92, 19, 'Tiffany', 'Boyd', 'Other', '1997-04-29', '(973) 130-3125', 'jacobchung@graves.com', '21342 Adams Cliff Apt. 234
South Stacychester, SK X4V 6S6', 'R5K9G8', 'Health service manager', 2010, 'Customer Service', 37.76, 1, 2, 1),
(93, 20, 'Jonathan', 'Terrell', 'Male', '1985-04-22', '+1 (287) 528-0096', 'carneychristopher@hotmail.com', '01754 Taylor Keys Apt. 870
Sheilaside, NT J4M4H4', 'A7S 6B7', 'Scientist, research (medical)', 2002, 'Cash Handling', 34.28, 1, 1, 0),
(94, 5, 'Melissa', 'Burns', 'Other', '1975-09-19', '118-139-6577', 'eflowers@jones.org', '3037 Smith Landing Apt. 316
Velezfurt, NB R3M7R4', 'N4S 3A1', 'Building control surveyor', 2001, 'Customer Service', 28.59, 1, 1, 0),
(95, 19, 'Deborah', 'Wang', 'Female', '1975-11-10', '310.620.6491', 'lwiley@jackson-andrews.com', '46689 Jerry Drive Apt. 669
Millerborough, QC H8V 8C7', 'R4J 5V5', 'Ambulance person', 2016, 'Sales', 41.22, 1, 0, 0),
(96, 17, 'Stanley', 'Wilson', 'Other', '1960-04-07', '628-146-1562', 'josephlarson@burns.info', '54334 Keith Prairie
Port Heather, BC H6Y 3A2', 'T7V 5H8', 'Engineer, site', 2000, 'Cash Handling', 20.29, 1, 1, 1),
(97, 1, 'Jordan', 'Williams', 'Other', '1966-04-12', '+1 (969) 699-7819', 'stephaniebennett@gmail.com', '183 Flores Meadow
Port Angela, BC T4L 1T8', 'E3S6V4', 'Broadcast engineer', 2012, 'Data Analysis', 15.14, 1, 1, 0),
(98, 3, 'Timothy', 'Grant', 'Female', '1966-03-30', '288-262-2026 x468', 'levyjacqueline@carter.com', '289 Ruiz Center Apt. 453
Lake Christinaburgh, QC E3H 6E9', 'L7J1K4', 'Catering manager', 2013, 'Data Analysis', 42.09, 1, 0, 1),
(99, 1, 'Bryan', 'Quinn', 'Other', '1999-09-16', '959-038-5103', 'hburton@perez.biz', '1773 Hickman Mills
East Diana, AB V4M 5J3', 'Y4L9J4', 'Gaffer', 2004, 'Driving', 39.87, 1, 1, 0),
(100, 3, 'Mark', 'Harris', 'Other', '1960-01-17', '(568) 295-2192 x738', 'bharvey@strong-taylor.org', '06605 Bailey Plains Suite 030
Mcmillanville, QC T7C 2A7', 'J1C 4H2', 'Television camera operator', 2022, 'Customer Service', 39.48, 1, 0, 1);
UPDATE department SET manager = 27 WHERE department_id = 1;
UPDATE department SET manager = 95 WHERE department_id = 2;
UPDATE department SET manager = 20 WHERE department_id = 3;
UPDATE department SET manager = 47 WHERE department_id = 4;
UPDATE department SET manager = 96 WHERE department_id = 5;
UPDATE department SET manager = 11 WHERE department_id = 6;
UPDATE department SET manager = 44 WHERE department_id = 7;
UPDATE department SET manager = 66 WHERE department_id = 8;
UPDATE department SET manager = 7 WHERE department_id = 9;
UPDATE department SET manager = 100 WHERE department_id = 10;
UPDATE department SET manager = 37 WHERE department_id = 11;
UPDATE department SET manager = 41 WHERE department_id = 12;
UPDATE department SET manager = 18 WHERE department_id = 13;
UPDATE department SET manager = 100 WHERE department_id = 14;
UPDATE department SET manager = 24 WHERE department_id = 15;
UPDATE department SET manager = 79 WHERE department_id = 16;
UPDATE department SET manager = 50 WHERE department_id = 17;
UPDATE department SET manager = 43 WHERE department_id = 18;
UPDATE department SET manager = 64 WHERE department_id = 19;
UPDATE department SET manager = 7 WHERE department_id = 20;

INSERT INTO warehouse (department_id, regions) VALUES
(6, 'Romeroland'),
(7, 'Kellystad'),
(8, 'South Glenfort'),
(11, 'South Jasmine'),
(13, 'New Christine'),
(18, 'West Victor');
INSERT INTO outlet (department_id, open_time) VALUES
(1, '10:00 AM - 8:00 PM'),
(4, '7:00 AM - 11:00 PM'),
(5, '10:00 AM - 10:00 PM'),
(12, '10:00 AM - 9:00 PM'),
(14, '6:00 AM - 7:00 PM'),
(16, '10:00 AM - 10:00 PM'),
(17, '10:00 AM - 11:00 PM'),
(19, '8:00 AM - 10:00 PM'),
(20, '8:00 AM - 10:00 PM');
INSERT INTO office (department_id, capacity) VALUES
(2, 51),
(3, 75),
(9, 14),
(10, 37),
(15, 35);

INSERT INTO customer (customer_id, first_name, last_name, gender, birthday, phone, email, address, postcode) VALUES
(1, 'Brian', 'Ward', 'Female', '2006-05-14', '742 789 4285', 'samanthafuller@hotmail.com', '1451 Nicole Creek
Cynthiaberg, NT Y6R 2E2', 'L2R7B4'),
(2, 'Paige', 'Stark', 'Other', '1971-12-28', '897-796-4207', 'kfriedman@yahoo.com', '55937 Wallace Inlet Apt. 175
Daytown, NU K5J 8M9', 'C3T1L1'),
(3, 'Charles', 'Bell', 'Female', '1974-01-03', '831-131-2202 x417', 'cookjody@hotmail.com', '1448 Cynthia Road
Turnerhaven, AB Y6A 5K3', 'J2V 5N3'),
(4, 'Ronald', 'Davis', 'Male', '1944-09-15', '(144) 449-0894 x251', 'herbertblair@davis-harding.biz', '3029 Lisa Flats Apt. 294
Port Margaret, AB E7C 7B2', 'Y2L2G1'),
(5, 'Charles', 'Lowe', 'Male', '1954-09-17', '620-570-2184 x005', 'loganlauren@gmail.com', '971 Ramirez Isle Suite 851
Lunabury, AB V5J 7J8', 'H3K6T4'),
(6, 'Melanie', 'Mcguire', 'Male', '2005-10-16', '1-276-690-0131', 'rlin@yahoo.com', '3038 Adam Meadow
Deborahhaven, PE V5A 7S8', 'J1M6T5'),
(7, 'John', 'Sanchez', 'Male', '2000-08-15', '385-852-8431', 'dmartinez@parker.net', '158 Anthony Ranch Apt. 950
Reneeport, AB G2K 7N6', 'G3G6E5'),
(8, 'Justin', 'Mcdonald', 'Female', '1999-11-10', '742-929-3615 x518', 'margaretjohnson@yahoo.com', '11386 Matthew Crossroad
Andersonchester, ON P9J1G3', 'K4Y 8H3'),
(9, 'Jamie', 'Powell', 'Other', '2003-03-20', '760 447 3496', 'thomas60@holland.com', '167 Ford Path Apt. 399
Sherihaven, NB L5R 5B1', 'S1C5M4'),
(10, 'Robert', 'Smith', 'Female', '1986-12-23', '977-427-6247 x497', 'michaellevy@walsh-campbell.biz', '379 Robertson Village
Amyland, NS L8C2R3', 'A4L 8M3'),
(11, 'Mary', 'Mason', 'Female', '1975-12-11', '523.146.7445', 'lowerywilliam@kirby-walker.org', '6042 Jacob Burg
North April, AB C2C6N2', 'R7P4G8'),
(12, 'Jennifer', 'Foster', 'Male', '1959-04-14', '(526) 246-7035', 'james22@yahoo.com', '195 Kristi Station
East Javier, PE J8A 1H1', 'K3J6Y8'),
(13, 'Laura', 'Cook', 'Other', '1963-03-10', '(704) 554-7210 x632', 'crystalgraham@james.org', '1101 Angel Grove Suite 657
Cooperfort, NS P1J 2L2', 'A4Y3E5'),
(14, 'Shannon', 'Brown', 'Male', '1998-08-19', '+1 (176) 319-8123', 'gordonpedro@hotmail.com', '05343 Jordan Villages
New Laurie, MB V1G 9G5', 'K9B 7B7'),
(15, 'Tina', 'Pollard', 'Male', '2005-10-29', '911.884.8791', 'karen59@hotmail.com', '4001 Santiago Ports Apt. 648
Michaelmouth, NU P7H4X2', 'P9P2V6'),
(16, 'David', 'Simon', 'Other', '1984-12-23', '917-332-8738', 'jonathanstafford@thompson.com', '994 Brandi Flats Apt. 674
Derrickmouth, ON S4S5J6', 'T9L 5M3'),
(17, 'Christina', 'Willis', 'Other', '1985-05-09', '(644) 803-3023', 'suzanne18@patel.com', '8929 Stephen Prairie Apt. 302
Nortonborough, NL A8J 2G9', 'X4S7P1'),
(18, 'Cheyenne', 'Lynn', 'Other', '1998-02-09', '684-049-1954 x765', 'carterseth@hotmail.com', '5235 Ashley Crest Suite 533
North Paula, NU P3N5X2', 'A2M3K3'),
(19, 'Travis', 'Mathis', 'Female', '2004-11-16', '367.704.1572', 'ageorge@brown-davis.info', '143 Mccoy Glens Suite 300
Potterton, NU H6K7T5', 'G6N9G6'),
(20, 'James', 'Davis', 'Male', '2004-06-22', '(133) 369-8174', 'whitemadison@hotmail.com', '9959 Shelton Forges
Port Tonyamouth, NB N4N9H5', 'P8T 2R2'),
(21, 'Michael', 'Livingston', 'Other', '1981-10-15', '1 (961) 585-9115', 'irice@jackson.biz', '150 Jamie Station Suite 006
South Rhondamouth, SK N2M9B5', 'C6V4T2'),
(22, 'Nicholas', 'Lopez', 'Other', '1985-10-03', '(492) 932-7705 x649', 'allenkimberly@wyatt.info', '0675 Hanna Stravenue Suite 187
Lake Douglasburgh, NL X5T 2L4', 'C7Y4T4'),
(23, 'Stephanie', 'Herring', 'Other', '1950-01-30', '1-424-317-8278', 'dgardner@mullins-reyes.net', '253 Joshua Trace
West Lisaburgh, NT A1C 3G9', 'P8H 4X7'),
(24, 'David', 'Evans', 'Female', '1973-06-06', '+1 (822) 204-8036', 'mccarthyrachel@yahoo.com', '0266 Rodriguez Squares
North Christinahaven, BC A6S6X8', 'M4M 8E1'),
(25, 'Amy', 'Moore', 'Other', '1952-08-19', '838-657-2951', 'kathleen83@yahoo.com', '905 Sanchez Mall
Pierceland, NU L9M5S1', 'P5H7C7'),
(26, 'Travis', 'Phillips', 'Female', '2001-08-18', '(388) 759-2975 x040', 'christianhunt@davidson-reid.com', '509 Rodriguez Terrace
West Kathyfort, NL G8S6Y8', 'N8K1S7'),
(27, 'Charles', 'George', 'Male', '1990-02-25', '(911) 521-4788 x273', 'lisabryant@yahoo.com', '90860 Gilbert Junction Apt. 100
Bryantville, NS E3L8C8', 'H6J2X3'),
(28, 'Ronald', 'Parker', 'Other', '1967-06-06', '1-464-718-0178', 'david22@robinson.com', '7798 Myers Port
East Michelle, NS H6R9S4', 'R2G 8M7'),
(29, 'Joshua', 'Wolfe', 'Male', '1999-06-10', '(667) 466-8844', 'hurleyholly@gmail.com', '36616 Alexander Spring
North Joshuatown, SK C3H4Y7', 'B4L 9V1'),
(30, 'Alex', 'Thompson', 'Female', '1953-01-03', '+1 (773) 398-1189', 'maria58@hotmail.com', '2367 Mccoy Street
Johnsburgh, BC B3B 7P8', 'H2X3C1'),
(31, 'Seth', 'Avila', 'Female', '1997-08-14', '258-113-6651', 'bradshawseth@pace.com', '04274 Eric Springs
Ryanland, ON M9A6X5', 'G8G 4N6'),
(32, 'Stephanie', 'Munoz', 'Male', '1960-12-27', '121-663-1722 x717', 'jorge36@phillips-king.net', '72378 Cory Corners Suite 100
Matthewside, NS H1P 3X7', 'E3H7G8'),
(33, 'Tony', 'Fleming', 'Other', '1982-05-19', '(216) 832-1975 x399', 'michaelrose@mcdonald-clark.com', '42627 Jason Unions
Port Holly, QC N1J3B5', 'T1V 2T7'),
(34, 'Nicole', 'Mack', 'Female', '1951-03-14', '615-895-8732', 'kevinfoster@harper-obrien.net', '916 Brown Club
New Teresa, NS B3Y9E7', 'B6H 2L1'),
(35, 'Edward', 'Walton', 'Male', '2006-11-21', '+1 (835) 433-5543', 'jonesteresa@cunningham-armstrong.com', '585 Sherman Land Apt. 054
Rojasburgh, NT R1P3A2', 'L8G 4P5'),
(36, 'Daniel', 'Grant', 'Other', '1949-07-19', '851-177-4210 x313', 'sellersteresa@woodard.com', '561 Matthew Fork
Erinhaven, QC K8L 7L2', 'X1L9J5'),
(37, 'Timothy', 'Wilson', 'Other', '1975-08-04', '(408) 646-1013', 'tgonzales@yahoo.com', '653 Chase Brook
Lake Tina, NT K1L 6M6', 'P5V 6E3'),
(38, 'Margaret', 'Whitaker', 'Male', '1972-09-30', '697-129-9324 x151', 'paula52@hotmail.com', '62557 Porter Ridges Apt. 469
Taraside, AB G1L 1C6', 'V1E 4Y1'),
(39, 'Dalton', 'Pittman', 'Female', '1983-03-18', '1 (695) 203-5102', 'greggdawson@yahoo.com', '260 Courtney Loaf Apt. 403
South Brentburgh, YT C2R 6J3', 'Y9X9A6'),
(40, 'Christopher', 'Marks', 'Other', '2006-07-19', '+1 (277) 339-4342', 'williamsmegan@hotmail.com', '196 Cline Inlet Suite 469
Mitchellfurt, ON H3T7E8', 'R8K 8T3'),
(41, 'David', 'Holland', 'Other', '1961-07-28', '363-246-2707', 'othompson@washington.info', '805 Bailey Manor
North Angela, SK V8C 6Y3', 'A6L1E4'),
(42, 'Pamela', 'Mendoza', 'Other', '1968-09-22', '+1 (630) 066-5077', 'janiceray@curry.info', '558 Julie Villages
Markstad, PE K3H 9L6', 'V8A7K6'),
(43, 'Mia', 'Taylor', 'Female', '1968-04-07', '354-064-1090 x188', 'istephenson@anderson-schmidt.com', '17931 Patricia Mountain
Jenniferborough, PE E6E 2G7', 'P9L 7E3'),
(44, 'Tracy', 'Alvarez', 'Male', '1972-10-12', '+1 (694) 010-0119', 'qhughes@mullins.com', '5070 Goodman Lakes
Sweeneyberg, ON N1J8E7', 'M2G7A1'),
(45, 'Christina', 'Smith', 'Other', '1978-12-19', '(816) 664-0501', 'owensbrian@hughes.com', '97420 James Highway
North Elizabeth, YT Y4Y1G6', 'T3V4T9'),
(46, 'Karen', 'Dickerson', 'Other', '2002-10-29', '636 726 7465', 'samanthaingram@palmer.org', '2496 Kristen Ferry
Smithfort, NS S9V8A7', 'H3L 6B4'),
(47, 'Bryan', 'Howard', 'Other', '1988-01-28', '(111) 040-9546', 'townsendmichael@jefferson.com', '717 David Ways Suite 439
Mcguireville, AB J8L 1K4', 'G3L 6L9'),
(48, 'Danielle', 'Kim', 'Female', '1952-01-14', '793-016-2372 x457', 'clementsdustin@smith.com', '751 Stephanie Roads Suite 386
South Linda, NU J2A2G8', 'M1L7G5'),
(49, 'John', 'Neal', 'Male', '2005-07-19', '289.550.7241', 'banksmonique@smith.info', '9908 Taylor Ramp
Sherryhaven, ON K7H3G8', 'E1M 5N5'),
(50, 'Kimberly', 'Steele', 'Female', '1982-07-31', '955-477-0185 x363', 'danielle12@yahoo.com', '62570 Mary Overpass
Luisside, BC J8A 5V4', 'K3V3N5'),
(51, 'Norma', 'Fry', 'Female', '1971-03-05', '938.549.5071', 'williamsjeffrey@cross.com', '8753 Fritz Village Apt. 735
South Cameron, SK J3J6N2', 'G5N1A4'),
(52, 'Justin', 'Brown', 'Female', '1965-12-29', '(784) 178-7759', 'gkane@lopez.info', '09892 Howard Forest Suite 922
Marytown, NB R6N 4B3', 'T6X 1K8'),
(53, 'Victoria', 'Mitchell', 'Female', '1992-12-16', '850 549 9554', 'rebecca83@gmail.com', '572 Donna Parks
Darrenstad, MB R7X9K8', 'L1H 1T6'),
(54, 'Melanie', 'Miller', 'Male', '1947-05-01', '737-801-4791 x364', 'sanchezcrystal@gmail.com', '191 Moore Road Apt. 500
Port Tracy, MB X6B 9S8', 'J9J 7H1'),
(55, 'Michael', 'Edwards', 'Male', '2001-09-27', '(357) 434-7121', 'ramosjeffery@gmail.com', '4702 Pamela Canyon Apt. 895
West Charles, NL S2Y 2H2', 'M1G 9T5'),
(56, 'Matthew', 'Phillips', 'Other', '1996-05-03', '(130) 191-6009', 'spencerdesiree@herrera.com', '7472 Rebecca Ports
Suzanneburgh, NB Y7K 7H7', 'G7H2N5'),
(57, 'Diane', 'Allen', 'Female', '1997-03-15', '769.211.8191', 'andrea52@yahoo.com', '898 Donald Rapids
Karibury, AB E4M3R3', 'H1H2E7'),
(58, 'David', 'Evans', 'Female', '1955-01-22', '+1 (563) 416-6486', 'tony66@gmail.com', '50786 Brown Islands
Port Alexander, AB T1K 4P2', 'P8N 7M8'),
(59, 'Frank', 'Suarez', 'Female', '1994-07-29', '558 612 3446', 'wilsonjessica@yahoo.com', '121 Martin Ridges
Port Cody, NU V9E9X1', 'E5X 8B9'),
(60, 'William', 'Bailey', 'Female', '1975-12-03', '(961) 987-1004', 'john14@barnes.com', '01713 Jeffery Junctions
Charlesfurt, MB E1R 8C4', 'B2N1S1'),
(61, 'Sue', 'Castillo', 'Female', '1986-08-06', '(532) 406-7882', 'chelsea39@owens.com', '152 Thompson Glens
South Adamville, NS L6K3H6', 'T9Y 5K6'),
(62, 'Christopher', 'Beck', 'Female', '2002-10-19', '+1 (993) 832-5090', 'pfisher@nguyen.com', '020 Jesse Green Apt. 185
New Jennifershire, BC R1T 8L3', 'K4C 3B9'),
(63, 'Carlos', 'Perez', 'Male', '1995-10-20', '1 (643) 381-6565', 'tmorgan@bryant.com', '9904 Bell Track
New Melanieside, NB C7X9J5', 'M6K 8G7'),
(64, 'Charles', 'Gaines', 'Female', '1951-06-14', '139-130-4776', 'travisallen@howard-brown.info', '29617 Christina Motorway Apt. 722
South Mark, BC E3L6K9', 'T8X2M4'),
(65, 'Amanda', 'Richards', 'Female', '1986-10-10', '424.311.2342', 'mendezbrandon@hotmail.com', '191 Rebecca Square
Tammymouth, NS M8A3S9', 'B5Y6M7'),
(66, 'Misty', 'Willis', 'Other', '1993-11-14', '(307) 727-8141 x364', 'ubruce@gmail.com', '6328 Gray Center
Port Mackenzie, NT R5E1X5', 'J6J8V7'),
(67, 'Julie', 'Taylor', 'Female', '1980-01-23', '(203) 599-7849 x245', 'kimberlyskinner@guzman.com', '275 Troy Locks Suite 523
Wrightland, QC C2M 9L8', 'P1E2H4'),
(68, 'Cathy', 'Flynn', 'Male', '1979-04-09', '(202) 626-5864', 'jenniferwilson@meyer-cruz.com', '3629 Walker Dam Suite 240
Robertshire, QC P8H 6Y4', 'M6S 9R7'),
(69, 'Gary', 'Sharp', 'Other', '2005-07-20', '522.049.9348', 'smckay@yahoo.com', '97160 Billy Curve
Kayleefort, ON C3E 3H3', 'B2T1J4'),
(70, 'Ricardo', 'Wilkerson', 'Other', '1947-11-07', '(259) 401-1887', 'cameron99@gmail.com', '519 Guerra Mews Apt. 925
Williamchester, NL J8H 4C5', 'C7R8N4'),
(71, 'Brittney', 'Hunter', 'Female', '1989-05-22', '(733) 807-9863', 'kkelley@duncan.org', '6865 Castro Plain
Jocelynville, QC E2V6V9', 'X1R 9E3'),
(72, 'Ronald', 'Ross', 'Other', '1953-04-18', '1 (533) 556-9908', 'mmiller@gmail.com', '667 Jill Heights Apt. 009
West Adamshire, NU L7L7B8', 'B2N3S8'),
(73, 'Deborah', 'Miranda', 'Other', '1986-08-29', '169-481-9702 x342', 'paulmaria@hotmail.com', '025 William Cape Suite 726
Alvarezview, NL K1E 1J7', 'L4X 4C3'),
(74, 'Jennifer', 'Hobbs', 'Other', '1974-01-13', '+1 (745) 817-0763', 'aruiz@nicholson-bauer.com', '3715 Wong Trafficway
East Georgefort, BC Y6B1C5', 'P5Y 6P7'),
(75, 'Katie', 'Jones', 'Other', '1964-08-18', '+1 (246) 579-8446', 'hannah15@roberts.com', '323 Mccormick Rapids
East Alexander, PE H7N5M8', 'N4M9E4'),
(76, 'Adrienne', 'Avery', 'Other', '1973-06-16', '517.514.3747', 'qkeller@yahoo.com', '1169 Arroyo Forest Apt. 848
Garciafurt, NL Y5G 1V5', 'X8L 4X1'),
(77, 'Stacey', 'Watts', 'Female', '1970-07-14', '621-467-2195', 'jimeneznicholas@arias.com', '50195 Maddox Parks Suite 762
Port John, ON H6H 3E8', 'M4K5C3'),
(78, 'Jonathan', 'Gutierrez', 'Male', '1987-12-19', '424.310.6577', 'paul01@hotmail.com', '220 Shaw Lodge
Williamsonmouth, MB N8V 4B2', 'H4K1H3'),
(79, 'Ruben', 'Howard', 'Female', '1954-05-07', '1 (405) 266-5654', 'zvelazquez@hotmail.com', '593 Kyle Estates Apt. 065
Josephbury, PE B3G6N5', 'A2C 5S3'),
(80, 'Bryan', 'Reynolds', 'Other', '1957-05-09', '395.080.9255', 'burkekristine@hotmail.com', '87584 Carol View
Lorihaven, SK Y2V8R2', 'T9A9E6'),
(81, 'Traci', 'Spencer', 'Female', '1966-10-04', '1-867-715-2182', 'sandra41@ward.com', '7598 Conner Drives
Suzanneburgh, NB K8B5J1', 'E7L2S6'),
(82, 'Gary', 'Rios', 'Female', '1977-11-28', '+1 (635) 163-2940', 'chavezleslie@gmail.com', '4248 Jennifer Shores
Davisburgh, NL A2S 1Y5', 'G5X 3N8'),
(83, 'Marie', 'Brown', 'Other', '2003-10-28', '(422) 891-5882 x320', 'wrobertson@hotmail.com', '942 Hector Plains
Williamfurt, BC T3H5K8', 'R1B 4P5'),
(84, 'Curtis', 'Little', 'Other', '2001-08-24', '1 (897) 556-8925', 'bookerkrista@lowe-jefferson.info', '2110 James Islands
Smithstad, PE S5Y3T1', 'N1M3C4'),
(85, 'Michael', 'Johnson', 'Other', '2001-07-30', '627-203-0811 x772', 'scottleach@gordon.com', '108 Christopher Expressway Suite 023
Port Gregorystad, NU T2B 1K3', 'R6X1Y6'),
(86, 'Angela', 'Charles', 'Female', '1994-02-04', '(331) 710-5568', 'nancythompson@carter.info', '05583 Bowen Court Suite 135
New Joshuaside, NS T6A3N5', 'T3R 1V3'),
(87, 'Mark', 'Gibson', 'Male', '1960-02-23', '+1 (446) 347-2465', 'jasonmora@williamson.com', '0243 Cathy Points Suite 641
West Benjaminmouth, NT C7X8B7', 'R7S 4K3'),
(88, 'Laurie', 'Nash', 'Female', '1980-03-21', '1 (469) 886-3423', 'jessicacunningham@curtis-ortega.net', '22118 Cardenas Union
North Amandaton, NS P2K 2R6', 'R8T 2G6'),
(89, 'Zachary', 'Matthews', 'Male', '1982-03-26', '1-445-674-6182', 'jamesstevenson@payne.com', '65725 Brittney Track
South Garytown, NS C3Y9H2', 'H5H9T9'),
(90, 'Cassandra', 'Baker', 'Female', '1953-02-23', '+1 (694) 878-2645', 'omar77@hughes-espinoza.com', '773 Henderson Prairie Suite 147
Burkeberg, NT H6B 5K6', 'V1R9G3'),
(91, 'Jeffrey', 'Cole', 'Female', '1964-07-24', '(377) 251-4989 x287', 'royjohnson@walker-wells.com', '67577 Acosta Mountains
Sarahmouth, PE H7X 9C9', 'R3H8J9'),
(92, 'Amanda', 'Jimenez', 'Other', '1960-06-19', '726-401-8185 x903', 'xpugh@rose.com', '5581 Reyes Mountains Suite 427
Courtneychester, ON T6A 2S2', 'E2J2J5'),
(93, 'William', 'Smith', 'Other', '1982-03-11', '698-821-8568 x497', 'hornkatherine@james.org', '25069 Jennifer Ridges
Keithfurt, NL V6V 6L8', 'Y8L6K6'),
(94, 'Valerie', 'Miller', 'Female', '1954-02-02', '675.046.8331', 'freemanjasmine@gmail.com', '37589 Herrera Vista Apt. 049
Lake Danielville, QC K5G5H3', 'C6B1T8'),
(95, 'Emily', 'Callahan', 'Female', '1958-10-24', '1 (896) 150-9588', 'brian15@yahoo.com', '4918 Le Village
North Adamton, PE A9A 9M9', 'X5V6N5'),
(96, 'Douglas', 'Wallace', 'Other', '1977-01-05', '(699) 565-2193', 'kaylee31@gill.com', '7492 Alejandra Club
North Karenfurt, AB K8S 6P5', 'E7T7R6'),
(97, 'Stephen', 'Tucker', 'Other', '1966-10-23', '943-066-5489 x829', 'joseph96@wilson.biz', '7360 Johnson Corners
North Kenneth, NB A1C3E2', 'G5B 9L6'),
(98, 'Amanda', 'Flowers', 'Other', '1971-12-24', '156-012-2464', 'robertstrong@gmail.com', '53150 Fuller Manor Suite 119
North Danielle, PE M5V4Y2', 'R6C5K8'),
(99, 'Dustin', 'Smith', 'Male', '1963-03-16', '1 (516) 861-7786', 'bradleypamela@hotmail.com', '236 Poole Falls
New Brandonhaven, QC S3S3A5', 'A1Y8H8'),
(100, 'Eric', 'Mills', 'Female', '2002-09-15', '944.681.3055', 'kaylee07@gmail.com', '595 Green Meadow Apt. 827
South Katherineland, AB C8L3B7', 'G7T3P1');

INSERT INTO product_type (ptype_id, name, description, unit, unit_price, currency_id, category) VALUES
(1, 'Sapiente', 'Doloribus similique modi dignissimos distinctio quod laboriosam ut.', 'L', 33.95, 1, 'Soluta'),
(2, 'Unde', 'Molestiae veritatis molestias amet eius ullam aspernatur.', 'L', 72.73, 1, 'Iure'),
(3, 'Tempore', 'Adipisci illum accusantium similique alias provident.', 'L', 73.71, 1, 'Amet'),
(4, 'Expedita', 'Cupiditate tempore laudantium necessitatibus.', 'box', 97.91, 1, 'Nemo'),
(5, 'Dicta', 'Unde voluptatibus quos rerum.', 'L', 12.48, 1, 'Fugit'),
(6, 'Voluptatum', 'Optio earum impedit dolores.', 'L', 32.88, 1, 'Unde'),
(7, 'Aliquam', 'Optio maiores ipsam repudiandae nisi perspiciatis.', 'unit', 60.22, 1, 'Accusantium'),
(8, 'Sed', 'Voluptatum accusamus beatae debitis occaecati esse dolorem consequuntur.', 'L', 95.78, 1, 'Ullam'),
(9, 'Eos', 'Vel et iste suscipit quos asperiores sunt porro.', 'kg', 63.96, 1, 'Assumenda'),
(10, 'Sunt', 'Quos veniam vel numquam officia consectetur ipsum ipsa.', 'unit', 30.49, 1, 'Voluptates'),
(11, 'Alias', 'Illum ipsum dolor impedit mollitia voluptates facilis laudantium nemo unde.', 'box', 55.8, 1, 'Consequatur'),
(12, 'Non', 'Ipsum ducimus expedita dicta eius explicabo dolor.', 'box', 72.04, 1, 'Aliquam'),
(13, 'Ipsum', 'Magnam perspiciatis esse unde iure eius.', 'box', 89.82, 1, 'Officiis'),
(14, 'Beatae', 'Eius itaque aliquid consequuntur aliquam.', 'kg', 49.4, 1, 'Excepturi'),
(15, 'Vel', 'Ipsa fugit dolore et dolor.', 'box', 87.41, 1, 'Aspernatur'),
(16, 'Perspiciatis', 'Dignissimos beatae iure quasi quae doloremque eius blanditiis temporibus laborum.', 'kg', 9.54, 1, 'Molestias'),
(17, 'Numquam', 'Doloribus adipisci est debitis voluptates distinctio.', 'box', 71.28, 1, 'Incidunt'),
(18, 'Incidunt', 'Adipisci quia ratione architecto veniam architecto aliquam.', 'unit', 75.48, 1, 'Necessitatibus'),
(19, 'Culpa', 'Consequuntur eos ut molestiae tempora rem itaque molestias.', 'L', 86.19, 1, 'Laborum'),
(20, 'Similique', 'Consectetur tempore nemo tenetur ipsa ipsa error laborum.', 'kg', 54.32, 1, 'Debitis'),
(21, 'Hic', 'Earum fugit necessitatibus repellendus iste optio iure.', 'kg', 38.84, 1, 'Voluptas'),
(22, 'Ducimus', 'Tempore itaque distinctio molestias sed ad quis.', 'unit', 81.73, 1, 'Nesciunt'),
(23, 'Exercitationem', 'Nulla est provident reprehenderit beatae ut dolore blanditiis officiis.', 'unit', 54.78, 1, 'Repudiandae'),
(24, 'Voluptatum', 'Natus hic ut vero praesentium.', 'L', 49.12, 1, 'Enim'),
(25, 'Deserunt', 'Natus ex dolores excepturi odit eum architecto.', 'box', 39.05, 1, 'Tempora'),
(26, 'Consequatur', 'Perferendis nam ea aliquam in possimus exercitationem ipsum aspernatur.', 'unit', 88.87, 1, 'Explicabo'),
(27, 'Quidem', 'Nisi ipsum pariatur eos exercitationem vero similique reprehenderit.', 'L', 50.84, 1, 'Sapiente'),
(28, 'Harum', 'Quasi possimus laborum labore magni numquam similique minima laborum laborum.', 'kg', 70.6, 1, 'Odio'),
(29, 'Ut', 'Molestiae autem autem reprehenderit non fugiat.', 'L', 29.01, 1, 'Tempora'),
(30, 'Unde', 'Iste unde quasi alias quam.', 'box', 65.52, 1, 'Nostrum'),
(31, 'A', 'Assumenda repellendus expedita sed similique corporis dolorum quos nulla.', 'box', 26.3, 1, 'Eius'),
(32, 'Sequi', 'Ipsam dicta repudiandae odio maxime voluptatem consectetur temporibus inventore.', 'unit', 27.71, 1, 'Facere'),
(33, 'Corrupti', 'Ab quo distinctio reprehenderit qui sed temporibus consequuntur atque tempora.', 'box', 25.68, 1, 'Laudantium'),
(34, 'Rerum', 'Incidunt pariatur quisquam deleniti quibusdam totam a nulla.', 'L', 99.12, 1, 'Atque'),
(35, 'Ad', 'Itaque praesentium eum vel non culpa.', 'box', 29.05, 1, 'Tempore'),
(36, 'Eum', 'Voluptas numquam natus vitae expedita illo ipsam.', 'kg', 79.22, 1, 'Facere'),
(37, 'Officiis', 'Quo doloribus earum aperiam molestiae dignissimos.', 'box', 68.34, 1, 'Ea'),
(38, 'Aliquid', 'Laboriosam eum quibusdam ipsa sunt eos doloremque commodi delectus officiis.', 'kg', 69.25, 1, 'At'),
(39, 'Incidunt', 'Velit odio sunt recusandae reprehenderit facere illo.', 'unit', 55.63, 1, 'Modi'),
(40, 'Reiciendis', 'Nisi doloribus et illo repudiandae.', 'L', 20.76, 1, 'Ducimus'),
(41, 'Vel', 'Eaque eum laudantium expedita assumenda nam mollitia ea pariatur similique.', 'kg', 22.37, 1, 'Illum'),
(42, 'Perferendis', 'Laboriosam dolorem accusantium id dicta laborum fuga quia doloremque.', 'kg', 29.36, 1, 'Repellat'),
(43, 'Error', 'At odio voluptatum illum impedit.', 'unit', 10.24, 1, 'Asperiores'),
(44, 'Distinctio', 'At ex laboriosam earum enim eum.', 'kg', 27.65, 1, 'Est'),
(45, 'Libero', 'Sed animi totam rerum quos suscipit deleniti odit consequuntur.', 'unit', 26.37, 1, 'Eligendi'),
(46, 'Praesentium', 'Culpa voluptates voluptate aliquam ipsa iste neque.', 'kg', 71.9, 1, 'Harum'),
(47, 'Excepturi', 'Repellat fugiat perspiciatis eos quibusdam nobis.', 'box', 98.29, 1, 'Officiis'),
(48, 'Aliquam', 'Consectetur illo excepturi ab repudiandae molestias.', 'L', 99.25, 1, 'Quae'),
(49, 'Quam', 'Libero iure ad id eaque.', 'box', 28.31, 1, 'Mollitia'),
(50, 'Esse', 'Eligendi delectus numquam blanditiis occaecati ipsa delectus nulla aut iste.', 'box', 6.55, 1, 'Quod');

INSERT INTO product_detail (product_id, ptype_id, batch_no, current_price, bbf_date) VALUES
(1, 4, 'BATCH-0852609', 54.79, '2025-02-24'),
(2, 41, 'BATCH-5704983', 68.76, '2025-03-01'),
(3, 24, 'BATCH-2555094', 28.43, '2025-03-15'),
(4, 49, 'BATCH-4763873', 45.66, '2025-03-10'),
(5, 22, 'BATCH-6895626', 75.81, '2025-03-08'),
(6, 43, 'BATCH-5844576', 15.85, '2025-03-13'),
(7, 45, 'BATCH-3900877', 10.28, '2025-03-10'),
(8, 47, 'BATCH-2809201', 54.61, '2025-03-13'),
(9, 12, 'BATCH-5655618', 56.93, '2025-02-23'),
(10, 2, 'BATCH-3812594', 79.14, '2025-03-02'),
(11, 45, 'BATCH-9907074', 19.86, '2025-03-14'),
(12, 9, 'BATCH-4054334', 75.26, '2025-03-14'),
(13, 26, 'BATCH-2370684', 61.42, '2025-03-13'),
(14, 20, 'BATCH-4909480', 20.44, '2025-02-18'),
(15, 31, 'BATCH-5215911', 34.13, '2025-03-07'),
(16, 29, 'BATCH-6918647', 69.45, '2025-03-15'),
(17, 15, 'BATCH-4266371', 69.71, '2025-02-25'),
(18, 32, 'BATCH-2956897', 27.5, '2025-03-03'),
(19, 49, 'BATCH-9569071', 36.58, '2025-02-20'),
(20, 42, 'BATCH-9101017', 21.25, '2025-02-19'),
(21, 14, 'BATCH-6731328', 17.49, '2025-02-26'),
(22, 50, 'BATCH-5365322', 19.23, '2025-03-16'),
(23, 49, 'BATCH-3612984', 21.93, '2025-03-07'),
(24, 7, 'BATCH-5457850', 94.05, '2025-02-24'),
(25, 12, 'BATCH-4566443', 13.16, '2025-03-15'),
(26, 31, 'BATCH-5718646', 20.39, '2025-02-20'),
(27, 16, 'BATCH-5865403', 93.27, '2025-02-21'),
(28, 28, 'BATCH-6551726', 80.82, '2025-03-14'),
(29, 25, 'BATCH-5661835', 98.69, '2025-03-08'),
(30, 16, 'BATCH-9566232', 99.64, '2025-03-13'),
(31, 26, 'BATCH-5740505', 79.76, '2025-03-04'),
(32, 7, 'BATCH-1670515', 72.84, '2025-02-25'),
(33, 32, 'BATCH-1787905', 30.88, '2025-02-27'),
(34, 34, 'BATCH-5614627', 97.45, '2025-02-22'),
(35, 25, 'BATCH-4588420', 87.04, '2025-03-05'),
(36, 23, 'BATCH-2089122', 64.54, '2025-02-22'),
(37, 24, 'BATCH-6183911', 88.37, '2025-02-23'),
(38, 38, 'BATCH-6277102', 9.44, '2025-03-09'),
(39, 12, 'BATCH-8661922', 73.11, '2025-02-24'),
(40, 13, 'BATCH-6995427', 78.22, '2025-03-10'),
(41, 20, 'BATCH-1734751', 82.98, '2025-03-14'),
(42, 28, 'BATCH-3817879', 25.55, '2025-02-20'),
(43, 39, 'BATCH-0954752', 97.9, '2025-02-19'),
(44, 5, 'BATCH-3333065', 77.41, '2025-02-22'),
(45, 35, 'BATCH-6557925', 52.67, '2025-02-22'),
(46, 3, 'BATCH-8446219', 48.81, '2025-02-23'),
(47, 3, 'BATCH-3468959', 70.93, '2025-03-02'),
(48, 47, 'BATCH-9377482', 45.65, '2025-03-17'),
(49, 12, 'BATCH-4593393', 33.64, '2025-03-04'),
(50, 47, 'BATCH-8187150', 32.81, '2025-03-17'),
(51, 12, 'BATCH-9432738', 91.58, '2025-02-22'),
(52, 39, 'BATCH-0685576', 23.94, '2025-02-18'),
(53, 46, 'BATCH-5102702', 67.78, '2025-02-25'),
(54, 35, 'BATCH-9301131', 24.3, '2025-02-24'),
(55, 5, 'BATCH-7911338', 37.79, '2025-03-05'),
(56, 43, 'BATCH-5066924', 61.62, '2025-03-09'),
(57, 1, 'BATCH-2445247', 78.51, '2025-03-14'),
(58, 6, 'BATCH-0211981', 40.93, '2025-02-24'),
(59, 37, 'BATCH-6528423', 14.19, '2025-03-09'),
(60, 39, 'BATCH-8809873', 29.55, '2025-03-12'),
(61, 8, 'BATCH-1301386', 37.74, '2025-02-18'),
(62, 26, 'BATCH-1504627', 7.78, '2025-02-24'),
(63, 47, 'BATCH-1585135', 5.67, '2025-03-18'),
(64, 29, 'BATCH-7185762', 52.44, '2025-02-20'),
(65, 18, 'BATCH-2124707', 97.55, '2025-03-14'),
(66, 45, 'BATCH-2898056', 6.96, '2025-03-02'),
(67, 39, 'BATCH-7573811', 93.39, '2025-03-16'),
(68, 31, 'BATCH-5971670', 65.32, '2025-02-20'),
(69, 10, 'BATCH-5409226', 74.29, '2025-03-10'),
(70, 48, 'BATCH-0959888', 42.73, '2025-02-19'),
(71, 43, 'BATCH-5086530', 37.97, '2025-03-18'),
(72, 12, 'BATCH-4867457', 80.8, '2025-03-17'),
(73, 26, 'BATCH-9023884', 69.47, '2025-03-08'),
(74, 23, 'BATCH-0059772', 76.48, '2025-02-24'),
(75, 26, 'BATCH-6940125', 24.59, '2025-03-11'),
(76, 38, 'BATCH-5377129', 87.48, '2025-02-24'),
(77, 24, 'BATCH-4035651', 40.38, '2025-03-05'),
(78, 15, 'BATCH-6205971', 22.08, '2025-03-03'),
(79, 46, 'BATCH-3724094', 44.46, '2025-03-09'),
(80, 30, 'BATCH-3615897', 57.19, '2025-03-01'),
(81, 12, 'BATCH-7502516', 32.24, '2025-02-24'),
(82, 49, 'BATCH-5024578', 92.08, '2025-03-05'),
(83, 12, 'BATCH-3715129', 51.54, '2025-03-17'),
(84, 44, 'BATCH-6214664', 39.48, '2025-02-26'),
(85, 13, 'BATCH-2947729', 15.37, '2025-02-22'),
(86, 30, 'BATCH-9964051', 70.94, '2025-03-05'),
(87, 41, 'BATCH-7298924', 78.64, '2025-03-16'),
(88, 49, 'BATCH-7089571', 54.73, '2025-02-27'),
(89, 37, 'BATCH-5368303', 36.51, '2025-03-17'),
(90, 50, 'BATCH-0121365', 29.03, '2025-02-27'),
(91, 2, 'BATCH-6362287', 9.85, '2025-03-11'),
(92, 40, 'BATCH-5634963', 74.76, '2025-02-28'),
(93, 6, 'BATCH-1655170', 51.89, '2025-03-17'),
(94, 44, 'BATCH-0708243', 38.99, '2025-03-16'),
(95, 9, 'BATCH-1622829', 17.9, '2025-03-04'),
(96, 22, 'BATCH-7543477', 14.44, '2025-03-10'),
(97, 16, 'BATCH-6074170', 34.69, '2025-03-06'),
(98, 14, 'BATCH-5246656', 5.78, '2025-02-23'),
(99, 26, 'BATCH-6599527', 84.81, '2025-02-22'),
(100, 28, 'BATCH-8297265', 67.92, '2025-02-24'),
(101, 38, 'BATCH-1617338', 25.67, '2025-03-08'),
(102, 36, 'BATCH-8458521', 70.27, '2025-03-13'),
(103, 19, 'BATCH-0637470', 75.59, '2025-03-05'),
(104, 21, 'BATCH-8733585', 9.26, '2025-03-04'),
(105, 14, 'BATCH-9779165', 24.88, '2025-03-07'),
(106, 19, 'BATCH-5893114', 81.38, '2025-03-15'),
(107, 49, 'BATCH-6685765', 84.41, '2025-03-07'),
(108, 25, 'BATCH-6910569', 12.54, '2025-02-24'),
(109, 15, 'BATCH-2835460', 22.37, '2025-03-04'),
(110, 43, 'BATCH-2978739', 17.25, '2025-02-19'),
(111, 11, 'BATCH-7076369', 69.48, '2025-02-25'),
(112, 23, 'BATCH-2550438', 21.28, '2025-02-24'),
(113, 28, 'BATCH-6707067', 91.08, '2025-03-04'),
(114, 40, 'BATCH-4101871', 18.03, '2025-02-19'),
(115, 41, 'BATCH-8171911', 83.46, '2025-03-11'),
(116, 40, 'BATCH-4229535', 43.78, '2025-03-18'),
(117, 7, 'BATCH-2259485', 27.59, '2025-03-03'),
(118, 18, 'BATCH-7884162', 75.35, '2025-02-26'),
(119, 27, 'BATCH-9363058', 79.46, '2025-03-18'),
(120, 2, 'BATCH-6117263', 43.94, '2025-03-01'),
(121, 28, 'BATCH-6430014', 65.05, '2025-03-08'),
(122, 19, 'BATCH-6619295', 54.1, '2025-02-22'),
(123, 49, 'BATCH-2498803', 59.21, '2025-02-19'),
(124, 23, 'BATCH-5095950', 95.98, '2025-03-06'),
(125, 34, 'BATCH-8558227', 53.67, '2025-02-27'),
(126, 11, 'BATCH-5627630', 41.48, '2025-03-17'),
(127, 22, 'BATCH-7744008', 91.42, '2025-03-07'),
(128, 19, 'BATCH-8623651', 81.53, '2025-02-23'),
(129, 11, 'BATCH-0169856', 77.05, '2025-03-11'),
(130, 36, 'BATCH-6876694', 47.79, '2025-03-03'),
(131, 32, 'BATCH-6972713', 71.96, '2025-03-16'),
(132, 28, 'BATCH-9820958', 45.4, '2025-03-14'),
(133, 39, 'BATCH-7948186', 56.49, '2025-03-18'),
(134, 48, 'BATCH-5883925', 32.66, '2025-03-13'),
(135, 9, 'BATCH-9804747', 21.56, '2025-03-14'),
(136, 7, 'BATCH-4352341', 82.58, '2025-03-14'),
(137, 26, 'BATCH-7468653', 34.45, '2025-03-07'),
(138, 38, 'BATCH-0479792', 20.77, '2025-02-27'),
(139, 35, 'BATCH-7853866', 69.81, '2025-02-27'),
(140, 3, 'BATCH-0297847', 55.87, '2025-03-03'),
(141, 37, 'BATCH-0955278', 71.5, '2025-02-24'),
(142, 5, 'BATCH-3071393', 23.77, '2025-03-16'),
(143, 13, 'BATCH-9440283', 10.06, '2025-02-27'),
(144, 48, 'BATCH-2207146', 61.79, '2025-03-17'),
(145, 4, 'BATCH-8547810', 79.96, '2025-02-18'),
(146, 2, 'BATCH-2600224', 47.77, '2025-03-16'),
(147, 27, 'BATCH-9015671', 44.8, '2025-02-21'),
(148, 23, 'BATCH-8239066', 56.98, '2025-03-08'),
(149, 12, 'BATCH-6188056', 91.63, '2025-03-09'),
(150, 49, 'BATCH-0575987', 78.76, '2025-02-21'),
(151, 31, 'BATCH-5411620', 17.81, '2025-03-15'),
(152, 13, 'BATCH-1675556', 24.71, '2025-02-18'),
(153, 49, 'BATCH-6024815', 41.06, '2025-03-17'),
(154, 5, 'BATCH-4229574', 40.65, '2025-02-20'),
(155, 43, 'BATCH-8376235', 8.79, '2025-02-24'),
(156, 13, 'BATCH-2037595', 50.75, '2025-03-16'),
(157, 25, 'BATCH-5269158', 68.0, '2025-02-23'),
(158, 46, 'BATCH-1930735', 21.9, '2025-03-02'),
(159, 9, 'BATCH-5846475', 53.54, '2025-03-06'),
(160, 5, 'BATCH-7564576', 61.43, '2025-03-14'),
(161, 22, 'BATCH-4019949', 66.34, '2025-02-26'),
(162, 23, 'BATCH-1868558', 61.29, '2025-03-02'),
(163, 9, 'BATCH-6228028', 79.63, '2025-02-20'),
(164, 35, 'BATCH-1951692', 38.81, '2025-02-21'),
(165, 38, 'BATCH-0873538', 28.13, '2025-02-23'),
(166, 45, 'BATCH-4139508', 69.82, '2025-02-24'),
(167, 47, 'BATCH-9022377', 15.52, '2025-03-10'),
(168, 2, 'BATCH-8290091', 92.15, '2025-03-06'),
(169, 5, 'BATCH-8064027', 26.43, '2025-03-07'),
(170, 42, 'BATCH-2289612', 11.75, '2025-03-09'),
(171, 25, 'BATCH-8713865', 64.87, '2025-02-28'),
(172, 19, 'BATCH-8259116', 75.65, '2025-03-03'),
(173, 29, 'BATCH-8219709', 81.19, '2025-03-09'),
(174, 49, 'BATCH-2006111', 43.66, '2025-03-13'),
(175, 26, 'BATCH-8272667', 62.02, '2025-02-19'),
(176, 9, 'BATCH-7059942', 16.77, '2025-02-27'),
(177, 44, 'BATCH-7545234', 95.56, '2025-02-22'),
(178, 42, 'BATCH-6969817', 26.07, '2025-02-18'),
(179, 36, 'BATCH-5678723', 89.01, '2025-02-24'),
(180, 29, 'BATCH-9846938', 11.58, '2025-03-01'),
(181, 17, 'BATCH-7681787', 5.05, '2025-03-09'),
(182, 4, 'BATCH-1745402', 90.63, '2025-02-27'),
(183, 46, 'BATCH-8025744', 55.44, '2025-02-21'),
(184, 12, 'BATCH-9971165', 77.96, '2025-03-07'),
(185, 10, 'BATCH-2167577', 49.15, '2025-02-23'),
(186, 10, 'BATCH-1875051', 13.89, '2025-02-22'),
(187, 16, 'BATCH-8533256', 43.58, '2025-03-10'),
(188, 5, 'BATCH-7958449', 72.51, '2025-02-18'),
(189, 26, 'BATCH-7320127', 25.94, '2025-03-05'),
(190, 20, 'BATCH-2343633', 29.8, '2025-03-17'),
(191, 5, 'BATCH-7276329', 13.8, '2025-03-05'),
(192, 9, 'BATCH-7127999', 83.04, '2025-03-04'),
(193, 23, 'BATCH-5601327', 89.1, '2025-03-06'),
(194, 2, 'BATCH-5850615', 56.17, '2025-03-08'),
(195, 10, 'BATCH-9842028', 64.15, '2025-03-10'),
(196, 3, 'BATCH-6874269', 44.39, '2025-03-10'),
(197, 46, 'BATCH-3854102', 42.38, '2025-03-02'),
(198, 23, 'BATCH-3735614', 97.2, '2025-02-25'),
(199, 45, 'BATCH-7352718', 11.78, '2025-02-23'),
(200, 24, 'BATCH-9075824', 34.24, '2025-03-15');

INSERT INTO inventory_request (request_id, outlet_id, warehouse_id, ir_date, ir_status, approved_by) VALUES
(1, 16, 8, '2025-02-15', 1, NULL),
(2, 19, 13, '2025-01-19', 1, NULL),
(3, 19, 13, '2025-01-14', 1, NULL),
(4, 12, 6, '2025-01-09', 1, 20),
(5, 12, 11, '2025-01-11', 2, NULL),
(6, 16, 6, '2025-01-14', 2, 97),
(7, 16, 6, '2025-01-22', 0, NULL),
(8, 4, 8, '2025-01-04', 1, NULL),
(9, 20, 13, '2025-02-16', 0, NULL),
(10, 1, 11, '2025-01-15', 0, 92),
(11, 14, 6, '2025-01-07', 1, 41),
(12, 17, 18, '2025-02-11', 1, NULL),
(13, 17, 6, '2025-02-03', 1, 48),
(14, 16, 8, '2025-01-12', 0, 12),
(15, 4, 18, '2025-01-19', 0, NULL),
(16, 19, 18, '2025-01-13', 2, NULL),
(17, 4, 18, '2025-02-02', 2, NULL),
(18, 1, 18, '2025-01-14', 0, NULL),
(19, 5, 18, '2025-01-04', 0, 45),
(20, 14, 7, '2025-01-12', 2, NULL),
(21, 14, 18, '2025-01-05', 1, 41),
(22, 14, 8, '2025-02-03', 2, NULL),
(23, 17, 11, '2025-01-23', 2, NULL),
(24, 17, 6, '2025-01-10', 0, NULL),
(25, 17, 18, '2025-01-16', 2, NULL),
(26, 16, 8, '2025-01-04', 2, NULL),
(27, 14, 13, '2025-01-22', 0, 74),
(28, 1, 6, '2025-02-13', 2, 40),
(29, 20, 11, '2025-02-09', 2, NULL),
(30, 12, 11, '2025-02-15', 1, 7),
(31, 1, 8, '2025-02-05', 0, 72),
(32, 20, 11, '2025-01-19', 2, 85),
(33, 4, 18, '2025-02-14', 0, NULL),
(34, 17, 13, '2025-01-21', 2, NULL),
(35, 16, 11, '2025-01-06', 0, 69),
(36, 20, 8, '2025-01-19', 0, 89),
(37, 4, 11, '2025-01-11', 0, 35),
(38, 19, 18, '2025-01-29', 2, NULL),
(39, 12, 11, '2025-02-02', 1, 40),
(40, 19, 8, '2025-02-01', 0, 43),
(41, 5, 18, '2025-01-07', 0, 89),
(42, 19, 6, '2025-01-09', 0, 31),
(43, 5, 8, '2025-01-27', 1, NULL),
(44, 19, 8, '2025-02-11', 2, NULL),
(45, 4, 8, '2025-02-11', 2, 63),
(46, 20, 8, '2025-02-13', 2, 66),
(47, 14, 6, '2025-02-13', 1, 13),
(48, 4, 18, '2025-01-11', 2, 22),
(49, 12, 7, '2025-01-18', 0, NULL),
(50, 16, 6, '2025-01-10', 0, 83),
(51, 16, 6, '2025-01-25', 1, 80),
(52, 14, 7, '2025-01-14', 1, 75),
(53, 1, 8, '2025-01-28', 0, NULL),
(54, 12, 8, '2025-01-08', 2, 94),
(55, 1, 8, '2025-01-07', 1, NULL),
(56, 20, 8, '2025-01-02', 0, NULL),
(57, 4, 6, '2025-02-15', 0, NULL),
(58, 5, 13, '2025-02-10', 2, 62),
(59, 5, 6, '2025-01-29', 1, 9),
(60, 17, 18, '2025-02-02', 2, 83),
(61, 20, 8, '2025-01-22', 2, NULL),
(62, 16, 8, '2025-01-07', 1, NULL),
(63, 19, 8, '2025-02-10', 2, NULL),
(64, 1, 8, '2025-01-21', 1, 15),
(65, 14, 18, '2025-01-13', 1, 68),
(66, 4, 7, '2025-01-08', 2, 53),
(67, 17, 8, '2025-01-10', 0, NULL),
(68, 16, 8, '2025-01-31', 2, 12),
(69, 20, 8, '2025-01-20', 0, 90),
(70, 14, 8, '2025-01-09', 2, 43),
(71, 19, 13, '2025-01-10', 2, NULL),
(72, 16, 18, '2025-01-24', 2, 71),
(73, 17, 11, '2025-02-02', 2, NULL),
(74, 17, 8, '2025-01-31', 0, 89),
(75, 20, 8, '2025-02-16', 1, 29),
(76, 17, 18, '2025-02-08', 0, NULL),
(77, 1, 6, '2025-02-10', 2, 31),
(78, 14, 8, '2025-01-30', 1, 71),
(79, 14, 11, '2025-02-08', 0, 29),
(80, 16, 8, '2025-01-11', 2, 43),
(81, 20, 8, '2025-01-14', 2, 4),
(82, 16, 13, '2025-01-28', 0, NULL),
(83, 20, 8, '2025-01-22', 0, 5),
(84, 12, 13, '2025-01-14', 1, NULL);

INSERT INTO supplier (supplier_id, su_name, su_phone, su_email, su_address, su_postcode) VALUES
(1, 'Stevens, Nelson and Smith', '+1 (538) 485-8291', 'sheltonstephen@yahoo.com', '068 Patterson Mission Suite 668
Port Justinside, AB C6E1K1', 'G1G3N4'),
(2, 'Williams Group', '+1 (925) 377-3737', 'campbellashley@gmail.com', '050 Benjamin Vista
East Heather, BC M7V 5S3', 'B7X 5B1'),
(3, 'Morales-Stone', '677-608-4290', 'garrett98@hotmail.com', '46987 Erik Squares
Port Hayley, NS N3M 5M5', 'V9V7L6'),
(4, 'Perry PLC', '584-241-1698 x105', 'martinezamy@watson.com', '5426 Freeman Crest Suite 809
North Tracy, NB H6B 6P8', 'B5C 4V2'),
(5, 'Washington Inc', '(488) 603-3253', 'alejandra49@yahoo.com', '35260 Gaines Path Suite 307
South Amandabury, BC B8X 4J6', 'S9S8K1'),
(6, 'Farmer, May and Freeman', '(153) 015-8627 x879', 'thomas97@gross-castro.biz', '72116 Benjamin Shores Apt. 133
Edwardston, ON B5E 8T1', 'A3G7B5'),
(7, 'Mays PLC', '1 (457) 738-4784', 'williamsbrian@phelps-cardenas.info', '338 Joshua Underpass Suite 034
Brittanyborough, PE G7M3M2', 'C5G5J6'),
(8, 'Anderson PLC', '257.071.8050', 'brianmay@gonzalez.com', '6745 Jessica Isle Suite 385
East Danny, NB P5T 7Y4', 'L4G 8B3'),
(9, 'Ramos, Shepherd and Williams', '326-082-5821', 'rjones@gray-woodard.info', '43732 Flowers Divide
Lake Amyhaven, MB G5E7N9', 'E9K 2P8'),
(10, 'Cruz, Gutierrez and Washington', '+1 (945) 635-6574', 'omartinez@hotmail.com', '71736 Pope Hollow
Port Deannafort, NS K4S 1E6', 'M4C2R5'),
(11, 'Maynard Group', '(910) 357-8879', 'victoria01@hotmail.com', '737 Allen Manor
Longton, ON C5Y 5X4', 'C8C 4J7'),
(12, 'Bishop LLC', '+1 (139) 533-6591', 'christopher63@yahoo.com', '4670 Christopher Isle
Lake Amymouth, MB E4E8H1', 'J5T 7G5'),
(13, 'Sheppard, Shields and Lewis', '339-757-4223', 'kthomas@james.biz', '176 Dawn Spring
South Danielborough, MB V7G2G2', 'P2L2N1'),
(14, 'Rush, Alvarez and Wells', '+1 (351) 794-4952', 'njohnston@yahoo.com', '3122 Sherry Fork
North Jacquelinefort, NL M2P5S7', 'K6E9V5'),
(15, 'Thomas Ltd', '(988) 409-9656', 'johnmccarthy@herrera-campbell.com', '7939 Harrington Well Apt. 676
South Andrew, NL N4H 1R7', 'C3A5A5'),
(16, 'Mitchell, Williams and Morris', '(896) 634-4981', 'victoriabates@morgan.net', '5950 Salas Valley Apt. 678
Jenniferside, BC T6E 2M8', 'L2Y2K9'),
(17, 'Washington, Church and Cobb', '(681) 733-6761', 'williamscorey@smith-brown.com', '4118 Wallace Shores
Antoniofort, NT P9K4N5', 'M5H1S9'),
(18, 'Perez PLC', '998.327.7311', 'carrolltonya@yahoo.com', '46235 Butler Fords
Kristinabury, NL H7T5M8', 'X9B 1G8'),
(19, 'Greer Ltd', '1 (614) 121-5087', 'ramirezgabriel@gmail.com', '513 Jones Tunnel Apt. 008
Christophermouth, NU G5G2K8', 'H1H 6A1'),
(20, 'Smith, Brown and Nelson', '1-905-495-8988', 'zmeyers@yahoo.com', '84242 Washington Tunnel Apt. 003
East Gabrielberg, QC T1L5T8', 'C1K8C6'),
(21, 'Howard and Sons', '206-420-0198 x446', 'howardjose@gmail.com', '17564 Scott Trace
Reyesmouth, NL B6L 2M2', 'K7B 4L5'),
(22, 'Scott PLC', '1-479-639-7441', 'meyerjennifer@reeves.biz', '8095 Chandler Plains
New Dianeton, MB A9R 9R5', 'B9L8T9'),
(23, 'Watts-Thomas', '769-938-5705', 'matthew43@hotmail.com', '68226 Lozano Ridges Apt. 308
East Patricia, NU L9K6J4', 'R8M 7A5'),
(24, 'Ford-Price', '(543) 767-0589 x580', 'rebeccaquinn@gomez-wu.com', '829 Luis Skyway
Kristinshire, SK S9J8G9', 'K5X 2B3'),
(25, 'Hill and Sons', '934.715.1749', 'gabrielballard@hotmail.com', '884 Roberta Squares
Wuview, BC S1Y 8L5', 'R4V 5G7'),
(26, 'Garza, Nelson and Woodward', '1-791-746-4969', 'dana28@yahoo.com', '4547 Sheryl Road
Lake Jasonborough, YT N7A4H4', 'H8H 4R7'),
(27, 'Ferguson Ltd', '+1 (399) 884-6030', 'hayeselizabeth@garcia-jones.biz', '3531 John Streets
Josephtown, SK J8A 5M3', 'T6K4K7'),
(28, 'Kaufman-Gonzales', '(494) 924-2518 x783', 'williamsjames@gmail.com', '9876 King Walks Suite 170
Wagnerborough, AB L3V 5M4', 'V5G7E2'),
(29, 'Sullivan-Parker', '108 917 3142', 'richard46@richardson.com', '6220 Dalton View Apt. 384
East Michael, PE V6M3E1', 'E9R 6T4'),
(30, 'Martin-Wagner', '511 434 0067', 'uwilkinson@gonzalez.net', '24185 Ross Cape Suite 929
North Leslie, SK C8G8M3', 'P3C 3C4'),
(31, 'Blackwell, Elliott and Alvarez', '1-726-280-3721', 'sjohns@gmail.com', '02758 Lawrence Course Suite 735
Port Joshua, NT V5A 1H4', 'V1J5N4'),
(32, 'Johnson-Kennedy', '461-742-1755 x904', 'rbrown@stewart.com', '309 Marvin Row
Nicholastown, NT C3T 9L2', 'Y5P 7L4'),
(33, 'Frost-House', '1-909-477-4348', 'veronicaandrews@hotmail.com', '56705 Smith Rest Apt. 930
Port Mindy, NB R8Y 9J2', 'V7L1S2'),
(34, 'Baker, Cordova and Doyle', '(637) 708-5403 x119', 'shernandez@gmail.com', '09514 David Circles Apt. 106
Oliverton, MB B5R 5H8', 'N6R4M8'),
(35, 'Howell Group', '611-955-4120', 'timothy57@hotmail.com', '125 Dixon Walks Suite 055
Weaverville, NT S7B 9X4', 'E7X 4G8'),
(36, 'Castillo Ltd', '(207) 060-0155 x923', 'rtrevino@cox-moran.com', '50067 Cameron Ferry Suite 151
Lake Tyler, PE G9N3Y2', 'K5E 1T7'),
(37, 'Martin Ltd', '1-622-591-4325', 'hinestara@hotmail.com', '27499 Emily Road Apt. 102
Blanchardborough, QC S7B3G2', 'X3H6N1'),
(38, 'Klein-Guerrero', '825.634.4754', 'aaronroberts@weber-parker.info', '060 Rodriguez Underpass Suite 458
West Laura, NL L1R 4B4', 'A3N 1G6'),
(39, 'Olson Ltd', '(553) 880-2805', 'martinezjared@gmail.com', '80797 Davis Manor
East David, NU E7B6X5', 'X5J 9H1'),
(40, 'Harris, Mora and Williams', '(732) 964-3895', 'hernandezashley@peters-perez.org', '939 Small Walk Suite 054
West Crystalside, AB T7X6C4', 'V9H 4T6'),
(41, 'Neal, Jordan and Sharp', '206-073-1029', 'danielmcgee@gmail.com', '528 Linda Prairie
West Dustinhaven, YT V7J1R4', 'G7N9S9'),
(42, 'Jackson-Sweeney', '(117) 541-0828 x916', 'petersonlogan@steele.net', '0125 Miller Parkway
Andersonberg, NT H1K 2J5', 'R2T5T8'),
(43, 'Peterson-Newman', '+1 (445) 196-8343', 'christopherrasmussen@gmail.com', '48403 Curtis Squares Suite 024
Yvonneshire, NB T6A 3B4', 'Y7R 9E2'),
(44, 'Thomas, Johnson and Castillo', '(969) 750-4553 x859', 'hinesronald@washington.com', '1002 William River Apt. 853
Sarahberg, NL H5C 9J5', 'P7Y9A6'),
(45, 'Davis, Marshall and Johnson', '(587) 850-2155 x133', 'perrystanley@hotmail.com', '9637 Vanessa Bridge
Mcmillanstad, NU K3P 9M3', 'P9P 6A6'),
(46, 'Hunter PLC', '1-871-164-7984', 'lhampton@smith.com', '349 Lisa Well Apt. 076
Natalietown, PE B3L5K3', 'Y8B 7X1'),
(47, 'Jimenez, Daugherty and Turner', '156 267 3147', 'hensonvanessa@mckinney.com', '32576 Everett Drives
Turnerbury, YT K4S6R3', 'S5A 3J8'),
(48, 'Henderson, Johns and Howe', '+1 (578) 636-3206', 'ypaul@davenport.com', '02418 Miller Spurs Apt. 001
Susanmouth, MB K5S 9P3', 'X3E6Y6'),
(49, 'Hansen, Matthews and Bridges', '(187) 531-7550', 'steve71@bennett.com', '0543 Henderson Wall Apt. 545
Charlesview, SK K7T 1C6', 'X9G 2K5'),
(50, 'Yates-Mason', '177-005-2695', 'susan89@gmail.com', '3156 Stacey Grove Apt. 186
Pricemouth, NU G9A8J5', 'M6G 7B8');

INSERT INTO supplier_order (so_id, supplier_id, warehouse_id, so_price, currency_id, so_date, so_pay_method, so_pay_status, delivery_status, so_handler) VALUES
(1, 35, 6, 300.4, 1, '2024-08-29', 1, 2, 0, 35),
(2, 20, 7, 305.74, 1, '2020-01-29', 3, 1, 2, 10),
(3, 47, 8, 4195.41, 1, '2020-09-10', 0, 2, 1, 78),
(4, 43, 8, 2408.95, 1, '2020-01-20', 1, 1, 2, 88),
(5, 5, 7, 787.89, 1, '2024-07-17', 2, 0, 1, 55),
(6, 20, 8, 3240.15, 1, '2023-11-30', 2, 2, 2, 35),
(7, 7, 7, 1657.9, 1, '2024-12-29', 0, 1, 1, 82),
(8, 45, 7, 1367.91, 1, '2024-12-23', 1, 0, 0, 59),
(9, 37, 7, 1199.81, 1, '2024-11-08', 0, 2, 1, 53),
(10, 13, 6, 3766.93, 1, '2022-06-05', 2, 2, 2, 38),
(11, 2, 8, 4351.89, 1, '2020-04-30', 2, 2, 1, 84),
(12, 2, 8, 2464.04, 1, '2020-12-21', 2, 1, 2, 42),
(13, 12, 7, 267.42, 1, '2020-11-19', 0, 2, 2, 29),
(14, 42, 7, 1239.92, 1, '2020-08-16', 3, 2, 2, 33),
(15, 6, 6, 3832.5, 1, '2020-04-03', 1, 2, 1, 82),
(16, 16, 6, 2667.79, 1, '2020-03-01', 0, 0, 1, 90),
(17, 48, 6, 1795.17, 1, '2021-10-07', 2, 1, 2, 5),
(18, 9, 7, 2074.73, 1, '2021-09-05', 1, 1, 1, 76),
(19, 48, 7, 930.21, 1, '2022-01-14', 3, 0, 1, 29),
(20, 8, 7, 4328.1, 1, '2022-01-06', 2, 0, 2, 13),
(21, 50, 6, 1316.14, 1, '2024-12-07', 3, 2, 1, 94),
(22, 35, 6, 3157.47, 1, '2023-09-16', 1, 2, 2, 77),
(23, 16, 7, 4666.93, 1, '2021-02-28', 0, 2, 2, 36),
(24, 35, 6, 159.6, 1, '2024-01-04', 2, 2, 0, 54),
(25, 39, 7, 4643.14, 1, '2022-01-31', 1, 0, 2, 100),
(26, 30, 8, 1297.42, 1, '2022-05-23', 2, 1, 2, 79),
(27, 22, 7, 3972.1, 1, '2023-09-28', 0, 0, 1, 65),
(28, 29, 7, 798.34, 1, '2021-05-29', 1, 2, 1, 72),
(29, 8, 7, 2836.97, 1, '2020-10-27', 1, 0, 0, 93),
(30, 13, 8, 3542.64, 1, '2020-08-04', 2, 2, 2, 57),
(31, 40, 6, 2319.87, 1, '2021-11-15', 1, 1, 0, 18),
(32, 23, 8, 4303.13, 1, '2021-07-23', 3, 0, 0, 69),
(33, 45, 6, 3306.53, 1, '2025-01-21', 3, 1, 1, 55),
(34, 20, 6, 4614.03, 1, '2022-01-16', 1, 2, 1, 74),
(35, 28, 6, 1607.42, 1, '2020-03-23', 1, 2, 0, 63),
(36, 41, 6, 4194.99, 1, '2023-12-11', 2, 1, 0, 14),
(37, 15, 7, 440.41, 1, '2022-08-18', 3, 1, 0, 65),
(38, 5, 7, 936.31, 1, '2022-07-15', 1, 1, 1, 76),
(39, 17, 6, 824.73, 1, '2022-03-10', 1, 0, 2, 70),
(40, 25, 7, 2012.41, 1, '2020-01-02', 3, 1, 1, 57),
(41, 6, 6, 1561.88, 1, '2024-04-27', 1, 1, 1, 56),
(42, 24, 6, 176.24, 1, '2025-01-10', 3, 1, 0, 87),
(43, 30, 6, 4575.01, 1, '2020-10-29', 1, 0, 1, 36),
(44, 25, 7, 3127.58, 1, '2020-06-23', 3, 0, 2, 12),
(45, 17, 7, 3716.8, 1, '2020-08-06', 1, 1, 2, 59),
(46, 45, 7, 167.37, 1, '2023-07-25', 2, 0, 2, 36),
(47, 40, 7, 528.59, 1, '2021-09-18', 0, 0, 1, 47),
(48, 23, 7, 2088.24, 1, '2020-12-23', 0, 0, 1, 23);

INSERT INTO product_order (po_id, customer_id, outlet_id, po_price, currency_id, po_date, payment_method, payment_status) VALUES
(1, 69, 20, 224.06, 1, '2023-07-02', 0, 1),
(2, 68, 14, 484.66, 1, '2022-03-29', 2, 0),
(3, 18, 14, 146.38, 1, '2022-01-26', 2, 1),
(4, 73, 19, 153.51, 1, '2024-08-29', 2, 0),
(5, 89, 1, 458.54, 1, '2020-09-03', 0, 2),
(6, 27, 12, 466.92, 1, '2023-07-25', 0, 2),
(7, 53, 5, 128.05, 1, '2020-11-25', 3, 1),
(8, 4, 4, 336.95, 1, '2020-04-24', 0, 0),
(9, 3, 20, 72.17, 1, '2020-02-24', 1, 0),
(10, 74, 1, 337.38, 1, '2023-12-22', 2, 1),
(11, 12, 19, 409.1, 1, '2024-07-05', 1, 0),
(12, 36, 17, 36.37, 1, '2024-12-26', 1, 0),
(13, 21, 16, 50.98, 1, '2022-10-01', 1, 2),
(14, 32, 12, 53.53, 1, '2022-06-23', 0, 0),
(15, 2, 20, 23.11, 1, '2022-02-09', 0, 1),
(16, 24, 1, 174.29, 1, '2022-09-11', 3, 0),
(17, 27, 5, 77.07, 1, '2020-08-07', 1, 2),
(18, 11, 20, 249.9, 1, '2024-09-30', 0, 1),
(19, 7, 19, 322.83, 1, '2022-05-31', 3, 2),
(20, 85, 12, 401.74, 1, '2022-09-26', 0, 0),
(21, 49, 20, 233.86, 1, '2021-12-09', 2, 1),
(22, 49, 14, 461.03, 1, '2022-11-04', 2, 1),
(23, 49, 4, 285.73, 1, '2024-11-02', 0, 0),
(24, 47, 19, 449.88, 1, '2021-04-26', 3, 2),
(25, 67, 17, 473.7, 1, '2020-02-18', 3, 1),
(26, 35, 14, 305.74, 1, '2024-09-13', 0, 2),
(27, 11, 20, 414.84, 1, '2021-07-27', 0, 1),
(28, 24, 14, 68.31, 1, '2023-06-10', 1, 0),
(29, 66, 17, 307.92, 1, '2023-03-25', 1, 2),
(30, 75, 16, 370.92, 1, '2021-11-15', 2, 0),
(31, 29, 16, 212.67, 1, '2020-12-17', 2, 0),
(32, 11, 19, 433.83, 1, '2020-04-29', 1, 0),
(33, 7, 20, 496.43, 1, '2020-09-11', 3, 2),
(34, 61, 14, 284.13, 1, '2020-07-04', 2, 1),
(35, 78, 17, 217.49, 1, '2020-10-02', 1, 2),
(36, 96, 14, 107.7, 1, '2022-09-29', 3, 2),
(37, 93, 17, 232.62, 1, '2023-01-30', 2, 2),
(38, 63, 1, 255.36, 1, '2020-01-12', 0, 0),
(39, 98, 17, 255.97, 1, '2022-12-05', 1, 0),
(40, 76, 5, 94.34, 1, '2020-07-09', 1, 0),
(41, 97, 14, 16.64, 1, '2024-07-13', 0, 1),
(42, 86, 20, 439.21, 1, '2024-12-15', 3, 2),
(43, 17, 20, 277.72, 1, '2020-03-26', 2, 2),
(44, 52, 1, 334.82, 1, '2024-12-11', 2, 2),
(45, 2, 20, 82.5, 1, '2023-12-30', 1, 1),
(46, 65, 14, 439.35, 1, '2022-01-28', 3, 1),
(47, 85, 14, 151.43, 1, '2020-07-15', 3, 2),
(48, 24, 19, 365.71, 1, '2024-10-12', 0, 2),
(49, 88, 12, 354.66, 1, '2024-07-24', 3, 0),
(50, 84, 5, 100.89, 1, '2022-11-29', 2, 2),
(51, 51, 4, 26.6, 1, '2023-11-14', 0, 0),
(52, 45, 17, 323.81, 1, '2021-06-01', 1, 0),
(53, 92, 12, 285.0, 1, '2021-07-05', 1, 1),
(54, 70, 20, 154.96, 1, '2023-03-28', 1, 1),
(55, 16, 17, 469.39, 1, '2025-01-17', 0, 2),
(56, 93, 20, 293.23, 1, '2022-11-11', 3, 1),
(57, 78, 1, 118.0, 1, '2022-03-14', 1, 2),
(58, 97, 4, 285.72, 1, '2022-03-08', 3, 0),
(59, 55, 12, 256.62, 1, '2024-01-13', 2, 2),
(60, 68, 17, 322.43, 1, '2022-04-18', 3, 2),
(61, 9, 17, 487.53, 1, '2021-07-25', 2, 0),
(62, 76, 1, 108.55, 1, '2023-07-21', 0, 0),
(63, 61, 16, 36.6, 1, '2022-08-03', 0, 2),
(64, 82, 19, 239.44, 1, '2021-04-05', 2, 2),
(65, 100, 1, 405.41, 1, '2021-09-25', 2, 2),
(66, 59, 5, 201.13, 1, '2021-09-01', 0, 0),
(67, 20, 14, 165.61, 1, '2020-06-22', 2, 1),
(68, 32, 1, 127.33, 1, '2023-11-11', 2, 2),
(69, 95, 4, 458.77, 1, '2020-11-21', 3, 2),
(70, 67, 17, 264.13, 1, '2022-04-16', 0, 2),
(71, 27, 5, 404.12, 1, '2020-12-22', 2, 2),
(72, 100, 4, 437.03, 1, '2023-05-04', 1, 1),
(73, 97, 4, 265.67, 1, '2022-05-20', 2, 2),
(74, 71, 5, 156.91, 1, '2023-03-04', 0, 1),
(75, 99, 12, 119.76, 1, '2024-05-23', 1, 0),
(76, 42, 14, 171.84, 1, '2023-03-31', 1, 2),
(77, 27, 5, 254.4, 1, '2024-12-30', 3, 0),
(78, 67, 1, 303.45, 1, '2021-08-22', 1, 1),
(79, 73, 19, 81.34, 1, '2020-07-04', 0, 2),
(80, 54, 12, 197.26, 1, '2020-08-20', 1, 1),
(81, 63, 17, 295.47, 1, '2020-07-08', 0, 2),
(82, 33, 14, 189.87, 1, '2021-12-18', 3, 0),
(83, 15, 1, 342.27, 1, '2020-04-07', 2, 2),
(84, 24, 1, 269.03, 1, '2023-04-10', 1, 1),
(85, 11, 14, 273.26, 1, '2020-07-07', 0, 0),
(86, 95, 12, 294.95, 1, '2021-07-15', 3, 2),
(87, 50, 16, 204.61, 1, '2021-11-22', 1, 0),
(88, 81, 20, 390.18, 1, '2020-09-24', 1, 1),
(89, 45, 16, 373.14, 1, '2021-01-13', 2, 1),
(90, 12, 1, 428.94, 1, '2024-05-31', 3, 0),
(91, 5, 4, 30.86, 1, '2024-08-26', 3, 1),
(92, 12, 4, 473.36, 1, '2021-07-19', 2, 0),
(93, 100, 4, 129.32, 1, '2022-08-07', 2, 1),
(94, 8, 1, 23.04, 1, '2021-07-10', 2, 2),
(95, 25, 19, 323.46, 1, '2022-07-05', 3, 0),
(96, 29, 12, 478.21, 1, '2024-05-24', 0, 0),
(97, 40, 4, 472.7, 1, '2024-08-09', 2, 2),
(98, 30, 16, 454.48, 1, '2022-06-02', 0, 2),
(99, 12, 20, 121.3, 1, '2022-09-27', 2, 2),
(100, 27, 1, 314.74, 1, '2021-08-12', 3, 2);
INSERT INTO delivery (delivery_id, po_id, tracking_number, sender, receiver, courier, d_address, d_est_date, d_act_date, deliver_type, deliver_status) VALUES
(1, 1, 'TRK-834484348', 'Scott Ramsey', 'Elizabeth Garcia', 'Hampton-Jones', '7041 Black Mews
North Tabitha, ON L7T1A5', '2025-03-12', '2025-03-15', 1, 0),
(2, 2, 'TRK-433166731', 'Justin Potts', 'Michelle Mendez', 'Rivas, Pace and Franklin', '4568 Deborah Bypass Suite 714
South Nancy, QC Y3Y 9E8', '2025-03-02', '2025-03-01', 1, 0),
(3, 3, 'TRK-910656125', 'John Butler', 'John Woodward', 'Roberts LLC', '89420 John Shore Suite 468
Kellyport, NS R2A5J1', '2025-03-12', '2025-03-09', 1, 1),
(4, 4, 'TRK-858925682', 'Wendy Weiss', 'Kyle Vasquez', 'Hernandez LLC', '1765 Todd Station Apt. 724
East Jimmy, AB V1H 8H3', '2025-02-24', '2025-03-10', 1, 0),
(5, 5, 'TRK-178936340', 'Christian Hale', 'Christina Bryant', 'Lane Group', '8491 Holmes Mews Suite 691
West Anthony, NT X3N 9G6', '2025-02-27', NULL, 0, 0),
(6, 6, 'TRK-557339060', 'Lisa Carrillo', 'Teresa Thornton', 'Thomas Ltd', '52510 Harris Light Suite 274
Port Shawnview, NT L6R 2M2', '2025-03-13', '2025-02-23', 1, 0),
(7, 7, 'TRK-689318493', 'Carla Martinez', 'Richard Jones', 'Lee and Sons', '14424 Davis Manor Suite 782
Port Breanna, YT H6R 3A1', '2025-03-08', NULL, 1, 0),
(8, 8, 'TRK-138399486', 'Jessica Stewart', 'George Patterson', 'Mills Inc', '20782 Bradley Port Suite 720
Hinesshire, QC J4V4N7', '2025-03-08', '2025-02-25', 0, 0),
(9, 9, 'TRK-917870332', 'Olivia Hall', 'Amanda Lopez', 'Martin and Sons', '79681 Vanessa Via Suite 674
West Jessica, ON C2V5S3', '2025-03-08', '2025-02-24', 0, 2),
(10, 10, 'TRK-861844696', 'Kathy Flores', 'Cynthia Turner', 'Coleman-Acevedo', '240 King Road Apt. 123
Michaelside, AB P2X 1T2', '2025-03-09', '2025-02-28', 1, 1),
(11, 11, 'TRK-890722702', 'David Sims', 'Miss Tina Burton', 'Bryant-Payne', '320 Hubbard Court Suite 222
Garciashire, AB S4Y9B9', '2025-02-18', NULL, 0, 0),
(12, 12, 'TRK-527458436', 'Michael Jones', 'Dalton Robinson', 'Wolfe-Daniels', '676 Craig Summit Suite 432
Johnstonshire, PE G9G 6K3', '2025-03-15', '2025-02-28', 0, 0),
(13, 13, 'TRK-831023038', 'Karen Boyd', 'Jonathan Miller', 'Cruz-Murray', '016 Fleming Row
Rachelhaven, SK V7H4V2', '2025-02-18', '2025-03-18', 1, 2),
(14, 14, 'TRK-069924004', 'Marcus Ryan', 'April Cook', 'Olsen-Nguyen', '135 Manning Lakes Suite 681
East Kristen, ON L9K 8T5', '2025-03-11', '2025-02-24', 0, 2),
(15, 15, 'TRK-770244543', 'Jennifer Salas', 'Jeffrey Ramirez', 'Hobbs, Frost and Bean', '878 Torres Ferry
Suzanneton, NT A4K 3L2', '2025-02-19', NULL, 1, 0),
(16, 16, 'TRK-944278252', 'Timothy Bailey', 'Teresa Howard', 'Williams, Grimes and Sullivan', '833 Burton Plain Apt. 714
Angelamouth, NL A3C8H3', '2025-02-22', '2025-03-12', 1, 2),
(17, 17, 'TRK-228329531', 'Anna Chan', 'Jason Weeks', 'Coleman-Levy', '4175 Alvin Forks
Rachelside, YT K3A 4A4', '2025-03-11', '2025-03-03', 0, 2),
(18, 18, 'TRK-119091918', 'Anthony Kim', 'Sarah Cox', 'Parks-Li', '121 Diane Isle
Smithland, NS X1G2G4', '2025-02-23', '2025-03-15', 0, 0),
(19, 19, 'TRK-809972962', 'Samantha Bailey', 'Derrick Roy', 'Hendricks Ltd', '2254 Alicia Harbors Suite 271
Paulstad, QC T9R1V7', '2025-03-07', '2025-03-08', 1, 0),
(20, 20, 'TRK-485966342', 'Matthew Brewer', 'Deborah Kaiser', 'Cole, Freeman and Yates', '334 Miller Views Suite 437
Pearsonmouth, NL R4E 8C8', '2025-03-09', NULL, 1, 0),
(21, 21, 'TRK-122104050', 'Susan Taylor', 'Mitchell Moran', 'Wright-Shannon', '623 Thomas Crossing
West Daniel, NU A8R9L3', '2025-02-25', '2025-03-11', 1, 1),
(22, 22, 'TRK-573483346', 'Laura Martinez', 'Randall Stewart', 'Hale-Lewis', '587 Hayes Ferry Suite 380
Caseymouth, MB P1K 8P9', '2025-02-26', '2025-03-01', 0, 0),
(23, 23, 'TRK-642799621', 'Kaitlin Thomas', 'Dr. Melissa Hunt', 'Moore, Harrison and Sanders', '02484 Pope Key Apt. 545
Carolton, NT P1E7A3', '2025-02-28', '2025-03-17', 0, 0),
(24, 24, 'TRK-629528290', 'Cassandra Wilcox', 'Mr. Joseph George', 'Lawrence and Sons', '40930 Hart Spur Suite 071
Rogersshire, ON R2B7N8', '2025-02-20', '2025-03-08', 1, 2),
(25, 25, 'TRK-532579507', 'Willie Richardson', 'Catherine Torres', 'Warren Group', '13886 Howe Motorway Apt. 166
North Lindahaven, ON A1L6C6', '2025-02-18', '2025-03-04', 0, 1),
(26, 26, 'TRK-618003061', 'Isaiah Harper', 'Herbert Brewer', 'Bryant, Stephens and Martinez', '4909 Jessica Place
Tyroneview, QC S5C 7A9', '2025-03-05', '2025-02-28', 0, 1),
(27, 27, 'TRK-234196918', 'Kyle Curtis', 'Elizabeth Evans', 'Ferguson PLC', '9446 Joseph Manor
East Andre, NU H9A 4N4', '2025-03-09', '2025-03-14', 1, 1),
(28, 28, 'TRK-637478059', 'James Medina', 'Angela Spence', 'Robbins-Allen', '8232 Tanya Plaza
Roberttown, NL L4K 5G5', '2025-03-04', NULL, 1, 2),
(29, 29, 'TRK-654475234', 'Carlos Campbell', 'Brandon Ward', 'Henderson, Williams and Rush', '45061 Miller Road Apt. 020
Lake Edwardton, YT K7C 4T2', '2025-03-16', NULL, 1, 2),
(30, 30, 'TRK-118341694', 'Kenneth Chavez', 'Karen Myers', 'Austin Inc', '586 Walter Isle Suite 173
Boyerfurt, BC T5L 1G2', '2025-03-04', '2025-02-28', 0, 0),
(31, 31, 'TRK-327639447', 'Douglas Stevens', 'Alexis Murphy', 'Phillips LLC', '9810 Gordon Junction Apt. 999
West John, NT A8B8T4', '2025-02-22', '2025-03-14', 0, 2),
(32, 32, 'TRK-877804384', 'Melissa Roberson', 'Danielle Blair DDS', 'Barron-Walsh', '034 Robinson Forges Apt. 010
South Timothy, YT K3C4L2', '2025-03-14', '2025-02-24', 1, 2),
(33, 33, 'TRK-799317118', 'Janice Reeves', 'Veronica Rose', 'Cooper-Rodriguez', '7293 Teresa Shore Apt. 949
Michaelfurt, YT K1X5N1', '2025-03-10', '2025-03-04', 1, 1),
(34, 34, 'TRK-908524589', 'Erin Smith', 'Steven Riley', 'Hill LLC', '5141 Werner Hills Suite 835
North Thomasmouth, NS C4N 2S2', '2025-03-16', '2025-03-03', 1, 2),
(35, 35, 'TRK-551015533', 'Allen Myers', 'Steven Cummings', 'Jenkins-Le', '95877 Jeffrey Throughway
Port Aliciaville, NS E9M 2R7', '2025-02-25', '2025-03-17', 0, 1),
(36, 36, 'TRK-266368896', 'Andrea Thomas', 'Meghan Morris', 'Cook-Fields', '561 Lopez Rapid
Lake Joyborough, BC G5H 5K9', '2025-02-25', NULL, 1, 1),
(37, 37, 'TRK-015801632', 'Cynthia Reynolds', 'Michelle Cummings', 'Anderson-Hill', '4600 Kathleen Cape Suite 135
Maxwellburgh, ON V3A9T5', '2025-03-06', '2025-02-20', 0, 2),
(38, 38, 'TRK-837673359', 'Rebecca Watson', 'Dustin Skinner', 'Lopez-Wallace', '1302 Jillian Ferry
Port Colinborough, MB B9N 1V4', '2025-03-05', '2025-03-06', 0, 0),
(39, 39, 'TRK-762533115', 'Thomas Scott', 'Sandy Cox', 'Bryant, Turner and Villegas', '9874 Matthew Rue
West Lauriemouth, NS B4R 5B9', '2025-03-04', NULL, 0, 1),
(40, 40, 'TRK-020894588', 'Leon Bentley', 'Jessica Harris', 'Moran Group', '92600 David Fall Apt. 029
East Wendyberg, NL J6M1N7', '2025-02-25', NULL, 0, 2),
(41, 41, 'TRK-203871562', 'Donna Garrett', 'Wendy Moran', 'Carroll-Chandler', '8103 William Ports Suite 862
Gatesfurt, QC C9L 2B4', '2025-03-17', NULL, 0, 1),
(42, 42, 'TRK-354427482', 'Joanne Miller', 'Valerie Booth', 'Baker Inc', '8330 Lisa Dam
Butlermouth, QC A3R 7M7', '2025-03-05', NULL, 0, 0),
(43, 43, 'TRK-777984124', 'Eric Reese', 'Connie Fernandez', 'Moore-Mcknight', '60429 Amy Brook Apt. 089
New Lonnie, PE K7A 5X5', '2025-03-04', '2025-02-19', 0, 0),
(44, 44, 'TRK-500840975', 'Juan Keller', 'Daniel Sandoval', 'Williams, Malone and Gutierrez', '586 Wilson Crossing
Torresborough, NT B9T9R8', '2025-03-11', NULL, 0, 0),
(45, 45, 'TRK-458026374', 'Zachary Valenzuela', 'Barbara Castillo', 'Fisher, Middleton and Crane', '767 Reed Mountains Suite 199
South Tiffanychester, NB V2P9E5', '2025-03-03', '2025-02-27', 0, 2),
(46, 46, 'TRK-860095771', 'James Berry', 'Bryan Garrett', 'Kim-Benson', '2031 Melissa Place Apt. 749
Port Anthony, NL K9P 3E8', '2025-02-24', '2025-02-23', 0, 2),
(47, 47, 'TRK-848543586', 'Jesus Allen', 'Megan Peterson', 'Lyons, Lewis and Jordan', '4950 Franklin Harbors
Larrymouth, PE S6R3M5', '2025-03-15', '2025-03-09', 1, 0),
(48, 48, 'TRK-769016994', 'John Long', 'Stephanie Stevenson', 'Estes-Wilson', '869 Jones Orchard Suite 184
Lisaburgh, NU V2B9H5', '2025-03-07', '2025-03-17', 1, 1),
(49, 49, 'TRK-188171367', 'Melissa James', 'Steven Hill', 'Parker and Sons', '68753 Morton Gardens Suite 143
Barajasfort, MB M2L4T1', '2025-02-23', '2025-03-15', 0, 0),
(50, 50, 'TRK-746467806', 'William Lewis', 'Chad Brown', 'Ferguson-Mccormick', '01025 Caleb Lodge Suite 806
Douglasville, MB B3M 9S2', '2025-03-18', '2025-03-07', 1, 2),
(51, 51, 'TRK-896459366', 'Carol Hill', 'Alexandra West', 'Wood-Johnston', '646 Farrell Village Apt. 483
Port Ericaburgh, NB P9G7M7', '2025-03-12', '2025-02-21', 0, 2),
(52, 52, 'TRK-807170217', 'Edwin Dawson', 'Diane Russell', 'Morgan-Vaughn', '190 Robinson Valley Apt. 349
West Teresamouth, NS B8T 8C6', '2025-03-18', NULL, 1, 1),
(53, 53, 'TRK-207437538', 'Nicole Collins', 'Regina Perkins', 'Rodriguez, Anderson and Drake', '722 Matthew Wall
Port Hailey, SK L6J 8P1', '2025-02-20', '2025-03-08', 0, 2),
(54, 54, 'TRK-791990668', 'Jordan Gates', 'James Soto', 'Williams-Drake', '20198 Michelle Fall Suite 011
Holmesberg, NS L4J3V2', '2025-03-04', '2025-03-18', 0, 0),
(55, 55, 'TRK-209615121', 'Karen Harmon', 'Sherry Herrera', 'Brown-Mcclure', '9481 Ross Villages
Rebeccaport, YT M2T3R1', '2025-03-13', '2025-02-19', 0, 0),
(56, 56, 'TRK-581201779', 'Kari Cox', 'Victoria Perkins', 'Mccullough, Burgess and Morris', '67434 Jennifer Neck
Lake Adamfurt, MB R5P 8G4', '2025-02-21', '2025-03-05', 1, 0),
(57, 57, 'TRK-770389867', 'Randy Lucas', 'Joshua Adams', 'Sherman PLC', '851 Tim Ferry
North Andrewmouth, NT P6J6A5', '2025-02-26', NULL, 1, 1),
(58, 58, 'TRK-657625487', 'Daniel Sparks', 'Jessica Preston', 'Adkins-Scott', '36179 Clark Islands Apt. 512
Lake Davidton, NT B2J 6B6', '2025-02-27', '2025-02-23', 0, 1),
(59, 59, 'TRK-411293750', 'Stephen Peck', 'Haley Moore', 'Mullen LLC', '7174 Kelsey Greens
Port Lisa, NU Y3G 9Y4', '2025-02-23', '2025-03-10', 0, 1),
(60, 60, 'TRK-368935593', 'Kelly Brown', 'Lynn Tucker', 'Mason, Grant and Nunez', '4064 Kaufman Hill
East Gregory, SK N7G 1M4', '2025-03-09', NULL, 0, 1),
(61, 61, 'TRK-571374208', 'David Wilkins', 'Natalie Jackson', 'Miller-Gordon', '84453 Robinson Spring
Mindyshire, NT Y3E4L2', '2025-03-15', NULL, 1, 0),
(62, 62, 'TRK-421470622', 'Thomas Campos', 'Nicholas Peterson', 'Wallace Group', '46703 Baker Underpass Suite 727
Herreraport, PE B9E4C4', '2025-03-03', NULL, 0, 2),
(63, 63, 'TRK-332856998', 'Amanda Guzman', 'Jennifer Valencia', 'Wright, Morgan and Lucas', '7872 April Lakes
Tammiefort, SK H6P 6H1', '2025-03-16', '2025-03-01', 1, 1),
(64, 64, 'TRK-795130046', 'Wendy Harris', 'Joel Bailey', 'Gibbs-Alvarado', '981 Susan Fort
West Davidshire, PE N6M2X4', '2025-03-04', NULL, 1, 2),
(65, 65, 'TRK-746965229', 'Michael Lopez', 'Christopher Lee', 'Serrano, Hopkins and George', '95862 Adams Land
New Don, QC J6P 5Y3', '2025-02-25', NULL, 1, 0),
(66, 66, 'TRK-611143630', 'Mary Luna', 'Christine Gray DDS', 'Becker Group', '02561 Vasquez Trail
Lake Regina, YT R9G7P2', '2025-03-02', NULL, 0, 0),
(67, 67, 'TRK-283940427', 'Andrea Mccarthy', 'Jared Rios', 'Moore PLC', '1211 Dodson Crossroad
Christinefort, NU L3J 9T1', '2025-03-01', NULL, 1, 1),
(68, 68, 'TRK-809557676', 'Dr. John Williams DDS', 'Lisa Hughes', 'Barr-Stewart', '54962 Bridges Throughway
Reynoldsfort, NT T5C 8Y3', '2025-03-13', '2025-03-12', 1, 2),
(69, 69, 'TRK-141924497', 'Jacob Mathews', 'William Diaz DDS', 'Wright-Baker', '93827 Mark Roads
Arthurport, AB V9R1J9', '2025-02-23', NULL, 0, 2),
(70, 70, 'TRK-501725326', 'Matthew Phillips', 'Christina Lee', 'Lyons, Brown and Lozano', '59775 Johnson Circle Suite 826
East Richardhaven, BC C3P 9S2', '2025-03-04', NULL, 0, 2),
(71, 71, 'TRK-117326025', 'Gina Abbott', 'Christopher Burke', 'Tucker PLC', '382 Lee Road
Jenniferview, SK M8N9S5', '2025-03-14', '2025-03-03', 1, 2),
(72, 72, 'TRK-323459810', 'David Franklin', 'Jonathan Romero', 'Torres PLC', '3721 Philip Rue Apt. 402
Martinezburgh, AB P7C9B1', '2025-02-26', '2025-02-19', 1, 2),
(73, 73, 'TRK-674583516', 'Patrick Parker', 'Steven Cook', 'Martinez Inc', '04607 Huffman Court
Joneschester, PE R6A 3K1', '2025-02-25', NULL, 1, 0),
(74, 74, 'TRK-218197237', 'George Graham', 'Tammy Thomas', 'Reed Inc', '122 Justin Pike
West Michaelside, YT B3R 1P7', '2025-02-24', NULL, 0, 1),
(75, 75, 'TRK-914903462', 'Jaime Garcia', 'Tracy Alexander', 'Johnson, Blackwell and Davenport', '8631 Pope Row
North Williamfort, NL L5E 9J5', '2025-03-05', '2025-03-17', 0, 0),
(76, 76, 'TRK-007665547', 'Hayley Barber', 'Matthew Harrison', 'Smith, Garcia and Glenn', '5405 Michele Fall Suite 097
Port Benjaminborough, ON G6H 9N4', '2025-02-21', '2025-03-18', 1, 1),
(77, 77, 'TRK-850048011', 'Gregory Hubbard', 'Shawn Espinoza', 'Carroll PLC', '972 Brian River Suite 496
North Deborah, NS B2V1N3', '2025-03-17', NULL, 0, 2),
(78, 78, 'TRK-716171843', 'Julia Lewis', 'Anthony Roberts', 'Diaz, Martinez and Wise', '669 Sierra Stravenue
West Carolynberg, QC E2X5A4', '2025-02-21', '2025-03-14', 1, 0),
(79, 79, 'TRK-171571640', 'Sandy Reed', 'Kelly Roberts', 'Jimenez, Turner and Jenkins', '095 Miller Lock
Oneillton, NL N8N8R5', '2025-03-13', '2025-02-18', 1, 1),
(80, 80, 'TRK-803902877', 'Tiffany Ayala', 'Kyle Robinson', 'Phillips, Mayo and Smith', '5387 Edward Extension Apt. 223
South Brandon, QC K1E 1M6', '2025-03-12', NULL, 0, 2),
(81, 81, 'TRK-119106869', 'Michael Clark', 'Ricardo Brady', 'Valencia, Russell and Wu', '42847 Brandy Stream
Brookschester, MB P5T 8R5', '2025-03-18', '2025-02-23', 1, 1),
(82, 82, 'TRK-511480571', 'Michael Arnold', 'Jeffery Jacobs', 'Bryan, Robinson and Perry', '74678 Suzanne Divide Apt. 634
Cynthiatown, QC N9P 4L4', '2025-03-05', '2025-02-19', 0, 0),
(83, 83, 'TRK-983965142', 'Linda Wood', 'Linda Diaz', 'Gray, Thompson and Mccarthy', '73239 Tammy Ferry
New Jennifer, NS T7G4A8', '2025-03-08', '2025-03-01', 0, 1),
(84, 84, 'TRK-802204237', 'Kathleen Weber', 'April Smith', 'Johnson, Mccullough and Medina', '847 Haynes Forks
New Antoniobury, PE M9T4T2', '2025-02-20', '2025-02-27', 0, 1),
(85, 85, 'TRK-623926134', 'Mark Fischer', 'Mark Miller', 'Ochoa and Sons', '97987 Riddle Shore
Port April, QC P6V3R3', '2025-03-01', '2025-03-15', 1, 2),
(86, 86, 'TRK-300777271', 'Katie Parker', 'Tracie Porter', 'White LLC', '992 Jones Parkways
North Edward, AB P3S 4N9', '2025-02-28', '2025-02-26', 1, 0),
(87, 87, 'TRK-898694401', 'Ashley Dunn', 'Sarah Woodard', 'Holland, Houston and Johnson', '1856 Prince Keys Suite 371
East Kimberly, NS X7N1X6', '2025-02-20', '2025-03-17', 1, 2),
(88, 88, 'TRK-924313514', 'James Wells', 'Kelsey Chung', 'Dixon-Stewart', '4950 Stanton Walks
Millerport, PE X3M 9K7', '2025-03-04', '2025-03-01', 0, 2),
(89, 89, 'TRK-931890890', 'Jason Perez', 'Allison Ross', 'Juarez Inc', '6528 Amber Circle
Sarahton, NU R3T6R1', '2025-02-23', NULL, 0, 1),
(90, 90, 'TRK-130984233', 'Shannon Santos', 'Tammy Hernandez', 'Jones Inc', '3426 Smith Heights
South Markfort, YT Y5X7V7', '2025-03-06', '2025-03-07', 1, 0),
(91, 91, 'TRK-616454422', 'Matthew Sanchez', 'John Powers', 'Chambers-Barr', '917 Todd Mountain
Eileenstad, NB K7J 7T3', '2025-03-18', NULL, 0, 0),
(92, 92, 'TRK-319042663', 'Colleen Reid', 'Timothy Taylor', 'Garcia LLC', '343 Mitchell Circles
Michaelberg, SK Y1Y7L6', '2025-03-11', '2025-03-08', 1, 2),
(93, 93, 'TRK-320620985', 'Christopher Riley', 'Anthony Moore', 'Matthews, Robles and Wood', '1523 Carter Hills Apt. 654
Robertmouth, NL K3C 1M9', '2025-02-23', '2025-02-26', 0, 2),
(94, 94, 'TRK-091110936', 'Elizabeth Ross', 'Eric Chavez', 'Richards-Turner', '265 Tiffany Alley Apt. 176
New Saraberg, AB A6M 9P3', '2025-03-09', '2025-03-06', 0, 0),
(95, 95, 'TRK-526623326', 'Alexander Campbell', 'Alicia Taylor', 'Davis Group', '9351 Heidi Via
South Joyce, NS P3B 7K1', '2025-03-07', '2025-02-28', 1, 2),
(96, 96, 'TRK-715132695', 'Darin King', 'Todd Lopez', 'Gutierrez-Morrison', '655 Bobby Burgs
Kingmouth, NL A1L1C3', '2025-03-15', '2025-03-18', 1, 2),
(97, 97, 'TRK-302741204', 'Amanda Brown', 'Melissa Davis', 'Reed-Vaughan', '12116 Byrd Highway Suite 036
East Tabitha, PE G8T 4B5', '2025-02-27', NULL, 0, 0),
(98, 98, 'TRK-117845444', 'Melissa Davis', 'Michael Knapp', 'Tapia-Herrera', '5513 Daniel Stravenue
Port Rachelmouth, YT Y1E2K1', '2025-03-03', '2025-02-24', 0, 2),
(99, 99, 'TRK-904484129', 'Kimberly Guerrero', 'Andrew Williams', 'Harrison, Beck and King', '259 Cox Neck
Port Charles, NU M3X 7E7', '2025-02-25', '2025-02-19', 1, 0),
(100, 100, 'TRK-544913516', 'Sonya Rosario', 'Zoe Wood', 'Harrell-Martinez', '4630 Johnson Courts
Hollyborough, NB M4V1Y5', '2025-03-09', '2025-03-16', 1, 0);


INSERT INTO complaint (complaint_id, customer_id, po_id, issue_desc, res_desc, res_status, res_date, complain_handler) VALUES
(1, 62, 11, 'In ut adipisci nesciunt incidunt rem aliquam quia atque blanditiis.', NULL, 0, '2025-02-09', 78),
(2, 79, 18, 'Animi eum mollitia eaque maiores officiis vitae qui quia ad magni.', 'Id ut quos autem laboriosam officia debitis reiciendis sed beatae.', 2, NULL, NULL),
(3, 28, 23, 'Porro rerum omnis maxime mollitia impedit exercitationem inventore ea.', 'Ipsum illo recusandae vitae nihil.', 2, NULL, NULL),
(4, 98, 52, 'Reiciendis possimus omnis perferendis placeat tempora voluptatem cum quisquam.', NULL, 2, '2025-01-11', 83),
(5, 84, 11, 'Error cupiditate laudantium repellat aliquam dolorum similique doloremque velit hic.', NULL, 1, '2025-01-04', NULL),
(6, 86, 93, 'Vel neque ut quas quae laborum.', 'Sunt ab hic nulla non officiis amet accusamus ea corrupti.', 0, '2025-01-23', 17),
(7, 5, 58, 'Omnis incidunt similique ut optio unde aspernatur.', NULL, 0, '2025-02-07', NULL),
(8, 71, 96, 'Voluptas nostrum dolorem dolorum quis ad corporis quibusdam quo ullam est.', 'Quis sint iure dolor.', 0, '2025-01-01', 17),
(9, 83, 36, 'Aspernatur dolores sint vero distinctio veritatis unde eos excepturi non.', NULL, 0, '2025-01-25', 22),
(10, 59, 54, 'Totam velit eligendi possimus porro sint sapiente.', 'Aspernatur minus eum corrupti ullam perspiciatis harum laborum.', 2, '2025-02-15', 91),
(11, 14, 32, 'Exercitationem neque enim nobis voluptate veniam est omnis.', NULL, 1, '2025-01-05', 85),
(12, 88, 14, 'Accusamus nisi provident laborum itaque quam necessitatibus totam ad doloremque doloribus laboriosam.', 'Et voluptates itaque amet vel tenetur quam voluptates aspernatur veniam.', 1, NULL, 61),
(13, 50, 61, 'Cum impedit fugit inventore necessitatibus ducimus.', NULL, 2, NULL, NULL),
(14, 51, 51, 'Nesciunt labore libero cupiditate facilis vero rerum quia.', NULL, 1, '2025-01-08', 12),
(15, 25, 41, 'Beatae ab consequuntur non amet eum ab.', NULL, 2, '2025-01-08', NULL),
(16, 42, 51, 'Facere maxime veritatis accusamus sit debitis sint maxime nihil sit optio assumenda.', NULL, 0, '2025-01-18', 8),
(17, 99, 78, 'Repellat dignissimos omnis officiis non mollitia error eaque praesentium fugit dignissimos reiciendis eos.', 'Dicta odit numquam cumque eum.', 0, '2025-01-09', 24),
(18, 30, 70, 'Possimus totam dolores iusto quasi natus dignissimos corporis.', NULL, 0, '2025-01-05', 74),
(19, 31, 47, 'Expedita nostrum laboriosam culpa expedita et laboriosam.', NULL, 0, '2025-01-06', 5),
(20, 19, 25, 'Enim id fuga repellendus natus explicabo sint error.', NULL, 1, '2025-01-14', 34),
(21, 34, 52, 'Quos exercitationem tempora amet harum quas minus.', 'Dolorum quo officia ducimus consequuntur quas harum.', 0, '2025-02-03', NULL),
(22, 13, 29, 'Dicta sunt facere molestiae quisquam officia ad.', 'Rerum vero voluptas alias expedita nostrum expedita provident.', 2, NULL, 12),
(23, 92, 8, 'Veritatis porro ducimus perferendis aliquam mollitia eum similique fuga dolor.', 'Iste minus voluptates numquam assumenda ratione iste doloribus neque.', 2, '2025-01-30', NULL),
(24, 59, 40, 'Reiciendis officia distinctio impedit illum dolore dolorum fugiat.', NULL, 2, '2025-01-18', 64),
(25, 96, 64, 'Voluptates quidem eligendi molestiae deserunt deserunt autem ducimus iste minima maxime facere voluptatem.', 'Quasi laudantium corporis vitae sit cupiditate odio laboriosam alias vero.', 1, NULL, NULL),
(26, 22, 47, 'Laudantium veniam beatae aut magnam laborum aut.', NULL, 1, '2025-02-11', 65),
(27, 35, 43, 'A similique nulla nulla temporibus a quis facere placeat quia.', 'Aliquid pariatur pariatur eligendi atque totam quam.', 1, NULL, 85),
(28, 24, 4, 'Est saepe cupiditate quod qui similique officiis quae nesciunt placeat ad ut laudantium.', 'Facilis reiciendis cupiditate quam alias similique.', 1, NULL, 69),
(29, 29, 75, 'Quae aliquid ab temporibus provident rem voluptatem rerum cum esse officiis numquam exercitationem.', 'Reprehenderit doloribus magnam neque eaque repellat doloremque.', 2, NULL, NULL),
(30, 96, 35, 'Eius quibusdam provident nemo optio dolorem itaque recusandae qui iusto corporis ipsum quibusdam.', NULL, 2, '2025-02-08', 9),
(31, 86, 85, 'Vel illum in suscipit fugiat quidem nemo quas eum.', 'Non illo minus ea molestiae architecto ducimus minus.', 2, '2025-01-23', 78),
(32, 75, 49, 'Dicta non impedit reprehenderit nesciunt expedita ducimus odit commodi.', NULL, 0, NULL, 97),
(33, 54, 33, 'Iusto accusamus fugit quod sunt eos fugiat deserunt reiciendis voluptate consectetur soluta animi.', NULL, 2, NULL, 79),
(34, 66, 53, 'Amet molestias accusantium ullam molestiae pariatur expedita molestias perspiciatis.', NULL, 1, '2025-01-24', 22),
(35, 99, 57, 'Minima facilis architecto molestias veritatis veritatis quod.', 'Facere architecto delectus pariatur assumenda suscipit.', 2, '2025-02-04', 78),
(36, 57, 9, 'Rerum aperiam unde repudiandae temporibus harum cumque non labore praesentium nihil.', NULL, 2, '2025-02-13', NULL),
(37, 15, 60, 'Asperiores accusamus esse doloribus repellat voluptatibus dicta vitae.', 'Mollitia possimus in facilis asperiores.', 2, '2025-01-19', 15),
(38, 53, 4, 'Aspernatur quas excepturi quis mollitia eius provident deleniti repellat repellat.', NULL, 2, '2025-02-11', 82),
(39, 29, 26, 'Modi culpa eveniet accusamus ipsum molestias blanditiis hic est eligendi eius nisi.', 'Earum facilis optio dicta hic eligendi molestiae illum culpa nihil.', 2, NULL, 82),
(40, 11, 57, 'Quibusdam corrupti iste quo eligendi totam aliquid facilis.', 'Dolorem enim iure corporis natus maxime similique veniam.', 2, NULL, 86),
(41, 83, 68, 'Impedit natus neque maxime numquam saepe dolore alias.', 'Dolore architecto rem esse odio modi accusantium quae.', 0, '2025-01-22', 18),
(42, 54, 80, 'Ex soluta quasi laboriosam amet odio corporis.', NULL, 2, NULL, NULL),
(43, 87, 49, 'Laborum iusto molestias deserunt dicta architecto nemo adipisci quos error.', 'Praesentium explicabo mollitia vel corrupti impedit.', 1, '2025-02-14', 33),
(44, 71, 18, 'Animi ab itaque pariatur totam ducimus nemo.', 'Molestiae ullam ad maiores tempore natus molestiae suscipit quas ea.', 0, '2025-01-27', 4),
(45, 69, 70, 'Assumenda labore incidunt consequuntur deleniti totam corrupti vitae aliquid illo sequi.', NULL, 0, '2025-01-01', 14),
(46, 77, 62, 'Possimus eius ullam totam voluptatibus excepturi rerum nihil error.', 'Eaque cupiditate quasi sed minus.', 2, NULL, NULL),
(47, 5, 5, 'Ex similique asperiores nostrum fugiat aliquid rem temporibus reprehenderit quas quae dolor.', NULL, 1, '2025-01-14', NULL),
(48, 83, 41, 'Vitae nisi mollitia ex numquam doloribus totam odit totam.', NULL, 2, '2025-01-12', 47),
(49, 13, 2, 'Magnam ullam veniam distinctio voluptatibus expedita dolore reiciendis distinctio est autem perspiciatis adipisci.', 'Animi nulla facere qui delectus quis.', 2, NULL, 43),
(50, 100, 8, 'Voluptas tempore eaque eveniet alias vero.', 'Rerum repellendus veniam laborum vel unde quibusdam placeat.', 2, NULL, 3),
(51, 78, 51, 'Distinctio totam voluptatem atque veritatis ea voluptates libero commodi veritatis.', 'In assumenda illo nesciunt voluptatibus fugit asperiores iste distinctio.', 0, '2025-02-16', NULL),
(52, 52, 24, 'Earum illum quisquam accusantium vitae culpa dicta corrupti consequuntur ab dignissimos.', NULL, 2, '2025-01-11', NULL),
(53, 45, 21, 'Qui quos incidunt molestias deleniti itaque quia aliquid iste at officia praesentium.', 'Eveniet nostrum consectetur neque pariatur veritatis repellendus minus id.', 0, '2025-01-20', 90),
(54, 46, 62, 'Ex distinctio ipsum vero ab ut maxime possimus totam cupiditate nam.', 'Quam tempora nihil aliquam numquam.', 2, '2025-01-02', NULL),
(55, 63, 52, 'Similique eaque dolor dicta quidem consectetur eos quia dicta.', 'Exercitationem molestiae at incidunt et nisi reiciendis cumque voluptas.', 0, NULL, 19),
(56, 70, 82, 'Voluptate temporibus facilis itaque laborum odit dignissimos temporibus aspernatur ratione quasi quasi.', 'Minus nesciunt excepturi non fugiat eveniet.', 1, '2025-01-24', 90),
(57, 36, 44, 'Possimus soluta architecto odio in excepturi iusto corporis impedit molestias.', NULL, 1, '2025-01-13', NULL),
(58, 34, 85, 'Occaecati qui aliquam temporibus beatae tempora assumenda.', NULL, 2, NULL, 75),
(59, 92, 78, 'Dolores rerum veniam voluptatum rerum exercitationem aut eum rem quas ipsam.', NULL, 0, '2025-01-29', 30),
(60, 7, 63, 'Veritatis culpa consequatur sapiente laborum neque provident.', 'Aut beatae maiores praesentium ab commodi commodi.', 2, '2025-01-31', 55),
(61, 93, 39, 'Ipsa exercitationem ea velit quaerat neque temporibus.', NULL, 1, NULL, 23),
(62, 61, 41, 'Quos fugiat totam quia distinctio velit harum iure officia consequuntur provident odio.', 'Necessitatibus ex libero expedita soluta accusamus.', 2, '2025-01-22', 49),
(63, 10, 59, 'Tempore consequatur ea odio adipisci impedit cumque eveniet optio ipsam blanditiis.', 'Distinctio molestiae inventore tempore nostrum repellat officia iure minima.', 2, '2025-01-24', 82),
(64, 9, 93, 'Eaque aut amet eius explicabo molestias nulla quis.', NULL, 1, '2025-02-06', 69),
(65, 76, 49, 'Id sequi atque debitis dolorem inventore quas voluptatum deleniti enim veniam quo.', NULL, 1, NULL, 37),
(66, 21, 7, 'Vitae non laborum laborum ab in tenetur alias nulla.', 'Consectetur facilis commodi quos consequatur a libero mollitia dolore quod autem.', 2, '2025-01-08', 57),
(67, 33, 33, 'Tenetur enim mollitia a officia porro laudantium maxime ex cupiditate ducimus deserunt.', 'Dignissimos optio animi delectus perferendis.', 1, '2025-02-09', NULL),
(68, 51, 70, 'Culpa laborum quisquam sunt cupiditate ratione aliquam accusantium maiores mollitia velit dolores.', NULL, 2, '2025-01-11', 66),
(69, 75, 28, 'Sequi unde qui nesciunt officia reprehenderit earum debitis quisquam iusto exercitationem.', 'Excepturi sint unde voluptate asperiores animi quod tempore.', 1, '2025-01-02', 73),
(70, 79, 42, 'Quaerat dolorum ullam minus corporis dignissimos expedita atque non voluptatum sequi.', NULL, 2, '2025-01-08', 32),
(71, 97, 41, 'Omnis placeat sunt debitis voluptas id inventore velit quidem illo impedit.', 'Dolorem aspernatur natus sapiente alias eligendi modi cupiditate.', 1, '2025-01-07', NULL),
(72, 78, 46, 'Reiciendis molestias qui nesciunt perferendis magni fugit ut.', 'Exercitationem provident dicta veniam hic error aut.', 2, '2025-02-02', NULL),
(73, 64, 94, 'Harum corrupti eum ex at quas sequi odit distinctio.', NULL, 1, '2025-01-03', NULL),
(74, 46, 83, 'Dolore nemo eum voluptate minus vero nisi.', NULL, 0, '2025-02-11', NULL),
(75, 7, 94, 'Necessitatibus voluptate molestias consequuntur reprehenderit recusandae incidunt quidem aliquam ipsam illum.', 'Ipsum hic velit odit officia debitis corporis animi.', 2, '2025-01-06', NULL),
(76, 71, 26, 'Architecto eligendi non deleniti fugit sapiente beatae maiores sed fugiat qui hic.', NULL, 2, NULL, 12),
(77, 47, 49, 'Itaque laboriosam veniam quasi animi enim soluta asperiores.', NULL, 1, NULL, 73),
(78, 39, 66, 'Tempore labore laboriosam sint modi dolore ab accusantium ea.', 'At repellendus reprehenderit unde fuga porro.', 1, '2025-01-21', NULL),
(79, 17, 46, 'Nam odio soluta commodi voluptatum illo non.', NULL, 0, NULL, 89),
(80, 86, 39, 'Ratione fuga pariatur dolores quam soluta optio velit natus animi sequi temporibus debitis.', 'Animi laborum repudiandae excepturi et veniam quod culpa recusandae pariatur.', 0, '2025-01-31', 99),
(81, 28, 29, 'Labore adipisci at est eum minus.', NULL, 2, '2025-01-16', NULL),
(82, 8, 44, 'Magnam modi cum rem est iste earum hic laborum exercitationem nihil iure.', 'Unde tempore facere tenetur nulla.', 0, NULL, NULL),
(83, 45, 57, 'Vitae ut amet exercitationem repellat dignissimos excepturi vero modi a sint et.', 'Necessitatibus natus a laborum adipisci.', 2, '2025-01-06', 6),
(84, 3, 77, 'Ducimus ab voluptate maxime non molestiae rem error doloremque minima ea.', NULL, 2, '2025-02-02', NULL),
(85, 36, 78, 'Minima voluptatibus quidem dicta maxime voluptas quod atque.', 'Unde laborum deserunt officia impedit illo consequuntur.', 0, '2025-01-22', 30),
(86, 97, 89, 'Porro distinctio aliquam vitae sed perspiciatis accusamus commodi laudantium.', NULL, 1, NULL, 93),
(87, 65, 46, 'Totam ipsam dolore nesciunt dignissimos quam.', 'Aliquam optio facere dignissimos quam sed.', 1, '2025-02-14', 89),
(88, 13, 58, 'Nobis a eius aliquid quidem placeat.', 'Architecto suscipit deserunt eaque esse iusto illum laborum.', 0, '2025-01-10', NULL),
(89, 78, 22, 'Dolore suscipit exercitationem assumenda amet animi repellat qui.', 'Magni aperiam doloremque veritatis pariatur.', 2, NULL, 48),
(90, 48, 69, 'Voluptates enim molestiae suscipit quasi iure unde itaque aut in exercitationem molestiae perspiciatis.', NULL, 0, '2025-02-14', 62),
(91, 83, 52, 'Sunt neque deleniti rem repellat officia.', NULL, 2, '2025-01-17', 29),
(92, 55, 33, 'Labore modi rem a eveniet id assumenda.', 'Nemo ab nihil possimus molestias.', 0, '2025-01-24', 74),
(93, 53, 1, 'Cupiditate ipsam aperiam nulla error tempora quisquam adipisci vel vero nulla.', NULL, 0, '2025-02-05', NULL),
(94, 64, 76, 'Minima voluptatibus sunt sed neque sint dolore.', NULL, 1, '2025-02-05', 59),
(95, 3, 34, 'Dignissimos alias nesciunt amet expedita praesentium odit modi molestias expedita quaerat a.', 'Laudantium accusantium sapiente corrupti doloribus nemo.', 2, '2025-02-03', 10),
(96, 65, 53, 'Consectetur rem veritatis pariatur et delectus sequi dicta quia non ea praesentium illo.', 'Libero sapiente excepturi sed quas magni.', 1, NULL, 93),
(97, 58, 83, 'Iure necessitatibus ad pariatur laudantium nam.', 'Harum ea vel placeat voluptatem velit.', 1, '2025-01-12', 12),
(98, 81, 49, 'Mollitia cumque quibusdam nam sequi modi excepturi.', NULL, 0, '2025-01-15', 96),
(99, 47, 96, 'Ut labore earum esse rerum iure maxime.', NULL, 0, NULL, 55),
(100, 51, 44, 'Asperiores earum placeat est ducimus officiis qui quo harum voluptates aliquam saepe.', 'Fugiat enim sit quam sint id vel deserunt veritatis minus.', 2, NULL, 57);

INSERT INTO product_order_product_detail (po_id, product_id, quantity, unit) VALUES
(100, 88, 1, 'unit'),
(95, 1, 10, 'box'),
(96, 36, 9, 'unit'),
(70, 200, 7, 'box'),
(68, 81, 8, 'kg'),
(41, 94, 8, 'unit'),
(48, 139, 3, 'unit'),
(69, 128, 7, 'kg'),
(36, 59, 10, 'L'),
(30, 84, 8, 'L'),
(42, 150, 9, 'unit'),
(52, 44, 9, 'L'),
(71, 177, 10, 'L'),
(78, 177, 6, 'box'),
(35, 200, 3, 'box'),
(44, 36, 6, 'kg'),
(94, 116, 7, 'unit'),
(14, 175, 8, 'kg'),
(91, 147, 1, 'L'),
(8, 111, 9, 'L'),
(82, 20, 7, 'L'),
(39, 101, 7, 'box'),
(6, 106, 6, 'unit'),
(24, 87, 2, 'unit'),
(84, 68, 7, 'box'),
(20, 145, 8, 'L'),
(97, 31, 10, 'L'),
(29, 170, 3, 'L'),
(92, 143, 8, 'box'),
(2, 15, 10, 'box'),
(100, 67, 3, 'L'),
(89, 100, 8, 'L'),
(50, 121, 9, 'box'),
(48, 38, 6, 'box'),
(49, 134, 7, 'L'),
(51, 110, 10, 'kg'),
(97, 147, 10, 'L'),
(30, 71, 4, 'box'),
(54, 156, 6, 'L'),
(38, 175, 3, 'unit'),
(82, 116, 5, 'box'),
(76, 171, 6, 'unit'),
(98, 167, 6, 'L'),
(8, 177, 8, 'unit'),
(6, 153, 5, 'unit'),
(26, 51, 8, 'unit'),
(96, 26, 6, 'kg'),
(73, 183, 6, 'kg'),
(35, 158, 7, 'unit'),
(10, 17, 6, 'box'),
(97, 187, 7, 'unit'),
(40, 184, 7, 'kg'),
(1, 122, 6, 'L'),
(73, 46, 2, 'kg'),
(64, 7, 6, 'L'),
(24, 66, 2, 'box'),
(99, 67, 9, 'box'),
(38, 189, 10, 'unit'),
(81, 20, 3, 'kg'),
(59, 177, 5, 'box'),
(40, 145, 7, 'unit'),
(11, 83, 9, 'box'),
(15, 133, 6, 'unit'),
(3, 188, 10, 'unit'),
(73, 160, 10, 'box'),
(80, 88, 10, 'box'),
(18, 144, 1, 'kg'),
(74, 4, 5, 'unit'),
(39, 94, 3, 'L'),
(93, 103, 5, 'L'),
(43, 89, 9, 'unit'),
(79, 147, 8, 'kg'),
(4, 100, 1, 'kg'),
(11, 161, 4, 'unit'),
(21, 28, 6, 'L'),
(57, 189, 9, 'unit'),
(75, 76, 1, 'kg'),
(46, 137, 4, 'L'),
(32, 158, 4, 'L'),
(7, 184, 2, 'kg'),
(57, 134, 10, 'L'),
(15, 155, 9, 'unit'),
(11, 54, 10, 'L'),
(77, 22, 4, 'kg'),
(96, 27, 10, 'L'),
(84, 190, 8, 'kg'),
(98, 164, 2, 'L'),
(73, 38, 8, 'box'),
(48, 59, 4, 'box'),
(88, 40, 5, 'kg'),
(26, 96, 2, 'unit'),
(86, 27, 9, 'box'),
(66, 69, 5, 'kg'),
(19, 74, 9, 'L'),
(53, 46, 6, 'box'),
(84, 182, 3, 'box'),
(35, 114, 9, 'unit'),
(21, 158, 4, 'kg'),
(98, 107, 2, 'unit'),
(46, 49, 4, 'box'),
(71, 81, 3, 'kg'),
(75, 155, 10, 'unit'),
(89, 182, 6, 'kg'),
(42, 166, 1, 'kg'),
(74, 170, 8, 'box'),
(32, 80, 6, 'L'),
(98, 166, 3, 'box'),
(30, 164, 7, 'kg'),
(20, 199, 6, 'kg'),
(7, 25, 9, 'L'),
(61, 167, 3, 'L'),
(23, 40, 3, 'kg'),
(35, 144, 6, 'box'),
(58, 177, 7, 'kg'),
(23, 43, 8, 'unit'),
(33, 60, 4, 'box'),
(81, 2, 1, 'unit'),
(3, 39, 6, 'L'),
(78, 72, 9, 'L'),
(62, 45, 3, 'L'),
(51, 173, 8, 'box'),
(61, 49, 3, 'unit'),
(87, 147, 1, 'unit'),
(97, 192, 5, 'kg'),
(61, 76, 10, 'box'),
(84, 23, 6, 'unit'),
(48, 109, 8, 'box'),
(4, 147, 10, 'kg'),
(89, 33, 1, 'kg'),
(58, 167, 3, 'L'),
(70, 26, 10, 'box'),
(94, 180, 10, 'unit'),
(53, 138, 9, 'L'),
(27, 134, 4, 'unit'),
(91, 185, 7, 'L'),
(29, 123, 9, 'L'),
(26, 59, 7, 'L'),
(58, 26, 3, 'L'),
(35, 65, 4, 'box'),
(62, 13, 6, 'unit'),
(64, 55, 4, 'box'),
(49, 7, 10, 'unit'),
(97, 91, 5, 'box'),
(86, 29, 8, 'kg'),
(27, 57, 1, 'L'),
(92, 147, 8, 'box'),
(18, 198, 5, 'L'),
(97, 168, 9, 'box'),
(5, 53, 1, 'kg'),
(43, 185, 1, 'unit'),
(70, 88, 2, 'L'),
(70, 30, 3, 'kg');

INSERT INTO outlet_product_detail (product_id, outlet_id, quantity, unit) VALUES
(141, 20, 7, 'L'),
(154, 16, 18, 'L'),
(56, 12, 38, 'box'),
(184, 20, 8, 'L'),
(26, 19, 19, 'unit'),
(188, 17, 19, 'kg'),
(51, 16, 36, 'kg'),
(156, 17, 37, 'L'),
(194, 16, 12, 'unit'),
(16, 19, 13, 'kg'),
(190, 14, 24, 'box'),
(142, 17, 21, 'box'),
(120, 20, 2, 'box'),
(65, 14, 20, 'L'),
(18, 12, 45, 'box'),
(30, 20, 24, 'L'),
(144, 16, 27, 'unit'),
(10, 17, 46, 'L'),
(105, 14, 6, 'L'),
(13, 19, 14, 'unit'),
(10, 20, 49, 'L'),
(166, 20, 27, 'unit'),
(75, 12, 12, 'L'),
(14, 17, 25, 'L'),
(52, 5, 46, 'box'),
(79, 19, 35, 'unit'),
(101, 5, 24, 'box'),
(35, 12, 22, 'box'),
(91, 5, 10, 'kg'),
(187, 20, 23, 'L'),
(61, 19, 14, 'unit'),
(133, 12, 45, 'unit'),
(181, 5, 27, 'L'),
(156, 12, 15, 'box'),
(54, 4, 5, 'L'),
(170, 5, 6, 'box'),
(148, 5, 1, 'unit'),
(29, 20, 16, 'unit'),
(19, 4, 46, 'box'),
(171, 14, 13, 'unit'),
(128, 5, 12, 'unit'),
(100, 16, 29, 'unit'),
(28, 20, 14, 'box'),
(164, 4, 4, 'unit'),
(47, 4, 30, 'box'),
(6, 19, 36, 'kg'),
(172, 5, 29, 'box');

INSERT INTO inventory_request_product_detail (product_id, request_id, quantity, unit) VALUES
(77, 15, 10, 'L'),
(199, 42, 18, 'kg'),
(105, 29, 28, 'L'),
(130, 11, 49, 'L'),
(99, 57, 45, 'L'),
(89, 14, 1, 'unit'),
(5, 69, 33, 'kg'),
(132, 1, 5, 'L'),
(189, 40, 24, 'L'),
(15, 39, 49, 'L'),
(69, 19, 20, 'box'),
(132, 36, 41, 'kg'),
(48, 49, 37, 'kg'),
(45, 68, 44, 'L'),
(51, 47, 17, 'unit'),
(125, 70, 45, 'box'),
(46, 62, 7, 'L'),
(102, 35, 49, 'unit'),
(7, 65, 48, 'L'),
(124, 50, 43, 'kg'),
(131, 12, 30, 'L'),
(143, 38, 25, 'kg'),
(174, 26, 3, 'box'),
(88, 52, 33, 'unit'),
(128, 10, 28, 'kg'),
(108, 48, 27, 'unit'),
(57, 8, 20, 'L'),
(185, 83, 49, 'L'),
(5, 64, 10, 'unit'),
(118, 15, 3, 'unit'),
(32, 19, 36, 'L'),
(55, 45, 11, 'box'),
(62, 76, 12, 'unit'),
(143, 13, 4, 'kg'),
(182, 47, 13, 'kg'),
(142, 72, 5, 'box'),
(35, 28, 5, 'unit'),
(131, 41, 31, 'box'),
(26, 36, 15, 'L'),
(173, 30, 4, 'kg'),
(164, 17, 40, 'unit'),
(98, 46, 39, 'L'),
(92, 71, 44, 'unit'),
(170, 11, 35, 'unit'),
(162, 51, 46, 'kg'),
(104, 4, 2, 'unit'),
(83, 63, 40, 'kg'),
(138, 8, 19, 'L'),
(78, 80, 25, 'kg'),
(27, 6, 27, 'L'),
(173, 65, 17, 'box'),
(167, 28, 27, 'box'),
(46, 45, 5, 'L'),
(40, 42, 32, 'box'),
(120, 26, 5, 'L'),
(36, 9, 40, 'kg'),
(72, 70, 37, 'box'),
(134, 41, 39, 'unit'),
(116, 21, 39, 'L'),
(17, 61, 10, 'kg'),
(130, 46, 45, 'kg'),
(59, 80, 45, 'kg'),
(53, 29, 16, 'box'),
(148, 62, 44, 'kg'),
(151, 79, 46, 'unit'),
(194, 71, 3, 'kg'),
(195, 80, 8, 'box'),
(53, 47, 26, 'unit'),
(195, 35, 47, 'unit'),
(76, 38, 7, 'unit'),
(109, 42, 19, 'box'),
(11, 44, 15, 'box'),
(123, 32, 14, 'box'),
(187, 16, 32, 'kg'),
(194, 50, 9, 'kg'),
(116, 36, 29, 'L'),
(134, 68, 48, 'box'),
(135, 56, 22, 'unit'),
(17, 50, 2, 'kg'),
(196, 43, 9, 'unit'),
(194, 13, 1, 'unit'),
(164, 16, 13, 'kg'),
(118, 82, 48, 'unit'),
(175, 64, 8, 'unit'),
(22, 67, 19, 'unit'),
(125, 42, 9, 'unit'),
(81, 63, 44, 'box'),
(66, 55, 44, 'box'),
(40, 39, 19, 'L'),
(30, 28, 45, 'unit'),
(162, 3, 5, 'unit'),
(166, 28, 28, 'box'),
(64, 23, 20, 'unit'),
(41, 75, 22, 'unit'),
(67, 34, 6, 'kg'),
(140, 81, 31, 'unit'),
(145, 6, 31, 'L'),
(82, 56, 3, 'box'),
(126, 48, 23, 'kg'),
(28, 13, 42, 'box'),
(18, 33, 5, 'box'),
(147, 5, 12, 'box'),
(70, 26, 2, 'unit'),
(139, 36, 19, 'kg'),
(7, 28, 31, 'L'),
(104, 59, 17, 'box'),
(160, 10, 10, 'unit'),
(181, 39, 28, 'box'),
(45, 16, 13, 'L'),
(181, 69, 46, 'L'),
(92, 46, 16, 'unit'),
(16, 22, 41, 'kg'),
(93, 19, 9, 'box'),
(32, 47, 28, 'kg'),
(79, 37, 35, 'box'),
(182, 11, 16, 'kg'),
(94, 22, 22, 'kg'),
(123, 1, 47, 'box'),
(46, 35, 25, 'kg'),
(55, 2, 11, 'L'),
(7, 39, 50, 'kg'),
(114, 12, 12, 'box'),
(106, 83, 9, 'L'),
(35, 17, 23, 'box'),
(71, 33, 14, 'unit'),
(8, 77, 47, 'kg'),
(180, 81, 22, 'L');

INSERT INTO warehouse_product_detail (product_id, warehouse_id, quantity, unit) VALUES
(62, 6, 25, 'unit'),
(112, 7, 9, 'unit'),
(105, 8, 8, 'L'),
(33, 11, 48, 'unit'),
(87, 13, 45, 'kg'),
(103, 18, 8, 'unit'),
(149, 6, 8, 'unit'),
(49, 7, 17, 'box'),
(30, 8, 17, 'L'),
(121, 8, 43, 'L'),
(60, 13, 37, 'unit'),
(88, 11, 42, 'unit'),
(188, 7, 47, 'box'),
(194, 8, 22, 'box'),
(50, 7, 38, 'unit'),
(59, 18, 43, 'unit'),
(22, 7, 35, 'box'),
(158, 8, 27, 'L'),
(29, 6, 41, 'kg'),
(120, 13, 24, 'box'),
(21, 11, 12, 'L'),
(9, 6, 42, 'L'),
(68, 7, 26, 'kg'),
(136, 8, 10, 'kg'),
(104, 11, 27, 'unit'),
(97, 7, 40, 'L'),
(13, 13, 49, 'unit'),
(175, 6, 37, 'L'),
(182, 8, 10, 'box'),
(61, 11, 7, 'L'),
(107, 13, 3, 'box'),
(65, 7, 12, 'L'),
(152, 18, 41, 'box'),
(25, 8, 7, 'box'),
(19, 6, 7, 'unit'),
(109, 7, 15, 'box'),
(16, 11, 13, 'unit'),
(101, 6, 49, 'kg'),
(198, 7, 39, 'L'),
(99, 13, 42, 'L'),
(74, 6, 7, 'kg'),
(178, 7, 6, 'unit'),
(6, 11, 16, 'unit'),
(135, 7, 18, 'L'),
(5, 6, 17, 'box'),
(51, 8, 11, 'L'),
(160, 7, 27, 'unit'),
(64, 13, 1, 'unit'),
(145, 7, 4, 'box'),
(157, 7, 18, 'box'),
(133, 8, 29, 'L'),
(189, 7, 43, 'kg'),
(68, 13, 50, 'box'),
(130, 6, 43, 'L'),
(168, 7, 4, 'kg'),
(169, 11, 5, 'unit'),
(30, 13, 49, 'box'),
(57, 18, 19, 'kg'),
(191, 6, 24, 'L'),
(44, 7, 48, 'kg'),
(193, 8, 21, 'box'),
(146, 6, 12, 'kg'),
(8, 7, 38, 'kg'),
(180, 6, 9, 'box'),
(141, 11, 16, 'L'),
(175, 7, 13, 'kg'),
(54, 8, 46, 'box'),
(85, 13, 27, 'unit'),
(127, 8, 24, 'L'),
(7, 7, 6, 'kg'),
(199, 8, 17, 'kg'),
(14, 6, 25, 'unit'),
(42, 7, 45, 'box'),
(91, 13, 40, 'kg'),
(90, 6, 27, 'L'),
(144, 7, 3, 'L'),
(47, 6, 34, 'L'),
(163, 7, 1, 'L'),
(200, 7, 49, 'L'),
(194, 6, 26, 'L'),
(70, 7, 47, 'L'),
(170, 6, 47, 'kg'),
(25, 7, 50, 'kg'),
(106, 6, 37, 'box'),
(75, 7, 46, 'kg'),
(44, 8, 17, 'kg'),
(100, 6, 36, 'unit'),
(132, 7, 17, 'box'),
(40, 7, 19, 'box'),
(33, 6, 9, 'unit'),
(31, 8, 46, 'L'),
(16, 7, 50, 'box'),
(177, 8, 39, 'unit'),
(148, 7, 6, 'box'),
(98, 6, 25, 'box'),
(161, 6, 23, 'box'),
(106, 7, 8, 'unit'),
(145, 8, 11, 'L'),
(6, 6, 47, 'box'),
(88, 7, 43, 'kg'),
(29, 8, 32, 'L'),
(84, 7, 39, 'L'),
(34, 6, 47, 'box'),
(161, 8, 9, 'box'),
(23, 7, 47, 'L'),
(57, 6, 17, 'box'),
(94, 7, 49, 'unit'),
(141, 6, 37, 'box'),
(164, 7, 14, 'kg'),
(67, 8, 44, 'kg'),
(107, 6, 10, 'unit'),
(59, 7, 13, 'kg'),
(103, 8, 25, 'L'),
(46, 6, 46, 'unit'),
(143, 7, 20, 'unit'),
(81, 6, 19, 'box'),
(83, 7, 6, 'kg'),
(52, 6, 25, 'box'),
(129, 7, 37, 'L');

INSERT INTO supplier_product_type (supplier_id, ptype_id, quantity, unit) VALUES
(7, 4, 412, 'unit'),
(25, 27, 323, 'kg'),
(41, 48, 303, 'unit'),
(31, 16, 11, 'box'),
(6, 45, 166, 'box'),
(20, 22, 155, 'box'),
(21, 2, 468, 'L'),
(24, 16, 419, 'kg'),
(22, 25, 119, 'box'),
(22, 23, 45, 'unit'),
(3, 29, 440, 'kg'),
(9, 22, 314, 'box'),
(48, 46, 25, 'unit'),
(14, 12, 146, 'kg'),
(31, 45, 465, 'L'),
(3, 12, 371, 'L'),
(11, 47, 363, 'L'),
(7, 49, 106, 'box'),
(40, 8, 436, 'kg'),
(50, 40, 206, 'kg'),
(2, 26, 418, 'L'),
(10, 41, 129, 'unit'),
(2, 32, 38, 'L'),
(17, 12, 484, 'L'),
(5, 24, 461, 'L'),
(47, 30, 468, 'L'),
(32, 13, 148, 'unit'),
(13, 41, 186, 'unit'),
(4, 23, 299, 'kg'),
(25, 28, 11, 'kg'),
(1, 30, 460, 'kg'),
(44, 37, 341, 'box'),
(39, 8, 225, 'box'),
(1, 8, 454, 'kg'),
(24, 45, 495, 'kg'),
(16, 3, 292, 'unit'),
(31, 18, 218, 'kg'),
(11, 14, 302, 'box'),
(42, 48, 169, 'box'),
(35, 18, 77, 'kg'),
(4, 28, 183, 'L'),
(36, 50, 320, 'box'),
(27, 6, 293, 'kg'),
(26, 15, 69, 'kg'),
(8, 40, 420, 'unit'),
(28, 37, 298, 'L'),
(3, 20, 234, 'L'),
(4, 11, 14, 'unit'),
(20, 48, 480, 'L'),
(44, 43, 397, 'box'),
(45, 27, 28, 'kg'),
(24, 46, 207, 'L'),
(21, 28, 430, 'kg'),
(13, 20, 237, 'kg'),
(11, 35, 100, 'unit'),
(2, 46, 497, 'unit'),
(34, 18, 424, 'box'),
(7, 16, 316, 'kg'),
(5, 42, 94, 'L'),
(14, 40, 395, 'L'),
(45, 39, 136, 'unit'),
(48, 1, 230, 'unit'),
(22, 9, 132, 'unit'),
(12, 13, 288, 'box'),
(40, 22, 236, 'L'),
(6, 33, 144, 'unit'),
(43, 2, 325, 'box'),
(13, 19, 493, 'unit'),
(2, 13, 265, 'box'),
(39, 21, 251, 'L'),
(17, 23, 315, 'L'),
(35, 39, 6, 'kg'),
(13, 16, 226, 'unit'),
(28, 7, 275, 'box'),
(48, 28, 228, 'kg'),
(27, 44, 384, 'unit'),
(37, 35, 154, 'unit'),
(3, 45, 418, 'kg'),
(30, 36, 460, 'unit'),
(1, 16, 394, 'unit'),
(50, 20, 41, 'unit'),
(37, 44, 170, 'kg'),
(38, 27, 53, 'box'),
(14, 13, 413, 'box'),
(22, 6, 125, 'box'),
(43, 43, 197, 'box'),
(4, 44, 293, 'L'),
(16, 27, 326, 'unit'),
(47, 19, 99, 'box'),
(49, 45, 415, 'kg'),
(48, 29, 359, 'kg'),
(47, 44, 300, 'L'),
(9, 30, 445, 'box'),
(11, 22, 190, 'unit'),
(28, 34, 500, 'box'),
(43, 15, 202, 'box'),
(23, 43, 297, 'box'),
(9, 25, 465, 'unit'),
(32, 41, 422, 'unit'),
(30, 25, 204, 'box'),
(20, 50, 334, 'kg');

INSERT INTO supplier_order_product_type (ptype_id, so_id, quantity, unit, batch_no) VALUES
(21, 30, 485, 'box', 'BATCH-8357752'),
(27, 19, 319, 'unit', 'BATCH-2603551'),
(35, 32, 273, 'L', 'BATCH-2348366'),
(17, 2, 137, 'kg', 'BATCH-8009883'),
(40, 10, 360, 'unit', 'BATCH-8673270'),
(7, 7, 239, 'kg', 'BATCH-8163282'),
(28, 15, 105, 'L', 'BATCH-9404215'),
(15, 20, 357, 'unit', 'BATCH-8041569'),
(11, 13, 349, 'L', 'BATCH-0709084'),
(49, 27, 143, 'unit', 'BATCH-9408433'),
(46, 47, 12, 'box', 'BATCH-2756537'),
(14, 30, 462, 'box', 'BATCH-9010581'),
(7, 21, 295, 'L', 'BATCH-2334079'),
(19, 25, 451, 'L', 'BATCH-4131925'),
(35, 29, 18, 'L', 'BATCH-4508874'),
(1, 10, 65, 'L', 'BATCH-5218414'),
(13, 12, 151, 'kg', 'BATCH-1117264'),
(43, 8, 325, 'unit', 'BATCH-6172865'),
(13, 10, 98, 'box', 'BATCH-0996162'),
(13, 39, 453, 'L', 'BATCH-2627942'),
(30, 33, 313, 'L', 'BATCH-8723733'),
(26, 30, 405, 'kg', 'BATCH-0398250'),
(30, 45, 428, 'kg', 'BATCH-1169870'),
(15, 17, 170, 'L', 'BATCH-9725063'),
(15, 35, 305, 'box', 'BATCH-7816749'),
(42, 23, 334, 'box', 'BATCH-7734096'),
(22, 19, 184, 'kg', 'BATCH-0367434'),
(42, 33, 390, 'box', 'BATCH-4661591'),
(28, 34, 397, 'L', 'BATCH-4615229'),
(36, 13, 224, 'kg', 'BATCH-1547082'),
(45, 20, 277, 'L', 'BATCH-1367617');

INSERT INTO supply_shipment (so_id, ss_courier, from_address, to_address, ss_est_date, ss_act_date, shipping_status)
VALUES
(1, 'Canada Post', 'Warehouse 6, Toronto, ON', 'Supermarket 1, Vancouver, BC', '2024-09-02', '2024-09-03', 0),
(2, 'FedEx', 'Warehouse 7, Calgary, AB', 'Supermarket 2, Montreal, QC', '2020-02-02', '2020-02-05', 2),
(3, 'Purolator', 'Warehouse 8, Edmonton, AB', 'Supermarket 3, Ottawa, ON', '2020-09-14', '2020-09-15', 1),
(4, 'UPS', 'Warehouse 8, Winnipeg, MB', 'Supermarket 4, Halifax, NS', '2020-01-24', '2020-01-26', 2),
(5, 'Canada Post', 'Warehouse 7, Quebec City, QC', 'Supermarket 5, Toronto, ON', '2024-07-21', '2024-07-22', 1),
(6, 'FedEx', 'Warehouse 8, Regina, SK', 'Supermarket 6, Victoria, BC', '2023-12-04', '2023-12-07', 2),
(7, 'Purolator', 'Warehouse 7, Saskatoon, SK', 'Supermarket 7, St. John', '2025-01-02', '2025-01-04', 0),
(8, 'UPS', 'Warehouse 7, Hamilton, ON', 'Supermarket 8, London, ON', '2024-12-27', '2024-12-28', 0),
(9, 'Canada Post', 'Warehouse 7, Mississauga, ON', 'Supermarket 9, Windsor, ON', '2024-11-12', '2024-11-14', 1),
(10, 'FedEx', 'Warehouse 6, Brampton, ON', 'Supermarket 10, Kitchener, ON', '2022-06-09', '2022-06-10', 2),
(11, 'Purolator', 'Warehouse 8, Markham, ON', 'Supermarket 11, Vaughan, ON', '2020-05-04', '2020-05-06', 1),
(12, 'UPS', 'Warehouse 8, Gatineau, QC', 'Supermarket 12, Longueuil, QC', '2020-12-25', '2020-12-27', 2),
(13, 'Canada Post', 'Warehouse 7, Burnaby, BC', 'Supermarket 13, Richmond, BC', '2020-11-23', '2020-11-24', 2),
(14, 'FedEx', 'Warehouse 7, Saskatoon, SK', 'Supermarket 14, Sudbury, ON', '2020-08-20', '2020-08-22', 2),
(15, 'Purolator', 'Warehouse 6, Windsor, ON', 'Supermarket 15, Sherbrooke, QC', '2020-04-07', '2020-04-09', 1),
(16, 'UPS', 'Warehouse 6, St. Catharines, ON', 'Supermarket 16, Kingston, ON', '2020-03-05', '2020-03-06', 1),
(17, 'Canada Post', 'Warehouse 6, Barrie, ON', 'Supermarket 17, Kelowna, BC', '2021-10-11', '2021-10-13', 2),
(18, 'FedEx', 'Warehouse 7, Trois-Rivières, QC', 'Supermarket 18, Moncton, NB', '2021-09-09', '2021-09-10', 1),
(19, 'Purolator', 'Warehouse 7, Guelph, ON', 'Supermarket 19, Fredericton, NB', '2022-01-18', '2022-01-19', 1),
(20, 'UPS', 'Warehouse 7, Lethbridge, AB', 'Supermarket 20, Saint John, NB', '2022-01-10', '2022-01-12', 2);
