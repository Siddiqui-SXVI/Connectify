-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 12:57 PM
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
-- Database: `connectify`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement_details`
--

CREATE TABLE `achievement_details` (
  `ach_id` int(5) NOT NULL,
  `ach_name` varchar(50) NOT NULL,
  `ach_rank` varchar(10) NOT NULL,
  `ach_year` varchar(5) NOT NULL,
  `ach_certy` varchar(50) NOT NULL,
  `reg_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievement_details`
--

INSERT INTO `achievement_details` (`ach_id`, `ach_name`, `ach_rank`, `ach_year`, `ach_certy`, `reg_id`) VALUES
(4, 'GFG Cloud Bootcamp', '480', '2023', 'cesar-rincon-XHVpWcr5grQ-unsplash.jpg', 1),
(5, 'CLOUD', '480', '2023', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_detail`
--

CREATE TABLE `admin_detail` (
  `a_id` int(5) NOT NULL,
  `a_uname` varchar(10) NOT NULL COMMENT 'Admin''s Username',
  `a_passwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_detail`
--

INSERT INTO `admin_detail` (`a_id`, `a_uname`, `a_passwd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `education_detail`
--

CREATE TABLE `education_detail` (
  `edu_id` int(5) NOT NULL,
  `edu_qua` varchar(20) NOT NULL,
  `edu_year` varchar(5) NOT NULL,
  `edu_uni` varchar(50) NOT NULL,
  `edu_grade` float(4,2) NOT NULL,
  `reg_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_detail`
--

INSERT INTO `education_detail` (`edu_id`, `edu_qua`, `edu_year`, `edu_uni`, `edu_grade`, `reg_id`) VALUES
(10, 'Post Graduation', '2024', 'School of Management Sciences', 8.04, 1),
(11, 'Graduation', '2020', 'MGKVP', 5.50, 1),
(12, '12th', '2017', 'BVMS', 5.50, 1),
(13, '10th', '2015', 'SSES', 7.90, 1),
(14, 'Post Graduation', '2024', 'SMS', 5.50, 2),
(15, 'Post Graduation', '2024', 'MGKVP', 7.90, 3),
(16, 'Post Graduation', '2024', 'SMS', 8.00, 4);

-- --------------------------------------------------------

--
-- Table structure for table `personal_detail`
--

CREATE TABLE `personal_detail` (
  `pd_id` int(5) NOT NULL,
  `pd_gender` varchar(6) NOT NULL,
  `pd_hobby` varchar(50) DEFAULT NULL,
  `pd_contact` varchar(10) NOT NULL,
  `pd_dob` varchar(20) NOT NULL,
  `pd_skill` varchar(50) NOT NULL,
  `pd_add` varchar(50) NOT NULL,
  `pd_profile` varchar(50) NOT NULL,
  `pd_nation` varchar(10) NOT NULL,
  `pd_status` varchar(10) NOT NULL,
  `pd_lang` varchar(50) NOT NULL,
  `pd_pitch` varchar(1000) NOT NULL,
  `reg_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_detail`
--

INSERT INTO `personal_detail` (`pd_id`, `pd_gender`, `pd_hobby`, `pd_contact`, `pd_dob`, `pd_skill`, `pd_add`, `pd_profile`, `pd_nation`, `pd_status`, `pd_lang`, `pd_pitch`, `reg_id`) VALUES
(11, 'Male', 'Cricket', '7800704605', '16/06/1999', 'C, C++, Java', 'Koyla Bazaar, Varanasi', 'cesar-rincon-XHVpWcr5grQ-unsplash.jpg', 'Indian', 'Single', 'lang', 'I am a front-end developer.', 1),
(12, 'Male', 'Cricket', '7894561230', '20/08//1999', 'MERN', 'asdfgh', 'cesar-rincon-XHVpWcr5grQ-unsplash.jpg', 'indian', 'single', 'hindi,urdu,english,french', 'qazwsxedc', 2),
(13, 'Female', 'hockey', '1234567890', '12/02/1333', 'C', 'asdsadsa', '', 'Indian', 'Single', 'English, Hindi', 'qwerty', 3),
(14, 'Male', 'Cricket', '7894561230', '12/02/1333', 'MERN', 'Ghar', 'DFD Comp 1.png', 'Indian', 'Single', 'English, Hindi', 'Mai hu Giyaan.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `project_detail`
--

CREATE TABLE `project_detail` (
  `p_id` int(5) NOT NULL,
  `p_title` varchar(20) NOT NULL COMMENT 'Project Title',
  `p_dur` varchar(10) NOT NULL COMMENT 'Duration',
  `p_desc` varchar(1000) NOT NULL COMMENT 'Description',
  `reg_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_detail`
--

INSERT INTO `project_detail` (`p_id`, `p_title`, `p_dur`, `p_desc`, `reg_id`) VALUES
(3, 'AL-MASAFIR', '2-MONTH', 'It is a website that provide users with information about the tourist places of India.', 1),
(4, 'AL-MASAFIR', '2-MONTH', 'dsfgvdsgfvds', 2);

-- --------------------------------------------------------

--
-- Table structure for table `reg_comp`
--

CREATE TABLE `reg_comp` (
  `reg_id` int(5) NOT NULL,
  `reg_name` varchar(50) NOT NULL,
  `reg_email` varchar(100) NOT NULL,
  `reg_password` varchar(200) NOT NULL,
  `reg_date` datetime DEFAULT current_timestamp(),
  `login_status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg_comp`
--

INSERT INTO `reg_comp` (`reg_id`, `reg_name`, `reg_email`, `reg_password`, `reg_date`, `login_status`) VALUES
(1, 'TCS', 'tcs@gmail.com', 'tcs123', '2023-12-24 16:08:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_users`
--

CREATE TABLE `reg_users` (
  `reg_id` int(5) NOT NULL,
  `reg_name` varchar(50) NOT NULL,
  `reg_email` varchar(50) NOT NULL,
  `reg_password` varchar(200) NOT NULL,
  `reg_date` datetime DEFAULT current_timestamp(),
  `login_status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg_users`
--

INSERT INTO `reg_users` (`reg_id`, `reg_name`, `reg_email`, `reg_password`, `reg_date`, `login_status`) VALUES
(1, 'Shadab Siddiqui', 'shadab@gmail.com', 'abcd123', '2023-12-24 01:27:54', 0),
(2, 'Irfan Khan', 'irfan@gmail.com', 'qwerty', '2023-12-24 01:29:39', 0),
(3, 'Golu', 'golu@gmail.com', 'golu123', '2023-12-24 16:10:18', 0),
(4, 'User4', 'user4@gmail.com', 'user4', '2024-01-30 15:49:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `work_experience_detail`
--

CREATE TABLE `work_experience_detail` (
  `we_id` int(5) NOT NULL,
  `we_title` varchar(20) NOT NULL COMMENT 'Designation',
  `we_comp` varchar(20) NOT NULL COMMENT 'Company''s Name',
  `we_dur` varchar(10) NOT NULL COMMENT 'Working Duration',
  `we_desc` varchar(1000) DEFAULT NULL COMMENT 'Company Profile',
  `we_ach` varchar(20) DEFAULT NULL COMMENT 'Achievements',
  `reg_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_experience_detail`
--

INSERT INTO `work_experience_detail` (`we_id`, `we_title`, `we_comp`, `we_dur`, `we_desc`, `we_ach`, `reg_id`) VALUES
(4, 'Intern', 'Ashrisha IT Solution', '2 monhts', 'I worked as a front-end developer.', 'Certificate of Compl', 1),
(5, 'Intern', 'C company', '6 month', 'dsfsdfvds', 'EMPLOYEE OF THE MONT', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement_details`
--
ALTER TABLE `achievement_details`
  ADD PRIMARY KEY (`ach_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `admin_detail`
--
ALTER TABLE `admin_detail`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `education_detail`
--
ALTER TABLE `education_detail`
  ADD PRIMARY KEY (`edu_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `personal_detail`
--
ALTER TABLE `personal_detail`
  ADD PRIMARY KEY (`pd_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `project_detail`
--
ALTER TABLE `project_detail`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `reg_comp`
--
ALTER TABLE `reg_comp`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `reg_users`
--
ALTER TABLE `reg_users`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `work_experience_detail`
--
ALTER TABLE `work_experience_detail`
  ADD PRIMARY KEY (`we_id`),
  ADD KEY `reg_id` (`reg_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement_details`
--
ALTER TABLE `achievement_details`
  MODIFY `ach_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_detail`
--
ALTER TABLE `admin_detail`
  MODIFY `a_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education_detail`
--
ALTER TABLE `education_detail`
  MODIFY `edu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_detail`
--
ALTER TABLE `personal_detail`
  MODIFY `pd_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `project_detail`
--
ALTER TABLE `project_detail`
  MODIFY `p_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reg_comp`
--
ALTER TABLE `reg_comp`
  MODIFY `reg_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reg_users`
--
ALTER TABLE `reg_users`
  MODIFY `reg_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `work_experience_detail`
--
ALTER TABLE `work_experience_detail`
  MODIFY `we_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achievement_details`
--
ALTER TABLE `achievement_details`
  ADD CONSTRAINT `reg_id` FOREIGN KEY (`reg_id`) REFERENCES `reg_users` (`reg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `education_detail`
--
ALTER TABLE `education_detail`
  ADD CONSTRAINT `education_detail_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `reg_users` (`reg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `personal_detail`
--
ALTER TABLE `personal_detail`
  ADD CONSTRAINT `personal_detail_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `reg_users` (`reg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `project_detail`
--
ALTER TABLE `project_detail`
  ADD CONSTRAINT `project_detail_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `reg_users` (`reg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `work_experience_detail`
--
ALTER TABLE `work_experience_detail`
  ADD CONSTRAINT `work_experience_detail_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `reg_users` (`reg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
