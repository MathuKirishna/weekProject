-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 10:04 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cutecut`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_city`
--

CREATE TABLE `tb_city` (
  `city_id` varchar(10) NOT NULL,
  `city_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_city`
--

INSERT INTO `tb_city` (`city_id`, `city_name`) VALUES
('c_001', 'California'),
('c_002', 'New York'),
('c_003', 'Los Angeles'),
('c_004', 'Houston'),
('c_005', 'Chicago'),
('c_006', 'San Francisco'),
('c_007', 'Columbus'),
('c_008', 'Washington'),
('c_009', 'Portland'),
('c_010', 'Las Vegas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contactdetails`
--

CREATE TABLE `tb_contactdetails` (
  `user_id` varchar(10) NOT NULL,
  `contact_numeber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jobtitle`
--

CREATE TABLE `tb_jobtitle` (
  `title_id` varchar(10) NOT NULL,
  `title` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jobtitle`
--

INSERT INTO `tb_jobtitle` (`title_id`, `title`) VALUES
('title001', 'Shampoo & Conditioning'),
('title002', 'Spa Rituals and Treatment'),
('title003', 'Hairstyling & Updos'),
('title004', 'Cut – Classic & Advanced '),
('title005', 'Straightening'),
('title006', 'Colour Techniques - Root '),
('title007', 'Keratin treatment'),
('title008', 'Perming');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` varchar(10) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `display_name` varchar(25) DEFAULT NULL,
  `email` varchar(35) NOT NULL,
  `experience` int(20) DEFAULT NULL,
  `educationalQualification` varchar(20) DEFAULT NULL,
  `rate` varchar(30) DEFAULT NULL,
  `rating` int(15) DEFAULT NULL,
  `city` varchar(35) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `jobtitle` varchar(25) NOT NULL,
  `description` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `first_name`, `last_name`, `display_name`, `email`, `experience`, `educationalQualification`, `rate`, `rating`, `city`, `address`, `profile_picture`, `jobtitle`, `description`, `skill`) VALUES
('user001', 'Mathangi', 'Krishnathasan', 'MMT', 'krishnathasanmathu18@gmail.com', 4, 'Certificate', '1500', 4, 'California', 'New York', 'src/profilepicture/m.jpg', 'Perming', 'Mathangi\'s Description', 'Mathangi\'s Skill'),
('user002', 'Thumilan', 'Mihunthan', 'TMM', 'thumimihu18@gmail.com', 5, 'Diploma', '8500', 5, 'California', 'California', '', 'Keratin treatment', 'Thumilan\'s Description', 'Thumilan\'s Skill'),
('user003', 'Mayooran', 'Krishnathasan', 'Mayoo', 'mayoo01@gmail.com', 3, 'Bachelor', '500', 3, 'Houston', 'Houston', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_usergallery`
--

CREATE TABLE `tb_usergallery` (
  `user_id` varchar(10) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_city`
--
ALTER TABLE `tb_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tb_contactdetails`
--
ALTER TABLE `tb_contactdetails`
  ADD PRIMARY KEY (`user_id`,`contact_numeber`);

--
-- Indexes for table `tb_jobtitle`
--
ALTER TABLE `tb_jobtitle`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_usergallery`
--
ALTER TABLE `tb_usergallery`
  ADD PRIMARY KEY (`user_id`,`picture`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
