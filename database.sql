-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: mars
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board_member`
--

DROP TABLE IF EXISTS `board_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_member` (
  `board_member_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `serial` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`board_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_member`
--

LOCK TABLES `board_member` WRITE;
/*!40000 ALTER TABLE `board_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleaner`
--

DROP TABLE IF EXISTS `cleaner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cleaner` (
  `cleaner_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `color_code` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`cleaner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleaner`
--

LOCK TABLES `cleaner` WRITE;
/*!40000 ALTER TABLE `cleaner` DISABLE KEYS */;
/*!40000 ALTER TABLE `cleaner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleaning_schedule`
--

DROP TABLE IF EXISTS `cleaning_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cleaning_schedule` (
  `cleaning_schedule_id` int NOT NULL AUTO_INCREMENT,
  `room_id` int DEFAULT NULL,
  `cleaner_id` int DEFAULT NULL,
  `color_code` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `start_date` int DEFAULT NULL,
  `end_date` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`cleaning_schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleaning_schedule`
--

LOCK TABLES `cleaning_schedule` WRITE;
/*!40000 ALTER TABLE `cleaning_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `cleaning_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint` (
  `complaint_id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(111) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `complaint_number` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tenant_id` int DEFAULT NULL,
  `complaint_picture_1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `complaint_picture_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `complaint_video` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_details`
--

DROP TABLE IF EXISTS `complaint_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint_details` (
  `complaint_details_id` int NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `complaint_id` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`complaint_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_details`
--

LOCK TABLES `complaint_details` WRITE;
/*!40000 ALTER TABLE `complaint_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `currency_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'Andorran Peseta','ADP',1519583748,1,1519583748,1),(2,'United Arab Emirates Dirham','AED',1519583748,1,1519583748,1),(3,'Afghanistan Afghani','AFA',1519583748,1,1519583748,1),(4,'Albanian Lek','ALL',1519583748,1,1519583748,1),(5,'Netherlands Antillian Guilder','ANG',1519583748,1,1519583748,1),(6,'Angolan Kwanza','AOK',1519583748,1,1519583748,1),(7,'Argentine Peso','ARS',1519583748,1,1519583748,1),(9,'Australian Dollar','AUD',1519583748,1,1519583748,1),(10,'Aruban Florin','AWG',1519583748,1,1519583748,1),(11,'Barbados Dollar','BBD',1519583748,1,1519583748,1),(12,'Bangladeshi Taka','BDT',1519583748,1,1519583748,1),(14,'Bulgarian Lev','BGN',1519583748,1,1519583748,1),(15,'Bahraini Dinar','BHD',1519583748,1,1519583748,1),(16,'Burundi Franc','BIF',1519583748,1,1519583748,1),(17,'Bermudian Dollar','BMD',1519583748,1,1519583748,1),(18,'Brunei Dollar','BND',1519583748,1,1519583748,1),(19,'Bolivian Boliviano','BOB',1519583748,1,1519583748,1),(20,'Brazilian Real','BRL',1519583748,1,1519583748,1),(21,'Bahamian Dollar','BSD',1519583748,1,1519583748,1),(22,'Bhutan Ngultrum','BTN',1519583748,1,1519583748,1),(23,'Burma Kyat','BUK',1519583748,1,1519583748,1),(24,'Botswanian Pula','BWP',1519583748,1,1519583748,1),(25,'Belize Dollar','BZD',1519583748,1,1519583748,1),(26,'Canadian Dollar','CAD',1519583748,1,1519583748,1),(27,'Swiss Franc','CHF',1519583748,1,1519583748,1),(28,'Chilean Unidades de Fomento','CLF',1519583748,1,1519583748,1),(29,'Chilean Peso','CLP',1519583748,1,1519583748,1),(30,'Yuan (Chinese) Renminbi','CNY',1519583748,1,1519583748,1),(31,'Colombian Peso','COP',1519583748,1,1519583748,1),(32,'Costa Rican Colon','CRC',1519583748,1,1519583748,1),(33,'Czech Republic Koruna','CZK',1519583748,1,1519583748,1),(34,'Cuban Peso','CUP',1519583748,1,1519583748,1),(35,'Cape Verde Escudo','CVE',1519583748,1,1519583748,1),(36,'Cyprus Pound','CYP',1519583748,1,1519583748,1),(40,'Danish Krone','DKK',1519583748,1,1519583748,1),(41,'Dominican Peso','DOP',1519583748,1,1519583748,1),(42,'Algerian Dinar','DZD',1519583748,1,1519583748,1),(43,'Ecuador Sucre','ECS',1519583748,1,1519583748,1),(44,'Egyptian Pound','EGP',1519583748,1,1519583748,1),(45,'Estonian Kroon (EEK)','EEK',1519583748,1,1519583748,1),(46,'Ethiopian Birr','ETB',1519583748,1,1519583748,1),(47,'Euro','EUR',1519583748,1,1519583748,1),(49,'Fiji Dollar','FJD',1519583748,1,1519583748,1),(50,'Falkland Islands Pound','FKP',1519583748,1,1519583748,1),(52,'British Pound','GBP',1519583748,1,1519583748,1),(53,'Ghanaian Cedi','GHC',1519583748,1,1519583748,1),(54,'Gibraltar Pound','GIP',1519583748,1,1519583748,1),(55,'Gambian Dalasi','GMD',1519583748,1,1519583748,1),(56,'Guinea Franc','GNF',1519583748,1,1519583748,1),(58,'Guatemalan Quetzal','GTQ',1519583748,1,1519583748,1),(59,'Guinea-Bissau Peso','GWP',1519583748,1,1519583748,1),(60,'Guyanan Dollar','GYD',1519583748,1,1519583748,1),(61,'Hong Kong Dollar','HKD',1519583748,1,1519583748,1),(62,'Honduran Lempira','HNL',1519583748,1,1519583748,1),(63,'Haitian Gourde','HTG',1519583748,1,1519583748,1),(64,'Hungarian Forint','HUF',1519583748,1,1519583748,1),(65,'Indonesian Rupiah','IDR',1519583748,1,1519583748,1),(66,'Irish Punt','IEP',1519583748,1,1519583748,1),(67,'Israeli Shekel','ILS',1519583748,1,1519583748,1),(68,'Indian Rupee','INR',1519583748,1,1519583748,1),(69,'Iraqi Dinar','IQD',1519583748,1,1519583748,1),(70,'Iranian Rial','IRR',1519583748,1,1519583748,1),(73,'Jamaican Dollar','JMD',1519583748,1,1519583748,1),(74,'Jordanian Dinar','JOD',1519583748,1,1519583748,1),(75,'Japanese Yen','JPY',1519583748,1,1519583748,1),(76,'Kenyan Schilling','KES',1519583748,1,1519583748,1),(77,'Kampuchean (Cambodian) Riel','KHR',1519583748,1,1519583748,1),(78,'Comoros Franc','KMF',1519583748,1,1519583748,1),(79,'North Korean Won','KPW',1519583748,1,1519583748,1),(80,'(South) Korean Won','KRW',1519583748,1,1519583748,1),(81,'Kuwaiti Dinar','KWD',1519583748,1,1519583748,1),(82,'Cayman Islands Dollar','KYD',1519583748,1,1519583748,1),(83,'Lao Kip','LAK',1519583748,1,1519583748,1),(84,'Lebanese Pound','LBP',1519583748,1,1519583748,1),(85,'Sri Lanka Rupee','LKR',1519583748,1,1519583748,1),(86,'Liberian Dollar','LRD',1519583748,1,1519583748,1),(87,'Lesotho Loti','LSL',1519583748,1,1519583748,1),(89,'Libyan Dinar','LYD',1519583748,1,1519583748,1),(90,'Moroccan Dirham','MAD',1519583748,1,1519583748,1),(91,'Malagasy Franc','MGF',1519583748,1,1519583748,1),(92,'Mongolian Tugrik','MNT',1519583748,1,1519583748,1),(93,'Macau Pataca','MOP',1519583748,1,1519583748,1),(94,'Mauritanian Ouguiya','MRO',1519583748,1,1519583748,1),(95,'Maltese Lira','MTL',1519583748,1,1519583748,1),(96,'Mauritius Rupee','MUR',1519583748,1,1519583748,1),(97,'Maldive Rufiyaa','MVR',1519583748,1,1519583748,1),(98,'Malawi Kwacha','MWK',1519583748,1,1519583748,1),(99,'Mexican Peso','MXP',1519583748,1,1519583748,1),(100,'Malaysian Ringgit','MYR',1519583748,1,1519583748,1),(101,'Mozambique Metical','MZM',1519583748,1,1519583748,1),(102,'Namibian Dollar','NAD',1519583748,1,1519583748,1),(103,'Nigerian Naira','NGN',1519583748,1,1519583748,1),(104,'Nicaraguan Cordoba','NIO',1519583748,1,1519583748,1),(105,'Norwegian Kroner','NOK',1519583748,1,1519583748,1),(106,'Nepalese Rupee','NPR',1519583748,1,1519583748,1),(107,'New Zealand Dollar','NZD',1519583748,1,1519583748,1),(108,'Omani Rial','OMR',1519583748,1,1519583748,1),(109,'Panamanian Balboa','PAB',1519583748,1,1519583748,1),(110,'Peruvian Nuevo Sol','PEN',1519583748,1,1519583748,1),(111,'Papua New Guinea Kina','PGK',1519583748,1,1519583748,1),(112,'Philippine Peso','PHP',1519583748,1,1519583748,1),(113,'Pakistan Rupee','PKR',1519583748,1,1519583748,1),(114,'Polish Zloty','PLN',1519583748,1,1519583748,1),(116,'Paraguay Guarani','PYG',1519583748,1,1519583748,1),(117,'Qatari Rial','QAR',1519583748,1,1519583748,1),(118,'Romanian Leu','RON',1519583748,1,1519583748,1),(119,'Rwanda Franc','RWF',1519583748,1,1519583748,1),(120,'Saudi Arabian Riyal','SAR',1519583748,1,1519583748,1),(121,'Solomon Islands Dollar','SBD',1519583748,1,1519583748,1),(122,'Seychelles Rupee','SCR',1519583748,1,1519583748,1),(123,'Sudanese Pound','SDP',1519583748,1,1519583748,1),(124,'Swedish Krona','SEK',1519583748,1,1519583748,1),(125,'Singapore Dollar','SGD',1519583748,1,1519583748,1),(126,'St. Helena Pound','SHP',1519583748,1,1519583748,1),(127,'Sierra Leone Leone','SLL',1519583748,1,1519583748,1),(128,'Somali Schilling','SOS',1519583748,1,1519583748,1),(129,'Suriname Guilder','SRG',1519583748,1,1519583748,1),(130,'Sao Tome and Principe Dobra','STD',1519583748,1,1519583748,1),(131,'Russian Ruble','RUB',1519583748,1,1519583748,1),(132,'El Salvador Colon','SVC',1519583748,1,1519583748,1),(133,'Syrian Potmd','SYP',1519583748,1,1519583748,1),(134,'Swaziland Lilangeni','SZL',1519583748,1,1519583748,1),(135,'Thai Baht','THB',1519583748,1,1519583748,1),(136,'Tunisian Dinar','TND',1519583748,1,1519583748,1),(137,'Tongan Paanga','TOP',1519583748,1,1519583748,1),(138,'East Timor Escudo','TPE',1519583748,1,1519583748,1),(139,'Turkish Lira','TRY',1519583748,1,1519583748,1),(140,'Trinidad and Tobago Dollar','TTD',1519583748,1,1519583748,1),(141,'Taiwan Dollar','TWD',1519583748,1,1519583748,1),(142,'Tanzanian Schilling','TZS',1519583748,1,1519583748,1),(143,'Uganda Shilling','UGX',1519583748,1,1519583748,1),(144,'US Dollar','$',1519583748,1,1690905402,1),(145,'Uruguayan Peso','UYU',1519583748,1,1519583748,1),(146,'Venezualan Bolivar','VEF',1519583748,1,1519583748,1),(147,'Vietnamese Dong','VND',1519583748,1,1519583748,1),(148,'Vanuatu Vatu','VUV',1519583748,1,1519583748,1),(149,'Samoan Tala','WST',1519583748,1,1519583748,1),(150,'Communaut?â?Æ?é?? Financi?â?Æ?é?¿re Africaine BEAC, Francs','XAF',1519583748,1,1519583748,1),(151,'Silver, Ounces','XAG',1519583748,1,1519583748,1),(152,'Gold, Ounces','XAU',1519583748,1,1519583748,1),(153,'East Caribbean Dollar','XCD',1519583748,1,1519583748,1),(154,'International Monetary Fund (IMF) Special Drawing Rights','XDR',1519583748,1,1519583748,1),(155,'Communaut?â?Æ?é?? Financi?â?Æ?é?¿re Africaine BCEAO - Francs','XOF',1519583748,1,1519583748,1),(156,'Palladium Ounces','XPD',1519583748,1,1519583748,1),(157,'Comptoirs Fran?â?Æ?é?ºais du Pacifique Francs','XPF',1519583748,1,1519583748,1),(158,'Platinum, Ounces','XPT',1519583748,1,1519583748,1),(159,'Democratic Yemeni Dinar','YDD',1519583748,1,1519583748,1),(160,'Yemeni Rial','YER',1519583748,1,1519583748,1),(161,'New Yugoslavia Dinar','YUD',1519583748,1,1519583748,1),(162,'South African Rand','ZAR',1519583748,1,1519583748,1),(163,'Zambian Kwacha','ZMK',1519583748,1,1519583748,1),(164,'Zaire Zaire','ZRZ',1519583748,1,1519583748,1),(165,'Zimbabwe Dollar','ZWD',1519583748,1,1519583748,1),(166,'Slovak Koruna','SKK',1519583748,1,1519583748,1),(167,'Armenian Dram','AMD',1519583748,1,1519583748,1);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `expense_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `month` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_type`
--

DROP TABLE IF EXISTS `id_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_type` (
  `id_type_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_type`
--

LOCK TABLES `id_type` WRITE;
/*!40000 ALTER TABLE `id_type` DISABLE KEYS */;
INSERT INTO `id_type` VALUES (1,'Driving License',1570267364,1,1570267364,1),(2,'Passport',1570267369,1,1570267369,1),(3,'NID',1570267375,1,1570267375,1);
/*!40000 ALTER TABLE `id_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(99) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` int NOT NULL AUTO_INCREMENT,
  `tenant_name` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `start_date` int DEFAULT NULL,
  `end_date` int DEFAULT NULL,
  `due_date` int DEFAULT NULL,
  `invoice_type` int DEFAULT NULL COMMENT '1=Date Range;2=Monthly;3=Yearly',
  `tenant_mobile` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `room_number` varchar(111) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tenant_id` int DEFAULT NULL,
  `invoice_number` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `late_fee` float(10,2) DEFAULT NULL,
  `sms` int DEFAULT NULL,
  `email` int DEFAULT NULL,
  `property_name` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_custom_service`
--

DROP TABLE IF EXISTS `invoice_custom_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_custom_service` (
  `invoice_custom_service_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `month` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `year` int DEFAULT NULL,
  `invoice_id` int DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`invoice_custom_service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_custom_service`
--

LOCK TABLES `invoice_custom_service` WRITE;
/*!40000 ALTER TABLE `invoice_custom_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_custom_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_log`
--

DROP TABLE IF EXISTS `invoice_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_log` (
  `invoice_log_id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int DEFAULT NULL,
  `invoice_type` int DEFAULT NULL,
  `invoice_number` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `generation_type` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`invoice_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_log`
--

LOCK TABLES `invoice_log` WRITE;
/*!40000 ALTER TABLE `invoice_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_service`
--

DROP TABLE IF EXISTS `invoice_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_service` (
  `invoice_service_id` int NOT NULL AUTO_INCREMENT,
  `service_id` int NOT NULL,
  `month` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `year` int DEFAULT NULL,
  `invoice_id` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`invoice_service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_service`
--

LOCK TABLES `invoice_service` WRITE;
/*!40000 ALTER TABLE `invoice_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `late_fee_log`
--

DROP TABLE IF EXISTS `late_fee_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `late_fee_log` (
  `late_fee_log_id` int NOT NULL AUTO_INCREMENT,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`late_fee_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `late_fee_log`
--

LOCK TABLES `late_fee_log` WRITE;
/*!40000 ALTER TABLE `late_fee_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `late_fee_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `module_id` int NOT NULL DEFAULT '0',
  `module_name` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `module_title` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'dashboard',1520015400,1,1520015400,1,'Dashboard'),(2,'rooms',1520015400,1,1520015400,1,'Rooms'),(3,'tenants',1520015400,1,1520015400,1,'Tenants'),(4,'utility_bills',1520015400,1,1520015400,1,'Utility Bills'),(5,'expenses',1520015400,1,1520015400,1,'Expenses'),(6,'staff',1520015400,1,1520015400,1,'Staff'),(7,'staff_payroll',1520015400,1,1520015400,1,'Staff Payroll'),(8,'generate_invoice',1520015400,1,1520015400,1,'Generate Invoice'),(9,'invoices',1520015400,1,1520015400,1,'Invoices'),(10,'account',1520015400,1,1520015400,1,'Account'),(11,'settings',1520015400,1,1520015400,1,'Settings'),(12,'notices',1589794632,1,1589794632,1,'Notices'),(13,'complaints',1589794632,1,1589794632,1,'Complaints'),(14,'lease_monitor',1589794632,1,1589794632,1,'Lease Monitor'),(15,'reports',1651702500,1,1651702500,1,'Reports'),(16,'inventory',1651702500,1,1651702500,1,'Inventory'),(17,'cleaning',1693821310,1,1693821310,1,'Cleaning');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(111) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `notice` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `image_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_log`
--

DROP TABLE IF EXISTS `payment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_log` (
  `payment_log_id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `timestamp` int DEFAULT NULL,
  PRIMARY KEY (`payment_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_log`
--

LOCK TABLES `payment_log` WRITE;
/*!40000 ALTER TABLE `payment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `payment_method_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'PayPal',1712339238,1,1712339238,1);
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `paymentid` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `txn_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payer_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int DEFAULT NULL,
  PRIMARY KEY (`paymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession`
--

DROP TABLE IF EXISTS `profession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profession` (
  `profession_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession`
--

LOCK TABLES `profession` WRITE;
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
INSERT INTO `profession` VALUES (1,'Accountant',1484580450,1527841071,1,1),(2,'Actor',1484580461,1519202764,1,1),(3,'Air Steward',1484580483,1519202764,1,1),(4,'Animator',1484580488,1519202764,1,1),(5,'Architect',1484580494,1519202764,1,1),(6,'Artist',1484580498,1519202764,1,1),(7,'Author',1484580502,1519202764,1,1),(8,'Baker',1484580507,1519202764,1,1),(9,'Biologist',1484580511,1519202764,1,1),(10,'Builder',1484580515,1519202764,1,1),(11,'Butcher',1484580519,1519202764,1,1),(12,'Counselor',1484580523,1519202764,1,1),(13,'Chef',1484580527,1519202764,1,1),(14,'Director',1484580532,1519202764,1,1),(15,'Dentist',1484580537,1519202764,1,1),(16,'Designer',1484580547,1519202764,1,1),(17,'Doctor',1484580551,1519202764,1,1),(18,'Economist',1484580556,1519202764,1,1),(19,'Electrician',1484580560,1519202764,1,1),(20,'Engineer',1484580565,1519202764,1,1),(21,'Farmer',1484580576,1519202764,1,1),(22,'Film Director',1484580582,1519202764,1,1),(23,'Fisherman',1484580586,1519202764,1,1),(24,'Geologist',1484581447,1519202764,1,1),(25,'Head Teacher',1484581455,1519202764,1,1),(26,'Journalist',1484581461,1519202764,1,1),(27,'Judge',1484581466,1519202764,1,1),(28,'Lawyer',1484581470,1519202764,1,1),(29,'Lecturer',1484581474,1519202764,1,1),(30,'Magician',1484581479,1519202764,1,1),(31,'Manager',1484581483,1519202764,1,1),(32,'Musician',1484581488,1519202764,1,1),(33,'Nurse',1484581492,1519202764,1,1),(34,'Painter',1484581497,1519202764,1,1),(35,'Photographer',1484581501,1519202764,1,1),(36,'Pilot',1484581506,1519202764,1,1),(37,'Police Officer',1484581514,1519202764,1,1),(38,'Politician',1484581519,1519202764,1,1),(39,'Receptionist',1484581523,1519202764,1,1),(40,'Salesperson',1484581527,1519202764,1,1),(41,'Scientist',1484581532,1519202764,1,1),(42,'Secretary',1484581537,1519202764,1,1),(43,'Singer',1484581541,1519202764,1,1),(44,'Software Engineer',1484581549,1519202764,1,1),(45,'Soldier',1484581556,1519202764,1,1),(46,'Surgeon',1484581560,1519202764,1,1),(47,'Teacher',1484581565,1519202764,1,1),(48,'Translator',1484581570,1519202764,1,1),(49,'Waiter',1484581575,1519202764,1,1),(50,'Web Developer',1484581588,1519202764,1,1),(51,'Writer',1484581592,1519202764,1,1),(52,'Other',1484581601,1519202764,1,1);
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(99) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `address` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurring_invoice`
--

DROP TABLE IF EXISTS `recurring_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurring_invoice` (
  `recurring_invoice_id` int NOT NULL AUTO_INCREMENT,
  `number_of_invoices_generated` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`recurring_invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurring_invoice`
--

LOCK TABLES `recurring_invoice` WRITE;
/*!40000 ALTER TABLE `recurring_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurring_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `room_number` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `floor` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `daily_rent` int DEFAULT NULL,
  `monthly_rent` int DEFAULT NULL,
  `yearly_rent` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `service_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `cost` float(10,2) DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_tenant`
--

DROP TABLE IF EXISTS `service_tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_tenant` (
  `service_tenant_id` int NOT NULL AUTO_INCREMENT,
  `service_id` int DEFAULT NULL,
  `tenant_id` int DEFAULT NULL,
  PRIMARY KEY (`service_tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_tenant`
--

LOCK TABLES `service_tenant` WRITE;
/*!40000 ALTER TABLE `service_tenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `setting_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'system_name','Mars',1519579495,1,1519759752,1),(2,'currency','$',1519579495,1,1519759752,1),(3,'timezone','Asia/Dhaka',1519579495,1,1519759752,1),(4,'favicon','favicon.png',1519579495,1,1526624713,1),(5,'tagline','Room Management System',1519579495,1,1519759752,1),(6,'address','656 Thurber Dr W<br>Columbus, OH 43215',1521785545,1,1521785545,1),(7,'smtp_user','',1521785545,1,1521785545,1),(8,'smtp_pass','',1521785545,1,1521785545,1),(9,'automatic_late_fee_add_day','15',1521785545,1,1521785545,1),(10,'login_bg','bg_mars.jpg',1521785545,1,1649132788,1),(11,'language','english',1521785545,1,1601873809,1),(12,'copyright','T1m9m',1521785545,1,1521785545,1),(13,'copyright_url','https://t1m9m.com',1521785545,1,1521785545,1),(14,'item_purchase_code',NULL,1521785545,1,1521785545,1),(15,'font','\'PT Sans\', sans-serif',1691188513,1,1691188513,1),(16,'font_family','PT Sans',1691188513,1,1691188513,1),(17,'font_src','https://fonts.googleapis.com/css2?family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap',1691188513,1,1691188513,1),(18,'account_sid','',1691188513,1,1691188513,1),(19,'auth_token','',1691188513,1,1691188513,1),(20,'number','',1691188513,1,1691188513,1),(21,'smtp_host','',1691188513,1,1691188513,1),(22,'invoice_logo','invoice_logo.png',1691188513,1,1691216795,1),(23,'enable_booking','yes',1699180875,1,1699180875,1),(24,'automatic_invoice_generation_day','05',1704347147,1,1704347147,1),(25,'late_fee_amount','60',1707004247,1,1707004247,1);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `role` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `mobile_number` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_salary`
--

DROP TABLE IF EXISTS `staff_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_salary` (
  `staff_salary_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `month` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `year` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`staff_salary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_salary`
--

LOCK TABLES `staff_salary` WRITE;
/*!40000 ALTER TABLE `staff_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant` (
  `tenant_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mobile_number` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `id_number` varchar(33) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `image_link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `profession_id` int DEFAULT NULL,
  `emergency_person` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `emergency_contact` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `home_address` varchar(111) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `extra_note` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `work_address` varchar(111) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `id_type_id` int DEFAULT NULL,
  `lease_start` int DEFAULT NULL,
  `lease_end` int DEFAULT NULL,
  `id_front_image_link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `id_back_image_link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `lease_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `opt_in_for_recurring_invoice` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_paid`
--

DROP TABLE IF EXISTS `tenant_paid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant_paid` (
  `tenant_paid_id` int NOT NULL AUTO_INCREMENT,
  `amount` float(10,2) DEFAULT NULL,
  `invoice_id` int NOT NULL,
  `tenant_id` int DEFAULT NULL,
  `payment_method` varchar(55) COLLATE utf8mb4_bin DEFAULT NULL,
  `paid_on` int DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `month` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `year` int DEFAULT NULL,
  `paymentid` int DEFAULT NULL,
  PRIMARY KEY (`tenant_paid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_paid`
--

LOCK TABLES `tenant_paid` WRITE;
/*!40000 ALTER TABLE `tenant_paid` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_paid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_rent`
--

DROP TABLE IF EXISTS `tenant_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant_rent` (
  `tenant_rent_id` int NOT NULL AUTO_INCREMENT,
  `month` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `year` int DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `invoice_id` int DEFAULT NULL,
  `tenant_id` int DEFAULT NULL,
  PRIMARY KEY (`tenant_rent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_rent`
--

LOCK TABLES `tenant_rent` WRITE;
/*!40000 ALTER TABLE `tenant_rent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `password` varchar(99) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `user_type` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `permissions` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@mars.com','$2y$10$mdUFhdNas9DKsfNzuQ4KJuaAhll21DNcZQ/ijYfehUEdApWkVAUFO',1,1546669808,0,1,1,1546669808,1,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility_bill`
--

DROP TABLE IF EXISTS `utility_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility_bill` (
  `utility_bill_id` int NOT NULL AUTO_INCREMENT,
  `utility_bill_category_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `month` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `year` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `image_link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`utility_bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_bill`
--

LOCK TABLES `utility_bill` WRITE;
/*!40000 ALTER TABLE `utility_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `utility_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility_bill_category`
--

DROP TABLE IF EXISTS `utility_bill_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility_bill_category` (
  `utility_bill_category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_on` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`utility_bill_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_bill_category`
--

LOCK TABLES `utility_bill_category` WRITE;
/*!40000 ALTER TABLE `utility_bill_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `utility_bill_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-05 23:51:42
