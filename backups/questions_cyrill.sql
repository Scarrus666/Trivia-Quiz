-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 22, 2023 at 09:15 AM
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
  `topic` enum('harmonica','football','switzerland','e-guitar','maths','language','anatomy') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `questions_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_1` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_2` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_3` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_4` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `topic`, `questions_text`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `answer_id`) VALUES
(1, 'anatomy', 'Which organ is responsible for filtering blood and producing urine?', 'Liver\r\n\r\n\r\n', 'Heart', 'Kidney', 'Lungs', 3),
(2, 'anatomy', 'What bones form the skeleton of the human arm?', 'Ulna and Radius\r\n\r\n\r\n', 'Tibia and Fibula', 'Femur and Patella', 'Humerus and Scapula', 1),
(3, 'anatomy', 'What type of tissue connects bones to each other?', 'a) Muscle tissue\r\n\r\n\r\n', 'b) Nervous tissue', 'c) Connective tissue', 'd) Epithelial tissue', 3),
(4, 'anatomy', 'What is the term for the largest respiratory organ in the human body?\n\n\n\n\n', 'Liver', 'Stomach', 'Lung', 'Kidney', 3),
(5, 'anatomy', 'Which organ is responsible for producing insulin?', 'Pancreas', 'Thyroid gland', 'Adrenal gland', 'Gallbladder', 1),
(6, 'anatomy', 'What is the body\'s own fluid that lubricates joints called?', 'Saliva', 'Synovial fluid', 'Gastric juice', 'Bile', 2),
(7, 'anatomy', 'Which bones protect the brain?', 'Rib bones', 'Pelvic bones', 'Cranial bones', 'Spinal bones', 3),
(8, 'anatomy', 'What is the name of the longest bone in the human body?', 'Ulna', 'Radius', 'Femur', 'Tibia', 3),
(9, 'anatomy', ' Which heart valve separates the left atrium from the left ventricle?', 'Tricuspid valve', 'Aortic valve', 'Pulmonary valve', 'Mitral valve (bicuspid valve)', 4),
(10, 'anatomy', 'Which organ is responsible for producing red blood cells?', 'Spleen', 'Liver', 'Bone marrow', 'Pancreas', 3),
(11, 'anatomy', 'Which organ is part of the digestive system and produces bile?', 'Liver', 'Stomach', 'Small intestine', 'Kidney', 1),
(12, 'anatomy', 'What type of muscle tissue is under voluntary control?', 'Smooth muscle', 'Cardiac muscle', 'Connective muscle', 'Skeletal muscle', 4),
(13, 'anatomy', 'What are the hard outer layers of bone called?', 'Marrow', 'Cartilage', 'Spongy bone', 'Compact bone', 4),
(14, 'anatomy', 'Which organ regulates metabolism in the body and produces hormones?', 'Liver', 'Thyroid gland', 'Pancreas', 'Adrenal gland', 2),
(15, 'anatomy', 'Which blood cells are primarily responsible for immune defense?', 'Red blood cells', 'Platelets', 'White blood cells', 'Plasma cells', 3);

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
