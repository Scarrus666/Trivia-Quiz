-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 22, 2023 at 07:37 AM
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
(1, 'switzerland', 'Welche Berge sind die bekanntesten Wahrzeichen der Schweiz?', 'a) Dolomiten\r\n', 'b) Pyrenäen\r\n', 'c) Karpaten\r\n', 'd) Alpen ', 4),
(2, 'switzerland', 'Welche Länder durchfließt der Rhein, neben der Schweiz?', 'a) Frankreich, Italien, Deutschland, Österreich\r\n', 'b) Belgien, Luxemburg, Niederlande, Deutschland\r\n', 'c) Liechtenstein, Deutschland, Österreich, Niederlande\r\n', 'd) Liechtenstein, Österreich, Deutschland, Frankreich, Niederlande', 4),
(3, 'switzerland', 'Wie viele offizielle Amtssprachen hat die Schweiz?', '\r\na) 2\r\n', 'b) 3\r\n', 'c) 4 \r\n', 'd) 5', 3),
(4, 'switzerland', 'Welcher ist der größte See in der Schweiz?', 'a) Bodensee\r\n', '\r\nb) Vierwaldstättersee\r\n', '\r\nc) Genfersee\r\n', '\r\nd) Zürichsee', 3),
(5, 'switzerland', 'In welchem Jahrhundert wurde die Schweizer Eidgenossenschaft gegründet?', 'a) 20. Jahrhundert\r\n', 'b) 19. Jahrhundert \r\n', 'c) 16. Jahrhundert\r\n', 'd) 17. Jahrhundert', 2),
(6, 'switzerland', 'Welches Tal ist für seine hohe Dichte an Uhrenmanufakturen bekannt?', 'a) Engadin\r\n', '\r\nb) Simmental\r\n', '\r\nc) Vallée de Joux \r\n', '\r\nd) Lauterbrunnental', 3),
(7, 'switzerland', 'Welche Stadt wird oft als \"Welthauptstadt des Roten Kreuzes\" bezeichnet?', 'a) Genf ', '\r\nb) Bern\r\n', '\r\nc) Zürich\r\n', '\r\nd) Lausanne', 1),
(8, 'switzerland', 'Welcher berühmte Pass verbindet das Wallis mit dem Aostatal in Italien?', 'a) Julierpass\r\n', '\r\nb) Furkapass\r\n', '\r\nc) Gotthardpass\r\n', '\r\nd) Simplonpass', 4),
(9, 'switzerland', 'Wie nennt man die Region in der Schweiz, in der Rätoromanisch gesprochen wird?', 'a) Schwarzwald\r\n', '\r\nb) Appenzell\r\n', '\r\nc) Graubünden \r\n', '\r\nd) Uri', 3),
(10, 'switzerland', 'Welche berühmte Seilbahn führt auf das Matterhorn?', 'a) gar keine', '\r\nb) Gornergratbahn\r\n', '\r\nc) Schilthornbahn\r\n', '\r\nd) Zermatt-Bahn ', 1),
(11, 'switzerland', 'Wie heißt die längste Flussquelle Europas, die in den Schweizer Alpen entspringt?', 'a) Rhone\r\n', '\r\nb) Elbe\r\n', '\r\nc) Donau\r\n', '\r\nd) Rhein', 4),
(12, 'switzerland', 'In welchem Kanton befindet sich die Stadt St. Moritz, ein bekannter Wintersportort?', 'a) Graubünden \r\n', '\r\nb) Wallis\r\n', '\r\nc) Bern\r\n', '\r\nd) Luzern', 1);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
