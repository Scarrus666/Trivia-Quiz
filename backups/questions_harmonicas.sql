-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 22, 2023 at 07:18 AM
-- Server version: 8.0.33
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `topic` enum('harmonica','football','switzerland','e-guitar','maths') COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer_1` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_2` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_3` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_4` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `topic`, `question_text`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `answer_id`) VALUES
(1, 'harmonica', 'What is another name for the harmonica?', 'Flute', 'Mouth Organ', 'Trumpet', 'Piano', 2),
(2, 'harmonica', 'Which musical family does the harmonica belong to?', 'String Instruments', 'Brass Instruments', 'Percussion Instruments', 'Wind Instruments', 4),
(3, 'harmonica', 'Who is credited with inventing the modern harmonica in the 1820s?', 'Johann Sebastian Bach', 'Wolfgang Amadeus Mozart', 'Christian Friedrich Ludwig Buschmann', 'Ludwig van Beethoven', 3),
(4, 'harmonica', 'How many reeds does a typical diatonic harmonica have?', '8 reeds', '12 reeds', '20 reeds', '24 reeds', 3),
(5, 'harmonica', 'Which brand is widely recognized as one of the most typical and iconic manufacturers of harmonicas in the world?', 'Yamaha', 'Fender', 'Hohner', 'Gibson', 3),
(6, 'harmonica', 'Which hand is used for playing the melody on a standard harmonica?', 'Left hand', 'Right hand', 'Both hands', 'Feet', 1),
(7, 'harmonica', 'What is the term for the technique of bending a harmonica reed to produce a note outside its natural range?', 'Twisting', 'Warping', 'Bending', 'Distorting', 3),
(8, 'harmonica', 'In chromatic harmonicas, what feature allows players to access all the notes of the chromatic scale?', 'Slide button', 'Whammy bar', 'Bendable reeds', 'Tremolo effect', 1),
(9, 'harmonica', 'Which harmonica playing technique involves playing two or more notes at once to create a fuller sound?', 'Melodic playing', 'Chordal playing', 'Harmonic playing', 'Solo playing', 2),
(10, 'harmonica', 'Which famous musician was known for playing the harmonica while playing the guitar and singing \"Blowin in the Wind?\"', 'Johnny Cash', 'Elvis Presley', 'Bob Dylan', 'Jimmy Hendrix', 3),
(11, 'harmonica', 'What is the name of the small hole on the back of a harmonica that allows air to escape?', 'Ventilation hole', 'Sound hole', 'Air outlet', 'Vents', 4),
(12, 'harmonica', 'Which popular musical genre heavily features the use of the harmonica alongside guitars and vocals?', 'Jazz', 'Classical music', 'Folk music', 'Hip-hop', 3),
(13, 'harmonica', 'What is the term for a harmonica that is played in a cross position, where inhaling and exhaling produce different notes?', 'Straight harp', 'Cross harp', 'Paralell harp', ' Diagonal harp', 2),
(14, 'harmonica', 'In terms of pitch range, how does a bass harmonica compare to a standard diatonic harmonica?', 'Bass harmonica has a higher pitch range.', 'Bass harmonica has a lower pitch range.', ' Bass harmonica has the same pitch range.', 'Bass harmonica has a variable pitch range.', 2),
(15, 'harmonica', 'What is the purpose of the slide button on a chromatic harmonica?', 'Adjusting volume', 'Changing the key', 'Producing vibrato', 'Redirecting air', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
