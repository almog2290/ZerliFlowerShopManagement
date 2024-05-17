-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: zerli
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `branchmanager`
--

DROP TABLE IF EXISTS `branchmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branchmanager` (
  `branchmanagerID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  `branchID` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`branchmanagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchmanager`
--

LOCK TABLES `branchmanager` WRITE;
/*!40000 ALTER TABLE `branchmanager` DISABLE KEYS */;
INSERT INTO `branchmanager` VALUES ('11','Joey','Shalev','joey@gmaill.com','0524567890','CONFIRMED',0,'2525'),('16','Aviel','Malayev','aviel@gmaill.com','0546789012','CONFIRMED',0,'5555'),('2','Almog','Madar','madar.almog@gmail.com','0521234567','CONFIRMED',0,'1010');
/*!40000 ALTER TABLE `branchmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branchs`
--

DROP TABLE IF EXISTS `branchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branchs` (
  `branchID` varchar(256) NOT NULL,
  `branchManagerID` varchar(256) NOT NULL,
  `branchName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`branchID`,`branchManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchs`
--

LOCK TABLES `branchs` WRITE;
/*!40000 ALTER TABLE `branchs` DISABLE KEYS */;
INSERT INTO `branchs` VALUES ('1010','2','Karmiel'),('2525','2','Haifa'),('5555','5','Tel_Aviv');
/*!40000 ALTER TABLE `branchs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancelation`
--

DROP TABLE IF EXISTS `cancelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancelation` (
  `CancelationID` int NOT NULL AUTO_INCREMENT,
  `orderID` varchar(256) DEFAULT NULL,
  `customerID` varchar(256) DEFAULT NULL,
  `expectedRefund` double DEFAULT NULL,
  PRIMARY KEY (`CancelationID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelation`
--

LOCK TABLES `cancelation` WRITE;
/*!40000 ALTER TABLE `cancelation` DISABLE KEYS */;
INSERT INTO `cancelation` VALUES (1,'73','1',5),(2,'72','1',5),(10,'75','1',36.1),(11,'75','1',36.1),(12,'74','1',105.87500000000001),(13,'75','1',259.55),(14,'79','1',170.55);
/*!40000 ALTER TABLE `cancelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaints` (
  `complaintID` int NOT NULL AUTO_INCREMENT,
  `customerID` varchar(256) DEFAULT NULL,
  `orderID` varchar(45) DEFAULT NULL,
  `customerserviceID` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `branchID` varchar(256) DEFAULT NULL,
  `complaintOpening` datetime DEFAULT NULL,
  `treatmentUntil` datetime DEFAULT NULL,
  `status` enum('OPEN','CLOSE') DEFAULT NULL,
  PRIMARY KEY (`complaintID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES (1,'7','1','12','delivery was late','1010','2022-05-26 10:36:25','2022-05-27 10:36:25','CLOSE'),(2,'7','1','12','delivery was late','1010','2022-05-26 10:36:25','2022-05-26 10:36:25','CLOSE'),(3,'7','1','12','late','1010','2022-05-27 12:17:45','2022-05-28 12:17:45','CLOSE'),(4,'7','1','12','late3','1010','2022-05-27 12:32:53','2022-05-28 12:32:53','CLOSE'),(5,'7','1','12','fsdf','1010','2022-05-27 12:45:49','2022-05-28 12:45:49','CLOSE'),(6,'7','1','12','fdsfs','1010','2022-05-27 12:47:37','2022-05-28 12:47:37','CLOSE'),(7,'7','1','12','dasd','1010','2022-05-27 12:52:50','2022-05-28 12:52:50','CLOSE'),(8,'7','1','12','dsfsd','1010','2022-05-27 12:55:25','2022-05-28 12:55:25','CLOSE'),(9,'7','1','12','dasd','1010','2022-05-27 13:17:40','2022-05-28 13:17:40','CLOSE'),(10,'7','1','12','sdsad','2525','2022-05-27 13:30:01','2022-05-28 13:30:01','CLOSE'),(11,'7','1','12','dsadas','2525','2022-05-27 13:41:19','2022-05-28 13:41:19','CLOSE'),(12,'7','1','12','adsd','2525','2022-05-26 10:36:25','2022-05-27 10:36:25','CLOSE'),(13,'7','1','12','sdsa','2525','2022-05-27 14:04:35','2022-05-28 14:04:35','CLOSE'),(14,'1','73','12','dasdasd\ndasdasdasda\nasd\nasda\nsd','1010','2022-06-03 13:06:59','2022-06-04 13:06:59','CLOSE'),(15,'72','1','12','cssdsds','1010','2022-06-03 14:31:12','2022-06-04 14:31:12','CLOSE'),(16,'72','1','12','dsadasd','1010','2022-06-03 14:33:07','2022-06-04 14:33:07','CLOSE'),(17,'1','73','12','sdasdasd','1010','2022-06-03 14:40:38','2022-06-04 14:40:38','CLOSE'),(18,'1','73','12','sdasdasd','1010','2022-06-03 14:40:49','2022-06-04 14:40:49','CLOSE'),(19,'1','73','12','jhgyg','1010','2022-06-03 14:46:27','2022-06-04 14:46:27','CLOSE'),(20,'1','73','12','ghjghg','1010','2022-06-03 14:46:39','2022-06-04 14:46:39','CLOSE'),(21,'1','73','12','cssdasd','1010','2022-06-03 14:54:38','2022-06-04 14:54:38','CLOSE'),(22,'1','73','12','dasdasd','1010','2022-06-03 15:04:17','2022-06-04 15:04:17','CLOSE'),(23,'1','72','12','asdasd','1010','2022-06-03 15:10:23','2022-06-04 15:10:23','CLOSE'),(24,'1','73','12','dasdas','1010','2022-06-03 15:17:33','2022-06-04 15:17:33','CLOSE'),(25,'1','1','12','adsad','1010','2022-06-03 15:20:31','2022-06-04 15:20:31','CLOSE'),(26,'1','4','12','dada','1010','2022-06-03 16:10:10','2022-06-04 16:10:10','CLOSE'),(30,'1','74','12','sdasda\ndasdasd','2525','2022-06-03 16:57:58','2022-06-04 16:57:58','CLOSE'),(31,'1','78','12','dasda','2525','2022-06-05 18:29:37','2022-06-06 18:29:37','CLOSE');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditcards`
--

DROP TABLE IF EXISTS `creditcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creditcards` (
  `creditCardNumber` varchar(16) NOT NULL,
  `creditCardCvvCode` varchar(3) DEFAULT NULL,
  `creditCardDateOfExpiration` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`creditCardNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditcards`
--

LOCK TABLES `creditcards` WRITE;
/*!40000 ALTER TABLE `creditcards` DISABLE KEYS */;
INSERT INTO `creditcards` VALUES ('0123456789101112','111','09-2024'),('2345234523452345','666','07-2025'),('3456345634563456','555','04-2028'),('4567456745674567','444','10-2023'),('5678567856785678','333','12-2029'),('6789678967896789','222','05-2027'),('7890789078907890','888','01-2026'),('8901890189018901','999','02-2025');
/*!40000 ALTER TABLE `creditcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN','NOT_FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  `balance` varchar(256) DEFAULT NULL,
  `isNewCustomer` tinyint DEFAULT NULL,
  `creditCardNumber` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('1','Dvir','Bublil','dvirbublil02@gmail.com','0541234567','CONFIRMED',0,'0',0,'0123456789101112'),('18','Alon','Moshe','alon@gmaill.com','0506789012','CONFIRMED',0,'0',0,'6789678967896789'),('20','Liron','Buhbut','liron@gmaill.com','0527890123','FROZEN',0,'0',1,'5678567856785678'),('23','Alin','Migdalovich','alon@gmaill.com','0528901234','CONFIRMED',0,'0',0,'4567456745674567'),('24','Nave','Belosesky','nave@gmaill.com','0508901234','PENDING_APPROVAL',0,'0',1,'3456345634563456'),('26','Lebron','James','lebron@gmaill.com','0529012345','PENDING_APPROVAL',0,'0',1,'7890789078907890'),('27','Steph','Curry','steph@gmaill.com','0509012345','PENDING_APPROVAL',0,'0',1,'8901890189018901'),('7','Naor','Barda','naor@gmaill.com','0543456789','FROZEN',0,'0',1,'2345234523452345');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerservice`
--

DROP TABLE IF EXISTS `customerservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerservice` (
  `customerserviceID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  PRIMARY KEY (`customerserviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerservice`
--

LOCK TABLES `customerservice` WRITE;
/*!40000 ALTER TABLE `customerservice` DISABLE KEYS */;
INSERT INTO `customerservice` VALUES ('13','Yarden','Gabay','yarden@gmaill.com','0545678901','CONFIRMED',0),('14','Shula','Bar','shula@gmaill.com','0525678901','CONFIRMED',0);
/*!40000 ALTER TABLE `customerservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `deliveryID` int NOT NULL AUTO_INCREMENT,
  `orderID` varchar(256) DEFAULT NULL,
  `branchID` varchar(45) DEFAULT NULL,
  `customerID` varchar(256) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `orderDate` varchar(256) DEFAULT NULL,
  `expectedDelivery` varchar(256) DEFAULT NULL,
  `arrivedDate` varchar(256) DEFAULT NULL,
  `receiverName` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `status` enum('WAIT_FOR_MANAGER_APPROVED','READY_TO_GO','ARRIVED') DEFAULT NULL,
  PRIMARY KEY (`deliveryID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (18,'92','2525','1',20.55,'2022-06-07 10:43:52','2022-06-23 16:30:00','','Dvir Bublil','Haztzaim Hifa','0521234567','WAIT_FOR_MANAGER_APPROVED'),(19,'93','1010','1',20.55,'2022-06-07 10:45:03','2022-06-07 13:45:03','','Dvir Bubil','Hatzavim 52\\1 ramat yishay','0524757186','WAIT_FOR_MANAGER_APPROVED'),(20,'96','1010','1',20.55,'2022-06-07 10:52:43','2022-06-30 14:00:00','','Dvir Bublil','Haifa 42/1','0524757899','WAIT_FOR_MANAGER_APPROVED');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryagent`
--

DROP TABLE IF EXISTS `deliveryagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryagent` (
  `deliveryagentID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  `branchID` varchar(256) DEFAULT NULL,
  `ordersID` varchar(6000) DEFAULT NULL,
  PRIMARY KEY (`deliveryagentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryagent`
--

LOCK TABLES `deliveryagent` WRITE;
/*!40000 ALTER TABLE `deliveryagent` DISABLE KEYS */;
INSERT INTO `deliveryagent` VALUES ('21','Omri','Gawi','omrig@gmaill.com','0507890123','CONFIRMED',0,'2525',NULL),('3','Omri','Shalev','shalevomri10@gmail.com','0501234567','CONFIRMED',0,'1010',NULL),('8','Roee','Erez','roee@gmaill.com','0523456789','CONFIRMED',0,'5555',NULL);
/*!40000 ALTER TABLE `deliveryagent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(250) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `userType` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`,`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=31573158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'dvir','dvir1234','customer'),(2,'almog','almog1234','branchmanager'),(3,'omri','omri1234','deliveryagent'),(4,'shir','shir1234','networkmanager'),(5,'mor','mor1234','serviceexpert'),(6,'ran','ran1234','marketingworker'),(7,'naor','naor1234','customer'),(8,'roee','roee1234','deliveryagent'),(9,'kfir','kfir1234','shopworker'),(10,'patrick','patrick1234','shopworker'),(11,'joey','joey1234','branchmanager'),(12,'bob','bob1234','shopworker'),(13,'yarden','yarden1234','customerservice'),(14,'shula','shula1234','customerservice'),(15,'roni','roni1234','shopworker'),(16,'aviel','aviel1234','branchmanager'),(17,'natalie','natalie1234','shopworker'),(18,'alon','alon1234','customer'),(19,'bar','bar1234','shopworker'),(20,'liron','liron1234','customer'),(21,'omrig','omrig1234','deliveryagent'),(22,'alex','alex1234','marketingworker'),(23,'alin','alin1234','customer'),(24,'nave','nave1234','customer'),(25,'lior','lior1234','serviceexpert'),(26,'lebron','lebron1234','customer'),(27,'steph','steph1234','customer');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketingworker`
--

DROP TABLE IF EXISTS `marketingworker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketingworker` (
  `marketingworkerID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  PRIMARY KEY (`marketingworkerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketingworker`
--

LOCK TABLES `marketingworker` WRITE;
/*!40000 ALTER TABLE `marketingworker` DISABLE KEYS */;
INSERT INTO `marketingworker` VALUES ('22','Alex','Kovtonyuk','alex@gmaill.com','0548901234','CONFIRMED',0),('6','Ran','Polac','ran@gmaill.com','0502345678','CONFIRMED',0);
/*!40000 ALTER TABLE `marketingworker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkmanager`
--

DROP TABLE IF EXISTS `networkmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networkmanager` (
  `networkManagerID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  PRIMARY KEY (`networkManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkmanager`
--

LOCK TABLES `networkmanager` WRITE;
/*!40000 ALTER TABLE `networkmanager` DISABLE KEYS */;
INSERT INTO `networkmanager` VALUES ('4','Shir','Cohen','shir.cohen83@gmail.com','0542345678','CONFIRMED',0);
/*!40000 ALTER TABLE `networkmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `customerID` int NOT NULL,
  `branchID` varchar(256) NOT NULL,
  `price` varchar(256) DEFAULT NULL,
  `greetingCard` varchar(256) DEFAULT NULL,
  `status` enum('PENDING','APPROVE','CANCEL','ARRIVED','PENDING_WITH_DELIVERY','PENDING_WITH_IMIDATE_DELIVERY','APPROVE_WITH_IMIDATE_DELIVERY','APPROVE_WITH_DELIVERY','CANCEL_WITH_DELIVERY','TAKEAWAY','CANCEL_ORDER_BY_CUSTOMER','CANCEL_ORDER_DELIVERY_BY_CUSTOMER','DECLINE_ORDER_DELIVERY_CANCELATION','DECLINE_ORDER_CANCELATION','APPROVE_ORDER_DELIVERY_CANCELATION','APPROVE_ORDER_CANCELATION') DEFAULT NULL,
  `orderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expectedDelivery` datetime DEFAULT NULL,
  PRIMARY KEY (`orderID`,`customerID`,`branchID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (92,1,'2525','107.55','','PENDING_WITH_DELIVERY','2022-06-07 10:43:52','2022-06-23 16:30:00'),(93,1,'1010','430.55','','PENDING_WITH_IMIDATE_DELIVERY','2022-06-07 10:45:03','2022-06-07 13:45:03'),(94,18,'1010','197.52','THANKS ALOT','PENDING','2022-06-07 10:46:37','2022-06-07 10:46:37'),(95,23,'5555','273.6','Thanks ','PENDING','2022-06-07 10:51:01','2022-06-07 10:51:01'),(96,1,'1010','215.55','','PENDING_WITH_DELIVERY','2022-06-07 10:52:43','2022-06-30 14:00:00'),(97,1,'5555','54.9','','PENDING','2022-06-07 11:07:10','2022-06-07 11:07:10');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` varchar(256) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `backGroundColor` varchar(256) DEFAULT NULL,
  `picture` varchar(256) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `itemType` varchar(256) DEFAULT NULL,
  `dominateColor` varchar(256) DEFAULT NULL,
  `isOnSale` tinyint DEFAULT NULL,
  `fixPrice` double DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('1','Rose Bouquet',199,'920000','/javafx_images/Catalog/roseBouquet.jpg',100,'Product','Red',1,185),('10','Casual Bouquet',54.9,'8588A1','/javafx_images/Catalog/casualBouquet.jpg',100,'Product','UNDEFINED',0,0),('11','Colorful Bouquet',100,'F9B94E','/javafx_images/Catalog/colorfulBouquet.jpg',100,'Product','UNDEFINED',0,0),('12','Holiday Bouquet',150,'980204','/javafx_images/Catalog/holidayBouquet.jpg',100,'Product','UNDEFINED',0,0),('13','Bazil Plant',50,'3E684E','/javafx_images/Catalog/bazilPlant.jpg',100,'Item','Green',0,0),('14','Blue Rose',15,'05108E','/javafx_images/Catalog/blueRose.jpg',100,'Item','Blue',0,0),('15','Cutton Branch',20,'A96B5C','/javafx_images/Catalog/cuttonBranch.jpg',100,'Item','White',0,0),('16','Pampas Branch',22,'B29175','/javafx_images/Catalog/pampasBranch.jpg',100,'Item','Brown',0,0),('17','Pink Tulip',15,'A66A9E','/javafx_images/Catalog/pinkTulip.jpg',100,'Item','Pink',1,10),('18','Red Rose',15,'920000','/javafx_images/Catalog/redRose.jpg',100,'Item','Red',0,0),('19','White Tulip',15,'5F6C36','/javafx_images/Catalog/whiteTulip.jpg',100,'Item','White',1,12),('20','Yellow Tulip',15,'EECB00','/javafx_images/Catalog/yellowTulip.jpg',100,'Item','Yellow',0,0),('8','Birth Bouquet',180,'D090AC','/javafx_images/Catalog/birthdayBouquet.jpg',100,'Product','UNDEFINED',1,172),('9','Bride Bouquet',320,'E58C72','/javafx_images/Catalog/brideBouquet.jpeg',100,'Product','Pink',0,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productinbranch`
--

DROP TABLE IF EXISTS `productinbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productinbranch` (
  `branchID` varchar(256) NOT NULL,
  `productID` varchar(256) NOT NULL,
  `quantity` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`branchID`,`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productinbranch`
--

LOCK TABLES `productinbranch` WRITE;
/*!40000 ALTER TABLE `productinbranch` DISABLE KEYS */;
INSERT INTO `productinbranch` VALUES ('1010','1','47'),('1010','10','33'),('1010','11','33'),('1010','12','33'),('1010','13','33'),('1010','14','33'),('1010','15','33'),('1010','16','33'),('1010','17','33'),('1010','18','33'),('1010','19','33'),('1010','20','33'),('1010','8','33'),('1010','9','33'),('2525','1','33'),('2525','10','33'),('2525','11','33'),('2525','12','33'),('2525','13','33'),('2525','14','33'),('2525','15','33'),('2525','16','33'),('2525','17','33'),('2525','18','33'),('2525','19','33'),('2525','20','33'),('2525','8','33'),('2525','9','33'),('5555','1','33'),('5555','10','33'),('5555','11','33'),('5555','12','33'),('5555','13','33'),('5555','14','33'),('5555','15','33'),('5555','16','33'),('5555','17','33'),('5555','18','33'),('5555','19','33'),('5555','20','33'),('5555','8','33'),('5555','9','33');
/*!40000 ALTER TABLE `productinbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productinorder`
--

DROP TABLE IF EXISTS `productinorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productinorder` (
  `productID` varchar(255) NOT NULL,
  `orderID` varchar(255) NOT NULL,
  `nameOfproduct` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `backGroundColor` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `itemType` varchar(255) DEFAULT NULL,
  `dominateColor` varchar(255) DEFAULT NULL,
  `productQuantityInOrder` varchar(255) DEFAULT NULL,
  `nameOfItem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productID`,`orderID`,`nameOfproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productinorder`
--

LOCK TABLES `productinorder` WRITE;
/*!40000 ALTER TABLE `productinorder` DISABLE KEYS */;
INSERT INTO `productinorder` VALUES ('1','93','Regular','185.0','920000','/javafx_images/Catalog/roseBouquet.jpg','100','Product','Red','2','Rose Bouquet'),('1','96','Regular','185.0','920000','/javafx_images/Catalog/roseBouquet.jpg','100','Product','Red','1','Rose Bouquet'),('10','94','Regular','54.9','8588A1','/javafx_images/Catalog/casualBouquet.jpg','100','Product','UNDEFINED','1','Casual Bouquet'),('10','97','Regular','54.9','8588A1','/javafx_images/Catalog/casualBouquet.jpg','100','Product','UNDEFINED','1','Casual Bouquet'),('11','95','WALLA','100.0','F9B94E','/javafx_images/Catalog/colorfulBouquet.jpg','100','Product','UNDEFINED','1','Colorful Bouquet'),('12','94','Regular','150.0','980204','/javafx_images/Catalog/holidayBouquet.jpg','100','Product','UNDEFINED','1','Holiday Bouquet'),('13','92','Regular','50.0','3E684E','/javafx_images/Catalog/bazilPlant.jpg','100','Item','Green','1','Bazil Plant'),('14','92','Regular','15.0','05108E','/javafx_images/Catalog/blueRose.jpg','100','Item','Blue','1','Blue Rose'),('14','94','ALON','15.0','05108E','/javafx_images/Catalog/blueRose.jpg','100','Item','Blue','1','Blue Rose'),('14','95','WALLA','15.0','05108E','/javafx_images/Catalog/blueRose.jpg','100','Item','Blue','2','Blue Rose'),('15','95','WALLA','20.0','A96B5C','/javafx_images/Catalog/cuttonBranch.jpg','100','Item','White','2','Cutton Branch'),('16','92','Regular','22.0','B29175','/javafx_images/Catalog/pampasBranch.jpg','100','Item','Brown','1','Pampas Branch'),('17','93','ALMOG','10.0','A66A9E','/javafx_images/Catalog/pinkTulip.jpg','100','Item','Pink','1','Pink Tulip'),('17','96','Regular','10.0','A66A9E','/javafx_images/Catalog/pinkTulip.jpg','100','Item','Pink','1','Pink Tulip'),('18','93','ALMOG','15.0','920000','/javafx_images/Catalog/redRose.jpg','100','Item','Red','1','Red Rose'),('19','94','ALON','12.0','5F6C36','/javafx_images/Catalog/whiteTulip.jpg','100','Item','White','1','White Tulip'),('20','93','ALMOG','15.0','EECB00','/javafx_images/Catalog/yellowTulip.jpg','100','Item','Yellow','1','Yellow Tulip'),('20','94','ALON','15.0','EECB00','/javafx_images/Catalog/yellowTulip.jpg','100','Item','Yellow','1','Yellow Tulip'),('8','95','Regular','172.0','D090AC','/javafx_images/Catalog/birthdayBouquet.jpg','100','Product','UNDEFINED','1','Birth Bouquet');
/*!40000 ALTER TABLE `productinorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refunds`
--

DROP TABLE IF EXISTS `refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refunds` (
  `refundID` int NOT NULL AUTO_INCREMENT,
  `orderID` varchar(256) DEFAULT NULL,
  `customerID` varchar(256) DEFAULT NULL,
  `ammount` varchar(256) DEFAULT NULL,
  `reason` enum('Cancelation','Complaint','Delivery') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`refundID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refunds`
--

LOCK TABLES `refunds` WRITE;
/*!40000 ALTER TABLE `refunds` DISABLE KEYS */;
INSERT INTO `refunds` VALUES (1,'59','1','226.5','Delivery','2022-06-05 20:57:02'),(2,'72','1','12','Complaint','2022-06-05 18:30:25'),(3,'72','1','12','Complaint','2022-06-05 18:31:22'),(4,'74','1','12','Complaint','2022-06-05 18:31:22'),(5,'4','1','12','Complaint','2022-06-05 18:34:22'),(6,'90','1','20.55','Delivery','2022-06-07 12:57:05');
/*!40000 ALTER TABLE `refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `reportID` int NOT NULL AUTO_INCREMENT,
  `reportType` enum('ORDERS','INCOME','SPEICEL','SURVEY','COMPLAINTS') DEFAULT NULL,
  `branchID` varchar(256) DEFAULT NULL,
  `reportCreator` varchar(256) DEFAULT NULL,
  `reportDuration` enum('MONTHLY','QUARTERLY') DEFAULT NULL,
  `reportFile` blob,
  `reportDate` date DEFAULT NULL,
  PRIMARY KEY (`reportID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (2,'ORDERS','2525','System','MONTHLY',_binary '2525 Haifa 05\nProduct 5 Rose Bouquet\nItem 7 Cactus Flower\nProduct 15 Sun Bouquet\nItem 3 Bazil Plant\nProduct 7 Colorful Bouquet\nProduct 10 Holiday Bouqet\nItem 20 Pink Tulip\nProduct 14 Casual Bouquet\nProduct 17 Birth Bouquet\nItem 23 Bride Bouquet','2022-05-26'),(3,'INCOME','2525','System','MONTHLY',_binary '2525 Haifa 05\nproduct 12 4 23.3\nitem 6 3 23.3\nproduct 5 4 23.3\nitem 9 3 4\nproduct 1 4 12\nitem 2 5 53\nproduct 10 18 20\nitem 24 3 14\nproduct 26 14 2.3\nitem 14 10 2\nproduct 7 1 14\nitem 5 2 53\nitem 3 7 2','2022-05-26'),(16,'INCOME','2525','System','QUARTERLY',_binary '2525 Haifa 2 2022\nmonth1 item 12 12 23.3\nmonth1 item 1 4 5\nmonth1 item 2 12 25.3\nmonth1 item 15 2 4\nmonth1 item 4 23 23.3\nmonth1 item 16 4 5\nmonth1 item 3 3 25.3\nmonth1 item 25 14 4\nmonth1 item 25 12 23.3\nmonth1 item 1 23 5\nmonth1 item 2 3 25.3\nmonth1 item 15 2 4\nmonth2 product 1 4 1.3\nmonth2 product 5 8 63\nmonth2 product 14 6 15.3\nmonth2 product 25 3 1.3\nmonth2 product 20 2 63\nmonth2 product 1 15 15.3\nmonth2 product 4 15 1.3\nmonth2 product 23 23 63\nmonth2 product 18 12 15.3\nmonth3 item 2 4 34\nmonth3 item 8 6 4\nmonth3 item 15 2 67\nmonth3 item 14 5 5\nmonth3 item 2 6 67\nmonth3 item 3 5 5','2022-06-27'),(17,'INCOME','2525','System','QUARTERLY',_binary '2525 Haifa 1 2022\nmonth1 item 4 12 24\nmonth1 item 8 4 65\nmonth1 item 3 3 22\nmonth1 item 15 2 4\nmonth2 product 12 4 1.3\nmonth2 product 13 8 63\nmonth2 product 14 6 15.3\nmonth3 item 8 34 6\nmonth3 item 12 2 4\nmonth3 item 19 1 67\nmonth3 item 3 4 5\nmonth3 item 8 0 0','2022-03-27'),(20,'SURVEY','2525','Service Expert','QUARTERLY',_binary '%PDF-1.4\n%\â\ã\Ï\Ó\n1 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/Length 182/ColorSpace/DeviceGray/BitsPerComponent 8/Filter/FlateDecode>>stream\nxœ\íÁ1\0\0\0Â ş©g	O \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€‡—\á\nendstream\nendobj\n2 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/SMask 1 0 R/Length 9426/ColorSpace/DeviceRGB/BitsPerComponent 8/Filter/FlateDecode>>stream\nxœ\í\í“E€ÿô?X\İúñ\"¿Ş®\Ê\ËlpºA.wp\r\êD8òv\ÜuÔ½Q”·™axÑ™FœQ^Vñ<\\‘u\Ô;<yu_ƒ\à~\İI\çdWw\×twUeV\Ö<¿xb¢;»º:s*+ŸÎ¬\ê\Ì[·¢Æ•ñ\ë~ü\éÁc\';{®ß²\ç\éõ[Ÿlk¬uıŠ5/\0\0€wH.Í¸4\æÒ¤K\Ã.Í»4ò\Ò\ÔG\ÖE\ãqş\Â7C£\ïut÷µ<»1·z\0\0di\ê¥Á—f_\Zk¢¹yó\æ\é\Î\í\Ø7ˆh\0\0¦ \Òø‹D¢ƒDusúÌ¹\Í=œ—\0\0œ#:)$\áš/¾üjg\ß\á\ÇZ\×;/#\0\0¤‘‚¨A£nFN}\Øör§ó¢\0@\nAˆ&¢»\æ\Û\ë7z­\\ó‚ó\0@jMˆ,D\r\ë\æ\Â\Å\Ë\Ûöö;/\0\0x(C\ÄÑ€n\Î_¸\Ø\Ñ\İ\ç<ÿ\0\0\à\"\ÑG½½t\0\0\r ú¨½§ó\íõ¦\0@ÃˆDj¼¦\Ó;p\Ìyn\0ÀkD%“\êf\äÔ‡\îL›¿`QS!\Ô\Ó\ÅËš\ÕÓ…¿\\bnV1\0\0Ò¨$ü–\é/¾ü\Ê\Â\ïn–=Õ¶´¹U,Y¹J\\“+G¥˜<ò\èr\ÙÀ|\0\0\0!B	ùq\èÎ¾\Ã63£#N\r^•~z 2’\rœÿ\ë\0\0 ^D+usú\Ì9›“Øˆbôp™E\r ))ô«¦qF«\ÇX!º{ó÷<\Èß±bBJ])/n\Ù}\êıÒ“Ÿ„R¤ŒR\Òô\ä‡¯S\ÔÓŠˆV\Ê\ç^»yó¦\Í):¥w£»0&’¨;;f\Ç4QE\Ä8\Ö2_‘Á£#rşºÍƒ¤j9\ÏC\Ò\Èq”£\é<IC\Íé¯±\"—À,Ó§?:g\í\ÓCF\ÉL\r™\×qÊ¯òÀ8v\àü\Í\Ô\Ø\Ì\àEÅ˜\ÆÙ±o\Ğ\ÚG‹GšŠ¡£o]SŠ‘§J1*±–‹8ÎóÒ–İ¿^ûŠ\Û<X ¤\ïœ\ä8¾4šbjlfğ¢ÆŠb´n\Î_øÆ»\å\Õö0qn\0\0¨†(F¯:4úóü\Ô\Ëo^x\ÕÄ¹qøÆ˜¼ø\Æjlfğ¥ÆŠh”q20…šs\ã0*¼563øRcE4¢›+\ã×½R+\ãØó73Pc3ƒ/5VD#ºùğ\ãO\ç¤\Övtš`;pşf\ç5viË†ÿ\ŞY «\İ%\ä;CXXBbK\ÏŠ\'^\r\ßOşƒ&>\ÚÌ’\Êm\çC\Âòš_µlp{(=ª±¢›ƒ\ÇN:\ÏFt\í\é3qnF\Å3ƒ/£\âq^c^±mÆœc3\æ¼=cn™sGŠŒÎœ\'¼£˜5\ï\İ<M\Âqƒ\îû\Å\ÉRN•Q²AùŒ\ç?®˜É‰Ê•\Ê\ç±Bßš1gX˜>û¨°h\ÅV·‡Ò£\Z+º\é\ì=\è<\Ñqn\0¨Œ3İ¬ß²\Çy6¢\ã\Ü8Î¿1Ú>Nfp^c1N\\xTcE7O¯÷R\Ğ-mLœ\Çù¨¸¸“œ\×XŒ\ÕX\ÑÍ“m\íÎ³\Ñ\0‡†š`;`œ\Ì\à¼\Æbœ¸ğ¨ÆŠnl\Î\Ç\'38¯±\'.<ª±¢›É¯øi\ç\Æq>*n®\ãd\ç5\ãÄ…G5Vtƒq\0À>g\n\â¯q\Ò6“§óoŒ\ë\ÛrŸl¼G8\×q›?\n›\îù´\È\Ø\æ\Û|&¼r\Ï\çy\î\Õ|!¼\Z\äl¹÷r\Ï?\Ë\ßõ…±[A>\ë³\âGK6$K,dï“|n\Ï\n\í÷|\Ü~\Ï„\r÷|´\áÉ¹=”}cŒ‚ó\Z;EŒó\ë{~÷³Á\"…ÿø¹pHñŸy+\Öş|(\Ïı¬»ÿH/\ÜTñ\Òomœ3¢‡¿E˜\ØÿÏ‡Š­2sğwB!Ÿ\Ïÿl @ÿsy\Ş|öŸ„7b9\èş\Z\'m3y:\ßüÜ£×·Lûnk¾ß–\çaû?øÓ<.ğ—\Î	şª\èš\ào]wN\Ğ}\ç\ßËDsó½joz\ç\î\Ìœ|®d@ròı¶<7¶\Ş!ù”ß¾:mü\Õi\×^™vU\Ø<­\ã\ÙG\İJFÅ£\à¼\ÆN\ã<3·oıŒc/\Îx[ñ\ÒÌ‘£\Â\Ëy\Ş6³\Ş\Úó7\Ù8\ë\Ä÷•\Ğq\ßÉŠ”lf¼=°gõ‰…\äs¢2ö\âL\É\ä±õy\Şz!\Ïğº\éG…µÓ\Är\Ğ]G/ˆ£.^\Öl®£X\ÚÜª—Ñ™t‡\ã\ÄÆ±\ÆÁ8vXöT›ZpMü¢–“Ö¢1\×\0­e±i\r\ÆÁ8qq\ì€q0e´q4¦q\äU³Ë£\èØ¾»\"bœ\î\Ş~\áùöN\ÙLşª§\ÖRŒ\ì\ïrõ\é\Âğ®5\Ù0\ÎŞO¸úª”_¯}egï€«O·–\"e”’:\ÌOfŒ³bõŞ’®{h 3\Æ	9¦\êiš#=…¿\\b¦\ÈSI4£†\Ô\Ì\ÍRk\ç)‡¿R0Æ±†\Ø\Ä\ì\Îb5\ÔV\Î#./\ï\ìp>ª\æü\ÎF\Õ\â‚{\Õ\ì\ã0ªV;NŒ#f‰˜)û«\ÉH\ã\Ü8\ÎG\Å1N\\p\Ç\ã\ØA—I(\×4!r‘De%•Ğ“‚»£`œ¸À8vÀ8\Ç#\ÒöP\ç\ç/Æ‰ŒcŒƒqüÅ¹qœŠcœ¸\à:0\Æñ\ç\Æq\Æ¿À8\Ç_œ\Çù7FŒôq\ì€q0G°\"[\0Œ\\Ç±\ÆÁ8Áª\Ó0N\\`;`Œ\ã/\ã\ÄÆ±\ÆÁ8ş\â\Ü8\ÎG\Å1N\\p\Ç\ãxD×>\ç\Æq\Æ¿À8\Ç#\Övtš87óoŒ\'.\è\ã\Ø\ã`qn\ç£\â\'.¸cŒƒqü\ã`œ¸À8vÀ8\Ç#˜\É3\0Æ‰ŒcŒƒq<\"m3y:\Ç8qÁu;`Œcù©•\ÔÓ¥Í­\êi`\êò5@«\á\Ü8\ÎÁ8\à\ã\Øa\ÙSmj…µ%+W)Åˆ€\Ôz\ÓúA\ÎXú“5@k\ã\Ä};`ŒceQŒ\î\Å\ÈS-½0hùš¡\å87óQqŒ\\Ç±\ÆÁ86Ñ¢‘Z(¦q´†L\ãŒV±Bt÷ö\Ëfòw¬S$\å\Ë›³aœ#=kBJºzxõ\ì\×f\Ï\î›=§oN\×\È3÷ÀÜ¹oys\î¼7\ç\å\é/e`‚¦¦«`lc¾=¸\ç7\çÉ‡ªOWùQy“¬\æymöƒû\Ì\Óû\à½<°\ï\çõ\ç\Ôûˆq\Ö\Ş\Ì§u\í`HI7.>’\ã„Sõ4µ\Æ­\è.L £\Ür¥}œÀõr\è\ãL‘>Î‚­K²a·\Õ5\r563Æ¡S;NŒS>Jf^\ÇÑ‰\æu­¡j87óQqŒƒqüª±\ã\ØA<\ÒT¥}¯šRŒ$*Å¨\ÄI/\â\äR`\ç`Œ\ã\ãx¿\Ç	€q0_5\ã``Î\0\ãøUc1\ÆñŒƒq0_5\ã`Á8\ãøUc1\Æñ\Ö\Ç	€q0_5\ã``\r\Ğ\0\ãø\ÆÁ8ş\â\Ü8Î¿1bŒ\ãW\Å8\Ç_œ\Çù¨8\ÆÁ8~\ÕXŒƒq<¢¥mƒ	\ÆÁ8Ç¯\Z‹q0G\Z:j‚q0\Æñ«\ÆbŒ\ã/Î\ã|T\ã`¿j,\ÆÁ8ş\â\Ü8\ÎÁ8\Ç/0\Æñ\ç\Æqş\ã`¿j,\ÆÁ8‘¶™<ŠcŒ\ãW\Å8\Ç#˜\É3\0\ÆÁ8~\ÕXŒƒql²d\å*µğÍ²§ÚšŒĞ«N\ëEs$&\İ\ÆÁ8Ç¯\Z‹q05\æ/X$”/µ¦—Ÿ\ÎÕ¶Ø´Æ¹qœŠcŒ\ãW\Å8\Ç&\åkO‹_\ÌÕ¥¥³£û;š\í»+\"\Æ\é\î\ío\ï”\Í\ä¯z:uR†w­É†qön|\"¤¤\Ë÷?\rã¤­ş\ØOÉŒqV¬\ŞR\Òu\rd\Æ8!\ÇT=õ\Ë8jj\Ó8jH\Í\ìø¤\Ö8ƒGFö÷aŒ\ã‹qvöH\ã`œ©iœŠ=\Z…lV\í%óQ5\ç£âŒªùe·\Õ5\r563\ÆaT­v\Òc\é\È,{ª­â–²™9\ÚVŒƒq0_5\ã`›Œc©\Écõª\ZU+¿Á \Ç\İ\Ñe`Œ\ãW\Å8\Ç#\ÒöP\çwş`Œ\ãW\Å8\Ç_œ\Ç9\ãø\ÆÁ8ş\â\Ü8Î¿1bŒ\ãW\Å8\Ç_œ\Çù¨8\ÆÁ8~\ÕXŒƒq<‚\Ù`Œ\ãW\Å8§1¿U\Z—Fº’®®¬:\0\ã`¿j,\ÆÁ8u³o¬¢_”ƒ\Î\ì³W{\Çù¨8\ÆÁ8~\ÕXŒƒq\êd\à\ÌÙ\rvœ\Ûa«ö:7s0\ÆñŒƒq\ê¤k\èJIGf\ÇY5¨6>Ôxu\í\Ú\Óg\â\Ü8Î¿1bŒ\ãW\Å8§N\Î\\9õ\\ñi~$Muy\ÚO]2\ÒbmG§‰s\ã8\Ç8Ç¯\Z‹q0N˜\Æ8sK¡I\ß\Ç\Şxš\ã`Œ\ãW\Å8§^vœ½=€¶\ã¬yÿ\0\Æq\0\ÆÁ8~\ÕXŒƒq\êGº6…0n!\È¯%?ª–¶™<ŠcŒ\ãW\Å8\Ç#\Ò6“§s0\ÆñŒƒql²d\å*½Á\âe\Íjas¹O¡bbEœ\Çù7FŒƒqüª±\ã\Ä\Ä\ä\×q\æ/X$˜\Æ)_sM/ı\É\Z µ€q0_5\ã`œ˜¨\é\ÎsE6yP¾\0¨^£-°v[E0\ÆÁ8~\ÕXŒƒqb¢\ã¨4\é\ì\è\rô`š¹\åhõ+Dwo¿l&ÇŠ1ER¾<±9\Æ9Ò³&¤¤«‡Wg\Ã8\Î\ëÏ©÷?\ã8¬½™1N\ë\ÚÁ’n\\|$3\Æ	9¦\êi\Â\Æ)Ş¨V!\ê3Fú5º³cöqLU\Äy\Çù¨8}¿Œã¶º¦¡\Æf\Æ8ôqj\Ç\áÕŒ£›\×qÊ¯òpn\ç`Œ\ã\ã\Ø\Ä4ˆFª)\Å\ÈS¥•8\éEœ\\\nŒ\ãü#\ÆÁ8~\ÕXŒƒq\ê$Ò¨ZD\Òö{\ç\×a1\Æñ«\ÆbŒ\ãi›sÀùù‹q0_5\ã`œ:a}œ	œŸ¿\ãøUc1Æ©\Ö\0-\â|T\ã`¿j,\ÆÁ8¡übF¹ƒb\'m\ë\ã8\ã`¿À8\Ç#X4\0\ÆÁ8~\ÕXŒƒqüÅ¹qœŠcŒ\ãW\Å8\Ç_0\ÆÁ8~\ÕXŒƒq<¢¥mƒ	\ÆÁ8Ç¯\Z‹q0N£œ)Yô\ÓÆªÓ‡†š87óQqŒƒqüª±\ã4JÀ8g’Ÿs €s\ã8\ã`¿À8§vœ­4\ÉM\è/C“À¹qœc\Ä8Ç¯\Z‹q0N£ú8pn\ç£\â\ãøUc1\Æñfò€q0_5\ã`œ\Æ)Lwcs\îhfò€q0_5\ã`œF8sk|¨½¾w-Y¹J/|³xYsS!\Ôú8Š¥Í­MÅ˜toÎ\ã|T\ã`¿j,\ÆÁ8R÷uœù	\Ú8Z4\æ\Z µ,6­qn\ç`Œ\ã\ã4\Ìs#\ãõ\Î=\éªÓ¢!³Ë£\èØ¾»\"bœ\î\Ş~\áùöN\ÙLşª§\ÖRŒ\ì\ïrõ\é\Âğ®5\Ù0\ÎŞO„”tùşÇ³a‡uU±³w@ú8®>]g\Æ8+V\ï\r)éº‡2cœcª\Ú2Nùb “_\Ç)7\Î\Â_.YöT›i5¤&\é\é7Î©÷?\é`Œ\ã‹q½{ò\Å-»1\Æñ\Ğ80˜ER*n)›•wv8Us~–Q5¿Œã¶º¦¡\Æf\Æ8Œª\ÕNJŒc¦•#›U“‘\ã`Œ\ãW\Å8§Q¢ª5!\é\" õªJ)¿Ü“K\ß\İ\Ñ\Î\ïüÁ8Y2Î¿<³irÚ„\Í\ÕX2­\Û^{\â¥\îğmª\ì<$Wy~{›_=½!¤Œ\ã\ÄÃ¾1k€¦\í \ÎÁ8Y2\ÎôÇ¦\ïx{zg#3º£3º\ï\ä\Ùù\ÎÌ\ï\æ\é9np\"Ï®	f\í:9ÁnÅ©RN–l³\ë¤ùö\Âı>±\Ñ|~$W#ù|\æ3|lúö·¦oşq\ÛQ\áş—{CÊˆq0NLØ˜;:€s\ã\Ğ\ÇÁ8ã”ƒqL1Nû©KSo\îh\ç£\â\ã`Œ35Œ¼S\ïos¢ƒq0\ÆÁ8gj\Çi[‘\r\ã`Œƒq\ÊÁ8&ş\Z\'m«Ns\ã`ŒS\Æ1‰\Ï8\ÆÀš‹µrœ\Ç9\ã`Œ35Œ\Ó5tÅ˜;ºı\Ô%\ë\Òqnú8\ã`œr0I2sGÛ¸;ºkOŸI¸qı\ël\ÅaÅ¿\åú·9š#šes–1\Ê[\Æ~û\è\é\'¾ºeùÕ‡³Q\ÈX1«KgX:{\ëŠ%!e\Ä8\ã`œ©aQŒqÚ¾1kk;:MÂsiÁ]—\ïºR\àjk‹\îVŒøVxø\î\ëß•qã‘Ÿø¾”ò\r{0÷/7~;ùü¨¼I>%\Ã\ß¸ø\ĞO¾.ğ\Õ?ÿdx\É\ÏBÊˆq0\ÆÁ8S\Ã8\ëJo¶ıcœ\Üd£j\ã`Œƒq2d\Ç`Œƒq0Æ™*\Æ\Ù7V\ïL©k&OŒƒq0\ÆÁ8Y1\ÎÀ\ë#iu\Í\ä‰q0\ÆÁ8\';Æ©ÿV%+W\ée–6·ª…	/k6·Q‰\æ\Z \ÕÀ8\ã`Œ35Œ³n\Ç\Ùú\æR›¿`‘`®È¦Ö›\Ör\ÆÒŸ\Ñ\×\0\Å8\ã`Œ“\ã4pG¯\È&ŠÑ½\é\ãh¹\è…A\ëScŒƒq0Æ™\Â\Æ8sË˜s 6L\ãh¡˜\Æ\Ñ\Z23Z=\Æ\n\Ñ\İ\Û/›\Éß±b\È\ã\Ì\'P.³¤_Øœ\r\ã\éYS~u\Ê\ê\á\Õ\Ù0NµºªR²aœo9+3cœÖµƒ\Õ\ÎJ‰‹d\Æ8!\ízj\Ï8õ_Ç©\ÖÇ‘tõ\Ø\ì\ã®\ï”C‡>_\Æ	¯\Ï\Ù0}œ}œDŒ³î¹‘±†û8¹\Ò\ë8zó:\ÖP50\ÆÁ8\ãL\r\ãWd«\ë:NÎ¸WM)F¼££\'½ˆƒq0\ÆÁ8g\Ê\Çü\'\0\ÆÁ8\ãLE\ã\ä\ï[c\ÎŒƒq0\ÆÁ8\É\'?ƒt!\ê¾o-:\ã`Œƒq¦‚qW¦¹te¼®ß\Æ\ÆÁ8\ã`œL§x\ÃÀÙ\\Q=ÖŒ\Ãú80\ÆÁ8g*\ç\ÒHWÎºq\êZ\ã`Œƒq0\çÆ¹MqTmü\ÌYF\Õ0\ÆÁ8gŒc’Ì¬Šq0\ÆÁ8y0‰¿wG·´m0Á8\ã`Œ3c…CCGM0\ÆÁ8\ã`;`Œƒq0\ÆÁ8vÀ8\ã`Œƒq\ì€q0\ÆÁ8\ã$3yÀ8\ã`Œ“\Ì\ä\0\ã`Œƒq0Î¤,^\Ö\ÜdDyº^!4Œƒq0\ÆÁ8§v«K›+PO\n\ÆÁ8\ã`ŒS;¾\Ì#.WKQ›tl\ß]1Nwo¿ğ|{§l&\ÕS•’\ã\Êe–tx×šlg\ï\Æ\'Ê NY¾ÿñl§Z]U)\Ù0\Î\Ã]‡C\Î\Ê\Ìg\Å\ê½\Õ\ÎJa\İC™1NHû£zdœ%+W™e5ªf¦cŒƒq0\ÆÁ8	¹X3Á¢ò\ÎN\0F\ÕUó\Ë8\áõ9\ÆaT-Ç¨Z))1%\Ü8“\î\ã`Œƒq0Æ©sHM\ì£\îXÑ¨Q5yµü-\Ü\0\ã`Œƒq0NBğ\Ğ\0\ã`Œƒq\ì€q0\ÆÁ8\ã\Ø\ã`Œƒq0Æ±\ÆÁ8\ã`Œ“¬\È\0\ã`Œƒq0NB°\êt\0Œƒq0\ÆÁ8vÀ8\ã`Œƒq\ì€q0\ÆÁ8\ã$D×>Œƒq0\ÆÁ8\'!\Övtš`Œƒq0\ÆÁ8vÀ8\ã`Œƒq\ì€q0\ÆÁ8\ã$3yÀ8\ã`Œ“\Ì\ä\0\ã`Œƒq0N-T\\˜`is«J¬\rZŒƒq0\ÆÁ8§*.Ç¦—şd\rPŒ£Á8\ã`œˆ”\Ç\\Tú8e3Á8\ã`Œƒqj¡©º/#yty®\Ì8£\Õc¬İ½ı²™ü+†<ÎŒq\å2Kú\å‰\Í\Ù0Î‘5\åGP§¬^\r\ãT««*%\ÆYñ\Æñ³23\Æi];X\í¬”Ø¸øHfŒ\Òş¨§¾G±´¹U÷k}y)ü½ôq\è\ãøeœğúœ\r\ã\Ğ\Ç\É\Ñ\ÇI·qt¿&Wzg\Ò÷bŒƒq0\ÆÁ8“¢\ïI“\Èz7\êNŸô\"N\ã`Œƒq0\ÆI~\0\ã`Œƒq0NB0\ç@\0Œƒq0\ÆÁ8vÀ8\ã`Œƒq\ì€q0\ÆÁ8\ã$\ë\ãÀ8\ã`Œ“¬\Z\0\ã`Œƒq00\ÆÁ8\ã`;`Œƒq0\ÆÁ8	\ÑÒ¶Á\ã`Œƒq0\ÆIˆCCGM0\ÆÁ8\ã`;`Œƒq0\ÆÁ8vÀ8\ã`Œƒq\ì€q0\ÆÁ8\ã$3yÀ8\ã`Œ“\Ì\ä\0\ã`Œƒq0N-\Ì_°¨©f\â\âe\Í*Q/\Z\ÆÁ8\ã`Œ3)ËjS‹J/Y¹J,£\ÓkYlZƒq0\ÆÁ8\ã\ÔNÀ8<º\\­:mÒ±}wE\Ä8İ½ı\Âóí²™üUOUJfŒ(—Y\Ò\á]k²aœ½Ÿ(?‚:eùşÇ³aœjuU¥d\Ã8w9+3cœ«÷V;+…u\rd\Æ8!\íz\ê‘qD.\Ñ31\ZU35„q0\ÆÁ8\ãDAz7ó,ªöª¼T\Ş\Ù	À¨\Z£j~\'¼>g\Ã8Œª\åU+%\r\ÆY\Ú\Ü*İ™\rBd¤Á8\ã`Œƒq&E:8M\ÅP\İuÓš¾M6(wGcŒƒq0Æ±¿\0\r€q0\ÆÁ8\Ç\ã`Œƒq00\ÆÁ8\ã`;`Œƒq0\ÆÁ8	ÁŠl0\ÆÁ8\ã$«NÀ8\ã`ŒcŒƒq0\ÆÁ8\Ç\ã`Œƒq0NBt\í\é3Á8\ã`ŒƒqbmG§	\ÆÁ8\ã`ŒcŒƒq0\ÆÁ8\Ç\ã`Œƒq0NB0“g\0Œƒq0\ÆÁ8	ÁL0\ÆÁ8\ãÔ‚^\î\Ó\\ymis«J4\×\0­\ÆÁ8\ã`Œ3)bµŞ´~ \ĞK²(\Æ\Ñ`Œƒq0N¤£\×\\\Ó\Ë}Šb´}\Ì\rª£q¾M—q\î\Â8&\ã`ŒŠônre\Æ\ÑKQ›\Æ%‚ RKW¶xd-İ¯	ôq´’RKO\ï\ç7lw¤\r\íKf9r4g#i¨±™Á£\Z›\ã˜\×qt¿&Wz\Çù?jR83ƒG\ço¨±™Á£\Z›\ã\äŒ{\Õr…Şz \ïU›ô\"N\Z\àü\Í¿Q \ÆfjlJŒ“83ƒG\ço¨±™Á£\Z‹q\â‚ó73xtşF\Z›<ª±\'.83ƒG\ço¨±™Á£\Z‹q\â‚ó73xtşF\Z›<ª±\'.83ƒG\ço¨±™Á£\Z‹q\0\0À\0\0\ì€q\0\0À\0\0\ì€q\0\0À\0\0\ì€qrÅ™\ÜT˜K\Â5À’•«\ZÛƒ¼+\éù±\İSÏ’gNÖš½b.^\Ö\\ûÂµ–1\â})¦®±jšÇ¬3gTZSôcÁüWK{\Ø@“(º\áFU\ìù%}¸\İ\Ó\\b\Ò]ı-¦&\Ñ	\Ï\ÓPF9I\Çù‰™\è×†ô3\é/&GT\à`©¶B·r8T}\Ğ\\«SN7ı\Å@?Ñ‡¯ü’\ìP}—¨\Ø\éO\Év1s	\'=\ÅL\Î8i(£Z²*Q\ã8/¦4\ãf­w^Lå¸š/§|¹7\Õ$¸ş¡–Š3Œ\Ë\ß1ô\×Z^R)êˆ«–\×d\ÆIC1kY@\Ü\ëb\ê’l—Qm´q\ÜS\ë–<\ÃÅ”ı¨§\å\îKŒS\ãw=Ô©¿¨\n©V\àˆ›Kf\çŠ\'¦\Şa\ÅV7%}œD‹)$]¥\ÓPL…ş.š½2\êô4ôq,ÊŠß2SL}\í¯aõ¥T7zU u…¥\ÚH©:¾5~\Ç\ÈU:\âz?‰\Z\Çy1“.`JŠ©I\îV·e\Ô\ßü“şşŸC™h\Õu^L\íSú8\Ö0\ï1‹9:š3N\å%ıuÆ©§\ÇQÍš£÷l\ß8Î‹©w\Ûdñ>.‡\Å\Ìp\Í\Â&WF\ç\Å\Ô\×Ml\Ş]\é\äh\ÊKM	j0N\0õ\Î\æ\Í“bRFŠ9EŠ‰q\0\0À\0\0\ì€q\0\0À\0\0\ì€q\0\0À\0\0\ì€q\0\0À\0\0\ì€q\0\0À\0\0\ì€q\0\0Àq\ç©g7\î9pøg?ùtŒ ‚\ÈHH“.\r»4\ï\ÒÈ§\Ä8’“\×‡ÏŸ?\éÒ¥k×®A™iÒ¥a—\æ]\Zù\èÒ‰\Å8[wøô³Ï¯^½úA‘¹\æ]\Zyi\ê\Ó`œ\îı_}ñÆ?A™iŞ¥‘—¦>ºqk]q\'=¯\rJ·\ëG‚ \"£!¼4õe!ºy²­\ãA!‹qD7O¯ßŠq‚ ˆˆ\Å8¢›õ[ö\Änœow¯»²ğ®«\ï\Z_t÷õ‡\ïş®ÀG~úı#?•¿ê©¤_[t\×\åw]|\è\'\×v­uõoŒ7¾ÿı37¶NûaÛ´?\í¸\ã/wüU\èº\ão]wş½ûNù+%E\Ò\Ü~\Çw[§¿:\íú\Ég\\g9\è:\Ó5§oÎœs\æ¾1w^ÿ¼<óššš›\ä¯<V‰ò\ê\ì¾\Ù\î°ó¿;]g9\Øô\Ş\ØôÎ·gt\Î\Øù\ÎÌ\ã3{N\Ì\ÜubÖ®“³vŸ’¿ò8Ÿ\Òs|F÷¨l6}ûp\Ç\ïÿ\è:\ËñÄ¦\î±sß9wt\æ¼wf5Ÿ\ÕtB¸\ï\'\ïû\Å)ù«Jú\Ìy£²ÙŒ9Ã›º2Rğ\ÑMc/\Îxû¥™£f¾\Ó>ë¸°qÖ‰÷\è¸\ï¤ü•\Ç*ñå™£²\Ù3†G6e¤\à±Gt\Ó\Ù{0ºq._¾l\æ\r\ã`Œƒq0N–Œ#|t\ãˆn;‰q\â\nŒƒq0\ÆÁ8\Õ\İ|øñ§\é4\Î\'›š\î\Õ\Ñr(\Æİ¡–{›6}q³‹qRZğ|™«\æ)ã¤³\à¹ª´‹XŒ“Î‚û¨©XŒ“Ò‚›\Ù*\ËU,\ÆIiÁ4rV¶—XŒ#º¹2~½%\Ú/IwõŒ\İ8…rO‰j-|!»ˆ\å\È\ZŞ––\Ê{‹nœ\ÔüĞ¦b\r¬T§£\'½?tH\ï¯ü\\nœ\Ô\\…j’0NzºŸ\è\ÆIoÁó9«º#iä¥©b\n\è\æÖ­[\İ}\é2N…‚KR´/k±†\Õö\Õ8\é/ø•s\Õ8^¼\Ò£\Z\'\í?\ÔÒ´iS¥ıE5Nš/t\Õ|D5NŠ¾›\è\Æ\Ñ\Ü*\Ä\Ğ\è{s\å\Ê3oQS©ä·¿aš\'ğ¸¤Zú|bD(ÿc÷Fï¶˜Txµø†j !ã¤¿\àU2\Õ8>¼\â1jœt\\½½rÁ#\Z\'\Å¯ğ#¢\Z\'½—\í[6UTûQ\Zùˆ\Æ\Ñ(ãœ¿ğM”µØS±owûT<(fbµ“\ÄH)>\Ìù>õX\r›*I+‹dŒ\ãAÁ«¼\Ñ8\é.ø\í3´¢‹\"\Z\'\Õ/¾9	ã¤º\àf&\Ë^Œhœ\Üx±Ò¿%¢qD1\"š[\ÅØ±¯ñKBvú8ae\Âò·õ¬ô^ò/«pPJ;Ï…½>¼j7\Ób\'E¯>\âœD\'E¯^ú$ú8©(¸ñ\é\Öú8©(ød¹L¢“‚—X¦<›#Š¹e\Ä\é\Î5¼«İ¯Š\Ù8!C\ÕJ¥JSr\Ñ\Óã¤¹\à¡gf‚\×qœ¼ô_HJğ:Ó‚Ú¹òa–¯\ã¤\ìˆ\Çlœô\Üüø\ÊÆ‘¦¾aMˆbL\ãÜ¼yssOƒ3Q\ÇoU\á\'Jÿ‰qsÇ„ˆ\'ú{¿\\=Og\ÆIoÁóc¼U\Ï\Ë8\îUKkÁõ­j•\ÇC¢ß«–Ö‚W\ØqIÁ#ß«–ş‚W<\â\Ñ\ïUKmÁ\'\Ê[©\äQŒ#r\Å\Ü*\Óg\Î56´d\ã\êÕ«f\Ş\âÿ=Nğ’ZZJF8\ÍM\'šÿ\à{\Ë.®o²\Ê%ü…ø“–‚—õ\íKOø“–‚™ªt\Ş\Çÿ{œ´|\"2Nj>ñ†JG<ş\ßã¤¦\à\Æ{*”\\\ZùÆŒ#Z¹Üª;û§\Ç8•P×§&\âŸsÀ“‚\Ç?\ç€\'\Î_\nûœ<ş9<)x\Ã\Æ­TÔ\Ä_~\Õörg\Z\ãI0\Ë\r³\Ü0\Ë\r³\Üdr–›ÆŒ#B­T3\ÄÈ©WÖ¹*\è‡1\nŒƒq0\ÆÉªq¤©¯K\r¢JˆnTô\Ã8\ÆÁ8\ã`…¨dR\İH|{ıÆ¶½ıµ\ïv\ïC×®]sıÿ ‚ ’\niä¥©¯\İ\"QI-Æ‘¸pñrí“­a‚ ˆlG]\Æ}ˆDjÔŠó.\Ö(5ªö\Ã?¸ş—Añ‡4ïµª‰8Du\éF÷tj^\ë\é;ôõ\Åo¾û\î;\×ÿ‚ \"ş\æ]\Zyi\êkL«·wcÆ·\×oô¿{\í¥mûş\ë£O._¾,¹¢§C‘™&]\ZviŞ¥‘—¦>D¢	‘E\í\×nBb\äÔ‡!¿\Óiş\ÍK=¯şôóÿı¿_}ıõ\×	‚ ˆL„4\éÒ°Kó.¼4õ\Õ, ‚¨\åF\è\Ú\ã‹/¿\Ú\Ùw¸\Ú48’“ö\Îı\ÇN|ğÑ¹\Ï\Ï}v\0\02€4\éÒ°Kó^M7\"QCø\Ï<\Óg\Î5<\á\'\0\0d	\ÑAµ9\ÓâŠ›7oş\èÜ}ƒQq\0\0O‘\Æ_ \"(Ÿ:¹8á›¡\Ñ÷:ºûP\0@æ‘¦^\Z|iö\Í\Õ<\íÇ•ñ\ë~ü\éÁc\';{®ß²\ç\éõ[Ÿlk¬uıŠ5/\0\0€wH.Í¸4\æÒ¤K\Ã.Í»4ò\Ò\ÔG÷\Åÿ²%,\î\nendstream\nendobj\n4 0 obj\n<</Length 211/Filter/FlateDecode>>stream\nxœQKo\Â0¾\çW|Gv¨š]{prÚ­¤ftjš\Õi\Ğø÷k5M\Z\ZE\Ø>X¶õ=\äNt\ĞZbLõ˜c¾\Äb¡a\ÒÚ½gxñØˆ\èÄ“\Ã.—K˜JH$Y>6\é:C¦`b†\Éx#n\ê\çzïˆ±#>Õ–`ùDg¬=c\Ïek	”V\ZUä²¯}[@\êTI¥Ì‡şe™#ı\"l)Ä¦/®\ár:—«I“4ôõI\Ü\Ãú\Ö61\Ê\Âu®2TC\İ#\ã?8“õ\ÎQ[ıX¿Iñj†÷|^q\ï\nendstream\nendobj\n6 0 obj\n<</Type/Page/MediaBox[0 0 595 842]/Resources<</Font<</F1 3 0 R>>/XObject<</img0 1 0 R/img1 2 0 R>>>>/Contents 4 0 R/Parent 5 0 R>>\nendobj\n3 0 obj\n<</Type/Font/Subtype/Type1/BaseFont/Helvetica/Encoding/WinAnsiEncoding>>\nendobj\n5 0 obj\n<</Type/Pages/Count 1/Kids[6 0 R]>>\nendobj\n7 0 obj\n<</Type/Catalog/Pages 5 0 R>>\nendobj\n8 0 obj\n<</Producer(iText® 5.5.13.2 ©2000-2020 iText Group NV \\(AGPL-version\\))/CreationDate(D:20220530200528+03\'00\')/ModDate(D:20220530200528+03\'00\')>>\nendobj\nxref\n0 9\n0000000000 65535 f \n0000000015 00000 n \n0000000353 00000 n \n0000010371 00000 n \n0000009947 00000 n \n0000010459 00000 n \n0000010225 00000 n \n0000010510 00000 n \n0000010555 00000 n \ntrailer\n<</Size 9/Root 7 0 R/Info 8 0 R/ID [<fc953932a0b57c7d1e9af57468cec29d><fc953932a0b57c7d1e9af57468cec29d>]>>\n%iText-5.5.13.2\nstartxref\n10715\n%%EOF\n','2022-03-30'),(21,'COMPLAINTS','2525','System','QUARTERLY',_binary '2525 Haifa 2 2022\n5 6 8 66.25','2022-06-27'),(23,'SURVEY','2525','Service Expert','MONTHLY',_binary '%PDF-1.4\n%\â\ã\Ï\Ó\n1 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/Length 182/ColorSpace/DeviceGray/BitsPerComponent 8/Filter/FlateDecode>>stream\nxœ\íÁ1\0\0\0Â ş©g	O \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€‡—\á\nendstream\nendobj\n2 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/SMask 1 0 R/Length 9898/ColorSpace/DeviceRGB/BitsPerComponent 8/Filter/FlateDecode>>stream\nxœ\íıwUš¨ÿ\íÿ \íş¥¿|øó]³V+Ea±&\È\êp#½:=œ¹=\èt”\éA@	AùJ\ÂG`	D\ZŒ	J\Ğ\ÆapD\ÆL÷ºôU‘Ou>‹yO6©¼9uN\åSµßªÍ³×³²N\íS§\ÎŞ©w\ï§ö®:Uw\îÔ›®Ş¸yö\ÓÏtõİ°m\ßó¶?\Û\Öş\Ë5ù\Íz\0\0(ÒK7.¹t\éÒ±K÷.¼tõu\ëbú\é\â_ş¨cW_ë‹››ÿ\ï\Ë\0\00\Ò\ÕK‡/İ¾tş\ŞDsûö\í3Ÿ\\\è\Ü\Ñ\0\0Ü‡H\ç/\nˆ2\ÕÍ™s^\ÛsĞ¼¾\0\0`\è@¤…kşô\ç/w÷½ó\Ë5\Ì\ë\0\09A¤ jA¤¨›¡\Óg\Û^\í2¯\Z\0\0\ä„h¢~\×|sóVoÿ\à\Êß¬7¯\0\0\äÑ„\ÈB”1m\İ|q\éÊ7›W\0\0\n(C\Ä1\r\İ\\ü\âRÇ®>óò\0@qˆ>\îutƒn\0\0`\Zˆ>j\é|só“i\0\00mD\"5\Ó\é\í4/-\0\0\ZQÉ”º:}\ÖÃ•ió,jKnqiS‹[l\\¹:ZgyËš†ñdş¯\0€{BT’|\ÉôŸşü¥‡\ß\İ4­j›\Èñ‹¸Æ½po‰‰¢\Õd÷.\0\0JÂCw÷½\ã³0‘q\"´q\ä]=\ä\0€\Â!Z©¨›3\ç.ø¼‰Œt.i\Ô9²(™Ñ¢\è\ÆM©\éÕ†«§Ñ±´«·tÍƒüO\äsO9·õœş\Ã\Çù)OF9RG©i~\ÊCN¡s\ÜbED+ñ{¯İ¾}\Û\ç-:\Å&z8#ˆY\ÜT[œ\Å\ËVL9\Ø\ãx+|E’ök[Hh™—!kd?\Ê\Ş4/F\Ö±Áÿˆ¹”\İeú\Ì\'¼}»˜E$¢s\Ê\ìS†¬\\MF\Ç´\ß` bƒ¡+Š\Ñ\Æ\é\Ü\Ä\ÛWG\Óe’œk\ZT¹H¦³’\Ë)\ÓSEÌóÊ¶¿]÷ºm<0vÙ¯\Ü]1…ˆXQL¤›‹_|]¸Ç«½°~«\Æ\Ü8\0\0q~\Õ\ÒşW+_K\äuÇ³\Şÿ\ê\n¥úµğ\ÌMÿQLô\ä\Ğc\Ã™\ï—{\åÀÁ~¹q8b†B1\Ö\ë‡\ß\Î\í\Û0sp\ã\Ì÷¯\Ì\Z\ZcXxµ\ÄIa“0û}¡½\ÄšÍ³OMğğ$:©È¤\Õ\Ô\ÇË¶\ì¾q¬\0¥’¸‚mœ%…\ÜP\â\İõ%N¼<ã¸°n\Æ\ï\ëÿWˆhœq¸…š¹q˜†BÌŠ\×\ëŒ!¢\İ\\½q³pSjq0\ÌÛ¯0NH˜G,Æ‰Ñˆn\Î~ú¹yT\Ô\Æñƒyûõ\0\Æ		óˆ\Å8\Z\Ñ\Í\ÑÁó¨˜;{4\æ\ÆaV<8\æ‹q4¢›®Ş£\æQ1\ròf\0€8G#ºÙ°mŸùN©s\ãp\ÄŒqB\Â<b1Ftóü†\í\æQQ?\æ\ÆaV<8\æ‹q4¢›g\Û\ÚÍ£¢~0\ÌÛ¯0NH˜G,\ÆÑˆn|\Ş/:Eº÷õi0\ÌÛ¯0NH˜G,\ÆÑˆn\Éş‰ŸY°®£KcnfÅƒó8!a±G#º)¨q\Ê07\0@Œ£Á8iÁc00\Æ		óˆ\Å8\ZŒ“ÌŠ\çqB\Â<b1¦¸\Æ8v\\ƒqü`\Ş~=€qB\Â<b1¦¸\ÆimÛ¤Á8~0o¿À8!a±Gceœù¹\ç{º\Å\å-k\Ü\âÒ¦½š\Ë\\¸¤q\Ê\rš‡Yñ`\à<NH˜G,\ÆÑ˜§iU›(¦y\ìñ\ÓN1\" \É\Ô/„\Å\ËV\È\núE\æ\Æ\0ˆƒq4¶³j\Î8¢˜h#‹‘\\\Ä>\î…\èI¤\ã^—M¦\éYµ\ç\Öv¿ş»We5ù\ë½\ål\İı\æ\ï:º­¾\İ[\ÎşC\ï\äª<Y\äÈ‘ÿ\æ\Îıù)OF9RG©i~Ê“QD¬my^l8Œqj\êólœH4ò\"Š6N¤!mœ²ô•Ÿ=\'l\ßû–¬&İ¢·œóŸ]8÷É§V\ß\î-gtt4W\å\É\"gã¶S\ÉOy2Ê‘:JMóSŒr$bmË³iÉ±`Œ“PS·˜[\ãˆV¢!L\Ù\ÇM¸5Oã”ß‰c>«\Æy\Ø`\àÊ0Xf\Õ4&\Æ\Ñc‡>e\êó8‘†ªqü`\Ş~=€qB\Â<b1\Æ\Ä8â‘†ñ\ä]«\æ#™N1.³LO17Wş×ª…„y\ÄbMq“·;y\0\ÄÁ8š\â\Z\'oO+\àˆ1ã„„y\ÄbMqS†¹q˜\Îã„„y\Äb\r\ÆI\Úo0`œ0XŒ£Á8iAû\rŒ\æ‹q4\Å5N\Ç\Î¹q˜\Îã„„y\Äb\r\Æ\0\ÈŒ£)®q\Ê07GŒÁÀ\'$\Ì#\ãh0NZ0+œ\Ç		óˆ\Å8\ZŒ“´\ß`À8!a±GS\\\ã8Ø¯Á8~0o¿À8!a±GS\\ã¼°~«\Æ\Ü8ÌŠ\çqB\Â<b1¦¸\Æ)\Ã\Ü8\0\0q0\ã¤GŒÁÀ\'$\Ì#\ãh0NZ0+œ\Ç		óˆ\Å8š\â\Zg8–l\ËCû\rŒ\æ‹q4\Å5N\Ç\æ\í\×\'$\Ì#\ãhÓ¸rµ{¸gÓª¶•\Üc@›ÕƒA%M¹5s\ã0+œ\Ç		óˆ\Å8\Z+\ã\Ì_°Hˆ?Nz\á’\Æ\èµgiSK47\0@Œ£1\ãˆPÊŒ#~‘\ÌhQ;\Ñx\'¢\ìg8ú÷8kÛ»„\ç\Öv\Èjò\×-z\Ë\Ù\İÛ¿¹s¿Õ·{\Ë94ğn®Ê“Eùo\İıf~Ê“Q\ÔQjšŸòd”#k[µ\n\Æ8	5u‹\Å2Œzô¢\è\ÆM©\éOÙ­ô=O\Ò\í\Ëjò\×-z\Ë9÷É§§ÿğ±Õ·{\Ë\ÍUy²\ÈÙ¸­\ç\ä\ÈGù)OF9RG©i~Ê“QD¬my^yj \ã$\Ô\Ô-\È8G4Y­\Ú[\æ³jœ‡\r®	óˆeVM“\ã\È@¦iU[\Å5e5=\ÛVŒ\ãóö\ëŒ\æ‹q4ù1R“\×\î]7«¿À ¹q¸ò\'¸V-$\Ì#\ãhŠû{\n\0ù\ãh0NZp\ÄŒqB\Â<b1¦¸\Æ)\Ã\Ü8ÌŠ\çqB\Â<b1\ã¤\í70NH˜G,\Æ\Ñ`œ´ ı\Æ		óˆ\Å8š\â\Z§{_Ÿ\Æ\Ü8ÌŠ\çqB\Â<b1¦¸\ÆY\×Ñ¥17\0@Œ£)®q\Ê07GŒÁÀ\'$\Ì#\ãh0NZ0+œ\Ç		óˆ\Å8\ZŒ“´\ß`À8!a±GS\\\ã;®Á8~0o¿À8!a±GS\\ã´¶mÒ˜‡Yñ`\à<NH˜G,\Æ\Ñ\×8e˜\0 \Æ\Ñ`œ´\àˆ1ã„„y\ÄbMq“·Y5fÅƒó8!a±GS\\\ãp\å€	\æ\í\×\'$\Ì#\ãhŠkœ20\ÌÛ¯0NH˜G,\Æ\Ñ\Z§q\å\ê\è\áK›Z\Ü\ã>.i\Ô\ëTÌ¬ˆ¹q˜\Îã„„y\Äb•q\æ/X$h\ã,oYS¶¼+V\Ò/07\0@Œ£1\ãˆb\"\ãÈ‹¦Ume+ˆ’\âk–\İÀS\ß\Éss\ç~\áùõ\Ûd5ù\ë½\å8üû®7Y}»·œ\Æÿg9rä¿³\ç`~Ê“Q\ÔQjšŸòd”#k[\ß\Í?Œqj\êd7&ƒh…h2M¯Yöı´‚C\ï\n\ë_\ß#«\É_·\è-\ç\Ì\Ùsƒ\'G¬¾\İ[\Î\è\èh®Ê“E\Î\Æm=C|˜Ÿòd”#u”š\æ§<\åH\ÄÚ–g\ÃÂ£Á\'¡¦n±(Æ‰qM4\Ø\Ñcm¢Š˜Ïªq6¸r $\Ì#–Y5M*\Æyi\èÆ\É\éòP÷”Ÿªfœ\èµ>?\ËS\Æñƒyûõ\0\Æ		óˆ\Å8šz³´¢_œƒ\Î\íOú¬6ˆ\ÆÍª9\ÅÈ¢SŒËŒ‹)¹q¸ò\'¸V-$\Ì#\ãh\ê3Nÿ¹óı	+t\í\Ìl?v\ì\ìÑ˜\0 \Æ\Ñ\Ôgœ\îcW\'\rd:Ï»Iµ\Ç\Ú3ßy3GŒÁÀ\'$\Ì#\ãh\ê\ã\\=ı\Òøbi&\Í\ry\ÚO_Vù~07³\âÁÀyœ0XŒ£I\Ï8ı\ç\îDsh2ö\Ép>­\"\Ç\æ\í\×\'$\Ì#\ãh\ê¼r óü\İ	´\ÎóúúŒ,\æ\í\×\'$\Ì#\ãh\ê¾:Z†6cI]BPš^\Ë~V\íÀÁ~¹q˜\Îã„„y\ÄbMq\ïı\Âú­\Zs\ã\0\0\ÄÁ8š\â\Z§s\ãp\ÄŒqB\Â<b1&\ãp\'X\Ìg\Å=Àyœ0XŒ£Á8iAû\rŒ\æ‹q4\Å5\Îp,\Ù\Æ\í70NH˜G,\Æ\Ñ\Ôû{œ;\Õ\Ò}7\ÆaV<8\æ‹q4\\9\0\0GƒqÒ‚#\Æ``Œ\æ‹q4ÅU\Ë\Û\ïq˜\Îã„„y\ÄbMq\Ç8y»\ç\0\í70NH˜G,\Æ\Ñ÷ù8e`?˜·_`œ0XŒ£1|h\ã\Ê\Õ\Ñ\Ã=—6µ\èg€:–·¬iOS–\Ä\Ü8ÌŠ\çqB\Â<b1&•Y5\ç\â*cş‚EBdœH4’­#\Æ\ÕXs\ã\0\0\ÄÁ8\Z\Ãó8\"”\È8\Ú8¢!=\äq”=úS?Tf„µ\í]²šüu‹\Şrü~\èÀ\ácV\ß\î-gğ\äH®Ê“Eù\ï\î\í\ÏOy2Ê‘:JMóSŒr$bm\Ëóò“ıÁ\'¡¦nqJreœ…K\Z›Vµi\ã¸)5\ÉÏ¿qNÿ\ác‘N®\ÚZ9£££¹*O9·õ¾?’Ÿòd”#u”š\æ§<\åH\ÄÚ–\ã\ä\Ó8bÉ©¸¦¬\ì”a>«\Æy\Ø`\àÊ0Xf\Õ491L‹#«U“Q\Æñƒyûõ\0\Æ		óˆ\Å8š”Œ\Ón\ÒC?kº“§6NƒJ’/rïºœø\é8\æ\Æ\áÊŸ`\àZµ0XŒ£\É\Æ8ıç²¿\ç@÷¾>¹q\0\0\â`Mı\Æ\é<_\é&7‰¿M…u]\Zs\ãp\ÄŒqB\Â<b1&›1\æ\ÆaV<8\æ‹q4Å½¯Z\Ç\æ\í\×\'$\Ì#\ãhR3\Î\Ø\ín\î\ç\'²\Ñ~ƒã„„y\ÄbMj³jwnk÷º×˜‡Yñ`\à<NH˜G,\Æ\Ñ÷<Nk\Û&¹q\0\0\â`MZ³j/\r\İH¾StÖ˜‡#\Æ``Œ\æ‹q4\éÍªù~h\æ\ÆaV<8\æ‹q4Å½V-o³j´\ß`À8!a±GS\\\ã\ä\í\Ê\Úo0`œ0XŒ£aV--˜\Îã„„y\ÄbM&cœı£S>4uÌ\0\ãh²™U«\é\Ş\Ñ\ébnƒ1NH˜G,\Æ\ÑdbœöÓ—³ŸU\ËÛ<™\Îã„„y\ÄbMF\çq<ü6\'oO+ ı\Æ		óˆ\Å8š\â^«V\Æñƒyûõ\0\Æ		óˆ\Å8\ZC\ã4®\\=\Üsy\Ë\Z÷¸Ï¥M-z—¹pI\ã”[37³\âÁÀyœ0XŒ£I\Ï8jb­†{¬\Í_°HˆŒ#¯›Vµ\é‚¼+V\Ò/07\0@Œ£I\É8\İÇ®ª{G·Ÿ¾\\ƒtd\\\ãŒ#Š‰F12Æ‰\ä\"ö)[S\è\Ø\ÙS1\ÌkÛ»d5ù\ë½\åùıĞ\ÃÇ¬¾\İ[\Î\àÉ‘\\•\'‹9ò\ß\İÛŸŸòd”#u”š\æ§<\åH\ÄÚ–\ç\å\'ûƒ1NBMİ¢/\ã”\İ;º¦«£µq\"¡h\ãD\Z*„qNÿ\ác‘N®\ÚZ9£££¹*O9·õ¾?’Ÿòd”#u”š\æ§<\åH\ÄÚ–\ãd`QŒº>mÿh-k\Õ\Æ8’\ßã”ß‰c>«\Æy\Ø`\àÊ0Xf\Õ4™œÇ©\í\Ç8z\ä¢\Ï\ãD+\èó8‘†ªqü`\Ş~=€qB\Â<b1\ÆğZ5mœ\èZ5§ñSŒËŒVKÀ\Ü8\\ù\\«\æ‹q4©gÿ¨\ç;y8Ø¯17\0@Œ£I\ï¾o¤ö\Âú­\Zs\ãp\ÄŒqB\Â<b1&›k\Õ07³\âÁÀyœ0XŒ£IkV­ó¼{©%€qü`\Ş~=€qB\Â<b1¦¸\çq\ÊÀ8~0o¿À8!a±G“\Şyu\Ï/\ÇR\ÂÊ—<tÅ±ğ¡«c\\\ãú¢Ÿ8nŒñğ\ÔOn*¾qkñO\Ëøn2ñÊ¶ ·/_w\ãnJ\åqe“rJ¿\ãÒ“?şjŒ/Ÿøñ‰\Æÿm\Òd4\æ³\â\à<NH˜G,\Æ\Ñ\Ü\'\çq0\0˜€q4iÍª½44\êyŒS\Æñƒù£ã„„y\ÄbMFOd\Ë\ÛyŒ“\æ³\â\à<NH˜G,\Æ\Ñ÷‰l÷ô{Œ“\æ\í\×\'$\Ì#\ãh21Néºµ|\İs\0ã¤…yûõ\0\Æ		óˆ\Å8šTSºƒôXò}\İZ3³j¾0Ÿ÷\0\çqB\Â<b1&\ã¼4tÃ™\æò\ÕV¿\Å8\0C0¦>\ãŒ_0p¾\ß\åˆz0N\Ø\Æ1?bô\0cœ0XŒ£I\Å8—‡º]O\ãÄŸš°2\ÆIóYq\ä\á<\Îüu»\æ¯\Û]\âeÍ»¬\ØûD\"z’ùÛ·\ß_\Ñu$qñMMşŠ»_}·0\ãe+•v\×]ş¡ûñ1¿¸5¡O·¶\Ïÿ\Å\îùM“x¢ÄrV\ì­NOO®\èi\ßùIò:U·<Q€R©\ÆK¸«\Ä/İ§ŸmO¨&\ÆÑ¤:«v\ã\ÜyŒƒq\nOŒ3£spF\ç{3ºJ\Ì\ì\Zš\Ù\í¹\Ëq²\Äî“³v¿_b\ÏŠS%öN0{\ï\È=Ó“™´\Î\Şıñ±\rª\í}\ãX†K\å‘Ru\r•\ÊY*ğ\àŒ\ï\Î\ØyBø_;ñjoBŸzf\Ç\Ì9ƒ3\ç¼7sn‰Ys‡\Æ5O8\é˜=\ïı\r\ÂŠSe<ü\Ø\ÈdNÇ˜´B|jã¥¯/€”Ä•Ê•sp¬\Ì\ïÎœsB˜ñ\èqa\Ñ3\Ûª‰q4\Ù\\9poª-mjiP)=“:Œ\ãŒ\ãŒƒq0N­L÷\ê\è\å-k\Ä2Ñ¢¼òa\Ó\Ç\æ³\â\È\ÃyŒƒq0NÖ”e/[Ñ´ª­\Æ\Ïb	Œƒq0N¦4®\\­8\Íc\Æq³j:¿{__E\Ä8‡\ŞÖ¿¾GV“¿n\Ñ\åcœ²z\ÅkšuÎ©\Ï~»Ÿ\ã\ì{\ë¨my\Â0\ÎÒ½\Çj\ZŒq~õü„}ºa\á\Ñ`Œ“½n±@\ÆI8Y3Á¢h°³®£«\"bœÍû…\ç\×o“\Õ\ä¯[t9Á§¬^ñšf3::jø\í~r6n\ë91|Ê¶<a\ç‰Gj\ZŒqšV\ïMØ§¿›8\ã$D¯[,ŠqD(\ÉÆ™rÌªù+ü†q˜UkfVm291Rû¸+\ÖD4nVMŞr\Ç\Ç\ã`œ<ƒqüÀµj~À8\ãäŠc\Ç5\ç>a\Ñë¿˜·o~\Ã\ã\ìp<\Ö;Î\'¿9™¾Õ˜ÿVU>õxß¤\í}i©\0\r½®H¥\Îö	\Ï\ëy|®°Wxl\îÇ’«‰q0\Æ\É­m›4\Ç\æcœ\Û}ó\ÑGû\Ó7§\Ä[c,1÷\àÜ¹‡\Æy{î¼·\ç•8<™ş	\Zú&q¤\njıñò-¿=O¾\Ô}»++›µÄ›>r\à‘½ü¼÷\ç?\ßÿó\äjbŒƒqò\ÆñƒùyŒƒq0\Æ1\ãø\ã`Œƒq¦MqÃ¬š	\ã`Œ3mŠk®0ó8\ã`œiS\\ã”q\î0\ÆÁ8\ÇŒ\ã\Æ8\ã`œiƒq0\Î=ÁyŒƒq0Î´)®q\âwòLXù~0\Î_¯Yó\ÚKOOb\íÓ¯\Ç\Ø\Zñ÷\Ø6_~-y…\n›û:])XT\È-/>\İ1†T$¡š\ã`Œ\ãŸø\Ó\nV¾Œó\ÚK\Ënn{\à\Û\í%nñİ\ß;üaŒ\ë,ñ\ïcüG\×ÿ\é\èà¿º4Á®ıw\É\Ô\ë\èÏº­Eÿ÷®\Ò\×\É÷J¤$\ß\í(qkûƒRN)°ğ\Í\Önl}\àú\ë\\^{ \ã\Åe	\Õ\Ä8\ã`s0\ÆÁ8\ã`?`Œƒq0\ÆÁ8~À8\ã`Œƒq2¢cg\ã`Œƒq0\Æ\ÉŒS\ÆÁ8\ã`œZ¨ø¸\Ï\å-k\\fôx\Ğ0\ÆÁ8\ã`œZX¸¤1)\ZjZÕ¦_$€q0\ÆÁ8\ã\ÔB\Ü8¢˜(S\Æ8z\ìSŒƒq0\ÆÁ8§\Z\ÆS4–‘‹—­h\çÀÁşŠˆqO›;÷\Ëjò\×-ºœ`ŒSV/]Ó³Gş!ã¼½cU|F9¿\îo\r\Ã8\Õb\Õ\å„aœ§\ßLh•Á§µ\í­j­Rxå©`Œ“\Ğÿ¸Å¢Ç±¼eM4®)\ã\È[\îõ\ë·VDŒ³¶½Kxnm‡¬&İ¢\Ë	\Æ8eõ\Ò5\í\íøU\Æ\é|ùÿ\Ä÷`”ó—{V„aœj±\êr\Â0N\Ã\ëo\'´\Ê`Œ³\ì¯vUk•%;Œqú·X8\ãD\ãš\æ\É\çq¦ü,³jÌª\Ë8\Éñ†q˜UkfV-Æ‰®I“\Ô<6ºq/¢ü)O\â4cŒƒq0\ÆÁ8¾À8\ã`Œƒq2b8–V\Æ8\ã`Œƒq\Ò\ã`Œƒq0\Æñ\ÆÁ8\ã`Œ\ãŒƒq0\ÆÁ8\'#\â¿\ÇIX\ã`Œƒq0Æ™6ñ{$¬Œq0\ÆÁ8\ã¤\ÆÁ8\ã`Œ\ãŒƒq0\ÆÁ8\Ç\ã`Œƒq0NFğ\Ğ20\ÆÁ8\ãd\Æ)\ã`Œƒq00\ÆÁ8\ã`?`Œƒq0\ÆÁ8~À8\ã`Œƒq2¢{_Ÿ\ã`Œƒq0\ÆÉˆu]\ZŒƒq0\ÆÁ8§\æ/X\Ô0–t\æÒ¦—¹pI\ã”[À8\ã`Œƒq¦¤iU\Ûò–5ò¢q\åj±L”/¯]~-`Œƒq0\ÆÁ8µSfœ\Å\ËVˆŒjü,\ÆÁ8\ã`ŒS#\"—²\Ù31›U\Ó\Z\Z8v¼\"bœÏ¶\ï}KV“¿n\Ñ\åcœ²z\éšşË»¯†aœ£\İßƒQ\Î\êw\Ã8\Õb\Õ\å„aœ¦7“Ze0\Æù›¿?\\­U\n›–\Æ8	ı[,Šqdt3Á¢j\ï\Ê[\Ñ`§µmSE\Ä8Ï­\í~ıw¯\Êjò\×-ºœ`ŒSV/]Ó®õ+\Â0Î¶\ßı\"¾£œ\Å]\Ë\Ã0NµXu9a\ç‘\Í}	­2\ã,ıUgµV)¼\Øp0\ã$ô?n±\ÆYŞ²F†3	+$\È(‚Y5fÕŠeœ\äx\Ã8Ìª53«6™<G8\r\ã\É\rg\ÜEk\Ñl²Â”Á8\ã`Œƒq2\">«–°2\ÆÁ8\ã`Œ3m\âW$¬Œq0\ÆÁ8\ã¤\ÆÁ8\ã`Œ\ãŒƒq0\ÆÁ8\Ç\ã`Œƒq0NFp\'\Ï20\ÆÁ8\ãdO+(\ã`Œƒq00\ÆÁ8\ã`?`Œƒq0\ÆÁ8~À8\ã`Œƒq2¢cg\ã`Œƒq0\Æ\ÉŒS\ÆÁ8\ã`?`Œƒq0\ÆÁ8~À8\ã`Œƒqü€q0\ÆÁ8\ãdÄƒı\ZŒƒq0\ÆÁ8\'#^X¿Uƒq0\ÆÁ8\ã\Ô\Â\âe+\Z\ÆRÓª¶(sy\Ë\Z—¹´©e\Ê-`Œƒq0\ÆÁ8S\"fY¸¤Q¿p¸\'P\ë	`Œƒq0\ÆÁ8S\"C˜Æ•«›\Ç-\ã^ˆb\"û\èªq0\Îıfœ»ºI\Å8=)\Z\ç]Œ£Á8šœGF7\Í1\ã,^¶\"Z!2\Î0‰D\"‘r––¯l-q\"¡Dãš²1N¤¤Ü²§÷\à\ÚM;Í‹‘5Ã‰c\É0ı({Ó¼YC\ÄC\"6\Æ\Ñ\çq¢qMó\äó8\æÿ¨)¡ıC\Úo=±ÁP ˆÍƒqšÕµj\Íc£÷\"ºVmÊ“8y€öj¿õ@\ÄC\"6\'\Æ	\0\Úo0¨ı\ÖŠXŒ“´\ß`(Pû­\"6\n±\'-h¿ÁP ö[Dl0(b1NZ\Ğ~ƒ¡@\í·ˆ\Ø`(P\Äbœ´ ıC\Úo=±ÁP ˆ\Å8\0\0\àŒ\0\0~À8\0\0\àŒ\0\0~À8\0\0\àŒ\0\0~À8\Í\ãwrsI?n\Z4®\\=½-È§²¾?¶m5£»\äé›µ†WÍ¥M-µ?¸¶ u¬óƒE©f±\î6¡V³Y­‡[ôcAÿ«¥?œF—(;z\Ú=Œ\ìùe½»m«©H1\å]‹[ÍˆLox‡:\Ê~\Ì\Ú8\æ\r3\ÓÃ†üT3\ëƒ@\rÆ‘=U¶³\\_õ²;\\<D7¸v¦4·\èÀ :>‰v_ü\0I6\è%*öEÑ·„]\ÍæŒ“Ÿjfgœ<\Ô\Ñ=²*S\ã˜WSºqw­7¯¦s\\B$§Æ‰?\î\Íu‰e{<:ŠpŠ\ÓŒkV\Ç\Ñv´¼\år\ÜwŒG²\ãä¡šµ<@¼\ĞÕŒfHÂ®£[!k\ã\ØVS^G=yÀÕ”\í¸Å¸û²\0\ã\ÔxŒMuF. \İ\Î*\Û\ãú‘\Ù\Í\ã\r3\Ú`\Å^7\'cœL«)+d\Òy¨¦#:\r¯Q~\Æ8ve\Åc§`ª\íD?\Ók\Ç”FC4\Z\í w†¥\ÚL©Û¿5c4W\Ú\ã\Ñv25y5³®`Nª‘İ¥ ¶uŒü³>ş\ÏÏ®\Ì4tÍ«ù”17ôµ\"z¿\è\Ù\Ñf5q*oEq-\Î-VœGÕ‘mÙ¿qÌ«m¶Á\ãu\\†\Õ¸º²\Ù\ÕÑ¼š\ÑyŸWWš\ìMy«!\ã\É\ÃŒS†;„óyñÕ¤šÔ‘j\Ş\'\Õ\Ä8\0\0\àŒ\0\0~À8\0\0\àŒ\0\0~À8\0\0\àŒ\0\0~À8\0\0\àŒ\0\0~À8\0\0\àŒ\0\0~À8\0\0\à‡´Œ³\ê\Å\Íû¾ó\Ï\ç?û|”D\"‘H$\éÒ¥c—\î]:ùœGJòÖ‘/^¼|ùòõ\ë\×oH$)ˆ$]ºt\ìÒ½K\'_¿tR1\Îö½?ÿ\×?^»v\í[‰D\"—¤{—N^ºú<g×ş¯¾ºt\ëÖ­\ïI$‰\\’\î]:y\é\ê\ë7\Î/\×l¨s#{\Ş<\"Ã®H$‰h’N^ºú:e!ºy¶­\ãH$)!¥b\Ñ\Íó¶c‰D\"%¤TŒ#ºÙ°m_\ê\Æù¦\ç\å«º¶ğ¡‹~ró©Ÿ|;Æ­\Å?ınñO\å¯[”ü\ë‹º²\à¡KOşøú\ŞuVÿ\Æt\Ówşö\Öö¾\ßñÀ¿u>ø]ş§\Ğı\àuÿ\è¿wıHş\ÊkÉ‘üv>ø\íönl}\à\æ\Èo­‹œN\ê>\×=§oÎœƒs\æš;\ïğ¼ıó\Zú\Z4\È_y\í2\å\İGû}\äÀ#]ÿ\Ôe]\ätÒ–Fgt½7³{x\æî“³ö|0kÏ©Y{O\Í\Ş;2»\ç´ü•×¥œ=\Ì\Ü5,«\Í\Øy¢\ã\Ã±.r:iË®Ñ™sß›5wxÖ¼“³>˜\İpJxø±‘‡;-İ¢\äÏš7,«ÍœsbKw \Ş2ºq\æ{¯\Ì\Z\Ş4\ëdû\ì„Í³Om~øT\Ç\Ã#òW^»\ÌWg\r\Ëj\ëg\ÚH\ÅS1è¦«÷hıÆ¹r\åŠ.\ÆÁ8\ã`œŒ#|ı\Æ\İÁ8i%Œƒq0\ÆÁ8\Õİœıôó|\Z\ç³-\r?‹R\ë@ŠÿºÖŸ5lù¬\Î-T,R*\Æ\Éi\ÅKu®Z¦TŒ“ÏŠO”ª\Ò&R1N>+®¶Q¡P©\'§\×ÅŠ•*\ã\ä´\â?¨’Å¶’ŠqD7Wo\Ül­ï—¤{û¦nœ±zO\ì‰j=ü=$\ÙD*{v¬\ãmm­¼µú“ÛŠlÀJ1]¿qò[ñh{ñ¶\\¿qr[q—\\”…qò[ñ\Ä\í\ÔoœüV¼T²ª’N^ºúzL!¢\İÜ¹s§cW_¾ŒS¡\â’U\ßÁZªÍ°\Ú\Ö\ê5Nş+şC\å\ÕkœBT¼\Ò\ë5N\Ş+>\ĞÚ°eK¥\í\Õkœ<W¼T\éª\å¨\×89®xòf\ê7ˆ\æ\ÎX:6üQÆ¹zõª.[½Æ©Tó»G˜zç”½4F¼<1#Tú€Ú¼\Zİg½;şj; #\ã\ä¿\âU\nY¯qŠPñŠû¼^\ã\ä»\â\î\ã•+^§qr\\ñ\nP©^\ã\ä·\â²~ë–ª“j?H\'_§qD4\Î8¿øº‰µÔSqlwwT\Ü):³Z#Q9\ã/Kß£?\ç^»i³Iy±”q\nPñ*o\Õiœ|Wün­\è¢:“ëŠ8\ã\äºâº±7\ë4N+®Ş¬ôo©\Ó8¢ÍñÔ¹ú§„üŒq’vÊ„\å\ï\ê\Ù\é}Ò¿¬\ÂN™<x\ÛZÙ—Wfz\ã\ä¨\â\Õgœ³\ã\ä¨\â\ÕkŸ\Å\'W\ß\îmŒ“‹ŠOU\Ê,\Æ8ù¨ø$\ËÄ‹Y§qD1wT:óÉ…ioªç­”“0\ÕYm§T\nšI\'=aœ<W<±efxÇ¼\â“ÿeY\Ç1­xY?Ÿf\Éğ<N\Îöx\Ê\Æ\Éo\Åõ\×W6tõ\ÓÖ„(F\çö\íÛ¯\í™æ¨\Ó7ø‰\Ú¦.\î˜ñÄ¸±\â\è·\ìw/O3\ã\ä·\â¥9Şª\í2k\ÕòZñ\èRµ\Êó!õ_«–×ŠW\Øğ¤Š\×}­Zş+^q\×­Zn+>Q\ßJ5¯\Ç8\"QÌ\É\éÌ¹Ó»´\ãÚµkºl\éÿ§|eµ¶Nš\áÔ«N,\êğ\Ïb\'\×\Ô\Ç\ÊwYå’üFú¿\Ç\ÉK\Åccû\ÉM ı\ß\ã\ä¥\âªP•\Ú}ú¿\Ç\ÉK\Å\'RF\Æ\Ém\Å\'>Pi§ÿ{œ\ÜT\\}¦BÍ¥“ŸqD+\"—;•\Ò\î¾wòcœJ{¨Š\ës“Ò¿\ç@A*ş=\nRñô\ï9P”Š§~Ï‚T<ı{¤\â\Ó6h¥¢n$ı\é\Ï_¶½Ú•G\ã$q—\îr\Ã]n¸\ËMw¹™qD(¢•jÆ‘4tú\ì\Ê{|*è¾ƒ\ï`—0\ÆÁ8\'T\ãHWOj•ˆPt\ãRoÿ Æ™^\Â8\ã`Œ\ã•L©I\ßÜ¼µ\ãÃµoöCÇ®_¿nıÿ ‘H$RVI:y\é\êk÷‚HDTR‹q$}q\éJ\í7[\Ã8$‰vº\'\ãˆ>D\"5\êÆ¥‹_\\ªQ:nV\íûï¿·ş—H$)ı$\İ{\í³j\"\Ñ\Ç=\é&\Z\é\Ô2½¶§o\à«K_û\í·\Öÿ‰D\"¥Ÿ¤{—N^ºúZ&\Ó\îut£\Ó77oõö&_½öÊıÿø\ÉgW®\\‘R1\Ò!‘H¤`’t\éÒ±K÷.¼tõ	\"Mˆ,j?w“†NŸMøN\Ë¯\ìy\ë\Ïÿøÿşÿ_~õ\ÕW—H$‰D’.]:v\éŞ¥“—®¾šDµ\\]{úÓŸ¿\Ü\İ÷Nµ\Û\àHIÚ»úø“¼ğ¯\0 \0¤K—]º÷jº)ˆ\Z’\æ9\ít\æÜ…i\ßğ\0\0BBtP\íii¥Û·oŸù\äB\çş#õ<\Ä\r\0\0\nŠtş¢\0Aü\ĞÙ¥‹_|}lø£]}¨\0 x¤«—_º}ı4Oÿ\éê›g?ıü\è\àHW\ï\Ñ\r\Ûö=¿aû³m\í¿\\³\á™ß¬\0€\Â!¸t\ãÒ™K—.»t\ï\Ò\ÉKW_¿/ş\'!ƒ\à\nendstream\nendobj\n4 0 obj\n<</Length 280/Filter/FlateDecode>>stream\nxœR\Ënƒ0¼û+ö˜HA€§4\Ç>rOÃ©\êe\Ë:\r\Å\Æ`Chÿ¾†ªR£b©^­4ò<3+·¬!‹\ßf°\Ş\Âf# \Ğ—ú-…v`-»Ë™Ÿe\Érb	Di6‚xŸB\Ê!?±Ï³´ª¼\ï5ZZ8J{)	{{‘Ÿ°7^-\Ö\Å9.¸\0\ê-v¥©wˆ˜\'œ/ów6\Zü­¼\È\Ïò\ç…\'\éz\Õ\ífip}»Nn‚‚2ò£‘¶ƒ\ÂÔ…\êw\æ\æµ< ÄĞ‘3\n	•£Y.:ES\ë	„H+R~¨&°B7\Ë\â/\ËÿDÿ\È\Ê\Âh-kú^÷¼…\ÆT\r5šy}oPû®\Ği\nX$\å*\Ô\äTEú›^\Åx\Ìı·ûlŸ®•\nendstream\nendobj\n6 0 obj\n<</Type/Page/MediaBox[0 0 595 842]/Resources<</Font<</F1 3 0 R>>/XObject<</img0 1 0 R/img1 2 0 R>>>>/Contents 4 0 R/Parent 5 0 R>>\nendobj\n3 0 obj\n<</Type/Font/Subtype/Type1/BaseFont/Helvetica/Encoding/WinAnsiEncoding>>\nendobj\n5 0 obj\n<</Type/Pages/Count 1/Kids[6 0 R]>>\nendobj\n7 0 obj\n<</Type/Catalog/Pages 5 0 R>>\nendobj\n8 0 obj\n<</Producer(iText® 5.5.13.2 ©2000-2020 iText Group NV \\(AGPL-version\\))/CreationDate(D:20220601142413+03\'00\')/ModDate(D:20220601142413+03\'00\')>>\nendobj\nxref\n0 9\n0000000000 65535 f \n0000000015 00000 n \n0000000353 00000 n \n0000010912 00000 n \n0000010419 00000 n \n0000011000 00000 n \n0000010766 00000 n \n0000011051 00000 n \n0000011096 00000 n \ntrailer\n<</Size 9/Root 7 0 R/Info 8 0 R/ID [<2beb5b53b5cecc160fb5e31bede1e13e><2beb5b53b5cecc160fb5e31bede1e13e>]>>\n%iText-5.5.13.2\nstartxref\n11256\n%%EOF\n','2021-09-15'),(24,'ORDERS','1010','System','MONTHLY',_binary '1010 Karmiel 06\nProduct 10 Rose Bouquet\nItem 4 Cactus Flower\nProduct 2 Sun Bouquet\nItem 15 Bazil Plant\nProduct 20 Colorful Bouquet\nProduct 1 Holiday Bouqet\nItem 28 Pink Tulip\nProduct 30 Casual Bouquet\nProduct 3 Birth Bouquet\nItem 17 Bride Bouquet','2022-06-02'),(34,'SURVEY','2525','Service Expert','MONTHLY',_binary '%PDF-1.4\n%\â\ã\Ï\Ó\n1 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/Length 182/ColorSpace/DeviceGray/BitsPerComponent 8/Filter/FlateDecode>>stream\nxœ\íÁ1\0\0\0Â ş©g	O \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€‡—\á\nendstream\nendobj\n2 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/SMask 1 0 R/Length 9875/ColorSpace/DeviceRGB/BitsPerComponent 8/Filter/FlateDecode>>stream\nxœ\íksÕ™¨\ä„\äK¾_ø<5U_¸…\Ë\ÔÔ™0•pDR™š\á\Ìd‰Á“1’Á²–¬‹/’2–-!	,\ã˜c\ìƒ\íAN\Ê\Î\áfa`®\å\Òy·–\Õzµ{\ïÖ¶v÷z»—ŸUO©v¯İ»÷Z\êw­§\×\ê\Ş\İssõ¦\é™\Ù\Ó~tdt²«ÿHs[\ï3\Í\íOmnùù¦\æ\'\Õ\0\0…C:p\éÆ¥3—.]:v\éŞ¥“—®¾n]¬<]şøó‘ñ“­{\ZŸ\Û\Ñğ/\0\0@ÀHW/¾tû\Òù{Í7N½\Ğ\Ùw\Ñ\0\0Ü†H\ç/\nˆ2\ÕÍ©3^\Ş7h^_\0\00Gt R\È\Â5ü\Ó\'{\Şüù¦fó:\0@N)ˆ\ZD)\êf\ì\Ä\é\Í/u™W\r\0\0rˆB4Q¿k¾œ½\Ş?4ú³_5™\×\0\0r‹hBd!\ÊX±n>ş\ì\ê\îW™W\0\0\n(CÄ±\İ\\şø³\Ö=\æ\å\0€!\â}\Ü\ê\è\İ\0\0À\n}\Ô>\Òùrö:“i\0\0°bD\"5\Ó\é\Z5/-\0\0\ZQÉ²º;q\ÚÃ•i\Ñıy\Ü\â\àÈ¸[\ì\èŠ\Öin\ëJeş¯\0€[BT’|\Éôÿô‰‡\ß\İlj*\İN^ˆ_\Ä5\î…{KL­&\ë¸w\0 ˆˆP~ºw\àMŸ…‰Œ¡#\ï\ê!\0\0\ÑJEİœ:sÁ\çMld¤sş\â%#‹’-Šn\\Áôj\ã\Õ\Ó\Ô|\Ú\Ó_º\æAşN-$rÈ¹¥œmm=\'~ÿ~~Ê“Q\ÔQjšŸòS\è·X\ÑJü\Şk7n\Üğy‹N±‰\ÎR7\Õg\â\ä\Ëv\Ä8\Ş\n_‘\ÃGÇ¤ıÚ–ÁZ\æe\È\ZÙ²7Í‹‘5Dl0\ä?bE.ew™>uö‚·o³ˆDtN™}Ê•«\É(\ãøöDl0\"bE1\Ú8}‡½}u4]67ÿüĞ†ùN”D.’\é¬\är\ÊôTs\ã¼\Ø\ÖóO[_±-ƒ\Æ\ÎÁ ûñ\ÅÛ +&bƒ¡+Š‰:ù\Ë^¸Ç«=Û´Kcn\0€8¿ø›–¿ı\ÙË‰¼\âx\Ê;_]¡T¿Ü©©óÿ Š‰:2~\Ò|¿\Ü*‡4\æ\Æ\áˆ1\nq\ÄX?D¬~³~ yõ\è¶\Õo;^\\36Ï¸ğR‰	a»°ö¡¥Ä»šk/r÷Zï¬È’\Õ\Ô\ÇË¶\ì¾q¾\0¥’¸‚m[#…m.ñVS‰c/¬:*l]õ»úÿ\"\Zgœ\0n¡fnfÅƒ¡³\âõC\Äú\ãDˆhÜ™”\ÂM©\ÅÁ8~0o¿À8!a±\'BD#º9ı\áG\æQQ?\Ç\æ\í\×\'$\Ì#\ãhD7GF\'Í£b´vôhÌÃ¬x0p\'$\Ì#\ãhD7]ıGÌ£b\ä\Í8\0\0q0Ft³\ì+¹q8b\Æ8!a±G#ºy¦¹=•M\ÙbnfÅƒó8!a±G#ºyjs‹yT\Ô\Æñƒyûõ\0\Æ		óˆ\Å8\ZÑ\ÏûE§Hw\ï€\ãøÁ¼ız\0ã„„y\Äb\è\æ\É\ìŸø™[[»4\æ\ÆaV<8\æ‹q4¢›‚\Z§s\ã\0\0\ÄÁ8\ZŒ“1cœ0XŒ£Á8iÁ¬x0p\'$\Ì#\ãhŠkœá‘£\ZŒ\ãóö\ëŒ\æ‹q4\Å5N\ã\æ\í\ZŒ\ãóö\ëŒ\æ‹q4VÆ™™uJp‹\Ím½nqpd‰8\\\æù‹—–İ ¹q˜\Îã„„y\Äb‰q65µ»[\ëtô\r9Åˆ€$S¿&N~ +\è	˜\0 \Æ\Ñ\ØÎª9\ãˆb¢QŒ,Frû¸¢\'‘{]6™¦gÕ\Ş\Ò*üò\×/\Éjò\×-z\ËÙµ÷µß¶v[}»·œ¾ƒo\æª<Y\äÈ‘ÿÎ¾ü”\'£©£\Ô4?\å\É(G\"Ö¶<\Ïm\Æ8	5u‹y6N$\Zy	E\'Ò6N\ÙúÊ÷OŸ\Ú÷¿.«\É_·\è-\ç\Üùg\Î~hõ\í\Şr¦¦¦rU,r¶µõ\ïT~Ê“Q\ÔQjšŸòd”#k[\í1Œqj\êsk\ÑJ4„)\ãD÷²\Öcœ²ó;q\Ìg\Õ8\\9\æË¬š\Æ\Ä8z\Ì\â\Ğ\çq¢L}g\ÙG*`?˜·_`œ0XŒ£11xdn!9\ÅD×ª9\ÅH¦SŒ\Ë,\ÓSEÌÃ•?ÁÀµj!a±GS\Ü\ß\ã\ä\íN\0\0q0¦¸\Æ\É\Û\Ó\n8b\Æ8!a±GS\\\ã”anfÅƒó8!a±GƒqÒ‚ö\'$\Ì#\ãh0NZ\Ğ~ƒã„„y\ÄbMq\Ó\ÚÑ£17³\âÁÀyœ0XŒ£Á8\0\0Ùq4\Å5N\æ\Æ\áˆ1ã„„y\Äb\r\ÆIfÅƒó8!a±GƒqÒ‚ö\'$\Ì#\ãhŠkœƒC\ZŒ\ãóö\ëŒ\æ‹q4\Å5Î³M»4\æ\ÆaV<8\æ‹q4\Å5N\æ\Æ\0ˆƒq4\'-8b\Æ8!a±GƒqÒ‚Yñ`\à<NH˜G,\Æ\Ñ\×8\ã±d[\Úo0`œ0XŒ£)®q\ÊÀ8~0o¿À8!a±Gchœ¾!÷p\ÏMM\ís*¹Ç€6¨ƒJZvk\æ\ÆaV<8\æ‹q4VÆ™™â“>ñRôZŒ38R«GÌ\0\ãh\Ç8\"”2\ãˆ_$3Z”ÁN4Ş‰(ûş=Î––.\á\é-­²šüu‹\Şröö\í\è\ì³úvo9‡\ß\ÊUy²È‘#ÿ]{_\ËOy2Ê‘:JMóSŒr$bmË³å¾ƒÁ\'¡¦n±XÆ‘Q^İ¸)5=ğ)»Õ€¾\çÀ\èÄ¤ İ¾¬&İ¢·œ3g?<ñû÷­¾\İ[\Î\Ô\ÔT®Ê“EÎ¶¶‰É“ù)OF9RG©i~Ê“QD¬my^|t8\ã$\Ô\Ô-\È8G4Y­\Ú[\æ³jœ‡\r®	óˆeVM“\ã\È@fSS{\Å5e5=\ÛVŒ\ãóö\ëŒ\æ‹q4ù1R“\×\î]7«¿À ¹q¸ò\'¸V-$\Ì#\ãhŠû{\n\0ù\ãh0NZp\ÄŒqB\Â<b1¦¸\Æ)\Ã\Ü8ÌŠ\çqB\Â<b1\ã¤\í70NH˜G,\Æ\Ñ`œ´ ı\Æ		óˆ\Å8š\â\Z§»w@cnfÅƒó8!a±GS\\\ãlm\íÒ˜\0 \Æ\Ñ\×8e˜‡#\Æ``Œ\æ‹q4\'-˜\Îã„„y\Äb\r\ÆI\Úo0`œ0XŒ£)®q†Gj0\ÌÛ¯0NH˜G,\Æ\Ñ\×8›·kÌÃ¬x0p\'$\Ì#\ãhŠkœ2Ì\0\ãh0NZp\ÄŒqB\Â<b1¦¸\Æ\ÉÛ¬\Z³\âÁÀyœ0XŒ£)®q¸rÀóö\ëŒ\æ‹q4\Å5N\Ç\æ\í\×\'$\Ì#\ãh\Ó\Ñ7=\Üspd\Ü=\îóü\ÅKzŠ™17³\âÁÀyœ0XŒ£±2\ÎôÌ¬ \Ó\Ü\Ö[¶¼+V\Ò/07\0@Œ£1\ãˆb\"\ãÈ‹MM\íe+ˆ’\âk–\İÀS\ß\ÉsGgŸğLS›¬&İ¢·œ‡~\×õ\êA«o÷–3|\Ìøÿ\ì!Gü;zóSŒr¤R\Óü”\'£‰X\ÛòüöCÁ\'¡¦n±@\Æqh2Ø‰Vˆ&\Óôše)\ĞO+88ü–\Ğô\Ê>YMşºEo9§NŸ˜´úvo9SSS¹*O9\Û\Úz\Æ\Ş}/?\å\É(G\ê(5\ÍOy2Ê‘ˆµ-Oó\ÃG‚1NBM\İbQŒ!\ãšh°£\Ç8\ÚD1ŸU\ã<l0p\å@H˜G,³jšTŒóü\Ø\Ì\Ü\Òte¬{\ÙOU3NôZŸÇ‰Ÿ\å)\ãøÁ¼ız\0ã„„y\ÄbM½\Æé›ª\è\ç 3}IŸ\Õ\Æ\Ñ8U9\ÅÈ¢SŒËŒ‹)¹q¸ò\'¸V-$\Ì#\ãh\ê3\ÎĞ™sI—u›\ê\Ìl?¶vôhÌ\0\ãh\ê3N÷\Èô’L\ç97(™i\É|?\æ\Í81cœ0XŒ£©wŒ3}\âù…\Å\ÒLšò´œ¸¢òı`nfÅƒó8!a±G“q†\Î\ÌEsh2ö\Ép>­\"\Ç\æ\í\×\'$\Ì#\ãh\ê¼r ó\Ü\Í	´\ÎsúúŒ,\æ\í\×\'$\Ì#\ãh\ê¾:Z†6óI]BPš^\Ë~V\íÀ\à\Æ\Ü8ÌŠ\çqB\Â<b1¦¸÷~¶i—\Æ\Ü8\0\0q0¦¸\Æ)\Ã\Ü81cœ0XŒ£\É\Æ8œ\Ç	óYqp\'$\Ì#\ãh0NZ\Ğ~ƒã„„y\ÄbMq3K¶qEû\rŒ\æ‹q4õşg®Zº\í\Æ8ÌŠ\çqB\Â<b1†+\0\0²\ãh0NZp\ÄŒqB\Â<b1¦¸³jyû=³\âÁÀyœ0XŒ£)\î\'o÷ ı\Æ		óˆ\Å8š\â>§Œ\ãóö\ëŒ\æ‹q4†\Ï\0\í\èŠ\î982®Ÿ\êhn\ë&\é–-‰¹q˜\Îã„„y\ÄbM*³j\Î/:\ÅT\ÆôÌ¬\'dF\ëˆq\ÄD5–Á\Ü8\0\0q0\Æğ<%2N„6hHyeş\Ô\Ï\0•ƒaKK—¬&İ¢·œÃ¿;ph\Ä\êÛ½\åŒNL\æª<Y\äÈ‘ÿ\Şş¡ü”\'£©£\Ô4?\å\É(G\"Ö¶</<4Œqj\ê—%W\Æ9ñÒ¦¦vm7b’üü\ç\Ä\ï\ß\éäª­e‘355•«òd‘³­­gô\Éü”\'£©£\Ô4?\å\É(G\"Ö¶<\'Ÿ\Æ³HN\Å5eµø`§óY5\Î\ÃW„„y\Ä2«¦É‰qôdZY­šŒ\"0\ÌÛ¯0NH˜G,\ÆÑ¤dœ¡3KúYÓ<µqôU’/rïºœø\é8\æ\Æ\áÊŸ`\àZµ0XŒ£\É\Æ8Cg²¿\ç@w\ï€\Æ\Ü8\0\0q0¦~\ãt«t“›\Ä_†¦\Â\Ö\Ö.¹q8b\Æ8!a±G“\Í\Ç\0s\ã0+œ\Ç		óˆ\Å8š\â\ŞW­Œ\ãóö\ëŒ\æ‹q4©gşv7·ó\Ùh¿Á€qB\Â<b1&µYµ¹™‘¯ûqx\ä¨\Æ\Ü8ÌŠ\çqB\Â<b1¦¸\çq\Z7o×˜\0 \ÆÑ¤5«öü\ØLò¢³\Æ\Ü81cœ0XŒ£IoV\Í÷3@\Ë07³\âÁÀyœ0XŒ£)\îµjy›U£ı\Æ		óˆ\Å8š\â\Z\'oW\Ğ~ƒã„„y\Äb\r³jiÁ¬x0p\'$\Ì#\ãh2\ãôM-û\Ğ\Ô17\0@Œ£\ÉfV­¦{G§‹¹q8b\Æ8!a±G“‰qZN\\\É~V-owòdV<8\æ‹q4\ÇñğÛœ¼=­€ö\'$\Ì#\ãhŠ{­Z\Ç\æ\í\×\'$\Ì#\ãh\Ó\Ñ7=Ü³¹­\×\rG–ˆ\Ãe¿xiÙ­™‡Yñ`\à<NH˜G,\ÆÑ¤g5±V\Ã=Ö¦gf…\È8òzSS»~!È»b%ı\"s\ã\0\0\ÄÁ8š”Œ\Ó=2­\î\İr\âJ\rÒ‘q3(&\Z\Å\È\'’‹Ø§lM¡µ£§\"b9˜¶´t\Éjò\×-z\Ë9ü»±‡F¬¾\İ[\Î\è\Äd®Ê“Eù\ï\í\ÊOy2Ê‘:JMóSŒr$bm\Ëó\ÂCCÁ\'¡¦nÑ—q\Ê\î]\Ó\Õ\Ñ\Ú8‘P´q\"\r\Â8\'~ÿ¾H\'Wm-‹œ©©©\\•\'‹œmm=£\ïL\æ§<\åH¥¦ù)OF9±¶\åÁ8G£®Oë›ªeb­\ÚGòbcœ²ó;q\Ìg\Õ8\\9\æË¬š&“ó8µıG\\ôyœh}\'\ÒP50\ÌÛ¯0NH˜G,\Æ\Ñ^«¦]«\æ#\ŞqŠq™\Ñj	˜‡+‚k\ÕB\Â<b1&5\ãôMy¾“\çÁ!¹q\0\0\â`Mz÷ğ}#µg›viÌ\Ãc00\Æ		óˆ\Å8šl®U3À\Ü8ÌŠ\çqB\Â<b1&­Yµ\Îs>î¥–\0\Æñƒyûõ\0\Æ		óˆ\Å8š\â\Ç)\ãøÁ¼ız\0ã„„y\ÄbMz\çq\Ô=¼0K	+_ù\Ñ]W\ß5=\Ïó\\{\ä{™y¾ıŞ¬\â«\×û~_/%¾B\Ùôö\å\ëfn–¡TW6)§øóy>{è»Ÿ\ÎóÉƒ\ß=öWf\Òd4\æ³\â\à<NH˜G,\Æ\Ñ\Ü&\çq0\0˜€q4iÍª=?6\åyŒS\Æñƒù£ã„„y\ÄbMFOd\Ë\ÛyŒ“\æ³\â\à<NH˜G,\Æ\Ñ÷‰l·ô{Œ“\æ\í\×\'$\Ì#\ãh21Néºµ|\İs\0ã¤…yûõ\0\Æ		óˆ\Å8šTSºƒô|ò}\İZ³j¾0Ÿ÷\0\çqB\Â<b1&\ã<?6\ãLsez\Æ\êw \0r\Æ\Ñ\Ôgœ…\Î\İ|†š¨\ã„mó#F0\Æ		óˆ\Å8šTŒse¬\Û\åø4Nü 	+cœ´0Ÿ÷@\Î\ã<°u\Ï[÷–xA³\ï&Mû,£9¢\'™z\ã\'º\'®³°©¥_qó«of¡l¥\Ò\î¹É¿t\ß?\Ïc\Ï\íJ¨\ã\ã-üd\ï?]Âƒ%ö•ó\Äş\êô$ğ\Ğ=-g“×©º\å\Å”JµP\Â=%~\â\èv<şTKB51&\ÕYµ™3\ç0\Æ)<y0Îª\Î\ÑUo¯\ê*±ºklu·c|õ\ÇD‰½kö¾Sbß»Š\ã%ö/²vÿ\ä\"=K™\\²\ÎşIıñù\rª\í\Ï\ã|\ÆK\å‘Ru•\ÊY*ğèª·Vuş\Ç\î£ÂŸ¿ÔŸP\ÇGŸÜ½z\İ\è\êuo¯^_b\Íú±\Æ\×l&k7¼Sb£ğ®\âxw\ß7¹”1–¬ß‚\Úx\é\ë\n %q¥r\å/ó[«\×V\İ{Tx\ä\Éö„jbM6W\ÜÚ…jƒ#\ãú—<ñü\è™\Ô	`?`?`Œƒqje¥WG7·õŠe¢Ey½\ìÃ¦#0\Ìg\Å=‡ó8\ã`œ¬)\ËLœü`SSÒ®\Ô`	Œƒq0N¦tô\r\éNÃ¼qÜ¬š\Î\ï\î¨ˆ\ç\àğ[B\Ó+ûd5ù\ë]N0\Æ)«W¼¦Y\ç\ï”\á·ûÉ‘1N\ï\ëGl\Ë†qşrÿÑ„šcœ_<s aŸ6?|$\ã$D¯[,qN\ÖL\Ï\ÌFƒ­­]\ã\ì\è\ìij“\Õ\ä¯[t9Á§¬^ñšf355eø\í~r¶µõ?n[0Œó\à\î\Ã	5\r\Æ8?ıûı	ûô·\n\Æ8	\Ñ\ë‹bJ²q–\İ³j~\à\Ê?„af\Õ\Z˜U[JNŒ£§\Ô\Ä>\îŠ5›U“w—\İ\Æñ\Æñ\ÆÁ8\'\Ï`?p­š0\ÆÁ8¹bx\ä¨\ã\Ü&<ò\ÊO6ô>°ñ\Õú„÷õ/p\à!\Çı¯-e\àG\Õx\àõª$|\êş%ÛŸÿ\ÒR6ö»\"•J¸A\è\î\ß\Ğsÿza¿p\ßú}÷%W\ã`Œ“+\Z7o\×`?˜q~\ÔşW÷¾v\ï½÷®XW\âõyK¬\\¿ş\ào¬\ßğÆ†‡–2´\ÈÆ¡K8\\µşxù–\ß\Ø _\ê¾İ•Ç•MŠZ\âµ{\ï9pO‰ş{~\Øÿ\Ãöı0¹š\ã`œ<ƒqü`~\ã`Œƒq\ÌÁ8~À8\ã`œS\\\ã0«f\ÆÁ8ã¬˜\â\Z‡+L\à<\ÆÁ8g\Å\×8e`œ\ÛŒƒq0\Æ1\ãø1\ÆÁ8g\Å`ŒsKp\ã`Œ³bŠkœø<V¾Œó¿7mzùùÇ—°\åñWb\ìŠø\ç\n´-Ç§\'^N^¡\Âf\ç¿N—A\nrg\Äs·\Î#I¨&\ÆÁ8\ãø\'ş´‚„•o\ã¼üüg\Û\îøª½\Äõy¾\Ş]\â¡\ã\Îo\çù·\Îÿ>\Ït-òŸ\îEş«û;‹\ìù\ÎÇL½ş¬\ÛZ´ñ\ï*}|¯@Jòõ\î\×\Û\ï”rJ…/w\İ1³\ëk¯\Üñ…ğò­\Ïı8¡š\ã`Œc\ÆÁ8\ã`Œ\ãŒƒq0\ÆÁ8\Ç\ã`Œƒq0NF´vôh0\ÆÁ8\ã`œŒÀ8e`Œƒq0Æ©…Šûln\ëu™\Ñ\ãAÀ8\ã`Œƒqj\áü\ÅKñL\ÑĞ¦¦vı\"Œƒq0\ÆÁ8§\â\Æ\ÅD™2\Æ\ÑcŸŠ`Œƒq0\ÆÁ8µ0·¢±Œ¼˜8ùAC\Ì8‡*\"\Æ˜vtö\Éjò\×-ºœ`ŒSV/]\ÓÓ‡ÿ%ã¼±û\ï\â{0\Êù\åPcÆ©«.\'\ã<ş\êhB«\Æ8›_¯\Ö*…\Æ8	ı[,Šq\Ím½Ñ¸¦lŒ#o¹\×\Ï6\íªˆgKK—ğô–VYMşºE—Œq\Ê\ê¥k\Ú\ßú‹0Œ\Óù\ÂÿŠ\ïÁ(\ç\î{\"\ãT‹U—†q6¾òFB«\Æ8?ş\Û=\ÕZe‰ûcœ„ş\Ç-\Î8Ñ¸¦a\éyœe?Ë¬\Z³j\Å2Nr<‡af\Õ\Z˜UËŸq¢k\Ò$5ÌnÜ‹(Ù“8\r\ã`Œƒq0/0\ÆÁ8\ã`œŒ¥„•1\ÆÁ8\ã`œ´À8\ã`Œƒqü€q0\ÆÁ8\ãø\ã`Œƒq0\ÆÉˆø\ïqV\Æ8\ã`ŒƒqVLü	+cŒƒq0\ÆÁ8iq0\ÆÁ8\ãø\ã`Œƒq0\Æñ\ÆÁ8\ã`Œ“<´Œƒq0\ÆÁ8q\ÊÀ8\ã`Œ\ãŒƒq0\ÆÁ8\Ç\ã`Œƒq00\ÆÁ8\ã`œŒ\è\î\Ğ`Œƒq0\ÆÁ8±µµKƒq0\ÆÁ8\ã\Ô\Âô\ÌlôĞˆÁ‘q—yş\â¥e·€q0\ÆÁ8\ã,Ë¦¦ö\æ¶^y\Ñ\Ñ7$–‰ò\åµË¯Œƒq0\ÆÁ8§vÊŒ3qò‘QŸ\Å8\ã`ŒƒqjD\äR6{&\Æq³jZC\Ã#G+\"\Æyÿô¡}ÿë²šüu‹.\'\ã”\ÕK\×ô_\ßz)\ã\éş‡øŒrşşÍ§\Ã0NµXu9aç§¯%µ\Ê`Œóÿ|¨Z«¶ÿ\ÅH0\ÆI\è\ÜbQŒ#£›\é™\Ùj\ï\Ê[\Ñ`§qóöŠˆq\Ş\Ò*üò\×/\Éjò\×-ºœ`ŒSV/]Ó®¦\'\Â0N\ÛoßƒQ\Îc]†qªÅª\Ë	\Ã8÷\ìHh•Á\ç/\ÑY­U\n\Ïm\Æ8	ı[,„qš\Ûze8“°B‚Œ\"˜UcV­X\ÆI\ç0ŒÃ¬Z³jKÉƒqd€3·\Üp\Æ]´]À&+,»Œƒq0\ÆÁ8\'#\â³j	+cŒƒq0\ÆÁ8+&~\å@\Â\Ê\ã`Œƒq0NZ`Œƒq0\ÆÁ8~À8\ã`Œƒqü€q0\ÆÁ8\ãdwò,\ã`Œƒq0NFğ´‚20\ÆÁ8\ãø\ã`Œƒq0\Æñ\ÆÁ8\ã`Œ\ãŒƒq0\ÆÁ8\'#Z;z4\ã`Œƒq0NF`œ20\ÆÁ8\ãø\ã`Œƒq0\Æñ\ÆÁ8\ã`Œ\ãŒƒq0\ÆÁ8\'#i0\ÆÁ8\ã`œŒx¶i—\ã`Œƒq0Æ©…‰“¸\Ç}njZ\Üw\Ím½.sp$\É&Œƒq0\ÆÁ8gY\Ä,\ç/^\Ò/\î	\ÔúE\ã`Œƒq0Î²\È¦£o¨aÁ2\î…(&²^¡\Z\ã\ÜnÆ¹©›TŒÓ“¢q\Ş\Â8\ZŒ£É‰qdt\Ó3\Î\Ä\É¢\"ãŒ“H$)g\é¯\ÖX \ãDB‰\Æ5ecœHI¹e_ÿ\à–\í\æ\ÅÈšñÄ±d\È~”½i^Œ¬!bƒ¡@›\ã\èó8Ñ¸¦a\éyóÔ²\Ğ~ƒ¡@\í·ˆ\Ø`(P\Ä\æÁ8\r\êZµ†ùÑ{]«¶\ìIœ<@û\r†µ\ßz bƒ¡@›\ã\0\í7\n\Ô~ëˆ\r†E,\ÆI\Úo0¨ı\ÖŠXŒ“´\ß`(Pû­\"6\n±\'-h¿ÁP ö[Dl0(b1NZ\Ğ~ƒ¡@\í·ˆ\Ø`(P\Äb\0\0ğ\Æ\0\0?`\0\0ğ\Æ\0\0?`\0\0ğ\Æ\0\0?`œ†…;¹¹¤	·:ú†V¶ùT\Ö÷Ç¶­ft—<}³\Öğª982^ûƒkZ\Ç:?X”jF\ënój5T\Ğz¸E?\Æô¿Zú\Ãt‰²£W\ÜÃ¸À™\Ízw\ÛVS?b\Ù\'º·š™\Şğ<u”ı˜µq\Ìf¦‡\rù©f\Ö\ZŒ#{ªlg¹¾\"\ê1dw¸xˆnp\í:LinÑAt|\í¾ø’l\ĞKTì‹¢o	»š\r\'?\Õ\Ì\Î8y¨£{dU¦\Æ1¯¦t\ã\îZo^Mç¸„HNŒÜ›\ë\Ëöxt\á§× 1¢=\íhy\Ë\å¸=\î6d\Æ\ÉC5ky€x¡«Í„]G·B\ÖÆ±­¦¼zò€«)\Ûq‹q÷eÆ©ñ#š\êŒ\\@ºU¶\Çõ#³\Zf´ÁŠ½nN\Æ8™VSV\È:¤óPMGt,\Z^£ü<Œq<\ìÊŠ\ÇNÁT3Ú‰~¦\×0;(:‡h5\ÚA\îKµ™R·k<\Æh¨´Ç£\ídjójf]ÁœT3\"»KAl\ëùg}üŸŸ]™i\èšW3ò)co\èkEô~Ñ³£\rj\âTŞŠ>\âZœ[¬8ª#\'Ú²\ã˜W3\Ú\ìœ\Ç\ë¸«pue³«£y5£ó&>¯®4Ù›ò\Ö\\Æ“‡§w\çó\â\rªI5©#Õ¼Mª‰q\0\0À\0\0ü€q\0\0À\0\0ü€q\0\0À\0\0ü€q\0\0À\0\0ü€q\0\0À\0\0ü€q\0\0Ài\ç\ï\Û\Ñ;ø\æÿ=wş£)‰D\"’¤K—]ºw\é\äsb)\Éë‡]¾|ùÊ•+×®]›!‘H$RIºt\éØ¥{—N¾~\é¤bœöıƒ]ü\Ã_|ñ‰D\"‘‚KÒ½K\'/]}Œ³\çÀĞ§Ÿ~vıúõoH$‰\\’\î]:y\é\ê\ë7\Î\Ï75×¹‘}¯–a×·$‰D\n4I\'/]}²\İ<µ¹\ãH$)!¥b\Ñ\Í3\Í\í‡D\"‘H	)\ãˆn\ÜC´\Ó5Î—=/L?|\×\ß5ó\È÷fı\ŞWó\\\ìû_?ö}ù\ë%ÿ\Ú#w]ı\Ñ]Ÿ=ô\İkû·Zı\ÓM_¿÷›\ë\íw|³û\ë¼ó?º\îüO¡û\Îÿ\êş\Î\ïùü•×’#ù\ßv\ÜùUû3»î˜üu‘\ÓI\İgº\×\r¬[7¸nıÁõm(1´a\ã\ĞÆ‡7\Ê_y\í2\å\İ{\î½\çÀ=]tY9´ó\äÔª®·Ww¯\Ş;±fß»kö_³ÿø\Úı“k{N\È_y]\Ê\Ù÷\î\ê=\ã²Úªc­\ïı«u‘\ÓI;÷L­^ÿöšõ\ãk6L¬\İø\îÚÇ…»ï›¼û¾ò\×-Jşš\r\ã²\Ú\êu\ÇvvRññS\ÛV¿ı\âšñ\ík&ZÖ¾+\ìX{|\Ç\İ\Ç[ï”¿ò\Úe¾´f\\VkZ}llg O\Å8¢›®ş#õ\ç\êÕ«ºl\ã`ŒƒqB2tòõGtsdtã¤•0\ÆÁ8\ãTCtsúÃòiœó;7ş J\Ã)ş\ë†°q\çù:·P±H©\'§/Õ¹j™R1N>+¾XªJ›H\Å8ù¬¸\ÚF…B¥bœœV\\+VªTŒ“ÓŠ«J\ÛJ*\Æ\İL\Ï\Ì6\Ö÷K\ÒıGR7\Î|½÷Dµş’l\"•=;\ßñ66V\ŞZı\Æ\ÉmÅ‡w.D`¥˜®\ß8ù­øğp´½x[®\ß8¹­¸K®\Ê\Â8ù­x\âv\ê7N~+^*Y\Õ\rI\'/]}=¦Ñˆn\æ\æ\æZ÷\ä\Ë8*.Yõ¬¥\Ú«m­^\ã\ä¿\â\ßV.Q½\Æ)D\Å+m°^\ã\ä½\âÃwî¬´½z“çŠ—*]µõ\Z\'\ÇO\ŞLı\Æ\Ñ\ÌÍ§‘ñ“u\ZgzzZ—­^\ãTªù\Í#L½s\Ê^/£.]^œ*}@m^n²\æ\ß]ø@µ‘qò_ñ*…¬\×8E¨x\Å}^¯qò]q÷ñ\Ê¯\Ó89®x…¨T¯qò[qY¿qg\ÕIµo¥“¯\Ó8\"\Zgœ\Ë^\Ï\ÄZ\êÆ©8¶»¹*\îY­‘¨œ…—¥\ïÑŸs¯İ´\Ùğ’¼X\Ê\Æ8¨x•·\ê4N¾+~³…VtQ\Æ\Éu\Å>œ…qr]q]\ÈØ›u\Z\'\ÇWoVú·\ÔiQŒˆfn!uö­ü”Ÿ1N\ÒNY´üM=;½/ù—U\Ø)K\Ïó[+ûòª\ÃLcœU¼úŒscœU¼z\í³\ã\ä¢\â\êÛ½qrQñ\åJ™\Å\'_b™x1\ë4(fN¥Sg/¬xS=¯§lœ„©\Îj;¥R\Ğ,9\éY\ã\ä¹\â‰-3\Ãó8\æ_ú/(\Ë\Êğ<i\Å\Ëú¹ø4K†\çqr¶\ÇS6N~+®¿¾²q¤«_±&D1\Ú87n\Üxy\ß\n\ïD¾q\\À/\Öş¼º¸cQÄ‹\ãÆŠ£ß²Ü­<ÍŒ“ßŠ—\æx«¶\Ë4®U\ËkÅ£K\Õ*Ï‡\Ô­Z^+^a\ÃK*^÷µjù¯x\Å=^ÿµj¹­øb}+Õ¼\ãˆ\\D1sKÓ©3Vvi)\Æ_|¡Ë–ş\ïq\Ê÷\Ğ|Vc\ã’N½\ê\â¢şÿ vrM}¬|—U\Ş)\Éo¤ÿ{œ¼T<6¶_\Ú\Òÿ=N^*®\nU©İ§ÿ{œ¼T|1edœ\ÜV|ñ•öxú¿\Ç\ÉM\Å\Õg*\Ô\\:ù•G´\"r™«”ö¼™\ãT\ÚCU\\Ÿ›”ş=\nRñô\ï9PŠ§Ï¢T<õ{¤\â\é\ßs  _±qD+u#\éúdóK]y4NAw¹\á.7\Üå†»\Üy—›•G„\"Z©fIc\'Nÿ\ìŸ\n\Ú;ø&\Æq	\ã`ŒƒqB5tõ·¤Q‰%A7.õbœ•%Œƒq0\ÆÁ8QÉ²º‘ô\å\ìõİ¯ª}³¯¹v\íšõÿƒD\"‘HY%\éä¥«¯\İ\"QI-Æ‘ôñgWk¿\Ù\Z\Æ!‘H¤°\Ó-Gô!©Q7.]şø³\Z¥\ãfÕ¾ù\æ\ë	‰D\"‘\ÒOÒ½\×>«&\â}Ü’n¢‘N-\Ókû†?ı\ìó¯¾ú\Êú¿B\"‘H¤ô“t\ï\Ò\ÉKW_\ËdÚ­ntúrözÿ\Ğhò\Õk/\î\îû?g\Ï_½zUJ\ÅH‡D\"‘‚IÒ¥K\Ç.İ»tò\Ò\Õ\'ˆ@4!²¨ı\ÜMB\Z;q:\áw:ó\ì‹û^ó£?\\úòé§Ÿ~F\"‘H¤ ’t\éÒ±K÷.¼tõ\Õ, ‚¨\åB\è\Ú\Óÿô\ÉŞ7«\İGJ\Ò\Òu`ôøûg/ü\á\Â\Å\Ë\0\0\0Ò¥K\Ç.\İ{5İˆD\r\É?ó\\q:u\æÂŠoø	\0\0!!:¨vÏ´´Ò7N½\Ğ\Ùw¸‡¸\0@A‘\Î_ \"ˆ\ß:»tù\ã\ÏG\ÆO¶\î@=\0\0Á#]½tø\Ò\í\ë§yúO\Ó3³§?ü\è\È\èdWÿ‘\æ¶\ŞgšÛŸ\Ú\ÜòóM\ÍOşª	\0\0\n‡t\àÒKg.]ºt\ìÒ½K\'/]}ı¾øÿ\Ûñˆ7\nendstream\nendobj\n4 0 obj\n<</Length 218/Filter/FlateDecode>>stream\nxœ…QÁN\Ã0½\ç+\Şqª¦\Ş2ÊvË‰[I=V\Ö4\Ôm&ø{ZÒZaKÖ“ıô-·ª…1\Zc\Ò]\å\Z«•óH+ÿš\á!`¯öªU÷V\r³\\¯aK¥‘dù\Ò]†Œ`j\Ùxf©«m\ì$xX.•c$8D¹ğ\'vAğ\"E\ãN	ÈA¥\è«\Ğl MJš\èÆ¾©qÁk\ç…=ñ¯\Âw±\î7“4ü\í.õ\í\ì³6üñ\Î\ÒÃ…\ÆÕ±6ë¦½|³„bZ\è_ya¼\ç¦ü9~’^Òc¡ot\Åy´Ã›¾\0øs\nendstream\nendobj\n6 0 obj\n<</Type/Page/MediaBox[0 0 595 842]/Resources<</Font<</F1 3 0 R>>/XObject<</img0 1 0 R/img1 2 0 R>>>>/Contents 4 0 R/Parent 5 0 R>>\nendobj\n3 0 obj\n<</Type/Font/Subtype/Type1/BaseFont/Helvetica/Encoding/WinAnsiEncoding>>\nendobj\n5 0 obj\n<</Type/Pages/Count 1/Kids[6 0 R]>>\nendobj\n7 0 obj\n<</Type/Catalog/Pages 5 0 R>>\nendobj\n8 0 obj\n<</Producer(iText® 5.5.13.2 ©2000-2020 iText Group NV \\(AGPL-version\\))/CreationDate(D:20220603165817+03\'00\')/ModDate(D:20220603165817+03\'00\')>>\nendobj\nxref\n0 9\n0000000000 65535 f \n0000000015 00000 n \n0000000353 00000 n \n0000010827 00000 n \n0000010396 00000 n \n0000010915 00000 n \n0000010681 00000 n \n0000010966 00000 n \n0000011011 00000 n \ntrailer\n<</Size 9/Root 7 0 R/Info 8 0 R/ID [<9d507c3fd55bcf78e09eea0f111b85da><9d507c3fd55bcf78e09eea0f111b85da>]>>\n%iText-5.5.13.2\nstartxref\n11171\n%%EOF\n','2022-06-03'),(37,'ORDERS','5555','System','MONTHLY',_binary '5555 Tel-Aviv 02\nProduct 5 Rose Bouquet\nItem 1 Cactus Flower\nProduct 1 Sun Bouquet\nItem 7 Bazil Plant\nProduct 7 Colorful Bouquet\nProduct 10 Holiday Bouqet\nItem 5 Pink Tulip\nProduct 14 Casual Bouquet\nProduct 17 Birth Bouquet\nItem 23 Bride Bouquet','2022-02-26'),(39,'INCOME','5555','System','MONTHLY',_binary '5555 Tel-Aviv 02\nproduct 7 16 5.3\nitem 14 7 23.3\nproduct 25 5 23.3\nitem 4 15 4\nproduct 16 7 5\nitem 27 8 20\nproduct 1 13 20\nitem 19 5 14\nproduct 25 3 2.3\nitem 3 19 2\nproduct 25 1 14\nitem 23 27 53\nitem 12 7 21','2022-02-26'),(40,'INCOME','5555','System','QUARTERLY',_binary '5555 Tel-Aviv 3 2022\nmonth1 item 13 12 24\nmonth1 item 4 8 15\nmonth1 item 27 3 22\nmonth1 item 15 2 4.6\nmonth2 product 12 4 1.3\nmonth2 product 19 8 63\nmonth2 product 24 6 15.3\nmonth2 product 3 4 5\nmonth2 product 2 8 30\nmonth2 product 27 6 13\nmonth3 item 4 34 6\nmonth3 item 12 2 4\nmonth3 item 19 1 67\nmonth3 item 3 4 5\nmonth3 item 8 3 20\nmonth3 item 5 11 4\nmonth3 item 25 4 5.5\nmonth3 item 23 5 4','2022-09-20'),(41,'INCOME','1010','System','MONTHLY',_binary '1010 Karmiel 01\nproduct 27 4 5.3\nitem 17 4 23.3\nproduct 12 10 23.3\nitem 4 15 2\nproduct 16 7 7\nitem 27 5 20\nproduct 5 20 20\nitem 14 8 14\nproduct 25 6 2.3\nitem 17 22 3\nproduct 2 5 14\nitem 7 4 53\nitem 15 10 21','2022-01-10'),(42,'INCOME','1010','System','QUARTERLY',_binary '5555 Karmiel 3 2022\nmonth1 item 6 5 24\nmonth1 item 4 9 15\nmonth1 item 27 6 22\nmonth1 item 15 2 4.6\nmonth1 item 18 3 22\nmonth1 item 2 8 4.6\nmonth2 product 12 4 1.3\nmonth2 product 19 8 63\nmonth2 product 24 6 15.3\nmonth2 product 3 4 5\nmonth2 product 2 8 30\nmonth2 product 5 2 13\nmonth2 product 15 8 1.3\nmonth2 product 12 26 63\nmonth2 product 26 3 15.3\nmonth3 item 5 6 6\nmonth3 item 12 2 4\nmonth3 item 19 1 67\nmonth3 item 3 4 5\nmonth3 item 8 3 20\nmonth3 item 5 11 4\nmonth3 item 25 4 5.5\nmonth3 item 23 5 4\nmonth3 item 7 2 42\nmonth3 item 17 4 5.5\nmonth3 item 13 5 20','2022-03-10'),(43,'ORDERS','1010','System','MONTHLY',_binary '1010 Karmiel 02\nProduct 17 Rose Bouquet\nItem 8 Cactus Flower\nProduct 2 Sun Bouquet\nItem 27 Bazil Plant\nProduct 5 Colorful Bouquet\nProduct 18 Holiday Bouqet\nItem 1 Pink Tulip\nProduct 23 Casual Bouquet\nProduct 14 Birth Bouquet\nItem 28 Bride Bouquet','2021-02-28'),(44,'COMPLAINTS','1010','System','QUARTERLY',_binary '1010 Karmiel 2 2021\n13 6 2 70','2021-06-28'),(45,'COMPLAINTS','5555','System','QUARTERLY',_binary '5555 Tel-Aviv 1 2021\n3 6 2 88.7','2021-03-23');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceexpert`
--

DROP TABLE IF EXISTS `serviceexpert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceexpert` (
  `serviceexpertID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  PRIMARY KEY (`serviceexpertID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceexpert`
--

LOCK TABLES `serviceexpert` WRITE;
/*!40000 ALTER TABLE `serviceexpert` DISABLE KEYS */;
INSERT INTO `serviceexpert` VALUES ('25 ','Lior','Guzovsky','lior@gmaill.com','0549012345','CONFIRMED',0),('5','Mor','Ben-Haim','mor.ben.haim@e.braude.ac.il','0522345678','CONFIRMED',0);
/*!40000 ALTER TABLE `serviceexpert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopworker`
--

DROP TABLE IF EXISTS `shopworker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopworker` (
  `shopworkerID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  `branchID` varchar(256) DEFAULT NULL,
  `acctivityStatus` enum('SURVEY','GENERAL') DEFAULT NULL,
  PRIMARY KEY (`shopworkerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopworker`
--

LOCK TABLES `shopworker` WRITE;
/*!40000 ALTER TABLE `shopworker` DISABLE KEYS */;
INSERT INTO `shopworker` VALUES ('10','Patrick','Star','patrick@gmaill.com','0544567890','CONFIRMED',0,'1010','SURVEY'),('12','Bob','Sponge','bob@gmaill.com','0504567890','CONFIRMED',0,'1010','SURVEY'),('15','Roni','Hayak','roni@gmaill.com','0505678901','CONFIRMED',0,'5555','SURVEY'),('17','Natalie','Krief','natalie@gmaill.com','0526789012','CONFIRMED',0,'5555','SURVEY'),('19','Bar','Ohayon','bar@gmaill.com','0547890123','CONFIRMED',0,'2525','SURVEY'),('9','Kfir','Amoyal','kfir@gmaill.com','0503456789','CONFIRMED',0,'2525','SURVEY');
/*!40000 ALTER TABLE `shopworker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions`
--

DROP TABLE IF EXISTS `surveyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestions` (
  `topic` varchar(265) NOT NULL,
  `questionNumber` int NOT NULL,
  `question` varchar(265) DEFAULT NULL,
  PRIMARY KEY (`topic`,`questionNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions`
--

LOCK TABLES `surveyquestions` WRITE;
/*!40000 ALTER TABLE `surveyquestions` DISABLE KEYS */;
INSERT INTO `surveyquestions` VALUES ('Customer Service',1,'How satisfied are you with your in-store experience today?'),('Customer Service',2,'How likely are you to recommend (insert product or service) to others?'),('Customer Service',3,'Rate your satisfaction with our team in resolving your issue.'),('Customer Service',4,'Did you feel that our team answered your inquiry promptly?'),('Customer Service',5,'How likely are you to purchase again from us?'),('Customer Service',6,'How likely are you to return to our system?'),('Sales',1,'Are You Satisfied with the Products in your Order?'),('Sales',2,'Did the price reducing encrouge you to order more from as?'),('Sales',3,'Rate your satisfaction with our price in the sale'),('Sales',4,'Did you feel that our team answered your inquiry promptly?'),('Sales',5,'How likely are you to purchase again from us?'),('Sales',6,'How likely are you to return to our system?'),('Specific Branch',1,'Are You Satisfied with the Products in your Order?'),('Specific Branch',2,'Are you satisfied with the branch quantity? '),('Specific Branch',3,'Did the branch have a wide enough range of products?'),('Specific Branch',4,'What is the availability of the products that were in the branch?'),('Specific Branch',5,'How likely are you to purchase this branch again ?'),('Specific Branch',6,'How likely are you to return to our system?');
/*!40000 ALTER TABLE `surveyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `surveysresultsID` int NOT NULL AUTO_INCREMENT,
  `branchID` varchar(256) DEFAULT NULL,
  `topic` varchar(256) DEFAULT NULL,
  `questionNumber1` int DEFAULT NULL,
  `questionNumber2` int DEFAULT NULL,
  `questionNumber3` int DEFAULT NULL,
  `questionNumber4` int DEFAULT NULL,
  `questionNumber5` int DEFAULT NULL,
  `questionNumber6` int DEFAULT NULL,
  `answerNumber1` int DEFAULT NULL,
  `answerNumber2` int DEFAULT NULL,
  `answerNumber3` int DEFAULT NULL,
  `answerNumber4` int DEFAULT NULL,
  `answerNumber5` int DEFAULT NULL,
  `answerNumber6` int DEFAULT NULL,
  `targetAudience` varchar(256) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`surveysresultsID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (2,'2525','Customer Service',1,2,3,4,5,6,3,2,3,3,3,7,'Customers','2022-05-30'),(3,'2525','Customer Service',1,2,3,4,5,6,3,2,2,2,3,8,'Customer','2022-05-30'),(4,'2525','Sales',1,2,3,4,5,6,2,3,3,4,5,7,'Buy flower On Sales','2022-05-30'),(5,'2525','Customer Service',1,2,3,4,5,6,3,2,2,3,2,7,'Customer','2022-05-30'),(6,'2525','Sales',1,2,3,4,5,6,3,2,2,2,2,2,'Buy flower On Sales','2022-05-30'),(7,'2525','Customer Service',1,2,3,4,5,6,3,3,2,3,2,2,'Customer','2022-05-30'),(8,'2525','Customer Service',1,2,3,4,5,6,2,2,2,6,2,7,'Customer','2022-05-31'),(9,'2525','Customer Service',1,2,3,4,5,6,4,4,4,3,2,2,'Customer','2022-05-31'),(10,'2525','Specific Branch',1,2,3,4,5,6,6,3,3,4,2,7,'Buy flower On this branch','2022-05-31'),(11,'2525','Customer Service',1,2,3,4,5,6,3,1,2,3,2,7,'Customer','2022-05-31'),(12,'2525','CustomerService',1,2,3,4,5,6,2,3,4,3,3,2,'Customer','2022-05-31'),(13,'2525','Customer Service',1,2,3,4,5,6,5,3,3,3,2,7,'Customer','2022-06-05'),(14,'2525','Customer Service',1,2,3,4,5,6,4,3,3,4,3,2,'Customer','2022-06-06');
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07 11:14:14
