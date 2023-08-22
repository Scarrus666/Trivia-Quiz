-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 22, 2023 at 07:38 AM
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
(14, 'e-guitar', 'Who is the lead guitarist of the band Metallica?', 'James Root', 'Kirk Hammet', 'Kurt Cobain', 'Christoph Blocher', 2);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
