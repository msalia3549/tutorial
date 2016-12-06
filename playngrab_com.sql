-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: playngrab_com
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mobile` bigint(13) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'jai ganesha','123456','ganesha','shiva',7893951525,'rlalith10@gmail.com','dsfdsf','hyd'),(2,NULL,'ZmRnZg==','fdgdfg','kljkgjeritwri',999999999,'ZmdkZmdkZmdAZGZmZ2RmZy5zZGZzZA==','sfsdf','jijidfjsdijifsdjfisf'),(3,NULL,'ZmRnZmRmZHNmc2Rm','fdgdfg','kljkgjeritwri',999999999,'ZmdkZmdkZmdAZGZmZ2RmZy5zZGZzZA==','sfsdf','jijidfjsdijifsdjfisf'),(4,NULL,'cmV3cmV3cg==','rtret','ertert',998787787871,'ZmZnZGZrZ2Rma2c=','jdflgdfklgjkl','79751214812'),(5,NULL,'c2RmZHNm','dfsdf','sdfsdf',9177397785,'ZmRnZmRAZmZzZGYuc2Rmc2Q=','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(6,NULL,'c2Rmc2Rm','sdfdsf','sdfdsf',9177397785,'c2Rmc2RmZGZzZGZmc2Rm','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(7,NULL,'c2Rmc2Rm','sdfdsf','sdfdsf',9177397785,'c2Rmc2RmZGZzZGZmc2Rm','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(8,NULL,'c2Rmc2Rm','sdfdsf','sdfdsf',9177397785,'c2Rmc2RmZGZzZGZmc2Rm','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(9,'c2Rmc2Rmc2Rm','c2Rmc2Rm','sdfsdf','sdfsdf',9177397785,'ZmRmZ2ZkZw==','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(10,'c2Rmc2Rm','c2RmZHNm','sdfdsf','sdfsdf',9177397785,'ZHNmZGRm','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(11,'dXJldXJ5ZXJ1d2Vyd2V1cnk=','cGV3b3Byd2VvcHJ3ZXBybw==','pqeopwesdl,dlk','dd,vx,vsdlf,dsl;',9177397785,'ZHNmZGRm','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(12,'Z2Fl','c2Rmc2Rm','iesdfsdkf','ksfjsdkflk',9177397785,'MzIxc2Rmc2Q=','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(13,'YWppdGg=','MTIzNDY=','ajith','kumar',9177397785,'ZHNmc2RmQHNmZGRzZmQuc2Rmc2Rm','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(14,'ZHNmc2Fk','ZHNmc2ZzZA==','fsdfsdfsd','fsdfsdfsd',999,'ZHNmc2Rm','dfsdg','fgdfgfd'),(15,'ZHNmc2Fk','ZHNmc2ZzZA==','fsdfsdfsd','fsdfsdfsd',999,'ZHNmc2Rm','dfsdg','fgdfgfd'),(16,'ZHNmc2Fk','ZHNmc2ZzZA==','fsdfsdfsd','fsdfsdfsd',999,'ZHNmc2Rm','dfsdg','fgdfgfd'),(17,'ZHNmc2Fk','ZHNmc2ZzZA==','fsdfsdfsd','fsdfsdfsd',999,'ZHNmc2Rm','dfsdg','fgdfgfd'),(18,'ZmRnZmRn','ZGZnZGZn','dfgfdg','fgfdg',9177397785,'ZGZmZw==','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(19,'ZHNmZHNm','c2Rmc2Rm','sdfdsf','sdfsdf',9177397785,'ZmZnZmRz','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(20,'ZHNmZHNm','c2Rmc2Rm','sdfdsf','sdfsdf',9177397785,'ZmZnZmRz','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(21,'c2RmZHNm','c2Rmc2Rm','sdfdsf','sdfdsf',9177397785,'ZHNmc2Rm','sdfsdf','dsfsdf'),(22,'c2FkZg==','YXNkZg==','sdfaadsf','dsfadsf',9177397785,'ZHNm','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(23,'ZHNm','ZGRzZnNkZg==','dsfsdf','sdfsdf',9177397785,'c2ZkZmRz','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(24,'c2Rm','c2Rmc2Rm','sdfsdf','sdfsdf',9177397785,'c2Rmc2Q=','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(25,'bGFs','MTIzNDU2','lalith','kumar',9177397785,'ZmRzc2Rmc2Rm','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(26,'YWJvb3V0','YWJvdXR1cw==','about','us',9177397785,'ZnNkZkBmc2RmLnNkZnNk','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(27,'YWJvb3V0','YWJvdXR1cw==','about','us',9177397785,'ZnNkZkBmc2RmLnNkZnNk','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(28,'YWJvb3V0','YWJvdXR1cw==','about','us',9177397785,'ZnNkZkBmc2RmLnNkZnNk','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(29,'YWJvb3V0','YWJvdXR1cw==','about','us',9177397785,'ZnNkZkBmc2RmLnNkZnNk','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(30,'YWJvb3V0','YWJvdXR1cw==','about','us',9177397785,'ZnNkZkBmc2RmLnNkZnNk','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(31,'YWJvb3V0','YWJvdXR1cw==','about','us',9177397785,'ZnNkZkBmc2RmLnNkZnNk','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(32,'YWJvb3V0','YWJvdXR1cw==','about','us',9177397785,'ZnNkZkBmc2RmLnNkZnNk','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(33,'YWRzZnNkZg==','c2Rmc2Rmc2Q=','fsdfsdfsdfsd','fsdfsdfdsffsdf',9177397785,'ZGZnZmc=','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(34,'YWRzZnNkZg==','c2Rmc2Rmc2Q=','fsdfsdfsdfsd','fsdfsdfdsffsdf',9177397785,'ZGZnZmc=','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD'),(35,'YWRzZnNkZg==','c2Rmc2Rmc2Q=','fsdfsdfsdfsd','fsdfsdfdsffsdf',9177397785,'ZGZnZmc=','hno:-22-1-279,kalikaber,chaderghat,hyderabad','HYDERABAD');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_questions`
--

DROP TABLE IF EXISTS `quiz_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_questions` (
  `que_id` int(11) NOT NULL AUTO_INCREMENT,
  `que_title` varchar(10000) NOT NULL,
  `que_response` varchar(10000) NOT NULL,
  `que_gen_date` date NOT NULL,
  `que_cor_res` varchar(10000) NOT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_questions`
--

LOCK TABLES `quiz_questions` WRITE;
/*!40000 ALTER TABLE `quiz_questions` DISABLE KEYS */;
INSERT INTO `quiz_questions` VALUES (1,'What is the name of 29 state in india?','','0000-00-00',''),(2,'What is the name of 29 state in india?','Telangana','2016-10-01',''),(3,'What is the name of 29 state in india?','Telangana','2016-11-30','');
/*!40000 ALTER TABLE `quiz_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Name` varchar(20) DEFAULT NULL,
  `Firstname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Jai Ganesha','Ganesha'),('sdfsdfds','sdfsdfsdfdsfdsfsdfa'),('sdfsdfds','sdfsdfsdfdsfdsfsdfa'),('sdfsdfds','sdfsdfsdfdsfdsfsdfa'),('sdfsdfds','sdfsdfsdfdsfdsfsdfa'),('sdfsdfds','sdfsdfsdfdsfdsfsdfa'),('sdfsdfds','sdfsdfsdfdsfdsfsdfa'),('sdfsdfds','sdfsdfsdfdsfdsfsdfa'),('sdfsdfds','sdfsdfsdfdsfdsfsdfa'),('sdfsdfds','sdfsdfsdfdsfdsfsdfa'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('erwrsdfsdfds','fdsf'),('dsfsdf','sdfdsf'),('reem','456987'),('dsfsdfsdf','dsfsdfsdfsdfsdf'),('dfdsfsdf','sdfsdfsdf'),('dfdsfsdf','sdfsdfsdf'),('dfdsfsdf','sdfsdfsdf'),('dfdsfsdf','sdfsdfsdf'),('dfdsfsdf','sdfsdfsdf'),('sfsdfsdf','fdsfsdfsdf'),('fdgfdgfdg','dfgdfgdfg'),('rump','4566987'),('hello','sdfsdfas'),('sujatha','789'),('avinash','123456'),(NULL,NULL),(NULL,'zxcxzc'),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,'sdfsdfsfsdfdsf'),(NULL,NULL),(NULL,'sdfdsf'),('ZHNmc2Rm','ZHNmc2Rm');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-06 22:42:19
