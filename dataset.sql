-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 10, 2025 at 07:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataset`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `course_id` varchar(50) NOT NULL,
  `userid_DI` varchar(50) NOT NULL,
  `registered` varchar(50) DEFAULT NULL,
  `viewed` varchar(50) DEFAULT NULL,
  `explored` varchar(50) DEFAULT NULL,
  `certified` varchar(50) DEFAULT NULL,
  `final_cc_cname_DI` varchar(100) DEFAULT NULL,
  `LoE_DI` varchar(50) DEFAULT NULL,
  `YoB` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `start_time_DI` date DEFAULT NULL,
  `last_event_DI` date DEFAULT NULL,
  `nevents` int(11) DEFAULT NULL,
  `ndays_act` int(11) DEFAULT NULL,
  `nplay_video` int(11) DEFAULT NULL,
  `nchapters` int(11) DEFAULT NULL,
  `nforum_posts` int(11) DEFAULT NULL,
  `roles` varchar(50) DEFAULT NULL,
  `incomplete_flag` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`course_id`, `userid_DI`, `registered`, `viewed`, `explored`, `certified`, `final_cc_cname_DI`, `LoE_DI`, `YoB`, `gender`, `grade`, `start_time_DI`, `last_event_DI`, `nevents`, `ndays_act`, `nplay_video`, `nchapters`, `nforum_posts`, `roles`, `incomplete_flag`) VALUES
('course1', 'user1', '1', '1', '1', '1', 'United States', 'Bachelor', '1990', 'm', 'Pass', '2023-01-15', '2023-06-20', 120, 45, 30, 10, 5, 'learner', '0'),
('course1', 'user2', '1', '1', '0', '0', 'India', 'Master', '1985', 'f', 'Fail', '2023-02-10', '2023-05-15', 80, 30, 20, 5, 2, 'learner', '0'),
('course1', 'user5', '1', '1', '1', '1', 'Australia', 'Bachelor', '1992', 'm', 'Pass', '2023-01-10', '2023-06-15', 110, 50, 35, 8, 6, 'learner', '0'),
('course1', 'user7', '1', '1', '0', '0', 'France', 'Secondary', '1998', 'm', 'Fail', '2023-03-05', '2023-04-15', 30, 10, 5, 2, 0, 'learner', '1'),
('course2', 'user3', '1', '0', '0', '0', 'United Kingdom', 'Secondary', '1995', 'm', 'Fail', '2023-03-01', '2023-04-10', 40, 15, 10, 3, 1, 'learner', '1'),
('course2', 'user4', '1', '1', '1', '1', 'Canada', 'Doctorate', '1980', 'f', 'Pass', '2023-01-20', '2023-06-30', 150, 60, 40, 12, 8, 'learner', '0'),
('course2', 'user6', '1', '0', '1', '0', 'Germany', 'Master', '1988', 'f', 'Fail', '2023-02-15', '2023-05-20', 70, 25, 15, 4, 3, 'learner', '0'),
('course2', 'user8', '1', '1', '1', '1', 'Japan', 'Doctorate', '1982', 'f', 'Pass', '2023-01-25', '2023-06-25', 140, 55, 38, 11, 7, 'learner', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(11) NOT NULL,
  `userid_DI` varchar(50) DEFAULT NULL,
  `prob_pass` float DEFAULT NULL,
  `prob_fail` float DEFAULT NULL,
  `risk_level` varchar(20) DEFAULT NULL,
  `certified` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `userid_DI`, `prob_pass`, `prob_fail`, `risk_level`, `certified`) VALUES
(2, 'student2', 0.35, 0.65, 'High', 0),
(3, 'student3', 0.92, 0.08, 'Very Low', 1),
(4, 'student4', 0.45, 0.55, 'Medium', 0),
(5, 'student5', 0.78, 0.22, 'Low', 1),
(6, 'student6', 0.28, 0.72, 'High', 0),
(7, 'student7', 0.95, 0.05, 'Very Low', 1),
(8, 'student8', 0.6, 0.4, 'Medium', 1),
(9, 'student9', 0.25, 0.75, 'High', 0),
(10, 'student10', 0.82, 0.18, 'Low', 1),
(11, 'user1', 0.85, 0.15, 'Low', 1),
(12, 'user2', 0.35, 0.65, 'High', 0),
(13, 'user3', 0.92, 0.08, 'Very Low', 1),
(14, 'user4', 0.45, 0.55, 'Medium', 0),
(15, 'user5', 0.78, 0.22, 'Low', 1),
(16, 'user6', 0.28, 0.72, 'High', 0),
(17, 'user7', 0.95, 0.05, 'Very Low', 1),
(18, 'user8', 0.6, 0.4, 'Medium', 1),
(19, 'user9', 0.25, 0.75, 'High', 0),
(20, 'user10', 0.82, 0.18, 'Low', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`course_id`,`userid_DI`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
