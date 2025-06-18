-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2025 at 06:39 PM
-- Server version: 8.0.41
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home_tutor_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int NOT NULL,
  `question_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `answer` text COLLATE utf8mb4_general_ci,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int DEFAULT '0',
  `dislikes` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `user_id`, `answer`, `image`, `created_at`, `likes`, `dislikes`) VALUES
(15, 16, 36, 'The total surface area of a cylinder is:\r\nTSA = 2πr² + 2πrh\r\nWhere:\r\n\r\nr = radius of base\r\n\r\nh = height of cylinder\r\n\r\nThe first term is the area of top and bottom, and the second is the curved surface.\r\n\r\n', 'img/questions/1746289392_download.png', '2025-05-03 16:23:12', 2, 0),
(16, 11, 40, 'Carbon can form four covalent bonds due to its 4 valence electrons.\r\n\r\nIt shows catenation (bonding with itself) and can form chains, rings, and branches.\r\n\r\nIt also bonds with many other elements like H, O, N, and Cl.\r\nThis versatility makes carbon the basis of organic chemistry.\r\n\r\n', 'img/questions/1746289465_images.jpeg', '2025-05-03 16:24:25', 1, 0),
(17, 17, 42, 'Reflection is the bouncing back of light when it hits a shiny surface like a mirror.\r\n\r\nRefraction is the bending of light as it passes from one medium to another (like air to water), due to a change in speed.\r\nExample:\r\n\r\nReflection: Image in a mirror.\r\n\r\nRefraction: Pencil appearing bent in water.', 'img/questions/1746289523_images (1).jpeg', '2025-05-03 16:25:23', 1, 0),
(18, 9, 35, 'The Internet is a global network of interconnected computers that communicate using standardized protocols.\r\n\r\nThe World Wide Web (WWW) is a service that operates over the Internet, allowing access to websites and web pages via browsers.', 'img/questions/1746289588_images (2).jpeg', '2025-05-03 16:26:28', 0, 0),
(19, 14, 41, 'Photosynthesis is the process by which green plants use sunlight to synthesize food from carbon dioxide and water.\r\n\r\nWord Equation: Carbon dioxide + Water → Glucose + Oxygen', 'img/questions/1746289632_images (3).jpeg', '2025-05-03 16:27:12', 0, 0),
(20, 12, 38, 'Direct speech: The exact words of the speaker are quoted using quotation marks.\r\n\r\nIndirect speech: The message is reported without quoting exact words.\r\nExample:\r\n\r\nDirect: He said, “I am going to school.”\r\n\r\nIndirect: He said that he was going to school.', 'img/questions/1746289704_images.png', '2025-05-03 16:28:24', 1, 0),
(21, 13, 39, 'In accounting, the rules of debit and credit help in recording financial transactions accurately using double-entry bookkeeping. There are three main types of accounts, and each has its own rule:\r\n\r\n🧑‍💼 1. Personal Account\r\nRule:\r\n\r\nDebit the receiver\r\n\r\nCredit the giver\r\n\r\nExample:\r\nYou pay ₹1,000 to Ramesh.\r\n\r\nDebit Ramesh\'s account (he is the receiver)\r\n\r\nCredit Cash (you gave money)\r\n\r\n🏠 2. Real Account\r\n(Deals with assets like cash, furniture, etc.)\r\n\r\nRule:\r\n\r\nDebit what comes in\r\n\r\nCredit what goes out\r\n\r\nExample:\r\nYou purchase a computer for your office.\r\n\r\nDebit Computer (asset coming in)\r\n\r\nCredit Cash/Bank (going out)\r\n\r\n📊 3. Nominal Account\r\n(Deals with expenses, losses, incomes, and gains)\r\n\r\nRule:\r\n\r\nDebit all expenses and losses\r\n\r\nCredit all incomes and gains\r\n\r\nExample:\r\nYou paid rent ₹5,000.\r\n\r\nDebit Rent (expense)\r\n\r\nCredit Cash (payment made)', 'img/questions/1746289807_M_2F_Debits_and_credits_system.png', '2025-05-03 16:30:07', 0, 0),
(22, 10, 37, 'Mahatma Gandhi was a leader of the Indian independence movement against British rule.\r\n\r\nHe promoted non-violent civil disobedience and led key movements like the Salt March, Non-Cooperation, and Quit India Movement.\r\n\r\nHis peaceful methods inspired millions and helped India gain independence in 1947.', 'img/questions/1746290003_61Lpmcn61IL._AC_UF1000,1000_QL80_.jpg', '2025-05-03 16:33:23', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `answer_votes`
--

CREATE TABLE `answer_votes` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `answer_id` int NOT NULL,
  `vote_type` enum('like','dislike') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer_votes`
--

INSERT INTO `answer_votes` (`id`, `user_id`, `answer_id`, `vote_type`) VALUES
(13, 36, 15, 'like'),
(14, 39, 20, 'like'),
(15, 39, 15, 'like'),
(16, 39, 17, 'like'),
(17, 39, 16, 'like'),
(18, 37, 22, 'like');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question` text COLLATE utf8mb4_general_ci,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `subject`, `question`, `image`, `created_at`) VALUES
(9, 32, 'Computer Science', 'What is the Internet? How is it different from the World Wide Web?', '', '2025-05-03 16:17:50'),
(10, 32, 'History', 'Who was Mahatma Gandhi, and what was his role in India’s freedom struggle?', '', '2025-05-03 16:18:24'),
(11, 32, 'Chemistry', 'Why is carbon able to form so many compounds?', '', '2025-05-03 16:18:42'),
(12, 32, 'English', 'What is the difference between direct and indirect speech? Give one example.', '', '2025-05-03 16:19:06'),
(13, 32, 'Accounts', 'What is the rule of debit and credit in accounting?', '', '2025-05-03 16:19:24'),
(14, 32, 'Science', 'What is photosynthesis? Write the word equation for it.', '', '2025-05-03 16:19:49'),
(16, 32, 'Maths', 'How do you find the surface area of a cylinder?', '', '2025-05-03 16:21:00'),
(17, 32, 'Physics', 'What is the difference between reflection and refraction?', '', '2025-05-03 16:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(1, 'Maths'),
(2, 'Science'),
(3, 'Physics'),
(4, 'Chemistry'),
(5, 'Biology'),
(6, 'English'),
(8, 'History'),
(11, 'Computer Science'),
(12, 'Accounts');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int NOT NULL,
  `student_id` int NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `rating` int DEFAULT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `student_id`, `content`, `rating`, `status`, `created_at`) VALUES
(1, 32, 'Excellent tutors are present recommend it ', 4, 'approved', '2025-04-29 18:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_details`
--

CREATE TABLE `tutor_details` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `qualifications` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `subject_expertise` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `teaching_levels` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `supporting_document` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `availability` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'Not provided'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor_details`
--

INSERT INTO `tutor_details` (`id`, `user_id`, `qualifications`, `subject_expertise`, `teaching_levels`, `supporting_document`, `rating`, `availability`) VALUES
(9, 31, 'Btech', 'Computer Science', 'Class 1-5, Class 11-12 Science, Class 11-12 Commerce', '1746210689_Kendrick Lamar poster.jpeg', NULL, 'Afternoon'),
(10, 34, 'Masters', 'Biology', 'Class 1-5, Class 6-8, Class 9-10, Class 11-12 Science', NULL, NULL, 'Anytime'),
(11, 35, 'Bachelors', 'Computer Science', 'Class 1-5, Class 6-8, Class 9-10, Class 11-12 Science, Class 11-12 Commerce, Class 11-12 Arts', NULL, NULL, 'Afternoon'),
(12, 36, 'PhD', 'Maths', 'Class 9-10, Class 11-12 Science, Class 11-12 Commerce', NULL, NULL, 'Anytime'),
(13, 37, 'Bachelors', 'History', 'Class 6-8, Class 9-10, Class 11-12 Arts', NULL, NULL, 'Evening'),
(14, 38, 'BEd', 'English', 'Class 1-5, Class 6-8, Class 9-10, Class 11-12 Science, Class 11-12 Commerce, Class 11-12 Arts', NULL, NULL, 'Not provided'),
(15, 39, 'MEd', 'Accounts', 'Class 11-12 Commerce', NULL, NULL, 'Afternoon'),
(16, 40, 'PhD', 'Chemistry', 'Class 9-10, Class 11-12 Science', NULL, NULL, 'Anytime'),
(17, 41, 'BEd', 'Science', 'Class 6-8, Class 9-10, Class 11-12 Science', NULL, NULL, 'Afternoon'),
(18, 42, 'Masters', 'Physics', 'Class 6-8, Class 9-10, Class 11-12 Science', NULL, NULL, 'Not provided');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_requests`
--

CREATE TABLE `tutor_requests` (
  `request_id` int NOT NULL,
  `student_id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `tutor_phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `request_status` enum('pending','accepted','rejected','completed','cancelled') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor_requests`
--

INSERT INTO `tutor_requests` (`request_id`, `student_id`, `tutor_id`, `tutor_phone`, `request_status`, `request_date`) VALUES
(3, 32, 31, '8847443583', 'completed', '2025-04-27 17:13:15'),
(4, 32, 31, '8847443583', 'pending', '2025-04-27 17:17:41'),
(5, 32, 31, '8847443583', 'cancelled', '2025-04-28 16:01:32'),
(6, 32, 31, '8847443583', 'rejected', '2025-04-29 15:30:07'),
(7, 32, 39, '+917878787878', 'pending', '2025-06-03 16:03:24'),
(8, 32, 35, '+911234567890', 'accepted', '2025-06-17 15:56:46'),
(9, 32, 35, '+911234567890', 'completed', '2025-06-17 16:08:28'),
(10, 32, 35, '+911234567890', 'pending', '2025-06-18 18:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('student','tutor','admin') COLLATE utf8mb4_general_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` text COLLATE utf8mb4_general_ci,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `phone` varchar(15) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `latitude`, `longitude`, `created_at`, `address`, `profile_picture`, `status`, `phone`) VALUES
(29, 'Admin', 'admin@elearning.com', '$2y$10$to7kJjXazvRWC5E1XquR1uD.X9/3wV8JZmSbPJIcqhMUPhinCOTXW', 'admin', 31.3254065, 75.6033517, '2025-04-26 09:27:07', 'Admin Office, Jalandhar, Punjab, India', NULL, 'approved', ''),
(31, 'Alicia', 'tutor@elearning.com', '$2y$10$It4/6YLFXG38FrW5hr2mmuMjrKH5tXa0rDR5ezCiVE2cQWuquxrAO', 'tutor', 31.324599987438187, 75.59588443010254, '2025-04-27 08:10:26', '8HFW+V9V, SD College Rd, Arjun Nagar, Jalandhar, Punjab 144001, India', '1746369373_front-view-young-beautiful-lady-white-t-shirt-black-jeans-coat-holding-green-book-pen-smiling-white_140725-18658.avif', 'approved', '9478479460'),
(32, 'Deepesh', 'deepeshsingh2606@gmail.com', '$2y$10$Hgij2z1RqvGzadFXifK73uXHFXtVaOAVZ1ZMWKv1cYUN5/6tm8Sri', 'student', 31.3354993, 75.55580510000001, '2025-04-27 16:40:58', 'Jalandhar Rd, Saraswati Vihar, Hardev Nagar, Jalandhar, Punjab, India', NULL, 'pending', '+918847443583'),
(34, 'emily', 'biology@gmail.com', '$2y$10$SSkaV6ApGoLlfcnjzVWK1uXZajpxxcFw4trdegnoB4OWO7njcNRr.', 'tutor', 31.3346013, 75.5624417, '2025-05-03 15:52:08', NULL, '1746287567_4.png', 'approved', '+911234567890'),
(35, 'Sophia', 'computer@gmail.com', '$2y$10$ax3gsGD7iPgKJ8HGkUImH.VixN10Ben7du5EiyCxcdPlKOz.7Mho6', 'tutor', 31.3354072, 75.5386935, '2025-05-03 15:55:32', NULL, '1746287756_5.png', 'approved', '+911234567890'),
(36, 'Riyan', 'maths@gmail.com', '$2y$10$zi64GCyWQB89i1GYlH/NwefX1Jg34CA.ZddhP6yzO4Dem4uizBHBi', 'tutor', 31.3435833, 75.5390833, '2025-05-03 15:57:10', NULL, '1746287851_6.png', 'approved', '+911234567890'),
(37, 'Joseph', 'history@gmail.com', '$2y$10$HZ.rln0XPZKEh6vmIScrDegQf.ICcpNugUgh2tPWKj3NsjBje/Znq', 'tutor', 31.3490813, 75.51508319999999, '2025-05-03 15:58:26', NULL, '1746287924_7.png', 'approved', '+911234567890'),
(38, 'Pheobe', 'english@gmail.com', '$2y$10$tPfSezgQZjIsItn4qZEMTuv2J3K2oMyyaIaqKr/14fieZOuokmwSu', 'tutor', 31.3534022, 75.4587344, '2025-05-03 16:01:19', NULL, '1746288103_3.png', 'approved', '+910987654321'),
(39, 'Rose', 'accounts@gmail.com', '$2y$10$obPj5uifDPr9LFW9LN8ea./uPVneCUTBRBLrgJzQb3pvdYMKNAQHe', 'tutor', 31.3346013, 75.5624417, '2025-05-03 16:03:28', NULL, '1746288228_2.png', 'approved', '+917878787878'),
(40, 'Jennie', 'chemistry@gmail.com', '$2y$10$64cGZflfypaLQMU5yrGZC.LLEoPjSIeVizFw92p7NUelnlSr80z4e', 'tutor', 31.3254065, 75.60335169999999, '2025-05-03 16:04:52', NULL, '1746288311_1.png', 'approved', '+919898989898'),
(41, 'Alicia', 'science@gmail.com', '$2y$10$9dzngejrXDgoWoqdsT2W1eZvcmipfz36bHP9uSNfrubEWmAir2COy', 'tutor', 31.3367067, 75.57772829999999, '2025-05-03 16:11:50', NULL, '1746288804_5.png', 'approved', '+918585858585'),
(42, 'Joey', 'physics@gmail.com', '$2y$10$LSHz0TQSY25PIS7reCVw2Os2mRzlv1PrxT2zHw65U/eI9e9KJhapm', 'tutor', 31.3127353, 75.59125399999999, '2025-05-03 16:12:42', NULL, '1746288786_4.png', 'approved', '+914545454545');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `answer_votes`
--
ALTER TABLE `answer_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`answer_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `tutor_details`
--
ALTER TABLE `tutor_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tutor_requests`
--
ALTER TABLE `tutor_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `tutor_id` (`tutor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `answer_votes`
--
ALTER TABLE `answer_votes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutor_details`
--
ALTER TABLE `tutor_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tutor_requests`
--
ALTER TABLE `tutor_requests`
  MODIFY `request_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `answer_votes`
--
ALTER TABLE `answer_votes`
  ADD CONSTRAINT `answer_votes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `answer_votes_ibfk_2` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutor_details`
--
ALTER TABLE `tutor_details`
  ADD CONSTRAINT `tutor_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tutor_requests`
--
ALTER TABLE `tutor_requests`
  ADD CONSTRAINT `tutor_requests_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tutor_requests_ibfk_2` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
