-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2023 at 04:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `htdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `burialrecords`
--

CREATE TABLE `burialrecords` (
  `BurialID` int(11) NOT NULL,
  `CemeteryID` int(11) DEFAULT NULL,
  `SectionID` int(11) DEFAULT NULL,
  `GraveID` int(11) DEFAULT NULL,
  `BurialCode` varchar(20) NOT NULL,
  `DeceasedName` varchar(100) NOT NULL,
  `BurialDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `burialrecords`
--
ALTER TABLE `burialrecords`
  ADD PRIMARY KEY (`BurialID`),
  ADD KEY `CemeteryID` (`CemeteryID`),
  ADD KEY `SectionID` (`SectionID`),
  ADD KEY `GraveID` (`GraveID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `burialrecords`
--
ALTER TABLE `burialrecords`
  MODIFY `BurialID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `burialrecords`
--
ALTER TABLE `burialrecords`
  ADD CONSTRAINT `burialrecords_ibfk_1` FOREIGN KEY (`CemeteryID`) REFERENCES `cemeteries` (`CemeteryID`),
  ADD CONSTRAINT `burialrecords_ibfk_2` FOREIGN KEY (`SectionID`) REFERENCES `sections` (`SectionID`),
  ADD CONSTRAINT `burialrecords_ibfk_3` FOREIGN KEY (`GraveID`) REFERENCES `graves` (`GraveID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
