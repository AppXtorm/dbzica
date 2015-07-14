-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: app
-- ------------------------------------------------------
-- Server version	5.6.24-enterprise-commercial-advanced-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `quadra_horario`
--

DROP TABLE IF EXISTS `quadra_horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quadra_horario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quadra_id` bigint(20) NOT NULL,
  `horario_id` int(11) NOT NULL,
  `dia` date NOT NULL,
  `status_horario_quadra` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quadra_id` (`quadra_id`),
  KEY `horario_id` (`horario_id`),
  KEY `status_horario_quadra` (`status_horario_quadra`),
  CONSTRAINT `quadra_horario_ibfk_1` FOREIGN KEY (`quadra_id`) REFERENCES `quadra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `quadra_horario_ibfk_2` FOREIGN KEY (`horario_id`) REFERENCES `horario` (`id`),
  CONSTRAINT `quadra_horario_ibfk_3` FOREIGN KEY (`status_horario_quadra`) REFERENCES `status_horario_quadra` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quadra_horario`
--

LOCK TABLES `quadra_horario` WRITE;
/*!40000 ALTER TABLE `quadra_horario` DISABLE KEYS */;
INSERT INTO `quadra_horario` VALUES (1,1,1,'2015-07-14',4),(3,1,2,'2015-07-14',1),(4,2,1,'2015-07-14',1),(5,2,2,'2015-07-14',1);
/*!40000 ALTER TABLE `quadra_horario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-14 15:59:58
