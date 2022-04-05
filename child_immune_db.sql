-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2022 at 02:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `child_immune_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`admin_id`, `email`, `username`, `password`) VALUES
(1, '', 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `chart`
--

CREATE TABLE `chart` (
  `chart_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `vaccine_id` int(11) NOT NULL,
  `dose` int(11) NOT NULL,
  `healthcare_id` int(11) NOT NULL,
  `dateofvaccination` date NOT NULL,
  `healthcenter_id` int(11) NOT NULL,
  `vaccinated` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chart`
--

INSERT INTO `chart` (`chart_id`, `child_id`, `vaccine_id`, `dose`, `healthcare_id`, `dateofvaccination`, `healthcenter_id`, `vaccinated`) VALUES
(379, 87, 7, 1, 1, '2022-01-03', 3, 'no'),
(384, 90, 1, 1, 1, '2022-01-03', 1, 'no'),
(385, 87, 3, 1, 1, '0000-00-00', 1, 'no'),
(386, 87, 2, 1, 1, '0000-00-00', 1, 'no'),
(387, 88, 1, 1, 1, '0000-00-00', 1, 'no'),
(388, 87, 1, 1, 1, '0000-00-00', 1, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `child_tbl`
--

CREATE TABLE `child_tbl` (
  `child_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `dateofbirth` date NOT NULL,
  `placeofbirth` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `mothername` varchar(50) NOT NULL,
  `birthheight` int(11) NOT NULL,
  `birthweight` int(11) NOT NULL,
  `sex` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `child_tbl`
--

INSERT INTO `child_tbl` (`child_id`, `parent_id`, `firstname`, `lastname`, `middlename`, `dateofbirth`, `placeofbirth`, `address`, `fathername`, `mothername`, `birthheight`, `birthweight`, `sex`) VALUES
(91, 18, 'Akash', 'Singh', 'Aman', '2015-08-05', 'Mumbai', 'Vasai', 'Aman', 'Rohini', 4, 15, 'male'),
(92, 22, 'Amit', 'Patil', 'Ayush', '2008-02-01', 'Mumbai', 'Mumbai', 'Ayush', 'Anita', 3, 20, 'male'),
(93, 22, 'Amita', 'Patil', 'Ayush', '2010-02-01', 'Mumbai', 'Mumbai', 'Ayush', 'Anita', 2, 15, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_subject` varchar(250) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_status` int(1) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_subject`, `comment_text`, `comment_status`, `parent_id`) VALUES
(29, 'vaccine', 'You child will have its vaccine tomorrow', 1, 15),
(30, 'vaccine', 'You child will have its vaccine tomorrow', 1, 15),
(31, 'vaccine', 'Your child will have its vaccine tomorrow', 1, 15),
(32, 'vaccine', 'Your child will have its vaccine tomorrow', 1, 15),
(33, 'vaccine', 'Your child will have its vaccine tomorrow', 1, 15),
(34, 'vaccine', 'Your child will have its vaccine tomorrow', 1, 15),
(35, 'vaccine', 'Your child will have its vaccine tomorrow', 1, 15),
(36, 'vaccine', 'Your child will have its vaccine tomorrow', 1, 15),
(37, 'vaccine', 'Your child will have its vaccine tomorrow', 1, 15),
(38, 'vaccine', 'Your child will have its vaccine tomorrow2021-12-03', 1, 15),
(39, 'vaccine', 'Your child will have its vaccine tomorrow: 2021-12-03', 1, 15),
(40, 'vaccine', 'Your child is scheduled to have a 1 dose for Measles, Mumps, Rubella (MMR) vaccine tomorrow, 2021-12-03 in Brgy.ramos health center at 8:00 AM. <br>', 1, 15),
(41, 'vaccine', 'Your child will have its vaccine tomorrow: 2021-12-09', 1, 15),
(42, 'vaccine', 'Your child will have its vaccine tomorrow: 2021-12-09', 1, 15),
(43, 'vaccine', 'Your child will have its vaccine tomorrow: 2021-12-09', 0, 15),
(44, 'vaccine', 'Your child will have its vaccine tomorrow: 2021-12-09', 0, 15),
(45, 'vaccine', 'Your child will have its vaccine tomorrow: 2021-12-09', 0, 15),
(46, 'vaccine', 'Your child will have its vaccine tomorrow: 2021-12-09', 0, 15),
(47, 'vaccine', 'Your child will have its vaccine tomorrow: 2021-12-14', 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `id` int(11) NOT NULL,
  `hf` varchar(300) NOT NULL,
  `benefits` varchar(300) NOT NULL,
  `reminders` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`id`, `hf`, `benefits`, `reminders`) VALUES
(12, 'Fruit and vegetables \r\n                    <br>Fruit and vegetables give your child energy, vitamins, anti-oxidants, fibre and water.', 'These nutrients help to protect your baby from diseases later in life, including diseases like heart disease, stroke and some cancers.\r\n                    It’s a good idea to offer your baby fruit and vegetables at every meal and \r\n                    for snacks. Try to choose fruit and vegies of d', 'Wash fruit to remove dirt or chemicals, and leave any edible skin on, because the skin contains nutrients too.');

-- --------------------------------------------------------

--
-- Table structure for table `healthcare_info`
--

CREATE TABLE `healthcare_info` (
  `healthcare_id` int(11) NOT NULL,
  `vaccinatorname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `healthcare_info`
--

INSERT INTO `healthcare_info` (`healthcare_id`, `vaccinatorname`) VALUES
(1, 'dexter'),
(2, 'fely'),
(3, 'christian'),
(4, 'eyow'),
(52, 'camelle'),
(54, 'inuyasha');

-- --------------------------------------------------------

--
-- Table structure for table `healthcenter_tbl`
--

CREATE TABLE `healthcenter_tbl` (
  `healthcenter_id` int(11) NOT NULL,
  `healthcenter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `healthcenter_tbl`
--

INSERT INTO `healthcenter_tbl` (`healthcenter_id`, `healthcenter`) VALUES
(1, 'center'),
(2, 'talon'),
(3, 'ramos'),
(65, 'agoo'),
(66, 'Wk9iSVhkSXk4RkdURHZsd2hIclNmQT09OjrOpcdXIFvljF+5/fgmQbnu'),
(67, 'd2tGaGg0RHhYb2ZIRzJWeVprOWxCdz09OjpTzVVE+/QdVmRmQac/RD2E'),
(68, 'aXE4QmJJTVVuckJSQnF5Vk1WRi9qUT09Ojrc2AvNjPEIJNRtAwkqjmBJ'),
(69, 'NE9hampqN3I0ZnVJeDFJQ0MwVkVlUT09OjomNXFI3We2Bd4NcWbVPkMA'),
(70, 'V29CWXpQUWY1VVVNTnNuSUJxdWhqQT09OjqGkXnayICdANWWtSySD8y3'),
(71, 'VGlBcFBXb0FaYkgzSUV3QTRGR3BJUT09OjoEgWQIPWBHIoKuTRM1Arhj'),
(72, 'L1dGL3FzK1lnSTFnb0trWE1VODdPZz09OjoKStkQZV1+iivnH2TC/O3n');

-- --------------------------------------------------------

--
-- Table structure for table `parent_tbl`
--

CREATE TABLE `parent_tbl` (
  `parent_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phonenum` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parent_tbl`
--

INSERT INTO `parent_tbl` (`parent_id`, `firstname`, `lastname`, `middlename`, `address`, `phonenum`, `email`, `username`, `password`) VALUES
(18, 'Aman', 'Singh', 'Viraj', 'Vasai', '12341234', 'aman@gmail.com', 'amansingh', '1234'),
(19, 'Shubham', 'Dubey', 'Hari', 'Virar', '12341234', 'shubham@gmail.com', 'shubhamdubey', '1234'),
(20, 'Sumit', 'Das', 'Santosh', 'Andheri', '12341234', 'sumit@gmail.com', 'sumitdas', '1234'),
(21, 'Viraj', 'Rane', 'Sanjay', 'Thane', '12341234', 'viraj@gmail.com', 'virajrane', '1234'),
(22, 'Ayush', 'Patil', 'Shubhash', 'Palghar', '9834693269', 'mandar2217@gmail.com', 'ayushpatil', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `vaccine_id` int(11) NOT NULL,
  `vaccinename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`vaccine_id`, `vaccinename`) VALUES
(1, 'BCG'),
(2, 'Hepatitis B'),
(3, 'Pentavalent '),
(4, 'Oral Polio'),
(5, 'Inactivated Polio'),
(6, 'Pneumococcal Conjugate'),
(7, 'Measles, Mumps, Rubella (MMR)');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_information`
--

CREATE TABLE `vaccine_information` (
  `id` int(11) NOT NULL,
  `vaccinename` varchar(100) NOT NULL,
  `information` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine_information`
--

INSERT INTO `vaccine_information` (`id`, `vaccinename`, `information`) VALUES
(8, 'BCG', 'Protection from: Tuberculosis  \r\n<br> When to give: At birth <br>  \r\nTuberculosis (TB) is an infection that most often attacks the lungs. In infants and young children, it affects other organs like th'),
(9, 'Hepatitis', 'Protection from: Hepatitis B \r\n<br> When to give: At birth  <br>\r\nHepatitis B virus is a dangerous liver infection that, when caught as an infant, often shows no symptoms for decades. It can develop i'),
(10, 'Pentavalent', 'Protection from: Diphtheria, Pertussis, Tetanus, Influenza B and Hepatitis B <br>\r\nWhen to give: 6, 10 and 14 weeks'),
(11, 'Oral Polio', 'Protection from: Poliovirus <br> When to give: 6, 10 and 14 weeks <br>When to give: 14 weeks <br>\r\n                        Polio is a virus that paralyzes 1 in 200 people who get infected. Among those'),
(12, 'INACTIVATED POLIO', 'Protection from: Poliovirus <br> When to give: 6, 10 and 14 weeks <br>When to give: 14 weeks <br>\r\n                        Polio is a virus that paralyzes 1 in 200 people who get infected. Among those'),
(13, 'PNEUMOCOCCAL CONJUGATE', 'Protection from: Pneumonia and Meningitis <br>When to give: 6, 10 and 14 weeks <br>\r\n Pneumococcal diseases such as pneumonia and meningitis are a common cause of sickness and deathworldwide, especial'),
(14, 'MEASLES, MUMPS, RUBELLA (MMR', 'When to give: 9 months and 1 year old  \r\n <br>Measles is a highly contagious disease with symptoms that include fever, runny nose, white spots in the back of the mouth and a rash. Serious cases can ca');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_schedule`
--

CREATE TABLE `vaccine_schedule` (
  `vaccine_id` int(10) NOT NULL,
  `vaccine_name` varchar(20) NOT NULL,
  `min_age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine_schedule`
--

INSERT INTO `vaccine_schedule` (`vaccine_id`, `vaccine_name`, `min_age`) VALUES
(1, 'BCG', 10),
(2, 'OPV', 10),
(3, 'Hepatitis B', 10),
(4, 'DPT', 42),
(5, 'OPV', 42),
(6, 'HiB ', 42),
(7, 'Hepatitis B', 42),
(8, 'DPT', 70),
(9, 'OPV', 70),
(10, 'HiB', 70),
(11, 'DPT', 98),
(12, 'OPV', 98),
(13, 'HiB', 98),
(14, 'Hepatitis B', 180),
(15, 'Measles', 270),
(16, 'MMR', 450),
(17, 'DPT', 545),
(18, 'OPV', 545),
(19, 'HiB', 545),
(20, 'Typhoid', 730),
(21, 'DPT', 1460),
(22, 'OPV', 1460),
(23, 'TT', 3650),
(24, 'Rubella', 3650);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `chart`
--
ALTER TABLE `chart`
  ADD PRIMARY KEY (`chart_id`);

--
-- Indexes for table `child_tbl`
--
ALTER TABLE `child_tbl`
  ADD PRIMARY KEY (`child_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `healthcare_info`
--
ALTER TABLE `healthcare_info`
  ADD PRIMARY KEY (`healthcare_id`);

--
-- Indexes for table `healthcenter_tbl`
--
ALTER TABLE `healthcenter_tbl`
  ADD PRIMARY KEY (`healthcenter_id`);

--
-- Indexes for table `parent_tbl`
--
ALTER TABLE `parent_tbl`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`vaccine_id`);

--
-- Indexes for table `vaccine_information`
--
ALTER TABLE `vaccine_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccine_schedule`
--
ALTER TABLE `vaccine_schedule`
  ADD PRIMARY KEY (`vaccine_id`),
  ADD UNIQUE KEY `vaccine_id` (`vaccine_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chart`
--
ALTER TABLE `chart`
  MODIFY `chart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `child_tbl`
--
ALTER TABLE `child_tbl`
  MODIFY `child_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `guide`
--
ALTER TABLE `guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `healthcare_info`
--
ALTER TABLE `healthcare_info`
  MODIFY `healthcare_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `healthcenter_tbl`
--
ALTER TABLE `healthcenter_tbl`
  MODIFY `healthcenter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `parent_tbl`
--
ALTER TABLE `parent_tbl`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `vaccine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `vaccine_information`
--
ALTER TABLE `vaccine_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vaccine_schedule`
--
ALTER TABLE `vaccine_schedule`
  MODIFY `vaccine_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;