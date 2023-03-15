-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 10 2023 г., 17:26
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `angara38`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://angara38', 'yes'),
(2, 'home', 'http://angara38', 'yes'),
(3, 'blogname', 'angara38', 'yes'),
(4, 'blogdescription', 'Песок, ПГС, Щебень', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pfirulin@yandex.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:100:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:22:\"cyr2lat/cyr-to-lat.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'angara38', 'yes'),
(41, 'stylesheet', 'angara38', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Asia/Irkutsk', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '7', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1691282814', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1676000815;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1676033215;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1676033275;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1676076415;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1676076475;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1676076476;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1676422015;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(127, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675735736;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(130, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(143, '_site_transient_timeout_browser_b9cbd8dc13f19f9e7eb854f472bfa274', '1676335675', 'no'),
(144, '_site_transient_browser_b9cbd8dc13f19f9e7eb854f472bfa274', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"109.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(145, '_site_transient_timeout_php_check_20f4df878f211a5689e76acb3f9067a8', '1676335676', 'no'),
(146, '_site_transient_php_check_20f4df878f211a5689e76acb3f9067a8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(150, 'can_compress_scripts', '0', 'no'),
(171, 'finished_updating_comment_type', '1', 'yes'),
(182, 'recently_activated', 'a:0:{}', 'yes'),
(187, 'current_theme', 'Angara38', 'yes'),
(188, 'theme_mods_twentytwentyone', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675737273;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(189, 'theme_switched', '', 'yes'),
(203, 'theme_mods_angara38', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:6;}', 'yes'),
(245, 'recovery_mode_email_last_sent', '1675751360', 'yes'),
(250, 'site_logo', '6', 'yes'),
(268, 'acf_version', '6.0.7', 'yes'),
(333, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(369, 'new_admin_email', 'pfirulin@yandex.ru', 'yes'),
(390, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":7,\"critical\":0}', 'yes'),
(483, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1675834002;s:7:\"version\";s:5:\"5.7.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(495, 'secret_key', 'd-a?<tZ96qqDPY2)J5K;HV?1$}<T/W}bGwAkF-CeWcf=/k%5RCWx16|ET3F@p3$t', 'no'),
(565, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(621, 'category_children', 'a:2:{i:3;a:2:{i:0;i:4;i:1;i:5;}i:6;a:12:{i:0;i:7;i:1;i:8;i:2;i:9;i:3;i:10;i:4;i:11;i:5;i:12;i:6;i:13;i:7;i:14;i:8;i:15;i:9;i:16;i:10;i:17;i:11;i:18;}}', 'yes'),
(747, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1675990848;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(748, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1675990848;s:7:\"checked\";a:4:{s:8:\"angara38\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(749, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1675990848;s:8:\"response\";a:0:{}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.7.3\";s:7:\"updated\";s:19:\"2022-12-28 07:06:18\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.7.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"cyr2lat\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.4.0\";s:7:\"updated\";s:19:\"2021-07-29 11:03:49\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/cyr2lat/5.4.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-06-04 21:57:16\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"5.4.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.5.4.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2434252\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2834364\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2834364\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.1\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.7\";s:19:\"akismet/akismet.php\";s:5:\"5.0.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.3\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"5.4.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(858, '_site_transient_timeout_theme_roots', '1675992648', 'no'),
(859, '_site_transient_theme_roots', 'a:4:{s:8:\"angara38\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(879, '_transient_timeout_global_styles_angara38', '1676000674', 'no'),
(880, '_transient_global_styles_angara38', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1675730758:1'),
(4, 6, '_wp_attached_file', '2023/02/logo.png'),
(5, 6, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2023/02/logo.png\";s:8:\"filesize\";i:224936;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34380;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12455;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"logo-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:149186;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 7, '_wp_attached_file', '2023/02/cropped-logo.png'),
(7, 7, '_wp_attachment_context', 'site-icon'),
(8, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2023/02/cropped-logo.png\";s:8:\"filesize\";i:79634;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35515;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12803;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30509;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18452;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16701;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1449;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 8, '_edit_lock', '1675751051:1'),
(10, 8, '_customize_restore_dismissed', '1'),
(11, 9, '_wp_trash_meta_status', 'publish'),
(12, 9, '_wp_trash_meta_time', '1675751678'),
(13, 10, '_wp_trash_meta_status', 'publish'),
(14, 10, '_wp_trash_meta_time', '1675752985'),
(15, 6, '_wp_attachment_image_alt', 'Ангара38 Доставляем нерудные материалы'),
(16, 11, '_edit_lock', '1675773486:1'),
(17, 11, '_wp_trash_meta_status', 'publish'),
(18, 11, '_wp_trash_meta_time', '1675773493'),
(19, 2, '_wp_trash_meta_status', 'publish'),
(20, 2, '_wp_trash_meta_time', '1675773528'),
(21, 2, '_wp_desired_post_slug', 'sample-page'),
(22, 13, '_edit_lock', '1675778313:1'),
(25, 13, '_edit_last', '1'),
(26, 13, 'header_title', 'Продажа и доставка инертных материалов.'),
(27, 13, '_header_title', 'field_63e24936f5349'),
(28, 14, 'header_title', 'Продажа и доставка инертных материалов.'),
(29, 14, '_header_title', 'field_63e2468a6ac77'),
(36, 19, '_edit_last', '1'),
(37, 19, '_edit_lock', '1675778758:1'),
(38, 22, '_wp_trash_meta_status', 'publish'),
(39, 22, '_wp_trash_meta_time', '1675775560'),
(40, 13, 'header_subtitle', 'Работаем без выходных 8:00-18:00'),
(41, 13, '_header_subtitle', 'field_63e2499ff534a'),
(46, 23, 'header_title', 'Продажа и доставка каких-то там материалов.'),
(47, 23, '_header_title', 'field_63e24936f5349'),
(48, 23, 'header_subtitle', 'Работаем без выходных 8:00-18:00'),
(49, 23, '_header_subtitle', 'field_63e2499ff534a'),
(50, 24, 'header_title', 'Продажа и доставка инертных материалов.'),
(51, 24, '_header_title', 'field_63e24936f5349'),
(52, 24, 'header_subtitle', 'Работаем без выходных 8:00-18:00'),
(53, 24, '_header_subtitle', 'field_63e2499ff534a'),
(84, 34, '_edit_lock', '1675825180:1'),
(87, 36, '_edit_lock', '1675825374:1'),
(90, 38, '_edit_lock', '1675833921:1'),
(168, 51, '_edit_last', '1'),
(169, 51, '_edit_lock', '1675824712:1'),
(172, 34, '_edit_last', '1'),
(175, 34, 'phone_button', 'off'),
(176, 34, '_phone_button', 'field_63e30e511431c'),
(177, 53, 'phone_button', 'on'),
(178, 53, '_phone_button', 'field_63e30e511431c'),
(181, 54, 'phone_button', 'on'),
(182, 54, '_phone_button', 'field_63e30e511431c'),
(185, 55, 'phone_button', 'off'),
(186, 55, '_phone_button', 'field_63e30e511431c'),
(189, 36, '_edit_last', '1'),
(192, 36, 'phone_button', 'off'),
(193, 36, '_phone_button', 'field_63e30e511431c'),
(194, 56, 'phone_button', 'on'),
(195, 56, '_phone_button', 'field_63e30e511431c'),
(198, 57, 'phone_button', 'off'),
(199, 57, '_phone_button', 'field_63e30e511431c'),
(202, 38, '_edit_last', '1'),
(205, 38, 'phone_button', 'on'),
(206, 38, '_phone_button', 'field_63e30e511431c'),
(207, 58, 'phone_button', 'on'),
(208, 58, '_phone_button', 'field_63e30e511431c'),
(209, 59, '_form', '[tel* tel-383 placeholder \"Ваш номер\"]\n<button class=\"button\">Оставить заявку</button>'),
(210, 59, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:76:\"Заявка на обратный звонок с сайта Ангара38\";s:6:\"sender\";s:15:\"requet@angara38\";s:9:\"recipient\";s:18:\"pfirulin@yandex.ru\";s:4:\"body\";s:142:\"Свяжитесь с клиентом по номеру [tel-383]\n\n-- \nThis e-mail was sent from a contact form on Ангара38 angara38.ru\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(211, 59, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:34:\"[_site_title] <wordpress@angara38>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(212, 59, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:83:\"Спасибо, мы свяжемся с вами в ближайшее время.\";s:12:\"mail_sent_ng\";s:88:\"Что-то пошло не так, пожалуйста попробуйте позже\";s:16:\"validation_error\";s:72:\"Пожалуйста укажите свой номер телефона\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:44:\"Это обязательная строка\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(213, 59, '_additional_settings', ''),
(214, 59, '_locale', 'ru_RU'),
(219, 59, '_config_errors', 'a:2:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(220, 61, '_edit_last', '1'),
(221, 61, '_edit_lock', '1675862118:1'),
(222, 65, '_edit_lock', '1675868248:1'),
(223, 66, '_wp_attached_file', '2023/02/riversand.jpg'),
(224, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2023/02/riversand.jpg\";s:8:\"filesize\";i:279908;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"riversand-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31486;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"riversand-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7005;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"riversand-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:203138;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 68, '_edit_lock', '1675868212:1'),
(228, 69, '_wp_attached_file', '2023/02/washedriversand.jpg'),
(229, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:914;s:6:\"height\";i:767;s:4:\"file\";s:27:\"2023/02/washedriversand.jpg\";s:8:\"filesize\";i:164868;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"washedriversand-300x252.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28312;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"washedriversand-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8444;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"washedriversand-768x644.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:164764;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 69, '_wp_attachment_image_alt', 'Песок речной мытый'),
(233, 71, '_edit_lock', '1675868142:1'),
(234, 72, '_wp_attached_file', '2023/02/cariersand.jpg'),
(235, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:768;s:6:\"height\";i:804;s:4:\"file\";s:22:\"2023/02/cariersand.jpg\";s:8:\"filesize\";i:200964;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"cariersand-287x300.jpg\";s:5:\"width\";i:287;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29477;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"cariersand-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7697;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 72, '_wp_attachment_image_alt', 'Карьерный песок'),
(239, 74, '_edit_lock', '1675912497:1'),
(240, 75, '_wp_attached_file', '2023/02/sandforbaby.jpg'),
(241, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:23:\"2023/02/sandforbaby.jpg\";s:8:\"filesize\";i:562570;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"sandforbaby-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14804;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"sandforbaby-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6999;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"sandforbaby-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60443;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 75, '_wp_attachment_image_alt', 'Песок для песочниц'),
(245, 77, '_edit_lock', '1675867538:1'),
(246, 78, '_wp_attached_file', '2023/02/pgssmol.jpg'),
(247, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:490;s:6:\"height\";i:490;s:4:\"file\";s:19:\"2023/02/pgssmol.jpg\";s:8:\"filesize\";i:285654;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"pgssmol-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51345;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"pgssmol-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11553;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 78, '_wp_attachment_image_alt', 'ПГС мелкая'),
(251, 80, '_edit_lock', '1675844855:1'),
(252, 81, '_wp_attached_file', '2023/02/pgsyelou.jpg'),
(253, 81, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:20:\"2023/02/pgsyelou.jpg\";s:8:\"filesize\";i:281391;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"pgsyelou-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18653;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"pgsyelou-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:202442;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"pgsyelou-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7588;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"pgsyelou-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:118673;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 81, '_wp_attachment_image_alt', 'ПГС Жёлтая'),
(259, 80, '_edit_last', '1'),
(262, 80, 'product_img', '81'),
(263, 80, '_product_img', 'field_63e35516198fb'),
(264, 80, 'product_descript', 'ПГС желтая'),
(265, 80, '_product_descript', 'field_63e356dd4f407'),
(266, 80, 'product_coast', '400 р./тонна + доставка'),
(267, 80, '_product_coast', 'field_63e357df4f408'),
(268, 83, 'product_img', '81'),
(269, 83, '_product_img', 'field_63e35516198fb'),
(270, 83, 'product_descript', 'ПГС желтая'),
(271, 83, '_product_descript', 'field_63e356dd4f407'),
(272, 83, 'product_coast', '400 р./тонна + доставка'),
(273, 83, '_product_coast', 'field_63e357df4f408'),
(276, 84, 'product_img', '81'),
(277, 84, '_product_img', 'field_63e35516198fb'),
(278, 84, 'product_descript', 'ПГС желтая'),
(279, 84, '_product_descript', 'field_63e356dd4f407'),
(280, 84, 'product_coast', '400 р./тонна + доставка'),
(281, 84, '_product_coast', 'field_63e357df4f408'),
(282, 85, '_edit_lock', '1675867483:1'),
(283, 86, '_wp_attached_file', '2023/02/pgsbig.jpg'),
(284, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:18:\"2023/02/pgsbig.jpg\";s:8:\"filesize\";i:514266;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"pgsbig-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33306;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"pgsbig-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:292710;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"pgsbig-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11869;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"pgsbig-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:177617;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(285, 86, '_wp_attachment_image_alt', 'ПГС крупная'),
(288, 88, '_edit_lock', '1675867424:1'),
(289, 89, '_wp_attached_file', '2023/02/roadspgs.jpg'),
(290, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:20:\"2023/02/roadspgs.jpg\";s:8:\"filesize\";i:344397;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"roadspgs-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27491;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"roadspgs-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10504;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"roadspgs-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:189180;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(291, 89, '_wp_attachment_image_alt', 'ПГС дорожная'),
(294, 91, '_edit_lock', '1675867789:1'),
(295, 92, '_wp_attached_file', '2023/02/rollback.webp'),
(296, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:21:\"2023/02/rollback.webp\";s:8:\"filesize\";i:234742;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"rollback-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16900;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"rollback-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7288;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"rollback-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:84082;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(297, 92, '_wp_attachment_image_alt', 'Отсев'),
(300, 94, '_edit_lock', '1675866075:1'),
(301, 95, '_wp_attached_file', '2023/02/sheben1.jpg'),
(302, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:750;s:4:\"file\";s:19:\"2023/02/sheben1.jpg\";s:8:\"filesize\";i:227551;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"sheben1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29419;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"sheben1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11244;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"sheben1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:142636;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(303, 95, '_wp_attachment_image_alt', 'Щебень фр. 5-70мм'),
(306, 97, '_edit_lock', '1675866005:1'),
(309, 99, '_edit_lock', '1675865948:1'),
(312, 101, '_edit_lock', '1675865906:1'),
(315, 103, '_edit_lock', '1675865864:1'),
(318, 105, '_edit_lock', '1675865811:1'),
(319, 106, '_wp_attached_file', '2023/02/mramorsheben.webp'),
(320, 106, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:820;s:6:\"height\";i:620;s:4:\"file\";s:25:\"2023/02/mramorsheben.webp\";s:8:\"filesize\";i:73710;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"mramorsheben-300x227.webp\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13316;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"mramorsheben-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5798;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"mramorsheben-768x581.webp\";s:5:\"width\";i:768;s:6:\"height\";i:581;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:56440;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(321, 106, '_wp_attachment_image_alt', 'Щебень мраморный'),
(324, 108, '_edit_lock', '1675846368:1'),
(327, 91, '_edit_last', '1'),
(330, 91, 'product_img', '201'),
(331, 91, '_product_img', 'field_63e35516198fb'),
(332, 91, 'product_descript', 'фр.5-20мм'),
(333, 91, '_product_descript', 'field_63e356dd4f407'),
(334, 91, 'product_coast', 'от 600 р./тонна + доставка'),
(335, 91, '_product_coast', 'field_63e357df4f408'),
(336, 109, 'product_img', '92'),
(337, 109, '_product_img', 'field_63e35516198fb'),
(338, 109, 'product_descript', 'Отсев'),
(339, 109, '_product_descript', 'field_63e356dd4f407'),
(340, 109, 'product_coast', 'от 700 р./тонна + доставка'),
(341, 109, '_product_coast', 'field_63e357df4f408'),
(342, 110, '_edit_lock', '1675865628:1'),
(343, 111, '_wp_attached_file', '2023/02/peschanik.jpg'),
(344, 111, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:922;s:6:\"height\";i:614;s:4:\"file\";s:21:\"2023/02/peschanik.jpg\";s:8:\"filesize\";i:174673;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"peschanik-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22054;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"peschanik-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9198;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"peschanik-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:118803;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 111, '_wp_attachment_image_alt', 'Щебень скальник-песчаник (фр.0,5-0,7мм) от680р /т+доставка'),
(348, 113, '_edit_lock', '1675850397:1'),
(349, 114, '_edit_lock', '1675851568:1'),
(350, 115, '_edit_lock', '1675853114:1'),
(351, 117, '_edit_lock', '1675852871:1'),
(352, 119, '_edit_lock', '1675852854:1'),
(353, 121, '_edit_lock', '1675865607:1'),
(354, 123, '_edit_lock', '1675852831:1'),
(355, 125, '_edit_lock', '1675851890:1'),
(356, 126, '_edit_lock', '1675853135:1'),
(357, 128, '_edit_lock', '1675862145:1'),
(358, 130, '_edit_lock', '1675853091:1'),
(359, 132, '_edit_lock', '1675861756:1'),
(360, 134, '_edit_lock', '1675853159:1'),
(361, 136, '_edit_lock', '1675852793:1'),
(362, 138, '_edit_lock', '1675852777:1'),
(363, 138, '_wp_page_template', 'pages/page-garbage_removal.php'),
(364, 136, '_wp_page_template', 'pages/page-snow_removal.php'),
(365, 123, '_wp_page_template', 'pages/page-rollback.php'),
(366, 119, '_wp_page_template', 'pages/page-dropout.php'),
(367, 117, '_wp_page_template', 'pages/page-pgs.php'),
(368, 130, '_wp_page_template', 'pages/page-humus.php'),
(369, 115, '_wp_page_template', 'pages/page-sand.php'),
(370, 126, '_wp_page_template', 'pages/page-flagstone.php'),
(371, 134, '_wp_page_template', 'pages/page-coal.php'),
(372, 128, '_wp_page_template', 'pages/page-chernozem.php'),
(373, 140, '_edit_lock', '1675853498:1'),
(374, 141, '_menu_item_type', 'post_type'),
(375, 141, '_menu_item_menu_item_parent', '0'),
(376, 141, '_menu_item_object_id', '13'),
(377, 141, '_menu_item_object', 'page'),
(378, 141, '_menu_item_target', ''),
(379, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(380, 141, '_menu_item_xfn', ''),
(381, 141, '_menu_item_url', ''),
(382, 142, '_menu_item_type', 'post_type'),
(383, 142, '_menu_item_menu_item_parent', '0'),
(384, 142, '_menu_item_object_id', '138'),
(385, 142, '_menu_item_object', 'page'),
(386, 142, '_menu_item_target', ''),
(387, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(388, 142, '_menu_item_xfn', ''),
(389, 142, '_menu_item_url', ''),
(390, 143, '_menu_item_type', 'post_type'),
(391, 143, '_menu_item_menu_item_parent', '0'),
(392, 143, '_menu_item_object_id', '136'),
(393, 143, '_menu_item_object', 'page'),
(394, 143, '_menu_item_target', ''),
(395, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(396, 143, '_menu_item_xfn', ''),
(397, 143, '_menu_item_url', ''),
(398, 144, '_menu_item_type', 'post_type'),
(399, 144, '_menu_item_menu_item_parent', '0'),
(400, 144, '_menu_item_object_id', '134'),
(401, 144, '_menu_item_object', 'page'),
(402, 144, '_menu_item_target', ''),
(403, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(404, 144, '_menu_item_xfn', ''),
(405, 144, '_menu_item_url', ''),
(406, 145, '_menu_item_type', 'post_type'),
(407, 145, '_menu_item_menu_item_parent', '0'),
(408, 145, '_menu_item_object_id', '132'),
(409, 145, '_menu_item_object', 'page'),
(410, 145, '_menu_item_target', ''),
(411, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(412, 145, '_menu_item_xfn', ''),
(413, 145, '_menu_item_url', ''),
(414, 146, '_menu_item_type', 'post_type'),
(415, 146, '_menu_item_menu_item_parent', '0'),
(416, 146, '_menu_item_object_id', '130'),
(417, 146, '_menu_item_object', 'page'),
(418, 146, '_menu_item_target', ''),
(419, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(420, 146, '_menu_item_xfn', ''),
(421, 146, '_menu_item_url', ''),
(422, 147, '_menu_item_type', 'post_type'),
(423, 147, '_menu_item_menu_item_parent', '0'),
(424, 147, '_menu_item_object_id', '128'),
(425, 147, '_menu_item_object', 'page'),
(426, 147, '_menu_item_target', ''),
(427, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(428, 147, '_menu_item_xfn', ''),
(429, 147, '_menu_item_url', ''),
(430, 148, '_menu_item_type', 'post_type'),
(431, 148, '_menu_item_menu_item_parent', '0'),
(432, 148, '_menu_item_object_id', '126'),
(433, 148, '_menu_item_object', 'page'),
(434, 148, '_menu_item_target', ''),
(435, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(436, 148, '_menu_item_xfn', ''),
(437, 148, '_menu_item_url', ''),
(438, 149, '_menu_item_type', 'post_type'),
(439, 149, '_menu_item_menu_item_parent', '0'),
(440, 149, '_menu_item_object_id', '121'),
(441, 149, '_menu_item_object', 'page'),
(442, 149, '_menu_item_target', ''),
(443, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(444, 149, '_menu_item_xfn', ''),
(445, 149, '_menu_item_url', ''),
(446, 150, '_menu_item_type', 'post_type'),
(447, 150, '_menu_item_menu_item_parent', '0'),
(448, 150, '_menu_item_object_id', '119'),
(449, 150, '_menu_item_object', 'page'),
(450, 150, '_menu_item_target', ''),
(451, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(452, 150, '_menu_item_xfn', ''),
(453, 150, '_menu_item_url', ''),
(454, 151, '_menu_item_type', 'post_type'),
(455, 151, '_menu_item_menu_item_parent', '0'),
(456, 151, '_menu_item_object_id', '117'),
(457, 151, '_menu_item_object', 'page'),
(458, 151, '_menu_item_target', ''),
(459, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(460, 151, '_menu_item_xfn', ''),
(461, 151, '_menu_item_url', ''),
(462, 152, '_menu_item_type', 'post_type'),
(463, 152, '_menu_item_menu_item_parent', '0'),
(464, 152, '_menu_item_object_id', '115'),
(465, 152, '_menu_item_object', 'page'),
(466, 152, '_menu_item_target', ''),
(467, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(468, 152, '_menu_item_xfn', ''),
(469, 152, '_menu_item_url', ''),
(470, 153, '_menu_item_type', 'post_type'),
(471, 153, '_menu_item_menu_item_parent', '0'),
(472, 153, '_menu_item_object_id', '123'),
(473, 153, '_menu_item_object', 'page'),
(474, 153, '_menu_item_target', ''),
(475, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(476, 153, '_menu_item_xfn', ''),
(477, 153, '_menu_item_url', ''),
(478, 140, '_wp_trash_meta_status', 'publish'),
(479, 140, '_wp_trash_meta_time', '1675853499'),
(480, 121, '_wp_page_template', 'pages/page-crushed_stone.php'),
(481, 132, '_wp_page_template', 'pages/page-ground.php'),
(482, 154, '_edit_lock', '1675862311:1'),
(483, 155, '_wp_attached_file', '2023/02/chernozem.jpg'),
(484, 155, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:761;s:6:\"height\";i:572;s:4:\"file\";s:21:\"2023/02/chernozem.jpg\";s:8:\"filesize\";i:148665;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"chernozem-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17803;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"chernozem-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6029;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(485, 155, '_wp_attachment_image_alt', 'чернозем'),
(488, 128, '_edit_last', '1'),
(491, 154, '_edit_last', '1'),
(494, 154, 'product_img', '155'),
(495, 154, '_product_img', 'field_63e35516198fb'),
(496, 154, 'product_descript', 'Чернозем'),
(497, 154, '_product_descript', 'field_63e356dd4f407'),
(498, 154, 'product_coast', 'от 5000 р./тонна + доставка'),
(499, 154, '_product_coast', 'field_63e357df4f408'),
(500, 157, 'product_img', '155'),
(501, 157, '_product_img', 'field_63e35516198fb'),
(502, 157, 'product_descript', 'Чернозем'),
(503, 157, '_product_descript', 'field_63e356dd4f407'),
(504, 157, 'product_coast', 'от 5000 р./тонна + доставка'),
(505, 157, '_product_coast', 'field_63e357df4f408'),
(506, 158, '_edit_lock', '1675862781:1'),
(507, 159, '_wp_attached_file', '2023/02/coal.jpg'),
(508, 159, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:676;s:4:\"file\";s:16:\"2023/02/coal.jpg\";s:8:\"filesize\";i:538935;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"coal-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18692;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"coal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7646;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"coal-768x519.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:519;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:90837;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(509, 159, '_wp_attachment_image_alt', 'Уголь'),
(514, 158, '_edit_last', '1'),
(517, 158, 'product_img', '159'),
(518, 158, '_product_img', 'field_63e35516198fb'),
(519, 158, 'product_descript', 'фр.0-30мм'),
(520, 158, '_product_descript', 'field_63e356dd4f407'),
(521, 158, 'product_coast', 'от 2000 р./тонна +доставка'),
(522, 158, '_product_coast', 'field_63e357df4f408'),
(523, 161, 'product_img', '159'),
(524, 161, '_product_img', 'field_63e35516198fb'),
(525, 161, 'product_descript', 'фр.0-30мм'),
(526, 161, '_product_descript', 'field_63e356dd4f407'),
(527, 161, 'product_coast', 'от 2000 р./тонна +доставка'),
(528, 161, '_product_coast', 'field_63e357df4f408'),
(529, 162, '_edit_lock', '1675863222:1'),
(534, 162, '_edit_last', '1'),
(537, 162, 'product_img', '159'),
(538, 162, '_product_img', 'field_63e35516198fb'),
(539, 162, 'product_descript', 'отборный (фр 13-80мм)'),
(540, 162, '_product_descript', 'field_63e356dd4f407'),
(541, 162, 'product_coast', 'от 4100 р./тонна + доставка'),
(542, 162, '_product_coast', 'field_63e357df4f408'),
(543, 164, 'product_img', '159'),
(544, 164, '_product_img', 'field_63e35516198fb'),
(545, 164, 'product_descript', 'отборный (фр 13-80мм)'),
(546, 164, '_product_descript', 'field_63e356dd4f407'),
(547, 164, 'product_coast', 'от 4100 р./тонна + доставка'),
(548, 164, '_product_coast', 'field_63e357df4f408'),
(549, 165, '_edit_lock', '1675863539:1'),
(550, 166, '_wp_attached_file', '2023/02/dropout.jpg'),
(551, 166, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1680;s:6:\"height\";i:1260;s:4:\"file\";s:19:\"2023/02/dropout.jpg\";s:8:\"filesize\";i:932988;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"dropout-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25200;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"dropout-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:353895;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"dropout-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7374;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"dropout-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:199331;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"dropout-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:721013;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(552, 166, '_wp_attachment_image_alt', 'Отсев'),
(561, 165, '_edit_last', '1'),
(564, 165, 'product_img', '166'),
(565, 165, '_product_img', 'field_63e35516198fb'),
(566, 165, 'product_descript', 'Отсев'),
(567, 165, '_product_descript', 'field_63e356dd4f407'),
(568, 165, 'product_coast', 'от 700 р/тонна + доставка.'),
(569, 165, '_product_coast', 'field_63e357df4f408'),
(570, 168, 'product_img', '166'),
(571, 168, '_product_img', 'field_63e35516198fb'),
(572, 168, 'product_descript', 'Отсев'),
(573, 168, '_product_descript', 'field_63e356dd4f407'),
(574, 168, 'product_coast', 'от 700 р/тонна + доставка.'),
(575, 168, '_product_coast', 'field_63e357df4f408'),
(576, 169, '_edit_lock', '1675864060:1'),
(577, 170, '_wp_attached_file', '2023/02/flagstone.jpg'),
(578, 170, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1500;s:4:\"file\";s:21:\"2023/02/flagstone.jpg\";s:8:\"filesize\";i:625862;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"flagstone-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36631;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"flagstone-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:222606;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"flagstone-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21600;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"flagstone-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:139311;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"flagstone-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:431236;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:6:\"DMC-F3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1443109792\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(579, 170, '_wp_attachment_image_alt', 'Плитняк'),
(584, 169, '_edit_last', '1'),
(587, 169, 'product_img', '170'),
(588, 169, '_product_img', 'field_63e35516198fb'),
(589, 169, 'product_descript', 'Плитняк'),
(590, 169, '_product_descript', 'field_63e356dd4f407'),
(591, 169, 'product_coast', 'Цена договорная'),
(592, 169, '_product_coast', 'field_63e357df4f408'),
(593, 173, 'product_img', '170'),
(594, 173, '_product_img', 'field_63e35516198fb'),
(595, 173, 'product_descript', 'Плитняк'),
(596, 173, '_product_descript', 'field_63e356dd4f407'),
(597, 173, 'product_coast', 'Цена договорная'),
(598, 173, '_product_coast', 'field_63e357df4f408'),
(599, 174, '_edit_lock', '1675864319:1'),
(600, 175, '_edit_lock', '1675920229:1'),
(601, 176, '_wp_attached_file', '2023/02/garbage_removal.jpg'),
(602, 176, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:910;s:4:\"file\";s:27:\"2023/02/garbage_removal.jpg\";s:8:\"filesize\";i:386215;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"garbage_removal-300x284.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26054;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"garbage_removal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8471;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"garbage_removal-768x728.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:728;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:134131;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(603, 176, '_wp_attachment_image_alt', 'Вывоз мусора'),
(608, 175, '_edit_last', '1'),
(611, 175, 'product_img', '176'),
(612, 175, '_product_img', 'field_63e35516198fb'),
(613, 175, 'product_descript', 'Вывоз мусора'),
(614, 175, '_product_descript', 'field_63e356dd4f407'),
(615, 175, 'product_coast', 'Цена договорная'),
(616, 175, '_product_coast', 'field_63e357df4f408'),
(617, 178, 'product_img', '176'),
(618, 178, '_product_img', 'field_63e35516198fb'),
(619, 178, 'product_descript', 'ВЫвоз мусора'),
(620, 178, '_product_descript', 'field_63e356dd4f407'),
(621, 178, 'product_coast', 'Цена договорная'),
(622, 178, '_product_coast', 'field_63e357df4f408'),
(625, 179, 'product_img', '176'),
(626, 179, '_product_img', 'field_63e35516198fb'),
(627, 179, 'product_descript', 'ВЫвоз мусора'),
(628, 179, '_product_descript', 'field_63e356dd4f407'),
(629, 179, 'product_coast', 'Цена договорная'),
(630, 179, '_product_coast', 'field_63e357df4f408'),
(631, 180, '_edit_lock', '1675865209:1'),
(632, 181, '_wp_attached_file', '2023/02/ground.jpg'),
(633, 181, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:18:\"2023/02/ground.jpg\";s:8:\"filesize\";i:214102;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"ground-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24464;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"ground-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11516;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"ground-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:150014;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(634, 181, '_wp_attachment_image_alt', 'Грунт'),
(639, 180, '_edit_last', '1'),
(642, 180, 'product_img', '181'),
(643, 180, '_product_img', 'field_63e35516198fb'),
(644, 180, 'product_descript', 'Грунт'),
(645, 180, '_product_descript', 'field_63e356dd4f407'),
(646, 180, 'product_coast', 'Цена договорная'),
(647, 180, '_product_coast', 'field_63e357df4f408'),
(648, 183, 'product_img', '181'),
(649, 183, '_product_img', 'field_63e35516198fb'),
(650, 183, 'product_descript', 'Грунт'),
(651, 183, '_product_descript', 'field_63e356dd4f407'),
(652, 183, 'product_coast', 'Цена договорная'),
(653, 183, '_product_coast', 'field_63e357df4f408'),
(654, 184, '_edit_lock', '1675865419:1'),
(655, 185, '_wp_attached_file', '2023/02/humus.webp'),
(656, 185, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:750;s:4:\"file\";s:18:\"2023/02/humus.webp\";s:8:\"filesize\";i:332450;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"humus-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:25580;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"humus-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9560;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"humus-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:131754;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(657, 185, '_wp_attachment_image_alt', 'Перегной'),
(662, 184, '_edit_last', '1'),
(665, 184, 'product_img', '185'),
(666, 184, '_product_img', 'field_63e35516198fb'),
(667, 184, 'product_descript', 'Перегной'),
(668, 184, '_product_descript', 'field_63e356dd4f407'),
(669, 184, 'product_coast', '5000 р. + доставка'),
(670, 184, '_product_coast', 'field_63e357df4f408'),
(671, 187, 'product_img', '185'),
(672, 187, '_product_img', 'field_63e35516198fb'),
(673, 187, 'product_descript', 'Перегной'),
(674, 187, '_product_descript', 'field_63e356dd4f407'),
(675, 187, 'product_coast', '5000 р. + доставка'),
(676, 187, '_product_coast', 'field_63e357df4f408'),
(679, 110, '_edit_last', '1'),
(682, 110, 'product_img', '95'),
(683, 110, '_product_img', 'field_63e35516198fb'),
(684, 110, 'product_descript', 'фр.0,5-0,7мм'),
(685, 110, '_product_descript', 'field_63e356dd4f407'),
(686, 110, 'product_coast', 'от 680 р./тонна + доставка'),
(687, 110, '_product_coast', 'field_63e357df4f408'),
(688, 190, 'product_img', '95'),
(689, 190, '_product_img', 'field_63e35516198fb'),
(690, 190, 'product_descript', 'фр.0,5-0,7мм'),
(691, 190, '_product_descript', 'field_63e356dd4f407'),
(692, 190, 'product_coast', 'от 680 р./тонна + доставка'),
(693, 190, '_product_coast', 'field_63e357df4f408'),
(696, 105, '_edit_last', '1'),
(699, 105, 'product_img', '95'),
(700, 105, '_product_img', 'field_63e35516198fb'),
(701, 105, 'product_descript', 'Щебень'),
(702, 105, '_product_descript', 'field_63e356dd4f407'),
(703, 105, 'product_coast', 'Цена договорная'),
(704, 105, '_product_coast', 'field_63e357df4f408'),
(705, 191, 'product_img', '95'),
(706, 191, '_product_img', 'field_63e35516198fb'),
(707, 191, 'product_descript', 'Щебень'),
(708, 191, '_product_descript', 'field_63e356dd4f407'),
(709, 191, 'product_coast', 'Цена договорная'),
(710, 191, '_product_coast', 'field_63e357df4f408'),
(713, 103, '_edit_last', '1'),
(716, 103, 'product_img', '95'),
(717, 103, '_product_img', 'field_63e35516198fb'),
(718, 103, 'product_descript', 'фр.20-40мм'),
(719, 103, '_product_descript', 'field_63e356dd4f407'),
(720, 103, 'product_coast', 'от 900 р./тонна + доставка'),
(721, 103, '_product_coast', 'field_63e357df4f408'),
(722, 192, 'product_img', '95'),
(723, 192, '_product_img', 'field_63e35516198fb'),
(724, 192, 'product_descript', 'фр.20-40мм'),
(725, 192, '_product_descript', 'field_63e356dd4f407'),
(726, 192, 'product_coast', 'от 900 р./тонна + доставка'),
(727, 192, '_product_coast', 'field_63e357df4f408'),
(730, 101, '_edit_last', '1'),
(733, 101, 'product_img', '95'),
(734, 101, '_product_img', 'field_63e35516198fb'),
(735, 101, 'product_descript', 'фр. 5-20мм'),
(736, 101, '_product_descript', 'field_63e356dd4f407'),
(737, 101, 'product_coast', '1300тр/т+доставка'),
(738, 101, '_product_coast', 'field_63e357df4f408'),
(739, 193, 'product_img', '95'),
(740, 193, '_product_img', 'field_63e35516198fb'),
(741, 193, 'product_descript', 'фр. 5-20мм'),
(742, 193, '_product_descript', 'field_63e356dd4f407'),
(743, 193, 'product_coast', '1300тр/т+доставка'),
(744, 193, '_product_coast', 'field_63e357df4f408'),
(747, 99, '_edit_last', '1'),
(750, 99, 'product_img', '95'),
(751, 99, '_product_img', 'field_63e35516198fb'),
(752, 99, 'product_descript', 'фр. 20-40мм'),
(753, 99, '_product_descript', 'field_63e356dd4f407'),
(754, 99, 'product_coast', 'от 900/т+доставка'),
(755, 99, '_product_coast', 'field_63e357df4f408'),
(756, 194, 'product_img', '95'),
(757, 194, '_product_img', 'field_63e35516198fb'),
(758, 194, 'product_descript', 'фр. 20-40мм'),
(759, 194, '_product_descript', 'field_63e356dd4f407'),
(760, 194, 'product_coast', 'от 900/т+доставка'),
(761, 194, '_product_coast', 'field_63e357df4f408'),
(764, 97, '_edit_last', '1'),
(767, 97, 'product_img', '95'),
(768, 97, '_product_img', 'field_63e35516198fb'),
(769, 97, 'product_descript', 'фр.5-20мм'),
(770, 97, '_product_descript', 'field_63e356dd4f407'),
(771, 97, 'product_coast', 'от 1300тр/т+доставка'),
(772, 97, '_product_coast', 'field_63e357df4f408'),
(773, 195, 'product_img', '95'),
(774, 195, '_product_img', 'field_63e35516198fb'),
(775, 195, 'product_descript', 'фр.5-20мм'),
(776, 195, '_product_descript', 'field_63e356dd4f407'),
(777, 195, 'product_coast', 'от 1300тр/т+доставка'),
(778, 195, '_product_coast', 'field_63e357df4f408'),
(781, 94, '_edit_last', '1'),
(784, 94, 'product_img', '95'),
(785, 94, '_product_img', 'field_63e35516198fb'),
(786, 94, 'product_descript', 'фр. 5-70мм'),
(787, 94, '_product_descript', 'field_63e356dd4f407'),
(788, 94, 'product_coast', 'от 1200 р./тонна + доставка'),
(789, 94, '_product_coast', 'field_63e357df4f408'),
(790, 196, 'product_img', '95'),
(791, 196, '_product_img', 'field_63e35516198fb'),
(792, 196, 'product_descript', 'фр. 5-70мм'),
(793, 196, '_product_descript', 'field_63e356dd4f407'),
(794, 196, 'product_coast', 'от 1200 р./тонна + доставка'),
(795, 196, '_product_coast', 'field_63e357df4f408'),
(798, 197, 'product_img', '95'),
(799, 197, '_product_img', 'field_63e35516198fb'),
(800, 197, 'product_descript', 'фр. 5-70мм'),
(801, 197, '_product_descript', 'field_63e356dd4f407'),
(802, 197, 'product_coast', 'от 1200 р./тонна + доставка'),
(803, 197, '_product_coast', 'field_63e357df4f408'),
(806, 88, '_edit_last', '1'),
(809, 88, 'product_img', '89'),
(810, 88, '_product_img', 'field_63e35516198fb'),
(811, 88, 'product_descript', 'ПГС Дорожная'),
(812, 88, '_product_descript', 'field_63e356dd4f407'),
(813, 88, 'product_coast', '400р/т+доставка'),
(814, 88, '_product_coast', 'field_63e357df4f408'),
(815, 198, 'product_img', '89'),
(816, 198, '_product_img', 'field_63e35516198fb'),
(817, 198, 'product_descript', 'ПГС Дорожная'),
(818, 198, '_product_descript', 'field_63e356dd4f407'),
(819, 198, 'product_coast', '400р/т+доставка'),
(820, 198, '_product_coast', 'field_63e357df4f408'),
(823, 85, '_edit_last', '1'),
(826, 85, 'product_img', '86'),
(827, 85, '_product_img', 'field_63e35516198fb'),
(828, 85, 'product_descript', 'ПГС крупная'),
(829, 85, '_product_descript', 'field_63e356dd4f407'),
(830, 85, 'product_coast', '400р/т+доставка'),
(831, 85, '_product_coast', 'field_63e357df4f408'),
(832, 199, 'product_img', '86'),
(833, 199, '_product_img', 'field_63e35516198fb'),
(834, 199, 'product_descript', 'ПГС крупная');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(835, 199, '_product_descript', 'field_63e356dd4f407'),
(836, 199, 'product_coast', '400р/т+доставка'),
(837, 199, '_product_coast', 'field_63e357df4f408'),
(840, 77, '_edit_last', '1'),
(843, 77, 'product_img', '78'),
(844, 77, '_product_img', 'field_63e35516198fb'),
(845, 77, 'product_descript', 'ПГС Мелкая'),
(846, 77, '_product_descript', 'field_63e356dd4f407'),
(847, 77, 'product_coast', '500 р./тонна+доставка'),
(848, 77, '_product_coast', 'field_63e357df4f408'),
(849, 200, 'product_img', '78'),
(850, 200, '_product_img', 'field_63e35516198fb'),
(851, 200, 'product_descript', 'ПГС Мелкая'),
(852, 200, '_product_descript', 'field_63e356dd4f407'),
(853, 200, 'product_coast', '500 р./тонна+доставка'),
(854, 200, '_product_coast', 'field_63e357df4f408'),
(855, 201, '_wp_attached_file', '2023/02/graviy-scaled.jpg'),
(856, 201, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:25:\"2023/02/graviy-scaled.jpg\";s:8:\"filesize\";i:965283;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"graviy-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25422;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"graviy-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:199944;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"graviy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10140;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"graviy-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:120800;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"graviy-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:404831;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"graviy-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:666624;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"iPhone 5s\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:2:\"32\";s:13:\"shutter_speed\";s:18:\"0.0021459227467811\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"graviy.jpg\";}'),
(857, 201, '_wp_attachment_image_alt', 'Гравий'),
(862, 204, 'product_img', '201'),
(863, 204, '_product_img', 'field_63e35516198fb'),
(864, 204, 'product_descript', 'фр.5-20мм'),
(865, 204, '_product_descript', 'field_63e356dd4f407'),
(866, 204, 'product_coast', 'от 600 р./тонна + доставка'),
(867, 204, '_product_coast', 'field_63e357df4f408'),
(868, 205, '_edit_lock', '1675867998:1'),
(869, 206, '_wp_attached_file', '2023/02/graviy2.jpg'),
(870, 206, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2023/02/graviy2.jpg\";s:8:\"filesize\";i:226696;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"graviy2-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25887;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"graviy2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9605;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"graviy2-768x614.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:127315;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(871, 206, '_wp_attachment_image_alt', 'Гравий'),
(876, 205, '_edit_last', '1'),
(879, 205, 'product_img', '206'),
(880, 205, '_product_img', 'field_63e35516198fb'),
(881, 205, 'product_descript', 'фр.30-80мм'),
(882, 205, '_product_descript', 'field_63e356dd4f407'),
(883, 205, 'product_coast', 'от 500 р./тонна + доставка'),
(884, 205, '_product_coast', 'field_63e357df4f408'),
(885, 208, 'product_img', '206'),
(886, 208, '_product_img', 'field_63e35516198fb'),
(887, 208, 'product_descript', 'фр.30-80мм'),
(888, 208, '_product_descript', 'field_63e356dd4f407'),
(889, 208, 'product_coast', 'от 500 р./тонна + доставка'),
(890, 208, '_product_coast', 'field_63e357df4f408'),
(893, 74, '_edit_last', '1'),
(896, 74, 'product_img', '75'),
(897, 74, '_product_img', 'field_63e35516198fb'),
(898, 74, 'product_descript', 'Товар имеет сертификаты'),
(899, 74, '_product_descript', 'field_63e356dd4f407'),
(900, 74, 'product_coast', 'от 650 р. /тонна + доставка'),
(901, 74, '_product_coast', 'field_63e357df4f408'),
(902, 209, 'product_img', '75'),
(903, 209, '_product_img', 'field_63e35516198fb'),
(904, 209, 'product_descript', 'Товар имеет сертификаты'),
(905, 209, '_product_descript', 'field_63e356dd4f407'),
(906, 209, 'product_coast', 'от 650 р. /тонна + доставка'),
(907, 209, '_product_coast', 'field_63e357df4f408'),
(910, 71, '_edit_last', '1'),
(913, 71, 'product_img', '72'),
(914, 71, '_product_img', 'field_63e35516198fb'),
(915, 71, 'product_descript', 'Песок карьерный'),
(916, 71, '_product_descript', 'field_63e356dd4f407'),
(917, 71, 'product_coast', 'от 600 р./тонна + доставка'),
(918, 71, '_product_coast', 'field_63e357df4f408'),
(919, 210, 'product_img', '72'),
(920, 210, '_product_img', 'field_63e35516198fb'),
(921, 210, 'product_descript', 'Песок карьерный'),
(922, 210, '_product_descript', 'field_63e356dd4f407'),
(923, 210, 'product_coast', 'от 600 р./тонна + доставка'),
(924, 210, '_product_coast', 'field_63e357df4f408'),
(927, 68, '_edit_last', '1'),
(930, 68, 'product_img', '69'),
(931, 68, '_product_img', 'field_63e35516198fb'),
(932, 68, 'product_descript', 'Песок мытый'),
(933, 68, '_product_descript', 'field_63e356dd4f407'),
(934, 68, 'product_coast', 'от 800 р./тонна + доставка'),
(935, 68, '_product_coast', 'field_63e357df4f408'),
(936, 211, 'product_img', '69'),
(937, 211, '_product_img', 'field_63e35516198fb'),
(938, 211, 'product_descript', 'Песок мытый'),
(939, 211, '_product_descript', 'field_63e356dd4f407'),
(940, 211, 'product_coast', 'от 800 р./тонна + доставка'),
(941, 211, '_product_coast', 'field_63e357df4f408'),
(942, 66, '_wp_attachment_image_alt', 'Песок речной'),
(945, 65, '_edit_last', '1'),
(948, 65, 'product_img', '66'),
(949, 65, '_product_img', 'field_63e35516198fb'),
(950, 65, 'product_descript', 'ПЕсок рчной'),
(951, 65, '_product_descript', 'field_63e356dd4f407'),
(952, 65, 'product_coast', 'от 700 р./тонна + доставка'),
(953, 65, '_product_coast', 'field_63e357df4f408'),
(954, 212, 'product_img', '66'),
(955, 212, '_product_img', 'field_63e35516198fb'),
(956, 212, 'product_descript', 'ПЕсок рчной'),
(957, 212, '_product_descript', 'field_63e356dd4f407'),
(958, 212, 'product_coast', 'от 700 р./тонна + доставка'),
(959, 212, '_product_coast', 'field_63e357df4f408'),
(960, 213, '_edit_lock', '1675869815:1'),
(961, 214, '_wp_attached_file', '2023/02/snowremoval.webp'),
(962, 214, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2023/02/snowremoval.webp\";s:8:\"filesize\";i:27092;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"snowremoval-300x188.webp\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9442;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"snowremoval-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5386;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(963, 214, '_wp_attachment_image_alt', 'Вывоз снега'),
(968, 213, '_edit_last', '1'),
(971, 213, 'product_img', '214'),
(972, 213, '_product_img', 'field_63e35516198fb'),
(973, 213, 'product_descript', 'Вывоз снега'),
(974, 213, '_product_descript', 'field_63e356dd4f407'),
(975, 213, 'product_coast', 'Цена договорная'),
(976, 213, '_product_coast', 'field_63e357df4f408'),
(977, 216, 'product_img', '214'),
(978, 216, '_product_img', 'field_63e35516198fb'),
(979, 216, 'product_descript', 'Вывоз снега'),
(980, 216, '_product_descript', 'field_63e356dd4f407'),
(981, 216, 'product_coast', 'Цена договорная'),
(982, 216, '_product_coast', 'field_63e357df4f408'),
(983, 218, '_menu_item_type', 'post_type'),
(984, 218, '_menu_item_menu_item_parent', '0'),
(985, 218, '_menu_item_object_id', '138'),
(986, 218, '_menu_item_object', 'page'),
(987, 218, '_menu_item_target', ''),
(988, 218, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(989, 218, '_menu_item_xfn', ''),
(990, 218, '_menu_item_url', ''),
(991, 219, '_menu_item_type', 'post_type'),
(992, 219, '_menu_item_menu_item_parent', '0'),
(993, 219, '_menu_item_object_id', '136'),
(994, 219, '_menu_item_object', 'page'),
(995, 219, '_menu_item_target', ''),
(996, 219, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(997, 219, '_menu_item_xfn', ''),
(998, 219, '_menu_item_url', ''),
(999, 220, '_menu_item_type', 'post_type'),
(1000, 220, '_menu_item_menu_item_parent', '0'),
(1001, 220, '_menu_item_object_id', '134'),
(1002, 220, '_menu_item_object', 'page'),
(1003, 220, '_menu_item_target', ''),
(1004, 220, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1005, 220, '_menu_item_xfn', ''),
(1006, 220, '_menu_item_url', ''),
(1007, 221, '_menu_item_type', 'post_type'),
(1008, 221, '_menu_item_menu_item_parent', '0'),
(1009, 221, '_menu_item_object_id', '132'),
(1010, 221, '_menu_item_object', 'page'),
(1011, 221, '_menu_item_target', ''),
(1012, 221, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1013, 221, '_menu_item_xfn', ''),
(1014, 221, '_menu_item_url', ''),
(1015, 222, '_menu_item_type', 'post_type'),
(1016, 222, '_menu_item_menu_item_parent', '0'),
(1017, 222, '_menu_item_object_id', '130'),
(1018, 222, '_menu_item_object', 'page'),
(1019, 222, '_menu_item_target', ''),
(1020, 222, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1021, 222, '_menu_item_xfn', ''),
(1022, 222, '_menu_item_url', ''),
(1023, 223, '_menu_item_type', 'post_type'),
(1024, 223, '_menu_item_menu_item_parent', '0'),
(1025, 223, '_menu_item_object_id', '128'),
(1026, 223, '_menu_item_object', 'page'),
(1027, 223, '_menu_item_target', ''),
(1028, 223, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1029, 223, '_menu_item_xfn', ''),
(1030, 223, '_menu_item_url', ''),
(1031, 224, '_menu_item_type', 'post_type'),
(1032, 224, '_menu_item_menu_item_parent', '0'),
(1033, 224, '_menu_item_object_id', '126'),
(1034, 224, '_menu_item_object', 'page'),
(1035, 224, '_menu_item_target', ''),
(1036, 224, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1037, 224, '_menu_item_xfn', ''),
(1038, 224, '_menu_item_url', ''),
(1039, 225, '_menu_item_type', 'post_type'),
(1040, 225, '_menu_item_menu_item_parent', '0'),
(1041, 225, '_menu_item_object_id', '123'),
(1042, 225, '_menu_item_object', 'page'),
(1043, 225, '_menu_item_target', ''),
(1044, 225, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1045, 225, '_menu_item_xfn', ''),
(1046, 225, '_menu_item_url', ''),
(1047, 226, '_menu_item_type', 'post_type'),
(1048, 226, '_menu_item_menu_item_parent', '0'),
(1049, 226, '_menu_item_object_id', '121'),
(1050, 226, '_menu_item_object', 'page'),
(1051, 226, '_menu_item_target', ''),
(1052, 226, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1053, 226, '_menu_item_xfn', ''),
(1054, 226, '_menu_item_url', ''),
(1055, 227, '_menu_item_type', 'post_type'),
(1056, 227, '_menu_item_menu_item_parent', '0'),
(1057, 227, '_menu_item_object_id', '119'),
(1058, 227, '_menu_item_object', 'page'),
(1059, 227, '_menu_item_target', ''),
(1060, 227, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1061, 227, '_menu_item_xfn', ''),
(1062, 227, '_menu_item_url', ''),
(1063, 228, '_menu_item_type', 'post_type'),
(1064, 228, '_menu_item_menu_item_parent', '0'),
(1065, 228, '_menu_item_object_id', '117'),
(1066, 228, '_menu_item_object', 'page'),
(1067, 228, '_menu_item_target', ''),
(1068, 228, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1069, 228, '_menu_item_xfn', ''),
(1070, 228, '_menu_item_url', ''),
(1071, 229, '_menu_item_type', 'post_type'),
(1072, 229, '_menu_item_menu_item_parent', '0'),
(1073, 229, '_menu_item_object_id', '115'),
(1074, 229, '_menu_item_object', 'page'),
(1075, 229, '_menu_item_target', ''),
(1076, 229, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1077, 229, '_menu_item_xfn', ''),
(1078, 229, '_menu_item_url', ''),
(1079, 230, '_menu_item_type', 'post_type'),
(1080, 230, '_menu_item_menu_item_parent', '0'),
(1081, 230, '_menu_item_object_id', '13'),
(1082, 230, '_menu_item_object', 'page'),
(1083, 230, '_menu_item_target', ''),
(1084, 230, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1085, 230, '_menu_item_xfn', ''),
(1086, 230, '_menu_item_url', ''),
(1087, 217, '_wp_trash_meta_status', 'publish'),
(1088, 217, '_wp_trash_meta_time', '1675869860'),
(1089, 231, '_edit_lock', '1675903506:1'),
(1094, 233, 'product_img', '75'),
(1095, 233, '_product_img', 'field_63e35516198fb'),
(1096, 233, 'product_descript', 'Товар имеет сертификаты'),
(1097, 233, '_product_descript', 'field_63e356dd4f407'),
(1098, 233, 'product_coast', 'от 650 р. /тонна + доставка'),
(1099, 233, '_product_coast', 'field_63e357df4f408'),
(1102, 234, 'product_img', '75'),
(1103, 234, '_product_img', 'field_63e35516198fb'),
(1104, 234, 'product_descript', 'Товар имеет сертификаты'),
(1105, 234, '_product_descript', 'field_63e356dd4f407'),
(1106, 234, 'product_coast', 'от 650 р. /тонна + доставка'),
(1107, 234, '_product_coast', 'field_63e357df4f408'),
(1110, 175, '_pingme', '1'),
(1111, 175, '_encloseme', '1'),
(1112, 235, 'product_img', '176'),
(1113, 235, '_product_img', 'field_63e35516198fb'),
(1114, 235, 'product_descript', 'Вывоз мусора'),
(1115, 235, '_product_descript', 'field_63e356dd4f407'),
(1116, 235, 'product_coast', 'Цена договорная'),
(1117, 235, '_product_coast', 'field_63e357df4f408');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2023-02-07 03:46:55', '2023-02-07 00:46:55', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://angara38/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-02-07 15:38:48', '2023-02-07 12:38:48', '', 0, 'http://angara38/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-02-07 03:46:55', '2023-02-07 00:46:55', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://angara38.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда отправляются ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-02-07 03:46:55', '2023-02-07 00:46:55', '', 0, 'http://angara38/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-02-07 03:47:56', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-07 03:47:56', '0000-00-00 00:00:00', '', 0, 'http://angara38/?p=4', 0, 'post', '', 0),
(5, 1, '2023-02-07 03:48:16', '2023-02-07 00:48:16', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-02-07 03:48:16', '2023-02-07 00:48:16', '', 0, 'http://angara38/2023/02/07/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(6, 1, '2023-02-07 09:23:49', '2023-02-07 06:23:49', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-02-07 15:33:39', '2023-02-07 12:33:39', '', 0, 'http://angara38/wp-content/uploads/2023/02/logo.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2023-02-07 09:24:06', '2023-02-07 06:24:06', 'http://angara38/wp-content/uploads/2023/02/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2023-02-07 09:24:06', '2023-02-07 06:24:06', '', 0, 'http://angara38/wp-content/uploads/2023/02/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2023-02-07 09:24:11', '0000-00-00 00:00:00', '{\n    \"site_icon\": {\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-07 06:24:11\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '448ce1e1-537a-40ab-be35-794b8e628a94', '', '', '2023-02-07 09:24:11', '0000-00-00 00:00:00', '', 0, 'http://angara38/?p=8', 0, 'customize_changeset', '', 0),
(9, 1, '2023-02-07 09:34:38', '2023-02-07 06:34:38', '{\n    \"angara38::custom_logo\": {\n        \"value\": 6,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-07 06:34:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '49f6466e-d449-4d41-bdf9-cac0436e8196', '', '', '2023-02-07 09:34:38', '2023-02-07 06:34:38', '', 0, 'http://angara38/2023/02/07/49f6466e-d449-4d41-bdf9-cac0436e8196/', 0, 'customize_changeset', '', 0),
(10, 1, '2023-02-07 09:56:25', '2023-02-07 06:56:25', '{\n    \"blogdescription\": {\n        \"value\": \"\\u041f\\u0435\\u0441\\u043e\\u043a, \\u041f\\u0413\\u0421, \\u0429\\u0435\\u0431\\u0435\\u043d\\u044c\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-07 06:56:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f4c1f1b4-8fbb-4c90-868c-733760a31dbb', '', '', '2023-02-07 09:56:25', '2023-02-07 06:56:25', '', 0, 'http://angara38/2023/02/07/f4c1f1b4-8fbb-4c90-868c-733760a31dbb/', 0, 'customize_changeset', '', 0),
(11, 1, '2023-02-07 15:38:13', '2023-02-07 12:38:13', '{\n    \"angara38::custom_logo\": {\n        \"value\": 6,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-07 12:33:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b13a6399-d0c0-40e2-9221-30d8fad3b40e', '', '', '2023-02-07 15:38:13', '2023-02-07 12:38:13', '', 0, 'http://angara38/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2023-02-07 15:38:48', '2023-02-07 12:38:48', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://angara38/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-02-07 15:38:48', '2023-02-07 12:38:48', '', 2, 'http://angara38/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-02-07 15:39:03', '2023-02-07 12:39:03', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2023-02-07 16:21:31', '2023-02-07 13:21:31', '', 0, 'http://angara38/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-02-07 15:39:03', '2023-02-07 12:39:03', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-02-07 15:39:03', '2023-02-07 12:39:03', '', 13, 'http://angara38/?p=14', 0, 'revision', '', 0),
(19, 1, '2023-02-07 16:06:54', '2023-02-07 13:06:54', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Основная информация', '%d0%be%d1%81%d0%bd%d0%be%d0%b2%d0%bd%d0%b0%d1%8f-%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d1%8f', 'publish', 'closed', 'closed', '', 'group_63e2493608d69', '', '', '2023-02-07 16:33:14', '2023-02-07 13:33:14', '', 0, 'http://angara38/?post_type=acf-field-group&#038;p=19', 0, 'acf-field-group', '', 0),
(20, 1, '2023-02-07 16:06:54', '2023-02-07 13:06:54', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:822:\"Сюда вводим заголовок страницы, который отображается в шапке сайта. Сейчас там написано: \"Продажа и доставка инертных материалов.\"\r\nВНИМАНИЕ это поле дублируется так же в подвал сайта, рядом с логотипом.\r\nВНИМАНИЕ ЕЩЁ РАЗ. В шапке сайта это поле указано в заголовке первого уровня (h1), что в значительной степени может влиять на индексайию Вашего сайта поисковиками.\r\n\r\nПОле является обязательным, без особой необходимости не рекомендуется его изменять\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:73:\"Продажа и доставка инертных материалов.\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок в шапке сайта', 'header_title', 'publish', 'closed', 'closed', '', 'field_63e24936f5349', '', '', '2023-02-07 16:32:53', '2023-02-07 13:32:53', '', 19, 'http://angara38/?post_type=acf-field&#038;p=20', 1, 'acf-field', '', 0),
(21, 1, '2023-02-07 16:06:54', '2023-02-07 13:06:54', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:160:\"Сюда указываем нужную нам инфомрацию о компании КРАТКО. Сейчас там указан режим работы.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:51:\"Работаем без выходных 8:00-18:00\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:51:\"Работаем без выходных 8:00-18:00\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Режим работы', 'header_subtitle', 'publish', 'closed', 'closed', '', 'field_63e2499ff534a', '', '', '2023-02-07 16:32:53', '2023-02-07 13:32:53', '', 19, 'http://angara38/?post_type=acf-field&#038;p=21', 2, 'acf-field', '', 0),
(22, 1, '2023-02-07 16:12:40', '2023-02-07 13:12:40', '{\n    \"site_icon\": {\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-07 13:12:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '53a7fe8b-addb-4722-ba65-589037610ad6', '', '', '2023-02-07 16:12:40', '2023-02-07 13:12:40', '', 0, 'http://angara38/2023/02/07/53a7fe8b-addb-4722-ba65-589037610ad6/', 0, 'customize_changeset', '', 0),
(23, 1, '2023-02-07 16:21:06', '2023-02-07 13:21:06', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-02-07 16:21:06', '2023-02-07 13:21:06', '', 13, 'http://angara38/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-02-07 16:21:31', '2023-02-07 13:21:31', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-02-07 16:21:31', '2023-02-07 13:21:31', '', 13, 'http://angara38/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-02-07 16:32:46', '2023-02-07 13:32:46', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Заголовки страницы', 'заголовки_страницы', 'publish', 'closed', 'closed', '', 'field_63e2528cb81d9', '', '', '2023-02-07 16:32:53', '2023-02-07 13:32:53', '', 19, 'http://angara38/?post_type=acf-field&#038;p=25', 0, 'acf-field', '', 0),
(26, 1, '2023-02-07 16:33:11', '2023-02-07 13:33:11', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Контакты', 'контакты', 'publish', 'closed', 'closed', '', 'field_63e2530951a0a', '', '', '2023-02-07 16:33:11', '2023-02-07 13:33:11', '', 19, 'http://angara38/?post_type=acf-field&p=26', 3, 'acf-field', '', 0),
(34, 1, '2023-02-07 18:55:56', '2023-02-07 15:55:56', '', '+7(902)76-26-326', '', 'publish', 'open', 'open', '', '790276-26-326', '', '', '2023-02-08 10:59:39', '2023-02-08 02:59:39', '', 0, 'http://angara38/?p=34', 0, 'post', '', 0),
(35, 1, '2023-02-07 18:55:56', '2023-02-07 15:55:56', '', '+7(902)76-26-326', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-02-07 18:55:56', '2023-02-07 15:55:56', '', 34, 'http://angara38/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-02-07 18:56:20', '2023-02-07 15:56:20', '', '+7(924)60-80-779', '', 'publish', 'open', 'open', '', '792460-80-779', '', '', '2023-02-08 11:02:53', '2023-02-08 03:02:53', '', 0, 'http://angara38/?p=36', 0, 'post', '', 0),
(37, 1, '2023-02-07 18:56:20', '2023-02-07 15:56:20', '', '+7(924)60-80-779', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2023-02-07 18:56:20', '2023-02-07 15:56:20', '', 36, 'http://angara38/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-02-07 18:56:46', '2023-02-07 15:56:46', '', '+7(914)89-18-459', '', 'publish', 'open', 'open', '', '791489-18-459', '', '', '2023-02-08 11:03:09', '2023-02-08 03:03:09', '', 0, 'http://angara38/?p=38', 0, 'post', '', 0),
(39, 1, '2023-02-07 18:56:46', '2023-02-07 15:56:46', '', '+7(914)89-18-459', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-02-07 18:56:46', '2023-02-07 15:56:46', '', 38, 'http://angara38/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-02-08 08:30:34', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-08 08:30:34', '0000-00-00 00:00:00', '', 0, 'http://angara38/?post_type=acf-field-group&p=40', 0, 'acf-field-group', '', 0),
(51, 1, '2023-02-08 10:54:08', '2023-02-08 02:54:08', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"category:phonenumbers\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'контакты', 'kontakty', 'publish', 'closed', 'closed', '', 'group_63e30e51918ce', '', '', '2023-02-08 10:54:08', '2023-02-08 02:54:08', '', 0, 'http://angara38/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2023-02-08 10:54:08', '2023-02-08 02:54:08', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:8:\"operator\";s:0:\"\";s:5:\"value\";s:0:\"\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:2:\"on\";s:2:\"on\";s:3:\"off\";s:3:\"off\";}s:13:\"default_value\";s:3:\"off\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'на кнопку вызова', 'phone_button', 'publish', 'closed', 'closed', '', 'field_63e30e511431c', '', '', '2023-02-08 10:54:08', '2023-02-08 02:54:08', '', 51, 'http://angara38/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2023-02-08 10:56:35', '2023-02-08 02:56:35', '', '+7(902)76-26-326', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-02-08 10:56:35', '2023-02-08 02:56:35', '', 34, 'http://angara38/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-02-08 10:59:11', '2023-02-08 02:59:11', '', '+7(902)76-26-326', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-02-08 10:59:11', '2023-02-08 02:59:11', '', 34, 'http://angara38/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-02-08 10:59:39', '2023-02-08 02:59:39', '', '+7(902)76-26-326', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-02-08 10:59:39', '2023-02-08 02:59:39', '', 34, 'http://angara38/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-02-08 10:59:51', '2023-02-08 02:59:51', '', '+7(924)60-80-779', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2023-02-08 10:59:51', '2023-02-08 02:59:51', '', 36, 'http://angara38/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-02-08 11:02:53', '2023-02-08 03:02:53', '', '+7(924)60-80-779', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2023-02-08 11:02:53', '2023-02-08 03:02:53', '', 36, 'http://angara38/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-02-08 11:03:09', '2023-02-08 03:03:09', '', '+7(914)89-18-459', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-02-08 11:03:09', '2023-02-08 03:03:09', '', 38, 'http://angara38/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-02-08 13:26:42', '2023-02-08 05:26:42', '[tel* tel-383 placeholder \"Ваш номер\"]\r\n<button class=\"button\">Оставить заявку</button>\n1\nЗаявка на обратный звонок с сайта Ангара38\nrequet@angara38\npfirulin@yandex.ru\nСвяжитесь с клиентом по номеру [tel-383]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Ангара38 angara38.ru\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@angara38>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСпасибо, мы свяжемся с вами в ближайшее время.\nЧто-то пошло не так, пожалуйста попробуйте позже\nПожалуйста укажите свой номер телефона\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nЭто обязательная строка\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-02-08 14:04:20', '2023-02-08 06:04:20', '', 0, 'http://angara38/?post_type=wpcf7_contact_form&#038;p=59', 0, 'wpcf7_contact_form', '', 0),
(60, 1, '2023-02-08 15:53:37', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-08 15:53:37', '0000-00-00 00:00:00', '', 0, 'http://angara38/?post_type=acf-field-group&p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2023-02-08 15:54:24', '2023-02-08 07:54:24', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"category:product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Продукты', 'produkty', 'publish', 'closed', 'closed', '', 'group_63e355159126e', '', '', '2023-02-08 16:06:23', '2023-02-08 08:06:23', '', 0, 'http://angara38/?post_type=acf-field-group&#038;p=61', 0, 'acf-field-group', '', 0),
(62, 1, '2023-02-08 15:54:24', '2023-02-08 07:54:24', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:61:\"СЮда загружаем фотографию товара\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Фотография продукта', 'product_img', 'publish', 'closed', 'closed', '', 'field_63e35516198fb', '', '', '2023-02-08 16:06:23', '2023-02-08 08:06:23', '', 61, 'http://angara38/?post_type=acf-field&#038;p=62', 0, 'acf-field', '', 0),
(63, 1, '2023-02-08 16:06:23', '2023-02-08 08:06:23', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:31:\"СТоимость товара\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Описание товара', 'product_descript', 'publish', 'closed', 'closed', '', 'field_63e356dd4f407', '', '', '2023-02-08 16:06:23', '2023-02-08 08:06:23', '', 61, 'http://angara38/?post_type=acf-field&p=63', 1, 'acf-field', '', 0),
(64, 1, '2023-02-08 16:06:23', '2023-02-08 08:06:23', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Стоимость товара', 'product_coast', 'publish', 'closed', 'closed', '', 'field_63e357df4f408', '', '', '2023-02-08 16:06:23', '2023-02-08 08:06:23', '', 61, 'http://angara38/?post_type=acf-field&p=64', 2, 'acf-field', '', 0),
(65, 1, '2023-02-08 16:10:10', '2023-02-08 08:10:10', '', 'Песок речной', '', 'publish', 'open', 'open', '', 'pesok-rechnoj', '', '', '2023-02-08 22:57:27', '2023-02-08 14:57:27', '', 0, 'http://angara38/?p=65', 0, 'post', '', 0),
(66, 1, '2023-02-08 16:09:03', '2023-02-08 08:09:03', '', 'riversand', '', 'inherit', 'open', 'closed', '', 'riversand', '', '', '2023-02-08 22:57:06', '2023-02-08 14:57:06', '', 65, 'http://angara38/wp-content/uploads/2023/02/riversand.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2023-02-08 16:10:10', '2023-02-08 08:10:10', '', 'Песок речной', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-02-08 16:10:10', '2023-02-08 08:10:10', '', 65, 'http://angara38/?p=67', 0, 'revision', '', 0),
(68, 1, '2023-02-08 16:11:31', '2023-02-08 08:11:31', '', 'Песок речной мытый', '', 'publish', 'open', 'open', '', 'pesok-rechnoj-mytyj', '', '', '2023-02-08 22:56:52', '2023-02-08 14:56:52', '', 0, 'http://angara38/?p=68', 0, 'post', '', 0),
(69, 1, '2023-02-08 16:10:42', '2023-02-08 08:10:42', '', 'washedriversand', '', 'inherit', 'open', 'closed', '', 'washedriversand', '', '', '2023-02-08 16:10:58', '2023-02-08 08:10:58', '', 68, 'http://angara38/wp-content/uploads/2023/02/washedriversand.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2023-02-08 16:11:31', '2023-02-08 08:11:31', '', 'Песок речной мытый', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-02-08 16:11:31', '2023-02-08 08:11:31', '', 68, 'http://angara38/?p=70', 0, 'revision', '', 0),
(71, 1, '2023-02-08 16:16:30', '2023-02-08 08:16:30', '', 'Песок карьерный', '', 'publish', 'open', 'open', '', 'pesok-karernyj', '', '', '2023-02-08 22:55:41', '2023-02-08 14:55:41', '', 0, 'http://angara38/?p=71', 0, 'post', '', 0),
(72, 1, '2023-02-08 16:15:42', '2023-02-08 08:15:42', '', 'cariersand', '', 'inherit', 'open', 'closed', '', 'cariersand', '', '', '2023-02-08 16:16:07', '2023-02-08 08:16:07', '', 71, 'http://angara38/wp-content/uploads/2023/02/cariersand.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2023-02-08 16:16:30', '2023-02-08 08:16:30', '', 'Песок карьерный', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2023-02-08 16:16:30', '2023-02-08 08:16:30', '', 71, 'http://angara38/?p=73', 0, 'revision', '', 0),
(74, 1, '2023-02-08 16:19:07', '2023-02-08 08:19:07', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Песок для детских песочниц (сертифицирован)', '', 'publish', 'open', 'open', '', 'pesok-dlya-detskih-pesochniczsertificzirovan', '', '', '2023-02-09 11:12:36', '2023-02-09 03:12:36', '', 0, 'http://angara38/?p=74', 0, 'post', '', 0),
(75, 1, '2023-02-08 16:18:25', '2023-02-08 08:18:25', '', 'sandforbaby', '', 'inherit', 'open', 'closed', '', 'sandforbaby', '', '', '2023-02-08 16:18:38', '2023-02-08 08:18:38', '', 74, 'http://angara38/wp-content/uploads/2023/02/sandforbaby.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2023-02-08 16:19:07', '2023-02-08 08:19:07', '', 'Песок для детских песочниц(сертифицирован)', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2023-02-08 16:19:07', '2023-02-08 08:19:07', '', 74, 'http://angara38/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-02-08 16:23:04', '2023-02-08 08:23:04', '', 'Мелкая', '', 'publish', 'open', 'open', '', 'melkaya', '', '', '2023-02-08 22:45:38', '2023-02-08 14:45:38', '', 0, 'http://angara38/?p=77', 0, 'post', '', 0),
(78, 1, '2023-02-08 16:21:52', '2023-02-08 08:21:52', '', 'pgssmol', '', 'inherit', 'open', 'closed', '', 'pgssmol', '', '', '2023-02-08 16:22:04', '2023-02-08 08:22:04', '', 77, 'http://angara38/wp-content/uploads/2023/02/pgssmol.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2023-02-08 16:23:04', '2023-02-08 08:23:04', '', 'Мелкая', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2023-02-08 16:23:04', '2023-02-08 08:23:04', '', 77, 'http://angara38/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-02-08 16:25:45', '2023-02-08 08:25:45', '', 'Жёлтая', '', 'publish', 'open', 'open', '', 'zhyoltaya', '', '', '2023-02-08 16:27:18', '2023-02-08 08:27:18', '', 0, 'http://angara38/?p=80', 0, 'post', '', 0),
(81, 1, '2023-02-08 16:25:03', '2023-02-08 08:25:03', '', 'pgsyelou', '', 'inherit', 'open', 'closed', '', 'pgsyelou', '', '', '2023-02-08 16:25:11', '2023-02-08 08:25:11', '', 80, 'http://angara38/wp-content/uploads/2023/02/pgsyelou.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2023-02-08 16:25:45', '2023-02-08 08:25:45', '', 'Жёлтая', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2023-02-08 16:25:45', '2023-02-08 08:25:45', '', 80, 'http://angara38/?p=82', 0, 'revision', '', 0),
(83, 1, '2023-02-08 16:27:14', '2023-02-08 08:27:14', '', 'Жёлтая', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2023-02-08 16:27:14', '2023-02-08 08:27:14', '', 80, 'http://angara38/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-02-08 16:27:18', '2023-02-08 08:27:18', '', 'Жёлтая', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2023-02-08 16:27:18', '2023-02-08 08:27:18', '', 80, 'http://angara38/?p=84', 0, 'revision', '', 0),
(85, 1, '2023-02-08 16:30:28', '2023-02-08 08:30:28', '', 'Крупная', '', 'publish', 'open', 'open', '', 'krupnaya', '', '', '2023-02-08 22:44:42', '2023-02-08 14:44:42', '', 0, 'http://angara38/?p=85', 0, 'post', '', 0),
(86, 1, '2023-02-08 16:29:48', '2023-02-08 08:29:48', '', 'pgsbig', '', 'inherit', 'open', 'closed', '', 'pgsbig', '', '', '2023-02-08 16:29:56', '2023-02-08 08:29:56', '', 85, 'http://angara38/wp-content/uploads/2023/02/pgsbig.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2023-02-08 16:30:28', '2023-02-08 08:30:28', '', 'Крупная', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2023-02-08 16:30:28', '2023-02-08 08:30:28', '', 85, 'http://angara38/?p=87', 0, 'revision', '', 0),
(88, 1, '2023-02-08 16:33:12', '2023-02-08 08:33:12', '', 'Дорожная', '', 'publish', 'open', 'open', '', 'dorozhnaya', '', '', '2023-02-08 22:43:43', '2023-02-08 14:43:43', '', 0, 'http://angara38/?p=88', 0, 'post', '', 0),
(89, 1, '2023-02-08 16:32:13', '2023-02-08 08:32:13', '', 'roadspgs', '', 'inherit', 'open', 'closed', '', 'roadspgs', '', '', '2023-02-08 16:32:22', '2023-02-08 08:32:22', '', 88, 'http://angara38/wp-content/uploads/2023/02/roadspgs.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2023-02-08 16:33:12', '2023-02-08 08:33:12', '', 'Дорожная', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2023-02-08 16:33:12', '2023-02-08 08:33:12', '', 88, 'http://angara38/?p=90', 0, 'revision', '', 0),
(91, 1, '2023-02-08 16:36:07', '2023-02-08 08:36:07', '', 'Гравий природный (галька) (фр.5-20мм)', '', 'publish', 'open', 'open', '', 'otsev', '', '', '2023-02-08 22:49:26', '2023-02-08 14:49:26', '', 0, 'http://angara38/?p=91', 0, 'post', '', 0),
(92, 1, '2023-02-08 16:35:28', '2023-02-08 08:35:28', '', 'rollback', '', 'inherit', 'open', 'closed', '', 'rollback', '', '', '2023-02-08 16:35:35', '2023-02-08 08:35:35', '', 91, 'http://angara38/wp-content/uploads/2023/02/rollback.webp', 0, 'attachment', 'image/webp', 0),
(93, 1, '2023-02-08 16:36:07', '2023-02-08 08:36:07', '', 'Отсев', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2023-02-08 16:36:07', '2023-02-08 08:36:07', '', 91, 'http://angara38/?p=93', 0, 'revision', '', 0),
(94, 1, '2023-02-08 16:43:57', '2023-02-08 08:43:57', '', 'Щебень гравийный (фр. 5-70мм)', '', 'publish', 'open', 'open', '', 'shheben-gravijnyj-fr-5-70mm', '', '', '2023-02-08 22:21:15', '2023-02-08 14:21:15', '', 0, 'http://angara38/?p=94', 0, 'post', '', 0),
(95, 1, '2023-02-08 16:43:40', '2023-02-08 08:43:40', '', 'sheben1', '', 'inherit', 'open', 'closed', '', 'sheben1', '', '', '2023-02-08 16:43:52', '2023-02-08 08:43:52', '', 94, 'http://angara38/wp-content/uploads/2023/02/sheben1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2023-02-08 16:43:57', '2023-02-08 08:43:57', '', 'Щебень гравийный (фр. 5-70мм)', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2023-02-08 16:43:57', '2023-02-08 08:43:57', '', 94, 'http://angara38/?p=96', 0, 'revision', '', 0),
(97, 1, '2023-02-08 16:48:14', '2023-02-08 08:48:14', '', 'Щебень гравийный (фр.5-20мм )', '', 'publish', 'open', 'open', '', 'shheben-gravijnyj-fr-5-20mm', '', '', '2023-02-08 22:20:05', '2023-02-08 14:20:05', '', 0, 'http://angara38/?p=97', 0, 'post', '', 0),
(98, 1, '2023-02-08 16:48:14', '2023-02-08 08:48:14', '', 'Щебень гравийный (фр.5-20мм )', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2023-02-08 16:48:14', '2023-02-08 08:48:14', '', 97, 'http://angara38/?p=98', 0, 'revision', '', 0),
(99, 1, '2023-02-08 16:49:26', '2023-02-08 08:49:26', '', 'Щебень гравийный (фр. 20-40мм)', '', 'publish', 'open', 'open', '', 'shheben-gravijnyj-fr-20-40mm', '', '', '2023-02-08 22:19:08', '2023-02-08 14:19:08', '', 0, 'http://angara38/?p=99', 0, 'post', '', 0),
(100, 1, '2023-02-08 16:49:26', '2023-02-08 08:49:26', '', 'Щебень гравийный (фр. 20-40мм)', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2023-02-08 16:49:26', '2023-02-08 08:49:26', '', 99, 'http://angara38/?p=100', 0, 'revision', '', 0),
(101, 1, '2023-02-08 16:50:55', '2023-02-08 08:50:55', '', 'Щебень гравийный (фр. 5-20мм)', '', 'publish', 'open', 'open', '', 'shheben-gravijnyj-fr-5-20mm-2', '', '', '2023-02-08 22:18:25', '2023-02-08 14:18:25', '', 0, 'http://angara38/?p=101', 0, 'post', '', 0),
(102, 1, '2023-02-08 16:50:55', '2023-02-08 08:50:55', '', 'Щебень гравийный (фр. 5-20мм)', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2023-02-08 16:50:55', '2023-02-08 08:50:55', '', 101, 'http://angara38/?p=102', 0, 'revision', '', 0),
(103, 1, '2023-02-08 16:51:55', '2023-02-08 08:51:55', '', 'Щебень гравийный (фр.20-40мм)', '', 'publish', 'open', 'open', '', 'shheben-gravijnyj-fr-20-40mm-2', '', '', '2023-02-08 22:17:43', '2023-02-08 14:17:43', '', 0, 'http://angara38/?p=103', 0, 'post', '', 0),
(104, 1, '2023-02-08 16:51:55', '2023-02-08 08:51:55', '', 'Щебень гравийный (фр.20-40мм)', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2023-02-08 16:51:55', '2023-02-08 08:51:55', '', 103, 'http://angara38/?p=104', 0, 'revision', '', 0),
(105, 1, '2023-02-08 16:54:34', '2023-02-08 08:54:34', '', 'Щебень мраморный (фр.5-10)', '', 'publish', 'open', 'open', '', 'shheben-mramornyj-fr-5-10', '', '', '2023-02-08 22:16:51', '2023-02-08 14:16:51', '', 0, 'http://angara38/?p=105', 0, 'post', '', 0),
(106, 1, '2023-02-08 16:54:03', '2023-02-08 08:54:03', '', 'mramorsheben', '', 'inherit', 'open', 'closed', '', 'mramorsheben', '', '', '2023-02-08 16:54:15', '2023-02-08 08:54:15', '', 105, 'http://angara38/wp-content/uploads/2023/02/mramorsheben.webp', 0, 'attachment', 'image/webp', 0),
(107, 1, '2023-02-08 16:54:34', '2023-02-08 08:54:34', '', 'Щебень мраморный (фр.5-10)', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2023-02-08 16:54:34', '2023-02-08 08:54:34', '', 105, 'http://angara38/?p=107', 0, 'revision', '', 0),
(108, 1, '2023-02-08 16:55:10', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-08 16:55:10', '0000-00-00 00:00:00', '', 0, 'http://angara38/?p=108', 0, 'post', '', 0),
(109, 1, '2023-02-08 16:56:22', '2023-02-08 08:56:22', '', 'Отсев', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2023-02-08 16:56:22', '2023-02-08 08:56:22', '', 91, 'http://angara38/?p=109', 0, 'revision', '', 0),
(110, 1, '2023-02-08 17:00:02', '2023-02-08 09:00:02', '', 'Щебень скальник-песчаник (фр.0,5-0,7мм)', '', 'publish', 'open', 'open', '', 'shheben-skalnik-peschanik-fr-05-07mm-ot680r-t-dostavka', '', '', '2023-02-08 22:12:59', '2023-02-08 14:12:59', '', 0, 'http://angara38/?p=110', 0, 'post', '', 0),
(111, 1, '2023-02-08 16:58:58', '2023-02-08 08:58:58', '', 'peschanik', '', 'inherit', 'open', 'closed', '', 'peschanik', '', '', '2023-02-08 16:59:11', '2023-02-08 08:59:11', '', 110, 'http://angara38/wp-content/uploads/2023/02/peschanik.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2023-02-08 17:00:02', '2023-02-08 09:00:02', '', 'Щебень скальник-песчаник (фр.0,5-0,7мм) от680р /т+доставка', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2023-02-08 17:00:02', '2023-02-08 09:00:02', '', 110, 'http://angara38/?p=112', 0, 'revision', '', 0),
(113, 1, '2023-02-08 17:00:42', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-08 17:00:42', '0000-00-00 00:00:00', '', 0, 'http://angara38/?p=113', 0, 'post', '', 0),
(114, 1, '2023-02-08 18:21:45', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-08 18:21:45', '0000-00-00 00:00:00', '', 0, 'http://angara38/?page_id=114', 0, 'page', '', 0),
(115, 1, '2023-02-08 18:22:08', '2023-02-08 10:22:08', '', 'Песок', '', 'publish', 'closed', 'closed', '', 'sand', '', '', '2023-02-08 18:47:34', '2023-02-08 10:47:34', '', 0, 'http://angara38/?page_id=115', 0, 'page', '', 0),
(116, 1, '2023-02-08 18:22:08', '2023-02-08 10:22:08', '', 'Песок', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2023-02-08 18:22:08', '2023-02-08 10:22:08', '', 115, 'http://angara38/?p=116', 0, 'revision', '', 0),
(117, 1, '2023-02-08 18:25:49', '2023-02-08 10:25:49', '', 'ПГС', '', 'publish', 'closed', 'closed', '', 'pgs', '', '', '2023-02-08 18:43:33', '2023-02-08 10:43:33', '', 0, 'http://angara38/?page_id=117', 0, 'page', '', 0),
(118, 1, '2023-02-08 18:25:49', '2023-02-08 10:25:49', '', 'ПГС', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2023-02-08 18:25:49', '2023-02-08 10:25:49', '', 117, 'http://angara38/?p=118', 0, 'revision', '', 0),
(119, 1, '2023-02-08 18:26:19', '2023-02-08 10:26:19', '', 'Отсев', '', 'publish', 'closed', 'closed', '', 'dropout', '', '', '2023-02-08 18:43:16', '2023-02-08 10:43:16', '', 0, 'http://angara38/?page_id=119', 0, 'page', '', 0),
(120, 1, '2023-02-08 18:26:19', '2023-02-08 10:26:19', '', 'Отсев', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2023-02-08 18:26:19', '2023-02-08 10:26:19', '', 119, 'http://angara38/?p=120', 0, 'revision', '', 0),
(121, 1, '2023-02-08 18:26:33', '2023-02-08 10:26:33', '', 'Щебень', '', 'publish', 'closed', 'closed', '', 'crushed_stone', '', '', '2023-02-08 22:15:16', '2023-02-08 14:15:16', '', 0, 'http://angara38/?page_id=121', 0, 'page', '', 0),
(122, 1, '2023-02-08 18:26:33', '2023-02-08 10:26:33', '', 'Щебень', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2023-02-08 18:26:33', '2023-02-08 10:26:33', '', 121, 'http://angara38/?p=122', 0, 'revision', '', 0),
(123, 1, '2023-02-08 18:26:57', '2023-02-08 10:26:57', '', 'Откат', '', 'publish', 'closed', 'closed', '', 'otkat', '', '', '2023-02-08 18:42:53', '2023-02-08 10:42:53', '', 0, 'http://angara38/?page_id=123', 0, 'page', '', 0),
(124, 1, '2023-02-08 18:26:57', '2023-02-08 10:26:57', '', 'Откат', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2023-02-08 18:26:57', '2023-02-08 10:26:57', '', 123, 'http://angara38/?p=124', 0, 'revision', '', 0),
(125, 1, '2023-02-08 18:27:02', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-08 18:27:02', '0000-00-00 00:00:00', '', 0, 'http://angara38/?page_id=125', 0, 'page', '', 0),
(126, 1, '2023-02-08 18:27:40', '2023-02-08 10:27:40', '', 'Плитняк', '', 'publish', 'closed', 'closed', '', 'flagstone', '', '', '2023-02-08 18:47:57', '2023-02-08 10:47:57', '', 0, 'http://angara38/?page_id=126', 0, 'page', '', 0),
(127, 1, '2023-02-08 18:27:40', '2023-02-08 10:27:40', '', 'Плитняк', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2023-02-08 18:27:40', '2023-02-08 10:27:40', '', 126, 'http://angara38/?p=127', 0, 'revision', '', 0),
(128, 1, '2023-02-08 18:27:57', '2023-02-08 10:27:57', '', 'Чернозем', '', 'publish', 'closed', 'closed', '', 'chernozem', '', '', '2023-02-08 21:15:45', '2023-02-08 13:15:45', '', 0, 'http://angara38/?page_id=128', 0, 'page', '', 0),
(129, 1, '2023-02-08 18:27:57', '2023-02-08 10:27:57', '', 'Чернозем', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2023-02-08 18:27:57', '2023-02-08 10:27:57', '', 128, 'http://angara38/?p=129', 0, 'revision', '', 0),
(130, 1, '2023-02-08 18:28:13', '2023-02-08 10:28:13', '', 'Перегной', '', 'publish', 'closed', 'closed', '', 'humus', '', '', '2023-02-08 18:47:11', '2023-02-08 10:47:11', '', 0, 'http://angara38/?page_id=130', 0, 'page', '', 0),
(131, 1, '2023-02-08 18:28:13', '2023-02-08 10:28:13', '', 'Перегной', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2023-02-08 18:28:13', '2023-02-08 10:28:13', '', 130, 'http://angara38/?p=131', 0, 'revision', '', 0),
(132, 1, '2023-02-08 18:28:29', '2023-02-08 10:28:29', '', 'Грунт', '', 'publish', 'closed', 'closed', '', 'ground', '', '', '2023-02-08 21:08:23', '2023-02-08 13:08:23', '', 0, 'http://angara38/?page_id=132', 0, 'page', '', 0),
(133, 1, '2023-02-08 18:28:29', '2023-02-08 10:28:29', '', 'Грунт', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2023-02-08 18:28:29', '2023-02-08 10:28:29', '', 132, 'http://angara38/?p=133', 0, 'revision', '', 0),
(134, 1, '2023-02-08 18:28:47', '2023-02-08 10:28:47', '', 'Уголь', '', 'publish', 'closed', 'closed', '', 'coal', '', '', '2023-02-08 18:48:15', '2023-02-08 10:48:15', '', 0, 'http://angara38/?page_id=134', 0, 'page', '', 0),
(135, 1, '2023-02-08 18:28:47', '2023-02-08 10:28:47', '', 'Уголь', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2023-02-08 18:28:47', '2023-02-08 10:28:47', '', 134, 'http://angara38/?p=135', 0, 'revision', '', 0),
(136, 1, '2023-02-08 18:29:09', '2023-02-08 10:29:09', '', 'Вывоз снега', '', 'publish', 'closed', 'closed', '', 'snow_removal', '', '', '2023-02-08 18:42:15', '2023-02-08 10:42:15', '', 0, 'http://angara38/?page_id=136', 0, 'page', '', 0),
(137, 1, '2023-02-08 18:29:09', '2023-02-08 10:29:09', '', 'Вывоз снега', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2023-02-08 18:29:09', '2023-02-08 10:29:09', '', 136, 'http://angara38/?p=137', 0, 'revision', '', 0),
(138, 1, '2023-02-08 18:29:26', '2023-02-08 10:29:26', '', 'Вывоз мусора', '', 'publish', 'closed', 'closed', '', 'garbage_removal', '', '', '2023-02-08 18:41:58', '2023-02-08 10:41:58', '', 0, 'http://angara38/?page_id=138', 0, 'page', '', 0),
(139, 1, '2023-02-08 18:29:26', '2023-02-08 10:29:26', '', 'Вывоз мусора', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2023-02-08 18:29:26', '2023-02-08 10:29:26', '', 138, 'http://angara38/?p=139', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(140, 1, '2023-02-08 18:51:38', '2023-02-08 10:51:38', '{\n    \"nav_menu[-6996139026958334000]\": {\n        \"value\": {\n            \"name\": \"Main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:50:58\"\n    },\n    \"nav_menu_item[-3738708937889554400]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"url\": \"http://angara38/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:50:58\"\n    },\n    \"nav_menu_item[-3288921772474937300]\": {\n        \"value\": {\n            \"object_id\": 138,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 13,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0412\\u044b\\u0432\\u043e\\u0437 \\u043c\\u0443\\u0441\\u043e\\u0440\\u0430\",\n            \"url\": \"http://angara38/garbage_removal/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0412\\u044b\\u0432\\u043e\\u0437 \\u043c\\u0443\\u0441\\u043e\\u0440\\u0430\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:51:38\"\n    },\n    \"nav_menu_item[-1068214171732949000]\": {\n        \"value\": {\n            \"object_id\": 136,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 12,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0412\\u044b\\u0432\\u043e\\u0437 \\u0441\\u043d\\u0435\\u0433\\u0430\",\n            \"url\": \"http://angara38/snow_removal/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0412\\u044b\\u0432\\u043e\\u0437 \\u0441\\u043d\\u0435\\u0433\\u0430\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:51:38\"\n    },\n    \"nav_menu_item[-4993956303186260000]\": {\n        \"value\": {\n            \"object_id\": 134,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 11,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0423\\u0433\\u043e\\u043b\\u044c\",\n            \"url\": \"http://angara38/coal/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0423\\u0433\\u043e\\u043b\\u044c\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:51:38\"\n    },\n    \"nav_menu_item[-6803272366010675000]\": {\n        \"value\": {\n            \"object_id\": 132,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 10,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0413\\u0440\\u0443\\u043d\\u0442\",\n            \"url\": \"http://angara38/ground/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u0440\\u0443\\u043d\\u0442\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:51:38\"\n    },\n    \"nav_menu_item[-8701873430452324000]\": {\n        \"value\": {\n            \"object_id\": 130,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041f\\u0435\\u0440\\u0435\\u0433\\u043d\\u043e\\u0439\",\n            \"url\": \"http://angara38/humus/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041f\\u0435\\u0440\\u0435\\u0433\\u043d\\u043e\\u0439\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:51:38\"\n    },\n    \"nav_menu_item[-4728711226099159000]\": {\n        \"value\": {\n            \"object_id\": 128,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0427\\u0435\\u0440\\u043d\\u043e\\u0437\\u0435\\u043c\",\n            \"url\": \"http://angara38/chernozem/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0427\\u0435\\u0440\\u043d\\u043e\\u0437\\u0435\\u043c\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:51:38\"\n    },\n    \"nav_menu_item[-7606593658827319000]\": {\n        \"value\": {\n            \"object_id\": 126,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041f\\u043b\\u0438\\u0442\\u043d\\u044f\\u043a\",\n            \"url\": \"http://angara38/flagstone/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041f\\u043b\\u0438\\u0442\\u043d\\u044f\\u043a\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:51:38\"\n    },\n    \"nav_menu_item[-3160457146480781300]\": {\n        \"value\": {\n            \"object_id\": 121,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0429\\u0435\\u0431\\u0435\\u043d\\u044c\",\n            \"url\": \"http://angara38/crushed_stone/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0429\\u0435\\u0431\\u0435\\u043d\\u044c\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:50:58\"\n    },\n    \"nav_menu_item[-6802302650025599000]\": {\n        \"value\": {\n            \"object_id\": 119,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e\\u0442\\u0441\\u0435\\u0432\",\n            \"url\": \"http://angara38/dropout/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e\\u0442\\u0441\\u0435\\u0432\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:50:58\"\n    },\n    \"nav_menu_item[-7555690226832611000]\": {\n        \"value\": {\n            \"object_id\": 117,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041f\\u0413\\u0421\",\n            \"url\": \"http://angara38/pgs/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041f\\u0413\\u0421\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:50:58\"\n    },\n    \"nav_menu_item[-2616794955731484700]\": {\n        \"value\": {\n            \"object_id\": 115,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041f\\u0435\\u0441\\u043e\\u043a\",\n            \"url\": \"http://angara38/sand/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041f\\u0435\\u0441\\u043e\\u043a\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:50:58\"\n    },\n    \"nav_menu_item[-6485362877452581000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:50:58\"\n    },\n    \"nav_menu_item[-6694496373053446000]\": {\n        \"value\": {\n            \"object_id\": 123,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e\\u0442\\u043a\\u0430\\u0442\",\n            \"url\": \"http://angara38/otkat/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e\\u0442\\u043a\\u0430\\u0442\",\n            \"nav_menu_term_id\": -6996139026958334000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 10:51:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d2c9646-e4b0-4efc-aee7-d9e1cc8db201', '', '', '2023-02-08 18:51:38', '2023-02-08 10:51:38', '', 0, 'http://angara38/?p=140', 0, 'customize_changeset', '', 0),
(141, 1, '2023-02-08 18:51:38', '2023-02-08 10:51:38', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2023-02-08 18:51:38', '2023-02-08 10:51:38', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/141/', 1, 'nav_menu_item', '', 0),
(142, 1, '2023-02-08 18:51:38', '2023-02-08 10:51:38', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2023-02-08 18:51:38', '2023-02-08 10:51:38', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/142/', 13, 'nav_menu_item', '', 0),
(143, 1, '2023-02-08 18:51:38', '2023-02-08 10:51:38', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2023-02-08 18:51:38', '2023-02-08 10:51:38', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/143/', 12, 'nav_menu_item', '', 0),
(144, 1, '2023-02-08 18:51:38', '2023-02-08 10:51:38', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2023-02-08 18:51:38', '2023-02-08 10:51:38', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/144/', 11, 'nav_menu_item', '', 0),
(145, 1, '2023-02-08 18:51:38', '2023-02-08 10:51:38', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2023-02-08 18:51:38', '2023-02-08 10:51:38', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/145/', 10, 'nav_menu_item', '', 0),
(146, 1, '2023-02-08 18:51:39', '2023-02-08 10:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2023-02-08 18:51:39', '2023-02-08 10:51:39', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/146/', 9, 'nav_menu_item', '', 0),
(147, 1, '2023-02-08 18:51:39', '2023-02-08 10:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2023-02-08 18:51:39', '2023-02-08 10:51:39', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/147/', 8, 'nav_menu_item', '', 0),
(148, 1, '2023-02-08 18:51:39', '2023-02-08 10:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2023-02-08 18:51:39', '2023-02-08 10:51:39', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/148/', 7, 'nav_menu_item', '', 0),
(149, 1, '2023-02-08 18:51:39', '2023-02-08 10:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2023-02-08 18:51:39', '2023-02-08 10:51:39', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/149/', 5, 'nav_menu_item', '', 0),
(150, 1, '2023-02-08 18:51:39', '2023-02-08 10:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2023-02-08 18:51:39', '2023-02-08 10:51:39', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/150/', 4, 'nav_menu_item', '', 0),
(151, 1, '2023-02-08 18:51:39', '2023-02-08 10:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2023-02-08 18:51:39', '2023-02-08 10:51:39', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/151/', 3, 'nav_menu_item', '', 0),
(152, 1, '2023-02-08 18:51:39', '2023-02-08 10:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '152', '', '', '2023-02-08 18:51:39', '2023-02-08 10:51:39', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/152/', 2, 'nav_menu_item', '', 0),
(153, 1, '2023-02-08 18:51:39', '2023-02-08 10:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '153', '', '', '2023-02-08 18:51:39', '2023-02-08 10:51:39', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/153/', 6, 'nav_menu_item', '', 0),
(154, 1, '2023-02-08 21:13:33', '2023-02-08 13:13:33', '', 'Чернозем', '', 'publish', 'open', 'open', '', 'chernozem', '', '', '2023-02-08 21:18:30', '2023-02-08 13:18:30', '', 0, 'http://angara38/?p=154', 0, 'post', '', 0),
(155, 1, '2023-02-08 21:12:32', '2023-02-08 13:12:32', '', 'chernozem', '', 'inherit', 'open', 'closed', '', 'chernozem-2', '', '', '2023-02-08 21:12:45', '2023-02-08 13:12:45', '', 154, 'http://angara38/wp-content/uploads/2023/02/chernozem.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2023-02-08 21:13:33', '2023-02-08 13:13:33', '', 'Чернозем', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2023-02-08 21:13:33', '2023-02-08 13:13:33', '', 154, 'http://angara38/?p=156', 0, 'revision', '', 0),
(157, 1, '2023-02-08 21:18:30', '2023-02-08 13:18:30', '', 'Чернозем', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2023-02-08 21:18:30', '2023-02-08 13:18:30', '', 154, 'http://angara38/?p=157', 0, 'revision', '', 0),
(158, 1, '2023-02-08 21:24:57', '2023-02-08 13:24:57', '', 'Уголь Харантуйский', '', 'publish', 'open', 'open', '', 'ugol-harantujskij', '', '', '2023-02-08 21:26:15', '2023-02-08 13:26:15', '', 0, 'http://angara38/?p=158', 0, 'post', '', 0),
(159, 1, '2023-02-08 21:23:27', '2023-02-08 13:23:27', '', 'coal', '', 'inherit', 'open', 'closed', '', 'coal-2', '', '', '2023-02-08 21:23:34', '2023-02-08 13:23:34', '', 158, 'http://angara38/wp-content/uploads/2023/02/coal.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2023-02-08 21:24:57', '2023-02-08 13:24:57', '', 'Уголь Харантуйский', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2023-02-08 21:24:57', '2023-02-08 13:24:57', '', 158, 'http://angara38/?p=160', 0, 'revision', '', 0),
(161, 1, '2023-02-08 21:26:15', '2023-02-08 13:26:15', '', 'Уголь Харантуйский', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2023-02-08 21:26:15', '2023-02-08 13:26:15', '', 158, 'http://angara38/?p=161', 0, 'revision', '', 0),
(162, 1, '2023-02-08 21:28:09', '2023-02-08 13:28:09', '', 'Уголь Черемховский отборный (фр 13-80мм)', '', 'publish', 'open', 'open', '', 'ugol-cheremhovskij-otbornyj-fr-13-80mm', '', '', '2023-02-08 21:29:30', '2023-02-08 13:29:30', '', 0, 'http://angara38/?p=162', 0, 'post', '', 0),
(163, 1, '2023-02-08 21:28:09', '2023-02-08 13:28:09', '', 'Уголь Черемховский отборный (фр 13-80мм)', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2023-02-08 21:28:09', '2023-02-08 13:28:09', '', 162, 'http://angara38/?p=163', 0, 'revision', '', 0),
(164, 1, '2023-02-08 21:29:30', '2023-02-08 13:29:30', '', 'Уголь Черемховский отборный (фр 13-80мм)', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2023-02-08 21:29:30', '2023-02-08 13:29:30', '', 162, 'http://angara38/?p=164', 0, 'revision', '', 0),
(165, 1, '2023-02-08 21:37:15', '2023-02-08 13:37:15', '', 'Отсев', '', 'publish', 'open', 'open', '', 'otsev-2', '', '', '2023-02-08 21:38:34', '2023-02-08 13:38:34', '', 0, 'http://angara38/?p=165', 0, 'post', '', 0),
(166, 1, '2023-02-08 21:36:41', '2023-02-08 13:36:41', '', 'dropout', '', 'inherit', 'open', 'closed', '', 'dropout-2', '', '', '2023-02-08 21:36:48', '2023-02-08 13:36:48', '', 165, 'http://angara38/wp-content/uploads/2023/02/dropout.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2023-02-08 21:37:15', '2023-02-08 13:37:15', '', 'Отсев', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2023-02-08 21:37:15', '2023-02-08 13:37:15', '', 165, 'http://angara38/?p=167', 0, 'revision', '', 0),
(168, 1, '2023-02-08 21:38:34', '2023-02-08 13:38:34', '', 'Отсев', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2023-02-08 21:38:34', '2023-02-08 13:38:34', '', 165, 'http://angara38/?p=168', 0, 'revision', '', 0),
(169, 1, '2023-02-08 21:46:01', '2023-02-08 13:46:01', '', 'Плитняк', '', 'publish', 'open', 'open', '', 'plitnyak', '', '', '2023-02-08 21:47:00', '2023-02-08 13:47:00', '', 0, 'http://angara38/?p=169', 0, 'post', '', 0),
(170, 1, '2023-02-08 21:45:34', '2023-02-08 13:45:34', '', 'flagstone', '', 'inherit', 'open', 'closed', '', 'flagstone-2', '', '', '2023-02-08 21:45:47', '2023-02-08 13:45:47', '', 169, 'http://angara38/wp-content/uploads/2023/02/flagstone.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2023-02-08 21:46:01', '2023-02-08 13:46:01', '', 'Плитняк', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2023-02-08 21:46:01', '2023-02-08 13:46:01', '', 169, 'http://angara38/?p=171', 0, 'revision', '', 0),
(173, 1, '2023-02-08 21:47:00', '2023-02-08 13:47:00', '', 'Плитняк', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2023-02-08 21:47:00', '2023-02-08 13:47:00', '', 169, 'http://angara38/?p=173', 0, 'revision', '', 0),
(174, 1, '2023-02-08 21:49:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-08 21:49:17', '0000-00-00 00:00:00', '', 0, 'http://angara38/?p=174', 0, 'post', '', 0),
(175, 1, '2023-02-08 21:53:05', '2023-02-08 13:53:05', '', 'Вывоз мусора', '', 'publish', 'open', 'open', '', 'vyvoz-musora', '', '', '2023-02-09 13:23:48', '2023-02-09 05:23:48', '', 0, 'http://angara38/?p=175', 0, 'post', '', 0),
(176, 1, '2023-02-08 21:52:32', '2023-02-08 13:52:32', '', 'garbage_removal', '', 'inherit', 'open', 'closed', '', 'garbage_removal-2', '', '', '2023-02-08 21:52:49', '2023-02-08 13:52:49', '', 175, 'http://angara38/wp-content/uploads/2023/02/garbage_removal.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2023-02-08 21:53:05', '2023-02-08 13:53:05', '', 'Вывоз мусора', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-02-08 21:53:05', '2023-02-08 13:53:05', '', 175, 'http://angara38/?p=177', 0, 'revision', '', 0),
(178, 1, '2023-02-08 21:53:43', '2023-02-08 13:53:43', '', 'Вывоз мусора', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-02-08 21:53:43', '2023-02-08 13:53:43', '', 175, 'http://angara38/?p=178', 0, 'revision', '', 0),
(179, 1, '2023-02-08 21:53:50', '2023-02-08 13:53:50', '', 'Вывоз мусора', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-02-08 21:53:50', '2023-02-08 13:53:50', '', 175, 'http://angara38/?p=179', 0, 'revision', '', 0),
(180, 1, '2023-02-08 22:05:39', '2023-02-08 14:05:39', '', 'Грунт', '', 'publish', 'open', 'open', '', 'grunt', '', '', '2023-02-08 22:06:07', '2023-02-08 14:06:07', '', 0, 'http://angara38/?p=180', 0, 'post', '', 0),
(181, 1, '2023-02-08 22:05:17', '2023-02-08 14:05:17', '', 'ground', '', 'inherit', 'open', 'closed', '', 'ground-2', '', '', '2023-02-08 22:05:23', '2023-02-08 14:05:23', '', 180, 'http://angara38/wp-content/uploads/2023/02/ground.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2023-02-08 22:05:39', '2023-02-08 14:05:39', '', 'Грунт', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2023-02-08 22:05:39', '2023-02-08 14:05:39', '', 180, 'http://angara38/?p=182', 0, 'revision', '', 0),
(183, 1, '2023-02-08 22:06:07', '2023-02-08 14:06:07', '', 'Грунт', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2023-02-08 22:06:07', '2023-02-08 14:06:07', '', 180, 'http://angara38/?p=183', 0, 'revision', '', 0),
(184, 1, '2023-02-08 22:09:06', '2023-02-08 14:09:06', '', 'Перегной', '', 'publish', 'open', 'open', '', 'peregnoj', '', '', '2023-02-08 22:09:35', '2023-02-08 14:09:35', '', 0, 'http://angara38/?p=184', 0, 'post', '', 0),
(185, 1, '2023-02-08 22:08:33', '2023-02-08 14:08:33', '', 'humus', '', 'inherit', 'open', 'closed', '', 'humus-2', '', '', '2023-02-08 22:08:39', '2023-02-08 14:08:39', '', 184, 'http://angara38/wp-content/uploads/2023/02/humus.webp', 0, 'attachment', 'image/webp', 0),
(186, 1, '2023-02-08 22:09:06', '2023-02-08 14:09:06', '', 'Перегной', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2023-02-08 22:09:06', '2023-02-08 14:09:06', '', 184, 'http://angara38/?p=186', 0, 'revision', '', 0),
(187, 1, '2023-02-08 22:09:35', '2023-02-08 14:09:35', '', 'Перегной', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2023-02-08 22:09:35', '2023-02-08 14:09:35', '', 184, 'http://angara38/?p=187', 0, 'revision', '', 0),
(189, 1, '2023-02-08 22:12:58', '2023-02-08 14:12:58', '', 'Щебень скальник-песчаник (фр.0,5-0,7мм)', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2023-02-08 22:12:58', '2023-02-08 14:12:58', '', 110, 'http://angara38/?p=189', 0, 'revision', '', 0),
(190, 1, '2023-02-08 22:12:59', '2023-02-08 14:12:59', '', 'Щебень скальник-песчаник (фр.0,5-0,7мм)', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2023-02-08 22:12:59', '2023-02-08 14:12:59', '', 110, 'http://angara38/?p=190', 0, 'revision', '', 0),
(191, 1, '2023-02-08 22:16:51', '2023-02-08 14:16:51', '', 'Щебень мраморный (фр.5-10)', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2023-02-08 22:16:51', '2023-02-08 14:16:51', '', 105, 'http://angara38/?p=191', 0, 'revision', '', 0),
(192, 1, '2023-02-08 22:17:43', '2023-02-08 14:17:43', '', 'Щебень гравийный (фр.20-40мм)', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2023-02-08 22:17:43', '2023-02-08 14:17:43', '', 103, 'http://angara38/?p=192', 0, 'revision', '', 0),
(193, 1, '2023-02-08 22:18:25', '2023-02-08 14:18:25', '', 'Щебень гравийный (фр. 5-20мм)', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2023-02-08 22:18:25', '2023-02-08 14:18:25', '', 101, 'http://angara38/?p=193', 0, 'revision', '', 0),
(194, 1, '2023-02-08 22:19:08', '2023-02-08 14:19:08', '', 'Щебень гравийный (фр. 20-40мм)', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2023-02-08 22:19:08', '2023-02-08 14:19:08', '', 99, 'http://angara38/?p=194', 0, 'revision', '', 0),
(195, 1, '2023-02-08 22:20:05', '2023-02-08 14:20:05', '', 'Щебень гравийный (фр.5-20мм )', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2023-02-08 22:20:05', '2023-02-08 14:20:05', '', 97, 'http://angara38/?p=195', 0, 'revision', '', 0),
(196, 1, '2023-02-08 22:20:49', '2023-02-08 14:20:49', '', 'Щебень гравийный (фр. 5-70мм)', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2023-02-08 22:20:49', '2023-02-08 14:20:49', '', 94, 'http://angara38/?p=196', 0, 'revision', '', 0),
(197, 1, '2023-02-08 22:21:15', '2023-02-08 14:21:15', '', 'Щебень гравийный (фр. 5-70мм)', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2023-02-08 22:21:15', '2023-02-08 14:21:15', '', 94, 'http://angara38/?p=197', 0, 'revision', '', 0),
(198, 1, '2023-02-08 22:43:43', '2023-02-08 14:43:43', '', 'Дорожная', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2023-02-08 22:43:43', '2023-02-08 14:43:43', '', 88, 'http://angara38/?p=198', 0, 'revision', '', 0),
(199, 1, '2023-02-08 22:44:42', '2023-02-08 14:44:42', '', 'Крупная', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2023-02-08 22:44:42', '2023-02-08 14:44:42', '', 85, 'http://angara38/?p=199', 0, 'revision', '', 0),
(200, 1, '2023-02-08 22:45:38', '2023-02-08 14:45:38', '', 'Мелкая', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2023-02-08 22:45:38', '2023-02-08 14:45:38', '', 77, 'http://angara38/?p=200', 0, 'revision', '', 0),
(201, 1, '2023-02-08 22:48:46', '2023-02-08 14:48:46', '', 'graviy', '', 'inherit', 'open', 'closed', '', 'graviy', '', '', '2023-02-08 22:48:57', '2023-02-08 14:48:57', '', 91, 'http://angara38/wp-content/uploads/2023/02/graviy.jpg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2023-02-08 22:49:25', '2023-02-08 14:49:25', '', 'Гравий природный (галька) (фр.5-20мм)', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2023-02-08 22:49:25', '2023-02-08 14:49:25', '', 91, 'http://angara38/?p=203', 0, 'revision', '', 0),
(204, 1, '2023-02-08 22:49:26', '2023-02-08 14:49:26', '', 'Гравий природный (галька) (фр.5-20мм)', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2023-02-08 22:49:26', '2023-02-08 14:49:26', '', 91, 'http://angara38/?p=204', 0, 'revision', '', 0),
(205, 1, '2023-02-08 22:52:04', '2023-02-08 14:52:04', '', 'Гравий природный (галька)(фр.30-80мм)', '', 'publish', 'open', 'open', '', 'gravij-prirodnyj-galkafr-30-80mm', '', '', '2023-02-08 22:52:47', '2023-02-08 14:52:47', '', 0, 'http://angara38/?p=205', 0, 'post', '', 0),
(206, 1, '2023-02-08 22:51:36', '2023-02-08 14:51:36', '', 'graviy2', '', 'inherit', 'open', 'closed', '', 'graviy2', '', '', '2023-02-08 22:51:44', '2023-02-08 14:51:44', '', 205, 'http://angara38/wp-content/uploads/2023/02/graviy2.jpg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2023-02-08 22:52:04', '2023-02-08 14:52:04', '', 'Гравий природный (галька)(фр.30-80мм)', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2023-02-08 22:52:04', '2023-02-08 14:52:04', '', 205, 'http://angara38/?p=207', 0, 'revision', '', 0),
(208, 1, '2023-02-08 22:52:47', '2023-02-08 14:52:47', '', 'Гравий природный (галька)(фр.30-80мм)', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2023-02-08 22:52:47', '2023-02-08 14:52:47', '', 205, 'http://angara38/?p=208', 0, 'revision', '', 0),
(209, 1, '2023-02-08 22:55:00', '2023-02-08 14:55:00', '', 'Песок для детских песочниц(сертифицирован)', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2023-02-08 22:55:00', '2023-02-08 14:55:00', '', 74, 'http://angara38/?p=209', 0, 'revision', '', 0),
(210, 1, '2023-02-08 22:55:41', '2023-02-08 14:55:41', '', 'Песок карьерный', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2023-02-08 22:55:41', '2023-02-08 14:55:41', '', 71, 'http://angara38/?p=210', 0, 'revision', '', 0),
(211, 1, '2023-02-08 22:56:52', '2023-02-08 14:56:52', '', 'Песок речной мытый', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-02-08 22:56:52', '2023-02-08 14:56:52', '', 68, 'http://angara38/?p=211', 0, 'revision', '', 0),
(212, 1, '2023-02-08 22:57:27', '2023-02-08 14:57:27', '', 'Песок речной', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-02-08 22:57:27', '2023-02-08 14:57:27', '', 65, 'http://angara38/?p=212', 0, 'revision', '', 0),
(213, 1, '2023-02-08 23:00:29', '2023-02-08 15:00:29', '', 'Вывоз снега', '', 'publish', 'open', 'open', '', 'vyvoz-snega', '', '', '2023-02-08 23:00:52', '2023-02-08 15:00:52', '', 0, 'http://angara38/?p=213', 0, 'post', '', 0),
(214, 1, '2023-02-08 23:00:03', '2023-02-08 15:00:03', '', 'snowremoval', '', 'inherit', 'open', 'closed', '', 'snowremoval', '', '', '2023-02-08 23:00:12', '2023-02-08 15:00:12', '', 213, 'http://angara38/wp-content/uploads/2023/02/snowremoval.webp', 0, 'attachment', 'image/webp', 0),
(215, 1, '2023-02-08 23:00:29', '2023-02-08 15:00:29', '', 'Вывоз снега', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2023-02-08 23:00:29', '2023-02-08 15:00:29', '', 213, 'http://angara38/?p=215', 0, 'revision', '', 0),
(216, 1, '2023-02-08 23:00:52', '2023-02-08 15:00:52', '', 'Вывоз снега', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2023-02-08 23:00:52', '2023-02-08 15:00:52', '', 213, 'http://angara38/?p=216', 0, 'revision', '', 0),
(217, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', '{\n    \"nav_menu[-4310528801618817000]\": {\n        \"value\": {\n            \"name\": \"footer\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-2326694563225303000]\": {\n        \"value\": {\n            \"object_id\": 138,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0412\\u044b\\u0432\\u043e\\u0437 \\u043c\\u0443\\u0441\\u043e\\u0440\\u0430\",\n            \"url\": \"http://angara38/garbage_removal/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0412\\u044b\\u0432\\u043e\\u0437 \\u043c\\u0443\\u0441\\u043e\\u0440\\u0430\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-7336145262427081000]\": {\n        \"value\": {\n            \"object_id\": 136,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0412\\u044b\\u0432\\u043e\\u0437 \\u0441\\u043d\\u0435\\u0433\\u0430\",\n            \"url\": \"http://angara38/snow_removal/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0412\\u044b\\u0432\\u043e\\u0437 \\u0441\\u043d\\u0435\\u0433\\u0430\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-7796902292993452000]\": {\n        \"value\": {\n            \"object_id\": 134,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0423\\u0433\\u043e\\u043b\\u044c\",\n            \"url\": \"http://angara38/coal/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0423\\u0433\\u043e\\u043b\\u044c\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-67489201232490500]\": {\n        \"value\": {\n            \"object_id\": 132,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0413\\u0440\\u0443\\u043d\\u0442\",\n            \"url\": \"http://angara38/ground/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u0440\\u0443\\u043d\\u0442\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-2298382713252057000]\": {\n        \"value\": {\n            \"object_id\": 130,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041f\\u0435\\u0440\\u0435\\u0433\\u043d\\u043e\\u0439\",\n            \"url\": \"http://angara38/humus/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041f\\u0435\\u0440\\u0435\\u0433\\u043d\\u043e\\u0439\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-4449788727644807000]\": {\n        \"value\": {\n            \"object_id\": 128,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0427\\u0435\\u0440\\u043d\\u043e\\u0437\\u0435\\u043c\",\n            \"url\": \"http://angara38/chernozem/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0427\\u0435\\u0440\\u043d\\u043e\\u0437\\u0435\\u043c\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-9035077090968076000]\": {\n        \"value\": {\n            \"object_id\": 126,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041f\\u043b\\u0438\\u0442\\u043d\\u044f\\u043a\",\n            \"url\": \"http://angara38/flagstone/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041f\\u043b\\u0438\\u0442\\u043d\\u044f\\u043a\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-2303103845157965800]\": {\n        \"value\": {\n            \"object_id\": 123,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e\\u0442\\u043a\\u0430\\u0442\",\n            \"url\": \"http://angara38/otkat/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e\\u0442\\u043a\\u0430\\u0442\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-2785423079275333600]\": {\n        \"value\": {\n            \"object_id\": 121,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0429\\u0435\\u0431\\u0435\\u043d\\u044c\",\n            \"url\": \"http://angara38/crushed_stone/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0429\\u0435\\u0431\\u0435\\u043d\\u044c\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-1769464144771393500]\": {\n        \"value\": {\n            \"object_id\": 119,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 10,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e\\u0442\\u0441\\u0435\\u0432\",\n            \"url\": \"http://angara38/dropout/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e\\u0442\\u0441\\u0435\\u0432\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-1892863456197419000]\": {\n        \"value\": {\n            \"object_id\": 117,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 11,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041f\\u0413\\u0421\",\n            \"url\": \"http://angara38/pgs/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041f\\u0413\\u0421\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-6106955501094013000]\": {\n        \"value\": {\n            \"object_id\": 115,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 12,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041f\\u0435\\u0441\\u043e\\u043a\",\n            \"url\": \"http://angara38/sand/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041f\\u0435\\u0441\\u043e\\u043a\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    },\n    \"nav_menu_item[-8235851688274924000]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 13,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"url\": \"http://angara38/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"nav_menu_term_id\": -4310528801618817000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-08 15:24:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f72f1334-c813-46d5-911d-b5971d439b20', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/f72f1334-c813-46d5-911d-b5971d439b20/', 0, 'customize_changeset', '', 0),
(218, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', ' ', '', '', 'publish', 'closed', 'closed', '', '218', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/218/', 1, 'nav_menu_item', '', 0),
(219, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', ' ', '', '', 'publish', 'closed', 'closed', '', '219', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/219/', 2, 'nav_menu_item', '', 0),
(220, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', ' ', '', '', 'publish', 'closed', 'closed', '', '220', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/220/', 3, 'nav_menu_item', '', 0),
(221, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', ' ', '', '', 'publish', 'closed', 'closed', '', '221', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/221/', 4, 'nav_menu_item', '', 0),
(222, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', ' ', '', '', 'publish', 'closed', 'closed', '', '222', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/222/', 5, 'nav_menu_item', '', 0),
(223, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', ' ', '', '', 'publish', 'closed', 'closed', '', '223', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/223/', 6, 'nav_menu_item', '', 0),
(224, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', ' ', '', '', 'publish', 'closed', 'closed', '', '224', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/224/', 7, 'nav_menu_item', '', 0),
(225, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', ' ', '', '', 'publish', 'closed', 'closed', '', '225', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/225/', 8, 'nav_menu_item', '', 0),
(226, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', ' ', '', '', 'publish', 'closed', 'closed', '', '226', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/226/', 9, 'nav_menu_item', '', 0),
(227, 1, '2023-02-08 23:24:19', '2023-02-08 15:24:19', ' ', '', '', 'publish', 'closed', 'closed', '', '227', '', '', '2023-02-08 23:24:19', '2023-02-08 15:24:19', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/227/', 10, 'nav_menu_item', '', 0),
(228, 1, '2023-02-08 23:24:20', '2023-02-08 15:24:20', ' ', '', '', 'publish', 'closed', 'closed', '', '228', '', '', '2023-02-08 23:24:20', '2023-02-08 15:24:20', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/228/', 11, 'nav_menu_item', '', 0),
(229, 1, '2023-02-08 23:24:20', '2023-02-08 15:24:20', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2023-02-08 23:24:20', '2023-02-08 15:24:20', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/229/', 12, 'nav_menu_item', '', 0),
(230, 1, '2023-02-08 23:24:20', '2023-02-08 15:24:20', ' ', '', '', 'publish', 'closed', 'closed', '', '230', '', '', '2023-02-08 23:24:20', '2023-02-08 15:24:20', '', 0, 'http://angara38/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/230/', 13, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(231, 1, '2023-02-08 23:33:54', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-08 23:33:54', '0000-00-00 00:00:00', '', 0, 'http://angara38/?page_id=231', 0, 'page', '', 0),
(233, 1, '2023-02-09 11:12:12', '2023-02-09 03:12:12', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Песок для детских песочниц&lt;br>(сертифицирован)', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2023-02-09 11:12:12', '2023-02-09 03:12:12', '', 74, 'http://angara38/?p=233', 0, 'revision', '', 0),
(234, 1, '2023-02-09 11:12:34', '2023-02-09 03:12:34', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Песок для детских песочниц (сертифицирован)', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2023-02-09 11:12:34', '2023-02-09 03:12:34', '', 74, 'http://angara38/?p=234', 0, 'revision', '', 0),
(235, 1, '2023-02-09 13:23:48', '2023-02-09 05:23:48', '', 'Вывоз мусора', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-02-09 13:23:48', '2023-02-09 05:23:48', '', 175, 'http://angara38/?p=235', 0, 'revision', '', 0),
(236, 1, '2023-02-09 13:23:58', '2023-02-09 05:23:58', '', 'Вывоз мусора', '', 'inherit', 'closed', 'closed', '', '175-autosave-v1', '', '', '2023-02-09 13:23:58', '2023-02-09 05:23:58', '', 175, 'http://angara38/?p=236', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0),
(3, 'Контакты', 'contacts', 0),
(4, 'Телефоны', 'phonenumbers', 0),
(5, 'Электронная почта', 'email', 0),
(6, 'продукты', 'product', 0),
(7, 'Песок', 'sand', 0),
(8, 'ПГС', 'pgs', 0),
(9, 'Отсев', 'dropout', 0),
(10, 'Щебень', 'crushed_stone', 0),
(11, 'Откат', 'rollback', 0),
(12, 'Плитняк', 'flagstone', 0),
(13, 'Чернозем', 'chernozem', 0),
(14, 'Перегной', 'humus', 0),
(15, 'Грунт', 'ground', 0),
(16, 'Уголь', 'coal', 0),
(17, 'Вывоз снега', 'snow_removal', 0),
(18, 'Вывоз мусора', 'garbage_removal', 0),
(19, 'Main', 'main', 0),
(20, 'footer', 'footer', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(5, 2, 0),
(34, 4, 0),
(36, 3, 0),
(36, 4, 0),
(38, 3, 0),
(38, 4, 0),
(65, 6, 0),
(65, 7, 0),
(68, 6, 0),
(68, 7, 0),
(71, 6, 0),
(71, 7, 0),
(74, 6, 0),
(74, 7, 0),
(77, 6, 0),
(77, 8, 0),
(80, 6, 0),
(80, 8, 0),
(85, 6, 0),
(85, 8, 0),
(88, 6, 0),
(88, 8, 0),
(91, 6, 0),
(91, 11, 0),
(94, 6, 0),
(94, 10, 0),
(97, 6, 0),
(97, 10, 0),
(99, 6, 0),
(99, 10, 0),
(101, 6, 0),
(101, 10, 0),
(103, 6, 0),
(103, 10, 0),
(105, 6, 0),
(105, 10, 0),
(110, 6, 0),
(110, 10, 0),
(141, 19, 0),
(142, 19, 0),
(143, 19, 0),
(144, 19, 0),
(145, 19, 0),
(146, 19, 0),
(147, 19, 0),
(148, 19, 0),
(149, 19, 0),
(150, 19, 0),
(151, 19, 0),
(152, 19, 0),
(153, 19, 0),
(154, 6, 0),
(154, 13, 0),
(158, 6, 0),
(158, 16, 0),
(162, 6, 0),
(162, 16, 0),
(165, 6, 0),
(165, 9, 0),
(169, 6, 0),
(169, 12, 0),
(175, 6, 0),
(175, 18, 0),
(180, 1, 0),
(180, 6, 0),
(180, 15, 0),
(184, 6, 0),
(184, 14, 0),
(205, 6, 0),
(205, 11, 0),
(213, 6, 0),
(213, 17, 0),
(218, 20, 0),
(219, 20, 0),
(220, 20, 0),
(221, 20, 0),
(222, 20, 0),
(223, 20, 0),
(224, 20, 0),
(225, 20, 0),
(226, 20, 0),
(227, 20, 0),
(228, 20, 0),
(229, 20, 0),
(230, 20, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'category', 'Здесь размещаются все контакты вашей компании', 0, 2),
(4, 4, 'category', 'Здесь размещаются все телефонные номера вашей компании', 3, 3),
(5, 5, 'category', 'Здесь размещаются адреса вашей электронной почты', 3, 0),
(6, 6, 'category', 'Категория в которой собраны все продукты', 0, 26),
(7, 7, 'category', 'ПРодукты категории песок', 6, 4),
(8, 8, 'category', 'ПГС', 6, 4),
(9, 9, 'category', '', 6, 1),
(10, 10, 'category', '', 6, 7),
(11, 11, 'category', '', 6, 2),
(12, 12, 'category', '', 6, 1),
(13, 13, 'category', '', 6, 1),
(14, 14, 'category', '', 6, 1),
(15, 15, 'category', '', 6, 1),
(16, 16, 'category', '', 6, 2),
(17, 17, 'category', '', 6, 1),
(18, 18, 'category', '', 6, 1),
(19, 19, 'nav_menu', '', 0, 13),
(20, 20, 'nav_menu', '', 0, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin-angara'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}s:23:\"isPublishSidebarEnabled\";b:0;}s:9:\"_modified\";s:24:\"2023-02-08T13:28:06.696Z\";}'),
(20, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1675834052'),
(22, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"acf-group_63e2468a1e7c6\";}'),
(23, 1, 'metaboxhidden_page', 'a:0:{}'),
(24, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(25, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'session_tokens', 'a:4:{s:64:\"b8bdc80ce9c45e4a7dff6f6f9d638b074cc42f6fd108d014bca2240b9eb40b61\";a:4:{s:10:\"expiration\";i:1676092980;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675920180;}s:64:\"4672b2294d3af4ce6b071c0f9240dc2c083b863b7363dade32017d8e68bc7cdd\";a:4:{s:10:\"expiration\";i:1676093269;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675920469;}s:64:\"389df73fd2d7b8f81f3f95feb6939854db06b589e8f4d9f78ca9a2f0013f83ad\";a:4:{s:10:\"expiration\";i:1676095177;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675922377;}s:64:\"fa2c6dbbb6e9fd89a272a1e5873802ac1d66fd55b78d054c47dac38e36af71c1\";a:4:{s:10:\"expiration\";i:1676100665;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675927865;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin-angara', '$P$B1caFOtCvrs9PZ4v/E3oDuXOPOZVvk.', 'admin-angara', 'pfirulin@yandex.ru', 'http://angara38', '2023-02-07 00:46:54', '', 0, 'admin-angara');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=881;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1118;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
