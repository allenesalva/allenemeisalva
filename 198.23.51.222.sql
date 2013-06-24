-- phpMyAdmin SQL Dump
-- version 3.4.4
-- http://www.phpmyadmin.net
--
-- Host: 198.23.51.222:3306
-- Generation Time: Jun 10, 2013 at 07:22 AM
-- Server version: 5.5.29
-- PHP Version: 5.4.4-14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `allenemei_wp`
--
CREATE DATABASE `allenemei_wp` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `allenemei_wp`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2013-06-08 15:43:42', '2013-06-08 15:43:42', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 1, 'anthony araneta', 'antharph@yahoo.com', 'http://www.anthonyaraneta.com', '112.210.13.161', '2013-06-09 04:26:00', '2013-06-09 04:26:00', 'nice allene mei :)', 0, '0', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=184 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://allenemeisalva.com', 'yes'),
(2, 'blogname', 'allenmeisalva.com', 'yes'),
(3, 'blogdescription', '', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'allenemeisalva@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://allenemeisalva.com', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:2:{i:0;s:86:"/home/www/allenemeisalva.com/wp-content/themes/dimsemenov-Touchfolio-59aee85/style.css";i:1;s:0:"";}', 'no'),
(44, 'template', 'ready2launch', 'yes'),
(45, 'stylesheet', 'ready2launch', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '2', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, '_transient_random_seed', '38f5dc8a3990cea95e99a0f81dece73c', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:8:"search-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'cron', 'a:4:{i:1370835830;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1370874391;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1370879103;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(102, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.5.1";s:12:"last_checked";i:1370802094;}', 'yes'),
(103, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1370802094;}', 'yes'),
(182, '_site_transient_timeout_theme_roots', '1370803894', 'yes'),
(183, '_site_transient_theme_roots', 'a:4:{s:29:"dimsemenov-Touchfolio-59aee85";s:7:"/themes";s:12:"ready2launch";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(107, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:25:"http://allenemeisalva.com";s:4:"link";s:101:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://allenemeisalva.com/";s:3:"url";s:134:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://allenemeisalva.com/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(109, 'can_compress_scripts', '0', 'yes'),
(127, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1370825638', 'no'),
(128, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Failed to connect to 66.155.40.250: Permission denied</p></div>', 'no'),
(129, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1370825638', 'no'),
(130, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Failed to connect to 66.155.40.250: Permission denied</p></div>', 'no'),
(125, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1370825637', 'no'),
(126, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>RSS Error</strong>: WP HTTP Error: Failed to connect to 173.194.46.83: Permission denied</p>', 'no'),
(116, '_transient_timeout_plugin_slugs', '1370792722', 'no'),
(117, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(131, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1370825640', 'no'),
(137, '_site_transient_timeout_wporg_theme_feature_list', '1370801573', 'yes'),
(138, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(132, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(156, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1370802094;}', 'yes'),
(140, 'theme_mods_twentytwelve', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1370785839;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(157, 'theme_mods_ready2launch', 'a:1:{i:0;b:0;}', 'yes'),
(141, 'current_theme', 'Ready2Launch!', 'yes'),
(142, 'theme_mods_dimsemenov-Touchfolio-59aee85', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:6:"social";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1370790520;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:20:"regular-page-sidebar";a:1:{i:0;s:8:"search-2";}}}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, 'of_options', 'a:13:{s:9:"main_logo";s:0:"";s:16:"google_analytics";s:0:"";s:14:"custom_favicon";s:0:"";s:11:"footer_text";s:0:"";s:17:"google_fonts_code";s:0:"";s:14:"alt_stylesheet";s:29:"style-touchfolio-default.less";s:11:"fb_admin_id";s:0:"";s:23:"album_cats_gallery_page";s:0:"";s:18:"gallery_background";s:7:"#fafafa";s:26:"gallery_background_pattern";s:0:"";s:18:"gallery_scale_mode";s:4:"fill";s:18:"gallery_image_size";s:4:"full";s:22:"auto_open_project_desc";s:1:"1";}', 'yes'),
(149, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(148, 'ds-gallery-category_children', 'a:0:{}', 'yes'),
(160, 'rdy_theme', 'cloud2', 'yes'),
(161, 'rdy_topmenu', 'Hidden', 'yes'),
(162, 'rdy_color_topmenu', '242424', 'yes'),
(163, 'rdy_title_content', 'Sorry, website is still under construction.', 'yes'),
(164, 'rdy_text_content', 'Our website is temporarily unavailable. We apologize for the inconvenience.', 'yes'),
(165, 'rdy_second_heading', 'Launch soon!', 'yes'),
(166, 'rdy_count_mail', 'Count', 'yes'),
(167, 'rdy_date', '03/14/2011 5:00 PM UTC-0500', 'yes'),
(168, 'rdy_finish_mssg', 'Page should be online soon! Please be patient. <em>You can try pressing F5.</em>', 'yes'),
(169, 'rdy_left_link', 'http://twitter.com/', 'yes'),
(170, 'rdy_right_link', 'mailto:', 'yes'),
(171, 'rdy_left_text', 'Follow us on Twitter!', 'yes'),
(172, 'rdy_right_text', 'Send us mail!', 'yes'),
(173, 'rdy_twitter', 'Visible', 'yes'),
(174, 'rdy_mail', 'Visible', 'yes'),
(175, 'rdy_font_type', '\\''Trebuchet MS\\'', Helvetica, sans-serif', 'yes'),
(176, 'rdy_color_head', '000000', 'yes'),
(177, 'rdy_color_alt_head', '242424', 'yes'),
(178, 'rdy_color_text', '242424', 'yes'),
(179, 'rdy_color_second', '242424', 'yes'),
(180, 'rdy_color_cntdwn', '242424', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(5, 6, '_edit_lock', '1370788992:1'),
(4, 6, '_edit_last', '1'),
(6, 7, '_wp_attached_file', '2013/06/stockvault-sweet-delicious-fruit109569.jpg'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:50:"2013/06/stockvault-sweet-delicious-fruit109569.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"stockvault-sweet-delicious-fruit109569-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"stockvault-sweet-delicious-fruit109569-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:51:"stockvault-sweet-delicious-fruit109569-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:50:"stockvault-sweet-delicious-fruit109569-304x228.jpg";s:5:"width";i:304;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(8, 8, '_wp_attached_file', '2013/06/premade_bk_3_by_marazul45-d4v7c6w.jpg'),
(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:675;s:4:"file";s:45:"2013/06/premade_bk_3_by_marazul45-d4v7c6w.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"premade_bk_3_by_marazul45-d4v7c6w-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"premade_bk_3_by_marazul45-d4v7c6w-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:45:"premade_bk_3_by_marazul45-d4v7c6w-304x228.jpg";s:5:"width";i:304;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(10, 9, '_edit_last', '1'),
(11, 9, '_wp_page_template', 'default'),
(12, 9, '_edit_lock', '1370788110:1'),
(13, 2, '_edit_lock', '1370788350:1'),
(14, 10, '_wp_attached_file', '2013/06/premade_11_by_pure_poison89-d68auc0.jpg'),
(15, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:682;s:4:"file";s:47:"2013/06/premade_11_by_pure_poison89-d68auc0.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"premade_11_by_pure_poison89-d68auc0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"premade_11_by_pure_poison89-d68auc0-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:47:"premade_11_by_pure_poison89-d68auc0-304x202.jpg";s:5:"width";i:304;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(16, 6, 'dsframework-gallery', 'a:7:{s:14:"attachment_ids";a:3:{i:0;s:2:"10";i:1;s:1:"8";i:2;s:1:"7";}s:15:"attachment_urls";a:3:{i:0;s:92:"http://allenemeisalva.com/wp-content/uploads/2013/06/premade_11_by_pure_poison89-d68auc0.jpg";i:1;s:90:"http://allenemeisalva.com/wp-content/uploads/2013/06/premade_bk_3_by_marazul45-d4v7c6w.jpg";i:2;s:95:"http://allenemeisalva.com/wp-content/uploads/2013/06/stockvault-sweet-delicious-fruit109569.jpg";}s:17:"attachment_widths";a:3:{i:0;s:4:"1024";i:1;s:3:"900";i:2;s:4:"1600";}s:18:"attachment_heights";a:3:{i:0;s:3:"682";i:1;s:3:"675";i:2;s:4:"1200";}s:9:"video_url";a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}s:21:"single_img_scale_mode";a:3:{i:0;s:7:"default";i:1;s:7:"default";i:2;s:7:"default";}s:19:"attachment_alt_attr";a:3:{i:0;s:35:"premade_11_by_pure_poison89-d68auc0";i:1;s:33:"premade_bk_3_by_marazul45-d4v7c6w";i:2;s:38:"stockvault-sweet-delicious-fruit109569";}}'),
(17, 6, 'dsframework-image-scale-mode', 'default'),
(18, 6, 'dsframework-album-background-color', ''),
(19, 6, 'dsframework-album-background-pattern', ''),
(20, 2, '_edit_last', '1'),
(21, 14, '_edit_last', '1'),
(22, 14, '_wp_page_template', 'default'),
(23, 14, '_edit_lock', '1370788395:1'),
(24, 15, '_menu_item_type', 'post_type'),
(25, 15, '_menu_item_menu_item_parent', '0'),
(26, 15, '_menu_item_object_id', '14'),
(27, 15, '_menu_item_object', 'page'),
(28, 15, '_menu_item_target', ''),
(29, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(30, 15, '_menu_item_xfn', ''),
(31, 15, '_menu_item_url', ''),
(51, 18, '_edit_last', '1'),
(33, 16, '_menu_item_type', 'post_type'),
(34, 16, '_menu_item_menu_item_parent', '0'),
(35, 16, '_menu_item_object_id', '9'),
(36, 16, '_menu_item_object', 'page'),
(37, 16, '_menu_item_target', ''),
(38, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 16, '_menu_item_xfn', ''),
(40, 16, '_menu_item_url', ''),
(52, 18, '_edit_lock', '1370789694:1'),
(42, 17, '_menu_item_type', 'post_type'),
(43, 17, '_menu_item_menu_item_parent', '0'),
(44, 17, '_menu_item_object_id', '2'),
(45, 17, '_menu_item_object', 'page'),
(46, 17, '_menu_item_target', ''),
(47, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 17, '_menu_item_xfn', ''),
(49, 17, '_menu_item_url', ''),
(53, 19, '_wp_attached_file', '2013/06/1apack.jpg'),
(54, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:18:"2013/06/1apack.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"1apack-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"1apack-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"1apack-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:18:"1apack-304x190.jpg";s:5:"width";i:304;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:5:"Apack";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:29:"© Microsoft Corporation 2009";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(55, 20, '_wp_attached_file', '2013/06/2meomi.jpg'),
(56, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:18:"2013/06/2meomi.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"2meomi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"2meomi-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"2meomi-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:18:"2meomi-304x190.jpg";s:5:"width";i:304;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:5:"Meomi";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:29:"© Microsoft Corporation 2008";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(57, 21, '_wp_attached_file', '2013/06/3tado_2.jpg'),
(58, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:19:"2013/06/3tado_2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"3tado_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"3tado_2-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"3tado_2-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:19:"3tado_2-304x190.jpg";s:5:"width";i:304;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:4:"Tado";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:29:"© Microsoft Corporation 2007";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(59, 22, '_wp_attached_file', '2013/06/4colorblok.jpg'),
(60, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:22:"2013/06/4colorblok.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"4colorblok-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"4colorblok-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"4colorblok-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:22:"4colorblok-304x190.jpg";s:5:"width";i:304;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:9:"Colorblok";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:29:"© Microsoft Corporation 2008";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(61, 23, '_wp_attached_file', '2013/06/5tado.jpg'),
(62, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:17:"2013/06/5tado.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"5tado-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"5tado-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"5tado-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:17:"5tado-304x190.jpg";s:5:"width";i:304;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:4:"Tado";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:29:"© Microsoft Corporation 2009";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(63, 24, '_wp_attached_file', '2013/06/6gyoubu.jpg'),
(64, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:19:"2013/06/6gyoubu.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"6gyoubu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"6gyoubu-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"6gyoubu-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:19:"6gyoubu-304x190.jpg";s:5:"width";i:304;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:12:"Ippei Gyoubu";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:29:"© Microsoft Corporation 2008";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(65, 25, '_wp_attached_file', '2013/06/7olofsdotter.jpg'),
(66, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:24:"2013/06/7olofsdotter.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"7olofsdotter-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"7olofsdotter-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"7olofsdotter-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:24:"7olofsdotter-304x190.jpg";s:5:"width";i:304;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:16:"Linn Olofsdotter";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:29:"© Microsoft Corporation 2009";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(67, 26, '_wp_attached_file', '2013/06/8phunkstudio.jpg'),
(68, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:24:"2013/06/8phunkstudio.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"8phunkstudio-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"8phunkstudio-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"8phunkstudio-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:24:"8phunkstudio-304x190.jpg";s:5:"width";i:304;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:12:"Phunk Studio";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:29:"© Microsoft Corporation 2007";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(69, 27, '_wp_attached_file', '2013/06/8pommier.jpg'),
(70, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:20:"2013/06/8pommier.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"8pommier-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"8pommier-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"8pommier-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:20:"8pommier-304x190.jpg";s:5:"width";i:304;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:14:"Andrew Pommier";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:29:"© Microsoft Corporation 2008";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(71, 28, '_wp_attached_file', '2013/06/9arteaga.jpg'),
(72, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:20:"2013/06/9arteaga.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"9arteaga-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"9arteaga-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"9arteaga-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:20:"9arteaga-304x190.jpg";s:5:"width";i:304;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:14:"Alvaro Arteaga";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:29:"© Microsoft Corporation 2008";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(73, 18, 'dsframework-gallery', 'a:7:{s:14:"attachment_ids";a:10:{i:0;s:2:"19";i:1;s:2:"20";i:2;s:2:"21";i:3;s:2:"22";i:4;s:2:"23";i:5;s:2:"28";i:6;s:2:"27";i:7;s:2:"26";i:8;s:2:"25";i:9;s:2:"24";}s:15:"attachment_urls";a:10:{i:0;s:63:"http://allenemeisalva.com/wp-content/uploads/2013/06/1apack.jpg";i:1;s:63:"http://allenemeisalva.com/wp-content/uploads/2013/06/2meomi.jpg";i:2;s:64:"http://allenemeisalva.com/wp-content/uploads/2013/06/3tado_2.jpg";i:3;s:67:"http://allenemeisalva.com/wp-content/uploads/2013/06/4colorblok.jpg";i:4;s:62:"http://allenemeisalva.com/wp-content/uploads/2013/06/5tado.jpg";i:5;s:65:"http://allenemeisalva.com/wp-content/uploads/2013/06/9arteaga.jpg";i:6;s:65:"http://allenemeisalva.com/wp-content/uploads/2013/06/8pommier.jpg";i:7;s:69:"http://allenemeisalva.com/wp-content/uploads/2013/06/8phunkstudio.jpg";i:8;s:69:"http://allenemeisalva.com/wp-content/uploads/2013/06/7olofsdotter.jpg";i:9;s:64:"http://allenemeisalva.com/wp-content/uploads/2013/06/6gyoubu.jpg";}s:17:"attachment_widths";a:10:{i:0;s:4:"1920";i:1;s:4:"1920";i:2;s:4:"1920";i:3;s:4:"1920";i:4;s:4:"1920";i:5;s:4:"1920";i:6;s:4:"1920";i:7;s:4:"1920";i:8;s:4:"1920";i:9;s:4:"1920";}s:18:"attachment_heights";a:10:{i:0;s:4:"1200";i:1;s:4:"1200";i:2;s:4:"1200";i:3;s:4:"1200";i:4;s:4:"1200";i:5;s:4:"1200";i:6;s:4:"1200";i:7;s:4:"1200";i:8;s:4:"1200";i:9;s:4:"1200";}s:9:"video_url";a:10:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}s:21:"single_img_scale_mode";a:10:{i:0;s:7:"default";i:1;s:7:"default";i:2;s:7:"default";i:3;s:7:"default";i:4;s:7:"default";i:5;s:7:"default";i:6;s:7:"default";i:7;s:7:"default";i:8;s:7:"default";i:9;s:7:"default";}s:19:"attachment_alt_attr";a:10:{i:0;s:6:"1apack";i:1;s:6:"2meomi";i:2;s:7:"3tado_2";i:3;s:10:"4colorblok";i:4;s:5:"5tado";i:5;s:8:"9arteaga";i:6;s:8:"8pommier";i:7;s:12:"8phunkstudio";i:8;s:12:"7olofsdotter";i:9;s:7:"6gyoubu";}}'),
(74, 18, 'dsframework-image-scale-mode', 'default'),
(75, 18, 'dsframework-album-background-color', ''),
(76, 18, 'dsframework-album-background-pattern', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-06-08 15:43:42', '2013-06-08 15:43:42', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2013-06-08 15:43:42', '2013-06-08 15:43:42', '', 0, 'http://allenemeisalva.com/?p=1', 0, 'post', '', 1),
(2, 1, '2013-06-08 15:43:42', '2013-06-08 15:43:42', '"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Home', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2013-06-09 14:34:18', '2013-06-09 14:34:18', '', 0, 'http://allenemeisalva.com/?page_id=2', 0, 'page', '', 0),
(13, 1, '2013-06-09 14:33:21', '2013-06-09 14:33:21', '"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-2', '', '', '2013-06-09 14:33:21', '2013-06-09 14:33:21', '', 2, 'http://allenemeisalva.com/?p=13', 0, 'revision', '', 0),
(3, 1, '2013-06-08 15:45:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-06-08 15:45:03', '0000-00-00 00:00:00', '', 0, 'http://allenemeisalva.com/?p=3', 0, 'post', '', 0),
(5, 1, '2013-06-09 13:50:25', '0000-00-00 00:00:00', '', 'Main Logo', '', 'draft', 'closed', 'closed', '', 'of-main_logo', '', '', '2013-06-09 13:50:25', '0000-00-00 00:00:00', '', 0, 'http://allenemeisalva.com/?post_type=options&p=5', 0, 'options', '', 0),
(6, 1, '2013-06-09 14:33:09', '2013-06-09 14:33:09', '', 'Stock Photos', '', 'publish', 'closed', 'closed', '', 'stock-photos', '', '', '2013-06-09 14:33:09', '2013-06-09 14:33:09', '', 0, 'http://allenemeisalva.com/?post_type=ds-gallery&#038;p=6', 0, 'ds-gallery', '', 0),
(7, 1, '2013-06-09 14:28:00', '2013-06-09 14:28:00', '', 'stockvault-sweet-delicious-fruit109569', '', 'inherit', 'open', 'open', '', 'stockvault-sweet-delicious-fruit109569', '', '', '2013-06-09 14:28:00', '2013-06-09 14:28:00', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/stockvault-sweet-delicious-fruit109569.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2013-06-09 14:28:31', '2013-06-09 14:28:31', '', 'premade_bk_3_by_marazul45-d4v7c6w', '', 'inherit', 'open', 'open', '', 'premade_bk_3_by_marazul45-d4v7c6w', '', '', '2013-06-09 14:28:31', '2013-06-09 14:28:31', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/premade_bk_3_by_marazul45-d4v7c6w.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2013-06-09 14:29:16', '2013-06-09 14:29:16', '', 'Portfolio', '', 'publish', 'open', 'open', '', 'portfolio', '', '', '2013-06-09 14:29:16', '2013-06-09 14:29:16', '', 0, 'http://allenemeisalva.com/?page_id=9', 0, 'page', '', 0),
(10, 1, '2013-06-09 14:31:47', '2013-06-09 14:31:47', '', 'premade_11_by_pure_poison89-d68auc0', '', 'inherit', 'open', 'open', '', 'premade_11_by_pure_poison89-d68auc0', '', '', '2013-06-09 14:31:47', '2013-06-09 14:31:47', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/premade_11_by_pure_poison89-d68auc0.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2013-06-09 14:31:50', '2013-06-09 14:31:50', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\nAs a new WordPress user, you should go to <a href="http://allenemeisalva.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-autosave', '', '', '2013-06-09 14:31:50', '2013-06-09 14:31:50', '', 2, 'http://allenemeisalva.com/?p=11', 0, 'revision', '', 0),
(12, 1, '2013-06-08 15:43:42', '2013-06-08 15:43:42', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://allenemeisalva.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2013-06-08 15:43:42', '2013-06-08 15:43:42', '', 2, 'http://allenemeisalva.com/?p=12', 0, 'revision', '', 0),
(14, 1, '2013-06-09 14:34:41', '2013-06-09 14:34:41', '', 'Works', '', 'publish', 'open', 'open', '', 'works', '', '', '2013-06-09 14:34:41', '2013-06-09 14:34:41', '', 0, 'http://allenemeisalva.com/?page_id=14', 0, 'page', '', 0),
(15, 1, '2013-06-09 14:35:49', '2013-06-09 14:35:49', ' ', '', '', 'publish', 'open', 'open', '', '15', '', '', '2013-06-09 14:38:57', '2013-06-09 14:38:57', '', 0, 'http://allenemeisalva.com/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2013-06-09 14:35:49', '2013-06-09 14:35:49', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2013-06-09 14:38:57', '2013-06-09 14:38:57', '', 0, 'http://allenemeisalva.com/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2013-06-09 14:35:49', '2013-06-09 14:35:49', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2013-06-09 14:38:57', '2013-06-09 14:38:57', '', 0, 'http://allenemeisalva.com/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2013-06-09 14:56:18', '2013-06-09 14:56:18', '', 'Zune Characters', '', 'publish', 'closed', 'closed', '', 'zune-characters', '', '', '2013-06-09 14:56:18', '2013-06-09 14:56:18', '', 0, 'http://allenemeisalva.com/?post_type=ds-gallery&#038;p=18', 0, 'ds-gallery', '', 0),
(19, 1, '2013-06-09 14:46:10', '2013-06-09 14:46:10', '', '1apack', '', 'inherit', 'open', 'open', '', '1apack', '', '', '2013-06-09 14:46:10', '2013-06-09 14:46:10', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/1apack.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2013-06-09 14:47:27', '2013-06-09 14:47:27', '', '2meomi', '', 'inherit', 'open', 'open', '', '2meomi', '', '', '2013-06-09 14:47:27', '2013-06-09 14:47:27', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/2meomi.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2013-06-09 14:47:51', '2013-06-09 14:47:51', '', '3tado_2', '', 'inherit', 'open', 'open', '', '3tado_2', '', '', '2013-06-09 14:47:51', '2013-06-09 14:47:51', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/3tado_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2013-06-09 14:48:55', '2013-06-09 14:48:55', '', '4colorblok', '', 'inherit', 'open', 'open', '', '4colorblok', '', '', '2013-06-09 14:48:55', '2013-06-09 14:48:55', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/4colorblok.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2013-06-09 14:49:40', '2013-06-09 14:49:40', '', '5tado', '', 'inherit', 'open', 'open', '', '5tado', '', '', '2013-06-09 14:49:40', '2013-06-09 14:49:40', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/5tado.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2013-06-09 14:50:11', '2013-06-09 14:50:11', '', '6gyoubu', '', 'inherit', 'open', 'open', '', '6gyoubu', '', '', '2013-06-09 14:50:11', '2013-06-09 14:50:11', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/6gyoubu.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2013-06-09 14:51:48', '2013-06-09 14:51:48', '', '7olofsdotter', '', 'inherit', 'open', 'open', '', '7olofsdotter', '', '', '2013-06-09 14:51:48', '2013-06-09 14:51:48', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/7olofsdotter.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2013-06-09 14:53:20', '2013-06-09 14:53:20', '', '8phunkstudio', '', 'inherit', 'open', 'open', '', '8phunkstudio', '', '', '2013-06-09 14:53:20', '2013-06-09 14:53:20', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/8phunkstudio.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2013-06-09 14:54:14', '2013-06-09 14:54:14', '', '8pommier', '', 'inherit', 'open', 'open', '', '8pommier', '', '', '2013-06-09 14:54:14', '2013-06-09 14:54:14', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/8pommier.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2013-06-09 14:54:46', '2013-06-09 14:54:46', '', '9arteaga', '', 'inherit', 'open', 'open', '', '9arteaga', '', '', '2013-06-09 14:54:46', '2013-06-09 14:54:46', '', 0, 'http://allenemeisalva.com/wp-content/uploads/2013/06/9arteaga.jpg', 0, 'attachment', 'image/jpeg', 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(16, 2, 0),
(15, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'allene.mei'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings-time', '1370706342'),
(18, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:8:"add-post";i:1;s:14:"add-ds-gallery";i:2;s:12:"add-post_tag";i:3;s:23:"add-ds-gallery-category";}'),
(19, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'allene.mei', '$P$BGyozFa8SiMJL6kLShmByImYMA1NPY/', 'allene-mei', 'allenemeisalva@gmail.com', '', '2013-06-08 15:43:42', '', 0, 'allene.mei');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
