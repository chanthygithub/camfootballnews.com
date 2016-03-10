-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2016 at 09:56 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbwordpressadmin`
--
CREATE DATABASE IF NOT EXISTS `dbwordpressadmin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbwordpressadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-10-22 08:33:08', '2015-10-22 08:33:08', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=441 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:82/camfootballnews.com/', 'yes'),
(2, 'home', 'http://localhost:82/camfootballnews.com/', 'yes'),
(3, 'blogname', 'Welcome To.........', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'chanthy.ven@vecteurplus.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:51:"display-posts-shortcode/display-posts-shortcode.php";i:1;s:23:"ml-slider/ml-slider.php";i:2;s:31:"posts-in-page/posts_in_page.php";i:3;s:39:"siteorigin-panels/siteorigin-panels.php";i:4;s:39:"so-widgets-bundle/so-widgets-bundle.php";i:5;s:29:"wp-digg-this/wp-digg-this.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:62:"D:\\wamp\\www\\wordpressAdmin/wp-content/themes/vantage/style.css";i:2;s:69:"D:\\wamp\\www\\wordpressAdmin/wp-content/themes/vantage/content-page.php";i:3;s:69:"D:\\wamp\\www\\wordpressAdmin/wp-content/themes/vantage/parts/footer.php";i:4;s:69:"D:\\wamp\\www\\wordpressAdmin/wp-content/plugins/ml-slider/ml-slider.php";i:5;s:75:"D:\\wamp\\www\\wordpressAdmin/wp-content/plugins/wp-digg-this/wp-digg-this.php";}', 'no'),
(41, 'template', 'vantage', 'yes'),
(42, 'stylesheet', 'vantage', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:14:"recent-posts-2";i:1;s:10:"archives-2";i:2;s:12:"categories-2";i:3;s:6:"meta-2";i:4;s:10:"calendar-2";}s:14:"sidebar-footer";a:0:{}s:14:"sidebar-header";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:5:{i:1454667603;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1454700300;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1454704389;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1454747610;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(102, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1454661968;s:15:"version_checked";s:5:"4.3.1";s:12:"translations";a:0:{}}', 'yes'),
(108, '_transient_random_seed', 'a63ebfbd45a7dec8839f71131859da9d', 'yes'),
(110, '_site_transient_timeout_browser_f17158549169c0110ce3122bf897ae75', '1446107610', 'yes'),
(111, '_site_transient_browser_f17158549169c0110ce3122bf897ae75', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"41.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(113, 'can_compress_scripts', '1', 'yes'),
(119, '_transient_twentyfifteen_categories', '1', 'yes'),
(132, '_site_transient_timeout_wporg_theme_feature_list', '1445513640', 'yes'),
(133, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(135, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1445503076;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(136, 'current_theme', 'Vantage', 'yes'),
(137, 'theme_mods_vantage', 'a:5:{i:0;b:0;s:17:"version_activated";s:5:"1.4.4";s:27:"_theme_settings_current_tab";s:1:"0";s:18:"nav_menu_locations";a:0:{}s:35:"siteorigin_panels_home_page_enabled";b:0;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(139, 'widget_calendar', 'a:3:{i:1;a:0:{}i:2;a:1:{s:5:"title";s:8:"Calendar";}s:12:"_multiwidget";i:1;}', 'yes'),
(140, 'widget_circleicon-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(142, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(144, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(146, 'widget_headline-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(147, 'widget_vantage-social-media', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(148, 'site_icon', '5', 'yes'),
(149, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(150, 'vantage_theme_settings', 'a:42:{s:10:"logo_image";s:2:"80";s:22:"logo_in_menu_constrain";b:1;s:16:"logo_header_text";s:14:"Call me Maybe!";s:22:"logo_no_widget_overlay";b:1;s:17:"layout_responsive";b:1;s:14:"layout_fitvids";b:1;s:12:"layout_bound";s:4:"full";s:15:"layout_masthead";s:0:"";s:11:"layout_menu";s:0:"";s:13:"layout_footer";s:0:"";s:24:"layout_force_panels_full";b:1;s:11:"home_slider";s:6:"meta:6";s:19:"home_slider_stretch";b:1;s:26:"navigation_use_sticky_menu";b:1;s:22:"navigation_menu_search";b:1;s:32:"navigation_display_scroll_to_top";b:1;s:19:"blog_archive_layout";s:4:"blog";s:20:"blog_archive_content";s:4:"full";s:24:"blog_featured_image_type";s:5:"large";s:19:"blog_featured_image";b:1;s:18:"blog_post_metadata";b:1;s:14:"blog_post_date";b:1;s:16:"blog_post_author";b:1;s:20:"blog_post_categories";b:1;s:14:"blog_post_tags";b:1;s:14:"blog_read_more";s:16:"Continue reading";s:22:"general_site_info_text";s:0:"";s:20:"premium_order_number";s:0:"";s:17:"logo_image_retina";b:0;s:26:"navigation_responsive_menu";b:0;s:31:"navigation_responsive_menu_text";b:0;s:33:"navigation_responsive_menu_search";b:0;s:19:"navigation_post_nav";b:0;s:20:"navigation_home_icon";b:0;s:28:"navigation_mobile_navigation";b:0;s:23:"blog_post_comment_count";b:0;s:15:"blog_author_box";b:0;s:20:"social_ajax_comments";b:0;s:17:"social_share_post";b:0;s:14:"social_twitter";b:0;s:23:"general_adaptive_images";b:0;s:25:"general_js_enqueue_footer";b:0;}', 'yes'),
(153, 'recently_activated', 'a:1:{s:23:"ml-slider/ml-slider.php";i:1452675618;}', 'yes'),
(155, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'yes'),
(165, 'WPDiggThis_options', 'a:6:{s:4:"home";s:2:"on";s:8:"category";s:2:"on";s:7:"archive";s:2:"on";s:6:"search";s:2:"on";s:5:"after";s:2:"on";s:8:"template";s:102:"&lt;div style=&quot;float: left; margin-right: 10px; margin-bottom: 4px;&quot;&gt;{button}&lt;/div&gt;";}', 'yes'),
(181, '_site_transient_timeout_browser_601e5540755b6431df1b395976531e65', '1448359044', 'yes'),
(182, '_site_transient_browser_601e5540755b6431df1b395976531e65', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"42.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(208, '_site_transient_timeout_browser_c6e0d466c988c4043691b020b1fec366', '1453196694', 'yes'),
(209, '_site_transient_browser_c6e0d466c988c4043691b020b1fec366', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"47.0.2526.106";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(219, 'category_children', 'a:0:{}', 'yes'),
(237, 'widget_metaslider_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(241, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1452660641', 'yes'),
(242, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5654";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3549";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3498";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3009";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2731";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2219";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2166";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2000";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1953";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1941";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1935";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1885";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1787";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1584";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1514";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1498";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1431";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1300";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1260";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1245";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1138";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1065";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1035";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"986";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"945";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"900";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"882";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"882";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"870";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"865";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"849";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"807";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"766";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"743";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"736";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"734";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"728";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"722";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"721";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"717";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"707";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"699";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"681";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"674";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"654";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"652";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"644";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"641";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"634";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"626";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"607";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"598";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"591";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"588";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"583";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"576";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"575";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"572";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"571";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"560";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"545";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"538";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"527";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"521";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"519";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"508";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"504";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"501";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"499";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"499";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"474";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"474";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"467";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"458";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"457";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"456";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"432";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"430";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"421";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"415";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"415";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"412";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"404";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"403";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"400";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"400";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"396";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"395";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"390";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"388";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"386";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"381";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"380";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"379";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"378";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"376";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"374";}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";s:3:"371";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"371";}}', 'yes'),
(258, 'siteorigin_panels_initial_version', '2.2.2', 'no'),
(259, 'siteorigin_panels_settings', 'a:11:{s:10:"post-types";a:2:{i:0;s:4:"page";i:1;s:4:"post";}s:10:"title-html";s:39:"<h3 class="widget-title">{{title}}</h3>";s:16:"add-widget-class";b:1;s:15:"bundled-widgets";b:0;s:19:"recommended-widgets";b:1;s:10:"responsive";b:1;s:12:"mobile-width";i:780;s:13:"margin-bottom";i:35;s:12:"margin-sides";i:30;s:20:"full-width-container";s:4:"body";s:12:"copy-content";b:1;}', 'yes'),
(273, 'siteorigin_widget_bundle_version', '1.5.4', 'yes'),
(274, 'siteorigin_widgets_old_widgets', 'D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-button-widget/so-button-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-cta-widget/so-cta-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-contact-widget/so-contact-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-editor-widget/so-editor-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-features-widget/so-features-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-google-map-widget/so-google-map-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-headline-widget/so-headline-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-hero-widget/so-hero-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-image-widget/so-image-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-image-grid-widget/so-image-grid-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-slider-widget/so-slider-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-post-carousel-widget/so-post-carousel-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-price-table-widget/so-price-table-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-simple-masonry-widget/so-simple-masonry-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-social-media-buttons-widget/so-social-media-buttons-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-testimonial-widget/so-testimonial-widget.php,D:\\wamp\\www\\wordpressAdmin\\wp-content\\plugins\\so-widgets-bundle/widgets/so-video-widget/so-video-widget.php', 'yes'),
(350, 'siteorigin_panels_home_page_id', '79', 'yes'),
(362, 'widget_siteorigin-panels-builder', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(363, 'widget_siteorigin-panels-post-content', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(364, 'widget_siteorigin-panels-postloop', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(365, 'widget_sow-button', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(366, 'widget_sow-editor', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(367, 'widget_sow-google-map', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(368, 'widget_sow-image', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(369, 'widget_sow-post-carousel', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(370, 'widget_sow-slider', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(373, 'ml-slider_children', 'a:0:{}', 'yes'),
(410, '_site_transient_timeout_browser_e69998cd166d0a716e585b452d0a9806', '1453714804', 'yes'),
(411, '_site_transient_browser_e69998cd166d0a716e585b452d0a9806', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"47.0.2526.111";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(412, '_transient_timeout_plugin_slugs', '1453196765', 'no'),
(413, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:51:"display-posts-shortcode/display-posts-shortcode.php";i:2;s:9:"hello.php";i:3;s:23:"ml-slider/ml-slider.php";i:4;s:39:"siteorigin-panels/siteorigin-panels.php";i:5;s:31:"posts-in-page/posts_in_page.php";i:6;s:39:"so-widgets-bundle/so-widgets-bundle.php";i:7;s:29:"wp-digg-this/wp-digg-this.php";}', 'no'),
(414, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1453153207', 'no'),
(415, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(416, '_site_transient_timeout_available_translations', '1453121100', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(417, '_site_transient_available_translations', 'a:71:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 00:32:07";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-27 20:45:33";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3.1/ary.zip";s:3:"iso";a:2:{i:1;s:5:"ar_MA";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-22 14:16:17";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-25 14:32:58";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-16 05:09:40";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-07 03:25:59";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 09:17:13";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 19:34:34";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-02 05:19:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-22 13:06:33";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.3.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-22 13:05:44";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-10 09:57:22";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 20:57:21";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 22:20:50";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-08 12:35:01";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-14 00:38:16";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-13 23:56:05";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-16 10:50:33";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 19:20:19";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-26 22:31:40";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-26 19:53:52";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 14:33:57";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.2.6";s:7:"updated";s:19:"2015-10-29 16:32:18";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.6/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-05 16:34:02";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-12 17:21:08";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 13:36:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-15 15:41:04";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-08 02:28:05";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-08 17:58:19";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-06 20:37:24";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 23:34:00";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.9";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.9/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-22 08:59:41";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-20 14:39:18";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-04 22:14:16";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-15 12:00:25";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-24 08:17:28";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-22 13:47:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-06 06:16:37";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 16:23:05";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-06 04:24:53";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 07:48:28";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-15 04:39:52";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.9";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.9/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-23 10:49:34";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-28 15:14:19";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 18:56:13";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"http://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-27 13:38:57";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.9";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.9/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-12-16 17:23:30";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-27 16:41:01";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 16:44:05";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-03 10:08:50";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-20 09:27:40";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-06 16:10:24";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-27 07:05:44";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 18:31:56";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 10:43:45";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-08 12:30:32";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-19 13:55:59";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.9";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.9/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-08 09:34:14";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-27 09:19:03";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 19:10:20";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-21 11:18:12";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(431, '_transient_is_multi_author', '0', 'yes'),
(432, 'rewrite_rules', 'a:70:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(434, '_transient_timeout_sow:cleared', '1455266765', 'no'),
(435, '_transient_sow:cleared', '1', 'no'),
(437, '_site_transient_timeout_theme_roots', '1454663767', 'yes'),
(438, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:7:"vantage";s:7:"/themes";}', 'yes'),
(439, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1454661970;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";s:7:"vantage";s:5:"1.4.4";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentyfifteen.1.4.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentyfourteen.1.6.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentythirteen.1.7.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(440, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1454661969;s:8:"response";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.7.zip";}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":6:{s:2:"id";s:5:"38583";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:5:"3.3.6";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/ml-slider.3.3.6.zip";}s:39:"so-widgets-bundle/so-widgets-bundle.php";O:8:"stdClass":6:{s:2:"id";s:5:"50709";s:4:"slug";s:17:"so-widgets-bundle";s:6:"plugin";s:39:"so-widgets-bundle/so-widgets-bundle.php";s:11:"new_version";s:5:"1.5.7";s:3:"url";s:48:"https://wordpress.org/plugins/so-widgets-bundle/";s:7:"package";s:65:"http://downloads.wordpress.org/plugin/so-widgets-bundle.1.5.7.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:51:"display-posts-shortcode/display-posts-shortcode.php";O:8:"stdClass":6:{s:2:"id";s:5:"23455";s:4:"slug";s:23:"display-posts-shortcode";s:6:"plugin";s:51:"display-posts-shortcode/display-posts-shortcode.php";s:11:"new_version";s:5:"2.5.1";s:3:"url";s:54:"https://wordpress.org/plugins/display-posts-shortcode/";s:7:"package";s:71:"http://downloads.wordpress.org/plugin/display-posts-shortcode.2.5.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:39:"siteorigin-panels/siteorigin-panels.php";O:8:"stdClass":6:{s:2:"id";s:5:"40030";s:4:"slug";s:17:"siteorigin-panels";s:6:"plugin";s:39:"siteorigin-panels/siteorigin-panels.php";s:11:"new_version";s:5:"2.2.2";s:3:"url";s:48:"https://wordpress.org/plugins/siteorigin-panels/";s:7:"package";s:65:"http://downloads.wordpress.org/plugin/siteorigin-panels.2.2.2.zip";}s:31:"posts-in-page/posts_in_page.php";O:8:"stdClass":7:{s:2:"id";s:5:"29546";s:4:"slug";s:13:"posts-in-page";s:6:"plugin";s:31:"posts-in-page/posts_in_page.php";s:11:"new_version";s:5:"1.2.4";s:3:"url";s:44:"https://wordpress.org/plugins/posts-in-page/";s:7:"package";s:61:"http://downloads.wordpress.org/plugin/posts-in-page.1.2.4.zip";s:14:"upgrade_notice";s:88:"Presentational fixes: clean up whitespace, extra tabs, add in customization of more tag.";}s:29:"wp-digg-this/wp-digg-this.php";O:8:"stdClass":6:{s:2:"id";s:4:"5269";s:4:"slug";s:12:"wp-digg-this";s:6:"plugin";s:29:"wp-digg-this/wp-digg-this.php";s:11:"new_version";s:5:"0.7.1";s:3:"url";s:43:"https://wordpress.org/plugins/wp-digg-this/";s:7:"package";s:54:"http://downloads.wordpress.org/plugin/wp-digg-this.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=290 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_wp_attached_file', '2015/10/2.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:13:"2015/10/2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:14:"2-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"2-720x380.jpg";s:5:"width";i:720;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:28:"vantage-thumbnail-no-sidebar";a:4:{s:4:"file";s:14:"2-1024x380.jpg";s:5:"width";i:1024;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:13:"vantage-slide";a:4:{s:4:"file";s:13:"2-960x480.jpg";s:5:"width";i:960;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:16:"vantage-carousel";a:4:{s:4:"file";s:13:"2-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:17:"vantage-grid-loop";a:4:{s:4:"file";s:13:"2-436x272.jpg";s:5:"width";i:436;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(4, 5, '_wp_attached_file', '2015/10/cropped-2.jpg'),
(5, 5, '_wp_attachment_context', 'site-icon'),
(6, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:21:"2015/10/cropped-2.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cropped-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cropped-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"cropped-2-512x380.jpg";s:5:"width";i:512;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:28:"vantage-thumbnail-no-sidebar";a:4:{s:4:"file";s:21:"cropped-2-512x380.jpg";s:5:"width";i:512;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:13:"vantage-slide";a:4:{s:4:"file";s:21:"cropped-2-512x480.jpg";s:5:"width";i:512;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:16:"vantage-carousel";a:4:{s:4:"file";s:21:"cropped-2-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:17:"vantage-grid-loop";a:4:{s:4:"file";s:21:"cropped-2-436x272.jpg";s:5:"width";i:436;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:21:"cropped-2-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:21:"cropped-2-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:21:"cropped-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:19:"cropped-2-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(7, 6, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"700";s:6:"height";s:3:"300";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"3000";s:6:"sDelay";s:2:"30";s:7:"opacity";s:1:"0";s:10:"titleSpeed";s:3:"500";s:6:"effect";s:5:"slide";s:10:"navigation";s:4:"true";s:5:"links";s:5:"false";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";i:15;s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:5:"false";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(8, 5, 'ml-slider_type', 'image'),
(9, 5, '_wp_attachment_backup_sizes', 'a:3:{s:15:"resized-700x300";a:5:{s:4:"path";s:72:"D:wampwwwwordpressAdmin/wp-content/uploads/2015/10/cropped-2-700x300.jpg";s:4:"file";s:21:"cropped-2-700x300.jpg";s:5:"width";i:512;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-512x219";a:5:{s:4:"path";s:72:"D:wampwwwwordpressAdmin/wp-content/uploads/2015/10/cropped-2-512x219.jpg";s:4:"file";s:21:"cropped-2-512x219.jpg";s:5:"width";i:512;s:6:"height";i:219;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-512x142";a:5:{s:4:"path";s:72:"D:wampwwwwordpressAdmin/wp-content/uploads/2015/10/cropped-2-512x142.jpg";s:4:"file";s:21:"cropped-2-512x142.jpg";s:5:"width";i:512;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}}'),
(10, 7, '_wp_attached_file', '2015/10/1.jpg'),
(11, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:365;s:4:"file";s:13:"2015/10/1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"1-720x365.jpg";s:5:"width";i:720;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}s:16:"vantage-carousel";a:4:{s:4:"file";s:13:"1-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:17:"vantage-grid-loop";a:4:{s:4:"file";s:13:"1-436x272.jpg";s:5:"width";i:436;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(12, 7, 'ml-slider_type', 'image'),
(13, 7, '_wp_attachment_backup_sizes', 'a:2:{s:15:"resized-700x300";a:5:{s:4:"path";s:64:"D:wampwwwwordpressAdmin/wp-content/uploads/2015/10/1-700x300.jpg";s:4:"file";s:13:"1-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-800x222";a:5:{s:4:"path";s:64:"D:wampwwwwordpressAdmin/wp-content/uploads/2015/10/1-800x222.jpg";s:4:"file";s:13:"1-800x222.jpg";s:5:"width";i:800;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}}'),
(14, 5, 'ml-slider_crop_position', 'center-center'),
(15, 5, '_wp_attachment_image_alt', ''),
(16, 7, 'ml-slider_crop_position', 'center-center'),
(17, 7, '_wp_attachment_image_alt', ''),
(18, 8, '_edit_last', '1'),
(19, 8, '_edit_lock', '1445509116:1'),
(67, 1, '_wp_trash_meta_status', 'publish'),
(68, 1, '_wp_trash_meta_time', '1452596236'),
(69, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(70, 8, '_wp_trash_meta_status', 'publish'),
(71, 8, '_wp_trash_meta_time', '1452596239'),
(72, 25, '_edit_last', '1'),
(73, 25, '_edit_lock', '1452656265:1'),
(75, 27, '_edit_last', '1'),
(76, 27, '_edit_lock', '1452596342:1'),
(93, 31, '_edit_last', '1'),
(94, 31, '_edit_lock', '1452651231:1'),
(96, 33, '_edit_last', '1'),
(97, 33, '_edit_lock', '1452659580:1'),
(99, 35, '_edit_last', '1'),
(100, 35, '_edit_lock', '1452659031:1'),
(132, 35, '_panels_data_preview', 'a:3:{s:7:"widgets";a:2:{i:0;a:6:{s:5:"title";s:0:"";s:4:"text";s:47:"<p>jhkhk</p><p>kjkjlk</p><p>kjlj</p><p>jjlk</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";b:1;s:12:"_sow_form_id";s:13:"5695bd8b03a9f";s:11:"panels_info";a:6:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:1;a:5:{s:5:"title";s:4:"hhhh";s:8:"dropdown";i:1;s:5:"count";i:1;s:12:"hierarchical";i:0;s:11:"panels_info";a:6:{s:5:"class";s:20:"WP_Widget_Categories";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(133, 35, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:6:{s:5:"title";s:0:"";s:4:"text";s:47:"<p>jhkhk</p><p>kjkjlk</p><p>kjlj</p><p>jjlk</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";b:1;s:12:"_sow_form_id";s:13:"5695bd8b03a9f";s:11:"panels_info";a:6:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:1;a:5:{s:5:"title";s:4:"hhhh";s:8:"dropdown";i:1;s:5:"count";i:1;s:12:"hierarchical";i:0;s:11:"panels_info";a:6:{s:5:"class";s:20:"WP_Widget_Categories";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(135, 45, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:24:"Local Five..............";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:3;s:5:"style";a:0:{}}}s:10:"grid_cells";a:4:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.333333333333333314829616256247390992939472198486328125;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.333333333333333314829616256247390992939472198486328125;}i:3;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.333333333333333314829616256247390992939472198486328125;}}}'),
(139, 46, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:47:"<p>jhkhk</p><p>kjkjlk</p><p>kjlj</p><p>jjlk</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(143, 48, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:6:"filter";s:1:"1";s:4:"text";s:47:"<p>jhkhk</p><p>kjkjlk</p><p>kjlj</p><p>jjlk</p>";s:5:"title";s:0:"";s:4:"type";s:6:"visual";s:11:"panels_info";a:5:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(145, 49, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:6:{s:5:"title";s:0:"";s:4:"text";s:47:"<p>jhkhk</p><p>kjkjlk</p><p>kjlj</p><p>jjlk</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";b:1;s:12:"_sow_form_id";s:13:"5695bd8b03a9f";s:11:"panels_info";a:5:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:1;a:6:{s:5:"title";s:0:"";s:4:"text";s:47:"<p>jhkhk</p><p>kjkjlk</p><p>kjlj</p><p>jjlk</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";b:1;s:12:"_sow_form_id";s:13:"5695bda226b7e";s:11:"panels_info";a:5:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(151, 50, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:6:{s:5:"title";s:0:"";s:4:"text";s:47:"<p>jhkhk</p><p>kjkjlk</p><p>kjlj</p><p>jjlk</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";b:1;s:12:"_sow_form_id";s:13:"5695bd8b03a9f";s:11:"panels_info";a:6:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:1;a:8:{s:10:"map_center";s:0:"";s:8:"settings";a:9:{s:8:"map_type";s:11:"interactive";s:5:"width";s:3:"640";s:6:"height";s:3:"480";s:4:"zoom";d:6;s:11:"scroll_zoom";b:1;s:9:"draggable";b:1;s:24:"so_field_container_state";s:4:"open";s:18:"disable_default_ui";b:0;s:13:"keep_centered";b:0;}s:7:"markers";a:6:{s:16:"marker_at_center";b:1;s:11:"marker_icon";i:0;s:12:"info_display";s:5:"click";s:24:"so_field_container_state";s:6:"closed";s:17:"markers_draggable";b:0;s:16:"marker_positions";a:0:{}}s:6:"styles";a:5:{s:12:"style_method";s:6:"normal";s:15:"styled_map_name";s:0:"";s:19:"raw_json_map_styles";s:0:"";s:24:"so_field_container_state";s:6:"closed";s:17:"custom_map_styles";a:0:{}}s:10:"directions";a:8:{s:6:"origin";s:9:"11.569110";s:11:"destination";s:10:"104.891409";s:11:"travel_mode";s:7:"driving";s:9:"waypoints";a:1:{i:0;a:2:{s:8:"location";s:0:"";s:8:"stopover";b:1;}}s:24:"so_field_container_state";s:4:"open";s:14:"avoid_highways";b:0;s:11:"avoid_tolls";b:0;s:18:"optimize_waypoints";b:0;}s:15:"api_key_section";a:2:{s:7:"api_key";s:0:"";s:24:"so_field_container_state";s:6:"closed";}s:12:"_sow_form_id";s:13:"5695be20c369b";s:11:"panels_info";a:5:{s:5:"class";s:34:"SiteOrigin_Widget_GoogleMap_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(153, 51, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:6:{s:5:"title";s:0:"";s:4:"text";s:47:"<p>jhkhk</p><p>kjkjlk</p><p>kjlj</p><p>jjlk</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";b:1;s:12:"_sow_form_id";s:13:"5695bd8b03a9f";s:11:"panels_info";a:6:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:1;a:5:{s:5:"title";s:4:"hhhh";s:5:"count";i:1;s:11:"panels_info";a:5:{s:5:"class";s:20:"WP_Widget_Categories";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(165, 58, 'panels_data', 'a:3:{s:7:"widgets";a:2:{i:0;a:6:{s:5:"title";s:0:"";s:4:"text";s:47:"<p>jhkhk</p><p>kjkjlk</p><p>kjlj</p><p>jjlk</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";b:1;s:12:"_sow_form_id";s:13:"5695bd8b03a9f";s:11:"panels_info";a:6:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:1;a:5:{s:5:"title";s:4:"hhhh";s:8:"dropdown";i:1;s:5:"count";i:1;s:11:"panels_info";a:5:{s:5:"class";s:20:"WP_Widget_Categories";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:12:"hierarchical";i:0;}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(198, 80, '_wp_attached_file', '2016/01/Logo-01-e1452670466909.png'),
(199, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:111;s:4:"file";s:34:"2016/01/Logo-01-e1452670466909.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(200, 80, '_edit_lock', '1452670956:1'),
(201, 80, '_edit_last', '1'),
(202, 80, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";i:3300;s:6:"height";i:1223;s:4:"file";s:11:"Logo-01.png";}s:18:"full-1452670418841";a:3:{s:5:"width";i:200;s:6:"height";i:74;s:4:"file";s:26:"Logo-01-e1452670385893.png";}s:18:"full-1452670451281";a:3:{s:5:"width";i:200;s:6:"height";i:74;s:4:"file";s:26:"Logo-01-e1452670418841.png";}s:18:"full-1452670459196";a:3:{s:5:"width";i:200;s:6:"height";i:74;s:4:"file";s:26:"Logo-01-e1452670451281.png";}}'),
(203, 81, '_wp_attached_file', '2016/01/1.jpg'),
(204, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:343;s:6:"height";i:147;s:4:"file";s:13:"2016/01/1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x147.jpg";s:5:"width";i:150;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x129.jpg";s:5:"width";i:300;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:16:"vantage-carousel";a:4:{s:4:"file";s:13:"1-272x147.jpg";s:5:"width";i:272;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:13:"1-272x147.jpg";s:5:"width";i:272;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(205, 81, 'ml-slider_type', 'image'),
(206, 81, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-150x150";a:5:{s:4:"path";s:64:"D:wampwwwwordpressAdmin/wp-content/uploads/2016/01/1-150x150.jpg";s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}}'),
(207, 81, 'ml-slider_crop_position', 'center-center'),
(208, 81, '_wp_attachment_image_alt', ''),
(209, 82, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"700";s:6:"height";s:3:"300";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"3000";s:6:"sDelay";s:2:"30";s:7:"opacity";s:1:"0";s:10:"titleSpeed";s:3:"500";s:6:"effect";s:5:"slide";s:10:"navigation";s:4:"true";s:5:"links";s:5:"false";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";i:15;s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:5:"false";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(231, 92, '_edit_last', '1'),
(232, 92, '_edit_lock', '1453111214:1'),
(233, 92, '_wp_page_template', 'default'),
(234, 92, 'vantage_metaslider_slider', ''),
(235, 92, 'vantage_metaslider_slider_stretch', '1'),
(236, 92, 'vantage_menu_icon', ''),
(237, 94, '_edit_last', '1'),
(238, 94, '_edit_lock', '1453111246:1'),
(239, 94, '_wp_page_template', 'default'),
(240, 94, 'vantage_metaslider_slider', ''),
(241, 94, 'vantage_metaslider_slider_stretch', '1'),
(242, 94, 'vantage_menu_icon', ''),
(243, 96, '_edit_last', '1'),
(244, 96, '_edit_lock', '1453111035:1'),
(245, 96, '_wp_page_template', 'default'),
(246, 96, 'vantage_metaslider_slider', ''),
(247, 96, 'vantage_metaslider_slider_stretch', '1'),
(248, 96, 'vantage_menu_icon', ''),
(249, 98, '_edit_last', '1'),
(250, 98, '_edit_lock', '1453111302:1'),
(251, 98, '_wp_page_template', 'default'),
(252, 98, 'vantage_metaslider_slider', ''),
(253, 98, 'vantage_metaslider_slider_stretch', '1'),
(254, 98, 'vantage_menu_icon', ''),
(255, 100, '_menu_item_type', 'post_type'),
(256, 100, '_menu_item_menu_item_parent', '0'),
(257, 100, '_menu_item_object_id', '92'),
(258, 100, '_menu_item_object', 'page'),
(259, 100, '_menu_item_target', ''),
(260, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(261, 100, '_menu_item_xfn', ''),
(262, 100, '_menu_item_url', ''),
(264, 101, '_menu_item_type', 'post_type'),
(265, 101, '_menu_item_menu_item_parent', '0'),
(266, 101, '_menu_item_object_id', '94'),
(267, 101, '_menu_item_object', 'page'),
(268, 101, '_menu_item_target', ''),
(269, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(270, 101, '_menu_item_xfn', ''),
(271, 101, '_menu_item_url', ''),
(273, 102, '_menu_item_type', 'post_type'),
(274, 102, '_menu_item_menu_item_parent', '0'),
(275, 102, '_menu_item_object_id', '96'),
(276, 102, '_menu_item_object', 'page'),
(277, 102, '_menu_item_target', ''),
(278, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(279, 102, '_menu_item_xfn', ''),
(280, 102, '_menu_item_url', ''),
(282, 103, '_menu_item_type', 'post_type'),
(283, 103, '_menu_item_menu_item_parent', '0'),
(284, 103, '_menu_item_object_id', '98'),
(285, 103, '_menu_item_object', 'page'),
(286, 103, '_menu_item_target', ''),
(287, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(288, 103, '_menu_item_xfn', ''),
(289, 103, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=104 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-10-22 08:33:08', '2015-10-22 08:33:08', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2016-01-12 10:57:16', '2016-01-12 10:57:16', '', 0, 'http://localhost/wordpressAdmin/?p=1', 0, 'post', '', 1),
(4, 1, '2015-10-22 08:43:56', '2015-10-22 08:43:56', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2015-10-22 08:43:56', '2015-10-22 08:43:56', '', 0, 'http://localhost/wordpressAdmin/wp-content/uploads/2015/10/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2015-10-22 08:44:20', '2015-10-22 08:44:20', 'http://localhost/wordpressAdmin/wp-content/uploads/2015/10/cropped-2.jpg', 'cropped-2.jpg', 'Slider1', 'inherit', 'open', 'closed', '', 'cropped-2-jpg', '', '', '2016-01-13 09:00:47', '2016-01-13 09:00:47', '', 33, 'http://localhost/wordpressAdmin/wp-content/uploads/2015/10/cropped-2.jpg', 2, 'attachment', 'image/jpeg', 0),
(6, 1, '2015-10-22 08:49:04', '2015-10-22 08:49:04', '', 'homeslider', '', 'publish', 'closed', 'closed', '', 'new-slider', '', '', '2016-01-13 09:00:47', '2016-01-13 09:00:47', '', 0, 'http://localhost/wordpressAdmin/?post_type=ml-slider&#038;p=6', 0, 'ml-slider', '', 0),
(7, 1, '2015-10-22 08:49:31', '2015-10-22 08:49:31', '', '1', 'Slider2', 'inherit', 'open', 'closed', '', '1', '', '', '2016-01-13 09:00:47', '2016-01-13 09:00:47', '', 0, 'http://localhost/wordpressAdmin/wp-content/uploads/2015/10/1.jpg', 1, 'attachment', 'image/jpeg', 0),
(8, 1, '2015-10-22 10:20:19', '2015-10-22 10:20:19', 'sdfdfdf', 'Test', '', 'trash', 'open', 'open', '', 'test', '', '', '2016-01-12 10:57:19', '2016-01-12 10:57:19', '', 0, 'http://localhost/wordpressAdmin/?p=8', 0, 'post', '', 0),
(9, 1, '2015-10-22 10:20:19', '2015-10-22 10:20:19', 'sdfdfdf', 'Test', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2015-10-22 10:20:19', '2015-10-22 10:20:19', '', 8, 'http://localhost/wordpressAdmin/2015/10/22/8-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-01-12 10:57:16', '2016-01-12 10:57:16', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-01-12 10:57:16', '2016-01-12 10:57:16', '', 1, 'http://localhost:82/wordpressAdmin/2016/01/12/1-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-01-12 10:57:49', '2016-01-12 10:57:49', 'Local News One.............', 'Local News One', '', 'publish', 'open', 'open', '', 'local-news-one', '', '', '2016-01-12 10:59:07', '2016-01-12 10:59:07', '', 0, 'http://localhost:82/wordpressAdmin/?p=25', 0, 'post', '', 0),
(26, 1, '2016-01-12 10:57:49', '2016-01-12 10:57:49', 'Local News One.............', 'Local News One', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-01-12 10:57:49', '2016-01-12 10:57:49', '', 25, 'http://localhost:82/wordpressAdmin/2016/01/12/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-01-12 10:58:15', '2016-01-12 10:58:15', 'Local News Two.................', 'Local News Two', '', 'publish', 'open', 'open', '', 'local-news-two', '', '', '2016-01-12 10:58:15', '2016-01-12 10:58:15', '', 0, 'http://localhost:82/wordpressAdmin/?p=27', 0, 'post', '', 0),
(28, 1, '2016-01-12 10:58:15', '2016-01-12 10:58:15', 'Local News Two.................', 'Local News Two', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-01-12 10:58:15', '2016-01-12 10:58:15', '', 27, 'http://localhost:82/wordpressAdmin/2016/01/12/27-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-01-13 02:16:09', '2016-01-13 02:16:09', 'Local Three...................', 'Local Three', '', 'publish', 'open', 'open', '', 'local-three', '', '', '2016-01-13 02:16:09', '2016-01-13 02:16:09', '', 0, 'http://localhost:82/wordpressAdmin/?p=31', 0, 'post', '', 0),
(32, 1, '2016-01-13 02:16:09', '2016-01-13 02:16:09', 'Local Three...................', 'Local Three', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2016-01-13 02:16:09', '2016-01-13 02:16:09', '', 31, 'http://localhost:82/wordpressAdmin/2016/01/13/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-01-13 02:16:34', '2016-01-13 02:16:34', 'Local Four.............<br/>\r\n\r\nfusdfudo f<br/>\r\nsifdi<br/>\r\n\r\nsfu sif<br/>\r\n\r\nsdfdfod<br/>\r\n\r\nsdfidff<br/>\r\nAngkor Wat, in its beauty and state of preservation, is unrivaled. Its mightiness and magnificence bespeak a pomp and a luxury surpassing that of a Pharaoh or a Shah Jahan, an impressiveness greater than that of the Pyramids, an artistic distinctiveness as fine as that of the Taj Mahal. Angkor Wat is located about six kilometers (four miles) north of Siem Reap, south of Angkor Thom. Entry and exit to Angkor Wat can only be access from its west gate.\r\n\r\n<a href="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2.jpg"><img class=" wp-image-5" src="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2-300x300.jpg" alt="Slider1" width="264" height="264" /></a>', 'Local Four', '', 'publish', 'open', 'open', '', 'local-four', '', '', '2016-01-13 04:34:25', '2016-01-13 04:34:25', '', 0, 'http://localhost:82/wordpressAdmin/?p=33', 0, 'post', '', 0),
(34, 1, '2016-01-13 02:16:34', '2016-01-13 02:16:34', 'Local Four.............', 'Local Four', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-01-13 02:16:34', '2016-01-13 02:16:34', '', 33, 'http://localhost:82/wordpressAdmin/2016/01/13/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-01-13 02:17:00', '2016-01-13 02:17:00', 'jhkhk\r\n\r\nkjkjlk\r\n\r\nkjlj\r\n\r\njjlk\r\n<h3 class="widget-title"></h3>\r\n&nbsp;\r\n\r\n<script type="text/javascript">// <![CDATA[\r\n(function() { var dropdown = document.getElementById( "cat" ); function onCatChange() { if ( dropdown.options[ dropdown.selectedIndex ].value > 0 ) {\r\n			location.href = "http://localhost:82/wordpressAdmin/?cat=" + dropdown.options[ dropdown.selectedIndex ].value;\r\n		}\r\n	}\r\n	dropdown.onchange = onCatChange;\r\n})();\r\n// ]]></script>', 'Local Five', '', 'publish', 'open', 'open', '', 'local-five', '', '', '2016-01-13 04:25:58', '2016-01-13 04:25:58', '', 0, 'http://localhost:82/wordpressAdmin/?p=35', 0, 'post', '', 0),
(36, 1, '2016-01-13 02:17:00', '2016-01-13 02:17:00', 'Local Five..............', 'Local Five', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-01-13 02:17:00', '2016-01-13 02:17:00', '', 35, 'http://localhost:82/wordpressAdmin/2016/01/13/35-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-01-13 02:50:27', '2016-01-13 02:50:27', '&nbsp;&nbsp;&nbsp;', 'Local Five', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-01-13 02:50:27', '2016-01-13 02:50:27', '', 35, 'http://localhost:82/wordpressAdmin/2016/01/13/35-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2016-01-13 02:52:54', '2016-01-13 02:52:54', 'jhkhk\r\n\r\nkjkjlk\r\n\r\nkjlj\r\n\r\njjlk', 'Local Five', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-01-13 02:52:54', '2016-01-13 02:52:54', '', 35, 'http://localhost:82/wordpressAdmin/2016/01/13/35-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-01-13 02:56:24', '2016-01-13 02:56:24', '', 'Local Five', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-01-13 02:56:24', '2016-01-13 02:56:24', '', 35, 'http://localhost:82/wordpressAdmin/2016/01/13/35-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-01-13 02:59:47', '2016-01-13 02:59:47', '\r\n\r\n	<p>jhkhk</p>\r\n<p>kjkjlk</p>\r\n<p>kjlj</p>\r\n<p>jjlk</p>\r\n\r\n\r\n	<p>jhkhk</p>\r\n<p>kjkjlk</p>\r\n<p>kjlj</p>\r\n<p>jjlk</p>\r\n', 'Local Five', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-01-13 02:59:47', '2016-01-13 02:59:47', '', 35, 'http://localhost:82/wordpressAdmin/2016/01/13/35-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-01-13 03:02:17', '2016-01-13 03:02:17', '\r\n\r\n	<p>jhkhk</p>\r\n<p>kjkjlk</p>\r\n<p>kjlj</p>\r\n<p>jjlk</p>\r\n', 'Local Five', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-01-13 03:02:17', '2016-01-13 03:02:17', '', 35, 'http://localhost:82/wordpressAdmin/2016/01/13/35-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2016-01-13 03:07:18', '2016-01-13 03:07:18', '\r\n\r\n	<p>jhkhk</p>\r\n<p>kjkjlk</p>\r\n<p>kjlj</p>\r\n<p>jjlk</p>\r\n<h3 class="widget-title">hhhh</h3>		<ul>\r\n	<li class="cat-item cat-item-4"><a href="http://localhost:82/wordpressAdmin/category/local-news/">Local News</a> (5)\r\n</li>\r\n		</ul>\r\n', 'Local Five', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-01-13 03:07:18', '2016-01-13 03:07:18', '', 35, 'http://localhost:82/wordpressAdmin/2016/01/13/35-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-01-13 03:07:59', '2016-01-13 03:07:59', '\r\n\r\n	<p>jhkhk</p>\r\n<p>kjkjlk</p>\r\n<p>kjlj</p>\r\n<p>jjlk</p>\r\n<h3 class="widget-title">hhhh</h3><label class="screen-reader-text" for="cat">hhhh</label><select name="cat" id="cat" class="postform">\r\n	<option value="-1">Select Category</option>\r\n	<option class="level-0" value="4">Local News&nbsp;&nbsp;(5)</option>\r\n</select>\r\n\r\n<script type="text/javascript">\r\n/* <![CDATA[ */\r\n(function() {\r\n	var dropdown = document.getElementById( "cat" );\r\n	function onCatChange() {\r\n		if ( dropdown.options[ dropdown.selectedIndex ].value > 0 ) {\r\n			location.href = "http://localhost:82/wordpressAdmin/?cat=" + dropdown.options[ dropdown.selectedIndex ].value;\r\n		}\r\n	}\r\n	dropdown.onchange = onCatChange;\r\n})();\r\n/* ]]> */\r\n</script>\r\n\r\n', 'Local Five', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-01-13 03:07:59', '2016-01-13 03:07:59', '', 35, 'http://localhost:82/wordpressAdmin/2016/01/13/35-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-01-13 03:51:35', '2016-01-13 03:51:35', 'jhkhk\r\n\r\nkjkjlk\r\n\r\nkjlj\r\n\r\njjlk\r\n<h3 class="widget-title"></h3>\r\n&nbsp;\r\n\r\n<script type="text/javascript">// <![CDATA[\r\n(function() { var dropdown = document.getElementById( "cat" ); function onCatChange() { if ( dropdown.options[ dropdown.selectedIndex ].value > 0 ) {\r\n			location.href = "http://localhost:82/wordpressAdmin/?cat=" + dropdown.options[ dropdown.selectedIndex ].value;\r\n		}\r\n	}\r\n	dropdown.onchange = onCatChange;\r\n})();\r\n// ]]></script>', 'Local Five', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-01-13 03:51:35', '2016-01-13 03:51:35', '', 35, 'http://localhost:82/wordpressAdmin/2016/01/13/35-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2016-01-13 04:26:46', '2016-01-13 04:26:46', 'Local Four.............\r\n\r\n<a href="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2.jpg"><img class=" wp-image-5" src="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2-300x300.jpg" alt="Slider1" width="264" height="264" /></a>', 'Local Four', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-01-13 04:26:46', '2016-01-13 04:26:46', '', 33, 'http://localhost:82/wordpressAdmin/2016/01/13/33-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2016-01-13 04:27:56', '2016-01-13 04:27:56', 'Local Four.............\r\n\r\nfusdfudo f\r\n\r\nsifdi\r\n\r\nsfu sif\r\n\r\nsdfdfod\r\n\r\nsdfidff\r\n\r\n<a href="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2.jpg"><img class=" wp-image-5" src="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2-300x300.jpg" alt="Slider1" width="264" height="264" /></a>', 'Local Four', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-01-13 04:27:56', '2016-01-13 04:27:56', '', 33, 'http://localhost:82/wordpressAdmin/2016/01/13/33-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2016-01-13 04:28:39', '2016-01-13 04:28:39', 'Local Four.............<br/>\r\n\r\nfusdfudo f<br/>\r\nsifdi<br/>\r\n\r\nsfu sif<br/>\r\n\r\nsdfdfod<br/>\r\n\r\nsdfidff<br/>\r\n\r\n<a href="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2.jpg"><img class=" wp-image-5" src="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2-300x300.jpg" alt="Slider1" width="264" height="264" /></a>', 'Local Four', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-01-13 04:28:39', '2016-01-13 04:28:39', '', 33, 'http://localhost:82/wordpressAdmin/2016/01/13/33-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2016-01-13 04:34:20', '2016-01-13 04:34:20', 'Local Four.............<br/>\n\nfusdfudo f<br/>\nsifdi<br/>\n\nsfu sif<br/>\n\nsdfdfod<br/>\n\nsdfidff<br/>\nAngkor Wat, in its beauty and state of preservation, is unrivaled. Its mightiness and magnificence bespeak a pomp and a luxury surpassing that of a Pharaoh or a Shah Jahan, an impressiveness greater than that of the Pyramids, an artistic distinctiveness as fine as that of the Taj Mahal. Angkor Wat is located about six kilometers (four miles) north of Siem Reap, south of Angkor Thom. Entry and exit to Angkor Wat can only be access from its west gate.\n\n<a href="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2.jpg"><img class=" wp-image-5" src="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2-300x300.jpg" alt="Slider1" width="264" height="264" /></a>', 'Local Four', '', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2016-01-13 04:34:20', '2016-01-13 04:34:20', '', 33, 'http://localhost:82/wordpressAdmin/2016/01/13/33-autosave-v1/', 0, 'revision', '', 0),
(74, 1, '2016-01-13 04:34:25', '2016-01-13 04:34:25', 'Local Four.............<br/>\r\n\r\nfusdfudo f<br/>\r\nsifdi<br/>\r\n\r\nsfu sif<br/>\r\n\r\nsdfdfod<br/>\r\n\r\nsdfidff<br/>\r\nAngkor Wat, in its beauty and state of preservation, is unrivaled. Its mightiness and magnificence bespeak a pomp and a luxury surpassing that of a Pharaoh or a Shah Jahan, an impressiveness greater than that of the Pyramids, an artistic distinctiveness as fine as that of the Taj Mahal. Angkor Wat is located about six kilometers (four miles) north of Siem Reap, south of Angkor Thom. Entry and exit to Angkor Wat can only be access from its west gate.\r\n\r\n<a href="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2.jpg"><img class=" wp-image-5" src="http://localhost:82/wordpressAdmin/wp-content/uploads/2015/10/cropped-2-300x300.jpg" alt="Slider1" width="264" height="264" /></a>', 'Local Four', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-01-13 04:34:25', '2016-01-13 04:34:25', '', 33, 'http://localhost:82/wordpressAdmin/2016/01/13/33-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2016-01-13 07:30:51', '2016-01-13 07:30:51', '', 'Logo-01', '', 'inherit', 'open', 'closed', '', 'logo-01', '', '', '2016-01-13 07:34:31', '2016-01-13 07:34:31', '', 0, 'http://localhost:82/wordpressAdmin/wp-content/uploads/2016/01/Logo-01.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2016-01-13 08:56:27', '2016-01-13 08:56:27', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2016-01-13 09:00:47', '2016-01-13 09:00:47', '', 0, 'http://localhost:82/wordpressAdmin/wp-content/uploads/2016/01/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2016-01-13 08:59:25', '2016-01-13 08:59:25', '', 'New Slider', '', 'publish', 'closed', 'closed', '', 'new-slider-2', '', '', '2016-01-13 08:59:25', '2016-01-13 08:59:25', '', 0, 'http://localhost:82/wordpressAdmin/?post_type=ml-slider&p=82', 0, 'ml-slider', '', 0),
(92, 1, '2016-01-18 09:57:56', '2016-01-18 09:57:56', 'International..............', 'International', '', 'publish', 'closed', 'closed', '', 'international', '', '', '2016-01-18 10:02:15', '2016-01-18 10:02:15', '', 0, 'http://localhost:82/camfootballnews.com/?page_id=92', 0, 'page', '', 0),
(93, 1, '2016-01-18 09:57:56', '2016-01-18 09:57:56', 'International..............', 'International', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-01-18 09:57:56', '2016-01-18 09:57:56', '', 92, 'http://localhost:82/camfootballnews.com/2016/01/18/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2016-01-18 09:58:36', '2016-01-18 09:58:36', 'Local...............\r\n\r\ndfdfsdf fd\r\nsdf s sfd \r\nsdfsdfd', 'Local', '', 'publish', 'closed', 'closed', '', 'local', '', '', '2016-01-18 10:02:50', '2016-01-18 10:02:50', '', 0, 'http://localhost:82/camfootballnews.com/?page_id=94', 0, 'page', '', 0),
(95, 1, '2016-01-18 09:58:36', '2016-01-18 09:58:36', 'Local...............\r\n\r\ndfdfsdf fd\r\nsdf s sfd \r\nsdfsdfd', 'Local', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2016-01-18 09:58:36', '2016-01-18 09:58:36', '', 94, 'http://localhost:82/camfootballnews.com/2016/01/18/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2016-01-18 09:59:34', '2016-01-18 09:59:34', 'Contact Us..............\r\n\r\nsdfldfj \r\n\r\nsdfd jf', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-01-18 09:59:34', '2016-01-18 09:59:34', '', 0, 'http://localhost:82/camfootballnews.com/?page_id=96', 0, 'page', '', 0),
(97, 1, '2016-01-18 09:59:34', '2016-01-18 09:59:34', 'Contact Us..............\r\n\r\nsdfldfj \r\n\r\nsdfd jf', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2016-01-18 09:59:34', '2016-01-18 09:59:34', '', 96, 'http://localhost:82/camfootballnews.com/2016/01/18/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2016-01-18 10:00:04', '2016-01-18 10:00:04', 'About Us............\r\nsdfsdf \r\n\r\nsdfdsf sdf\r\n\r\nsdfsf sf\r\n', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-01-18 10:03:20', '2016-01-18 10:03:20', '', 0, 'http://localhost:82/camfootballnews.com/?page_id=98', 0, 'page', '', 0),
(99, 1, '2016-01-18 10:00:04', '2016-01-18 10:00:04', 'About Us............\r\nsdfsdf \r\n\r\nsdfdsf sdf\r\n\r\nsdfsf sf\r\n', 'About Us', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2016-01-18 10:00:04', '2016-01-18 10:00:04', '', 98, 'http://localhost:82/camfootballnews.com/2016/01/18/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2016-01-18 10:00:58', '2016-01-18 10:00:58', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2016-01-18 10:05:25', '2016-01-18 10:05:25', '', 0, 'http://localhost:82/camfootballnews.com/?p=100', 4, 'nav_menu_item', '', 0),
(101, 1, '2016-01-18 10:00:58', '2016-01-18 10:00:58', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2016-01-18 10:05:25', '2016-01-18 10:05:25', '', 0, 'http://localhost:82/camfootballnews.com/?p=101', 3, 'nav_menu_item', '', 0),
(102, 1, '2016-01-18 10:00:58', '2016-01-18 10:00:58', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2016-01-18 10:05:25', '2016-01-18 10:05:25', '', 0, 'http://localhost:82/camfootballnews.com/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2016-01-18 10:00:58', '2016-01-18 10:00:58', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2016-01-18 10:05:25', '2016-01-18 10:05:25', '', 0, 'http://localhost:82/camfootballnews.com/?p=103', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 3, 0),
(7, 3, 0),
(8, 1, 0),
(25, 4, 0),
(27, 4, 0),
(31, 4, 0),
(33, 4, 0),
(35, 4, 0),
(81, 3, 0),
(100, 2, 0),
(101, 2, 0),
(102, 2, 0),
(103, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'ml-slider', '', 0, 1),
(4, 4, 'category', '', 0, 5),
(5, 5, 'category', '', 0, 0),
(6, 6, 'ml-slider', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Admin', 'admin', 0),
(3, '6', '6', 0),
(4, 'Local News', 'local-news', 0),
(5, 'International News', 'international-news', 0),
(6, '82', '82', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '15'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&siteorigin_settings_tab=6&editor=html&siteorigin_panels_setting_tab=layout'),
(17, 1, 'wp_user-settings-time', '1452681446'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(23, 1, 'session_tokens', 'a:1:{s:64:"59dc29960971e95154df0c663c2d4c1d66fa23ebf2748f00a4ed13799d30f63d";a:4:{s:10:"expiration";i:1453282803;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36";s:5:"login";i:1453110003;}}'),
(24, 1, 'closedpostboxes_page', 'a:2:{i:0;s:13:"pageparentdiv";i:1;s:30:"vantage-metaslider-page-slider";}'),
(25, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(26, 1, 'so_panels_directory_enabled', '1'),
(27, 1, 'metaslider_view', 'dropdown');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJMIvfXbX2D7h7fzIlkAxl7Xr3raRo0', 'admin', 'chanthy.ven@vecteurplus.com', '', '2015-10-22 08:33:07', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
