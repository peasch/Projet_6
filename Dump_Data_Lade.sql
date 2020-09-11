-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: new_oclade
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Dumping data for table `commentaire`
--

LOCK TABLES `commentaire` WRITE;
/*!40000 ALTER TABLE `commentaire` DISABLE KEYS */;
INSERT INTO `commentaire` VALUES (1,'le 23 août 2020 à 17:15:45','éééééé salut franchement il est pas si terrible cet endroit',1,7),(2,'le 25 août 2020 à 13:22:14','c\'est pas mal ce site !! si si ! c\'erterest vrai',1,7),(9,'le 23 août 2020 à 17:21:51','hello comment c ?',1,7),(10,'le 26 août 2020 à 15:18:50','tralala',3,1);
/*!40000 ALTER TABLE `commentaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `length`
--

LOCK TABLES `length` WRITE;
/*!40000 ALTER TABLE `length` DISABLE KEYS */;
INSERT INTO `length` VALUES (1,10,'6a',1,1),(2,8,'7b',1,2),(3,6,'5c',2,1),(4,8,'5c',2,2),(5,10,'6b',3,1),(6,12,'5b',3,2),(7,12,'8a',4,1),(8,10,'8a',4,2),(9,8,'7c',13,1),(10,8,'7c',14,1),(11,10,'6a+',27,1),(12,8,'6b',26,1),(13,10,'6b+',28,1),(14,7,'7a',6,1),(15,5,'7c+',6,2);
/*!40000 ALTER TABLE `length` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'21 août 2020',1,'2020-08-21 13:46:07.337000','2020-08-21 13:56:59.396000',7,10,NULL,1),(2,'le 21 août 2020 à 15:57:43',1,'2020-08-21 13:57:21.185000','le 21 août 2020 à 16:11:18',1,3,NULL,1),(3,'le 21 août 2020 à 16:12:22',1,'le 21 août 2020 à 16:11:43','le 21 août 2020 à 16:13:02',7,9,NULL,1),(4,'le 21 août 2020 à 16:14:16',0,'le 21 août 2020 à 16:14:02',NULL,1,3,NULL,1),(5,'le 21 août 2020 à 16:14:33',0,'le 21 août 2020 à 16:14:12',NULL,7,9,NULL,1),(6,'le 21 août 2020 à 16:16:38',1,'le 21 août 2020 à 16:16:22','le 21 août 2020 à 16:17:17',7,9,NULL,1),(7,'le 21 août 2020 à 16:26:06',0,'le 21 août 2020 à 16:18:16',NULL,1,5,NULL,1),(15,NULL,NULL,'le 3 sept. 2020 à 08:14:07',NULL,7,1,NULL,NULL);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,3,1),(11,3,2),(12,3,3),(13,3,4),(14,3,5),(15,4,1),(16,4,2),(17,4,3),(18,5,1),(19,5,2),(20,5,3),(21,6,1),(22,6,2),(23,7,1),(24,7,2),(25,8,1),(26,8,2),(27,8,3),(28,12,1),(29,1,6),(30,1,7),(31,1,8),(32,1,9),(33,1,10);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','first',1),(2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','two',1),(3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','sub',2),(4,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','sup',2),(5,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','diag',2),(6,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','trough',3),(7,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','la biche',3),(8,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','la chute',4),(9,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','trala',1),(10,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','chika',1),(11,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','en face',2),(12,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','jump',7),(13,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','pif ',1),(14,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','le haut',1),(15,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','truc',1),(16,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a magna et magna aliquet malesuada at sit amet diam. Quisque mattis velit elit, a porta magna tempor at. Aenean imperdiet tincidunt ipsum, vitae aliquam felis scelerisque in.','La remontée',4),(17,'','Tour iffel',6);
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `spot`
--

LOCK TABLES `spot` WRITE;
/*!40000 ALTER TABLE `spot` DISABLE KEYS */;
INSERT INTO `spot` VALUES (1,0,'yutz','12.3546','1235.12','yutz escalade',1,'France','Grand Est'),(2,1,'oudrenne','2165','efzef','oudrenne escalade',1,'France','Grand Est'),(3,1,'France 2','20h','23h','taratata',2,'France','Ile de France'),(4,NULL,'courchevel','1','1','genepi',1,'France','Haute Savoie'),(5,1,'toulouse','12.12','12.13','Toulouse',3,'France','Haute Garonne'),(6,NULL,'Paris','12','1','trocadero',1,'France','Ile de France'),(7,1,'new York','34','56','gratte ciel',2,'USA','Massachussets'),(8,NULL,'chutes d\'Iguazu','25° 41&#8242; 45&#8243; S','54° 26&#8242; 13&#8243; O','Iguazu',7,'Argentine','Iguazu'),(9,NULL,'Forsand','58° 59&#8242; 11&#8243; N','6° 11&#8242; 18&#8243; E','Preikestolen',7,'Norway','Rogaland'),(10,NULL,'weshwesh','12.15.132','65.45.12','Wesh',7,'Allemagne','Rhenanie'),(11,NULL,'Cuppertino','65161','16546','Apple',7,'USA','Californie'),(12,NULL,'t','t','t','t',15,'France','Grand Est');
/*!40000 ALTER TABLE `spot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `topo`
--

LOCK TABLES `topo` WRITE;
/*!40000 ALTER TABLE `topo` DISABLE KEYS */;
INSERT INTO `topo` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat','grand est','2020',1,'France','Grand Est',NULL,1),(2,'topo paris','ParisClimb','avril 2020',2,'France','IdF',NULL,0),(3,'new york climbing','Big Apple','21 mars 2015',7,'USA','Massachussets',NULL,1),(4,'Hong Kong','Le bout du monde','16 juin 2020',7,'HongKong','HK',NULL,1),(5,'coucou','un spot qui dit coucou','hier',7,'France','Grand Est',NULL,1),(6,'salut','un spot qui dit aussi salut','demain',7,'Autriche','Zillertal',NULL,1),(7,'super','un spot qui dit super !','l\'an 0',7,'Autriche','Zillertal',NULL,1),(8,'génial','encore un spot génial','l\'an 40',7,'Italie','Sicile',NULL,1),(9,'tralala','ici c\'est tralala','2018',1,'Italie','Sicile',NULL,1),(10,'quelques spots d\'escalade le long du Gange','Indian rope','20 janvier 2018',1,'Inde','Kualalumpur',NULL,1),(11,'tralalilala','youpala','avant hier',1,'Inde','Kualalumpur','22-06-2020',1),(12,'c\'est un topo mais à Océane','Le Topo d\'Oceane','17 aout 2008',5,'Italie','Sardaigne','24-06-2020',1),(13,'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','pimpam poum','aujourd\'hui',7,'Grèce','Crête','22-08-2020',1),(14,'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','tchik & tchak','demain',7,'Grèce','Rhodes','22-08-2020',1),(15,'\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.','Le secret des Licornes','le 2 octobre 2018',5,'Grèce','Rhodes','22-08-2020',1),(16,'\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.','bim bam boum','avril 1955',1,'Portugal','Algarve','22-08-2020',1),(17,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.','fghf','11/02/15',7,'tata','tata','24-08-2020',1),(18,'efhedfhgdf','p','ttt',15,'France','Grand Est','03-09-2020',1);
/*!40000 ALTER TABLE `topo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'tom@tom.fr','tom','tom','tom','tom',0),(2,0,'jp@jp.fr','pierre','jean','test123','jp',0),(3,0,'a@a.fr','dupontel','albert','test123','adupontel',0),(4,0,'peaschaming@gmail.com','Pierre-alain','Schaming','test123','peasch',0),(5,0,'savlao@o.fr','Océane','Salvadori','test123','salvo',0),(6,0,'math@math.fr','Mathieu','Martinez','test123','Mathprog_le_BG',0),(7,1,'a@aaaa.fr','a','a','a','a',1),(8,0,'j@j.fr','jean','jean','j','j',0),(9,0,'p@p.p','p','p','p','p',0),(10,0,'z@z.de','z','z','z','z',0),(11,0,'e@e.e','e','e','e','e',0),(12,0,'q@q.fr','q','q','q','q',0),(13,0,'s@s.s','s','s','s','s',0),(14,0,'w@w','w','w','w','w',0),(15,0,'t@t.t','t','t','t','t',0);
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

-- Dump completed on 2020-09-03 14:46:15
