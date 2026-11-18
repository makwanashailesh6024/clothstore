-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2026 at 08:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ceramic_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'woocommerce_run_update_callback', 'complete', '2026-10-27 12:38:14', '2026-10-27 12:38:14', 10, '{\"update_callback\":[\"Automattic\\\\WooCommerce\\\\Internal\\\\VariationGallery\\\\Migration\",\"run\"]}', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1793104694;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1793104694;}', 1, 1, '2026-10-27 12:38:16', '2026-10-27 12:38:16', 1, NULL),
(7, 'action_scheduler/migration_hook', 'complete', '2026-10-27 12:39:15', '2026-10-27 12:39:15', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1793104755;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1793104755;}', 2, 1, '2026-10-27 13:03:14', '2026-10-27 13:03:14', 4, NULL),
(8, 'action_scheduler_run_recurring_actions_schedule_hook', 'pending', '2026-10-28 03:00:00', '2026-10-28 03:00:00', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1793156400;s:18:\"\0*\0first_timestamp\";i:1793156400;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1793156400;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(9, 'wc-admin_process_pending_orders_batch', 'complete', '2026-10-27 13:03:18', '2026-10-27 13:03:18', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1793106198;s:18:\"\0*\0first_timestamp\";i:1793106198;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1793106198;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}', 4, 1, '2026-10-27 13:03:23', '2026-10-27 13:03:23', 6, NULL),
(10, 'wc-admin_process_pending_orders_batch', 'pending', '2026-10-28 01:03:23', '2026-10-28 01:03:23', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1793149403;s:18:\"\0*\0first_timestamp\";i:1793106198;s:13:\"\0*\0recurrence\";i:43200;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1793149403;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:43200;}', 4, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(11, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2026-10-27 13:05:32', '2026-10-27 13:05:32', 10, '[19,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1793106332;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1793106332;}', 1, 1, '2026-10-27 13:06:03', '2026-10-27 13:06:03', 8, NULL),
(12, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2026-10-27 13:05:35', '2026-10-27 13:05:35', 10, '[20,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1793106335;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1793106335;}', 1, 1, '2026-10-27 13:06:03', '2026-10-27 13:06:03', 8, NULL),
(13, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2026-10-27 13:05:39', '2026-10-27 13:05:39', 10, '[21,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1793106339;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1793106339;}', 1, 1, '2026-10-27 13:06:03', '2026-10-27 13:06:03', 8, NULL),
(14, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2026-10-27 13:05:41', '2026-10-27 13:05:41', 10, '[22,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1793106341;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1793106341;}', 1, 1, '2026-10-27 13:06:03', '2026-10-27 13:06:03', 8, NULL),
(15, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2026-10-27 13:05:44', '2026-10-27 13:05:44', 10, '[23,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1793106344;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1793106344;}', 1, 1, '2026-10-27 13:06:03', '2026-10-27 13:06:03', 8, NULL),
(16, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2026-10-27 13:05:46', '2026-10-27 13:05:46', 10, '[24,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1793106346;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1793106346;}', 1, 1, '2026-10-27 13:06:04', '2026-10-27 13:06:04', 8, NULL),
(17, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2026-10-27 13:05:49', '2026-10-27 13:05:49', 10, '[25,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1793106349;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1793106349;}', 1, 1, '2026-10-27 13:06:04', '2026-10-27 13:06:04', 8, NULL),
(18, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2026-10-27 13:05:53', '2026-10-27 13:05:53', 10, '[26,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1793106353;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1793106353;}', 1, 1, '2026-10-27 13:06:04', '2026-10-27 13:06:04', 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'woocommerce-db-updates'),
(2, 'action-scheduler-migration'),
(3, 'ActionScheduler'),
(4, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2026-10-27 12:38:14', '2026-10-27 12:38:14'),
(2, 7, 'action created', '2026-10-27 12:38:15', '2026-10-27 12:38:15'),
(3, 8, 'action created', '2026-10-27 12:38:15', '2026-10-27 12:38:15'),
(4, 6, 'action started via WP Cron', '2026-10-27 12:38:16', '2026-10-27 12:38:16'),
(5, 6, 'action complete via WP Cron', '2026-10-27 12:38:16', '2026-10-27 12:38:16'),
(6, 7, 'action started via WP Cron', '2026-10-27 13:03:14', '2026-10-27 13:03:14'),
(7, 7, 'action complete via WP Cron', '2026-10-27 13:03:14', '2026-10-27 13:03:14'),
(8, 9, 'action created', '2026-10-27 13:03:19', '2026-10-27 13:03:19'),
(9, 9, 'action started via Async Request', '2026-10-27 13:03:23', '2026-10-27 13:03:23'),
(10, 9, 'action complete via Async Request', '2026-10-27 13:03:23', '2026-10-27 13:03:23'),
(11, 10, 'action created', '2026-10-27 13:03:23', '2026-10-27 13:03:23'),
(12, 11, 'action created', '2026-10-27 13:05:31', '2026-10-27 13:05:31'),
(13, 12, 'action created', '2026-10-27 13:05:34', '2026-10-27 13:05:34'),
(14, 13, 'action created', '2026-10-27 13:05:38', '2026-10-27 13:05:38'),
(15, 14, 'action created', '2026-10-27 13:05:40', '2026-10-27 13:05:40'),
(16, 15, 'action created', '2026-10-27 13:05:43', '2026-10-27 13:05:43'),
(17, 16, 'action created', '2026-10-27 13:05:45', '2026-10-27 13:05:45'),
(18, 17, 'action created', '2026-10-27 13:05:48', '2026-10-27 13:05:48'),
(19, 18, 'action created', '2026-10-27 13:05:52', '2026-10-27 13:05:52'),
(20, 11, 'action started via WP Cron', '2026-10-27 13:06:02', '2026-10-27 13:06:02'),
(21, 11, 'action complete via WP Cron', '2026-10-27 13:06:02', '2026-10-27 13:06:02'),
(22, 12, 'action started via WP Cron', '2026-10-27 13:06:03', '2026-10-27 13:06:03'),
(23, 12, 'action complete via WP Cron', '2026-10-27 13:06:03', '2026-10-27 13:06:03'),
(24, 13, 'action started via WP Cron', '2026-10-27 13:06:03', '2026-10-27 13:06:03'),
(25, 13, 'action complete via WP Cron', '2026-10-27 13:06:03', '2026-10-27 13:06:03'),
(26, 14, 'action started via WP Cron', '2026-10-27 13:06:03', '2026-10-27 13:06:03'),
(27, 14, 'action complete via WP Cron', '2026-10-27 13:06:03', '2026-10-27 13:06:03'),
(28, 15, 'action started via WP Cron', '2026-10-27 13:06:03', '2026-10-27 13:06:03'),
(29, 15, 'action complete via WP Cron', '2026-10-27 13:06:03', '2026-10-27 13:06:03'),
(30, 16, 'action started via WP Cron', '2026-10-27 13:06:04', '2026-10-27 13:06:04'),
(31, 16, 'action complete via WP Cron', '2026-10-27 13:06:04', '2026-10-27 13:06:04'),
(32, 17, 'action started via WP Cron', '2026-10-27 13:06:04', '2026-10-27 13:06:04'),
(33, 17, 'action complete via WP Cron', '2026-10-27 13:06:04', '2026-10-27 13:06:04'),
(34, 18, 'action started via WP Cron', '2026-10-27 13:06:04', '2026-10-27 13:06:04'),
(35, 18, 'action complete via WP Cron', '2026-10-27 13:06:04', '2026-10-27 13:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2026-10-27 12:35:15', '2026-10-27 12:35:15', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:15:{i:1793106819;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1793108113;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1793108117;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1793108293;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1793108294;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1793109804;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1793109913;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1793111713;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1793112262;a:1:{s:45:\"woocommerce_marketplace_cron_fetch_promotions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1793149395;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1793190916;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1793190917;a:1:{s:41:\"wp_privacy_personal_data_cleanup_requests\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1793191093;a:1:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1793709342;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/ceramic', 'on'),
(3, 'home', 'http://localhost/ceramic', 'on'),
(4, 'blogname', 'CERAMICA', 'on'),
(5, 'blogdescription', 'Artisanal Handcrafted Ceramics &amp; Stoneware Homeware', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'admin@ceramicstudio.local', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:184:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:21:\"^wc/file/transient/?$\";s:33:\"index.php?wc-transient-file-name=\";s:24:\"^wc/file/transient/(.+)$\";s:44:\"index.php?wc-transient-file-name=$matches[1]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:15:\"^checkout-link$\";s:28:\"index.php?checkout-link=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:43:\"category/(.+?)/wc/file/transient(/(.*))?/?$\";s:65:\"index.php?category_name=$matches[1]&wc/file/transient=$matches[3]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:40:\"tag/([^/]+)/wc/file/transient(/(.*))?/?$\";s:55:\"index.php?tag=$matches[1]&wc/file/transient=$matches[3]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:44:\"brand/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?product_brand=$matches[1]&feed=$matches[2]\";s:39:\"brand/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?product_brand=$matches[1]&feed=$matches[2]\";s:20:\"brand/(.+?)/embed/?$\";s:46:\"index.php?product_brand=$matches[1]&embed=true\";s:32:\"brand/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?product_brand=$matches[1]&paged=$matches[2]\";s:14:\"brand/(.+?)/?$\";s:35:\"index.php?product_brand=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:44:\"product/([^/]+)/wc/file/transient(/(.*))?/?$\";s:59:\"index.php?product=$matches[1]&wc/file/transient=$matches[3]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:61:\"product/[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:28:\"wc/file/transient(/(.*))?/?$\";s:40:\"index.php?&wc/file/transient=$matches[2]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:37:\"comments/wc/file/transient(/(.*))?/?$\";s:40:\"index.php?&wc/file/transient=$matches[2]\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:40:\"search/(.+)/wc/file/transient(/(.*))?/?$\";s:53:\"index.php?s=$matches[1]&wc/file/transient=$matches[3]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:43:\"author/([^/]+)/wc/file/transient(/(.*))?/?$\";s:63:\"index.php?author_name=$matches[1]&wc/file/transient=$matches[3]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc/file/transient(/(.*))?/?$\";s:93:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc/file/transient=$matches[5]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:52:\"([0-9]{4})/([0-9]{1,2})/wc/file/transient(/(.*))?/?$\";s:77:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc/file/transient=$matches[4]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:39:\"([0-9]{4})/wc/file/transient(/(.*))?/?$\";s:56:\"index.php?year=$matches[1]&wc/file/transient=$matches[3]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:36:\"(.?.+?)/wc/file/transient(/(.*))?/?$\";s:60:\"index.php?pagename=$matches[1]&wc/file/transient=$matches[3]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:42:\".?.+?/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:53:\".?.+?/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:36:\"([^/]+)/wc/file/transient(/(.*))?/?$\";s:56:\"index.php?name=$matches[1]&wc/file/transient=$matches[3]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:53:\"[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:27:\"woocommerce/woocommerce.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'astra', 'on'),
(42, 'stylesheet', 'astra-ceramic', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '61833', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '27', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1808656513', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '61833', 'on'),
(103, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:16:\"create_customers\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:16:\"create_customers\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'on'),
(104, 'fresh_site', '0', 'off'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-1\";a:0:{}s:24:\"advanced-footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-3\";a:0:{}s:24:\"advanced-footer-widget-4\";a:0:{}s:22:\"astra-woo-shop-sidebar\";a:0:{}s:24:\"astra-woo-single-sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"7.1.3\";s:5:\"files\";a:624:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:22:\"archives/style-rtl.css\";i:17;s:26:\"archives/style-rtl.min.css\";i:18;s:18:\"archives/style.css\";i:19;s:22:\"archives/style.min.css\";i:20;s:20:\"audio/editor-rtl.css\";i:21;s:24:\"audio/editor-rtl.min.css\";i:22;s:16:\"audio/editor.css\";i:23;s:20:\"audio/editor.min.css\";i:24;s:19:\"audio/style-rtl.css\";i:25;s:23:\"audio/style-rtl.min.css\";i:26;s:15:\"audio/style.css\";i:27;s:19:\"audio/style.min.css\";i:28;s:19:\"audio/theme-rtl.css\";i:29;s:23:\"audio/theme-rtl.min.css\";i:30;s:15:\"audio/theme.css\";i:31;s:19:\"audio/theme.min.css\";i:32;s:21:\"avatar/editor-rtl.css\";i:33;s:25:\"avatar/editor-rtl.min.css\";i:34;s:17:\"avatar/editor.css\";i:35;s:21:\"avatar/editor.min.css\";i:36;s:20:\"avatar/style-rtl.css\";i:37;s:24:\"avatar/style-rtl.min.css\";i:38;s:16:\"avatar/style.css\";i:39;s:20:\"avatar/style.min.css\";i:40;s:25:\"breadcrumbs/style-rtl.css\";i:41;s:29:\"breadcrumbs/style-rtl.min.css\";i:42;s:21:\"breadcrumbs/style.css\";i:43;s:25:\"breadcrumbs/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:19:\"icon/editor-rtl.css\";i:217;s:23:\"icon/editor-rtl.min.css\";i:218;s:15:\"icon/editor.css\";i:219;s:19:\"icon/editor.min.css\";i:220;s:18:\"icon/style-rtl.css\";i:221;s:22:\"icon/style-rtl.min.css\";i:222;s:14:\"icon/style.css\";i:223;s:18:\"icon/style.min.css\";i:224;s:20:\"image/editor-rtl.css\";i:225;s:24:\"image/editor-rtl.min.css\";i:226;s:16:\"image/editor.css\";i:227;s:20:\"image/editor.min.css\";i:228;s:19:\"image/style-rtl.css\";i:229;s:23:\"image/style-rtl.min.css\";i:230;s:15:\"image/style.css\";i:231;s:19:\"image/style.min.css\";i:232;s:19:\"image/theme-rtl.css\";i:233;s:23:\"image/theme-rtl.min.css\";i:234;s:15:\"image/theme.css\";i:235;s:19:\"image/theme.min.css\";i:236;s:29:\"latest-comments/style-rtl.css\";i:237;s:33:\"latest-comments/style-rtl.min.css\";i:238;s:25:\"latest-comments/style.css\";i:239;s:29:\"latest-comments/style.min.css\";i:240;s:27:\"latest-posts/editor-rtl.css\";i:241;s:31:\"latest-posts/editor-rtl.min.css\";i:242;s:23:\"latest-posts/editor.css\";i:243;s:27:\"latest-posts/editor.min.css\";i:244;s:26:\"latest-posts/style-rtl.css\";i:245;s:30:\"latest-posts/style-rtl.min.css\";i:246;s:22:\"latest-posts/style.css\";i:247;s:26:\"latest-posts/style.min.css\";i:248;s:18:\"list/style-rtl.css\";i:249;s:22:\"list/style-rtl.min.css\";i:250;s:14:\"list/style.css\";i:251;s:18:\"list/style.min.css\";i:252;s:22:\"loginout/style-rtl.css\";i:253;s:26:\"loginout/style-rtl.min.css\";i:254;s:18:\"loginout/style.css\";i:255;s:22:\"loginout/style.min.css\";i:256;s:19:\"math/editor-rtl.css\";i:257;s:23:\"math/editor-rtl.min.css\";i:258;s:15:\"math/editor.css\";i:259;s:19:\"math/editor.min.css\";i:260;s:18:\"math/style-rtl.css\";i:261;s:22:\"math/style-rtl.min.css\";i:262;s:14:\"math/style.css\";i:263;s:18:\"math/style.min.css\";i:264;s:25:\"media-text/editor-rtl.css\";i:265;s:29:\"media-text/editor-rtl.min.css\";i:266;s:21:\"media-text/editor.css\";i:267;s:25:\"media-text/editor.min.css\";i:268;s:24:\"media-text/style-rtl.css\";i:269;s:28:\"media-text/style-rtl.min.css\";i:270;s:20:\"media-text/style.css\";i:271;s:24:\"media-text/style.min.css\";i:272;s:19:\"more/editor-rtl.css\";i:273;s:23:\"more/editor-rtl.min.css\";i:274;s:15:\"more/editor.css\";i:275;s:19:\"more/editor.min.css\";i:276;s:30:\"navigation-link/editor-rtl.css\";i:277;s:34:\"navigation-link/editor-rtl.min.css\";i:278;s:26:\"navigation-link/editor.css\";i:279;s:30:\"navigation-link/editor.min.css\";i:280;s:29:\"navigation-link/style-rtl.css\";i:281;s:33:\"navigation-link/style-rtl.min.css\";i:282;s:25:\"navigation-link/style.css\";i:283;s:29:\"navigation-link/style.min.css\";i:284;s:38:\"navigation-overlay-close/style-rtl.css\";i:285;s:42:\"navigation-overlay-close/style-rtl.min.css\";i:286;s:34:\"navigation-overlay-close/style.css\";i:287;s:38:\"navigation-overlay-close/style.min.css\";i:288;s:33:\"navigation-submenu/editor-rtl.css\";i:289;s:37:\"navigation-submenu/editor-rtl.min.css\";i:290;s:29:\"navigation-submenu/editor.css\";i:291;s:33:\"navigation-submenu/editor.min.css\";i:292;s:25:\"navigation/editor-rtl.css\";i:293;s:29:\"navigation/editor-rtl.min.css\";i:294;s:21:\"navigation/editor.css\";i:295;s:25:\"navigation/editor.min.css\";i:296;s:24:\"navigation/style-rtl.css\";i:297;s:28:\"navigation/style-rtl.min.css\";i:298;s:20:\"navigation/style.css\";i:299;s:24:\"navigation/style.min.css\";i:300;s:23:\"nextpage/editor-rtl.css\";i:301;s:27:\"nextpage/editor-rtl.min.css\";i:302;s:19:\"nextpage/editor.css\";i:303;s:23:\"nextpage/editor.min.css\";i:304;s:24:\"page-list/editor-rtl.css\";i:305;s:28:\"page-list/editor-rtl.min.css\";i:306;s:20:\"page-list/editor.css\";i:307;s:24:\"page-list/editor.min.css\";i:308;s:23:\"page-list/style-rtl.css\";i:309;s:27:\"page-list/style-rtl.min.css\";i:310;s:19:\"page-list/style.css\";i:311;s:23:\"page-list/style.min.css\";i:312;s:24:\"paragraph/editor-rtl.css\";i:313;s:28:\"paragraph/editor-rtl.min.css\";i:314;s:20:\"paragraph/editor.css\";i:315;s:24:\"paragraph/editor.min.css\";i:316;s:23:\"paragraph/style-rtl.css\";i:317;s:27:\"paragraph/style-rtl.min.css\";i:318;s:19:\"paragraph/style.css\";i:319;s:23:\"paragraph/style.min.css\";i:320;s:28:\"playlist-track/style-rtl.css\";i:321;s:32:\"playlist-track/style-rtl.min.css\";i:322;s:24:\"playlist-track/style.css\";i:323;s:28:\"playlist-track/style.min.css\";i:324;s:23:\"playlist/editor-rtl.css\";i:325;s:27:\"playlist/editor-rtl.min.css\";i:326;s:19:\"playlist/editor.css\";i:327;s:23:\"playlist/editor.min.css\";i:328;s:22:\"playlist/style-rtl.css\";i:329;s:26:\"playlist/style-rtl.min.css\";i:330;s:18:\"playlist/style.css\";i:331;s:22:\"playlist/style.min.css\";i:332;s:35:\"post-author-biography/style-rtl.css\";i:333;s:39:\"post-author-biography/style-rtl.min.css\";i:334;s:31:\"post-author-biography/style.css\";i:335;s:35:\"post-author-biography/style.min.css\";i:336;s:30:\"post-author-name/style-rtl.css\";i:337;s:34:\"post-author-name/style-rtl.min.css\";i:338;s:26:\"post-author-name/style.css\";i:339;s:30:\"post-author-name/style.min.css\";i:340;s:26:\"post-author/editor-rtl.css\";i:341;s:30:\"post-author/editor-rtl.min.css\";i:342;s:22:\"post-author/editor.css\";i:343;s:26:\"post-author/editor.min.css\";i:344;s:25:\"post-author/style-rtl.css\";i:345;s:29:\"post-author/style-rtl.min.css\";i:346;s:21:\"post-author/style.css\";i:347;s:25:\"post-author/style.min.css\";i:348;s:33:\"post-comments-count/style-rtl.css\";i:349;s:37:\"post-comments-count/style-rtl.min.css\";i:350;s:29:\"post-comments-count/style.css\";i:351;s:33:\"post-comments-count/style.min.css\";i:352;s:33:\"post-comments-form/editor-rtl.css\";i:353;s:37:\"post-comments-form/editor-rtl.min.css\";i:354;s:29:\"post-comments-form/editor.css\";i:355;s:33:\"post-comments-form/editor.min.css\";i:356;s:32:\"post-comments-form/style-rtl.css\";i:357;s:36:\"post-comments-form/style-rtl.min.css\";i:358;s:28:\"post-comments-form/style.css\";i:359;s:32:\"post-comments-form/style.min.css\";i:360;s:32:\"post-comments-link/style-rtl.css\";i:361;s:36:\"post-comments-link/style-rtl.min.css\";i:362;s:28:\"post-comments-link/style.css\";i:363;s:32:\"post-comments-link/style.min.css\";i:364;s:26:\"post-content/style-rtl.css\";i:365;s:30:\"post-content/style-rtl.min.css\";i:366;s:22:\"post-content/style.css\";i:367;s:26:\"post-content/style.min.css\";i:368;s:23:\"post-date/style-rtl.css\";i:369;s:27:\"post-date/style-rtl.min.css\";i:370;s:19:\"post-date/style.css\";i:371;s:23:\"post-date/style.min.css\";i:372;s:27:\"post-excerpt/editor-rtl.css\";i:373;s:31:\"post-excerpt/editor-rtl.min.css\";i:374;s:23:\"post-excerpt/editor.css\";i:375;s:27:\"post-excerpt/editor.min.css\";i:376;s:26:\"post-excerpt/style-rtl.css\";i:377;s:30:\"post-excerpt/style-rtl.min.css\";i:378;s:22:\"post-excerpt/style.css\";i:379;s:26:\"post-excerpt/style.min.css\";i:380;s:34:\"post-featured-image/editor-rtl.css\";i:381;s:38:\"post-featured-image/editor-rtl.min.css\";i:382;s:30:\"post-featured-image/editor.css\";i:383;s:34:\"post-featured-image/editor.min.css\";i:384;s:33:\"post-featured-image/style-rtl.css\";i:385;s:37:\"post-featured-image/style-rtl.min.css\";i:386;s:29:\"post-featured-image/style.css\";i:387;s:33:\"post-featured-image/style.min.css\";i:388;s:34:\"post-navigation-link/style-rtl.css\";i:389;s:38:\"post-navigation-link/style-rtl.min.css\";i:390;s:30:\"post-navigation-link/style.css\";i:391;s:34:\"post-navigation-link/style.min.css\";i:392;s:27:\"post-template/style-rtl.css\";i:393;s:31:\"post-template/style-rtl.min.css\";i:394;s:23:\"post-template/style.css\";i:395;s:27:\"post-template/style.min.css\";i:396;s:24:\"post-terms/style-rtl.css\";i:397;s:28:\"post-terms/style-rtl.min.css\";i:398;s:20:\"post-terms/style.css\";i:399;s:24:\"post-terms/style.min.css\";i:400;s:31:\"post-time-to-read/style-rtl.css\";i:401;s:35:\"post-time-to-read/style-rtl.min.css\";i:402;s:27:\"post-time-to-read/style.css\";i:403;s:31:\"post-time-to-read/style.min.css\";i:404;s:24:\"post-title/style-rtl.css\";i:405;s:28:\"post-title/style-rtl.min.css\";i:406;s:20:\"post-title/style.css\";i:407;s:24:\"post-title/style.min.css\";i:408;s:26:\"preformatted/style-rtl.css\";i:409;s:30:\"preformatted/style-rtl.min.css\";i:410;s:22:\"preformatted/style.css\";i:411;s:26:\"preformatted/style.min.css\";i:412;s:24:\"pullquote/editor-rtl.css\";i:413;s:28:\"pullquote/editor-rtl.min.css\";i:414;s:20:\"pullquote/editor.css\";i:415;s:24:\"pullquote/editor.min.css\";i:416;s:23:\"pullquote/style-rtl.css\";i:417;s:27:\"pullquote/style-rtl.min.css\";i:418;s:19:\"pullquote/style.css\";i:419;s:23:\"pullquote/style.min.css\";i:420;s:23:\"pullquote/theme-rtl.css\";i:421;s:27:\"pullquote/theme-rtl.min.css\";i:422;s:19:\"pullquote/theme.css\";i:423;s:23:\"pullquote/theme.min.css\";i:424;s:39:\"query-pagination-numbers/editor-rtl.css\";i:425;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:426;s:35:\"query-pagination-numbers/editor.css\";i:427;s:39:\"query-pagination-numbers/editor.min.css\";i:428;s:31:\"query-pagination/editor-rtl.css\";i:429;s:35:\"query-pagination/editor-rtl.min.css\";i:430;s:27:\"query-pagination/editor.css\";i:431;s:31:\"query-pagination/editor.min.css\";i:432;s:30:\"query-pagination/style-rtl.css\";i:433;s:34:\"query-pagination/style-rtl.min.css\";i:434;s:26:\"query-pagination/style.css\";i:435;s:30:\"query-pagination/style.min.css\";i:436;s:25:\"query-title/style-rtl.css\";i:437;s:29:\"query-title/style-rtl.min.css\";i:438;s:21:\"query-title/style.css\";i:439;s:25:\"query-title/style.min.css\";i:440;s:25:\"query-total/style-rtl.css\";i:441;s:29:\"query-total/style-rtl.min.css\";i:442;s:21:\"query-total/style.css\";i:443;s:25:\"query-total/style.min.css\";i:444;s:20:\"query/editor-rtl.css\";i:445;s:24:\"query/editor-rtl.min.css\";i:446;s:16:\"query/editor.css\";i:447;s:20:\"query/editor.min.css\";i:448;s:19:\"quote/style-rtl.css\";i:449;s:23:\"quote/style-rtl.min.css\";i:450;s:15:\"quote/style.css\";i:451;s:19:\"quote/style.min.css\";i:452;s:19:\"quote/theme-rtl.css\";i:453;s:23:\"quote/theme-rtl.min.css\";i:454;s:15:\"quote/theme.css\";i:455;s:19:\"quote/theme.min.css\";i:456;s:23:\"read-more/style-rtl.css\";i:457;s:27:\"read-more/style-rtl.min.css\";i:458;s:19:\"read-more/style.css\";i:459;s:23:\"read-more/style.min.css\";i:460;s:18:\"rss/editor-rtl.css\";i:461;s:22:\"rss/editor-rtl.min.css\";i:462;s:14:\"rss/editor.css\";i:463;s:18:\"rss/editor.min.css\";i:464;s:17:\"rss/style-rtl.css\";i:465;s:21:\"rss/style-rtl.min.css\";i:466;s:13:\"rss/style.css\";i:467;s:17:\"rss/style.min.css\";i:468;s:21:\"search/editor-rtl.css\";i:469;s:25:\"search/editor-rtl.min.css\";i:470;s:17:\"search/editor.css\";i:471;s:21:\"search/editor.min.css\";i:472;s:20:\"search/style-rtl.css\";i:473;s:24:\"search/style-rtl.min.css\";i:474;s:16:\"search/style.css\";i:475;s:20:\"search/style.min.css\";i:476;s:20:\"search/theme-rtl.css\";i:477;s:24:\"search/theme-rtl.min.css\";i:478;s:16:\"search/theme.css\";i:479;s:20:\"search/theme.min.css\";i:480;s:24:\"separator/editor-rtl.css\";i:481;s:28:\"separator/editor-rtl.min.css\";i:482;s:20:\"separator/editor.css\";i:483;s:24:\"separator/editor.min.css\";i:484;s:23:\"separator/style-rtl.css\";i:485;s:27:\"separator/style-rtl.min.css\";i:486;s:19:\"separator/style.css\";i:487;s:23:\"separator/style.min.css\";i:488;s:23:\"separator/theme-rtl.css\";i:489;s:27:\"separator/theme-rtl.min.css\";i:490;s:19:\"separator/theme.css\";i:491;s:23:\"separator/theme.min.css\";i:492;s:24:\"shortcode/editor-rtl.css\";i:493;s:28:\"shortcode/editor-rtl.min.css\";i:494;s:20:\"shortcode/editor.css\";i:495;s:24:\"shortcode/editor.min.css\";i:496;s:24:\"site-logo/editor-rtl.css\";i:497;s:28:\"site-logo/editor-rtl.min.css\";i:498;s:20:\"site-logo/editor.css\";i:499;s:24:\"site-logo/editor.min.css\";i:500;s:23:\"site-logo/style-rtl.css\";i:501;s:27:\"site-logo/style-rtl.min.css\";i:502;s:19:\"site-logo/style.css\";i:503;s:23:\"site-logo/style.min.css\";i:504;s:27:\"site-tagline/editor-rtl.css\";i:505;s:31:\"site-tagline/editor-rtl.min.css\";i:506;s:23:\"site-tagline/editor.css\";i:507;s:27:\"site-tagline/editor.min.css\";i:508;s:26:\"site-tagline/style-rtl.css\";i:509;s:30:\"site-tagline/style-rtl.min.css\";i:510;s:22:\"site-tagline/style.css\";i:511;s:26:\"site-tagline/style.min.css\";i:512;s:25:\"site-title/editor-rtl.css\";i:513;s:29:\"site-title/editor-rtl.min.css\";i:514;s:21:\"site-title/editor.css\";i:515;s:25:\"site-title/editor.min.css\";i:516;s:24:\"site-title/style-rtl.css\";i:517;s:28:\"site-title/style-rtl.min.css\";i:518;s:20:\"site-title/style.css\";i:519;s:24:\"site-title/style.min.css\";i:520;s:26:\"social-link/editor-rtl.css\";i:521;s:30:\"social-link/editor-rtl.min.css\";i:522;s:22:\"social-link/editor.css\";i:523;s:26:\"social-link/editor.min.css\";i:524;s:27:\"social-links/editor-rtl.css\";i:525;s:31:\"social-links/editor-rtl.min.css\";i:526;s:23:\"social-links/editor.css\";i:527;s:27:\"social-links/editor.min.css\";i:528;s:26:\"social-links/style-rtl.css\";i:529;s:30:\"social-links/style-rtl.min.css\";i:530;s:22:\"social-links/style.css\";i:531;s:26:\"social-links/style.min.css\";i:532;s:21:\"spacer/editor-rtl.css\";i:533;s:25:\"spacer/editor-rtl.min.css\";i:534;s:17:\"spacer/editor.css\";i:535;s:21:\"spacer/editor.min.css\";i:536;s:20:\"spacer/style-rtl.css\";i:537;s:24:\"spacer/style-rtl.min.css\";i:538;s:16:\"spacer/style.css\";i:539;s:20:\"spacer/style.min.css\";i:540;s:23:\"tab-list/editor-rtl.css\";i:541;s:27:\"tab-list/editor-rtl.min.css\";i:542;s:19:\"tab-list/editor.css\";i:543;s:23:\"tab-list/editor.min.css\";i:544;s:22:\"tab-list/style-rtl.css\";i:545;s:26:\"tab-list/style-rtl.min.css\";i:546;s:18:\"tab-list/style.css\";i:547;s:22:\"tab-list/style.min.css\";i:548;s:23:\"tab-panel/style-rtl.css\";i:549;s:27:\"tab-panel/style-rtl.min.css\";i:550;s:19:\"tab-panel/style.css\";i:551;s:23:\"tab-panel/style.min.css\";i:552;s:20:\"table/editor-rtl.css\";i:553;s:24:\"table/editor-rtl.min.css\";i:554;s:16:\"table/editor.css\";i:555;s:20:\"table/editor.min.css\";i:556;s:19:\"table/style-rtl.css\";i:557;s:23:\"table/style-rtl.min.css\";i:558;s:15:\"table/style.css\";i:559;s:19:\"table/style.min.css\";i:560;s:19:\"table/theme-rtl.css\";i:561;s:23:\"table/theme-rtl.min.css\";i:562;s:15:\"table/theme.css\";i:563;s:19:\"table/theme.min.css\";i:564;s:18:\"tabs/style-rtl.css\";i:565;s:22:\"tabs/style-rtl.min.css\";i:566;s:14:\"tabs/style.css\";i:567;s:18:\"tabs/style.min.css\";i:568;s:23:\"tag-cloud/style-rtl.css\";i:569;s:27:\"tag-cloud/style-rtl.min.css\";i:570;s:19:\"tag-cloud/style.css\";i:571;s:23:\"tag-cloud/style.min.css\";i:572;s:28:\"template-part/editor-rtl.css\";i:573;s:32:\"template-part/editor-rtl.min.css\";i:574;s:24:\"template-part/editor.css\";i:575;s:28:\"template-part/editor.min.css\";i:576;s:27:\"template-part/theme-rtl.css\";i:577;s:31:\"template-part/theme-rtl.min.css\";i:578;s:23:\"template-part/theme.css\";i:579;s:27:\"template-part/theme.min.css\";i:580;s:24:\"term-count/style-rtl.css\";i:581;s:28:\"term-count/style-rtl.min.css\";i:582;s:20:\"term-count/style.css\";i:583;s:24:\"term-count/style.min.css\";i:584;s:30:\"term-description/style-rtl.css\";i:585;s:34:\"term-description/style-rtl.min.css\";i:586;s:26:\"term-description/style.css\";i:587;s:30:\"term-description/style.min.css\";i:588;s:23:\"term-name/style-rtl.css\";i:589;s:27:\"term-name/style-rtl.min.css\";i:590;s:19:\"term-name/style.css\";i:591;s:23:\"term-name/style.min.css\";i:592;s:28:\"term-template/editor-rtl.css\";i:593;s:32:\"term-template/editor-rtl.min.css\";i:594;s:24:\"term-template/editor.css\";i:595;s:28:\"term-template/editor.min.css\";i:596;s:27:\"term-template/style-rtl.css\";i:597;s:31:\"term-template/style-rtl.min.css\";i:598;s:23:\"term-template/style.css\";i:599;s:27:\"term-template/style.min.css\";i:600;s:27:\"text-columns/editor-rtl.css\";i:601;s:31:\"text-columns/editor-rtl.min.css\";i:602;s:23:\"text-columns/editor.css\";i:603;s:27:\"text-columns/editor.min.css\";i:604;s:26:\"text-columns/style-rtl.css\";i:605;s:30:\"text-columns/style-rtl.min.css\";i:606;s:22:\"text-columns/style.css\";i:607;s:26:\"text-columns/style.min.css\";i:608;s:19:\"verse/style-rtl.css\";i:609;s:23:\"verse/style-rtl.min.css\";i:610;s:15:\"verse/style.css\";i:611;s:19:\"verse/style.min.css\";i:612;s:20:\"video/editor-rtl.css\";i:613;s:24:\"video/editor-rtl.min.css\";i:614;s:16:\"video/editor.css\";i:615;s:20:\"video/editor.min.css\";i:616;s:19:\"video/style-rtl.css\";i:617;s:23:\"video/style-rtl.min.css\";i:618;s:15:\"video/style.css\";i:619;s:19:\"video/style.min.css\";i:620;s:19:\"video/theme-rtl.css\";i:621;s:23:\"video/theme-rtl.min.css\";i:622;s:15:\"video/theme.css\";i:623;s:19:\"video/theme.min.css\";}}', 'on'),
(123, '_site_transient_timeout_wp_theme_files_patterns-06c473288cf403bad63289d12537ca9c', '1793106317', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(124, '_site_transient_wp_theme_files_patterns-06c473288cf403bad63289d12537ca9c', 'a:2:{s:7:\"version\";s:3:\"1.5\";s:8:\"patterns\";a:98:{s:21:\"banner-about-book.php\";a:4:{s:5:\"title\";s:28:\"Banner with book description\";s:4:\"slug\";s:34:\"twentytwentyfive/banner-about-book\";s:11:\"description\";s:66:\"Banner with book description and accompanying image for promotion.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:28:\"banner-cover-big-heading.php\";a:4:{s:5:\"title\";s:22:\"Cover with big heading\";s:4:\"slug\";s:41:\"twentytwentyfive/banner-cover-big-heading\";s:11:\"description\";s:82:\"A full-width cover section with a large background image and an oversized heading.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}}s:22:\"banner-intro-image.php\";a:4:{s:5:\"title\";s:49:\"Short heading and paragraph and image on the left\";s:4:\"slug\";s:35:\"twentytwentyfive/banner-intro-image\";s:11:\"description\";s:68:\"A Intro pattern with Short heading, paragraph and image on the left.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:16:\"banner-intro.php\";a:4:{s:5:\"title\";s:35:\"Intro with left-aligned description\";s:4:\"slug\";s:29:\"twentytwentyfive/banner-intro\";s:11:\"description\";s:66:\"A large left-aligned heading with a brand name emphasized in bold.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:17:\"banner-poster.php\";a:4:{s:5:\"title\";s:19:\"Poster-like section\";s:4:\"slug\";s:30:\"twentytwentyfive/banner-poster\";s:11:\"description\";s:78:\"A section that can be used as a banner or a landing page to announce an event.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:5:\"media\";}}s:43:\"banner-with-description-and-images-grid.php\";a:4:{s:5:\"title\";s:39:\"Banner with description and images grid\";s:4:\"slug\";s:47:\"twentytwentyfive/banner-description-images-grid\";s:11:\"description\";s:75:\"A banner with a short paragraph, and two images displayed in a grid layout.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:18:\"binding-format.php\";a:4:{s:5:\"title\";s:16:\"Post format name\";s:4:\"slug\";s:31:\"twentytwentyfive/binding-format\";s:11:\"description\";s:75:\"Prints the name of the post format with the help of the Block Bindings API.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:12:\"comments.php\";a:5:{s:5:\"title\";s:8:\"Comments\";s:4:\"slug\";s:25:\"twentytwentyfive/comments\";s:11:\"description\";s:63:\"Comments area with comments list, pagination, and comment form.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:13:\"core/comments\";}}s:32:\"contact-centered-social-link.php\";a:5:{s:5:\"title\";s:30:\"Centered link and social links\";s:4:\"slug\";s:45:\"twentytwentyfive/contact-centered-social-link\";s:11:\"description\";s:73:\"Centered contact section with a prominent message and social media links.\";s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:3:{i:0;s:7:\"contact\";i:1;s:3:\"faq\";i:2;s:9:\"questions\";}}s:26:\"contact-info-locations.php\";a:6:{s:5:\"title\";s:27:\"Contact, info and locations\";s:4:\"slug\";s:39:\"twentytwentyfive/contact-info-locations\";s:11:\"description\";s:78:\"Contact section with social media links, email, and multiple location details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"location\";}}s:29:\"contact-location-and-link.php\";a:4:{s:5:\"title\";s:25:\"Contact location and link\";s:4:\"slug\";s:42:\"twentytwentyfive/contact-location-and-link\";s:11:\"description\";s:89:\"Contact section with a location address, a directions link, and an image of the location.\";s:10:\"categories\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"featured\";}}s:18:\"cta-book-links.php\";a:4:{s:5:\"title\";s:30:\"Call to action with book links\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-book-links\";s:11:\"description\";s:74:\"A call to action section with links to get the book in different websites.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:22:\"cta-book-locations.php\";a:4:{s:5:\"title\";s:29:\"Call to action with locations\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-book-locations\";s:11:\"description\";s:82:\"A call to action section with links to get the book in the most popular locations.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:24:\"cta-centered-heading.php\";a:4:{s:5:\"title\";s:16:\"Centered heading\";s:4:\"slug\";s:37:\"twentytwentyfive/cta-centered-heading\";s:11:\"description\";s:53:\"A hero with a centered heading, paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:19:\"cta-events-list.php\";a:4:{s:5:\"title\";s:11:\"Events list\";s:4:\"slug\";s:32:\"twentytwentyfive/cta-events-list\";s:11:\"description\";s:37:\"A list of events with call to action.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:26:\"cta-grid-products-link.php\";a:5:{s:5:\"title\";s:54:\"Call to action with grid layout with products and link\";s:4:\"slug\";s:39:\"twentytwentyfive/cta-grid-products-link\";s:11:\"description\";s:42:\"A call to action featuring product images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}}s:22:\"cta-heading-search.php\";a:4:{s:5:\"title\";s:23:\"Heading and search form\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-heading-search\";s:11:\"description\";s:54:\"Large heading with a search form for quick navigation.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:18:\"cta-newsletter.php\";a:5:{s:5:\"title\";s:18:\"Newsletter sign-up\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-newsletter\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:10:\"newsletter\";}}s:15:\"event-3-col.php\";a:5:{s:5:\"title\";s:46:\"Events, 3 columns with event images and titles\";s:4:\"slug\";s:28:\"twentytwentyfive/event-3-col\";s:11:\"description\";s:95:\"A header with title and text and three columns that show 3 events with their images and titles.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:6:\"events\";i:1;s:7:\"columns\";i:2;s:6:\"images\";}}s:14:\"event-rsvp.php\";a:7:{s:5:\"title\";s:10:\"Event RSVP\";s:4:\"slug\";s:27:\"twentytwentyfive/event-rsvp\";s:11:\"description\";s:64:\"RSVP for an upcoming event with a cover image and event details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:4:\"rsvp\";i:2;s:5:\"event\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:18:\"event-schedule.php\";a:5:{s:5:\"title\";s:14:\"Event schedule\";s:4:\"slug\";s:31:\"twentytwentyfive/event-schedule\";s:11:\"description\";s:54:\"A section with specified dates and times for an event.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}s:8:\"keywords\";a:4:{i:0;s:6:\"events\";i:1;s:6:\"agenda\";i:2;s:8:\"schedule\";i:3;s:8:\"lectures\";}}s:19:\"footer-centered.php\";a:5:{s:5:\"title\";s:15:\"Centered footer\";s:4:\"slug\";s:32:\"twentytwentyfive/footer-centered\";s:11:\"description\";s:44:\"Footer with centered site title and tagline.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:18:\"footer-columns.php\";a:5:{s:5:\"title\";s:19:\"Footer with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/footer-columns\";s:11:\"description\";s:45:\"Footer columns with title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:21:\"footer-newsletter.php\";a:5:{s:5:\"title\";s:29:\"Footer with newsletter signup\";s:4:\"slug\";s:34:\"twentytwentyfive/footer-newsletter\";s:11:\"description\";s:51:\"Footer with large site title and newsletter signup.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:17:\"footer-social.php\";a:5:{s:5:\"title\";s:33:\"Centered footer with social links\";s:4:\"slug\";s:30:\"twentytwentyfive/footer-social\";s:11:\"description\";s:49:\"Footer with centered site title and social links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:10:\"footer.php\";a:5:{s:5:\"title\";s:6:\"Footer\";s:4:\"slug\";s:23:\"twentytwentyfive/footer\";s:11:\"description\";s:51:\"Footer columns with logo, title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:16:\"format-audio.php\";a:4:{s:5:\"title\";s:12:\"Audio format\";s:4:\"slug\";s:29:\"twentytwentyfive/format-audio\";s:11:\"description\";s:73:\"An audio post format with an image, title, audio player, and description.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"format-link.php\";a:4:{s:5:\"title\";s:11:\"Link format\";s:4:\"slug\";s:28:\"twentytwentyfive/format-link\";s:11:\"description\";s:77:\"A link post format with a description and an emphasized link for key content.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"grid-videos.php\";a:4:{s:5:\"title\";s:16:\"Grid with videos\";s:4:\"slug\";s:28:\"twentytwentyfive/grid-videos\";s:11:\"description\";s:19:\"A grid with videos.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:24:\"grid-with-categories.php\";a:5:{s:5:\"title\";s:20:\"Grid with categories\";s:4:\"slug\";s:37:\"twentytwentyfive/grid-with-categories\";s:11:\"description\";s:41:\"A grid section with different categories.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:19:\"header-centered.php\";a:5:{s:5:\"title\";s:20:\"Centered site header\";s:4:\"slug\";s:32:\"twentytwentyfive/header-centered\";s:11:\"description\";s:52:\"Site header with centered site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:18:\"header-columns.php\";a:5:{s:5:\"title\";s:19:\"Header with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/header-columns\";s:11:\"description\";s:54:\"Site header with site title and navigation in columns.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:22:\"header-large-title.php\";a:5:{s:5:\"title\";s:23:\"Header with large title\";s:4:\"slug\";s:35:\"twentytwentyfive/header-large-title\";s:11:\"description\";s:63:\"Site header with large site title and right-aligned navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:10:\"header.php\";a:5:{s:5:\"title\";s:6:\"Header\";s:4:\"slug\";s:23:\"twentytwentyfive/header\";s:11:\"description\";s:43:\"Site header with site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:36:\"heading-and-paragraph-with-image.php\";a:4:{s:5:\"title\";s:45:\"Heading and paragraph with image on the right\";s:4:\"slug\";s:49:\"twentytwentyfive/heading-and-paragraph-with-image\";s:11:\"description\";s:89:\"A two-column section with a heading and paragraph on the left, and an image on the right.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:13:\"hero-book.php\";a:5:{s:5:\"title\";s:9:\"Hero book\";s:4:\"slug\";s:26:\"twentytwentyfive/hero-book\";s:11:\"description\";s:66:\"A hero section for the book with a description and pre-order link.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:25:\"hero-full-width-image.php\";a:4:{s:5:\"title\";s:22:\"Hero, full width image\";s:4:\"slug\";s:38:\"twentytwentyfive/hero-full-width-image\";s:11:\"description\";s:68:\"A hero with a full width image, heading, short paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:41:\"hero-overlapped-book-cover-with-links.php\";a:4:{s:5:\"title\";s:38:\"Hero, overlapped book cover with links\";s:4:\"slug\";s:54:\"twentytwentyfive/hero-overlapped-book-cover-with-links\";s:11:\"description\";s:47:\"A hero with an overlapped book cover and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:16:\"hero-podcast.php\";a:5:{s:5:\"title\";s:12:\"Hero podcast\";s:4:\"slug\";s:29:\"twentytwentyfive/hero-podcast\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:14:\"hidden-404.php\";a:4:{s:5:\"title\";s:3:\"404\";s:4:\"slug\";s:27:\"twentytwentyfive/hidden-404\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"hidden-blog-heading.php\";a:4:{s:5:\"title\";s:19:\"Hidden blog heading\";s:4:\"slug\";s:36:\"twentytwentyfive/hidden-blog-heading\";s:11:\"description\";s:52:\"Hidden heading for the home page and index template.\";s:8:\"inserter\";b:0;}s:17:\"hidden-search.php\";a:4:{s:5:\"title\";s:6:\"Search\";s:4:\"slug\";s:30:\"twentytwentyfive/hidden-search\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:18:\"hidden-sidebar.php\";a:4:{s:5:\"title\";s:7:\"Sidebar\";s:4:\"slug\";s:31:\"twentytwentyfive/hidden-sidebar\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:21:\"hidden-written-by.php\";a:4:{s:5:\"title\";s:10:\"Written by\";s:4:\"slug\";s:34:\"twentytwentyfive/hidden-written-by\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:9:\"logos.php\";a:4:{s:5:\"title\";s:5:\"Logos\";s:4:\"slug\";s:22:\"twentytwentyfive/logos\";s:11:\"description\";s:77:\"Showcasing the podcast\'s clients with a heading and a series of client logos.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:24:\"media-instagram-grid.php\";a:5:{s:5:\"title\";s:14:\"Instagram grid\";s:4:\"slug\";s:37:\"twentytwentyfive/media-instagram-grid\";s:11:\"description\";s:62:\"A grid section with photos and a link to an Instagram profile.\";s:13:\"viewportWidth\";i:1440;s:10:\"categories\";a:3:{i:0;s:5:\"media\";i:1;s:7:\"gallery\";i:2;s:8:\"featured\";}}s:14:\"more-posts.php\";a:5:{s:5:\"title\";s:10:\"More posts\";s:4:\"slug\";s:27:\"twentytwentyfive/more-posts\";s:11:\"description\";s:45:\"Displays a list of posts with title and date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:21:\"overlapped-images.php\";a:4:{s:5:\"title\";s:41:\"Overlapping images and paragraph on right\";s:4:\"slug\";s:34:\"twentytwentyfive/overlapped-images\";s:11:\"description\";s:53:\"A section with overlapping images, and a description.\";s:10:\"categories\";a:2:{i:0;s:5:\"about\";i:1;s:8:\"featured\";}}s:22:\"page-business-home.php\";a:8:{s:5:\"title\";s:17:\"Business homepage\";s:4:\"slug\";s:35:\"twentytwentyfive/page-business-home\";s:11:\"description\";s:28:\"A business homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:20:\"page-coming-soon.php\";a:8:{s:5:\"title\";s:11:\"Coming soon\";s:4:\"slug\";s:33:\"twentytwentyfive/page-coming-soon\";s:11:\"description\";s:96:\"A full-width cover banner that can be applied to a page or it can work as a single landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:15:\"page-cv-bio.php\";a:7:{s:5:\"title\";s:6:\"CV/bio\";s:4:\"slug\";s:28:\"twentytwentyfive/page-cv-bio\";s:11:\"description\";s:36:\"A pattern for a CV/Bio landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:21:\"page-landing-book.php\";a:8:{s:5:\"title\";s:21:\"Landing page for book\";s:4:\"slug\";s:34:\"twentytwentyfive/page-landing-book\";s:11:\"description\";s:104:\"A landing page for the book with a hero section, pre-order links, locations, FAQs and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:22:\"page-landing-event.php\";a:8:{s:5:\"title\";s:22:\"Landing page for event\";s:4:\"slug\";s:35:\"twentytwentyfive/page-landing-event\";s:11:\"description\";s:87:\"A landing page for the event with a hero section, description, FAQs and call to action.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:24:\"page-landing-podcast.php\";a:8:{s:5:\"title\";s:24:\"Landing page for podcast\";s:4:\"slug\";s:37:\"twentytwentyfive/page-landing-podcast\";s:11:\"description\";s:111:\"A landing page for the podcast with a hero section, description, logos, grid with videos and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:50:\"page-link-in-bio-heading-paragraph-links-image.php\";a:7:{s:5:\"title\";s:59:\"Link in bio heading, paragraph, links and full-height image\";s:4:\"slug\";s:63:\"twentytwentyfive/page-link-in-bio-heading-paragraph-links-image\";s:11:\"description\";s:84:\"A link in bio landing page with a heading, paragraph, links and a full height image.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:33:\"page-link-in-bio-wide-margins.php\";a:7:{s:5:\"title\";s:48:\"Link in bio with profile, links and wide margins\";s:4:\"slug\";s:46:\"twentytwentyfive/page-link-in-bio-wide-margins\";s:11:\"description\";s:86:\"A link in bio landing page with social links, a profile photo and a brief description.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:39:\"page-link-in-bio-with-tight-margins.php\";a:8:{s:5:\"title\";s:30:\"Link in bio with tight margins\";s:4:\"slug\";s:52:\"twentytwentyfive/page-link-in-bio-with-tight-margins\";s:11:\"description\";s:90:\"A full-width, full-height link in bio section with an image, a paragraph and social links.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:23:\"page-portfolio-home.php\";a:8:{s:5:\"title\";s:18:\"Portfolio homepage\";s:4:\"slug\";s:36:\"twentytwentyfive/page-portfolio-home\";s:11:\"description\";s:29:\"A portfolio homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"posts\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:18:\"page-shop-home.php\";a:8:{s:5:\"title\";s:13:\"Shop homepage\";s:4:\"slug\";s:31:\"twentytwentyfive/page-shop-home\";s:11:\"description\";s:24:\"A shop homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfive_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:19:\"post-navigation.php\";a:5:{s:5:\"title\";s:15:\"Post navigation\";s:4:\"slug\";s:32:\"twentytwentyfive/post-navigation\";s:11:\"description\";s:29:\"Next and previous post links.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/post-navigation-link\";}}s:17:\"pricing-2-col.php\";a:5:{s:5:\"title\";s:18:\"Pricing, 2 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-2-col\";s:11:\"description\";s:88:\"Pricing section with two columns, pricing plan, description, and call-to-action buttons.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:17:\"pricing-3-col.php\";a:4:{s:5:\"title\";s:18:\"Pricing, 3 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-3-col\";s:11:\"description\";s:100:\"A three-column boxed pricing table designed to showcase services, descriptions, and pricing options.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:18:\"services-3-col.php\";a:4:{s:5:\"title\";s:19:\"Services, 3 columns\";s:4:\"slug\";s:31:\"twentytwentyfive/services-3-col\";s:11:\"description\";s:56:\"Three columns with images and text to showcase services.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:36:\"services-subscriber-only-section.php\";a:4:{s:5:\"title\";s:33:\"Services, subscriber only section\";s:4:\"slug\";s:49:\"twentytwentyfive/services-subscriber-only-section\";s:11:\"description\";s:72:\"A subscriber-only section highlighting exclusive services and offerings.\";s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"services\";}}s:24:\"services-team-photos.php\";a:4:{s:5:\"title\";s:21:\"Services, team photos\";s:4:\"slug\";s:37:\"twentytwentyfive/services-team-photos\";s:11:\"description\";s:59:\"Display team photos in a services section with grid layout.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";i:2;s:8:\"featured\";}}s:37:\"template-404-vertical-header-blog.php\";a:5:{s:5:\"title\";s:17:\"Right-aligned 404\";s:4:\"slug\";s:50:\"twentytwentyfive/template-404-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:3:\"404\";}}s:30:\"template-archive-news-blog.php\";a:6:{s:5:\"title\";s:17:\"News blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:31:\"template-archive-photo-blog.php\";a:6:{s:5:\"title\";s:18:\"Photo blog archive\";s:4:\"slug\";s:44:\"twentytwentyfive/template-archive-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:30:\"template-archive-text-blog.php\";a:6:{s:5:\"title\";s:17:\"Text blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:41:\"template-archive-vertical-header-blog.php\";a:6:{s:5:\"title\";s:21:\"Right-aligned archive\";s:4:\"slug\";s:54:\"twentytwentyfive/template-archive-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:27:\"template-home-news-blog.php\";a:6:{s:5:\"title\";s:14:\"News blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-home-photo-blog.php\";a:6:{s:5:\"title\";s:15:\"Photo blog home\";s:4:\"slug\";s:41:\"twentytwentyfive/template-home-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:38:\"template-home-posts-grid-news-blog.php\";a:5:{s:5:\"title\";s:34:\"News blog with featured posts grid\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-posts-grid-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:27:\"template-home-text-blog.php\";a:6:{s:5:\"title\";s:14:\"Text blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:10:\"front-page\";i:1;s:4:\"home\";}}s:38:\"template-home-vertical-header-blog.php\";a:6:{s:5:\"title\";s:18:\"Right-aligned home\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:40:\"template-home-with-sidebar-news-blog.php\";a:6:{s:5:\"title\";s:22:\"News blog with sidebar\";s:4:\"slug\";s:53:\"twentytwentyfive/template-home-with-sidebar-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-page-photo-blog.php\";a:5:{s:5:\"title\";s:15:\"Photo blog page\";s:4:\"slug\";s:41:\"twentytwentyfive/template-page-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:38:\"template-page-vertical-header-blog.php\";a:5:{s:5:\"title\";s:18:\"Right-aligned page\";s:4:\"slug\";s:51:\"twentytwentyfive/template-page-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:33:\"template-query-loop-news-blog.php\";a:4:{s:5:\"title\";s:20:\"News blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:34:\"template-query-loop-photo-blog.php\";a:6:{s:5:\"title\";s:16:\"Photo blog posts\";s:4:\"slug\";s:47:\"twentytwentyfive/template-query-loop-photo-blog\";s:11:\"description\";s:54:\"A list of posts, 3 columns, with only featured images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:33:\"template-query-loop-text-blog.php\";a:4:{s:5:\"title\";s:20:\"Text blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-text-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:44:\"template-query-loop-vertical-header-blog.php\";a:4:{s:5:\"title\";s:24:\"Right-aligned query loop\";s:4:\"slug\";s:57:\"twentytwentyfive/template-query-loop-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"template-query-loop.php\";a:5:{s:5:\"title\";s:23:\"List of posts, 1 column\";s:4:\"slug\";s:36:\"twentytwentyfive/template-query-loop\";s:11:\"description\";s:61:\"A list of posts, 1 column, with featured image and post date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:29:\"template-search-news-blog.php\";a:6:{s:5:\"title\";s:24:\"News blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:30:\"template-search-photo-blog.php\";a:6:{s:5:\"title\";s:25:\"Photo blog search results\";s:4:\"slug\";s:43:\"twentytwentyfive/template-search-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:29:\"template-search-text-blog.php\";a:6:{s:5:\"title\";s:24:\"Text blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-search-vertical-header-blog.php\";a:6:{s:5:\"title\";s:26:\"Right-aligned blog, search\";s:4:\"slug\";s:53:\"twentytwentyfive/template-search-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-single-left-aligned-content.php\";a:6:{s:5:\"title\";s:30:\"Post with left-aligned content\";s:4:\"slug\";s:47:\"twentytwentyfive/post-with-left-aligned-content\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-news-blog.php\";a:6:{s:5:\"title\";s:34:\"News blog single post with sidebar\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:26:\"template-single-offset.php\";a:6:{s:5:\"title\";s:34:\"Offset post without featured image\";s:4:\"slug\";s:39:\"twentytwentyfive/template-single-offset\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:30:\"template-single-photo-blog.php\";a:6:{s:5:\"title\";s:22:\"Photo blog single post\";s:4:\"slug\";s:43:\"twentytwentyfive/template-single-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-text-blog.php\";a:6:{s:5:\"title\";s:21:\"Text blog single post\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:40:\"template-single-vertical-header-blog.php\";a:6:{s:5:\"title\";s:25:\"Right-aligned single post\";s:4:\"slug\";s:53:\"twentytwentyfive/template-single-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:22:\"testimonials-2-col.php\";a:5:{s:5:\"title\";s:21:\"2 columns with avatar\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-2-col\";s:11:\"description\";s:42:\"Two columns with testimonials and avatars.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-6-col.php\";a:5:{s:5:\"title\";s:35:\"3 column layout with 6 testimonials\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-6-col\";s:11:\"description\";s:86:\"A section with three columns and two rows, each containing a testimonial and citation.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-large.php\";a:5:{s:5:\"title\";s:32:\"Review with large image on right\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-large\";s:11:\"description\";s:46:\"A testimonial with a large image on the right.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:13:\"text-faqs.php\";a:6:{s:5:\"title\";s:4:\"FAQs\";s:4:\"slug\";s:26:\"twentytwentyfive/text-faqs\";s:11:\"description\";s:68:\"A FAQs section with a FAQ heading and list of questions and answers.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}s:8:\"keywords\";a:5:{i:0;s:3:\"faq\";i:1;s:5:\"about\";i:2;s:10:\"frequently\";i:3;s:5:\"asked\";i:4;s:9:\"questions\";}}s:19:\"vertical-header.php\";a:6:{s:5:\"title\";s:20:\"Vertical site header\";s:4:\"slug\";s:32:\"twentytwentyfive/vertical-header\";s:11:\"description\";s:52:\"Vertical site header with site title and navigation.\";s:13:\"viewportWidth\";i:300;s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:34:\"core/template-part/vertical-header\";}}}}', 'off'),
(125, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1793104561;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(126, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"0da31be3f4d2fc173bbbaf2875758837\";s:6:\"blocks\";a:9:{s:32:\"832dc2d864d79097d8b8b493ad93453b\";s:0:\"\";s:32:\"45d3e0c4afcbd8cf25cb1ba51abfb3d7\";s:46:\":root :where(.wp-block-icon svg){width: 24px;}\";s:32:\"feca6e996f694be2d29599793228e0d7\";s:0:\"\";s:32:\"5eef131663eddaf830554df656fc2968\";s:0:\"\";s:32:\"c99c05932c6685777ec5b856698fcc7d\";s:0:\"\";s:32:\"dec8d648f30b13caec8e61374591787d\";s:0:\"\";s:32:\"6c35533f7a92cce94808323603db9fc8\";s:0:\"\";s:32:\"6a0505cd5c78a87ed77570cda43c1132\";s:0:\"\";s:32:\"25a66f156386551185570f72a9f7d44e\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(128, 'recovery_keys', 'a:0:{}', 'off'),
(132, '_site_transient_timeout_theme_roots', '1793107990', 'off'),
(133, '_site_transient_theme_roots', 'a:5:{s:13:\"astra-ceramic\";s:7:\"/themes\";s:5:\"astra\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}', 'off'),
(134, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-7.1.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-7.1.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-7.1.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-7.1.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"7.1.3\";s:7:\"version\";s:5:\"7.1.3\";s:11:\"php_version\";s:3:\"7.4\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1793104652;s:15:\"version_checked\";s:5:\"7.1.3\";s:12:\"translations\";a:0:{}}', 'off'),
(136, 'current_theme', 'Ceramica - Artisanal Ceramic Studio', 'auto'),
(137, 'theme_switched', '', 'auto'),
(141, 'bsf_usage_migrated', '1', 'off'),
(142, 'theme_mods_astra', 'a:2:{s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1793106190;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-1\";a:0:{}s:24:\"advanced-footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-3\";a:0:{}s:24:\"advanced-footer-widget-4\";a:0:{}}}}', 'off'),
(146, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1793104657;s:7:\"checked\";a:4:{s:5:\"astra\";s:6:\"4.14.1\";s:16:\"twentytwentyfive\";s:3:\"1.5\";s:16:\"twentytwentyfour\";s:3:\"1.6\";s:17:\"twentytwentythree\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:5:\"astra\";a:6:{s:5:\"theme\";s:5:\"astra\";s:11:\"new_version\";s:6:\"4.14.1\";s:3:\"url\";s:35:\"https://wordpress.org/themes/astra/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/astra.4.14.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.3\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.5.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.6.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.7.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(147, 'action_scheduler_hybrid_store_demarkation', '5', 'auto'),
(148, 'schema-ActionScheduler_StoreSchema', '8.0.1793104659', 'auto'),
(149, 'schema-ActionScheduler_LoggerSchema', '3.0.1793104659', 'auto'),
(150, '_transient_timeout_as-post-store-dependencies-met', '1793191059', 'off'),
(151, '_transient_as-post-store-dependencies-met', 'yes', 'off'),
(155, 'woocommerce_newly_installed', 'no', 'auto'),
(156, 'woocommerce_order_stats_has_fulfillment_column', 'no', 'off'),
(157, 'woocommerce_schema_version', '920', 'auto'),
(158, 'woocommerce_store_address', '', 'on'),
(159, 'woocommerce_store_address_2', '', 'on'),
(160, 'woocommerce_store_city', '', 'on'),
(161, 'woocommerce_default_country', 'US:CA', 'on'),
(162, 'woocommerce_store_postcode', '', 'on'),
(163, 'woocommerce_allowed_countries', 'all', 'on'),
(164, 'woocommerce_all_except_countries', '', 'on'),
(165, 'woocommerce_specific_allowed_countries', '', 'on'),
(166, 'woocommerce_ship_to_countries', '', 'on'),
(167, 'woocommerce_specific_ship_to_countries', '', 'on'),
(168, 'woocommerce_default_customer_address', 'base', 'on'),
(169, 'woocommerce_address_autocomplete_enabled', 'no', 'on'),
(170, 'woocommerce_calc_taxes', 'no', 'on'),
(171, 'woocommerce_enable_coupons', 'yes', 'on'),
(172, 'woocommerce_calc_discounts_sequentially', 'no', 'off'),
(173, 'woocommerce_currency', 'USD', 'on'),
(174, 'woocommerce_currency_pos', 'left', 'on'),
(175, 'woocommerce_price_thousand_sep', ',', 'on'),
(176, 'woocommerce_price_decimal_sep', '.', 'on'),
(177, 'woocommerce_price_num_decimals', '2', 'on'),
(178, 'woocommerce_shop_page_id', '6', 'on'),
(179, 'woocommerce_cart_redirect_after_add', 'no', 'on'),
(180, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'on'),
(181, 'woocommerce_placeholder_image', '5', 'on'),
(182, 'woocommerce_weight_unit', 'lbs', 'on'),
(183, 'woocommerce_dimension_unit', 'in', 'on'),
(184, 'woocommerce_enable_reviews', 'yes', 'on'),
(185, 'woocommerce_review_rating_verification_label', 'yes', 'off'),
(186, 'woocommerce_review_rating_verification_required', 'no', 'off'),
(187, 'woocommerce_enable_review_rating', 'yes', 'on'),
(188, 'woocommerce_review_rating_required', 'yes', 'off'),
(189, 'woocommerce_manage_stock', 'yes', 'on'),
(190, 'woocommerce_hold_stock_minutes', '60', 'off'),
(191, 'woocommerce_notify_low_stock', 'yes', 'off'),
(192, 'woocommerce_notify_no_stock', 'yes', 'off'),
(193, 'woocommerce_notify_backorder', 'yes', 'off'),
(194, 'woocommerce_stock_email_recipient', 'admin@ceramicstudio.local', 'off'),
(195, 'woocommerce_notify_low_stock_amount', '2', 'off'),
(196, 'woocommerce_notify_no_stock_amount', '0', 'on'),
(197, 'woocommerce_hide_out_of_stock_items', 'no', 'on'),
(198, 'woocommerce_stock_format', '', 'on'),
(199, 'woocommerce_file_download_method', 'force', 'off'),
(200, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'off'),
(201, 'woocommerce_downloads_require_login', 'no', 'off'),
(202, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'off'),
(203, 'woocommerce_downloads_deliver_inline', '', 'off'),
(204, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'on'),
(205, 'woocommerce_downloads_count_partial', 'yes', 'on'),
(207, 'woocommerce_attribute_lookup_direct_updates', 'no', 'on'),
(208, 'woocommerce_attribute_lookup_optimized_updates', 'no', 'on'),
(209, 'woocommerce_product_match_featured_image_by_sku', 'no', 'on'),
(210, 'woocommerce_prices_include_tax', 'no', 'on'),
(211, 'woocommerce_tax_based_on', 'shipping', 'on'),
(212, 'woocommerce_shipping_tax_class', 'inherit', 'on'),
(213, 'woocommerce_tax_round_at_subtotal', 'no', 'on'),
(214, 'woocommerce_tax_classes', '', 'on'),
(215, 'woocommerce_tax_display_shop', 'excl', 'on'),
(216, 'woocommerce_tax_display_cart', 'excl', 'on'),
(217, 'woocommerce_price_display_suffix', '', 'on'),
(218, 'woocommerce_tax_total_display', 'itemized', 'off'),
(219, 'woocommerce_enable_shipping_calc', 'yes', 'off'),
(220, 'woocommerce_shipping_cost_requires_address', 'no', 'on'),
(221, 'woocommerce_shipping_hide_rates_when_free', 'no', 'off'),
(222, 'woocommerce_ship_to_destination', 'billing', 'off'),
(223, 'woocommerce_shipping_debug_mode', 'no', 'on'),
(224, 'woocommerce_enable_guest_checkout', 'yes', 'off'),
(225, 'woocommerce_enable_checkout_login_reminder', 'no', 'off'),
(226, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'off'),
(227, 'woocommerce_enable_myaccount_registration', 'yes', 'off'),
(228, 'woocommerce_registration_generate_password', 'yes', 'off'),
(229, 'woocommerce_registration_generate_username', 'yes', 'off'),
(230, 'woocommerce_erasure_request_removes_order_data', 'no', 'off'),
(231, 'woocommerce_erasure_request_removes_download_data', 'no', 'off'),
(232, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'off'),
(233, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'on'),
(234, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'on'),
(235, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'off'),
(236, 'woocommerce_trash_pending_orders', '', 'off'),
(237, 'woocommerce_trash_failed_orders', '', 'off'),
(238, 'woocommerce_trash_cancelled_orders', '', 'off'),
(239, 'woocommerce_anonymize_refunded_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'off'),
(240, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'off'),
(241, 'woocommerce_email_from_address', 'admin@ceramicstudio.local', 'off'),
(242, 'woocommerce_email_reply_to_enabled', 'no', 'off'),
(243, 'woocommerce_email_reply_to_name', '', 'off'),
(244, 'woocommerce_email_reply_to_address', '', 'off'),
(245, 'woocommerce_email_header_image', '', 'off'),
(246, 'woocommerce_email_header_image_width', '120', 'on'),
(247, 'woocommerce_email_header_alignment', 'left', 'on'),
(248, 'woocommerce_email_font_family', 'Helvetica', 'on'),
(249, 'woocommerce_email_footer_text', '{site_title}<br />{store_address}', 'off'),
(250, 'woocommerce_email_base_color', '#8526ff', 'off'),
(251, 'woocommerce_email_background_color', '#ffffff', 'off'),
(252, 'woocommerce_email_body_background_color', '#ffffff', 'off'),
(253, 'woocommerce_email_text_color', '#1e1e1e', 'off'),
(254, 'woocommerce_email_footer_text_color', '#787c82', 'off'),
(255, 'woocommerce_email_auto_sync_with_theme', 'yes', 'off'),
(256, 'woocommerce_pos_store_address', '', 'on'),
(257, 'woocommerce_pos_store_phone', '', 'on'),
(258, 'woocommerce_pos_store_email', 'admin@ceramicstudio.local', 'on'),
(259, 'woocommerce_pos_refund_returns_policy', '', 'on'),
(260, 'woocommerce_cart_page_id', '7', 'off'),
(261, 'woocommerce_checkout_page_id', '8', 'off'),
(262, 'woocommerce_myaccount_page_id', '9', 'off'),
(263, 'woocommerce_terms_page_id', '', 'off'),
(264, 'woocommerce_force_ssl_checkout', 'no', 'on'),
(265, 'woocommerce_unforce_ssl_checkout', 'no', 'on'),
(266, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'on'),
(267, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'on'),
(268, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'on'),
(269, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'on'),
(270, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'on'),
(271, 'woocommerce_myaccount_orders_endpoint', 'orders', 'on'),
(272, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'on'),
(273, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'on'),
(274, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'on'),
(275, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'on'),
(276, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'on'),
(277, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'on'),
(278, 'woocommerce_logout_endpoint', 'customer-logout', 'on'),
(279, 'woocommerce_allow_tracking', 'no', 'on'),
(280, 'woocommerce_show_marketplace_suggestions', 'yes', 'off'),
(281, 'woocommerce_custom_orders_table_enabled', 'yes', 'on'),
(282, 'woocommerce_analytics_enabled', 'yes', 'on'),
(283, 'woocommerce_feature_rate_limit_checkout_enabled', 'no', 'on'),
(284, 'woocommerce_feature_order_withdrawal_enabled', 'no', 'on'),
(285, 'woocommerce_queue_flush_rewrite_rules', 'no', 'auto'),
(286, 'woocommerce_feature_order_attribution_enabled', 'yes', 'on'),
(287, 'woocommerce_hpos_datastore_caching_enabled', 'no', 'on'),
(288, 'woocommerce_feature_remote_logging_enabled', 'yes', 'on'),
(289, 'woocommerce_feature_deferred_transactional_emails_enabled', 'no', 'on'),
(290, 'woocommerce_feature_customer_review_request_enabled', 'no', 'on'),
(291, 'woocommerce_feature_email_improvements_enabled', 'yes', 'on'),
(292, '_transient_timeout_wc_settings_email_improvements_reverted', '1793104694', 'off'),
(293, '_transient_wc_settings_email_improvements_reverted', 'yes', 'off'),
(294, 'woocommerce_email_improvements_disabled_count', '1', 'auto'),
(295, 'woocommerce_email_improvements_first_disabled_at', '2026-10-27 12:38:00', 'auto'),
(296, 'woocommerce_email_improvements_last_disabled_at', '2026-10-27 12:38:00', 'auto'),
(297, 'woocommerce_feature_blueprint_enabled', 'yes', 'on'),
(298, 'woocommerce_feature_cost_of_goods_sold_enabled', 'no', 'on'),
(299, 'woocommerce_feature_product_gallery_videos_enabled', 'no', 'on'),
(300, 'woocommerce_hpos_fts_index_enabled', 'no', 'on'),
(301, 'woocommerce_feature_block_email_editor_enabled', 'no', 'on'),
(302, 'woocommerce_feature_mcp_integration_enabled', 'no', 'on'),
(303, 'woocommerce_feature_destroy-empty-sessions_enabled', 'no', 'on'),
(304, 'woocommerce_feature_rest_api_caching_enabled', 'no', 'on'),
(305, 'woocommerce_cart_save_for_later_enabled', 'no', 'on'),
(306, 'woocommerce_product_wishlist_enabled', 'no', 'on'),
(307, 'woocommerce_feature_product_instance_caching_enabled', 'yes', 'on'),
(308, 'woocommerce_feature_customer_stock_notifications_enabled', 'no', 'on'),
(309, 'woocommerce_feature_block_editor_unified_assets_enabled', 'no', 'on'),
(310, 'woocommerce_single_image_width', '600', 'on'),
(311, 'woocommerce_thumbnail_image_width', '300', 'on'),
(312, 'woocommerce_checkout_highlight_required_fields', 'yes', 'on'),
(313, 'woocommerce_demo_store', 'no', 'off'),
(314, 'wc_downloads_approved_directories_mode', 'enabled', 'auto'),
(315, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'auto'),
(316, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'on'),
(320, 'default_product_cat', '15', 'auto'),
(321, 'woocommerce_refund_returns_page_id', '10', 'auto'),
(324, 'woocommerce_paypal_settings', 'a:25:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:25:\"admin@ceramicstudio.local\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:14:\"paypal_buttons\";s:3:\"yes\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:9:\"image_url\";s:0:\"\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:25:\"admin@ceramicstudio.local\";s:14:\"identity_token\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:28:\"transact_onboarding_complete\";s:2:\"no\";s:12:\"_should_load\";s:2:\"no\";}', 'on'),
(325, 'woocommerce_version', '11.2.1', 'auto'),
(326, 'woocommerce_db_version', '11.2.1', 'auto'),
(327, 'woocommerce_store_id', '25352ff5-5c1b-4a9c-8492-56a733d06e51', 'auto'),
(328, 'woocommerce_admin_install_timestamp', '1793104691', 'auto'),
(329, 'woocommerce_inbox_variant_assignment', '12', 'auto'),
(330, 'woocommerce_remote_variant_assignment', '29', 'auto'),
(331, 'woocommerce_attribute_lookup_enabled', 'no', 'auto'),
(334, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'on'),
(335, 'woocommerce_admin_notices', 'a:0:{}', 'auto'),
(336, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"XyV14Y93xJt5p7lpIopWNliGoyxGq9Sq\";}', 'on'),
(337, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'on'),
(338, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(339, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(340, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(341, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(342, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(343, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(344, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(345, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(346, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(347, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(348, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(349, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(350, 'widget_wc_brands_brand_description', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(351, 'widget_woocommerce_brand_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(352, 'widget_wc_brands_brand_thumbnails', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(353, '_transient_woocommerce_product_task_has_product_transient', 'no', 'on'),
(356, 'wc_variation_gallery_migration_completed_at', '1793104696', 'auto'),
(357, 'jetpack_options', 'a:1:{s:14:\"last_heartbeat\";i:1793104696;}', 'auto'),
(358, '_transient_timeout_woocommerce_blocks_asset_api_script_data', '1795698733', 'off'),
(359, '_transient_woocommerce_blocks_asset_api_script_data', '{\"script_data\":{\"assets\\/client\\/blocks\\/wc-settings.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-settings.js\",\"version\":\"39ec5ab05e9783d0d5a5\",\"dependencies\":[\"wc-types\",\"wp-hooks\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-types.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-types.js\",\"version\":\"c4b7280ca0810ce973be\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-entities.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-entities.js\",\"version\":\"bcb2165cc1d82aabfed2\",\"dependencies\":[\"wc-settings\",\"wp-core-data\",\"wp-data\",\"wp-deprecated\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-middleware.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-middleware.js\",\"version\":\"2c049fe250c153b7cac8\",\"dependencies\":[\"wp-api-fetch\",\"wp-polyfill\",\"wp-url\"]},\"assets\\/client\\/blocks\\/wc-blocks-data.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-data.js\",\"version\":\"6b60c6e7e3b63b6961b7\",\"dependencies\":[\"wc-blocks-checkout-events\",\"wc-blocks-registry\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-data\",\"wp-data-controls\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-notices\",\"wp-polyfill\",\"wp-url\"]},\"assets\\/client\\/blocks\\/wc-blocks-registry.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-registry.js\",\"version\":\"a4f892e7d2998e55dd17\",\"dependencies\":[\"react-jsx-runtime\",\"wc-settings\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-hooks\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-shared-context.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-shared-context.js\",\"version\":\"621353d8a3a7c8d44b41\",\"dependencies\":[\"react-jsx-runtime\",\"wp-element\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-shared-hocs.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-shared-hocs.js\",\"version\":\"781196b1e16b60e862cb\",\"dependencies\":[\"react-jsx-runtime\",\"wc-blocks-data-store\",\"wc-blocks-shared-context\",\"wc-types\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/blocks-components.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/blocks-components.js\",\"version\":\"f19e27a870abbd8e2c7b\",\"dependencies\":[\"wc-cart-checkout-vendors\",\"wc-cart-checkout-base\",\"react\",\"react-dom\",\"react-jsx-runtime\",\"wc-blocks-data-store\",\"wc-sanitize\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-notices\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/wc-blocks-vendors.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-vendors.js\",\"version\":\"4e324519a5bc660f51fb\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks.js\",\"version\":\"bc1be535dc615ed67d40\",\"dependencies\":[\"react-jsx-runtime\",\"wp-blocks\",\"wp-compose\",\"wp-dom-ready\",\"wp-element\",\"wp-hooks\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/price-format.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/price-format.js\",\"version\":\"0df720e448f7ab3c5d0d\",\"dependencies\":[\"wc-settings\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-frontend-vendors-frontend.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-frontend-vendors-frontend.js\",\"version\":\"680d02d748b4d3807a03\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-cart-checkout-vendors-frontend.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-cart-checkout-vendors-frontend.js\",\"version\":\"55bf057454738f4af54e\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-cart-checkout-base-frontend.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-cart-checkout-base-frontend.js\",\"version\":\"63837def2ecc122e8ce2\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/blocks-checkout.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/blocks-checkout.js\",\"version\":\"147678d294f6e324cb0e\",\"dependencies\":[\"wc-cart-checkout-vendors\",\"wc-cart-checkout-base\",\"react\",\"react-dom\",\"react-jsx-runtime\",\"wc-blocks-checkout-events\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-sanitize\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-notices\",\"wp-polyfill\",\"wp-primitives\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/blocks-checkout-events.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/blocks-checkout-events.js\",\"version\":\"1cd9ffa6e3cff96ad1b2\",\"dependencies\":[\"wc-types\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-schema-parser.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-schema-parser.js\",\"version\":\"3f1404a8380d76af4c69\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/admin\\/sanitize\\/index.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/admin\\/sanitize\\/index.js\",\"version\":\"fb82060d3ed111fad545\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/coming-soon.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/coming-soon.js\",\"version\":\"60545d7c109de0fcbd1f\",\"dependencies\":[\"react-jsx-runtime\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-payment-method-bacs.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-payment-method-bacs.js\",\"version\":\"7d378c9eeec5f2eabd09\",\"dependencies\":[\"react-jsx-runtime\",\"wc-blocks-registry\",\"wc-sanitize\",\"wc-settings\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-payment-method-cod.js\":{\"src\":\"http:\\/\\/localhost\\/ceramic\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-payment-method-cod.js\",\"version\":\"e07cd4ec5463958cbf43\",\"dependencies\":[\"react-jsx-runtime\",\"wc-blocks-registry\",\"wc-sanitize\",\"wc-settings\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\"]}},\"version\":\"wc-11.2.1\",\"hash\":\"356e9d0ffc30f53761812f6e1f595141\"}', 'off'),
(360, '_site_transient_timeout_woocommerce_blocks_patterns', '1795696711', 'off'),
(361, '_site_transient_woocommerce_blocks_patterns', 'a:2:{s:7:\"version\";s:6:\"11.2.1\";s:8:\"patterns\";a:21:{i:0;a:10:{s:5:\"title\";s:23:\"Coming Soon Entire Site\";s:4:\"slug\";s:35:\"woocommerce/coming-soon-entire-site\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"coming-soon-entire-site.php\";}i:1;a:10:{s:5:\"title\";s:22:\"Coming Soon Store Only\";s:4:\"slug\";s:34:\"woocommerce/coming-soon-store-only\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:26:\"coming-soon-store-only.php\";}i:2;a:10:{s:5:\"title\";s:11:\"Coming Soon\";s:4:\"slug\";s:23:\"woocommerce/coming-soon\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:15:\"coming-soon.php\";}i:3;a:10:{s:5:\"title\";s:12:\"Large Footer\";s:4:\"slug\";s:31:\"woocommerce-blocks/footer-large\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:16:\"footer-large.php\";}i:4;a:10:{s:5:\"title\";s:23:\"Footer with Simple Menu\";s:4:\"slug\";s:37:\"woocommerce-blocks/footer-simple-menu\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:22:\"footer-simple-menu.php\";}i:5;a:10:{s:5:\"title\";s:19:\"Footer with 3 Menus\";s:4:\"slug\";s:38:\"woocommerce-blocks/footer-with-3-menus\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:23:\"footer-with-3-menus.php\";}i:6;a:10:{s:5:\"title\";s:20:\"Centered Header Menu\";s:4:\"slug\";s:39:\"woocommerce-blocks/header-centered-menu\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"header-centered-pattern.php\";}i:7;a:10:{s:5:\"title\";s:23:\"Distraction Free Header\";s:4:\"slug\";s:42:\"woocommerce-blocks/header-distraction-free\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:27:\"header-distraction-free.php\";}i:8;a:10:{s:5:\"title\";s:16:\"Essential Header\";s:4:\"slug\";s:35:\"woocommerce-blocks/header-essential\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:20:\"header-essential.php\";}i:9;a:10:{s:5:\"title\";s:12:\"Large Header\";s:4:\"slug\";s:31:\"woocommerce-blocks/header-large\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:16:\"header-large.php\";}i:10;a:10:{s:5:\"title\";s:14:\"Minimal Header\";s:4:\"slug\";s:33:\"woocommerce-blocks/header-minimal\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:18:\"header-minimal.php\";}i:11;a:10:{s:5:\"title\";s:33:\"No Products Found - Clear Filters\";s:4:\"slug\";s:43:\"woocommerce/no-products-found-clear-filters\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:29:\"no-products-found-filters.php\";}i:12;a:10:{s:5:\"title\";s:17:\"No Products Found\";s:4:\"slug\";s:29:\"woocommerce/no-products-found\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:21:\"no-products-found.php\";}i:13;a:10:{s:5:\"title\";s:19:\"Default Coming Soon\";s:4:\"slug\";s:36:\"woocommerce/page-coming-soon-default\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:28:\"page-coming-soon-default.php\";}i:14;a:10:{s:5:\"title\";s:25:\"Coming Soon Image Gallery\";s:4:\"slug\";s:42:\"woocommerce/page-coming-soon-image-gallery\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:34:\"page-coming-soon-image-gallery.php\";}i:15;a:10:{s:5:\"title\";s:30:\"Coming Soon Minimal Left Image\";s:4:\"slug\";s:47:\"woocommerce/page-coming-soon-minimal-left-image\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:39:\"page-coming-soon-minimal-left-image.php\";}i:16;a:10:{s:5:\"title\";s:24:\"Coming Soon Modern Black\";s:4:\"slug\";s:41:\"woocommerce/page-coming-soon-modern-black\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:33:\"page-coming-soon-modern-black.php\";}i:17;a:10:{s:5:\"title\";s:29:\"Coming Soon Split Right Image\";s:4:\"slug\";s:46:\"woocommerce/page-coming-soon-split-right-image\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:38:\"page-coming-soon-split-right-image.php\";}i:18;a:10:{s:5:\"title\";s:34:\"Coming Soon with Header and Footer\";s:4:\"slug\";s:47:\"woocommerce/page-coming-soon-with-header-footer\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:39:\"page-coming-soon-with-header-footer.php\";}i:19;a:10:{s:5:\"title\";s:14:\"Product Search\";s:4:\"slug\";s:31:\"woocommerce/product-search-form\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:23:\"product-search-form.php\";}i:20;a:10:{s:5:\"title\";s:16:\"Related Products\";s:4:\"slug\";s:35:\"woocommerce-blocks/related-products\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:20:\"related-products.php\";}}}', 'off'),
(367, 'theme_mods_astra-ceramic', 'a:2:{s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:21;}s:18:\"custom_css_post_id\";i:-1;}', 'auto'),
(368, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'auto'),
(370, 'action_scheduler_migration_status', 'complete', 'auto'),
(371, 'as_has_wp_comment_logs', 'no', 'on'),
(372, 'current_theme_supports_woocommerce', 'yes', 'auto'),
(375, 'woocommerce_custom_orders_table_created', 'yes', 'auto'),
(376, 'woocommerce_coming_soon', 'yes', 'auto'),
(377, 'woocommerce_store_pages_only', 'yes', 'auto'),
(378, 'woocommerce_email_improvements_default_enabled', 'yes', 'auto'),
(379, 'woocommerce_email_improvements_first_enabled_at', '2026-10-27 13:03:18', 'auto'),
(380, 'woocommerce_email_improvements_last_enabled_at', '2026-10-27 13:03:18', 'auto'),
(381, 'woocommerce_email_improvements_enabled_count', '1', 'auto'),
(382, 'woocommerce_customer_stock_notifications_allow_signups', 'yes', 'auto'),
(383, 'woocommerce_analytics_scheduled_import', 'yes', 'auto'),
(384, 'woocommerce_admin_scheduler_last_processed_order_modified_date', '2026-10-27 13:03:23', 'off'),
(385, 'woocommerce_admin_scheduler_last_processed_order_id', '0', 'off'),
(386, 'woocommerce_initial_installed_version', '11.2.1', 'off'),
(387, 'wc_blocks_db_schema_version', '260', 'auto'),
(388, 'astra-settings', 'a:5:{s:18:\"theme-auto-version\";s:6:\"4.14.1\";s:22:\"is_theme_queue_running\";b:0;s:19:\"site-content-layout\";s:15:\"plain-container\";s:19:\"site-sidebar-layout\";s:10:\"no-sidebar\";s:31:\"woocommerce-shop-item-structure\";a:4:{i:0;s:5:\"title\";i:1;s:5:\"price\";i:2;s:7:\"ratings\";i:3;s:8:\"add_cart\";}}', 'auto'),
(389, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:0;}', 'off'),
(390, 'action_scheduler_lock_async-request-runner', '6ae0b8ce8d4fd2.59258718|1793112330', 'no'),
(391, '_transient_timeout_astra-theme-cron-test-ok', '1793109802', 'off'),
(392, '_transient_astra-theme-cron-test-ok', '1', 'off'),
(397, 'product_cat_children', 'a:0:{}', 'auto'),
(398, '_transient_product_query-transient-version', '1793113572.791392', 'on'),
(401, '_transient_product-transient-version', '1793106352.515549', 'on'),
(414, '_transient_timeout_wc_term_counts', '1795698363', 'off'),
(415, '_transient_wc_term_counts', 'a:5:{s:14:\"18_product_cat\";i:3;s:14:\"17_product_cat\";i:2;s:14:\"16_product_cat\";i:3;s:14:\"20_product_cat\";i:1;s:14:\"19_product_cat\";i:1;}', 'off'),
(417, 'finished_updating_comment_type', '1', 'auto'),
(421, '_transient_timeout_wc_product_loop_dbdf9d1d5326b317f963eeec7e7d47b3', '1795705603', 'off'),
(422, '_transient_wc_product_loop_dbdf9d1d5326b317f963eeec7e7d47b3', 'a:2:{s:7:\"version\";s:17:\"1793113572.791392\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:8:{i:0;i:26;i:1;i:25;i:2;i:24;i:3;i:23;i:4;i:22;i:5;i:21;i:6;i:20;i:7;i:19;}s:5:\"total\";i:8;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:8;s:12:\"current_page\";i:1;}}', 'off'),
(424, 'product_brand_children', 'a:0:{}', 'auto'),
(431, 'woocommerce_cod_settings', 'a:9:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:35:\"Cash on Delivery (Pay upon Receipt)\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";s:9:\"test_mode\";s:9:\"not_found\";s:8:\"testmode\";s:9:\"not_found\";s:4:\"mode\";s:9:\"not_found\";}', 'on'),
(432, 'woocommerce_bacs_settings', 'a:14:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:27:\"Direct Bank Transfer / Wire\";s:11:\"description\";s:176:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";s:9:\"test_mode\";s:9:\"not_found\";s:8:\"testmode\";s:9:\"not_found\";s:4:\"mode\";s:9:\"not_found\";}', 'on'),
(435, '_site_transient_timeout_wp_theme_files_patterns-ecf31b86f150b7827e7bd43310e7b2ef', '1793115401', 'off'),
(436, '_site_transient_wp_theme_files_patterns-ecf31b86f150b7827e7bd43310e7b2ef', 'a:2:{s:7:\"version\";s:5:\"1.5.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(440, '_transient_is_multi_author', '0', 'on'),
(441, '_transient_timeout_as_is_ensure_recurring_actions_scheduled', '1793115853', 'off'),
(442, '_transient_as_is_ensure_recurring_actions_scheduled', '1', 'off'),
(443, '_transient_shipping-transient-version', '1793112318.691884', 'on'),
(444, '_transient_timeout_wc_shipping_method_count', '1795704319', 'off'),
(445, '_transient_wc_shipping_method_count', 'a:4:{s:7:\"version\";s:17:\"1793112318.691884\";s:6:\"legacy\";i:0;s:7:\"enabled\";i:0;s:8:\"disabled\";i:0;}', 'off'),
(446, '_site_transient_timeout_wp_theme_files_patterns-66f5c3ba67dbb1b91e22eda3bcc10cbe', '1793115356', 'off'),
(447, '_site_transient_wp_theme_files_patterns-66f5c3ba67dbb1b91e22eda3bcc10cbe', 'a:2:{s:7:\"version\";s:5:\"1.5.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(448, '_site_transient_timeout_wp_theme_files_patterns-9439c6710c92295f03391c6859f4b260', '1793115211', 'off'),
(449, '_site_transient_wp_theme_files_patterns-9439c6710c92295f03391c6859f4b260', 'a:2:{s:7:\"version\";s:6:\"4.14.1\";s:8:\"patterns\";a:0:{}}', 'off'),
(450, '_site_transient_timeout_wp_theme_files_patterns-ee241f042b5a33296b6ad692e6384327', '1793115530', 'off'),
(451, '_site_transient_wp_theme_files_patterns-ee241f042b5a33296b6ad692e6384327', 'a:2:{s:7:\"version\";s:6:\"4.14.1\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.webp'),
(4, 5, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:28:\"woocommerce-placeholder.webp\";s:8:\"filesize\";i:9892;s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:36:\"woocommerce-placeholder-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1362;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:430;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-600x600.webp\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3162;}s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1362;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"woocommerce-placeholder-1024x1024.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6032;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:662;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:36:\"woocommerce-placeholder-768x768.webp\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4240;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(5, 11, '_wp_attached_file', '2026/10/mug1.jpg'),
(6, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:16:\"2026/10/mug1.jpg\";s:8:\"filesize\";i:153238;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"mug1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13242;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"mug1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:91623;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"mug1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6844;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"mug1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:110779;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:16:\"mug1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19444;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:16:\"mug1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74339;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:16:\"mug1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3913;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(7, 11, '_ceramic_asset_key', 'mug1.jpg'),
(8, 12, '_wp_attached_file', '2026/10/vase1.jpg'),
(9, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2026/10/vase1.jpg\";s:8:\"filesize\";i:121269;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"vase1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10278;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"vase1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71737;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"vase1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4995;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"vase1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:86688;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:17:\"vase1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13653;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:17:\"vase1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59064;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"vase1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3067;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(10, 12, '_ceramic_asset_key', 'vase1.jpg'),
(11, 13, '_wp_attached_file', '2026/10/dinnerware1.jpg'),
(12, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:23:\"2026/10/dinnerware1.jpg\";s:8:\"filesize\";i:86866;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"dinnerware1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14641;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"dinnerware1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6986;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"dinnerware1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62729;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"dinnerware1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19876;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"dinnerware1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42875;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"dinnerware1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4034;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(13, 13, '_ceramic_asset_key', 'dinnerware1.jpg'),
(14, 14, '_wp_attached_file', '2026/10/bowl1.jpg'),
(15, 14, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:17:\"2026/10/bowl1.jpg\";s:8:\"filesize\";i:33020;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"bowl1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5576;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"bowl1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3094;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"bowl1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23633;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:17:\"bowl1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7782;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:17:\"bowl1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16006;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"bowl1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2030;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(16, 14, '_ceramic_asset_key', 'bowl1.jpg'),
(17, 15, '_wp_attached_file', '2026/10/planter1.jpg'),
(18, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:20:\"2026/10/planter1.jpg\";s:8:\"filesize\";i:28397;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"planter1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5398;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"planter1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3253;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"planter1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23088;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"planter1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8798;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:20:\"planter1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15657;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"planter1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2067;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(19, 15, '_ceramic_asset_key', 'planter1.jpg'),
(20, 16, '_wp_attached_file', '2026/10/carafe1.jpg'),
(21, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2026/10/carafe1.jpg\";s:8:\"filesize\";i:60303;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"carafe1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4602;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"carafe1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33874;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"carafe1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2486;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"carafe1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43009;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:19:\"carafe1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5792;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:19:\"carafe1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26821;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:19:\"carafe1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1694;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(22, 16, '_ceramic_asset_key', 'carafe1.jpg'),
(23, 17, '_wp_attached_file', '2026/10/platter1.jpg'),
(24, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2026/10/platter1.jpg\";s:8:\"filesize\";i:64165;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"platter1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16673;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"platter1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6926;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"platter1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65749;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"platter1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19857;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:20:\"platter1-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47073;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"platter1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3930;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(25, 17, '_ceramic_asset_key', 'platter1.jpg'),
(26, 18, '_wp_attached_file', '2026/10/potter_craft.jpg'),
(27, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:24:\"2026/10/potter_craft.jpg\";s:8:\"filesize\";i:62909;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"potter_craft-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4703;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"potter_craft-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36369;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"potter_craft-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2753;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"potter_craft-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21100;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:24:\"potter_craft-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6991;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:24:\"potter_craft-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14075;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:24:\"potter_craft-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1820;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(28, 18, '_ceramic_asset_key', 'potter_craft.jpg'),
(29, 19, '_sku', 'CRM-VAS-01'),
(30, 19, '_regular_price', '85.00'),
(31, 19, '_sale_price', '68.00'),
(32, 19, 'total_sales', '0'),
(33, 19, '_tax_status', 'taxable'),
(34, 19, '_tax_class', ''),
(35, 19, '_manage_stock', 'no'),
(36, 19, '_backorders', 'no'),
(37, 19, '_sold_individually', 'no'),
(38, 19, '_virtual', 'no'),
(39, 19, '_downloadable', 'no'),
(40, 19, '_download_limit', '-1'),
(41, 19, '_download_expiry', '-1'),
(42, 19, '_thumbnail_id', '12'),
(43, 19, '_stock', NULL),
(44, 19, '_stock_status', 'instock'),
(45, 19, '_wc_average_rating', '0'),
(46, 19, '_wc_review_count', '0'),
(47, 19, '_product_version', '11.2.1'),
(48, 19, '_price', '68.00'),
(49, 20, '_sku', 'CRM-MUG-02'),
(50, 20, '_regular_price', '34.00'),
(51, 20, 'total_sales', '0'),
(52, 20, '_tax_status', 'taxable'),
(53, 20, '_tax_class', ''),
(54, 20, '_manage_stock', 'no'),
(55, 20, '_backorders', 'no'),
(56, 20, '_sold_individually', 'no'),
(57, 20, '_virtual', 'no'),
(58, 20, '_downloadable', 'no'),
(59, 20, '_download_limit', '-1'),
(60, 20, '_download_expiry', '-1'),
(61, 20, '_thumbnail_id', '11'),
(62, 20, '_stock', NULL),
(63, 20, '_stock_status', 'instock'),
(64, 20, '_wc_average_rating', '0'),
(65, 20, '_wc_review_count', '0'),
(66, 20, '_product_version', '11.2.1'),
(67, 20, '_price', '34.00'),
(68, 21, '_sku', 'CRM-DIN-03'),
(69, 21, '_regular_price', '98.00'),
(70, 21, '_sale_price', '82.00'),
(71, 21, 'total_sales', '0'),
(72, 21, '_tax_status', 'taxable'),
(73, 21, '_tax_class', ''),
(74, 21, '_manage_stock', 'no'),
(75, 21, '_backorders', 'no'),
(76, 21, '_sold_individually', 'no'),
(77, 21, '_virtual', 'no'),
(78, 21, '_downloadable', 'no'),
(79, 21, '_download_limit', '-1'),
(80, 21, '_download_expiry', '-1'),
(81, 21, '_thumbnail_id', '13'),
(82, 21, '_stock', NULL),
(83, 21, '_stock_status', 'instock'),
(84, 21, '_wc_average_rating', '0'),
(85, 21, '_wc_review_count', '0'),
(86, 21, '_product_version', '11.2.1'),
(87, 21, '_price', '82.00'),
(88, 22, '_sku', 'CRM-BWL-04'),
(89, 22, '_regular_price', '44.00'),
(90, 22, 'total_sales', '0'),
(91, 22, '_tax_status', 'taxable'),
(92, 22, '_tax_class', ''),
(93, 22, '_manage_stock', 'no'),
(94, 22, '_backorders', 'no'),
(95, 22, '_sold_individually', 'no'),
(96, 22, '_virtual', 'no'),
(97, 22, '_downloadable', 'no'),
(98, 22, '_download_limit', '-1'),
(99, 22, '_download_expiry', '-1'),
(100, 22, '_thumbnail_id', '14'),
(101, 22, '_stock', NULL),
(102, 22, '_stock_status', 'instock'),
(103, 22, '_wc_average_rating', '0'),
(104, 22, '_wc_review_count', '0'),
(105, 22, '_product_version', '11.2.1'),
(106, 22, '_price', '44.00'),
(107, 23, '_sku', 'CRM-PLN-05'),
(108, 23, '_regular_price', '56.00'),
(109, 23, '_sale_price', '48.00'),
(110, 23, 'total_sales', '0'),
(111, 23, '_tax_status', 'taxable'),
(112, 23, '_tax_class', ''),
(113, 23, '_manage_stock', 'no'),
(114, 23, '_backorders', 'no'),
(115, 23, '_sold_individually', 'no'),
(116, 23, '_virtual', 'no'),
(117, 23, '_downloadable', 'no'),
(118, 23, '_download_limit', '-1'),
(119, 23, '_download_expiry', '-1'),
(120, 23, '_thumbnail_id', '15'),
(121, 23, '_stock', NULL),
(122, 23, '_stock_status', 'instock'),
(123, 23, '_wc_average_rating', '0'),
(124, 23, '_wc_review_count', '0'),
(125, 23, '_product_version', '11.2.1'),
(126, 23, '_price', '48.00'),
(127, 24, '_sku', 'CRM-CAR-06'),
(128, 24, '_regular_price', '74.00'),
(129, 24, 'total_sales', '0'),
(130, 24, '_tax_status', 'taxable'),
(131, 24, '_tax_class', ''),
(132, 24, '_manage_stock', 'no'),
(133, 24, '_backorders', 'no'),
(134, 24, '_sold_individually', 'no'),
(135, 24, '_virtual', 'no'),
(136, 24, '_downloadable', 'no'),
(137, 24, '_download_limit', '-1'),
(138, 24, '_download_expiry', '-1'),
(139, 24, '_thumbnail_id', '16'),
(140, 24, '_stock', NULL),
(141, 24, '_stock_status', 'instock'),
(142, 24, '_wc_average_rating', '0'),
(143, 24, '_wc_review_count', '0'),
(144, 24, '_product_version', '11.2.1'),
(145, 24, '_price', '74.00'),
(146, 25, '_sku', 'CRM-VES-07'),
(147, 25, '_regular_price', '120.00'),
(148, 25, '_sale_price', '95.00'),
(149, 25, 'total_sales', '0'),
(150, 25, '_tax_status', 'taxable'),
(151, 25, '_tax_class', ''),
(152, 25, '_manage_stock', 'no'),
(153, 25, '_backorders', 'no'),
(154, 25, '_sold_individually', 'no'),
(155, 25, '_virtual', 'no'),
(156, 25, '_downloadable', 'no'),
(157, 25, '_download_limit', '-1'),
(158, 25, '_download_expiry', '-1'),
(159, 25, '_thumbnail_id', '17'),
(160, 25, '_stock', NULL),
(161, 25, '_stock_status', 'instock'),
(162, 25, '_wc_average_rating', '0'),
(163, 25, '_wc_review_count', '0'),
(164, 25, '_product_version', '11.2.1'),
(165, 25, '_price', '95.00'),
(166, 26, '_sku', 'CRM-CUP-08'),
(167, 26, '_regular_price', '58.00'),
(168, 26, 'total_sales', '0'),
(169, 26, '_tax_status', 'taxable'),
(170, 26, '_tax_class', ''),
(171, 26, '_manage_stock', 'no'),
(172, 26, '_backorders', 'no'),
(173, 26, '_sold_individually', 'no'),
(174, 26, '_virtual', 'no'),
(175, 26, '_downloadable', 'no'),
(176, 26, '_download_limit', '-1'),
(177, 26, '_download_expiry', '-1'),
(178, 26, '_thumbnail_id', '11'),
(179, 26, '_stock', NULL),
(180, 26, '_stock_status', 'instock'),
(181, 26, '_wc_average_rating', '0'),
(182, 26, '_wc_review_count', '0'),
(183, 26, '_product_version', '11.2.1'),
(184, 26, '_price', '58.00'),
(185, 30, '_menu_item_type', 'post_type'),
(186, 30, '_menu_item_menu_item_parent', '0'),
(187, 30, '_menu_item_object_id', '27'),
(188, 30, '_menu_item_object', 'page'),
(189, 30, '_menu_item_target', ''),
(190, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 30, '_menu_item_xfn', ''),
(192, 30, '_menu_item_url', ''),
(193, 31, '_menu_item_type', 'post_type'),
(194, 31, '_menu_item_menu_item_parent', '0'),
(195, 31, '_menu_item_object_id', '6'),
(196, 31, '_menu_item_object', 'page'),
(197, 31, '_menu_item_target', ''),
(198, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 31, '_menu_item_xfn', ''),
(200, 31, '_menu_item_url', ''),
(201, 32, '_menu_item_type', 'custom'),
(202, 32, '_menu_item_menu_item_parent', '0'),
(203, 32, '_menu_item_object_id', '32'),
(204, 32, '_menu_item_object', 'custom'),
(205, 32, '_menu_item_target', ''),
(206, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(207, 32, '_menu_item_xfn', ''),
(208, 32, '_menu_item_url', 'http://localhost/ceramic/product-category/vases/'),
(209, 33, '_menu_item_type', 'custom'),
(210, 33, '_menu_item_menu_item_parent', '0'),
(211, 33, '_menu_item_object_id', '33'),
(212, 33, '_menu_item_object', 'custom'),
(213, 33, '_menu_item_target', ''),
(214, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 33, '_menu_item_xfn', ''),
(216, 33, '_menu_item_url', 'http://localhost/ceramic/product-category/dinnerware/'),
(217, 34, '_menu_item_type', 'custom'),
(218, 34, '_menu_item_menu_item_parent', '0'),
(219, 34, '_menu_item_object_id', '34'),
(220, 34, '_menu_item_object', 'custom'),
(221, 34, '_menu_item_target', ''),
(222, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(223, 34, '_menu_item_xfn', ''),
(224, 34, '_menu_item_url', 'http://localhost/ceramic/product-category/mugs/'),
(225, 35, '_menu_item_type', 'custom'),
(226, 35, '_menu_item_menu_item_parent', '0'),
(227, 35, '_menu_item_object_id', '35'),
(228, 35, '_menu_item_object', 'custom'),
(229, 35, '_menu_item_target', ''),
(230, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(231, 35, '_menu_item_xfn', ''),
(232, 35, '_menu_item_url', 'http://localhost/ceramic/product-category/planters/'),
(233, 36, '_menu_item_type', 'post_type'),
(234, 36, '_menu_item_menu_item_parent', '0'),
(235, 36, '_menu_item_object_id', '28'),
(236, 36, '_menu_item_object', 'page'),
(237, 36, '_menu_item_target', ''),
(238, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(239, 36, '_menu_item_xfn', ''),
(240, 36, '_menu_item_url', ''),
(241, 37, '_menu_item_type', 'post_type'),
(242, 37, '_menu_item_menu_item_parent', '0'),
(243, 37, '_menu_item_object_id', '29'),
(244, 37, '_menu_item_object', 'page'),
(245, 37, '_menu_item_target', ''),
(246, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(247, 37, '_menu_item_xfn', ''),
(248, 37, '_menu_item_url', ''),
(257, 39, 'discount_type', 'percent'),
(258, 39, 'coupon_amount', '20'),
(259, 39, 'individual_use', 'no'),
(260, 39, 'usage_limit', '0'),
(261, 39, 'usage_limit_per_user', '0'),
(262, 39, 'limit_usage_to_x_items', NULL),
(263, 39, 'usage_count', '0'),
(264, 39, 'date_expires', NULL),
(265, 39, 'free_shipping', 'no'),
(266, 39, 'exclude_sale_items', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2026-10-27 12:35:15', '2026-10-27 12:35:15', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2026-10-27 12:35:15', '2026-10-27 12:35:15', '', 0, 'http://localhost/ceramic/?p=1', 0, 'post', '', 1),
(2, 1, '2026-10-27 12:35:15', '2026-10-27 12:35:15', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/ceramic/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2026-10-27 12:35:15', '2026-10-27 12:35:15', '', 0, 'http://localhost/ceramic/?page_id=2', 0, 'page', '', 0),
(3, 1, '2026-10-27 12:35:15', '2026-10-27 12:35:15', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/ceramic.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2026-10-27 12:35:15', '2026-10-27 12:35:15', '', 0, 'http://localhost/ceramic/?page_id=3', 0, 'page', '', 0),
(4, 0, '2026-10-27 12:35:18', '2026-10-27 12:35:18', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2026-10-27 12:35:18', '2026-10-27 12:35:18', '', 0, 'http://localhost/ceramic/index.php/2026/10/27/navigation/', 0, 'wp_navigation', '', 0),
(5, 0, '2026-10-27 12:38:09', '2026-10-27 12:38:09', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2026-10-27 12:38:09', '2026-10-27 12:38:09', '', 0, 'http://localhost/ceramic/wp-content/uploads/2026/10/woocommerce-placeholder.webp', 0, 'attachment', 'image/webp', 0),
(6, 1, '2026-10-27 12:38:10', '2026-10-27 12:38:10', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2026-10-27 12:38:10', '2026-10-27 12:38:10', '', 0, 'http://localhost/ceramic/index.php/shop/', 0, 'page', '', 0),
(7, 1, '2026-10-27 12:38:10', '2026-10-27 12:38:10', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2026-10-27 12:38:10', '2026-10-27 12:38:10', '', 0, 'http://localhost/ceramic/index.php/cart/', 0, 'page', '', 0),
(8, 1, '2026-10-27 12:38:11', '2026-10-27 12:38:11', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2026-10-27 12:38:11', '2026-10-27 12:38:11', '', 0, 'http://localhost/ceramic/index.php/checkout/', 0, 'page', '', 0),
(9, 1, '2026-10-27 12:38:11', '2026-10-27 12:38:11', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2026-10-27 12:38:11', '2026-10-27 12:38:11', '', 0, 'http://localhost/ceramic/index.php/my-account/', 0, 'page', '', 0),
(10, 1, '2026-10-27 12:38:11', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Overview</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Refunds</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Late or missing refunds</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Sale items</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Exchanges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Gifts</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Shipping returns</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Need help?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'draft', 'closed', 'closed', '', 'refund_returns', '', '', '2026-10-27 12:38:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/ceramic/?page_id=10', 0, 'page', '', 0),
(11, 0, '2026-10-27 13:05:20', '2026-10-27 13:05:20', '', 'Handcrafted Speckled Mug', '', 'inherit', 'open', 'closed', '', 'handcrafted-speckled-mug', '', '', '2026-10-27 13:05:20', '2026-10-27 13:05:20', '', 0, 'http://localhost/ceramic/wp-content/uploads/2026/10/mug1.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 0, '2026-10-27 13:05:22', '2026-10-27 13:05:22', '', 'Wabi-Sabi Terracotta Vase', '', 'inherit', 'open', 'closed', '', 'wabi-sabi-terracotta-vase', '', '', '2026-10-27 13:05:22', '2026-10-27 13:05:22', '', 0, 'http://localhost/ceramic/wp-content/uploads/2026/10/vase1.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 0, '2026-10-27 13:05:23', '2026-10-27 13:05:23', '', 'Nordic Matte Dinnerware Set', '', 'inherit', 'open', 'closed', '', 'nordic-matte-dinnerware-set', '', '', '2026-10-27 13:05:23', '2026-10-27 13:05:23', '', 0, 'http://localhost/ceramic/wp-content/uploads/2026/10/dinnerware1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 0, '2026-10-27 13:05:23', '2026-10-27 13:05:23', '', 'Ceremonial Glazed Bowl', '', 'inherit', 'open', 'closed', '', 'ceremonial-glazed-bowl', '', '', '2026-10-27 13:05:23', '2026-10-27 13:05:23', '', 0, 'http://localhost/ceramic/wp-content/uploads/2026/10/bowl1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 0, '2026-10-27 13:05:24', '2026-10-27 13:05:24', '', 'Sage Stoneware Planter', '', 'inherit', 'open', 'closed', '', 'sage-stoneware-planter', '', '', '2026-10-27 13:05:24', '2026-10-27 13:05:24', '', 0, 'http://localhost/ceramic/wp-content/uploads/2026/10/planter1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 0, '2026-10-27 13:05:24', '2026-10-27 13:05:24', '', 'Artisan Pour-Over Carafe', '', 'inherit', 'open', 'closed', '', 'artisan-pour-over-carafe', '', '', '2026-10-27 13:05:24', '2026-10-27 13:05:24', '', 0, 'http://localhost/ceramic/wp-content/uploads/2026/10/carafe1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 0, '2026-10-27 13:05:25', '2026-10-27 13:05:25', '', 'Desert Clay Centerpiece Vessel', '', 'inherit', 'open', 'closed', '', 'desert-clay-centerpiece-vessel', '', '', '2026-10-27 13:05:25', '2026-10-27 13:05:25', '', 0, 'http://localhost/ceramic/wp-content/uploads/2026/10/platter1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 0, '2026-10-27 13:05:26', '2026-10-27 13:05:26', '', 'Potter Wheel Studio Craft', '', 'inherit', 'open', 'closed', '', 'potter-wheel-studio-craft', '', '', '2026-10-27 13:05:26', '2026-10-27 13:05:26', '', 0, 'http://localhost/ceramic/wp-content/uploads/2026/10/potter_craft.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 0, '2026-10-27 13:05:29', '2026-10-27 13:05:29', 'Each Wabi-Sabi Amphora Vase is individually wheel-thrown and sculpted by hand in our studio. The exterior features an earthy unglazed texture that honors raw clay minimalism, while the interior is treated with a non-toxic clear glaze to safely hold floral arrangements. Standing at 9.5\" in height, it creates an arresting centerpiece for mantlepieces, dining tables, and sunlit windowsills.', 'Wabi-Sabi Terracotta Amphora Vase', 'Sculptural terracotta vase with organic dual curved handles, crafted from raw iron-rich clay with an interior waterproof protective glaze.', 'publish', 'open', 'closed', '', 'wabi-sabi-terracotta-amphora-vase', '', '', '2026-10-27 13:05:29', '2026-10-27 13:05:29', '', 0, 'http://localhost/ceramic/product/wabi-sabi-terracotta-amphora-vase/', 0, 'product', '', 0),
(20, 0, '2026-10-27 13:05:31', '2026-10-27 13:05:31', 'Designed to elevate your slow morning coffee and mindful evening tea rituals. Hand-thrown on the potter’s wheel with iron-speckled stoneware clay and fired at 2350°F for extreme chip resistance and heat retention. 100% food-safe, microwave and dishwasher safe.', 'Earth &amp; Speckle Artisan Mug', 'Wheel-thrown speckled stoneware mug with an ergonomic wide-grip handle and silky oatmeal mineral glaze. 12oz capacity.', 'publish', 'open', 'closed', '', 'earth-speckle-artisan-mug', '', '', '2026-10-27 13:05:31', '2026-10-27 13:05:31', '', 0, 'http://localhost/ceramic/product/earth-speckle-artisan-mug/', 0, 'product', '', 0),
(21, 0, '2026-10-27 13:05:34', '2026-10-27 13:05:34', 'Transform your dining table into a culinary art gallery. These plates boast an understated silhouette with subtle tactile irregularities that celebrate handmade authenticity. Kiln-fired to high vitrification for commercial-grade durability. Measures 10.5\" in diameter.', 'Nordic Slate Matte Dinner Plate Set (Pair)', 'Set of two contemporary flat-bottom dinner plates with organic hand-pinched rims and velvet-matte slate glaze.', 'publish', 'open', 'closed', '', 'nordic-slate-matte-dinner-plate-set-pair', '', '', '2026-10-27 13:05:34', '2026-10-27 13:05:34', '', 0, 'http://localhost/ceramic/product/nordic-slate-matte-dinner-plate-set-pair/', 0, 'product', '', 0),
(22, 0, '2026-10-27 13:05:38', '2026-10-27 13:05:38', 'Generously proportioned for nourishing grain bowls, hearty winter soups, or as an inspiring tabletop fruit display. Each bowl showcases natural glaze crystallization, ensuring no two pieces are ever completely identical.', 'Sun-Dappled Ceremonial Bowl', 'Hand-pinched stoneware bowl with warm honey-amber glaze pooling and textured unglazed outer rim.', 'publish', 'open', 'closed', '', 'sun-dappled-ceremonial-bowl', '', '', '2026-10-27 13:05:38', '2026-10-27 13:05:38', '', 0, 'http://localhost/ceramic/product/sun-dappled-ceremonial-bowl/', 0, 'product', '', 0),
(23, 0, '2026-10-27 13:05:40', '2026-10-27 13:05:40', 'Give your cherished flora a breathable, natural sanctuary. The natural porous stoneware walls regulate moisture balance for healthy root development. Accommodates standard 5\" to 6\" nursery plants.', 'Ribbed Sage Stoneware Planter', 'Fluted vertical ribbing with soothing matte sage glaze. Includes matching drainage saucer to protect tabletops.', 'publish', 'open', 'closed', '', 'ribbed-sage-stoneware-planter', '', '', '2026-10-27 13:05:40', '2026-10-27 13:05:40', '', 0, 'http://localhost/ceramic/product/ribbed-sage-stoneware-planter/', 0, 'product', '', 0),
(24, 0, '2026-10-27 13:05:43', '2026-10-27 13:05:43', 'Engineered with internal spiral flutes to promote optimal bloom extraction and thermal stability. Stoneware ceramic retains water temperature far better than thin glass, producing a sweet, nuanced cup every time.', 'Dune Ceramic Pour-Over &amp; Carafe Set', 'Handcrafted ceramic pour-over dripper cone and matching 650ml pitcher for the perfect artisan brew ritual.', 'publish', 'open', 'closed', '', 'dune-ceramic-pour-over-carafe-set', '', '', '2026-10-27 13:05:43', '2026-10-27 13:05:43', '', 0, 'http://localhost/ceramic/product/dune-ceramic-pour-over-carafe-set/', 0, 'product', '', 0),
(25, 0, '2026-10-27 13:05:45', '2026-10-27 13:05:45', 'A statement artwork that anchors living spaces with earthy majesty. Formed using heavy grog clay for dramatic stone-like texture and fired in a wood-ash reduction atmosphere.', 'Desert Clay Centerpiece Vessel', 'Monumental sculptural ceramic centerpiece vessel finished with tactile iron wash and architectural handles.', 'publish', 'open', 'closed', '', 'desert-clay-centerpiece-vessel', '', '', '2026-10-27 13:05:45', '2026-10-27 13:05:45', '', 0, 'http://localhost/ceramic/product/desert-clay-centerpiece-vessel/', 0, 'product', '', 0),
(26, 0, '2026-10-27 13:05:48', '2026-10-27 13:05:48', 'Tactile, comfortable, and versatile. Perfect for morning double-espressos, ceremonial matcha, botanical teas, or fine sake. Comes nestled in reusable natural linen storage pouch.', 'Earth Tones Tasting Cup (Set of 4)', 'Hand-thrown handleless cups in four complementary mineral slips: Ochre, Terracotta, Slate, and Sandstone.', 'publish', 'open', 'closed', '', 'earth-tones-tasting-cup-set-of-4', '', '', '2026-10-27 13:05:48', '2026-10-27 13:05:48', '', 0, 'http://localhost/ceramic/product/earth-tones-tasting-cup-set-of-4/', 0, 'product', '', 0),
(27, 0, '2026-10-27 13:05:52', '2026-10-27 13:05:52', '<!-- HERO SECTION -->\n<div class=\"ceramic-hero-banner\" style=\"position: relative;background: linear-gradient(145deg, #181614 0%, #2b2723 100%);color: #ffffff;padding: 100px 36px;border-radius: 24px;margin-bottom: 50px;overflow: hidden\">\n    <div style=\"position: absolute;right: -60px;top: -60px;width: 500px;height: 500px;background: radial-gradient(circle, rgba(178,90,56,0.28) 0%, rgba(0,0,0,0) 70%);border-radius: 50%;pointer-events: none\"></div>\n    <div style=\"position: absolute;left: 20%;bottom: -80px;width: 400px;height: 400px;background: radial-gradient(circle, rgba(94,102,81,0.2) 0%, rgba(0,0,0,0) 70%);border-radius: 50%;pointer-events: none\"></div>\n    \n    <div class=\"ceramic-hero-grid\" style=\"max-width: 1240px;margin: 0 auto;display: grid;grid-template-columns: 1.25fr 0.85fr;gap: 60px;align-items: center;position: relative;z-index: 2\">\n        <div>\n            <div style=\"display: inline-flex;align-items: center;gap: 8px;padding: 7px 18px;border-radius: 30px;margin-bottom: 24px\">\n                <span style=\"color: #e2a275;font-size: 0.8rem;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase\">✦ SLOW-CRAFTED POTTERY • STUDIO DROP</span>\n            </div>\n            \n            <h1 style=\"font-size: clamp(2.6rem, 5.5vw, 4.4rem);font-family: &#039;Playfair Display&#039;, Georgia, serif;font-weight: 700;line-height: 1.12;color: #fdfcf9;margin-bottom: 24px;letter-spacing: -0.02em\">\n                Sculpted from Earth.<br>\n                <span style=\"font-style: italic;font-weight: 400;color: #e2a275\">Fired for Eternity.</span>\n            </h1>\n            \n            <p style=\"font-size: 1.2rem;color: #d6cebf;line-height: 1.75;margin-bottom: 38px;max-width: 580px\">\n                Mindfully wheel-thrown ceramic vessels, tableware, and sculptural pieces crafted with natural mineral glazes and sustainable high-fire vitrification for your daily living rituals.\n            </p>\n            \n            <div style=\"display: flex;gap: 16px;flex-wrap: wrap;align-items: center;margin-bottom: 40px\">\n                <a href=\"/ceramic/shop/\" class=\"button\" style=\"padding: 16px 36px !important;font-size: 0.95rem !important\">\n                    Explore Studio Shop →\n                </a>\n                <a href=\"/ceramic/about/\" class=\"ceramic-btn-secondary\" style=\"border-color: #d6cebf !important;color: #fdfcf9 !important;padding: 15px 32px !important\">\n                    Our Craft Story\n                </a>\n            </div>\n\n            <!-- Ticker -->\n            <div style=\"display: flex;gap: 30px;flex-wrap: wrap;padding-top: 25px\">\n                <div>\n                    <div style=\"font-size: 1.5rem;font-weight: 700;color: #ffffff;font-family: &#039;Playfair Display&#039;, Georgia, serif\">2350°F</div>\n                    <div style=\"font-size: 0.8rem;color: #a8a29e;text-transform: uppercase;letter-spacing: 0.05em\">Cone 6 Vitrified</div>\n                </div>\n                <div style=\"padding-left: 30px\">\n                    <div style=\"font-size: 1.5rem;font-weight: 700;color: #ffffff;font-family: &#039;Playfair Display&#039;, Georgia, serif\">100%</div>\n                    <div style=\"font-size: 0.8rem;color: #a8a29e;text-transform: uppercase;letter-spacing: 0.05em\">Food &amp; Dishwasher Safe</div>\n                </div>\n                <div style=\"padding-left: 30px\">\n                    <div style=\"font-size: 1.5rem;font-weight: 700;color: #ffffff;font-family: &#039;Playfair Display&#039;, Georgia, serif\">Small Batch</div>\n                    <div style=\"font-size: 0.8rem;color: #a8a29e;text-transform: uppercase;letter-spacing: 0.05em\">Wheel-Thrown by Hand</div>\n                </div>\n            </div>\n        </div>\n        \n        <!-- Hero Visual Showcase -->\n        <div style=\"position: relative\">\n            <div style=\"position: relative;border-radius: 20px;overflow: hidden\">\n                <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/vase1.jpg\" alt=\"Artisan Terracotta Vase\" style=\"width: 100%;height: 520px;object-fit: cover;display: block\" />\n                <div style=\"position: absolute;bottom: 0;left: 0;right: 0;padding: 28px;background: linear-gradient(to top, rgba(18,16,14,0.92) 0%, rgba(18,16,14,0.4) 60%, transparent 100%)\">\n                    <span style=\"color: #e2a275;font-size: 0.75rem;font-weight: 700;text-transform: uppercase;letter-spacing: 0.1em;display: block;margin-bottom: 4px\">Studio Bestseller</span>\n                    <h3 style=\"color: #ffffff;font-family: &#039;Playfair Display&#039;, Georgia, serif;font-size: 1.4rem;margin: 0 0 6px 0\">Wabi-Sabi Terracotta Amphora Vase</h3>\n                    <div style=\"display: flex;justify-content: space-between;align-items: center\">\n                        <span style=\"color: #f7eee9;font-weight: 700;font-size: 1.25rem\">$68.00 <del style=\"color: #a8a29e;font-size: 0.95rem;margin-left: 6px\">$85.00</del></span>\n                        <a href=\"/ceramic/product/wabi-sabi-terracotta-amphora-vase/\" style=\"background: #b25a38;color: #fff;padding: 8px 18px;border-radius: 6px;font-size: 0.82rem;font-weight: 700;text-transform: uppercase;letter-spacing: 0.05em\">View Piece</a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n\n<!-- TRUST VALUE PROPOSITIONS -->\n<div class=\"pottery-trust-grid\">\n    <div class=\"pottery-trust-badge\">\n        <div class=\"badge-icon\">🏺</div>\n        <div>\n            <h4>Wheel-Thrown by Hand</h4>\n            <p>Every single curve shaped with intuitive artisan proportion.</p>\n        </div>\n    </div>\n    <div class=\"pottery-trust-badge\">\n        <div class=\"badge-icon\">🔥</div>\n        <div>\n            <h4>2350°F Kiln Vitrified</h4>\n            <p>High-fire dense stoneware: fully dishwasher &amp; microwave safe.</p>\n        </div>\n    </div>\n    <div class=\"pottery-trust-badge\">\n        <div class=\"badge-icon\">🌿</div>\n        <div>\n            <h4>Non-Toxic Mineral Glazes</h4>\n            <p>Zero lead, zero cadmium, 100% organic natural earth pigments.</p>\n        </div>\n    </div>\n    <div class=\"pottery-trust-badge\">\n        <div class=\"badge-icon\">📦</div>\n        <div>\n            <h4>Zero-Plastic Delivery</h4>\n            <p>100% biodegradable kraft packaging with guaranteed transit protection.</p>\n        </div>\n    </div>\n</div>\n\n<!-- FEATURED CATEGORIES SECTION -->\n<div style=\"margin-bottom: 90px\">\n    <div style=\"text-align: center;max-width: 680px;margin: 0 auto 45px auto\">\n        <span style=\"color: #b25a38;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase;font-size: 0.85rem\">CURATED ARCHIVE</span>\n        <h2 style=\"font-size: 2.7rem;margin-top: 8px;margin-bottom: 14px\">Explore by Ceramic Collection</h2>\n        <p style=\"color: #5e5954;font-size: 1.1rem;line-height: 1.7\">From morning pour-over vessels to heirloom dinnerware and sculptural centerpieces, find pieces made to be cherished daily.</p>\n    </div>\n\n    <div style=\"display: grid;grid-template-columns: repeat(auto-fit, minmax(270px, 1fr));gap: 26px\">\n        <!-- Cat 1 -->\n        <a href=\"/ceramic/product-category/dinnerware/\" class=\"collection-card\">\n            <div class=\"img-wrap\">\n                <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/dinnerware1.jpg\" alt=\"Dinnerware &amp; Tableware\" />\n                <span style=\"position: absolute;top: 16px;left: 16px;color: #fff;font-size: 0.72rem;font-weight: 700;text-transform: uppercase;padding: 4px 10px;border-radius: 20px;letter-spacing: 0.05em\">Tableware</span>\n            </div>\n            <div class=\"card-content\">\n                <h3>Dinnerware &amp; Platters</h3>\n                <p>Flat-Bottom Plates &amp; Serving Sets →</p>\n            </div>\n        </a>\n\n        <!-- Cat 2 -->\n        <a href=\"/ceramic/product-category/vases/\" class=\"collection-card\">\n            <div class=\"img-wrap\">\n                <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/vase1.jpg\" alt=\"Vases &amp; Vessels\" />\n                <span style=\"position: absolute;top: 16px;left: 16px;color: #fff;font-size: 0.72rem;font-weight: 700;text-transform: uppercase;padding: 4px 10px;border-radius: 20px;letter-spacing: 0.05em\">Sculptural</span>\n            </div>\n            <div class=\"card-content\">\n                <h3>Vases &amp; Statement Vessels</h3>\n                <p>Amphoras &amp; Centerpieces →</p>\n            </div>\n        </a>\n\n        <!-- Cat 3 -->\n        <a href=\"/ceramic/product-category/mugs/\" class=\"collection-card\">\n            <div class=\"img-wrap\">\n                <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/mug1.jpg\" alt=\"Mugs &amp; Cups\" />\n                <span style=\"position: absolute;top: 16px;left: 16px;color: #fff;font-size: 0.72rem;font-weight: 700;text-transform: uppercase;padding: 4px 10px;border-radius: 20px;letter-spacing: 0.05em\">Morning Rituals</span>\n            </div>\n            <div class=\"card-content\">\n                <h3>Artisan Mugs &amp; Cups</h3>\n                <p>Speckled Coffee Cups &amp; Tumblers →</p>\n            </div>\n        </a>\n\n        <!-- Cat 4 -->\n        <a href=\"/ceramic/product-category/bowls/\" class=\"collection-card\">\n            <div class=\"img-wrap\">\n                <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/bowl1.jpg\" alt=\"Ceremonial Bowls\" />\n                <span style=\"position: absolute;top: 16px;left: 16px;color: #fff;font-size: 0.72rem;font-weight: 700;text-transform: uppercase;padding: 4px 10px;border-radius: 20px;letter-spacing: 0.05em\">Artisanal</span>\n            </div>\n            <div class=\"card-content\">\n                <h3>Ceremonial Bowls</h3>\n                <p>Grain Bowls &amp; Matchaware →</p>\n            </div>\n        </a>\n    </div>\n</div>\n\n<!-- LATEST STUDIO DROPS (WOOCOMMERCE SHORTCODE) -->\n<div style=\"margin-bottom: 95px\">\n    <div style=\"display: flex;justify-content: space-between;align-items: flex-end;margin-bottom: 40px;flex-wrap: wrap;gap: 20px;border-bottom: 2px solid #e8e2d8;padding-bottom: 20px\">\n        <div>\n            <span style=\"color: #b25a38;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase;font-size: 0.85rem\">AUTUMN KILN FIRING</span>\n            <h2 style=\"font-size: 2.6rem;margin: 6px 0 0 0\">Latest Ceramic Drops</h2>\n        </div>\n        <div>\n            <a href=\"/ceramic/shop/\" class=\"ceramic-btn-secondary\" style=\"padding: 10px 22px !important;font-size: 0.85rem !important\">\n                View All Products ({8}) →\n            </a>\n        </div>\n    </div>\n\n    [products limit=\"8\" columns=\"4\" orderby=\"date\" order=\"DESC\"]\n</div>\n\n<!-- CRAFTSMANSHIP &amp; STORYTELLING -->\n<div style=\"background: #ffffff;border: 1px solid #e8e2d8;border-radius: 24px;padding: 70px 50px;margin-bottom: 90px\">\n    <div style=\"display: grid;grid-template-columns: 1fr 1fr;gap: 60px;align-items: center\" class=\"ceramic-hero-grid\">\n        <div style=\"border-radius: 18px;overflow: hidden;position: relative\">\n            <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/potter_craft.jpg\" alt=\"Artisan Potter Working on Wheel\" style=\"width: 100%;height: 500px;object-fit: cover;display: block\" />\n            <div style=\"position: absolute;bottom: 20px;left: 20px;color: #fff;padding: 12px 20px;border-radius: 10px;font-size: 0.85rem\">\n                <span style=\"color: #e2a275;font-weight: 700\">STUDIO PROCESS:</span> Hand Throwing on the Shimpo Wheel\n            </div>\n        </div>\n        <div>\n            <span style=\"color: #b25a38;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase;font-size: 0.85rem\">OUR CRAFT PHILOSOPHY</span>\n            <h2 style=\"font-size: 2.6rem;margin-top: 8px;margin-bottom: 20px;line-height: 1.2\">The Art of Slow Living and Intentional Pottery</h2>\n            <p style=\"color: #55504a;font-size: 1.08rem;line-height: 1.85;margin-bottom: 22px\">\n                In a world dominated by uniform machines, our pottery is a celebration of human touch. Every lump of raw iron-rich clay is wedged, centered, and thrown by hand in our studio.\n            </p>\n            <p style=\"color: #55504a;font-size: 1.08rem;line-height: 1.85;margin-bottom: 35px\">\n                Our glazes are blended in small batches using crushed volcanic feldspar, wood ash, and mineral iron oxides. When fired at 2350°F, the clay particles melt and fuse into non-porous vitrified stoneware built to endure generations.\n            </p>\n            \n            <div style=\"display: grid;grid-template-columns: 1fr 1fr;gap: 24px;margin-bottom: 35px\">\n                <div style=\"border-left: 3px solid #b25a38;padding-left: 18px\">\n                    <strong style=\"display: block;font-size: 1.15rem;color: #1c1a17;margin-bottom: 4px\">Zero Toxic Additives</strong>\n                    <span style=\"color: #79746e;font-size: 0.92rem;line-height: 1.5;display: block\">Tested strictly safe for everyday food contact and hot liquids.</span>\n                </div>\n                <div style=\"border-left: 3px solid #b25a38;padding-left: 18px\">\n                    <strong style=\"display: block;font-size: 1.15rem;color: #1c1a17;margin-bottom: 4px\">Sustainable Studio</strong>\n                    <span style=\"color: #79746e;font-size: 0.92rem;line-height: 1.5;display: block\">100% of unfired clay scraps are pugged and recycled with zero waste.</span>\n                </div>\n            </div>\n\n            <a href=\"/ceramic/about/\" class=\"button\" style=\"padding: 15px 34px !important\">Read The Full Studio Journey</a>\n        </div>\n    </div>\n</div>\n\n<!-- 3-STEP POTTERY JOURNEY CARDS -->\n<div style=\"margin-bottom: 90px\">\n    <div style=\"text-align: center;max-width: 650px;margin: 0 auto 40px auto\">\n        <span style=\"color: #b25a38;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase;font-size: 0.85rem\">THE 3 PHASES</span>\n        <h2 style=\"font-size: 2.5rem;margin-top: 8px\">From Raw Earth to Finished Art</h2>\n    </div>\n\n    <div style=\"display: grid;grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));gap: 28px\">\n        <div class=\"craft-step-card\">\n            <div class=\"step-num\">01</div>\n            <h3>Wheel Throwing &amp; Trimming</h3>\n            <p>Clay is centered and raised by hand. Once leather-hard, each vessel is turned and trimmed with ribbon tools to create subtle, ergonomic footings.</p>\n        </div>\n\n        <div class=\"craft-step-card\">\n            <div class=\"step-num\">02</div>\n            <h3>Mineral Slip &amp; Glaze Dipping</h3>\n            <p>Vessels receive a bisque firing at 1800°F before being hand-dipped into bespoke mineral glazes that react organically with iron specks in the body.</p>\n        </div>\n\n        <div class=\"craft-step-card\">\n            <div class=\"step-num\">03</div>\n            <h3>2350°F Kiln Vitrification</h3>\n            <p>A final 28-hour high fire melts the silica and feldspar, vitrifying the clay into rock-hard, non-absorbent stoneware ready for a lifetime of meals.</p>\n        </div>\n    </div>\n</div>\n\n<!-- PROMOTIONAL VOUCHER BANNER -->\n<div style=\"background: linear-gradient(135deg, #1c1a17 0%, #2f2a24 100%);color: #ffffff;border-radius: 24px;padding: 70px 40px;margin-bottom: 90px;text-align: center;position: relative;overflow: hidden\">\n    <div style=\"max-width: 720px;margin: 0 auto;position: relative;z-index: 2\">\n        <span style=\"color: #e2a275;font-size: 0.85rem;font-weight: 700;letter-spacing: 0.15em;text-transform: uppercase\">SPECIAL AUTUMN RELEASE OFFER</span>\n        <h2 style=\"color: #ffffff;font-size: clamp(2rem, 4vw, 3rem);margin-top: 12px;margin-bottom: 18px\">Save 20% on Handcrafted Vases &amp; Sets</h2>\n        <p style=\"color: #d6cebf;font-size: 1.15rem;line-height: 1.8;margin-bottom: 30px\">\n            Celebrate the season of warm gatherings. Enjoy <strong>20% off</strong> all vase and dinnerware orders when you apply coupon code at checkout.\n        </p>\n        \n        <div style=\"display: inline-flex;align-items: center;gap: 14px;border: 1.5px dashed #e2a275;border-radius: 12px;padding: 12px 28px;margin-bottom: 30px\">\n            <span style=\"color: #f7f4ee;font-size: 1rem\">Coupon Code:</span>\n            <strong id=\"couponCodeVal\" style=\"color: #e2a275;font-size: 1.4rem;letter-spacing: 0.12em;font-family: monospace\">EARTH20</strong>\n            <button style=\"background: #e2a275;color: #1c1a17;border: none;padding: 6px 14px;border-radius: 6px;font-weight: 700;font-size: 0.8rem;cursor: pointer;text-transform: uppercase\">Copy</button>\n        </div>\n        \n        <div>\n            <a href=\"/ceramic/shop/\" class=\"button\" style=\"background: #b25a38 !important;font-size: 0.95rem !important;padding: 16px 38px !important\">\n                Shop The Limited Drop Now\n            </a>\n        </div>\n    </div>\n</div>\n\n<!-- TESTIMONIALS SECTION -->\n<div style=\"margin-bottom: 90px\">\n    <div style=\"text-align: center;max-width: 650px;margin: 0 auto 45px auto\">\n        <span style=\"color: #b25a38;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase;font-size: 0.85rem\">COMMUNITY PRAISE</span>\n        <h2 style=\"font-size: 2.6rem;margin-top: 8px\">Treasured by Culinary Artists &amp; Collectors</h2>\n    </div>\n\n    <div style=\"display: grid;grid-template-columns: repeat(auto-fit, minmax(310px, 1fr));gap: 28px\">\n        <div class=\"testimonial-card\">\n            <div class=\"stars\">★★★★★</div>\n            <p>\n                \"The Earth &amp; Speckle mug has completely transformed my mornings. The weight, balance, and unglazed tactile thumb rest show unbelievable attention to craft. It is the only cup I reach for.\"\n            </p>\n            <div class=\"author\">Elena Vance</div>\n            <div class=\"location\">Architect &amp; Designer • Seattle, WA</div>\n        </div>\n\n        <div class=\"testimonial-card\">\n            <div class=\"stars\">★★★★★</div>\n            <p>\n                \"The Wabi-Sabi Amphora Vase is an absolute masterpiece. The textural contrast between the raw iron clay and the refined form brings sculptural soul into our home. Packaging was 100% plastic-free and flawless.\"\n            </p>\n            <div class=\"author\">Marcus Chen</div>\n            <div class=\"location\">Interior Stylist • Austin, TX</div>\n        </div>\n\n        <div class=\"testimonial-card\">\n            <div class=\"stars\">★★★★★</div>\n            <p>\n                \"We replaced our commercial dinnerware with the Nordic Slate plates. They elevate every home-cooked meal into a Michelin dining presentation. They wash beautifully in the dishwasher without scratching.\"\n            </p>\n            <div class=\"author\">Sarah &amp; David Lin</div>\n            <div class=\"location\">Restaurateurs • San Francisco, CA</div>\n        </div>\n    </div>\n</div>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2026-10-27 14:41:44', '2026-10-27 14:41:44', '', 0, 'http://localhost/ceramic/home/', 0, 'page', '', 0),
(28, 0, '2026-10-27 13:05:53', '2026-10-27 13:05:53', '<div style=\"max-width: 900px;margin: 0 auto;padding: 20px 0 60px 0\">\n    <div style=\"text-align: center;margin-bottom: 50px\">\n        <span style=\"color: #b85d36;font-weight: 700;letter-spacing: 0.1em;text-transform: uppercase;font-size: 0.9rem\">THE ARTISAN STORY</span>\n        <h1 style=\"font-size: 3rem;margin: 10px 0 20px 0\">Mindful Pottery for Contemporary Living</h1>\n        <p style=\"font-size: 1.25rem;color: #55504a;line-height: 1.8\">Founded on the premise that everyday objects should elevate and soothe our sensory lives.</p>\n    </div>\n\n    <div style=\"border-radius: 16px;overflow: hidden;margin-bottom: 50px\">\n        <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/potter_craft.jpg\" alt=\"Pottery Studio Craftsmanship\" style=\"width: 100%;height: 500px;object-fit: cover\" />\n    </div>\n\n    <div style=\"font-size: 1.15rem;line-height: 1.9;color: #333\">\n        <h2 style=\"font-size: 2rem;color: #22201d;margin-top: 40px\">The Rhythm of Wheel &amp; Earth</h2>\n        <p>\n            Ceramica began in a small seaside workshop with one kick wheel, a bucket of iron-rich stoneware clay, and an obsession with timeless, tactile forms. We reject mass manufacturing in favor of the human hand: the rhythmic spin of the wheel, the gentle pressure of fingers molding walls, and the quiet alchemy of wood ash and flame.\n        </p>\n\n        <h2 style=\"font-size: 2rem;color: #22201d;margin-top: 40px\">Sustainable Craftsmanship</h2>\n        <p>\n            Every piece is created using locally sourced, non-toxic clays. Our glaze recipes are mixed from scratch in-house using natural feldspar, silica, and mineral oxides — completely free of lead, cadmium, and synthetic pigments. Our electric kilns run on 100% renewable energy credits, and all clay trimmings are meticulously slaked, pugged, and reclaimed so nothing goes to waste.\n        </p>\n\n        <div style=\"background: #ffffff;border: 1px solid #e8e2d8;border-radius: 12px;padding: 30px;margin: 40px 0\">\n            <h3 style=\"margin-top: 0;color: #b85d36\">Our Studio Commitments</h3>\n            <ul style=\"margin: 0;padding-left: 20px\">\n                <li><strong>Wheel-Thrown &amp; Hand-Finished:</strong> Each vessel passes through over 18 distinct hand operations before reaching your home.</li>\n                <li><strong>Food &amp; Oven Safe:</strong> Fired at vitrification temperatures (Cone 6 / 2232°F) ensuring waterproof durability.</li>\n                <li><strong>Carbon-Neutral Shipping:</strong> Protected in biodegradable kraft paper and biodegradable cornstarch cushioning.</li>\n            </ul>\n        </div>\n    </div>\n\n    <div style=\"text-align: center;margin-top: 50px\">\n        <a href=\"/ceramic/shop/\" class=\"button\" style=\"padding: 16px 40px !important\">Explore Our Stoneware Collection</a>\n    </div>\n</div>', 'About Our Craft', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2026-10-27 13:05:53', '2026-10-27 13:05:53', '', 0, 'http://localhost/ceramic/about/', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(29, 0, '2026-10-27 13:05:53', '2026-10-27 13:05:53', '<div style=\"max-width: 1000px;margin: 0 auto;padding: 20px 0 60px 0\">\n    <div style=\"text-align: center;margin-bottom: 50px\">\n        <span style=\"color: #b85d36;font-weight: 700;letter-spacing: 0.1em;text-transform: uppercase;font-size: 0.9rem\">VISIT OR REACH OUT</span>\n        <h1 style=\"font-size: 3rem;margin: 10px 0 20px 0\">Studio &amp; Ceramic Inquiries</h1>\n        <p style=\"font-size: 1.2rem;color: #55504a\">Have a custom commission, wholesale request, or question about a ceramic piece?</p>\n    </div>\n\n    <div style=\"display: grid;grid-template-columns: 1fr 1fr;gap: 50px\">\n        <!-- Contact Info -->\n        <div style=\"background: #ffffff;border: 1px solid #e8e2d8;padding: 40px;border-radius: 16px\">\n            <h3 style=\"font-size: 1.6rem;margin-top: 0;margin-bottom: 25px\">Ceramica Studio</h3>\n            \n            <div style=\"margin-bottom: 24px\">\n                <strong style=\"display: block;color: #b85d36;font-size: 0.9rem;text-transform: uppercase;margin-bottom: 4px\">Studio Showroom &amp; Workshop</strong>\n                <p style=\"margin: 0;color: #44403c\">428 Artisans Way, Kiln Quarter<br>Portland, OR 97209</p>\n            </div>\n\n            <div style=\"margin-bottom: 24px\">\n                <strong style=\"display: block;color: #b85d36;font-size: 0.9rem;text-transform: uppercase;margin-bottom: 4px\">Opening Hours</strong>\n                <p style=\"margin: 0;color: #44403c\">Wednesday - Saturday: 10:00 AM - 6:00 PM<br>Sunday: 11:00 AM - 4:00 PM<br>Monday &amp; Tuesday: Kiln Firing Days (Closed)</p>\n            </div>\n\n            <div style=\"margin-bottom: 24px\">\n                <strong style=\"display: block;color: #b85d36;font-size: 0.9rem;text-transform: uppercase;margin-bottom: 4px\">Direct Contact</strong>\n                <p style=\"margin: 0;color: #44403c\">Email: hello@ceramicstudio.local<br>Phone: +1 (503) 555-0198</p>\n            </div>\n\n            <div style=\"margin-top: 30px;padding-top: 20px;border-top: 1px solid #e8e2d8\">\n                <strong style=\"display: block;color: #22201d;margin-bottom: 8px\">Studio Pottery Workshops</strong>\n                <p style=\"margin: 0;color: #78716c;font-size: 0.95rem\">We host monthly beginner wheel throwing and glazing workshops on Saturday afternoons. Inquire below to reserve your space.</p>\n            </div>\n        </div>\n\n        <!-- Form -->\n        <div style=\"background: #ffffff;border: 1px solid #e8e2d8;padding: 40px;border-radius: 16px\">\n            <h3 style=\"font-size: 1.6rem;margin-top: 0;margin-bottom: 20px\">Send a Message</h3>\n            \n                <div style=\"margin-bottom: 18px\">\n                    <label style=\"display: block;font-weight: 600;font-size: 0.9rem;margin-bottom: 6px\">Your Name *</label>\n                    \n                </div>\n                <div style=\"margin-bottom: 18px\">\n                    <label style=\"display: block;font-weight: 600;font-size: 0.9rem;margin-bottom: 6px\">Email Address *</label>\n                    \n                </div>\n                <div style=\"margin-bottom: 18px\">\n                    <label style=\"display: block;font-weight: 600;font-size: 0.9rem;margin-bottom: 6px\">Inquiry Type</label>\n                    \n                        General Ceramic Question\n                        Custom Commission\n                        Wholesale &amp; Restaurant Ware\n                        Studio Workshop Booking\n                    \n                </div>\n                <div style=\"margin-bottom: 24px\">\n                    <label style=\"display: block;font-weight: 600;font-size: 0.9rem;margin-bottom: 6px\">Your Message *</label>\n                    <textarea rows=\"4\" style=\"width: 100%;padding: 12px 14px;border: 1px solid #d1c8bb;border-radius: 8px\"></textarea>\n                </div>\n                <button type=\"submit\" class=\"button\" style=\"width: 100%\">Send Message</button>\n            \n        </div>\n    </div>\n</div>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2026-10-27 13:05:53', '2026-10-27 13:05:53', '', 0, 'http://localhost/ceramic/contact/', 0, 'page', '', 0),
(30, 0, '2026-10-27 13:05:53', '2026-10-27 13:05:53', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2026-10-27 13:05:53', '2026-10-27 13:05:53', '', 0, 'http://localhost/ceramic/30/', 1, 'nav_menu_item', '', 0),
(31, 0, '2026-10-27 13:05:53', '2026-10-27 13:05:53', '', 'Shop All', '', 'publish', 'closed', 'closed', '', 'shop-all', '', '', '2026-10-27 13:05:53', '2026-10-27 13:05:53', '', 0, 'http://localhost/ceramic/shop-all/', 2, 'nav_menu_item', '', 0),
(32, 0, '2026-10-27 13:05:54', '2026-10-27 13:05:54', '', 'Vases &amp; Vessels', '', 'publish', 'closed', 'closed', '', 'vases-vessels', '', '', '2026-10-27 13:05:54', '2026-10-27 13:05:54', '', 0, 'http://localhost/ceramic/vases-vessels/', 3, 'nav_menu_item', '', 0),
(33, 0, '2026-10-27 13:05:55', '2026-10-27 13:05:55', '', 'Dinnerware', '', 'publish', 'closed', 'closed', '', 'dinnerware', '', '', '2026-10-27 13:05:55', '2026-10-27 13:05:55', '', 0, 'http://localhost/ceramic/dinnerware/', 4, 'nav_menu_item', '', 0),
(34, 0, '2026-10-27 13:05:55', '2026-10-27 13:05:55', '', 'Mugs &amp; Cups', '', 'publish', 'closed', 'closed', '', 'mugs-cups', '', '', '2026-10-27 13:05:55', '2026-10-27 13:05:55', '', 0, 'http://localhost/ceramic/mugs-cups/', 5, 'nav_menu_item', '', 0),
(35, 0, '2026-10-27 13:05:56', '2026-10-27 13:05:56', '', 'Planters', '', 'publish', 'closed', 'closed', '', 'planters', '', '', '2026-10-27 13:05:56', '2026-10-27 13:05:56', '', 0, 'http://localhost/ceramic/planters/', 6, 'nav_menu_item', '', 0),
(36, 0, '2026-10-27 13:05:56', '2026-10-27 13:05:56', '', 'Our Craft', '', 'publish', 'closed', 'closed', '', 'our-craft', '', '', '2026-10-27 13:05:56', '2026-10-27 13:05:56', '', 0, 'http://localhost/ceramic/our-craft/', 7, 'nav_menu_item', '', 0),
(37, 0, '2026-10-27 13:05:57', '2026-10-27 13:05:57', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2026-10-27 13:05:57', '2026-10-27 13:05:57', '', 0, 'http://localhost/ceramic/contact/', 8, 'nav_menu_item', '', 0),
(39, 0, '2026-10-27 13:12:49', '2026-10-27 13:12:49', '', 'earth20', '20% Off Limited Studio Drop', 'publish', 'closed', 'closed', '', 'earth20', '', '', '2026-10-27 13:12:49', '2026-10-27 13:12:49', '', 0, 'http://localhost/ceramic/?post_type=shop_coupon&p=39', 0, 'shop_coupon', '', 0),
(40, 0, '2026-10-27 14:41:44', '2026-10-27 14:41:44', '<!-- HERO SECTION -->\n<div class=\"ceramic-hero-banner\" style=\"position: relative;background: linear-gradient(145deg, #181614 0%, #2b2723 100%);color: #ffffff;padding: 100px 36px;border-radius: 24px;margin-bottom: 50px;overflow: hidden\">\n    <div style=\"position: absolute;right: -60px;top: -60px;width: 500px;height: 500px;background: radial-gradient(circle, rgba(178,90,56,0.28) 0%, rgba(0,0,0,0) 70%);border-radius: 50%;pointer-events: none\"></div>\n    <div style=\"position: absolute;left: 20%;bottom: -80px;width: 400px;height: 400px;background: radial-gradient(circle, rgba(94,102,81,0.2) 0%, rgba(0,0,0,0) 70%);border-radius: 50%;pointer-events: none\"></div>\n    \n    <div class=\"ceramic-hero-grid\" style=\"max-width: 1240px;margin: 0 auto;display: grid;grid-template-columns: 1.25fr 0.85fr;gap: 60px;align-items: center;position: relative;z-index: 2\">\n        <div>\n            <div style=\"display: inline-flex;align-items: center;gap: 8px;padding: 7px 18px;border-radius: 30px;margin-bottom: 24px\">\n                <span style=\"color: #e2a275;font-size: 0.8rem;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase\">✦ SLOW-CRAFTED POTTERY • STUDIO DROP</span>\n            </div>\n            \n            <h1 style=\"font-size: clamp(2.6rem, 5.5vw, 4.4rem);font-family: &apos;Playfair Display&apos;, Georgia, serif;font-weight: 700;line-height: 1.12;color: #fdfcf9;margin-bottom: 24px;letter-spacing: -0.02em\">\n                Sculpted from Earth.<br>\n                <span style=\"font-style: italic;font-weight: 400;color: #e2a275\">Fired for Eternity.</span>\n            </h1>\n            \n            <p style=\"font-size: 1.2rem;color: #d6cebf;line-height: 1.75;margin-bottom: 38px;max-width: 580px\">\n                Mindfully wheel-thrown ceramic vessels, tableware, and sculptural pieces crafted with natural mineral glazes and sustainable high-fire vitrification for your daily living rituals.\n            </p>\n            \n            <div style=\"display: flex;gap: 16px;flex-wrap: wrap;align-items: center;margin-bottom: 40px\">\n                <a href=\"/ceramic/shop/\" class=\"button\" style=\"padding: 16px 36px !important;font-size: 0.95rem !important\">\n                    Explore Studio Shop →\n                </a>\n                <a href=\"/ceramic/about/\" class=\"ceramic-btn-secondary\" style=\"border-color: #d6cebf !important;color: #fdfcf9 !important;padding: 15px 32px !important\">\n                    Our Craft Story\n                </a>\n            </div>\n\n            <!-- Ticker -->\n            <div style=\"display: flex;gap: 30px;flex-wrap: wrap;padding-top: 25px\">\n                <div>\n                    <div style=\"font-size: 1.5rem;font-weight: 700;color: #ffffff;font-family: &apos;Playfair Display&apos;, Georgia, serif\">2350°F</div>\n                    <div style=\"font-size: 0.8rem;color: #a8a29e;text-transform: uppercase;letter-spacing: 0.05em\">Cone 6 Vitrified</div>\n                </div>\n                <div style=\"padding-left: 30px\">\n                    <div style=\"font-size: 1.5rem;font-weight: 700;color: #ffffff;font-family: &apos;Playfair Display&apos;, Georgia, serif\">100%</div>\n                    <div style=\"font-size: 0.8rem;color: #a8a29e;text-transform: uppercase;letter-spacing: 0.05em\">Food &amp; Dishwasher Safe</div>\n                </div>\n                <div style=\"padding-left: 30px\">\n                    <div style=\"font-size: 1.5rem;font-weight: 700;color: #ffffff;font-family: &apos;Playfair Display&apos;, Georgia, serif\">Small Batch</div>\n                    <div style=\"font-size: 0.8rem;color: #a8a29e;text-transform: uppercase;letter-spacing: 0.05em\">Wheel-Thrown by Hand</div>\n                </div>\n            </div>\n        </div>\n        \n        <!-- Hero Visual Showcase -->\n        <div style=\"position: relative\">\n            <div style=\"position: relative;border-radius: 20px;overflow: hidden\">\n                <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/vase1.jpg\" alt=\"Artisan Terracotta Vase\" style=\"width: 100%;height: 520px;object-fit: cover;display: block\" />\n                <div style=\"position: absolute;bottom: 0;left: 0;right: 0;padding: 28px;background: linear-gradient(to top, rgba(18,16,14,0.92) 0%, rgba(18,16,14,0.4) 60%, transparent 100%)\">\n                    <span style=\"color: #e2a275;font-size: 0.75rem;font-weight: 700;text-transform: uppercase;letter-spacing: 0.1em;display: block;margin-bottom: 4px\">Studio Bestseller</span>\n                    <h3 style=\"color: #ffffff;font-family: &apos;Playfair Display&apos;, Georgia, serif;font-size: 1.4rem;margin: 0 0 6px 0\">Wabi-Sabi Terracotta Amphora Vase</h3>\n                    <div style=\"display: flex;justify-content: space-between;align-items: center\">\n                        <span style=\"color: #f7eee9;font-weight: 700;font-size: 1.25rem\">$68.00 <del style=\"color: #a8a29e;font-size: 0.95rem;margin-left: 6px\">$85.00</del></span>\n                        <a href=\"/ceramic/product/wabi-sabi-terracotta-amphora-vase/\" style=\"background: #b25a38;color: #fff;padding: 8px 18px;border-radius: 6px;font-size: 0.82rem;font-weight: 700;text-transform: uppercase;letter-spacing: 0.05em\">View Piece</a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n\n<!-- TRUST VALUE PROPOSITIONS -->\n<div class=\"pottery-trust-grid\">\n    <div class=\"pottery-trust-badge\">\n        <div class=\"badge-icon\">🏺</div>\n        <div>\n            <h4>Wheel-Thrown by Hand</h4>\n            <p>Every single curve shaped with intuitive artisan proportion.</p>\n        </div>\n    </div>\n    <div class=\"pottery-trust-badge\">\n        <div class=\"badge-icon\">🔥</div>\n        <div>\n            <h4>2350°F Kiln Vitrified</h4>\n            <p>High-fire dense stoneware: fully dishwasher &amp; microwave safe.</p>\n        </div>\n    </div>\n    <div class=\"pottery-trust-badge\">\n        <div class=\"badge-icon\">🌿</div>\n        <div>\n            <h4>Non-Toxic Mineral Glazes</h4>\n            <p>Zero lead, zero cadmium, 100% organic natural earth pigments.</p>\n        </div>\n    </div>\n    <div class=\"pottery-trust-badge\">\n        <div class=\"badge-icon\">📦</div>\n        <div>\n            <h4>Zero-Plastic Delivery</h4>\n            <p>100% biodegradable kraft packaging with guaranteed transit protection.</p>\n        </div>\n    </div>\n</div>\n\n<!-- FEATURED CATEGORIES SECTION -->\n<div style=\"margin-bottom: 90px\">\n    <div style=\"text-align: center;max-width: 680px;margin: 0 auto 45px auto\">\n        <span style=\"color: #b25a38;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase;font-size: 0.85rem\">CURATED ARCHIVE</span>\n        <h2 style=\"font-size: 2.7rem;margin-top: 8px;margin-bottom: 14px\">Explore by Ceramic Collection</h2>\n        <p style=\"color: #5e5954;font-size: 1.1rem;line-height: 1.7\">From morning pour-over vessels to heirloom dinnerware and sculptural centerpieces, find pieces made to be cherished daily.</p>\n    </div>\n\n    <div style=\"display: grid;grid-template-columns: repeat(auto-fit, minmax(270px, 1fr));gap: 26px\">\n        <!-- Cat 1 -->\n        <a href=\"/ceramic/product-category/dinnerware/\" class=\"collection-card\">\n            <div class=\"img-wrap\">\n                <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/dinnerware1.jpg\" alt=\"Dinnerware &amp; Tableware\" />\n                <span style=\"position: absolute;top: 16px;left: 16px;color: #fff;font-size: 0.72rem;font-weight: 700;text-transform: uppercase;padding: 4px 10px;border-radius: 20px;letter-spacing: 0.05em\">Tableware</span>\n            </div>\n            <div class=\"card-content\">\n                <h3>Dinnerware &amp; Platters</h3>\n                <p>Flat-Bottom Plates &amp; Serving Sets →</p>\n            </div>\n        </a>\n\n        <!-- Cat 2 -->\n        <a href=\"/ceramic/product-category/vases/\" class=\"collection-card\">\n            <div class=\"img-wrap\">\n                <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/vase1.jpg\" alt=\"Vases &amp; Vessels\" />\n                <span style=\"position: absolute;top: 16px;left: 16px;color: #fff;font-size: 0.72rem;font-weight: 700;text-transform: uppercase;padding: 4px 10px;border-radius: 20px;letter-spacing: 0.05em\">Sculptural</span>\n            </div>\n            <div class=\"card-content\">\n                <h3>Vases &amp; Statement Vessels</h3>\n                <p>Amphoras &amp; Centerpieces →</p>\n            </div>\n        </a>\n\n        <!-- Cat 3 -->\n        <a href=\"/ceramic/product-category/mugs/\" class=\"collection-card\">\n            <div class=\"img-wrap\">\n                <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/mug1.jpg\" alt=\"Mugs &amp; Cups\" />\n                <span style=\"position: absolute;top: 16px;left: 16px;color: #fff;font-size: 0.72rem;font-weight: 700;text-transform: uppercase;padding: 4px 10px;border-radius: 20px;letter-spacing: 0.05em\">Morning Rituals</span>\n            </div>\n            <div class=\"card-content\">\n                <h3>Artisan Mugs &amp; Cups</h3>\n                <p>Speckled Coffee Cups &amp; Tumblers →</p>\n            </div>\n        </a>\n\n        <!-- Cat 4 -->\n        <a href=\"/ceramic/product-category/bowls/\" class=\"collection-card\">\n            <div class=\"img-wrap\">\n                <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/bowl1.jpg\" alt=\"Ceremonial Bowls\" />\n                <span style=\"position: absolute;top: 16px;left: 16px;color: #fff;font-size: 0.72rem;font-weight: 700;text-transform: uppercase;padding: 4px 10px;border-radius: 20px;letter-spacing: 0.05em\">Artisanal</span>\n            </div>\n            <div class=\"card-content\">\n                <h3>Ceremonial Bowls</h3>\n                <p>Grain Bowls &amp; Matchaware →</p>\n            </div>\n        </a>\n    </div>\n</div>\n\n<!-- LATEST STUDIO DROPS (WOOCOMMERCE SHORTCODE) -->\n<div style=\"margin-bottom: 95px\">\n    <div style=\"display: flex;justify-content: space-between;align-items: flex-end;margin-bottom: 40px;flex-wrap: wrap;gap: 20px;border-bottom: 2px solid #e8e2d8;padding-bottom: 20px\">\n        <div>\n            <span style=\"color: #b25a38;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase;font-size: 0.85rem\">AUTUMN KILN FIRING</span>\n            <h2 style=\"font-size: 2.6rem;margin: 6px 0 0 0\">Latest Ceramic Drops</h2>\n        </div>\n        <div>\n            <a href=\"/ceramic/shop/\" class=\"ceramic-btn-secondary\" style=\"padding: 10px 22px !important;font-size: 0.85rem !important\">\n                View All Products ({8}) →\n            </a>\n        </div>\n    </div>\n\n    [products limit=\"8\" columns=\"4\" orderby=\"date\" order=\"DESC\"]\n</div>\n\n<!-- CRAFTSMANSHIP &amp; STORYTELLING -->\n<div style=\"background: #ffffff;border: 1px solid #e8e2d8;border-radius: 24px;padding: 70px 50px;margin-bottom: 90px\">\n    <div style=\"display: grid;grid-template-columns: 1fr 1fr;gap: 60px;align-items: center\" class=\"ceramic-hero-grid\">\n        <div style=\"border-radius: 18px;overflow: hidden;position: relative\">\n            <img src=\"http://localhost/ceramic/wp-content/uploads/2026/10/potter_craft.jpg\" alt=\"Artisan Potter Working on Wheel\" style=\"width: 100%;height: 500px;object-fit: cover;display: block\" />\n            <div style=\"position: absolute;bottom: 20px;left: 20px;color: #fff;padding: 12px 20px;border-radius: 10px;font-size: 0.85rem\">\n                <span style=\"color: #e2a275;font-weight: 700\">STUDIO PROCESS:</span> Hand Throwing on the Shimpo Wheel\n            </div>\n        </div>\n        <div>\n            <span style=\"color: #b25a38;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase;font-size: 0.85rem\">OUR CRAFT PHILOSOPHY</span>\n            <h2 style=\"font-size: 2.6rem;margin-top: 8px;margin-bottom: 20px;line-height: 1.2\">The Art of Slow Living and Intentional Pottery</h2>\n            <p style=\"color: #55504a;font-size: 1.08rem;line-height: 1.85;margin-bottom: 22px\">\n                In a world dominated by uniform machines, our pottery is a celebration of human touch. Every lump of raw iron-rich clay is wedged, centered, and thrown by hand in our studio.\n            </p>\n            <p style=\"color: #55504a;font-size: 1.08rem;line-height: 1.85;margin-bottom: 35px\">\n                Our glazes are blended in small batches using crushed volcanic feldspar, wood ash, and mineral iron oxides. When fired at 2350°F, the clay particles melt and fuse into non-porous vitrified stoneware built to endure generations.\n            </p>\n            \n            <div style=\"display: grid;grid-template-columns: 1fr 1fr;gap: 24px;margin-bottom: 35px\">\n                <div style=\"border-left: 3px solid #b25a38;padding-left: 18px\">\n                    <strong style=\"display: block;font-size: 1.15rem;color: #1c1a17;margin-bottom: 4px\">Zero Toxic Additives</strong>\n                    <span style=\"color: #79746e;font-size: 0.92rem;line-height: 1.5;display: block\">Tested strictly safe for everyday food contact and hot liquids.</span>\n                </div>\n                <div style=\"border-left: 3px solid #b25a38;padding-left: 18px\">\n                    <strong style=\"display: block;font-size: 1.15rem;color: #1c1a17;margin-bottom: 4px\">Sustainable Studio</strong>\n                    <span style=\"color: #79746e;font-size: 0.92rem;line-height: 1.5;display: block\">100% of unfired clay scraps are pugged and recycled with zero waste.</span>\n                </div>\n            </div>\n\n            <a href=\"/ceramic/about/\" class=\"button\" style=\"padding: 15px 34px !important\">Read The Full Studio Journey</a>\n        </div>\n    </div>\n</div>\n\n<!-- 3-STEP POTTERY JOURNEY CARDS -->\n<div style=\"margin-bottom: 90px\">\n    <div style=\"text-align: center;max-width: 650px;margin: 0 auto 40px auto\">\n        <span style=\"color: #b25a38;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase;font-size: 0.85rem\">THE 3 PHASES</span>\n        <h2 style=\"font-size: 2.5rem;margin-top: 8px\">From Raw Earth to Finished Art</h2>\n    </div>\n\n    <div style=\"display: grid;grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));gap: 28px\">\n        <div class=\"craft-step-card\">\n            <div class=\"step-num\">01</div>\n            <h3>Wheel Throwing &amp; Trimming</h3>\n            <p>Clay is centered and raised by hand. Once leather-hard, each vessel is turned and trimmed with ribbon tools to create subtle, ergonomic footings.</p>\n        </div>\n\n        <div class=\"craft-step-card\">\n            <div class=\"step-num\">02</div>\n            <h3>Mineral Slip &amp; Glaze Dipping</h3>\n            <p>Vessels receive a bisque firing at 1800°F before being hand-dipped into bespoke mineral glazes that react organically with iron specks in the body.</p>\n        </div>\n\n        <div class=\"craft-step-card\">\n            <div class=\"step-num\">03</div>\n            <h3>2350°F Kiln Vitrification</h3>\n            <p>A final 28-hour high fire melts the silica and feldspar, vitrifying the clay into rock-hard, non-absorbent stoneware ready for a lifetime of meals.</p>\n        </div>\n    </div>\n</div>\n\n<!-- PROMOTIONAL VOUCHER BANNER -->\n<div style=\"background: linear-gradient(135deg, #1c1a17 0%, #2f2a24 100%);color: #ffffff;border-radius: 24px;padding: 70px 40px;margin-bottom: 90px;text-align: center;position: relative;overflow: hidden\">\n    <div style=\"max-width: 720px;margin: 0 auto;position: relative;z-index: 2\">\n        <span style=\"color: #e2a275;font-size: 0.85rem;font-weight: 700;letter-spacing: 0.15em;text-transform: uppercase\">SPECIAL AUTUMN RELEASE OFFER</span>\n        <h2 style=\"color: #ffffff;font-size: clamp(2rem, 4vw, 3rem);margin-top: 12px;margin-bottom: 18px\">Save 20% on Handcrafted Vases &amp; Sets</h2>\n        <p style=\"color: #d6cebf;font-size: 1.15rem;line-height: 1.8;margin-bottom: 30px\">\n            Celebrate the season of warm gatherings. Enjoy <strong>20% off</strong> all vase and dinnerware orders when you apply coupon code at checkout.\n        </p>\n        \n        <div style=\"display: inline-flex;align-items: center;gap: 14px;border: 1.5px dashed #e2a275;border-radius: 12px;padding: 12px 28px;margin-bottom: 30px\">\n            <span style=\"color: #f7f4ee;font-size: 1rem\">Coupon Code:</span>\n            <strong id=\"couponCodeVal\" style=\"color: #e2a275;font-size: 1.4rem;letter-spacing: 0.12em;font-family: monospace\">EARTH20</strong>\n            <button style=\"background: #e2a275;color: #1c1a17;border: none;padding: 6px 14px;border-radius: 6px;font-weight: 700;font-size: 0.8rem;cursor: pointer;text-transform: uppercase\">Copy</button>\n        </div>\n        \n        <div>\n            <a href=\"/ceramic/shop/\" class=\"button\" style=\"background: #b25a38 !important;font-size: 0.95rem !important;padding: 16px 38px !important\">\n                Shop The Limited Drop Now\n            </a>\n        </div>\n    </div>\n</div>\n\n<!-- TESTIMONIALS SECTION -->\n<div style=\"margin-bottom: 90px\">\n    <div style=\"text-align: center;max-width: 650px;margin: 0 auto 45px auto\">\n        <span style=\"color: #b25a38;font-weight: 700;letter-spacing: 0.12em;text-transform: uppercase;font-size: 0.85rem\">COMMUNITY PRAISE</span>\n        <h2 style=\"font-size: 2.6rem;margin-top: 8px\">Treasured by Culinary Artists &amp; Collectors</h2>\n    </div>\n\n    <div style=\"display: grid;grid-template-columns: repeat(auto-fit, minmax(310px, 1fr));gap: 28px\">\n        <div class=\"testimonial-card\">\n            <div class=\"stars\">★★★★★</div>\n            <p>\n                \"The Earth &amp; Speckle mug has completely transformed my mornings. The weight, balance, and unglazed tactile thumb rest show unbelievable attention to craft. It is the only cup I reach for.\"\n            </p>\n            <div class=\"author\">Elena Vance</div>\n            <div class=\"location\">Architect &amp; Designer • Seattle, WA</div>\n        </div>\n\n        <div class=\"testimonial-card\">\n            <div class=\"stars\">★★★★★</div>\n            <p>\n                \"The Wabi-Sabi Amphora Vase is an absolute masterpiece. The textural contrast between the raw iron clay and the refined form brings sculptural soul into our home. Packaging was 100% plastic-free and flawless.\"\n            </p>\n            <div class=\"author\">Marcus Chen</div>\n            <div class=\"location\">Interior Stylist • Austin, TX</div>\n        </div>\n\n        <div class=\"testimonial-card\">\n            <div class=\"stars\">★★★★★</div>\n            <p>\n                \"We replaced our commercial dinnerware with the Nordic Slate plates. They elevate every home-cooked meal into a Michelin dining presentation. They wash beautifully in the dishwasher without scratching.\"\n            </p>\n            <div class=\"author\">Sarah &amp; David Lin</div>\n            <div class=\"location\">Restaurateurs • San Francisco, CA</div>\n        </div>\n    </div>\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2026-10-27 14:41:44', '2026-10-27 14:41:44', '', 27, 'http://localhost/ceramic/?p=40', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'product_count_product_cat', '2'),
(2, 18, 'product_count_product_cat', '3'),
(3, 16, 'product_count_product_cat', '3'),
(4, 20, 'product_count_product_cat', '1'),
(5, 19, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Dinnerware &amp; Tableware', 'dinnerware', 0),
(17, 'Vases &amp; Vessels', 'vases', 0),
(18, 'Mugs &amp; Cups', 'mugs', 0),
(19, 'Planters &amp; Botanical', 'planters', 0),
(20, 'Artisanal Bowls', 'bowls', 0),
(21, 'Ceramica Main Menu', 'ceramica-main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(19, 8, 0),
(19, 17, 0),
(20, 2, 0),
(20, 8, 0),
(20, 18, 0),
(21, 2, 0),
(21, 8, 0),
(21, 16, 0),
(22, 2, 0),
(22, 8, 0),
(22, 16, 0),
(22, 20, 0),
(23, 2, 0),
(23, 8, 0),
(23, 19, 0),
(24, 2, 0),
(24, 8, 0),
(24, 16, 0),
(24, 18, 0),
(25, 2, 0),
(25, 8, 0),
(25, 17, 0),
(26, 2, 0),
(26, 8, 0),
(26, 18, 0),
(30, 21, 0),
(31, 21, 0),
(32, 21, 0),
(33, 21, 0),
(34, 21, 0),
(35, 21, 0),
(36, 21, 0),
(37, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 8),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 8),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 3),
(17, 17, 'product_cat', '', 0, 2),
(18, 18, 'product_cat', '', 0, 3),
(19, 19, 'product_cat', '', 0, 1),
(20, 20, 'product_cat', '', 0, 1),
(21, 21, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'infinite_scrolling', 'true'),
(8, 1, 'comment_shortcuts', 'false'),
(9, 1, 'admin_color', 'modern'),
(10, 1, 'use_ssl', '0'),
(11, 1, 'show_admin_bar_front', 'true'),
(12, 1, 'locale', ''),
(13, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(14, 1, 'wp_user_level', '10'),
(15, 1, 'dismissed_wp_pointers', ''),
(16, 1, 'show_welcome_panel', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$wp$2y$10$VdStg2QVTBjuaUiJR3TdPeKyS7qnxEMvG7LbB7HyNjS5ou/cvuEi.', 'admin', 'admin@ceramicstudio.local', 'http://localhost/ceramic', '2026-10-27 12:35:14', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `locale` varchar(20) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `content_data` longtext DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) NOT NULL DEFAULT '',
  `image` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '{}', 'unactioned', 'woocommerce-core', '2026-10-27 13:03:15', NULL, 0, 'plain', '', 0, 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `actioned_text` varchar(255) NOT NULL,
  `nonce_action` varchar(255) DEFAULT NULL,
  `nonce_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(1, 1, 'notify-refund-returns-page', 'Edit page', 'http://localhost/ceramic/wp-admin/post.php?post=10&action=edit', 'actioned', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT '',
  `billing_phone` varchar(100) NOT NULL DEFAULT '',
  `shipping_phone` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_orders`
--

CREATE TABLE `wp_wc_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `tax_amount` decimal(26,8) DEFAULT NULL,
  `total_amount` decimal(26,8) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(320) DEFAULT NULL,
  `date_created_gmt` datetime DEFAULT NULL,
  `date_updated_gmt` datetime DEFAULT NULL,
  `parent_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_method_title` text DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `customer_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_orders_meta`
--

CREATE TABLE `wp_wc_orders_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_addresses`
--

CREATE TABLE `wp_wc_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(20) DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `address_2` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `postcode` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_operational_data`
--

CREATE TABLE `wp_wc_order_operational_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_via` varchar(100) DEFAULT NULL,
  `woocommerce_version` varchar(20) DEFAULT NULL,
  `prices_include_tax` tinyint(1) DEFAULT NULL,
  `coupon_usages_are_counted` tinyint(1) DEFAULT NULL,
  `download_permission_granted` tinyint(1) DEFAULT NULL,
  `cart_hash` varchar(100) DEFAULT NULL,
  `new_order_email_sent` tinyint(1) DEFAULT NULL,
  `order_key` varchar(100) DEFAULT NULL,
  `order_stock_reduced` tinyint(1) DEFAULT NULL,
  `date_paid_gmt` datetime DEFAULT NULL,
  `date_completed_gmt` datetime DEFAULT NULL,
  `shipping_tax_amount` decimal(26,8) DEFAULT NULL,
  `shipping_total_amount` decimal(26,8) DEFAULT NULL,
  `discount_tax_amount` decimal(26,8) DEFAULT NULL,
  `discount_total_amount` decimal(26,8) DEFAULT NULL,
  `recorded_sales` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0,
  `taxable_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_attributes_lookup`
--

CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_download_directories`
--

CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(256) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_product_download_directories`
--

INSERT INTO `wp_wc_product_download_directories` (`url_id`, `url`, `enabled`) VALUES
(1, 'file://C:/xampp/htdocs/ceramic/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://localhost/ceramic/wp-content/uploads/woocommerce_uploads/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) DEFAULT '',
  `global_unique_id` varchar(100) DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) DEFAULT 'taxable',
  `tax_class` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `global_unique_id`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(19, 'CRM-VAS-01', '', 0, 0, 68.0000, 68.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(20, 'CRM-MUG-02', '', 0, 0, 34.0000, 34.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(21, 'CRM-DIN-03', '', 0, 0, 82.0000, 82.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(22, 'CRM-BWL-04', '', 0, 0, 44.0000, 44.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(23, 'CRM-PLN-05', '', 0, 0, 48.0000, 48.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(24, 'CRM-CAR-06', '', 0, 0, 74.0000, 74.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(25, 'CRM-VES-07', '', 0, 0, 95.0000, 95.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(26, 'CRM-CUP-08', '', 0, 0, 58.0000, 58.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_rate_limits`
--

CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_key` varchar(200) NOT NULL,
  `rate_limit_expiry` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_stock_notificationmeta`
--

CREATE TABLE `wp_wc_stock_notificationmeta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_stock_notifications`
--

CREATE TABLE `wp_wc_stock_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `date_created_gmt` datetime DEFAULT NULL,
  `date_modified_gmt` datetime DEFAULT NULL,
  `date_confirmed_gmt` datetime DEFAULT NULL,
  `date_last_attempt_gmt` datetime DEFAULT NULL,
  `date_notified_gmt` datetime DEFAULT NULL,
  `date_cancelled_gmt` datetime DEFAULT NULL,
  `cancellation_source` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text NOT NULL,
  `secret` text NOT NULL,
  `topic` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext DEFAULT NULL,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` varchar(200) DEFAULT NULL,
  `attribute_type` varchar(20) NOT NULL,
  `attribute_orderby` varchar(20) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `context` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, 't_9271e777662e83091c6b37a429acd8', 'a:2:{s:11:\"cart_totals\";s:393:\"a:15:{s:8:\"subtotal\";s:2:\"74\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:2:\"74\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"74.00\";s:9:\"total_tax\";d:0;}\";s:4:\"cart\";s:410:\"a:1:{s:32:\"1ff1de774005f8da13f42943881c655f\";a:11:{s:3:\"key\";s:32:\"1ff1de774005f8da13f42943881c655f\";s:10:\"product_id\";i:24;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:74;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:74;s:8:\"line_tax\";d:0;}}\";}', 1793285118);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(8) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  ADD KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),
  ADD KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),
  ADD KEY `status_claim_id` (`status`,`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`),
  ADD KEY `woo_idx_comment_date_type` (`comment_date_gmt`,`comment_type`,`comment_approved`,`comment_post_ID`),
  ADD KEY `woo_idx_comment_approved_type` (`comment_approved`,`comment_type`,`comment_post_ID`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `type_status_author` (`post_type`,`post_status`,`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_orders`
--
ALTER TABLE `wp_wc_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `date_created` (`date_created_gmt`),
  ADD KEY `customer_id_billing_email` (`customer_id`,`billing_email`(171)),
  ADD KEY `customer_id_status` (`customer_id`,`status`),
  ADD KEY `billing_email` (`billing_email`(191)),
  ADD KEY `transaction_id` (`transaction_id`(20)),
  ADD KEY `type_status_date` (`type`,`status`,`date_created_gmt`),
  ADD KEY `parent_order_id` (`parent_order_id`),
  ADD KEY `date_updated` (`date_updated_gmt`);

--
-- Indexes for table `wp_wc_orders_meta`
--
ALTER TABLE `wp_wc_orders_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key_value` (`meta_key`(50),`meta_value`(20)),
  ADD KEY `order_id_meta_key_meta_value` (`order_id`,`meta_key`(100),`meta_value`(82));

--
-- Indexes for table `wp_wc_order_addresses`
--
ALTER TABLE `wp_wc_order_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address_type_order_id` (`address_type`,`order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `email` (`email`(191)),
  ADD KEY `phone` (`phone`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_operational_data`
--
ALTER TABLE `wp_wc_order_operational_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `order_key` (`order_key`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`,`order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_product_date` (`customer_id`,`product_id`,`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_date_paid_status_parent` (`date_paid`,`status`,`parent_id`);

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`,`order_item_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_attributes_lookup`
--
ALTER TABLE `wp_wc_product_attributes_lookup`
  ADD PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  ADD KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`),
  ADD KEY `taxonomy_term_id_in_stock_product_or_parent_id` (`taxonomy`,`term_id`,`in_stock`,`product_or_parent_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `url` (`url`(191));

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`),
  ADD KEY `sku` (`sku`(50)),
  ADD KEY `global_unique_id` (`global_unique_id`(50));

--
-- Indexes for table `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  ADD PRIMARY KEY (`rate_limit_id`),
  ADD UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191));

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id_expires` (`product_id`,`expires`);

--
-- Indexes for table `wp_wc_stock_notificationmeta`
--
ALTER TABLE `wp_wc_stock_notificationmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_wc_stock_notifications`
--
ALTER TABLE `wp_wc_stock_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_status_attempt` (`product_id`,`status`,`date_last_attempt_gmt`,`id`),
  ADD KEY `user_lookup` (`user_id`,`product_id`,`status`),
  ADD KEY `email_lookup` (`user_email`,`product_id`,`status`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`),
  ADD KEY `idx_user_email` (`user_email`(100));

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`),
  ADD KEY `session_expiry` (`session_expiry`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `zone_order_id` (`zone_order`,`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `method_id` (`method_id`(20));

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_orders_meta`
--
ALTER TABLE `wp_wc_orders_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_order_addresses`
--
ALTER TABLE `wp_wc_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_order_operational_data`
--
ALTER TABLE `wp_wc_order_operational_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  MODIFY `url_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  MODIFY `rate_limit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_stock_notificationmeta`
--
ALTER TABLE `wp_wc_stock_notificationmeta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_stock_notifications`
--
ALTER TABLE `wp_wc_stock_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
