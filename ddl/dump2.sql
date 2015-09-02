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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (4,'aaa','iii','2015-06-26 15:23:40','2015-06-26 15:23:40',NULL),(7,'oooooo','aaaaaa','2015-07-24 08:32:05','2015-07-24 08:32:05',NULL),(8,'aio','aaa\r\n','2015-07-24 10:26:39','2015-07-24 10:26:39',NULL),(9,'iiiiiiii','iiiiiiii','2015-07-24 10:39:04','2015-07-24 10:39:04',NULL),(10,'iiiiiiii','iiiiiiii','2015-07-24 10:39:23','2015-07-24 10:39:23',NULL),(11,'ioioio','ioioioioi','2015-07-24 10:40:35','2015-07-24 10:40:35',NULL),(12,'saioto','deu','2015-07-24 11:17:36','2015-07-24 11:17:36',4),(13,'111aio','aiof a','2015-07-24 11:21:26','2015-07-24 11:21:26',3),(14,'fff','ggg','2015-08-05 11:24:07','2015-08-05 11:24:07',20),(15,'pppp','pppp','2015-08-05 16:26:13','2015-08-05 16:26:13',16),(16,'sasasasasasa','sasasasaasa','2015-08-05 16:26:24','2015-08-05 16:26:24',16),(17,'dosukoi','dosukoi','2015-08-05 16:26:42','2015-08-05 16:26:42',16),(18,'under1','under1\r\n','2015-08-05 16:28:05','2015-08-05 16:28:05',25),(19,'under2','under2','2015-08-05 16:28:18','2015-08-05 16:28:18',25),(20,'waon1','waon1\r\n','2015-08-05 16:29:53','2015-08-05 16:29:53',24),(21,'waon2','waon2','2015-08-05 16:30:17','2015-08-05 16:30:17',24),(22,'a','i','2015-08-21 14:13:29','2015-08-21 14:13:29',24),(23,'public','public\r\n','2015-08-26 16:08:54','2015-08-26 16:08:54',24);
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
INSERT INTO `posts_tags` VALUES (7,3),(17,8),(17,9),(17,10),(0,14),(0,15),(0,16),(0,17),(0,18),(0,19),(0,20),(4,21),(4,22),(4,27),(4,28),(4,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (3,'tag 3','2015-08-20 04:33:43','2015-08-20 04:33:43'),(4,'asr','2015-08-20 16:48:28','2015-08-20 16:48:28'),(5,'aiueo','2015-08-21 11:55:53','2015-08-21 11:55:53'),(6,'rock','2015-08-21 14:44:37','2015-08-21 14:44:37'),(7,'face','2015-08-21 15:57:14','2015-08-21 15:57:14'),(8,'tag17','2015-08-21 20:57:07','2015-08-21 20:57:07'),(9,'17tag','2015-08-21 20:57:07','2015-08-21 20:57:07'),(10,'tagof17','2015-08-21 20:57:07','2015-08-21 20:57:07'),(11,'friday','2015-08-26 07:44:21','2015-08-26 07:44:21'),(12,'sunday','2015-08-26 07:45:14','2015-08-26 07:45:14'),(13,'sunday','2015-08-26 07:52:54','2015-08-26 07:52:54'),(14,'monday','2015-08-26 07:57:49','2015-08-26 07:57:49'),(15,'tuesday','2015-08-26 08:04:15','2015-08-26 08:04:15'),(16,'thursday','2015-08-26 08:04:53','2015-08-26 08:04:53'),(17,'january','2015-08-26 08:05:17','2015-08-26 08:05:17'),(18,'feburary','2015-08-26 08:05:32','2015-08-26 08:05:32'),(19,'march','2015-08-26 08:05:37','2015-08-26 08:05:37'),(20,'amerika','2015-08-26 10:18:34','2015-08-26 10:18:34'),(21,'posttag','2015-08-26 10:37:41','2015-08-26 10:37:41'),(22,'aa','2015-08-26 10:41:57','2015-08-26 10:41:57'),(27,'aaaaa','2015-08-26 11:06:47','2015-08-26 11:06:47'),(28,'ccccccc','2015-08-26 11:11:21','2015-08-26 11:11:21'),(29,'dddddd','2015-08-26 11:11:26','2015-08-26 11:11:26');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Saito','$2a$10$xIZyriXmppApCP2.I029z.FaLrh3hud0jXOwJ3vFWtHNPvqmZpqpO','admin','2015-07-08 11:44:33','2015-07-08 11:44:33',NULL),(2,'aaa','$2a$10$W2kdFjip/fo5L2TPh4wJFesexPAOYqzcqMOPN1x2N13v2MFQG0Woi','admin','2015-07-08 12:01:49','2015-07-08 12:01:49',NULL),(3,'kakiku','$2a$10$ElmF/xu3XCJ26mK9P66qDuPYgE1fz/J4Scy0YOhbuHwDuhg69gDvS','author','2015-07-08 12:21:00','2015-07-08 12:21:00',NULL),(4,'kakiku','$2a$10$a3HrPrrEVNiBOJhtGhgom..OonZa3wk8Jaz6UcXllfnRcJh.NuwN6','admin','2015-07-11 17:24:41','2015-07-11 17:24:41',NULL),(5,'iiii','$2a$10$8xsBo7TxRAidi3rftm0iwOXQp8.tjCarGoKm1RJKzQgDAI7PGtuRi','admin','2015-07-11 18:12:57','2015-07-11 18:12:57',NULL),(6,'hogehoge','$2a$10$qpHQKdOdnPf/QsjpJY85v.s9orP6/KEIjkzqCNLaxWrBOXB30.Cd.','admin','2015-07-11 19:22:02','2015-07-11 19:22:02',NULL),(7,'hoge','$2a$10$Jbbqm3pKMb6sAuBuOGWCWOMIseHKtbdjN9COzhOuYs8z/.ls/G7KW','admin','2015-07-11 19:23:36','2015-07-11 19:23:36',NULL),(8,'ccccc','$2a$10$HfwLaxLKK1duZM99DRmSbu05wUm7QDPr5GQXSIvS90k.PA7f1M4sS','admin','2015-07-11 19:54:43','2015-07-11 19:54:43',NULL),(9,'kakiku','$2a$10$EP9UgzutfLysHRynQ/.HHOfMqRuCFZVJX2BSqrVDM4f7eEBVtp5bC','admin','2015-07-11 20:26:20','2015-07-11 20:26:20',NULL),(10,'iiiiii','$2a$10$Tgq3fSXjiO4IUVTJp771RuL1QNcHqZOO/5HeKr6AHfmImP3m.QBuy','admin','2015-07-11 22:16:01','2015-07-11 22:16:01',NULL),(11,'kakiffku','$2a$10$2e4KtWXmNo16hU7SHaawyunn/MOAGWDqx2oLGc0SIH3dOHGs9YBfu','admin','2015-07-15 10:16:34','2015-07-15 10:16:34',NULL),(12,'gagagag','$2a$10$benwRidSEqeQG3NXR.gH/.8qQHLxZsEnFDDI7wMPuAH6WkXsA2hz6','admin','2015-07-15 10:52:30','2015-07-15 10:52:30',NULL),(13,'s','$2a$10$UjbPCyBt9Diye4x3YHU/s.vBFUrEQB.7BxByydyMrfeQ3PnN5WykO','admin','2015-07-25 22:11:04','2015-07-25 22:11:04',NULL),(14,'sasi','$2a$10$6dSdAcHDPzg2iZr5C0YUWe7.8h5DHW5g8RlFFWg6Ku8CtMDo1SH.y','admin','2015-07-25 22:12:53','2015-07-25 22:12:53',NULL),(15,'aaaa','$2a$10$.kXAynhcso9VIWfgEsYC.eSzA.o6cVIOorctffEFsgWy5IFsKDIF.','admin','2015-07-25 22:23:56','2015-07-25 22:23:56','aaaa'),(16,'aiueo','$2a$10$YiyQJEvfNO45tLyxkbs/UO9IsQDBb8m7V2DkAoz0kNmzZIvg2jZRG','admin','2015-07-28 18:14:41','2015-07-28 18:14:41','aiueo@gmail.com'),(17,'saito','$2a$10$a7DU36bmtdYvUoA8wC3lOuOFfPWNfZRX7L04GGvKbDc5qwZOzVLc2','admin','2015-07-28 18:15:55','2015-07-28 18:15:55','saito@gmail.com'),(18,'add','$2a$10$uYaRPaW.g1N4FrYghIF3vO60XzGRNmHHTb17XHwnlAvtvfmGECcRm','admin','2015-07-28 18:36:48','2015-07-28 18:36:48','add'),(19,'toshi','$2a$10$TGZyvuLD76LawjaCx9X7K.EDp.dJn/Syr6AbJjkY3gN3bkxbmdrUO','admin','2015-07-28 20:02:23','2015-07-28 20:02:23','toshi@gmail.com'),(20,'sasasa','$2a$10$mx9oZXPmTYbEktRj1OBA6.nvNsRqY6fdwZF.OGF6dTxQiCLGxyrSi','admin','2015-07-28 20:15:59','2015-07-28 20:15:59','sasasa@gmail.com'),(21,'iii','$2a$10$pl4gzQEaHkBEZlrnsrNyc.SqjKTnm/Vh.ks7U0Tlgcs82DckSeNF.','admin','2015-08-01 21:52:11','2015-08-01 21:52:11','iii@gmail.com'),(22,'gagigu','$2a$10$1F6bkUiadNbB.QDbInZlzO9m/imw2b.zjdGOqy9X041DXK3DYCE1u','admin','2015-08-01 22:03:15','2015-08-01 22:03:15','gagigu@gmail.com'),(23,'wishwish','$2a$10$79asMcCM0KafmMUBB8ggu.1EObtYeUnDYjLKNPjW0PGAhG29KqoNS','admin','2015-08-01 22:18:26','2015-08-01 22:18:26','wish@gmail.com'),(24,'waon','$2a$10$cwBBgsMnNnO8eryg55Y8Xe/3nhDXjaLo6vAQdbKdJW7RIxsozjfK2','admin','2015-08-01 22:20:16','2015-08-01 22:20:16','waon@gmail.com'),(25,'under','$2a$10$o.8LmMvpTyUM/tkvn.5TceeHi/i9oZIZyJ7665W/fNky3HCkAxqNK','admin','2015-08-01 22:49:41','2015-08-01 22:49:41','under@gmail.com'),(26,'fukushima','$2a$10$G74YOcp3dGx3YuJarZ8yPOrvZhfpq3nYZ18N8k7Vk.zo9mqOlVfRq','admin','2015-08-14 18:45:22','2015-08-14 18:45:22','fukusima@gmail.com'),(27,'pecopeco','$2a$10$GoBy4QYgkcTvOnkJER6OG.CsIp5TbXWLa4vlnfQvvlRqXI4FPePMu','admin','2015-08-18 14:44:39','2015-08-18 14:44:39','pecopeco@gmail.com'),(28,'fox','$2a$10$oHbwgEAE.lsoA6hPPJRnPuGu7TwDUgAHpX9SNh1lSCdc9drJkDM8O','admin','2015-08-18 14:45:25','2015-08-18 14:45:25','fox@gmail.com'),(29,'chrome','$2a$10$jgodBzwn/pAZu3a/eTyjJO/QVw2bgUSaWYKn0B.lj4a7xaNbTd4Tm','admin','2015-08-18 14:49:40','2015-08-18 14:49:40','chrome@gmail.com'),(30,'IE','$2a$10$g1YjCoFnqdgu5zBlTlxr9el/AAx.0QCn/zU4Hdk4pOgjIDc40tdLe','admin','2015-08-18 14:51:39','2015-08-18 14:51:39','IE@gmail.com'),(31,'safari','$2a$10$KavtW8Hraoeupm6r4mnc.e7ybm.zTTpSg9GlKbZBzV9hB6xRp9cji','admin','2015-08-18 17:09:52','2015-08-18 17:09:52','safari@gmail.com'),(32,'atom','$2a$10$CJccKHUK03dZPCHoeZWcLOYOfmS3X8/3nP6sfIlYXfCaNYa6lavLy','admin','2015-08-18 17:17:42','2015-08-18 17:17:42','atom@gmail.com'),(33,'sublime','$2a$10$J3kjYO9urlvqJeBDpfNaWOmGYle7lI0VgoNqQPbpRiOacJGa92Eye','admin','2015-08-18 17:59:54','2015-08-18 17:59:54','sublime@gmail.com'),(34,'tatitu','$2a$10$a871n9g2Em5V.miksegR7.eiGglxBRMBOfBnfVWDCERBBWuczX38C','admin','2015-08-18 19:28:18','2015-08-18 19:28:18','tatitu@gmail.com'),(35,'Java','$2a$10$5DKcs9nIO7486F6l4wrD7OvHTzszDEcE4OcVxWuWFserXzCiIqLam','admin','2015-08-18 22:32:20','2015-08-18 22:32:20','Java@gmail.com'),(36,'Java','$2a$10$gOpuOItkkQFZBr0w2/YB1uycZitqgSNLrd0AJ0HO5YLbZXJTNEcTm','admin','2015-08-18 22:32:45','2015-08-18 22:32:45','Java@gmail.com'),(37,'html','$2a$10$yBChksflpxx4fain83QKVO//tyzCJWSmY4BjumSjf.dK4f6jQl98G','admin','2015-08-18 22:33:36','2015-08-18 22:33:36','html@gmail.com'),(38,'css','$2a$10$Xuak5hGMXz/2hXKN0Anoo.E4mDEz8wre6mTovfJ256gd1wdc6J3Gi','admin','2015-08-18 22:43:44','2015-08-18 22:43:44','css@gmail.com'),(39,'jquery','$2a$10$CPYmPX7h04iS7mqZFCH8euWZW.ojPSDra5AuVUh.aI6IoMK9oxkBK','admin','2015-08-18 22:47:18','2015-08-18 22:47:18','jquery@gmail.com'),(40,'guts','$2a$10$XjV8KvpB8b11hQdSA/LXBuEsTi74Ey6UFdbeh06AlUJoJnFkBI12W','admin','2015-08-18 22:47:53','2015-08-18 22:47:53','guts@gmail.com'),(41,'iOS','$2a$10$Rr9XodxWvFW7Hd3lIU8ON.YlKIdt/RhlYdgn/fnSVyVIw7WGWuuzO','admin','2015-08-19 13:38:31','2015-08-19 13:38:31','iOS@gmail.com');
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

-- Dump completed on 2015-08-28 10:27:07
