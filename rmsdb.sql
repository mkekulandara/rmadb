-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2015 at 05:30 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `confirmation` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `event_id`, `resource_id`, `user_id`, `confirmation`) VALUES
(1, 1, 0, 2, 'pending'),
(2, 2, 0, 2, 'pending'),
(3, 3, 0, 2, 'pending'),
(4, 4, 1, 2, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL,
  `event_name` varchar(20) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `time_slot` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event_name`, `description`, `date`, `time_slot`) VALUES
(1, 'aaaaaaa', 'aaaa', 'Monday', '8.00-9.00 A'),
(2, '', '', 'Monday', '8.00-9.00 A'),
(3, 'aaaaaa', 'aaaaaaaaaa', 'Monday', '8.00-9.00 A'),
(4, 'bbbbbbbbbb', 'bbbbbbbbb', 'Monday', '8.00-9.00 A');

-- --------------------------------------------------------

--
-- Table structure for table `hall_admins`
--

CREATE TABLE IF NOT EXISTS `hall_admins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall_admins`
--

INSERT INTO `hall_admins` (`id`, `user_id`, `resource_id`) VALUES
(1, 3, 1),
(2, 4, 2),
(3, 5, 3),
(4, 6, 4),
(5, 7, 5),
(6, 8, 6),
(7, 9, 7),
(8, 10, 8),
(9, 3, 9),
(10, 4, 10),
(11, 5, 11),
(12, 6, 12),
(13, 7, 13),
(14, 8, 14),
(15, 9, 15),
(16, 10, 16),
(17, 3, 17),
(18, 4, 18),
(19, 5, 19),
(20, 6, 20),
(21, 7, 21),
(22, 8, 22),
(23, 9, 23),
(24, 10, 24),
(25, 3, 25),
(26, 4, 26),
(27, 5, 27),
(28, 6, 28);

-- --------------------------------------------------------

--
-- Table structure for table `resorce`
--

CREATE TABLE IF NOT EXISTS `resorce` (
  `id` int(11) NOT NULL,
  `resource_id` varchar(20) NOT NULL,
  `resource_name` text,
  `resource_type` text NOT NULL,
  `sub_type` varchar(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `ohp` varchar(11) NOT NULL,
  `sound_system` varchar(11) NOT NULL,
  `multimedia` varchar(11) NOT NULL,
  `wifi` varchar(11) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resorce`
--

INSERT INTO `resorce` (`id`, `resource_id`, `resource_name`, `resource_type`, `sub_type`, `capacity`, `location`, `ohp`, `sound_system`, `multimedia`, `wifi`, `status`) VALUES
(1, 'A1', 'A1', 'Special Resources', 'Other', 300, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
(2, 'A2', 'A2', 'Lecture Halls', 'Software', 250, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
(3, 'A3', 'A3', 'Lecture Halls', 'Software', 400, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
(4, 'A4', 'A4', 'Labs', 'Network', 150, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
(5, 'A5', 'A5', 'Labs', 'Network', 200, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
(6, 'A6', 'A6', 'Labs', 'Network', 200, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
(7, 'A7', 'A7', 'Labs', 'Hardware', 200, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
(8, 'A8', 'A8', 'Labs', 'Hardware', 350, '', 'No', 'Yes', 'No', 'No', 'Available'),
(9, 'A9', 'A9', 'Labs', 'Hardware', 400, '', 'No', 'Yes', 'No', 'No', 'Available'),
(10, 'A10', 'A10', 'Labs', 'Software', 500, '', 'No', 'No', 'No', 'No', 'Not Availab'),
(11, 'B1', 'B1', 'Labs', 'Software', 600, '', 'No', 'No', 'No', 'No', 'Not Availab'),
(12, 'B2', 'B2', 'Lecture Halls', 'Other', 200, '', 'No', 'No', 'No', 'No', 'Available'),
(13, 'B3', 'B3', 'Lecture Halls', 'Hardware', 300, '', 'Yes', 'No', 'Yes', 'Yes', 'Available'),
(14, 'B4', 'B4', 'Lecture Halls', 'Hardware', 300, '', 'Yes', 'No', 'Yes', 'Yes', 'Available'),
(15, 'B5', 'B5', 'Lecture Halls', 'Network', 250, '', 'No', 'Yes', 'No', 'No', 'Available'),
(16, 'B6', 'B6', 'Special Resources', 'Other', 400, '', 'No', 'Yes', 'No', 'Yes', 'Not Availab'),
(17, 'B7', 'B7', 'Special Resources', 'Other', 150, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Not Availab'),
(18, 'B8', 'B8', 'Special Resources', 'Other', 200, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Not Availab'),
(19, 'B9', 'B9', 'Special Resources', 'Software', 200, '', 'Yes', 'No', 'Yes', 'No', 'Not Availab'),
(20, 'B10', 'B10', 'Study Rooms', 'Software', 200, '', 'No', 'No', 'No', 'No', 'Available'),
(21, 'C1', 'C1', 'Study Rooms', 'Hardware', 350, '', 'No', 'No', 'No', 'No', 'Available'),
(22, 'C2', 'C2', 'Study Rooms', 'Network', 400, '', 'No', 'No', 'No', 'No', 'Available'),
(23, 'C3', 'C3', 'Libraries', 'Software', 500, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
(24, 'C4', 'C4', 'Libraries', 'Hardware', 600, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Not Availab'),
(25, 'C5', 'C5', 'Libraries', 'Network', 200, '', 'Yes', 'Yes', 'Yes', 'Yes', 'Available'),
(26, 'C6', 'C6', 'Canteens', 'Other', 300, '', 'No', 'Yes', 'No', 'Yes', 'Available'),
(27, 'C7', 'C7', 'Canteens', 'Other', 300, '', 'No', 'No', 'No', 'No', 'Available'),
(28, 'C8', 'C8', 'Canteens', 'Other', 300, '', 'No', 'No', 'No', 'No', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_level` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `tel_num` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `user_level`, `email`, `first_name`, `last_name`, `dob`, `gender`, `tel_num`, `address`, `status`) VALUES
(1, 'madhukara', '123456', 'Administrator', 'madhukara@live.com', 'madhukara', 'Kekulandara', '0000-00-00', 'Male', '123456789', 'no 123', 'Active'),
(2, 'admin', 'admin', 'Administrator', 'admin@admin.com', 'admin', 'adminadmin', NULL, 'Male', NULL, NULL, 'Active'),
(3, 'user01', 'passrms', 'Hall Administrator', 'sample@sample.com', 'testname', 'test2', NULL, 'Male', NULL, NULL, 'Active'),
(4, 'user02', 'passrms', 'Hall Administrator', 'sample@sample.com', 'testname', 'test3', NULL, 'Male', NULL, NULL, 'Active'),
(5, 'user03', 'passrms', 'Hall Administrator', 'sample@sample.com', 'testname', 'test4', NULL, 'Male', NULL, NULL, 'Active'),
(6, 'user04', 'passrms', 'Hall Administrator', 'sample@sample.com', 'testname', 'test5', NULL, 'Male', NULL, NULL, 'Active'),
(7, 'user05', 'passrms', 'Hall Administrator', 'sample@sample.com', 'testname', 'test6', NULL, 'Male', NULL, NULL, 'Active'),
(8, 'user06', 'passrms', 'Hall Administrator', 'sample@sample.com', 'testname', 'test7', NULL, 'Male', NULL, NULL, 'Active'),
(9, 'user07', 'passrms', 'Hall Administrator', 'sample@sample.com', 'testname', 'test8', NULL, 'Male', NULL, NULL, 'Active'),
(10, 'user08', 'passrms', 'Hall Administrator', 'sample@sample.com', 'testname', 'test9', NULL, 'Male', NULL, NULL, 'Active'),
(11, 'user09', 'passrms', 'General User', 'sample@sample.com', 'testname', 'test10', NULL, 'Male', NULL, NULL, 'Active'),
(12, 'user10', 'passrms', 'General User', 'sample@sample.com', 'testname', 'test11', NULL, 'Male', NULL, NULL, 'Active'),
(13, 'user11', 'passrms', 'General User', 'sample@sample.com', 'testname', 'test12', NULL, 'Male', NULL, NULL, 'Active'),
(14, 'user12', 'passrms', 'General User', 'sample@sample.com', 'testname', 'test13', NULL, 'Male', NULL, NULL, 'Active'),
(15, 'user13', 'passrms', 'General User', 'sample@sample.com', 'testname', 'test14', NULL, 'Male', NULL, NULL, 'Active'),
(16, 'user14', 'passrms', 'General User', 'sample@sample.com', 'testname', 'test15', NULL, 'Male', NULL, NULL, 'Active'),
(17, 'user15', 'passrms', 'General User', 'sample@sample.com', 'testname', 'test16', NULL, 'Male', NULL, NULL, 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`), ADD KEY `event_id` (`event_id`,`user_id`), ADD KEY `resource_id` (`resource_id`), ADD KEY `fk_booking_user` (`user_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall_admins`
--
ALTER TABLE `hall_admins`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `resource_id` (`resource_id`);

--
-- Indexes for table `resorce`
--
ALTER TABLE `resorce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hall_admins`
--
ALTER TABLE `hall_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `resorce`
--
ALTER TABLE `resorce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
ADD CONSTRAINT `fk_booking_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hall_admins`
--
ALTER TABLE `hall_admins`
ADD CONSTRAINT `fk_halladmin_resorce` FOREIGN KEY (`resource_id`) REFERENCES `resorce` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_halladmin_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
