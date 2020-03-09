

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
-- Table structure for table `City`
--

DROP TABLE IF EXISTS `City`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `City` (
  `CityId` int NOT NULL AUTO_INCREMENT,
  `CountryId` int NOT NULL,
  `Code` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `CreatedUserId` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `StatusId` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`CityId`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `City`
--

LOCK TABLES `City` WRITE;
/*!40000 ALTER TABLE `City` DISABLE KEYS */;
INSERT INTO `City` VALUES (1,214,'1','Adana',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(2,214,'2','Adıyaman',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(3,214,'3','Afyon',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(4,214,'4','Ağrı',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(5,214,'5','Amasya',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(6,214,'6','Ankara',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(7,214,'7','Antalya',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(8,214,'8','Artvin',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(9,214,'9','Aydın',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(10,214,'10','Balıkesir',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(11,214,'11','Bilecik',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(12,214,'12','Bingöl',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(13,214,'13','Bitlis',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(14,214,'14','Bolu',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(15,214,'15','Burdur',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(16,214,'16','Bursa',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(17,214,'17','Çanakkale',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(18,214,'18','Çankırı',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(19,214,'19','Çorum',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(20,214,'20','Denizli',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(21,214,'21','Diyarbakır',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(22,214,'22','Edirne',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(23,214,'23','Elazığ',NULL,'2016-06-25 13:52:33',NULL,NULL,1),(24,214,'24','Erzincan',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(25,214,'25','Erzurum',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(26,214,'26','Eskişehir',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(27,214,'27','Gaziantep',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(28,214,'28','Giresun',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(29,214,'29','Gümüşhane',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(30,214,'30','Hakkari',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(31,214,'31','Hatay',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(32,214,'32','Isparta',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(33,214,'33','Mersin',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(34,214,'34','İstanbul',NULL,'2016-06-25 13:52:34',1,'2016-08-11 10:43:06',1),(35,214,'35','İzmir',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(36,214,'36','Kars',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(37,214,'37','Kastamonu',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(38,214,'38','Kayseri',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(39,214,'39','Kırklareli',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(40,214,'40','Kırşehir',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(41,214,'41','Kocaeli',NULL,'2016-06-25 13:52:34',NULL,NULL,1),(42,214,'42','Konya',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(43,214,'43','Kütahya',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(44,214,'44','Malatya',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(45,214,'45','Manisa',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(46,214,'46','Kahramanmaraş',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(47,214,'47','Mardin',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(48,214,'48','Muğla',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(49,214,'49','Muş',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(50,214,'50','Nevşehir',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(51,214,'51','Niğde',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(52,214,'52','Ordu',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(53,214,'53','Rize',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(54,214,'54','Sakarya',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(55,214,'55','Samsun',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(56,214,'56','Siirt',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(57,214,'57','Sinop',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(58,214,'58','Sivas',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(59,214,'59','Tekirdağ',NULL,'2016-06-25 13:52:35',NULL,NULL,1),(60,214,'60','Tokat',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(61,214,'61','Trabzon',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(62,214,'62','Tunceli',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(63,214,'63','Şanlıurfa',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(64,214,'64','Uşak',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(65,214,'65','Van',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(66,214,'66','Yozgat',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(67,214,'67','Zonguldak',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(68,214,'68','Aksaray',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(69,214,'69','Bayburt',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(70,214,'70','Karaman',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(71,214,'71','Kırıkkale',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(72,214,'72','Batman',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(73,214,'73','Şırnak',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(74,214,'74','Bartın',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(75,214,'75','Ardahan',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(76,214,'76','Iğdır',NULL,'2016-06-25 13:52:36',NULL,NULL,1),(77,214,'77','Yalova',NULL,'2016-06-25 13:52:37',NULL,NULL,1),(78,214,'78','Karabük',NULL,'2016-06-25 13:52:37',NULL,NULL,1),(79,214,'79','Kilis',NULL,'2016-06-25 13:52:37',NULL,NULL,1),(80,214,'80','Osmaniye',NULL,'2016-06-25 13:52:37',NULL,NULL,1),(81,214,'81','Düzce',NULL,'2016-06-25 13:52:37',NULL,NULL,1);
/*!40000 ALTER TABLE `City` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Country` (
  `CountryId` int NOT NULL,
  `Code` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedUserId` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedUserId` int DEFAULT NULL,
  `StatusId` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`CountryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (1,'AF','Afghanistan','2016-06-24 15:04:10',NULL,NULL,NULL,0),(2,'AL','Albania','2016-06-24 15:04:10',NULL,NULL,NULL,0),(3,'DZ','Algeria','2016-06-24 15:04:10',NULL,NULL,NULL,0),(4,'AS','American Samoa','2016-06-24 15:04:10',NULL,NULL,NULL,0),(5,'AD','Andorra','2016-06-24 15:04:11',NULL,NULL,NULL,0),(6,'AO','Angola','2016-06-24 15:04:11',NULL,NULL,NULL,0),(7,'AI','Anguilla','2016-06-24 15:04:11',NULL,NULL,NULL,0),(8,'AQ','Antarctica','2016-06-24 15:04:11',NULL,NULL,NULL,0),(9,'AR','Argentina','2016-06-24 15:04:11',NULL,NULL,NULL,0),(10,'AM','Armenia','2016-06-24 15:04:11',NULL,NULL,NULL,0),(11,'AW','Aruba','2016-06-24 15:04:12',NULL,NULL,NULL,0),(12,'AU','Australia','2016-06-24 15:04:12',NULL,NULL,NULL,0),(13,'AT','Austria','2016-06-24 15:04:12',NULL,NULL,NULL,0),(14,'AZ','Azerbaijan','2016-06-24 15:04:12',NULL,NULL,NULL,0),(15,'BS','Bahamas','2016-06-24 15:04:13',NULL,NULL,NULL,0),(16,'BH','Bahrain','2016-06-24 15:04:13',NULL,NULL,NULL,0),(17,'BD','Bangladesh','2016-06-24 15:04:13',NULL,NULL,NULL,0),(18,'BB','Barbados','2016-06-24 15:04:13',NULL,NULL,NULL,0),(19,'BY','Belarus','2016-06-24 15:04:13',NULL,NULL,NULL,0),(20,'BE','Belgium','2016-06-24 15:04:14',NULL,NULL,NULL,0),(21,'BZ','Belize','2016-06-24 15:04:14',NULL,NULL,NULL,0),(22,'BJ','Benin','2016-06-24 15:04:14',NULL,NULL,NULL,0),(23,'BM','Bermuda','2016-06-24 15:04:14',NULL,NULL,NULL,0),(24,'BT','Bhutan','2016-06-24 15:04:15',NULL,NULL,NULL,0),(25,'BO','Bolivia','2016-06-24 15:04:15',NULL,NULL,NULL,0),(26,'BA','Bosnia and Herzegowina','2016-06-24 15:04:15',NULL,NULL,NULL,0),(27,'BW','Botswana','2016-06-24 15:04:15',NULL,NULL,NULL,0),(28,'BV','Bouvet Island','2016-06-24 15:04:15',NULL,NULL,NULL,0),(29,'BR','Brazil','2016-06-24 15:04:16',NULL,NULL,NULL,0),(30,'IO','British Indian Ocean Territory','2016-06-24 15:04:16',NULL,NULL,NULL,0),(31,'BN','Brunei Darussalam','2016-06-24 15:04:16',NULL,NULL,NULL,0),(32,'BG','Bulgaria','2016-06-24 15:04:16',NULL,NULL,NULL,0),(33,'BF','Burkina Faso','2016-06-24 15:04:17',NULL,NULL,NULL,0),(34,'BI','Burundi','2016-06-24 15:04:17',NULL,NULL,NULL,0),(35,'KH','Cambodia','2016-06-24 15:04:17',NULL,NULL,NULL,0),(36,'CM','Cameroon','2016-06-24 15:04:17',NULL,NULL,NULL,0),(37,'CA','Canada','2016-06-24 15:04:17',NULL,NULL,NULL,0),(38,'CV','Cape Verde','2016-06-24 15:04:18',NULL,NULL,NULL,0),(39,'KY','Cayman Islands','2016-06-24 15:04:18',NULL,NULL,NULL,0),(40,'CF','Central African Republic','2016-06-24 15:04:18',NULL,NULL,NULL,0),(41,'TD','Chad','2016-06-24 15:04:18',NULL,NULL,NULL,0),(42,'CL','Chile','2016-06-24 15:04:19',NULL,NULL,NULL,0),(43,'CN','China','2016-06-24 15:04:19',NULL,NULL,NULL,0),(44,'CX','Christmas Island','2016-06-24 15:04:19',NULL,NULL,NULL,0),(45,'CC','Cocos (Keeling) Islands','2016-06-24 15:04:19',NULL,NULL,NULL,0),(46,'CO','Colombia','2016-06-24 15:04:20',NULL,NULL,NULL,0),(47,'KM','Comoros','2016-06-24 15:04:20',NULL,NULL,NULL,0),(48,'CG','Congo','2016-06-24 15:04:20',NULL,NULL,NULL,0),(49,'CD','Congo, the Democratic Republic of the','2016-06-24 15:04:20',NULL,NULL,NULL,0),(50,'CK','Cook Islands','2016-06-24 15:04:21',NULL,NULL,NULL,0),(51,'CR','Costa Rica','2016-06-24 15:04:21',NULL,NULL,NULL,0),(52,'CI','Cote d\'Ivoire','2016-06-24 15:04:21',NULL,NULL,NULL,0),(53,'HR','Croatia (Hrvatska)','2016-06-24 15:04:21',NULL,NULL,NULL,0),(54,'CU','Cuba','2016-06-24 15:04:22',NULL,NULL,NULL,0),(55,'CY','Cyprus','2016-06-24 15:04:22',NULL,NULL,NULL,0),(56,'CZ','Czech Republic','2016-06-24 15:04:22',NULL,NULL,NULL,0),(57,'DK','Denmark','2016-06-24 15:04:22',NULL,NULL,NULL,0),(58,'DJ','Djibouti','2016-06-24 15:04:22',NULL,NULL,NULL,0),(59,'DM','Dominica','2016-06-24 15:04:23',NULL,NULL,NULL,0),(60,'DO','Dominican Republic','2016-06-24 15:04:23',NULL,NULL,NULL,0),(61,'EC','Ecuador','2016-06-24 15:04:23',NULL,NULL,NULL,0),(62,'EG','Egypt','2016-06-24 15:04:23',NULL,NULL,NULL,0),(63,'SV','El Salvador','2016-06-24 15:04:23',NULL,NULL,NULL,0),(64,'GQ','Equatorial Guinea','2016-06-24 15:04:24',NULL,NULL,NULL,0),(65,'ER','Eritrea','2016-06-24 15:04:24',NULL,NULL,NULL,0),(66,'EE','Estonia','2016-06-24 15:04:24',NULL,NULL,NULL,0),(67,'ET','Ethiopia','2016-06-24 15:04:24',NULL,NULL,NULL,0),(68,'FK','Falkland Islands (Malvinas)','2016-06-24 15:04:24',NULL,NULL,NULL,0),(69,'FO','Faroe Islands','2016-06-24 15:04:25',NULL,NULL,NULL,0),(70,'FJ','Fiji','2016-06-24 15:04:25',NULL,NULL,NULL,0),(71,'FI','Finland','2016-06-24 15:04:25',NULL,NULL,NULL,0),(72,'FR','France','2016-06-24 15:04:25',NULL,NULL,NULL,0),(73,'GF','French Guiana','2016-06-24 15:04:26',NULL,NULL,NULL,0),(74,'PF','French Polynesia','2016-06-24 15:04:26',NULL,NULL,NULL,0),(75,'TF','French Southern Territories','2016-06-24 15:04:26',NULL,NULL,NULL,0),(76,'GA','Gabon','2016-06-24 15:04:26',NULL,NULL,NULL,0),(77,'GM','Gambia','2016-06-24 15:04:27',NULL,NULL,NULL,0),(78,'GE','Georgia','2016-06-24 15:04:27',NULL,NULL,NULL,0),(79,'DE','Germany','2016-06-24 15:04:27',NULL,NULL,NULL,0),(80,'GH','Ghana','2016-06-24 15:04:27',NULL,NULL,NULL,0),(81,'GI','Gibraltar','2016-06-24 15:04:27',NULL,NULL,NULL,0),(82,'GR','Greece','2016-06-24 15:04:28',NULL,NULL,NULL,0),(83,'GL','Greenland','2016-06-24 15:04:28',NULL,NULL,NULL,0),(84,'GD','Grenada','2016-06-24 15:04:28',NULL,NULL,NULL,0),(85,'GP','Guadeloupe','2016-06-24 15:04:28',NULL,NULL,NULL,0),(86,'GU','Guam','2016-06-24 15:04:28',NULL,NULL,NULL,0),(87,'GT','Guatemala','2016-06-24 15:04:29',NULL,NULL,NULL,0),(88,'GN','Guinea','2016-06-24 15:04:29',NULL,NULL,NULL,0),(89,'GW','Guinea-Bissau','2016-06-24 15:04:29',NULL,NULL,NULL,0),(90,'GY','Guyana','2016-06-24 15:04:29',NULL,NULL,NULL,0),(91,'HT','Haiti','2016-06-24 15:04:30',NULL,NULL,NULL,0),(92,'HM','Heard and Mc Donald Islands','2016-06-24 15:04:30',NULL,NULL,NULL,0),(93,'VA','Holy See (Vatican City State)','2016-06-24 15:04:30',NULL,NULL,NULL,0),(94,'HN','Honduras','2016-06-24 15:04:30',NULL,NULL,NULL,0),(95,'HK','Hong Kong','2016-06-24 15:04:31',NULL,NULL,NULL,0),(96,'HU','Hungary','2016-06-24 15:04:31',NULL,NULL,NULL,0),(97,'IS','Iceland','2016-06-24 15:04:31',NULL,NULL,NULL,0),(98,'IN','India','2016-06-24 15:04:31',NULL,NULL,NULL,0),(99,'ID','Indonesia','2016-06-24 15:04:32',NULL,NULL,NULL,0),(100,'IR','Iran (Islamic Republic of)','2016-06-24 15:04:32',NULL,NULL,NULL,0),(101,'IQ','Iraq','2016-06-24 15:04:32',NULL,NULL,NULL,0),(102,'IE','Ireland','2016-06-24 15:04:32',NULL,NULL,NULL,0),(103,'IL','Israel','2016-06-24 15:04:32',NULL,NULL,NULL,0),(104,'IT','Italy','2016-06-24 15:04:33',NULL,NULL,NULL,0),(105,'JM','Jamaica','2016-06-24 15:04:33',NULL,NULL,NULL,0),(106,'JP','Japan','2016-06-24 15:04:33',NULL,NULL,NULL,0),(107,'JO','Jordan','2016-06-24 15:04:33',NULL,NULL,NULL,0),(108,'KZ','Kazakhstan','2016-06-24 15:04:33',NULL,NULL,NULL,0),(109,'KE','Kenya','2016-06-24 15:04:34',NULL,NULL,NULL,0),(110,'KI','Kiribati','2016-06-24 15:04:34',NULL,NULL,NULL,0),(111,'KP','Korea, Democratic People\'s Republic of','2016-06-24 15:04:34',NULL,NULL,NULL,0),(112,'KR','Korea, Republic of','2016-06-24 15:04:34',NULL,NULL,NULL,0),(113,'KW','Kuwait','2016-06-24 15:04:35',NULL,NULL,NULL,0),(114,'KG','Kyrgyzstan','2016-06-24 15:04:35',NULL,NULL,NULL,0),(115,'LA','Lao People\'s Democratic Republic','2016-06-24 15:04:35',NULL,NULL,NULL,0),(116,'LV','Latvia','2016-06-24 15:04:35',NULL,NULL,NULL,0),(117,'LB','Lebanon','2016-06-24 15:04:36',NULL,NULL,NULL,0),(118,'LS','Lesotho','2016-06-24 15:04:36',NULL,NULL,NULL,0),(119,'LR','Liberia','2016-06-24 15:04:36',NULL,NULL,NULL,0),(120,'LY','Libyan Arab Jamahiriya','2016-06-24 15:04:36',NULL,NULL,NULL,0),(121,'LI','Liechtenstein','2016-06-24 15:04:37',NULL,NULL,NULL,0),(122,'LT','Lithuania','2016-06-24 15:04:37',NULL,NULL,NULL,0),(123,'LU','Luxembourg','2016-06-24 15:04:37',NULL,NULL,NULL,0),(124,'MO','Macau','2016-06-24 15:04:37',NULL,NULL,NULL,0),(125,'MK','Macedonia, The Former Yugoslav Republic of','2016-06-24 15:04:37',NULL,NULL,NULL,0),(126,'MG','Madagascar','2016-06-24 15:04:38',NULL,NULL,NULL,0),(127,'MW','Malawi','2016-06-24 15:04:38',NULL,NULL,NULL,0),(128,'MY','Malaysia','2016-06-24 15:04:38',NULL,NULL,NULL,0),(129,'MV','Maldives','2016-06-24 15:04:38',NULL,NULL,NULL,0),(130,'ML','Mali','2016-06-24 15:04:38',NULL,NULL,NULL,0),(131,'MT','Malta','2016-06-24 15:04:39',NULL,NULL,NULL,0),(132,'MH','Marshall Islands','2016-06-24 15:04:39',NULL,NULL,NULL,0),(133,'MQ','Martinique','2016-06-24 15:04:39',NULL,NULL,NULL,0),(134,'MR','Mauritania','2016-06-24 15:04:39',NULL,NULL,NULL,0),(135,'MU','Mauritius','2016-06-24 15:04:40',NULL,NULL,NULL,0),(136,'YT','Mayotte','2016-06-24 15:04:40',NULL,NULL,NULL,0),(137,'MX','Mexico','2016-06-24 15:04:40',NULL,NULL,NULL,0),(138,'FM','Micronesia, Federated States of','2016-06-24 15:04:40',NULL,NULL,NULL,0),(139,'MD','Moldova, Republic of','2016-06-24 15:04:41',NULL,NULL,NULL,0),(140,'MC','Monaco','2016-06-24 15:04:41',NULL,NULL,NULL,0),(141,'MN','Mongolia','2016-06-24 15:04:41',NULL,NULL,NULL,0),(142,'MS','Montserrat','2016-06-24 15:04:41',NULL,NULL,NULL,0),(143,'MA','Morocco','2016-06-24 15:04:41',NULL,NULL,NULL,0),(144,'MZ','Mozambique','2016-06-24 15:04:41',NULL,NULL,NULL,0),(145,'MM','Myanmar','2016-06-24 15:04:42',NULL,NULL,NULL,0),(146,'NA','Namibia','2016-06-24 15:04:42',NULL,NULL,NULL,0),(147,'NR','Nauru','2016-06-24 15:04:42',NULL,NULL,NULL,0),(148,'NP','Nepal','2016-06-24 15:04:42',NULL,NULL,NULL,0),(149,'NL','Netherlands','2016-06-24 15:04:42',NULL,NULL,NULL,0),(150,'AN','Netherlands Antilles','2016-06-24 15:04:42',NULL,NULL,NULL,0),(151,'NC','New Caledonia','2016-06-24 15:04:43',NULL,NULL,NULL,0),(152,'NZ','New Zealand','2016-06-24 15:04:43',NULL,NULL,NULL,0),(153,'NI','Nicaragua','2016-06-24 15:04:43',NULL,NULL,NULL,0),(154,'NE','Niger','2016-06-24 15:04:43',NULL,NULL,NULL,0),(155,'NG','Nigeria','2016-06-24 15:04:43',NULL,NULL,NULL,0),(156,'NU','Niue','2016-06-24 15:04:43',NULL,NULL,NULL,0),(157,'NF','Norfolk Island','2016-06-24 15:04:44',NULL,NULL,NULL,0),(158,'MP','Northern Mariana Islands','2016-06-24 15:04:44',NULL,NULL,NULL,0),(159,'NO','Norway','2016-06-24 15:04:44',NULL,NULL,NULL,0),(160,'OM','Oman','2016-06-24 15:04:44',NULL,NULL,NULL,0),(161,'PK','Pakistan','2016-06-24 15:04:44',NULL,NULL,NULL,0),(162,'PW','Palau','2016-06-24 15:04:44',NULL,NULL,NULL,0),(163,'PA','Panama','2016-06-24 15:04:45',NULL,NULL,NULL,0),(164,'PG','Papua New Guinea','2016-06-24 15:04:45',NULL,NULL,NULL,0),(165,'PY','Paraguay','2016-06-24 15:04:45',NULL,NULL,NULL,0),(166,'PE','Peru','2016-06-24 15:04:45',NULL,NULL,NULL,0),(167,'PH','Philippines','2016-06-24 15:04:45',NULL,NULL,NULL,0),(168,'PN','Pitcairn','2016-06-24 15:04:45',NULL,NULL,NULL,0),(169,'PL','Poland','2016-06-24 15:04:46',NULL,NULL,NULL,0),(170,'PT','Portugal','2016-06-24 15:04:46',NULL,NULL,NULL,0),(171,'PR','Puerto Rico','2016-06-24 15:04:46',NULL,NULL,NULL,0),(172,'QA','Qatar','2016-06-24 15:04:46',NULL,NULL,NULL,0),(173,'RE','Reunion','2016-06-24 15:04:46',NULL,NULL,NULL,0),(174,'RO','Romania','2016-06-24 15:04:47',NULL,NULL,NULL,0),(175,'RU','Russian Federation','2016-06-24 15:04:47',NULL,NULL,NULL,0),(176,'RW','Rwanda','2016-06-24 15:04:47',NULL,NULL,NULL,0),(177,'KN','Saint Kitts and Nevis','2016-06-24 15:04:47',NULL,NULL,NULL,0),(178,'LC','Saint LUCIA','2016-06-24 15:04:47',NULL,NULL,NULL,0),(179,'VC','Saint Vincent and the Grenadines','2016-06-24 15:04:48',NULL,NULL,NULL,0),(180,'WS','Samoa','2016-06-24 15:04:48',NULL,NULL,NULL,0),(181,'SM','San Marino','2016-06-24 15:04:48',NULL,NULL,NULL,0),(182,'ST','Sao Tome and Principe','2016-06-24 15:04:48',NULL,NULL,NULL,0),(183,'SA','Saudi Arabia','2016-06-24 15:04:49',NULL,NULL,NULL,0),(184,'SN','Senegal','2016-06-24 15:04:49',NULL,NULL,NULL,0),(185,'SC','Seychelles','2016-06-24 15:04:49',NULL,NULL,NULL,0),(186,'SL','Sierra Leone','2016-06-24 15:04:49',NULL,NULL,NULL,0),(187,'SG','Singapore','2016-06-24 15:04:50',NULL,NULL,NULL,0),(188,'SK','Slovakia (Slovak Republic)','2016-06-24 15:04:50',NULL,NULL,NULL,0),(189,'SI','Slovenia','2016-06-24 15:04:50',NULL,NULL,NULL,0),(190,'SB','Solomon Islands','2016-06-24 15:04:50',NULL,NULL,NULL,0),(191,'SO','Somalia','2016-06-24 15:04:50',NULL,NULL,NULL,0),(192,'ZA','South Africa','2016-06-24 15:04:51',NULL,NULL,NULL,0),(193,'GS','South Georgia and the South Sandwich Islands','2016-06-24 15:04:51',NULL,NULL,NULL,0),(194,'ES','Spain','2016-06-24 15:04:51',NULL,NULL,NULL,0),(195,'LK','Sri Lanka','2016-06-24 15:04:51',NULL,NULL,NULL,0),(196,'SH','St. Helena','2016-06-24 15:04:51',NULL,NULL,NULL,0),(197,'PM','St. Pierre and Miquelon','2016-06-24 15:04:52',NULL,NULL,NULL,0),(198,'SD','Sudan','2016-06-24 15:04:52',NULL,NULL,NULL,0),(199,'SR','Suriname','2016-06-24 15:04:52',NULL,NULL,NULL,0),(200,'SJ','Svalbard and Jan Mayen Islands','2016-06-24 15:04:52',NULL,NULL,NULL,0),(201,'SZ','Swaziland','2016-06-24 15:04:53',NULL,NULL,NULL,0),(202,'SE','Sweden','2016-06-24 15:04:53',NULL,NULL,NULL,0),(203,'CH','Switzerland','2016-06-24 15:04:53',NULL,NULL,NULL,0),(204,'SY','Syrian Arab Republic','2016-06-24 15:04:53',NULL,NULL,NULL,0),(205,'TW','Taiwan, Province of China','2016-06-24 15:04:54',NULL,NULL,NULL,0),(206,'TJ','Tajikistan','2016-06-24 15:04:54',NULL,NULL,NULL,0),(207,'TZ','Tanzania, United Republic of','2016-06-24 15:04:54',NULL,NULL,NULL,0),(208,'TH','Thailand','2016-06-24 15:04:54',NULL,NULL,NULL,0),(209,'TG','Togo','2016-06-24 15:04:54',NULL,NULL,NULL,0),(210,'TK','Tokelau','2016-06-24 15:04:55',NULL,NULL,NULL,0),(211,'TO','Tonga','2016-06-24 15:04:55',NULL,NULL,NULL,0),(212,'TT','Trinidad and Tobago','2016-06-24 15:04:55',NULL,NULL,NULL,0),(213,'TN','Tunisia','2016-06-24 15:04:55',NULL,NULL,NULL,0),(214,'TR','Türkiye','2016-06-24 15:04:56',NULL,NULL,1,1),(215,'TM','Turkmenistan','2016-06-24 15:04:56',NULL,NULL,NULL,0),(216,'TC','Turks and Caicos Islands','2016-06-24 15:04:56',NULL,NULL,NULL,0),(217,'TV','Tuvalu','2016-06-24 15:04:56',NULL,NULL,NULL,0),(218,'UG','Uganda','2016-06-24 15:04:56',NULL,NULL,NULL,0),(219,'UA','Ukraine','2016-06-24 15:04:57',NULL,NULL,NULL,0),(220,'AE','United Arab Emirates','2016-06-24 15:04:57',NULL,NULL,NULL,0),(221,'GB','United Kingdom','2016-06-24 15:04:57',NULL,NULL,NULL,0),(222,'US','United States','2016-06-24 15:04:57',NULL,NULL,NULL,0),(223,'UM','United States Minor Outlying Islands','2016-06-24 15:04:58',NULL,NULL,NULL,0),(224,'UY','Uruguay','2016-06-24 15:04:58',NULL,NULL,NULL,0),(225,'UZ','Uzbekistan','2016-06-24 15:04:58',NULL,NULL,NULL,0),(226,'VU','Vanuatu','2016-06-24 15:04:58',NULL,NULL,NULL,0),(227,'VE','Venezuela','2016-06-24 15:04:58',NULL,NULL,NULL,0),(228,'VN','Viet Nam','2016-06-24 15:04:59',NULL,NULL,NULL,0),(229,'VG','Virgin Islands (British)','2016-06-24 15:04:59',NULL,NULL,NULL,0),(230,'VI','Virgin Islands (U.S.)','2016-06-24 15:04:59',NULL,NULL,NULL,0),(231,'WF','Wallis and Futuna Islands','2016-06-24 15:04:59',NULL,NULL,NULL,0),(232,'EH','Western Sahara','2016-06-24 15:05:00',NULL,NULL,NULL,0),(233,'YE','Yemen','2016-06-24 15:05:00',NULL,NULL,NULL,0),(234,'ZM','Zambia','2016-06-24 15:05:00',NULL,NULL,NULL,0),(235,'ZW','Zimbabwe','2016-06-24 15:05:00',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'FantasyFootballPassoLeague'
--
/*!50003 DROP PROCEDURE IF EXISTS `Ex_spGetCountTeamScoreboard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `Ex_spGetCountTeamScoreboard`(IN pLeagueId INT, IN pWeek INT, IN pUserId INT, IN pQuery VARCHAR(50))
BEGIN
	IF (pWeek = 0) THEN
		Select Count(1) `Count` From (
			Select tt.* From (
				Select 
					TeamId, IFNULL(`Name`, '') `Name`, IFNULL(ShortName, `Name`) `ShortName`, IFNULL(Colour1, '') `Colour1`, IFNULL(Colour2, '') `Colour2`, IFNULL(Pattern, '') `Pattern`, IFNULL(TacticsId, 0) `TacticsId`, UserId, LeagueId, 0 `Position`, SUM(`Point`) `Point`, SUM(`Points`) `Points`, SUM(BudgetSpent) `BudgetSpent`, SUM(BudgetRemaining) `BudgetRemaining`, SUM(TimePlayed) `TimePlayed`, SUM(PlayerCount) `PlayerCount` 
                From TeamRankingWeekly Where `Week` > 3
                Group By TeamId, `Name`, ShortName, Colour1, Colour2, Pattern, TacticsId, UserId, LeagueId
				
				
				
				
				
				
			) tt
		) t
		Where (t.`UserId` = IF(pUserId > 0, pUserId, t.`UserId`))
		And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`ShortName` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1);
    ELSE
		Select Count(1) `Count` From (
			Select TeamId, IFNULL(`Name`, '') `Name`, IFNULL(ShortName, `Name`) `ShortName`, IFNULL(Colour1, '') `Colour1`, IFNULL(Colour2, '') `Colour2`, IFNULL(Pattern, '') `Pattern`, IFNULL(TacticsId, 0) `TacticsId`, UserId, LeagueId, 0 `Position`, IFNULL(`Point`, 0) `Point`, IFNULL(`Points`, 0) `Points`, IFNULL(BudgetSpent, 0) `BudgetSpent`, IFNULL(BudgetRemaining, 0) `BudgetRemaining`, IFNULL(TimePlayed, 0) `TimePlayed`, IFNULL(PlayerCount, 0) `PlayerCount`, IFNULL(Ranking, 0) `Ranking` From TeamRankingWeekly Where `Week` = pWeek
			
			
			
			
			
		) t
		Where (t.`UserId` = IF(pUserId > 0, pUserId, t.`UserId`))
		And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`ShortName` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1);
    
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Ex_spGetListLeagueByUserId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `Ex_spGetListLeagueByUserId`(IN pOffset INT, IN pCount INT, IN pLeagueId INT, IN pWeek INT, IN pUserId INT, IN pQuery VARCHAR(50))
BEGIN
	SET @row_number = 0;
    
    Select 
		t.*
        
    From (
		Select tt.*, (@row_number := @row_number + 1) AS Ranking From 
		(
			SELECT 
				t0.`LeagueId`, 
				IFNULL(t0.`CreatedUserId`, 0) `CreatedUserId`,
				t0.`UserId`,
				t0.`Name`,
				IFNULL(t0.`Badge`, '0') `Badge`,
				IFNULL(t0.`Slogan`, '') `Slogan`,
				t0.`NumberOfTeams`,
				IFNULL(t0.`ReferenceCode`, 0) `ReferenceCode`, 
				t0.`TypeId`,
				t0.`GroupId`,        
				
                SUM(IFNULL(t2.`Point`, 0)) `Point`,
                SUM(IFNULL(t2.`TimePlayed`, 0)) `TimePlayed`,
                SUM(IFNULL(t2.`PlayerCount`, 0)) `PlayerCount`,
                SUM(IFNULL(t2.`BudgetRemaining`, 0)) `BudgetRemaining`,
				IFNULL(t0.`TeamCount`, 0) `TeamCount`
			FROM `League` t0    
            Inner Join `LeagueTeam` t1 On t0.LeagueId = t1.LeagueId And t1.StatusId = 1
			Inner Join `Team` t3 On t1.TeamId = t3.TeamId And t3.StatusId = 1
			
            Left Join TeamRankingWeekly t2 On t0.LeagueId = t2.LeagueId And (t2.`Week` = IF(pWeek > 0, pWeek, t2.`Week`))
			Where t0.StatusId = 1
            And t3.UserId = pUserId
			And t0.TypeId In (2  , 3  )
			And t0.GroupId Not In (3 , 4 )
			Group By t0.`LeagueId`, IFNULL(t0.`CreatedUserId`, 0), t0.`UserId`, t0.`Name`, IFNULL(t0.`Badge`, '0'), IFNULL(t0.`Slogan`, ''), t0.`NumberOfTeams`, IFNULL(t0.`ReferenceCode`, 0), t0.`TypeId`, t0.`GroupId`, t0.`TeamCount`
		) tt
		Order By tt.`Point` Desc, tt.PlayerCount Desc, tt.BudgetRemaining Desc, tt.TimePlayed Desc
    ) t
    
    Where (t.`LeagueId` = IF(pLeagueId > 0, pLeagueId, t.`LeagueId`))
    And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`Slogan` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1)
    Order By t.Ranking
    Limit pOffset, pCount; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Ex_spGetListTeamByLeagueId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `Ex_spGetListTeamByLeagueId`(IN pLeagueId INT, IN pWeek INT)
BEGIN

	SET @row_number = 0;
    IF (pWeek = 0) THEN
		Select tt.*, (@row_number := @row_number + 1) AS Ranking From 
		(
			Select 
				t0.TeamId,
				t0.`Name`,
				0 `Position`,
				t0.Colour1,
				t0.Colour2,
				IFNULL(t0.Pattern, '') `Pattern`,
				'' `OptaId`, 
				t1.LeagueId,
				IFNULL(t0.ShortName, t0.`Name`) `ShortName`,
				'' `ImageUrl`,
				SUM(IFNULL(t3.`Point`, 0)) `Point`,
                SUM(IFNULL(t3.`BudgetSpent`, 0)) `BudgetSpent`,
                SUM(IFNULL(t3.`TimePlayed`, 0)) `TimePlayed`
			From Team t0
			Inner Join LeagueTeam t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1
			Inner Join League t2 On t1.LeagueId = t2.LeagueId And t2.StatusId = 1
			
            Left Join TeamRankingWeekly t3 On t2.LeagueId = t3.LeagueId And (t3.`Week` > 3) And t0.TeamId = t3.TeamId
			Where t2.LeagueId = pLeagueId And t0.StatusId = 1
            Group By t0.TeamId, t0.`Name`, t0.Colour1, t0.Colour2, IFNULL(t0.Pattern, ''),  t1.LeagueId, IFNULL(t0.ShortName, t0.`Name`)
		) tt 
		Order By tt.`Point` Desc;
	ELSE
		Select tt.*, (@row_number := @row_number + 1) AS Ranking From 
		(
			Select 
				t0.TeamId,
				t0.`Name`,
				0 `Position`,
				t0.Colour1,
				t0.Colour2,
				IFNULL(t0.Pattern, '') `Pattern`,
				'' `OptaId`, 
				t1.LeagueId,
				IFNULL(t0.ShortName, t0.`Name`) `ShortName`,
				'' `ImageUrl`,
				IFNULL(t3.`Point`, 0) `Point`,
                IFNULL(t3.`BudgetSpent`,0) `BudgetSpent`,
                IFNULL(t3.`TimePlayed`,0) `TimePlayed`
			From Team t0
			Inner Join LeagueTeam t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1
			Inner Join League t2 On t1.LeagueId = t2.LeagueId And t2.StatusId = 1
			Left Join `vwLeagueTeamSquadWeekPoint` t3 On t2.LeagueId = t3.LeagueId And (t3.`Week` = IF(pWeek > 0, pWeek, t3.`Week`)) And t0.TeamId = t3.TeamId
			Where t2.LeagueId = pLeagueId And t0.StatusId = 1
		) tt 
		Order By tt.`Point` Desc;   
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Ex_spGetListTeamScoreboard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `Ex_spGetListTeamScoreboard`(IN pOffset INT, IN pCount INT, IN pLeagueId INT, IN pWeek INT, IN pUserId INT, IN pQuery VARCHAR(50))
BEGIN
	SET @row_number = 0;
    IF (pWeek = 0) THEN
		Select * From (
			Select tt.*, (@row_number := @row_number + 1) AS Ranking From (
				Select 
					TeamId, IFNULL(`Name`, '') `Name`, IFNULL(ShortName, `Name`) `ShortName`, IFNULL(Colour1, '') `Colour1`, IFNULL(Colour2, '') `Colour2`, IFNULL(Pattern, '') `Pattern`, IFNULL(TacticsId, 0) `TacticsId`, UserId, LeagueId, 0 `Position`, SUM(`Point`) `Point`, SUM(`Points`) `Points`, SUM(BudgetSpent) `BudgetSpent`, SUM(BudgetRemaining) `BudgetRemaining`, SUM(TimePlayed) `TimePlayed`, SUM(PlayerCount) `PlayerCount` 
                From TeamRankingWeekly Where `Week` > 3
                Group By TeamId, `Name`, ShortName, Colour1, Colour2, Pattern, TacticsId, UserId, LeagueId            
				
				
				
				
				
				
			) tt
			Order By tt.`Point` Desc, tt.`PlayerCount` Desc, tt.`BudgetRemaining` Desc, tt.`TimePlayed` Desc
		) t
		Where (t.`UserId` = IF(pUserId > 0, pUserId, t.`UserId`))
		And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`ShortName` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1)
		Order By t.Ranking
		Limit pOffset, pCount;
    ELSE
		Select * From (
			Select TeamId, IFNULL(`Name`, '') `Name`, IFNULL(ShortName, `Name`) `ShortName`, IFNULL(Colour1, '') `Colour1`, IFNULL(Colour2, '') `Colour2`, IFNULL(Pattern, '') `Pattern`, IFNULL(TacticsId, 0) `TacticsId`, UserId, LeagueId, 0 `Position`, IFNULL(`Point`, 0) `Point`, IFNULL(`Points`, 0) `Points`, IFNULL(BudgetSpent, 0) `BudgetSpent`, IFNULL(BudgetRemaining, 0) `BudgetRemaining`, IFNULL(TimePlayed, 0) `TimePlayed`, IFNULL(PlayerCount, 0) `PlayerCount`, IFNULL(Ranking, 0) `Ranking` 
            From TeamRankingWeekly Where `Week` = pWeek
			
			
			
			
			
		) t
		Where (t.`UserId` = IF(pUserId > 0, pUserId, t.`UserId`))
		And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`ShortName` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1)
		Order By t.Ranking
		Limit pOffset, pCount;    
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetArticleById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetArticleById`(IN pUserId INT, IN pArticleId INT)
BEGIN
	Select 
		t0.ArticleId, 
        IFNULL(t0.Title, '') `Title`, 
        IFNULL(t0.Spot, '') `Spot`, 
        IFNULL(t0.SpotDescription, '') `SpotDescription`, 
        IFNULL(t0.Content, '') `Content`, 
        IFNULL(t0.CategoryId, 0) `CategoryId`, 
        IFNULL(t2.`Description`, '') `Category`, 
        IFNULL(t0.StyleId, 0) `StyleId`,
        IFNULL(t5.`Description`, '') `Style`,
        IFNULL(t1.Url, t2.MediaUrl) `ImageUrl`,
        Case When IFNULL(t3.UserArticleId, 0) = 0 Then 1 Else 0 End `IsLocked`,
        CONCAT(IFNULL(t4.`Name`, ''), ' ', IFNULL(t4.Surname, '')) `Author`,
        IFNULL(t0.Week, 0) `Week`,
        IFNULL(t0.SortOrder, 0) `SortOrder`,
        IFNULL(t0.StatusId, 0) `StatusId`
	From Article t0
	Left Join ArticleMedia t1 On t0.ArticleId = t1.ArticleId And t1.StatusId = 1
	Left Join LookUpValue t2 On t0.CategoryId = t2.`Code` And t2.LookUpId = 11 And t2.StatusId = 1
    Left Join UserArticle t3 On t0.ArticleId = t3.ArticleId And t3.StatusId = 1 And t3.UserId = IF(pUserId > 0, pUserId, t3.UserId)
    Left Join `User` t4 On t0.CreatedUserId = t4.UserId And t4.StatusId = 1
    Left Join LookUpValue t5 On t0.StyleId = t5.`Code` And t5.LookUpId = 23 And t5.StatusId = 1
	Where t0.ArticleId = pArticleId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountArticleByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountArticleByFilter`(IN pWhere varchar(8000))
BEGIN
	SET @sql = CONCAT('
	Select COUNT(1) `Count` From (
		Select 
			t0.*,  IFNULL(t1.Url, '''') `ImageUrl`
		From Article t0
        Left Join ArticleMedia t1 On t0.ArticleId = t1.ArticleId And t1.StatusId = 1
	) t ', pWhere);

	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountCustomErrorByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountCustomErrorByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
		Select 
			t0.* 
		From CustomError t0 ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountFixtureByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountFixtureByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
		Select 
			t0.*,
            t1.`Name` `LeagueName`
		From Fixture t0
        Inner Join League t1 On t0.LeagueId = t1.LeagueId
        ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountLeague` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountLeague`(IN pLeagueId INT, IN pWeek INT, IN pUserId INT, IN pQuery VARCHAR(50))
BEGIN
Select Count(1) `Count` From (
	SELECT 
		t0.`LeagueId`, 
		IFNULL(t0.`CreatedUserId`, 0) `CreatedUserId`,
        t0.`UserId`,
		t0.`Name`,
		IFNULL(t0.`Badge`, '0') `Badge`,
		IFNULL(t0.`Slogan`, '') `Slogan`,
		t0.`NumberOfTeams`,
		IFNULL(t0.`ReferenceCode`, 0) `ReferenceCode`, 
		t0.`TypeId`,
		t0.`GroupId`,
        0 `TeamCount`,
        0 `Point`        
	FROM `League` t0
	Where t0.StatusId = 1
    And t0.TypeId In (2  , 3  )
    And t0.GroupId Not In (3 , 4 )
    Group By t0.`LeagueId`, IFNULL(t0.`CreatedUserId`, 0), t0.`UserId`, t0.`Name`, IFNULL(t0.`Badge`, '0'), IFNULL(t0.`Slogan`, ''), t0.`NumberOfTeams`, IFNULL(t0.`ReferenceCode`, 0), t0.`TypeId`, t0.`GroupId`
    ) t
    Where (t.`LeagueId` = IF(pLeagueId > 0, pLeagueId, t.`LeagueId`))
    And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`Slogan` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountLeagueByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountLeagueByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
		Select 
			t0.* 
		From League t0 ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountLeagueByUserId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountLeagueByUserId`(IN pLeagueId INT, IN pWeek INT, IN pUserId INT, IN pQuery VARCHAR(50))
BEGIN
	Select Count(1) `Count` From (
	SELECT 
		t0.`LeagueId`, 
		IFNULL(t0.`CreatedUserId`, 0) `CreatedUserId`,
        t0.`UserId`,
		t0.`Name`,
		IFNULL(t0.`Badge`, '0') `Badge`,
		IFNULL(t0.`Slogan`, '') `Slogan`,
		t0.`NumberOfTeams`,
		IFNULL(t0.`ReferenceCode`, 0) `ReferenceCode`, 
		t0.`TypeId`,
		t0.`GroupId`,
        0 `TeamCount`,
        0 `Point`,        
        (@row_number := @row_number + 1) AS Ranking
	FROM `League` t0
	Inner Join `LeagueTeam` t1 On t0.LeagueId = t1.LeagueId And t1.StatusId = 1
	Inner Join `Team` t2 On t1.TeamId = t2.TeamId And t2.StatusId = 1    
	Where t0.StatusId = 1
    And t2.UserId = pUserId
    And t0.TypeId In (2  , 3  )
    And t0.GroupId Not In (3 , 4 )
    Group By t0.`LeagueId`, IFNULL(t0.`CreatedUserId`, 0), t0.`UserId`, t0.`Name`, IFNULL(t0.`Badge`, '0'), IFNULL(t0.`Slogan`, ''), t0.`NumberOfTeams`, IFNULL(t0.`ReferenceCode`, 0), t0.`TypeId`, t0.`GroupId`
    ) t
    Where (t.`LeagueId` = IF(pLeagueId > 0, pLeagueId, t.`LeagueId`))
    And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`Slogan` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountLocalizationValueByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountLocalizationValueByFilter`(IN pWhere VARCHAR(1000))
BEGIN
SET @s = CONCAT('Select COUNT(1) `Count` From (
		Select 
			t0.LocalizationValueId,
			t0.LocalizationId,
			t0.TypeId, 
			t0.CultureInfo,
			t0.Value,
			t0.StatusId,
			t1.Description,
			t1.Page,
			t1.Type,
			t1.Name
		From LocalizationValue t0
		Inner Join Localization t1 On t0.LocalizationId = t1.LocalizationId And t1.StatusId = 1 ) t ', pWhere);
	PREPARE stmt FROM @s;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountLookUpByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountLookUpByFilter`(IN pWhere varchar(8000))
BEGIN
	SET @sql = CONCAT('
	Select COUNT(1) `Count` From (
		Select 
			t0.*
		From LookUp t0
	) t ', pWhere);

	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountLookUpValueByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountLookUpValueByFilter`(IN pWhere varchar(8000))
BEGIN
	SET @sql = CONCAT('
	Select COUNT(1) `Count` From (
		Select 
			t0.*
		From LookUpValue t0
	) t ', pWhere);

	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountMatchPlayerPointByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountMatchPlayerPointByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
		Select 
			t0.MatchPlayerPointId, t0.MatchId, CAST(t2.MatchDay As UNSIGNED) `Week`, t0.TeamId, t0.PlayerId, t0.`Position`, t0.PositionId, t0.Captain, t0.RuleId, t0.`Point`, t3.`Name` `TeamName`, t1.`Name`, t1.Surname, t1.OptaId, t4.`Description` `RuleDescription`, t4.Goalkeeper, t4.Defender, t4.Midfielder, t4.Forward
		From MatchPlayerPoint t0
		Inner Join Player t1 On t0.PlayerId = t1.PlayerId
		Inner Join `Match` t2 On t0.MatchId = t2.MatchId
		Inner Join Team t3 On t0.TeamId = t3.TeamId
		Inner Join Rule t4 On t0.RuleId = t4.RuleId
        Where t0.StatusId = 1
        ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountParameterByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountParameterByFilter`(IN pWhere varchar(8000))
BEGIN
	SET @sql = CONCAT('
		Select COUNT(1) `Count` From (
			Select 
			t0.ParameterId,
			t0.Key, 
			t0.Value,
			t0.ValueType,
			t0.Description,
			t0.IsEditable,
			t0.StatusId 
			From Parameter t0 
		) t ', pWhere);

	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountPlayerByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountPlayerByFilter`(IN pWhere varchar(8000))
BEGIN
	SET @sql = CONCAT('
	Select COUNT(1) `Count` From (
		Select 
		t0.`PlayerId`,
		t0.`TeamId`,
		t0.`Name`,
		t0.`Surname`,
		IFNULL(t0.`ShortName`, CONCAT(t0.`Name`, '' '', t0.`Surname`)) `ShortName`,
		t0.`PositionId`,
		IFNULL(t4.`Description`, t0.`Position`) `Position`,
        IFNULL(t0.`RealPosition`, '''') `RealPosition`,
        IFNULL(t0.`RealPositionSide`, '''') `RealPositionSide`,
		t0.`BirthDate`,
        IFNULL(t0.`JoinDate`, '''') `JoinDate`,
		t0.`Nationality`,
		t0.`Weight`,
		t0.`Height`,
		t0.`JerseyNumber`,
		t0.`Country`,
		IFNULL(t0.`Price`, 0 ) `Price`,
        t0.`OptaId`,
		t0.`CreatedUserId`,
		t0.`CreatedDate`,
		t0.`ModifiedUserId`,
		t0.`ModifiedDate`,
		t0.`StatusId`,
        IFNULL(t1.`Name`, '''') `TeamName`, 
        IFNULL(t1.ShortName, '''') `TeamShortName`,
        IFNULL(t3.Url, '''') `ImageUrl`,
        0 `Point`
	From Player t0
	Left Join Team t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1
    Left Join PlayerMedia t3 On t0.PlayerId = t3.PlayerId and t3.StatusId = 1
    Left Join LookUpValue t4 On t0.PositionId = t4.`Code` And t4.StatusId = 1 And t4.LookUpId = 1 /*PlayerPosition*/
	) t ', pWhere);

	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountRuleByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountRuleByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
		Select 
			t0.* 
		From Rule t0 ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountSquadByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountSquadByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
		SELECT 
			t0.SquadId,
			t0.TeamId,
			t0.`Week`,
			IFNULL(t0.`Budget`, 0) `Budget`,
			IFNULL(t0.`BudgetSpent`, 0) `BudgetSpent`,
			IFNULL(t0.`BudgetRemaining`, 0) `BudgetRemaining`,
			IFNULL(t0.`Point`, 0) `Point`,
			IFNULL(t0.`Points`, 0) `Points`,
			IFNULL(t0.`Ranking`, 0) `Ranking`,
			IFNULL(t0.`TimePlayed`, 0) `TimePlayed`,
			IFNULL(t0.`PlayerCount`, 0) `PlayerCount`,
            IFNULL(t0.`ReferenceSquadId`, 0) `ReferenceSquadId`,
			t0.CreatedDate,
            t0.ModifiedDate,
            t0.UpdatedDate,
            t0.StatusId,
			t1.`Name` `TeamName`,
			t1.UserId,
			IFNULL(CONCAT(t2.`Name`, '' '', t2.Surname), '''') `NameSurname`,
			IFNULL(t2.Email, '''') `Email`
		FROM Squad t0
		Inner Join Team t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1
		Inner Join `User` t2 On t1.CreatedUserId = t2.UserId
        ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountSquadPlayerByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountSquadPlayerByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
			Select 
				t0.SquadPlayerId,
				t0.SquadId,
				t0.PlayerId,
				t0.PositionId,
				t0.IsCaptain,
				t0.IsSecondCaptain,
				t0.TypeId,
				IFNULL(t0.`Point`, 0) `Point`,
                IFNULL(t0.`Points`, 0) `Points`,
				IFNULL(CONCAT(t1.`Name`, '' '', t1.Surname), '''') `NameSurname`,
				IFNULL(t1.ShortName, '''') `ShortName`,
				t1.TeamId,
				IFNULL(t2.`Name`, '''') `TeamName`
			From SquadPlayer t0
			Inner Join Player t1 On t0.PlayerId = t1.PlayerId
			Inner Join Team t2 On t1.TeamId = t2.TeamId
            Where t0.StatusId = 1
        ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountSquadPlayerPointArchiveByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountSquadPlayerPointArchiveByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
			Select 
				t0.SquadPlayerPointId,
				t0.SquadId,
				t0.TeamId,
				t0.`Week`,
				t0.`MatchId`,
				t0.`PlayerId`,
				t0.`PositionId`,
				t0.`IsCaptain`,
				t0.`IsSecondCaptain`,
				t0.`TypeId`,
				t0.RuleId,
				t0.`Point`,
				IF(t0.TypeId = 1, (IF(t0.IsCaptain = 1, 2, 1) * t0.`Point`), CEILING(t0.`Point` / 2)) `EarnedPoint`,
                IF(t0.TypeId = 1, (IF(t0.IsCaptain = 1, 2, 1) * t0.`Point`), ROUND(t0.`Point` / 2, 2)) `EarnedPoints`,
				t1.`Description`,
				t1.Goalkeeper,
				t1.Defender,
				t1.Midfielder,
				t1.Forward,
				CONCAT(t2.`Name`, '' '', t2.Surname) `NameSurname`,
				t3.`Name` `TeamName`
			From SquadPlayerPointArchive t0
			Inner Join Rule t1 On t0.RuleId = t1.RuleId And t1.StatusId = 1
			Inner Join Player t2 On t0.PlayerId = t2.PlayerId
			Inner Join Team t3 On t0.TeamId = t3.TeamId
            Where t0.StatusId = 1
        ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountSquadPlayerPointByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountSquadPlayerPointByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
			Select 
				t0.SquadPlayerPointId,
				t0.SquadId,
				t0.TeamId,
				t0.`Week`,
				t0.`MatchId`,
				t0.`PlayerId`,
				t0.`PositionId`,
				t0.`IsCaptain`,
				t0.`IsSecondCaptain`,
				t0.`TypeId`,
				t0.RuleId,
				t0.`Point`,
				IF(t0.TypeId = 1, (IF(t0.IsCaptain = 1, 2, 1) * t0.`Point`), CEILING(t0.`Point` / 2)) `EarnedPoint`,
                IF(t0.TypeId = 1, (IF(t0.IsCaptain = 1, 2, 1) * t0.`Point`), ROUND(t0.`Point` / 2, 2)) `EarnedPoints`,
				t1.`Description`,
				t1.Goalkeeper,
				t1.Defender,
				t1.Midfielder,
				t1.Forward,
				CONCAT(t2.`Name`, '' '', t2.Surname) `NameSurname`,
				t3.`Name` `TeamName`
			From SquadPlayerPoint t0
			Inner Join Rule t1 On t0.RuleId = t1.RuleId And t1.StatusId = 1
			Inner Join Player t2 On t0.PlayerId = t2.PlayerId
			Inner Join Team t3 On t0.TeamId = t3.TeamId
            Where t0.StatusId = 1
        ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountSquadPointByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountSquadPointByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
		Select 
			t0.SquadPointId,
			t0.SquadId,
			t0.TeamId,
			t0.`Week`,
			t0.RuleId,
			IFNULL(t0.`Point`, 0) `Point`,
			IFNULL(t0.`Points`, 0) `Points`,
			IFNULL(t1.`Description`, '''') `Description`,
            IFNULL(t1.`Spot`, '''') `Spot`,
			IFNULL(t1.Goalkeeper, 0) `Goalkeeper`,
			IFNULL(t1.Defender, 0) `Defender`,
			IFNULL(t1.Midfielder, 0) `Midfielder`,
			IFNULL(t1.Forward, 0) `Forward`,
            '''' `TeamName`
            -- t2.`Name` `TeamName`
		From SquadPoint t0
        -- Inner Join Team t2 On t0.TeamId = t2.TeamId
		Left Join Rule t1 On t0.RuleId = t1.RuleId And t1.StatusId = 1
        ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountTeamByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountTeamByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
		Select 
			t0.*,
            IFNULL(CONCAT(t1.`Name`, '' '', t1.Surname), '''') `NameSurname`
		From Team t0
        Left Join `User` t1 On t0.UserId = t1.UserId And t1.StatusId = 1
        ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountTeamByLeagueId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountTeamByLeagueId`(IN pLeagueId INT)
BEGIN

	Select 
		IFNULL(Count(1), 0) `Count`
	From Team t0
	Inner Join LeagueTeam t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1
	Inner Join League t2 On t1.LeagueId = t2.LeagueId And t2.StatusId = 1
    Where t2.LeagueId = pLeagueId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountTeamScoreboard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountTeamScoreboard`(IN pLeagueId INT, IN pWeek INT, IN pUserId INT, IN pQuery VARCHAR(50))
BEGIN
	IF (pWeek = 0) THEN
        Select 
			Count(1) `Count`
        From TeamRanking t        
		Where (t.StatusId = 1)
        And (t.`UserId` = IF(pUserId > 0, pUserId, t.`UserId`))
		And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`ShortName` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1);
    ELSE
		Select 
			Count(1) `Count`
		From TeamRankingWeekly 
		Where (StatusId = 1)
		And (`Week` = pWeek)
		And (Ranking > 0)
		And (`UserId` = IF(pUserId > 0, pUserId, `UserId`))
		And (IF(`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(`ShortName` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1);    
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountTeamScoreboardMonthly` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountTeamScoreboardMonthly`(IN pVirtualLeagueId INT, IN pActualLeagueId INT, IN pMonth INT, IN pUserId INT, IN pQuery VARCHAR(50))
BEGIN
	Select Count(1) `Count` From (		
        Select TeamId, `Name`, `ShortName`, Colour1, Colour2, Pattern, `TacticsId`, UserId, LeagueId, 0 `Position`, `Point`, `Points`, `BudgetSpent`, `BudgetRemaining`, `TimePlayed`, `PlayerCount`, `Ranking` 
        From TeamRankingMonthly 
        Where StatusId = 1
        And `Month` = pMonth
        And Ranking > 0
	) t
	Where (t.`UserId` = IF(pUserId > 0, pUserId, t.`UserId`))
	And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`ShortName` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetCountUserByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetCountUserByFilter`(IN pWhere VARCHAR(1000))
BEGIN
	SET @sql = CONCAT('Select COUNT(1) `Count` From (
		Select 
			t0.*,
            t1.OperatingSystem,
            t1.Model,
            t1.ApplicationVersion
		From `User` t0
        Left Join `UserDevice` t1 On t0.UserId = t1.UserId And t1.StatusId = 1
        ) t ', pWhere);
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetFixtureByLeagueIdByWeek` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetFixtureByLeagueIdByWeek`(IN pLeagueId INT, IN pWeek INT)
BEGIN

	Select * From Fixture
	Where LeagueId = pLeagueId And `Week` = pWeek;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetLeagueNextCreator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetLeagueNextCreator`(IN pLeagueId INT)
BEGIN
	Select t2.* From LeagueTeam t0
	Inner Join Team t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1
	Inner Join `User` t2 On t1.UserId = t2.UserId And t2.StatusId = 1
	Where t0.StatusId = 1 And t0.LeagueId = pLeagueId
	Order By t0.CreatedDate Limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListArticle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListArticle`(IN pUserId INT, IN pCategoryId INT)
BEGIN
	Select 
		t0.ArticleId, IFNULL(t0.Title, '') `Title`, 
        IFNULL(t0.Spot, '') `Spot`, 
        IFNULL(t0.SpotDescription, '') `SpotDescription`, 
        IFNULL(t0.Content, '') `Content`, 
        IFNULL(t0.CategoryId, 0) `CategoryId`, 
        IFNULL(t2.`Description`, '') `Category`, 
        IFNULL(t0.StyleId, 0) `StyleId`,
        IFNULL(t5.`Description`, '') `Style`, 
        IFNULL(t0.Week, 1) `Week`,
        Case When IFNULL(t3.UserArticleId, 0) = 0 Then IFNULL(t2.MediaUrl, '') Else IFNULL(t1.Url, '') End `ImageUrl`, 
        Case When IFNULL(t3.UserArticleId, 0) = 0 Then 1 Else 0 End `IsLocked`,
        CONCAT(IFNULL(t4.`Name`, ''), ' ', IFNULL(t4.Surname, '')) `Author`
	From Article t0
	Left Join ArticleMedia t1 On t0.ArticleId = t1.ArticleId And t1.StatusId = 1
	Left Join LookUpValue t2 On t0.CategoryId = t2.`Code` And t2.LookUpId = 11 And t2.StatusId = 1
    Left Join UserArticle t3 On t0.ArticleId = t3.ArticleId And t3.StatusId = 1 And t3.UserId = pUserId
    Left Join `User` t4 On t0.CreatedUserId = t4.UserId And t4.StatusId = 1
    Left Join LookUpValue t5 On t0.StyleId = t5.`Code` And t5.LookUpId = 23 And t5.StatusId = 1
	Where t0.StatusId = 1
    And (t0.CategoryId = IF(pCategoryId > 0, pCategoryId, t0.CategoryId))
	Order By t0.CreatedDate Desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListArticleByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListArticleByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN

SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.*,  IFNULL(t1.Url, '''') `ImageUrl`
		From Article t0
        Left Join ArticleMedia t1 On t0.ArticleId = t1.ArticleId And t1.StatusId = 1
	) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListAuthorizationByUserId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListAuthorizationByUserId`(IN pUserId INT)
BEGIN
	Select
		t0.*
	From `Authorization` t0 
	Join `RoleAuthorization` t1 On t0.`AuthorizationId` = t1.`AuthorizationId` And (t1.`StatusId` = 1)
	Join `Role` t2  On t1.`RoleId` = t2.`RoleId` And (t2.StatusId = 1)
	Join `UserRole` t3  On t2.`RoleId` = t3.`RoleId` And (t3.`StatusId` = 1)
	Where 
		(t3.`UserId` = pUserId)
	And (t0.`StatusId` = 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListCity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListCity`()
BEGIN
	Select t0.CityId, t0.`Code`, t0.`Name`, t1.`Code` `CountryCode`
    From City t0
    Inner Join Country t1 On t0.CountryId = t1.CountryId And t1.StatusId = 1
    Where t0.StatusId = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListCustomErrorByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListCustomErrorByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.* 
		From CustomError t0 ) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListFixtureByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListFixtureByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.*,
            t1.`Name` `LeagueName`
		From Fixture t0
        Inner Join League t1 On t0.LeagueId = t1.LeagueId
        ) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListLeague` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListLeague`(IN pOffset INT, IN pCount INT, IN pLeagueId INT, IN pWeek INT, IN pUserId INT, IN pQuery VARCHAR(50))
BEGIN
	SET @row_number = 0;
    IF (pWeek = 0) THEN
		Select 
			t.*
			
		From (
			Select tt.*, (@row_number := @row_number + 1) AS Ranking From 
			(
				SELECT 
					t2.`LeagueId`, 
					IFNULL(t0.`CreatedUserId`, 0) `CreatedUserId`,
					t0.`UserId`,
					IFNULL(t0.`Name`, '') `Name`,
					IFNULL(t0.`Badge`, '0') `Badge`,
					IFNULL(t0.`Slogan`, '') `Slogan`,
					t0.`NumberOfTeams`,
					IFNULL(t0.`ReferenceCode`, 0) `ReferenceCode`, 
					t0.`TypeId`,
					t0.`GroupId`,        
					IFNULL(t2.`Point`, 0) `Point`,
                    IFNULL(t2.`TimePlayed`, 0) `TimePlayed`,
                    IFNULL(t2.`PlayerCount`, 0) `PlayerCount`,
                    IFNULL(t2.`BudgetRemaining`, 0) `BudgetRemaining`,                    
                    IFNULL(t0.`TeamCount`, 0) `TeamCount`
				FROM `League` t0    
				Left Join (
							Select SUM(Point) `Point`, SUM(Points) `Points`, SUM(TimePlayed) `TimePlayed`, SUM(PlayerCount) `PlayerCount`, SUM(BudgetRemaining) `BudgetRemaining`, LeagueTeam.LeagueId 
							From TeamRanking, LeagueTeam 
							Where TeamRanking.TeamId = LeagueTeam.TeamId 
							
							Group By LeagueTeam.LeagueId
						  ) t2 On t0.LeagueId = t2.LeagueId
				Where t0.StatusId = 1
				And t0.TypeId In (2  , 3  )
				And t0.GroupId Not In (3 , 4 )            
				
			) tt
			Order By tt.`Point` Desc, tt.PlayerCount Desc, tt.BudgetRemaining Desc, tt.TimePlayed Desc
		) t
		
		Where (t.`LeagueId` = IF(pLeagueId > 0, pLeagueId, t.`LeagueId`))
		And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`Slogan` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1)
		Order By t.Ranking
		Limit pOffset, pCount;
	ELSE
		Select 
			t.*
			
		From (
			Select tt.*, (@row_number := @row_number + 1) AS Ranking From 
			(
				SELECT 
					t2.`LeagueId`, 
					IFNULL(t0.`CreatedUserId`, 0) `CreatedUserId`,
					t0.`UserId`,
					IFNULL(t0.`Name`, '') `Name`,
					IFNULL(t0.`Badge`, '0') `Badge`,
					IFNULL(t0.`Slogan`, '') `Slogan`,
					t0.`NumberOfTeams`,
					IFNULL(t0.`ReferenceCode`, 0) `ReferenceCode`, 
					t0.`TypeId`,
					t0.`GroupId`,        
					IFNULL(t2.`Point`, 0) `Point`,
                    IFNULL(t2.`TimePlayed`, 0) `TimePlayed`,
                    IFNULL(t2.`PlayerCount`, 0) `PlayerCount`,
                    IFNULL(t2.`BudgetRemaining`, 0) `BudgetRemaining`,
                    IFNULL(t0.`TeamCount`, 0) `TeamCount`
				FROM `League` t0    
				Left Join (
							Select SUM(Point) `Point`, SUM(Points) `Points`, SUM(TimePlayed) `TimePlayed`, SUM(PlayerCount) `PlayerCount`, SUM(BudgetRemaining) `BudgetRemaining`, LeagueTeam.LeagueId 
							From TeamRankingWeekly, LeagueTeam 
							Where TeamRankingWeekly.TeamId = LeagueTeam.TeamId 
							And (TeamRankingWeekly.`Week` = IF(pWeek > 0, pWeek, TeamRankingWeekly.`Week`))
							Group By LeagueTeam.LeagueId
						  ) t2 On t0.LeagueId = t2.LeagueId
				Where t0.StatusId = 1
				And t0.TypeId In (2  , 3  )
				And t0.GroupId Not In (3 , 4 )            
				
			) tt
			Order By tt.`Point` Desc, tt.PlayerCount Desc, tt.BudgetRemaining Desc, tt.TimePlayed Desc
		) t
		
		Where (t.`LeagueId` = IF(pLeagueId > 0, pLeagueId, t.`LeagueId`))
		And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`Slogan` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1)
		Order By t.Ranking
		Limit pOffset, pCount;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListLeagueByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListLeagueByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.* 
		From League t0 ) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListLeagueByUserId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListLeagueByUserId`(IN pOffset INT, IN pCount INT, IN pLeagueId INT, IN pWeek INT, IN pUserId INT, IN pQuery VARCHAR(50))
BEGIN
	SET @row_number = 0;
    
    Select 
		t.*
    From (
		Select tt.*, (@row_number := @row_number + 1) AS Ranking From 
		(
			SELECT 
				t0.`LeagueId`, 
				IFNULL(t0.`CreatedUserId`, 0) `CreatedUserId`,
				t0.`UserId`,
				t0.`Name`,
				IFNULL(t0.`Badge`, '0') `Badge`,
				IFNULL(t0.`Slogan`, '') `Slogan`,
				t0.`NumberOfTeams`,
				IFNULL(t0.`ReferenceCode`, 0) `ReferenceCode`, 
				t0.`TypeId`,
				t0.`GroupId`,
                SUM(IFNULL(t2.`Point`, 0)) `Point`,
                SUM(IFNULL(t2.`TimePlayed`, 0)) `TimePlayed`,
                SUM(IFNULL(t2.`PlayerCount`, 0)) `PlayerCount`,
                SUM(IFNULL(t2.`BudgetRemaining`, 0)) `BudgetRemaining`,
				IFNULL(t0.`TeamCount`, 0) `TeamCount`
			FROM `League` t0    
            Inner Join `LeagueTeam` t1 On t0.LeagueId = t1.LeagueId And t1.StatusId = 1
			Inner Join `Team` t3 On t1.TeamId = t3.TeamId And t3.StatusId = 1
            Left Join TeamRankingWeekly t2 On t1.TeamId = t2.TeamId And (t2.`Week` = IF(pWeek > 0, pWeek, t2.`Week`))
			Where t0.StatusId = 1
            And t3.UserId = pUserId
			And t0.TypeId In (2  , 3  )
			And t0.GroupId Not In (3 , 4 )
			Group By t0.`LeagueId`, IFNULL(t0.`CreatedUserId`, 0), t0.`UserId`, t0.`Name`, IFNULL(t0.`Badge`, '0'), IFNULL(t0.`Slogan`, ''), t0.`NumberOfTeams`, IFNULL(t0.`ReferenceCode`, 0), t0.`TypeId`, t0.`GroupId`, t0.`TeamCount`
		) tt
		Order By tt.`Point` Desc, tt.PlayerCount Desc, tt.BudgetRemaining Desc, tt.TimePlayed Desc
    ) t
    Where (t.`LeagueId` = IF(pLeagueId > 0, pLeagueId, t.`LeagueId`))
    And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`Slogan` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1)
    Order By t.Ranking
    Limit pOffset, pCount; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListLeagueTeamByLeagueId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListLeagueTeamByLeagueId`(IN pLeagueId INT)
BEGIN
	Select LeagueTeamId, LeagueId, TeamId 
    From LeagueTeam
    Where LeagueId = pLeagueId And StatusId = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListLocalizationValue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListLocalizationValue`(IN pPage VARCHAR(100), IN pType VARCHAR(100), IN pName VARCHAR(100), IN pRelationId INT)
BEGIN

Select t1.*, t0.Name, t0.Page, t0.Type, t0.RelationId
	From Localization t0
	Inner Join LocalizationValue t1  On t0.LocalizationId = t1.LocalizationId And t1.StatusId = 1
	Where (pPage IS NULL OR t0.Page = pPage)
	And (pType IS NULL OR t0.Type = pType)
	And t0.StatusId = 1
	And (pName IS NULL OR t0.Name = pName)
	And (pRelationId IS NULL OR t0.RelationId = pRelationId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListLocalizationValueByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListLocalizationValueByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.LocalizationValueId,
			t0.LocalizationId,
			t0.TypeId, 
			t0.CultureInfo,
			t0.Value,
			t0.StatusId,
			t1.Description,
			t1.Page,
			t1.Type,
			t1.Name
		From LocalizationValue t0
		Inner Join Localization t1 On t0.LocalizationId = t1.LocalizationId And t1.StatusId = 1 ) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListLookUpByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListLookUpByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN

SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.*
		From LookUp t0
	) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListLookUpValueByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListLookUpValueByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN

SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.*
		From LookUpValue t0
	) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchAll`()
BEGIN
	Select 
		IFNULL(t1.Point, 0) `Point`, 
        t1.MatchId, 
        t3.TeamId, 
        t0.PlayerId, 
        t4.`Name` `TeamName`, 
        CONCAT('https://admin.passogames.com/images/team/', t4.NameForUrl, '.png') `TeamImageUrl`,
        t3.Side, 
        IFNULL(t3.Score, 0) `Score`, 
        CAST(t2.MatchDay As UNSIGNED) `Week`, 
        t2.MatchDate
	From Player t0
	Inner Join MatchPlayer t1 On t0.PlayerId = t1.PlayerId And t1.StatusId = 1
	Inner Join `Match` t2 On t1.MatchId = t2.MatchId
	Inner Join MatchTeam t3 On t2.MatchId = t3.MatchId And t1.StatusId = 1
	Inner Join (Select TeamId, `Name`, `NameForUrl` From Team Where TypeId = 1) t4 On t3.TeamId = t4.TeamId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchByLeagueIdByWeek` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchByLeagueIdByWeek`(IN pLeagueId INT, IN pWeek INT, IN pUserId INT)
BEGIN

	SELECT 
		t1.MatchId, 
        t1.StatusId, 
        IFNULL(t4.UserMatchId, 0) `UserMatchId`, 
        t0.LeagueId, 
        t0.`Week`, 
        t0.FixtureId, 
        t1.MatchDate, 
        t2.TeamId, 
        t2.Side, 
        IFNULL(t2.Score, 0) `Score`, 
        IFNULL(t2.HalfScore, 0) `HalfScore`, 
        t3.`Name` `TeamName`, 
        
        CONCAT('https://admin.passogames.com/images/team/', t3.NameForUrl, '.png') `TeamImageUrl`,
        t1.Period
	FROM Fixture t0
	Inner Join `Match` t1 On t0.LeagueId = t1.LeagueId And t1.MatchDay = t0.`Week`
	Inner Join MatchTeam t2 On t1.MatchId = t2.MatchId And t2.StatusId = 1
	Inner Join (Select TeamId, `Name`, `NameForUrl` From Team Where TypeId = 1) t3 On t2.TeamId = t3.TeamId
	
	Left Join UserMatch t4 On t1.MatchId = t4.MatchId And t4.StatusId = 1 And t4.UserId = pUserId
	Where t0.LeagueId = pLeagueId And t0.`Week` = pWeek And t0.StatusId <> 2
	Order By Case When t1.StatusId = 2 Then 1 When t1.StatusId = 1 Then 2 Else 3 End, t1.MatchDate Asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchByPlayerId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchByPlayerId`(IN pPlayerId INT)
BEGIN
	Select 
		IFNULL(t1.Point, 0) `Point`, 
        t1.MatchId, 
        t3.TeamId, 
        t0.PlayerId, 
        t4.`Name` `TeamName`, 
        
        CONCAT('https://admin.passogames.com/images/team/', t4.NameForUrl, '.png') `TeamImageUrl`,
        t3.Side, 
        IFNULL(t3.Score, 0) `Score`, 
        CAST(t2.MatchDay As UNSIGNED) `Week`, 
        t2.MatchDate
	From Player t0
	Inner Join MatchPlayer t1 On t0.PlayerId = t1.PlayerId And t1.StatusId = 1
	Inner Join `Match` t2 On t1.MatchId = t2.MatchId
	Inner Join MatchTeam t3 On t2.MatchId = t3.MatchId
	Inner Join (Select TeamId, `Name`, `NameForUrl` From Team Where TypeId = 1) t4 On t3.TeamId = t4.TeamId
    
	Where t0.PlayerId = pPlayerId
    Order By t2.MatchDate Desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchGoalCountByPlayerId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchGoalCountByPlayerId`(IN pPlayerId INT, IN pLeagueId INT)
BEGIN
	Select t0.MatchId, t0.MatchDay, t1.PlayerId, SUM(IF(t2.MatchGoalId IS NULL, 0, 1)) `Goal` 
	From `Match` t0 
	Inner Join `MatchPlayer` t1 On t0.MatchId = t1.MatchId And t1.StatusId = 1
	Left Join `MatchGoal` t2 On t0.MatchId = t2.MatchId And t2.StatusId = 1 And t1.TeamId <> t2.TeamId
	Where t1.PlayerId = pPlayerId
    And t0.LeagueId = pLeagueId
	Group By t0.MatchId, t0.MatchDay, t1.PlayerId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchPlayerByMatchId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchPlayerByMatchId`(IN pMatchId INT)
BEGIN
	Select 
		t0.`MatchPlayerId`,
		t0.`MatchId`,
		t0.`TeamId`,
		t0.`PlayerId`,
		t0.`Captain`,
		t0.`Position`,
		t0.`PositionId`,
		t0.`SubPosition`,
		t0.`SubPositionId`,
		t0.`ShirtNumber`,
		t0.`Status`,
		t0.`OptaId`,
        t0.`Point`,
        t0.`CreatedUserId`,
        t0.`CreatedDate`,
        t0.`ModifiedUserId`,
        t0.`ModifiedDate`,
        t0.`StatusId`,
        t1.`PositionId` `PlayerPositionId`, 
        t1.`Position` `PlayerPosition`
	From MatchPlayer t0
	Inner Join Player t1 On t0.PlayerId = t1.PlayerId 
	Where t0.MatchId = pMatchId And t0.StatusId = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchPlayerByMatchIdByTeamId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchPlayerByMatchIdByTeamId`(IN pMatchId INT, IN pTeamId INT)
BEGIN

	Select 
		t0.MatchId,
		t0.TeamId,
		t0.PlayerId,
		t0.PositionId, 
		t0.ShirtNumber,
		t0.Captain,
		t1.`Name`,
		t1.Surname,
		t1.ShortName,
		CONCAT('https://admin.passogames.com/images/player/', t0.`PlayerId`, '.png') `ImageUrl`,
		t2.Side,
		IFNULL(t5.`Point`, 0) `Point`
	From MatchPlayer t0 
	Inner Join Player t1 On t0.PlayerId = t1.PlayerId And t1.StatusId = 1
	Inner Join MatchTeam t2 On t0.MatchId = t2.MatchId And t0.TeamId = t2.TeamId And t2.StatusId = 1
	Left Join vwMatchPlayerPointSum t5 On t0.PlayerId = t5.PlayerId And t0.MatchId = t5.MatchId
	Where t0.MatchId = pMatchId And t0.StatusId = 1 Order By t0.TeamId, t0.PositionId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchPlayerPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchPlayerPoint`(IN pPlayerId INT, IN pWeek INT)
BEGIN
	Select t0.MatchPlayerPointId, t0.MatchId, t0.TeamId, t0.PlayerId, t0.RuleId, t0.`Point`, IFNULL(t2.Spot, t2.`Description`) `Spot`, t2.`Description`
	From `MatchPlayerPoint` t0
	Inner Join `Match` t1 On t0.MatchId = t1.MatchId And t1.MatchDay = pWeek
	Inner Join `Rule` t2 On t0.RuleId = t2.RuleId
	Where t0.PlayerId = pPlayerId And t0.StatusId = 1
	Order By t0.RuleId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchPlayerPointByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchPlayerPointByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.MatchPlayerPointId, t0.MatchId, CAST(t2.MatchDay As UNSIGNED) `Week`, t0.TeamId, t0.PlayerId, t0.`Position`, t0.PositionId, t0.Captain, t0.RuleId, t0.`Point`, t3.`Name` `TeamName`, t1.`Name`, t1.Surname, t1.OptaId, t4.`Description` `RuleDescription`, t4.Goalkeeper, t4.Defender, t4.Midfielder, t4.Forward
		From MatchPlayerPoint t0
		Inner Join Player t1 On t0.PlayerId = t1.PlayerId
		Inner Join `Match` t2 On t0.MatchId = t2.MatchId
		Inner Join Team t3 On t0.TeamId = t3.TeamId
		Inner Join Rule t4 On t0.RuleId = t4.RuleId
        Where t0.StatusId = 1
        ) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchPlayerStatistic` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchPlayerStatistic`(IN pPlayerId INT, IN pLeagueId INT)
BEGIN
	Select t1.LeagueId, t0.`Key`, t0.PlayerId, t0.PlayerOptaId, Cast(`Value` As UNSIGNED) `Value`
	From MatchPlayerStatistic t0
	Inner Join `Match` t1 On t0.MatchId = t1.MatchId And t1.LeagueId = pLeagueId
    Inner Join `StatisticKey` t2 On t0.`Key` = t2.`Key` And t2.StatusId = 1
	Where t0.PlayerId = pPlayerId;
    
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchPlayerStatisticWeekly` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchPlayerStatisticWeekly`(IN pPlayerId INT, IN pWeek INT, IN pLeagueId INT)
BEGIN
	Select t1.LeagueId, t1.MatchId, Cast(t1.MatchDay As UNSIGNED) `Week`, t0.`Key`, t0.PlayerId, t0.PlayerOptaId, Cast(`Value` As UNSIGNED) `Value`
	From MatchPlayerStatistic t0
	Inner Join `Match` t1 On t0.MatchId = t1.MatchId And t1.`Week` = pWeek And t1.LeagueId = pLeagueId
    Inner Join `StatisticKey` t2 On t0.`Key` = t2.`Key` And t2.StatusId = 1
	Where t0.PlayerId = pPlayerId;
    
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListMatchStatisticByMatchId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListMatchStatisticByMatchId`(IN pMatchId INT)
BEGIN

	Select 
		t0.*,
		t1.Side,
		t2.`Name` `PlayerName`,
		t2.Surname `PlayerSurname`,
		t2.ShortName `PlayerShortName`,
		IFNULL(t3.`Name`, '') `SecondPlayerName`,
		IFNULL(t3.Surname, '') `SecondPlayerSurname`,
		IFNULL(t3.ShortName, '') `SecondPlayerShortName`
	From (
	Select 
		t0.MatchId,
		t0.TeamId,
		t0.PlayerId,
		0 `SecondPlayerId`,
		'Goal' `Key`,
		t0.`Type` `KeyType`,
		t0.Period,
		t0.Minute,
		t0.`Second`
	From MatchGoal t0 
	Where t0.MatchId = pMatchId And t0.StatusId = 1
	Union All
	Select 
		t0.MatchId,
		t0.TeamId,
		t0.AssistPlayerId `PlayerId`,
		0 `SecondPlayerId`,
		'Assist' `Key`,
		t0.`Type` `KeyType`,
		t0.Period,
		t0.Minute,
		t0.`Second`
	From MatchGoal t0 
	Where t0.MatchId = pMatchId And t0.StatusId = 1 And IFNULL(t0.AssistPlayerId, 0) > 0
	Union All    
	Select 
		t0.MatchId,
		t0.TeamId,
		t0.PlayerId,
		0 `SecondPlayerId`,
		t0.`Card` `Key`,
		t0.`CardType` `KeyType`,
		t0.Period,
		t0.Minute,
		t0.`Second`
	From MatchBooking t0 
	Where t0.MatchId = pMatchId And t0.StatusId = 1
	Union All
	Select 
		t0.MatchId,
		t0.TeamId,
		t0.InPlayerId `PlayerId`,
		t0.OutPlayerId `SecondPlayerId`,
		'Substitution' `Key`,
		t0.Reason `KeyType`,
		t0.Period,
		t0.Minute,
		t0.`Second`
	From MatchSubstitution t0 
	Where t0.MatchId = pMatchId And t0.StatusId = 1) t0
	Inner Join MatchTeam t1 On t0.MatchId = t1.MatchId And t0.TeamId = t1.TeamId And t1.StatusId = 1
	Inner Join Player t2 On t0.PlayerId = t2.PlayerId And t2.StatusId = 1
	Left Join Player t3 On t0.SecondPlayerId = t3.PlayerId And t3.StatusId = 1
    Order By CAST(t0.Minute As UNSIGNED) Desc, CAST(t0.`Second` As UNSIGNED) Desc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListPage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListPage`()
BEGIN
    DROP TEMPORARY TABLE IF EXISTS tmp;
    
	CREATE TEMPORARY TABLE tmp (
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Page  varchar(50)    
	);
    
    INSERT INTO tmp SELECT 0, table_name FROM information_schema.tables where table_schema='FantasyFootballPassoLeague'
	And table_type='BASE TABLE';
    
    INSERT INTO tmp SELECT 0, 'General';
    INSERT INTO tmp SELECT 0, 'Report';
    
    SELECT * FROM tmp;
	DROP TEMPORARY TABLE tmp;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListParameterByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListParameterByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN

SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.ParameterId,
			t0.Key, 
			t0.Value,
			t0.ValueType,
			t0.Description,
			t0.IsEditable,
			t0.StatusId 
		From Parameter t0 ) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListPlayer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListPlayer`(IN pPositionId INT, IN pNameSurname VARCHAR(50))
BEGIN
	Select 
		t0.`PlayerId`,
		t0.`Name`,
		t0.`Surname`,
		IFNULL(t0.`ShortName`, CONCAT(t0.`Name`, ' ', t0.`Surname`)) `ShortName`,
		t0.`PositionId`,
		IFNULL(t4.`Description`, t0.`Position`) `Position`,
		IFNULL(t0.`Price`, 0 ) `Price`,
        IFNULL(t1.`Name`, '') `TeamName`, 
        IFNULL(t1.ShortName, '') `TeamShortName`,
        CONCAT('https://admin.passogames.com/images/player/', t0.`PlayerId`, '.png') `ImageUrl`,
        SUM(IFNULL(t5.`Point`, 0)) `Point`
	From Player t0
	Inner Join (Select TeamId, `Name`, `ShortName`, `NameForUrl` From Team Where TypeId = 1 And StatusId = 1) t1 On t0.TeamId = t1.TeamId
    Left Join LookUpValue t4 On t0.PositionId = t4.`Code` And t4.StatusId = 1 And t4.LookUpId = 1 
    Left Join vwMatchPlayerPointSum t5 On t0.PlayerId = t5.PlayerId
	Where t0.StatusId = 1
    And (t0.PositionId = IF(pPositionId > 0, pPositionId, t0.PositionId))
    And (IF(t0.`Name` Like CONCAT('%', pNameSurname, '%') Or IFNULL(pNameSurname, '') = '', 1, 0) = 1 Or IF(t0.`Surname` Like CONCAT('%', pNameSurname, '%') Or IFNULL(pNameSurname, '') = '', 1, 0) = 1)
    Group By 
		t0.`PlayerId`,
		t0.`Name`,
		t0.`Surname`,
		t0.`ShortName`,
		t0.`PositionId`,
		t4.`Description`,
		t0.`Price`,
        t1.`Name`, 
        t1.ShortName
	Order By t0.PositionId, t0.`Name`, t0.`Surname`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListPlayerAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListPlayerAll`()
BEGIN
	Select 
		t0.`PlayerId`,
		t0.`TeamId`,
		t0.`Name`,
		t0.`Surname`,
        IFNULL(t0.`ShortName`, CONCAT(t0.`Name`, ' ', t0.`Surname`)) `ShortName`,
		t0.`PositionId`,
		IFNULL(t4.`Description`, t0.`Position`) `Position`,
		t0.`BirthDate`,
		t0.`Nationality`,
        t0.`Country`,
        IFNULL(t0.Price, 0) `Price`,
		IFNULL(t0.`Weight`, 0) `Weight`,
		IFNULL(t0.`Height`, 0) `Height`,
		IFNULL(t0.`JerseyNumber`, '') `JerseyNumber`,
		IFNULL(t1.`Name`, '') `TeamName`, 
        IFNULL(t1.`ShortName`, '') `TeamShortName`,
        0 `Goal`,
        0 `Assist`,
        CONCAT('https://admin.passogames.com/images/player/', t0.`PlayerId`, '.png') `ImageUrl`,
        CONCAT('https://admin.passogames.com/images/team/', t1.NameForUrl, '.png') `TeamImageUrl`
	From Player t0
	Inner Join (Select TeamId, `Name`, `ShortName`, `NameForUrl` From Team Where TypeId = 1 And StatusId = 1) t1 On t0.TeamId = t1.TeamId
    Left Join LookUpValue t4 On t0.PositionId = t4.`Code` And t4.StatusId = 1 And t4.LookUpId = 1 
	Where t0.StatusId = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListPlayerByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListPlayerByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN

SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
		t0.`PlayerId`,
		t0.`TeamId`,
		t0.`Name`,
		t0.`Surname`,
		IFNULL(t0.`ShortName`, CONCAT(t0.`Name`, '' '', t0.`Surname`)) `ShortName`,
		t0.`PositionId`,
		IFNULL(t4.`Description`, t0.`Position`) `Position`,
        IFNULL(t0.`RealPosition`, '''') `RealPosition`,
        IFNULL(t0.`RealPositionSide`, '''') `RealPositionSide`,
		t0.`BirthDate`,
        IFNULL(t0.`JoinDate`, '''') `JoinDate`,
		t0.`Nationality`,
		t0.`Weight`,
		t0.`Height`,
		t0.`JerseyNumber`,
		t0.`Country`,
		IFNULL(t0.`Price`, 0 ) `Price`,
        t0.`OptaId`,
		t0.`CreatedUserId`,
		t0.`CreatedDate`,
		t0.`ModifiedUserId`,
		t0.`ModifiedDate`,
		t0.`StatusId`,
        IFNULL(t1.`Name`, '''') `TeamName`, 
        IFNULL(t1.ShortName, '''') `TeamShortName`,
        IFNULL(t3.Url, '''') `ImageUrl`,
        0 `Point`
	From Player t0
	Left Join Team t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1
    Left Join PlayerMedia t3 On t0.PlayerId = t3.PlayerId and t3.StatusId = 1
    Left Join LookUpValue t4 On t0.PositionId = t4.`Code` And t4.StatusId = 1 And t4.LookUpId = 1 /*PlayerPosition*/
	) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListPlayerPointByWeek` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListPlayerPointByWeek`(IN pWeek INT, IN pLeagueId INT)
BEGIN
	SELECT t1.LeagueId, t0.PlayerId, t0.OptaId, CAST(t1.MatchDay As UNSIGNED) `Week`, SUM(IFNULL(t2.`Point`, 0)) `Point` 
	FROM MatchPlayer t0
    Inner Join MatchPlayerPoint t2 On t0.MatchId = t2.MatchId And t0.PlayerId = t2.PlayerId And t2.StatusId = 1
	Inner Join `Match` t1 On t0.MatchId = t1.MatchId And t1.LeagueId = pLeagueId
    Where t0.StatusId = 1
    And t1.MatchDay = pWeek
	Group By t0.PlayerId, t1.LeagueId, t1.MatchDay, t0.OptaId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListPlayerSelectionRateByWeek` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListPlayerSelectionRateByWeek`(IN pWeek INT, IN pLeagueId INT)
BEGIN
	SELECT IFNULL(t2.PlayerId, 0) `PlayerId`, CEILING(IFNULL(Count(1) / (SELECT Count(1) `Count` FROM `Squad` t0, `LeagueTeam` t1 Where t0.TeamId = t1.TeamId And t1.StatusId = 1 And t1.LeagueId = pLeagueId And t0.`Week` = pWeek And (t0.StatusId = 1 Or t0.StatusId = 3)) * 100, 0)) `SelectionRate` 
	FROM `Squad` t0
	Inner Join `LeagueTeam` t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1 And t1.LeagueId = pLeagueId
	Inner Join `SquadPlayer` t2 On t0.SquadId = t2.SquadId And t2.StatusId = 1
	Where t0.`Week` = pWeek And (t0.StatusId = 1 Or t0.StatusId = 3)
	Group By t2.PlayerId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListPlayerWithTeam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListPlayerWithTeam`()
BEGIN
	Select 
		t0.`PlayerId`,
		t0.`TeamId`,
		t0.`Name`,
		t0.`Surname`,
		IFNULL(t0.`ShortName`, CONCAT(t0.`Name`, ' ', t0.`Surname`)) `ShortName`,
		t0.`PositionId`,
		IFNULL(t4.`Description`, t0.`Position`) `Position`,
		t0.`BirthDate`,
		t0.`Nationality`,
		t0.`Country`,
		IFNULL(t0.Price, 0) `Price`,
		IFNULL(t0.`Weight`, 0) `Weight`,
		IFNULL(t0.`Height`, 0) `Height`,
		t0.`JerseyNumber`,
		IFNULL(t1.`Name`, '') `TeamName`, 
		IFNULL(t1.`ShortName`, '') `TeamShortName`,
		0 `Goal`,
		0 `Assist`,
		CONCAT('https://admin.passogames.com/images/player/', t0.`PlayerId`, '.png') `ImageUrl`,
        CONCAT('https://admin.passogames.com/images/team/', t1.NameForUrl, '.png') `TeamImageUrl`        
		
		
	From Player t0
	Inner Join (Select TeamId, `Name`, `ShortName`, `NameForUrl` From Team Where TypeId = 1 And StatusId = 1) t1 On t0.TeamId = t1.TeamId
	
	Left Join LookUpValue t4 On t0.PositionId = t4.`Code` And t4.StatusId = 1 And t4.LookUpId = 1 
	
	Where t0.StatusId = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListRuleByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListRuleByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.* 
		From Rule t0 ) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListRules` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListRules`()
BEGIN
	SELECT RuleId, Description, Spot, Goalkeeper, Defender, Midfielder, Forward 
	FROM Rule
	WHERE StatusId = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListSquadArchiveByTeamId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListSquadArchiveByTeamId`(IN pTeamId INT)
BEGIN

	Select SquadId, `Week`, TacticsId, StatusId From SquadArchive Where TeamId = pTeamId And StatusId != SquadId And StatusId In (1, 3, 4);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListSquadByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListSquadByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
	SET @p_Offset = pOffset;
	SET @p_Count = pCount;

	SET @s = CONCAT('Select * From (
			SELECT 
				t0.SquadId,
				t0.TeamId,
				t0.`Week`,
				IFNULL(t0.`Budget`, 0) `Budget`,
				IFNULL(t0.`BudgetSpent`, 0) `BudgetSpent`,
				IFNULL(t0.`BudgetRemaining`, 0) `BudgetRemaining`,
				IFNULL(t0.`Point`, 0) `Point`,
                IFNULL(t0.`Points`, 0) `Points`,
				IFNULL(t0.`Ranking`, 0) `Ranking`,
				IFNULL(t0.`TimePlayed`, 0) `TimePlayed`,
				IFNULL(t0.`PlayerCount`, 0) `PlayerCount`,
                IFNULL(t0.`ReferenceSquadId`, 0) `ReferenceSquadId`,
				t0.CreatedDate,
                t0.ModifiedDate,
                t0.UpdatedDate,
                t0.StatusId,
				t1.`Name` `TeamName`,
				t1.UserId,
				IFNULL(CONCAT(t2.`Name`, '' '', t2.Surname), '''') `NameSurname`,
				IFNULL(t2.Email, '''') `Email`
			FROM Squad t0
			Inner Join Team t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1
			Inner Join `User` t2 On t1.CreatedUserId = t2.UserId
			) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
	PREPARE stmt1 FROM @s;
	EXECUTE stmt1 USING @p_Offset, @p_Count; 
	DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListSquadByTeamId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListSquadByTeamId`(IN pTeamId INT)
BEGIN

	Select SquadId, `Week`, TacticsId, StatusId From Squad Where TeamId = pTeamId And StatusId != SquadId And StatusId In (1, 3, 4);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListSquadPlayerArchiveBySquadId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListSquadPlayerArchiveBySquadId`(IN pSquadId INT)
BEGIN
	Select
		t0.`SquadPlayerId`,
		t0.`SquadId`,
		t0.`PlayerId`,
		t0.`PositionId`,
		t0.`Inline`,
		t0.`IsCaptain`,
        t0.`IsSecondCaptain`,
		t0.`TypeId`,
		IFNULL(t0.`Budget`, 0) `Budget`,
		IFNULL(t1.`Name`, '') `Name`,
		IFNULL(t1.`Surname`, '') `Surname`,
		IFNULL(t2.`Name`, '') `TeamName`,
		IFNULL(t1.`TeamId`, 0) `TeamId`,
        IFNULL(t1.PositionId, 0) `PlayerPositionId`,
        IFNULL(t1.`ShortName`, '') `ShortName`,
        
        CONCAT('https://admin.passogames.com/images/player/', t0.`PlayerId`, '.png') `ImageUrl`,
        IFNULL(t4.`Description`, t1.`Position`) `Position`,
        IFNULL(t5.`Point`, 0) `Point`
	From SquadPlayerArchive t0
    
	Left Join Player t1 On t0.PlayerId = t1.PlayerId And t1.StatusId In (1 , 0 )
    
	Left Join (Select TeamId, `Name`, `ShortName`, `NameForUrl` From Team Where TypeId = 1 And StatusId = 1) t2 On t1.TeamId = t2.TeamId
    Left Join LookUpValue t4 On t1.PositionId = t4.`Code` And t4.StatusId = 1 And t4.LookUpId = 1 
    Left Join vwMatchPlayerPointSum t5 On t0.PlayerId = t5.PlayerId And t0.`Week` = t5.MatchDay
	Where (t0.SquadId = pSquadId)
    And (t0.StatusId = 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListSquadPlayerByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListSquadPlayerByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
	SET @p_Offset = pOffset;
	SET @p_Count = pCount;

	SET @s = CONCAT('Select * From (
			Select 
				t0.SquadPlayerId,
				t0.SquadId,
				t0.PlayerId,
				t0.PositionId,
				t0.IsCaptain,
				t0.IsSecondCaptain,
				t0.TypeId,
				IFNULL(t0.`Point`, 0) `Point`,
                IFNULL(t0.`Points`, 0) `Points`,
				IFNULL(CONCAT(t1.`Name`, '' '', t1.Surname), '''') `NameSurname`,
				IFNULL(t1.ShortName, '''') `ShortName`,
				t1.TeamId,
				IFNULL(t2.`Name`, '''') `TeamName`
			From SquadPlayer t0
			Inner Join Player t1 On t0.PlayerId = t1.PlayerId
			Inner Join Team t2 On t1.TeamId = t2.TeamId
            Where t0.StatusId = 1
			) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
	PREPARE stmt1 FROM @s;
	EXECUTE stmt1 USING @p_Offset, @p_Count; 
	DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListSquadPlayerBySquadId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListSquadPlayerBySquadId`(IN pSquadId INT)
BEGIN
	Select
		t0.`SquadPlayerId`,
		t0.`SquadId`,
		t0.`PlayerId`,
		t0.`PositionId`,
		t0.`Inline`,
		t0.`IsCaptain`,
        t0.`IsSecondCaptain`,
		t0.`TypeId`,
		IFNULL(t0.`Budget`, 0) `Budget`,
		IFNULL(t1.`Name`, '') `Name`,
		IFNULL(t1.`Surname`, '') `Surname`,
		IFNULL(t2.`Name`, '') `TeamName`,
		IFNULL(t1.`TeamId`, 0) `TeamId`,
        IFNULL(t1.PositionId, 0) `PlayerPositionId`,
        IFNULL(t1.`ShortName`, '') `ShortName`,
        
        CONCAT('https://admin.passogames.com/images/player/', t0.`PlayerId`, '.png') `ImageUrl`,
        IFNULL(t4.`Description`, t1.`Position`) `Position`,
        IFNULL(t5.`Point`, 0) `Point`
	From SquadPlayer t0
    
	Left Join Player t1 On t0.PlayerId = t1.PlayerId And t1.StatusId In (1 , 0 )
    
	Left Join (Select TeamId, `Name`, `ShortName`, `NameForUrl` From Team Where TypeId = 1 And StatusId = 1) t2 On t1.TeamId = t2.TeamId
    Left Join LookUpValue t4 On t1.PositionId = t4.`Code` And t4.StatusId = 1 And t4.LookUpId = 1 
    Left Join vwMatchPlayerPointSum t5 On t0.PlayerId = t5.PlayerId And t0.`Week` = t5.MatchDay
	Where t0.StatusId = 1
	And t0.SquadId = pSquadId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListSquadPlayerPointArchiveByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListSquadPlayerPointArchiveByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
	SET @p_Offset = pOffset;
	SET @p_Count = pCount;

	SET @s = CONCAT('Select * From (
			Select 
				t0.SquadPlayerPointId,
				t0.SquadId,
				t0.TeamId,
				t0.`Week`,
				t0.`MatchId`,
				t0.`PlayerId`,
				t0.`PositionId`,
				t0.`IsCaptain`,
				t0.`IsSecondCaptain`,
				t0.`TypeId`,
				t0.RuleId,
				t0.`Point`,
				IF(t0.TypeId = 1, (IF(t0.IsCaptain = 1, 2, 1) * t0.`Point`), CEILING(t0.`Point` / 2)) `EarnedPoint`,
                IF(t0.TypeId = 1, (IF(t0.IsCaptain = 1, 2, 1) * t0.`Point`), ROUND(t0.`Point` / 2, 2)) `EarnedPoints`,
				t1.`Description`,
				t1.Goalkeeper,
				t1.Defender,
				t1.Midfielder,
				t1.Forward,
				CONCAT(t2.`Name`, '' '', t2.Surname) `NameSurname`,
				t3.`Name` `TeamName`
			From SquadPlayerPointArchive t0
			Inner Join Rule t1 On t0.RuleId = t1.RuleId And t1.StatusId = 1
			Inner Join Player t2 On t0.PlayerId = t2.PlayerId
			Inner Join Team t3 On t0.TeamId = t3.TeamId
            Where t0.StatusId = 1
			) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
	PREPARE stmt1 FROM @s;
	EXECUTE stmt1 USING @p_Offset, @p_Count; 
	DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListSquadPlayerPointByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListSquadPlayerPointByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
	SET @p_Offset = pOffset;
	SET @p_Count = pCount;

	SET @s = CONCAT('Select * From (
			Select 
				t0.SquadPlayerPointId,
				t0.SquadId,
				t0.TeamId,
				t0.`Week`,
				t0.`MatchId`,
				t0.`PlayerId`,
				t0.`PositionId`,
				t0.`IsCaptain`,
				t0.`IsSecondCaptain`,
				t0.`TypeId`,
				t0.RuleId,
				t0.`Point`,
				IF(t0.TypeId = 1, (IF(t0.IsCaptain = 1, 2, 1) * t0.`Point`), CEILING(t0.`Point` / 2)) `EarnedPoint`,
                IF(t0.TypeId = 1, (IF(t0.IsCaptain = 1, 2, 1) * t0.`Point`), ROUND(t0.`Point` / 2, 2)) `EarnedPoints`,
				t1.`Description`,
				t1.Goalkeeper,
				t1.Defender,
				t1.Midfielder,
				t1.Forward,
				CONCAT(t2.`Name`, '' '', t2.Surname) `NameSurname`,
				t3.`Name` `TeamName`
			From SquadPlayerPoint t0
			Inner Join Rule t1 On t0.RuleId = t1.RuleId And t1.StatusId = 1
			Inner Join Player t2 On t0.PlayerId = t2.PlayerId
			Inner Join Team t3 On t0.TeamId = t3.TeamId
            Where t0.StatusId = 1
			) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
	PREPARE stmt1 FROM @s;
	EXECUTE stmt1 USING @p_Offset, @p_Count; 
	DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListSquadPointByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListSquadPointByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
	SET @p_Offset = pOffset;
	SET @p_Count = pCount;

	SET @s = CONCAT('Select * From (
			Select 
				t0.SquadPointId,
				t0.SquadId,
				t0.TeamId,
				t0.`Week`,
				t0.RuleId,
				IFNULL(t0.`Point`, 0) `Point`,
                IFNULL(t0.`Points`, 0) `Points`,
				IFNULL(t1.`Description`, '''') `Description`,
                IFNULL(t1.`Spot`, '''') `Spot`,
				IFNULL(t1.Goalkeeper, 0) `Goalkeeper`,
				IFNULL(t1.Defender, 0) `Defender`,
				IFNULL(t1.Midfielder, 0) `Midfielder`,
				IFNULL(t1.Forward, 0) `Forward`,
                '''' `TeamName`
                -- t2.`Name` `TeamName`
			From SquadPoint t0
            -- Inner Join Team t2 On t0.TeamId = t2.TeamId
			Left Join Rule t1 On t0.RuleId = t1.RuleId And t1.StatusId = 1
			) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
	PREPARE stmt1 FROM @s;
	EXECUTE stmt1 USING @p_Offset, @p_Count; 
	DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListStandingTeamByLeagueIdByWeek` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListStandingTeamByLeagueIdByWeek`(IN pLeagueId INT, IN pWeek INT)
BEGIN

	SELECT 
		t0.LeagueId, 
        t0.TeamId, 
        t0.`Week`, 
        t1.`Name`, 
        t1.ShortName, 
        
        CONCAT('https://admin.passogames.com/images/team/', t1.NameForUrl, '.png') `ImageUrl`,
        t0.`Against` `GoalsAgainst`, 
        t0.`Drawn` `Draws`, 
        t0.`For` `GoalsScored`, 
        t0.`Lost` `Losses`, 
        t0.`Played`, 
        t0.`Points`, 
        t0.`Position`, 
        t0.`Won` `Wins`, 
        (t0.`For` - t0.`Against`) `GoalDifference`
	FROM Standing t0
	Inner Join (Select TeamId, `Name`, `NameForUrl`, `ShortName` From Team Where TypeId = 1) t1 On t0.TeamId = t1.TeamId
	
	Where t0.StatusId = 1
	And t0.LeagueId = pLeagueId
	And t0.`Week` = pWeek
	Order By t0.`Position`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListTeam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListTeam`()
BEGIN
	Select 
		t0.TeamId, 
        t0.`Name`, 
        t0.ShortName, 
        
        CONCAT('https://admin.passogames.com/images/team/', t0.NameForUrl, '.png') `ImageUrl`,
        t0.OptaId, 
        t2.LeagueId, 
        0 `Point`, 
        0 `Position`, 
		t0.Colour1, 
        t0.Colour2, 
        IFNULL(t0.Pattern, '') `Pattern`, 
        0 `Ranking`, 
        0 `BudgetSpent`,
        0 `BudgetRemaining`,
        0 `TimePlayed` 
	From Team t0
	Inner Join LeagueTeam t2 On t0.TeamId = t2.TeamId And t2.StatusId = 1
    Inner Join League t3 On t2.LeagueId = t3.LeagueId And t3.StatusId = 1
	
	Where t0.TypeId = 1 And t0.StatusId = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListTeamByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListTeamByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.*,
            IFNULL(CONCAT(t1.`Name`, '' '', t1.Surname), '''') `NameSurname`
		From Team t0
        Left Join `User` t1 On t0.UserId = t1.UserId And t1.StatusId = 1
        ) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListTeamByLeagueId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListTeamByLeagueId`(IN pLeagueId INT, IN pWeek INT)
BEGIN

	SET @row_number = 0;
    IF (pWeek = 0) THEN
		Select tt.*, (@row_number := @row_number + 1) AS Ranking From 
		(
			Select 
				t0.TeamId,
				t0.`Name`,
				0 `Position`,
				t0.Colour1,
				t0.Colour2,
				IFNULL(t0.Pattern, '') `Pattern`,
				'' `OptaId`, 
				t1.LeagueId,
				IFNULL(t0.ShortName, t0.`Name`) `ShortName`,
				'' `ImageUrl`,
                IFNULL(t3.`Point`, 0) `Point`,
                IFNULL(t3.`BudgetSpent`, 0) `BudgetSpent`,
                IFNULL(t3.`BudgetRemaining`, 0) `BudgetRemaining`,
                IFNULL(t3.`TimePlayed`, 0) `TimePlayed`,
                IFNULL(t3.`PlayerCount`, 0) `PlayerCount`
			From Team t0
			Inner Join LeagueTeam t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1
            Left Join TeamRanking t3 On t0.TeamId = t3.TeamId And t3.StatusId = 1
			Where t1.LeagueId = pLeagueId And t0.StatusId = 1
		) tt 
		Order By tt.`Point` Desc, tt.PlayerCount Desc, tt.BudgetRemaining Desc, tt.TimePlayed Desc;
	ELSE
		Select tt.*, (@row_number := @row_number + 1) AS Ranking From 
		(
			Select 
				t0.TeamId,
				t0.`Name`,
				0 `Position`,
				t0.Colour1,
				t0.Colour2,
				IFNULL(t0.Pattern, '') `Pattern`,
				'' `OptaId`, 
				t1.LeagueId,
				IFNULL(t0.ShortName, t0.`Name`) `ShortName`,
				'' `ImageUrl`,
				IFNULL(t3.`Point`, 0) `Point`,
                IFNULL(t3.`BudgetSpent`, 0) `BudgetSpent`,
                IFNULL(t3.`BudgetRemaining`, 0) `BudgetRemaining`,
                IFNULL(t3.`TimePlayed`, 0) `TimePlayed`,
                IFNULL(t3.`PlayerCount`, 0) `PlayerCount`
			From Team t0
			Inner Join LeagueTeam t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1
			Left Join TeamRankingWeekly t3 On t1.TeamId = t3.TeamId And (t3.`Week` = IF(pWeek > 0, pWeek, t3.`Week`)) And t3.StatusId = 1
			Where t1.LeagueId = pLeagueId And t0.StatusId = 1
		) tt 
		Order By tt.`Point` Desc, tt.PlayerCount Desc, tt.BudgetRemaining Desc, tt.TimePlayed Desc;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListTeamRankingWeeklyByTeamId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListTeamRankingWeeklyByTeamId`(IN pTeamId INT)
BEGIN
	Select TeamId, `Week`, Point, Ranking From TeamRankingWeekly Where TeamId = pTeamId And StatusId = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListTeamScoreboard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListTeamScoreboard`(IN pOffset int, IN pCount int, IN pLeagueId int,
                                                             IN pWeek int, IN pUserId int, IN pQuery varchar(50))
BEGIN
    IF (pWeek = 0) THEN
        Select 
			TeamId, IFNULL(`Name`, '') `Name`, IFNULL(ShortName, `Name`) `ShortName`, IFNULL(Colour1, '') `Colour1`, IFNULL(Colour2, '') `Colour2`, IFNULL(Pattern, '') `Pattern`, IFNULL(TacticsId, 0) `TacticsId`, UserId, LeagueId, 0 `Position`, `Point`, `Points`, `BudgetSpent`, `BudgetRemaining`, `TimePlayed`, `PlayerCount`, `Ranking`
        From TeamRanking t
		Where (t.StatusId = 1)
        And (t.`UserId` = IF(pUserId > 0, pUserId, t.`UserId`))
		And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`ShortName` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1)
		Order By t.Ranking
		Limit pOffset, pCount;
    ELSE
		Select t.TeamId, IFNULL(t.`Name`, '') `Name`, IFNULL(t.ShortName, `Name`) `ShortName`, IFNULL(t.Colour1, '') `Colour1`, IFNULL(t.Colour2, '') `Colour2`, IFNULL(t.Pattern, '') `Pattern`, IFNULL(t.TacticsId, 0) `TacticsId`, t.UserId, t.LeagueId, 0 `Position`, IFNULL(t.`Point`, 0) `Point`, IFNULL(t.`Points`, 0) `Points`, IFNULL(t.BudgetSpent, 0) `BudgetSpent`, IFNULL(t.BudgetRemaining, 0) `BudgetRemaining`, IFNULL(t.TimePlayed, 0) `TimePlayed`, IFNULL(t.PlayerCount, 0) `PlayerCount`, IFNULL(t.Ranking, 0) `Ranking` 
		From TeamRankingWeekly t 
        Where (t.StatusId = 1)
        And (t.`Week` = pWeek)
        
		And (t.`UserId` = IF(pUserId > 0, pUserId, t.`UserId`))
		And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`ShortName` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1)
		Order By t.Ranking
		Limit pOffset, pCount;    
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListTeamScoreboardMonthly` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListTeamScoreboardMonthly`(IN pOffset int, IN pCount int,
                                                                    IN pVirtualLeagueId int, IN pActualLeagueId int,
                                                                    IN pMonth int, IN pUserId int,
                                                                    IN pQuery varchar(50))
BEGIN
	
	Select * From (
		
        Select TeamId, `Name`, `ShortName`, Colour1, Colour2, Pattern, `TacticsId`, UserId, LeagueId, 0 `Position`, `Point`, `Points`, `BudgetSpent`, `BudgetRemaining`, `TimePlayed`, `PlayerCount`, `Ranking` 
        From TeamRankingMonthly 
        Where (StatusId = 1)
        And (`Month` = pMonth)
        
	) t
	Where (t.`UserId` = IF(pUserId > 0, pUserId, t.`UserId`))
	And (IF(t.`Name` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1 Or IF(t.`ShortName` Like CONCAT('%', pQuery, '%') Or IFNULL(pQuery, '') = '', 1, 0) = 1)
	Order By t.Ranking
	Limit pOffset, pCount;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListUser`()
BEGIN
	Select 
		t0.`UserId`,
		IFNULL(t0.`Name`, '') `Name`,
		IFNULL(t0.`Surname`, '') `Surname`,
		IFNULL(t0.`FacebookId`, '') `FacebookId`,
		IFNULL(t0.`GoogleId`, '') `GoogleId`,
		IFNULL(t0.`FirebaseId`, '') `FirebaseId`,
		t0.`TypeId`,
		t0.`GroupId`,
		IFNULL(t0.`GsmNo`, '') `GsmNo`,
		IFNULL(t0.`Email`, '') `Email`,
		IFNULL(t0.`Password`, '') `Password`,
		IFNULL(t0.`VerificationCode`, '') `VerificationCode`,
		t0.`StatusId`,
		
		
        0 `UserDeviceId`,
        IFNULL(t0.DeviceToken, '') `DeviceToken`,        
        
        
        IFNULL(t0.TeamId, 0) `TeamId`, 
        IFNULL(t0.`TeamName`, '') `TeamName`,
        IFNULL(t2.SquadId, 0) `SquadId`, 
        IFNULL(t2.TacticsId, 0) `TacticsId`, 
        IFNULL(t2.Budget, 0) `Budget`,
        IFNULL(t2.`Week`, 0) `Week`,
        IFNULL(t3.SquadId, 0) `NextSquadId`
	From `User` t0
	
	
	Left Join `Squad` t2 On t0.TeamId = t2.TeamId And t2.StatusId = 1
	Left Join `Squad` t3 On t0.TeamId = t3.TeamId And t2.StatusId = 4;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListUserAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListUserAll`()
BEGIN
	Select 
		t0.`UserId`,
		t0.`Name`,
		t0.`Surname`,
		IFNULL(t0.`FacebookId`, '') `FacebookId`,
		IFNULL(t0.`GoogleId`, '') `GoogleId`,
		IFNULL(t0.`FirebaseId`, '') `FirebaseId`,
		t0.`TypeId`,
		t0.`GroupId`,
		IFNULL(t0.`GenderId`, 0) `GenderId`,
		t0.`BirthDate`,
		t0.`CityCode`,
		t0.`CountryCode`,
		t0.`GsmNo`,
		IFNULL(t0.`Email`, '') `Email`,
		t0.`Password`,
		IFNULL(t0.`VerificationCode`, '') `VerificationCode`,
		t0.`RegisteredDate`,
		t0.`AllowNotification`,
		t0.`AllowSms`,
		t0.`CreatedUserId`,
		t0.`CreatedDate`,
		t0.`ModifiedUserId`,
		t0.`ModifiedDate`,
		t0.`StatusId`,
		IFNULL(t1.`Name`, '') `City`, 
		IFNULL(t2.`Name`, '') `Country`
	From `User` t0
	Left Join City t1 On t0.CityCode = t1.`Code` And t1.StatusId = 1
	Left Join Country t2 On t0.CountryCode = t2.`Code` And t2.StatusId = 1
    Where t0.StatusId = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListUserByEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListUserByEmail`(IN pEmail VARCHAR(1000))
BEGIN
	Select 
		t0.`UserId`,
		IFNULL(t0.`Name`, '') `Name`,
		IFNULL(t0.`Surname`, '') `Surname`,
		IFNULL(t0.`FacebookId`, '') `FacebookId`,
		IFNULL(t0.`GoogleId`, '') `GoogleId`,
		IFNULL(t0.`FirebaseId`, '') `FirebaseId`,
		t0.`TypeId`,
		t0.`GroupId`,
		IFNULL(t0.`GsmNo`, '') `GsmNo`,
		IFNULL(t0.`Email`, '') `Email`,
		IFNULL(t0.`Password`, '') `Password`,
		IFNULL(t0.`VerificationCode`, '') `VerificationCode`,
		t0.`StatusId`,
		
		
        0 `UserDeviceId`,
        IFNULL(t0.DeviceToken, '') `DeviceToken`,
        
        
        IFNULL(t0.TeamId, 0) `TeamId`, 
        IFNULL(t0.`TeamName`, '') `TeamName`,
        IFNULL(t2.SquadId, 0) `SquadId`, 
        IFNULL(t2.TacticsId, 0) `TacticsId`, 
        IFNULL(t2.Budget, 0) `Budget`,
        IFNULL(t2.`Week`, 0) `Week`,
        IFNULL(t3.SquadId, 0) `NextSquadId`
	From `User` t0
	
	
	Left Join `Squad` t2 On t0.TeamId = t2.TeamId And (t2.StatusId = 1 Or t2.StatusId = 3 )
	Left Join `Squad` t3 On t0.TeamId = t3.TeamId And (t3.StatusId = 4)
	Where Email = pEmail
    Order By IF(IFNULL(t2.`StatusId`, 0) = 1, 1, 2) Asc, IFNULL(t2.`Week`, 0) Desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListUserByFilter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListUserByFilter`(IN pOffset INT, IN pCount INT, IN pOrderBy VARCHAR(1000), IN pWhere VARCHAR(1000))
BEGIN
SET @p_Offset = pOffset;
SET @p_Count = pCount;

SET @s = CONCAT('Select * From (
		Select 
			t0.*,
            t1.OperatingSystem,
            t1.Model,
            t1.ApplicationVersion
		From `User` t0
        Left Join `UserDevice` t1 On t0.UserId = t1.UserId And t1.StatusId = 1
        ) t ', pWhere, ' ', pOrderBy, ' Limit ?, ?');
PREPARE stmt1 FROM @s;
EXECUTE stmt1 USING @p_Offset, @p_Count; 
DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetListUserTeamSquad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetListUserTeamSquad`()
BEGIN
	Select 
		t0.UserId, 
        t0.StatusId, 
        
        
        IFNULL(t0.TeamId, 0) `TeamId`, 
        IFNULL(t0.`TeamName`, '') `TeamName`,
        IFNULL(t2.SquadId, 0) `SquadId`, 
        IFNULL(t2.TacticsId, 0) `TacticsId`, 
        IFNULL(t2.Budget, 0) `Budget`,
        IFNULL(t2.`Week`, 0) `Week`,
        IFNULL(t2.`Point`, 0) `Point`,
        IFNULL(t2.`StatusId`, 0) `SquadStatusId`
	From `User` t0
	
	Left Join `Squad` t2 On t0.TeamId = t2.TeamId And (t2.StatusId = 1 Or t2.StatusId = 3 )
    Order By IF(IFNULL(t2.`StatusId`, 0) = 1, 1, 2) Asc, IFNULL(t2.`Week`, 0) Desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetLocalizationList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetLocalizationList`()
BEGIN
SELECT t1.LocalizationId, t0.Page, t0.Type, t0.Name, IFNULL(t1.CultureInfo, '') `CultureInfo`, IFNULL(t1.Value, '') Value
	FROM Localization t0 
	Left Join LocalizationValue t1  On t0.LocalizationId = t1.LocalizationId And t1.StatusId = 1 
	Where (t0.StatusId = 1) And (t0.Type != 'Data')
	Order By t1.LocalizationValueId, t1.CultureInfo, t0.Page, t0.Type, t0.Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetMatchPlayerPointByRulePlayerMaxPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetMatchPlayerPointByRulePlayerMaxPoint`(IN pWeek INT, IN pLeagueId INT)
BEGIN
    
	DROP TEMPORARY TABLE IF EXISTS MatchPlayerPointSum;
    
	CREATE TEMPORARY TABLE MatchPlayerPointSum
    (INDEX idx_MatchPlayerPointSum_MatchId_TeamId_PlayerId_Point USING BTREE (MatchId, TeamId, PlayerId, `Point`))
	SELECT SUM(t0.`Point`) `Point`, t0.PlayerId, t0.MatchId, t2.TeamId, t0.Captain, t0.PositionId, t0.`Position`
	FROM MatchPlayerPoint t0
    Inner Join `Match` t1 On t0.MatchId = t1.MatchId And CAST(t1.MatchDay As UNSIGNED) = pWeek And t1.LeagueId = pLeagueId
    Inner Join Player t2 On t0.PlayerId = t2.PlayerId
    Where t0.StatusId = 1 And t0.RuleId Not In (18, 21, 22)
	Group By t0.PlayerId, t0.MatchId, t2.TeamId, t0.Captain, t0.PositionId, t0.`Position`;
		
	Select MAX(`Point`) Into @MaxPoint From MatchPlayerPointSum;

	Select 
		t2.MatchId,
        t2.TeamId,
        t1.PlayerId,
        t2.Captain,
        t2.PositionId,
        t2.`Position`,
		18,
		2,
		0,
		now(),
		1
	From Squad t0
	Inner Join SquadPlayer t1 On t0.SquadId = t1.SquadId And t1.StatusId = 1
	Inner Join MatchPlayerPointSum t2 On t1.PlayerId = t2.PlayerId And t2.`Point` = @MaxPoint
    Left Join MatchPlayerPoint t3 On t3.MatchId = t2.MatchId And t3.TeamId = t2.TeamId And t3.PlayerId = t2.PlayerId And t3.RuleId = 18 And t3.StatusId = 1
	Where (t0.StatusId = 1 Or t0.StatusId = 3 ) 
    And t0.PlayerCount = 15 And 
    t0.`Week` = pWeek
    And t3.MatchPlayerPointId IS NULL
    Group By t2.MatchId, t2.TeamId, t1.PlayerId, t2.Captain, t2.PositionId, t2.`Position`;
    
    Select * From MatchPlayer t0
    Inner Join (
		Select t0.MatchPlayerId, t0.MatchId, t0.PlayerId, SUM(t2.`Point`) `Point`     
		From MatchPlayer t0    
		Inner Join `Match` t1 On t0.MatchId = t1.MatchId And t1.MatchDay = pWeek
		Inner Join MatchPlayerPoint t2 On t0.PlayerId = t2.PlayerId And t1.MatchId = t2.MatchId And t2.StatusId = 1
		Where t0.StatusId = 1
		Group By t0.MatchPlayerId, t0.MatchId, t0.PlayerId
    ) t1 On t0.MatchPlayerId = t1.MatchPlayerId
    Order By t1.`Point` Desc;
    
	DROP TEMPORARY TABLE MatchPlayerPointSum;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetMatchTeamScoreByMatchId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetMatchTeamScoreByMatchId`(IN pMatchId INT)
BEGIN
	SELECT 
		MatchId,
		MAX(If(Side = 'Home', TeamId, NULL)) `HomeTeamId`, 
		MAX(If(Side = 'Home', Score, NULL)) `HomeScore`, 
		MAX(If(Side = 'Away', TeamId, NULL)) `AwayTeamId`, 
		MAX(If(Side = 'Away', Score, NULL)) `AwayScore`
	FROM MatchTeam
	Where MatchId = pMatchId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetMenuDetailLocalizationValues` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetMenuDetailLocalizationValues`(IN pCultureInfo varchar(5), IN pMenuId INT)
BEGIN
	Select t0.`MenuDetailId`, t0.`MenuId`, t0.`Code`, t0.`Description`, t0.`Url`, t0.`Target`, t0.`Action`, t0.`Controller`, t0.`LocalizationName`, IFNULL(NULLIF(t2.`Value`, ``), `Title`) `Title`, 
    t0.`CssClass`, t0.`StatusId`, t0.`SortOrder`, t2.`CultureInfo`, t0.`CreatedDate`, t0.`CreatedUserId`, t0.`ModifiedDate`, t0.`ModifiedUserId`
	From MenuDetail t0 
	Left Join Localization t1  on t0.`LocalizationName` = t1.`Name` And t1.`StatusId` = 1 And t1.`Page` = `MenuDetail`
	Left Join LocalizationValue t2 on t1.`LocalizationId` = t2.`LocalizationId` And t2.`StatusId` = 1 And t2.`CultureInfo` = pCultureInfo
	Where t0.`StatusId` = 1
	Order By SortOrder;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetMenuLocalizationValues` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetMenuLocalizationValues`(IN pCultureInfo varchar(5))
BEGIN
	Select t0.`MenuId`, t0.`Code`, t0.`Description`, t0.`Url`, t0.`Target`, t0.`Action`, t0.`Controller`, t0.`LocalizationName`, IFNULL(NULLIF(t2.`Value`, ``), `Title`) `Title`, 
    t0.`CssClass`, t0.`StatusId`, t0.`SortOrder`, t2.`CultureInfo`, t0.`CreatedDate`, t0.`CreatedUserId`, t0.`ModifiedDate`, t0.`ModifiedUserId`
	From Menu t0 
	Left Join Localization t1  on t0.`LocalizationName` = t1.`Name` And t1.`StatusId` = 1 And t1.`Page` = `Menu`
	Left Join LocalizationValue t2 on t1.`LocalizationId` = t2.`LocalizationId` And t2.`StatusId` = 1 And t2.`CultureInfo` = pCultureInfo
	Where t0.`StatusId` = 1
	Order By SortOrder;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetNotificationUserDeviceToken` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetNotificationUserDeviceToken`()
BEGIN
SELECT t0.UserId,t0. DeviceToken FROM UserDevice t0
JOIN User t1 ON t1.UserId = t0.UserId AND t1.StatusId = 1
JOIN Team t2 ON  t2.UserId = t0.UserId AND t2.StatusId = 1
JOIN Squad t3 ON t3.TeamId = t2.TeamId AND t3.StatusId IN (1,3) 
JOIN SquadPlayer t4 ON t4.SquadId = t3.SquadId AND t4.StatusId = 1 AND t4.PlayerId = 988 AND t4.Week = 7 And t4.PositionId IN (1,5)
WHERE t0.StatusId = 1
AND IFNULL(t0.DeviceToken, '') <>  ''
ORDER BY t0.UserId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetPivotListMatchTeam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetPivotListMatchTeam`(IN pMatchDay INT)
BEGIN
	SELECT 
		t0.MatchId, 
        t0.MatchDate,
        t0.StatusId,
		MAX(If(t1.Side = 'Home', t1.TeamId, NULL)) `HomeTeamId`, 
		MAX(If(t1.Side = 'Home', t2.`Name`, NULL)) `HomeTeam`, 
		MAX(If(t1.Side = 'Home', t1.Score, NULL)) `HomeScore`, 
		MAX(If(t1.Side = 'Away', t1.TeamId, NULL)) `AwayTeamId`, 
		MAX(If(t1.Side = 'Away', t2.`Name`, NULL)) `AwayTeam`, 
		MAX(If(t1.Side = 'Away', t1.Score, NULL)) `AwayScore`
	FROM `Match` t0
	Inner Join MatchTeam t1 On t0.MatchId = t1.MatchId
	Inner Join Team t2 On t1.TeamId = t2.teamId
	Where t0.MatchDay = pMatchDay
	Group By t0.MatchId, t0.MatchDate, t0.StatusId
	Order By t0.MatchDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetPlayerById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetPlayerById`(IN pPlayerId INT)
BEGIN
	Select 
		t0.`PlayerId`,
		t0.`TeamId`,
		t0.`Name`,
		t0.`Surname`,
        IFNULL(t0.`ShortName`, CONCAT(t0.`Name`, ' ', t0.`Surname`)) `ShortName`,
		t0.`PositionId`,
		IFNULL(t4.`Description`, t0.`Position`) `Position`,
		t0.`BirthDate`,
		t0.`Nationality`,
        t0.`Country`,
        IFNULL(t0.Price, 0) `Price`,
		IFNULL(t0.`Weight`, 0) `Weight`,
		IFNULL(t0.`Height`, 0) `Height`,
		t0.`JerseyNumber`,
		IFNULL(t1.`Name`, '') `TeamName`, 
        IFNULL(t1.`ShortName`, '') `TeamShortName`,
		
		
        0 `Goal`,
        0 `Assist`,
        
        CONCAT('https://admin.passogames.com/images/player/', t0.`PlayerId`, '.png') `ImageUrl`,
        CONCAT('https://admin.passogames.com/images/team/', t1.NameForUrl, '.png') `TeamImageUrl`
        
	From Player t0
	Inner Join (Select TeamId, `Name`, `NameForUrl`, `ShortName` From Team Where TypeId = 1 And StatusId = 1) t1 On t0.TeamId = t1.TeamId
    
    
    Left Join LookUpValue t4 On t0.PositionId = t4.`Code` And t4.StatusId = 1 And t4.LookUpId = 1 
    
	Where t0.StatusId = 1 And t0.PlayerId = pPlayerId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetPlayerPointById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetPlayerPointById`(IN pPlayerId INT, IN pLeagueId INT, IN pWeek INT)
BEGIN
	SELECT t1.LeagueId, t0.PlayerId, t0.OptaId, SUM(IFNULL(t2.`Point`, 0)) `Point` 
	FROM MatchPlayer t0
    Inner Join MatchPlayerPoint t2 On t0.MatchId = t2.MatchId And t0.PlayerId = t2.PlayerId And t2.StatusId = 1
	Inner Join `Match` t1 On t0.MatchId = t1.MatchId And t1.LeagueId = pLeagueId And (CAST(t1.MatchDay As UNSIGNED) = IF(pWeek > 0, pWeek, CAST(t1.MatchDay As UNSIGNED)))
    Where t0.PlayerId = pPlayerId And t0.StatusId = 1
	Group By t0.PlayerId, t1.LeagueId, t0.OptaId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetPlayerSelectionRateById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetPlayerSelectionRateById`(IN pPlayerId INT, IN pLeagueId INT, IN pWeek INT)
BEGIN
	SELECT IFNULL(t2.PlayerId, pPlayerId) `PlayerId`, CEILING(IFNULL(Count(1) / (SELECT Count(1) `Count` FROM `Squad` t0 Inner Join `LeagueTeam` t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1 And t1.LeagueId = pLeagueId Where t0.`Week` = pWeek And (t0.StatusId = 1 Or t0.StatusId = 3)) * 100, 0)) `SelectionRate` 
	FROM `Squad` t0
	Inner Join `LeagueTeam` t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1 And t1.LeagueId = pLeagueId
	Inner Join `SquadPlayer` t2 On t0.SquadId = t2.SquadId And t2.StatusId = 1
	Where t0.`Week` = pWeek And (t0.StatusId = 1 Or t0.StatusId = 3)
	And t2.PlayerId = pPlayerId
	Group By t2.PlayerId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetSquadPlayerPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetSquadPlayerPoint`(IN pWeek INT, IN pMatchId INT, IN pModifiedUserId INT)
BEGIN

	DROP TEMPORARY TABLE IF EXISTS SquadSquadPlayer;
	DROP TEMPORARY TABLE IF EXISTS SquadPlayerMatchPlayerPoint;

    CREATE TEMPORARY TABLE SquadSquadPlayer
    (INDEX idx_SquadSquadPlayer (SquadId, PlayerId, `Week`))
	Select 
		t0.`Week`,
		t1.SquadId,
		t1.PlayerId, 
		t1.PositionId, 
		t1.IsCaptain, 
		t1.IsSecondCaptain, 
		t1.TypeId
	From Squad t0
	Inner Join SquadPlayer t1 On t0.SquadId = t1.SquadId And t1.StatusId = 1
	Where (t0.`Week` = IF(pWeek > 0, pWeek, t0.`Week`))
    And t0.PlayerCount = 15;
    
    CREATE TEMPORARY TABLE SquadPlayerMatchPlayerPoint
    (INDEX idx_SquadPlayerMatchPlayerPoint (MatchId, TeamId, SquadId, PlayerId, RuleId))
	Select 
		t0.`Week`,
		t0.SquadId, 
		t3.MatchId,
		t3.TeamId,
		t0.PlayerId, 
		t0.PositionId, 
		t0.IsCaptain, 
		t0.IsSecondCaptain, 
		t0.TypeId, 
		t3.RuleId, 
		t3.`Point`
	From SquadSquadPlayer t0
	Inner Join MatchPlayerPoint t3 On t0.PlayerId = t3.PlayerId And t3.StatusId = 1 And (t3.`MatchId` = IF(pMatchId > 0, pMatchId, t3.`MatchId`));

	Select 
		t0.`Week`,
		t0.SquadId, 
		t0.MatchId,
		t0.TeamId,
		t0.PlayerId, 
		t0.PositionId, 
		t0.IsCaptain, 
		t0.IsSecondCaptain, 
		t0.TypeId, 
		t0.RuleId, 
		t0.`Point`,
		pModifiedUserId, 
		now(), 
		1
	From SquadPlayerMatchPlayerPoint t0
    Left Join SquadPlayerPoint t4 On t0.SquadId = t4.SquadId And t0.MatchId = t4.MatchId And t0.TeamId = t4.TeamId And t0.PlayerId = t4.PlayerId And t0.RuleId = t4.RuleId And t4.StatusId = 1
	Where t4.SquadPlayerPointId IS NULL;
    
    Select * From SquadPlayerPoint t0
    Inner Join SquadPlayerMatchPlayerPoint t1 On t0.SquadId = t1.SquadId And t0.MatchId = t1.MatchId And t0.TeamId = t1.TeamId And t0.PlayerId = t1.PlayerId And t0.RuleId = t1.RuleId
    Where t0.StatusId = 1 And t0.RuleId Not In (18, 21, 22);
    
	Select * From SquadPlayerPoint t0
    Left Join SquadPlayerMatchPlayerPoint t1 On t0.SquadId = t1.SquadId And t0.MatchId = t1.MatchId And t0.TeamId = t1.TeamId And t0.PlayerId = t1.PlayerId And t0.RuleId = t1.RuleId
    Where t0.StatusId = 1 And t0.RuleId Not In (18, 21, 22)
    And t1.SquadId IS NULL; 
    
	DROP TEMPORARY TABLE IF EXISTS SquadSquadPlayer;
    DROP TEMPORARY TABLE IF EXISTS SquadPlayerMatchPlayerPoint;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetSquadPlayerPointByRulePlayerMaxPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetSquadPlayerPointByRulePlayerMaxPoint`(IN pWeek INT, IN pLeagueId INT)
BEGIN

	DROP TEMPORARY TABLE IF EXISTS SquadPlayerPointSum;
    
	CREATE TEMPORARY TABLE SquadPlayerPointSum
    (INDEX idx_SquadPlayerPointSum_MatchId_TeamId_PlayerId_Point USING BTREE (MatchId, TeamId, PlayerId, `Point`))
	SELECT SUM(t0.`Point`) `Point`, t0.PlayerId, t0.MatchId, t2.TeamId, t0.Captain, t0.PositionId, t0.`Position`
	FROM MatchPlayerPoint t0
    Inner Join `Match` t1 On t0.MatchId = t1.MatchId And CAST(t1.MatchDay As UNSIGNED) = pWeek And t1.LeagueId = pLeagueId
    Inner Join Player t2 On t0.PlayerId = t2.PlayerId
    Where t0.StatusId = 1 And t0.RuleId Not In (18, 21, 22)
	Group By t0.PlayerId, t0.MatchId, t2.TeamId, t0.Captain, t0.PositionId, t0.`Position`;
		
	Select MAX(`Point`) Into @MaxPoint From SquadPlayerPointSum;

	SET group_concat_max_len = 18446744073709551615;
    
	Select 
		t0.`Week`,
		t0.SquadId,		
		t2.MatchId,
		t2.TeamId,
		t1.PlayerId,
		t1.PositionId,
		t1.IsCaptain,
		t1.IsSecondCaptain,
		t1.TypeId,
		18 `RuleId`,
		2 `Point`
	From Squad t0
	Inner Join SquadPlayer t1 On t0.SquadId = t1.SquadId And t1.StatusId = 1
	Inner Join SquadPlayerPointSum t2 On t1.PlayerId = t2.PlayerId And t2.`Point` = @MaxPoint
	Left Join SquadPlayerPoint t3 On t0.`Week` = t3.`Week` And t0.SquadId = t3.SquadId And t2.MatchId = t3.MatchId And t2.TeamId = t3.TeamId And t1.PlayerId = t3.PlayerId And t3.RuleId = 18 And t3.StatusId = 1
	Where (t0.StatusId = 1 Or t0.StatusId = 3 ) 
	And t0.PlayerCount = 15 
	And t0.`Week` = pWeek
	And t3.SquadPlayerPointId IS NULL;
    
	Select * From SquadPlayerPoint t0    
	Left Join SquadPlayerPointSum t1 On t0.MatchId = t1.MatchId And t0.TeamId = t1.TeamId And t0.PlayerId = t1.PlayerId And t1.`Point` = @MaxPoint
	Where (t0.StatusId = 1 ) 
	And t0.`Week` = pWeek
	And t0.RuleId = 18
    And t1.PlayerId IS NULL;

	DROP TEMPORARY TABLE SquadPlayerPointSum;
    
	Select * From SquadPlayer t0
    Inner Join (
	Select 
		t.`SquadId`, 
        t.`Week`, 
        t.PlayerId,
        IF(t.TypeId = 1, (IF(t.IsCaptain = 1, 2, 1) * t.`Point`), CEILING(t.`Point` / 2)) `Point`,
        IF(t.TypeId = 1, (IF(t.IsCaptain = 1, 2, 1) * t.`Point`), ROUND(t.`Point` / 2, 2)) `Points`
	From (
			Select 
				t1.`SquadId`,
				t0.`Week`,
				SUM(t1.`Point`) `Point`,
                t1.PlayerId,
				t1.TypeId,
				t1.IsCaptain
			From Squad t0
			Inner Join SquadPlayerPoint t1 On t0.SquadId = t1.SquadId And t1.StatusId = 1
			Where t0.`Week` = pWeek 
			Group By t1.`SquadId`, t1.PlayerId, t0.`Week`, t1.TypeId, t1.IsCaptain
	) t
    ) t1 On t0.SquadId = t1.SquadId And t0.PlayerId = t1.PlayerId And (t0.`Point` != t1.`Point` Or t0.`Points` != t1.`Points`);

	Select * From Squad t0
	Inner Join (Select SquadId, SUM(`Point`) `Point`, SUM(`Points`) `Points` From SquadPoint Where StatusId = 1 Group By SquadId) t1 On t0.SquadId = t1.SquadId
    Where t0.`Week` = pWeek
    And t0.PlayerCount = 15
	And (t0.`Point` != t1.`Point` Or t0.`Points` != t1.`Points`);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetSquadRanking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetSquadRanking`(IN pLeagueId INT, IN pWeek INT)
BEGIN

	SET @row_number = 0;
    
    CREATE TEMPORARY TABLE SquadRanking
    (INDEX idx_SquadRanking_SquadId (SquadId))
    Select t.TeamId, t.SquadId, t.`Budget`, t.`Minutes`, t.`Ranking` From (
		Select tt.*, (@row_number := @row_number + 1) AS `Ranking` 
        From (
			Select t0.TeamId, t3.SquadId, t3.PlayerCount, t0.UserId, t1.LeagueId, SUM(t3.`Point`) `Point`, SUM(t3.`Points`) `Points`, IFNULL(t4.`Budget`, 0) `Budget`, IFNULL(t5.`Minutes`, 0) `Minutes`
			From Team t0
			Inner Join LeagueTeam t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1 And t1.LeagueId = pLeagueId
			Inner Join Squad t3 On t0.TeamId = t3.TeamId And (t3.`Week` = IF(pWeek > 0, pWeek, t3.`Week`)) And (t3.StatusId = 1 Or t3.StatusId = 3)
            Left Join (Select SquadId, Sum(Budget) `Budget` From SquadPlayer Where StatusId = 1 Group By SquadId) t4 On t3.SquadId = t4.SquadId
            Left Join (Select t0.SquadId, Sum(CAST(t1.`Value` As UNSIGNED)) `Minutes` From SquadPlayer t0 Inner Join MatchPlayerStatistic t1 On t0.PlayerId = t1.PlayerId And t1.Key = 'mins_played' And t1.StatusId = 1 Inner Join `Match` t2 On (t2.MatchDay = IF(pWeek > 0, pWeek, t2.MatchDay)) And t1.MatchId = t2.MatchId Where t0.StatusId = 1 Group By t0.SquadId) t5 On t3.SquadId = t5.SquadId
			Where t0.StatusId = 1
			Group By t0.TeamId, t3.SquadId, t3.PlayerCount, t0.UserId, t1.LeagueId, t4.`Budget`, t5.`Minutes`
		) tt
        Order By tt.`Points` Desc, tt.PlayerCount Desc, tt.Budget Asc, tt.`Minutes` Asc
    ) t
	Order By t.Ranking;

	Select t0.*, t1.Name From SquadRanking t0
    Inner Join Team t1 On t0.TeamId = t1.TeamId;
    
    DROP TEMPORARY TABLE SquadRanking;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetTeamRankingGeneralByTeamId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetTeamRankingGeneralByTeamId`(IN pTeamId INT)
BEGIN
	SET @row_number = 0;
	Select * From (
		Select tt.TeamId, tt.`Point`, (@row_number := @row_number + 1) AS Ranking From (
			Select 
				TeamId, SUM(`Point`) `Point`, SUM(`Points`) `Points`, SUM(BudgetSpent) `BudgetSpent`, SUM(BudgetRemaining) `BudgetRemaining`, SUM(TimePlayed) `TimePlayed`, SUM(PlayerCount) `PlayerCount` 
			From TeamRankingWeekly 
            Where `Week` > 3 And StatusId = 1
			Group By TeamId           
		) tt
		Order By tt.`Point` Desc, tt.`PlayerCount` Desc, tt.`BudgetRemaining` Desc, tt.`TimePlayed` Desc
	) t
	Where t.TeamId = pTeamId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetUserByFacebookId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetUserByFacebookId`(IN pFacebookId VARCHAR(1000))
BEGIN
	Select 
		t0.`UserId`,
		IFNULL(t0.`Name`, '') `Name`,
		IFNULL(t0.`Surname`, '') `Surname`,
		IFNULL(t0.`FacebookId`, '') `FacebookId`,
		IFNULL(t0.`GoogleId`, '') `GoogleId`,
		IFNULL(t0.`FirebaseId`, '') `FirebaseId`,
		t0.`TypeId`,
		t0.`GroupId`,
		IFNULL(t0.`GsmNo`, '') `GsmNo`,
		IFNULL(t0.`Email`, '') `Email`,
		IFNULL(t0.`Password`, '') `Password`,
		IFNULL(t0.`VerificationCode`, '') `VerificationCode`,
		t0.`StatusId`,
		
		
        0 `UserDeviceId`,
        IFNULL(t0.DeviceToken, '') `DeviceToken`,        
        
        
        IFNULL(t0.TeamId, 0) `TeamId`, 
        IFNULL(t0.`TeamName`, '') `TeamName`,
        IFNULL(t2.SquadId, 0) `SquadId`, 
        IFNULL(t2.TacticsId, 0) `TacticsId`, 
        IFNULL(t2.Budget, 0) `Budget`,
        IFNULL(t2.`Week`, 0) `Week`,
        IFNULL(t3.SquadId, 0) `NextSquadId`
	From `User` t0
	
	
	Left Join `Squad` t2 On t0.TeamId = t2.TeamId And (t2.StatusId = 1 Or t2.StatusId = 3 )
	Left Join `Squad` t3 On t0.TeamId = t3.TeamId And (t3.StatusId = 4)
	Where t0.FacebookId = pFacebookId And t0.StatusId = 1
    Order By IF(IFNULL(t2.`StatusId`, 0) = 1, 1, 2) Asc, IFNULL(t2.`Week`, 0) Desc
    Limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetUserByFirebaseId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetUserByFirebaseId`(IN pFirebaseId VARCHAR(1000))
BEGIN
	Select 
		t0.`UserId`,
		IFNULL(t0.`Name`, '') `Name`,
		IFNULL(t0.`Surname`, '') `Surname`,
		IFNULL(t0.`FacebookId`, '') `FacebookId`,
		IFNULL(t0.`GoogleId`, '') `GoogleId`,
		IFNULL(t0.`FirebaseId`, '') `FirebaseId`,
		t0.`TypeId`,
		t0.`GroupId`,
		IFNULL(t0.`GsmNo`, '') `GsmNo`,
		IFNULL(t0.`Email`, '') `Email`,
		IFNULL(t0.`Password`, '') `Password`,
		IFNULL(t0.`VerificationCode`, '') `VerificationCode`,
		t0.`StatusId`,
		
		
        0 `UserDeviceId`,
        IFNULL(t0.DeviceToken, '') `DeviceToken`,        
        
        
        IFNULL(t0.TeamId, 0) `TeamId`, 
        IFNULL(t0.`TeamName`, '') `TeamName`,
        IFNULL(t2.SquadId, 0) `SquadId`, 
        IFNULL(t2.TacticsId, 0) `TacticsId`, 
        IFNULL(t2.Budget, 0) `Budget`,
        IFNULL(t2.`Week`, 0) `Week`,
        IFNULL(t3.SquadId, 0) `NextSquadId`
	From `User` t0
	
	
	Left Join `Squad` t2 On t0.TeamId = t2.TeamId And (t2.StatusId = 1 Or t2.StatusId = 3 )
	Left Join `Squad` t3 On t0.TeamId = t3.TeamId And (t3.StatusId = 4)
	Where t0.FirebaseId = pFirebaseId And t0.StatusId = 1    
    Order By IF(IFNULL(t2.`StatusId`, 0) = 1, 1, 2) Asc, IFNULL(t2.`Week`, 0) Desc
    Limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetUserByGoogleId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetUserByGoogleId`(IN pGoogleId VARCHAR(1000))
BEGIN
	Select 
		t0.`UserId`,
		IFNULL(t0.`Name`, '') `Name`,
		IFNULL(t0.`Surname`, '') `Surname`,
		IFNULL(t0.`FacebookId`, '') `FacebookId`,
		IFNULL(t0.`GoogleId`, '') `GoogleId`,
		IFNULL(t0.`FirebaseId`, '') `FirebaseId`,
		t0.`TypeId`,
		t0.`GroupId`,
		IFNULL(t0.`GsmNo`, '') `GsmNo`,
		IFNULL(t0.`Email`, '') `Email`,
		IFNULL(t0.`Password`, '') `Password`,
		IFNULL(t0.`VerificationCode`, '') `VerificationCode`,
		t0.`StatusId`,
		
		
        0 `UserDeviceId`,
        IFNULL(t0.DeviceToken, '') `DeviceToken`,        
        
        
        IFNULL(t0.TeamId, 0) `TeamId`, 
        IFNULL(t0.`TeamName`, '') `TeamName`,
        IFNULL(t2.SquadId, 0) `SquadId`, 
        IFNULL(t2.TacticsId, 0) `TacticsId`, 
        IFNULL(t2.Budget, 0) `Budget`,
        IFNULL(t2.`Week`, 0) `Week`,
        IFNULL(t3.SquadId, 0) `NextSquadId`
	From `User` t0
	
	
	Left Join `Squad` t2 On t0.TeamId = t2.TeamId And (t2.StatusId = 1 Or t2.StatusId = 3 )
	Left Join `Squad` t3 On t0.TeamId = t3.TeamId And (t3.StatusId = 4)
	Where t0.GoogleId = pGoogleId And t0.StatusId = 1    
    Order By IF(IFNULL(t2.`StatusId`, 0) = 1, 1, 2) Asc, IFNULL(t2.`Week`, 0) Desc
    Limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetUserById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetUserById`(IN pUserId int)
BEGIN
	Select 
		t0.`UserId`,
		IFNULL(t0.`Name`, '') `Name`,
		IFNULL(t0.`Surname`, '') `Surname`,
		IFNULL(t0.`FacebookId`, '') `FacebookId`,
		IFNULL(t0.`GoogleId`, '') `GoogleId`,
		IFNULL(t0.`FirebaseId`, '') `FirebaseId`,
		IFNULL(t0.`GsmNo`, '') `GsmNo`,
		IFNULL(t0.`Email`, '') `Email`,
		IFNULL(t0.`GenderId`, 0) `GenderId`,
		t0.`BirthDate`,
		IFNULL(t0.`CityCode`, '') `CityCode`,
		IFNULL(t0.`CountryCode`, '') `CountryCode`,
		IFNULL(t1.`Name`, '') `City`, 
        IFNULL(t2.`Name`, '') `Country`,
        IFNULL(t3.TeamId, 0) `TeamId`, 
        IFNULL(t3.`Name`, '') `TeamName`, 
        IFNULL(t4.SquadId, 0) `SquadId`, 
        IFNULL(t4.TacticsId, 0) `TacticsId`, 
        IFNULL(t4.Budget, 0) `Budget`,
        IFNULL(t4.`Week`, 0) `Week`
	From `User` t0
	Left Join City t1 On t0.CityCode = t1.`Code` And t1.StatusId = 1
	Left Join Country t2 On t0.CountryCode = t2.`Code` And t2.StatusId = 1
	Left Join `Team` t3 On t0.UserId = t3.UserId And t3.TypeId = 2 And t3.StatusId = 1
	Left Join `Squad` t4 On t3.TeamId = t4.TeamId And (t4.StatusId = 1 Or t4.StatusId = 3 )
    Where t0.UserId = pUserId And t0.StatusId = 1
    Order By IF(IFNULL(t4.`StatusId`, 0) = 1, 1, 2) Asc, IFNULL(t4.`Week`, 0) Desc
    Limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetUserTeamById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spGetUserTeamById`(IN pUserId INT)
BEGIN

	Select 
		t0.UserId, 
        t0.StatusId, 
        
        
        IFNULL(t0.TeamId, 0) `TeamId`, 
        IFNULL(t0.`TeamName`, '') `TeamName`, 
        IFNULL(t2.SquadId, 0) `SquadId`, 
        IFNULL(t2.TacticsId, 0) `TacticsId`, 
        IFNULL(t2.Budget, 0) `Budget`,
        IFNULL(t2.`Week`, 0) `Week`,
        IFNULL(t2.`Point`, 0) `Point`,
        IFNULL(t2.`StatusId`, 0) `SquadStatusId`
	From `User` t0
	
	Left Join `Squad` t2 On t0.TeamId = t2.TeamId And (t2.StatusId = 1 Or t2.StatusId = 3 )
	Where t0.UserId = pUserId    
    Order By IF(IFNULL(t2.`StatusId`, 0) = 1, 1, 2) Asc, IFNULL(t2.`Week`, 0) Desc
    Limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetFixtureCompleted` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetFixtureCompleted`(IN pFixtureId INT, IN pModifiedUserId INT)
BEGIN
	SET autocommit = 0;
    
    START TRANSACTION;
    
	Update Squad t0
	Inner Join Fixture t1 On t0.`Week` = t1.`Week`
	Set t0.StatusId = 3 , t0.ModifiedDate = now(), t0.ModifiedUserId = pModifiedUserId
	Where t0.StatusId = 1 And t1.FixtureId = pFixtureId;

	Update Fixture 
    Set StatusId = 4 , ModifiedDate = now(), ModifiedUserId = pModifiedUserId
	Where FixtureId = pFixtureId;
    
	Select MIN(FixtureId) Into @NextFixtureId From Fixture Where FixtureId > pFixtureId;
    Select StatusId Into @NextStatusId From Fixture Where FixtureId = @NextFixtureId;
    
    IF (@NextStatusId = 0) THEN
		Update Fixture 
		Set StatusId = 1 , ModifiedDate = now(), ModifiedUserId = pModifiedUserId
		Where FixtureId = @NextFixtureId;
    END IF;
    
	Update Squad t0
	Inner Join Fixture t1 On t0.`Week` = t1.`Week`
	Set t0.StatusId = 1 , t0.ModifiedDate = now(), t0.ModifiedUserId = pModifiedUserId
	Where t1.FixtureId = @NextFixtureId And t0.StatusId = 4 ;    
    
    COMMIT;
    
	SET autocommit = 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetFixtureStarted` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetFixtureStarted`(IN pFixtureId INT, IN pModifiedUserId INT)
BEGIN
	SET autocommit = 0;
    
    START TRANSACTION;
    
    Select `Week` Into @CurrentWeek From Fixture Where FixtureId = pFixtureId;
    
	Update Squad t0
	Inner Join Fixture t1 On t0.`Week` = t1.`Week`
	Set t0.StatusId = 3 , t0.ModifiedDate = now(), t0.ModifiedUserId = pModifiedUserId
	Where t1.FixtureId = pFixtureId And t0.StatusId = 1;
    
	CREATE TEMPORARY TABLE SquadBudget
	(INDEX idx_SquadBudget_SquadId USING BTREE (SquadId))
	Select 
		t0.SquadId,
		SUM(t2.Budget) `BudgetSpent`,
		Count(t2.SquadPlayerId) `PlayerCount`
	From Squad t0
	Inner Join Fixture t1 On t0.`Week` = t1.`Week`
	Inner Join SquadPlayer t2 On t0.SquadId = t2.SquadId And t2.StatusId = 1
	Where t1.FixtureId = pFixtureId And t0.StatusId = 1
	Group By t0.SquadId;

	Update Squad t0
	Inner Join SquadBudget t1 On t0.SquadId = t1.SquadId
	Set t0.`BudgetSpent` = t1.BudgetSpent, t0.BudgetRemaining = t0.Budget - t1.BudgetSpent, t0.PlayerCount = t1.`PlayerCount`, ModifiedDate = now(), ModifiedUserId = pModifiedUserId;
    
	Update Fixture 
    Set StatusId = 3 , ModifiedDate = now(), ModifiedUserId = pModifiedUserId
	Where FixtureId = pFixtureId;
    
	Select MIN(FixtureId) Into @NextFixtureId From Fixture Where FixtureId > pFixtureId;
    Select StatusId, `Week` Into @NextStatusId, @NextWeek From Fixture Where FixtureId = @NextFixtureId;
    
    CALL `spSetNextWeekSquad`(@CurrentWeek, @NextWeek);
    
    IF (@NextStatusId = 0) THEN
		Update Fixture 
		Set StatusId = 1 , ModifiedDate = now(), ModifiedUserId = pModifiedUserId
		Where FixtureId = @NextFixtureId;
    END IF;

	DROP TEMPORARY TABLE SquadBudget;
    
    COMMIT;
    
	SET autocommit = 1;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetMatchPlayerPointByRulePlayerMaxPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetMatchPlayerPointByRulePlayerMaxPoint`(IN pWeek INT, IN pLeagueId INT)
BEGIN
	
    SET autocommit = 0;
    
    START TRANSACTION;
    
	DROP TEMPORARY TABLE IF EXISTS MatchPlayerPointSum;
    
	CREATE TEMPORARY TABLE MatchPlayerPointSum
    (INDEX idx_MatchPlayerPointSum_PlayerId_Point USING BTREE (MatchId, TeamId, PlayerId, `Point`))
	SELECT SUM(t0.`Point`) `Point`, t0.PlayerId, t0.MatchId, t2.TeamId, t0.Captain, t0.PositionId, t0.`Position`
	FROM MatchPlayerPoint t0
    Inner Join `Match` t1 On t0.MatchId = t1.MatchId And CAST(t1.MatchDay As UNSIGNED) = pWeek And t1.LeagueId = pLeagueId
    Inner Join Player t2 On t0.PlayerId = t2.PlayerId
    Where t0.StatusId = 1 And t0.RuleId Not In (18, 21, 22)
	Group By t0.PlayerId, t0.MatchId, t2.TeamId, t0.Captain, t0.PositionId, t0.`Position`;
		
	Select MAX(`Point`) Into @MaxPoint From MatchPlayerPointSum;

	INSERT INTO `MatchPlayerPoint`
	(
    `MatchId`,
	`TeamId`,
	`PlayerId`,	
	`Captain`,
	`PositionId`,
    `Position`,
	`RuleId`,
	`Point`,
    `Week`,
	`CreatedUserId`,
	`CreatedDate`,
	`StatusId`)
	Select 
		t2.MatchId,
        t2.TeamId,
        t1.PlayerId,
        t2.Captain,
        t2.PositionId,
        t2.`Position`,
		18,
		2,
        pWeek,
		0,
		now(),
		1
	From Squad t0
	Inner Join SquadPlayer t1 On t0.SquadId = t1.SquadId And t1.StatusId = 1
	Inner Join MatchPlayerPointSum t2 On t1.PlayerId = t2.PlayerId And t2.`Point` = @MaxPoint
    Left Join MatchPlayerPoint t3 On t3.MatchId = t2.MatchId And t3.TeamId = t2.TeamId And t3.PlayerId = t2.PlayerId And t3.RuleId = 18 And t3.StatusId = 1
	Where (t0.StatusId = 1 Or t0.StatusId = 3 ) 
    And (t0.PlayerCount = 15)
    And (t0.`Week` = pWeek)
    And (t3.MatchPlayerPointId IS NULL)
    Group By t2.MatchId, t2.TeamId, t1.PlayerId, t2.Captain, t2.PositionId, t2.`Position`;

    COMMIT;
    
    START TRANSACTION;
    
	Update MatchPlayerPoint t0 
    Inner Join `Match` t2 On t0.MatchId = t2.MatchId
	Left Join MatchPlayerPointSum t1 On t0.MatchId = t1.MatchId And t0.TeamId = t1.TeamId And t0.PlayerId = t1.PlayerId And t1.`Point` = @MaxPoint
    Set t0.StatusId = 2, t0.ModifiedDate = now()
	Where (t0.StatusId = 1 ) 
	And CAST(t2.MatchDay As UNSIGNED) = pWeek
	And t0.RuleId = 18
    And t1.PlayerId IS NULL; 

    COMMIT;
    
    START TRANSACTION;
    
    Update MatchPlayer t0
    Inner Join (
		Select t0.MatchPlayerId, t0.MatchId, t0.PlayerId, SUM(t2.`Point`) `Point`     
		From MatchPlayer t0    
		Inner Join `Match` t1 On t0.MatchId = t1.MatchId And t1.MatchDay = pWeek
		Inner Join MatchPlayerPoint t2 On t0.PlayerId = t2.PlayerId And t1.MatchId = t2.MatchId And t2.StatusId = 1
		Where t0.StatusId = 1
		Group By t0.MatchPlayerId, t0.MatchId, t0.PlayerId
    ) t1 On t0.MatchPlayerId = t1.MatchPlayerId
    Set t0.`Point` = t1.`Point`;
    
	DROP TEMPORARY TABLE MatchPlayerPointSum;
    
    COMMIT;
    
	SET autocommit = 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetNextWeekSquad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetNextWeekSquad`(IN pWeek INT, IN pNextWeek INT)
BEGIN

	INSERT INTO `Squad`
	(
	`TeamId`,
	`TacticsId`,
	`Week`,
	`Budget`,
	`BudgetSpent`,
	`BudgetRemaining`,
	`Point`,
	`Points`,
	`Ranking`,
	`TimePlayed`,
	`PlayerCount`,
	`ReferenceSquadId`,
	`CreatedUserId`,
	`CreatedDate`,
	`StatusId`)
	Select 
	t0.`TeamId`,
	t0.`TacticsId`,
	pNextWeek,
	t0.`Budget`,
	t0.`BudgetSpent`,
	t0.`BudgetRemaining`,
	0,
	0,
	0,
	0,
	t0.`PlayerCount`,
	t0.`SquadId`,
	2000000005,
	now(),
	4
	From Squad t0 
	Left Join Squad t1 On t0.TeamId = t1.TeamId And t1.Week = pNextWeek And (t1.StatusId = 1 Or t1.StatusId = 4)
	Where t0.Week = pWeek And t0.StatusId = 3
	And t1.SquadId IS NULL;    
    
	INSERT INTO `SquadPlayer`
	(
	`TeamId`,
	`SquadId`,
	`PlayerId`,
	`PositionId`,
	`Inline`,
	`IsCaptain`,
	`IsSecondCaptain`,
	`TypeId`,
	`Budget`,
	`Point`,
	`Points`,
	`Week`,
	`ReferenceSquadId`,
	`ReferenceSquadPlayerId`,
	`CreatedUserId`,
	`CreatedDate`,
	`StatusId`)
	Select 
	t1.TeamId,
	t3.SquadId,
	t1.PlayerId,
	t1.PositionId,
	t1.Inline,
	t1.IsCaptain,
	t1.IsSecondCaptain,
	t1.TypeId,
	IFNULL(t2.Price, t1.Budget),
	0,
	0,
	pNextWeek,
	t0.SquadId,
	t1.SquadPlayerId,
	2000000005,
	now(),
	1
	From Squad t0 
	Inner Join Squad t3 On t0.SquadId = t3.ReferenceSquadId
	Inner Join SquadPlayer t1 On t0.SquadId = t1.SquadId And t1.StatusId = 1
	Left Join Player t2 On t1.PlayerId = t2.PlayerId And t2.StatusId = 1
	Where t0.Week = pWeek And t0.StatusId = 3;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetPlayerPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetPlayerPoint`(IN pWeek INT, IN pLeagueId INT)
BEGIN
    SET autocommit = 0;
    
    START TRANSACTION;
    
	DROP TEMPORARY TABLE IF EXISTS PlayerPointByWeek;

	CREATE TEMPORARY TABLE PlayerPointByWeek
    (INDEX idx_PlayerPointByWeek_PlayerId_Week_LeagueId USING BTREE (PlayerId, `Week`, LeagueId))
	SELECT t1.LeagueId, t0.PlayerId, t0.OptaId, CAST(t1.MatchDay As UNSIGNED) `Week`, SUM(IFNULL(t2.`Point`, 0)) `Point` 
	FROM MatchPlayer t0
    Inner Join MatchPlayerPoint t2 On t0.MatchId = t2.MatchId And t0.PlayerId = t2.PlayerId And t2.StatusId = 1
	Inner Join `Match` t1 On t0.MatchId = t1.MatchId And t1.LeagueId = pLeagueId And CAST(t1.MatchDay As UNSIGNED) = pWeek
    Where t0.StatusId = 1
	Group By t0.PlayerId, t1.LeagueId, t1.MatchDay, t0.OptaId;
    
	INSERT INTO `PlayerPoint`
	(`LeagueId`,
	`Week`,
	`PlayerId`,
    `OptaId`,
	`Point`,
	`CreatedUserId`,
	`CreatedDate`,
	`StatusId`)    
    Select t0.LeagueId, t0.`Week`, t0.PlayerId, t0.`OptaId`, t0.`Point`, 2000000004, now(), 1 
    From PlayerPointByWeek t0
    Left Join PlayerPoint t1 On t0.LeagueId = t1.LeagueId And t0.`OptaId` = t1.`OptaId` And t0.`Week` = t1.`Week` And t1.StatusId = 1
    Where t1.PlayerPointId IS NULL;
    
    Update PlayerPoint t0
    Inner Join PlayerPointByWeek t1 On t0.LeagueId = t1.LeagueId And t0.`OptaId` = t1.`OptaId` And t0.`Week` = t1.`Week`
    Set t0.`Point` = t1.`Point`, t0.ModifiedDate = now(), t0.ModifiedUserId = 2000000004
    Where t0.StatusId = 1 
    And t0.LeagueId = pLeagueId
    And t0.`Week` = pWeek        
    And (t0.`Point` != t1.`Point`);
    
	Update PlayerPoint t0
    Left Join PlayerPointByWeek t1 On t0.LeagueId = t1.LeagueId And t0.`OptaId` = t1.`OptaId` And t0.`Week` = t1.`Week`
    Set t0.StatusId = 2, t0.ModifiedDate = now(), t0.ModifiedUserId = 2000000004
    Where t0.StatusId = 1 
    And t0.LeagueId = pLeagueId
    And t0.`Week` = pWeek    
    And t1.PlayerId IS NULL;    
    
    DROP TEMPORARY TABLE IF EXISTS PlayerPointByWeek;
    
	COMMIT;
    
	SET autocommit = 1; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetPlayerSelectionRate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetPlayerSelectionRate`(IN pWeek INT, IN pLeagueId INT)
BEGIN
    SET autocommit = 0;
    
    START TRANSACTION;
    
	DROP TEMPORARY TABLE IF EXISTS PlayerSelectionRateByWeek;

	CREATE TEMPORARY TABLE PlayerSelectionRateByWeek
    (INDEX idx_PlayerSelectionRateByWeek_PlayerId_Week_LeagueId USING BTREE (PlayerId, `Week`, LeagueId))
	SELECT t1.LeagueId, t0.`Week`, IFNULL(t2.PlayerId, 0) `PlayerId`, CEILING(IFNULL(Count(1) / (SELECT Count(1) `Count` FROM `Squad` t0, `LeagueTeam` t1 Where t0.TeamId = t1.TeamId And t1.StatusId = 1 And t1.LeagueId = pLeagueId And t0.`Week` = pWeek And (t0.StatusId = 1 Or t0.StatusId = 3)) * 100, 0)) `SelectionRate` 
	FROM `Squad` t0
	Inner Join `LeagueTeam` t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1 And t1.LeagueId = pLeagueId
	Inner Join `SquadPlayer` t2 On t0.SquadId = t2.SquadId And t2.StatusId = 1
	Where t0.`Week` = pWeek And (t0.StatusId = 1 Or t0.StatusId = 3)
	Group By t0.`Week`, t2.PlayerId;
    
	INSERT INTO `PlayerSelectionRate`
	(`LeagueId`,
	`Week`,
	`PlayerId`,
	`SelectionRate`,
	`CreatedUserId`,
	`CreatedDate`,
	`StatusId`)    
    Select t0.LeagueId, t0.`Week`, t0.PlayerId, t0.`SelectionRate`, 2000000003, now(), 1 
    From PlayerSelectionRateByWeek t0
    Left Join PlayerSelectionRate t1 On t0.LeagueId = t1.LeagueId And t0.PlayerId = t1.PlayerId And t0.`Week` = t1.`Week` And t1.StatusId = 1
    Where t1.PlayerSelectionRateId IS NULL;
    
    Update PlayerSelectionRate t0
    Inner Join PlayerSelectionRateByWeek t1 On t0.LeagueId = t1.LeagueId And t0.PlayerId = t1.PlayerId And t0.`Week` = t1.`Week`
    Set t0.`SelectionRate` = t1.`SelectionRate`, t0.ModifiedDate = now(), t0.ModifiedUserId = 2000000003
    Where t0.StatusId = 1 
    And t0.LeagueId = pLeagueId
    And t0.`Week` = pWeek    
    And (t0.`SelectionRate` != t1.`SelectionRate`);
    
	Update PlayerSelectionRate t0
    Left Join PlayerSelectionRateByWeek t1 On t0.LeagueId = t1.LeagueId And t0.PlayerId = t1.PlayerId And t0.`Week` = t1.`Week`
    Set t0.StatusId = 2, t0.ModifiedDate = now(), t0.ModifiedUserId = 2000000003
    Where t0.StatusId = 1 
    And t0.LeagueId = pLeagueId
    And t0.`Week` = pWeek
    And t1.PlayerId IS NULL;    
    
    DROP TEMPORARY TABLE IF EXISTS PlayerSelectionRateByWeek;
    
	COMMIT;
    
	SET autocommit = 1; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSquadArchive` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetSquadArchive`(IN pWeek INT)
BEGIN

    SET autocommit = 0;
    
    START TRANSACTION;
    
	INSERT INTO `SquadArchive`
	(
	`SquadId`,
	`TeamId`,
	`TacticsId`,
	`Week`,
	`Budget`,
	`BudgetSpent`,
	`BudgetRemaining`,
	`Point`,
	`Points`,
	`Ranking`,
	`TimePlayed`,
	`PlayerCount`,
    `ReferenceSquadId`,
	`CreatedUserId`,
	`CreatedDate`,
	`ModifiedUserId`,
	`ModifiedDate`,
	`StatusId`,
    `UpdatedDate`)
	Select
		SquadId,
		TeamId,
		TacticsId,
		`Week`,
		Budget,
		BudgetSpent,
		BudgetRemaining,
		Point,
		Points,
		Ranking,
		TimePlayed,
		PlayerCount,
        ReferenceSquadId,
		CreatedUserId,
		CreatedDate,
		ModifiedUserId,
		ModifiedDate,
		StatusId,
        `UpdatedDate`
	From Squad Where `Week` = pWeek;
    
	COMMIT;
    
	SET autocommit = 1;     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSquadPlayerArchive` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetSquadPlayerArchive`(IN pWeek INT)
BEGIN

    SET autocommit = 0;
    
    START TRANSACTION;
    
	INSERT INTO `SquadPlayerArchive`
	(
	`SquadPlayerId`,
	`SquadId`,
	`PlayerId`,
	`PositionId`,
	`Inline`,
	`IsCaptain`,
	`IsSecondCaptain`,
	`TypeId`,
	`Budget`,
	`Point`,
	`Points`,
	`Week`,
    `ReferenceSquadId`,
    `ReferenceSquadPlayerId`,
	`CreatedUserId`,
	`CreatedDate`,
	`ModifiedUserId`,
	`ModifiedDate`,
	`StatusId`)
	Select 
		SquadPlayerId,
		SquadId,
		PlayerId,
		PositionId,
		Inline,
		IsCaptain,
		IsSecondCaptain,
		TypeId,
		Budget,
		Point,
		Points,
		`Week`,
        ReferenceSquadId,
        ReferenceSquadPlayerId,
		CreatedUserId,
		CreatedDate,
		ModifiedUserId,
		ModifiedDate,
		StatusId
	From SquadPlayer Where `Week` = pWeek;
    
	COMMIT;
    
	SET autocommit = 1;     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSquadPlayerPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetSquadPlayerPoint`(IN pWeek INT, IN pMatchId INT, IN pModifiedUserId INT)
BEGIN

	
	SET autocommit = 0;
    
    START TRANSACTION;
	
    SET group_concat_max_len = 18446744073709551615;
    
	DROP TEMPORARY TABLE IF EXISTS TempSquad;
    
    CREATE TEMPORARY TABLE TempSquad
    (INDEX idx_TempSquad_SquadId USING BTREE (`SquadId`))
    Select t0.SquadId, t0.`Week`, t0.TeamId From Squad t0 Where (t0.`Week` = pWeek) And (t0.PlayerCount = 15) And t0.StatusId In (1 , 3 );
    
	DROP TEMPORARY TABLE IF EXISTS SquadPlayerTemp;
    
	CREATE TEMPORARY TABLE SquadPlayerTemp
    (INDEX idx_SquadPlayerTemp_SquadId_PlayerId USING BTREE (`SquadId`, `PlayerId`, `Week`, `TeamId`))
    Select 
        t0.`Week`,
        t0.TeamId,
		t1.SquadId,
		t1.PlayerId, 
		t1.PositionId, 
		t1.IsCaptain, 
		t1.IsSecondCaptain, 
		t1.TypeId
	From TempSquad t0
	Inner Join SquadPlayer t1 On t0.SquadId = t1.SquadId And t1.StatusId = 1;	
    
    DROP TEMPORARY TABLE IF EXISTS SquadPlayerPointTemp;
    DROP TEMPORARY TABLE IF EXISTS TempSquad;
    
	CREATE TEMPORARY TABLE SquadPlayerPointTemp
    (INDEX idx_SquadPlayerPointTemp_SquadId_MatchId_TeamId_PlayerId_RuleId USING BTREE (`SquadId`, `MatchId`, `TeamId`, `PlayerId`, `RuleId`, `IsCaptain`))	    
	Select SquadPlayerPointId, SquadId, MatchId, TeamId, PlayerId, RuleId, IsCaptain 
    From SquadPlayerPoint 
    Where MatchId = pMatchId 
    And StatusId = 1;
    
    DROP TEMPORARY TABLE IF EXISTS MatchPlayerPointTemp;
    
    CREATE TEMPORARY TABLE MatchPlayerPointTemp
    (INDEX idx_MatchPlayerPointTemp_Point_MatchId_TeamId_PlayerId_RuleId USING BTREE (`Point`, `MatchId`, `TeamId`, `PlayerId`, `RuleId`))	    
    Select PlayerId, `MatchId`, RuleId, `Point`, TeamId From MatchPlayerPoint t3 Where (`MatchId` = pMatchId) And (StatusId = 1) And (RuleId Not In (18, 21, 22));
    
    SET @queryString = (Select 
		CONCAT('INSERT INTO `SquadPlayerPoint` (`Week`, `SquadId`, `MatchId`, `TeamId`, `PlayerId`, `PositionId`, `IsCaptain`, `IsSecondCaptain`, `TypeId`, `RuleId`, `Point`) VALUES ', GROUP_CONCAT(CONCAT('(', t0.`Week`, ', ', t0.SquadId, ', ', t0.MatchId, ', ', t0.TeamId, ', ', t0.PlayerId, ', ', t0.PositionId, ', ', t0.IsCaptain, ', ', t0.IsSecondCaptain, ', ', t0.TypeId, ', ', t0.RuleId, ', ', t0.`Point`, ')') SEPARATOR ', '))    
        From (
		Select 
			t0.`Week`,
			t0.SquadId,
			t3.MatchId,
			t3.TeamId,            
			t0.PlayerId, 
			t0.PositionId, 
			t0.IsCaptain, 
			t0.IsSecondCaptain, 
			t0.TypeId,
			t3.RuleId, 
			t3.`Point`
		From SquadPlayerTemp t0
		
        Inner Join MatchPlayerPointTemp t3 On t0.PlayerId = t3.PlayerId
		Left Join SquadPlayerPointTemp t4 On t0.SquadId = t4.SquadId And t3.MatchId = t4.MatchId And t3.TeamId = t4.TeamId And t0.PlayerId = t4.PlayerId And t3.RuleId = t4.RuleId 
		Where t4.SquadPlayerPointId IS NULL) t0);
		
	DROP TEMPORARY TABLE IF EXISTS MatchPlayerPointTemp;
	DROP TEMPORARY TABLE IF EXISTS SquadPlayerPointTemp;
	DROP TEMPORARY TABLE IF EXISTS SquadPlayerTemp;    
	
    Select IFNULL(@queryString, '') `Insert_SquadPlayerPoint`;
    
    IF IFNULL(@queryString, '') != '' THEN
		PREPARE stmt FROM @queryString;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;        
    END IF;
    
    COMMIT;
    
    START TRANSACTION;
	
    
    DROP TEMPORARY TABLE IF EXISTS TempSquadPlayerPoint;
    DROP TEMPORARY TABLE IF EXISTS TempMatchPlayerPoint;
    DROP TEMPORARY TABLE IF EXISTS TempSquadPlayerPointUpdate;
    
    CREATE TEMPORARY TABLE TempSquadPlayerPoint
    Select SquadPlayerPointId, MatchId, PlayerId, RuleId, Point From SquadPlayerPoint Where MatchId = pMatchId And RuleId Not In (18, 21, 22) And StatusId = 1;
    
    CREATE TEMPORARY TABLE TempMatchPlayerPoint
    Select PlayerId, Point, RuleId From MatchPlayerPoint Where MatchId = pMatchId And StatusId = 1;
    
    CREATE TEMPORARY TABLE TempSquadPlayerPointUpdate
    Select t0.SquadPlayerPointId, t0.MatchId, t0.PlayerId, t0.RuleId, t1.Point From TempSquadPlayerPoint t0, TempMatchPlayerPoint t1 Where t0.PlayerId = t1.PlayerId And t0.RuleId = t1.RuleId And t0.Point != t1.Point;
    
    Update SquadPlayerPoint t0
    Inner Join TempSquadPlayerPointUpdate t1 On t0.SquadPlayerPointId = t1.SquadPlayerPointId
    Set t0.Point = t1.Point, t0.ModifiedDate = now();
    
    DROP TEMPORARY TABLE IF EXISTS TempSquadPlayerPoint;
    DROP TEMPORARY TABLE IF EXISTS TempMatchPlayerPoint;
    DROP TEMPORARY TABLE IF EXISTS TempSquadPlayerPointUpdate;    

    COMMIT;
    
    START TRANSACTION;
    
	Update SquadPlayerPoint t0
    Inner Join MatchPlayerPoint t1 On t0.MatchId = t1.MatchId And t0.PlayerId = t1.PlayerId And t0.RuleId = t1.RuleId And t1.StatusId = 2
    Set t0.StatusId = 2, t0.ModifiedDate = now()
    Where t0.MatchId = pMatchId
    And t0.RuleId Not In (18, 21, 22) 
    And t0.StatusId = 1;
    
    COMMIT;
    
	SET autocommit = 1;
	
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSquadPlayerPointArchive` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetSquadPlayerPointArchive`(IN pWeek INT)
BEGIN

    SET autocommit = 0;
    
    START TRANSACTION;
    
	INSERT INTO `SquadPlayerPointArchive`
	(
	`SquadPlayerPointId`,
	`Week`,
	`SquadId`,
	`MatchId`,
	`TeamId`,
	`PlayerId`,
	`PositionId`,
	`IsCaptain`,
	`IsSecondCaptain`,
	`TypeId`,
	`RuleId`,
	`Point`,
	`CreatedUserId`,
	`CreatedDate`,
	`ModifiedUserId`,
	`ModifiedDate`,
	`StatusId`)
	SELECT 
		`SquadPlayerPointId`,
		`Week`,
		`SquadId`,
		`MatchId`,
		`TeamId`,
		`PlayerId`,
		`PositionId`,
		`IsCaptain`,
		`IsSecondCaptain`,
		`TypeId`,
		`RuleId`,
		`Point`,
		`CreatedUserId`,
		`CreatedDate`,
		`ModifiedUserId`,
		`ModifiedDate`,
		`StatusId`
	FROM `SquadPlayerPoint` Where `Week` = pWeek;
    
	COMMIT;
    
	SET autocommit = 1;     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSquadPlayerPointByRulePlayerMaxPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetSquadPlayerPointByRulePlayerMaxPoint`(IN pWeek INT, IN pLeagueId INT)
BEGIN

    SET autocommit = 0;
    
    START TRANSACTION;
    
	DROP TEMPORARY TABLE IF EXISTS TempMatchPlayerPointSum;
    
	CREATE TEMPORARY TABLE TempMatchPlayerPointSum
    (INDEX idx_SquadPlayerPointSum_MatchId_TeamId_PlayerId_Point USING BTREE (MatchId, TeamId, PlayerId, `Point`))
	SELECT SUM(t0.`Point`) `Point`, t0.PlayerId, t0.MatchId, t2.TeamId, t0.Captain, t0.PositionId, t0.`Position`
	FROM MatchPlayerPoint t0
    Inner Join `Match` t1 On t0.MatchId = t1.MatchId And CAST(t1.MatchDay As UNSIGNED) = pWeek And t1.LeagueId = pLeagueId
    Inner Join Player t2 On t0.PlayerId = t2.PlayerId
    Where t0.StatusId = 1 And t0.RuleId Not In (18, 21, 22)
	Group By t0.PlayerId, t0.MatchId, t2.TeamId, t0.Captain, t0.PositionId, t0.`Position`;
		
	Select MAX(`Point`) Into @MaxPoint From TempMatchPlayerPointSum;

	SET group_concat_max_len = 18446744073709551615;
    
	SET @queryString = (
		Select 
		CONCAT('INSERT INTO `SquadPlayerPoint` (`Week`, `SquadId`, `MatchId`, `TeamId`, `PlayerId`, `PositionId`, `IsCaptain`, `IsSecondCaptain`, `TypeId`, `RuleId`, `Point`) VALUES ', GROUP_CONCAT(CONCAT('(', t0.`Week`, ', ', t0.SquadId, ', ', t0.MatchId, ', ', t0.TeamId, ', ', t0.PlayerId, ', ', t0.PositionId, ', ', t0.IsCaptain, ', ', t0.IsSecondCaptain, ', ', t0.TypeId, ', ', t0.RuleId, ', ', t0.`Point`, ')') SEPARATOR ', '))    
        From (
			Select 
				t0.`Week`,
				t0.SquadId,		
				t2.MatchId,
				t2.TeamId,
				t1.PlayerId,
				t1.PositionId,
				t1.IsCaptain,
				t1.IsSecondCaptain,
				t1.TypeId,
				18 `RuleId`,
				2 `Point`
			From Squad t0
			Inner Join SquadPlayer t1 On t0.SquadId = t1.SquadId And t1.StatusId = 1
			Inner Join TempMatchPlayerPointSum t2 On t1.PlayerId = t2.PlayerId And t2.`Point` = @MaxPoint
			Left Join SquadPlayerPoint t3 On t0.`Week` = t3.`Week` And t0.SquadId = t3.SquadId And t2.MatchId = t3.MatchId And t2.TeamId = t3.TeamId And t1.PlayerId = t3.PlayerId And t3.RuleId = 18 And t3.StatusId = 1
			Where (t0.StatusId = 1 Or t0.StatusId = 3 ) 
			And (t0.PlayerCount = 15)
			And (t0.`Week` = pWeek)
			And t3.SquadPlayerPointId IS NULL
		) t0);

    Select IFNULL(@queryString, '');
    IF @queryString != '' THEN
		PREPARE stmt FROM @queryString;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;        
    END IF;
    
    COMMIT;
    
    START TRANSACTION;    
    
	Update SquadPlayerPoint t0    
	Left Join TempMatchPlayerPointSum t1 On t0.MatchId = t1.MatchId And t0.TeamId = t1.TeamId And t0.PlayerId = t1.PlayerId And t1.`Point` = @MaxPoint
    Set t0.StatusId = 2, t0.ModifiedDate = now()
	Where (t0.StatusId = 1 ) 
	And t0.`Week` = pWeek
	And t0.RuleId = 18
    And t1.PlayerId IS NULL;    
    
	DROP TEMPORARY TABLE TempMatchPlayerPointSum;
    
    COMMIT;
    
    START TRANSACTION;
    
	Update SquadPlayer t0
    Inner Join (
		Select 
			t.`SquadId`, 
			t.`Week`, 
			t.PlayerId,
			IF(t.TypeId = 1, (IF(t.IsCaptain = 1, 2, 1) * t.`Point`), CEILING(t.`Point` / 2)) `Point`,
			IF(t.TypeId = 1, (IF(t.IsCaptain = 1, 2, 1) * t.`Point`), ROUND(t.`Point` / 2, 2)) `Points`
		From (
			Select 
				t1.`SquadId`,
				t1.`Week`,
				SUM(t1.`Point`) `Point`,
				t1.PlayerId,
				t1.TypeId,
				t1.IsCaptain
			From SquadPlayerPoint t1
			Where (t1.`Week` = pWeek)
			And (t1.StatusId = 1)
			Group By t1.`SquadId`, t1.PlayerId, t1.`Week`, t1.TypeId, t1.IsCaptain
		) t
    ) t1 On t0.SquadId = t1.SquadId And t0.PlayerId = t1.PlayerId And (t0.`Point` != t1.`Point` Or t0.`Points` != t1.`Points`)
    Set t0.`Point` = t1.`Point`, t0.`Points` = t1.`Points`, t0.ModifiedDate = now();

    COMMIT;
    
    START TRANSACTION;
    
	Update Squad t0
	Inner Join (Select SquadId, SUM(`Point`) `Point`, SUM(`Points`) `Points` From SquadPoint Where StatusId = 1 Group By SquadId) t1 On t0.SquadId = t1.SquadId
	Set t0.`Point` = t1.`Point`, t0.`Points` = t1.`Points`, t0.ModifiedDate = now()
    Where (t0.`Week` = pWeek)
    And (t0.PlayerCount = 15)
	And (t0.`Point` != t1.`Point` Or t0.`Points` != t1.`Points`);
    
    COMMIT;
    
	SET autocommit = 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSquadPoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetSquadPoint`(IN pWeek INT)
BEGIN

	
    SET autocommit = 0;
    
    START TRANSACTION;
    
	DROP TEMPORARY TABLE IF EXISTS SquadPlayerPointSum;
    
	CREATE TEMPORARY TABLE SquadPlayerPointSum
    (INDEX idx_SquadPlayerPointSum_SquadId_Week USING BTREE (`SquadId`, `Week`))	
    Select 
		t.`SquadId`, 
        t.`Week`, 
        SUM(IF(t.TypeId = 1, (IF(t.IsCaptain = 1, 2, 1) * t.`Point`), CEILING(t.`Point` / 2))) `Point`,
        SUM(IF(t.TypeId = 1, (IF(t.IsCaptain = 1, 2, 1) * t.`Point`), ROUND(t.`Point` / 2, 2))) `Points`
	From (
		Select 
			t1.`SquadId`,
			t1.`Week`,
			SUM(t1.`Point`) `Point`,
			t1.TypeId,
			t1.IsCaptain
		From SquadPlayerPoint t1 
		Where (t1.`Week` = pWeek) And (t1.StatusId = 1)
		Group By t1.`SquadId`, t1.`Week`, t1.TypeId, t1.IsCaptain
    ) t
    Group By t.`SquadId`, t.`Week`;

	INSERT INTO `SquadPoint`
	(
	`SquadId`,
	`TeamId`,
	`Week`,
	`RuleId`,
	`Point`,
    `Points`,
	`CreatedUserId`,
	`CreatedDate`,
	`StatusId`)    
    Select 
		t0.`SquadId`, 
        t2.`TeamId`, 
        t0.`Week`, 
        0,        
        IFNULL(t0.`Point`, 0) `Point`,
        IFNULL(t0.`Points`, 0) `Points`,
        0, 
        now(), 
        1
    From SquadPlayerPointSum t0
    Inner Join Squad t2 On t0.`SquadId` = t2.`SquadId`
    Left Join SquadPoint t1 On t0.SquadId = t1.SquadId And t0.`Week` = t1.`Week` And t1.StatusId = 1 And t1.RuleId = 0
    Where t1.SquadPointId IS NULL;
    
    COMMIT;
    
    START TRANSACTION;
    
    Update SquadPoint t0
    Inner Join SquadPlayerPointSum t1 On t0.SquadId = t1.SquadId And t0.`Week` = t1.`Week`
    Set t0.`Point` = t1.`Point`, t0.`Points` = t1.`Points`, t0.ModifiedDate = now()
    Where (t0.StatusId = 1) And (t0.RuleId = 0);
    
	COMMIT;
    
    START TRANSACTION;
    
	Update Squad t0
	Inner Join (Select SquadId, SUM(`Point`) `Point`, SUM(`Points`) `Points` From SquadPoint Where (`Week` = pWeek) And (StatusId = 1) Group By SquadId) t1 On t0.SquadId = t1.SquadId
	Set t0.`Point` = t1.`Point`, t0.`Points` = t1.`Points`, t0.ModifiedDate = now()
	Where (t0.PlayerCount = 15)
    And (t0.`Week` = pWeek)
	And (t0.`Point` != t1.`Point` Or t0.`Points` != t1.`Points`);
    
    DROP TEMPORARY TABLE IF EXISTS SquadPlayerPointSum;
    
    COMMIT;
    
	SET autocommit = 1;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSquadPointByRuleFairPlay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetSquadPointByRuleFairPlay`(IN pWeek INT, IN pLeagueId INT)
BEGIN
    SET autocommit = 0;
    
    START TRANSACTION;
    
	DROP TEMPORARY TABLE IF EXISTS TempMatchBookingNone;
    
	CREATE TEMPORARY TABLE TempMatchBookingNone
    (INDEX idx_TempMatchBookingNone_SquadId USING BTREE (SquadId))
	Select * From (
		Select 
			t0.SquadId, t0.PlayerCount, SUM(IF(t2.PlayerId IS NULL, 1, 0)) `Count`
		From Squad t0
		Inner Join SquadPlayer t1 On t0.SquadId = t1.SquadId And t1.StatusId = 1
		Left Join 
		(
			SELECT 
				t0.PlayerId 
			FROM Player t0
			Inner Join MatchBooking t1 On t0.PlayerId = t1.PlayerId And t1.StatusId = 1
			Inner Join `Match` t2 On t1.MatchId = t2.MatchId And t2.LeagueId = pLeagueId And CAST(t2.MatchDay As UNSIGNED) = pWeek
			Group By t0.PlayerId
		) t2 On t1.PlayerId = t2.PlayerId
		Where (t0.PlayerCount = 15) 
		And (t0.`Week` = pWeek)
		Group By t0.SquadId, t0.PlayerCount ) t
	Where t.PlayerCount = t.`Count`;
		
	INSERT INTO `SquadPoint`
	(
	`SquadId`,
	`TeamId`,
	`Week`,
	`RuleId`,
	`Point`,
    `Points`,
	`CreatedUserId`,
	`CreatedDate`,
	`StatusId`)
	Select 
		t0.SquadId,
		t0.TeamId,
		t0.`Week`,
		21,
		3,
        3,
		0,
		now(),
		1
	From Squad t0
	Inner Join TempMatchBookingNone t1 On t0.SquadId = t1.SquadId
    Left Join SquadPoint t2 On t0.SquadId = t2.SquadId And t0.TeamId = t2.TeamId And t0.`Week` = t2.`Week` And t2.RuleId = 21 And t2.StatusId = 1
	Where (t0.StatusId = 1 Or t0.StatusId = 3 ) 
    And t0.PlayerCount = 15 
    And t0.`Week` = pWeek
    And t2.SquadPointId IS NULL;
    
    COMMIT;

	DROP TEMPORARY TABLE TempMatchBookingNone;
    
    START TRANSACTION;

	Update Squad t0
	Inner Join (Select SquadId, SUM(`Point`) `Point`, SUM(`Points`) `Points` From SquadPoint Where StatusId = 1 Group By SquadId) t1 On t0.SquadId = t1.SquadId
	Set t0.`Point` = t1.`Point`, t0.`Points` = t1.`Points`, t0.ModifiedDate = now()
    Where t0.`Week` = pWeek
    And t0.PlayerCount = 15
	And (t0.`Point` != t1.`Point` Or t0.`Points` != t1.`Points`);
    
    COMMIT;
    
	SET autocommit = 1;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSquadPointByRuleWeeklyUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetSquadPointByRuleWeeklyUpdate`(IN pWeek INT, IN pLeagueId INT)
BEGIN
    SET autocommit = 0;
    
    START TRANSACTION;
    
	INSERT INTO `SquadPoint`
	(
	`SquadId`,
	`TeamId`,
	`Week`,
	`RuleId`,
	`Point`,
    `Points`,
	`CreatedUserId`,
	`CreatedDate`,
	`StatusId`)   
	Select 
		t0.SquadId, 
		t0.TeamId, 
		t0.`Week`, 
		22 `RuleId`, 
		Case When t0.UpdatedDate IS NULL Then 2 Else 10 End `Point`, 
        Case When t0.UpdatedDate IS NULL Then 2 Else 10 End `Points`, 
		2000000006 `CreatedUserId`, 
		now(), 
		1 `StatusId`
	From Squad t0
    Left Join SquadPoint t3 On t0.SquadId = t3.SquadId And t0.TeamId = t3.TeamId And t0.`Week` = t3.`Week` And t3.RuleId = 22 And t3.StatusId = 1
	Where t0.`Week` = pWeek And t0.PlayerCount = 15 And t0.StatusId In (1, 3)
	And t3.SquadPointId IS NULL;    
    
	COMMIT;
    
    START TRANSACTION;
    
	Update Squad t0
	Inner Join (Select SquadId, SUM(`Point`) `Point`, SUM(`Points`) `Points` From SquadPoint Where `Week` = pWeek And StatusId = 1 Group By SquadId) t1 On t0.SquadId = t1.SquadId
	Set t0.`Point` = t1.`Point`, t0.`Points` = t1.`Points`, t0.ModifiedDate = now()
    Where t0.`Week` = pWeek
    And t0.PlayerCount = 15
	And (t0.`Point` != t1.`Point` Or t0.`Points` != t1.`Points`);
    
    COMMIT;
    
	SET autocommit = 1;     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSquadRanking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetSquadRanking`(IN pLeagueId INT, IN pWeek INT)
BEGIN

	DROP TEMPORARY TABLE IF EXISTS TempSquadRanking;
    
    SET autocommit = 0;
	SET @row_number = 0;
    
    CREATE TEMPORARY TABLE TempSquadRanking
    (INDEX idx_TempSquadRanking_SquadId USING BTREE (SquadId))
    Select t.TeamId, t.SquadId, t.`BudgetSpent`, t.`BudgetRemaining`, t.`Ranking`, t.`Point`, t.`Points`, t.TimePlayed From (
		Select tt.*, (@row_number := @row_number + 1) AS `Ranking` 
        From (
			Select t0.TeamId, t3.SquadId, t3.PlayerCount, t0.UserId, t3.`Point`, t3.`Points`, IFNULL(t3.`BudgetSpent`, 0) `BudgetSpent`, IFNULL(t3.`BudgetRemaining`, 0) `BudgetRemaining`, t3.TimePlayed
			From (Select TeamId, UserId From Team Where (TypeId = 2) And (StatusId = 1)) t0
			Inner Join Squad t3 On t0.TeamId = t3.TeamId And (t3.`Week` = pWeek) And (t3.StatusId = 1 Or t3.StatusId = 3)
		) tt
        Order By tt.`Point` Desc, tt.PlayerCount Desc, tt.BudgetRemaining Desc, tt.TimePlayed Desc
    ) t
	Order By t.Ranking;
    
	START TRANSACTION;
        
    Update Squad t0
    Inner Join TempSquadRanking t1 On t0.SquadId = t1.SquadId    
    Set t0.Ranking = t1.Ranking, ModifiedDate = now();
    
    DROP TEMPORARY TABLE TempSquadRanking;
    
    COMMIT;
    
	SET autocommit = 1;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSquadRankingTimePlayed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetSquadRankingTimePlayed`(IN pLeagueId INT, IN pWeek INT)
BEGIN

	DROP TEMPORARY TABLE IF EXISTS TempSquadRanking;

    SET autocommit = 0;
    
	SET @row_number = 0;
    
    CREATE TEMPORARY TABLE TempSquadRanking
    (INDEX idx_TempSquadRanking_SquadId USING BTREE (SquadId))
    Select t.TeamId, t.SquadId, t.`BudgetSpent`, t.`BudgetRemaining`, t.`TimePlayed`, t.`Ranking`, t.`Point`, t.`Points` From (
		Select tt.*, (@row_number := @row_number + 1) AS `Ranking` 
        From (
			Select t0.TeamId, t3.SquadId, t3.PlayerCount, t0.UserId, t1.LeagueId, t3.`Point`, t3.`Points`, IFNULL(t3.`BudgetSpent`, 0) `BudgetSpent`, IFNULL(t3.`BudgetRemaining`, 0) `BudgetRemaining`, IFNULL(t4.`TimePlayed`, 0) `TimePlayed`
			From Team t0
			Inner Join LeagueTeam t1 On t0.TeamId = t1.TeamId And t1.StatusId = 1 And t1.LeagueId = pLeagueId
			Inner Join Squad t3 On t0.TeamId = t3.TeamId And (t3.`Week` = pWeek) And (t3.StatusId = 1 Or t3.StatusId = 3)
            Left Join (
				Select SUM(`t2`.`TimePlayed`) AS `TimePlayed`, t0.SquadId
				From (
					Select SquadId, PlayerId, `Week` From SquadPlayer Where `Week` = pWeek And StatusId = 1
				) t0
				Inner Join (
					Select CAST(`t0`.`Value` AS UNSIGNED) AS `TimePlayed`, CAST(`t1`.`MatchDay` AS UNSIGNED) `Week`, t0.PlayerId
					From MatchPlayerStatistic t0
					Inner Join `Match` t1 On t0.MatchId = t1.MatchId And CAST(`t1`.`MatchDay` AS UNSIGNED) = pWeek
					Where t0.`Key` = 'mins_played' And t0.StatusId = 1	
				) t2 On t2.PlayerId = t0.PlayerId
				Group By t0.SquadId
			) t4 On t3.SquadId = t4.SquadId
			Where t0.StatusId = 1
		) tt
        Order By tt.`Point` Desc, tt.PlayerCount Desc, tt.BudgetRemaining Desc, tt.`TimePlayed` Desc
    ) t
	Order By t.Ranking;
    
	START TRANSACTION;
        
    Update Squad t0
    Inner Join TempSquadRanking t1 On t0.SquadId = t1.SquadId    
    Set t0.Ranking = t1.Ranking, t0.TimePlayed = t1.`TimePlayed`, ModifiedDate = now();
    
    
    DROP TEMPORARY TABLE TempSquadRanking;
    
    COMMIT;
    
	SET autocommit = 1;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetTeamRanking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetTeamRanking`()
BEGIN
	DROP TEMPORARY TABLE IF EXISTS TempTeamRanking;
    SET @row_number = 0;
	CREATE TEMPORARY TABLE TempTeamRanking  
    (INDEX idx_TempTeamRanking USING BTREE (`TeamId`, `LeagueId`))	
    Select * From (
		Select tt.*, (@row_number := @row_number + 1) AS Ranking From (
			Select 
				t0.TeamId, IFNULL(t1.`Name`, '') `Name`, IFNULL(t1.ShortName, t0.`Name`) `ShortName`, IFNULL(t1.Colour1, '') `Colour1`, IFNULL(t1.Colour2, '') `Colour2`, IFNULL(t1.Pattern, '') `Pattern`, IFNULL(t1.TacticsId, 0) `TacticsId`, t0.UserId, t0.LeagueId, 0 `Position`, SUM(t0.`Point`) `Point`, SUM(t0.`Points`) `Points`, SUM(t0.Budget) `Budget`, SUM(t0.BudgetSpent) `BudgetSpent`, SUM(t0.BudgetRemaining) `BudgetRemaining`, SUM(t0.TimePlayed) `TimePlayed`, SUM(t0.PlayerCount) `PlayerCount` 
			From TeamRankingWeekly t0
            Inner Join Team t1 On t0.TeamId = t1.TeamId
            Where t0.`Week` > 3
			Group By t0.TeamId, t1.`Name`, t1.ShortName, t1.Colour1, t1.Colour2, t1.Pattern, t1.TacticsId, t0.UserId, t0.LeagueId            
		) tt
		Order By tt.`Point` Desc, tt.`PlayerCount` Desc, tt.`BudgetRemaining` Desc, tt.`TimePlayed` Desc
	) t
	Order By t.Ranking;
    
	SET autocommit = 0;

    START TRANSACTION;
    
	INSERT INTO `TeamRanking`
	(
	`LeagueId`,
	`UserId`,
	`TeamId`,
	`Name`,
	`ShortName`,
	`Colour1`,
	`Colour2`,
	`Pattern`,
	`TacticsId`,
	`Budget`,
	`BudgetSpent`,
	`BudgetRemaining`,
	`Point`,
	`Points`,
	`TimePlayed`,
	`PlayerCount`,
	`Ranking`,
	`CreatedDate`,
	`StatusId`)    
	Select 
		t0.`LeagueId`,
		t0.`UserId`,
		t0.`TeamId`,
		t0.`Name`,
		t0.`ShortName`,
		t0.`Colour1`,
		t0.`Colour2`,
		t0.`Pattern`,
		t0.`TacticsId`,
		t0.`Budget`,
		t0.`BudgetSpent`,
		t0.`BudgetRemaining`,
		t0.`Point`,
		t0.`Points`,
		t0.`TimePlayed`,
		t0.`PlayerCount`,
		t0.`Ranking`,
        now(),
        1
    From TempTeamRanking t0
    Left Join TeamRanking t1 On t0.TeamId = t1.TeamId And t0.LeagueId = t1.LeagueId And t1.StatusId = 1
    Where t1.TeamRankingId IS NULL;    
    
    COMMIT;

    START TRANSACTION;
    
    Update TeamRanking t0
    Inner Join TempTeamRanking t1 On t0.TeamId = t1.TeamId And t0.LeagueId = t1.LeagueId
    Set t0.`Ranking` = t1.`Ranking`, t0.`Point` = t1.`Point`, t0.`Points` = t1.`Points`, t0.`Budget` = t1.`Budget`, t0.`BudgetSpent` = t1.`BudgetSpent`, t0.`BudgetRemaining` = t1.`BudgetRemaining`, t0.`TimePlayed` = t1.`TimePlayed`, t0.ModifiedDate = now()
    Where t0.StatusId = 1 
    And ((t0.`Point` != t1.`Point`) Or (t0.`BudgetSpent` != t1.`BudgetSpent`) Or (t0.`Ranking` != t1.`Ranking`) Or (t0.`TimePlayed` != t1.`TimePlayed`));
    
    COMMIT;    

	SET autocommit = 1; 
    
    DROP TEMPORARY TABLE IF EXISTS TempTeamRanking;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetTeamRankingMonthly` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetTeamRankingMonthly`(IN pVirtualLeagueId INT, IN pActualLeagueId INT, IN pMonth INT)
BEGIN
	DROP TEMPORARY TABLE IF EXISTS TempTeamRankingMonthly;
    
    SET @row_number = 0;
    
	CREATE TEMPORARY TABLE TempTeamRankingMonthly
    (INDEX idx_TempTeamRankingMonthly USING BTREE (`TeamId`, `LeagueId`, `Month`))	
	Select * From (
		Select tt.*, (@row_number := @row_number + 1) AS Ranking From (			
			Select 
				t0.TeamId, IFNULL(t1.`Name`, '') `Name`, IFNULL(t1.ShortName, t0.`Name`) `ShortName`, IFNULL(t1.Colour1, '') `Colour1`, IFNULL(t1.Colour2, '') `Colour2`, IFNULL(t1.Pattern, '') `Pattern`, IFNULL(t1.TacticsId, 0) `TacticsId`, t0.UserId, t0.LeagueId, 0 `Position`, SUM(t0.`Point`) `Point`, SUM(t0.`Points`) `Points`, SUM(t0.Budget) `Budget`, SUM(t0.BudgetSpent) `BudgetSpent`, SUM(t0.BudgetRemaining) `BudgetRemaining`, SUM(t0.TimePlayed) `TimePlayed`, SUM(t0.PlayerCount) `PlayerCount`, pMonth `Month`
			From TeamRankingWeekly t0
            Inner Join Team t1 On t0.TeamId = t1.TeamId
            Where t0.`Week` In (Select `Week` From Fixture Where `Month` = pMonth And LeagueId = 1 And StatusId In (1, 3, 4))
			Group By t0.TeamId, t1.`Name`, t1.ShortName, t1.Colour1, t1.Colour2, t1.Pattern, t1.TacticsId, t0.UserId, t0.LeagueId        
		) tt
		Order By tt.`Point` Desc, tt.`PlayerCount` Desc, tt.`BudgetRemaining` Desc, tt.`TimePlayed` Desc
	) t;    
    
	SET autocommit = 0;
    
    START TRANSACTION;
    
	INSERT INTO `TeamRankingMonthly`
	(
	`LeagueId`,
	`UserId`,
	`TeamId`,
	`Month`,
	`Name`,
	`ShortName`,
	`Colour1`,
	`Colour2`,
	`Pattern`,
	`TacticsId`,
	`Budget`,
	`BudgetSpent`,
	`BudgetRemaining`,
	`Point`,
	`Points`,
	`TimePlayed`,
	`PlayerCount`,
	`Ranking`,
	`CreatedDate`,
	`StatusId`)    
	Select 
		t0.`LeagueId`,
		t0.`UserId`,
		t0.`TeamId`,
		t0.`Month`,
		t0.`Name`,
		t0.`ShortName`,
		t0.`Colour1`,
		t0.`Colour2`,
		t0.`Pattern`,
		t0.`TacticsId`,
		t0.`Budget`,
		t0.`BudgetSpent`,
		t0.`BudgetRemaining`,
		t0.`Point`,
		t0.`Points`,
		t0.`TimePlayed`,
		t0.`PlayerCount`,
		t0.`Ranking`,
        now(),
        1
    From TempTeamRankingMonthly t0
    Left Join TeamRankingMonthly t1 On t0.TeamId = t1.TeamId And t0.LeagueId = t1.LeagueId And t0.`Month` = t1.`Month` And t1.StatusId = 1
    Where t1.TeamRankingMonthlyId IS NULL;    
    
    COMMIT;
    
    START TRANSACTION;
    
    Update TeamRankingMonthly t0
    Inner Join TempTeamRankingMonthly t1 On t0.TeamId = t1.TeamId And t0.`Month` = t1.`Month` And t0.LeagueId = t1.LeagueId
    Set t0.`Ranking` = t1.`Ranking`, t0.`Point` = t1.`Point`, t0.`Points` = t1.`Points`, t0.`Budget` = t1.`Budget`, t0.`BudgetSpent` = t1.`BudgetSpent`, t0.`BudgetRemaining` = t1.`BudgetRemaining`, t0.`TimePlayed` = t1.`TimePlayed`, t0.ModifiedDate = now()
    Where t0.StatusId = 1 
    And (t0.`Month` = pMonth)
    And ((t0.`Point` != t1.`Point`) Or (t0.`BudgetSpent` != t1.`BudgetSpent`) Or (t0.`Ranking` != t1.`Ranking`) Or (t0.`TimePlayed` != t1.`TimePlayed`));
    
    COMMIT;    
    
	SET autocommit = 1;    
    
    DROP TEMPORARY TABLE IF EXISTS TempTeamRankingMonthly;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetTeamRankingWeekly` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spSetTeamRankingWeekly`(IN pLeagueId INT, IN pWeek INT)
BEGIN
	DROP TEMPORARY TABLE IF EXISTS TempTeamRankingWeekly;
    
	CREATE TEMPORARY TABLE TempTeamRankingWeekly    
    (INDEX idx_TempTeamRankingWeekly USING BTREE (`TeamId`, `LeagueId`, `Week`))	
	Select t0.TeamId, t0.`Name`, IFNULL(t0.ShortName, t0.`Name`) `ShortName`, t0.Colour1, t0.Colour2, t0.Pattern, t0.TacticsId, t0.UserId, pLeagueId `LeagueId`, 0 `Position`, t3.`Point`, t3.`Points`, t3.Budget, t3.BudgetSpent, t3.BudgetRemaining, t3.TimePlayed, t3.PlayerCount, t3.Ranking, t3.`Week`
	From Team t0
	Inner Join (Select SquadId, TeamId, `Point`, `Points`, Budget, BudgetSpent, BudgetRemaining, TimePlayed, PlayerCount, Ranking, `Week` From Squad Where (`Week` = pWeek) And (StatusId = 1 Or StatusId = 3 ) And (PlayerCount = 15)) t3 On t0.TeamId = t3.TeamId
	Where (t0.StatusId = 1) And (t0.TypeId = 2)
	Order By t3.Ranking;
    
	SET autocommit = 0;
    
    START TRANSACTION;
    
	INSERT INTO `TeamRankingWeekly`
	(
	`LeagueId`,
	`UserId`,
	`TeamId`,
	`Week`,
	`Name`,
	`ShortName`,
	`Colour1`,
	`Colour2`,
	`Pattern`,
	`TacticsId`,
	`Budget`,
	`BudgetSpent`,
	`BudgetRemaining`,
	`Point`,
	`Points`,
	`TimePlayed`,
	`PlayerCount`,
	`Ranking`,
	`CreatedDate`,
	`StatusId`)    
	Select 
		t0.`LeagueId`,
		t0.`UserId`,
		t0.`TeamId`,
		t0.`Week`,
		t0.`Name`,
		t0.`ShortName`,
		t0.`Colour1`,
		t0.`Colour2`,
		t0.`Pattern`,
		t0.`TacticsId`,
		t0.`Budget`,
		t0.`BudgetSpent`,
		t0.`BudgetRemaining`,
		t0.`Point`,
		t0.`Points`,
		t0.`TimePlayed`,
		t0.`PlayerCount`,
		t0.`Ranking`,
        now(),
        1
    From TempTeamRankingWeekly t0
    Left Join TeamRankingWeekly t1 On t0.TeamId = t1.TeamId And t0.LeagueId = t1.LeagueId And t0.`Week` = t1.`Week` And t1.StatusId = 1
    Where t1.TeamRankingWeeklyId IS NULL;
    
    COMMIT;
    
    START TRANSACTION;
    
    Update TeamRankingWeekly t0
    Inner Join TempTeamRankingWeekly t1 On t0.TeamId = t1.TeamId And t0.`Week` = t1.`Week` And t0.LeagueId = t1.LeagueId
    Set t0.`Ranking` = t1.`Ranking`, t0.`Point` = t1.`Point`, t0.`Points` = t1.`Points`, t0.`Budget` = t1.`Budget`, t0.`BudgetSpent` = t1.`BudgetSpent`, t0.`BudgetRemaining` = t1.`BudgetRemaining`, t0.`TimePlayed` = t1.`TimePlayed`, t0.`TacticsId` = t1.`TacticsId`, t0.ModifiedDate = now()
    Where (t0.StatusId = 1)
    And (t0.`Week` = pWeek)
    And ((t0.`Point` != t1.`Point`) Or (t0.`BudgetSpent` != t1.`BudgetSpent`) Or (t0.`Ranking` != t1.`Ranking`) Or (t0.`TimePlayed` != t1.`TimePlayed`));
    
    COMMIT;
    
	SET autocommit = 1;    
    
    DROP TEMPORARY TABLE IF EXISTS TempTeamRankingWeekly;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spTruncateMatchStatistic` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spTruncateMatchStatistic`()
BEGIN
	Truncate Table FantasyFootballPassoLeague.MatchBooking;
	Truncate Table FantasyFootballPassoLeague.MatchGoal;
	Truncate Table FantasyFootballPassoLeague.MatchPlayer;
    Truncate Table FantasyFootballPassoLeague.MatchPlayerPoint;
	Truncate Table FantasyFootballPassoLeague.MatchPlayerStatistic;	
    Truncate Table FantasyFootballPassoLeague.MatchStatistic;	
    Truncate Table FantasyFootballPassoLeague.MatchSubstitution;	
    Truncate Table FantasyFootballPassoLeague.MatchTeamStatistic;
    Truncate Table FantasyFootballPassoLeague.SquadPlayerPoint;
    Truncate Table FantasyFootballPassoLeague.SquadPoint;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateCacheKeyStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateCacheKeyStatus`(IN pKey varchar(250))
BEGIN

	UPDATE `CacheKey`
	SET
	`ModifiedDate` = now(),
	`StatusId` = 2
	WHERE `Key` Like CONCAT('%', pKey, '%')
    And StatusId = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateCacheKeyStatusAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateCacheKeyStatusAll`()
BEGIN

	UPDATE `CacheKey`
	SET
	`ModifiedDate` = now(),
	`StatusId` = 2
	WHERE StatusId = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateMatchBookingStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateMatchBookingStatus`(IN pMatchId INt, IN pTeamId INT, IN pModifiedUserId INT)
BEGIN
	UPDATE `MatchBooking`
	SET
	`ModifiedUserId` = pModifiedUserId,
	`ModifiedDate` = now(),
	`StatusId` = 2
	WHERE (`MatchId` = pMatchId)
    And (`TeamId` = IF(pTeamId > 0, pTeamId, `TeamId`))
    And (StatusId = 1 );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateMatchGoalStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateMatchGoalStatus`(IN pMatchId INt, IN pTeamId INT, IN pModifiedUserId INT)
BEGIN
	UPDATE `MatchGoal`
	SET
	`ModifiedUserId` = pModifiedUserId,
	`ModifiedDate` = now(),
	`StatusId` = 2
	WHERE (`MatchId` = pMatchId)
    And (`TeamId` = IF(pTeamId > 0, pTeamId, `TeamId`))
    And (StatusId = 1 );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateMatchPlayerPointStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateMatchPlayerPointStatus`(IN pMatchId INt, IN pTeamId INT, IN pModifiedUserId INT)
BEGIN
	UPDATE `MatchPlayerPoint`
	SET
	`ModifiedUserId` = pModifiedUserId,
	`ModifiedDate` = now(),
	`StatusId` = 2
	WHERE (`MatchId` = pMatchId)
    And (`TeamId` = IF(pTeamId > 0, pTeamId, `TeamId`))
    And (StatusId = 1 );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateMatchPlayerStatisticStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateMatchPlayerStatisticStatus`(IN pMatchId INt, IN pTeamId INT, IN pModifiedUserId INT)
BEGIN
	UPDATE `MatchPlayerStatistic`
	SET
	`ModifiedUserId` = pModifiedUserId,
	`ModifiedDate` = now(),
	`StatusId` = 2
	WHERE (`MatchId` = pMatchId)
    And (`TeamId` = IF(pTeamId > 0, pTeamId, `TeamId`))
    And (StatusId = 1 );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateMatchPlayerStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateMatchPlayerStatus`(IN pMatchId INt, IN pTeamId INT, IN pModifiedUserId INT)
BEGIN
	UPDATE `MatchPlayer`
	SET
	`ModifiedUserId` = pModifiedUserId,
	`ModifiedDate` = now(),
	`StatusId` = 2
	WHERE (`MatchId` = pMatchId)
    And (`TeamId` = IF(pTeamId > 0, pTeamId, `TeamId`))
    And (StatusId = 1 );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateMatchStatistics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateMatchStatistics`(IN pMatchId INT, IN pModifiedUserId INT)
BEGIN
	Update MatchBooking Set StatusId = 2, ModifiedUserId = pModifiedUserId, ModifiedDate = now() Where MatchId = pMatchId And StatusId = 1;
	Update MatchGoal Set StatusId = 2, ModifiedUserId = pModifiedUserId, ModifiedDate = now() Where MatchId = pMatchId And StatusId = 1;
	Update MatchPlayer Set StatusId = 2, ModifiedUserId = pModifiedUserId, ModifiedDate = now() Where MatchId = pMatchId And StatusId = 1;
    Update MatchPlayerPoint Set StatusId = 2, ModifiedUserId = pModifiedUserId, ModifiedDate = now() Where MatchId = pMatchId And StatusId = 1;
	Update MatchPlayerStatistic Set StatusId = 2, ModifiedUserId = pModifiedUserId, ModifiedDate = now() Where MatchId = pMatchId And StatusId = 1;
    Update MatchStatistic Set StatusId = 2, ModifiedUserId = pModifiedUserId, ModifiedDate = now() Where MatchId = pMatchId And StatusId = 1;
    Update MatchSubstitution Set StatusId = 2, ModifiedUserId = pModifiedUserId, ModifiedDate = now() Where MatchId = pMatchId And StatusId = 1;
    Update MatchTeamStatistic Set StatusId = 2, ModifiedUserId = pModifiedUserId, ModifiedDate = now() Where MatchId = pMatchId And StatusId = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateMatchSubstitutionStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateMatchSubstitutionStatus`(IN pMatchId INt, IN pTeamId INT, IN pModifiedUserId INT)
BEGIN
	UPDATE `MatchSubstitution`
	SET
	`ModifiedUserId` = pModifiedUserId,
	`ModifiedDate` = now(),
	`StatusId` = 2
	WHERE (`MatchId` = pMatchId)
    And (`TeamId` = IF(pTeamId > 0, pTeamId, `TeamId`))
    And (StatusId = 1 );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateSquadPlayer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateSquadPlayer`(IN pWeek INT, IN pLeagueId INT)
BEGIN

	
    
	DROP TEMPORARY TABLE IF EXISTS SquadPlayerTemp;

	CREATE TEMPORARY TABLE SquadPlayerTemp    
    (INDEX idx_SquadPlayerTemp USING BTREE (`SquadId`, `PlayerId`, `Week`, `Point`, `Points`))	
	Select 
		t.`SquadId`, 
		t.`Week`, 
		t.PlayerId,
		IF(t.TypeId = 1, (IF(t.IsCaptain = 1, 2, 1) * t.`Point`), CEILING(t.`Point` / 2)) `Point`,
		IF(t.TypeId = 1, (IF(t.IsCaptain = 1, 2, 1) * t.`Point`), ROUND(t.`Point` / 2, 2)) `Points`
	From (
			Select 
				t1.`SquadId`,
				t1.`Week`,
				SUM(t1.`Point`) `Point`,
				t1.PlayerId,
				t1.TypeId,
				t1.IsCaptain
			From SquadPlayerPoint t1
			Where (t1.`Week` = pWeek) And (t1.StatusId = 1)
			Group By t1.`SquadId`, t1.PlayerId, t1.`Week`, t1.TypeId, t1.IsCaptain
	) t;
    
    SET autocommit = 0;
	START TRANSACTION;
    
	Update SquadPlayer t0
    Inner Join SquadPlayerTemp t1 On t0.SquadId = t1.SquadId And t0.PlayerId = t1.PlayerId And (t0.`Point` != t1.`Point` Or t0.`Points` != t1.`Points`)
    Set t0.`Point` = t1.`Point`, t0.`Points` = t1.`Points`, t0.ModifiedDate = now()
    Where (t0.`Week` = pWeek) And (t0.StatusId = 1);
    
	COMMIT;    
	SET autocommit = 1;
    
    DROP TEMPORARY TABLE IF EXISTS SquadPlayerTemp;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateSquadPlayer2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateSquadPlayer2`()
BEGIN

	DECLARE _Row INT;
    DECLARE _RowCount INT;
    DECLARE _SquadPlayerId INT;
    DECLARE _Point INT;
    DECLARE _Points DECIMAL(10, 2);
	DECLARE _Query VARCHAR(255);

    DROP TEMPORARY TABLE IF EXISTS SquadPlayerTemp;

	CREATE TEMPORARY TABLE SquadPlayerTemp
    Select t0.SquadPlayerId, t1.`Point`, t1.`Points`, ROW_NUMBER() OVER (ORDER BY t0.SquadPlayerId Desc) RowNumber
	From SquadPlayer t0
	Inner Join (
		Select 
			t.`SquadId`, 
			t.`Week`, 
			t.PlayerId,
			IF(t.TypeId = 1, (IF(t.IsCaptain = 1, 2, 1) * t.`Point`), CEILING(t.`Point` / 2)) `Point`,
			IF(t.TypeId = 1, (IF(t.IsCaptain = 1, 2, 1) * t.`Point`), ROUND(t.`Point` / 2, 2)) `Points`
		From (
				Select 
					t1.`SquadId`,
					t1.`Week`,
					SUM(t1.`Point`) `Point`,
					t1.PlayerId,
					t1.TypeId,
					t1.IsCaptain
				From SquadPlayerPoint t1
				Where t1.`Week` = 15 And t1.StatusId = 1
				Group By t1.`SquadId`, t1.PlayerId, t1.`Week`, t1.TypeId, t1.IsCaptain
		) t
	) t1 On t0.SquadId = t1.SquadId And t0.PlayerId = t1.PlayerId
	Where t0.`Week` = 15 And t0.StatusId = 1;
    
	SET _RowCount = (Select Count(1) From SquadPlayerTemp);
	SET _Row = 1;
    SET _Query = '';
    
  	SET autocommit = 0;
    
    START TRANSACTION;  
    		
    loop_label:  LOOP
        IF  _Row > _RowCount THEN 
            LEAVE  loop_label;
        END  IF;
        
        Update SquadPlayer t1
        Inner Join SquadPlayerTemp t0 On t1.SquadPlayerId = t0.SquadPlayerId
        Set t1.Point = t0.Point, t1.Points = t0.Points, t1.ModifiedDate = now()
        Where t0.RowNumber = _Row;
        
        
        
        
        
        SET _Row = _Row + 1;
    END LOOP;
    
    COMMIT;
    
	SET autocommit = 1;

	DROP TEMPORARY TABLE IF EXISTS SquadPlayerTemp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateSquadPlayerCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateSquadPlayerCount`()
BEGIN
	Update Squad t0
	Inner Join vwSquadPlayerCount t1 On t0.SquadId = t1.SquadId
	Set t0.PlayerCount = t1.SquadPlayerCount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateUserDeviceToken` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateUserDeviceToken`(IN pUserId INT, IN pDeviceToken VARCHAR(300), IN pModifiedUserId INT)
BEGIN
	UPDATE `User`
	SET
		`DeviceToken` = pDeviceToken,
		`ModifiedUserId` = pModifiedUserId,
		`ModifiedDate` = now()
	WHERE `UserId` = pUserId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdateUserTeam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`PassoLig`@`%` PROCEDURE `spUpdateUserTeam`(IN pUserId INT, IN pTeamId INT, IN pTeamName VARCHAR(100), IN pModifiedUserId INT)
BEGIN
	UPDATE `User`
	SET
		`TeamId` = pTeamId,
		`TeamName` = pTeamName,
		`ModifiedUserId` = pModifiedUserId,
		`ModifiedDate` = now()
	WHERE `UserId` = pUserId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-09 11:58:54
