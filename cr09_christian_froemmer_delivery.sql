-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 02:48 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_christian_froemmer_delivery`
--
CREATE DATABASE IF NOT EXISTS `cr09_christian_froemmer_delivery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr09_christian_froemmer_delivery`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressID` int(11) NOT NULL,
  `city` varchar(30) DEFAULT NULL,
  `zipCode` int(11) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `houseNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressID`, `city`, `zipCode`, `street`, `houseNumber`) VALUES
(1, 'Wien', 1050, 'Reinprechtsdorfer Straße', 40),
(2, 'Linz', 4020, 'Hauptstraße ', 270),
(3, 'Graz', 8020, 'Wienerstraße', 65),
(4, 'krems', 3200, 'Lalagasse', 12),
(5, 'Klosterneuburg', 2400, 'Am Beisl', 2),
(6, 'Wien', 1020, 'Vorgartenstraße', 84),
(7, 'Wien', 1050, 'Teststraße', 56),
(8, 'Wien', 1080, 'Erdstraße', 18),
(9, 'Wien', 1010, 'Baumstraße', 16),
(10, 'Wien', 1020, 'Gartenstraße', 16),
(11, 'Wien', 1060, 'Vornstraße', 16),
(12, 'Wien', 1050, 'Mehlstraße', 68),
(13, 'Wien', 1030, 'Eisenstraße', 123),
(14, 'Wien', 1010, 'Elchstraße', 1),
(15, 'Wien', 1110, 'Tanzstraße', 5),
(16, 'Wien', 1120, 'Hauptstraße', 6),
(17, 'Wien', 1160, 'Nebenstraße', 16),
(18, 'Wien', 1180, 'Kartonstraße', 14),
(19, 'Wien', 1070, 'Ringstraße', 92),
(20, 'Wien', 1090, 'Wasserstraße', 52),
(21, 'Wien', 1190, 'Teenstraße', 47),
(22, 'Wien', 1150, 'Bierstraße', 35),
(23, 'Wien', 1140, 'Weinstraße', 45),
(24, 'Wien', 1050, 'Wienstraße', 125),
(25, 'Wien', 1090, 'Blondstraße', 178),
(26, 'Wien', 1080, 'Schwarzstraße', 12),
(27, 'Wien', 1020, 'Braunstraße', 17),
(28, 'Wien', 1030, 'Blaustraße', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customID` int(11) NOT NULL,
  `fk_nameID` int(11) DEFAULT NULL,
  `fk_addressID` int(11) DEFAULT NULL,
  `dropDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customID`, `fk_nameID`, `fk_addressID`, `dropDate`) VALUES
(10, 7, 1, '2020-01-12'),
(11, 8, 2, '2020-02-16'),
(12, 9, 3, '2020-10-01'),
(13, 10, 4, '2020-06-14'),
(14, 11, 5, '2020-04-19'),
(15, 12, 6, '2020-03-25'),
(16, 13, 7, '2020-02-15'),
(17, 14, 8, '2020-02-15'),
(18, 15, 9, '2020-02-15'),
(19, 16, 10, '2020-04-05'),
(20, 17, 11, '2020-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empID` int(11) NOT NULL,
  `fk_name` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empID`, `fk_name`, `title`) VALUES
(7, 1, 'dispatcher'),
(8, 2, 'sorter'),
(9, 3, 'dispatcher'),
(10, 4, 'dispatcher'),
(11, 5, 'sorter');

-- --------------------------------------------------------

--
-- Table structure for table `name`
--

CREATE TABLE `name` (
  `nameID` int(11) NOT NULL,
  `firstName` varchar(60) DEFAULT NULL,
  `lastName` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `name`
--

INSERT INTO `name` (`nameID`, `firstName`, `lastName`) VALUES
(0, 'Iris', 'Nass'),
(1, 'Jakob', 'Winter'),
(2, 'Manuel', 'Sommer'),
(3, 'Eva', 'Herbst'),
(4, 'Maja', 'Kalt'),
(5, 'Reiner', 'Warm'),
(7, 'Hans', 'Wurst'),
(8, 'Joe', 'Doe'),
(9, 'Mark', 'Murks'),
(10, 'Mateo', 'Lila'),
(11, 'Marta', 'Mein'),
(12, 'Elenore', 'Ako'),
(13, 'Phoebe', 'Buffey'),
(14, 'Dennis', 'Holler'),
(15, 'Anges', 'Oink'),
(16, 'ELon', 'Mengal'),
(17, 'Tarek', 'Plotito'),
(18, 'Lana', 'Otto'),
(19, 'Richard', 'Enkel'),
(20, 'Wolfgang', 'Otto'),
(21, 'Berthold', 'Neil'),
(22, 'Lesslie', 'Mc Neal'),
(23, 'Iris', 'Müller'),
(24, 'David', 'Nett'),
(25, 'Caroline', 'Wut'),
(26, 'Leyla', 'Collins'),
(27, 'Anna', 'Lux'),
(28, 'Mario', 'Nuss'),
(29, 'Babara', 'Apfel'),
(30, 'Siefgried', 'Ade');

-- --------------------------------------------------------

--
-- Table structure for table `packagemail`
--

CREATE TABLE `packagemail` (
  `freightID` int(11) NOT NULL,
  `fk_name` int(11) DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_receiver` int(11) DEFAULT NULL,
  `dropDate` date DEFAULT NULL,
  `pickDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packagemail`
--

INSERT INTO `packagemail` (`freightID`, `fk_name`, `fk_address`, `fk_receiver`, `dropDate`, `pickDate`) VALUES
(1, 18, 12, 12, '2020-01-12', '2020-01-13'),
(2, 19, 13, 13, '2020-02-16', '2020-02-17'),
(3, 20, 14, 14, '2020-10-01', '2020-10-02'),
(4, 21, 15, 15, '2020-06-14', '2020-06-15'),
(5, 22, 16, 16, '2020-04-19', '2020-04-20'),
(6, 23, 17, 17, '2020-03-25', '2020-03-26'),
(7, 24, 18, 18, '2020-02-15', '2020-02-16'),
(8, 25, 19, 19, '2020-02-15', '2020-02-16'),
(9, 26, 20, 20, '2020-02-15', '2020-02-16'),
(10, 27, 21, 22, '2020-09-16', '2020-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `pickdropstation`
--

CREATE TABLE `pickdropstation` (
  `stationID` int(11) NOT NULL,
  `fk_rec` int(11) DEFAULT NULL,
  `fk_customID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pickdropstation`
--

INSERT INTO `pickdropstation` (`stationID`, `fk_rec`, `fk_customID`) VALUES
(1, 12, 10),
(2, 13, 11),
(3, 14, 12),
(4, 15, 13),
(5, 16, 14),
(6, 17, 15),
(7, 18, 16),
(8, 19, 17),
(9, 20, 18),
(10, 21, 19),
(11, 22, 20);

-- --------------------------------------------------------

--
-- Table structure for table `processfacility`
--

CREATE TABLE `processfacility` (
  `pfID` int(11) NOT NULL,
  `fk_freight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `processfacility`
--

INSERT INTO `processfacility` (`pfID`, `fk_freight`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `receiver`
--

CREATE TABLE `receiver` (
  `recID` int(11) NOT NULL,
  `fk_name` int(11) DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `pickDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receiver`
--

INSERT INTO `receiver` (`recID`, `fk_name`, `fk_address`, `pickDate`) VALUES
(12, 18, 12, '2020-01-13'),
(13, 19, 13, '2020-02-17'),
(14, 20, 14, '2020-10-02'),
(15, 21, 15, '2020-06-15'),
(16, 22, 16, '2020-04-20'),
(17, 23, 17, '2020-03-26'),
(18, 24, 18, '2020-02-16'),
(19, 25, 19, '2020-02-16'),
(20, 26, 20, '2020-02-16'),
(21, 27, 21, '2020-04-06'),
(22, 28, 22, '2020-09-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customID`),
  ADD KEY `fk_nameID` (`fk_nameID`),
  ADD KEY `fk_addressID` (`fk_addressID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empID`),
  ADD KEY `fk_name` (`fk_name`);

--
-- Indexes for table `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`nameID`);

--
-- Indexes for table `packagemail`
--
ALTER TABLE `packagemail`
  ADD PRIMARY KEY (`freightID`),
  ADD KEY `fk_name` (`fk_name`),
  ADD KEY `fk_address` (`fk_address`),
  ADD KEY `fk_receiver` (`fk_receiver`);

--
-- Indexes for table `pickdropstation`
--
ALTER TABLE `pickdropstation`
  ADD PRIMARY KEY (`stationID`),
  ADD KEY `fk_rec` (`fk_rec`);

--
-- Indexes for table `processfacility`
--
ALTER TABLE `processfacility`
  ADD PRIMARY KEY (`pfID`),
  ADD KEY `fk_freight` (`fk_freight`);

--
-- Indexes for table `receiver`
--
ALTER TABLE `receiver`
  ADD PRIMARY KEY (`recID`),
  ADD KEY `fk_name` (`fk_name`),
  ADD KEY `fk_address` (`fk_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `addressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `name`
--
ALTER TABLE `name`
  MODIFY `nameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `packagemail`
--
ALTER TABLE `packagemail`
  MODIFY `freightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pickdropstation`
--
ALTER TABLE `pickdropstation`
  MODIFY `stationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `processfacility`
--
ALTER TABLE `processfacility`
  MODIFY `pfID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `receiver`
--
ALTER TABLE `receiver`
  MODIFY `recID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fk_nameID`) REFERENCES `name` (`nameID`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`fk_addressID`) REFERENCES `address` (`addressID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`fk_name`) REFERENCES `name` (`nameID`);

--
-- Constraints for table `packagemail`
--
ALTER TABLE `packagemail`
  ADD CONSTRAINT `packagemail_ibfk_1` FOREIGN KEY (`fk_name`) REFERENCES `name` (`nameID`),
  ADD CONSTRAINT `packagemail_ibfk_2` FOREIGN KEY (`fk_address`) REFERENCES `address` (`addressID`),
  ADD CONSTRAINT `packagemail_ibfk_3` FOREIGN KEY (`fk_receiver`) REFERENCES `receiver` (`recID`);

--
-- Constraints for table `pickdropstation`
--
ALTER TABLE `pickdropstation`
  ADD CONSTRAINT `pickdropstation_ibfk_3` FOREIGN KEY (`fk_rec`) REFERENCES `receiver` (`recID`);

--
-- Constraints for table `processfacility`
--
ALTER TABLE `processfacility`
  ADD CONSTRAINT `processfacility_ibfk_1` FOREIGN KEY (`fk_freight`) REFERENCES `packagemail` (`freightID`);

--
-- Constraints for table `receiver`
--
ALTER TABLE `receiver`
  ADD CONSTRAINT `receiver_ibfk_1` FOREIGN KEY (`fk_name`) REFERENCES `name` (`nameID`),
  ADD CONSTRAINT `receiver_ibfk_2` FOREIGN KEY (`fk_address`) REFERENCES `address` (`addressID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
