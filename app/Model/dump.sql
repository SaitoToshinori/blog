-- MySQL dump 10.13  Distrib 5.6.25, for osx10.10 (x86_64)
--
-- Host: localhost    Database: dotinstall_cakephp_blog
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commenter` varchar(255) DEFAULT NULL,
  `body` text,
  `post_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'c 1','b 1',1,'2015-06-26 20:55:49','2015-06-26 20:55:49'),(2,'c 2','b 2',1,'2015-06-26 20:55:49','2015-06-26 20:55:49'),(3,'c 3','b 3',1,'2015-06-26 20:55:49','2015-06-26 20:55:49'),(5,'a','a',19,'2015-08-11 18:19:00','2015-08-11 18:19:00'),(6,'aiu','eoka',15,'2015-08-19 20:14:59','2015-08-19 20:14:59'),(7,'commenter','comment',4,'2015-08-19 22:40:24','2015-08-19 22:40:24'),(9,'comment1','body 1',7,'2015-08-21 19:55:09','2015-08-21 19:55:09'),(10,'comment2','body 2',7,'2015-08-21 19:55:09','2015-08-21 19:55:09'),(11,'comment3','body 3',7,'2015-08-21 19:55:09','2015-08-21 19:55:09'),(12,'comment1','body 1',17,'2015-08-21 20:54:16','2015-08-21 20:54:16'),(13,'comment2','body 2',17,'2015-08-21 20:54:16','2015-08-21 20:54:16'),(14,'comment3','body 3',17,'2015-08-21 20:54:16','2015-08-21 20:54:16'),(15,'desu','saito',4,'2015-08-26 07:48:24','2015-08-26 07:48:24'),(16,'long','short',23,'2015-08-26 16:09:06','2015-08-26 16:09:06'),(17,'','',4,'2015-08-28 09:16:35','2015-08-28 09:16:35');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (3,'2015-08-31 11:34:31',18,25),(4,'2015-08-31 11:43:21',18,25),(5,'2015-08-31 11:51:45',18,25),(6,'2015-08-31 21:25:57',12,4),(7,'2015-08-31 21:51:21',12,4),(8,'2015-08-31 21:51:24',12,4),(9,'2015-08-31 21:51:50',12,4),(10,'2015-08-31 22:41:06',12,4),(12,'2015-08-31 23:13:03',22,24),(14,'2015-08-31 23:39:41',17,16),(15,'2015-08-31 23:56:03',13,16),(17,'2015-09-01 13:39:35',14,24),(18,'2015-09-01 19:56:00',10,103);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (4,'aaa','iii','2015-06-26 15:23:40','2015-06-26 15:23:40',NULL,NULL),(7,'oooooo','aaaaaa','2015-07-24 08:32:05','2015-07-24 08:32:05',NULL,NULL),(8,'aio','aaa\r\n','2015-07-24 10:26:39','2015-07-24 10:26:39',NULL,NULL),(9,'iiiiiiii','iiiiiiii','2015-07-24 10:39:04','2015-07-24 10:39:04',NULL,NULL),(10,'iiiiiiii','iiiiiiii','2015-07-24 10:39:23','2015-07-24 10:39:23',NULL,NULL),(11,'ioioio','ioioioioi','2015-07-24 10:40:35','2015-07-24 10:40:35',NULL,NULL),(12,'saioto','deu','2015-07-24 11:17:36','2015-07-24 11:17:36',4,NULL),(13,'111aio','aiof a','2015-07-24 11:21:26','2015-07-24 11:21:26',3,NULL),(14,'fff','ggg','2015-08-05 11:24:07','2015-08-05 11:24:07',20,NULL),(15,'pppp','pppp','2015-08-05 16:26:13','2015-08-05 16:26:13',16,NULL),(16,'sasasasasasa','sasasasaasa','2015-08-05 16:26:24','2015-08-05 16:26:24',16,NULL),(17,'dosukoi','dosukoi','2015-08-05 16:26:42','2015-08-05 16:26:42',16,NULL),(18,'under1','under1\r\n','2015-08-05 16:28:05','2015-08-05 16:28:05',25,NULL),(19,'under2','under2','2015-08-05 16:28:18','2015-08-05 16:28:18',25,NULL),(20,'waon1','waon1\r\n','2015-08-05 16:29:53','2015-08-05 16:29:53',24,NULL),(21,'waon2','waon2','2015-08-05 16:30:17','2015-08-05 16:30:17',24,NULL),(22,'a','i','2015-08-21 14:13:29','2015-08-21 14:13:29',24,NULL),(23,'public','public\r\n','2015-08-26 16:08:54','2015-08-26 16:08:54',24,NULL),(25,'image','example','2015-09-05 00:48:11','2015-09-05 00:48:11',59,'http://image.rakuten.co.jp/fantasia-fw/cabinet/14riceoil/tw04000cook_01.jpg');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_tags`
--

DROP TABLE IF EXISTS `posts_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_tags` (
  `post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_tags`
--

LOCK TABLES `posts_tags` WRITE;
/*!40000 ALTER TABLE `posts_tags` DISABLE KEYS */;
INSERT INTO `posts_tags` VALUES (7,3),(17,8),(17,9),(17,10),(0,14),(0,15),(0,16),(0,17),(0,18),(0,19),(0,20),(4,21),(4,27),(4,28),(7,49),(7,21),(8,54);
/*!40000 ALTER TABLE `posts_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (3,'tag 3','2015-08-20 04:33:43','2015-08-20 04:33:43'),(4,'asr','2015-08-20 16:48:28','2015-08-20 16:48:28'),(5,'aiueo','2015-08-21 11:55:53','2015-08-21 11:55:53'),(6,'rock','2015-08-21 14:44:37','2015-08-21 14:44:37'),(7,'face','2015-08-21 15:57:14','2015-08-21 15:57:14'),(8,'tag17','2015-08-21 20:57:07','2015-08-21 20:57:07'),(9,'17tag','2015-08-21 20:57:07','2015-08-21 20:57:07'),(10,'tagof17','2015-08-21 20:57:07','2015-08-21 20:57:07'),(11,'friday','2015-08-26 07:44:21','2015-08-26 07:44:21'),(12,'sunday','2015-08-26 07:45:14','2015-08-26 07:45:14'),(13,'sunday','2015-08-26 07:52:54','2015-08-26 07:52:54'),(14,'monday','2015-08-26 07:57:49','2015-08-26 07:57:49'),(15,'tuesday','2015-08-26 08:04:15','2015-08-26 08:04:15'),(16,'thursday','2015-08-26 08:04:53','2015-08-26 08:04:53'),(17,'january','2015-08-26 08:05:17','2015-08-26 08:05:17'),(18,'feburary','2015-08-26 08:05:32','2015-08-26 08:05:32'),(19,'march','2015-08-26 08:05:37','2015-08-26 08:05:37'),(20,'amerika','2015-08-26 10:18:34','2015-08-26 10:18:34'),(21,'posttag','2015-08-26 10:37:41','2015-08-26 10:37:41'),(27,'aaaaa','2015-08-26 11:06:47','2015-08-26 11:06:47'),(28,'ccccccc','2015-08-26 11:11:21','2015-08-26 11:11:21'),(30,NULL,'2015-08-28 11:48:20','2015-08-28 11:48:20'),(31,NULL,'2015-08-28 11:49:01','2015-08-28 11:49:01'),(32,'aiii','2015-08-28 11:50:01','2015-08-28 11:50:01'),(33,'aaaaaaaaaa','2015-08-28 11:55:21','2015-08-28 11:55:21'),(34,'aaaaaaaaaaaaaaa','2015-08-28 11:56:17','2015-08-28 11:56:17'),(35,'aaaaaaaaaaaa','2015-08-28 12:02:54','2015-08-28 12:02:54'),(36,'aaaaaaaaa','2015-08-28 12:05:26','2015-08-28 12:05:26'),(37,'gagagagaggagagag','2015-08-28 12:05:54','2015-08-28 12:05:54'),(38,'qqqqqqqqqq','2015-08-28 12:06:43','2015-08-28 12:06:43'),(39,'aaaa','2015-08-28 12:07:46','2015-08-28 12:07:46'),(40,'qqqq','2015-08-28 12:08:21','2015-08-28 12:08:21'),(41,'wwww','2015-08-28 12:09:37','2015-08-28 12:09:37'),(42,'rrrrr','2015-08-28 12:10:16','2015-08-28 12:10:16'),(43,'qrrrrr','2015-08-28 12:10:30','2015-08-28 12:10:30'),(44,'ttttt','2015-08-28 12:14:36','2015-08-28 12:14:36'),(45,'asssss','2015-08-28 12:16:13','2015-08-28 12:16:13'),(46,'kkk','2015-08-28 13:57:38','2015-08-28 13:57:38'),(47,'micro','2015-08-28 15:37:12','2015-08-28 15:37:12'),(48,'twitter','2015-08-28 15:40:25','2015-08-28 15:40:25'),(49,'mixi','2015-08-28 15:51:17','2015-08-28 15:51:17'),(51,'','2015-08-28 19:33:26','2015-08-28 19:33:26'),(52,'kkkkkkkkokokok','2015-08-28 19:34:34','2015-08-28 19:34:34'),(53,'vgvgg','2015-08-28 19:35:13','2015-08-28 19:35:13'),(54,'a','2015-08-28 19:36:50','2015-08-28 19:36:50'),(55,'uuu','2015-09-01 19:48:39','2015-09-01 19:48:39');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Saito','$2a$10$xIZyriXmppApCP2.I029z.FaLrh3hud0jXOwJ3vFWtHNPvqmZpqpO','admin','2015-07-08 11:44:33','2015-07-08 11:44:33',NULL,NULL,NULL),(2,'aaa','$2a$10$W2kdFjip/fo5L2TPh4wJFesexPAOYqzcqMOPN1x2N13v2MFQG0Woi','admin','2015-07-08 12:01:49','2015-07-08 12:01:49',NULL,NULL,NULL),(3,'kakiku','$2a$10$ElmF/xu3XCJ26mK9P66qDuPYgE1fz/J4Scy0YOhbuHwDuhg69gDvS','author','2015-07-08 12:21:00','2015-07-08 12:21:00',NULL,NULL,NULL),(4,'kakiku','$2a$10$a3HrPrrEVNiBOJhtGhgom..OonZa3wk8Jaz6UcXllfnRcJh.NuwN6','admin','2015-07-11 17:24:41','2015-07-11 17:24:41',NULL,NULL,NULL),(5,'iiii','$2a$10$8xsBo7TxRAidi3rftm0iwOXQp8.tjCarGoKm1RJKzQgDAI7PGtuRi','admin','2015-07-11 18:12:57','2015-07-11 18:12:57',NULL,NULL,NULL),(6,'hogehoge','$2a$10$qpHQKdOdnPf/QsjpJY85v.s9orP6/KEIjkzqCNLaxWrBOXB30.Cd.','admin','2015-07-11 19:22:02','2015-07-11 19:22:02',NULL,NULL,NULL),(7,'hoge','$2a$10$Jbbqm3pKMb6sAuBuOGWCWOMIseHKtbdjN9COzhOuYs8z/.ls/G7KW','admin','2015-07-11 19:23:36','2015-07-11 19:23:36',NULL,NULL,NULL),(8,'ccccc','$2a$10$HfwLaxLKK1duZM99DRmSbu05wUm7QDPr5GQXSIvS90k.PA7f1M4sS','admin','2015-07-11 19:54:43','2015-07-11 19:54:43',NULL,NULL,NULL),(9,'kakiku','$2a$10$EP9UgzutfLysHRynQ/.HHOfMqRuCFZVJX2BSqrVDM4f7eEBVtp5bC','admin','2015-07-11 20:26:20','2015-07-11 20:26:20',NULL,NULL,NULL),(10,'iiiiii','$2a$10$Tgq3fSXjiO4IUVTJp771RuL1QNcHqZOO/5HeKr6AHfmImP3m.QBuy','admin','2015-07-11 22:16:01','2015-07-11 22:16:01',NULL,NULL,NULL),(11,'kakiffku','$2a$10$2e4KtWXmNo16hU7SHaawyunn/MOAGWDqx2oLGc0SIH3dOHGs9YBfu','admin','2015-07-15 10:16:34','2015-07-15 10:16:34',NULL,NULL,NULL),(12,'gagagag','$2a$10$benwRidSEqeQG3NXR.gH/.8qQHLxZsEnFDDI7wMPuAH6WkXsA2hz6','admin','2015-07-15 10:52:30','2015-07-15 10:52:30',NULL,NULL,NULL),(14,'sasi','$2a$10$6dSdAcHDPzg2iZr5C0YUWe7.8h5DHW5g8RlFFWg6Ku8CtMDo1SH.y','admin','2015-07-25 22:12:53','2015-07-25 22:12:53',NULL,NULL,NULL),(15,'aaaa','$2a$10$.kXAynhcso9VIWfgEsYC.eSzA.o6cVIOorctffEFsgWy5IFsKDIF.','admin','2015-07-25 22:23:56','2015-07-25 22:23:56','aaaa',NULL,NULL),(16,'aiueo','$2a$10$YiyQJEvfNO45tLyxkbs/UO9IsQDBb8m7V2DkAoz0kNmzZIvg2jZRG','admin','2015-07-28 18:14:41','2015-07-28 18:14:41','aiueo@gmail.com',NULL,NULL),(17,'saito','$2a$10$a7DU36bmtdYvUoA8wC3lOuOFfPWNfZRX7L04GGvKbDc5qwZOzVLc2','admin','2015-07-28 18:15:55','2015-07-28 18:15:55','saito@gmail.com',NULL,NULL),(18,'add','$2a$10$uYaRPaW.g1N4FrYghIF3vO60XzGRNmHHTb17XHwnlAvtvfmGECcRm','admin','2015-07-28 18:36:48','2015-07-28 18:36:48','add',NULL,NULL),(19,'toshi','$2a$10$TGZyvuLD76LawjaCx9X7K.EDp.dJn/Syr6AbJjkY3gN3bkxbmdrUO','admin','2015-07-28 20:02:23','2015-07-28 20:02:23','toshi@gmail.com',NULL,NULL),(20,'sasasa','$2a$10$mx9oZXPmTYbEktRj1OBA6.nvNsRqY6fdwZF.OGF6dTxQiCLGxyrSi','admin','2015-07-28 20:15:59','2015-07-28 20:15:59','sasasa@gmail.com',NULL,NULL),(21,'iii','$2a$10$pl4gzQEaHkBEZlrnsrNyc.SqjKTnm/Vh.ks7U0Tlgcs82DckSeNF.','admin','2015-08-01 21:52:11','2015-08-01 21:52:11','iii@gmail.com',NULL,NULL),(22,'gagigu','$2a$10$1F6bkUiadNbB.QDbInZlzO9m/imw2b.zjdGOqy9X041DXK3DYCE1u','admin','2015-08-01 22:03:15','2015-08-01 22:03:15','gagigu@gmail.com',NULL,NULL),(23,'wishwish','$2a$10$79asMcCM0KafmMUBB8ggu.1EObtYeUnDYjLKNPjW0PGAhG29KqoNS','admin','2015-08-01 22:18:26','2015-08-01 22:18:26','wish@gmail.com',NULL,NULL),(24,'waon','$2a$10$cwBBgsMnNnO8eryg55Y8Xe/3nhDXjaLo6vAQdbKdJW7RIxsozjfK2','admin','2015-08-01 22:20:16','2015-08-01 22:20:16','waon@gmail.com',NULL,NULL),(25,'under','$2a$10$o.8LmMvpTyUM/tkvn.5TceeHi/i9oZIZyJ7665W/fNky3HCkAxqNK','admin','2015-08-01 22:49:41','2015-08-01 22:49:41','under@gmail.com',NULL,NULL),(26,'fukushima','$2a$10$G74YOcp3dGx3YuJarZ8yPOrvZhfpq3nYZ18N8k7Vk.zo9mqOlVfRq','admin','2015-08-14 18:45:22','2015-08-14 18:45:22','fukusima@gmail.com',NULL,NULL),(27,'pecopeco','$2a$10$GoBy4QYgkcTvOnkJER6OG.CsIp5TbXWLa4vlnfQvvlRqXI4FPePMu','admin','2015-08-18 14:44:39','2015-08-18 14:44:39','pecopeco@gmail.com',NULL,NULL),(28,'fox','$2a$10$oHbwgEAE.lsoA6hPPJRnPuGu7TwDUgAHpX9SNh1lSCdc9drJkDM8O','admin','2015-08-18 14:45:25','2015-08-18 14:45:25','fox@gmail.com',NULL,NULL),(29,'chrome','$2a$10$jgodBzwn/pAZu3a/eTyjJO/QVw2bgUSaWYKn0B.lj4a7xaNbTd4Tm','admin','2015-08-18 14:49:40','2015-08-18 14:49:40','chrome@gmail.com',NULL,NULL),(30,'IE','$2a$10$g1YjCoFnqdgu5zBlTlxr9el/AAx.0QCn/zU4Hdk4pOgjIDc40tdLe','admin','2015-08-18 14:51:39','2015-08-18 14:51:39','IE@gmail.com',NULL,NULL),(31,'safari','$2a$10$KavtW8Hraoeupm6r4mnc.e7ybm.zTTpSg9GlKbZBzV9hB6xRp9cji','admin','2015-08-18 17:09:52','2015-08-18 17:09:52','safari@gmail.com',NULL,NULL),(32,'atom','$2a$10$CJccKHUK03dZPCHoeZWcLOYOfmS3X8/3nP6sfIlYXfCaNYa6lavLy','admin','2015-08-18 17:17:42','2015-08-18 17:17:42','atom@gmail.com',NULL,NULL),(33,'sublime','$2a$10$J3kjYO9urlvqJeBDpfNaWOmGYle7lI0VgoNqQPbpRiOacJGa92Eye','admin','2015-08-18 17:59:54','2015-08-18 17:59:54','sublime@gmail.com',NULL,NULL),(34,'tatitu','$2a$10$a871n9g2Em5V.miksegR7.eiGglxBRMBOfBnfVWDCERBBWuczX38C','admin','2015-08-18 19:28:18','2015-08-18 19:28:18','tatitu@gmail.com',NULL,NULL),(35,'Java','$2a$10$5DKcs9nIO7486F6l4wrD7OvHTzszDEcE4OcVxWuWFserXzCiIqLam','admin','2015-08-18 22:32:20','2015-08-18 22:32:20','Java@gmail.com',NULL,NULL),(36,'Java','$2a$10$gOpuOItkkQFZBr0w2/YB1uycZitqgSNLrd0AJ0HO5YLbZXJTNEcTm','admin','2015-08-18 22:32:45','2015-08-18 22:32:45','Java@gmail.com',NULL,NULL),(37,'html','$2a$10$yBChksflpxx4fain83QKVO//tyzCJWSmY4BjumSjf.dK4f6jQl98G','admin','2015-08-18 22:33:36','2015-08-18 22:33:36','html@gmail.com',NULL,NULL),(38,'css','$2a$10$Xuak5hGMXz/2hXKN0Anoo.E4mDEz8wre6mTovfJ256gd1wdc6J3Gi','admin','2015-08-18 22:43:44','2015-08-18 22:43:44','css@gmail.com',NULL,NULL),(39,'jquery','$2a$10$CPYmPX7h04iS7mqZFCH8euWZW.ojPSDra5AuVUh.aI6IoMK9oxkBK','admin','2015-08-18 22:47:18','2015-08-18 22:47:18','jquery@gmail.com',NULL,NULL),(40,'guts','$2a$10$XjV8KvpB8b11hQdSA/LXBuEsTi74Ey6UFdbeh06AlUJoJnFkBI12W','admin','2015-08-18 22:47:53','2015-08-18 22:47:53','guts@gmail.com',NULL,NULL),(41,'iOS','$2a$10$Rr9XodxWvFW7Hd3lIU8ON.YlKIdt/RhlYdgn/fnSVyVIw7WGWuuzO','admin','2015-08-19 13:38:31','2015-08-19 13:38:31','iOS@gmail.com',NULL,NULL),(42,'sumou','$2a$10$z.vESOmqZgxS96FAlJOLBuXbAnZdMh6okmxggQB7fSClt6P3lsNy6','admin','2015-09-01 14:14:35','2015-09-01 14:14:35','sumou@gmail.com',NULL,NULL),(43,'hakuhou','$2a$10$ifAAoCNQxdUwGSW4mth.nuGHMnY.L83TIMNMRGOUPZFKFyTm5qRCC','admin','2015-09-01 14:17:19','2015-09-01 14:17:20','hakuhou@gmail.com',NULL,NULL),(44,'hakuhou','$2a$10$Jn5dfkQrSQ9m3neTz54X/uVB4mX.4Q/1ge8EteoeOqBbyWPB.lxBO','admin','2015-09-01 14:18:00','2015-09-01 14:18:00','hakuhou@gmail.com',NULL,NULL),(45,'hakuhou','$2a$10$F2MMIfPnzheeXAUTWSVjIuT2DimKP9Zl1mOjkWyMyI1q0.jkrKitu','admin','2015-09-01 14:19:15','2015-09-01 14:19:15','hakuhou@gmail.com',NULL,NULL),(46,'hakuhou','$2a$10$hzcKh4u9MmP9GeHrECxawuRtJ7cjZ107MNpeLKmTeXBErpPoHUDF.','admin','2015-09-01 14:19:52','2015-09-01 14:19:52','hakuhou@gmail.com',NULL,NULL),(47,'hakuhou','$2a$10$GMhRfF./.TUqausgun5KJen9b7jN4eAPthwKQgWUE9m8IxQTl462S','admin','2015-09-01 14:22:16','2015-09-01 14:22:16','hakuhou@gmail.com',NULL,NULL),(48,'hakuhou','$2a$10$IUSEN1AN3HETZOY7gbNGCujciyyld2ZawO0sqMRJrfR2sq11NRbYq','admin','2015-09-01 14:23:03','2015-09-01 14:23:03','hakuhou@gmail.com',NULL,NULL),(49,'hakuhou','$2a$10$fnTxBU6KFbFmOewmMpaGEORpn4wwrxqdw0mnmeUBVbLkPWCCwTs3K','admin','2015-09-01 14:25:09','2015-09-01 14:25:09','hakuhou@gmail.com',NULL,NULL),(50,'hakuhou','$2a$10$nWn3uqFz0X6kEsBtlnSMQO2aNhczEQJacxiiVqhPE5e5i6Wy3pDyC','admin','2015-09-01 14:25:37','2015-09-01 14:25:37','hakuhou@gmail.com',NULL,NULL),(51,'hakuhou','$2a$10$Esx6/1xedFd/RMzmOVb3ieqrZLtGFid7jcKax8ldP3DKr9zqL0E.C','admin','2015-09-01 14:26:49','2015-09-01 14:26:49','hakuhou@gmail.com',NULL,NULL),(52,'jinbotyo','$2a$10$QNFF2hF.pJYrpfl/tR2AF.xm/z1TZYQIkS4IEbZrPYBSnSTcGBurW','admin','2015-09-01 14:34:11','2015-09-01 14:34:11','jinbotyo@gmail.com',NULL,NULL),(53,'jinbotyo','$2a$10$x4T0Ej/xydjnjEXhr.KIjOjUXERM.EDq6Yfa6RpHKXhBNhYpplUCu','admin','2015-09-01 14:34:47','2015-09-01 14:34:47','jinbotyo@gmail.com',NULL,NULL),(54,'jinbotyo','$2a$10$9qoiXQzWrBHQtxfOHTgSQOEtqGpcEEcCWUj/Vi95O5.Egcc0No9n2','admin','2015-09-01 14:35:47','2015-09-01 14:35:47','jinbotyo@gmail.com',NULL,NULL),(55,'jinbotyo','$2a$10$zNW5XeVjqoDwNcmDYUKw3eMFj8No01NuWhWc5S7zqcnY1rZtnaIX6','admin','2015-09-01 14:36:18','2015-09-01 14:36:18','jinbotyo@gmail.com',NULL,NULL),(56,'asashoryu','$2a$10$7ek8XS.y1/WAWMUIoYmlsO3/HnPgrizs3coiPyms0MLLVo8P2.Bv.','admin','2015-09-01 14:36:54','2015-09-01 14:36:54','asashoryu@gmail.com',NULL,NULL),(57,'aoyama','$2a$10$wqIq3WDMZATNOWHuqHemY.hUxHo5mk5J04DlisfoZOtdw.n.C8n8W','admin','2015-09-01 14:38:17','2015-09-01 14:38:17','aoyama@gmail.com',NULL,NULL),(58,'shibuya','$2a$10$gfZi5iXK7CQJNV8b0.9hBulseaVHvMP4Lrn8AWcVWRYiaKbXLgqfu','admin','2015-09-01 14:40:07','2015-09-01 14:40:07','shibuya@gmail.com',NULL,NULL),(59,'shinjuku','$2a$10$s5ygPDylfTlF5lvy8nvQQeugMy2k194MG3nHg0L2f8bzxKilNubJq','admin','2015-09-01 14:41:01','2015-09-01 14:41:01','shinjuku@gmail.com',NULL,NULL),(60,'shinjuku','$2a$10$LpZ.TJJKf8W8HanmytR7TOu726OEeuNORLBqqcFiNpn/c1AEVfc72','admin','2015-09-01 14:41:32','2015-09-01 14:41:32','shinjuku@gmail.com',NULL,NULL),(61,'ikebukuro','$2a$10$Zn2h.cXVnmEfnNhjyVTMB.5SlvZRgSMNUSnyckLLWOFXs45MP.dXm','admin','2015-09-01 15:11:37','2015-09-01 15:11:37','ikebukuro@gmail.com',NULL,NULL),(62,'ueno','$2a$10$el1cKwT9dgJRXTCMN9MNX.6N6cA8vJto.xl3N5KJtkRV3xYfXB/7a','admin','2015-09-01 15:22:27','2015-09-01 15:22:27','ueno@gmail.com',NULL,NULL),(63,'shinagawa','$2a$10$1JpRPTZ/uGbrjdQegOSTDeb.e1H9PCHRpiSDzTq/ixFS82F3DJPAy','admin','2015-09-01 15:50:10','2015-09-01 15:50:10','shinagawa@gmail.com',NULL,NULL),(64,'shinagawa','$2a$10$4sOtrjvKymAzeg0I1Rok7.NX9YCr5a86bJ2VJlAJ0/Jp1tkWwxhG.','admin','2015-09-01 15:50:27','2015-09-01 15:50:27','shinagawa@gmail.com',NULL,NULL),(65,'shinagawa','$2a$10$cw49.4KBU6J4pJo2fXf56OZcMOiinuor/v2cDON2zC4.Q0hYPZ0vG','admin','2015-09-01 15:51:18','2015-09-01 15:51:18','shinagawa@gmail.com',NULL,NULL),(66,'shinagawa','$2a$10$qVNc1yLcpJ7gmDSYMH9M/ewIVZ70C9PUGUfiNT7.VXZu8/HIWVyLu','admin','2015-09-01 15:51:20','2015-09-01 15:51:20','shinagawa@gmail.com',NULL,NULL),(67,'shinagawa','$2a$10$mVo.o5dioeCeh4V.DFAna.WsxHZFmXEmL/VEcy9CseH/HTim1T4gW','admin','2015-09-01 16:00:40','2015-09-01 16:00:40','shinagawa@gmail.com',NULL,NULL),(68,'hage','$2a$10$Fz3UJFg5Cl5//TGZfSKDyu92MosJwfjO0pFBYeREXhf.u05C9AivO','admin','2015-09-01 16:01:01','2015-09-01 16:01:01','hage@gmail.com',NULL,NULL),(69,'hage','$2a$10$NBTepiAZd7t2UXjxe8QsGuPDO/GNo6fw2OPrUnijQ5dSzVOJsMV32','admin','2015-09-01 16:01:26','2015-09-01 16:01:26','hage@gmail.com',NULL,NULL),(70,'hage','$2a$10$ng./0YsiR9wIjqL3Bx53/.zXFlG5iEyd6rkebwoY9QCm0e2pyD3g.','admin','2015-09-01 16:02:27','2015-09-01 16:02:27','hage@gmail.com',NULL,NULL),(71,'hage','$2a$10$6A/58yDPLWHUVEnwre36K.bvQzlLTilRCzGcGZJBiCM4v0OGo1oVu','admin','2015-09-01 16:05:16','2015-09-01 16:05:16','hage@gmail.com',NULL,NULL),(72,'hage','$2a$10$l6MDM31UeqIvG0WIY1HjW.kt020jCbuCNitimEV1DYr/viHbkIKIa','admin','2015-09-01 16:11:42','2015-09-01 16:11:42','hage@gmail.com',NULL,NULL),(73,'hage','$2a$10$yBwupCfhMTj0Rzb1FkfL/.niz4Ryqys4m/Kk9hZwv/invOQqUu1D2','admin','2015-09-01 16:11:43','2015-09-01 16:11:43','hage@gmail.com',NULL,NULL),(74,'hage','$2a$10$4lUF5Nl.27Z/MImoRSWlg.AAVhJ/tR/PMalLXf2Qu3.EY5oZObkhu','admin','2015-09-01 16:13:05','2015-09-01 16:13:05','hage@gmail.com',NULL,NULL),(75,'hage','$2a$10$b4qbTAow5l4pOiVKQp4TBOyAcycXH1L7H2MUFrtXhrBJRv8nDAw5a','admin','2015-09-01 16:13:07','2015-09-01 16:13:07','hage@gmail.com',NULL,NULL),(76,'hage','$2a$10$0Na8B2cMQM6pDBZt.R05U.svI3PBIfR1QyDmyKqcpoahzeiPn6U6q','admin','2015-09-01 16:13:43','2015-09-01 16:13:43','hage@gmail.com',NULL,NULL),(77,'hage','$2a$10$2nneo1nXuHs.S968S1UcbOMzP3TTRLP.cdXnMaaXW7Cfi1hfLgLJm','admin','2015-09-01 16:14:14','2015-09-01 16:14:14','hage@gmail.com',NULL,NULL),(78,'hage','$2a$10$oAOoh5WJymFwVeOCEfC5MedfVGXJJEneCMKuJ4UyKikfAuwR.Luqm','admin','2015-09-01 16:14:16','2015-09-01 16:14:16','hage@gmail.com',NULL,NULL),(79,'hikarie','$2a$10$XSuFnDm6KOW5Lha.mE7JHeoXyHmeuyq2NgTHonY9gwAaR7dNoB.pK','admin','2015-09-01 16:32:03','2015-09-01 16:32:03','hikarie@gmail.com',NULL,NULL),(80,'hikarie','$2a$10$UmYMPaxS29sJlqyenubR1uUmVsNK1y3TMdzBLHv3dpuwY/nSnLCP.','admin','2015-09-01 16:32:12','2015-09-01 16:32:12','hikarie@gmail.com',NULL,NULL),(81,'hikarie','$2a$10$cjEN8AtUf.rWc8oI/o.WOOpnMIbrP2fEKBTnQElzXBcuT36iyQc5q','admin','2015-09-01 16:32:13','2015-09-01 16:32:13','hikarie@gmail.com',NULL,NULL),(82,'hikarie','$2a$10$P5GLeaBO42jXof246zCWuO.faq/IlZItVuL66lWVl1LqBH5bOAKfa','admin','2015-09-01 16:32:33','2015-09-01 16:32:33','hikarie@gmail.com',NULL,NULL),(83,'mrrm','$2a$10$1.4ZVai/NQuXgMWElj5dc.HAHY4lVJDIEK0GKKmJML1QTJ8/2hPTG','admin','2015-09-01 16:34:35','2015-09-01 16:34:35','mrrm@gmail.com',NULL,NULL),(84,'mrrm','$2a$10$tSGPaFkkuEKjbQ3rbmVEJui0pDVHvyFgu3npfrm5t3bDqmIwXBXZ6','admin','2015-09-01 16:34:59','2015-09-01 16:34:59','mrrm@gmail.com',NULL,NULL),(85,'mrrm','$2a$10$OjQNK/MBPcgbrNy4rAJVW.JwfOM5I4h5XpwUQdReT4vWtC69Q23v.','admin','2015-09-01 16:35:00','2015-09-01 16:35:00','mrrm@gmail.com',NULL,NULL),(86,'mrrm','$2a$10$/5FWTSFXZJOqgD0gSIF6/.QbebSSfVTziN.bWvta7EjgxTTkoIEnC','admin','2015-09-01 16:37:28','2015-09-01 16:37:28','mrrm@gmail.com',NULL,NULL),(87,'mrrm','$2a$10$JGys2gHxJFpJci0iPOm7qeOi63gcyWlVETWMdyUmWTQaAruMxQsu6','admin','2015-09-01 16:37:30','2015-09-01 16:37:30','mrrm@gmail.com',NULL,NULL),(88,'mrrm','$2a$10$rrBhoo9SFeO1nfdeSyMIhuOO7Z6EQorA7PvsJnNk5LkxcmxGkoXeG','admin','2015-09-01 16:37:45','2015-09-01 16:37:45','mrrm@gmail.com',NULL,NULL),(89,'loginuser','$2a$10$txxtNhEqeEdUCgRsf7B9T.XIqo/Je3L8lFTEv62ko9FuiEIshL5RS','admin','2015-09-01 16:38:21','2015-09-01 16:38:21','loginuser@gmail.com',NULL,NULL),(90,'loginuser','$2a$10$H2BBgEaGkluR9SLCFodyveiZwUtvRqtOnM.xBnwLmZttRIBUWCuo6','admin','2015-09-01 16:38:52','2015-09-01 16:38:52','loginuser@gmail.com',NULL,NULL),(91,'loginuser','$2a$10$YlT5.oawkWJogqwDFl60WOiN7es3GR6JQmvMk7psuL1Ruq81bcKHu','admin','2015-09-01 16:40:43','2015-09-01 16:40:43','loginuser@gmail.com',NULL,NULL),(92,'loginuser','$2a$10$y9MJQTCotwBeBmyZLn8o6Oo1vcv6tjGKa8ybNjPSqBKcnbbG6RCH2','admin','2015-09-01 16:42:33','2015-09-01 16:42:33','loginuser@gmail.com',NULL,NULL),(93,'nini','$2a$10$gnRyBhr0On6qM3xX6s/2nurvo3U147rh440DdNB3y01MylD/Btg8q','admin','2015-09-01 16:46:56','2015-09-01 16:46:56','nini@gmail.com',NULL,NULL),(94,'nini','$2a$10$0/mep0AiREulL4p05mCFc.QpZ1hggexvA4DntURDEVfi0QrfwJjHK','admin','2015-09-01 16:47:24','2015-09-01 16:47:24','nini@gmail.com',NULL,NULL),(95,'nini','$2a$10$R/mIz1oUqVKC9mRUYRGG5OnA0.RE99804f8pnTVZH/KpZCE5Zo9IK','admin','2015-09-01 16:47:56','2015-09-01 16:47:56','nini@gmail.com',NULL,NULL),(96,'nini','$2a$10$Gd2KqzlUUKVL22xzY7gkoOaNNWwWVzbCGrdN696wPwKb6jszUhCC6','admin','2015-09-01 16:55:47','2015-09-01 16:55:47','nini@gmail.com',NULL,NULL),(97,'nini','$2a$10$nRUtVo63.9T7IJDrtEAvd.vSaK9zdnWSI1w0AM2GPNBXUpKfpENG2','admin','2015-09-01 16:59:07','2015-09-01 16:59:07','nini@gmail.com',NULL,NULL),(98,'nini','$2a$10$b8TzXrqzxVU1g6OHE9SP6.9UQWhtNreUmXl8vWbZUKbKA7v9H/Fn6','admin','2015-09-01 16:59:36','2015-09-01 16:59:36','nini@gmail.com',NULL,NULL),(99,'qqqqqqqqq','$2a$10$2LhOCJZYHvHmZphSfItOu.9oV39uejYFwygMLn4t3XBNCw80J2x1e','admin','2015-09-01 16:59:56','2015-09-01 16:59:56','nini@gmail.com',NULL,NULL),(100,'qq','$2a$10$.9NaAMeYMTmm8Nxn2celX.ulHub0Y9NgWALP5fVONLqRFsXNs7fly','admin','2015-09-01 17:00:23','2015-09-01 17:00:23','nini@gmail.com',NULL,NULL),(101,'a','$2a$10$sttjhKxoo2LFsCKqM/m/WOuDsBYhuoeBEFnLA8euSkyUSl/xJFNyS','admin','2015-09-01 17:00:45','2015-09-01 17:00:45','nini@gmail.com',NULL,NULL),(102,'a','$2a$10$bJJKEhyRjMDzYj4XSj4MjOJ4Kc.DwoZgnBoGkzFzB5ylOtmV.r8rK','admin','2015-09-01 17:01:31','2015-09-01 17:01:31','nini@gmail.com',NULL,NULL),(103,'ccccc','$2a$10$tnDK1FEv5rxcg7QyTWN5COumeykq0fF8sioyOif8HkTHuJ4u8lJqG','admin','2015-09-01 17:03:13','2015-09-01 17:03:13','nini@gmail.com',NULL,NULL),(104,'mrsaito','$2a$10$Tx9wtqXuvZQmTH5rGMzxS.Sjde/dqGe6xLo8hFWJPxdRBy9z/Xv/m','admin','2015-09-03 10:46:00','2015-09-03 10:46:00','mrsaito@gmail.com',29,'male'),(105,'mssaito','$2a$10$lSnErgLe0A9KKJpD8scASeDEqsfapN9z6w7MknpDtvZ6f.SG1nyJS','admin','2015-09-03 10:51:58','2015-09-03 10:51:58','mssaito@gmail.com',19960329,'female'),(106,'sss','$2a$10$uDXw/hwD5RawLWVLcNo8bOPr0kvOhPwSPVyRTsdsLk3LmO99I5pC.','admin','2015-09-03 14:32:44','2015-09-03 14:32:44','nini@gmail.com',NULL,'female'),(107,'sssss','$2a$10$hfWiNKY/HONIO9UuCBdvDOMjIA8otDau.k7oSehkiJKugrXvuHvhy','admin','2015-09-03 14:34:25','2015-09-03 14:34:25','nini@gmail.com',NULL,'female'),(108,'huuuuu','$2a$10$VOGKhniwv7z05XEnQehLlOlOc.VBjPxYW8G/oYOMzPezSC/Y.UTfq','admin','2015-09-03 14:47:51','2015-09-03 14:47:51','huuuuu@gmail.com',NULL,'female'),(109,'hulu','$2a$10$lmUNGx6/QCAHDtsJOLZxnuR/9CWEsRs7sRbw15.C4TMEmzj1vvZsi','admin','2015-09-03 14:58:56','2015-09-03 14:58:56','hulu@gmail.com',NULL,'female'),(110,'shoto','$2a$10$CLQxVqqyMzLnJUe3ytHgYeXGSublEtTT/0WF5DxGk8VYK4.GrZL2K','admin','2015-09-03 23:46:03','2015-09-03 23:46:03','shoto@gmail.com',19960329,'male'),(111,'hogeeeee','$2a$10$dOPbLoWkNoQxYwdWDQJJoONe7xk0Ljism3WasP5oHtNtcpSXm7Uhi','admin','2015-09-04 16:56:47','2015-09-04 16:56:47','shoto@gmail.com',NULL,'female'),(112,'fugaaaaa','$2a$10$BFO6a.5u1BF1wqbaXyZSmOA0JgQdp0x5qQJ7v5MjjYfdg0qeAPQ.S','admin','2015-09-04 16:57:23','2015-09-04 16:57:23','fugaaaaa@gmail.com',18881109,'female'),(113,'kaeritai','$2a$10$UJknweizGTwRFGDTfm.qeOvBoQfYSTRO60WsxlSBt3aeyHcU2ABH2','admin','2015-09-05 00:21:57','2015-09-05 00:21:57','kaeritai@gmail.com',NULL,'female');
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

-- Dump completed on 2015-09-05  1:03:01
