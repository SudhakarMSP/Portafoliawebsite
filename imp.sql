-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 07:10 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--
CREATE DATABASE IF NOT EXISTS `bbdms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bbdms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', '9999857868', 'anuj@gmail.com', 'Male', 27, 'O+', ' bdhdh dhf hd h', ' d hd hd fh d', '2017-06-30 20:14:16', 1),
(2, 'dasdasd', '41241241241', 'dasdasd@dfdsf.com', 'Male', 34, 'AB-', ' fsdfds', ' fsdf', '2017-06-30 20:48:11', 1),
(3, 'Ami', '42352352352', '', 'Male', 23, 'A+', NULL, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', '2017-07-01 07:21:21', 1),
(4, 'fdsfsgg', '35345435345', '', 'Female', 26, 'AB-', NULL, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', '2017-07-01 07:21:42', 1),
(5, 'Nitesh Kumart', '8569855244', 'niiii@test.com', 'Male', 32, 'A-', 'Test Demo', 'Test demo Test demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demo', '2017-07-01 09:00:18', 1),
(6, 'sudhakar', '9019736821', 'suni@gmail.com', 'Male', 20, 'A+', 'jayanagara', ' donar', '2022-12-06 09:19:40', 1),
(7, 'nisu', '987654321', 'nisu@123', 'Female', 20, 'A+', 'jayanagar', ' yyyyyyyy', '2023-03-06 13:12:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(2, 'AB-', '2017-06-30 20:34:00'),
(3, 'O-', '2017-06-30 20:34:05'),
(4, 'A-', '2017-06-30 20:34:10'),
(5, 'A+', '2017-06-30 20:34:13'),
(6, 'AB+', '2017-06-30 20:34:18'),
(7, '0+', '2023-03-06 13:14:01'),
(8, '0+', '2023-03-06 13:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '56789345433');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 21:17:09', NULL),
(3, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 21:21:30', NULL),
(4, 'te', 'sdfsdf@gmail.com', '75787875545', 'sfsdf sdg hs h sh', '2017-07-01 07:19:36', NULL),
(5, 'sudhakar', 'suni@gmail.com', '9019736821', 'nan blood vapas kodoooooo', '2022-12-06 09:23:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>										\r\n										');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Database: `bbdms1`
--
CREATE DATABASE IF NOT EXISTS `bbdms1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bbdms1`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', '9999857868', 'anuj@gmail.com', 'Male', 27, 'O+', ' bdhdh dhf hd h', ' d hd hd fh d', '2017-06-30 20:14:16', 1),
(2, 'dasdasd', '41241241241', 'dasdasd@dfdsf.com', 'Male', 34, 'AB-', ' fsdfds', ' fsdf', '2017-06-30 20:48:11', 1),
(3, 'Ami', '42352352352', '', 'Male', 23, 'A+', NULL, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', '2017-07-01 07:21:21', 1),
(4, 'fdsfsgg', '35345435345', '', 'Female', 26, 'AB-', NULL, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', '2017-07-01 07:21:42', 1),
(5, 'Nitesh Kumart', '8569855244', 'niiii@test.com', 'Male', 32, 'A-', 'Test Demo', 'Test demo Test demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demo', '2017-07-01 09:00:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2017-06-30 20:33:50'),
(2, 'AB-', '2017-06-30 20:34:00'),
(3, 'O-', '2017-06-30 20:34:05'),
(4, 'A-', '2017-06-30 20:34:10'),
(5, 'A+', '2017-06-30 20:34:13'),
(6, 'AB+', '2017-06-30 20:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 21:17:09', NULL),
(3, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 21:21:30', NULL),
(4, 'te', 'sdfsdf@gmail.com', '75787875545', 'sfsdf sdg hs h sh', '2017-07-01 07:19:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Database: `carrental`
--
CREATE DATABASE IF NOT EXISTS `carrental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `carrental`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 14:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 17:49:21', '2020-07-11 12:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Volkswagon', '2017-06-19 06:22:13', '2020-07-07 14:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'J&K Block, Laxmi Nagar', 'info@gmail.com', '8974561236');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2020-07-07 09:34:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">We offer a varied fleet of cars, ranging from the compact. All our vehicles have air conditioning, &nbsp;power steering, electric windows. All our vehicles are bought and maintained at official dealerships only. Automatic transmission cars are available in every booking class.&nbsp;</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">As we are not affiliated with any specific automaker, we are able to provide a variety of vehicle makes and models for customers to rent.</span><div><span style=\"color: rgb(62, 62, 62); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 11px;\">ur mission is to be recognised as the global leader in Car Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Cab Rental solutions and to achieve service excellence.</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"><br></span></div>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'harish@gmail.com', '2020-07-07 09:26:21'),
(5, 'kunal@gmail.com', '2020-07-07 09:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'I am satisfied with their service great job', '2020-07-07 14:30:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Test', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '6465465465', '', 'L-890, Gaur City Ghaziabad', 'Ghaziabad', 'India', '2020-07-07 14:00:49', '2020-07-12 05:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 500, 'Petrol', 2019, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:04:35', '2020-07-07 07:27:08'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 1000, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 07:12:02', '2020-07-07 07:27:44'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:19:21', '2020-07-07 07:28:02'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 800, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2020-07-07 07:25:28', NULL),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 2000, 'Petrol', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:34:17', NULL),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 400, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:12:49', NULL),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2020-07-07 09:17:46', NULL),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 600, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2020-07-07 09:23:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `db_issm`
--
CREATE DATABASE IF NOT EXISTS `db_issm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_issm`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `start` varchar(10) NOT NULL,
  `end` varchar(10) NOT NULL,
  `month` varchar(8) NOT NULL,
  `year` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `title`, `description`, `start`, `end`, `month`, `year`) VALUES
(1, 'managere', 'must a background on how to use pos like pastel', '', '', 'Jan', '1970');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table ` aplicants`
--

CREATE TABLE ` aplicants` (
  `id` int(8) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` varchar(25) NOT NULL,
  `address` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `cv` varchar(55) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fill_details`
--

CREATE TABLE `fill_details` (
  `id` int(8) NOT NULL,
  `company_name` varchar(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `id` int(8) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(55) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`id`, `user_name`, `first_name`, `last_name`, `password`, `email`, `gender`) VALUES
(1, 'chat', 'linda', 'linda', '123', 'aa@gmail.com', 'female'),
(2, 'lolo', 'leo', 'quism', '1234', 'aa@gmail.com', 'male'),
(3, 'sudha', 'sudha', 'kar', '123456789', 'suni@gmail.com', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `middlename` varchar(40) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `year` varchar(2) NOT NULL,
  `section` varchar(1) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `firstname`, `middlename`, `lastname`, `year`, `section`, `photo`) VALUES
(3, 21201455, 'Daw', 'asd', 'asd', 'II', 'A', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `fill_details`
--
ALTER TABLE `fill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered_users`
--
ALTER TABLE `registered_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fill_details`
--
ALTER TABLE `fill_details`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registered_users`
--
ALTER TABLE `registered_users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `hms`
--
CREATE DATABASE IF NOT EXISTS `hms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2019-06-30 12:11:05'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '0000-00-00 00:00:00'),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '0000-00-00 00:00:00'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '0000-00-00 00:00:00'),
(7, 'Demo test', 'abc ', 'New Delhi India', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', '2019-06-23 18:17:25'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2019-06-23 18:06:06'),
(9, 'Dermatologist', 'Anuj kumar', 'New Delhi India 110001', '500', 1234567890, 'anujk@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:37:47', '2019-11-10 18:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2019-11-06 06:48:05'),
(2, 5, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-05 10:40:13', '2019-11-05 11:53:45'),
(3, 7, 'Mansi', 9878978798, 'jk@gmail.com', 'Female', '\"fdghyj', 46, 'No', '2019-11-05 10:49:41', '2019-11-05 11:58:59'),
(4, 7, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2019-11-06 14:34:31'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', '0000-00-00 00:00:00'),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '0000-00-00 00:00:00'),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '0000-00-00 00:00:00'),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '0000-00-00 00:00:00'),
(6, 'Test user', 'New Delhi', 'Delhi', 'male', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-06-23 18:24:53', '2019-06-23 18:36:09'),
(7, 'John', 'USA', 'Newyork', 'male', 'john@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:40:21', '2019-11-10 18:40:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `imp`
--
CREATE DATABASE IF NOT EXISTS `imp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `imp`;

-- --------------------------------------------------------

--
-- Table structure for table `addcompany`
--

CREATE TABLE `addcompany` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `discription` varchar(1000) NOT NULL,
  `stipends` int(50) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` int(10) NOT NULL,
  `gen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `title`, `cname`, `fname`, `lname`, `email`, `phone_no`, `gen`) VALUES
(60, 'Digital Marketing', 'IBM', ' shree harsha', 'kaate', 'harsha@gmail.com', 986543, 'Male'),
(61, 'Web Designing', 'capgemini', ' pooja', 'k', 'pooja@gmail.com', 984573668, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `confirmedapplications`
--

CREATE TABLE `confirmedapplications` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `cname` varchar(250) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone_no` int(50) NOT NULL,
  `gen` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confirmedapplications`
--

INSERT INTO `confirmedapplications` (`id`, `title`, `cname`, `fname`, `lname`, `email`, `phone_no`, `gen`) VALUES
(1, 'Digital Marketing', 'IBM', ' shreya', 'M k', 'shreya@gmail.com', 2147483647, 0),
(2, 'Cloud Computing', 'infosys', ' nisarga', 'p s', 'nisu@gmail.com', 2147483647, 0);

-- --------------------------------------------------------

--
-- Table structure for table `confirmedcompanies`
--

CREATE TABLE `confirmedcompanies` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `discription` varchar(3000) NOT NULL,
  `stipends` int(30) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confirmedcompanies`
--

INSERT INTO `confirmedcompanies` (`id`, `title`, `cname`, `discription`, `stipends`, `sdate`, `edate`) VALUES
(7, 'Cloud Computing', ' wipro', 'we need intern', 11000, '2023-03-02', '2023-06-01'),
(8, 'Cloud Computing', ' wipro', 'learn and  earn', 20000, '2023-05-29', '2023-10-01'),
(9, 'Cloud Computing', ' infosys', 'learn with experience', 20000, '2023-05-31', '2023-07-21'),
(10, 'Digital Marketing', ' IBM', 'take good experience', 18000, '2023-05-03', '2023-08-04'),
(11, 'Web Development', ' Capgmeini', 'learn and earn', 18000, '2023-04-04', '2023-09-05'),
(12, 'Data Science', ' IBM', 'learn with experience', 19000, '2023-06-14', '2023-12-15'),
(13, 'Graphic design', ' cognizant', 'youth encouragement', 19000, '2023-06-01', '2023-09-07'),
(14, 'Web Development', ' IBM', 'learn more', 18000, '2023-05-31', '2023-08-17'),
(15, 'Digital Marketing', ' abcd', 'abcd', 18000, '2023-06-09', '2023-07-07'),
(16, 'Digital Marketing', ' abcd', 'vbnm', 7890, '2023-06-12', '2023-09-08'),
(17, 'Digital Marketing', ' xyz', 'xyz', 45900, '2023-06-06', '2023-08-17'),
(18, 'Digital Marketing', ' xyz', 'xyz', 45900, '2023-06-06', '2023-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `managepage`
--

CREATE TABLE `managepage` (
  `id` int(11) NOT NULL,
  `editor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `managepage`
--

INSERT INTO `managepage` (`id`, `editor`) VALUES
(1, '<blockquote>\r\n<hr />\r\n<hr />\r\n<p>&nbsp;<strong>INTERSHIP MANAGEMENT PORTAL</strong>(<strong>IMP</strong>) is a</p>\r\n\r\n<p>comprehensive tool for coordinating an internship class<br />\r\nwith the goal of facilitating continuous communication<br />\r\nbetween the instructor and the student. By using WICS,<br />\r\nstudents save a lot of time as they can communicate<br />\r\nelectronically with the instructor. A student wishing to&nbsp;<br />\r\ntake an internship class can access the system for getting<br />\r\ninformation on companies having internship programs.<br />\r\n&nbsp;The purpose of this project is to design, build and<br />\r\nimplement an internship coordinating system with anytime<br />\r\nand anywhere access availability. All user and company<br />\r\ninformation will be stored in a Mysql database and<br />\r\nretrieved by PHP</p>\r\n</blockquote>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `cname` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `cname`, `password`) VALUES
(17, 'wipro', '25f9e794323b453885f5181f1b624d0b'),
(18, 'infosys', '827ccb0eea8a706c4c34a16891f84e7b'),
(20, 'IBM', 'e757fd4fedc4fe825bb81b1b466a0947');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcompany`
--
ALTER TABLE `addcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmedapplications`
--
ALTER TABLE `confirmedapplications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmedcompanies`
--
ALTER TABLE `confirmedcompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managepage`
--
ALTER TABLE `managepage`
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
-- AUTO_INCREMENT for table `addcompany`
--
ALTER TABLE `addcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `confirmedapplications`
--
ALTER TABLE `confirmedapplications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `confirmedcompanies`
--
ALTER TABLE `confirmedcompanies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `managepage`
--
ALTER TABLE `managepage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Database: `imp2`
--
CREATE DATABASE IF NOT EXISTS `imp2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `imp2`;

-- --------------------------------------------------------

--
-- Table structure for table `abc`
--

CREATE TABLE `abc` (
  `uname` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abc`
--

INSERT INTO `abc` (`uname`, `pass`) VALUES
('abcd', '5678');
--
-- Database: `intern`
--
CREATE DATABASE IF NOT EXISTS `intern` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `intern`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `start` varchar(10) NOT NULL,
  `end` varchar(10) NOT NULL,
  `month` varchar(8) NOT NULL,
  `year` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `title`, `description`, `start`, `end`, `month`, `year`) VALUES
(1, 'accountant', 'must a background on how to use pos like pastel', '040917', '191117', 'Oct', '2017'),
(2, 'developer ', 'candidate must have background of front end and know at least one framework per language ', '011217', '012318', 'Oct', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table ` aplicants`
--

CREATE TABLE ` aplicants` (
  `id` int(8) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` varchar(25) NOT NULL,
  `address` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `cv` varchar(55) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fill_details`
--

CREATE TABLE `fill_details` (
  `id` int(8) NOT NULL,
  `company_name` varchar(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `id` int(8) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(55) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`id`, `user_name`, `first_name`, `last_name`, `password`, `email`, `gender`) VALUES
(1, 'chat', 'linda', 'linda', '123', 'aa@gmail.com', 'female'),
(2, 'lolo', 'leo', 'quism', '1234', 'aa@gmail.com', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `middlename` varchar(40) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `year` varchar(2) NOT NULL,
  `section` varchar(1) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `firstname`, `middlename`, `lastname`, `year`, `section`, `photo`) VALUES
(3, 21201455, 'Daw', 'asd', 'asd', 'II', 'A', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `fill_details`
--
ALTER TABLE `fill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered_users`
--
ALTER TABLE `registered_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fill_details`
--
ALTER TABLE `fill_details`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registered_users`
--
ALTER TABLE `registered_users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `internshala`
--
CREATE DATABASE IF NOT EXISTS `internshala` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `internshala`;

-- --------------------------------------------------------

--
-- Table structure for table `internships`
--

CREATE TABLE `internships` (
  `id` int(50) NOT NULL,
  `employer` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `stipend` int(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `internships`
--

INSERT INTO `internships` (`id`, `employer`, `title`, `description`, `stipend`, `start_date`, `end_date`) VALUES
(15, 'dell', 'Technicion', 'Repairs mostly', 1000, '2017-05-06', '2017-06-06'),
(16, 'maq', 'Systems Engineer', 'something something you know', 6000, '2017-05-06', '2017-06-06'),
(17, 'amazon', 'Java Developer', 'Make Java applications', 40000, '2017-05-06', '2017-06-07'),
(18, 'amazon', 'Front-end Developer', 'Build the core functionality of the website', 0, '2017-03-06', '2017-03-20'),
(24, 'amazon', 'Back End Developer', 'Does the server things', 15000, '2017-05-15', '2017-06-10'),
(25, 'nisarga', 'developer', 'good job', 0, '2023-03-13', '2023-03-31'),
(26, 'sudha', 'developer', 'ccgfd', 234, '2023-04-17', '2023-04-26'),
(27, 'sneha', 'developer', 'good job', 234, '2023-04-12', '2023-04-11'),
(28, 'sanam', 'developer', 'good job', 234, '2023-03-13', '2023-04-26'),
(29, 'madhu', 'developer', 'good job', 234, '2023-05-30', '2023-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `username`, `email`, `password`, `type`) VALUES
(1, 'Hewlett Packard', 'HP', 'careers@hp.com', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(2, 'John Doe', 'John', 'johndoe@sql.com', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(3, 'Amazon Web Services', 'amazon', 'careers@aws.com', '2d0d4809e6bdb6f4db3e547f27b1873c', 1),
(5, 'Satyam', 'stym06', 'satyammast@gmail.com', '0f2cdafc6b1adf94892b17f355bd9110', 0),
(6, 'Maq', 'maq', 'careers@maq.com', 'b71a16a73d79968d2c5c2375995709bb', 1),
(7, 'Dell', 'dell', 'careers@dell.com', '51a32d722dd3b81772a68c7449d5e62d', 1),
(8, 'Microsoft', 'ms', 'careers@ms.com', '5f532a3fc4f1ea403f37070f59a7a53a', 1),
(9, 'Kraken', 'rage_warrior', 'kraken@underworld.com', '80cd46c824f8e86438816e6e562e969f', 0),
(10, 'Ashish', 'ashish', 'ashish@gmail.com', '7b69ad8a8999d4ca7c42b8a729fb0ffd', 0),
(11, 'Abhinav', 'krotos', 'abhinav@krotos.com', '8417bf3b2e5c0462e25b3d899804a800', 0),
(12, 'sudhakar', 'sudhakar', 'suni@gmail.com', '25030131a56750e16b4139d676252553', 0),
(13, 'nisu', 'nisarga', 'nisu@gmail.com', 'b80f47366abbe49bafadef434f748096', 1),
(14, 'sudhakar', 'sudha', 'sunigh@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1),
(15, 'harsha rao', 'harsha', 'harsha@gmail.com', '6ebe76c9fb411be97b3b0d48b791a7c9', 0),
(16, 'neha', 'neha', 'neha@gmail.com', '1535232348ce73fd9cc8591afdd531b5', 0),
(17, 'sneha', 'sneha', 'sneha@gmail.com', 'b3275960d68fda9d831facc0426c3bbc', 1),
(18, 'sanam', 'sanam', 'sanam@gmail.com', '9215658dc8d88798b7c7d1f0f8df4d64', 1),
(19, 'internshala sudhakar', 'sanam', 'suni@gmail.com', '9215658dc8d88798b7c7d1f0f8df4d64', 0),
(20, 'internshala sudhakar', 'sanam', 'suni@gmail.com', '9215658dc8d88798b7c7d1f0f8df4d64', 1),
(21, 'pjj', 'knkj', 'knkj1@gmail.com', '9215658dc8d88798b7c7d1f0f8df4d64', 0),
(22, 'pjj', 'kbj', 'knkj1@gmail.com', '9215658dc8d88798b7c7d1f0f8df4d64', 0),
(23, 'pjj', 'kbj', 'knkj1@gmail.com', 'b46664b842fb3c84da0674949f35e9ae', 0),
(24, 'harsha', 'harsha', 'suni@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0),
(25, 'madhu', 'madhu', 'suni@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 0),
(26, 'madhu', 'madhu', 'suni@gmail.com', '6ebe76c9fb411be97b3b0d48b791a7c9', 1),
(27, 'adhithi', 'adhu', 'adhithi@gmail.com', '720aeb5b5465c06d4645c0da27df1417', 1),
(28, 'adhithi', 'adhu', 'adhithi@gmail.com', '720aeb5b5465c06d4645c0da27df1417', 0),
(29, 'adhithi', 'adhu', 'adhithi@gmail.com', '720aeb5b5465c06d4645c0da27df1417', 1),
(30, 'sudhakar s', 's', 'suni@gmail.com', '720aeb5b5465c06d4645c0da27df1417', 0),
(31, 'sudhakar s', 's', 'suni@gmail.com', '03c7c0ace395d80182db07ae2c30f034', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_applications`
--

CREATE TABLE `student_applications` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `employer` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_applications`
--

INSERT INTO `student_applications` (`id`, `name`, `email`, `employer`, `job_title`) VALUES
(1, 'John', 'john@mic.com', 'HP', 'HP Officer'),
(6, 'John', 'john@applu.cmo', 'amazon', 'C++ developer'),
(7, 'Satyam Raj', 'satyammast@gmail.com', 'dell', 'Technicion'),
(8, 'John', 'john@applu.cmo', 'maq', 'Systems Engineer'),
(12, 'satyam', 'satyammast@gmail.com', 'HP', 'HP Officer'),
(13, 'John', 'john@mic.com', 'dell', 'Technicion'),
(14, 'Kraken', 'kraken@underworld.com', 'HP', 'HP Officer'),
(15, 'Abhinav', 'abhinav@krotos.com', 'maq', 'Systems Engineer'),
(16, 'sudhakar', 'suni@gmail.com', 'nisarga', 'developer'),
(17, 'harsha', 'harsha@gmail.com', 'sudha', 'developer'),
(18, 'neha', 'neha@gmail.com', 'sudha', 'developer'),
(19, 'pjj', 'knkj1@gmail.com', 'knj', 'developer'),
(20, 'sudha', 'sudha@gmail.com', 'madhu', 'developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `internships`
--
ALTER TABLE `internships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_applications`
--
ALTER TABLE `student_applications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `internships`
--
ALTER TABLE `internships`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `student_applications`
--
ALTER TABLE `student_applications`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `internship`
--
CREATE DATABASE IF NOT EXISTS `internship` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `internship`;

-- --------------------------------------------------------

--
-- Table structure for table `abhishekseller`
--

CREATE TABLE `abhishekseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abhishekseller`
--

INSERT INTO `abhishekseller` (`buyers`, `dates`, `title`) VALUES
('organizein', '17-01-2022', 'backend developer inphp');

-- --------------------------------------------------------

--
-- Table structure for table `aditya`
--

CREATE TABLE `aditya` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adityabuyer`
--

CREATE TABLE `adityabuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adityabuyer`
--

INSERT INTO `adityabuyer` (`id`, `buyers`, `dates`, `category`, `locations`, `morerequirement`, `budget`, `messages`, `title`, `statuses`) VALUES
(1, 'nikhil', '17-01-2022', 'Android Development', ' Pune', '                        i am interested in this internship .', '10000000', 'ok i am ready for work', 'android developer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adityabuyerconnect`
--

CREATE TABLE `adityabuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adityabuyerconnect`
--

INSERT INTO `adityabuyerconnect` (`seller`, `dates`, `statuses`, `email`, `phoneno`, `title`) VALUES
('nikhil', '17-01-2022', 1, 'nikhil20@gmail.com', 2147483647, 'android developer');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('aditya', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `adminbuyer`
--

CREATE TABLE `adminbuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminbuyerconnect`
--

CREATE TABLE `adminbuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `anandbuyer`
--

CREATE TABLE `anandbuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anandbuyer`
--

INSERT INTO `anandbuyer` (`id`, `buyers`, `dates`, `category`, `locations`, `morerequirement`, `budget`, `messages`, `title`, `statuses`) VALUES
(1, 'radhika', '17-01-2022', 'Web development', ' Pune', '                        i am interested in your internship please gve me flexible work time and days.', '5000 /-', 'please give me oppertunity i will give my best.', 'PHP developer.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anandbuyerconnect`
--

CREATE TABLE `anandbuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anandbuyerconnect`
--

INSERT INTO `anandbuyerconnect` (`seller`, `dates`, `statuses`, `email`, `phoneno`, `title`) VALUES
('radhika', '17-01-2022', 1, 'radhikasabde20@gmail.com', 2147483647, 'PHP developer.');

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `requirement` varchar(255) NOT NULL,
  `industryrequirement` varchar(255) NOT NULL,
  `connectprofessional` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `buyername` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `title`, `requirement`, `industryrequirement`, `connectprofessional`, `location`, `date`, `buyername`, `status`) VALUES
(1, 'oracle developer', 'if u knows about sql , mysql then welcome.', 'web development', 'knows mysql , sql ', 'pune', '16-01-2022', 'shriram', 1),
(2, 'node js developer', 'interested in node js .', 'web development', 'knows node js', 'banglore', '16-01-2022', 'shriram', 1),
(3, 'android developer', 'interested in android then join with us.', 'android developer', 'knows about android studio , kotlin , java', 'pune', '17-01-2022', 'aditya', 1),
(4, 'PHP developer.', 'welcome to our industry in this we hire student for php developer internship in that we provide paid internship .', 'web development(backend development)', 'students knows about php , html , css', 'pune', '17-01-2022', 'anand', 1),
(5, 'backend developer inphp', 'we are introducing our internship program for php developer if you arre interested then join us.', 'web development', 'if you knows about php , html , css , javascript then you can  join with us.', 'pune', '17-01-2022', 'organizein', 0),
(6, 'developer', '   siyterjhdgf', 'sewe', 'swew', 'davangere', '03-04-2023', 'harsha', 1),
(7, 'designer', '         fzsDSd', 'SFSF', 'gsdg', 'davangere', '04-04-2023', 'harsha', 1),
(8, 'data science', '    gygj gafsgts gsfrs tdvx', 'SFSF', 'swew', 'davangere', '06-04-2023', 'harsha', 1);

-- --------------------------------------------------------

--
-- Table structure for table `harshabuyer`
--

CREATE TABLE `harshabuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harshabuyer`
--

INSERT INTO `harshabuyer` (`id`, `buyers`, `dates`, `category`, `locations`, `morerequirement`, `budget`, `messages`, `title`, `statuses`) VALUES
(1, 'madhu', '04-04-2023', 'PHP developer', ' Banglore', '                          ytrtgh              ', '6543', 'hgf', 'designer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `harshabuyerconnect`
--

CREATE TABLE `harshabuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harshabuyerconnect`
--

INSERT INTO `harshabuyerconnect` (`seller`, `dates`, `statuses`, `email`, `phoneno`, `title`) VALUES
('madhu', '04-04-2023', 1, 'madhu@gmail.com', 2147483647, 'designer');

-- --------------------------------------------------------

--
-- Table structure for table `kalyaniseller`
--

CREATE TABLE `kalyaniseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kalyaniseller`
--

INSERT INTO `kalyaniseller` (`buyers`, `dates`, `title`) VALUES
('shriram', '16-01-2022', 'node js developer');

-- --------------------------------------------------------

--
-- Table structure for table `ketakiseller`
--

CREATE TABLE `ketakiseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ketakiseller`
--

INSERT INTO `ketakiseller` (`buyers`, `dates`, `title`) VALUES
('shriram', '17-01-2022', 'oracle developer'),
('shriram', '17-01-2022', 'node js developer');

-- --------------------------------------------------------

--
-- Table structure for table `madhuseller`
--

CREATE TABLE `madhuseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `madhuseller`
--

INSERT INTO `madhuseller` (`buyers`, `dates`, `title`) VALUES
('harsha', '04-04-2023', 'designer');

-- --------------------------------------------------------

--
-- Table structure for table `maharajseller`
--

CREATE TABLE `maharajseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maharajseller`
--

INSERT INTO `maharajseller` (`buyers`, `dates`, `title`) VALUES
('ketaki', '16-01-2022', 'php developer');

-- --------------------------------------------------------

--
-- Table structure for table `nikhilseller`
--

CREATE TABLE `nikhilseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nikhilseller`
--

INSERT INTO `nikhilseller` (`buyers`, `dates`, `title`) VALUES
('aditya', '17-01-2022', 'android developer');

-- --------------------------------------------------------

--
-- Table structure for table `organizeinbuyer`
--

CREATE TABLE `organizeinbuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organizeinbuyer`
--

INSERT INTO `organizeinbuyer` (`id`, `buyers`, `dates`, `category`, `locations`, `morerequirement`, `budget`, `messages`, `title`, `statuses`) VALUES
(1, 'abhishek', '17-01-2022', 'Web development', ' Pune', '                        please give me flexible work day which 5 day in week and flexible work hours. thank you.', '6000 ', 'i am interested in your internshipt please give me this oppertunity.', 'backend developer inphp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organizeinbuyerconnect`
--

CREATE TABLE `organizeinbuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organizeinbuyerconnect`
--

INSERT INTO `organizeinbuyerconnect` (`seller`, `dates`, `statuses`, `email`, `phoneno`, `title`) VALUES
('abhishek', '17-01-2022', 1, 'abhishek20@gmail.com', 2147483647, 'backend developer inphp');

-- --------------------------------------------------------

--
-- Table structure for table `radhikaseller`
--

CREATE TABLE `radhikaseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `radhikaseller`
--

INSERT INTO `radhikaseller` (`buyers`, `dates`, `title`) VALUES
('anand', '17-01-2022', 'PHP developer.');

-- --------------------------------------------------------

--
-- Table structure for table `sellersignup`
--

CREATE TABLE `sellersignup` (
  `id` int(10) NOT NULL,
  `username` varchar(22) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `service` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellersignup`
--

INSERT INTO `sellersignup` (`id`, `username`, `email`, `phoneno`, `password`, `cpassword`, `service`, `location`) VALUES
(1, 'kalyani', 'kalyani20@gmail.com', 1234567890, '$2y$10$NoDqj2FJzscIjAgS0.uaYu.s/9iQDK5bTxQemeWf4l0yjpV9Ctl/2', 'a', 'softwear', ' pune'),
(2, 'maharaj', 'Adityasabde2002@gmail.com', 1234567891, '$2y$10$5VO6RSlpOGUDMbBQZ50F5.5JUPZjs3L9AF7ZlZHRTvrGX9by82aVy', 'a', 'softwear', ' pune'),
(5, 'ketaki', 'aditya.sabde20@vit.edu', 2147483647, '$2y$10$aCeCjCk0GzRDf4Eh0EG5yeaad/60xgBEtcm.3VZDfXvVNC78Ph/HW', 'a', 'softwear', ' pune'),
(6, 'nikhil', 'nikhil20@gmail.com', 2147483647, '$2y$10$yhc4qKKISOdPS.n05GDewe3Qn6e.bsAtvpSW1AKLGYpSwS3pJI0oW', 'a', 'software', ' pune'),
(7, 'radhika', 'radhikasabde20@gmail.com', 2147483647, '$2y$10$HHFMsiGVTzhrHYcnt87yTuAPkqzExI1lguQO0JFf8nFU63k5UKnbK', 'a', 'web based application', ' pune'),
(8, 'abhishek', 'abhishek20@gmail.com', 2147483647, '$2y$10$4IihQxQGF8Tj3P9cWSn8f.832d27Fo0gYh4jEt/ETZ1RvsswSauH6', 'a', 'software', ' pune'),
(9, 'madhu', 'madhu@gmail.com', 2147483647, '$2y$10$ms.hD2VigVe6mOjZkBHprOYBmPwhLStxM.OY1XVMB7nKpW3Y.jMJq', '987654321', 'hgdtr', ' davangere'),
(10, 'sudhakar', 'sunigh@gmail.com', 2147483647, '$2y$10$23YaaLPNOIJtAJCD2DBtMOhkI0/aGjcb07aA0uH9CB/ZLPR16PRGS', '123456789', 'hgdtr', ' jaynagar');

-- --------------------------------------------------------

--
-- Table structure for table `shrirambuyer`
--

CREATE TABLE `shrirambuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shrirambuyer`
--

INSERT INTO `shrirambuyer` (`id`, `buyers`, `dates`, `category`, `locations`, `morerequirement`, `budget`, `messages`, `title`) VALUES
(1, 'kalyani', '16-01-2022', 'Web development', ' Pune', '                        i am interested in your internship please give me an oppertunity.', '10000000', 'ok i am ready for work', 'node js developer'),
(5, 'ketaki', '17-01-2022', 'Web development', ' Pune', '                        asdfghjkla', '10000000', 'ok i am ready for work', 'oracle developer'),
(7, 'ketaki', '17-01-2022', 'Web development', ' Pune', '                        asd', '10000000', 'please', 'node js developer');

-- --------------------------------------------------------

--
-- Table structure for table `shrirambuyerconnect`
--

CREATE TABLE `shrirambuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shrirambuyerconnect`
--

INSERT INTO `shrirambuyerconnect` (`seller`, `dates`, `email`, `phoneno`, `title`) VALUES
('kalyani', '16-01-2022', 'kalyani20@gmail.com', 1234567890, 'node js developer'),
('ketaki', '17-01-2022', 'aditya.sabde20@vit.edu', 2147483647, 'oracle developer');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(12) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `phoneno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `email`, `password`, `cpassword`, `phoneno`) VALUES
(1, 'shriram', 'shriram20@gmail.com', '$2y$10$fSm5Eq3w9x8ATlFiJkwksOacyYslsxB0tpf8PcRIax2uomkSfF0t2', 'a', 2147483647),
(2, 'aditya', 'aditya.sabde20@vit.edu', '$2y$10$ezwg2494D9JJ37sgjE19eeDFqWh/VHkt.g2qk4k3zmKyqRao5yjN.', 'a', 808),
(3, 'anand', 'anand20@gmail.com', '$2y$10$oyucbeP7hgP5NaUfwUluru/qa7DbVbB34fgL9jD0HN2UgQepa1AFK', 'a', 2147483647),
(4, 'organizein', 'organizein20@gmail.com', '$2y$10$RPbH0riST.LJnSXyrWAPAuUlZMjnZZYcWJU15Yi3RoH.WIyOCFxmm', 'a', 2147483647),
(5, 'sudhakar', 'suni@gmail.com', '$2y$10$mItCQgX2dFZRKNeF8C3fkO.oK6dHrxKWvYZqtMuD1aS38iBLDG78m', 'suni@123456789', 2147483647),
(6, 'sudhakar', 'sunigh@gmail.com', '$2y$10$6MOQw8xxiRGhJMoc.qhC9.BEfI8cRbe.srXsDpkjt0I0WqFgFN38W', '123456789', 2147483647),
(7, 'harsha', 'harsha@gmail.com', '$2y$10$HV.hXC4ZtWT2WiuigqDwmOWKCZBsc.erT1PwqL6PEN.iwcfvygsoS', '123456789', 2147483647),
(8, 'admin', 'anuj@gmail.com', '$2y$10$R/P8oPqbARc4x3sd3ysxvurt7ZdJwjWUliwUMITEcayYADux8SGGS', '987654321', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `sudhakarbuyer`
--

CREATE TABLE `sudhakarbuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sudhakarbuyerconnect`
--

CREATE TABLE `sudhakarbuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sudhakarseller`
--

CREATE TABLE `sudhakarseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adityabuyer`
--
ALTER TABLE `adityabuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminbuyer`
--
ALTER TABLE `adminbuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anandbuyer`
--
ALTER TABLE `anandbuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harshabuyer`
--
ALTER TABLE `harshabuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizeinbuyer`
--
ALTER TABLE `organizeinbuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellersignup`
--
ALTER TABLE `sellersignup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shrirambuyer`
--
ALTER TABLE `shrirambuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sudhakarbuyer`
--
ALTER TABLE `sudhakarbuyer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adityabuyer`
--
ALTER TABLE `adityabuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminbuyer`
--
ALTER TABLE `adminbuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anandbuyer`
--
ALTER TABLE `anandbuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `harshabuyer`
--
ALTER TABLE `harshabuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `organizeinbuyer`
--
ALTER TABLE `organizeinbuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sellersignup`
--
ALTER TABLE `sellersignup`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shrirambuyer`
--
ALTER TABLE `shrirambuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sudhakarbuyer`
--
ALTER TABLE `sudhakarbuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `internship2`
--
CREATE DATABASE IF NOT EXISTS `internship2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `internship2`;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `int_id` int(11) NOT NULL,
  `applied` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `cus_id`, `int_id`, `applied`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 1, 1),
(4, 2, 2, 1),
(5, 3, 1, 1),
(6, 3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` int(100) NOT NULL,
  `phone` text NOT NULL,
  `country` varchar(100) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullname`, `email`, `password`, `address1`, `address2`, `city`, `state`, `zipcode`, `phone`, `country`, `ip`) VALUES
(1, 'Sumeet Sharma', 'sksksharma0@gmail.com', 'Shar8286', '302, B-7, Sector-9', 'Shanti Nagar, Mira Road East', 'Mumbai', 'Maharashtra', 401107, '8286864601', 'India', '::1'),
(2, 'Sumeet', 'sksharma.sharma87@gmail.com', 'Shar8286', '302, B-7, Sector-9', 'Shanti Nagar, Mira Road (E)', 'Mumbai', 'Maharashtra', 401107, '8850948655', 'India', '::1'),
(3, 'Nirbhay Verma', 'nirbhayvv@gmail.com', 'Nirbhay', '403, B-9, Sector-6', 'Shanti Nagar, Mira Road East', 'Mumbai', 'Maharashtra', 401107, '7208668292', 'India', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `nameOfCompany` text NOT NULL,
  `aboutCompany` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` int(100) NOT NULL,
  `phone` text NOT NULL,
  `country` varchar(100) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `nameOfCompany`, `aboutCompany`, `email`, `password`, `address1`, `address2`, `city`, `state`, `zipcode`, `phone`, `country`, `ip`, `date`) VALUES
(1, 'NETMATE SOLUTIONS', 'Digital Marketing Agency', 'sksharma.sharma87@gmail.com', 'Shar8286', '302, B-7, Sector-9', 'Shanti Nagar, Mira Road East', 'Mira Bhayandar', 'Maharashtra', 401107, '8286864601', 'India', '::1', '2019-09-04 17:03:24'),
(2, 'IIT Bombay', 'The Indian Institute of Technology, Bombay (IITB) is one of the fifteen higher institutes of technology in the country set up with the objective of making facilities available for higher education, research, and training in various fields of science and technology. With the same mission and vision, Prof. Ganesh Ramakrishnan is gearing to take rural India a leap ahead. For his outstanding contributions, he has also been awarded the IBM Faculty Award 2011.', 'itsumeet@gmail.com', 'Shar8850', '201, C-15, Sector-6', 'Shanti Nagar, Mira Road East', 'Mumbai', 'Maharashtra', 401107, '8850948655', 'India', '::1', '2019-09-04 18:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `internships`
--

CREATE TABLE `internships` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `category` text NOT NULL,
  `postedOn` text NOT NULL,
  `applyBy` text NOT NULL,
  `nameOfCompany` text NOT NULL,
  `aboutCompany` text NOT NULL,
  `aboutInternship` text NOT NULL,
  `location` text NOT NULL,
  `perks` text NOT NULL,
  `duration` int(100) NOT NULL,
  `stipend` int(100) NOT NULL,
  `positions` int(11) NOT NULL,
  `whoCanApply` text NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `internships`
--

INSERT INTO `internships` (`id`, `emp_id`, `category`, `postedOn`, `applyBy`, `nameOfCompany`, `aboutCompany`, `aboutInternship`, `location`, `perks`, `duration`, `stipend`, `positions`, `whoCanApply`, `featured`, `deleted`) VALUES
(1, 2, 'Web Development', '2019-09-04', '2019-09-20', 'IIT Bombay', 'The Indian Institute of Technology, Bombay (IITB) is one of the fifteen higher institutes of technology in the country set up with the objective of making facilities available for higher education, research, and training in various fields of science and technology. With the same mission and vision, Prof. Ganesh Ramakrishnan is gearing to take rural India a leap ahead. For his outstanding contributions, he has also been awarded the IBM Faculty Award 2011.', 'Selected intern\'s day-to-day responsibilities include: \r\n\r\n1. Collaborate with teams to implement new features, improvements, and fixes needed to handle our current and future scale\r\n2. Write reusable, testable, and efficient code\r\n3. Build, optimize and scale our Node.js platform and applications\r\n4. Design and implement low-latency, high-availability, and performant applications\r\n5. Implement secure applications and data protection\r\n6. Integrate RESTful APIs &amp;amp; internal web services ensuring high performance\r\n7. Collaborate across teams and contributing to open source\r\n8. Troubleshoot production issues and implement fixes for them\r\n9. Learn and teach peers new technologies', 'Mumbai', 'Certificate', 6, 5000, 5, 'Only those candidates can apply who:\r\n\r\n1. are available for full time (in-office) internship\r\n2. can start the internship between 23rd Aug&#039;19 and 22nd Sep&#039;19\r\n3. are available for duration of 6 months\r\n4. are from Mumbai and neighboring cities\r\n5. have relevant skills and interests', 0, 0),
(2, 1, 'Graphic Designing', '2019-09-05', '2019-09-20', 'NETMATE SOLUTIONS', 'Digital Marketing Agency', 'Selected intern\'s day-to-day responsibilities include:\r\n\r\n1. Brainstorming and ideating in making creative designs for various marketing campaigns\r\n2. Working on digital collaterals such as design banners for website, newsletters, and other social media channels\r\n3. Working on print collaterals such as posters, brochures, standees, event collaterals, leaflets, etc.', 'Mumbai', 'Certificate, Recommendation Letter', 3, 10000, 2, 'Only those candidates can apply who:\r\n\r\n1. are available for full time (in-office) internship\r\n2. can start the internship between 10th Aug&#039;19 and 9th Sep&#039;19\r\n3. are available for duration of 4 months\r\n4. have relevant skills and interests\r\n\r\n** Women willing to start/restart their career can also apply.', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `permission`, `join_date`, `last_login`) VALUES
(1, 'Sumeet Sharma', 'sksksharma0@gmail.com', 'password', 'admin,editor', '2018-10-06 01:00:34', '2018-10-03 09:12:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internships`
--
ALTER TABLE `internships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `internships`
--
ALTER TABLE `internships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `intern_sys`
--
CREATE DATABASE IF NOT EXISTS `intern_sys` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `intern_sys`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` varchar(25) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `pos` varchar(30) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `ename`, `cname`, `pos`, `city`, `pass`) VALUES
('s1', 'shakya', 'oracle', 'se', 'Kolkata', 'qwertyuiopedfvbnpojhgd3fc13dc12d8d7a58e7ae87295e93dbaddb5d36bghjklcvbnm'),
('s2', 'oo', 'oo', 'oo', 'Kolkata', 'qwertyuiopedfvbnpojhgf7c3bc1d808e04732adf679965ccc34ca7ae3441ghjklcvbnm'),
('s3', 'Bits', 'Oracle', 'Developer', 'Kolkata', 'qwertyuiopedfvbnpojhgf7c3bc1d808e04732adf679965ccc34ca7ae3441ghjklcvbnm'),
('s4', 'Bits', 'MS', 'Engg', 'Kolkata', 'qwertyuiopedfvbnpojhgf7c3bc1d808e04732adf679965ccc34ca7ae3441ghjklcvbnm');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jid` varchar(20) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `jdesc` varchar(5000) NOT NULL,
  `loc` varchar(50) NOT NULL,
  `jpost` varchar(20) NOT NULL,
  `sal` varchar(20) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `eid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jid`, `cname`, `jdesc`, `loc`, `jpost`, `sal`, `uname`, `eid`) VALUES
('j4', 'MS', 'Good', 'Kolkata', 'Engg', '900000', '0', 's4');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sname` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `sid` int(20) NOT NULL,
  `10th_marks` varchar(25) NOT NULL,
  `12th_marks` varchar(25) NOT NULL,
  `grad_marks` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `m_status` varchar(20) NOT NULL,
  `partner_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sname`, `mobile`, `sid`, `10th_marks`, `12th_marks`, `grad_marks`, `gender`, `m_status`, `partner_name`, `username`, `pass`) VALUES
('Shakya', '7003042295', 7, '60', '60', '60', 'male', 'Married', 'Srija', 'shakya007', 'qwertyuiopedfvbnpojhgf7c3bc1d808e04732adf679965ccc34ca7ae3441ghjklcvbnm'),
('ShakyaDas', '9007525203', 6, '60', '65', '72', 'male', 'Married', 'Srija', 'shakya', 'qwertyuiopedfvbnpojhgf7c3bc1d808e04732adf679965ccc34ca7ae3441ghjklcvbnm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `email` (`mobile`),
  ADD UNIQUE KEY `sid` (`sid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `intership`
--
CREATE DATABASE IF NOT EXISTS `intership` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `intership`;

-- --------------------------------------------------------

--
-- Table structure for table `abhishekseller`
--

CREATE TABLE `abhishekseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abhishekseller`
--

INSERT INTO `abhishekseller` (`buyers`, `dates`, `title`) VALUES
('organizein', '17-01-2022', 'backend developer inphp');

-- --------------------------------------------------------

--
-- Table structure for table `aditya`
--

CREATE TABLE `aditya` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adityabuyer`
--

CREATE TABLE `adityabuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adityabuyer`
--

INSERT INTO `adityabuyer` (`id`, `buyers`, `dates`, `category`, `locations`, `morerequirement`, `budget`, `messages`, `title`, `statuses`) VALUES
(1, 'nikhil', '17-01-2022', 'Android Development', ' Pune', '                        i am interested in this internship .', '10000000', 'ok i am ready for work', 'android developer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adityabuyerconnect`
--

CREATE TABLE `adityabuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adityabuyerconnect`
--

INSERT INTO `adityabuyerconnect` (`seller`, `dates`, `statuses`, `email`, `phoneno`, `title`) VALUES
('nikhil', '17-01-2022', 1, 'nikhil20@gmail.com', 2147483647, 'android developer');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('aditya', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `anandbuyer`
--

CREATE TABLE `anandbuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anandbuyer`
--

INSERT INTO `anandbuyer` (`id`, `buyers`, `dates`, `category`, `locations`, `morerequirement`, `budget`, `messages`, `title`, `statuses`) VALUES
(1, 'radhika', '17-01-2022', 'Web development', ' Pune', '                        i am interested in your internship please gve me flexible work time and days.', '5000 /-', 'please give me oppertunity i will give my best.', 'PHP developer.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anandbuyerconnect`
--

CREATE TABLE `anandbuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anandbuyerconnect`
--

INSERT INTO `anandbuyerconnect` (`seller`, `dates`, `statuses`, `email`, `phoneno`, `title`) VALUES
('radhika', '17-01-2022', 1, 'radhikasabde20@gmail.com', 2147483647, 'PHP developer.');

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `requirement` varchar(255) NOT NULL,
  `industryrequirement` varchar(255) NOT NULL,
  `connectprofessional` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `buyername` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `title`, `requirement`, `industryrequirement`, `connectprofessional`, `location`, `date`, `buyername`, `status`) VALUES
(1, 'oracle developer', 'if u knows about sql , mysql then welcome.', 'web development', 'knows mysql , sql ', 'pune', '16-01-2022', 'shriram', 1),
(2, 'node js developer', 'interested in node js .', 'web development', 'knows node js', 'banglore', '16-01-2022', 'shriram', 1),
(3, 'android developer', 'interested in android then join with us.', 'android developer', 'knows about android studio , kotlin , java', 'pune', '17-01-2022', 'aditya', 1),
(4, 'PHP developer.', 'welcome to our industry in this we hire student for php developer internship in that we provide paid internship .', 'web development(backend development)', 'students knows about php , html , css', 'pune', '17-01-2022', 'anand', 1),
(5, 'backend developer inphp', 'we are introducing our internship program for php developer if you arre interested then join us.', 'web development', 'if you knows about php , html , css , javascript then you can  join with us.', 'pune', '17-01-2022', 'organizein', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` varchar(25) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `pos` varchar(30) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `ename`, `cname`, `pos`, `city`, `pass`) VALUES
('s1', 'shakya', 'oracle', 'se', 'Kolkata', 'qwertyuiopedfvbnpojhgd3fc13dc12d8d7a58e7ae87295e93dbaddb5d36bghjklcvbnm'),
('s2', 'oo', 'oo', 'oo', 'Kolkata', 'qwertyuiopedfvbnpojhgf7c3bc1d808e04732adf679965ccc34ca7ae3441ghjklcvbnm'),
('s3', 'Bits', 'Oracle', 'Developer', 'Kolkata', 'qwertyuiopedfvbnpojhgf7c3bc1d808e04732adf679965ccc34ca7ae3441ghjklcvbnm'),
('s4', 'Bits', 'MS', 'Engg', 'Kolkata', 'qwertyuiopedfvbnpojhgf7c3bc1d808e04732adf679965ccc34ca7ae3441ghjklcvbnm');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jid` varchar(20) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `jdesc` varchar(5000) NOT NULL,
  `loc` varchar(50) NOT NULL,
  `jpost` varchar(20) NOT NULL,
  `sal` varchar(20) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `eid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jid`, `cname`, `jdesc`, `loc`, `jpost`, `sal`, `uname`, `eid`) VALUES
('j4', 'MS', 'Good', 'Kolkata', 'Engg', '900000', '0', 's4');

-- --------------------------------------------------------

--
-- Table structure for table `kalyaniseller`
--

CREATE TABLE `kalyaniseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kalyaniseller`
--

INSERT INTO `kalyaniseller` (`buyers`, `dates`, `title`) VALUES
('shriram', '16-01-2022', 'node js developer');

-- --------------------------------------------------------

--
-- Table structure for table `ketakiseller`
--

CREATE TABLE `ketakiseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ketakiseller`
--

INSERT INTO `ketakiseller` (`buyers`, `dates`, `title`) VALUES
('shriram', '17-01-2022', 'oracle developer'),
('shriram', '17-01-2022', 'node js developer');

-- --------------------------------------------------------

--
-- Table structure for table `maharajseller`
--

CREATE TABLE `maharajseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maharajseller`
--

INSERT INTO `maharajseller` (`buyers`, `dates`, `title`) VALUES
('ketaki', '16-01-2022', 'php developer');

-- --------------------------------------------------------

--
-- Table structure for table `nikhilseller`
--

CREATE TABLE `nikhilseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nikhilseller`
--

INSERT INTO `nikhilseller` (`buyers`, `dates`, `title`) VALUES
('aditya', '17-01-2022', 'android developer');

-- --------------------------------------------------------

--
-- Table structure for table `organizeinbuyer`
--

CREATE TABLE `organizeinbuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organizeinbuyer`
--

INSERT INTO `organizeinbuyer` (`id`, `buyers`, `dates`, `category`, `locations`, `morerequirement`, `budget`, `messages`, `title`, `statuses`) VALUES
(1, 'abhishek', '17-01-2022', 'Web development', ' Pune', '                        please give me flexible work day which 5 day in week and flexible work hours. thank you.', '6000 ', 'i am interested in your internshipt please give me this oppertunity.', 'backend developer inphp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organizeinbuyerconnect`
--

CREATE TABLE `organizeinbuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `statuses` int(2) DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organizeinbuyerconnect`
--

INSERT INTO `organizeinbuyerconnect` (`seller`, `dates`, `statuses`, `email`, `phoneno`, `title`) VALUES
('abhishek', '17-01-2022', 1, 'abhishek20@gmail.com', 2147483647, 'backend developer inphp');

-- --------------------------------------------------------

--
-- Table structure for table `radhikaseller`
--

CREATE TABLE `radhikaseller` (
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `radhikaseller`
--

INSERT INTO `radhikaseller` (`buyers`, `dates`, `title`) VALUES
('anand', '17-01-2022', 'PHP developer.');

-- --------------------------------------------------------

--
-- Table structure for table `sellersignup`
--

CREATE TABLE `sellersignup` (
  `id` int(10) NOT NULL,
  `username` varchar(22) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `service` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellersignup`
--

INSERT INTO `sellersignup` (`id`, `username`, `email`, `phoneno`, `password`, `cpassword`, `service`, `location`) VALUES
(1, 'kalyani', 'kalyani20@gmail.com', 1234567890, '$2y$10$NoDqj2FJzscIjAgS0.uaYu.s/9iQDK5bTxQemeWf4l0yjpV9Ctl/2', 'a', 'softwear', ' pune'),
(2, 'maharaj', 'Adityasabde2002@gmail.com', 1234567891, '$2y$10$5VO6RSlpOGUDMbBQZ50F5.5JUPZjs3L9AF7ZlZHRTvrGX9by82aVy', 'a', 'softwear', ' pune'),
(5, 'ketaki', 'aditya.sabde20@vit.edu', 2147483647, '$2y$10$aCeCjCk0GzRDf4Eh0EG5yeaad/60xgBEtcm.3VZDfXvVNC78Ph/HW', 'a', 'softwear', ' pune'),
(6, 'nikhil', 'nikhil20@gmail.com', 2147483647, '$2y$10$yhc4qKKISOdPS.n05GDewe3Qn6e.bsAtvpSW1AKLGYpSwS3pJI0oW', 'a', 'software', ' pune'),
(7, 'radhika', 'radhikasabde20@gmail.com', 2147483647, '$2y$10$HHFMsiGVTzhrHYcnt87yTuAPkqzExI1lguQO0JFf8nFU63k5UKnbK', 'a', 'web based application', ' pune'),
(8, 'abhishek', 'abhishek20@gmail.com', 2147483647, '$2y$10$4IihQxQGF8Tj3P9cWSn8f.832d27Fo0gYh4jEt/ETZ1RvsswSauH6', 'a', 'software', ' pune');

-- --------------------------------------------------------

--
-- Table structure for table `shrirambuyer`
--

CREATE TABLE `shrirambuyer` (
  `id` int(11) NOT NULL,
  `buyers` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `morerequirement` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shrirambuyer`
--

INSERT INTO `shrirambuyer` (`id`, `buyers`, `dates`, `category`, `locations`, `morerequirement`, `budget`, `messages`, `title`) VALUES
(1, 'kalyani', '16-01-2022', 'Web development', ' Pune', '                        i am interested in your internship please give me an oppertunity.', '10000000', 'ok i am ready for work', 'node js developer'),
(5, 'ketaki', '17-01-2022', 'Web development', ' Pune', '                        asdfghjkla', '10000000', 'ok i am ready for work', 'oracle developer'),
(7, 'ketaki', '17-01-2022', 'Web development', ' Pune', '                        asd', '10000000', 'please', 'node js developer');

-- --------------------------------------------------------

--
-- Table structure for table `shrirambuyerconnect`
--

CREATE TABLE `shrirambuyerconnect` (
  `seller` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shrirambuyerconnect`
--

INSERT INTO `shrirambuyerconnect` (`seller`, `dates`, `email`, `phoneno`, `title`) VALUES
('kalyani', '16-01-2022', 'kalyani20@gmail.com', 1234567890, 'node js developer'),
('ketaki', '17-01-2022', 'aditya.sabde20@vit.edu', 2147483647, 'oracle developer');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(12) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `phoneno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `email`, `password`, `cpassword`, `phoneno`) VALUES
(1, 'shriram', 'shriram20@gmail.com', '$2y$10$fSm5Eq3w9x8ATlFiJkwksOacyYslsxB0tpf8PcRIax2uomkSfF0t2', 'a', 2147483647),
(2, 'aditya', 'aditya.sabde20@vit.edu', '$2y$10$ezwg2494D9JJ37sgjE19eeDFqWh/VHkt.g2qk4k3zmKyqRao5yjN.', 'a', 808),
(3, 'anand', 'anand20@gmail.com', '$2y$10$oyucbeP7hgP5NaUfwUluru/qa7DbVbB34fgL9jD0HN2UgQepa1AFK', 'a', 2147483647),
(4, 'organizein', 'organizein20@gmail.com', '$2y$10$RPbH0riST.LJnSXyrWAPAuUlZMjnZZYcWJU15Yi3RoH.WIyOCFxmm', 'a', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sname` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `sid` int(20) NOT NULL,
  `10th_marks` varchar(25) NOT NULL,
  `12th_marks` varchar(25) NOT NULL,
  `grad_marks` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `m_status` varchar(20) NOT NULL,
  `partner_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sname`, `mobile`, `sid`, `10th_marks`, `12th_marks`, `grad_marks`, `gender`, `m_status`, `partner_name`, `username`, `pass`) VALUES
('Shakya', '7003042295', 7, '60', '60', '60', 'male', 'Married', 'Srija', 'shakya007', 'qwertyuiopedfvbnpojhgf7c3bc1d808e04732adf679965ccc34ca7ae3441ghjklcvbnm'),
('ShakyaDas', '9007525203', 6, '60', '65', '72', 'male', 'Married', 'Srija', 'shakya', 'qwertyuiopedfvbnpojhgf7c3bc1d808e04732adf679965ccc34ca7ae3441ghjklcvbnm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adityabuyer`
--
ALTER TABLE `adityabuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anandbuyer`
--
ALTER TABLE `anandbuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `organizeinbuyer`
--
ALTER TABLE `organizeinbuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellersignup`
--
ALTER TABLE `sellersignup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shrirambuyer`
--
ALTER TABLE `shrirambuyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `email` (`mobile`),
  ADD UNIQUE KEY `sid` (`sid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adityabuyer`
--
ALTER TABLE `adityabuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anandbuyer`
--
ALTER TABLE `anandbuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `organizeinbuyer`
--
ALTER TABLE `organizeinbuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sellersignup`
--
ALTER TABLE `sellersignup`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shrirambuyer`
--
ALTER TABLE `shrirambuyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `issm`
--
CREATE DATABASE IF NOT EXISTS `issm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `issm`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `start` varchar(10) NOT NULL,
  `end` varchar(10) NOT NULL,
  `month` varchar(8) NOT NULL,
  `year` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `title`, `description`, `start`, `end`, `month`, `year`) VALUES
(1, 'accountant', 'must a background on how to use pos like pastel', '040917', '191117', 'Oct', '2017'),
(2, 'developer ', 'candidate must have background of front end and know at least one framework per language ', '011217', '012318', 'Oct', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table ` aplicants`
--

CREATE TABLE ` aplicants` (
  `id` int(8) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` varchar(25) NOT NULL,
  `address` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `cv` varchar(55) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fill_details`
--

CREATE TABLE `fill_details` (
  `id` int(8) NOT NULL,
  `company_name` varchar(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fill_details`
--

INSERT INTO `fill_details` (`id`, `company_name`, `first_name`, `last_name`, `email`, `gender`, `file`) VALUES
(3, 'hh', 'deddd', 'dd', 'aaaa@gmail.com', 'Male', '1.jpg'),
(4, 'techzim', 'leo', 'mutema', 'muteam@gmail.com', 'Female', '444.PNG'),
(5, 'gtech', 'mutoro', 'mutoro', 'mutorok@gmail.com', 'Female', '444.PNG'),
(16, 'lllll', 'ddd', 'sshgsh', 'sssksjjs', 'Male', 'Capture 1.PNG'),
(17, 'yththh', 'figffjjkf', 'ffjeofhoe', 'dfhjhjdfdf', 'Male', 'funny.PNG'),
(26, 'eee', 'eee', 'eeeeaa', 'aaaa@gmail.com', '', ''),
(28, 'fff', 'dd', 'dd', 'aaaa@gmail.com', 'Male', 'did u.jpg'),
(29, 'jjmm', 'vjj', 'hjhjhj', 'aaaa@gmail.com', 'Male', '444.PNG'),
(31, 'lolo', 'jghjj', 'gfgg', 'aaaa@gmail.com', 'Female', '1.jpg'),
(32, 'hjhjk', 'kjkj', 'trt', 'aaaa@gmail.com', 'Male', 'did u.jpg'),
(33, 'lolo', 'lll', 'gfg', 'aaaa@gmail.com', 'Male', '1.jpg'),
(34, 'techzim', 'libert', 'liberty', 'aaaa@gmail.com', 'Female', '1.jpg'),
(35, 'comapp', 'asa', 'aaa', 'aaaa@gmail.com', 'Female', 'libary features 1.PNG'),
(36, 'chatikobo', 'chatikobo', 'chatikobo', 'aaaa@gmail.com', 'Male', 'liberty2.jpg'),
(40, ' dfddfd', 'eeee', 'dddd', 'ddd', 'Male', 'Capture 2.PNG'),
(42, ' dfddfd', 'eeee', 'dddd', 'hhhh@m.b', 'Female', 'Capture 2.PNG'),
(43, ' dramcache ', 'liberty', 'chatikobo', 'vbvb@gmail.com', 'Male', '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `id` int(8) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(55) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`id`, `user_name`, `first_name`, `last_name`, `password`, `email`, `gender`) VALUES
(0, 'chat', 'linda', 'linda', '123', 'aa@gmail.com', 'female'),
(1, 'lolo', 'leo', 'quism', '1234', 'aa@gmail.com', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `middlename` varchar(40) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `year` varchar(2) NOT NULL,
  `section` varchar(1) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `firstname`, `middlename`, `lastname`, `year`, `section`, `photo`) VALUES
(3, 21201455, 'Daw', 'asd', 'asd', 'II', 'A', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `fill_details`
--
ALTER TABLE `fill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered_users`
--
ALTER TABLE `registered_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fill_details`
--
ALTER TABLE `fill_details`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `javatpoint`
--
CREATE DATABASE IF NOT EXISTS `javatpoint` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `javatpoint`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('gunn123', '12345');
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-07-16 18:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'R.D. Sharma ', '2017-07-08 14:35:36', NULL),
(9, 'fwdfrwer', '2017-07-08 15:22:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 20, '2017-07-08 20:04:55', '2017-07-15 05:54:41'),
(3, 'physics', 6, 4, 1111, 15, '2017-07-08 20:17:31', '2017-07-15 06:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2017-07-04 18:35:25', '2017-07-06 16:00:42'),
(5, 'Technology', 1, '2017-07-04 18:35:39', '2017-07-08 17:13:03'),
(6, 'Science', 1, '2017-07-04 18:35:55', '0000-00-00 00:00:00'),
(7, 'Management', 0, '2017-07-04 18:36:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'Anuj kumar', 'anuj.lpu1@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:37:05', '2017-07-15 18:26:21'),
(4, 'SID005', 'sdfsd', 'csfsd@dfsfks.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 0, '2017-07-11 15:41:27', '2017-07-15 17:43:03'),
(8, 'SID009', 'test', 'test@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:58:28', '2017-07-15 13:42:44'),
(9, 'SID010', 'Amit', 'amit@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 13:40:30', NULL),
(10, 'SID011', 'Sarita Pandey', 'sarita@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 18:00:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"tms\",\"table\":\"tblbooking\"},{\"db\":\"bbdms\",\"table\":\"tblcontactusquery\"},{\"db\":\"bbdms\",\"table\":\"tblbloodgroup\"},{\"db\":\"bbdms\",\"table\":\"tblcontactusinfo\"},{\"db\":\"bbdms\",\"table\":\"tblblooddonars\"},{\"db\":\"bbdms\",\"table\":\"tblpages\"},{\"db\":\"bbdms\",\"table\":\"admin\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-12-06 09:40:38', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `srms`
--
CREATE DATABASE IF NOT EXISTS `srms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `srms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'C', '2017-06-06 16:52:33', '2017-06-07 05:53:47'),
(2, 'Second', 2, 'A', '2017-06-06 17:21:20', '2017-06-06 17:21:38'),
(4, 'Fourth', 4, 'C', '2017-06-07 09:20:23', '0000-00-00 00:00:00'),
(5, 'Sixth', 6, 'A', '2017-06-07 09:35:08', '0000-00-00 00:00:00'),
(6, 'Sixth', 6, 'B', '2017-08-28 18:42:41', '2017-08-28 18:43:02'),
(7, 'Seventh', 7, 'B', '2017-08-28 18:52:00', '2017-08-28 18:52:15'),
(8, 'Eight', 8, 'A', '2017-08-28 19:21:05', '2017-08-28 19:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2017-08-24 17:54:09', '2017-08-28 18:34:32'),
(3, 1, 1, 1, 80, '2017-08-24 17:54:09', '2017-08-28 18:34:25'),
(4, 1, 1, 5, 78, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(5, 1, 1, 4, 60, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(6, 2, 4, 2, 90, '2017-08-28 18:38:18', NULL),
(7, 2, 4, 1, 75, '2017-08-28 18:38:18', NULL),
(8, 2, 4, 5, 56, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(9, 2, 4, 4, 80, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(10, 4, 7, 2, 54, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(11, 4, 7, 1, 85, '2017-08-28 18:56:21', NULL),
(12, 4, 7, 5, 55, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(13, 4, 7, 7, 65, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(14, 5, 8, 2, 75, '2017-08-28 19:25:07', NULL),
(15, 5, 8, 1, 56, '2017-08-28 19:25:07', NULL),
(16, 5, 8, 5, 52, '2017-08-28 19:25:07', NULL),
(17, 5, 8, 4, 80, '2017-08-28 19:25:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Sarita', '46456', 'info@phpgurukul.com', 'Female', '1995-03-03', 1, '2017-06-12 10:30:57', '2017-08-26 04:36:37', 1),
(2, 'Anuj kumar', '10861', 'anuj@gmail.co', 'Male', '1995-02-02', 4, '2017-08-19 19:18:28', '2017-08-26 04:59:17', 0),
(3, 'amit kumar', '2626', 'amit@gmail.com', 'Male', '2014-08-06', 6, '2017-08-28 18:45:31', '2017-08-28 18:46:02', 1),
(4, 'rahul kumar', '990', 'rahul01@gmail.com', 'Male', '2001-02-03', 7, '2017-08-28 18:54:58', '2017-08-28 18:55:20', 1),
(5, 'sanjeev singh', '122', 'sanjeev01@gmail.com', 'Male', '2002-02-03', 8, '2017-08-28 19:23:53', '2017-08-28 19:24:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2017-06-07 11:16:56', '2017-06-07 11:16:56'),
(4, 1, 2, 1, '2017-06-12 06:46:32', '2017-06-12 06:46:32'),
(5, 1, 4, 1, '2017-06-12 06:46:35', '2017-06-12 06:46:35'),
(6, 1, 5, 1, '2017-06-12 06:46:40', '2017-06-12 06:46:40'),
(8, 4, 4, 1, '2017-08-26 03:21:27', '2017-08-26 03:21:27'),
(10, 4, 1, 1, '2017-08-26 03:22:05', '2017-08-26 03:22:05'),
(12, 4, 2, 1, '2017-08-26 03:22:15', '2017-08-26 03:22:15'),
(13, 4, 5, 1, '2017-08-26 03:22:20', '2017-08-26 03:22:20'),
(14, 6, 1, 1, '2017-08-28 18:44:06', '2017-08-28 18:44:06'),
(15, 6, 2, 1, '2017-08-28 18:44:12', '2017-08-28 18:44:12'),
(16, 6, 4, 1, '2017-08-28 18:44:18', '2017-08-28 18:44:18'),
(17, 6, 6, 1, '2017-08-28 18:44:23', '2017-08-28 18:44:23'),
(18, 7, 1, 1, '2017-08-28 18:53:12', '2017-08-28 18:53:12'),
(19, 7, 7, 1, '2017-08-28 18:53:19', '2017-08-28 18:53:19'),
(20, 7, 2, 1, '2017-08-28 18:53:38', '2017-08-28 18:53:38'),
(21, 7, 6, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(22, 7, 5, 0, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(23, 8, 1, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),
(24, 8, 2, 1, '2017-08-28 19:22:31', '2017-08-28 19:22:31'),
(25, 8, 4, 1, '2017-08-28 19:22:36', '2017-08-28 19:22:36'),
(26, 8, 6, 1, '2017-08-28 19:22:42', '2017-08-28 19:22:42'),
(27, 8, 5, 0, '2017-08-28 19:22:47', '2017-08-28 19:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2017-06-07 09:23:57', '2017-06-07 09:46:54'),
(2, 'English', 'ENG11', '2017-06-07 09:24:25', '0000-00-00 00:00:00'),
(4, 'Science', 'SC1', '2017-06-07 09:36:15', '0000-00-00 00:00:00'),
(5, 'Music', 'MS', '2017-06-07 09:36:23', '0000-00-00 00:00:00'),
(6, 'Social Studies', 'SS08', '2017-08-28 18:43:29', '2017-08-28 18:43:45'),
(7, 'Physics', 'PH03', '2017-08-28 18:52:41', '2017-08-28 18:52:55'),
(8, 'Chemistry', 'CH65', '2017-08-28 19:21:46', '2017-08-28 19:22:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tms`
--
CREATE DATABASE IF NOT EXISTS `tms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'anuj@gmail.com', '05/18/2017', '05/31/2017', '\"Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2017-05-13 19:01:10', 2, 'u', '2017-05-13 21:30:23'),
(3, 2, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'casf esd sg gd gdfh df', '2017-05-13 20:20:01', 2, 'a', '2017-05-13 23:04:40'),
(4, 1, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'dwef  fwe', '2017-05-13 20:32:54', 2, 'a', '2017-05-13 21:36:39'),
(5, 1, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'dwef  fwe', '2017-05-13 20:33:17', 2, 'a', '2019-07-20 20:02:42'),
(6, 2, 'anuj@gmail.com', '05/14/2017', '05/24/2017', 'test demo', '2017-05-13 21:18:37', 2, 'a', '2017-05-14 07:58:28'),
(7, 4, 'sarita@gmail.com', '05/26/2017', '05/30/2017', 'est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-05-14 05:09:11', 2, 'a', '2017-05-14 07:47:39'),
(8, 2, 'sarita@gmail.com', '05/27/2017', '05/28/2017', 'ubub5u6', '2017-05-14 05:10:24', 2, 'a', '2017-05-14 05:13:03'),
(9, 1, 'demo@test.com', '05/19/2017', '05/21/2017', 'demo test demo test', '2017-05-14 07:45:11', 1, NULL, '2017-05-14 07:47:45'),
(10, 5, 'abc@g.com', '05/22/2017', '05/24/2017', 'test test t test test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:26', 2, 'a', '2022-12-06 09:57:21'),
(11, 4, 'anuj@gmail.com', '2019-07-31', '2019-08-02', 'This is sample text for testing,', '2019-07-20 20:15:35', 1, NULL, '2022-12-06 09:56:58'),
(12, 1, 'anuj@gmail.com', '2022-12-07', '2022-12-14', 'no', '2022-12-06 09:39:44', 0, NULL, NULL),
(13, 5, 'anuj@gmail.com', '2022-12-06', '2022-12-13', 'sudhakar', '2022-12-06 09:40:29', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'anuj', 'anuj.lpu1@gmail.com', '2354235235', 'The standard Lorem Ipsum passage, used since the 1500s', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2017-05-13 22:23:53', 1),
(2, 'efgegter', 'terterte@gmail.com', '3454353453', 'The standard Lorem Ipsum passage', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:27:00', 1),
(3, 'fwerwetrwet', 'fwsfhrtre@hdhdhqw.com', '8888888888', 'erwt wet', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:28:11', 1),
(4, 'Test', 'test@gm.com', '4747474747', 'Test', 'iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid', '2017-05-14 07:54:07', 1),
(5, 'sudhakar', 'suni@gmail.com', '9019736821', 'monali', 'BIhe c section 2023', '2022-12-06 09:55:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(4, 'anuj@gmail.com', 'Cancellation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ', '2017-05-13 22:03:33', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', '2017-05-13 23:50:40'),
(5, 'sarita@gmail.com', 'Cancellation', 'tbt 3y 34y4 3y3hgg34t', '2017-05-14 05:12:14', 'sg sd gs g sdgfs ', '2017-05-14 07:52:07'),
(6, 'demo@test.com', 'Refund', 'demo test.com demo test.comdemo test.comdemo test.comdemo test.com', '2017-05-14 07:45:37', NULL, '0000-00-00 00:00:00'),
(7, 'abc@g.com', 'Refund', 'test test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:46', 'vetet ert erteryre', '2017-05-14 07:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service.&nbsp;</font></p><p align=\"justify\"><font size=\"2\">sudhakar</font></p>\r\n										\r\n										'),
(2, 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'aboutus', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Test test&nbsp; hi hello</span>'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Manali Trip ', 'General', 'Kullu Manali India', 100, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '14287acc-b5cb-46db-b8b4-e3ffe652fc0d.png', '2017-05-13 14:23:44', '2017-05-13 17:51:01'),
(2, 'Test ', 'Test', 'Delhi India', 5433, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 'demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test ', 'phpgurukul-1.png', '2017-05-13 15:24:26', '2017-05-13 17:51:57'),
(3, 'Demo Demo  Demo Demo test', 'Demo Demo Demo Demo Demo Demo  test', 'Demo Demo Demo Demo Demo Demo  test', 1000, 'Demo Demo  test', 'Sample Text for testing.', 'complaints.jpg', '2017-05-13 16:00:58', '2019-07-20 20:12:41'),
(4, 'Kerla', 'Familty and Couple', 'Kerlal', 2000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'images.jpg', '2017-05-13 22:39:37', '0000-00-00 00:00:00'),
(5, 'Coorg : Tour Packages', 'General', 'Coorg', 3000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'coorg-hill-station1.jpg', '2017-05-13 22:42:10', '0000-00-00 00:00:00'),
(6, 'Indonesia', 'Family', 'Indonesia', 5000, 'Frree wifi, pickup and drop etc', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ', 'mamp-pro-logo-big.png', '2017-05-14 08:01:08', '2017-05-14 08:01:27'),
(7, 'davangere', 'one day', 'BIHE', 0, 'lake view ', '123', 'brother.jpg', '2022-12-06 10:00:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '1111111111', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-10 10:38:17', '2019-07-20 20:18:18'),
(3, 'sarita', '9999999999', 'sarita@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2017-05-10 10:50:48', '2017-05-14 07:40:19'),
(7, 'test', '7676767676', 'test@gm.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-10 10:54:56', '0000-00-00 00:00:00'),
(8, 'Anuj kumar', '9999999999', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:17:44', '0000-00-00 00:00:00'),
(9, 'XYZabc', '3333333333', 'xyz@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:25:13', '2017-05-14 07:25:42'),
(10, 'Anuj Kumar', '4543534534', 'demo@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:43:23', '2017-05-14 07:46:57'),
(11, 'XYZ', '8888888888', 'abc@g.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:54:32', '2017-05-14 07:55:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
