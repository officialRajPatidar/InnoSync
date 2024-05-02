CREATE DATABASE  IF NOT EXISTS `innosync` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `innosync`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: innosync
-- ------------------------------------------------------
-- Server version	8.0.30

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

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL,
  ` createdby` varchar(50) NOT NULL,
  `modifiedby` varchar(50) NOT NULL,
  `createDateTime` timestamp NOT NULL,
  `modifiedDateTime` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'hari','my name is hari','own','self','2023-09-30 16:12:34','2023-09-30 16:12:34'),(2,'om','my name is om','own','self','2023-09-30 16:12:55','2023-09-30 16:12:55'),(3,'ram','my name is ram','','','2023-09-30 16:35:42','2023-09-30 16:35:42');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL,
  `team_name` varchar(45) NOT NULL,
  `stu_name` varchar(45) NOT NULL,
  `stu_rollno` varchar(45) NOT NULL,
  `stu_class` varchar(45) NOT NULL,
  `studentcol` varchar(45) NOT NULL,
  `stu_email` varchar(45) NOT NULL,
  `createdby` varchar(45) NOT NULL,
  `modifiedby` varchar(45) NOT NULL,
  `createdatetime` timestamp NOT NULL,
  `modifieddatetime` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teamName` varchar(45) NOT NULL,
  `teamGuide` varchar(45) NOT NULL,
  `facultyId` int NOT NULL,
  `createdby` varchar(45) NOT NULL,
  `modifiedby` varchar(45) DEFAULT NULL,
  `createdatetime` timestamp NULL DEFAULT NULL,
  `modifieddatetime` timestamp NULL DEFAULT NULL,
  `className` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facultyId_idx` (`facultyId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'1','hari',13,'faculty','faculty','2023-10-16 17:34:35','2023-10-16 17:34:35',''),(2,'innoSync','raj',0,'Faculty','Faculty','2023-10-21 17:39:05','2023-10-21 17:39:05','it-2'),(3,'Flavia Phelps','Rerum ex provident ',13,'Faculty','Faculty','2023-10-19 15:19:30','2023-10-19 15:19:30',''),(4,'Josephine Nieves','Brendan Valentine',13,'Faculty','Faculty','2023-10-21 07:37:09','2023-10-21 07:37:09','It 1'),(5,'Avram Peterson','Ferdinand Clark',13,'Faculty','Faculty','2023-10-21 07:43:15','2023-10-21 07:43:15','It-2'),(39,'Charity Knapp','Sigourney Sanchez',13,'Faculty','Faculty','2023-10-21 16:57:43','2023-10-21 16:57:43','Ds'),(40,'Sydney Woodward','Ratione et cupidatat',13,'Faculty','Faculty','2023-10-21 17:32:21','2023-10-21 17:32:21','IOT'),(41,'Sydney Woodward','Ratione et cupidatat',13,'Faculty','Faculty','2023-10-21 17:33:13','2023-10-21 17:33:13','Iot'),(42,'Sydney Woodward','Ratione et cupidatat',13,'Faculty','Faculty','2023-10-21 17:33:49','2023-10-21 17:33:49','Iot'),(43,'Flavia Phelps','Rerum ex provident ',13,'Faculty','Faculty','2023-10-21 17:34:12','2023-10-21 17:34:12','Iot');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `phoneno` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `roleid` int NOT NULL,
  `createdby` varchar(45) NOT NULL,
  `modifiedby` varchar(45) NOT NULL,
  `createdatetime` timestamp NOT NULL,
  `modifieddatetime` timestamp NOT NULL,
  PRIMARY KEY (`id`,`roleid`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Raj','Patidar','6264859344','raj@gmail.com','raj@','123',1,'Admine','Admine','2023-10-10 17:34:35','2023-10-10 17:34:35'),(2,'Urielle','Mathews','+1 (338) 196-2857','bodim@mailinator.com','vacup','Pa$$w0rd!',2,'Admine','Admine','2023-10-10 17:52:20','2023-10-10 17:52:20'),(3,'Isabella','Alvarez','+1 (671) 933-8283','zyvut@mailinator.com','vuwixaza','dksnk@3#$%',2,'Admine','Admine','2023-10-21 17:15:29','2023-10-21 17:15:29'),(6,'Keelie','Murphy','+1 (224) 384-2918','gunotulasi@mailinator.com','lokohohusa','8645321',2,'Admine','Admine','2023-10-10 17:52:50','2023-10-10 17:52:50'),(7,'mohit ','Herman','+1 (637) 356-5242','cipuwyri@mailinator.com','davykip','xdcf jk',2,'Admine','Admine','2023-10-13 16:09:17','2023-10-13 16:09:17'),(10,'Ghannu','Cohen','+1 (813) 533-8273','qiji@mailinator.com','pyvin','7463',2,'Admine','Admine','2023-10-10 17:34:35','2023-10-10 17:34:35'),(12,'Wyatt','Powers','+1 (397) 534-6956','fykyginyg@mailinator.com','wytysaza','Pa$$w0rd!',2,'Admine','Admine','2023-10-13 16:08:59','2023-10-13 16:08:59'),(13,'Hari ','Mukati','8319171979','hari@gmail.com','hari@','1234',2,'Admine','Admine','2023-10-15 04:32:54','2023-10-15 04:32:54'),(14,'Mona','Farrell','+1 (504) 574-3495','qysuca@mailinator.com','cyhede','Pa$$w0rd!',3,'Admine','Admine','2023-10-28 03:42:03','2023-10-28 03:42:03'),(15,'Ian','Wall','+1 (566) 215-1496','ciholy@mailinator.com','zobef','Pa$$w0rd!',2,'Admine','Admine','2023-10-30 09:01:03','2023-10-30 09:01:03');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-30 21:26:33
