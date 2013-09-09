# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.59)
# Database: dlhaiqi
# Generation Time: 2013-09-09 05:41:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_carousel_albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_carousel_albums`;

CREATE TABLE `wp_carousel_albums` (
  `album_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `order` bigint(20) DEFAULT '0',
  `creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wp_carousel_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_carousel_images`;

CREATE TABLE `wp_carousel_images` (
  `image_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `order` bigint(20) DEFAULT '0',
  `link` text,
  `creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wp_carousel_misc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_carousel_misc`;

CREATE TABLE `wp_carousel_misc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ione` int(11) DEFAULT NULL,
  `itwo` int(11) DEFAULT NULL,
  `ithree` int(11) DEFAULT NULL,
  `txt` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_carousel_misc` WRITE;
/*!40000 ALTER TABLE `wp_carousel_misc` DISABLE KEYS */;

INSERT INTO `wp_carousel_misc` (`id`, `ione`, `itwo`, `ithree`, `txt`)
VALUES
	(1,1,1,1,'4d7a6b830b8035ea642256bb8d50fa60');

/*!40000 ALTER TABLE `wp_carousel_misc` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'Mr WordPress','','http://wordpress.org/','','2013-09-03 03:55:48','2013-09-03 03:55:48','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://dlhaiqi','yes'),
	(2,'blogname','大连海琪科技有限公司','yes'),
	(3,'blogdescription','Just another WordPress site','yes'),
	(4,'users_can_register','0','yes'),
	(5,'admin_email','weblsfamily@gmail.com','yes'),
	(6,'start_of_week','1','yes'),
	(7,'use_balanceTags','0','yes'),
	(8,'use_smilies','1','yes'),
	(9,'require_name_email','1','yes'),
	(10,'comments_notify','1','yes'),
	(11,'posts_per_rss','10','yes'),
	(12,'rss_use_excerpt','0','yes'),
	(13,'mailserver_url','mail.example.com','yes'),
	(14,'mailserver_login','login@example.com','yes'),
	(15,'mailserver_pass','password','yes'),
	(16,'mailserver_port','110','yes'),
	(17,'default_category','1','yes'),
	(18,'default_comment_status','open','yes'),
	(19,'default_ping_status','open','yes'),
	(20,'default_pingback_flag','1','yes'),
	(21,'posts_per_page','10','yes'),
	(22,'date_format','F j, Y','yes'),
	(23,'time_format','g:i a','yes'),
	(24,'links_updated_date_format','F j, Y g:i a','yes'),
	(25,'links_recently_updated_prepend','<em>','yes'),
	(26,'links_recently_updated_append','</em>','yes'),
	(27,'links_recently_updated_time','120','yes'),
	(28,'comment_moderation','0','yes'),
	(29,'moderation_notify','1','yes'),
	(30,'permalink_structure','/%postname%/','yes'),
	(31,'gzipcompression','0','yes'),
	(32,'hack_file','0','yes'),
	(33,'blog_charset','UTF-8','yes'),
	(34,'moderation_keys','','no'),
	(35,'active_plugins','a:1:{i:0;s:33:\"wp-carouselslideshow/carousel.php\";}','yes'),
	(36,'home','http://dlhaiqi','yes'),
	(37,'category_base','','yes'),
	(38,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(39,'advanced_edit','0','yes'),
	(40,'comment_max_links','2','yes'),
	(41,'gmt_offset','0','yes'),
	(42,'default_email_category','1','yes'),
	(43,'recently_edited','a:2:{i:0;s:67:\"/Users/darren/Sites/git/dlhaiqi/wp-content/themes/dlhaiqi/style.css\";i:1;s:0:\"\";}','no'),
	(44,'template','twentytwelve','yes'),
	(45,'stylesheet','dlhaiqi','yes'),
	(46,'comment_whitelist','1','yes'),
	(47,'blacklist_keys','','no'),
	(48,'comment_registration','0','yes'),
	(49,'html_type','text/html','yes'),
	(50,'use_trackback','0','yes'),
	(51,'default_role','subscriber','yes'),
	(52,'db_version','24448','yes'),
	(53,'uploads_use_yearmonth_folders','1','yes'),
	(54,'upload_path','','yes'),
	(55,'blog_public','1','yes'),
	(56,'default_link_category','2','yes'),
	(57,'show_on_front','posts','yes'),
	(58,'tag_base','','yes'),
	(59,'show_avatars','1','yes'),
	(60,'avatar_rating','G','yes'),
	(61,'upload_url_path','','yes'),
	(62,'thumbnail_size_w','150','yes'),
	(63,'thumbnail_size_h','150','yes'),
	(64,'thumbnail_crop','1','yes'),
	(65,'medium_size_w','300','yes'),
	(66,'medium_size_h','300','yes'),
	(67,'avatar_default','mystery','yes'),
	(68,'large_size_w','1024','yes'),
	(69,'large_size_h','1024','yes'),
	(70,'image_default_link_type','file','yes'),
	(71,'image_default_size','','yes'),
	(72,'image_default_align','','yes'),
	(73,'close_comments_for_old_posts','0','yes'),
	(74,'close_comments_days_old','14','yes'),
	(75,'thread_comments','1','yes'),
	(76,'thread_comments_depth','5','yes'),
	(77,'page_comments','0','yes'),
	(78,'comments_per_page','50','yes'),
	(79,'default_comments_page','newest','yes'),
	(80,'comment_order','asc','yes'),
	(81,'sticky_posts','a:0:{}','yes'),
	(82,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(83,'widget_text','a:0:{}','yes'),
	(84,'widget_rss','a:0:{}','yes'),
	(85,'uninstall_plugins','a:0:{}','no'),
	(86,'timezone_string','','yes'),
	(87,'page_for_posts','0','yes'),
	(88,'page_on_front','0','yes'),
	(89,'default_post_format','0','yes'),
	(90,'link_manager_enabled','0','yes'),
	(91,'initial_db_version','24448','yes'),
	(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(93,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(94,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(95,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(96,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";N;s:13:\"array_version\";i:3;}','yes'),
	(99,'cron','a:4:{i:1378742155;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1378785741;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1378790459;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(106,'_site_transient_timeout_browser_9331fd1560ce9778886946d2599b043d','1378785367','yes'),
	(101,'_site_transient_update_core','O:8:\"stdClass\":3:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":9:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:38:\"http://wordpress.org/wordpress-3.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":4:{s:4:\"full\";s:38:\"http://wordpress.org/wordpress-3.6.zip\";s:10:\"no_content\";s:49:\"http://wordpress.org/wordpress-3.6-no-content.zip\";s:11:\"new_bundled\";s:50:\"http://wordpress.org/wordpress-3.6-new-bundled.zip\";s:7:\"partial\";b:0;}s:7:\"current\";s:3:\"3.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1378698982;s:15:\"version_checked\";s:3:\"3.6\";}','yes'),
	(102,'_site_transient_update_plugins','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1378698983;s:7:\"checked\";a:6:{s:57:\"agnosia-bootstrap-carousel/agnosia-bootstrap-carousel.php\";s:3:\"0.3\";s:19:\"akismet/akismet.php\";s:5:\"2.5.9\";s:33:\"wp-carouselslideshow/carousel.php\";s:4:\"3.11\";s:45:\"carousel-without-jetpack/jetpack-carousel.php\";s:3:\"0.6\";s:9:\"hello.php\";s:3:\"1.6\";s:23:\"len-slider/ls-index.php\";s:6:\"2.0.11\";}s:8:\"response\";a:0:{}}','yes'),
	(188,'_site_transient_timeout_theme_roots','1378702616','yes'),
	(189,'_site_transient_theme_roots','a:3:{s:7:\"dlhaiqi\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}','yes'),
	(105,'_site_transient_update_themes','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1378700919;s:7:\"checked\";a:3:{s:7:\"dlhaiqi\";s:3:\"1.0\";s:14:\"twentythirteen\";s:3:\"1.0\";s:12:\"twentytwelve\";s:3:\"1.2\";}s:8:\"response\";a:0:{}}','yes'),
	(107,'_site_transient_browser_9331fd1560ce9778886946d2599b043d','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"29.0.1547.62\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),
	(108,'dashboard_widget_options','a:4:{s:25:\"dashboard_recent_comments\";a:1:{s:5:\"items\";i:5;}s:24:\"dashboard_incoming_links\";a:5:{s:4:\"home\";s:14:\"http://dlhaiqi\";s:4:\"link\";s:90:\"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://dlhaiqi/\";s:3:\"url\";s:123:\"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://dlhaiqi/\";s:5:\"items\";i:10;s:9:\"show_date\";b:0;}s:17:\"dashboard_primary\";a:7:{s:4:\"link\";s:26:\"http://wordpress.org/news/\";s:3:\"url\";s:31:\"http://wordpress.org/news/feed/\";s:5:\"title\";s:14:\"WordPress Blog\";s:5:\"items\";i:2;s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}s:19:\"dashboard_secondary\";a:7:{s:4:\"link\";s:28:\"http://planet.wordpress.org/\";s:3:\"url\";s:33:\"http://planet.wordpress.org/feed/\";s:5:\"title\";s:20:\"Other WordPress News\";s:5:\"items\";i:5;s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}}','yes'),
	(109,'can_compress_scripts','1','yes'),
	(180,'_transient_timeout_feed_mod_0e3ce5f5cb4417dc17d87d4faedf50ea','1378743925','no'),
	(181,'_transient_feed_mod_0e3ce5f5cb4417dc17d87d4faedf50ea','1378700725','no'),
	(182,'_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f','1378743925','no'),
	(183,'_transient_dash_20494a3d90a6669585674ed0eb8dcd8f','<p>This dashboard widget queries <a href=\"http://blogsearch.google.com/\">Google Blog Search</a> so that when another blog links to your site it will show up here. It has found no incoming links&hellip; yet. It&#8217;s okay &#8212; there is no rush.</p>\n','no'),
	(184,'_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51','1378743984','no'),
	(185,'_transient_dash_4077549d03da2e451c8b5f002294ff51','<div class=\"rss-widget\"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org; nodename nor servname provided, or not known</p></div>','no'),
	(178,'_transient_timeout_feed_0e3ce5f5cb4417dc17d87d4faedf50ea','1378743925','no'),
	(179,'_transient_feed_0e3ce5f5cb4417dc17d87d4faedf50ea','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:4:\"\n  \n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:33:\"\n    \n    \n    \n    \n    \n    \n  \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:3:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"link:http://dlhaiqi/ - Google Blog Search\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"http://www.google.com/search?ie=utf-8&q=link:http://dlhaiqi/&tbm=blg&tbs=sbd:1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"Your search - <b>link:http://dlhaiqi/</b> - did not match any documents.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://a9.com/-/spec/opensearch/1.1/\";a:3:{s:12:\"totalResults\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:10:\"startIndex\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:12:\"itemsPerPage\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:10:{s:12:\"content-type\";s:28:\"text/xml; charset=ISO-8859-1\";s:4:\"date\";s:29:\"Mon, 09 Sep 2013 04:25:25 GMT\";s:7:\"expires\";s:2:\"-1\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:10:\"set-cookie\";a:2:{i:0;s:143:\"PREF=ID=9b144bb6710c9e40:FF=0:TM=1378700725:LM=1378700725:S=ebuJ9Fn1hIdeG-tE; expires=Wed, 09-Sep-2015 04:25:25 GMT; path=/; domain=.google.com\";i:1;s:212:\"NID=67=iCe18TXvAptzdM_uL6dsVu7bwo-MpMP9q61bunvpWSHExp68GMfActQt-9fKEyV6GQome_6wPdHk7nWCuDQHhJETI0733UvI6PWsY1daz4mbqE9B9iQhRwJBrPORx3Th; expires=Tue, 11-Mar-2014 04:25:25 GMT; path=/; domain=.google.com; HttpOnly\";}s:3:\"p3p\";s:122:\"CP=\"This is not a P3P policy! See http://www.google.com/support/accounts/bin/answer.py?hl=en&answer=151657 for more info.\"\";s:6:\"server\";s:3:\"gws\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:18:\"alternate-protocol\";s:7:\"80:quic\";}s:5:\"build\";s:14:\"20130708091016\";}','no'),
	(186,'_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0','1378743985','no'),
	(187,'_transient_dash_aa95765b5cc111c56d5993d476b1c2f0','<div class=\"rss-widget\"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org; nodename nor servname provided, or not known</p></div>','no'),
	(190,'_transient_timeout_plugin_slugs','1378787245','no'),
	(191,'_transient_plugin_slugs','a:6:{i:0;s:57:\"agnosia-bootstrap-carousel/agnosia-bootstrap-carousel.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:33:\"wp-carouselslideshow/carousel.php\";i:3;s:45:\"carousel-without-jetpack/jetpack-carousel.php\";i:4;s:9:\"hello.php\";i:5;s:23:\"len-slider/ls-index.php\";}','no'),
	(192,'_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e','1378744045','no'),
	(193,'_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e','','no'),
	(194,'rewrite_rules','a:68:{s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}','yes'),
	(197,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
	(201,'_transient_is_multi_author','0','yes'),
	(143,'_site_transient_timeout_wporg_theme_feature_list','1378198689','yes'),
	(144,'_site_transient_wporg_theme_feature_list','a:5:{s:6:\"Colors\";a:15:{i:0;s:5:\"black\";i:1;s:4:\"blue\";i:2;s:5:\"brown\";i:3;s:4:\"gray\";i:4;s:5:\"green\";i:5;s:6:\"orange\";i:6;s:4:\"pink\";i:7;s:6:\"purple\";i:8;s:3:\"red\";i:9;s:6:\"silver\";i:10;s:3:\"tan\";i:11;s:5:\"white\";i:12;s:6:\"yellow\";i:13;s:4:\"dark\";i:14;s:5:\"light\";}s:7:\"Columns\";a:6:{i:0;s:10:\"one-column\";i:1;s:11:\"two-columns\";i:2;s:13:\"three-columns\";i:3;s:12:\"four-columns\";i:4;s:12:\"left-sidebar\";i:5;s:13:\"right-sidebar\";}s:5:\"Width\";a:2:{i:0;s:11:\"fixed-width\";i:1;s:14:\"flexible-width\";}s:8:\"Features\";a:19:{i:0;s:8:\"blavatar\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:20:\"front-page-post-form\";i:11;s:19:\"full-width-template\";i:12;s:12:\"microformats\";i:13;s:12:\"post-formats\";i:14;s:20:\"rtl-language-support\";i:15;s:11:\"sticky-post\";i:16;s:13:\"theme-options\";i:17;s:17:\"threaded-comments\";i:18;s:17:\"translation-ready\";}s:7:\"Subject\";a:3:{i:0;s:7:\"holiday\";i:1;s:13:\"photoblogging\";i:2;s:8:\"seasonal\";}}','yes'),
	(145,'theme_mods_twentythirteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1378187889;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}}}}','yes'),
	(146,'current_theme','DlHaiQi temple','yes'),
	(147,'theme_mods_dlhaiqi','a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}}','yes'),
	(148,'theme_switched','','yes'),
	(150,'recently_activated','a:1:{s:57:\"agnosia-bootstrap-carousel/agnosia-bootstrap-carousel.php\";i:1378190755;}','yes'),
	(152,'carousel_settings','a:29:{s:15:\"slideshow_width\";s:3:\"550\";s:16:\"slideshow_height\";s:3:\"390\";s:15:\"mainimage_width\";s:3:\"400\";s:16:\"mainimage_height\";s:3:\"300\";s:7:\"bgcolor\";s:6:\"E0E0E0\";s:10:\"auto_slide\";s:4:\"true\";s:14:\"autoslide_time\";s:2:\"10\";s:16:\"transition_speed\";s:2:\"50\";s:15:\"transition_type\";s:7:\"easeOut\";s:9:\"show_desc\";s:4:\"true\";s:13:\"desc_position\";s:6:\"bottom\";s:12:\"desc_bgcolor\";s:6:\"FF0000\";s:17:\"desc_bgcoloralpha\";s:2:\"90\";s:10:\"desc_color\";s:6:\"FFFFFF\";s:14:\"desc_roundness\";s:1:\"0\";s:21:\"slideshow_bordercolor\";s:6:\"FFFFFF\";s:16:\"image_reflection\";s:5:\"image\";s:11:\"progressbar\";s:4:\"true\";s:20:\"progressbar_position\";s:3:\"top\";s:17:\"progressbar_color\";s:6:\"A8A8A8\";s:26:\"progressbar_highlightcolor\";s:6:\"000000\";s:17:\"progressbar_alpha\";s:3:\"100\";s:16:\"picture_scalling\";s:4:\"true\";s:15:\"snoweffect_type\";s:1:\"1\";s:14:\"noof_particles\";s:3:\"125\";s:17:\"min_particle_blur\";s:1:\"0\";s:17:\"max_particle_blur\";s:1:\"6\";s:5:\"wmode\";s:6:\"opaque\";s:6:\"target\";s:5:\"_self\";}','yes');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,4,'_menu_item_type','custom'),
	(3,4,'_menu_item_menu_item_parent','0'),
	(4,4,'_menu_item_object_id','4'),
	(5,4,'_menu_item_object','custom'),
	(6,4,'_menu_item_target',''),
	(7,4,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(8,4,'_menu_item_xfn',''),
	(9,4,'_menu_item_url','http://dlhaiqi/'),
	(10,4,'_menu_item_orphaned','1378700879'),
	(11,5,'_menu_item_type','post_type'),
	(12,5,'_menu_item_menu_item_parent','0'),
	(13,5,'_menu_item_object_id','2'),
	(14,5,'_menu_item_object','page'),
	(15,5,'_menu_item_target',''),
	(16,5,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(17,5,'_menu_item_xfn',''),
	(18,5,'_menu_item_url',''),
	(19,5,'_menu_item_orphaned','1378700879'),
	(20,6,'_edit_last','1'),
	(21,6,'_edit_lock','1378704098:1'),
	(22,6,'_wp_page_template','default'),
	(23,8,'_menu_item_type','custom'),
	(24,8,'_menu_item_menu_item_parent','0'),
	(25,8,'_menu_item_object_id','8'),
	(26,8,'_menu_item_object','custom'),
	(27,8,'_menu_item_target',''),
	(28,8,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(29,8,'_menu_item_xfn',''),
	(30,8,'_menu_item_url','http://dlhaiqi/'),
	(51,11,'_edit_lock','1378704422:1'),
	(32,9,'_menu_item_type','post_type'),
	(33,9,'_menu_item_menu_item_parent','0'),
	(34,9,'_menu_item_object_id','6'),
	(35,9,'_menu_item_object','page'),
	(36,9,'_menu_item_target',''),
	(37,9,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(38,9,'_menu_item_xfn',''),
	(39,9,'_menu_item_url',''),
	(50,11,'_edit_last','1'),
	(41,10,'_menu_item_type','post_type'),
	(42,10,'_menu_item_menu_item_parent','0'),
	(43,10,'_menu_item_object_id','2'),
	(44,10,'_menu_item_object','page'),
	(45,10,'_menu_item_target',''),
	(46,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(47,10,'_menu_item_xfn',''),
	(48,10,'_menu_item_url',''),
	(49,10,'_menu_item_orphaned','1378704219'),
	(52,11,'_wp_page_template','default'),
	(53,13,'_menu_item_type','post_type'),
	(54,13,'_menu_item_menu_item_parent','0'),
	(55,13,'_menu_item_object_id','11'),
	(56,13,'_menu_item_object','page'),
	(57,13,'_menu_item_target',''),
	(58,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(59,13,'_menu_item_xfn',''),
	(60,13,'_menu_item_url',''),
	(62,14,'_edit_last','1'),
	(63,14,'_edit_lock','1378704584:1'),
	(64,14,'_wp_page_template','default'),
	(65,16,'_menu_item_type','post_type'),
	(66,16,'_menu_item_menu_item_parent','0'),
	(67,16,'_menu_item_object_id','14'),
	(68,16,'_menu_item_object','page'),
	(69,16,'_menu_item_target',''),
	(70,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(71,16,'_menu_item_xfn',''),
	(72,16,'_menu_item_url',''),
	(74,17,'_edit_last','1'),
	(75,17,'_edit_lock','1378704689:1'),
	(76,17,'_wp_page_template','default'),
	(77,19,'_menu_item_type','post_type'),
	(78,19,'_menu_item_menu_item_parent','0'),
	(79,19,'_menu_item_object_id','17'),
	(80,19,'_menu_item_object','page'),
	(81,19,'_menu_item_target',''),
	(82,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(83,19,'_menu_item_xfn',''),
	(84,19,'_menu_item_url',''),
	(86,20,'_edit_last','1'),
	(87,20,'_edit_lock','1378704783:1'),
	(88,20,'_wp_page_template','default'),
	(89,22,'_menu_item_type','post_type'),
	(90,22,'_menu_item_menu_item_parent','0'),
	(91,22,'_menu_item_object_id','20'),
	(92,22,'_menu_item_object','page'),
	(93,22,'_menu_item_target',''),
	(94,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(95,22,'_menu_item_xfn',''),
	(96,22,'_menu_item_url',''),
	(98,23,'_edit_last','1'),
	(99,23,'_edit_lock','1378704890:1'),
	(100,23,'_wp_page_template','default'),
	(101,25,'_menu_item_type','post_type'),
	(102,25,'_menu_item_menu_item_parent','0'),
	(103,25,'_menu_item_object_id','23'),
	(104,25,'_menu_item_object','page'),
	(105,25,'_menu_item_target',''),
	(106,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(107,25,'_menu_item_xfn',''),
	(108,25,'_menu_item_url','');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2013-09-03 03:55:48','2013-09-03 03:55:48','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2013-09-03 03:55:48','2013-09-03 03:55:48','',0,'http://dlhaiqi/?p=1',0,'post','',1),
	(2,1,'2013-09-03 03:55:48','2013-09-03 03:55:48','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://dlhaiqi/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2013-09-03 03:55:48','2013-09-03 03:55:48','',0,'http://dlhaiqi/?page_id=2',0,'page','',0),
	(3,1,'2013-09-03 03:56:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2013-09-03 03:56:07','0000-00-00 00:00:00','',0,'http://dlhaiqi/?p=3',0,'post','',0),
	(4,1,'2013-09-09 04:27:59','0000-00-00 00:00:00','','Home','','draft','open','open','','','','','2013-09-09 04:27:59','0000-00-00 00:00:00','',0,'http://dlhaiqi/?p=4',1,'nav_menu_item','',0),
	(5,1,'2013-09-09 04:27:59','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2013-09-09 04:27:59','0000-00-00 00:00:00','',0,'http://dlhaiqi/?p=5',1,'nav_menu_item','',0),
	(6,1,'2013-09-09 05:23:06','2013-09-09 05:23:06','','introduce','','publish','open','open','','introduce','','','2013-09-09 05:23:06','2013-09-09 05:23:06','',0,'http://dlhaiqi/?page_id=6',0,'page','',0),
	(7,1,'2013-09-09 05:23:06','2013-09-09 05:23:06','','introduce','','inherit','open','open','','6-revision-v1','','','2013-09-09 05:23:06','2013-09-09 05:23:06','',6,'http://dlhaiqi/6-revision-v1/',0,'revision','',0),
	(8,1,'2013-09-09 05:23:55','2013-09-09 05:23:55','','首页','','publish','open','open','','home','','','2013-09-09 05:37:04','2013-09-09 05:37:04','',0,'http://dlhaiqi/?p=8',1,'nav_menu_item','',0),
	(9,1,'2013-09-09 05:23:55','2013-09-09 05:23:55','','公司简介','','publish','open','open','','9','','','2013-09-09 05:37:04','2013-09-09 05:37:04','',0,'http://dlhaiqi/?p=9',2,'nav_menu_item','',0),
	(10,1,'2013-09-09 05:23:39','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2013-09-09 05:23:39','0000-00-00 00:00:00','',0,'http://dlhaiqi/?p=10',1,'nav_menu_item','',0),
	(11,1,'2013-09-09 05:28:22','2013-09-09 05:28:22','','product','','publish','open','open','','product','','','2013-09-09 05:28:45','2013-09-09 05:28:45','',0,'http://dlhaiqi/?page_id=11',0,'page','',0),
	(12,1,'2013-09-09 05:28:22','2013-09-09 05:28:22','','product','','inherit','open','open','','11-revision-v1','','','2013-09-09 05:28:22','2013-09-09 05:28:22','',11,'http://dlhaiqi/11-revision-v1/',0,'revision','',0),
	(13,1,'2013-09-09 05:29:24','2013-09-09 05:29:24','','公司产品','','publish','open','open','','%e5%85%ac%e5%8f%b8%e4%ba%a7%e5%93%81','','','2013-09-09 05:37:04','2013-09-09 05:37:04','',0,'http://dlhaiqi/?p=13',3,'nav_menu_item','',0),
	(14,1,'2013-09-09 05:31:21','2013-09-09 05:31:21','','cases','','publish','open','open','','cases','','','2013-09-09 05:31:21','2013-09-09 05:31:21','',0,'http://dlhaiqi/?page_id=14',0,'page','',0),
	(15,1,'2013-09-09 05:31:21','2013-09-09 05:31:21','','cases','','inherit','open','open','','14-revision-v1','','','2013-09-09 05:31:21','2013-09-09 05:31:21','',14,'http://dlhaiqi/14-revision-v1/',0,'revision','',0),
	(16,1,'2013-09-09 05:31:58','2013-09-09 05:31:58','','成功案例','','publish','open','open','','%e6%88%90%e5%8a%9f%e6%a1%88%e4%be%8b','','','2013-09-09 05:37:04','2013-09-09 05:37:04','',0,'http://dlhaiqi/?p=16',4,'nav_menu_item','',0),
	(17,1,'2013-09-09 05:33:03','2013-09-09 05:33:03','','service','','publish','open','open','','service','','','2013-09-09 05:33:13','2013-09-09 05:33:13','',0,'http://dlhaiqi/?page_id=17',0,'page','',0),
	(18,1,'2013-09-09 05:33:03','2013-09-09 05:33:03','','service','','inherit','open','open','','17-revision-v1','','','2013-09-09 05:33:03','2013-09-09 05:33:03','',17,'http://dlhaiqi/17-revision-v1/',0,'revision','',0),
	(19,1,'2013-09-09 05:33:40','2013-09-09 05:33:40','','售后服务','','publish','open','open','','%e5%94%ae%e5%90%8e%e6%9c%8d%e5%8a%a1','','','2013-09-09 05:37:04','2013-09-09 05:37:04','',0,'http://dlhaiqi/?p=19',5,'nav_menu_item','',0),
	(20,1,'2013-09-09 05:34:47','2013-09-09 05:34:47','','news','','publish','open','open','','news','','','2013-09-09 05:34:47','2013-09-09 05:34:47','',0,'http://dlhaiqi/?page_id=20',0,'page','',0),
	(21,1,'2013-09-09 05:34:47','2013-09-09 05:34:47','','news','','inherit','open','open','','20-revision-v1','','','2013-09-09 05:34:47','2013-09-09 05:34:47','',20,'http://dlhaiqi/20-revision-v1/',0,'revision','',0),
	(22,1,'2013-09-09 05:35:13','2013-09-09 05:35:13','','新闻中心','','publish','open','open','','%e6%96%b0%e9%97%bb%e4%b8%ad%e5%bf%83','','','2013-09-09 05:37:04','2013-09-09 05:37:04','',0,'http://dlhaiqi/?p=22',6,'nav_menu_item','',0),
	(23,1,'2013-09-09 05:36:37','2013-09-09 05:36:37','','contactUs','','publish','open','open','','contactus','','','2013-09-09 05:36:37','2013-09-09 05:36:37','',0,'http://dlhaiqi/?page_id=23',0,'page','',0),
	(24,1,'2013-09-09 05:36:37','2013-09-09 05:36:37','','contactUs','','inherit','open','open','','23-revision-v1','','','2013-09-09 05:36:37','2013-09-09 05:36:37','',23,'http://dlhaiqi/23-revision-v1/',0,'revision','',0),
	(25,1,'2013-09-09 05:37:04','2013-09-09 05:37:04','','联系我们','','publish','open','open','','%e8%81%94%e7%b3%bb%e6%88%91%e4%bb%ac','','','2013-09-09 05:37:04','2013-09-09 05:37:04','',0,'http://dlhaiqi/?p=25',7,'nav_menu_item','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(8,2,0),
	(9,2,0),
	(13,2,0),
	(16,2,0),
	(19,2,0),
	(22,2,0),
	(25,2,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'nav_menu','',0,7);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0),
	(2,'header','header',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'first_name',''),
	(2,1,'last_name',''),
	(3,1,'nickname','admin'),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'comment_shortcuts','false'),
	(7,1,'admin_color','fresh'),
	(8,1,'use_ssl','0'),
	(9,1,'show_admin_bar_front','true'),
	(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(11,1,'wp_user_level','10'),
	(12,1,'dismissed_wp_pointers','wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
	(13,1,'show_welcome_panel','1'),
	(14,1,'wp_dashboard_quick_press_last_post_id','3'),
	(15,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
	(16,1,'metaboxhidden_nav-menus','a:3:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),
	(17,1,'nav_menu_recently_edited','2');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$P$BZyOSlhRqJFxFORfIMmokrDGwSuC/W/','admin','weblsfamily@gmail.com','','2013-09-03 03:55:48','',0,'admin');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
