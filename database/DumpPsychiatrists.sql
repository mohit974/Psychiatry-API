CREATE DATABASE  IF NOT EXISTS `psychiatrists` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `psychiatrists`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: psychiatrists
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (4,'AIIMS - All India Institute Of Medical Science'),(1,'Apollo Hospitals'),(3,'Indira Gandhi Institute of Medical Sciences (IGIMS)'),(2,'Jawaharlal Nehru Medical College and Hospital');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` longblob,
  `psychiatrist_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `psychiatrist_id` (`psychiatrist_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`psychiatrist_id`) REFERENCES `psychiatrists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (9,'Neha Chaddha','A-1, Pashchim Vihar, Delhi','asha123@gmail.com','+91-12224567890','$2a$10$By4VWaeU5hZIhK06efYcP.hQV49PxAHq5mjvrcNGH0uVqxJTsxp1i',_binary 'uploads\\1716225243612-neha-chaddha.jpg',1),(10,'Amit Sharma','B-2, Connaught Place, Delhi','amitsharma@gmail.com','+91-9876543210','$2a$10$5jZR0OXh53hLaAXHmz.GP.dJfqgnq1iZROuCnJse5tIpZYHKsPQVW',_binary 'uploads\\1716226047461-amit-sharma.jpg',5),(11,'Pooja Patel','C-3, Malviya Nagar, Delhi','poojapatel@gmail.com','+91-8765432109','$2a$10$M1rT5hQ.yFGqdgaxutalmuc0oOJOqVuXfrIfyUizZy3VIAnNrfP/a',_binary 'uploads\\1716226123264-pooja-patel.jpg',8),(12,'Rajesh Kumar','D-4, Rohini, Delhi','rajeshkumar@gmail.com','+91-7654321098','$2a$10$J74zaWWrHKHpgLtg2wPF.ums4ckfvfYDS96I1cjtWZN66zCZXQv9q',_binary 'uploads\\1716226191834-rajesh.jpg',14),(13,'Anjali Gupta','E-5, Karol Bagh, Delhi','anjaligupta@gmail.com','+91-6543210987','$2a$10$JUsgSmqh0.o5tMefTNDUK.HaOBw9ste0dkV3fzV9WtUzP0oF6DaJ.',_binary 'uploads\\1716226296066-anjali.jpg',18),(14,'Suresh Menon','F-6, Saket, Delhi','sureshmenon@gmail.com','+91-9876543211','$2a$10$dRvDCFdheX326B0kcJUj4uHEvAERKCbcy2Wxg7a2ce.197lLZVA.i',_binary 'uploads\\1716226407202-suresh.jpg',2),(15,'Deepika Singh','G-7, Lajpat Nagar, Delhi','deepikasingh@gmail.com','+91-8765432110','$2a$10$y9T3wZ7HdmLANLhEbGFrkuE15z616dDwDNQ137CA66lk0OYSWzLsW',_binary 'uploads\\1716226676867-download (1).jpg',7),(16,'Mohan Gupta','H-8, Janakpuri, Delhi','mohangupta@gmail.com','+91-7654321101','$2a$10$ya0ekFjZhLtrHLuYBse1/eNqAr/qBph5hbopjl6QgdQDbhIWFFdmO',_binary 'uploads\\1716226706618-download (6).jpg',11),(17,'Rashmi Patel','I-9, Dwarka, Delhi','rashmipatel@gmail.com','+91-6543211012','$2a$10$Ms2mrdToha9bcU2Ie.s7OOcUFTdJRegEMqFay/2WcUoaJRBGITEzW',_binary 'uploads\\1716226745076-download (2).jpg',15),(18,'Arjun Singhania','J-10, Rajouri Garden, Delhi','arjunsinghania@gmail.com','+91-5432101123','$2a$10$MDbmZn5perGkUHiw3UJD1udnl.qk7Cht/VUk3XqOGIyzluuAWobTG',_binary 'uploads\\1716226767403-download (9).jpg',19),(19,'Rani Verma','K-11, Rohini, Delhi','raniverma@gmail.com','+91-4321011234','$2a$10$2IXUFW91snIEWgfQo3xN7.N4mPVO2QjgWKgjzyVg.ec/chUJsuhBS',_binary 'uploads\\1716226789260-download (3).jpg',3),(20,'Prakash Jain','L-12, Connaught Place, Delhi','prakashjain@gmail.com','+91-3210112345','$2a$10$rXN3yQbLiHxNcgUqs/w9rOlV7D5czOIkfmd4svKYb/bNuWFLcAm/y',_binary 'uploads\\1716226811718-download (10).jpg',6),(21,'Neeta Singh','M-13, Karol Bagh, Delhi','neetasingh@gmail.com','+91-2101123456','$2a$10$hVTUbpfmJrntCLODL2tYK.TBHB3V/BPsetshDViSYAloHKV/xPUdC',_binary 'uploads\\1716226834633-download (4).jpg',10),(22,'Rajiv Khanna','N-14, Malviya Nagar, Delhi','rajivkhanna@gmail.com','+91-1011234567','$2a$10$Pi.0hdCBSg4RREtqKyaVp.ri4xdddYXF4SQPsdBTCoGCgV71F3K66',_binary 'uploads\\1716226856301-download (12).jpg',13),(23,'Shikha Sharma','O-15, Saket, Delhi','shikhasharma@gmail.com','+91-0112345678','$2a$10$qsAe1R5xIdlVMfm5J.hdjOcPx83AqL6Z4rgjlNzeKUxJEQbfbp0O2',_binary 'uploads\\1716226877972-download (5).jpg',17),(24,'Kiran Gupta','P-16, Dwarka, Delhi','kirangupta@gmail.com','+91-0123456789','$2a$10$kbuQDZYEu7HfoYGIRGC1wuc/5gfl.halj0VayX/MJdcoAgqqxLKdy',_binary 'uploads\\1716229104401-download (7).jpg',4),(25,'Vikas Sharma','Q-17, Janakpuri, Delhi','vikassharma@gmail.com','+91-9876543212','$2a$10$NC9lL0V3GwbpeOr/B5/IsOYrEZY1ZzhMsab6YFJyRi3FJmuG3gN9G',_binary 'uploads\\1716229135144-download (10).jpg',9),(26,'Anita Mehra','R-18, Lajpat Nagar, Delhi','anitamehra@gmail.com','+91-8765432111','$2a$10$JEEe1./9GQIdnPHVTZVzFOB3nM5L/oRjLFf7gmoCJueS/PumPYd2.',_binary 'uploads\\1716229154923-download (8).jpg',12),(27,'Vivek Kapoor','S-19, Rohini, Delhi','vivekkapoor@gmail.com','+91-7654321102','$2a$10$8FlTJkZYVnXRR4TDpbuu9O5MQonJpR3mTaE5o6ryAARBZRGJj92MS',_binary 'uploads\\1716229174828-download (12).jpg',16),(29,'Renuka Patel','T-20, Saket, Delhi','renukapatel@gmail.com','+91-6543211013','$2a$10$xRKiQ2ihTdAWarEcotolzeXL/SMqPMW3uuABFaVrVRL5p3gkgMb3e',_binary 'uploads\\1716229252658-download (11).jpg',20),(31,'Geeta Reddy','V-22, Karol Bagh, Delhi','geetareddy@gmail.com','+91-4321011235','$2a$10$fTEilYl4CGHxGXV2tCU9T.S4xNHnn.AeY.Z51M/ELTijTA.zboKq2',_binary 'uploads\\1716229306186-download (13).jpg',5),(32,'Sanjay Kapoor','W-23, Malviya Nagar, Delhi','sanjaykapoor@gmail.com','+91-3210112346','$2a$10$EXII5hK0R1Tg333OSvhRXebAEjRz63RAPR1nSwMtJHzdM6jo/.h7y',_binary 'uploads\\1716229330495-download (12).jpg',10),(33,'Meera Sharma','X-24, Rajouri Garden, Delhi','meerasharma@gmail.com','+91-2101123457','$2a$10$avzL1iHsQXjzkpZ82xAo/.nGJpfGi9IOfWrF8d/J8LH7HPSbJOaha',_binary 'uploads\\1716229356439-download (14).jpg',14),(34,'Rohit Verma','Y-25, Dwarka, Delhi','rohitverma@gmail.com','+91-1011234568','$2a$10$fYAn9laC5xdEIVfBQl.AeudW97geaFT8iMKmlKLnU6s/S1ajhidxO',_binary 'uploads\\1716229388061-download (18).jpg',18),(35,'Shreya Gupta','Z-26, Saket, Delhi','shreyagupta@gmail.com','+91-0123456780','$2a$10$HOfsluv8HiQOdAeFNg9cU.Sq2OasTv7thovJ3/ocBiZHsx5.cJq1m',_binary 'uploads\\1716229631801-download.jpg',2),(36,'Rahul Singh','AA-27, Janakpuri, Delhi','rahulsingh@gmail.com','+91-9876543213','$2a$10$55MStbmfQrN376uaM8h4xuTe1Es.gmNdbvFHBwm/iioet4eT4Qla.',_binary 'uploads\\1716229668766-download (20).jpg',6),(37,'Shreya Gupta','Z-26, Saket, Delhi','shreyagupta@gmail.com','+91-0123456780','$2a$10$TIr0IHvYXYeWK0AB41txkez.mTFGuzVnmqWci3MFvGorLHPzZL.Li',_binary 'uploads\\1716230313328-download (3).jpg',2),(38,'Rahul Singh','AA-27, Janakpuri, Delhi','rahulsingh@gmail.com','+91-9876543213','$2a$10$.nvLUmaCGKsIt8/f0spX5OY8km7bTZT5/7Th7He3I4j6/ItOOS2Im',_binary 'uploads\\1716230343048-download (1).jpg',6),(39,'Priya Sharma','BB-28, Lajpat Nagar, Delhi','priyasharma@gmail.com','+91-8765432112','$2a$10$d3xaE1ojdpqOBt37t0RQOuuawsal/eRDxlLhCWRF1hK8nU.e4zuaC',_binary 'uploads\\1716230364761-download (5).jpg',11),(40,'Manish Khanna','CC-29, Rohini, Delhi','manishkhanna@gmail.com','+91-7654321103','$2a$10$6MEImGebCEmbihm7YgcHSeHnsUi9WVHE7ySFhnAQh9fTclNfc8mwu',_binary 'uploads\\1716230382472-download (2).jpg',15),(41,'Vishal Patel','DD-30, Saket, Delhi','vishalpatel@gmail.com','+91-6543211014','$2a$10$tKsSsZcxirW5fCBG4dLTkOgJnmqLpufJIkXSS/dKXueMyI4Ci97NG',_binary 'uploads\\1716230401663-download (4).jpg',19),(42,'Anita Singh','EE-31, Connaught Place, Delhi','anitasingh@gmail.com','+91-5432101125','$2a$10$YnykfNv814t61Hwn6zOh7.JhOZ8DOmfXxYOBE8r.v5U8XAZgc7xKy',_binary 'uploads\\1716230423076-download (6).jpg',3),(43,'Kunal Sharma','FF-32, Karol Bagh, Delhi','kunalsharma@gmail.com','+91-4321011236','$2a$10$sj9fxeCz6QSERIo.eRg1rOWNfJKIP9/pVfzLK6TdH4PKFRnUNxWI6',_binary 'uploads\\1716230444435-download (7).jpg',7),(44,'Divya Reddy','GG-33, Malviya Nagar, Delhi','divyareddy@gmail.com','+91-3210112347','$2a$10$qGw7nihoM58dzOKxcW33Tucxvny4I8ZOHgIcWoMtNTfovUXwFO6VK',_binary 'uploads\\1716230466138-download (8).jpg',12),(45,'Arun Kapoor','HH-34, Rajouri Garden, Delhi','arunkapoor@gmail.com','+91-2101123458','$2a$10$RfPzHnXXKjAjgeRr0zNQb.0ZpYWvKKLOJ0ltciG7pGXcwkvF/aKWW',_binary 'uploads\\1716230489140-download (9).jpg',16),(46,'Sneha Verma','II-35, Dwarka, Delhi','snehaverma@gmail.com','+91-1011234569','$2a$10$68rA/o./ptVWvr0MKnWaG.1A.a1NQUeXBHzssoA/CGPaPFpFdvOLO',_binary 'uploads\\1716230516050-download (10).jpg',20),(47,'Mehul Jain','JJ-36, Pashchim Vihar, Delhi','mehuljain@gmail.com','+91-0123456781','$2a$10$XHN8A/kDSl.PBW28qE1Nae/rFNdtkAbpLqqGn1wwLhCut/IahTNHG',_binary 'uploads\\1716230792791-download (9).jpg',4),(48,'Alisha Patel','KK-37, Connaught Place, Delhi','alishapatel@gmail.com','+91-9876543214','$2a$10$jya5lHjweJDU/soAxeH7ZumUjigoVuiRbxRvrC/5uFrmO2GnrNXXe',_binary 'uploads\\1716230821797-download (8).jpg',8),(49,'Ravi Sharma','LL-38, Malviya Nagar, Delhi','ravisharma@gmail.com','+91-8765432113','$2a$10$KLA41LXcX8LWfWMPzbn6p.x.roeftsfmiZCxlmAeEtIwacNdZ/qkO',_binary 'uploads\\1716230854435-download (10).jpg',13),(50,'Sunita Gupta','MM-39, Rohini, Delhi','sunitagupta@gmail.com','+91-7654321104','$2a$10$JvPHCZ6PGA.7yATxlzyiO.EaaHnwHq2Ly6PUN6vU5yiCzl8ujjJQi',_binary 'uploads\\1716230878231-download (8).jpg',17),(51,'Tarun Mehta','NN-40, Saket, Delhi','tarunmehta@gmail.com','+91-6543211015','$2a$10$iuo7UzTD6PN7Z5VkWoj7iOzcsSC1mcde5okaZ1tHq8CmWLYnERYne',_binary 'uploads\\1716230905743-download (11).jpg',1),(52,'Anjali Verma','OO-41, Karol Bagh, Delhi','anjaliverma@gmail.com','+91-5432101126','$2a$10$SSDqs61OGMiGuaFrDgNhb.4etCHnwYfnpGVNE9FUI/htkCBIsOArq',_binary 'uploads\\1716230933526-download (12).jpg',5),(53,'Nikhil Reddy','PP-42, Rajouri Garden, Delhi','nikhilreddy@gmail.com','+91-4321011237','$2a$10$A/3Q3WnuD77VXKIE8LeQaejGm2CbHBmLf9Xo5MCAQHmVxKf17N3kq',_binary 'uploads\\1716231041817-download (1).jpg',9),(54,'Komal Singh','QQ-43, Lajpat Nagar, Delhi','komalsingh@gmail.com','+91-3210112348','$2a$10$rujGsRJW9KKGoMe.Rf5h7u9PVcRTuj52mwTRQB2h9E2HD2NpbA2aa',_binary 'uploads\\1716231166745-download (2).jpg',14),(55,'Vedika Kapoor','RR-44, Saket, Delhi','vivekkapoor2@gmail.com','+91-2101123459','$2a$10$aQ74Qmug6x/XfTX7w8VId.T9XwEtIRHJ/P1Ingw/iW8623bnyJpT.',_binary 'uploads\\1716231213595-download (3).jpg',18),(56,'Sarita Patel','SS-45, Dwarka, Delhi','saritapatel@gmail.com','+91-1011234570','$2a$10$JmRFdclwrd4R/crZ5pcLLOZj5eVrEuuuulT5hw87iXJARcch82qLi',_binary 'uploads\\1716231235551-download (4).jpg',2),(57,'Radhika Jain','TT-46, Pashchim Vihar, Delhi','rahuljain@gmail.com','+91-0123456782','$2a$10$IrrhOPHrGp9wF4JmGqqzJOueaL8Qjowj5tsXgKCmsvmFSVlE67YIK',_binary 'uploads\\1716231261364-download (5).jpg',6),(58,'Priya Kapoor','UU-47, Connaught Place, Delhi','priyakapoorgmail.com@gmail.com','+91-9876543215','$2a$10$1ZyuUdyFEgvRVlC5gRdFXOlNg/n5cNAmABiOIAm0ZdbHN7HerYBke',_binary 'uploads\\1716231292205-download (6).jpg',10),(59,'Rani Singh','VV-48, Malviya Nagar, Delhi','rajeshsingh@gmail.com','+91-8765432114','$2a$10$lfGS6nOYQO3dKHgO2cfg3.8Jq5gJbjt67SHe9SsVI5LJIWt1U8Ne6',_binary 'uploads\\1716231361148-download (7).jpg',15),(60,'Shalini Gupta','WW-49, Rohini, Delhi','shalinigupta@gmail.com','+91-7654321105','$2a$10$1uhhO7wy3TkDSxxbx7KZueSHt9A/GnTZMkV7HHAN3wfdpb3Qxt2Qi',_binary 'uploads\\1716231384153-download (8).jpg',19),(61,'Anita Kumar','XX-50, Saket, Delhi','arvindkumar@gmail.com','+91-6543211016','$2a$10$lzb8mEQCvphawGkOet0MD.CWWnRtN5EAlL208bLgPs7/9HmonyfF.',_binary 'uploads\\1716231413910-download (9).jpg',3),(62,'Sunita Mehta','KK-37, Greater Kailash, Delhi','sunitamehta@gmail.com','+91-8765432113','$2a$10$oV9UK8M15wO4F46oUGPx.uDNIbdDv9HzyjZPc8JcoIbJwfz3VQHMW',_binary 'uploads\\1716231445355-download.jpg',9),(63,'Raj Babbar','T-20, Saket, Delhi','rajbabbar@gmail.com','+91-6543211067','$2a$10$t.JLQeqI6h.8dBxFgh9IVO.dwIjV.UhvgmGOn7e/zaIaJsTr6tpXO',_binary 'uploads\\1716236799966-download.jpg',20),(64,'Rajan Arora','T-20, Pitam Pura, Delhi','rajanarora@gmail.com','+91-6543212067','$2a$10$W39khiCo47t5NVn1ZVnPfeV4ZgvouHLJKM6TeL9m3bUF8rTXFcp36',_binary 'uploads\\1716236892754-download (1).jpg',20),(65,'Vikram Singh','45, Green Park, Mumbai','vikram.singh@gmail.com','+91-9876543210','$2a$10$uQEUhvZ1Y.hi1K.MYhDnTOiOrXHk9J9gAEj49iyUjqQvkHkIUqlvG',_binary 'uploads\\1716237623780-download (4).jpg',15),(66,'Shalini Singh','45, Green Park, Mumbai','shalini.singh@gmail.com','+91-9866543210','$2a$10$e/KNf2dW4ZSe9Db3.pE0xedGDT/TZauMFf18vAsgt9NfFWEPcg2Te',_binary 'uploads\\1716237865897-download (6).jpg',15);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psychiatrists`
--

DROP TABLE IF EXISTS `psychiatrists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `hospital_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_id` (`hospital_id`),
  CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrists`
--

LOCK TABLES `psychiatrists` WRITE;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Aarav Arora',1),(2,'Aditi Sharma',1),(3,'Ananya Bansal',1),(4,'Arjun Malhotra',1),(5,'Asha Dravid',1),(6,'Bhavin Patel',2),(7,'Charu Iyer',2),(8,'Ajay Goyal',2),(9,'Shruti Kapoor',2),(10,'Gaurav Khanna',2),(11,'Harshit Deshmukh',3),(12,'Saurav Chatterjee',3),(13,'Dipti Malhotra',3),(14,'Lakshmi Sharma ',3),(15,'Manoj Verma',3),(16,'Ritika Bhatia',4),(17,'Omkar Ahuja',4),(18,'Ishan Sukhija',4),(19,'Rohit Bajaj',4),(20,'Sneha Saxena',4);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'psychiatrists'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21  9:53:22
