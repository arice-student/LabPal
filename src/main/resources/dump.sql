-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: labpal
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `name` varchar(70) NOT NULL,
                          PRIMARY KEY (`id`),
                          UNIQUE KEY `method_client_fk` (`name`),
                          UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (23,'3M ESPE Dental Products'),(8,'A-S Medication Solutions LLC'),(10,'Actavis Elizabeth LLC'),(6,'ALK-Abello, Inc.'),(14,'Amerisource Bergen'),(4,'Apotheca Company'),(22,'Cardinal Health'),(19,'Carilion Materials Management'),(2,'Creation\'s Garden Natural Products, Inc'),(11,'Direct Rx'),(9,'Dr.Reddy\'s Laboratories Limited'),(17,'Glenmark Generics Inc., USA'),(24,'Henry Schein, Inc.'),(1,'HyVee Inc'),(25,'International Nature Nutraceuticals, Inc.'),(21,'KMART CORPORATION'),(3,'Midlothian Laboratories'),(5,'Nelco Laboratories, Inc.'),(18,'PD-Rx Pharmaceuticals, Inc.'),(15,'Publix Super Markets Inc'),(16,'Sanum Kehlbeck GmbH & Co. KG'),(7,'Virtus Pharmaceuticals LLC'),(12,'West-ward Pharmaceutical Corp'),(20,'ZymoGenetics, Inc.');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_form`
--

DROP TABLE IF EXISTS `contact_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_form` (
                                `id` int NOT NULL AUTO_INCREMENT,
                                `email` varchar(45) NOT NULL,
                                `message` varchar(1000) NOT NULL,
                                `date` date NOT NULL,
                                PRIMARY KEY (`id`),
                                UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_form`
--

LOCK TABLES `contact_form` WRITE;
/*!40000 ALTER TABLE `contact_form` DISABLE KEYS */;
INSERT INTO `contact_form` VALUES (1,'ccromar0@webmd.com','Centralized user-facing process improvement','2020-09-03'),(2,'tcoburn1@europa.eu','Cross-group leading edge capacity','2021-03-05'),(3,'mtoogood2@whitehouse.gov','Ergonomic 5th generation methodology','2020-10-22'),(4,'efonte3@omniture.com','Grass-roots asymmetric capability','2021-02-27'),(5,'fbohlin4@unicef.org','Down-sized actuating Graphical User Interface','2021-01-02'),(6,'ksalzburger5@buzzfeed.com','Open-architected client-driven Graphic Interface','2021-04-30'),(7,'kvobes6@mac.com','Grass-roots transitional implementation','2020-09-25'),(8,'alatour7@blinklist.com','Programmable web-enabled policy','2020-10-05'),(9,'omitrikhin8@xinhuanet.com','Profit-focused bifurcated service-desk','2020-05-25'),(10,'ldominighi9@kickstarter.com','Adaptive scalable moderator','2020-10-15'),(11,'kferreiroa@npr.org','Business-focused executive adapter','2020-05-20'),(12,'ltebbuttb@blinklist.com','Reverse-engineered didactic hardware','2020-11-27'),(13,'syakovlevc@slate.com','Realigned zero tolerance pricing structure','2021-05-07'),(14,'gpaueld@odnoklassniki.ru','Stand-alone interactive data-warehouse','2020-12-03'),(15,'sfearne@wix.com','Team-oriented national project','2020-07-18'),(16,'sespyf@google.com','Networked didactic moratorium','2020-09-28'),(17,'mdobeyg@github.com','Focused non-volatile contingency','2021-03-27'),(18,'bpatchetth@printfriendly.com','Customizable uniform local area network','2021-02-17'),(19,'wsandeveri@twitpic.com','Customizable attitude-oriented structure','2020-07-07'),(20,'dcassleyj@wired.com','Profit-focused client-driven firmware','2021-03-14'),(21,'sstablesk@posterous.com','Secured local monitoring','2020-08-09'),(22,'rdellarl@uol.com.br','Sharable client-driven local area network','2020-06-07'),(23,'rmckevinm@taobao.com','Focused coherent algorithm','2020-12-16'),(24,'abodimeaden@spotify.com','Re-contextualized regional customer loyalty','2021-01-12'),(25,'abaldeno@rambler.ru','Seamless 4th generation methodology','2021-03-08');
/*!40000 ALTER TABLE `contact_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `method`
--

DROP TABLE IF EXISTS `method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `method` (
                          `id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
                          `version` int(2) unsigned zerofill NOT NULL,
                          `title` varchar(45) NOT NULL,
                          `client` varchar(45) NOT NULL,
                          `status` varchar(45) NOT NULL,
                          `effective_date` date DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `method`
--

LOCK TABLES `method` WRITE;
/*!40000 ALTER TABLE `method` DISABLE KEYS */;
INSERT INTO `method` VALUES (0001,02,'Method A','Publix Super Markets Inc','Draft','2021-04-05'),(0002,01,'Method B','KMART CORPORATION','In-Progress','2020-12-22'),(0005,01,'Method E','3M ESPE Dental Products','In-Progress','2020-08-13'),(0007,00,'Method G','Nelco Laboratories, Inc.','Active','2020-08-02'),(0009,00,'Method I','Sanum Kehlbeck GmbH & Co. KG','Draft','2021-04-28'),(0011,02,'Method K','A-S Medication Solutions LLC','Active','2020-09-13'),(0012,05,'Method L','ALK-Abello, Inc.','In-Progress','2020-10-13'),(0013,07,'Method M','A-S Medication Solutions LLC','Draft','2021-03-03'),(0014,00,'Method N','ALK-Abello, Inc.','In-Progress','2021-03-03'),(0015,01,'Method O','Amerisource Bergen','In-Progress','2020-07-27'),(0016,00,'Method P','ZymoGenetics, Inc.','Active','2020-09-03'),(0021,01,'Method U','HyVee Inc','Draft','2020-06-18'),(0022,10,'Method V','HyVee Inc','Draft','2021-04-01'),(0023,00,'Method W','Midlothian Laboratories','Draft','2020-12-28'),(0024,01,'Method X','Virtus Pharmaceuticals LLC','Draft','2021-01-22'),(0025,05,'Method Y','Virtus Pharmaceuticals LLC','Draft','2020-05-16');
/*!40000 ALTER TABLE `method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `client_name` varchar(45) DEFAULT NULL,
                           `start_date` date DEFAULT NULL,
                           `closure_date` date DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'PD-Rx Pharmaceuticals, Inc.','2020-10-11','2021-01-30'),(2,'Glenmark Generics Inc., USA','2020-11-16','2021-04-21'),(3,'A-S Medication Solutions LLC','2020-11-26','2021-01-19'),(4,'Cardinal Health','2020-03-03','2021-04-04'),(5,'Carilion Materials Management','2020-07-18','2021-01-18'),(6,'International Nature Nutraceuticals, Inc.','2020-04-15','2021-04-01'),(7,'HyVee Inc','2020-01-24','2021-04-28'),(8,'Cardinal Health','2020-01-19','2021-04-06'),(9,'Nelco Laboratories, Inc.','2020-01-04','2021-01-24'),(10,'PD-Rx Pharmaceuticals, Inc.','2020-06-10','2021-04-08'),(11,'West-ward Pharmaceutical Corp','2020-10-22','2021-03-20'),(12,'Creation\'s Garden Natural Products, Inc','2020-06-20','2021-04-15'),(13,'West-Ward Pharmaceutical Corp','2020-11-10','2021-03-08'),(14,'Henry Schein, Inc.','2020-08-13','2021-01-19'),(15,'Glenmark Generics Inc., USA','2020-02-01','2021-03-28'),(16,'Creation\'s Garden Natural Products, Inc','2020-02-25','2021-01-30'),(17,'KMART CORPORATION','2020-01-27','2021-04-03'),(18,'HyVee Inc','2020-11-13','2021-03-26'),(19,'Midlothian Laboratories','2020-08-28','2021-02-06'),(20,'West-Ward Pharmaceutical Corp','2020-04-05','2021-04-30'),(21,'West-ward Pharmaceutical Corp','2020-06-23','2021-03-06'),(22,'PD-Rx Pharmaceuticals, Inc.','2020-06-18','2021-04-07'),(23,'ALK-Abello, Inc.','2020-12-09','2021-04-29'),(24,'KMART CORPORATION','2020-12-17','2021-02-23'),(25,'3M ESPE Dental Products','2020-10-15','2021-01-16');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `role_name` varchar(25) NOT NULL,
                        `user_name` varchar(40) NOT NULL,
                        `user_id` int NOT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `role_id_uindex` (`id`),
                        KEY `role_user_user_id_fk` (`user_id`),
                        CONSTRAINT `role_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'guest','alevison0',1),(2,'user','skondrat1',2),(3,'guest','lkarlmann2',3),(4,'admin','ptrighton3',4),(5,'guest','lgrinaway4',5),(6,'user','bbacop5',6),(7,'user','thrihorovich6',7),(8,'user','wgrigoliis7',8),(9,'user','etrippitt8',9),(10,'user','nsackett9',10),(11,'user','phellewella',11),(12,'user','cfarrimondb',12),(13,'user','msavaryc',13),(14,'user','fbawdend',14),(15,'user','jmayhoe',15),(16,'user','pkennsleyf',16),(17,'user','cperilliog',17),(18,'user','lebsworthh',18),(19,'user','kjoinseyi',19),(20,'user','sethertonj',20),(21,'user','etilliardk',21),(22,'user','dokeenanl',22),(23,'user','smoremanm',23),(24,'user','cpovahn',24),(25,'user','skarolyo',25),(27,'admin','arice',50),(28,'user','user',51),(30,'user','test',54);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `name` varchar(45) DEFAULT NULL,
                          `container` varchar(45) DEFAULT NULL,
                          `temperature` varchar(45) DEFAULT NULL,
                          `lot` varchar(45) DEFAULT NULL,
                          `concentration` varchar(45) DEFAULT NULL,
                          `manufacture_date` date DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES (1,'Treatment Set TS348467','ampoule','30C','93-541-0939','USP','2019-03-26'),(2,'Verapamil Hydrochloride','bottle','30C','50-837-6175','1 mg/mL','2019-04-20'),(3,'glipizide','tub','-65C','97-184-1109','1 mg/mL','2019-10-22'),(6,'Promethazine Hydrochloride','foil pouch','25C','06-620-4388','USP','2019-01-29'),(7,'Citalopram','bag','Ambient','21-316-7231','TBD','2019-04-13'),(8,'Dicyclomine Hydrochloride','bag','5C','85-422-3390','USP','2019-05-17'),(9,'nicardipine hydrochloride','bag','30C','70-014-1857','TBD','2019-09-01'),(11,'ibuprofen','ampoule','30C','59-681-7511','TBD','2019-04-02'),(12,'clonidine hydrochloride','foil pouch','Ambient','46-095-0067','TBD','2019-09-27'),(13,'ACONITUM FEROX','bottle','-80C','86-895-0776','1 mg/mL','2019-06-25'),(14,'Meclizine HCl','bottle','30C','51-562-4664','99.9%','2019-06-26'),(15,'Acetaminophen and Codeine Phosphate','bottle','30C','35-421-9761','TBD','2019-09-08'),(16,'levalbuterol tartrate','ampoule','-65C','67-341-2908','99.9%','2019-07-28'),(17,'METOPROLOL SUCCINATE','bottle','25C','32-230-7697','10 mg/mL','2019-08-25'),(18,'Lithium Carbonate','bag','30C','86-049-8209','USP','2019-01-29'),(19,'Silver Maple','tub','30C','40-811-3104','TBD','2019-02-02'),(20,'carvedilol phosphate','ampoule','30C','42-864-1360','USP','2019-07-10'),(21,'BENZALKONIUM CHLORIDE','bag','25C','83-386-5850','10 mg/mL','2019-01-30'),(22,'temazepam','ampoule','25C','21-462-5164','USP','2019-09-13'),(23,'CAPSAICIN','foil pouch','-20C','73-628-6815','1 mg/mL','2019-05-13'),(24,'Sodium Fluoride','foil pouch','-65C','14-738-1677','1 mg/mL','2019-06-29');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `sample_id` int DEFAULT NULL,
                        `project_id` int DEFAULT NULL,
                        `test_description` varchar(45) DEFAULT NULL,
                        `method_id` int DEFAULT NULL,
                        `analyst` varchar(40) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (2,13,25,'Dissolution',25,'fbawdend'),(3,5,1,'DSC',8,'cfarrimondb'),(4,19,6,'DSC',14,'kjoinseyi'),(5,4,5,'Microbial Limits',13,'wgrigoliis7'),(6,25,6,'Microbial Limits',20,'cperilliog'),(7,16,18,'Titration',8,'dokeenanl'),(8,3,14,'UV-Vis',9,'sethertonj'),(9,19,5,'Dissolution',1,'lgrinaway4'),(10,5,9,'Appearance',2,'wgrigoliis7'),(11,24,4,'Bioburden',3,'fbawdend'),(12,22,21,'Dissolution',20,'lgrinaway4'),(13,23,15,'UPLC',23,'fbawdend'),(14,8,14,'Microbial Limits',3,'skarolyo'),(15,15,11,'Color',5,'dokeenanl'),(16,24,20,'KF',2,'fbawdend'),(17,7,14,'Assay/Deg',3,'etilliardk'),(18,18,1,'UPLC',18,'sethertonj'),(19,18,1,'KF',14,'pkennsleyf'),(20,23,12,'Assay/Deg',7,'cpovahn'),(21,24,3,'UV-Vis',4,'etilliardk'),(22,25,12,'Endotoxin',20,'dokeenanl'),(23,15,1,'Purity',23,'fbawdend'),(24,13,7,'TGA',14,'wgrigoliis7'),(25,22,5,'XRPD',6,'cperilliog'),(26,25,19,'TGA',6,'jmayhoe');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_description`
--

DROP TABLE IF EXISTS `test_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_description` (
                                    `id` int NOT NULL AUTO_INCREMENT,
                                    `test_name` varchar(45) NOT NULL,
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_description`
--

LOCK TABLES `test_description` WRITE;
/*!40000 ALTER TABLE `test_description` DISABLE KEYS */;
INSERT INTO `test_description` VALUES (1,'Appearance'),(2,'ID by RT'),(3,'FTIR'),(4,'KF'),(5,'Assay/Deg'),(6,'Dissolution'),(7,'TGA'),(8,'DSC'),(9,'Titration'),(10,'UPLC'),(11,'Purity'),(12,'Bioburden'),(13,'Microbial Limits'),(14,'Endotoxin'),(15,'UV-Vis'),(16,'XRPD'),(17,'SDS-PAGE'),(18,'Peptide Mapping'),(19,'Dissolution'),(20,'Color');
/*!40000 ALTER TABLE `test_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `first_name` varchar(25) DEFAULT NULL,
                        `last_name` varchar(30) DEFAULT NULL,
                        `user_name` varchar(40) NOT NULL,
                        `password` varchar(200) NOT NULL,
                        `date_of_birth` date DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `users_user_name_uindex` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Austine','Levison','alevison0','uOol6w7','2003-08-25'),(2,'Shelbi','Kondrat','skondrat1','4ZtfVH','1975-05-26'),(3,'Lemmie','Karlmann','lkarlmann2','rTvqzv','1939-06-10'),(4,'Purcell','Trighton','ptrighton3','FQg7VEcHWqoN','1984-05-11'),(5,'Lee','Grinaway','lgrinaway4','3BdeS6HOa','1932-11-02'),(6,'Bard','Bacop','bbacop5','xrCrFq','1964-01-27'),(7,'Tallie','Hrihorovich','thrihorovich6','nLiUwFiALhqo','1926-02-17'),(8,'Westleigh','Grigoliis','wgrigoliis7','WlLuWkxKOAw','1986-10-30'),(9,'Elena','Trippitt','etrippitt8','5TarIlOq84','1975-06-19'),(10,'Nolly','Sackett','nsackett9','SMkikSpP0','1941-12-24'),(11,'Pietrek','Hellewell','phellewella','bJtKu15duE','1946-01-29'),(12,'Carmine','Farrimond','cfarrimondb','ebEAMS2n','2001-03-02'),(13,'Michelle','Savary','msavaryc','kNqafCA','1999-10-01'),(14,'Filide','Bawden','fbawdend','eLiN41SX','1923-05-14'),(15,'Jaimie','Mayho','jmayhoe','S8om4v','1933-07-01'),(16,'Pearl','Kennsley','pkennsleyf','sPSUo0R','1928-01-25'),(17,'Crystal','Perillio','cperilliog','5sd3bCi8aHT','1971-03-06'),(18,'Lindsay','Ebsworth','lebsworthh','N8jiED0sfnBC','1937-07-31'),(19,'Kylie','Joinsey','kjoinseyi','YDQmlm2K','1987-10-26'),(20,'Shepherd','Etherton','sethertonj','7zf8KsN','1995-05-11'),(21,'Ellsworth','Tilliard','etilliardk','GcXZhfn5E84D','1956-12-07'),(22,'Domingo','O\'Keenan','dokeenanl','YG9MpYSbzq','1958-04-06'),(23,'Silvain','Moreman','smoremanm','INeKxAik','1982-04-16'),(24,'Cecily','Povah','cpovahn','44CXnJvLO','1965-03-05'),(25,'Sarina','Karoly','skarolyo','RczFfI2nBnpF','1988-06-20'),(50,'Anthony','Rice','arice','arice','1986-05-02'),(51,'User','Rice','user','user','2016-03-25'),(54,'test','test','test','password','2000-01-01');
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

-- Dump completed on 2021-05-09 22:42:50
