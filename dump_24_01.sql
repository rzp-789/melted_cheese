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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipe`
--

LOCK TABLES `Recipe` WRITE;
/*!40000 ALTER TABLE `Recipe` DISABLE KEYS */;
INSERT INTO `Recipe` VALUES (1,'Tarte au choux au bleu d\'auvergne','[{\"code\":\"monsieurbiz.image\",\"data\":{\"image\":\"/media/rich-editor/tarte-63cabb25acb0d.jpg\",\"alt\":\"tarte\",\"title\":\"tarte\",\"link\":null,\"align\":\"\"}},{\"code\":\"monsieurbiz.quote\",\"data\":{\"author\":\"Grand -mère\",\"content\":\"<p>Le choux est un légume qui se marie magnifiquement bien au bleu d’Auvergne.<br></p>\",\"align\":\"left\"}},{\"code\":\"monsieurbiz.separator\",\"data\":{\"hidden\":false}},{\"code\":\"monsieurbiz.html\",\"data\":{\"content\":\"<h1>Recette</h1></br>\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.</p>\"}}]'),(2,'Pizza au fromage frais','[{\"code\":\"monsieurbiz.image\",\"data\":{\"image\":\"/media/rich-editor/pizza-63cab2a42d1b1.jpg\",\"alt\":\"pizza\",\"title\":\"pizza\",\"link\":null,\"align\":\"\"}},{\"code\":\"monsieurbiz.quote\",\"data\":{\"author\":\"Tortues Ninja\",\"content\":\"<p>Je ne pourrais passer plus d\'un jour sans manger une délicieuse pizza au fromage.<br></p>\",\"align\":\"\"}},{\"code\":\"monsieurbiz.separator\",\"data\":{\"hidden\":false}},{\"code\":\"monsieurbiz.html\",\"data\":{\"content\":\"<h1>Recette</h1></br>\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.</p>\"}}]'),(3,'Lasagne à l\'ossau d\'iraty','[{\"code\":\"monsieurbiz.image\",\"data\":{\"image\":\"/media/rich-editor/lasagne-63cab3aab2a1a.jpg\",\"alt\":\"lasagne\",\"title\":\"lasagne\",\"link\":null,\"align\":\"\"}},{\"code\":\"monsieurbiz.quote\",\"data\":{\"author\":\"Chef Italien\",\"content\":\"<p>Rien ne vaut les lasagnes de la mama, mais vous pouvez quand même essayer.<br></p>\",\"align\":\"\"}},{\"code\":\"monsieurbiz.separator\",\"data\":{\"hidden\":false}},{\"code\":\"monsieurbiz.html\",\"data\":{\"content\":\"<h1>Recette</h1></br>\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.</p>\"}}]');
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
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address`
--

LOCK TABLES `sylius_address` WRITE;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
INSERT INTO `sylius_address` VALUES (337,136,'Claudine','Leveque',NULL,'rue Bonnin',NULL,'Bouvier-sur-Marchand','76509','2023-01-18 22:44:00','2023-01-18 22:44:00','FR',NULL,NULL),(343,NULL,'Claudine','Leveque',NULL,'rue Bonnin',NULL,'Bouvier-sur-Marchand','76509','2023-01-18 22:44:00','2023-01-19 20:31:29','BR',NULL,NULL),(344,NULL,'Claudine','Leveque',NULL,'rue Bonnin',NULL,'Bouvier-sur-Marchand','76509','2023-01-19 20:24:09','2023-01-19 20:31:29','BR',NULL,NULL),(347,NULL,'cezc','czecez',NULL,'cezcze',NULL,'cezcze','27278','2023-01-20 15:48:08','2023-01-20 15:48:09','BR',NULL,NULL),(348,NULL,'cezc','czecez',NULL,'cezcze',NULL,'cezcze','27278','2023-01-20 15:48:08','2023-01-20 15:48:09','BR',NULL,NULL),(353,NULL,'adzfez','czecez',NULL,'14 rue de la pose',NULL,'la test','33260','2023-01-24 12:41:13','2023-01-24 12:41:14','FR',NULL,NULL),(354,NULL,'adzfez','czecez',NULL,'14 rue de la pose',NULL,'la test','33260','2023-01-24 12:41:13','2023-01-24 12:41:14','FR',NULL,NULL),(355,NULL,'zcz','czc',NULL,'14 rue de la pose',NULL,'la test','33260','2023-01-24 12:43:46','2023-01-24 12:43:47','FR',NULL,NULL),(356,NULL,'zcz','czc',NULL,'14 rue de la pose',NULL,'la test','33260','2023-01-24 12:43:46','2023-01-24 12:43:47','FR',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address_log_entries`
--

LOCK TABLES `sylius_address_log_entries` WRITE;
/*!40000 ALTER TABLE `sylius_address_log_entries` DISABLE KEYS */;
INSERT INTO `sylius_address_log_entries` VALUES (339,'create','2023-01-18 22:44:00','337','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(340,'create','2023-01-18 23:00:01','338','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com'),(341,'remove','2023-01-19 18:16:13','338','App\\Entity\\Addressing\\Address',2,'N;','meltedcheese-client@meltedcheese.com'),(342,'create','2023-01-19 18:16:46','339','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com'),(343,'remove','2023-01-19 18:29:33','339','App\\Entity\\Addressing\\Address',2,'N;','meltedcheese-client@meltedcheese.com'),(344,'create','2023-01-19 18:29:48','340','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com'),(345,'create','2023-01-19 18:31:39','341','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com'),(346,'remove','2023-01-19 20:08:24','341','App\\Entity\\Addressing\\Address',2,'N;','meltedcheese-client@meltedcheese.com'),(347,'remove','2023-01-19 20:08:24','340','App\\Entity\\Addressing\\Address',2,'N;','meltedcheese-client@meltedcheese.com'),(348,'create','2023-01-19 20:08:33','342','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com'),(349,'remove','2023-01-19 20:09:55','342','App\\Entity\\Addressing\\Address',2,'N;','meltedcheese-client@meltedcheese.com'),(350,'create','2023-01-19 20:10:02','343','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com'),(351,'create','2023-01-19 20:24:09','344','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Claudine\";s:8:\"lastName\";s:7:\"Leveque\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"rue Bonnin\";s:7:\"company\";N;s:4:\"city\";s:20:\"Bouvier-sur-Marchand\";s:8:\"postcode\";s:5:\"76509\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','meltedcheese-client@meltedcheese.com'),(352,'update','2023-01-19 20:31:29','344','App\\Entity\\Addressing\\Address',2,'a:1:{s:11:\"countryCode\";s:2:\"BR\";}','meltedcheese-client@meltedcheese.com'),(353,'update','2023-01-19 20:31:29','343','App\\Entity\\Addressing\\Address',2,'a:1:{s:11:\"countryCode\";s:2:\"BR\";}','meltedcheese-client@meltedcheese.com'),(354,'create','2023-01-20 15:43:00','345','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"zvzv\";s:8:\"lastName\";s:6:\"reverb\";s:11:\"phoneNumber\";N;s:6:\"street\";s:6:\"berber\";s:7:\"company\";N;s:4:\"city\";s:5:\"vzver\";s:8:\"postcode\";s:5:\"28727\";s:11:\"countryCode\";s:2:\"BR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(355,'create','2023-01-20 15:43:00','346','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"zvzv\";s:8:\"lastName\";s:6:\"reverb\";s:11:\"phoneNumber\";N;s:6:\"street\";s:6:\"berber\";s:7:\"company\";N;s:4:\"city\";s:5:\"vzver\";s:8:\"postcode\";s:5:\"28727\";s:11:\"countryCode\";s:2:\"BR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(356,'remove','2023-01-20 15:46:54','345','App\\Entity\\Addressing\\Address',2,'N;',NULL),(357,'remove','2023-01-20 15:46:54','346','App\\Entity\\Addressing\\Address',2,'N;',NULL),(358,'create','2023-01-20 15:48:09','347','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"cezc\";s:8:\"lastName\";s:6:\"czecez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:6:\"cezcze\";s:7:\"company\";N;s:4:\"city\";s:6:\"cezcze\";s:8:\"postcode\";s:5:\"27278\";s:11:\"countryCode\";s:2:\"BR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(359,'create','2023-01-20 15:48:09','348','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"cezc\";s:8:\"lastName\";s:6:\"czecez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:6:\"cezcze\";s:7:\"company\";N;s:4:\"city\";s:6:\"cezcze\";s:8:\"postcode\";s:5:\"27278\";s:11:\"countryCode\";s:2:\"BR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(360,'create','2023-01-20 16:07:53','349','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"vze\";s:8:\"lastName\";s:5:\"vzevz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:9:\"czeczecez\";s:7:\"company\";s:5:\"cezcz\";s:4:\"city\";s:6:\"czecez\";s:8:\"postcode\";s:6:\"cezcze\";s:11:\"countryCode\";s:2:\"BR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(361,'create','2023-01-20 16:07:53','350','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"vze\";s:8:\"lastName\";s:5:\"vzevz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:9:\"czeczecez\";s:7:\"company\";s:5:\"cezcz\";s:4:\"city\";s:6:\"czecez\";s:8:\"postcode\";s:6:\"cezcze\";s:11:\"countryCode\";s:2:\"BR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(362,'remove','2023-01-20 16:11:27','349','App\\Entity\\Addressing\\Address',2,'N;',NULL),(363,'remove','2023-01-20 16:11:27','350','App\\Entity\\Addressing\\Address',2,'N;',NULL),(364,'create','2023-01-23 19:05:54','351','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"adrien\";s:8:\"lastName\";s:6:\"czecez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"14 rue de la pose\";s:7:\"company\";N;s:4:\"city\";s:6:\"cezcze\";s:8:\"postcode\";s:5:\"33260\";s:11:\"countryCode\";s:2:\"BR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(365,'create','2023-01-23 19:05:54','352','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"adrien\";s:8:\"lastName\";s:6:\"czecez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"14 rue de la pose\";s:7:\"company\";N;s:4:\"city\";s:6:\"cezcze\";s:8:\"postcode\";s:5:\"33260\";s:11:\"countryCode\";s:2:\"BR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(366,'remove','2023-01-23 19:12:48','351','App\\Entity\\Addressing\\Address',2,'N;',NULL),(367,'remove','2023-01-23 19:12:48','352','App\\Entity\\Addressing\\Address',2,'N;',NULL),(368,'create','2023-01-24 12:41:14','353','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"adzfez\";s:8:\"lastName\";s:6:\"czecez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"14 rue de la pose\";s:7:\"company\";N;s:4:\"city\";s:7:\"la test\";s:8:\"postcode\";s:5:\"33260\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(369,'create','2023-01-24 12:41:14','354','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"adzfez\";s:8:\"lastName\";s:6:\"czecez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"14 rue de la pose\";s:7:\"company\";N;s:4:\"city\";s:7:\"la test\";s:8:\"postcode\";s:5:\"33260\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(370,'create','2023-01-24 12:43:47','355','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"zcz\";s:8:\"lastName\";s:3:\"czc\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"14 rue de la pose\";s:7:\"company\";N;s:4:\"city\";s:7:\"la test\";s:8:\"postcode\";s:5:\"33260\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(371,'create','2023-01-24 12:43:47','356','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"zcz\";s:8:\"lastName\";s:3:\"czc\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"14 rue de la pose\";s:7:\"company\";N;s:4:\"city\";s:7:\"la test\";s:8:\"postcode\";s:5:\"33260\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62953 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_adjustment`
--

LOCK TABLES `sylius_adjustment` WRITE;
/*!40000 ALTER TABLE `sylius_adjustment` DISABLE KEYS */;
INSERT INTO `sylius_adjustment` VALUES (18189,112,NULL,NULL,'shipping','Ups Brésil',1000,0,0,NULL,'2023-01-20 15:48:58','2023-01-20 15:48:59',79,'{\"shippingMethodCode\": \"ups-bresil\", \"shippingMethodName\": \"Ups Brésil\"}'),(29242,114,NULL,NULL,'shipping','Ups avec produit frais',650,0,0,NULL,'2023-01-21 12:04:58','2023-01-21 12:04:58',81,'{\"shippingMethodCode\": \"fresh-product\", \"shippingMethodName\": \"Ups avec produit frais\"}'),(29243,114,NULL,NULL,'tax','20% (20%)',108,1,0,NULL,'2023-01-21 12:04:58','2023-01-21 12:04:58',81,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2, \"shippingMethodCode\": \"fresh-product\", \"shippingMethodName\": \"Ups avec produit frais\"}'),(29244,NULL,NULL,27529,'tax','20% (20%)',222,1,0,NULL,'2023-01-21 12:04:58','2023-01-21 12:04:58',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(29245,NULL,NULL,27530,'tax','20% (20%)',222,1,0,NULL,'2023-01-21 12:04:58','2023-01-21 12:04:58',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(29246,NULL,NULL,27531,'tax','20% (20%)',222,1,0,NULL,'2023-01-21 12:04:58','2023-01-21 12:04:58',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(29247,NULL,NULL,27532,'tax','20% (20%)',222,1,0,NULL,'2023-01-21 12:04:58','2023-01-21 12:04:58',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(29248,NULL,NULL,27533,'tax','20% (20%)',221,1,0,NULL,'2023-01-21 12:04:58','2023-01-21 12:04:58',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(29249,NULL,NULL,27534,'tax','20% (20%)',221,1,0,NULL,'2023-01-21 12:04:58','2023-01-21 12:04:58',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(29250,NULL,NULL,27522,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 12:04:58','2023-01-21 12:04:58',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(29259,110,NULL,NULL,'shipping','Ups avec produit frais',650,0,0,NULL,'2023-01-21 12:05:52','2023-01-21 12:05:52',77,'{\"shippingMethodCode\": \"fresh-product\", \"shippingMethodName\": \"Ups avec produit frais\"}'),(29260,110,NULL,NULL,'tax','Taxe brésil (20%)',108,1,0,NULL,'2023-01-21 12:05:52','2023-01-21 12:05:52',77,'{\"taxRateCode\": \"tax-br\", \"taxRateName\": \"Taxe brésil\", \"taxRateAmount\": 0.2, \"shippingMethodCode\": \"fresh-product\", \"shippingMethodName\": \"Ups avec produit frais\"}'),(29261,NULL,NULL,6513,'order_promotion','Réduction newsletter',-81,0,0,'newsletter-reduction','2023-01-21 12:05:52','2023-01-21 12:05:52',NULL,'[]'),(29262,NULL,NULL,6513,'tax','Taxe brésil (20%)',256,1,0,NULL,'2023-01-21 12:05:52','2023-01-21 12:05:52',NULL,'{\"taxRateCode\": \"tax-br\", \"taxRateName\": \"Taxe brésil\", \"taxRateAmount\": 0.2}'),(49876,118,NULL,NULL,'shipping','free',0,0,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',85,'{\"shippingMethodCode\": \"free\", \"shippingMethodName\": \"free\"}'),(49877,NULL,NULL,37961,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49878,NULL,NULL,37962,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49879,NULL,NULL,37963,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49880,NULL,NULL,37964,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49881,NULL,NULL,37965,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49882,NULL,NULL,37966,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49883,NULL,NULL,37967,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49884,NULL,NULL,37968,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49885,NULL,NULL,37969,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49886,NULL,NULL,37970,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49887,NULL,NULL,37971,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49888,NULL,NULL,37972,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49889,NULL,NULL,37973,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49890,NULL,NULL,37974,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49891,NULL,NULL,37975,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49892,NULL,NULL,37976,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49893,NULL,NULL,37977,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49894,NULL,NULL,37978,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49895,NULL,NULL,37979,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49896,NULL,NULL,37980,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49897,NULL,NULL,37981,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49898,NULL,NULL,37982,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49899,NULL,NULL,37983,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49900,NULL,NULL,37984,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49901,NULL,NULL,37985,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49902,NULL,NULL,37986,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49903,NULL,NULL,37987,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49904,NULL,NULL,37988,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49905,NULL,NULL,37989,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49906,NULL,NULL,37990,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49907,NULL,NULL,37991,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49908,NULL,NULL,37992,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49909,NULL,NULL,37993,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49910,NULL,NULL,37994,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49911,NULL,NULL,37995,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49912,NULL,NULL,37996,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49913,NULL,NULL,37997,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49914,NULL,NULL,37998,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49915,NULL,NULL,37999,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49916,NULL,NULL,38000,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49917,NULL,NULL,38001,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49918,NULL,NULL,38002,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49919,NULL,NULL,38003,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49920,NULL,NULL,38004,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49921,NULL,NULL,38005,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49922,NULL,NULL,38006,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49923,NULL,NULL,38007,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49924,NULL,NULL,38008,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49925,NULL,NULL,38009,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49926,NULL,NULL,38010,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49927,NULL,NULL,38011,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49928,NULL,NULL,38012,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49929,NULL,NULL,38013,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49930,NULL,NULL,38014,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49931,NULL,NULL,38015,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49932,NULL,NULL,38016,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49933,NULL,NULL,38017,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49934,NULL,NULL,38018,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49935,NULL,NULL,38019,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49936,NULL,NULL,38020,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49937,NULL,NULL,38021,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49938,NULL,NULL,38022,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49939,NULL,NULL,38023,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49940,NULL,NULL,38024,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49941,NULL,NULL,38025,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49942,NULL,NULL,38026,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49943,NULL,NULL,38027,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49944,NULL,NULL,38028,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49945,NULL,NULL,38029,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49946,NULL,NULL,38030,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49947,NULL,NULL,38031,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49948,NULL,NULL,38032,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49949,NULL,NULL,38033,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49950,NULL,NULL,38034,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49951,NULL,NULL,38035,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49952,NULL,NULL,38036,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49953,NULL,NULL,38037,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49954,NULL,NULL,38038,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49955,NULL,NULL,38039,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49956,NULL,NULL,38040,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49957,NULL,NULL,38041,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49958,NULL,NULL,38042,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49959,NULL,NULL,38043,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49960,NULL,NULL,38044,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49961,NULL,NULL,38045,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49962,NULL,NULL,38046,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49963,NULL,NULL,38047,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49964,NULL,NULL,38048,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49965,NULL,NULL,38049,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49966,NULL,NULL,38050,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49967,NULL,NULL,38051,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49968,NULL,NULL,38052,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49969,NULL,NULL,38053,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49970,NULL,NULL,38054,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49971,NULL,NULL,38055,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49972,NULL,NULL,38056,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49973,NULL,NULL,38057,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49974,NULL,NULL,38058,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49975,NULL,NULL,38059,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(49976,NULL,NULL,38060,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50280,120,NULL,NULL,'shipping','free',0,0,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',87,'{\"shippingMethodCode\": \"free\", \"shippingMethodName\": \"free\"}'),(50281,NULL,NULL,38161,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50282,NULL,NULL,38162,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50283,NULL,NULL,38163,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50284,NULL,NULL,38164,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50285,NULL,NULL,38165,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50286,NULL,NULL,38166,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50287,NULL,NULL,38167,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50288,NULL,NULL,38168,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50289,NULL,NULL,38169,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50290,NULL,NULL,38170,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50291,NULL,NULL,38171,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50292,NULL,NULL,38172,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50293,NULL,NULL,38173,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50294,NULL,NULL,38174,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50295,NULL,NULL,38175,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50296,NULL,NULL,38176,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50297,NULL,NULL,38177,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50298,NULL,NULL,38178,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50299,NULL,NULL,38179,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50300,NULL,NULL,38180,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50301,NULL,NULL,38181,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50302,NULL,NULL,38182,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50303,NULL,NULL,38183,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50304,NULL,NULL,38184,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50305,NULL,NULL,38185,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50306,NULL,NULL,38186,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50307,NULL,NULL,38187,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50308,NULL,NULL,38188,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50309,NULL,NULL,38189,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50310,NULL,NULL,38190,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50311,NULL,NULL,38191,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50312,NULL,NULL,38192,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50313,NULL,NULL,38193,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50314,NULL,NULL,38194,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50315,NULL,NULL,38195,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50316,NULL,NULL,38196,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50317,NULL,NULL,38197,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50318,NULL,NULL,38198,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50319,NULL,NULL,38199,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50320,NULL,NULL,38200,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50321,NULL,NULL,38201,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50322,NULL,NULL,38202,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50323,NULL,NULL,38203,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50324,NULL,NULL,38204,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50325,NULL,NULL,38205,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50326,NULL,NULL,38206,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50327,NULL,NULL,38207,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50328,NULL,NULL,38208,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50329,NULL,NULL,38209,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50330,NULL,NULL,38210,'tax','20% (20%)',193,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50331,NULL,NULL,38211,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50332,NULL,NULL,38212,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50333,NULL,NULL,38213,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50334,NULL,NULL,38214,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50335,NULL,NULL,38215,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50336,NULL,NULL,38216,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50337,NULL,NULL,38217,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50338,NULL,NULL,38218,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50339,NULL,NULL,38219,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50340,NULL,NULL,38220,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50341,NULL,NULL,38221,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50342,NULL,NULL,38222,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50343,NULL,NULL,38223,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50344,NULL,NULL,38224,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50345,NULL,NULL,38225,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50346,NULL,NULL,38226,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50347,NULL,NULL,38227,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50348,NULL,NULL,38228,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50349,NULL,NULL,38229,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50350,NULL,NULL,38230,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50351,NULL,NULL,38231,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50352,NULL,NULL,38232,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50353,NULL,NULL,38233,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50354,NULL,NULL,38234,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50355,NULL,NULL,38235,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50356,NULL,NULL,38236,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50357,NULL,NULL,38237,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50358,NULL,NULL,38238,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50359,NULL,NULL,38239,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50360,NULL,NULL,38240,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50361,NULL,NULL,38241,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50362,NULL,NULL,38242,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50363,NULL,NULL,38243,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50364,NULL,NULL,38244,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50365,NULL,NULL,38245,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50366,NULL,NULL,38246,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50367,NULL,NULL,38247,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50368,NULL,NULL,38248,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50369,NULL,NULL,38249,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50370,NULL,NULL,38250,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50371,NULL,NULL,38251,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50372,NULL,NULL,38252,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50373,NULL,NULL,38253,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50374,NULL,NULL,38254,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50375,NULL,NULL,38255,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50376,NULL,NULL,38256,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50377,NULL,NULL,38257,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50378,NULL,NULL,38258,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50379,NULL,NULL,38259,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50380,NULL,NULL,38260,'tax','20% (20%)',192,1,0,NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50683,121,NULL,NULL,'shipping','free',0,0,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',88,'{\"shippingMethodCode\": \"free\", \"shippingMethodName\": \"free\"}'),(50684,NULL,NULL,38261,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50685,NULL,NULL,38262,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50686,NULL,NULL,38263,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50687,NULL,NULL,38264,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50688,NULL,NULL,38265,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50689,NULL,NULL,38266,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50690,NULL,NULL,38267,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50691,NULL,NULL,38268,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50692,NULL,NULL,38269,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50693,NULL,NULL,38270,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50694,NULL,NULL,38271,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50695,NULL,NULL,38272,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50696,NULL,NULL,38273,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50697,NULL,NULL,38274,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50698,NULL,NULL,38275,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50699,NULL,NULL,38276,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50700,NULL,NULL,38277,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50701,NULL,NULL,38278,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50702,NULL,NULL,38279,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50703,NULL,NULL,38280,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50704,NULL,NULL,38281,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50705,NULL,NULL,38282,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50706,NULL,NULL,38283,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50707,NULL,NULL,38284,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50708,NULL,NULL,38285,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50709,NULL,NULL,38286,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50710,NULL,NULL,38287,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50711,NULL,NULL,38288,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50712,NULL,NULL,38289,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50713,NULL,NULL,38290,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50714,NULL,NULL,38291,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50715,NULL,NULL,38292,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50716,NULL,NULL,38293,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50717,NULL,NULL,38294,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50718,NULL,NULL,38295,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50719,NULL,NULL,38296,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50720,NULL,NULL,38297,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50721,NULL,NULL,38298,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50722,NULL,NULL,38299,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50723,NULL,NULL,38300,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50724,NULL,NULL,38301,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50725,NULL,NULL,38302,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50726,NULL,NULL,38303,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50727,NULL,NULL,38304,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50728,NULL,NULL,38305,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50729,NULL,NULL,38306,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50730,NULL,NULL,38307,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50731,NULL,NULL,38308,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50732,NULL,NULL,38309,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50733,NULL,NULL,38310,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50734,NULL,NULL,38311,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50735,NULL,NULL,38312,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50736,NULL,NULL,38313,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50737,NULL,NULL,38314,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50738,NULL,NULL,38315,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50739,NULL,NULL,38316,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50740,NULL,NULL,38317,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50741,NULL,NULL,38318,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50742,NULL,NULL,38319,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50743,NULL,NULL,38320,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50744,NULL,NULL,38321,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50745,NULL,NULL,38322,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50746,NULL,NULL,38323,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50747,NULL,NULL,38324,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50748,NULL,NULL,38325,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50749,NULL,NULL,38326,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50750,NULL,NULL,38327,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50751,NULL,NULL,38328,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50752,NULL,NULL,38329,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50753,NULL,NULL,38330,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50754,NULL,NULL,38331,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50755,NULL,NULL,38332,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50756,NULL,NULL,38333,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50757,NULL,NULL,38334,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50758,NULL,NULL,38335,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50759,NULL,NULL,38336,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50760,NULL,NULL,38337,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50761,NULL,NULL,38338,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50762,NULL,NULL,38339,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50763,NULL,NULL,38340,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50764,NULL,NULL,38341,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50765,NULL,NULL,38342,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50766,NULL,NULL,38343,'tax','20% (20%)',330,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50767,NULL,NULL,38344,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50768,NULL,NULL,38345,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50769,NULL,NULL,38346,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50770,NULL,NULL,38347,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50771,NULL,NULL,38348,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50772,NULL,NULL,38349,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50773,NULL,NULL,38350,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50774,NULL,NULL,38351,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50775,NULL,NULL,38352,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50776,NULL,NULL,38353,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50777,NULL,NULL,38354,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50778,NULL,NULL,38355,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50779,NULL,NULL,38356,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50780,NULL,NULL,38357,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50781,NULL,NULL,38358,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50782,NULL,NULL,38359,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50783,NULL,NULL,38360,'tax','20% (20%)',329,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50784,NULL,NULL,38361,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50785,NULL,NULL,38362,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50786,NULL,NULL,38363,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50787,NULL,NULL,38364,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50788,NULL,NULL,38365,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50789,NULL,NULL,38366,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50790,NULL,NULL,38367,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50791,NULL,NULL,38368,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50792,NULL,NULL,38369,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50793,NULL,NULL,38370,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50794,NULL,NULL,38371,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50795,NULL,NULL,38372,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50796,NULL,NULL,38373,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50797,NULL,NULL,38374,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50798,NULL,NULL,38375,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50799,NULL,NULL,38376,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50800,NULL,NULL,38377,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50801,NULL,NULL,38378,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50802,NULL,NULL,38379,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50803,NULL,NULL,38380,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50804,NULL,NULL,38381,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50805,NULL,NULL,38382,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50806,NULL,NULL,38383,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50807,NULL,NULL,38384,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50808,NULL,NULL,38385,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50809,NULL,NULL,38386,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50810,NULL,NULL,38387,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50811,NULL,NULL,38388,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50812,NULL,NULL,38389,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50813,NULL,NULL,38390,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50814,NULL,NULL,38391,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50815,NULL,NULL,38392,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50816,NULL,NULL,38393,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50817,NULL,NULL,38394,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50818,NULL,NULL,38395,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50819,NULL,NULL,38396,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50820,NULL,NULL,38397,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50821,NULL,NULL,38398,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50822,NULL,NULL,38399,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50823,NULL,NULL,38400,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50824,NULL,NULL,38401,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50825,NULL,NULL,38402,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50826,NULL,NULL,38403,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50827,NULL,NULL,38404,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50828,NULL,NULL,38405,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50829,NULL,NULL,38406,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50830,NULL,NULL,38407,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50831,NULL,NULL,38408,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50832,NULL,NULL,38409,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50833,NULL,NULL,38410,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50834,NULL,NULL,38411,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50835,NULL,NULL,38412,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50836,NULL,NULL,38413,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50837,NULL,NULL,38414,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50838,NULL,NULL,38415,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50839,NULL,NULL,38416,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50840,NULL,NULL,38417,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50841,NULL,NULL,38418,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50842,NULL,NULL,38419,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50843,NULL,NULL,38420,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50844,NULL,NULL,38421,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50845,NULL,NULL,38422,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50846,NULL,NULL,38423,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50847,NULL,NULL,38424,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50848,NULL,NULL,38425,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50849,NULL,NULL,38426,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50850,NULL,NULL,38427,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50851,NULL,NULL,38428,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50852,NULL,NULL,38429,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50853,NULL,NULL,38430,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50854,NULL,NULL,38431,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50855,NULL,NULL,38432,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50856,NULL,NULL,38433,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50857,NULL,NULL,38434,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50858,NULL,NULL,38435,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50859,NULL,NULL,38436,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50860,NULL,NULL,38437,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50861,NULL,NULL,38438,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50862,NULL,NULL,38439,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50863,NULL,NULL,38440,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50864,NULL,NULL,38441,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50865,NULL,NULL,38442,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50866,NULL,NULL,38443,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50867,NULL,NULL,38444,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50868,NULL,NULL,38445,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50869,NULL,NULL,38446,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50870,NULL,NULL,38447,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50871,NULL,NULL,38448,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50872,NULL,NULL,38449,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50873,NULL,NULL,38450,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50874,NULL,NULL,38451,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50875,NULL,NULL,38452,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50876,NULL,NULL,38453,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50877,NULL,NULL,38454,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50878,NULL,NULL,38455,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50879,NULL,NULL,38456,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50880,NULL,NULL,38457,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50881,NULL,NULL,38458,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50882,NULL,NULL,38459,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(50883,NULL,NULL,38460,'tax','20% (20%)',192,1,0,NULL,'2023-01-22 12:56:51','2023-01-22 12:56:51',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(51101,124,NULL,NULL,'shipping','Ups',500,0,0,NULL,'2023-01-22 18:14:54','2023-01-22 18:14:54',91,'{\"shippingMethodCode\": \"ups\", \"shippingMethodName\": \"Ups\"}'),(51102,124,NULL,NULL,'tax','20% (20%)',83,1,0,NULL,'2023-01-22 18:14:54','2023-01-22 18:14:54',91,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2, \"shippingMethodCode\": \"ups\", \"shippingMethodName\": \"Ups\"}'),(51103,NULL,NULL,38563,'tax','20% (20%)',19,1,0,NULL,'2023-01-22 18:14:54','2023-01-22 18:14:54',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(51125,125,NULL,NULL,'shipping','Ups',500,0,0,NULL,'2023-01-22 18:57:07','2023-01-22 18:57:07',93,'{\"shippingMethodCode\": \"ups\", \"shippingMethodName\": \"Ups\"}'),(51126,125,NULL,NULL,'tax','20% (20%)',83,1,0,NULL,'2023-01-22 18:57:07','2023-01-22 18:57:07',93,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2, \"shippingMethodCode\": \"ups\", \"shippingMethodName\": \"Ups\"}'),(51127,NULL,NULL,38568,'tax','20% (20%)',193,1,0,NULL,'2023-01-22 18:57:07','2023-01-22 18:57:07',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(51331,135,NULL,NULL,'shipping','Ups avec produit frais',650,0,0,NULL,'2023-01-23 01:07:46','2023-01-23 01:07:46',105,'{\"shippingMethodCode\": \"fresh-product\", \"shippingMethodName\": \"Ups avec produit frais\"}'),(51332,135,NULL,NULL,'tax','20% (20%)',108,1,0,NULL,'2023-01-23 01:07:46','2023-01-23 01:07:46',105,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2, \"shippingMethodCode\": \"fresh-product\", \"shippingMethodName\": \"Ups avec produit frais\"}'),(51333,NULL,NULL,38787,'tax','20% (20%)',193,1,0,NULL,'2023-01-23 01:07:46','2023-01-23 01:07:46',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(51334,NULL,NULL,38788,'tax','20% (20%)',270,1,0,NULL,'2023-01-23 01:07:46','2023-01-23 01:07:46',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(51335,NULL,NULL,38789,'tax','20% (20%)',270,1,0,NULL,'2023-01-23 01:07:46','2023-01-23 01:07:46',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62161,144,NULL,NULL,'shipping','free',0,0,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',114,'{\"shippingMethodCode\": \"free\", \"shippingMethodName\": \"free\"}'),(62162,NULL,NULL,49420,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62163,NULL,NULL,49421,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62164,NULL,NULL,49422,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62165,NULL,NULL,49423,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62166,NULL,NULL,49424,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62167,NULL,NULL,49425,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62168,NULL,NULL,49426,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62169,NULL,NULL,49427,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62170,NULL,NULL,49428,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62171,NULL,NULL,49429,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62172,NULL,NULL,49430,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62173,NULL,NULL,49431,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62174,NULL,NULL,49432,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62175,NULL,NULL,49433,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62176,NULL,NULL,49434,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62177,NULL,NULL,49435,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62178,NULL,NULL,49436,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62179,NULL,NULL,49437,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62180,NULL,NULL,49438,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62181,NULL,NULL,49439,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62182,NULL,NULL,49440,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62183,NULL,NULL,49441,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62184,NULL,NULL,49442,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62185,NULL,NULL,49443,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62186,NULL,NULL,49444,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62187,NULL,NULL,49445,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62188,NULL,NULL,49446,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62189,NULL,NULL,49447,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62190,NULL,NULL,49448,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62191,NULL,NULL,49449,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62192,NULL,NULL,49450,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62193,NULL,NULL,49451,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62194,NULL,NULL,49452,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62195,NULL,NULL,49453,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62196,NULL,NULL,49454,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62197,NULL,NULL,49455,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62198,NULL,NULL,49456,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62199,NULL,NULL,49457,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62200,NULL,NULL,49458,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62201,NULL,NULL,49459,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62202,NULL,NULL,49460,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62203,NULL,NULL,49461,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62204,NULL,NULL,49462,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62205,NULL,NULL,49463,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62206,NULL,NULL,49464,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62207,NULL,NULL,49465,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62208,NULL,NULL,49466,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62209,NULL,NULL,49467,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62210,NULL,NULL,49468,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62211,NULL,NULL,49469,'tax','20% (20%)',118,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62212,NULL,NULL,49470,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62213,NULL,NULL,49471,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62214,NULL,NULL,49472,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62215,NULL,NULL,49473,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62216,NULL,NULL,49474,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62217,NULL,NULL,49475,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62218,NULL,NULL,49476,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62219,NULL,NULL,49477,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62220,NULL,NULL,49478,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62221,NULL,NULL,49479,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62222,NULL,NULL,49480,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62223,NULL,NULL,49481,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62224,NULL,NULL,49482,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62225,NULL,NULL,49483,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62226,NULL,NULL,49484,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62227,NULL,NULL,49485,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62228,NULL,NULL,49486,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62229,NULL,NULL,49487,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62230,NULL,NULL,49488,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62231,NULL,NULL,49489,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62232,NULL,NULL,49490,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62233,NULL,NULL,49491,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62234,NULL,NULL,49492,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62235,NULL,NULL,49493,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62236,NULL,NULL,49494,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62237,NULL,NULL,49495,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62238,NULL,NULL,49496,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62239,NULL,NULL,49497,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62240,NULL,NULL,49498,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62241,NULL,NULL,49499,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62242,NULL,NULL,49500,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62243,NULL,NULL,49501,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62244,NULL,NULL,49502,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62245,NULL,NULL,49503,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62246,NULL,NULL,49504,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62247,NULL,NULL,49505,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62248,NULL,NULL,49506,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62249,NULL,NULL,49507,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62250,NULL,NULL,49508,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62251,NULL,NULL,49509,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62252,NULL,NULL,49510,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62253,NULL,NULL,49511,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62254,NULL,NULL,49512,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62255,NULL,NULL,49513,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62256,NULL,NULL,49514,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62257,NULL,NULL,49515,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62258,NULL,NULL,49516,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62259,NULL,NULL,49517,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62260,NULL,NULL,49518,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62261,NULL,NULL,49519,'tax','20% (20%)',117,1,0,NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62527,NULL,NULL,49728,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62528,NULL,NULL,49729,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62529,NULL,NULL,49730,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62530,NULL,NULL,49731,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62531,NULL,NULL,49732,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62532,NULL,NULL,49733,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62533,NULL,NULL,49734,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62534,NULL,NULL,49735,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62535,NULL,NULL,49736,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62536,NULL,NULL,49737,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62537,NULL,NULL,49738,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62538,NULL,NULL,49739,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62539,NULL,NULL,49740,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62540,NULL,NULL,49741,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62541,NULL,NULL,49742,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62542,NULL,NULL,49743,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62543,NULL,NULL,49744,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62544,NULL,NULL,49745,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62545,NULL,NULL,49746,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62546,NULL,NULL,49747,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62547,NULL,NULL,49748,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62548,NULL,NULL,49749,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62549,NULL,NULL,49750,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62550,NULL,NULL,49751,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62551,NULL,NULL,49752,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62552,NULL,NULL,49753,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62553,NULL,NULL,49754,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62554,NULL,NULL,49755,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62555,NULL,NULL,49756,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62556,NULL,NULL,49757,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62557,NULL,NULL,49758,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62558,NULL,NULL,49759,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62559,NULL,NULL,49760,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62560,NULL,NULL,49761,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62561,NULL,NULL,49762,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62562,NULL,NULL,49763,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62563,NULL,NULL,49764,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62564,NULL,NULL,49765,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62565,NULL,NULL,49766,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62566,NULL,NULL,49767,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62567,NULL,NULL,49768,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62568,NULL,NULL,49769,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62569,NULL,NULL,49770,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62570,NULL,NULL,49771,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62571,NULL,NULL,49772,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62572,NULL,NULL,49773,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62573,NULL,NULL,49774,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62574,NULL,NULL,49775,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62575,NULL,NULL,49776,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62576,NULL,NULL,49777,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62577,NULL,NULL,49778,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62578,NULL,NULL,49779,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62579,NULL,NULL,49780,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62580,NULL,NULL,49781,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62581,NULL,NULL,49782,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62582,NULL,NULL,49783,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62583,NULL,NULL,49784,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62584,NULL,NULL,49785,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62585,NULL,NULL,49786,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62586,NULL,NULL,49787,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62587,NULL,NULL,49788,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62588,NULL,NULL,49789,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62589,NULL,NULL,49790,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62590,NULL,NULL,49791,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62591,NULL,NULL,49792,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62592,NULL,NULL,49793,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62593,NULL,NULL,49794,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62594,NULL,NULL,49795,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62595,NULL,NULL,49796,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62596,NULL,NULL,49797,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62597,NULL,NULL,49798,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62598,NULL,NULL,49799,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62599,NULL,NULL,49800,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62600,NULL,NULL,49801,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62601,NULL,NULL,49802,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62602,NULL,NULL,49803,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62603,NULL,NULL,49804,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62604,NULL,NULL,49805,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62605,NULL,NULL,49806,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62606,NULL,NULL,49807,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62607,NULL,NULL,49808,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62608,NULL,NULL,49809,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62609,NULL,NULL,49810,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62610,NULL,NULL,49811,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62611,NULL,NULL,49812,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62612,NULL,NULL,49813,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62613,NULL,NULL,49814,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62614,NULL,NULL,49815,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62615,NULL,NULL,49816,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62616,NULL,NULL,49817,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62617,NULL,NULL,49818,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62618,NULL,NULL,49819,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62619,NULL,NULL,49820,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62620,NULL,NULL,49821,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62621,NULL,NULL,49822,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62622,NULL,NULL,49823,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62623,NULL,NULL,49824,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62624,NULL,NULL,49825,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62625,NULL,NULL,49826,'tax','20% (20%)',192,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62627,153,NULL,NULL,'shipping','Ups',500,0,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',123,'{\"shippingMethodCode\": \"ups\", \"shippingMethodName\": \"Ups\"}'),(62628,153,NULL,NULL,'tax','20% (20%)',83,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',123,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2, \"shippingMethodCode\": \"ups\", \"shippingMethodName\": \"Ups\"}'),(62629,NULL,NULL,49827,'tax','20% (20%)',193,1,0,NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62922,157,NULL,NULL,'shipping','Ups avec produit frais',650,0,0,NULL,'2023-01-24 12:00:02','2023-01-24 12:00:02',128,'{\"shippingMethodCode\": \"fresh-product\", \"shippingMethodName\": \"Ups avec produit frais\"}'),(62923,157,NULL,NULL,'tax','20% (20%)',108,1,0,NULL,'2023-01-24 12:00:02','2023-01-24 12:00:02',128,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2, \"shippingMethodCode\": \"fresh-product\", \"shippingMethodName\": \"Ups avec produit frais\"}'),(62924,NULL,NULL,49935,'tax','20% (20%)',270,1,0,NULL,'2023-01-24 12:00:02','2023-01-24 12:00:02',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62925,NULL,NULL,49936,'tax','20% (20%)',270,1,0,NULL,'2023-01-24 12:00:02','2023-01-24 12:00:02',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62926,NULL,NULL,49937,'tax','20% (20%)',270,1,0,NULL,'2023-01-24 12:00:02','2023-01-24 12:00:02',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62927,NULL,NULL,49938,'tax','20% (20%)',270,1,0,NULL,'2023-01-24 12:00:02','2023-01-24 12:00:02',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62928,NULL,NULL,49939,'tax','20% (20%)',269,1,0,NULL,'2023-01-24 12:00:02','2023-01-24 12:00:02',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62929,NULL,NULL,49940,'tax','20% (20%)',12,1,0,NULL,'2023-01-24 12:00:02','2023-01-24 12:00:02',NULL,'{\"taxRateCode\": \"20%\", \"taxRateName\": \"20%\", \"taxRateAmount\": 0.2}'),(62942,158,NULL,NULL,'shipping','Ups',500,0,0,NULL,'2023-01-24 12:41:43','2023-01-24 12:41:43',129,'{\"shippingMethodCode\": \"ups\", \"shippingMethodName\": \"Ups\"}'),(62952,159,NULL,NULL,'shipping','Ups',500,0,0,NULL,'2023-01-24 12:44:07','2023-01-24 12:44:07',130,'{\"shippingMethodCode\": \"ups\", \"shippingMethodName\": \"Ups\"}');
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
INSERT INTO `sylius_admin_user` VALUES (56,'adrien','adrien',1,'qjcfkyrfbfkgwg8wcoooo0wwso8sw8k','$argon2i$v=19$m=65536,t=4,p=1$dWJUZ0Z1aE9TZU5vUHdrRQ$jPGViM+8KEN4tJ0qtXdXjEgKWssUU3Cld5qj2bj4OrQ','2023-01-24 12:42:10',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','adrien@gmail.com','adrien@gmail.com','2023-01-18 22:44:00','2023-01-24 12:42:10','Adrien','PEREZ','fr_FR','argon2i');
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
INSERT INTO `sylius_channel` VALUES (46,78,128,62,'melted_cheese','melted_cheese','#000000',NULL,1,NULL,'2023-01-18 22:44:00','2023-01-24 12:42:46',NULL,'order_items_based','melted_cheese@gmail.com',0,0,0,8,234,NULL,0);
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
INSERT INTO `sylius_channel_countries` VALUES (46,137),(46,138);
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer`
--

LOCK TABLES `sylius_customer` WRITE;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
INSERT INTO `sylius_customer` VALUES (136,9,337,'meltedCheese-client@meltedcheese.com','meltedcheese-client@meltedcheese.com','Claudine','Leveque',NULL,'u','2023-01-18 22:44:00','2023-01-19 08:57:40','01 69 70 13 30',1),(137,NULL,NULL,'zczec@gmail.com','zczec@gmail.com',NULL,NULL,NULL,'u','2023-01-20 15:43:00','2023-01-20 15:43:00',NULL,0),(138,NULL,NULL,'cezcez@gmail.com','cezcez@gmail.com',NULL,NULL,NULL,'u','2023-01-20 15:48:08','2023-01-20 15:48:09',NULL,0),(139,NULL,NULL,'cezcz@gmail.com','cezcz@gmail.com',NULL,NULL,NULL,'u','2023-01-20 16:07:53','2023-01-20 16:07:53',NULL,0),(140,NULL,NULL,'adrien@gmail.com','adrien@gmail.com',NULL,NULL,NULL,'u','2023-01-23 19:05:54','2023-01-23 19:05:54',NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order`
--

LOCK TABLES `sylius_order` WRITE;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
INSERT INTO `sylius_order` VALUES (110,344,343,46,NULL,136,NULL,NULL,'cart',NULL,1538,650,2188,'2023-01-19 20:10:02','2023-01-21 12:05:52','EUR','fr_FR','addressed','cart','cart',NULL,NULL,0),(112,347,348,46,NULL,138,'000000001',NULL,'new','2023-01-20 15:48:59',11548,1000,12548,'2023-01-20 15:47:08','2023-01-20 15:59:03','EUR','fr_FR','completed','paid','ready','_t8YE6RLMQ','127.0.0.1',1),(114,NULL,NULL,46,NULL,NULL,NULL,NULL,'cart',NULL,9135,650,9785,'2023-01-21 12:03:58','2023-01-21 12:04:58','EUR','fr_FR','cart','cart','cart',NULL,NULL,1),(118,NULL,NULL,46,NULL,NULL,NULL,NULL,'cart',NULL,115500,0,115500,'2023-01-21 14:43:22','2023-01-21 14:43:22','EUR','fr_FR','cart','cart','cart',NULL,NULL,1),(120,NULL,NULL,46,NULL,NULL,NULL,NULL,'cart',NULL,115500,0,115500,'2023-01-21 15:11:50','2023-01-21 15:11:50','EUR','fr_FR','cart','cart','cart',NULL,NULL,1),(121,NULL,NULL,46,NULL,NULL,NULL,NULL,'cart',NULL,313400,0,313400,'2023-01-22 12:32:13','2023-01-22 12:53:57','EUR','fr_FR','cart','cart','cart',NULL,NULL,1),(124,NULL,NULL,46,NULL,NULL,NULL,NULL,'cart',NULL,1,500,501,'2023-01-22 18:14:54','2023-01-22 18:14:54','EUR','fr_FR','cart','cart','cart',NULL,NULL,1),(125,NULL,NULL,46,NULL,NULL,NULL,NULL,'cart',NULL,1155,500,1655,'2023-01-22 18:53:27','2023-01-22 18:56:11','EUR','fr_FR','cart','cart','cart',NULL,NULL,1),(135,NULL,NULL,46,NULL,NULL,NULL,NULL,'cart',NULL,4393,650,5043,'2023-01-23 01:06:51','2023-01-23 01:07:35','EUR','fr_FR','cart','cart','cart',NULL,NULL,1),(144,NULL,NULL,46,NULL,NULL,NULL,NULL,'cart',NULL,70,0,70,'2023-01-23 19:30:46','2023-01-23 19:30:47','EUR','fr_FR','cart','cart','cart',NULL,NULL,1),(153,NULL,NULL,46,NULL,NULL,NULL,NULL,'cart',NULL,1155,500,1655,'2023-01-24 09:25:22','2023-01-24 09:25:22','EUR','fr_FR','cart','cart','cart',NULL,NULL,1),(157,NULL,NULL,46,NULL,NULL,NULL,NULL,'cart',NULL,8165,650,8815,'2023-01-24 11:54:12','2023-01-24 11:59:56','EUR','fr_FR','cart','cart','cart',NULL,NULL,1),(158,353,354,46,NULL,140,'000000002',NULL,'new','2023-01-24 12:41:43',693,500,1193,'2023-01-24 12:40:28','2023-01-24 12:41:43','EUR','fr_FR','completed','awaiting_payment','ready','neCbu6q8dT','127.0.0.1',1),(159,355,356,46,NULL,140,'000000003',NULL,'new','2023-01-24 12:44:07',58,500,558,'2023-01-24 12:43:10','2023-01-24 12:44:07','EUR','fr_FR','completed','awaiting_payment','ready','ZaCAMaBK3A','127.0.0.1',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item`
--

LOCK TABLES `sylius_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
INSERT INTO `sylius_order_item` VALUES (287,110,633,1,1619,1538,0,1538,0,NULL,NULL,2,1619,NULL),(289,112,630,1,11548,11548,0,11548,1,'Fromage de brebis Ossau Iraty','name fromage-de-brebis-ossau-iraty',3,1155,9.999),(292,114,630,1,1155,1155,0,1155,1,NULL,NULL,2,1155,1),(293,114,635,6,1330,7980,0,7980,0,NULL,NULL,2,1330,NULL),(303,118,630,100,1155,115500,0,115500,0,NULL,NULL,1,1155,NULL),(305,120,630,100,1155,115500,0,115500,0,NULL,NULL,1,1155,NULL),(306,121,629,100,1979,197900,0,197900,0,NULL,NULL,1,1979,NULL),(307,121,630,100,1155,115500,0,115500,0,NULL,NULL,1,1155,NULL),(310,124,630,1,1,1,0,1,0,NULL,NULL,1,1155,0.001),(312,125,630,1,1155,1155,0,1155,0,NULL,NULL,3,1155,0.602),(326,135,630,1,1155,1155,0,1155,0,NULL,NULL,3,1155,1),(327,135,633,2,1619,3238,0,3238,0,NULL,NULL,1,1619,NULL),(339,144,632,1,70,70,0,70,0,NULL,NULL,1,705,0.1),(349,153,630,1,1155,1155,0,1155,0,NULL,NULL,2,1155,0.1),(355,157,633,5,1619,8095,0,8095,0,NULL,NULL,3,1619,NULL),(356,157,632,1,70,70,0,70,1,NULL,NULL,1,705,0.1),(357,158,630,1,693,693,0,693,1,'Fromage de brebis Ossau Iraty','name fromage-de-brebis-ossau-iraty',3,1155,0.6),(358,159,631,1,58,58,0,58,1,'Fromage de vache canadien','name fromage-de-vache-canadien',2,580,0.1);
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
) ENGINE=InnoDB AUTO_INCREMENT=49944 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item_unit`
--

LOCK TABLES `sylius_order_item_unit` WRITE;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
INSERT INTO `sylius_order_item_unit` VALUES (6513,287,77,-81,'2023-01-19 20:23:53','2023-01-21 12:05:14'),(16522,289,79,0,'2023-01-20 15:47:09','2023-01-20 15:47:18'),(27522,292,81,0,'2023-01-21 12:03:58','2023-01-21 12:03:58'),(27529,293,81,0,'2023-01-21 12:04:40','2023-01-21 12:04:40'),(27530,293,81,0,'2023-01-21 12:04:40','2023-01-21 12:04:40'),(27531,293,81,0,'2023-01-21 12:04:40','2023-01-21 12:04:40'),(27532,293,81,0,'2023-01-21 12:04:40','2023-01-21 12:04:40'),(27533,293,81,0,'2023-01-21 12:04:40','2023-01-21 12:04:40'),(27534,293,81,0,'2023-01-21 12:04:40','2023-01-21 12:04:40'),(37961,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37962,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37963,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37964,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37965,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37966,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37967,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37968,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37969,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37970,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37971,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37972,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37973,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37974,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37975,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37976,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37977,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37978,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37979,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37980,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37981,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37982,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37983,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37984,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37985,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37986,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37987,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37988,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37989,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37990,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37991,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37992,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37993,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37994,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37995,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37996,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37997,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37998,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(37999,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38000,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38001,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38002,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38003,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38004,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38005,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38006,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38007,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38008,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38009,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38010,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38011,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38012,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38013,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38014,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38015,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38016,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38017,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38018,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38019,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38020,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38021,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38022,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38023,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38024,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38025,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38026,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38027,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38028,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38029,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38030,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38031,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38032,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38033,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38034,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38035,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38036,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38037,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38038,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38039,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38040,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38041,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38042,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38043,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38044,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38045,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38046,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38047,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38048,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38049,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38050,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38051,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38052,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38053,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38054,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38055,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38056,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38057,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38058,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38059,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38060,303,85,0,'2023-01-21 14:43:22','2023-01-21 14:43:22'),(38161,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38162,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38163,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38164,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38165,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38166,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38167,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38168,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38169,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38170,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38171,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38172,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38173,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38174,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38175,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38176,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38177,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38178,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38179,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38180,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38181,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38182,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38183,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38184,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38185,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38186,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38187,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38188,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38189,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38190,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38191,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38192,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38193,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38194,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38195,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38196,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38197,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38198,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38199,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38200,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38201,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38202,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38203,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38204,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38205,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38206,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38207,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38208,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38209,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38210,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38211,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38212,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38213,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38214,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38215,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38216,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38217,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38218,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38219,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38220,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38221,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38222,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38223,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38224,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38225,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38226,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38227,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38228,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38229,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38230,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38231,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38232,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38233,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38234,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38235,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38236,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38237,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38238,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38239,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38240,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38241,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38242,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38243,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38244,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38245,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38246,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38247,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38248,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38249,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38250,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38251,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38252,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38253,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38254,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38255,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38256,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38257,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38258,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38259,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38260,305,87,0,'2023-01-21 15:11:50','2023-01-21 15:11:50'),(38261,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38262,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38263,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38264,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38265,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38266,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38267,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38268,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38269,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38270,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38271,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38272,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38273,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38274,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38275,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38276,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38277,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38278,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38279,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38280,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38281,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38282,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38283,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38284,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38285,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38286,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38287,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38288,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38289,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38290,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38291,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38292,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38293,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38294,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38295,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38296,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38297,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38298,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38299,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38300,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38301,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38302,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38303,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38304,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38305,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38306,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38307,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38308,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38309,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38310,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38311,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38312,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38313,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38314,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38315,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38316,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38317,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38318,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38319,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38320,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38321,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38322,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38323,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38324,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38325,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38326,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38327,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38328,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38329,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38330,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38331,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38332,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38333,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38334,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38335,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38336,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38337,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38338,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38339,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38340,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38341,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38342,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38343,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38344,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38345,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38346,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38347,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38348,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38349,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38350,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38351,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38352,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38353,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38354,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38355,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38356,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38357,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38358,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38359,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38360,306,88,0,'2023-01-22 12:32:13','2023-01-22 12:32:14'),(38361,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38362,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38363,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38364,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38365,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38366,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38367,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38368,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38369,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38370,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38371,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38372,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38373,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38374,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38375,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38376,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38377,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38378,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38379,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38380,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38381,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38382,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38383,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38384,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38385,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38386,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38387,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38388,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38389,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38390,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38391,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38392,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38393,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38394,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38395,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38396,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38397,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38398,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38399,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38400,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38401,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38402,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38403,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38404,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38405,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38406,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38407,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38408,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38409,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38410,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38411,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38412,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38413,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38414,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38415,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38416,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38417,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38418,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38419,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38420,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38421,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38422,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38423,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38424,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38425,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38426,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38427,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38428,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38429,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38430,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38431,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38432,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38433,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38434,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38435,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38436,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38437,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38438,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38439,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38440,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38441,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38442,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38443,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38444,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38445,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38446,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38447,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38448,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38449,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38450,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38451,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38452,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38453,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38454,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38455,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38456,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38457,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38458,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38459,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38460,307,88,0,'2023-01-22 12:53:57','2023-01-22 12:53:57'),(38563,310,91,0,'2023-01-22 18:14:54','2023-01-22 18:14:54'),(38568,312,93,0,'2023-01-22 18:56:39','2023-01-22 18:56:39'),(38787,326,105,0,'2023-01-23 01:07:04','2023-01-23 01:07:04'),(38788,327,105,0,'2023-01-23 01:07:35','2023-01-23 01:07:35'),(38789,327,105,0,'2023-01-23 01:07:35','2023-01-23 01:07:35'),(49420,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49421,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49422,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49423,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49424,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49425,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49426,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49427,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49428,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49429,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49430,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49431,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49432,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49433,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49434,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49435,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49436,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49437,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49438,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49439,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49440,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49441,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49442,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49443,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49444,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49445,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49446,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49447,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49448,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49449,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49450,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49451,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49452,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49453,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49454,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49455,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49456,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49457,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49458,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49459,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49460,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49461,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49462,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49463,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49464,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49465,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49466,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49467,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49468,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49469,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49470,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49471,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49472,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49473,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49474,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49475,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49476,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49477,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49478,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49479,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49480,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49481,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49482,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49483,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49484,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49485,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49486,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49487,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49488,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49489,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49490,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49491,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49492,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49493,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49494,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49495,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49496,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49497,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49498,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49499,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49500,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49501,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49502,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49503,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49504,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49505,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49506,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49507,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49508,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49509,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49510,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49511,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49512,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49513,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49514,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49515,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49516,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49517,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49518,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49519,339,114,0,'2023-01-23 19:30:46','2023-01-23 19:30:47'),(49728,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49729,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49730,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49731,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49732,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49733,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49734,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49735,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49736,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49737,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49738,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49739,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49740,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49741,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49742,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49743,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49744,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49745,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49746,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49747,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49748,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49749,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49750,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49751,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49752,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49753,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49754,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49755,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49756,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49757,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49758,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49759,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49760,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49761,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49762,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49763,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49764,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49765,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49766,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49767,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49768,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49769,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49770,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49771,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49772,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49773,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49774,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49775,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49776,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49777,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49778,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49779,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49780,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49781,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49782,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49783,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49784,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49785,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49786,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49787,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49788,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49789,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49790,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49791,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49792,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49793,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49794,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49795,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49796,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49797,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49798,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49799,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49800,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49801,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49802,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49803,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49804,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49805,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49806,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49807,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49808,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49809,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49810,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49811,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49812,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49813,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49814,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49815,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49816,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49817,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49818,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49819,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49820,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49821,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49822,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49823,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49824,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49825,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49826,349,NULL,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49827,349,123,0,'2023-01-24 09:25:22','2023-01-24 09:25:22'),(49935,355,128,0,'2023-01-24 11:54:39','2023-01-24 11:54:39'),(49936,355,128,0,'2023-01-24 11:54:39','2023-01-24 11:54:39'),(49937,355,128,0,'2023-01-24 11:54:47','2023-01-24 11:54:48'),(49938,355,128,0,'2023-01-24 11:54:47','2023-01-24 11:54:48'),(49939,355,128,0,'2023-01-24 11:54:47','2023-01-24 11:54:48'),(49940,356,128,0,'2023-01-24 11:59:56','2023-01-24 11:59:56'),(49942,357,129,0,'2023-01-24 12:40:41','2023-01-24 12:40:41'),(49943,358,130,0,'2023-01-24 12:43:11','2023-01-24 12:43:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_sequence`
--

LOCK TABLES `sylius_order_sequence` WRITE;
/*!40000 ALTER TABLE `sylius_order_sequence` DISABLE KEYS */;
INSERT INTO `sylius_order_sequence` VALUES (6,3,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment`
--

LOCK TABLES `sylius_payment` WRITE;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
INSERT INTO `sylius_payment` VALUES (109,77,110,'EUR',2188,'cart','[]','2023-01-19 20:23:53','2023-01-21 12:05:14'),(111,77,112,'EUR',12548,'completed','[]','2023-01-20 15:47:18','2023-01-20 15:59:03'),(113,77,114,'EUR',9785,'cart','[]','2023-01-21 12:03:58','2023-01-21 12:04:58'),(117,77,118,'EUR',115500,'cart','[]','2023-01-21 14:43:22','2023-01-21 14:43:22'),(119,77,120,'EUR',115500,'cart','[]','2023-01-21 15:11:50','2023-01-21 15:11:50'),(120,77,121,'EUR',313400,'cart','[]','2023-01-22 12:32:14','2023-01-22 12:53:57'),(123,77,124,'EUR',501,'cart','[]','2023-01-22 18:14:54','2023-01-22 18:14:54'),(125,77,125,'EUR',1655,'cart','[]','2023-01-22 18:56:11','2023-01-22 18:56:11'),(137,77,135,'EUR',5043,'cart','[]','2023-01-23 01:06:51','2023-01-23 01:07:35'),(146,77,144,'EUR',70,'cart','[]','2023-01-23 19:30:47','2023-01-23 19:30:47'),(155,77,153,'EUR',1655,'cart','[]','2023-01-24 09:25:22','2023-01-24 09:25:22'),(160,77,157,'EUR',8815,'cart','[]','2023-01-24 11:54:12','2023-01-24 11:59:56'),(161,77,158,'EUR',1193,'new','[]','2023-01-24 12:40:28','2023-01-24 12:41:43'),(162,77,159,'EUR',558,'new','[]','2023-01-24 12:43:11','2023-01-24 12:44:07');
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
INSERT INTO `sylius_payment_security_token` VALUES ('-rMQsqgQe3pYroF3cATensiwrLWf8F20ZFPsApcq8I4','O:25:\"Payum\\Core\\Model\\Identity\":2:{i:0;i:161;i:1;s:26:\"App\\Entity\\Payment\\Payment\";}','http://localhost:8000/fr_FR/order/after-pay?payum_token=g_epUmx9pv3sL1UM1H_GFljU7ryGJe0DJiQhHnyCS_o','http://localhost:8000/payment/capture/-rMQsqgQe3pYroF3cATensiwrLWf8F20ZFPsApcq8I4','gateway'),('530yBXVXAFF3sEDnyEtZqjs8o7svxD6wdOd7kinYdrE','O:25:\"Payum\\Core\\Model\\Identity\":2:{i:0;i:162;i:1;s:26:\"App\\Entity\\Payment\\Payment\";}','http://localhost:8000/fr_FR/order/after-pay?payum_token=WqZI7PN7qriDXhy7_DwyWCUtdT7vwv0VicC6fxNEhwc','http://localhost:8000/payment/capture/530yBXVXAFF3sEDnyEtZqjs8o7svxD6wdOd7kinYdrE','gateway'),('g_epUmx9pv3sL1UM1H_GFljU7ryGJe0DJiQhHnyCS_o','O:25:\"Payum\\Core\\Model\\Identity\":2:{i:0;i:161;i:1;s:26:\"App\\Entity\\Payment\\Payment\";}',NULL,'http://localhost:8000/fr_FR/order/after-pay?payum_token=g_epUmx9pv3sL1UM1H_GFljU7ryGJe0DJiQhHnyCS_o','gateway'),('KA9Nv2I9pkKjC5t7aur90qv10YcWkiVFvbKFpk6f_lg','O:25:\"Payum\\Core\\Model\\Identity\":2:{i:0;i:111;i:1;s:26:\"App\\Entity\\Payment\\Payment\";}',NULL,'http://127.0.0.1:8000/fr_FR/order/after-pay?payum_token=KA9Nv2I9pkKjC5t7aur90qv10YcWkiVFvbKFpk6f_lg','gateway'),('uhlB9MXG_a9AAcyQBRs-UA4H2RyyPkDa9HHjZmrxHSU','O:25:\"Payum\\Core\\Model\\Identity\":2:{i:0;i:111;i:1;s:26:\"App\\Entity\\Payment\\Payment\";}','http://127.0.0.1:8000/fr_FR/order/after-pay?payum_token=KA9Nv2I9pkKjC5t7aur90qv10YcWkiVFvbKFpk6f_lg','http://127.0.0.1:8000/payment/capture/uhlB9MXG_a9AAcyQBRs-UA4H2RyyPkDa9HHjZmrxHSU','gateway'),('WqZI7PN7qriDXhy7_DwyWCUtdT7vwv0VicC6fxNEhwc','O:25:\"Payum\\Core\\Model\\Identity\":2:{i:0;i:162;i:1;s:26:\"App\\Entity\\Payment\\Payment\";}',NULL,'http://localhost:8000/fr_FR/order/after-pay?payum_token=WqZI7PN7qriDXhy7_DwyWCUtdT7vwv0VicC6fxNEhwc','gateway');
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
INSERT INTO `sylius_product_variant` VALUES (629,301,44,NULL,'variant fromage-de-brebis-basque','2023-01-18 22:44:01','2023-01-18 22:44:01',0,100000,1,NULL,NULL,NULL,NULL,1,1,1,1),(630,302,44,NULL,'variant fromage-de-brebis-ossau-iraty','2023-01-18 22:44:01','2023-01-24 12:41:43',1,99999,1,NULL,NULL,NULL,NULL,1,1,4,1),(631,303,44,NULL,'variant fromage-de-vache-canadien','2023-01-18 22:44:01','2023-01-24 12:44:07',1,100000,1,NULL,NULL,NULL,NULL,1,1,2,1),(632,304,44,NULL,'variant fromage-de-vache-turc','2023-01-18 22:44:01','2023-01-18 22:44:01',0,100000,1,NULL,NULL,NULL,NULL,1,1,1,1),(633,305,44,3,'variant fromage-de-chevre-de-rocamadour','2023-01-18 22:44:01','2023-01-19 18:28:47',0,100,1,NULL,NULL,NULL,NULL,1,1,2,1),(634,306,44,3,'variant fromage-de-chevre-frais','2023-01-18 22:44:01','2023-01-19 18:29:04',0,100,1,NULL,NULL,NULL,NULL,1,1,2,1),(635,307,44,3,'variant fromage-de-bleu-d-auvergne','2023-01-18 22:44:01','2023-01-19 18:09:15',0,100,1,NULL,NULL,NULL,NULL,1,1,2,1),(636,308,44,3,'variant fromage-de-bleu-de-roquefort','2023-01-18 22:44:01','2023-01-19 18:28:12',0,100,1,NULL,NULL,NULL,NULL,1,1,2,1);
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
INSERT INTO `sylius_promotion_order` VALUES (110,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipment`
--

LOCK TABLES `sylius_shipment` WRITE;
/*!40000 ALTER TABLE `sylius_shipment` DISABLE KEYS */;
INSERT INTO `sylius_shipment` VALUES (77,45,110,'cart',NULL,'2023-01-19 20:23:53','2023-01-21 12:05:14',NULL,650),(79,47,112,'ready',NULL,'2023-01-20 15:47:09','2023-01-20 15:48:59',NULL,1000),(81,45,114,'cart',NULL,'2023-01-21 12:03:58','2023-01-21 12:04:58',NULL,650),(85,44,118,'cart',NULL,'2023-01-21 14:43:22','2023-01-21 14:43:22',NULL,0),(87,44,120,'cart',NULL,'2023-01-21 15:11:50','2023-01-21 15:11:50',NULL,0),(88,44,121,'cart',NULL,'2023-01-22 12:32:14','2023-01-22 12:32:14',NULL,0),(91,43,124,'cart',NULL,'2023-01-22 18:14:54','2023-01-22 18:14:54',NULL,500),(93,43,125,'cart',NULL,'2023-01-22 18:56:11','2023-01-22 18:56:11',NULL,500),(105,45,135,'cart',NULL,'2023-01-23 01:06:51','2023-01-23 01:07:35',NULL,650),(114,44,144,'cart',NULL,'2023-01-23 19:30:47','2023-01-23 19:30:47',NULL,0),(123,43,153,'cart',NULL,'2023-01-24 09:25:22','2023-01-24 09:25:22',NULL,500),(128,45,157,'cart',NULL,'2023-01-24 11:54:12','2023-01-24 11:54:57',NULL,650),(129,43,158,'ready',NULL,'2023-01-24 12:40:28','2023-01-24 12:41:43',NULL,500),(130,43,159,'ready',NULL,'2023-01-24 12:43:11','2023-01-24 12:44:07',NULL,500);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method`
--

LOCK TABLES `sylius_shipping_method` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method` VALUES (43,3,62,44,'ups','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:500;}}',0,'flat_rate',1,0,'2023-01-18 22:44:01','2023-01-19 18:33:19',NULL),(44,3,63,44,'free','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:0;}}',0,'flat_rate',1,1,'2023-01-19 18:06:16','2023-01-20 15:48:41',NULL),(45,3,65,44,'fresh-product','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:650;}}',1,'flat_rate',1,2,'2023-01-19 18:10:40','2023-01-21 12:08:48',NULL),(46,3,63,44,'fresh-product-free','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:150;}}',1,'flat_rate',1,3,'2023-01-19 18:35:00','2023-01-20 15:39:54',NULL),(47,3,64,44,'ups-bresil','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:1000;}}',0,'flat_rate',1,4,'2023-01-20 15:45:04','2023-01-21 12:10:54',NULL),(48,3,64,44,'ups-br-fresh-product','a:1:{s:13:\"melted_cheese\";a:1:{s:6:\"amount\";i:1150;}}',1,'flat_rate',1,5,'2023-01-21 12:10:24','2023-01-21 12:10:24',NULL);
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
INSERT INTO `sylius_shipping_method_channels` VALUES (43,46),(44,46),(45,46),(46,46),(47,46),(48,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

LOCK TABLES `sylius_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_translation` VALUES (126,43,'Ups',NULL,'fr_FR'),(127,44,'free',NULL,'fr_FR'),(128,45,'Ups avec produit frais','Frais supplémentaire pour sac réfrigéré','fr_FR'),(129,46,'Livraison gratuite avec Produit frais',NULL,'fr_FR'),(130,47,'Ups Brésil',NULL,'fr_FR'),(131,48,'Ups Brésil produit frais',NULL,'fr_FR');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_billing_data`
--

LOCK TABLES `sylius_shop_billing_data` WRITE;
/*!40000 ALTER TABLE `sylius_shop_billing_data` DISABLE KEYS */;
INSERT INTO `sylius_shop_billing_data` VALUES (8,NULL,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `sylius_shop_user` VALUES (131,136,'meltedCheese-client@meltedcheese.com','meltedcheese-client@meltedcheese.com',1,'86zw6whtpxk4gkcwcks880s8wg4ckc0','$argon2i$v=19$m=65536,t=4,p=1$WHVYNTI0bHpvNmZJZDlIVQ$MpEmdJhGwhfkPlSYMW8zad4R3ws68PGOwmWkP/tOXrI','2023-01-21 12:05:14',NULL,NULL,NULL,'2023-01-18 22:44:00',0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2023-01-18 22:44:00','2023-01-21 12:05:14','argon2i');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_rate`
--

LOCK TABLES `sylius_tax_rate` WRITE;
/*!40000 ALTER TABLE `sylius_tax_rate` DISABLE KEYS */;
INSERT INTO `sylius_tax_rate` VALUES (42,44,62,'20%','20%',0.20000,1,'default','2023-01-18 22:44:00','2023-01-20 15:46:33',NULL,NULL),(43,44,64,'tax-br','Taxe brésil',0.20000,1,'default','2023-01-20 16:10:52','2023-01-20 16:10:52',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon`
--

LOCK TABLES `sylius_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
INSERT INTO `sylius_taxon` VALUES (234,234,NULL,'MENU_CATEGORY',1,16,0,0,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(235,234,234,'cut-cheese',2,7,1,0,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(236,234,235,'cheep-cheese',3,4,2,0,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(237,234,235,'cow-cheese',5,6,2,1,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(238,234,234,'cream-cheese',8,13,1,1,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(239,234,238,'goat-cheese',9,10,2,0,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(240,234,238,'blue-cheese',11,12,2,1,'2023-01-18 22:44:01','2023-01-18 22:44:01',1),(241,234,234,'recipe',14,15,1,2,'2023-01-20 12:35:12','2023-01-20 12:35:12',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` VALUES (542,234,'Category','category',NULL,'fr_FR'),(543,235,'Fromage à la coupe','cut-cheese','Fromage à la coupe','fr_FR'),(544,236,'Fromage de brebis','cheep-cheese','Fromage de brebis','fr_FR'),(545,237,'Fromage de vache','cow-cheese','Fromage de vache','fr_FR'),(546,238,'Fromage crémeux ','cream-cheese','Fromage crémeux ','fr_FR'),(547,239,'Fromage de chèvre','goat-cheese','Fromage de chèvre','fr_FR'),(548,240,'Bleu d\'auvergne','blue-cheese','Bleu d\'auvergne','fr_FR'),(549,241,'Recettes','recettes',NULL,'fr_FR');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone`
--

LOCK TABLES `sylius_zone` WRITE;
/*!40000 ALTER TABLE `sylius_zone` DISABLE KEYS */;
INSERT INTO `sylius_zone` VALUES (62,'FR_BR','Zone France - Brésil','country','all'),(63,'free-shipping-france','Livraison gratuite France','country','all'),(64,'bresil','Brésil','country','all'),(65,'up-fr-fresh-product','Ups France avec produit frais','country','all');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone_member`
--

LOCK TABLES `sylius_zone_member` WRITE;
/*!40000 ALTER TABLE `sylius_zone_member` DISABLE KEYS */;
INSERT INTO `sylius_zone_member` VALUES (114,62,'BR'),(115,62,'FR'),(116,63,'FR'),(117,64,'BR'),(118,65,'FR');
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

-- Dump completed on 2023-01-24 18:06:00
