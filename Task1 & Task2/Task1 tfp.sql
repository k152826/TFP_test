-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 03:23 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tfp`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `patient_id` varchar(30) NOT NULL,
  `patient_name` varchar(30) DEFAULT NULL,
  `patient_gender` varchar(30) DEFAULT NULL,
  `patient_phone` varchar(30) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`patient_id`, `patient_name`, `patient_gender`, `patient_phone`, `province`, `created_at`) VALUES
('1', 'Osama', 'M', '12507384957', 'Ontario', '2022-07-04'),
('10', 'Yasmeen', 'F', '12505998239', 'British Columbia', '2022-07-06'),
('2', 'Salima', 'F', '12506482904', 'British Columbia', '2022-07-06'),
('3', 'Ahmed', 'M', '12507483947', 'Ontario', '2022-07-07'),
('4', 'Sania', 'F', '12502748001', 'Ontario', '2022-07-08'),
('5', 'Sana', 'F', '12505832224', 'Ontario', '2022-07-12'),
('6', 'Imran', 'M', '12505099922', 'British Columbia', '2022-08-12'),
('7', 'Rizwan', 'M', '12505992244', 'Ontarioo', '2022-08-12'),
('8', 'Sara', 'F', '12505992343', 'Ontario', '2022-08-13'),
('9', 'Alisha', 'F', '12505998573', 'British Columbia', '2022-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `patient_partner_mapping`
--

CREATE TABLE `patient_partner_mapping` (
  `patient_partner_id` varchar(30) NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `partner_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_partner_mapping`
--

INSERT INTO `patient_partner_mapping` (`patient_partner_id`, `patient_id`, `partner_id`) VALUES
('1', '1', '4'),
('2', '2', '3'),
('3', '3', '2'),
('4', '4', '1'),
('5', '5', '6'),
('6', '6', '5'),
('7', '7', '8'),
('8', '8', '7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_partner_mapping`
--
ALTER TABLE `patient_partner_mapping`
  ADD PRIMARY KEY (`patient_partner_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
