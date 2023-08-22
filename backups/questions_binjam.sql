-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 22, 2023 at 07:39 AM
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
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'maths', 'Observe the calculation rules. What is 3 + 2 · 5?', '15', '30', '13', '25', 3),
(2, 'maths', 'How many meters make a kilometer?', '10', '10000', '100', '1000', 4),
(3, 'maths', 'What is the digit sum of the number 362?', '11', '10', '13', '12', 1),
(4, 'maths', 'If you add the numbers from 1 to 10, what is the sum?', '56', '44', '55', '66', 3),
(5, 'maths', 'The number one million has how many zeros?', '6 zeros', '5 zeros', '7 zeros', '4 zeros', 1),
(6, 'maths', 'In the problem 6 × 7 = 42, the number 6 is a factor and the number 7 is a factor. How do you call the result 42 in technical jargon?\r\n\r\n', 'Quotient', 'Total', 'Product', 'Difference', 3),
(7, 'maths', 'How many degrees is a right angle?', '90 degrees', '180 degrees', '360 degrees', '270 degrees', 1),
(8, 'maths', 'What is half of 1/2?\r\n', ' 1/4', '1/2', ' 2/4', '1/3', 1),
(9, 'maths', 'What do you do with the PQ formula?', ' Simplification of binomial formulas', 'Helps pull the root', ' Solve quadratic equations', 'Calculate hypotenuse', 3),
(10, 'maths', 'A _________ is a natural number greater than 1 and divisible only by itself and 1. Which word is missing here?', 'Euler number', 'Prime number', 'Zahlenreihe', 'series of numbers', 2),
(11, 'maths', 'How many degrees does a whole circle have?\r\n\r\n', '90 degrees', '300 degrees', '180 degrees', '360 degrees', 4),
(12, 'maths', 'An apple costs 40 cents. How much do 4 apples cost?', '1,60 Chf', ' 1,20 Chf', '0,40 Chf', ' 2,00 Chf', 1),
(13, 'maths', 'How much is 50 percent of 60?', ' 60', ' 30', '90', ' 10', 2),
(14, 'maths', 'How many faces does a cube have?', ' 5', '4', '6', '7', 3),
(15, 'maths', 'What is the sum of the interior angles of a triangle?', '180 degrees', '240 degrees', '360 degrees', '120 degrees', 1);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
