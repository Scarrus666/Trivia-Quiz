CREATE TABLE `questions` 
(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `topic` ENUM('harmonica','football','switzerland','e-guitar','maths','language','anatomy') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_text` TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_1` VARCHAR(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_2` VARCHAR(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_3` VARCHAR(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_4` VARCHAR(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_id` INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `questions` (`id`, `topic`, `question_text`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `answer_id`) VALUES
(1, 'e-guitar', 'How many strings does an electric guitar usually have?', '6', '3', '5', '7', 1),
(2, 'e-guitar', 'The following is an electric guitar producer.', 'Ford', 'Fjord', 'Fender', 'Bender', 3),
(3, 'e-guitar', 'You can play an electric guitar outdoors with:', 'A portable outlet', 'Your feet', 'a portable amp', 'you cannot', 3),
(4, 'e-guitar', 'The electric guitar needs to be plugged into the power grid.', 'YES', 'Yes but only at 110V', 'Yes but only at 230V', 'The electric guitar needs to be plugged into an amp', 4),
(5, 'e-guitar', 'Metallica performs at concerts with', 'an owl', 'e-guitars, bass guitars, vocals and drums', 'their feet', 'Metallica does not perform at concerts', 2),
(6, 'e-guitar', 'The following musician plays an electric guitar.', 'Max Havelaar', 'Ray Charles', 'Jimmy Page', 'Christoph Blocher', 3),
(7, 'e-guitar', 'What is the main difference between an electric and an acoustic guitar?\r\n', 'The electric guitar has more strings', 'The electric guitar can be played through an amp', 'The acoustic guitar cannot be used for Rock music', 'There is no difference', 2),
(8, 'e-guitar', 'Which component of the electric guitar is responsible for capturing the sound?', 'The pickups', 'The body', 'The pickguard', 'The strings', 1),
(9, 'e-guitar', 'What type of cable is needed to connect an electric guitar to an amplifier?', 'TS, or Tip Sleeve cable. It is a low power and high impedance cable', 'The electric guitar likes the cable from the mains', 'The electric guitar usually connects wirelessly to the amplifier', 'The electric guitar usually uses a USB-C cable', 1),
(10, 'e-guitar', 'What are pickups in an electric guitar, and what role do they play?', 'They are used to play vinyl records with the guitar', 'Electromagnetic devices that capture the vibrations of the guitar strings and convert them into electrical signals', 'Electric guitars do not use pickups', 'Pickups are used to hold the strings in place on a Floyd Rose system', 2),
(11, 'e-guitar', 'Who first introduced the famous single-cut shape of the electric guitar?', 'Jack Sparrow', 'Gibson', 'Fender', 'Jackson Guitars', 2),
(12, 'e-guitar', 'Who is Mick Thomson?', 'A very well known boxer', 'He runs a gas station', 'He invented the 7 string guitar', 'He is one of the guitarists from the band SlipKnot', 4),
(13, 'e-guitar', 'Which of the following is an electric guitar amp?', 'Marlboro Lights', 'B.C. Rich Warlock', 'The Fender Acoustasonic', 'The iconic 5150 which is the signature amp of Eddie Van Halen', 4),
(14, 'e-guitar', 'Who is the lead guitarist of the band Metallica?', 'James Root', 'Kirk Hammet', 'Kurt Cobain', 'Christoph Blocher', 2),
(15, 'e-guitar', 'Which metal guitarist is famous for wearing a distinctive mask and being a member of the band Slipknot?', 'James Root', 'Jimmy Page', 'Kirk Hammet', 'Carlos Santana', 1),
(16, 'switzerland', 'Welche Berge sind die bekanntesten Wahrzeichen der Schweiz?', 'a) Dolomiten\r\n', 'b) Pyrenäen\r\n', 'c) Karpaten\r\n', 'd) Alpen ', 4),
(17, 'switzerland', 'Welche Länder durchfließt der Rhein, neben der Schweiz?', 'a) Frankreich, Italien, Deutschland, Österreich\r\n', 'b) Belgien, Luxemburg, Niederlande, Deutschland\r\n', 'c) Liechtenstein, Deutschland, Österreich, Niederlande\r\n', 'd) Liechtenstein, Österreich, Deutschland, Frankreich, Niederlande', 4),
(18, 'switzerland', 'Wie viele offizielle Amtssprachen hat die Schweiz?', '\r\na) 2\r\n', 'b) 3\r\n', 'c) 4 \r\n', 'd) 5', 3),
(19, 'switzerland', 'Welcher ist der größte See in der Schweiz?', 'a) Bodensee\r\n', '\r\nb) Vierwaldstättersee\r\n', '\r\nc) Genfersee\r\n', '\r\nd) Zürichsee', 3),
(20, 'switzerland', 'In welchem Jahrhundert wurde die Schweizer Eidgenossenschaft gegründet?', 'a) 20. Jahrhundert\r\n', 'b) 19. Jahrhundert \r\n', 'c) 16. Jahrhundert\r\n', 'd) 17. Jahrhundert', 2),
(21, 'switzerland', 'Welches Tal ist für seine hohe Dichte an Uhrenmanufakturen bekannt?', 'a) Engadin\r\n', '\r\nb) Simmental\r\n', '\r\nc) Vallée de Joux \r\n', '\r\nd) Lauterbrunnental', 3),
(22, 'switzerland', 'Welche Stadt wird oft als \"Welthauptstadt des Roten Kreuzes\" bezeichnet?', 'a) Genf ', '\r\nb) Bern\r\n', '\r\nc) Zürich\r\n', '\r\nd) Lausanne', 1),
(23, 'switzerland', 'Welcher berühmte Pass verbindet das Wallis mit dem Aostatal in Italien?', 'a) Julierpass\r\n', '\r\nb) Furkapass\r\n', '\r\nc) Gotthardpass\r\n', '\r\nd) Simplonpass', 4),
(24, 'switzerland', 'Wie nennt man die Region in der Schweiz, in der Rätoromanisch gesprochen wird?', 'a) Schwarzwald\r\n', '\r\nb) Appenzell\r\n', '\r\nc) Graubünden \r\n', '\r\nd) Uri', 3),
(25, 'switzerland', 'Welche berühmte Seilbahn führt auf das Matterhorn?', 'a) gar keine', '\r\nb) Gornergratbahn\r\n', '\r\nc) Schilthornbahn\r\n', '\r\nd) Zermatt-Bahn ', 1),
(26, 'switzerland', 'Wie heißt die längste Flussquelle Europas, die in den Schweizer Alpen entspringt?', 'a) Rhone\r\n', '\r\nb) Elbe\r\n', '\r\nc) Donau\r\n', '\r\nd) Rhein', 4),
(27, 'switzerland', 'In welchem Kanton befindet sich die Stadt St. Moritz, ein bekannter Wintersportort?', 'a) Graubünden \r\n', '\r\nb) Wallis\r\n', '\r\nc) Bern\r\n', '\r\nd) Luzern', 1),
(28, 'harmonica', 'What is another name for the harmonica?', 'Flute', 'Mouth Organ', 'Trumpet', 'Piano', 2),
(29, 'harmonica', 'Which musical family does the harmonica belong to?', 'String Instruments', 'Brass Instruments', 'Percussion Instruments', 'Wind Instruments', 4),
(30, 'harmonica', 'Who is credited with inventing the modern harmonica in the 1820s?', 'Johann Sebastian Bach', 'Wolfgang Amadeus Mozart', 'Christian Friedrich Ludwig Buschmann', 'Ludwig van Beethoven', 3),
(31, 'harmonica', 'How many reeds does a typical diatonic harmonica have?', '8 reeds', '12 reeds', '20 reeds', '24 reeds', 3),
(32, 'harmonica', 'Which brand is widely recognized as one of the most typical and iconic manufacturers of harmonicas in the world?', 'Yamaha', 'Fender', 'Hohner', 'Gibson', 3),
(33, 'harmonica', 'Which hand is used for playing the melody on a standard harmonica?', 'Left hand', 'Right hand', 'Both hands', 'Feet', 1),
(34, 'harmonica', 'What is the term for the technique of bending a harmonica reed to produce a note outside its natural range?', 'Twisting', 'Warping', 'Bending', 'Distorting', 3),
(35, 'harmonica', 'In chromatic harmonicas, what feature allows players to access all the notes of the chromatic scale?', 'Slide button', 'Whammy bar', 'Bendable reeds', 'Tremolo effect', 1),
(36, 'harmonica', 'Which harmonica playing technique involves playing two or more notes at once to create a fuller sound?', 'Melodic playing', 'Chordal playing', 'Harmonic playing', 'Solo playing', 2),
(37, 'harmonica', 'Which famous musician was known for playing the harmonica while playing the guitar and singing \"Blowin in the Wind?\"', 'Johnny Cash', 'Elvis Presley', 'Bob Dylan', 'Jimmy Hendrix', 3),
(38, 'harmonica', 'What is the name of the small hole on the back of a harmonica that allows air to escape?', 'Ventilation hole', 'Sound hole', 'Air outlet', 'Vents', 4),
(39, 'harmonica', 'Which popular musical genre heavily features the use of the harmonica alongside guitars and vocals?', 'Jazz', 'Classical music', 'Folk music', 'Hip-hop', 3),
(40, 'harmonica', 'What is the term for a harmonica that is played in a cross position, where inhaling and exhaling produce different notes?', 'Straight harp', 'Cross harp', 'Paralell harp', ' Diagonal harp', 2),
(41, 'harmonica', 'In terms of pitch range, how does a bass harmonica compare to a standard diatonic harmonica?', 'Bass harmonica has a higher pitch range.', 'Bass harmonica has a lower pitch range.', ' Bass harmonica has the same pitch range.', 'Bass harmonica has a variable pitch range.', 2),
(42, 'harmonica', 'What is the purpose of the slide button on a chromatic harmonica?', 'Adjusting volume', 'Changing the key', 'Producing vibrato', 'Redirecting air', 4),
(43, 'maths', 'Observe the calculation rules. What is 3 + 2 · 5?', '15', '30', '13', '25', 3),
(44, 'maths', 'How many meters make a kilometer?', '10', '10000', '100', '1000', 4),
(45, 'maths', 'What is the digit sum of the number 362?', '11', '10', '13', '12', 1),
(46, 'maths', 'If you add the numbers from 1 to 10, what is the sum?', '56', '44', '55', '66', 3),
(47, 'maths', 'The number one million has how many zeros?', '6 zeros', '5 zeros', '7 zeros', '4 zeros', 1),
(48, 'maths', 'In the problem 6 × 7 = 42, the number 6 is a factor and the number 7 is a factor. How do you call the result 42 in technical jargon?\r\n\r\n', 'Quotient', 'Total', 'Product', 'Difference', 3),
(49, 'maths', 'How many degrees is a right angle?', '90 degrees', '180 degrees', '360 degrees', '270 degrees', 1),
(50, 'maths', 'What is half of 1/2?\r\n', ' 1/4', '1/2', ' 2/4', '1/3', 1),
(51, 'maths', 'What do you do with the PQ formula?', ' Simplification of binomial formulas', 'Helps pull the root', ' Solve quadratic equations', 'Calculate hypotenuse', 3),
(52, 'maths', 'A _________ is a natural number greater than 1 and divisible only by itself and 1. Which word is missing here?', 'Euler number', 'Prime number', 'Zahlenreihe', 'series of numbers', 2),
(53, 'maths', 'How many degrees does a whole circle have?\r\n\r\n', '90 degrees', '300 degrees', '180 degrees', '360 degrees', 4),
(54, 'maths', 'An apple costs 40 cents. How much do 4 apples cost?', '1,60 Chf', ' 1,20 Chf', '0,40 Chf', ' 2,00 Chf', 1),
(55, 'maths', 'How much is 50 percent of 60?', ' 60', ' 30', '90', ' 10', 2),
(56, 'maths', 'How many faces does a cube have?', ' 5', '4', '6', '7', 3),
(57, 'maths', 'What is the sum of the interior angles of a triangle?', '180 degrees', '240 degrees', '360 degrees', '120 degrees', 1),
(58, 'football', 'Which footballer has scored over 1000 goals?', 'Marco van Basten', 'Alex Frei', 'Romario', 'Jürgen Klinsmann', 3),
(59, 'football', 'Who played for Sion as a junior?', 'Ronaldinho', 'Johan Vonlanthen', 'Ottmar Hitzfeld', 'Alain Sutter', 1),
(60, 'football', 'Which Spanish team uses red/blue as their home kit?', 'FC Basel', 'FC Barcelona', 'Deportivo La Coruna', 'FC Valencia', 2),
(61, 'football', 'When did FC Zurich reach the semi-finals of the Champions League (national champions)?', '2008 und 2019 ', '1964 und 1977', '1994 und 2010 ', '2002 und 2008', 2),
(62, 'football', 'Who won the Champions League 22/23?', 'FC Barcelona', 'Inter Mailand', 'Manchester City', 'FC Sevilla', 3),
(63, 'football', 'Which Swiss founded FC Barcelona?', 'Hans Gamper', 'Steve Lee', 'Edwin Nägeli', 'Jakob Kuhn', 1),
(64, 'football', "Who was an FC Zurich player and later Switzerland's national coach?", 'Fritz Künzli', 'Jakob Kuhn', 'Lucien Favre', 'Bernard Challandes', 2),
(65, 'football', 'When did Stéphane Chapuisat win the Champions League?', '2000', '1994', '1999', '1997', 4),
(66, 'football', 'How many World Cups did Pelé win with Brazil?', '1', '2', '3', '4', 3),
(67, 'football', 'When did Alexis Sanchez play for FC Barcelona?', '2011-2014', '1989-1999', '1958-1970', '2003-2007', 1),
(68, 'football', 'How many times did Ronaldo become world footballer?', '2', '5', '1', '3', 4),
(69, 'football', 'Who scored 1329 goals during his career?', 'Romario', 'Arthur Friedenreich', 'Pelé', 'Lionel Messi', 2),
(70, 'football', 'Which club did Georghe Hagi play for?', 'AS Roma', 'Flamengo ', 'FC Zürich', 'FC Barcelona', 4),
(71, 'football', 'Which Chilean player once played in Switzerland, later for Real Madrid and Inter Milan?', 'Marcelo Salas', 'Ivan Zamorano', 'Arturo Vidal', 'Erick Pulgar', 2),
(72, 'football', 'Which Turkish player played for AS Roma?', 'Ünder', 'Sükür', 'Turan', 'Emre Belözoğlu', 1),
(73, 'football', 'Who is the most expensive Ethiopian player in market value?', 'Amanuel Gebremichael', 'Shemeles Bekele', 'Gatoch Panom', 'Beneyam Belay', 3),
(74, 'anatomy', 'Which organ is responsible for filtering blood and producing urine?', 'Liver\r\n\r\n\r\n', 'Heart', 'Kidney', 'Lungs', 3),
(75, 'anatomy', 'What bones form the skeleton of the human arm?', 'Ulna and Radius\r\n\r\n\r\n', 'Tibia and Fibula', 'Femur and Patella', 'Humerus and Scapula', 1),
(76, 'anatomy', 'What type of tissue connects bones to each other?', 'a) Muscle tissue\r\n\r\n\r\n', 'b) Nervous tissue', 'c) Connective tissue', 'd) Epithelial tissue', 3),
(77, 'anatomy', 'What is the term for the largest respiratory organ in the human body?\n\n\n\n\n', 'Liver', 'Stomach', 'Lung', 'Kidney', 3),
(78, 'anatomy', 'Which organ is responsible for producing insulin?', 'Pancreas', 'Thyroid gland', 'Adrenal gland', 'Gallbladder', 1),
(79, 'anatomy', "What is the body's own fluid that lubricates joints called?", 'Saliva', 'Synovial fluid', 'Gastric juice', 'Bile', 2),
(80, 'anatomy', 'Which bones protect the brain?', 'Rib bones', 'Pelvic bones', 'Cranial bones', 'Spinal bones', 3),
(81, 'anatomy', 'What is the name of the longest bone in the human body?', 'Ulna', 'Radius', 'Femur', 'Tibia', 3),
(82, 'anatomy', ' Which heart valve separates the left atrium from the left ventricle?', 'Tricuspid valve', 'Aortic valve', 'Pulmonary valve', 'Mitral valve (bicuspid valve)', 4),
(83, 'anatomy', 'Which organ is responsible for producing red blood cells?', 'Spleen', 'Liver', 'Bone marrow', 'Pancreas', 3),
(84, 'anatomy', 'Which organ is part of the digestive system and produces bile?', 'Liver', 'Stomach', 'Small intestine', 'Kidney', 1),
(85, 'anatomy', 'What type of muscle tissue is under voluntary control?', 'Smooth muscle', 'Cardiac muscle', 'Connective muscle', 'Skeletal muscle', 4),
(86, 'anatomy', 'What are the hard outer layers of bone called?', 'Marrow', 'Cartilage', 'Spongy bone', 'Compact bone', 4),
(87, 'anatomy', 'Which organ regulates metabolism in the body and produces hormones?', 'Liver', 'Thyroid gland', 'Pancreas', 'Adrenal gland', 2),
(88, 'anatomy', 'Which blood cells are primarily responsible for immune defense?', 'Red blood cells', 'Platelets', 'White blood cells', 'Plasma cells', 3);