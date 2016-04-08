-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Host: 127.12.4.130:3306
-- Generation Time: Apr 07, 2016 at 02:24 PM
-- Server version: 5.5.45
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `FamilyTreeDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `ChildrenTable`
--

CREATE TABLE IF NOT EXISTS `ChildrenTable` (
  `Child_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Child_Name` varchar(50) NOT NULL,
  `Child_Gender` varchar(50) NOT NULL,
  `Child_age` int(10) NOT NULL,
  `Parent_ID` int(10) NOT NULL,
  PRIMARY KEY (`Child_ID`),
  KEY `Parent_ID` (`Parent_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=307 ;

--
-- Dumping data for table `ChildrenTable`
--

INSERT INTO `ChildrenTable` (`Child_ID`, `Child_Name`, `Child_Gender`, `Child_age`, `Parent_ID`) VALUES
(300, 'Mark', 'Male', 15, 201),
(301, 'Joseph', 'Male', 9, 201),
(302, 'William', 'Male', 4, 202),
(303, 'Lisa', 'Female', 10, 200),
(304, 'Betty', 'Female', 6, 200),
(305, 'Dona', 'Female', 12, 203),
(306, 'Jeff', 'Male', 2, 200);

-- --------------------------------------------------------

--
-- Table structure for table `FamilyTable`
--

CREATE TABLE IF NOT EXISTS `FamilyTable` (
  `Family_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Family_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Family_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `FamilyTable`
--

INSERT INTO `FamilyTable` (`Family_ID`, `Family_Name`) VALUES
(100, 'F1'),
(101, 'F2'),
(102, 'F3'),
(103, 'F4');

-- --------------------------------------------------------

--
-- Table structure for table `ParentsTable`
--

CREATE TABLE IF NOT EXISTS `ParentsTable` (
  `Parent_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Father_Name` varchar(50) NOT NULL,
  `Mother_Name` varchar(50) NOT NULL,
  `Family_ID` int(10) NOT NULL,
  PRIMARY KEY (`Parent_ID`),
  KEY `Family_ID` (`Family_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

--
-- Dumping data for table `ParentsTable`
--

INSERT INTO `ParentsTable` (`Parent_ID`, `Father_Name`, `Mother_Name`, `Family_ID`) VALUES
(200, 'John', 'Scyndy', 100),
(201, 'Petro', 'Bhavana', 100),
(202, 'Vasu', 'Devi', 101),
(203, 'Bhav', 'Dami', 102),
(204, 'David', 'Ema', 102),
(205, 'Robert', 'Eva', 102);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ChildrenTable`
--
ALTER TABLE `ChildrenTable`
  ADD CONSTRAINT `ChildrenTable_ibfk_1` FOREIGN KEY (`Parent_ID`) REFERENCES `ParentsTable` (`Parent_ID`);

--
-- Constraints for table `ParentsTable`
--
ALTER TABLE `ParentsTable`
  ADD CONSTRAINT `ParentsTable_ibfk_1` FOREIGN KEY (`Family_ID`) REFERENCES `FamilyTable` (`Family_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
