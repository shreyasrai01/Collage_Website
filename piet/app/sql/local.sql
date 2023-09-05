-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-07-20 05:36:22','2023-07-20 05:36:22','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=711 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://piet.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://piet.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','PIET','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','shreyasrai2003@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','5','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:180:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:8:\"event/?$\";s:25:\"index.php?post_type=event\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:9:\"stream/?$\";s:26:\"index.php?post_type=stream\";s:39:\"stream/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=stream&feed=$matches[1]\";s:34:\"stream/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=stream&feed=$matches[1]\";s:26:\"stream/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=stream&paged=$matches[1]\";s:9:\"campus/?$\";s:26:\"index.php?post_type=campus\";s:39:\"campus/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:34:\"campus/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:26:\"campus/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"event/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:26:\"event/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:46:\"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:41:\"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:30:\"event/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"stream/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"stream/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"stream/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"stream/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"stream/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"stream/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"stream/([^/]+)/embed/?$\";s:39:\"index.php?stream=$matches[1]&embed=true\";s:27:\"stream/([^/]+)/trackback/?$\";s:33:\"index.php?stream=$matches[1]&tb=1\";s:47:\"stream/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?stream=$matches[1]&feed=$matches[2]\";s:42:\"stream/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?stream=$matches[1]&feed=$matches[2]\";s:35:\"stream/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?stream=$matches[1]&paged=$matches[2]\";s:42:\"stream/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?stream=$matches[1]&cpage=$matches[2]\";s:31:\"stream/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?stream=$matches[1]&page=$matches[2]\";s:23:\"stream/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"stream/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"stream/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"stream/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"stream/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"stream/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"campus/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"campus/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"campus/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"campus/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"campus/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"campus/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"campus/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:27:\"campus/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:47:\"campus/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:42:\"campus/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:35:\"campus/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:42:\"campus/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:31:\"campus/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:23:\"campus/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"campus/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"campus/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"campus/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"campus/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"campus/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=40&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','piet','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','piet','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','55853','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','42','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','40','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1705383382','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:9:{i:1693139785;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1693157785;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1693159355;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1693200985;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693202555;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693202557;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693403913;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1693546585;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','V%%rv!K^4@>K7XFtEzc4~r[zAtA,uPd@4+z?dN| 47ta=>6p#Cz`fg)J89^@y&m4','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','cn`ZX1xknckMS_tBdTdp[#29k^iq>3i_kc*bKEd`by#!,},>):7o)!T>t)Y8M~2f','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (124,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (125,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1689833036;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (126,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (151,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (152,'current_theme','','yes');
INSERT INTO `wp_options` VALUES (153,'theme_mods_twentytwentyone','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1689933345;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (154,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (171,'_transient_health-check-site-status-result','{\"good\":18,\"recommended\":1,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (173,'theme_mods_piet','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:5;s:17:\"footerMenuloction\";i:6;s:19:\"footermenulocation2\";i:7;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (174,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1693136749;s:7:\"checked\";a:2:{s:4:\"piet\";s:0:\"\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (182,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (206,'recovery_mode_email_last_sent','1692193710','yes');
INSERT INTO `wp_options` VALUES (307,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (368,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (386,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (387,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.3\";s:7:\"version\";s:3:\"6.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1693139534;s:15:\"version_checked\";s:3:\"6.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (388,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"shreyasrai2003@gmail.com\";s:7:\"version\";s:3:\"6.3\";s:9:\"timestamp\";i:1691585011;}','no');
INSERT INTO `wp_options` VALUES (403,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (411,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (419,'acf_version','6.1.8','yes');
INSERT INTO `wp_options` VALUES (650,'_site_transient_timeout_browser_eaf3a6f2557c3674082ed7543b7fe033','1693226621','no');
INSERT INTO `wp_options` VALUES (651,'_site_transient_browser_eaf3a6f2557c3674082ed7543b7fe033','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"115.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (706,'_site_transient_timeout_theme_roots','1693138548','no');
INSERT INTO `wp_options` VALUES (707,'_site_transient_theme_roots','a:2:{s:4:\"piet\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (708,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1693136750;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.1.8\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.6\";}}','no');
INSERT INTO `wp_options` VALUES (709,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1693741552','no');
INSERT INTO `wp_options` VALUES (710,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1691500390:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1692193601:1');
INSERT INTO `wp_postmeta` VALUES (9,3,'_edit_lock','1691238628:1');
INSERT INTO `wp_postmeta` VALUES (10,2,'_edit_lock','1691239830:1');
INSERT INTO `wp_postmeta` VALUES (11,11,'_edit_lock','1691330215:1');
INSERT INTO `wp_postmeta` VALUES (12,13,'_edit_lock','1691242337:1');
INSERT INTO `wp_postmeta` VALUES (13,17,'_edit_lock','1691242287:1');
INSERT INTO `wp_postmeta` VALUES (14,19,'_edit_lock','1691242332:1');
INSERT INTO `wp_postmeta` VALUES (15,21,'_edit_lock','1691242411:1');
INSERT INTO `wp_postmeta` VALUES (25,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (26,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (27,24,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (28,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (29,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (30,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (31,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (32,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (33,24,'_menu_item_orphaned','1691325873');
INSERT INTO `wp_postmeta` VALUES (34,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (35,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (36,25,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (37,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (38,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (39,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (40,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (41,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (42,25,'_menu_item_orphaned','1691325873');
INSERT INTO `wp_postmeta` VALUES (52,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (53,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (54,27,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (55,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (56,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (57,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (58,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (59,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (60,27,'_menu_item_orphaned','1691325873');
INSERT INTO `wp_postmeta` VALUES (61,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (62,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (63,28,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (64,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (65,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (66,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (67,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (68,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (69,28,'_menu_item_orphaned','1691325873');
INSERT INTO `wp_postmeta` VALUES (70,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (71,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (72,29,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (73,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (74,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (75,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (76,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (77,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (78,29,'_menu_item_orphaned','1691325873');
INSERT INTO `wp_postmeta` VALUES (79,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (80,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (81,30,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (82,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (83,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (84,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (85,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (86,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (87,30,'_menu_item_orphaned','1691325873');
INSERT INTO `wp_postmeta` VALUES (124,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (125,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (126,35,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (127,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (128,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (129,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (130,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (131,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (133,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (134,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (135,36,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (136,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (137,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (138,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (139,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (140,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (141,36,'_menu_item_orphaned','1691328445');
INSERT INTO `wp_postmeta` VALUES (142,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (143,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (144,37,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (145,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (146,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (147,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (148,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (149,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (151,38,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (152,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (153,38,'_menu_item_object_id','38');
INSERT INTO `wp_postmeta` VALUES (154,38,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (155,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (156,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (157,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (158,38,'_menu_item_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (160,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (161,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (162,39,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (163,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (164,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (165,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (166,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (167,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (169,40,'_edit_lock','1691411772:1');
INSERT INTO `wp_postmeta` VALUES (170,42,'_edit_lock','1691411787:1');
INSERT INTO `wp_postmeta` VALUES (175,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (176,45,'_edit_lock','1691589858:1');
INSERT INTO `wp_postmeta` VALUES (177,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (178,48,'_edit_lock','1691589842:1');
INSERT INTO `wp_postmeta` VALUES (180,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (181,53,'_edit_lock','1692021952:1');
INSERT INTO `wp_postmeta` VALUES (182,48,'poornima_event_date','20230815');
INSERT INTO `wp_postmeta` VALUES (183,48,'_poornima_event_date','field_64d39bb00518e');
INSERT INTO `wp_postmeta` VALUES (184,45,'poornima_event_date','20231210');
INSERT INTO `wp_postmeta` VALUES (185,45,'_poornima_event_date','field_64d39bb00518e');
INSERT INTO `wp_postmeta` VALUES (186,55,'_edit_lock','1692189865:1');
INSERT INTO `wp_postmeta` VALUES (187,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (188,55,'poornima_event_date','20231222');
INSERT INTO `wp_postmeta` VALUES (189,55,'_poornima_event_date','field_64d39bb00518e');
INSERT INTO `wp_postmeta` VALUES (190,56,'_edit_lock','1691671083:1');
INSERT INTO `wp_postmeta` VALUES (191,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (192,56,'poornima_event_date','20230811');
INSERT INTO `wp_postmeta` VALUES (193,56,'_poornima_event_date','field_64d39bb00518e');
INSERT INTO `wp_postmeta` VALUES (194,57,'_edit_lock','1691671172:1');
INSERT INTO `wp_postmeta` VALUES (195,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (196,57,'poornima_event_date','20230903');
INSERT INTO `wp_postmeta` VALUES (197,57,'_poornima_event_date','field_64d39bb00518e');
INSERT INTO `wp_postmeta` VALUES (198,58,'_edit_lock','1691671229:1');
INSERT INTO `wp_postmeta` VALUES (199,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (200,58,'poornima_event_date','20231225');
INSERT INTO `wp_postmeta` VALUES (201,58,'_poornima_event_date','field_64d39bb00518e');
INSERT INTO `wp_postmeta` VALUES (202,59,'_edit_lock','1691671269:1');
INSERT INTO `wp_postmeta` VALUES (203,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (204,59,'poornima_event_date','20230126');
INSERT INTO `wp_postmeta` VALUES (205,59,'_poornima_event_date','field_64d39bb00518e');
INSERT INTO `wp_postmeta` VALUES (207,61,'_edit_lock','1691676411:1');
INSERT INTO `wp_postmeta` VALUES (208,61,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (209,61,'_wp_trash_meta_time','1691676555');
INSERT INTO `wp_postmeta` VALUES (210,61,'_wp_desired_post_slug','past-events');
INSERT INTO `wp_postmeta` VALUES (211,63,'_edit_lock','1691676620:1');
INSERT INTO `wp_postmeta` VALUES (212,63,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (213,63,'_wp_trash_meta_time','1691677019');
INSERT INTO `wp_postmeta` VALUES (214,63,'_wp_desired_post_slug','past-event');
INSERT INTO `wp_postmeta` VALUES (215,65,'_edit_lock','1691757988:1');
INSERT INTO `wp_postmeta` VALUES (216,67,'_edit_lock','1692023182:1');
INSERT INTO `wp_postmeta` VALUES (217,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (218,67,'poornima_event_date','20231026');
INSERT INTO `wp_postmeta` VALUES (219,67,'_poornima_event_date','field_64d39bb00518e');
INSERT INTO `wp_postmeta` VALUES (221,72,'_edit_lock','1691757950:1');
INSERT INTO `wp_postmeta` VALUES (222,73,'_edit_lock','1691758028:1');
INSERT INTO `wp_postmeta` VALUES (223,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (224,74,'_edit_lock','1692191689:1');
INSERT INTO `wp_postmeta` VALUES (225,76,'_edit_lock','1692279103:1');
INSERT INTO `wp_postmeta` VALUES (226,77,'_edit_lock','1692022869:1');
INSERT INTO `wp_postmeta` VALUES (227,78,'_edit_lock','1692418901:1');
INSERT INTO `wp_postmeta` VALUES (228,55,'related stream_','a:1:{i:0;s:2:\"78\";}');
INSERT INTO `wp_postmeta` VALUES (229,55,'_related stream_','field_64d631b5a12bd');
INSERT INTO `wp_postmeta` VALUES (231,80,'_edit_lock','1692278918:1');
INSERT INTO `wp_postmeta` VALUES (232,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (233,80,'related stream_','a:2:{i:0;s:2:\"78\";i:1;s:2:\"77\";}');
INSERT INTO `wp_postmeta` VALUES (234,80,'_related stream_','field_64d631b5a12bd');
INSERT INTO `wp_postmeta` VALUES (235,81,'_edit_lock','1692194604:1');
INSERT INTO `wp_postmeta` VALUES (236,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (237,81,'related stream_','a:1:{i:0;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (238,81,'_related stream_','field_64d631b5a12bd');
INSERT INTO `wp_postmeta` VALUES (239,82,'_edit_lock','1692278930:1');
INSERT INTO `wp_postmeta` VALUES (240,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (241,82,'related stream_','a:1:{i:0;s:2:\"77\";}');
INSERT INTO `wp_postmeta` VALUES (242,82,'_related stream_','field_64d631b5a12bd');
INSERT INTO `wp_postmeta` VALUES (243,67,'related stream_','a:1:{i:0;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (244,67,'_related stream_','field_64d631b5a12bd');
INSERT INTO `wp_postmeta` VALUES (245,55,'related_stream','a:1:{i:0;s:2:\"78\";}');
INSERT INTO `wp_postmeta` VALUES (246,55,'_related_stream','field_64d631b5a12bd');
INSERT INTO `wp_postmeta` VALUES (247,82,'related_stream','a:1:{i:0;s:2:\"77\";}');
INSERT INTO `wp_postmeta` VALUES (248,82,'_related_stream','field_64d631b5a12bd');
INSERT INTO `wp_postmeta` VALUES (249,81,'related_stream','a:1:{i:0;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (250,81,'_related_stream','field_64d631b5a12bd');
INSERT INTO `wp_postmeta` VALUES (251,80,'related_stream','a:1:{i:0;s:2:\"78\";}');
INSERT INTO `wp_postmeta` VALUES (252,80,'_related_stream','field_64d631b5a12bd');
INSERT INTO `wp_postmeta` VALUES (253,84,'_wp_attached_file','2023/08/1664017890578.jpg');
INSERT INTO `wp_postmeta` VALUES (254,84,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2160;s:6:\"height\";i:1636;s:4:\"file\";s:25:\"2023/08/1664017890578.jpg\";s:8:\"filesize\";i:404704;s:5:\"sizes\";a:8:{s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:25:\"1664017890578-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17259;}s:17:\"professorProtrait\";a:5:{s:4:\"file\";s:25:\"1664017890578-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38957;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"1664017890578-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5685;}s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"1664017890578-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13372;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"1664017890578-768x582.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52833;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"1664017890578-1024x776.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:776;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80103;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"1664017890578-1536x1163.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1163;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:147694;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:27:\"1664017890578-2048x1551.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1551;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:233430;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (255,80,'_thumbnail_id','84');
INSERT INTO `wp_postmeta` VALUES (256,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (257,87,'_edit_lock','1692277502:1');
INSERT INTO `wp_postmeta` VALUES (258,87,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (259,87,'_wp_trash_meta_time','1692277731');
INSERT INTO `wp_postmeta` VALUES (260,87,'_wp_desired_post_slug','group_64de1aced3488');
INSERT INTO `wp_postmeta` VALUES (261,88,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (262,88,'_wp_trash_meta_time','1692277731');
INSERT INTO `wp_postmeta` VALUES (263,88,'_wp_desired_post_slug','field_64de1acf14e28');
INSERT INTO `wp_postmeta` VALUES (264,91,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (265,91,'_edit_lock','1692278059:1');
INSERT INTO `wp_postmeta` VALUES (266,94,'_wp_attached_file','2023/08/Curious-S.R.-2.png');
INSERT INTO `wp_postmeta` VALUES (267,94,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:26:\"2023/08/Curious-S.R.-2.png\";s:8:\"filesize\";i:42410;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"Curious-S.R.-2-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3605;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"Curious-S.R.-2-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14036;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Curious-S.R.-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2884;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"Curious-S.R.-2-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10005;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"Curious-S.R.-2-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:24283;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:28:\"Curious-S.R.-2-2048x1152.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35263;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:26:\"Curious-S.R.-2-400x260.png\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5536;}s:17:\"professorProtrait\";a:5:{s:4:\"file\";s:26:\"Curious-S.R.-2-480x650.png\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14519;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (268,82,'page_sub_heading','');
INSERT INTO `wp_postmeta` VALUES (269,82,'_page_sub_heading','field_64de1d444bf03');
INSERT INTO `wp_postmeta` VALUES (270,82,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (271,82,'_page_banner_image','field_64de1d804bf04');
INSERT INTO `wp_postmeta` VALUES (272,80,'page_sub_heading','');
INSERT INTO `wp_postmeta` VALUES (273,80,'_page_sub_heading','field_64de1d444bf03');
INSERT INTO `wp_postmeta` VALUES (274,80,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (275,80,'_page_banner_image','field_64de1d804bf04');
INSERT INTO `wp_postmeta` VALUES (276,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (277,76,'page_sub_heading','WE build your world ');
INSERT INTO `wp_postmeta` VALUES (278,76,'_page_sub_heading','field_64de1d444bf03');
INSERT INTO `wp_postmeta` VALUES (279,76,'page_banner_image','94');
INSERT INTO `wp_postmeta` VALUES (280,76,'_page_banner_image','field_64de1d804bf04');
INSERT INTO `wp_postmeta` VALUES (281,78,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (282,78,'page_sub_heading','Codes');
INSERT INTO `wp_postmeta` VALUES (283,78,'_page_sub_heading','field_64de1d444bf03');
INSERT INTO `wp_postmeta` VALUES (284,78,'page_banner_image','95');
INSERT INTO `wp_postmeta` VALUES (285,78,'_page_banner_image','field_64de1d804bf04');
INSERT INTO `wp_postmeta` VALUES (286,95,'_wp_attached_file','2023/08/counter-strike-global-offensive-4k-new-af-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (287,95,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:60:\"2023/08/counter-strike-global-offensive-4k-new-af-scaled.jpg\";s:8:\"filesize\";i:394782;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:53:\"counter-strike-global-offensive-4k-new-af-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10102;}s:5:\"large\";a:5:{s:4:\"file\";s:54:\"counter-strike-global-offensive-4k-new-af-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72459;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:53:\"counter-strike-global-offensive-4k-new-af-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5906;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:53:\"counter-strike-global-offensive-4k-new-af-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45344;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:54:\"counter-strike-global-offensive-4k-new-af-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:145591;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:55:\"counter-strike-global-offensive-4k-new-af-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:246920;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:53:\"counter-strike-global-offensive-4k-new-af-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18330;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:53:\"counter-strike-global-offensive-4k-new-af-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46977;}s:11:\"bannerImage\";a:5:{s:4:\"file\";s:54:\"counter-strike-global-offensive-4k-new-af-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74659;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:45:\"counter-strike-global-offensive-4k-new-af.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (288,56,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (289,56,'_wp_trash_meta_time','1692423745');
INSERT INTO `wp_postmeta` VALUES (290,56,'_wp_desired_post_slug','event-11-aug');
INSERT INTO `wp_postmeta` VALUES (291,96,'_edit_lock','1692622028:1');
INSERT INTO `wp_postmeta` VALUES (292,96,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (293,96,'page_sub_heading','Welcome to Pce Campus');
INSERT INTO `wp_postmeta` VALUES (294,96,'_page_sub_heading','field_64de1d444bf03');
INSERT INTO `wp_postmeta` VALUES (295,96,'page_banner_image','95');
INSERT INTO `wp_postmeta` VALUES (296,96,'_page_banner_image','field_64de1d804bf04');
INSERT INTO `wp_postmeta` VALUES (297,97,'_edit_lock','1692622465:1');
INSERT INTO `wp_postmeta` VALUES (298,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (299,97,'page_sub_heading','Welcome to Piet Campus.');
INSERT INTO `wp_postmeta` VALUES (300,97,'_page_sub_heading','field_64de1d444bf03');
INSERT INTO `wp_postmeta` VALUES (301,97,'page_banner_image','95');
INSERT INTO `wp_postmeta` VALUES (302,97,'_page_banner_image','field_64de1d804bf04');
INSERT INTO `wp_postmeta` VALUES (303,98,'_edit_lock','1692624350:1');
INSERT INTO `wp_postmeta` VALUES (304,98,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (305,98,'page_sub_heading','Welcome to Pce page.');
INSERT INTO `wp_postmeta` VALUES (306,98,'_page_sub_heading','field_64de1d444bf03');
INSERT INTO `wp_postmeta` VALUES (307,98,'page_banner_image','95');
INSERT INTO `wp_postmeta` VALUES (308,98,'_page_banner_image','field_64de1d804bf04');
INSERT INTO `wp_postmeta` VALUES (309,99,'_edit_lock','1692625962:1');
INSERT INTO `wp_postmeta` VALUES (310,99,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (311,99,'page_sub_heading','This is PIET Campus.');
INSERT INTO `wp_postmeta` VALUES (312,99,'_page_sub_heading','field_64de1d444bf03');
INSERT INTO `wp_postmeta` VALUES (313,99,'page_banner_image','95');
INSERT INTO `wp_postmeta` VALUES (314,99,'_page_banner_image','field_64de1d804bf04');
INSERT INTO `wp_postmeta` VALUES (315,100,'_edit_lock','1692626209:1');
INSERT INTO `wp_postmeta` VALUES (316,100,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (317,100,'page_sub_heading','This is Poornima University.');
INSERT INTO `wp_postmeta` VALUES (318,100,'_page_sub_heading','field_64de1d444bf03');
INSERT INTO `wp_postmeta` VALUES (319,100,'page_banner_image','95');
INSERT INTO `wp_postmeta` VALUES (320,100,'_page_banner_image','field_64de1d804bf04');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-07-20 05:36:22','2023-07-20 05:36:22','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-07-20 05:36:22','2023-07-20 05:36:22','',0,'http://piet.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-07-20 05:36:22','2023-07-20 05:36:22','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://piet.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-07-20 05:36:22','2023-07-20 05:36:22','',0,'http://piet.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-07-20 05:36:22','2023-07-20 05:36:22','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://piet.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2023-08-02 05:15:50','2023-08-02 05:15:50','',0,'http://piet.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2023-07-21 11:15:25','2023-07-21 11:15:25','<!-- wp:paragraph -->\n<p>HI this is post one!</p>\n<!-- /wp:paragraph -->','Post 1','','publish','open','open','','post-1','','','2023-08-08 13:15:31','2023-08-08 13:15:31','',0,'http://piet.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-07-21 11:15:25','2023-07-21 11:15:25','<!-- wp:paragraph -->\n<p>HI this is post one!</p>\n<!-- /wp:paragraph -->','Post 1','','inherit','closed','closed','','5-revision-v1','','','2023-07-21 11:15:25','2023-07-21 11:15:25','',5,'http://piet.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-07-21 11:22:01','2023-07-21 11:22:01','<!-- wp:paragraph -->\n<p>This is post 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Post 2','','publish','open','open','','post-2','','','2023-08-08 13:15:19','2023-08-08 13:15:19','',0,'http://piet.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-07-21 11:22:01','2023-07-21 11:22:01','<!-- wp:paragraph -->\n<p>This is post 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Post 2','','inherit','closed','closed','','7-revision-v1','','','2023-07-21 11:22:01','2023-07-21 11:22:01','',7,'http://piet.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-08-02 05:15:50','2023-08-02 05:15:50','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://piet.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2023-08-02 05:15:50','2023-08-02 05:15:50','',3,'http://piet.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-08-05 12:58:23','2023-08-05 12:58:23','<!-- wp:paragraph -->\n<p>This is about us.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thank you</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->','About us','','publish','closed','closed','','about-us','','','2023-08-05 12:58:23','2023-08-05 12:58:23','',0,'http://piet.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-08-05 12:58:23','2023-08-05 12:58:23','<!-- wp:paragraph -->\n<p>This is about us.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thank you</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','11-revision-v1','','','2023-08-05 12:58:23','2023-08-05 12:58:23','',11,'http://piet.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-08-05 13:32:01','2023-08-05 13:32:01','<!-- wp:paragraph -->\n<p>This is a cookie policy page child of privacy policy page.</p>\n<!-- /wp:paragraph -->','Cookie policy','','publish','closed','closed','','cookie-policy','','','2023-08-05 13:32:48','2023-08-05 13:32:48','',3,'http://piet.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-08-05 13:32:01','2023-08-05 13:32:01','<!-- wp:paragraph -->\n<p>This is a cookie policy page child of privacy policy page</p>\n<!-- /wp:paragraph -->','Cookie policy','','inherit','closed','closed','','13-revision-v1','','','2023-08-05 13:32:01','2023-08-05 13:32:01','',13,'http://piet.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-08-05 13:32:18','2023-08-05 13:32:18','<!-- wp:paragraph -->\n<p>This is a cookie policy page child of privacy policy page.</p>\n<!-- /wp:paragraph -->','Cookie policy','','inherit','closed','closed','','13-autosave-v1','','','2023-08-05 13:32:18','2023-08-05 13:32:18','',13,'http://piet.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-08-05 13:32:18','2023-08-05 13:32:18','<!-- wp:paragraph -->\n<p>This is a cookie policy page child of privacy policy page.</p>\n<!-- /wp:paragraph -->','Cookie policy','','inherit','closed','closed','','13-revision-v1','','','2023-08-05 13:32:18','2023-08-05 13:32:18','',13,'http://piet.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-08-05 13:33:49','2023-08-05 13:33:49','<!-- wp:paragraph -->\n<p>This is our goals child of about us page.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2023-08-05 13:33:49','2023-08-05 13:33:49','',11,'http://piet.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-08-05 13:33:49','2023-08-05 13:33:49','<!-- wp:paragraph -->\n<p>This is our goals child of about us page.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','17-revision-v1','','','2023-08-05 13:33:49','2023-08-05 13:33:49','',17,'http://piet.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-08-05 13:34:34','2023-08-05 13:34:34','<!-- wp:paragraph -->\n<p>This is our history child of about us page.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2023-08-05 13:34:34','2023-08-05 13:34:34','',11,'http://piet.local/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-08-05 13:34:34','2023-08-05 13:34:34','<!-- wp:paragraph -->\n<p>This is our history child of about us page.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','19-revision-v1','','','2023-08-05 13:34:34','2023-08-05 13:34:34','',19,'http://piet.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-08-05 13:35:54','2023-08-05 13:35:54','<!-- wp:paragraph -->\n<p>This is page 01.</p>\n<!-- /wp:paragraph -->','Page 01','','publish','closed','closed','','page-01','','','2023-08-05 13:35:54','2023-08-05 13:35:54','',0,'http://piet.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-08-05 13:35:54','2023-08-05 13:35:54','<!-- wp:paragraph -->\n<p>This is page 01.</p>\n<!-- /wp:paragraph -->','Page 01','','inherit','closed','closed','','21-revision-v1','','','2023-08-05 13:35:54','2023-08-05 13:35:54','',21,'http://piet.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-08-06 12:44:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-08-06 12:44:33','0000-00-00 00:00:00','',0,'http://piet.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-08-06 12:44:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-08-06 12:44:33','0000-00-00 00:00:00','',3,'http://piet.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2023-08-06 12:44:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-08-06 12:44:33','0000-00-00 00:00:00','',11,'http://piet.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-08-06 12:44:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-08-06 12:44:33','0000-00-00 00:00:00','',11,'http://piet.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-08-06 12:44:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-08-06 12:44:33','0000-00-00 00:00:00','',0,'http://piet.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-08-06 12:44:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-08-06 12:44:33','0000-00-00 00:00:00','',0,'http://piet.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-08-06 13:27:40','2023-08-06 13:27:40',' ','','','publish','closed','closed','','35','','','2023-08-06 13:27:40','2023-08-06 13:27:40','',0,'http://piet.local/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-08-06 13:27:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-08-06 13:27:25','0000-00-00 00:00:00','',3,'http://piet.local/?p=36',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2023-08-06 13:27:40','2023-08-06 13:27:40',' ','','','publish','closed','closed','','37','','','2023-08-06 13:27:40','2023-08-06 13:27:40','',0,'http://piet.local/?p=37',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-08-06 13:29:46','2023-08-06 13:29:46','','Google','','publish','closed','closed','','google','','','2023-08-06 13:29:46','2023-08-06 13:29:46','',0,'http://piet.local/?p=38',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-08-06 13:34:10','2023-08-06 13:34:10',' ','','','publish','closed','closed','','39','','','2023-08-06 13:34:10','2023-08-06 13:34:10','',3,'http://piet.local/?p=39',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-08-07 12:38:35','2023-08-07 12:38:35','','Home','','publish','closed','closed','','home','','','2023-08-07 12:38:35','2023-08-07 12:38:35','',0,'http://piet.local/?page_id=40',0,'page','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-08-07 12:38:35','2023-08-07 12:38:35','','Home','','inherit','closed','closed','','40-revision-v1','','','2023-08-07 12:38:35','2023-08-07 12:38:35','',40,'http://piet.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2023-08-07 12:38:45','2023-08-07 12:38:45','','Blog','','publish','closed','closed','','blog','','','2023-08-07 12:38:45','2023-08-07 12:38:45','',0,'http://piet.local/?page_id=42',0,'page','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2023-08-07 12:38:45','2023-08-07 12:38:45','','Blog','','inherit','closed','closed','','42-revision-v1','','','2023-08-07 12:38:45','2023-08-07 12:38:45','',42,'http://piet.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-08-08 13:56:08','2023-08-08 13:56:08','This is the annual day post.\n\n&nbsp;\n\nThank You','Annual Day','','publish','closed','closed','','annual-day','','','2023-08-09 14:04:18','2023-08-09 14:04:18','',0,'http://piet.local/?post_type=event&#038;p=45',0,'event','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2023-08-08 13:56:58','2023-08-08 13:56:58','This is the post of collage program.\n\n&nbsp;\n\nThanks','Program','','publish','closed','closed','','program','','','2023-08-09 14:04:02','2023-08-09 14:04:02','',0,'http://piet.local/?post_type=event&#038;p=48',0,'event','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-08-09 14:02:21','2023-08-09 14:02:21','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Poornima Field Group','poornima-field-group','publish','closed','closed','','group_64d39bb0829af','','','2023-08-14 14:08:09','2023-08-14 14:08:09','',0,'http://piet.local/?post_type=acf-field-group&#038;p=53',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-08-09 14:02:21','2023-08-09 14:02:21','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Poornima Event Date','poornima_event_date','publish','closed','closed','','field_64d39bb00518e','','','2023-08-09 14:03:14','2023-08-09 14:03:14','',53,'http://piet.local/?post_type=acf-field&#038;p=54',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2023-08-09 14:05:04','2023-08-09 14:05:04','<!-- wp:paragraph -->\n<p>This is hackathon page.</p>\n<!-- /wp:paragraph -->','Hackathon','','publish','closed','closed','','hackathon','','','2023-08-16 12:42:13','2023-08-16 12:42:13','',0,'http://piet.local/?post_type=event&#038;p=55',0,'event','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2023-08-10 12:38:02','2023-08-10 12:38:02','<!-- wp:paragraph -->\n<p>This event is coming on 11 Aug 2023.</p>\n<!-- /wp:paragraph -->','Event 11-Aug','','trash','closed','closed','','event-11-aug__trashed','','','2023-08-19 05:42:25','2023-08-19 05:42:25','',0,'http://piet.local/?post_type=event&#038;p=56',0,'event','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-08-10 12:39:32','2023-08-10 12:39:32','<!-- wp:paragraph -->\n<p>This event is will be organized on 3 September.</p>\n<!-- /wp:paragraph -->','Event 3 September','','publish','closed','closed','','event-3-september','','','2023-08-10 12:39:32','2023-08-10 12:39:32','',0,'http://piet.local/?post_type=event&#038;p=57',0,'event','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2023-08-10 12:40:29','2023-08-10 12:40:29','<!-- wp:paragraph -->\n<p>Event on 25 December.</p>\n<!-- /wp:paragraph -->','Event 25 December','','publish','closed','closed','','event-25-december','','','2023-08-10 12:40:29','2023-08-10 12:40:29','',0,'http://piet.local/?post_type=event&#038;p=58',0,'event','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2023-08-10 12:41:09','2023-08-10 12:41:09','<!-- wp:paragraph -->\n<p>26 January 2023</p>\n<!-- /wp:paragraph -->','Event 26 Jan','','publish','closed','closed','','event-26-jan','','','2023-08-10 12:41:09','2023-08-10 12:41:09','',0,'http://piet.local/?post_type=event&#038;p=59',0,'event','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-08-10 13:30:02','2023-08-10 13:30:02','<!-- wp:paragraph -->\n<p>This is past event page.</p>\n<!-- /wp:paragraph -->','Past Events','','trash','closed','closed','','past-events__trashed','','','2023-08-10 14:09:15','2023-08-10 14:09:15','',0,'http://piet.local/?page_id=61',0,'page','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-08-10 13:30:02','2023-08-10 13:30:02','<!-- wp:paragraph -->\n<p>This is past event page.</p>\n<!-- /wp:paragraph -->','Past Events','','inherit','closed','closed','','61-revision-v1','','','2023-08-10 13:30:02','2023-08-10 13:30:02','',61,'http://piet.local/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-08-10 14:09:43','2023-08-10 14:09:43','','past event','','trash','closed','closed','','past-event__trashed','','','2023-08-10 14:16:59','2023-08-10 14:16:59','',0,'http://piet.local/?page_id=63',0,'page','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-08-10 14:09:43','2023-08-10 14:09:43','','past event','','inherit','closed','closed','','63-revision-v1','','','2023-08-10 14:09:43','2023-08-10 14:09:43','',63,'http://piet.local/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-08-10 14:17:18','2023-08-10 14:17:18','','Past Events','','publish','closed','closed','','past-events','','','2023-08-11 12:41:16','2023-08-11 12:41:16','',0,'http://piet.local/?page_id=65',0,'page','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-08-10 14:17:18','2023-08-10 14:17:18','','Past Event','','inherit','closed','closed','','65-revision-v1','','','2023-08-10 14:17:18','2023-08-10 14:17:18','',65,'http://piet.local/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-08-10 14:17:54','2023-08-10 14:17:54','','Aarohan','','publish','closed','closed','','aarohan','','','2023-08-14 14:23:54','2023-08-14 14:23:54','',0,'http://piet.local/?post_type=event&#038;p=67',0,'event','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-08-10 14:30:53','2023-08-10 14:30:53','','Past Events','','inherit','closed','closed','','65-revision-v1','','','2023-08-10 14:30:53','2023-08-10 14:30:53','',65,'http://piet.local/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-08-10 14:32:03','2023-08-10 14:32:03','','Past Event','','inherit','closed','closed','','65-revision-v1','','','2023-08-10 14:32:03','2023-08-10 14:32:03','',65,'http://piet.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2023-08-10 14:33:08','2023-08-10 14:33:08','','Past Events','','inherit','closed','closed','','65-revision-v1','','','2023-08-10 14:33:08','2023-08-10 14:33:08','',65,'http://piet.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2023-08-11 12:48:13','2023-08-11 12:48:13','<!-- wp:paragraph -->\n<p>This is CS page.</p>\n<!-- /wp:paragraph -->','Computer Science','','publish','closed','closed','','computer-science','','','2023-08-11 12:48:13','2023-08-11 12:48:13','',0,'http://piet.local/?post_type=program&#038;p=72',0,'program','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-08-11 12:49:31','2023-08-11 12:49:31','<!-- wp:paragraph -->\n<p>This is civil page</p>\n<!-- /wp:paragraph -->','Civil','','publish','closed','closed','','civil','','','2023-08-11 12:49:31','2023-08-11 12:49:31','',0,'http://piet.local/?post_type=program&#038;p=73',0,'program','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2023-08-11 13:16:38','2023-08-11 13:16:38','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Stream','related-stream','publish','closed','closed','','group_64d631b52cbad','','','2023-08-16 12:41:10','2023-08-16 12:41:10','',0,'http://piet.local/?post_type=acf-field-group&#038;p=74',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2023-08-11 13:16:38','2023-08-11 13:16:38','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"stream\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:9:\"post_type\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";}','Related Stream','related_stream','publish','closed','closed','','field_64d631b5a12bd','','','2023-08-16 12:41:10','2023-08-16 12:41:10','',74,'http://piet.local/?post_type=acf-field&#038;p=75',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2023-08-11 13:17:51','2023-08-11 13:17:51','<!-- wp:paragraph -->\n<p>This is civil stream.</p>\n<!-- /wp:paragraph -->','Civil','','publish','closed','closed','','civil','','','2023-08-17 13:31:43','2023-08-17 13:31:43','',0,'http://piet.local/?post_type=stream&#038;p=76',0,'stream','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2023-08-11 13:18:13','2023-08-11 13:18:13','<!-- wp:paragraph -->\n<p>This is biology stream.</p>\n<!-- /wp:paragraph -->','Biology','','publish','closed','closed','','biology','','','2023-08-11 13:26:49','2023-08-11 13:26:49','',0,'http://piet.local/?post_type=stream&#038;p=77',0,'stream','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-08-11 13:18:34','2023-08-11 13:18:34','<!-- wp:paragraph -->\n<p>This is Computer Science stream.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hi this is cs page.</p>\n<!-- /wp:paragraph -->','Computer Science','','publish','closed','closed','','computer-science','','','2023-08-19 04:21:41','2023-08-19 04:21:41','',0,'http://piet.local/?post_type=stream&#038;p=78',0,'stream','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-08-14 14:08:47','2023-08-14 14:08:47','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Shreyas','','publish','closed','closed','','shreyas','','','2023-08-17 13:28:38','2023-08-17 13:28:38','',0,'http://piet.local/?post_type=professor&#038;p=80',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-08-14 14:09:03','2023-08-14 14:09:03','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Samir','','publish','closed','closed','','samir','','','2023-08-16 14:03:24','2023-08-16 14:03:24','',0,'http://piet.local/?post_type=professor&#038;p=81',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2023-08-14 14:09:23','2023-08-14 14:09:23','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Rachit','','publish','closed','closed','','rachit','','','2023-08-17 13:28:50','2023-08-17 13:28:50','',0,'http://piet.local/?post_type=professor&#038;p=82',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2023-08-16 13:54:33','2023-08-16 13:54:33','','1664017890578','','inherit','open','closed','','1664017890578','','','2023-08-16 13:54:33','2023-08-16 13:54:33','',80,'http://piet.local/wp-content/uploads/2023/08/1664017890578.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,1,'2023-08-17 13:07:18','2023-08-17 13:07:18','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner','page-banner','trash','closed','closed','','group_64de1aced3488__trashed','','','2023-08-17 13:08:51','2023-08-17 13:08:51','',0,'http://piet.local/?post_type=acf-field-group&#038;p=87',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2023-08-17 13:07:18','2023-08-17 13:07:18','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','page_banner_image','page_banner_image','trash','closed','closed','','field_64de1acf14e28__trashed','','','2023-08-17 13:08:51','2023-08-17 13:08:51','',87,'http://piet.local/?post_type=acf-field&#038;p=88',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2023-08-17 13:16:35','2023-08-17 13:16:35','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner','page-banner','publish','closed','closed','','group_64de1d449a94f','','','2023-08-17 13:16:35','2023-08-17 13:16:35','',0,'http://piet.local/?post_type=acf-field-group&#038;p=91',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2023-08-17 13:16:35','2023-08-17 13:16:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Page_Sub_Heading','page_sub_heading','publish','closed','closed','','field_64de1d444bf03','','','2023-08-17 13:16:35','2023-08-17 13:16:35','',91,'http://piet.local/?post_type=acf-field&p=92',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2023-08-17 13:16:35','2023-08-17 13:16:35','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Page_Banner_Image','page_banner_image','publish','closed','closed','','field_64de1d804bf04','','','2023-08-17 13:16:35','2023-08-17 13:16:35','',91,'http://piet.local/?post_type=acf-field&p=93',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2023-08-17 13:18:31','2023-08-17 13:18:31','','Curious S.R. (2)','','inherit','open','closed','','curious-s-r-2','','','2023-08-17 13:18:31','2023-08-17 13:18:31','',82,'http://piet.local/wp-content/uploads/2023/08/Curious-S.R.-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (95,1,'2023-08-19 04:20:58','2023-08-19 04:20:58','','counter-strike-global-offensive-4k-new-af','','inherit','open','closed','','counter-strike-global-offensive-4k-new-af','','','2023-08-19 04:20:58','2023-08-19 04:20:58','',78,'http://piet.local/wp-content/uploads/2023/08/counter-strike-global-offensive-4k-new-af.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (96,1,'2023-08-21 12:44:53','2023-08-21 12:44:53','<!-- wp:paragraph -->\n<p>This is Pce campus.</p>\n<!-- /wp:paragraph -->','Pce','','publish','closed','closed','','pce','','','2023-08-21 12:47:08','2023-08-21 12:47:08','',0,'http://piet.local/?post_type=campuses&#038;p=96',0,'campuses','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2023-08-21 12:45:34','2023-08-21 12:45:34','<!-- wp:paragraph -->\n<p>This is Piet Page.</p>\n<!-- /wp:paragraph -->','Piet','','publish','closed','closed','','piet','','','2023-08-21 12:47:14','2023-08-21 12:47:14','',0,'http://piet.local/?post_type=campuses&#038;p=97',0,'campuses','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2023-08-21 13:18:53','2023-08-21 13:18:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Pce','','publish','closed','closed','','pce','','','2023-08-21 13:25:50','2023-08-21 13:25:50','',0,'http://piet.local/?post_type=campus&#038;p=98',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2023-08-21 13:25:40','2023-08-21 13:25:40','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Piet','','publish','closed','closed','','piet','','','2023-08-21 13:34:49','2023-08-21 13:34:49','',0,'http://piet.local/?post_type=campus&#038;p=99',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2023-08-21 13:56:31','2023-08-21 13:56:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','PU','','publish','closed','closed','','pu','','','2023-08-21 13:56:49','2023-08-21 13:56:49','',0,'http://piet.local/?post_type=campus&#038;p=100',0,'campus','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,8,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,8,0);
INSERT INTO `wp_term_relationships` VALUES (35,5,0);
INSERT INTO `wp_term_relationships` VALUES (37,5,0);
INSERT INTO `wp_term_relationships` VALUES (38,6,0);
INSERT INTO `wp_term_relationships` VALUES (39,7,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'category','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (5,'Header Menu','header-menu',0);
INSERT INTO `wp_terms` VALUES (6,'Footer Menu','footer-menu',0);
INSERT INTO `wp_terms` VALUES (7,'Footer Menu 2','footer-menu-2',0);
INSERT INTO `wp_terms` VALUES (8,'Award','award',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','shreyas');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"4d1debde07c144c6850a1dc2fc7ae057361c3de2871b1d32b3563d8767335d31\";a:4:{s:10:\"expiration\";i:1692794620;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.203\";s:5:\"login\";i:1692621820;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','83');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:15:\"page-attributes\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:11:\"post-status\";i:3;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-08-16T13:54:02.428Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','7');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1692194211');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'shreyas','$P$Bj08jVPIccprxCO/VfbY6./uJv.Cj/.','shreyas','shreyasrai2003@gmail.com','http://piet.local','2023-07-20 05:36:22','',0,'shreyas');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-27 19:33:07
