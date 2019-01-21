DROP TABLE IF EXISTS banners;

CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'left',
  `order` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO bannersVALUES("2","HEALTH CARE","YOU RELIABLE MEDICAL SOLUTION","/","banners/January2019/1YqNY3POQ5iJvylDDAS9.jpg","2019-01-10 10:12:00","2019-01-10 10:47:30","left","1");
INSERT INTO bannersVALUES("3","24/7 HOURS SERVICES","ALL EMERGENCY CASES ARE HANDLED","/","banners/January2019/uGQxzLL2k2IwF97yyuup.jpg","2019-01-10 10:31:00","2019-01-10 10:46:47","right","2");



DROP TABLE IF EXISTS benefits;

CREATE TABLE `benefits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO benefitsVALUES("1","fa fa-adjust","Clarity in prices and services","The packages contain all details of the services.","2019-01-04 12:47:06","2019-01-04 12:47:06");
INSERT INTO benefitsVALUES("2","fa fa-thumbs-up","High quality services","The services are reviewed by qualified medical tourists.  ","2019-01-04 12:51:43","2019-01-04 12:51:43");
INSERT INTO benefitsVALUES("3","fa fa-money","Saving money","We save up to 70% of your charges for using our services","2019-01-04 12:52:00","2019-01-04 12:59:28");
INSERT INTO benefitsVALUES("4","fa fa-street-view","Traceable process","We inform your family about the service chain","2019-01-04 13:03:00","2019-01-04 13:06:45");
INSERT INTO benefitsVALUES("5","fa fa-edit","Flexible packages","There are gold/silver/bronze 
Packages for your convenience
","2019-01-04 13:06:09","2019-01-04 13:06:09");
INSERT INTO benefitsVALUES("6","fa fa-envelope","7/24 Support","Medical advisers provide 24/7 support for our customers","2019-01-04 13:08:00","2019-01-04 13:09:19");



DROP TABLE IF EXISTS categories;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO categoriesVALUES("1","","1","Cosmetic","Cosmetic","2018-12-15 19:38:02","2019-01-11 14:46:31","","categories/January2019/ZnCqelGWTtyj5a4GoTif.jpg","icon-i-neurology","One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.");
INSERT INTO categoriesVALUES("2","","1","Medical","Medical","2018-12-15 19:38:02","2019-01-11 14:47:11","","categories/January2019/GFj6n21yqK0AxMIXTkpV.jpg","icon-i-dental","One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae. 2");
INSERT INTO categoriesVALUES("3","1","3","Plastic surgery","plastic-surgery","2019-01-03 14:06:54","2019-01-03 14:06:54","","","","");
INSERT INTO categoriesVALUES("4","1","4","Rhinoplasty","rhinoplasty","2019-01-03 14:07:20","2019-01-03 14:07:20","","","","");
INSERT INTO categoriesVALUES("5","2","5","Dental health","dental-health","2019-01-03 14:07:51","2019-01-03 14:07:51","","","","");
INSERT INTO categoriesVALUES("6","2","6","Eye care ","eye-care","2019-01-03 14:08:16","2019-01-10 12:22:30","<p>This is a test message</p>","categories/January2019/2h4WwYtiUXZhSvgOr2xJ.jpg","","");



DROP TABLE IF EXISTS data_rows;

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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO data_rowsVALUES("1","1","id","number","ID","1","0","0","0","0","0","","1");
INSERT INTO data_rowsVALUES("2","1","name","text","Name","1","1","1","1","1","1","","2");
INSERT INTO data_rowsVALUES("3","1","email","text","Email","1","1","1","1","1","1","","3");
INSERT INTO data_rowsVALUES("4","1","password","password","Password","1","0","0","1","1","0","","4");
INSERT INTO data_rowsVALUES("5","1","remember_token","text","Remember Token","0","0","0","0","0","0","","5");
INSERT INTO data_rowsVALUES("6","1","created_at","timestamp","Created At","0","1","1","0","0","0","","6");
INSERT INTO data_rowsVALUES("7","1","updated_at","timestamp","Updated At","0","0","0","0","0","0","","7");
INSERT INTO data_rowsVALUES("8","1","avatar","image","Avatar","0","1","1","1","1","1","","8");
INSERT INTO data_rowsVALUES("9","1","user_belongsto_role_relationship","relationship","Role","0","1","1","1","1","0","{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}","10");
INSERT INTO data_rowsVALUES("10","1","user_belongstomany_role_relationship","relationship","Roles","0","1","1","1","1","0","{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}","11");
INSERT INTO data_rowsVALUES("11","1","locale","text","Locale","0","1","1","1","1","0","","12");
INSERT INTO data_rowsVALUES("12","1","settings","hidden","Settings","0","0","0","0","0","0","","12");
INSERT INTO data_rowsVALUES("13","2","id","number","ID","1","0","0","0","0","0","","1");
INSERT INTO data_rowsVALUES("14","2","name","text","Name","1","1","1","1","1","1","","2");
INSERT INTO data_rowsVALUES("15","2","created_at","timestamp","Created At","0","0","0","0","0","0","","3");
INSERT INTO data_rowsVALUES("16","2","updated_at","timestamp","Updated At","0","0","0","0","0","0","","4");
INSERT INTO data_rowsVALUES("17","3","id","number","ID","1","0","0","0","0","0","","1");
INSERT INTO data_rowsVALUES("18","3","name","text","Name","1","1","1","1","1","1","","2");
INSERT INTO data_rowsVALUES("19","3","created_at","timestamp","Created At","0","0","0","0","0","0","","3");
INSERT INTO data_rowsVALUES("20","3","updated_at","timestamp","Updated At","0","0","0","0","0","0","","4");
INSERT INTO data_rowsVALUES("21","3","display_name","text","Display Name","1","1","1","1","1","1","","5");
INSERT INTO data_rowsVALUES("22","1","role_id","text","Role","1","1","1","1","1","1","","9");
INSERT INTO data_rowsVALUES("23","4","id","number","ID","1","0","0","0","0","0","{}","1");
INSERT INTO data_rowsVALUES("24","4","parent_id","select_dropdown","Parent","0","0","1","1","1","1","{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}","2");
INSERT INTO data_rowsVALUES("25","4","order","text","Order","1","1","1","1","1","1","{\"default\":1}","3");
INSERT INTO data_rowsVALUES("27","4","slug","text","Slug","1","1","1","1","1","1","{\"slugify\":{\"origin\":\"name\"}}","5");
INSERT INTO data_rowsVALUES("28","4","created_at","timestamp","Created At","0","0","1","0","0","0","{}","6");
INSERT INTO data_rowsVALUES("29","4","updated_at","timestamp","Updated At","0","0","0","0","0","0","{}","7");
INSERT INTO data_rowsVALUES("30","5","id","number","ID","1","0","0","0","0","0","","1");
INSERT INTO data_rowsVALUES("31","5","author_id","text","Author","1","0","1","1","0","1","","2");
INSERT INTO data_rowsVALUES("32","5","category_id","text","Category","1","0","1","1","1","0","","3");
INSERT INTO data_rowsVALUES("33","5","title","text","Title","1","1","1","1","1","1","","4");
INSERT INTO data_rowsVALUES("34","5","excerpt","text_area","Excerpt","1","0","1","1","1","1","","5");
INSERT INTO data_rowsVALUES("35","5","body","rich_text_box","Body","1","0","1","1","1","1","","6");
INSERT INTO data_rowsVALUES("36","5","image","image","Post Image","0","1","1","1","1","1","{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}","7");
INSERT INTO data_rowsVALUES("37","5","slug","text","Slug","1","0","1","1","1","1","{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}","8");
INSERT INTO data_rowsVALUES("38","5","meta_description","text_area","Meta Description","1","0","1","1","1","1","","9");
INSERT INTO data_rowsVALUES("39","5","meta_keywords","text_area","Meta Keywords","1","0","1","1","1","1","","10");
INSERT INTO data_rowsVALUES("40","5","status","select_dropdown","Status","1","1","1","1","1","1","{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}","11");
INSERT INTO data_rowsVALUES("41","5","created_at","timestamp","Created At","0","1","1","0","0","0","","12");
INSERT INTO data_rowsVALUES("42","5","updated_at","timestamp","Updated At","0","0","0","0","0","0","","13");
INSERT INTO data_rowsVALUES("43","5","seo_title","text","SEO Title","0","1","1","1","1","1","","14");
INSERT INTO data_rowsVALUES("44","5","featured","checkbox","Featured","1","1","1","1","1","1","","15");
INSERT INTO data_rowsVALUES("45","6","id","number","ID","1","0","0","0","0","0","","1");
INSERT INTO data_rowsVALUES("46","6","author_id","text","Author","1","0","0","0","0","0","","2");
INSERT INTO data_rowsVALUES("47","6","title","text","Title","1","1","1","1","1","1","","3");
INSERT INTO data_rowsVALUES("48","6","excerpt","text_area","Excerpt","1","0","1","1","1","1","","4");
INSERT INTO data_rowsVALUES("49","6","body","rich_text_box","Body","1","0","1","1","1","1","","5");
INSERT INTO data_rowsVALUES("50","6","slug","text","Slug","1","0","1","1","1","1","{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}","6");
INSERT INTO data_rowsVALUES("51","6","meta_description","text","Meta Description","1","0","1","1","1","1","","7");
INSERT INTO data_rowsVALUES("52","6","meta_keywords","text","Meta Keywords","1","0","1","1","1","1","","8");
INSERT INTO data_rowsVALUES("53","6","status","select_dropdown","Status","1","1","1","1","1","1","{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}","9");
INSERT INTO data_rowsVALUES("54","6","created_at","timestamp","Created At","1","1","1","0","0","0","","10");
INSERT INTO data_rowsVALUES("55","6","updated_at","timestamp","Updated At","1","0","0","0","0","0","","11");
INSERT INTO data_rowsVALUES("56","6","image","image","Page Image","0","1","1","1","1","1","","12");
INSERT INTO data_rowsVALUES("57","4","title","text","Title","1","1","1","1","1","1","{}","4");
INSERT INTO data_rowsVALUES("58","9","id","text","Id","1","0","0","0","0","0","{}","1");
INSERT INTO data_rowsVALUES("59","9","title","text","Title","0","1","1","1","1","1","{}","2");
INSERT INTO data_rowsVALUES("60","9","icon","text","Icon","1","1","1","1","1","1","{}","3");
INSERT INTO data_rowsVALUES("61","9","link","text","Link","0","1","1","1","1","1","{}","4");
INSERT INTO data_rowsVALUES("62","9","order","text","Order","0","1","1","1","1","1","{\"default\":1}","5");
INSERT INTO data_rowsVALUES("63","9","created_at","timestamp","Created At","0","0","1","0","0","0","{}","6");
INSERT INTO data_rowsVALUES("64","9","updated_at","timestamp","Updated At","0","0","0","0","0","0","{}","7");
INSERT INTO data_rowsVALUES("65","10","id","text","Id","1","0","0","0","0","0","{}","1");
INSERT INTO data_rowsVALUES("66","10","icon","text","Icon","0","1","1","1","1","1","{}","2");
INSERT INTO data_rowsVALUES("67","10","title","text","Title","0","1","1","1","1","1","{}","3");
INSERT INTO data_rowsVALUES("68","10","body","text_area","Body","0","1","1","1","1","1","{}","4");
INSERT INTO data_rowsVALUES("69","10","created_at","timestamp","Created At","0","1","1","1","0","1","{}","5");
INSERT INTO data_rowsVALUES("70","10","updated_at","timestamp","Updated At","0","0","0","0","0","0","{}","6");
INSERT INTO data_rowsVALUES("71","12","id","text","Id","1","0","0","0","0","0","{}","1");
INSERT INTO data_rowsVALUES("72","12","title","text","Title","1","1","1","1","1","1","{}","2");
INSERT INTO data_rowsVALUES("73","12","subtitle","text","Subtitle","0","1","1","1","1","1","{}","3");
INSERT INTO data_rowsVALUES("74","12","link","text","Link","0","1","1","1","1","1","{}","4");
INSERT INTO data_rowsVALUES("75","12","image","image","Image","0","1","1","1","1","1","{\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}","5");
INSERT INTO data_rowsVALUES("76","12","created_at","timestamp","Created At","0","0","1","1","0","1","{}","6");
INSERT INTO data_rowsVALUES("77","12","updated_at","timestamp","Updated At","0","0","1","0","0","0","{}","7");
INSERT INTO data_rowsVALUES("78","12","position","select_dropdown","Position","0","1","1","1","1","1","{\"default\":\"left\",\"options\":{\"left\":\"left\",\"right\":\"right\",\"center\":\"center\"}}","8");
INSERT INTO data_rowsVALUES("79","12","order","number","Order","0","1","1","1","1","1","{}","9");
INSERT INTO data_rowsVALUES("80","4","body","rich_text_box","Body","0","0","1","1","1","1","{}","8");
INSERT INTO data_rowsVALUES("81","4","image","image","Image","0","1","1","1","1","1","{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}","9");
INSERT INTO data_rowsVALUES("82","13","id","text","Id","1","0","0","0","0","0","{}","1");
INSERT INTO data_rowsVALUES("83","13","first_name","text","First Name","0","1","1","1","1","1","{}","2");
INSERT INTO data_rowsVALUES("84","13","last_name","text","Last Name","0","1","1","1","1","1","{}","3");
INSERT INTO data_rowsVALUES("85","13","country_code","text","Country Code","0","1","1","1","1","1","{}","4");
INSERT INTO data_rowsVALUES("86","13","phone","text","Phone","0","1","1","1","1","1","{}","5");
INSERT INTO data_rowsVALUES("87","13","email","text","Email","0","1","1","1","1","1","{}","6");
INSERT INTO data_rowsVALUES("88","13","category_id","text","Category Id","0","1","1","1","1","1","{}","7");
INSERT INTO data_rowsVALUES("89","13","created_at","timestamp","Created At","0","1","1","0","0","1","{}","8");
INSERT INTO data_rowsVALUES("90","13","updated_at","timestamp","Updated At","0","0","0","0","0","0","{}","9");
INSERT INTO data_rowsVALUES("91","13","request_belongsto_category_relationship","relationship","categories","0","1","1","1","1","1","{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}","10");
INSERT INTO data_rowsVALUES("92","13","message","text","Message","0","0","1","1","1","1","{}","10");
INSERT INTO data_rowsVALUES("93","4","icon","text","Icon","0","0","1","1","1","1","{}","10");
INSERT INTO data_rowsVALUES("94","4","excerpt","text_area","Excerpt","0","0","1","1","1","1","{}","11");



DROP TABLE IF EXISTS data_types;

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO data_typesVALUES("1","users","users","User","Users","voyager-person","TCG\\Voyager\\Models\\User","TCG\\Voyager\\Policies\\UserPolicy","","","1","0","","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO data_typesVALUES("2","menus","menus","Menu","Menus","voyager-list","TCG\\Voyager\\Models\\Menu","","","","1","0","","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO data_typesVALUES("3","roles","roles","Role","Roles","voyager-lock","TCG\\Voyager\\Models\\Role","","","","1","0","","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO data_typesVALUES("4","categories","categories","Category","Categories","voyager-categories","TCG\\Voyager\\Models\\Category","","","","1","0","{\"order_column\":null,\"order_display_column\":null}","2018-12-15 19:38:02","2019-01-11 12:24:18");
INSERT INTO data_typesVALUES("5","posts","posts","Post","Posts","voyager-news","TCG\\Voyager\\Models\\Post","TCG\\Voyager\\Policies\\PostPolicy","","","1","0","","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO data_typesVALUES("6","pages","pages","Page","Pages","voyager-file-text","TCG\\Voyager\\Models\\Page","","","","1","0","","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO data_typesVALUES("9","socials","socials","Social Network","Social Networks","voyager-world","App\\Models\\Social","","","","1","0","{\"order_column\":\"id\",\"order_display_column\":null}","2019-01-04 08:38:41","2019-01-04 08:40:14");
INSERT INTO data_typesVALUES("10","benefits","benefits","Benefit","Benefits","voyager-receipt","App\\Models\\Benefit","","","","1","0","{\"order_column\":null,\"order_display_column\":null}","2019-01-04 12:42:39","2019-01-04 12:42:39");
INSERT INTO data_typesVALUES("12","banners","banners","Banner","Banners","voyager-photo","App\\Models\\Banner","","","","1","0","{\"order_column\":null,\"order_display_column\":null}","2019-01-10 10:00:49","2019-01-10 10:23:48");
INSERT INTO data_typesVALUES("13","requests","requests","Request","Requests","voyager-question","App\\Models\\Request","","","","1","0","{\"order_column\":null,\"order_display_column\":null}","2019-01-10 12:41:52","2019-01-10 13:56:05");



DROP TABLE IF EXISTS menu_items;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO menu_itemsVALUES("1","1","Dashboard","","_self","voyager-boat","","","1","2018-12-15 19:38:01","2018-12-15 19:38:01","voyager.dashboard","");
INSERT INTO menu_itemsVALUES("2","1","Media","","_self","voyager-images","","","4","2018-12-15 19:38:01","2019-01-04 09:43:28","voyager.media.index","");
INSERT INTO menu_itemsVALUES("3","1","Users","","_self","voyager-person","","","3","2018-12-15 19:38:01","2018-12-15 19:38:01","voyager.users.index","");
INSERT INTO menu_itemsVALUES("4","1","Roles","","_self","voyager-lock","","","2","2018-12-15 19:38:01","2018-12-15 19:38:01","voyager.roles.index","");
INSERT INTO menu_itemsVALUES("5","1","Tools","","_self","voyager-tools","","","6","2018-12-15 19:38:01","2019-01-04 09:45:44","","");
INSERT INTO menu_itemsVALUES("6","1","Menu Builder","","_self","voyager-list","","5","2","2018-12-15 19:38:01","2019-01-09 18:40:39","voyager.menus.index","");
INSERT INTO menu_itemsVALUES("7","1","Database","","_self","voyager-data","","5","4","2018-12-15 19:38:01","2019-01-09 18:40:39","voyager.database.index","");
INSERT INTO menu_itemsVALUES("8","1","Compass","","_self","voyager-compass","","5","5","2018-12-15 19:38:01","2019-01-09 18:40:39","voyager.compass.index","");
INSERT INTO menu_itemsVALUES("9","1","BREAD","","_self","voyager-bread","","5","6","2018-12-15 19:38:01","2019-01-09 18:40:39","voyager.bread.index","");
INSERT INTO menu_itemsVALUES("10","1","Settings","","_self","voyager-settings","","5","3","2018-12-15 19:38:01","2019-01-09 18:40:39","voyager.settings.index","");
INSERT INTO menu_itemsVALUES("11","1","Categories","","_self","voyager-categories","","23","1","2018-12-15 19:38:02","2019-01-09 18:39:19","voyager.categories.index","");
INSERT INTO menu_itemsVALUES("12","1","Posts","","_self","voyager-news","","23","2","2018-12-15 19:38:02","2019-01-09 18:39:19","voyager.posts.index","");
INSERT INTO menu_itemsVALUES("13","1","Pages","","_self","voyager-file-text","","23","7","2018-12-15 19:38:02","2019-01-10 17:33:39","voyager.pages.index","");
INSERT INTO menu_itemsVALUES("14","1","Hooks","","_self","voyager-hook","","5","1","2018-12-15 19:38:03","2019-01-09 18:40:39","voyager.hooks","");
INSERT INTO menu_itemsVALUES("15","2","home","","_self","fa fa-home","#000000","","1","2018-12-16 14:39:58","2019-01-09 06:08:18","home","null");
INSERT INTO menu_itemsVALUES("16","2","Doctors","","_self","fa fa-user-md","#000000","","3","2018-12-16 14:53:37","2019-01-09 11:52:45","","");
INSERT INTO menu_itemsVALUES("17","2","Gallery","","_self","fa fa-picture-o","#000000","15","2","2018-12-16 14:56:33","2019-01-09 11:52:43","","");
INSERT INTO menu_itemsVALUES("18","2","Blog","","_self","fa fa-pencil-square-o","#000000","","4","2018-12-16 14:59:24","2019-01-09 12:10:41","blog.index","null");
INSERT INTO menu_itemsVALUES("19","2","Contact Us","","_self","fa fa-envelope","#000000","25","1","2018-12-16 15:00:23","2019-01-08 20:20:02","","");
INSERT INTO menu_itemsVALUES("20","2","SubMenu","","_self","fa fa-edit","#000000","15","1","2019-01-02 19:44:41","2019-01-02 20:17:02","","");
INSERT INTO menu_itemsVALUES("21","2","Packages","","_self","fa fa-archive","#000000","","2","2019-01-03 14:46:02","2019-01-03 21:09:59","","");
INSERT INTO menu_itemsVALUES("22","1","Social Networks","","_self","voyager-world","","23","3","2019-01-04 08:38:41","2019-01-10 10:04:09","voyager.socials.index","");
INSERT INTO menu_itemsVALUES("23","1","Models","","_self","voyager-paw","#000000","","5","2019-01-04 09:45:18","2019-01-04 09:45:28","","");
INSERT INTO menu_itemsVALUES("24","1","Benefits","","_self","voyager-receipt","","23","6","2019-01-04 12:42:39","2019-01-10 17:33:39","voyager.benefits.index","");
INSERT INTO menu_itemsVALUES("25","2","About us","","_self","fa fa-envelope","#000000","","5","2019-01-08 20:19:45","2019-01-09 12:10:57","pages.show","{\"about-us\":\"about-us\"}");
INSERT INTO menu_itemsVALUES("26","1","Banners","","_self","voyager-photos","#000000","23","4","2019-01-10 10:00:49","2019-01-10 10:04:19","voyager.banners.index","null");
INSERT INTO menu_itemsVALUES("27","1","Requests","","_self","voyager-question","","23","5","2019-01-10 12:41:52","2019-01-10 17:33:39","voyager.requests.index","");



DROP TABLE IF EXISTS menus;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO menusVALUES("1","admin","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO menusVALUES("2","front","2018-12-16 14:38:29","2018-12-16 14:38:38");



DROP TABLE IF EXISTS migrations;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrationsVALUES("1","2014_10_12_000000_create_users_table","1");
INSERT INTO migrationsVALUES("2","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrationsVALUES("3","2016_01_01_000000_add_voyager_user_fields","1");
INSERT INTO migrationsVALUES("4","2016_01_01_000000_create_data_types_table","1");
INSERT INTO migrationsVALUES("5","2016_05_19_173453_create_menu_table","1");
INSERT INTO migrationsVALUES("6","2016_10_21_190000_create_roles_table","1");
INSERT INTO migrationsVALUES("7","2016_10_21_190000_create_settings_table","1");
INSERT INTO migrationsVALUES("8","2016_11_30_135954_create_permission_table","1");
INSERT INTO migrationsVALUES("9","2016_11_30_141208_create_permission_role_table","1");
INSERT INTO migrationsVALUES("10","2016_12_26_201236_data_types__add__server_side","1");
INSERT INTO migrationsVALUES("11","2017_01_13_000000_add_route_to_menu_items_table","1");
INSERT INTO migrationsVALUES("12","2017_01_14_005015_create_translations_table","1");
INSERT INTO migrationsVALUES("13","2017_01_15_000000_make_table_name_nullable_in_permissions_table","1");
INSERT INTO migrationsVALUES("14","2017_03_06_000000_add_controller_to_data_types_table","1");
INSERT INTO migrationsVALUES("15","2017_04_21_000000_add_order_to_data_rows_table","1");
INSERT INTO migrationsVALUES("16","2017_07_05_210000_add_policyname_to_data_types_table","1");
INSERT INTO migrationsVALUES("17","2017_08_05_000000_add_group_to_settings_table","1");
INSERT INTO migrationsVALUES("18","2017_11_26_013050_add_user_role_relationship","1");
INSERT INTO migrationsVALUES("19","2017_11_26_015000_create_user_roles_table","1");
INSERT INTO migrationsVALUES("20","2018_03_11_000000_add_user_settings","1");
INSERT INTO migrationsVALUES("21","2018_03_14_000000_add_details_to_data_types_table","1");
INSERT INTO migrationsVALUES("22","2018_03_16_000000_make_settings_value_nullable","1");
INSERT INTO migrationsVALUES("23","2016_01_01_000000_create_pages_table","2");
INSERT INTO migrationsVALUES("24","2016_01_01_000000_create_posts_table","2");
INSERT INTO migrationsVALUES("25","2016_02_15_204651_create_categories_table","2");
INSERT INTO migrationsVALUES("26","2017_04_11_000000_alter_post_nullable_fields_table","2");



DROP TABLE IF EXISTS pages;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO pagesVALUES("1","0","Hello World","Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.","<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>
<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>","pages/page1.jpg","hello-world","Yar Meta Description","Keyword1, Keyword2","ACTIVE","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO pagesVALUES("2","1","About us","One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.","<p><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.</span></p>
<p><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.&nbsp;</span><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.</span></p>","pages/January2019/7A9coV2ywvO1RMMLazhS.jpg","about-us","test2","test","ACTIVE","2019-01-08 19:36:52","2019-01-09 07:19:25");



DROP TABLE IF EXISTS password_resets;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS permission_role;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permission_roleVALUES("1","1");
INSERT INTO permission_roleVALUES("1","3");
INSERT INTO permission_roleVALUES("2","1");
INSERT INTO permission_roleVALUES("3","1");
INSERT INTO permission_roleVALUES("4","1");
INSERT INTO permission_roleVALUES("4","3");
INSERT INTO permission_roleVALUES("5","1");
INSERT INTO permission_roleVALUES("6","1");
INSERT INTO permission_roleVALUES("6","3");
INSERT INTO permission_roleVALUES("7","1");
INSERT INTO permission_roleVALUES("7","3");
INSERT INTO permission_roleVALUES("8","1");
INSERT INTO permission_roleVALUES("8","3");
INSERT INTO permission_roleVALUES("9","1");
INSERT INTO permission_roleVALUES("9","3");
INSERT INTO permission_roleVALUES("10","1");
INSERT INTO permission_roleVALUES("10","3");
INSERT INTO permission_roleVALUES("11","1");
INSERT INTO permission_roleVALUES("12","1");
INSERT INTO permission_roleVALUES("13","1");
INSERT INTO permission_roleVALUES("14","1");
INSERT INTO permission_roleVALUES("15","1");
INSERT INTO permission_roleVALUES("16","1");
INSERT INTO permission_roleVALUES("17","1");
INSERT INTO permission_roleVALUES("18","1");
INSERT INTO permission_roleVALUES("19","1");
INSERT INTO permission_roleVALUES("20","1");
INSERT INTO permission_roleVALUES("21","1");
INSERT INTO permission_roleVALUES("21","3");
INSERT INTO permission_roleVALUES("22","1");
INSERT INTO permission_roleVALUES("22","3");
INSERT INTO permission_roleVALUES("23","1");
INSERT INTO permission_roleVALUES("23","3");
INSERT INTO permission_roleVALUES("24","1");
INSERT INTO permission_roleVALUES("24","3");
INSERT INTO permission_roleVALUES("25","1");
INSERT INTO permission_roleVALUES("25","3");
INSERT INTO permission_roleVALUES("26","1");
INSERT INTO permission_roleVALUES("26","3");
INSERT INTO permission_roleVALUES("27","1");
INSERT INTO permission_roleVALUES("27","3");
INSERT INTO permission_roleVALUES("28","1");
INSERT INTO permission_roleVALUES("28","3");
INSERT INTO permission_roleVALUES("29","1");
INSERT INTO permission_roleVALUES("29","3");
INSERT INTO permission_roleVALUES("30","1");
INSERT INTO permission_roleVALUES("30","3");
INSERT INTO permission_roleVALUES("31","1");
INSERT INTO permission_roleVALUES("31","3");
INSERT INTO permission_roleVALUES("32","1");
INSERT INTO permission_roleVALUES("32","3");
INSERT INTO permission_roleVALUES("33","1");
INSERT INTO permission_roleVALUES("33","3");
INSERT INTO permission_roleVALUES("34","1");
INSERT INTO permission_roleVALUES("34","3");
INSERT INTO permission_roleVALUES("35","1");
INSERT INTO permission_roleVALUES("35","3");
INSERT INTO permission_roleVALUES("36","1");
INSERT INTO permission_roleVALUES("36","3");
INSERT INTO permission_roleVALUES("37","1");
INSERT INTO permission_roleVALUES("37","3");
INSERT INTO permission_roleVALUES("38","1");
INSERT INTO permission_roleVALUES("38","3");
INSERT INTO permission_roleVALUES("39","1");
INSERT INTO permission_roleVALUES("39","3");
INSERT INTO permission_roleVALUES("40","1");
INSERT INTO permission_roleVALUES("40","3");
INSERT INTO permission_roleVALUES("42","1");
INSERT INTO permission_roleVALUES("42","3");
INSERT INTO permission_roleVALUES("43","1");
INSERT INTO permission_roleVALUES("43","3");
INSERT INTO permission_roleVALUES("44","1");
INSERT INTO permission_roleVALUES("44","3");
INSERT INTO permission_roleVALUES("45","1");
INSERT INTO permission_roleVALUES("45","3");
INSERT INTO permission_roleVALUES("46","1");
INSERT INTO permission_roleVALUES("46","3");
INSERT INTO permission_roleVALUES("47","1");
INSERT INTO permission_roleVALUES("47","3");
INSERT INTO permission_roleVALUES("48","1");
INSERT INTO permission_roleVALUES("48","3");
INSERT INTO permission_roleVALUES("49","1");
INSERT INTO permission_roleVALUES("49","3");
INSERT INTO permission_roleVALUES("50","1");
INSERT INTO permission_roleVALUES("50","3");
INSERT INTO permission_roleVALUES("51","1");
INSERT INTO permission_roleVALUES("51","3");
INSERT INTO permission_roleVALUES("52","1");
INSERT INTO permission_roleVALUES("52","3");
INSERT INTO permission_roleVALUES("53","1");
INSERT INTO permission_roleVALUES("53","3");
INSERT INTO permission_roleVALUES("54","1");
INSERT INTO permission_roleVALUES("54","3");
INSERT INTO permission_roleVALUES("55","1");
INSERT INTO permission_roleVALUES("55","3");
INSERT INTO permission_roleVALUES("56","1");
INSERT INTO permission_roleVALUES("56","3");
INSERT INTO permission_roleVALUES("57","1");
INSERT INTO permission_roleVALUES("57","3");
INSERT INTO permission_roleVALUES("58","1");
INSERT INTO permission_roleVALUES("58","3");
INSERT INTO permission_roleVALUES("59","1");
INSERT INTO permission_roleVALUES("59","3");
INSERT INTO permission_roleVALUES("60","1");
INSERT INTO permission_roleVALUES("60","3");
INSERT INTO permission_roleVALUES("61","1");
INSERT INTO permission_roleVALUES("61","3");



DROP TABLE IF EXISTS permissions;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissionsVALUES("1","browse_admin","","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("2","browse_bread","","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("3","browse_database","","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("4","browse_media","","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("5","browse_compass","","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("6","browse_menus","menus","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("7","read_menus","menus","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("8","edit_menus","menus","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("9","add_menus","menus","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("10","delete_menus","menus","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("11","browse_roles","roles","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("12","read_roles","roles","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("13","edit_roles","roles","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("14","add_roles","roles","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("15","delete_roles","roles","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("16","browse_users","users","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("17","read_users","users","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("18","edit_users","users","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("19","add_users","users","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("20","delete_users","users","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("21","browse_settings","settings","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("22","read_settings","settings","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("23","edit_settings","settings","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("24","add_settings","settings","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("25","delete_settings","settings","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO permissionsVALUES("26","browse_categories","categories","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("27","read_categories","categories","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("28","edit_categories","categories","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("29","add_categories","categories","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("30","delete_categories","categories","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("31","browse_posts","posts","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("32","read_posts","posts","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("33","edit_posts","posts","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("34","add_posts","posts","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("35","delete_posts","posts","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("36","browse_pages","pages","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("37","read_pages","pages","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("38","edit_pages","pages","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("39","add_pages","pages","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("40","delete_pages","pages","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO permissionsVALUES("41","browse_hooks","","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO permissionsVALUES("42","browse_socials","socials","2019-01-04 08:38:41","2019-01-04 08:38:41");
INSERT INTO permissionsVALUES("43","read_socials","socials","2019-01-04 08:38:41","2019-01-04 08:38:41");
INSERT INTO permissionsVALUES("44","edit_socials","socials","2019-01-04 08:38:41","2019-01-04 08:38:41");
INSERT INTO permissionsVALUES("45","add_socials","socials","2019-01-04 08:38:41","2019-01-04 08:38:41");
INSERT INTO permissionsVALUES("46","delete_socials","socials","2019-01-04 08:38:41","2019-01-04 08:38:41");
INSERT INTO permissionsVALUES("47","browse_benefits","benefits","2019-01-04 12:42:39","2019-01-04 12:42:39");
INSERT INTO permissionsVALUES("48","read_benefits","benefits","2019-01-04 12:42:39","2019-01-04 12:42:39");
INSERT INTO permissionsVALUES("49","edit_benefits","benefits","2019-01-04 12:42:39","2019-01-04 12:42:39");
INSERT INTO permissionsVALUES("50","add_benefits","benefits","2019-01-04 12:42:39","2019-01-04 12:42:39");
INSERT INTO permissionsVALUES("51","delete_benefits","benefits","2019-01-04 12:42:39","2019-01-04 12:42:39");
INSERT INTO permissionsVALUES("52","browse_banners","banners","2019-01-10 10:00:49","2019-01-10 10:00:49");
INSERT INTO permissionsVALUES("53","read_banners","banners","2019-01-10 10:00:49","2019-01-10 10:00:49");
INSERT INTO permissionsVALUES("54","edit_banners","banners","2019-01-10 10:00:49","2019-01-10 10:00:49");
INSERT INTO permissionsVALUES("55","add_banners","banners","2019-01-10 10:00:49","2019-01-10 10:00:49");
INSERT INTO permissionsVALUES("56","delete_banners","banners","2019-01-10 10:00:49","2019-01-10 10:00:49");
INSERT INTO permissionsVALUES("57","browse_requests","requests","2019-01-10 12:41:52","2019-01-10 12:41:52");
INSERT INTO permissionsVALUES("58","read_requests","requests","2019-01-10 12:41:52","2019-01-10 12:41:52");
INSERT INTO permissionsVALUES("59","edit_requests","requests","2019-01-10 12:41:52","2019-01-10 12:41:52");
INSERT INTO permissionsVALUES("60","add_requests","requests","2019-01-10 12:41:52","2019-01-10 12:41:52");
INSERT INTO permissionsVALUES("61","delete_requests","requests","2019-01-10 12:41:52","2019-01-10 12:41:52");



DROP TABLE IF EXISTS posts;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO postsVALUES("1","1","1","Lorem Ipsum Post","","This is the excerpt for the Lorem Ipsum Post","<p>This is the body of the lorem ipsum post</p>","posts/January2019/1IISlNajUP8qgSzUBMXs.jpg","lorem-ipsum-post","This is the meta description","keyword1, keyword2, keyword3","PUBLISHED","0","2018-12-15 19:38:02","2019-01-10 07:53:30");
INSERT INTO postsVALUES("2","1","1","My Sample Post","","This is the excerpt for the sample Post","<p>This is the body for the sample post, which includes the body.</p>
<h2>We can use all kinds of format!</h2>
<p>And include a bunch of other stuff.</p>","posts/January2019/NbXUhwwwBfWOJRP1tVSh.jpg","my-sample-post","Meta Description for sample post","keyword1, keyword2, keyword3","PUBLISHED","0","2018-12-15 19:38:02","2019-01-09 09:27:16");
INSERT INTO postsVALUES("3","1","1","Latest Post","","This is the excerpt for the latest post","<p>This is the body for the latest post</p>","posts/January2019/hUSjawUDG8nmGKPz8WSk.jpg","latest-post","This is the meta description","keyword1, keyword2, keyword3","PUBLISHED","0","2018-12-15 19:38:02","2019-01-09 09:28:14");
INSERT INTO postsVALUES("4","1","1","Yarr Post","","Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.","<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>
<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>
<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>","posts/January2019/LjhpdnNr2X1It4r7HyO8.jpg","yarr-post","this be a meta descript","keyword1, keyword2, keyword3","PUBLISHED","0","2018-12-15 19:38:02","2019-01-11 14:27:19");
INSERT INTO postsVALUES("5","1","1","About us","","Lorem ipsum dolor sit amet, fusce elementum vehicula, magna elementum pede eros, ante elementum. Urna scelerisque mi sollicitudin neque amet dui, augue erat. Tortor fusce erat proin quisque sed lorem, justo eu.","<p><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">Lorem ipsum dolor sit amet, fusce elementum vehicula, magna elementum pede eros, ante elementum. Urna scelerisque mi sollicitudin neque amet dui, augue erat. Tortor fusce erat proin quisque sed lorem, justo eu.</span></p>","posts/January2019/k4o0z3AcCsPaV380F9bT.jpg","about-us","","","PUBLISHED","0","2019-01-08 18:59:07","2019-01-09 09:26:37");



DROP TABLE IF EXISTS requests;

CREATE TABLE `requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO requestsVALUES("1","Masoud","Reyhanian","098","9144062667","mrhn2005@gmail.com","","2019-01-10 13:56:21","2019-01-10 13:56:21","");
INSERT INTO requestsVALUES("2","Masoud","Reyhanian","Iran","9144062667","mrhn2005@gmail.com","3","2019-01-10 13:59:21","2019-01-10 13:59:21","");
INSERT INTO requestsVALUES("3","Masoud","Reyhanian","Iran","9144062667","mrhn2005@gmail.com","1","2019-01-10 14:19:24","2019-01-10 14:19:24","");
INSERT INTO requestsVALUES("4","Masoud","Reyhanian","Iran","9144062667","mrhn2005@gmail.com","4","2019-01-10 14:19:50","2019-01-10 14:19:50","");
INSERT INTO requestsVALUES("5","Masoud","Reyhanian","Iran","9144062667","mrhn2005@gmail.com","3","2019-01-10 14:24:09","2019-01-10 14:24:09","");
INSERT INTO requestsVALUES("6","Masoud","Reyhanian","Iran","9144062667","mrhn2005@gmail.com","3","2019-01-10 14:24:51","2019-01-10 14:24:51","");
INSERT INTO requestsVALUES("7","Masoud","Reyhanian","Iran","9144062667","mrhn2005@gmail.com","3","2019-01-10 14:31:58","2019-01-10 14:31:58","");
INSERT INTO requestsVALUES("8","Masoud","Reyhanian","Iran","9144062667","mrhn2005@gmail.com","3","2019-01-11 18:20:01","2019-01-11 18:20:01","sdfscxc dfssd");



DROP TABLE IF EXISTS roles;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO rolesVALUES("1","admin","Administrator","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO rolesVALUES("2","user","Normal User","2018-12-15 19:38:01","2018-12-15 19:38:01");
INSERT INTO rolesVALUES("3","author","Author","2019-01-11 21:23:23","2019-01-11 21:23:23");



DROP TABLE IF EXISTS settings;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO settingsVALUES("1","ar.title","Site Title","Arabic title","","text","1","ar");
INSERT INTO settingsVALUES("2","site.description","Site Description","Site Description","","text","2","Site");
INSERT INTO settingsVALUES("3","site.logo","Site Logo","","","image","3","Site");
INSERT INTO settingsVALUES("4","site.google_analytics_tracking_id","Google Analytics Tracking ID","","","text","4","Site");
INSERT INTO settingsVALUES("5","admin.bg_image","Admin Background Image","","","image","5","Admin");
INSERT INTO settingsVALUES("6","en.title","Admin Title","English title","","text","1","en");
INSERT INTO settingsVALUES("7","admin.description","Admin Description","Welcome to Voyager. The Missing Admin for Laravel","","text","2","Admin");
INSERT INTO settingsVALUES("8","admin.loader","Admin Loader","","","image","3","Admin");
INSERT INTO settingsVALUES("9","admin.icon_image","Admin Icon Image","","","image","4","Admin");
INSERT INTO settingsVALUES("10","admin.google_analytics_client_id","Google Analytics Client ID (used for admin dashboard)","","","text","1","Admin");



DROP TABLE IF EXISTS socials;

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

INSERT INTO socialsVALUES("1","Facebook","fa fa-facebook","","1","2019-01-04 08:42:02","2019-01-04 08:42:02");
INSERT INTO socialsVALUES("2","Youtube","fa fa-youtube","","2","2019-01-04 08:43:52","2019-01-04 08:43:52");
INSERT INTO socialsVALUES("3","Twitter","fa fa-twitter","","3","2019-01-04 08:44:42","2019-01-04 08:44:42");
INSERT INTO socialsVALUES("4","Pinterest","fa fa-pinterest","","4","2019-01-04 08:46:07","2019-01-04 08:46:07");
INSERT INTO socialsVALUES("5","Instagram","fa fa-instagram","https://instagram.com","1","2019-01-04 08:47:30","2019-01-04 08:53:42");



DROP TABLE IF EXISTS translations;

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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO translationsVALUES("1","data_types","display_name_singular","5","pt","Post","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("2","data_types","display_name_singular","6","pt","P�gina","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("3","data_types","display_name_singular","1","pt","Utilizador","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("4","data_types","display_name_singular","4","pt","Categoria","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("5","data_types","display_name_singular","2","pt","Menu","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("6","data_types","display_name_singular","3","pt","Fun��o","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("7","data_types","display_name_plural","5","pt","Posts","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("8","data_types","display_name_plural","6","pt","P�ginas","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("9","data_types","display_name_plural","1","pt","Utilizadores","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("10","data_types","display_name_plural","4","pt","Categorias","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("11","data_types","display_name_plural","2","pt","Menus","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("12","data_types","display_name_plural","3","pt","Fun��es","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("13","categories","slug","1","pt","categoria-1","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("14","categories","name","1","pt","Categoria 1","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("15","categories","slug","2","pt","categoria-2","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("16","categories","name","2","pt","Categoria 2","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("17","pages","title","1","pt","Ol� Mundo","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("18","pages","slug","1","pt","ola-mundo","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("19","pages","body","1","pt","<p>Ol� Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>
<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("20","menu_items","title","1","pt","Painel de Controle","2018-12-15 19:38:02","2018-12-15 19:38:02");
INSERT INTO translationsVALUES("21","menu_items","title","2","pt","Media","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO translationsVALUES("22","menu_items","title","12","pt","Publica��es","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO translationsVALUES("23","menu_items","title","3","pt","Utilizadores","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO translationsVALUES("24","menu_items","title","11","pt","Categorias","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO translationsVALUES("25","menu_items","title","13","pt","P�ginas","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO translationsVALUES("26","menu_items","title","4","pt","Fun��es","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO translationsVALUES("27","menu_items","title","5","pt","Ferramentas","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO translationsVALUES("28","menu_items","title","6","pt","Menus","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO translationsVALUES("29","menu_items","title","7","pt","Base de dados","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO translationsVALUES("30","menu_items","title","10","pt","Configura��es","2018-12-15 19:38:03","2018-12-15 19:38:03");
INSERT INTO translationsVALUES("31","menu_items","title","15","ar","????","2018-12-16 14:39:58","2018-12-16 14:39:58");
INSERT INTO translationsVALUES("32","menu_items","title","16","ar","??????","2018-12-16 14:53:37","2018-12-16 14:53:37");
INSERT INTO translationsVALUES("33","menu_items","title","17","ar","?????","2018-12-16 14:56:33","2018-12-16 14:56:33");
INSERT INTO translationsVALUES("34","menu_items","title","18","ar","?????","2018-12-16 14:59:24","2018-12-16 14:59:24");
INSERT INTO translationsVALUES("35","menu_items","title","19","ar","???? ?? ??","2018-12-16 15:00:23","2018-12-16 15:00:23");
INSERT INTO translationsVALUES("36","menu_items","title","20","ar","??????","2019-01-02 19:44:41","2019-01-02 20:06:36");
INSERT INTO translationsVALUES("37","menu_items","title","20","pt,","","2019-01-02 19:44:41","2019-01-02 19:44:41");
INSERT INTO translationsVALUES("38","categories","slug","1","ar","category-1","2019-01-03 13:35:23","2019-01-03 13:35:23");
INSERT INTO translationsVALUES("39","categories","slug","1","pt,","category-1","2019-01-03 13:35:23","2019-01-03 13:35:23");
INSERT INTO translationsVALUES("40","categories","name","1","ar","Category 1","2019-01-03 13:35:23","2019-01-03 13:35:23");
INSERT INTO translationsVALUES("41","categories","name","1","pt,","Category 1","2019-01-03 13:35:23","2019-01-03 13:35:23");
INSERT INTO translationsVALUES("42","categories","slug","2","ar","category-2","2019-01-03 14:05:03","2019-01-03 14:05:03");
INSERT INTO translationsVALUES("43","categories","slug","2","pt,","category-2","2019-01-03 14:05:03","2019-01-03 14:05:03");
INSERT INTO translationsVALUES("44","categories","name","2","ar","Category 2","2019-01-03 14:05:03","2019-01-03 14:05:03");
INSERT INTO translationsVALUES("45","categories","name","2","pt,","Category 2","2019-01-03 14:05:03","2019-01-03 14:05:03");
INSERT INTO translationsVALUES("46","categories","slug","3","ar","Plastic-surgery","2019-01-03 14:06:54","2019-01-03 14:06:54");
INSERT INTO translationsVALUES("47","categories","slug","3","pt,","","2019-01-03 14:06:54","2019-01-03 14:06:54");
INSERT INTO translationsVALUES("48","categories","name","3","ar","Plastic surgery","2019-01-03 14:06:54","2019-01-03 14:06:54");
INSERT INTO translationsVALUES("49","categories","name","3","pt,","","2019-01-03 14:06:54","2019-01-03 14:06:54");
INSERT INTO translationsVALUES("50","categories","slug","4","ar","","2019-01-03 14:07:20","2019-01-03 14:07:20");
INSERT INTO translationsVALUES("51","categories","slug","4","pt,","","2019-01-03 14:07:20","2019-01-03 14:07:20");
INSERT INTO translationsVALUES("52","categories","name","4","ar","","2019-01-03 14:07:20","2019-01-03 14:07:20");
INSERT INTO translationsVALUES("53","categories","name","4","pt,","","2019-01-03 14:07:20","2019-01-03 14:07:20");
INSERT INTO translationsVALUES("54","categories","slug","5","ar","","2019-01-03 14:07:51","2019-01-03 14:07:51");
INSERT INTO translationsVALUES("55","categories","slug","5","pt,","","2019-01-03 14:07:51","2019-01-03 14:07:51");
INSERT INTO translationsVALUES("56","categories","name","5","ar","","2019-01-03 14:07:51","2019-01-03 14:07:51");
INSERT INTO translationsVALUES("57","categories","name","5","pt,","","2019-01-03 14:07:51","2019-01-03 14:07:51");
INSERT INTO translationsVALUES("58","categories","slug","6","ar","???","2019-01-03 14:08:16","2019-01-03 21:41:38");
INSERT INTO translationsVALUES("59","categories","slug","6","pt,","","2019-01-03 14:08:16","2019-01-03 14:08:16");
INSERT INTO translationsVALUES("60","categories","name","6","ar","","2019-01-03 14:08:16","2019-01-03 14:08:16");
INSERT INTO translationsVALUES("61","categories","name","6","pt,","","2019-01-03 14:08:16","2019-01-03 14:08:16");
INSERT INTO translationsVALUES("62","menu_items","title","21","ar","???? ??","2019-01-03 14:46:02","2019-01-03 21:27:25");
INSERT INTO translationsVALUES("63","menu_items","title","21","pt,","","2019-01-03 14:46:02","2019-01-03 14:46:02");
INSERT INTO translationsVALUES("64","data_types","display_name_singular","4","ar","Category","2019-01-03 21:40:06","2019-01-03 21:40:06");
INSERT INTO translationsVALUES("65","data_types","display_name_singular","4","pt,","Category","2019-01-03 21:40:06","2019-01-03 21:40:06");
INSERT INTO translationsVALUES("66","data_types","display_name_plural","4","ar","Categories","2019-01-03 21:40:06","2019-01-03 21:40:06");
INSERT INTO translationsVALUES("67","data_types","display_name_plural","4","pt,","Categories","2019-01-03 21:40:06","2019-01-03 21:40:06");
INSERT INTO translationsVALUES("68","categories","title","6","ar","???","2019-01-03 21:41:09","2019-01-03 21:41:38");
INSERT INTO translationsVALUES("69","categories","title","6","pt,","Eye care","2019-01-03 21:41:09","2019-01-03 21:41:09");
INSERT INTO translationsVALUES("70","data_types","display_name_singular","9","ar","Social Network","2019-01-04 08:39:28","2019-01-04 08:39:28");
INSERT INTO translationsVALUES("71","data_types","display_name_singular","9","pt,","Social Network","2019-01-04 08:39:28","2019-01-04 08:39:28");
INSERT INTO translationsVALUES("72","data_types","display_name_plural","9","ar","Social Networks","2019-01-04 08:39:28","2019-01-04 08:39:28");
INSERT INTO translationsVALUES("73","data_types","display_name_plural","9","pt,","Social Networks","2019-01-04 08:39:28","2019-01-04 08:39:28");
INSERT INTO translationsVALUES("74","socials","link","2","ar","","2019-01-04 08:43:52","2019-01-04 08:43:52");
INSERT INTO translationsVALUES("75","socials","link","2","pt,","","2019-01-04 08:43:52","2019-01-04 08:43:52");
INSERT INTO translationsVALUES("76","socials","link","3","ar","","2019-01-04 08:44:42","2019-01-04 08:44:42");
INSERT INTO translationsVALUES("77","socials","link","3","pt,","","2019-01-04 08:44:42","2019-01-04 08:44:42");
INSERT INTO translationsVALUES("78","socials","link","4","ar","","2019-01-04 08:46:07","2019-01-04 08:46:07");
INSERT INTO translationsVALUES("79","socials","link","4","pt,","","2019-01-04 08:46:07","2019-01-04 08:46:07");
INSERT INTO translationsVALUES("80","socials","link","5","ar","https://instagram.com/fa","2019-01-04 08:47:30","2019-01-04 08:53:42");
INSERT INTO translationsVALUES("81","socials","link","5","pt,","","2019-01-04 08:47:30","2019-01-04 08:47:30");
INSERT INTO translationsVALUES("82","menu_items","title","23","ar","","2019-01-04 09:45:18","2019-01-04 09:45:18");
INSERT INTO translationsVALUES("83","menu_items","title","23","pt,","","2019-01-04 09:45:18","2019-01-04 09:45:18");
INSERT INTO translationsVALUES("84","benefits","body","2","ar","","2019-01-04 12:51:43","2019-01-04 12:51:43");
INSERT INTO translationsVALUES("85","benefits","body","2","pt,","","2019-01-04 12:51:43","2019-01-04 12:51:43");
INSERT INTO translationsVALUES("86","benefits","title","2","ar","","2019-01-04 12:51:43","2019-01-04 12:51:43");
INSERT INTO translationsVALUES("87","benefits","title","2","pt,","","2019-01-04 12:51:43","2019-01-04 12:51:43");
INSERT INTO translationsVALUES("88","benefits","body","3","ar","??? ???","2019-01-04 12:52:40","2019-01-04 12:59:29");
INSERT INTO translationsVALUES("89","benefits","body","3","pt,","","2019-01-04 12:52:40","2019-01-04 12:52:40");
INSERT INTO translationsVALUES("90","benefits","title","3","ar","???","2019-01-04 12:52:40","2019-01-04 12:59:29");
INSERT INTO translationsVALUES("91","benefits","title","3","pt,","","2019-01-04 12:52:40","2019-01-04 12:52:40");
INSERT INTO translationsVALUES("92","benefits","body","4","ar","","2019-01-04 13:03:46","2019-01-04 13:03:46");
INSERT INTO translationsVALUES("93","benefits","body","4","pt,","","2019-01-04 13:03:46","2019-01-04 13:03:46");
INSERT INTO translationsVALUES("94","benefits","title","4","ar","","2019-01-04 13:03:46","2019-01-04 13:03:46");
INSERT INTO translationsVALUES("95","benefits","title","4","pt,","","2019-01-04 13:03:46","2019-01-04 13:03:46");
INSERT INTO translationsVALUES("96","benefits","body","5","ar","","2019-01-04 13:06:09","2019-01-04 13:06:09");
INSERT INTO translationsVALUES("97","benefits","body","5","pt,","","2019-01-04 13:06:09","2019-01-04 13:06:09");
INSERT INTO translationsVALUES("98","benefits","title","5","ar","","2019-01-04 13:06:09","2019-01-04 13:06:09");
INSERT INTO translationsVALUES("99","benefits","title","5","pt,","","2019-01-04 13:06:09","2019-01-04 13:06:09");
INSERT INTO translationsVALUES("100","benefits","body","6","ar","","2019-01-04 13:08:39","2019-01-04 13:08:39");
INSERT INTO translationsVALUES("101","benefits","body","6","pt,","","2019-01-04 13:08:39","2019-01-04 13:08:39");
INSERT INTO translationsVALUES("102","benefits","title","6","ar","","2019-01-04 13:08:39","2019-01-04 13:08:39");
INSERT INTO translationsVALUES("103","benefits","title","6","pt,","","2019-01-04 13:08:39","2019-01-04 13:08:39");
INSERT INTO translationsVALUES("104","posts","title","5","ar","","2019-01-08 18:59:07","2019-01-08 18:59:07");
INSERT INTO translationsVALUES("105","posts","title","5","pt,","","2019-01-08 18:59:07","2019-01-08 18:59:07");
INSERT INTO translationsVALUES("106","posts","seo_title","5","ar","","2019-01-08 18:59:07","2019-01-08 18:59:07");
INSERT INTO translationsVALUES("107","posts","seo_title","5","pt,","","2019-01-08 18:59:07","2019-01-08 18:59:07");
INSERT INTO translationsVALUES("108","posts","excerpt","5","ar","","2019-01-08 18:59:07","2019-01-08 18:59:07");
INSERT INTO translationsVALUES("109","posts","excerpt","5","pt,","","2019-01-08 18:59:07","2019-01-08 18:59:07");
INSERT INTO translationsVALUES("110","posts","body","5","ar","","2019-01-08 18:59:07","2019-01-08 18:59:07");
INSERT INTO translationsVALUES("111","posts","body","5","pt,","","2019-01-08 18:59:07","2019-01-08 18:59:07");
INSERT INTO translationsVALUES("112","posts","slug","5","ar","","2019-01-08 18:59:07","2019-01-08 18:59:07");
INSERT INTO translationsVALUES("113","posts","slug","5","pt,","","2019-01-08 18:59:08","2019-01-08 18:59:08");
INSERT INTO translationsVALUES("114","posts","meta_description","5","ar","","2019-01-08 18:59:08","2019-01-08 18:59:08");
INSERT INTO translationsVALUES("115","posts","meta_description","5","pt,","","2019-01-08 18:59:08","2019-01-08 18:59:08");
INSERT INTO translationsVALUES("116","posts","meta_keywords","5","ar","","2019-01-08 18:59:08","2019-01-08 18:59:08");
INSERT INTO translationsVALUES("117","posts","meta_keywords","5","pt,","","2019-01-08 18:59:08","2019-01-08 18:59:08");
INSERT INTO translationsVALUES("118","pages","title","2","ar","?????? ??","2019-01-08 19:36:52","2019-01-09 07:18:27");
INSERT INTO translationsVALUES("119","pages","title","2","pt,","","2019-01-08 19:36:52","2019-01-08 19:36:52");
INSERT INTO translationsVALUES("120","pages","slug","2","ar","drbarh-ma","2019-01-08 19:36:52","2019-01-09 07:18:27");
INSERT INTO translationsVALUES("121","pages","slug","2","pt,","","2019-01-08 19:36:52","2019-01-08 19:36:52");
INSERT INTO translationsVALUES("122","pages","body","2","ar","","2019-01-08 19:36:52","2019-01-08 19:36:52");
INSERT INTO translationsVALUES("123","pages","body","2","pt,","","2019-01-08 19:36:52","2019-01-08 19:36:52");
INSERT INTO translationsVALUES("124","menu_items","title","25","ar","?????? ??","2019-01-08 20:19:45","2019-01-08 20:19:45");
INSERT INTO translationsVALUES("125","menu_items","title","25","pt,","","2019-01-08 20:19:45","2019-01-08 20:19:45");
INSERT INTO translationsVALUES("126","posts","title","1","ar","Lorem Ipsum Post 2","2019-01-09 09:26:54","2019-01-10 06:48:20");
INSERT INTO translationsVALUES("127","posts","seo_title","1","ar","","2019-01-09 09:26:54","2019-01-09 09:26:54");
INSERT INTO translationsVALUES("128","posts","excerpt","1","ar","This is the excerpt for the Lorem Ipsum Post","2019-01-09 09:26:54","2019-01-09 09:26:54");
INSERT INTO translationsVALUES("129","posts","body","1","ar","<p>This is the body of the lorem ipsum post</p>","2019-01-09 09:26:54","2019-01-09 09:26:54");
INSERT INTO translationsVALUES("130","posts","slug","1","ar","lorem-ipsum-post-trans","2019-01-09 09:26:54","2019-01-10 06:48:20");
INSERT INTO translationsVALUES("131","posts","meta_description","1","ar","This is the meta description","2019-01-09 09:26:54","2019-01-09 09:26:54");
INSERT INTO translationsVALUES("132","posts","meta_keywords","1","ar","keyword1, keyword2, keyword3","2019-01-09 09:26:54","2019-01-09 09:26:54");
INSERT INTO translationsVALUES("133","posts","title","2","ar","My Sample Post","2019-01-09 09:27:16","2019-01-09 09:27:16");
INSERT INTO translationsVALUES("134","posts","seo_title","2","ar","","2019-01-09 09:27:16","2019-01-09 09:27:16");
INSERT INTO translationsVALUES("135","posts","excerpt","2","ar","This is the excerpt for the sample Post","2019-01-09 09:27:16","2019-01-09 09:27:16");
INSERT INTO translationsVALUES("136","posts","body","2","ar","<p>This is the body for the sample post, which includes the body.</p>
                <h2>We can use all kinds of format!</h2>
                <p>And include a bunch of other stuff.</p>","2019-01-09 09:27:16","2019-01-09 09:27:16");
INSERT INTO translationsVALUES("137","posts","slug","2","ar","my-sample-post","2019-01-09 09:27:16","2019-01-09 09:27:16");
INSERT INTO translationsVALUES("138","posts","meta_description","2","ar","Meta Description for sample post","2019-01-09 09:27:16","2019-01-09 09:27:16");
INSERT INTO translationsVALUES("139","posts","meta_keywords","2","ar","keyword1, keyword2, keyword3","2019-01-09 09:27:16","2019-01-09 09:27:16");
INSERT INTO translationsVALUES("140","posts","title","3","ar","Latest Post","2019-01-09 09:28:14","2019-01-09 09:28:14");
INSERT INTO translationsVALUES("141","posts","seo_title","3","ar","","2019-01-09 09:28:14","2019-01-09 09:28:14");
INSERT INTO translationsVALUES("142","posts","excerpt","3","ar","This is the excerpt for the latest post","2019-01-09 09:28:14","2019-01-09 09:28:14");
INSERT INTO translationsVALUES("143","posts","body","3","ar","<p>This is the body for the latest post</p>","2019-01-09 09:28:14","2019-01-09 09:28:14");
INSERT INTO translationsVALUES("144","posts","slug","3","ar","latest-post","2019-01-09 09:28:14","2019-01-09 09:28:14");
INSERT INTO translationsVALUES("145","posts","meta_description","3","ar","This is the meta description","2019-01-09 09:28:14","2019-01-09 09:28:14");
INSERT INTO translationsVALUES("146","posts","meta_keywords","3","ar","keyword1, keyword2, keyword3","2019-01-09 09:28:14","2019-01-09 09:28:14");
INSERT INTO translationsVALUES("147","data_types","display_name_singular","12","ar","Banner","2019-01-10 10:02:36","2019-01-10 10:02:36");
INSERT INTO translationsVALUES("148","data_types","display_name_plural","12","ar","Banners","2019-01-10 10:02:36","2019-01-10 10:02:36");
INSERT INTO translationsVALUES("149","menu_items","title","26","ar","Banners","2019-01-10 10:04:19","2019-01-10 10:04:19");
INSERT INTO translationsVALUES("150","banners","title","3","ar","???","2019-01-10 10:31:15","2019-01-10 10:46:47");
INSERT INTO translationsVALUES("151","banners","subtitle","3","ar","??? 2","2019-01-10 10:31:15","2019-01-10 10:46:47");
INSERT INTO translationsVALUES("152","banners","link","3","ar","/","2019-01-10 10:31:15","2019-01-10 10:46:47");
INSERT INTO translationsVALUES("153","banners","title","2","ar","HEALTH CARE","2019-01-10 10:47:30","2019-01-10 10:47:30");
INSERT INTO translationsVALUES("154","banners","subtitle","2","ar","YOU RELIABLE MEDICAL SOLUTION","2019-01-10 10:47:30","2019-01-10 10:47:30");
INSERT INTO translationsVALUES("155","banners","link","2","ar","route(\'home\')","2019-01-10 10:47:30","2019-01-10 10:47:30");
INSERT INTO translationsVALUES("156","data_types","display_name_singular","13","ar","Request","2019-01-10 13:49:29","2019-01-10 13:49:29");
INSERT INTO translationsVALUES("157","data_types","display_name_plural","13","ar","Requests","2019-01-10 13:49:29","2019-01-10 13:49:29");
INSERT INTO translationsVALUES("158","categories","title","1","ar","Cosmetic","2019-01-11 12:12:26","2019-01-11 12:12:26");
INSERT INTO translationsVALUES("159","categories","title","2","ar","Medical","2019-01-11 12:12:39","2019-01-11 12:12:39");
INSERT INTO translationsVALUES("160","posts","title","4","ar","Yarr Post","2019-01-11 14:27:19","2019-01-11 14:27:19");
INSERT INTO translationsVALUES("161","posts","seo_title","4","ar","","2019-01-11 14:27:19","2019-01-11 14:27:19");
INSERT INTO translationsVALUES("162","posts","excerpt","4","ar","Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.","2019-01-11 14:27:19","2019-01-11 14:27:19");
INSERT INTO translationsVALUES("163","posts","body","4","ar","<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>
<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>
<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>","2019-01-11 14:27:19","2019-01-11 14:27:19");
INSERT INTO translationsVALUES("164","posts","slug","4","ar","yarr-post","2019-01-11 14:27:19","2019-01-11 14:27:19");
INSERT INTO translationsVALUES("165","posts","meta_description","4","ar","this be a meta descript","2019-01-11 14:27:19","2019-01-11 14:27:19");
INSERT INTO translationsVALUES("166","posts","meta_keywords","4","ar","keyword1, keyword2, keyword3","2019-01-11 14:27:19","2019-01-11 14:27:19");
INSERT INTO translationsVALUES("167","categories","excerpt","1","ar","One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.","2019-01-11 14:46:31","2019-01-11 14:46:31");
INSERT INTO translationsVALUES("168","categories","body","1","ar","","2019-01-11 14:46:31","2019-01-11 14:46:31");
INSERT INTO translationsVALUES("169","categories","excerpt","2","ar","One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae. 2","2019-01-11 14:47:11","2019-01-11 14:47:11");
INSERT INTO translationsVALUES("170","categories","body","2","ar","","2019-01-11 14:47:11","2019-01-11 14:47:11");



DROP TABLE IF EXISTS user_roles;

CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS users;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO usersVALUES("1","1","Admin","admin@admin.com","users/January2019/Ym25mRQqrU3NDyrMk1kz.jpg","","$2y$10$hAOr6WqTPIvCYsuLZ5Vin.Q.lR3iJVah1QcIl4909ppS3SJ.SlYjq","GOwtKOPljzgQAq6VsjAM5u7gQrkLvP1D0KnRAI8W0MStehIxRt49xnCLiGBs","{\"locale\":\"en\"}","2018-12-15 19:38:02","2019-01-04 12:30:11");
INSERT INTO usersVALUES("2","3","Taghi","mecheng1390@yahoo.com","users/default.png","","$2y$10$.wPbIYiWKuBmo7Es6UlrhuyKuIlaNN83.EopxnPcOaJhr7Bcb7IeS","hPiyXKtHCKyNyDp9eFmwVsluGmGPRNwve6sj8Njmm96eNyPXAng1gwuaXk1s","{\"locale\":\"en\"}","2019-01-11 21:25:52","2019-01-11 21:25:52");



