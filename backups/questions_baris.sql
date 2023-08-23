-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 23, 2023 at 01:09 PM
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
  `topic` enum('harmonica','football','switzerland','e-guitar','maths','language') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'language', 'Which language do you need to understand, if you  watch Youtube tutorials?', 'English', 'German', 'Spanish', NULL, 1),
(2, 'language', 'Which language is the most spoken language in the world?\r\n', 'English', 'German', 'Spanish', NULL, 3),
(3, 'language', 'Which languages have etymologically the same main story?', 'English + German', 'German + Spanish', 'Spanish + English', NULL, 1),
(4, 'language', 'Which language is the biggest language ?', 'English with maybe 420\'000 words', 'German with maybe 370\'000 words', 'Spanish with maybe 290\'000 words', NULL, 2),
(5, 'language', 'Which languages has no cognale words?', 'German + German', 'German + English', 'German + Spanish', NULL, 3),
(6, 'language', 'In which language was the phrase below famously spoken? \r\n\"I only believe a document that I myself have falsified\"', 'English', 'German', 'Spanish', NULL, 1),
(7, 'language', 'In which language was the old, known tragedy \"Romeo e Guila\" written?\r\n\r\n', 'English', 'German', 'Spanish', NULL, 1),
(8, 'language', 'Which langauage contains the words, which were for the poor segment of the population of europe, short A.C., formaited? \r\n', 'English', 'German', 'Spanish', NULL, 2),
(9, 'language', 'In which language was the quote below spoken?\r\n\"If I had 10 days to cut down a tree, I would spend 8 of them sharpening my axe\"\r\n        ', 'English', 'German', 'Spanish', NULL, 1),
(10, 'language', 'Which language is the oldest language?', 'English', 'German', 'Spanish', NULL, 2),
(11, 'language', 'Enought E/G/S. So, which language are the next to Baris\' parent language turkish?!', 'Arabic/ Persian', 'Greek/ Bulgarian', 'Japanese/ Korean\r\n', NULL, 3),
(12, 'language', 'To which language do the alphabets mentioned below belong?\r\n\"Hiragana, Katakana, Kanji\"', 'Korean', 'Japanese', 'Chinese', NULL, 2),
(13, 'language', 'Which of the languages listed below belong to the Romance language family?\r\n', 'Spanish, French, Italian, Portuguese, Romance', 'Spanish, French, Italian, Portuguese, Romanian', 'Spanish, French, Italian, Portuguese, Rhaeto-Romanic\r\n', NULL, 2),
(14, 'language', 'How many letters or characters are typically used in the Japanese language?', '40-60', '200-400', '2000-3000', NULL, 3),
(15, 'language', 'Turkish has adopted many of its modern words from:', 'Portugiese', 'French', 'Italian', NULL, 2);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
