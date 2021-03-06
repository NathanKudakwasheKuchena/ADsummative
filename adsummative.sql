-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: adsummative
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26 15:48:51

CREATE TABLE `attendance` (
  `CourseID` varchar(245) NOT NULL,
  `Count` int(11) NOT NULL,
  `Presence` tinyint(1) NOT NULL,
  KEY `courseid_idx` (`CourseID`),
  CONSTRAINT `courseid` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `buildings` (
  `BuildingID` varchar(245) NOT NULL,
  `Name` varchar(245) NOT NULL,
  PRIMARY KEY (`BuildingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `cohort` (
  `*CohortID` varchar(45) NOT NULL,
  `Year` int(11) NOT NULL,
  PRIMARY KEY (`*CohortID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `cohort` (
  `*CohortID` varchar(45) NOT NULL,
  `Year` int(11) NOT NULL,
  PRIMARY KEY (`*CohortID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `department` (
  `DepatmentID` varchar(200) NOT NULL,
  `Name` varchar(245) NOT NULL,
  `Head` varchar(245) NOT NULL,
  PRIMARY KEY (`DepatmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `events` (
  `*EventID` int(11) NOT NULL,
  `Name` varchar(245) NOT NULL,
  `Budget` int(11) NOT NULL,
  PRIMARY KEY (`*EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `facilitator` (
  `FacilitatorID` int(11) NOT NULL,
  `Name` varchar(450) NOT NULL,
  `GovtID` varchar(245) NOT NULL,
  `Sex` varchar(45) NOT NULL,
  `Phone` int(245) NOT NULL,
  `Address` varchar(450) NOT NULL,
  `Email` varchar(245) NOT NULL,
  PRIMARY KEY (`FacilitatorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `grades` (
  `StudentID` int(11) NOT NULL,
  `CourseID` varchar(245) NOT NULL,
  `CourseName` varchar(245) NOT NULL,
  `Grade` int(11) NOT NULL,
  KEY `student_idx` (`StudentID`),
  KEY `course_idx` (`CourseID`),
  CONSTRAINT `course` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `majors` (
  `MajorID` int(11) NOT NULL,
  `Name` varchar(245) NOT NULL,
  `Length` int(11) NOT NULL,
  PRIMARY KEY (`MajorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `other_staff` (
  `StaffID` int(11) NOT NULL,
  `Name` varchar(245) NOT NULL,
  `GovtID` varchar(245) NOT NULL,
  `Sex` varchar(45) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(450) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `student` (
  `StudentID` int(11) NOT NULL,
  `Name` varchar(245) NOT NULL,
  `GovtID` varchar(245) NOT NULL,
  `Sex` varchar(45) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(450) NOT NULL,
  `Email` varchar(245) DEFAULT NULL,
  `GPA` int(11) NOT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
