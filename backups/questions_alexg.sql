-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 22, 2023 at 09:19 AM
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
  `topic` enum('harmonica','football','switzerland','e-guitar','maths','language') COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'football', 'Which footballer has scored over 1000 goals?', 'Marco van Basten', 'Alex Frei', 'Romario', 'Jürgen Klinsmann', 3),
(2, 'football', 'Who played for Sion as a junior?', 'Ronaldinho', 'Johan Vonlanthen', 'Ottmar Hitzfeld', 'Alain Sutter', 1),
(3, 'football', 'Which Spanish team uses red/blue as their home kit?', 'FC Basel', 'FC Barcelona', 'Deportivo La Coruna', 'FC Valencia', 2),
(4, 'football', 'When did FC Zurich reach the semi-finals of the Champions League (national champions)?', '2008 und 2019 ', '1964 und 1977', '1994 und 2010 ', '2002 und 2008', 2),
(5, 'football', 'Who won the Champions League 22/23?', 'FC Barcelona', 'Inter Mailand', 'Manchester City', 'FC Sevilla', 3),
(8, 'football', 'Which Swiss founded FC Barcelona?', 'Hans Gamper', 'Steve Lee', 'Edwin Nägeli', 'Jakob Kuhn', 1),
(9, 'football', "Who was an FC Zurich player and later Switzerland's national coach?", 'Fritz Künzli', 'Jakob Kuhn', 'Lucien Favre', 'Bernard Challandes', 2),
(10, 'football', 'When did Stéphane Chapuisat win the Champions League?', '2000', '1994', '1999', '1997', 4),
(11, 'football', 'How many World Cups did Pelé win with Brazil?', '1', '2', '3', '4', 3),
(12, 'football', 'When did Alexis Sanchez play for FC Barcelona?', '2011-2014', '1989-1999', '1958-1970', '2003-2007', 1),
(13, 'football', 'How many times did Ronaldo become world footballer?', '2', '5', '1', '3', 4),
(14, 'football', 'Who scored 1329 goals during his career?', 'Romario', 'Arthur Friedenreich', 'Pelé', 'Lionel Messi', 2),
(15, 'football', 'Which club did Georghe Hagi play for?', 'AS Roma', 'Flamengo ', 'FC Zürich', 'FC Barcelona', 4),
(16, 'football', 'Which Chilean player once played in Switzerland, later for Real Madrid and Inter Milan?', 'Marcelo Salas', 'Ivan Zamorano', 'Arturo Vidal', 'Erick Pulgar', 2),
(17, 'football', 'Which Turkish player played for AS Roma?', 'Ünder', 'Sükür', 'Turan', 'Emre Belözoğlu', 1),
(18, 'football', 'Who is the most expensive Ethiopian player in market value?', 'Amanuel Gebremichael', 'Shemeles Bekele', 'Gatoch Panom', 'Beneyam Belay', 3);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
