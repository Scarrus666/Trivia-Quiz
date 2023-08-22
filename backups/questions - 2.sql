-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 22, 2023 at 06:41 AM
-- Server version: 8.0.34
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
  `answer_1` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_2` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_3` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_4` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `topic`, `question_text`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `question_id`) VALUES
(1, 'e-guitar', 'Wie viele Saiten hat eine E-Gitarre normalerweise?\r\n', '3', '5', '7', '6', 4),
(2, 'e-guitar', 'Folgender ist einen E-Gitarren Produzent.\r\n', 'Ford', 'Fjord', 'Fender', 'Forester', 4),
(3, 'e-guitar', 'Man kann eine E-Gitarre im Freien spielen mit:', 'mit einer tragbaren Steckdose', 'mit einen tragbaren Verstärker', 'mit Chabis', 'gar nicht', 2),
(4, 'e-guitar', 'Eine E-Gitarre soll an der Steckdose angeschlossen sein.\r\n', 'Nein', 'Ja', 'Ja aber nur an 110V', 'Ja aber nur an Wechselstrom', 1),
(5, 'e-guitar', 'Metallica spielt an Konzerten:\r\n', 'mit einem Fuchs', 'Gitarren, Bassgitarren und Schlagzeug', 'mit den Füssen', 'seit 1976', 2),
(6, 'e-guitar', 'Folgender Muziker spielt oder eine E-Gitarre.\r\n', 'Mick Thomson', 'Ray Charles', 'Mozart', 'Fred Durst', 1),
(7, 'e-guitar', 'Was ist der Hauptunterschied zwischen einer E-Gitarre und einer akustischen Gitarre?\r\n', 'Die E-Gitarre hat Tonabnehmer', 'Ich mag Kekse', 'Es gibt keinen Unterschied', 'Die E-Gitarre ist viel lauter', 1),
(8, 'e-guitar', 'Welche Komponente der E-Gitarre ist verantwortlich für die Erzeugung des Klangs?\r\n', 'Der Körper aus Massivholz', 'Der Hals', 'Die Tonabnehmer', 'Die Steckdose', 3),
(9, 'e-guitar', 'Welche Art von Kabel wird benötigt, um eine E-Gitarre mit einem Verstärker zu verbinden?\r\n', 'Einen 110V Kabel', 'MICRO-USB', 'Ein Standard-Gitarrenkabel (Klinkenkabel)', 'Die E-Gitarre funktioniert drahtlos', 3),
(10, 'e-guitar', 'Was sind Tonabnehmer (Pickups) bei einer E-Gitarre und welche Rolle spielen sie?\r\n', 'Sie spielen keine Rolle', 'Tonabnehmer (Pickups) sind magnetische Komponenten, sie übertragen den Ton', 'Die Tonabnehmer spielen mit den Saiten', 'Eine E-Gitarre verfügt normalerweise über ein Piezo-System', 2),
(11, 'e-guitar', 'Wer hat die berühmte Single-Cut Form der E-Gitarre zuerst eingeführt?\r\n', 'Fender', 'Jackson', 'Charvel', 'Gibson', 4),
(12, 'e-guitar', 'Wer ist Mick Thomson?', 'Mick Thomson hat die E-Gitarre erfunden', 'Er spielt in der berühmten Band SlipKnot', 'Mick Thomson wollte dass die E-Gitarre schneller eingeführt wird', 'Er spielte Jazz an der Gitarre in den 1920er Jahren', 2);

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
