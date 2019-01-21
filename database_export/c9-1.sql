-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: c9
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benefits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits`
--

LOCK TABLES `benefits` WRITE;
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
INSERT INTO `benefits` VALUES (1,'fa fa-adjust','Clarity in prices and services','The packages contain all details of the services.','2019-01-04 12:47:06','2019-01-04 12:47:06'),(2,'fa fa-thumbs-up','High quality services','The services are reviewed by qualified medical tourists.  ','2019-01-04 12:51:43','2019-01-04 12:51:43'),(3,'fa fa-money','Saving money','We save up to 70% of your charges for using our services','2019-01-04 12:52:00','2019-01-04 12:59:28'),(4,'fa fa-street-view','Traceable process','We inform your family about the service chain','2019-01-04 13:03:00','2019-01-04 13:06:45'),(5,'fa fa-edit','Flexible packages','There are gold/silver/bronze \nPackages for your convenience\n','2019-01-04 13:06:09','2019-01-04 13:06:09'),(6,'fa fa-envelope','7/24 Support','Medical advisers provide 24/7 support for our customers','2019-01-04 13:08:00','2019-01-04 13:09:19');
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Cosmetic','Cosmetic','2018-12-15 19:38:02','2019-01-03 14:04:32'),(2,NULL,1,'Medical','Medical','2018-12-15 19:38:02','2019-01-03 14:05:03'),(3,1,3,'Plastic surgery','plastic-surgery','2019-01-03 14:06:54','2019-01-03 14:06:54'),(4,1,4,'Rhinoplasty','rhinoplasty','2019-01-03 14:07:20','2019-01-03 14:07:20'),(5,2,5,'Dental health','dental-health','2019-01-03 14:07:51','2019-01-03 14:07:51'),(6,2,6,'Eye care ','eye-care','2019-01-03 14:08:16','2019-01-03 21:41:37');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'locale','text','Locale',0,1,1,1,1,0,NULL,12),(12,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(13,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(14,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(15,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(16,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(17,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(18,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(19,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(20,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(21,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(22,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(23,4,'id','number','ID',1,0,0,0,0,0,'{}',1),(24,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(25,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(27,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(28,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',6),(29,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(30,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(31,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(32,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(33,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(34,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(35,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(36,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(37,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(38,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(39,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(40,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(41,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(42,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(43,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(44,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(45,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(46,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(47,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(48,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(49,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(50,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(51,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(52,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(53,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(54,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(55,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(56,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(57,4,'title','text','Title',1,1,1,1,1,1,'{}',4),(58,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(59,9,'title','text','Title',0,1,1,1,1,1,'{}',2),(60,9,'icon','text','Icon',1,1,1,1,1,1,'{}',3),(61,9,'link','text','Link',0,1,1,1,1,1,'{}',4),(62,9,'order','text','Order',0,1,1,1,1,1,'{\"default\":1}',5),(63,9,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',6),(64,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(65,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(66,10,'icon','text','Icon',0,1,1,1,1,1,'{}',2),(67,10,'title','text','Title',0,1,1,1,1,1,'{}',3),(68,10,'body','text_area','Body',0,1,1,1,1,1,'{}',4),(69,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(70,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2018-12-15 19:38:01','2018-12-15 19:38:01'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-12-15 19:38:01','2018-12-15 19:38:01'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-12-15 19:38:01','2018-12-15 19:38:01'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-12-15 19:38:02','2019-01-03 21:40:06'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2018-12-15 19:38:02','2018-12-15 19:38:02'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2018-12-15 19:38:02','2018-12-15 19:38:02'),(9,'socials','socials','Social Network','Social Networks','voyager-world','App\\Models\\Social',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":null}','2019-01-04 08:38:41','2019-01-04 08:40:14'),(10,'benefits','benefits','Benefit','Benefits','voyager-receipt','App\\Models\\Benefit',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2019-01-04 12:42:39','2019-01-04 12:42:39');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-12-15 19:38:01','2018-12-15 19:38:01','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2018-12-15 19:38:01','2019-01-04 09:43:28','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2018-12-15 19:38:01','2018-12-15 19:38:01','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2018-12-15 19:38:01','2018-12-15 19:38:01','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,6,'2018-12-15 19:38:01','2019-01-04 09:45:44',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2018-12-15 19:38:01','2019-01-04 09:43:28','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2018-12-15 19:38:01','2019-01-04 09:43:28','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2018-12-15 19:38:01','2019-01-04 09:43:28','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2018-12-15 19:38:01','2019-01-04 09:43:28','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,7,'2018-12-15 19:38:01','2019-01-04 09:45:44','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,23,3,'2018-12-15 19:38:02','2019-01-04 09:45:33','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,23,1,'2018-12-15 19:38:02','2019-01-04 09:45:30','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,23,4,'2018-12-15 19:38:02','2019-01-04 09:45:45','voyager.pages.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2018-12-15 19:38:03','2019-01-04 09:43:28','voyager.hooks',NULL),(15,2,'home','','_self','fa fa-home','#000000',NULL,1,'2018-12-16 14:39:58','2018-12-16 14:56:58',NULL,''),(16,2,'Doctors','','_self','fa fa-user-md','#000000',NULL,3,'2018-12-16 14:53:37','2019-01-03 14:46:08',NULL,''),(17,2,'Gallery','','_self','fa fa-picture-o','#000000',15,3,'2018-12-16 14:56:33','2019-01-03 17:40:00',NULL,''),(18,2,'Blog','','_self','fa fa-pencil-square-o','#000000',15,2,'2018-12-16 14:59:24','2019-01-03 17:39:56',NULL,''),(19,2,'Contact Us','','_self','fa fa-envelope','#000000',NULL,4,'2018-12-16 15:00:23','2019-01-03 17:40:00',NULL,''),(20,2,'SubMenu','','_self','fa fa-edit','#000000',15,1,'2019-01-02 19:44:41','2019-01-02 20:17:02',NULL,''),(21,2,'Packages','','_self','fa fa-archive','#000000',NULL,2,'2019-01-03 14:46:02','2019-01-03 21:09:59',NULL,''),(22,1,'Social Networks','','_self','voyager-world',NULL,23,2,'2019-01-04 08:38:41','2019-01-04 09:45:31','voyager.socials.index',NULL),(23,1,'Models','','_self','voyager-paw','#000000',NULL,5,'2019-01-04 09:45:18','2019-01-04 09:45:28',NULL,''),(24,1,'Benefits','','_self','voyager-receipt',NULL,NULL,8,'2019-01-04 12:42:39','2019-01-04 12:42:39','voyager.benefits.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2018-12-15 19:38:01','2018-12-15 19:38:01'),(2,'front','2018-12-16 14:38:29','2018-12-16 14:38:38');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2016_01_01_000000_create_pages_table',2),(24,'2016_01_01_000000_create_posts_table',2),(25,'2016_02_15_204651_create_categories_table',2),(26,'2017_04_11_000000_alter_post_nullable_fields_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2018-12-15 19:38:02','2018-12-15 19:38:02');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-12-15 19:38:01','2018-12-15 19:38:01'),(2,'browse_bread',NULL,'2018-12-15 19:38:01','2018-12-15 19:38:01'),(3,'browse_database',NULL,'2018-12-15 19:38:01','2018-12-15 19:38:01'),(4,'browse_media',NULL,'2018-12-15 19:38:01','2018-12-15 19:38:01'),(5,'browse_compass',NULL,'2018-12-15 19:38:01','2018-12-15 19:38:01'),(6,'browse_menus','menus','2018-12-15 19:38:01','2018-12-15 19:38:01'),(7,'read_menus','menus','2018-12-15 19:38:01','2018-12-15 19:38:01'),(8,'edit_menus','menus','2018-12-15 19:38:01','2018-12-15 19:38:01'),(9,'add_menus','menus','2018-12-15 19:38:01','2018-12-15 19:38:01'),(10,'delete_menus','menus','2018-12-15 19:38:01','2018-12-15 19:38:01'),(11,'browse_roles','roles','2018-12-15 19:38:01','2018-12-15 19:38:01'),(12,'read_roles','roles','2018-12-15 19:38:01','2018-12-15 19:38:01'),(13,'edit_roles','roles','2018-12-15 19:38:01','2018-12-15 19:38:01'),(14,'add_roles','roles','2018-12-15 19:38:01','2018-12-15 19:38:01'),(15,'delete_roles','roles','2018-12-15 19:38:01','2018-12-15 19:38:01'),(16,'browse_users','users','2018-12-15 19:38:01','2018-12-15 19:38:01'),(17,'read_users','users','2018-12-15 19:38:01','2018-12-15 19:38:01'),(18,'edit_users','users','2018-12-15 19:38:01','2018-12-15 19:38:01'),(19,'add_users','users','2018-12-15 19:38:01','2018-12-15 19:38:01'),(20,'delete_users','users','2018-12-15 19:38:01','2018-12-15 19:38:01'),(21,'browse_settings','settings','2018-12-15 19:38:01','2018-12-15 19:38:01'),(22,'read_settings','settings','2018-12-15 19:38:01','2018-12-15 19:38:01'),(23,'edit_settings','settings','2018-12-15 19:38:01','2018-12-15 19:38:01'),(24,'add_settings','settings','2018-12-15 19:38:01','2018-12-15 19:38:01'),(25,'delete_settings','settings','2018-12-15 19:38:01','2018-12-15 19:38:01'),(26,'browse_categories','categories','2018-12-15 19:38:02','2018-12-15 19:38:02'),(27,'read_categories','categories','2018-12-15 19:38:02','2018-12-15 19:38:02'),(28,'edit_categories','categories','2018-12-15 19:38:02','2018-12-15 19:38:02'),(29,'add_categories','categories','2018-12-15 19:38:02','2018-12-15 19:38:02'),(30,'delete_categories','categories','2018-12-15 19:38:02','2018-12-15 19:38:02'),(31,'browse_posts','posts','2018-12-15 19:38:02','2018-12-15 19:38:02'),(32,'read_posts','posts','2018-12-15 19:38:02','2018-12-15 19:38:02'),(33,'edit_posts','posts','2018-12-15 19:38:02','2018-12-15 19:38:02'),(34,'add_posts','posts','2018-12-15 19:38:02','2018-12-15 19:38:02'),(35,'delete_posts','posts','2018-12-15 19:38:02','2018-12-15 19:38:02'),(36,'browse_pages','pages','2018-12-15 19:38:02','2018-12-15 19:38:02'),(37,'read_pages','pages','2018-12-15 19:38:02','2018-12-15 19:38:02'),(38,'edit_pages','pages','2018-12-15 19:38:02','2018-12-15 19:38:02'),(39,'add_pages','pages','2018-12-15 19:38:02','2018-12-15 19:38:02'),(40,'delete_pages','pages','2018-12-15 19:38:02','2018-12-15 19:38:02'),(41,'browse_hooks',NULL,'2018-12-15 19:38:03','2018-12-15 19:38:03'),(42,'browse_socials','socials','2019-01-04 08:38:41','2019-01-04 08:38:41'),(43,'read_socials','socials','2019-01-04 08:38:41','2019-01-04 08:38:41'),(44,'edit_socials','socials','2019-01-04 08:38:41','2019-01-04 08:38:41'),(45,'add_socials','socials','2019-01-04 08:38:41','2019-01-04 08:38:41'),(46,'delete_socials','socials','2019-01-04 08:38:41','2019-01-04 08:38:41'),(47,'browse_benefits','benefits','2019-01-04 12:42:39','2019-01-04 12:42:39'),(48,'read_benefits','benefits','2019-01-04 12:42:39','2019-01-04 12:42:39'),(49,'edit_benefits','benefits','2019-01-04 12:42:39','2019-01-04 12:42:39'),(50,'add_benefits','benefits','2019-01-04 12:42:39','2019-01-04 12:42:39'),(51,'delete_benefits','benefits','2019-01-04 12:42:39','2019-01-04 12:42:39');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-12-15 19:38:02','2018-12-15 19:38:02'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-12-15 19:38:02','2018-12-15 19:38:02'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-12-15 19:38:02','2018-12-15 19:38:02'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-12-15 19:38:02','2018-12-15 19:38:02');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-12-15 19:38:01','2018-12-15 19:38:01'),(2,'user','Normal User','2018-12-15 19:38:01','2018-12-15 19:38:01');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` VALUES (1,'Facebook','fa fa-facebook',NULL,1,'2019-01-04 08:42:02','2019-01-04 08:42:02'),(2,'Youtube','fa fa-youtube','',2,'2019-01-04 08:43:52','2019-01-04 08:43:52'),(3,'Twitter','fa fa-twitter','',3,'2019-01-04 08:44:42','2019-01-04 08:44:42'),(4,'Pinterest','fa fa-pinterest','',4,'2019-01-04 08:46:07','2019-01-04 08:46:07'),(5,'Instagram','fa fa-instagram','https://instagram.com',1,'2019-01-04 08:47:30','2019-01-04 08:53:42');
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2018-12-15 19:38:02','2018-12-15 19:38:02'),(2,'data_types','display_name_singular',6,'pt','Página','2018-12-15 19:38:02','2018-12-15 19:38:02'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2018-12-15 19:38:02','2018-12-15 19:38:02'),(4,'data_types','display_name_singular',4,'pt','Categoria','2018-12-15 19:38:02','2018-12-15 19:38:02'),(5,'data_types','display_name_singular',2,'pt','Menu','2018-12-15 19:38:02','2018-12-15 19:38:02'),(6,'data_types','display_name_singular',3,'pt','Função','2018-12-15 19:38:02','2018-12-15 19:38:02'),(7,'data_types','display_name_plural',5,'pt','Posts','2018-12-15 19:38:02','2018-12-15 19:38:02'),(8,'data_types','display_name_plural',6,'pt','Páginas','2018-12-15 19:38:02','2018-12-15 19:38:02'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2018-12-15 19:38:02','2018-12-15 19:38:02'),(10,'data_types','display_name_plural',4,'pt','Categorias','2018-12-15 19:38:02','2018-12-15 19:38:02'),(11,'data_types','display_name_plural',2,'pt','Menus','2018-12-15 19:38:02','2018-12-15 19:38:02'),(12,'data_types','display_name_plural',3,'pt','Funções','2018-12-15 19:38:02','2018-12-15 19:38:02'),(13,'categories','slug',1,'pt','categoria-1','2018-12-15 19:38:02','2018-12-15 19:38:02'),(14,'categories','name',1,'pt','Categoria 1','2018-12-15 19:38:02','2018-12-15 19:38:02'),(15,'categories','slug',2,'pt','categoria-2','2018-12-15 19:38:02','2018-12-15 19:38:02'),(16,'categories','name',2,'pt','Categoria 2','2018-12-15 19:38:02','2018-12-15 19:38:02'),(17,'pages','title',1,'pt','Olá Mundo','2018-12-15 19:38:02','2018-12-15 19:38:02'),(18,'pages','slug',1,'pt','ola-mundo','2018-12-15 19:38:02','2018-12-15 19:38:02'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2018-12-15 19:38:02','2018-12-15 19:38:02'),(20,'menu_items','title',1,'pt','Painel de Controle','2018-12-15 19:38:02','2018-12-15 19:38:02'),(21,'menu_items','title',2,'pt','Media','2018-12-15 19:38:03','2018-12-15 19:38:03'),(22,'menu_items','title',12,'pt','Publicações','2018-12-15 19:38:03','2018-12-15 19:38:03'),(23,'menu_items','title',3,'pt','Utilizadores','2018-12-15 19:38:03','2018-12-15 19:38:03'),(24,'menu_items','title',11,'pt','Categorias','2018-12-15 19:38:03','2018-12-15 19:38:03'),(25,'menu_items','title',13,'pt','Páginas','2018-12-15 19:38:03','2018-12-15 19:38:03'),(26,'menu_items','title',4,'pt','Funções','2018-12-15 19:38:03','2018-12-15 19:38:03'),(27,'menu_items','title',5,'pt','Ferramentas','2018-12-15 19:38:03','2018-12-15 19:38:03'),(28,'menu_items','title',6,'pt','Menus','2018-12-15 19:38:03','2018-12-15 19:38:03'),(29,'menu_items','title',7,'pt','Base de dados','2018-12-15 19:38:03','2018-12-15 19:38:03'),(30,'menu_items','title',10,'pt','Configurações','2018-12-15 19:38:03','2018-12-15 19:38:03'),(31,'menu_items','title',15,'ar','خانه','2018-12-16 14:39:58','2018-12-16 14:39:58'),(32,'menu_items','title',16,'ar','دکترها','2018-12-16 14:53:37','2018-12-16 14:53:37'),(33,'menu_items','title',17,'ar','گالری','2018-12-16 14:56:33','2018-12-16 14:56:33'),(34,'menu_items','title',18,'ar','وبلاگ','2018-12-16 14:59:24','2018-12-16 14:59:24'),(35,'menu_items','title',19,'ar','تماس با ما','2018-12-16 15:00:23','2018-12-16 15:00:23'),(36,'menu_items','title',20,'ar','زیرمنو','2019-01-02 19:44:41','2019-01-02 20:06:36'),(37,'menu_items','title',20,'pt,','','2019-01-02 19:44:41','2019-01-02 19:44:41'),(38,'categories','slug',1,'ar','category-1','2019-01-03 13:35:23','2019-01-03 13:35:23'),(39,'categories','slug',1,'pt,','category-1','2019-01-03 13:35:23','2019-01-03 13:35:23'),(40,'categories','name',1,'ar','Category 1','2019-01-03 13:35:23','2019-01-03 13:35:23'),(41,'categories','name',1,'pt,','Category 1','2019-01-03 13:35:23','2019-01-03 13:35:23'),(42,'categories','slug',2,'ar','category-2','2019-01-03 14:05:03','2019-01-03 14:05:03'),(43,'categories','slug',2,'pt,','category-2','2019-01-03 14:05:03','2019-01-03 14:05:03'),(44,'categories','name',2,'ar','Category 2','2019-01-03 14:05:03','2019-01-03 14:05:03'),(45,'categories','name',2,'pt,','Category 2','2019-01-03 14:05:03','2019-01-03 14:05:03'),(46,'categories','slug',3,'ar','Plastic-surgery','2019-01-03 14:06:54','2019-01-03 14:06:54'),(47,'categories','slug',3,'pt,','','2019-01-03 14:06:54','2019-01-03 14:06:54'),(48,'categories','name',3,'ar','Plastic surgery','2019-01-03 14:06:54','2019-01-03 14:06:54'),(49,'categories','name',3,'pt,','','2019-01-03 14:06:54','2019-01-03 14:06:54'),(50,'categories','slug',4,'ar','','2019-01-03 14:07:20','2019-01-03 14:07:20'),(51,'categories','slug',4,'pt,','','2019-01-03 14:07:20','2019-01-03 14:07:20'),(52,'categories','name',4,'ar','','2019-01-03 14:07:20','2019-01-03 14:07:20'),(53,'categories','name',4,'pt,','','2019-01-03 14:07:20','2019-01-03 14:07:20'),(54,'categories','slug',5,'ar','','2019-01-03 14:07:51','2019-01-03 14:07:51'),(55,'categories','slug',5,'pt,','','2019-01-03 14:07:51','2019-01-03 14:07:51'),(56,'categories','name',5,'ar','','2019-01-03 14:07:51','2019-01-03 14:07:51'),(57,'categories','name',5,'pt,','','2019-01-03 14:07:51','2019-01-03 14:07:51'),(58,'categories','slug',6,'ar','چشم','2019-01-03 14:08:16','2019-01-03 21:41:38'),(59,'categories','slug',6,'pt,','','2019-01-03 14:08:16','2019-01-03 14:08:16'),(60,'categories','name',6,'ar','','2019-01-03 14:08:16','2019-01-03 14:08:16'),(61,'categories','name',6,'pt,','','2019-01-03 14:08:16','2019-01-03 14:08:16'),(62,'menu_items','title',21,'ar','بسته ها','2019-01-03 14:46:02','2019-01-03 21:27:25'),(63,'menu_items','title',21,'pt,','','2019-01-03 14:46:02','2019-01-03 14:46:02'),(64,'data_types','display_name_singular',4,'ar','Category','2019-01-03 21:40:06','2019-01-03 21:40:06'),(65,'data_types','display_name_singular',4,'pt,','Category','2019-01-03 21:40:06','2019-01-03 21:40:06'),(66,'data_types','display_name_plural',4,'ar','Categories','2019-01-03 21:40:06','2019-01-03 21:40:06'),(67,'data_types','display_name_plural',4,'pt,','Categories','2019-01-03 21:40:06','2019-01-03 21:40:06'),(68,'categories','title',6,'ar','چشم','2019-01-03 21:41:09','2019-01-03 21:41:38'),(69,'categories','title',6,'pt,','Eye care','2019-01-03 21:41:09','2019-01-03 21:41:09'),(70,'data_types','display_name_singular',9,'ar','Social Network','2019-01-04 08:39:28','2019-01-04 08:39:28'),(71,'data_types','display_name_singular',9,'pt,','Social Network','2019-01-04 08:39:28','2019-01-04 08:39:28'),(72,'data_types','display_name_plural',9,'ar','Social Networks','2019-01-04 08:39:28','2019-01-04 08:39:28'),(73,'data_types','display_name_plural',9,'pt,','Social Networks','2019-01-04 08:39:28','2019-01-04 08:39:28'),(74,'socials','link',2,'ar','','2019-01-04 08:43:52','2019-01-04 08:43:52'),(75,'socials','link',2,'pt,','','2019-01-04 08:43:52','2019-01-04 08:43:52'),(76,'socials','link',3,'ar','','2019-01-04 08:44:42','2019-01-04 08:44:42'),(77,'socials','link',3,'pt,','','2019-01-04 08:44:42','2019-01-04 08:44:42'),(78,'socials','link',4,'ar','','2019-01-04 08:46:07','2019-01-04 08:46:07'),(79,'socials','link',4,'pt,','','2019-01-04 08:46:07','2019-01-04 08:46:07'),(80,'socials','link',5,'ar','https://instagram.com/fa','2019-01-04 08:47:30','2019-01-04 08:53:42'),(81,'socials','link',5,'pt,','','2019-01-04 08:47:30','2019-01-04 08:47:30'),(82,'menu_items','title',23,'ar','','2019-01-04 09:45:18','2019-01-04 09:45:18'),(83,'menu_items','title',23,'pt,','','2019-01-04 09:45:18','2019-01-04 09:45:18'),(84,'benefits','body',2,'ar','','2019-01-04 12:51:43','2019-01-04 12:51:43'),(85,'benefits','body',2,'pt,','','2019-01-04 12:51:43','2019-01-04 12:51:43'),(86,'benefits','title',2,'ar','','2019-01-04 12:51:43','2019-01-04 12:51:43'),(87,'benefits','title',2,'pt,','','2019-01-04 12:51:43','2019-01-04 12:51:43'),(88,'benefits','body',3,'ar','متن تست','2019-01-04 12:52:40','2019-01-04 12:59:29'),(89,'benefits','body',3,'pt,','','2019-01-04 12:52:40','2019-01-04 12:52:40'),(90,'benefits','title',3,'ar','تست','2019-01-04 12:52:40','2019-01-04 12:59:29'),(91,'benefits','title',3,'pt,','','2019-01-04 12:52:40','2019-01-04 12:52:40'),(92,'benefits','body',4,'ar','','2019-01-04 13:03:46','2019-01-04 13:03:46'),(93,'benefits','body',4,'pt,','','2019-01-04 13:03:46','2019-01-04 13:03:46'),(94,'benefits','title',4,'ar','','2019-01-04 13:03:46','2019-01-04 13:03:46'),(95,'benefits','title',4,'pt,','','2019-01-04 13:03:46','2019-01-04 13:03:46'),(96,'benefits','body',5,'ar','','2019-01-04 13:06:09','2019-01-04 13:06:09'),(97,'benefits','body',5,'pt,','','2019-01-04 13:06:09','2019-01-04 13:06:09'),(98,'benefits','title',5,'ar','','2019-01-04 13:06:09','2019-01-04 13:06:09'),(99,'benefits','title',5,'pt,','','2019-01-04 13:06:09','2019-01-04 13:06:09'),(100,'benefits','body',6,'ar','','2019-01-04 13:08:39','2019-01-04 13:08:39'),(101,'benefits','body',6,'pt,','','2019-01-04 13:08:39','2019-01-04 13:08:39'),(102,'benefits','title',6,'ar','','2019-01-04 13:08:39','2019-01-04 13:08:39'),(103,'benefits','title',6,'pt,','','2019-01-04 13:08:39','2019-01-04 13:08:39');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/January2019/Ym25mRQqrU3NDyrMk1kz.jpg',NULL,'$2y$10$hAOr6WqTPIvCYsuLZ5Vin.Q.lR3iJVah1QcIl4909ppS3SJ.SlYjq','K2PlJekpJUkg5cim57jHHNoO6ESFnqrUS7NQJ2LLnDnkR0X5qHgfv5Mkx4dD','{\"locale\":\"en\"}','2018-12-15 19:38:02','2019-01-04 12:30:11');
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

-- Dump completed on 2019-01-06 18:20:02
