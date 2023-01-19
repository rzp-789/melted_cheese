-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: cheese
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `Newsletter`
--

DROP TABLE IF EXISTS `Newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Newsletter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_31D88618E7927C74` (`email`),
  UNIQUE KEY `UNIQ_31D886189395C3F3` (`customer_id`),
  CONSTRAINT `FK_31D886189395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Newsletter`
--

LOCK TABLES `Newsletter` WRITE;
/*!40000 ALTER TABLE `Newsletter` DISABLE KEYS */;
INSERT INTO `Newsletter` VALUES (7,136,'meltedCheese-client@meltedcheese.com','2023-01-19 08:57:40'),(11,NULL,'georges@meltedcheese.com','2023-01-19 09:00:48'),(12,NULL,'coucou@gmail.com','2023-01-19 17:28:40'),(14,NULL,'ola@gmail.com','2023-01-19 17:32:04');
/*!40000 ALTER TABLE `Newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recipe`
--

DROP TABLE IF EXISTS `Recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipe`
--

LOCK TABLES `Recipe` WRITE;
/*!40000 ALTER TABLE `Recipe` DISABLE KEYS */;
INSERT INTO `Recipe` VALUES (1,'bonjour','[{\"code\":\"monsieurbiz.image\",\"data\":{\"image\":\"/media/rich-editor/image-63c9a04b4d331.jpg\",\"alt\":null,\"title\":null,\"link\":null,\"align\":\"\"}}]'),(2,'cezcz',NULL),(3,'cezcez','[{\"code\":\"monsieurbiz.image\",\"data\":{\"image\":\"/media/rich-editor/araigneebanane_dessin-63c9a0cf52087.jpg\",\"alt\":null,\"title\":null,\"link\":null,\"align\":\"\"}}]');
/*!40000 ALTER TABLE `Recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
INSERT INTO `messenger_messages` VALUES (1,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:100:{i:0;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-0\\\";}i:1;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-1\\\";}i:2;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-2\\\";}i:3;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-3\\\";}i:4;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-4\\\";}i:5;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-0\\\";}i:6;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-1\\\";}i:7;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-2\\\";}i:8;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-3\\\";}i:9;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-4\\\";}i:10;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-0\\\";}i:11;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-1\\\";}i:12;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-2\\\";}i:13;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-3\\\";}i:14;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-4\\\";}i:15;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-0\\\";}i:16;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-1\\\";}i:17;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-2\\\";}i:18;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-3\\\";}i:19;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-4\\\";}i:20;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-0\\\";}i:21;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-1\\\";}i:22;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-2\\\";}i:23;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-3\\\";}i:24;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-4\\\";}i:25;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-0\\\";}i:26;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-1\\\";}i:27;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-2\\\";}i:28;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-3\\\";}i:29;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-4\\\";}i:30;a:1:{s:4:\\\"code\\\";s:37:\\\"Knitted_burgundy_winter_cap-variant-0\\\";}i:31;a:1:{s:4:\\\"code\\\";s:38:\\\"Knitted_wool_blend_green_cap-variant-0\\\";}i:32;a:1:{s:4:\\\"code\\\";s:34:\\\"Knitted_white_pompom_cap-variant-0\\\";}i:33;a:1:{s:4:\\\"code\\\";s:38:\\\"Cashmere_blend_violet_beanie-variant-0\\\";}i:34;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-0\\\";}i:35;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-1\\\";}i:36;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-2\\\";}i:37;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-3\\\";}i:38;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-4\\\";}i:39;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-5\\\";}i:40;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-6\\\";}i:41;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-7\\\";}i:42;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-8\\\";}i:43;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-9\\\";}i:44;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-10\\\";}i:45;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-11\\\";}i:46;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-12\\\";}i:47;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-13\\\";}i:48;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-14\\\";}i:49;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-0\\\";}i:50;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-1\\\";}i:51;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-2\\\";}i:52;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-3\\\";}i:53;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-4\\\";}i:54;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-5\\\";}i:55;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-6\\\";}i:56;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-7\\\";}i:57;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-8\\\";}i:58;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-9\\\";}i:59;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-10\\\";}i:60;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-11\\\";}i:61;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-12\\\";}i:62;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-13\\\";}i:63;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-14\\\";}i:64;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-0\\\";}i:65;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-1\\\";}i:66;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-2\\\";}i:67;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-3\\\";}i:68;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-4\\\";}i:69;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-5\\\";}i:70;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-6\\\";}i:71;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-7\\\";}i:72;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-8\\\";}i:73;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-9\\\";}i:74;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-10\\\";}i:75;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-11\\\";}i:76;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-12\\\";}i:77;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-13\\\";}i:78;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-14\\\";}i:79;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-0\\\";}i:80;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-1\\\";}i:81;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-2\\\";}i:82;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-3\\\";}i:83;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-4\\\";}i:84;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-0\\\";}i:85;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-1\\\";}i:86;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-2\\\";}i:87;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-3\\\";}i:88;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-4\\\";}i:89;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-0\\\";}i:90;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-1\\\";}i:91;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-2\\\";}i:92;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-3\\\";}i:93;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-4\\\";}i:94;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-0\\\";}i:95;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-1\\\";}i:96;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-2\\\";}i:97;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-3\\\";}i:98;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-4\\\";}i:99;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-0\\\";}}}}','[]','default','2023-01-16 08:15:24','2023-01-16 08:15:24',NULL),(2,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:19:{i:0;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-1\\\";}i:1;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-2\\\";}i:2;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-3\\\";}i:3;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-4\\\";}i:4;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-0\\\";}i:5;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-1\\\";}i:6;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-2\\\";}i:7;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-3\\\";}i:8;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-4\\\";}i:9;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-0\\\";}i:10;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-1\\\";}i:11;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-2\\\";}i:12;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-3\\\";}i:13;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-4\\\";}i:14;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-0\\\";}i:15;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-1\\\";}i:16;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-2\\\";}i:17;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-3\\\";}i:18;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-4\\\";}}}}','[]','default','2023-01-16 08:15:24','2023-01-16 08:15:24',NULL),(3,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"summer\\\";}}','[]','default','2023-01-16 08:15:24','2023-01-16 08:15:24',NULL),(4,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"summer\\\";}}','[]','default','2023-01-16 08:15:24','2023-01-16 08:15:24',NULL),(5,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"spring\\\";}}','[]','default','2023-01-16 08:15:24','2023-01-16 08:15:24',NULL),(6,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"spring\\\";}}','[]','default','2023-01-16 08:15:24','2023-01-16 08:15:24',NULL),(7,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"winter\\\";}}','[]','default','2023-01-16 08:15:24','2023-01-16 08:15:24',NULL),(8,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"winter\\\";}}','[]','default','2023-01-16 08:15:24','2023-01-16 08:15:24',NULL),(9,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:100:{i:0;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-0\\\";}i:1;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-1\\\";}i:2;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-2\\\";}i:3;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-3\\\";}i:4;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-4\\\";}i:5;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-0\\\";}i:6;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-1\\\";}i:7;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-2\\\";}i:8;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-3\\\";}i:9;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-4\\\";}i:10;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-0\\\";}i:11;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-1\\\";}i:12;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-2\\\";}i:13;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-3\\\";}i:14;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-4\\\";}i:15;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-0\\\";}i:16;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-1\\\";}i:17;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-2\\\";}i:18;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-3\\\";}i:19;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-4\\\";}i:20;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-0\\\";}i:21;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-1\\\";}i:22;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-2\\\";}i:23;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-3\\\";}i:24;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-4\\\";}i:25;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-0\\\";}i:26;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-1\\\";}i:27;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-2\\\";}i:28;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-3\\\";}i:29;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-4\\\";}i:30;a:1:{s:4:\\\"code\\\";s:37:\\\"Knitted_burgundy_winter_cap-variant-0\\\";}i:31;a:1:{s:4:\\\"code\\\";s:38:\\\"Knitted_wool_blend_green_cap-variant-0\\\";}i:32;a:1:{s:4:\\\"code\\\";s:34:\\\"Knitted_white_pompom_cap-variant-0\\\";}i:33;a:1:{s:4:\\\"code\\\";s:38:\\\"Cashmere_blend_violet_beanie-variant-0\\\";}i:34;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-0\\\";}i:35;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-1\\\";}i:36;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-2\\\";}i:37;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-3\\\";}i:38;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-4\\\";}i:39;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-5\\\";}i:40;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-6\\\";}i:41;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-7\\\";}i:42;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-8\\\";}i:43;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-9\\\";}i:44;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-10\\\";}i:45;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-11\\\";}i:46;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-12\\\";}i:47;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-13\\\";}i:48;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-14\\\";}i:49;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-0\\\";}i:50;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-1\\\";}i:51;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-2\\\";}i:52;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-3\\\";}i:53;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-4\\\";}i:54;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-5\\\";}i:55;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-6\\\";}i:56;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-7\\\";}i:57;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-8\\\";}i:58;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-9\\\";}i:59;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-10\\\";}i:60;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-11\\\";}i:61;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-12\\\";}i:62;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-13\\\";}i:63;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-14\\\";}i:64;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-0\\\";}i:65;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-1\\\";}i:66;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-2\\\";}i:67;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-3\\\";}i:68;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-4\\\";}i:69;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-5\\\";}i:70;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-6\\\";}i:71;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-7\\\";}i:72;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-8\\\";}i:73;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-9\\\";}i:74;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-10\\\";}i:75;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-11\\\";}i:76;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-12\\\";}i:77;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-13\\\";}i:78;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-14\\\";}i:79;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-0\\\";}i:80;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-1\\\";}i:81;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-2\\\";}i:82;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-3\\\";}i:83;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-4\\\";}i:84;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-0\\\";}i:85;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-1\\\";}i:86;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-2\\\";}i:87;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-3\\\";}i:88;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-4\\\";}i:89;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-0\\\";}i:90;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-1\\\";}i:91;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-2\\\";}i:92;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-3\\\";}i:93;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-4\\\";}i:94;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-0\\\";}i:95;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-1\\\";}i:96;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-2\\\";}i:97;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-3\\\";}i:98;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-4\\\";}i:99;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-0\\\";}}}}','[]','default','2023-01-17 12:18:35','2023-01-17 12:18:35',NULL),(10,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:19:{i:0;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-1\\\";}i:1;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-2\\\";}i:2;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-3\\\";}i:3;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-4\\\";}i:4;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-0\\\";}i:5;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-1\\\";}i:6;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-2\\\";}i:7;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-3\\\";}i:8;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-4\\\";}i:9;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-0\\\";}i:10;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-1\\\";}i:11;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-2\\\";}i:12;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-3\\\";}i:13;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-4\\\";}i:14;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-0\\\";}i:15;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-1\\\";}i:16;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-2\\\";}i:17;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-3\\\";}i:18;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-4\\\";}}}}','[]','default','2023-01-17 12:18:35','2023-01-17 12:18:35',NULL),(11,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"summer\\\";}}','[]','default','2023-01-17 12:18:35','2023-01-17 12:18:35',NULL),(12,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"summer\\\";}}','[]','default','2023-01-17 12:18:35','2023-01-17 12:18:35',NULL),(13,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"spring\\\";}}','[]','default','2023-01-17 12:18:35','2023-01-17 12:18:35',NULL),(14,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"spring\\\";}}','[]','default','2023-01-17 12:18:35','2023-01-17 12:18:35',NULL),(15,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"winter\\\";}}','[]','default','2023-01-17 12:18:35','2023-01-17 12:18:35',NULL),(16,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"winter\\\";}}','[]','default','2023-01-17 12:18:35','2023-01-17 12:18:35',NULL),(17,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:1:{i:0;s:34:\\\"variant fromage-de-bleu-d-auvergne\\\";}}}','[]','default','2023-01-18 18:48:15','2023-01-18 18:48:15',NULL),(18,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:1:{i:0;s:34:\\\"variant fromage-de-bleu-d-auvergne\\\";}}}','[]','default','2023-01-18 18:50:02','2023-01-18 18:50:02',NULL),(19,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:100:{i:0;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-0\\\";}i:1;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-1\\\";}i:2;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-2\\\";}i:3;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-3\\\";}i:4;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-4\\\";}i:5;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-0\\\";}i:6;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-1\\\";}i:7;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-2\\\";}i:8;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-3\\\";}i:9;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-4\\\";}i:10;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-0\\\";}i:11;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-1\\\";}i:12;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-2\\\";}i:13;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-3\\\";}i:14;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-4\\\";}i:15;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-0\\\";}i:16;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-1\\\";}i:17;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-2\\\";}i:18;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-3\\\";}i:19;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-4\\\";}i:20;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-0\\\";}i:21;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-1\\\";}i:22;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-2\\\";}i:23;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-3\\\";}i:24;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-4\\\";}i:25;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-0\\\";}i:26;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-1\\\";}i:27;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-2\\\";}i:28;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-3\\\";}i:29;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-4\\\";}i:30;a:1:{s:4:\\\"code\\\";s:37:\\\"Knitted_burgundy_winter_cap-variant-0\\\";}i:31;a:1:{s:4:\\\"code\\\";s:38:\\\"Knitted_wool_blend_green_cap-variant-0\\\";}i:32;a:1:{s:4:\\\"code\\\";s:34:\\\"Knitted_white_pompom_cap-variant-0\\\";}i:33;a:1:{s:4:\\\"code\\\";s:38:\\\"Cashmere_blend_violet_beanie-variant-0\\\";}i:34;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-0\\\";}i:35;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-1\\\";}i:36;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-2\\\";}i:37;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-3\\\";}i:38;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-4\\\";}i:39;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-5\\\";}i:40;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-6\\\";}i:41;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-7\\\";}i:42;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-8\\\";}i:43;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-9\\\";}i:44;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-10\\\";}i:45;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-11\\\";}i:46;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-12\\\";}i:47;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-13\\\";}i:48;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-14\\\";}i:49;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-0\\\";}i:50;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-1\\\";}i:51;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-2\\\";}i:52;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-3\\\";}i:53;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-4\\\";}i:54;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-5\\\";}i:55;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-6\\\";}i:56;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-7\\\";}i:57;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-8\\\";}i:58;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-9\\\";}i:59;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-10\\\";}i:60;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-11\\\";}i:61;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-12\\\";}i:62;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-13\\\";}i:63;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-14\\\";}i:64;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-0\\\";}i:65;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-1\\\";}i:66;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-2\\\";}i:67;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-3\\\";}i:68;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-4\\\";}i:69;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-5\\\";}i:70;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-6\\\";}i:71;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-7\\\";}i:72;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-8\\\";}i:73;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-9\\\";}i:74;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-10\\\";}i:75;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-11\\\";}i:76;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-12\\\";}i:77;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-13\\\";}i:78;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-14\\\";}i:79;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-0\\\";}i:80;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-1\\\";}i:81;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-2\\\";}i:82;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-3\\\";}i:83;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-4\\\";}i:84;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-0\\\";}i:85;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-1\\\";}i:86;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-2\\\";}i:87;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-3\\\";}i:88;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-4\\\";}i:89;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-0\\\";}i:90;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-1\\\";}i:91;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-2\\\";}i:92;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-3\\\";}i:93;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-4\\\";}i:94;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-0\\\";}i:95;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-1\\\";}i:96;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-2\\\";}i:97;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-3\\\";}i:98;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-4\\\";}i:99;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-0\\\";}}}}','[]','default','2023-01-18 19:37:49','2023-01-18 19:37:49',NULL),(20,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:19:{i:0;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-1\\\";}i:1;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-2\\\";}i:2;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-3\\\";}i:3;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-4\\\";}i:4;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-0\\\";}i:5;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-1\\\";}i:6;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-2\\\";}i:7;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-3\\\";}i:8;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-4\\\";}i:9;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-0\\\";}i:10;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-1\\\";}i:11;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-2\\\";}i:12;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-3\\\";}i:13;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-4\\\";}i:14;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-0\\\";}i:15;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-1\\\";}i:16;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-2\\\";}i:17;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-3\\\";}i:18;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-4\\\";}}}}','[]','default','2023-01-18 19:37:49','2023-01-18 19:37:49',NULL),(21,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"summer\\\";}}','[]','default','2023-01-18 19:37:49','2023-01-18 19:37:49',NULL),(22,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"summer\\\";}}','[]','default','2023-01-18 19:37:49','2023-01-18 19:37:49',NULL),(23,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"spring\\\";}}','[]','default','2023-01-18 19:37:49','2023-01-18 19:37:49',NULL),(24,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"spring\\\";}}','[]','default','2023-01-18 19:37:49','2023-01-18 19:37:49',NULL),(25,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"winter\\\";}}','[]','default','2023-01-18 19:37:49','2023-01-18 19:37:49',NULL),(26,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"winter\\\";}}','[]','default','2023-01-18 19:37:49','2023-01-18 19:37:49',NULL),(27,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:100:{i:0;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-0\\\";}i:1;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-1\\\";}i:2;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-2\\\";}i:3;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-3\\\";}i:4;a:1:{s:4:\\\"code\\\";s:38:\\\"Everyday_white_basic_T_Shirt-variant-4\\\";}i:5;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-0\\\";}i:6;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-1\\\";}i:7;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-2\\\";}i:8;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-3\\\";}i:9;a:1:{s:4:\\\"code\\\";s:38:\\\"Loose_white_designer_T_Shirt-variant-4\\\";}i:10;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-0\\\";}i:11;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-1\\\";}i:12;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-2\\\";}i:13;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-3\\\";}i:14;a:1:{s:4:\\\"code\\\";s:36:\\\"Ribbed_copper_slim_fit_Tee-variant-4\\\";}i:15;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-0\\\";}i:16;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-1\\\";}i:17;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-2\\\";}i:18;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-3\\\";}i:19;a:1:{s:4:\\\"code\\\";s:35:\\\"Sport_basic_white_T_Shirt-variant-4\\\";}i:20;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-0\\\";}i:21;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-1\\\";}i:22;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-2\\\";}i:23;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-3\\\";}i:24;a:1:{s:4:\\\"code\\\";s:33:\\\"Raglan_grey_&_black_Tee-variant-4\\\";}i:25;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-0\\\";}i:26;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-1\\\";}i:27;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-2\\\";}i:28;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-3\\\";}i:29;a:1:{s:4:\\\"code\\\";s:39:\\\"Oversize_white_cotton_T_Shirt-variant-4\\\";}i:30;a:1:{s:4:\\\"code\\\";s:37:\\\"Knitted_burgundy_winter_cap-variant-0\\\";}i:31;a:1:{s:4:\\\"code\\\";s:38:\\\"Knitted_wool_blend_green_cap-variant-0\\\";}i:32;a:1:{s:4:\\\"code\\\";s:34:\\\"Knitted_white_pompom_cap-variant-0\\\";}i:33;a:1:{s:4:\\\"code\\\";s:38:\\\"Cashmere_blend_violet_beanie-variant-0\\\";}i:34;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-0\\\";}i:35;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-1\\\";}i:36;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-2\\\";}i:37;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-3\\\";}i:38;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-4\\\";}i:39;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-5\\\";}i:40;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-6\\\";}i:41;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-7\\\";}i:42;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-8\\\";}i:43;a:1:{s:4:\\\"code\\\";s:36:\\\"Beige_strappy_summer_dress-variant-9\\\";}i:44;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-10\\\";}i:45;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-11\\\";}i:46;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-12\\\";}i:47;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-13\\\";}i:48;a:1:{s:4:\\\"code\\\";s:37:\\\"Beige_strappy_summer_dress-variant-14\\\";}i:49;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-0\\\";}i:50;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-1\\\";}i:51;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-2\\\";}i:52;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-3\\\";}i:53;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-4\\\";}i:54;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-5\\\";}i:55;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-6\\\";}i:56;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-7\\\";}i:57;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-8\\\";}i:58;a:1:{s:4:\\\"code\\\";s:33:\\\"Off_shoulder_boho_dress-variant-9\\\";}i:59;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-10\\\";}i:60;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-11\\\";}i:61;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-12\\\";}i:62;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-13\\\";}i:63;a:1:{s:4:\\\"code\\\";s:34:\\\"Off_shoulder_boho_dress-variant-14\\\";}i:64;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-0\\\";}i:65;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-1\\\";}i:66;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-2\\\";}i:67;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-3\\\";}i:68;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-4\\\";}i:69;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-5\\\";}i:70;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-6\\\";}i:71;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-7\\\";}i:72;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-8\\\";}i:73;a:1:{s:4:\\\"code\\\";s:36:\\\"Ruffle_wrap_festival_dress-variant-9\\\";}i:74;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-10\\\";}i:75;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-11\\\";}i:76;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-12\\\";}i:77;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-13\\\";}i:78;a:1:{s:4:\\\"code\\\";s:37:\\\"Ruffle_wrap_festival_dress-variant-14\\\";}i:79;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-0\\\";}i:80;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-1\\\";}i:81;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-2\\\";}i:82;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-3\\\";}i:83;a:1:{s:4:\\\"code\\\";s:32:\\\"911M_regular_fit_jeans-variant-4\\\";}i:84;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-0\\\";}i:85;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-1\\\";}i:86;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-2\\\";}i:87;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-3\\\";}i:88;a:1:{s:4:\\\"code\\\";s:29:\\\"330M_slim_fit_jeans-variant-4\\\";}i:89;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-0\\\";}i:90;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-1\\\";}i:91;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-2\\\";}i:92;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-3\\\";}i:93;a:1:{s:4:\\\"code\\\";s:32:\\\"990M_regular_fit_jeans-variant-4\\\";}i:94;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-0\\\";}i:95;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-1\\\";}i:96;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-2\\\";}i:97;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-3\\\";}i:98;a:1:{s:4:\\\"code\\\";s:35:\\\"007M_black_elegance_jeans-variant-4\\\";}i:99;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-0\\\";}}}}','[]','default','2023-01-18 20:40:30','2023-01-18 20:40:30',NULL),(28,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:19:{i:0;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-1\\\";}i:1;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-2\\\";}i:2;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-3\\\";}i:3;a:1:{s:4:\\\"code\\\";s:36:\\\"727F_patched_cropped_jeans-variant-4\\\";}i:4;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-0\\\";}i:5;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-1\\\";}i:6;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-2\\\";}i:7;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-3\\\";}i:8;a:1:{s:4:\\\"code\\\";s:46:\\\"111F_patched_jeans_with_fancy_badges-variant-4\\\";}i:9;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-0\\\";}i:10;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-1\\\";}i:11;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-2\\\";}i:12;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-3\\\";}i:13;a:1:{s:4:\\\"code\\\";s:32:\\\"000F_office_grey_jeans-variant-4\\\";}i:14;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-0\\\";}i:15;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-1\\\";}i:16;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-2\\\";}i:17;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-3\\\";}i:18;a:1:{s:4:\\\"code\\\";s:40:\\\"666F_boyfriend_jeans_with_rips-variant-4\\\";}}}}','[]','default','2023-01-18 20:40:30','2023-01-18 20:40:30',NULL),(29,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"summer\\\";}}','[]','default','2023-01-18 20:40:30','2023-01-18 20:40:30',NULL),(30,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"summer\\\";}}','[]','default','2023-01-18 20:40:30','2023-01-18 20:40:30',NULL),(31,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"spring\\\";}}','[]','default','2023-01-18 20:40:30','2023-01-18 20:40:30',NULL),(32,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"spring\\\";}}','[]','default','2023-01-18 20:40:30','2023-01-18 20:40:30',NULL),(33,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"winter\\\";}}','[]','default','2023-01-18 20:40:30','2023-01-18 20:40:30',NULL),(34,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:77:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\UpdateCatalogPromotionState\\\":1:{s:4:\\\"code\\\";s:6:\\\"winter\\\";}}','[]','default','2023-01-18 20:40:30','2023-01-18 20:40:30',NULL),(35,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:1:{i:0;s:34:\\\"variant fromage-de-bleu-d-auvergne\\\";}}}','[]','default','2023-01-19 18:09:15','2023-01-19 18:09:15',NULL),(36,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:1:{i:0;s:36:\\\"variant fromage-de-bleu-de-roquefort\\\";}}}','[]','default','2023-01-19 18:28:12','2023-01-19 18:28:12',NULL),(37,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:1:{i:0;s:39:\\\"variant fromage-de-chevre-de-rocamadour\\\";}}}','[]','default','2023-01-19 18:28:47','2023-01-19 18:28:47',NULL),(38,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:18:\\\"sylius.command_bus\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:82:\\\"Sylius\\\\Bundle\\\\CoreBundle\\\\CatalogPromotion\\\\Command\\\\ApplyCatalogPromotionsOnVariants\\\":1:{s:13:\\\"variantsCodes\\\";a:1:{i:0;s:31:\\\"variant fromage-de-chevre-frais\\\";}}}','[]','default','2023-01-19 18:29:04','2023-01-19 18:29:04',NULL);
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address`
--

LOCK TABLES `sylius_address` WRITE;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
INSERT INTO `sylius_address` VALUES (337,136,'Claudine','Leveque',NULL,'rue Bonnin',NULL,'Bouvier-sur-Marchand','76509','2023-01-18 22:44:00','2023-01-18 22:44:00','FR',NULL,NULL),(340,NULL,'Claudine','Leveque',NULL,'rue Bonnin',NULL,'Bouvier-sur-Marchand','76509','2023-01-18 22:44:00','2023-01-18 22:44:00','FR',NULL,NULL),(341,NULL,'Claudine','Leveque',NULL,'rue Bonnin',NULL,'Bouvier-sur-Marchand','76509','2023-01-19 18:31:39','2023-01-19 18:31:39','FR',NULL,NULL);
/*!40000 ALTER TABLE `sylius_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address_log_entries`
--

DROP TABLE IF EXISTS `sylius_address_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_address_log_entries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `version` int NOT NULL,
  `data` longtext COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address_log_entries`
--

LOCK TABLES `sylius_address_log_entries` WRITE;
/*!40000 ALTER TABLE `sylius_address_log_entries` DISABLE KEYS */;
INSERT INTO `sylius_address_log_entries` VALUES (339,'create','2023-01-18 22:44:00','337','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(340,'create','2023-01-18 23:00:01','338','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com'),(341,'remove','2023-01-19 18:16:13','338','App\\Entity\\Addressing\\Address',2,'N;','meltedcheese-client@meltedcheese.com'),(342,'create','2023-01-19 18:16:46','339','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com'),(343,'remove','2023-01-19 18:29:33','339','App\\Entity\\Addressing\\Address',2,'N;','meltedcheese-client@meltedcheese.com'),(344,'create','2023-01-19 18:29:48','340','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com'),(345,'create','2023-01-19 18:31:39','341','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com');
/*!40000 ALTER TABLE `sylius_address_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_adjustment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `order_item_id` int DEFAULT NULL,
  `order_item_unit_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `amount` int NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipment_id` int DEFAULT NULL,
  `details` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  KEY `IDX_ACA6E0F27BE036FC` (`shipment_id`),
  CONSTRAINT `FK_ACA6E0F27BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7285 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_adjustment`
--

LOCK TABLES `sylius_adjustment` WRITE;
/*!40000 ALTER TABLE `sylius_adjustment` DISABLE KEYS */;
INSERT INTO `sylius_adjustment` VALUES (7281,108,NULL,NULL,'shipping','Ups',500,0,0,NULL,'2023-01-19 18:31:39','2023-01-19 18:31:39',74,'{\"shippingMethodCode\": \"ups\", \"shippingMethodName\": \"Ups\"}'),(7282,108,NULL,NULL,'tax','20% (20%)',100,0,0,NULL,'2023-01-19 18:31:39','2023-01-19 18:31:39',74,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2, \"shippingMethodCode\": \"ups\", \"shippingMethodName\": \"Ups\"}'),(7283,NULL,NULL,6112,'order_promotion','Réduction newsletter',-35,0,0,'newsletter-reduction','2023-01-19 18:31:39','2023-01-19 18:31:39',NULL,'[]'),(7284,NULL,NULL,6112,'tax','20% (20%)',134,0,0,NULL,'2023-01-19 18:31:39','2023-01-19 18:31:39',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}');
/*!40000 ALTER TABLE `sylius_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_user`
--

DROP TABLE IF EXISTS `sylius_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_admin_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8mb3_unicode_ci NOT NULL,
  `encoder_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_user`
--

LOCK TABLES `sylius_admin_user` WRITE;
/*!40000 ALTER TABLE `sylius_admin_user` DISABLE KEYS */;
INSERT INTO `sylius_admin_user` VALUES (56,'adrien','adrien',1,'qjcfkyrfbfkgwg8wcoooo0wwso8sw8k','$argon2i$v=19$m=65536,t=4,p=1$dWJUZ0Z1aE9TZU5vUHdrRQ$jPGViM+8KEN4tJ0qtXdXjEgKWssUU3Cld5qj2bj4OrQ','2023-01-19 18:03:30',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','adrien@gmail.com','adrien@gmail.com','2023-01-18 22:44:00','2023-01-19 18:03:30','Adrien','PEREZ','fr_FR','argon2i');
/*!40000 ALTER TABLE `sylius_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_avatar_image`
--

DROP TABLE IF EXISTS `sylius_avatar_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_avatar_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1068A3A97E3C61F9` (`owner_id`),
  CONSTRAINT `FK_1068A3A97E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_avatar_image`
--

LOCK TABLES `sylius_avatar_image` WRITE;
/*!40000 ALTER TABLE `sylius_avatar_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_avatar_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_catalog_promotion`
--

DROP TABLE IF EXISTS `sylius_catalog_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_catalog_promotion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL DEFAULT '0',
  `exclusive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1055865077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_catalog_promotion`
--

LOCK TABLES `sylius_catalog_promotion` WRITE;
/*!40000 ALTER TABLE `sylius_catalog_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_catalog_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_catalog_promotion_action`
--

DROP TABLE IF EXISTS `sylius_catalog_promotion_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_catalog_promotion_action` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catalog_promotion_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_F529624722E2CB5A` (`catalog_promotion_id`),
  CONSTRAINT `FK_F529624722E2CB5A` FOREIGN KEY (`catalog_promotion_id`) REFERENCES `sylius_catalog_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_catalog_promotion_action`
--

LOCK TABLES `sylius_catalog_promotion_action` WRITE;
/*!40000 ALTER TABLE `sylius_catalog_promotion_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_catalog_promotion_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_catalog_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_catalog_promotion_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_catalog_promotion_channels` (
  `catalog_promotion_id` int NOT NULL,
  `channel_id` int NOT NULL,
  PRIMARY KEY (`catalog_promotion_id`,`channel_id`),
  KEY `IDX_48E9AE7622E2CB5A` (`catalog_promotion_id`),
  KEY `IDX_48E9AE7672F5A1AA` (`channel_id`),
  CONSTRAINT `FK_48E9AE7622E2CB5A` FOREIGN KEY (`catalog_promotion_id`) REFERENCES `sylius_catalog_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9AE7672F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_catalog_promotion_channels`
--

LOCK TABLES `sylius_catalog_promotion_channels` WRITE;
/*!40000 ALTER TABLE `sylius_catalog_promotion_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_catalog_promotion_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_catalog_promotion_scope`
--

DROP TABLE IF EXISTS `sylius_catalog_promotion_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_catalog_promotion_scope` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promotion_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_584AA86A139DF194` (`promotion_id`),
  CONSTRAINT `FK_584AA86A139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_catalog_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_catalog_promotion_scope`
--

LOCK TABLES `sylius_catalog_promotion_scope` WRITE;
/*!40000 ALTER TABLE `sylius_catalog_promotion_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_catalog_promotion_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_catalog_promotion_translation`
--

DROP TABLE IF EXISTS `sylius_catalog_promotion_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_catalog_promotion_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_catalog_promotion_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_BA065D3C2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_BA065D3C2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_catalog_promotion` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_catalog_promotion_translation`
--

LOCK TABLES `sylius_catalog_promotion_translation` WRITE;
/*!40000 ALTER TABLE `sylius_catalog_promotion_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_catalog_promotion_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_channel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `default_locale_id` int NOT NULL,
  `base_currency_id` int NOT NULL,
  `default_tax_zone_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb3_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `shop_billing_data_id` int DEFAULT NULL,
  `menu_taxon_id` int DEFAULT NULL,
  `contact_phone_number` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_address_in_checkout_required` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  UNIQUE KEY `UNIQ_16C8119EB5282EDF` (`shop_billing_data_id`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`),
  KEY `IDX_16C8119EF242B1E6` (`menu_taxon_id`),
  CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_16C8119EB5282EDF` FOREIGN KEY (`shop_billing_data_id`) REFERENCES `sylius_shop_billing_data` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_16C8119EF242B1E6` FOREIGN KEY (`menu_taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel`
--

LOCK TABLES `sylius_channel` WRITE;
/*!40000 ALTER TABLE `sylius_channel` DISABLE KEYS */;
INSERT INTO `sylius_channel` VALUES (46,78,128,62,'melted_cheese','melted_cheese',NULL,NULL,1,NULL,'2023-01-18 22:44:00','2023-01-18 22:44:01',NULL,'order_items_based','melted_cheese@gmail.com',0,0,0,NULL,234,NULL,0);
/*!40000 ALTER TABLE `sylius_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_countries`
--

DROP TABLE IF EXISTS `sylius_channel_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_channel_countries` (
  `channel_id` int NOT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`channel_id`,`country_id`),
  KEY `IDX_D96E51AE72F5A1AA` (`channel_id`),
  KEY `IDX_D96E51AEF92F3E70` (`country_id`),
  CONSTRAINT `FK_D96E51AE72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D96E51AEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_countries`
--

LOCK TABLES `sylius_channel_countries` WRITE;
/*!40000 ALTER TABLE `sylius_channel_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_channel_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int NOT NULL,
  `currency_id` int NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_currencies`
--

LOCK TABLES `sylius_channel_currencies` WRITE;
/*!40000 ALTER TABLE `sylius_channel_currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_channel_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_channel_locales` (
  `channel_id` int NOT NULL,
  `locale_id` int NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_locales`
--

LOCK TABLES `sylius_channel_locales` WRITE;
/*!40000 ALTER TABLE `sylius_channel_locales` DISABLE KEYS */;
INSERT INTO `sylius_channel_locales` VALUES (46,78);
/*!40000 ALTER TABLE `sylius_channel_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_pricing`
--

DROP TABLE IF EXISTS `sylius_channel_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_channel_pricing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_variant_id` int NOT NULL,
  `price` int DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `original_price` int DEFAULT NULL,
  `minimum_price` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`),
  CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=637 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_pricing`
--

LOCK TABLES `sylius_channel_pricing` WRITE;
/*!40000 ALTER TABLE `sylius_channel_pricing` DISABLE KEYS */;
INSERT INTO `sylius_channel_pricing` VALUES (629,629,1979,'melted_cheese',NULL,0),(630,630,1155,'melted_cheese',NULL,0),(631,631,580,'melted_cheese',NULL,0),(632,632,705,'melted_cheese',NULL,0),(633,633,1619,'melted_cheese',NULL,0),(634,634,703,'melted_cheese',NULL,0),(635,635,1330,'melted_cheese',NULL,0),(636,636,554,'melted_cheese',NULL,0);
/*!40000 ALTER TABLE `sylius_channel_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_pricing_catalog_promotions`
--

DROP TABLE IF EXISTS `sylius_channel_pricing_catalog_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_channel_pricing_catalog_promotions` (
  `channel_pricing_id` int NOT NULL,
  `catalog_promotion_id` int NOT NULL,
  PRIMARY KEY (`channel_pricing_id`,`catalog_promotion_id`),
  KEY `IDX_9F52FF513EADFFE5` (`channel_pricing_id`),
  KEY `IDX_9F52FF5122E2CB5A` (`catalog_promotion_id`),
  CONSTRAINT `FK_9F52FF5122E2CB5A` FOREIGN KEY (`catalog_promotion_id`) REFERENCES `sylius_catalog_promotion` (`id`),
  CONSTRAINT `FK_9F52FF513EADFFE5` FOREIGN KEY (`channel_pricing_id`) REFERENCES `sylius_channel_pricing` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_pricing_catalog_promotions`
--

LOCK TABLES `sylius_channel_pricing_catalog_promotions` WRITE;
/*!40000 ALTER TABLE `sylius_channel_pricing_catalog_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_channel_pricing_catalog_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_country`
--

LOCK TABLES `sylius_country` WRITE;
/*!40000 ALTER TABLE `sylius_country` DISABLE KEYS */;
INSERT INTO `sylius_country` VALUES (137,'BR',1),(138,'FR',1);
/*!40000 ALTER TABLE `sylius_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_currency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_currency`
--

LOCK TABLES `sylius_currency` WRITE;
/*!40000 ALTER TABLE `sylius_currency` DISABLE KEYS */;
INSERT INTO `sylius_currency` VALUES (127,'USD','2023-01-18 22:44:00','2023-01-18 22:44:00'),(128,'EUR','2023-01-18 22:44:00','2023-01-18 22:44:00');
/*!40000 ALTER TABLE `sylius_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_group_id` int DEFAULT NULL,
  `default_address_id` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  KEY `created_at_index` (`created_at` DESC),
  CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer`
--

LOCK TABLES `sylius_customer` WRITE;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
INSERT INTO `sylius_customer` VALUES (136,9,337,'meltedCheese-client@meltedcheese.com','meltedcheese-client@meltedcheese.com','Claudine','Leveque',NULL,'u','2023-01-18 22:44:00','2023-01-19 08:57:40','01 69 70 13 30',1);
/*!40000 ALTER TABLE `sylius_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_customer_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer_group`
--

LOCK TABLES `sylius_customer_group` WRITE;
/*!40000 ALTER TABLE `sylius_customer_group` DISABLE KEYS */;
INSERT INTO `sylius_customer_group` VALUES (9,'newsletter','newsletter');
/*!40000 ALTER TABLE `sylius_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_exchange_rate`
--

DROP TABLE IF EXISTS `sylius_exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_exchange_rate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source_currency` int NOT NULL,
  `target_currency` int NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`),
  CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_exchange_rate`
--

LOCK TABLES `sylius_exchange_rate` WRITE;
/*!40000 ALTER TABLE `sylius_exchange_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_exchange_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_gateway_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `config` json NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_gateway_config`
--

LOCK TABLES `sylius_gateway_config` WRITE;
/*!40000 ALTER TABLE `sylius_gateway_config` DISABLE KEYS */;
INSERT INTO `sylius_gateway_config` VALUES (42,'[]','gateway','gateway_name');
/*!40000 ALTER TABLE `sylius_gateway_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_locale` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_locale`
--

LOCK TABLES `sylius_locale` WRITE;
/*!40000 ALTER TABLE `sylius_locale` DISABLE KEYS */;
INSERT INTO `sylius_locale` VALUES (78,'fr_FR','2023-01-18 22:44:00','2023-01-18 22:44:00');
/*!40000 ALTER TABLE `sylius_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_migrations`
--

DROP TABLE IF EXISTS `sylius_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_migrations` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_migrations`
--

LOCK TABLES `sylius_migrations` WRITE;
/*!40000 ALTER TABLE `sylius_migrations` DISABLE KEYS */;
INSERT INTO `sylius_migrations` VALUES ('App\\Migrations\\Version20230115135315','2023-01-16 08:15:13',18),('App\\Migrations\\Version20230115172315','2023-01-16 08:15:13',74),('App\\Migrations\\Version20230119191415','2023-01-19 19:14:38',38),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161202011555','2023-01-16 08:15:00',6427),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161209095131','2023-01-16 08:15:06',1),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161214153137','2023-01-16 08:15:06',100),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161215103325','2023-01-16 08:15:06',26),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161219160441','2023-01-16 08:15:06',127),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161220092422','2023-01-16 08:15:06',19),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161221133514','2023-01-16 08:15:06',15),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223091334','2023-01-16 08:15:06',20),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223164558','2023-01-16 08:15:06',20),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170103120334','2023-01-16 08:15:06',21),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170109143010','2023-01-16 08:15:06',14),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170110120125','2023-01-16 08:15:06',65),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170116215417','2023-01-16 08:15:07',93),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170117075436','2023-01-16 08:15:07',21),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170120164250','2023-01-16 08:15:07',47),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170124221955','2023-01-16 08:15:07',18),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170201094058','2023-01-16 08:15:07',88),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206122839','2023-01-16 08:15:07',13),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206141520','2023-01-16 08:15:07',23),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208102345','2023-01-16 08:15:07',33),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208103250','2023-01-16 08:15:07',46),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214095710','2023-01-16 08:15:07',98),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214104908','2023-01-16 08:15:07',27),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170215143031','2023-01-16 08:15:07',28),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170217141621','2023-01-16 08:15:07',56),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170220150813','2023-01-16 08:15:07',27),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170223071604','2023-01-16 08:15:07',90),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170301135010','2023-01-16 08:15:07',131),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170303170201','2023-01-16 08:15:07',17),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170321131352','2023-01-16 08:15:07',21),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170327135945','2023-01-16 08:15:07',67),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170401200415','2023-01-16 08:15:08',28),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170518123056','2023-01-16 08:15:08',14),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170824124122','2023-01-16 08:15:08',83),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170913125128','2023-01-16 08:15:08',31),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20171003103916','2023-01-16 08:15:08',17),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180102140039','2023-01-16 08:15:08',29),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180226142349','2023-01-16 08:15:08',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109095211','2023-01-16 08:15:08',161),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109160409','2023-01-16 08:15:08',35),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190204092544','2023-01-16 08:15:08',29),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190416073011','2023-01-16 08:15:08',20),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190607135638','2023-01-16 08:15:08',67),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20191024065651','2023-01-16 08:15:08',67),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200110132702','2023-01-16 08:15:08',196),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200122082429','2023-01-16 08:15:08',128),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200202104152','2023-01-16 08:15:09',17),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200309172908','2023-01-16 08:15:09',20),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200325075815','2023-01-16 08:15:09',23),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200916093101','2023-01-16 08:15:09',39),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201017150005','2023-01-16 08:15:09',28),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201104085538','2023-01-16 08:15:09',56),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201130071338','2023-01-16 08:15:09',679),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201204071301','2023-01-16 08:15:09',419),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201208105207','2023-01-16 08:15:10',1),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210311142134','2023-01-16 08:15:10',68),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210408131321','2023-01-16 08:15:10',29),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210422105530','2023-01-16 08:15:10',18),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210809121349','2023-01-16 08:15:10',23),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210819203611','2023-01-16 08:15:10',22),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210824132538','2023-01-16 08:15:10',70),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210825090004','2023-01-16 08:15:10',81),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210826054355','2023-01-16 08:15:10',189),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210826063828','2023-01-16 08:15:10',67),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210830193340','2023-01-16 08:15:10',17),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210921093619','2023-01-16 08:15:10',18),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211001073918','2023-01-16 08:15:10',75),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211006182150','2023-01-16 08:15:11',19),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211008105704','2023-01-16 08:15:11',19),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211018130725','2023-01-16 08:15:11',139),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211025082311','2023-01-16 08:15:11',14),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211028150911','2023-01-16 08:15:11',18),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211122104644','2023-01-16 08:15:11',19),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211125085254','2023-01-16 08:15:11',7),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211125122631','2023-01-16 08:15:11',22),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211129213836','2023-01-16 08:15:11',138),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220127150747','2023-01-16 08:15:11',20),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220203115813','2023-01-16 08:15:11',516),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220210135918','2023-01-16 08:15:11',35),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220407131547','2023-01-16 08:15:12',768),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220412144156','2023-01-16 08:15:12',0),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220614124639','2023-01-16 08:15:12',0),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220728115129','2023-01-16 08:15:12',31),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220803125615','2023-01-16 08:15:12',57),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220912091947','2023-01-16 08:15:12',16),('Sylius\\PayPalPlugin\\Migrations\\Version20200907102535','2023-01-16 08:15:12',68);
/*!40000 ALTER TABLE `sylius_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int DEFAULT NULL,
  `billing_address_id` int DEFAULT NULL,
  `channel_id` int DEFAULT NULL,
  `promotion_coupon_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8mb3_unicode_ci,
  `state` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int NOT NULL,
  `adjustments_total` int NOT NULL,
  `total` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8mb3_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_by_guest` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  UNIQUE KEY `UNIQ_6196A1F9BEA95C75` (`token_value`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  KEY `IDX_6196A1F9A393D2FB43625D9F` (`state`,`updated_at`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order`
--

LOCK TABLES `sylius_order` WRITE;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
INSERT INTO `sylius_order` VALUES (108,341,340,46,NULL,136,NULL,NULL,'cart',NULL,802,600,1402,'2023-01-19 18:29:48','2023-01-19 18:31:39','EUR','fr_FR','addressed','cart','cart',NULL,NULL,0);
/*!40000 ALTER TABLE `sylius_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` int NOT NULL,
  `units_total` int NOT NULL,
  `adjustments_total` int NOT NULL,
  `total` int NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `original_unit_price` int DEFAULT NULL,
  `weight` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item`
--

LOCK TABLES `sylius_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
INSERT INTO `sylius_order_item` VALUES (283,108,634,1,703,802,0,802,0,NULL,NULL,1,703,NULL);
/*!40000 ALTER TABLE `sylius_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_order_item_unit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_item_id` int NOT NULL,
  `shipment_id` int DEFAULT NULL,
  `adjustments_total` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6113 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item_unit`
--

LOCK TABLES `sylius_order_item_unit` WRITE;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
INSERT INTO `sylius_order_item_unit` VALUES (6112,283,74,99,'2023-01-19 18:29:48','2023-01-19 18:29:48');
/*!40000 ALTER TABLE `sylius_order_item_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_sequence`
--

DROP TABLE IF EXISTS `sylius_order_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_order_sequence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idx` int NOT NULL,
  `version` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_sequence`
--

LOCK TABLES `sylius_order_sequence` WRITE;
/*!40000 ALTER TABLE `sylius_order_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `method_id` int DEFAULT NULL,
  `order_id` int NOT NULL,
  `currency_code` varchar(3) COLLATE utf8mb3_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `state` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `details` json NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment`
--

LOCK TABLES `sylius_payment` WRITE;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
INSERT INTO `sylius_payment` VALUES (106,77,108,'EUR',1402,'cart','[]','2023-01-19 18:29:48','2023-01-19 18:29:48');
/*!40000 ALTER TABLE `sylius_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_payment_method` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gateway_config_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`),
  CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method`
--

LOCK TABLES `sylius_payment_method` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method` DISABLE KEYS */;
INSERT INTO `sylius_payment_method` VALUES (77,'cash_on_delivery',NULL,1,0,'2023-01-18 22:44:00','2023-01-18 22:44:00',42),(78,'bank_transfer',NULL,1,1,'2023-01-18 22:44:01','2023-01-18 22:44:01',42);
/*!40000 ALTER TABLE `sylius_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_channels`
--

DROP TABLE IF EXISTS `sylius_payment_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_payment_method_channels` (
  `payment_method_id` int NOT NULL,
  `channel_id` int NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_channels`
--

LOCK TABLES `sylius_payment_method_channels` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_channels` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_channels` VALUES (77,46),(78,46);
/*!40000 ALTER TABLE `sylius_payment_method_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_payment_method_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb3_unicode_ci,
  `instructions` longtext COLLATE utf8mb3_unicode_ci,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_translation`
--

LOCK TABLES `sylius_payment_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_translation` VALUES (133,77,'Cash on delivery',NULL,NULL,'fr_FR'),(134,78,'Bank transfer',NULL,NULL,'fr_FR');
/*!40000 ALTER TABLE `sylius_payment_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb3_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8mb3_unicode_ci,
  `target_url` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_security_token`
--

LOCK TABLES `sylius_payment_security_token` WRITE;
/*!40000 ALTER TABLE `sylius_payment_security_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment_security_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_paypal_plugin_pay_pal_credentials`
--

DROP TABLE IF EXISTS `sylius_paypal_plugin_pay_pal_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_paypal_plugin_pay_pal_credentials` (
  `id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_method_id` int DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `creation_time` datetime NOT NULL,
  `expiration_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C56F54AD5AA1164F` (`payment_method_id`),
  CONSTRAINT `FK_C56F54AD5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_paypal_plugin_pay_pal_credentials`
--

LOCK TABLES `sylius_paypal_plugin_pay_pal_credentials` WRITE;
/*!40000 ALTER TABLE `sylius_paypal_plugin_pay_pal_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_paypal_plugin_pay_pal_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product`
--

LOCK TABLES `sylius_product` WRITE;
/*!40000 ALTER TABLE `sylius_product` DISABLE KEYS */;
INSERT INTO `sylius_product` VALUES (301,236,'fromage-de-brebis-basque','2023-01-18 22:44:01','2023-01-18 22:44:01',1,'choice',0),(302,236,'fromage-de-brebis-ossau-iraty','2023-01-18 22:44:01','2023-01-18 22:44:01',1,'choice',0),(303,237,'fromage-de-vache-canadien','2023-01-18 22:44:01','2023-01-18 22:44:01',1,'choice',0),(304,237,'fromage-de-vache-turc','2023-01-18 22:44:01','2023-01-18 22:44:01',1,'choice',0),(305,239,'fromage-de-chevre-de-rocamadour','2023-01-18 22:44:01','2023-01-18 22:44:01',1,'choice',0),(306,239,'fromage-de-chevre-frais','2023-01-18 22:44:01','2023-01-18 22:44:01',1,'choice',0),(307,240,'fromage-de-bleu-d-auvergne','2023-01-18 22:44:01','2023-01-18 22:44:01',1,'choice',0),(308,240,'fromage-de-bleu-de-roquefort','2023-01-18 22:44:01','2023-01-18 22:44:01',1,'choice',0);
/*!40000 ALTER TABLE `sylius_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_association` (
  `id` int NOT NULL AUTO_INCREMENT,
  `association_type_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association`
--

LOCK TABLES `sylius_product_association` WRITE;
/*!40000 ALTER TABLE `sylius_product_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_association_product` (
  `association_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_product`
--

LOCK TABLES `sylius_product_association_product` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_type`
--

DROP TABLE IF EXISTS `sylius_product_association_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_association_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_type`
--

LOCK TABLES `sylius_product_association_type` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_type_translation`
--

DROP TABLE IF EXISTS `sylius_product_association_type_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_association_type_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_type_translation`
--

LOCK TABLES `sylius_product_association_type_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_type_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_type_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_attribute` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int NOT NULL,
  `translatable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute`
--

LOCK TABLES `sylius_product_attribute` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute` VALUES (165,'refining','text','text','a:0:{}','2023-01-18 22:44:01','2023-01-18 22:44:01',0,1),(166,'season','text','text','a:0:{}','2023-01-18 22:44:01','2023-01-18 22:44:01',1,1),(167,'freshing','checkbox','boolean','a:0:{}','2023-01-18 22:44:01','2023-01-18 22:44:01',2,1),(168,'cuttype','checkbox','boolean','a:0:{}','2023-01-18 22:44:01','2023-01-18 22:44:01',3,1);
/*!40000 ALTER TABLE `sylius_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_attribute_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_translation`
--

LOCK TABLES `sylius_product_attribute_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_translation` VALUES (557,165,'Refining','fr_FR'),(558,166,'Season','fr_FR'),(559,167,'Freshing','fr_FR'),(560,168,'CutType','fr_FR');
/*!40000 ALTER TABLE `sylius_product_attribute_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_attribute_value` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `text_value` longtext COLLATE utf8mb3_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` json DEFAULT NULL,
  `locale_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2921 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_value`
--

LOCK TABLES `sylius_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_value` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_value` VALUES (2889,301,165,'6mois',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2890,301,166,'Printemps/Eté',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2891,301,167,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(2892,301,168,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(2893,302,165,'6mois',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2894,302,166,'Printemps/Eté',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2895,302,167,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(2896,302,168,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(2897,303,165,'6mois',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2898,303,166,'Printemps/Eté',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2899,303,167,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(2900,303,168,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(2901,304,165,'6mois',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2902,304,166,'Printemps/Eté',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2903,304,167,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(2904,304,168,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(2905,305,165,'6mois',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2906,305,166,'Printemps/Eté',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2907,305,167,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(2908,305,168,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(2909,306,165,'6mois',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2910,306,166,'Printemps/Eté',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2911,306,167,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(2912,306,168,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(2913,307,165,'6mois',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2914,307,166,'Printemps/Eté',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2915,307,167,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(2916,307,168,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(2917,308,165,'6mois',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2918,308,166,'Printemps/Eté',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2919,308,167,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(2920,308,168,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sylius_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_channels` (
  `product_id` int NOT NULL,
  `channel_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_channels`
--

LOCK TABLES `sylius_product_channels` WRITE;
/*!40000 ALTER TABLE `sylius_product_channels` DISABLE KEYS */;
INSERT INTO `sylius_product_channels` VALUES (301,46),(302,46),(303,46),(304,46),(305,46),(306,46),(307,46),(308,46);
/*!40000 ALTER TABLE `sylius_product_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image`
--

DROP TABLE IF EXISTS `sylius_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image`
--

LOCK TABLES `sylius_product_image` WRITE;
/*!40000 ALTER TABLE `sylius_product_image` DISABLE KEYS */;
INSERT INTO `sylius_product_image` VALUES (301,301,NULL,'1b/e5/16886c842836279ec365cac02ca0.jpg'),(302,302,NULL,'7d/4b/6bdf814efcd34e6fa18f26616cf1.jpg'),(303,303,NULL,'56/7e/f6f3cccdbf3e79660b4b7b93308d.jpg'),(304,304,NULL,'b3/00/8401e14fc5183c803fe9245fde7e.jpg'),(305,305,NULL,'ac/72/b248ed874a8fa2dd441d4217f50c.jpg'),(306,306,NULL,'35/64/60a61a358d8b83a1a6b26aed1cbc.jpg'),(307,307,NULL,'74/1f/77c8ef41d725e0717ac765f36d02.jpg'),(308,308,NULL,'e4/0a/72ce2e1a109d89f348bf7ff36b48.jpg');
/*!40000 ALTER TABLE `sylius_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image_product_variants`
--

DROP TABLE IF EXISTS `sylius_product_image_product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_image_product_variants` (
  `image_id` int NOT NULL,
  `variant_id` int NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image_product_variants`
--

LOCK TABLES `sylius_product_image_product_variants` WRITE;
/*!40000 ALTER TABLE `sylius_product_image_product_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_image_product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_option` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option`
--

LOCK TABLES `sylius_product_option` WRITE;
/*!40000 ALTER TABLE `sylius_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_option_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_translation`
--

LOCK TABLES `sylius_product_option_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_option_value` (
  `id` int NOT NULL AUTO_INCREMENT,
  `option_id` int NOT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value`
--

LOCK TABLES `sylius_product_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_option_value_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `value` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value_translation`
--

LOCK TABLES `sylius_product_option_value_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_options` (
  `product_id` int NOT NULL,
  `option_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_options`
--

LOCK TABLES `sylius_product_options` WRITE;
/*!40000 ALTER TABLE `sylius_product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rating` int NOT NULL,
  `comment` longtext COLLATE utf8mb3_unicode_ci,
  `status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_review`
--

LOCK TABLES `sylius_product_review` WRITE;
/*!40000 ALTER TABLE `sylius_product_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_taxon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `taxon_id` int NOT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_taxon`
--

LOCK TABLES `sylius_product_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_product_taxon` DISABLE KEYS */;
INSERT INTO `sylius_product_taxon` VALUES (373,301,236,2),(374,302,236,1),(375,303,237,2),(376,304,237,1),(377,305,239,2),(378,306,239,1),(379,307,240,2),(380,308,240,1);
/*!40000 ALTER TABLE `sylius_product_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb3_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8mb3_unicode_ci,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=897 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_translation`
--

LOCK TABLES `sylius_product_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_translation` VALUES (889,301,'Fromage de brebis basque','fromage-de-brebis-basque','Un fromage qui provient du coeur du pays basque.Un fromage qui provient du coeur du pays basque.',NULL,NULL,'Un fromage qui provient du coeur du pays basque.','fr_FR'),(890,302,'Fromage de brebis Ossau Iraty','fromage-de-brebis-ossau-iraty','un fromage de brebis pure souche Ossau Iraty.un fromage de brebis pure souche Ossau Iraty.',NULL,NULL,'un fromage de brebis pure souche Ossau Iraty.','fr_FR'),(891,303,'Fromage de vache canadien','fromage-de-vache-canadien','Un fromage de vache du canada.Un fromage de vache du canada.',NULL,NULL,'Un fromage de vache du canada.','fr_FR'),(892,304,'Fromage de vache turc','fromage-de-vache-turc','Un fromage de vache turc.Un fromage de vache turc.',NULL,NULL,'Un fromage de vache turc.','fr_FR'),(893,305,'Fromage de chèvre de rocamadour','fromage-de-chevre-de-rocamadour','Un fromage de chèvre qui provient de rocamadour.Un fromage de chèvre qui provient de rocamadour.',NULL,NULL,'Un fromage de chèvre qui provient de rocamadour.','fr_FR'),(894,306,'Fromage de chèvre frais','fromage-de-chevre-frais','Un fromage rafraîchissant l\'été.Un fromage rafraîchissant l\'été.',NULL,NULL,'Un fromage rafraîchissant l\'été.','fr_FR'),(895,307,'Fromage de bleu d\'auvergne','fromage-de-bleu-d-auvergne','Un fromage bleu authentique d\'Auvergne.Un fromage bleu authentique d\'Auvergne.',NULL,NULL,'Un fromage bleu authentique d\'Auvergne.','fr_FR'),(896,308,'Fromage de bleu de roquefort','fromage-de-bleu-de-roquefort','Un fromage de bleu de roquefort pour agrémenter vos lasagnes.Un fromage de bleu de roquefort pour agrémenter vos lasagnes.',NULL,NULL,'Un fromage de bleu de roquefort pour agrémenter vos lasagnes.','fr_FR');
/*!40000 ALTER TABLE `sylius_product_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_variant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `tax_category_id` int DEFAULT NULL,
  `shipping_category_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `on_hold` int NOT NULL,
  `on_hand` int NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `position` int NOT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  `version` int NOT NULL DEFAULT '1',
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=637 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant`
--

LOCK TABLES `sylius_product_variant` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant` DISABLE KEYS */;
INSERT INTO `sylius_product_variant` VALUES (629,301,44,NULL,'variant fromage-de-brebis-basque','2023-01-18 22:44:01','2023-01-18 22:44:01',0,100000,1,NULL,NULL,NULL,NULL,1,1,1,1),(630,302,44,NULL,'variant fromage-de-brebis-ossau-iraty','2023-01-18 22:44:01','2023-01-18 22:44:01',0,100000,1,NULL,NULL,NULL,NULL,1,1,1,1),(631,303,44,NULL,'variant fromage-de-vache-canadien','2023-01-18 22:44:01','2023-01-18 22:44:01',0,100000,1,NULL,NULL,NULL,NULL,1,1,1,1),(632,304,44,NULL,'variant fromage-de-vache-turc','2023-01-18 22:44:01','2023-01-18 22:44:01',0,100000,1,NULL,NULL,NULL,NULL,1,1,1,1),(633,305,44,3,'variant fromage-de-chevre-de-rocamadour','2023-01-18 22:44:01','2023-01-19 18:28:47',0,100,1,NULL,NULL,NULL,NULL,1,1,2,1),(634,306,44,3,'variant fromage-de-chevre-frais','2023-01-18 22:44:01','2023-01-19 18:29:04',0,100,1,NULL,NULL,NULL,NULL,1,1,2,1),(635,307,44,3,'variant fromage-de-bleu-d-auvergne','2023-01-18 22:44:01','2023-01-19 18:09:15',0,100,1,NULL,NULL,NULL,NULL,1,1,2,1),(636,308,44,3,'variant fromage-de-bleu-de-roquefort','2023-01-18 22:44:01','2023-01-19 18:28:12',0,100,1,NULL,NULL,NULL,NULL,1,1,2,1);
/*!40000 ALTER TABLE `sylius_product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int NOT NULL,
  `option_value_id` int NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_option_value`
--

LOCK TABLES `sylius_product_variant_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_translation`
--

DROP TABLE IF EXISTS `sylius_product_variant_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_product_variant_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=637 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_translation`
--

LOCK TABLES `sylius_product_variant_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_variant_translation` VALUES (629,629,'name fromage-de-brebis-basque','fr_FR'),(630,630,'name fromage-de-brebis-ossau-iraty','fr_FR'),(631,631,'name fromage-de-vache-canadien','fr_FR'),(632,632,'name fromage-de-vache-turc','fr_FR'),(633,633,'name fromage-de-chevre-de-rocamadour','fr_FR'),(634,634,'name fromage-de-chevre-frais','fr_FR'),(635,635,'name fromage-de-bleu-d-auvergne','fr_FR'),(636,636,'name fromage-de-bleu-de-roquefort','fr_FR');
/*!40000 ALTER TABLE `sylius_product_variant_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_promotion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `priority` int NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int DEFAULT NULL,
  `used` int NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `applies_to_discounted` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion`
--

LOCK TABLES `sylius_promotion` WRITE;
/*!40000 ALTER TABLE `sylius_promotion` DISABLE KEYS */;
INSERT INTO `sylius_promotion` VALUES (9,'newsletter-reduction','Réduction newsletter',NULL,0,0,NULL,0,0,NULL,NULL,'2023-01-18 23:34:10','2023-01-18 23:34:10',1);
/*!40000 ALTER TABLE `sylius_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_promotion_action` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promotion_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_action`
--

LOCK TABLES `sylius_promotion_action` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_action` DISABLE KEYS */;
INSERT INTO `sylius_promotion_action` VALUES (9,9,'order_percentage_discount','a:1:{s:10:\"percentage\";d:0.05;}');
/*!40000 ALTER TABLE `sylius_promotion_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int NOT NULL,
  `channel_id` int NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_channels`
--

LOCK TABLES `sylius_promotion_channels` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_channels` DISABLE KEYS */;
INSERT INTO `sylius_promotion_channels` VALUES (9,46);
/*!40000 ALTER TABLE `sylius_promotion_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_promotion_coupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promotion_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `usage_limit` int DEFAULT NULL,
  `used` int NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int DEFAULT NULL,
  `reusable_from_cancelled_orders` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_coupon`
--

LOCK TABLES `sylius_promotion_coupon` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_promotion_order` (
  `order_id` int NOT NULL,
  `promotion_id` int NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_order`
--

LOCK TABLES `sylius_promotion_order` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_order` DISABLE KEYS */;
INSERT INTO `sylius_promotion_order` VALUES (108,9);
/*!40000 ALTER TABLE `sylius_promotion_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_promotion_rule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promotion_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_rule`
--

LOCK TABLES `sylius_promotion_rule` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_rule` DISABLE KEYS */;
INSERT INTO `sylius_promotion_rule` VALUES (9,9,'customer_group','a:1:{s:10:\"group_code\";s:10:\"newsletter\";}');
/*!40000 ALTER TABLE `sylius_promotion_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_province` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_province`
--

LOCK TABLES `sylius_province` WRITE;
/*!40000 ALTER TABLE `sylius_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_shipment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `method_id` int NOT NULL,
  `order_id` int NOT NULL,
  `state` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `adjustments_total` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipment`
--

LOCK TABLES `sylius_shipment` WRITE;
/*!40000 ALTER TABLE `sylius_shipment` DISABLE KEYS */;
INSERT INTO `sylius_shipment` VALUES (74,43,108,'cart',NULL,'2023-01-19 18:29:48','2023-01-19 18:29:48',NULL,600);
/*!40000 ALTER TABLE `sylius_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_shipping_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb3_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_category`
--

LOCK TABLES `sylius_shipping_category` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_category` DISABLE KEYS */;
INSERT INTO `sylius_shipping_category` VALUES (3,'fresh-product','Produit frais','Un sachet fraîcheur est obligatoire pour cette livraison','2023-01-19 18:05:35','2023-01-19 18:05:35');
/*!40000 ALTER TABLE `sylius_shipping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_shipping_method` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `zone_id` int NOT NULL,
  `tax_category_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int NOT NULL,
  `calculator` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method`
--

LOCK TABLES `sylius_shipping_method` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method` VALUES (43,3,62,44,'ups','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:500;}}',0,'flat_rate',1,0,'2023-01-18 22:44:01','2023-01-19 18:33:19',NULL),(44,3,62,44,'free','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:0;}}',0,'flat_rate',1,1,'2023-01-19 18:06:16','2023-01-19 18:33:36',NULL),(45,3,62,44,'fresh-product','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:650;}}',1,'flat_rate',1,2,'2023-01-19 18:10:40','2023-01-19 18:34:13',NULL),(46,3,62,44,'fresh-product-free','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:150;}}',1,'flat_rate',1,3,'2023-01-19 18:35:00','2023-01-19 18:35:00',NULL);
/*!40000 ALTER TABLE `sylius_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_channels`
--

DROP TABLE IF EXISTS `sylius_shipping_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_shipping_method_channels` (
  `shipping_method_id` int NOT NULL,
  `channel_id` int NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`),
  CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_channels`
--

LOCK TABLES `sylius_shipping_method_channels` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_channels` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_channels` VALUES (43,46),(44,46),(45,46),(46,46);
/*!40000 ALTER TABLE `sylius_shipping_method_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_rule`
--

DROP TABLE IF EXISTS `sylius_shipping_method_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_shipping_method_rule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_88A0EB655F7D6850` (`shipping_method_id`),
  CONSTRAINT `FK_88A0EB655F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_rule`
--

LOCK TABLES `sylius_shipping_method_rule` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_rule` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_rule` VALUES (3,43,'order_total_less_than_or_equal','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:9999;}}'),(4,44,'order_total_greater_than_or_equal','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:10000;}}'),(6,45,'order_total_less_than_or_equal','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:9999;}}'),(7,46,'order_total_greater_than_or_equal','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:10000;}}');
/*!40000 ALTER TABLE `sylius_shipping_method_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_shipping_method_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

LOCK TABLES `sylius_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_translation` VALUES (126,43,'Ups',NULL,'fr_FR'),(127,44,'free',NULL,'fr_FR'),(128,45,'Ups avec produit frais','Frais supplémentaire pour sac réfrigéré','fr_FR'),(129,46,'Livraison gratuite avec Produit frais',NULL,'fr_FR');
/*!40000 ALTER TABLE `sylius_shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_billing_data`
--

DROP TABLE IF EXISTS `sylius_shop_billing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_shop_billing_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_billing_data`
--

LOCK TABLES `sylius_shop_billing_data` WRITE;
/*!40000 ALTER TABLE `sylius_shop_billing_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shop_billing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_shop_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_user`
--

LOCK TABLES `sylius_shop_user` WRITE;
/*!40000 ALTER TABLE `sylius_shop_user` DISABLE KEYS */;
INSERT INTO `sylius_shop_user` VALUES (131,136,'meltedCheese-client@meltedcheese.com','meltedcheese-client@meltedcheese.com',1,'86zw6whtpxk4gkcwcks880s8wg4ckc0','$argon2i$v=19$m=65536,t=4,p=1$WHVYNTI0bHpvNmZJZDlIVQ$MpEmdJhGwhfkPlSYMW8zad4R3ws68PGOwmWkP/tOXrI','2023-01-19 17:35:32',NULL,NULL,NULL,'2023-01-18 22:44:00',0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2023-01-18 22:44:00','2023-01-19 17:35:32','argon2i');
/*!40000 ALTER TABLE `sylius_shop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_tax_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb3_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_category`
--

LOCK TABLES `sylius_tax_category` WRITE;
/*!40000 ALTER TABLE `sylius_tax_category` DISABLE KEYS */;
INSERT INTO `sylius_tax_category` VALUES (44,'vat_normal','Vat_normal',NULL,'2023-01-18 22:44:00','2023-01-18 22:44:00');
/*!40000 ALTER TABLE `sylius_tax_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_tax_rate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `zone_id` int NOT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_rate`
--

LOCK TABLES `sylius_tax_rate` WRITE;
/*!40000 ALTER TABLE `sylius_tax_rate` DISABLE KEYS */;
INSERT INTO `sylius_tax_rate` VALUES (42,44,62,'20%','20%',0.20000,0,'default','2023-01-18 22:44:00','2023-01-18 22:44:00',NULL,NULL);
/*!40000 ALTER TABLE `sylius_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_taxon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tree_root` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tree_left` int NOT NULL,
  `tree_right` int NOT NULL,
  `tree_level` int NOT NULL,
  `position` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon`
--

LOCK TABLES `sylius_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
INSERT INTO `sylius_taxon` VALUES (234,234,NULL,'MENU_CATEGORY',1,14,0,0,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(235,234,234,'cut-cheese',2,7,1,0,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(236,234,235,'cheep-cheese',3,4,2,0,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(237,234,235,'cow-cheese',5,6,2,1,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(238,234,234,'cream-cheese',8,13,1,1,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(239,234,238,'goat-cheese',9,10,2,0,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(240,234,238,'blue-cheese',11,12,2,1,'2023-01-18 22:44:01','2023-01-18 22:44:01',1);
/*!40000 ALTER TABLE `sylius_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_image`
--

DROP TABLE IF EXISTS `sylius_taxon_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_taxon_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`),
  CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_image`
--

LOCK TABLES `sylius_taxon_image` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_taxon_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_taxon_translation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translatable_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb3_unicode_ci,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` VALUES (542,234,'Category','category',NULL,'fr_FR'),(543,235,'Fromage à la coupe','cut-cheese','Fromage à la coupe','fr_FR'),(544,236,'Fromage de brebis','cheep-cheese','Fromage de brebis','fr_FR'),(545,237,'Fromage de vache','cow-cheese','Fromage de vache','fr_FR'),(546,238,'Fromage crémeux ','cream-cheese','Fromage crémeux ','fr_FR'),(547,239,'Fromage de chèvre','goat-cheese','Fromage de chèvre','fr_FR'),(548,240,'Bleu d\'auvergne','blue-cheese','Bleu d\'auvergne','fr_FR');
/*!40000 ALTER TABLE `sylius_taxon_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_user_oauth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_user_oauth`
--

LOCK TABLES `sylius_user_oauth` WRITE;
/*!40000 ALTER TABLE `sylius_user_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_user_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_zone` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone`
--

LOCK TABLES `sylius_zone` WRITE;
/*!40000 ALTER TABLE `sylius_zone` DISABLE KEYS */;
INSERT INTO `sylius_zone` VALUES (62,'FR_BR','Zone France - Brésil','country','all');
/*!40000 ALTER TABLE `sylius_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sylius_zone_member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `belongs_to` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone_member`
--

LOCK TABLES `sylius_zone_member` WRITE;
/*!40000 ALTER TABLE `sylius_zone_member` DISABLE KEYS */;
INSERT INTO `sylius_zone_member` VALUES (114,62,'BR'),(115,62,'FR');
/*!40000 ALTER TABLE `sylius_zone_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19 21:03:54
