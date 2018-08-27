-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2018 at 09:19 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_one`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` text NOT NULL,
  `mailing_address1` text NOT NULL,
  `mailing_address2` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `address2` text NOT NULL,
  `city2` text NOT NULL,
  `postcode2` varchar(50) NOT NULL,
  `country2` text NOT NULL,
  `checkout_day` text NOT NULL,
  `billing_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `email`, `first_name`, `last_name`, `phone`, `mailing_address1`, `mailing_address2`, `address`, `city`, `state`, `postcode`, `country`, `address2`, `city2`, `postcode2`, `country2`, `checkout_day`, `billing_address`) VALUES
(2, 'email', 'vu', 'luong', '01649881392', 'mailing address1', 'mailing address2', 'address', 'city', 'state', 'postcode', 'country', 'address 2', 'city 2', 'post code2', 'country 2', 'Wednesday 11th of July 2018 04:15:49 AM', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `password`, `email`) VALUES
(42, 'asd', 'a', 'aa@gmail.com'),
(43, 'g', 'a', 'asdf@gmailc.om');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-28 07:43:01', '2018-06-28 07:43:01', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 11, 'admin', 'intern-03@vn.devinition.com', '', '::1', '2018-06-29 08:19:51', '2018-06-29 08:19:51', 'hello world,', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0', '', 0, 1),
(3, 11, 'man ga', 'hung13923289@gmail.com', 'http://none', '::1', '2018-06-29 08:31:25', '2018-06-29 08:31:25', 'ok man', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0', '', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `type` longtext,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 'save', 1, 1, '2018-07-04 04:09:13', '2018-07-04 11:09:13'),
(2, '', '', 'email', 1, 1, '2018-07-04 04:09:13', '2018-07-04 11:09:13'),
(3, '', '', 'email', 1, 1, '2018-07-04 04:09:13', '2018-07-04 11:09:13'),
(4, '', '', 'successmessage', 1, 1, '2018-07-04 04:09:13', '2018-07-04 11:09:13'),
(5, NULL, NULL, 'successmessage', 1, 2, '2018-07-04 11:14:01', '2018-07-04 11:14:01'),
(6, NULL, NULL, 'email', 1, 2, '2018-07-04 11:14:01', '2018-07-04 11:14:01'),
(7, NULL, NULL, 'save', 1, 2, '2018-07-04 11:14:01', '2018-07-04 11:14:01'),
(8, NULL, NULL, 'email', 1, 2, '2018-07-04 11:19:17', '2018-07-04 11:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label', 'Store Submission'),
(2, 1, 'objectType', 'Action'),
(3, 1, 'objectDomain', 'actions'),
(4, 1, 'editActive', ''),
(5, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(6, 1, 'payment_gateways', ''),
(7, 1, 'payment_total', ''),
(8, 1, 'tag', ''),
(9, 1, 'to', ''),
(10, 1, 'email_subject', ''),
(11, 1, 'email_message', ''),
(12, 1, 'from_name', ''),
(13, 1, 'from_address', ''),
(14, 1, 'reply_to', ''),
(15, 1, 'email_format', 'html'),
(16, 1, 'cc', ''),
(17, 1, 'bcc', ''),
(18, 1, 'attach_csv', ''),
(19, 1, 'redirect_url', ''),
(20, 1, 'email_message_plain', ''),
(21, 2, 'label', 'Email Confirmation'),
(22, 2, 'to', '{field:email}'),
(23, 2, 'subject', 'This is an email action.'),
(24, 2, 'message', 'Hello, Ninja Forms!'),
(25, 2, 'objectType', 'Action'),
(26, 2, 'objectDomain', 'actions'),
(27, 2, 'editActive', ''),
(28, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(29, 2, 'payment_gateways', ''),
(30, 2, 'payment_total', ''),
(31, 2, 'tag', ''),
(32, 2, 'email_subject', 'Submission Confirmation '),
(33, 2, 'email_message', '<p>{all_fields_table}<br></p>'),
(34, 2, 'from_name', ''),
(35, 2, 'from_address', ''),
(36, 2, 'reply_to', ''),
(37, 2, 'email_format', 'html'),
(38, 2, 'cc', ''),
(39, 2, 'bcc', ''),
(40, 2, 'attach_csv', ''),
(41, 2, 'email_message_plain', ''),
(42, 3, 'objectType', 'Action'),
(43, 3, 'objectDomain', 'actions'),
(44, 3, 'editActive', ''),
(45, 3, 'label', 'Email Notification'),
(46, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(47, 3, 'payment_gateways', ''),
(48, 3, 'payment_total', ''),
(49, 3, 'tag', ''),
(50, 3, 'to', '{system:admin_email}'),
(51, 3, 'email_subject', 'New message from {field:name}'),
(52, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(53, 3, 'from_name', ''),
(54, 3, 'from_address', ''),
(55, 3, 'reply_to', '{field:email}'),
(56, 3, 'email_format', 'html'),
(57, 3, 'cc', ''),
(58, 3, 'bcc', ''),
(59, 3, 'attach_csv', '0'),
(60, 3, 'email_message_plain', ''),
(61, 4, 'label', 'Success Message'),
(62, 4, 'message', 'Thank you {field:name} for filling out my form!'),
(63, 4, 'objectType', 'Action'),
(64, 4, 'objectDomain', 'actions'),
(65, 4, 'editActive', ''),
(66, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(67, 4, 'payment_gateways', ''),
(68, 4, 'payment_total', ''),
(69, 4, 'tag', ''),
(70, 4, 'to', ''),
(71, 4, 'email_subject', ''),
(72, 4, 'email_message', ''),
(73, 4, 'from_name', ''),
(74, 4, 'from_address', ''),
(75, 4, 'reply_to', ''),
(76, 4, 'email_format', 'html'),
(77, 4, 'cc', ''),
(78, 4, 'bcc', ''),
(79, 4, 'attach_csv', ''),
(80, 4, 'redirect_url', ''),
(81, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(82, 4, 'email_message_plain', ''),
(83, 5, 'objectType', 'Action'),
(84, 5, 'objectDomain', 'actions'),
(85, 5, 'editActive', ''),
(86, 5, 'label', 'Success Message'),
(87, 5, 'message', 'Your form has been successfully submitted.'),
(88, 5, 'order', '1'),
(89, 5, 'payment_gateways', ''),
(90, 5, 'payment_total', '0'),
(91, 5, 'tag', ''),
(92, 5, 'to', '{wp:admin_email}'),
(93, 5, 'reply_to', ''),
(94, 5, 'email_subject', 'Ninja Forms Submission'),
(95, 5, 'email_message', '{fields_table}'),
(96, 5, 'email_message_plain', ''),
(97, 5, 'from_name', ''),
(98, 5, 'from_address', ''),
(99, 5, 'email_format', 'html'),
(100, 5, 'cc', ''),
(101, 5, 'bcc', ''),
(102, 5, 'redirect_url', ''),
(103, 5, 'submitter_email', ''),
(104, 5, 'fields-save-toggle', 'save_all'),
(105, 5, 'exception_fields', 'a:0:{}'),
(106, 5, 'set_subs_to_expire', '0'),
(107, 5, 'subs_expire_time', '90'),
(108, 5, 'success_msg', 'Your form has been successfully submitted.'),
(109, 6, 'objectType', 'Action'),
(110, 6, 'objectDomain', 'actions'),
(111, 6, 'editActive', ''),
(112, 6, 'label', 'Admin Email'),
(113, 6, 'order', '2'),
(114, 6, 'message', 'This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(115, 6, 'payment_gateways', ''),
(116, 6, 'payment_total', '0'),
(117, 6, 'tag', ''),
(118, 6, 'to', '{wp:admin_email}'),
(119, 6, 'reply_to', ''),
(120, 6, 'email_subject', 'Ninja Forms Submission'),
(121, 6, 'email_message', '{fields_table}'),
(122, 6, 'email_message_plain', ''),
(123, 6, 'from_name', ''),
(124, 6, 'from_address', ''),
(125, 6, 'email_format', 'html'),
(126, 6, 'cc', ''),
(127, 6, 'bcc', ''),
(128, 7, 'objectType', 'Action'),
(129, 7, 'objectDomain', 'actions'),
(130, 7, 'editActive', ''),
(131, 7, 'label', 'Store Submission'),
(132, 7, 'order', '3'),
(133, 7, 'message', 'This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(134, 7, 'payment_gateways', ''),
(135, 7, 'payment_total', '0'),
(136, 7, 'tag', ''),
(137, 7, 'to', '{wp:admin_email}'),
(138, 7, 'reply_to', ''),
(139, 7, 'email_subject', 'Ninja Forms Submission'),
(140, 7, 'email_message', '{fields_table}'),
(141, 7, 'email_message_plain', ''),
(142, 7, 'from_name', ''),
(143, 7, 'from_address', ''),
(144, 7, 'email_format', 'html'),
(145, 7, 'cc', ''),
(146, 7, 'bcc', ''),
(147, 7, 'redirect_url', ''),
(148, 7, 'submitter_email', 'email_1530702713273'),
(149, 7, 'fields-save-toggle', 'save_all'),
(150, 7, 'exception_fields', 'a:0:{}'),
(151, 7, 'set_subs_to_expire', '0'),
(152, 7, 'subs_expire_time', '90'),
(153, 8, 'objectType', 'Action'),
(154, 8, 'objectDomain', 'actions'),
(155, 8, 'editActive', ''),
(156, 8, 'label', 'Announce Admin'),
(157, 8, 'message', 'This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(158, 8, 'payment_gateways', ''),
(159, 8, 'payment_total', '0'),
(160, 8, 'tag', ''),
(161, 8, 'to', 'inter-03@vn.devinition.com'),
(162, 8, 'reply_to', 'luongkhanhvu1392@gmail.com'),
(163, 8, 'email_subject', 'Order Product'),
(164, 8, 'email_message', '[ninja_forms_all_fields]'),
(165, 8, 'email_message_plain', ''),
(166, 8, 'from_name', ''),
(167, 8, 'from_address', ''),
(168, 8, 'email_format', 'html'),
(169, 8, 'cc', ''),
(170, 8, 'bcc', ''),
(171, 8, 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_chunks`
--

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext,
  `key` longtext,
  `type` longtext,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 1, '2018-07-04 04:09:12', '2018-07-04 11:09:12'),
(2, NULL, NULL, NULL, 1, '2018-07-04 04:09:12', '2018-07-04 11:09:12'),
(3, NULL, NULL, NULL, 1, '2018-07-04 04:09:12', '2018-07-04 11:09:12'),
(4, NULL, NULL, NULL, 1, '2018-07-04 04:09:12', '2018-07-04 11:09:12'),
(5, 'Full Name', 'full_name_1530702754570', 'textbox', 2, '2018-07-04 11:14:01', NULL),
(6, 'Phone Number', 'phone_number_1530702766935', 'textbox', 2, '2018-07-04 11:14:01', NULL),
(7, 'Address', 'address_1530702779486', 'textbox', 2, '2018-07-04 11:14:01', NULL),
(8, 'Email', 'email_1530702713273', 'email', 2, '2018-07-04 11:14:01', NULL),
(9, 'URL', 'url_1530702812076', 'hidden', 2, '2018-07-04 11:14:01', NULL),
(10, 'Title', 'title_1530702819003', 'hidden', 2, '2018-07-04 11:14:01', NULL),
(11, 'Submit', 'submit_1530702840505', 'submit', 2, '2018-07-04 11:14:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 5, 'objectType', 'Field'),
(2, 5, 'objectDomain', 'fields'),
(3, 5, 'editActive', ''),
(4, 5, 'order', '1'),
(5, 5, 'type', 'textbox'),
(6, 5, 'label', 'Full Name'),
(7, 5, 'key', 'full_name_1530702754570'),
(8, 5, 'label_pos', 'default'),
(9, 5, 'required', ''),
(10, 5, 'default', ''),
(11, 5, 'placeholder', ''),
(12, 5, 'container_class', ''),
(13, 5, 'element_class', ''),
(14, 5, 'input_limit', ''),
(15, 5, 'input_limit_type', 'characters'),
(16, 5, 'input_limit_msg', 'Character(s) left'),
(17, 5, 'manual_key', ''),
(18, 5, 'admin_label', ''),
(19, 5, 'help_text', ''),
(20, 5, 'mask', ''),
(21, 5, 'custom_mask', ''),
(22, 5, 'custom_name_attribute', ''),
(23, 5, 'personally_identifiable', ''),
(24, 5, 'drawerDisabled', ''),
(25, 6, 'objectType', 'Field'),
(26, 6, 'objectDomain', 'fields'),
(27, 6, 'editActive', ''),
(28, 6, 'order', '2'),
(29, 6, 'type', 'textbox'),
(30, 6, 'label', 'Phone Number'),
(31, 6, 'key', 'phone_number_1530702766935'),
(32, 6, 'label_pos', 'default'),
(33, 6, 'required', ''),
(34, 6, 'default', ''),
(35, 6, 'placeholder', ''),
(36, 6, 'container_class', ''),
(37, 6, 'element_class', ''),
(38, 6, 'input_limit', ''),
(39, 6, 'input_limit_type', 'characters'),
(40, 6, 'input_limit_msg', 'Character(s) left'),
(41, 6, 'manual_key', ''),
(42, 6, 'admin_label', ''),
(43, 6, 'help_text', ''),
(44, 6, 'mask', ''),
(45, 6, 'custom_mask', ''),
(46, 6, 'custom_name_attribute', ''),
(47, 6, 'personally_identifiable', ''),
(48, 6, 'drawerDisabled', ''),
(49, 7, 'objectType', 'Field'),
(50, 7, 'objectDomain', 'fields'),
(51, 7, 'editActive', ''),
(52, 7, 'order', '3'),
(53, 7, 'type', 'textbox'),
(54, 7, 'label', 'Address'),
(55, 7, 'key', 'address_1530702779486'),
(56, 7, 'label_pos', 'default'),
(57, 7, 'required', ''),
(58, 7, 'default', ''),
(59, 7, 'placeholder', ''),
(60, 7, 'container_class', ''),
(61, 7, 'element_class', ''),
(62, 7, 'input_limit', ''),
(63, 7, 'input_limit_type', 'characters'),
(64, 7, 'input_limit_msg', 'Character(s) left'),
(65, 7, 'manual_key', ''),
(66, 7, 'admin_label', ''),
(67, 7, 'help_text', ''),
(68, 7, 'mask', ''),
(69, 7, 'custom_mask', ''),
(70, 7, 'custom_name_attribute', ''),
(71, 7, 'personally_identifiable', ''),
(72, 7, 'drawerDisabled', ''),
(73, 8, 'objectType', 'Field'),
(74, 8, 'objectDomain', 'fields'),
(75, 8, 'editActive', ''),
(76, 8, 'order', '5'),
(77, 8, 'type', 'email'),
(78, 8, 'label', 'Email'),
(79, 8, 'key', 'email_1530702713273'),
(80, 8, 'label_pos', 'default'),
(81, 8, 'required', ''),
(82, 8, 'default', ''),
(83, 8, 'placeholder', ''),
(84, 8, 'container_class', ''),
(85, 8, 'element_class', ''),
(86, 8, 'admin_label', ''),
(87, 8, 'help_text', ''),
(88, 8, 'custom_name_attribute', 'email'),
(89, 8, 'personally_identifiable', '1'),
(90, 8, 'drawerDisabled', ''),
(91, 9, 'objectType', 'Field'),
(92, 9, 'objectDomain', 'fields'),
(93, 9, 'editActive', ''),
(94, 9, 'order', '6'),
(95, 9, 'type', 'hidden'),
(96, 9, 'label', 'URL'),
(97, 9, 'key', 'url_1530702812076'),
(98, 9, 'default', ''),
(99, 9, 'admin_label', ''),
(100, 9, 'drawerDisabled', ''),
(101, 10, 'objectType', 'Field'),
(102, 10, 'objectDomain', 'fields'),
(103, 10, 'editActive', ''),
(104, 10, 'order', '7'),
(105, 10, 'type', 'hidden'),
(106, 10, 'label', 'Title'),
(107, 10, 'key', 'title_1530702819003'),
(108, 10, 'default', ''),
(109, 10, 'admin_label', ''),
(110, 10, 'drawerDisabled', ''),
(111, 11, 'objectType', 'Field'),
(112, 11, 'objectDomain', 'fields'),
(113, 11, 'editActive', ''),
(114, 11, 'order', '9999'),
(115, 11, 'type', 'submit'),
(116, 11, 'label', 'Submit'),
(117, 11, 'processing_label', 'Processing'),
(118, 11, 'container_class', ''),
(119, 11, 'element_class', ''),
(120, 11, 'key', 'submit_1530702840505');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`) VALUES
(1, 'Contact Me', '', '2018-07-04 04:09:12', '2018-07-04 11:09:12', NULL, NULL),
(2, 'Order', '', '2018-07-04 11:14:01', '2018-07-04 11:14:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'default_label_pos', 'above'),
(2, 1, 'conditions', 'a:0:{}'),
(3, 1, 'objectType', 'Form Setting'),
(4, 1, 'editActive', ''),
(5, 1, 'show_title', '1'),
(6, 1, 'clear_complete', '1'),
(7, 1, 'hide_complete', '1'),
(8, 1, 'wrapper_class', ''),
(9, 1, 'element_class', ''),
(10, 1, 'add_submit', '1'),
(11, 1, 'logged_in', ''),
(12, 1, 'not_logged_in_msg', ''),
(13, 1, 'sub_limit_number', ''),
(14, 1, 'sub_limit_msg', ''),
(15, 1, 'calculations', 'a:0:{}'),
(16, 1, 'formContentData', 'a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}'),
(17, 1, 'container_styles_background-color', ''),
(18, 1, 'container_styles_border', ''),
(19, 1, 'container_styles_border-style', ''),
(20, 1, 'container_styles_border-color', ''),
(21, 1, 'container_styles_color', ''),
(22, 1, 'container_styles_height', ''),
(23, 1, 'container_styles_width', ''),
(24, 1, 'container_styles_font-size', ''),
(25, 1, 'container_styles_margin', ''),
(26, 1, 'container_styles_padding', ''),
(27, 1, 'container_styles_display', ''),
(28, 1, 'container_styles_float', ''),
(29, 1, 'container_styles_show_advanced_css', '0'),
(30, 1, 'container_styles_advanced', ''),
(31, 1, 'title_styles_background-color', ''),
(32, 1, 'title_styles_border', ''),
(33, 1, 'title_styles_border-style', ''),
(34, 1, 'title_styles_border-color', ''),
(35, 1, 'title_styles_color', ''),
(36, 1, 'title_styles_height', ''),
(37, 1, 'title_styles_width', ''),
(38, 1, 'title_styles_font-size', ''),
(39, 1, 'title_styles_margin', ''),
(40, 1, 'title_styles_padding', ''),
(41, 1, 'title_styles_display', ''),
(42, 1, 'title_styles_float', ''),
(43, 1, 'title_styles_show_advanced_css', '0'),
(44, 1, 'title_styles_advanced', ''),
(45, 1, 'row_styles_background-color', ''),
(46, 1, 'row_styles_border', ''),
(47, 1, 'row_styles_border-style', ''),
(48, 1, 'row_styles_border-color', ''),
(49, 1, 'row_styles_color', ''),
(50, 1, 'row_styles_height', ''),
(51, 1, 'row_styles_width', ''),
(52, 1, 'row_styles_font-size', ''),
(53, 1, 'row_styles_margin', ''),
(54, 1, 'row_styles_padding', ''),
(55, 1, 'row_styles_display', ''),
(56, 1, 'row_styles_show_advanced_css', '0'),
(57, 1, 'row_styles_advanced', ''),
(58, 1, 'row-odd_styles_background-color', ''),
(59, 1, 'row-odd_styles_border', ''),
(60, 1, 'row-odd_styles_border-style', ''),
(61, 1, 'row-odd_styles_border-color', ''),
(62, 1, 'row-odd_styles_color', ''),
(63, 1, 'row-odd_styles_height', ''),
(64, 1, 'row-odd_styles_width', ''),
(65, 1, 'row-odd_styles_font-size', ''),
(66, 1, 'row-odd_styles_margin', ''),
(67, 1, 'row-odd_styles_padding', ''),
(68, 1, 'row-odd_styles_display', ''),
(69, 1, 'row-odd_styles_show_advanced_css', '0'),
(70, 1, 'row-odd_styles_advanced', ''),
(71, 1, 'success-msg_styles_background-color', ''),
(72, 1, 'success-msg_styles_border', ''),
(73, 1, 'success-msg_styles_border-style', ''),
(74, 1, 'success-msg_styles_border-color', ''),
(75, 1, 'success-msg_styles_color', ''),
(76, 1, 'success-msg_styles_height', ''),
(77, 1, 'success-msg_styles_width', ''),
(78, 1, 'success-msg_styles_font-size', ''),
(79, 1, 'success-msg_styles_margin', ''),
(80, 1, 'success-msg_styles_padding', ''),
(81, 1, 'success-msg_styles_display', ''),
(82, 1, 'success-msg_styles_show_advanced_css', '0'),
(83, 1, 'success-msg_styles_advanced', ''),
(84, 1, 'error_msg_styles_background-color', ''),
(85, 1, 'error_msg_styles_border', ''),
(86, 1, 'error_msg_styles_border-style', ''),
(87, 1, 'error_msg_styles_border-color', ''),
(88, 1, 'error_msg_styles_color', ''),
(89, 1, 'error_msg_styles_height', ''),
(90, 1, 'error_msg_styles_width', ''),
(91, 1, 'error_msg_styles_font-size', ''),
(92, 1, 'error_msg_styles_margin', ''),
(93, 1, 'error_msg_styles_padding', ''),
(94, 1, 'error_msg_styles_display', ''),
(95, 1, 'error_msg_styles_show_advanced_css', '0'),
(96, 1, 'error_msg_styles_advanced', ''),
(97, 2, 'objectType', 'Form Setting'),
(98, 2, 'editActive', ''),
(99, 2, 'show_title', '1'),
(100, 2, 'clear_complete', '1'),
(101, 2, 'hide_complete', '1'),
(102, 2, 'default_label_pos', 'above'),
(103, 2, 'wrapper_class', ''),
(104, 2, 'element_class', ''),
(105, 2, 'add_submit', '1'),
(106, 2, 'currency', ''),
(107, 2, 'unique_field_error', 'A form with this value has already been submitted.'),
(108, 2, 'logged_in', ''),
(109, 2, 'not_logged_in_msg', ''),
(110, 2, 'sub_limit_msg', 'The form has reached its submission limit.'),
(111, 2, 'calculations', 'a:0:{}'),
(112, 2, 'formContentData', 'a:7:{i:0;s:23:\"full_name_1530702754570\";i:1;s:26:\"phone_number_1530702766935\";i:2;s:21:\"address_1530702779486\";i:3;s:19:\"email_1530702713273\";i:4;s:17:\"url_1530702812076\";i:5;s:19:\"title_1530702819003\";i:6;s:20:\"submit_1530702840505\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext,
  `title` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_upgrades`
--

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext,
  `stage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_upgrades`
--

INSERT INTO `wp_nf3_upgrades` (`id`, `cache`, `stage`) VALUES
(1, 'a:4:{s:2:\"id\";i:1;s:6:\"fields\";a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:12\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:12\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:12\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:12\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}s:7:\"actions\";a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:25:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:13\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:0:\"\";s:13:\"email_subject\";s:0:\"\";s:13:\"email_message\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:26:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:13\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:24:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:13\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:60:\"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:27:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:13\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:0:\"\";s:13:\"email_subject\";s:0:\"\";s:13:\"email_message\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";}}}s:8:\"settings\";a:99:{s:5:\"title\";s:10:\"Contact Me\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:12\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";}}', 0),
(2, 'a:7:{s:2:\"id\";i:2;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:7:{i:0;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:4:\"type\";s:7:\"textbox\";s:5:\"label\";s:9:\"Full Name\";s:3:\"key\";s:23:\"full_name_1530702754570\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"5\";}i:1;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:4:\"type\";s:7:\"textbox\";s:5:\"label\";s:12:\"Phone Number\";s:3:\"key\";s:26:\"phone_number_1530702766935\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"6\";}i:2;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:4:\"type\";s:7:\"textbox\";s:5:\"label\";s:7:\"Address\";s:3:\"key\";s:21:\"address_1530702779486\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"7\";}i:3;a:2:{s:8:\"settings\";a:18:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:5;s:4:\"type\";s:5:\"email\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:19:\"email_1530702713273\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"8\";}i:4;a:2:{s:8:\"settings\";a:10:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:6;s:4:\"type\";s:6:\"hidden\";s:5:\"label\";s:3:\"URL\";s:3:\"key\";s:17:\"url_1530702812076\";s:7:\"default\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"9\";}i:5;a:2:{s:8:\"settings\";a:10:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:7;s:4:\"type\";s:6:\"hidden\";s:5:\"label\";s:5:\"Title\";s:3:\"key\";s:19:\"title_1530702819003\";s:7:\"default\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:2:\"10\";}i:6;a:2:{s:8:\"settings\";a:10:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:9999;s:4:\"type\";s:6:\"submit\";s:5:\"label\";s:6:\"Submit\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:20:\"submit_1530702840505\";}s:2:\"id\";s:2:\"11\";}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:29:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-04 18:14:01\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:42:\"Your form has been successfully submitted.\";s:5:\"order\";s:1:\"1\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";}s:2:\"id\";i:5;}i:1;a:2:{s:8:\"settings\";a:22:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-04 18:14:01\";s:5:\"label\";s:11:\"Admin Email\";s:5:\"order\";s:1:\"2\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";}s:2:\"id\";i:6;}i:2;a:2:{s:8:\"settings\";a:28:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-04 18:14:01\";s:5:\"label\";s:16:\"Store Submission\";s:5:\"order\";s:1:\"3\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:19:\"email_1530702713273\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:7;}i:3;a:2:{s:8:\"settings\";a:22:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-04 18:19:17\";s:5:\"label\";s:14:\"Announce Admin\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:26:\"inter-03@vn.devinition.com\";s:8:\"reply_to\";s:26:\"luongkhanhvu1392@gmail.com\";s:13:\"email_subject\";s:13:\"Order Product\";s:13:\"email_message\";s:24:\"[ninja_forms_all_fields]\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:8;}}s:8:\"settings\";a:18:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:0;s:5:\"title\";s:5:\"Order\";s:10:\"show_title\";i:1;s:14:\"clear_complete\";i:1;s:13:\"hide_complete\";i:1;s:17:\"default_label_pos\";s:5:\"above\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:0:\"\";s:10:\"add_submit\";i:1;s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:9:\"logged_in\";b:0;s:17:\"not_logged_in_msg\";s:0:\"\";s:13:\"sub_limit_msg\";s:42:\"The form has reached its submission limit.\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:7:{i:0;s:23:\"full_name_1530702754570\";i:1;s:26:\"phone_number_1530702766935\";i:2;s:21:\"address_1530702779486\";i:3;s:19:\"email_1530702713273\";i:4;s:17:\"url_1530702812076\";i:5;s:19:\"title_1530702819003\";i:6;s:20:\"submit_1530702840505\";}}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/wordpress/wordpress_1', 'yes'),
(2, 'home', 'http://localhost:8080/wordpress/wordpress_1', 'yes'),
(3, 'blogname', 'Testing_Website', 'yes'),
(4, 'blogdescription', 'It is the first website that use wordpress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'intern-03@vn.devinition.com', 'yes'),
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
(18, 'default_category', '12', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:45:\"debug-bar-post-types/debug-bar-post-types.php\";i:4;s:23:\"debug-bar/debug-bar.php\";i:5;s:27:\"ninja-forms/ninja-forms.php\";i:6;s:19:\"piklist/piklist.php\";i:7;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:8;s:27:\"woocommerce/woocommerce.php\";i:9;s:41:\"wordpress-importer/wordpress-importer.php\";i:10;s:21:\"wp-learn/myplugin.php\";i:11;s:19:\"wp-smtp/wp-smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:80:\"C:\\xampp\\htdocs\\wordpress\\wordpress_1/wp-content/themes/learnWordPress/style.css\";i:2;s:80:\"C:\\xampp\\htdocs\\wordpress\\wordpress_1/wp-content/themes/learnWordPress/index.php\";i:3;s:79:\"C:\\xampp\\htdocs\\wordpress\\wordpress_1/wp-content/themes/twentyfifteen/style.css\";i:4;s:76:\"C:\\xampp\\htdocs\\wordpress\\wordpress_1/wp-content/plugins/akismet/akismet.php\";i:5;s:0:\"\";}', 'no'),
(40, 'template', 'template_demo', 'yes'),
(41, 'stylesheet', 'template_demo', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '217', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:12:{i:1531381381;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1531381410;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531382021;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1531388011;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531398811;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1531440000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531454533;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531463611;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1531463621;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533433945;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}i:1533600000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530602761;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'template_demo', 'yes'),
(139, 'theme_mods_website_one', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:14;s:16:\"header_textcolor\";s:6:\"dd3333\";s:16:\"background_color\";s:6:\"e0e0e0\";s:12:\"header_image\";s:105:\"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/06/6_type-name-and-generate-theme.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:6;s:3:\"url\";s:105:\"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/06/6_type-name-and-generate-theme.png\";s:13:\"thumbnail_url\";s:105:\"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/06/6_type-name-and-generate-theme.png\";s:6:\"height\";i:218;s:5:\"width\";i:775;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530593019;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(147, 'recently_activated', 'a:7:{s:47:\"acf-ninjaforms-add-on/acf-ninjaforms-add-on.php\";i:1530702239;s:21:\"polylang/polylang.php\";i:1530694082;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:1530673770;s:9:\"hello.php\";i:1530524905;s:31:\"read-me-later/read-me-later.php\";i:1530524891;s:24:\"wp-learn/usef-widget.php\";i:1530524885;s:21:\"wp-learn/wp-learn.php\";i:1530240195;}', 'yes'),
(159, 'mailer_gmail_username', 'thehalfheart@gmail.com', 'yes'),
(160, 'mailer_gmail_password', '@password', 'yes'),
(183, 'widget_thachpham_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(210, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530497182;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(212, '_transient_twentysixteen_categories', '1', 'yes'),
(242, 'acf_version', '4.4.12', 'yes'),
(247, 'cptui_new_install', 'false', 'yes'),
(266, 'theme_mods_website_two', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530602694;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(267, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(274, 'cptui_post_types', 'a:1:{s:6:\"member\";a:28:{s:4:\"name\";s:6:\"member\";s:5:\"label\";s:7:\"member1\";s:14:\"singular_label\";s:7:\"member2\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(286, 'polylang', 'a:12:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"2.3.7\";}', 'yes'),
(287, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(288, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(348, 'theme_mods_twentyfifteen', 'a:5:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:12:\"header_image\";s:91:\"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/cropped-slide3-1.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:67;s:3:\"url\";s:91:\"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/cropped-slide3-1.jpg\";s:13:\"thumbnail_url\";s:91:\"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/cropped-slide3-1.jpg\";s:6:\"height\";i:1300;s:5:\"width\";i:954;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530590817;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(352, 'WPLANG', '', 'yes'),
(353, 'new_admin_email', 'intern-03@vn.devinition.com', 'yes'),
(373, 'theme_mods_template_demo', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530698521;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(386, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1530605540;s:7:\"version\";s:5:\"5.0.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(395, 'piklist_active_plugin_versions', 'a:1:{s:19:\"piklist/piklist.php\";a:1:{i:0;s:6:\"0.11.4\";}}', 'yes'),
(396, 'piklist_taxonomy_rules_flushed', '40cd750bba9870f18aada2478b24840a', 'yes'),
(397, 'piklist_post_type_rules_flushed', '40cd750bba9870f18aada2478b24840a', 'yes'),
(407, 'woocommerce_store_address', 'hcminh', 'yes'),
(408, 'woocommerce_store_address_2', '', 'yes'),
(409, 'woocommerce_store_city', 'hcm', 'yes'),
(410, 'woocommerce_default_country', 'VN', 'yes'),
(411, 'woocommerce_store_postcode', '7000', 'yes'),
(412, 'woocommerce_allowed_countries', 'all', 'yes'),
(413, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(414, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(415, 'woocommerce_ship_to_countries', '', 'yes'),
(416, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(417, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(418, 'woocommerce_calc_taxes', 'no', 'yes'),
(419, 'woocommerce_enable_coupons', 'yes', 'yes'),
(420, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(421, 'woocommerce_currency', 'VND', 'yes'),
(422, 'woocommerce_currency_pos', 'left', 'yes'),
(423, 'woocommerce_price_thousand_sep', ',', 'yes'),
(424, 'woocommerce_price_decimal_sep', '.', 'yes'),
(425, 'woocommerce_price_num_decimals', '0', 'yes'),
(426, 'woocommerce_shop_page_id', '80', 'yes'),
(427, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(428, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(429, 'woocommerce_weight_unit', 'kg', 'yes'),
(430, 'woocommerce_dimension_unit', 'cm', 'yes'),
(431, 'woocommerce_enable_reviews', 'yes', 'yes'),
(432, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(433, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(434, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(435, 'woocommerce_review_rating_required', 'yes', 'no'),
(436, 'woocommerce_manage_stock', 'yes', 'yes'),
(437, 'woocommerce_hold_stock_minutes', '60', 'no'),
(438, 'woocommerce_notify_low_stock', 'yes', 'no'),
(439, 'woocommerce_notify_no_stock', 'yes', 'no'),
(440, 'woocommerce_stock_email_recipient', 'intern-03@vn.devinition.com', 'no'),
(441, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(442, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(443, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(444, 'woocommerce_stock_format', '', 'yes'),
(445, 'woocommerce_file_download_method', 'force', 'no'),
(446, 'woocommerce_downloads_require_login', 'no', 'no'),
(447, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(448, 'woocommerce_prices_include_tax', 'no', 'yes'),
(449, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(450, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(451, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(452, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(453, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(454, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(455, 'woocommerce_price_display_suffix', '', 'yes'),
(456, 'woocommerce_tax_total_display', 'itemized', 'no'),
(457, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(458, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(459, 'woocommerce_ship_to_destination', 'billing', 'no'),
(460, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(461, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(462, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(463, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(464, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(465, 'woocommerce_registration_generate_username', 'yes', 'no'),
(466, 'woocommerce_registration_generate_password', 'yes', 'no'),
(467, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(468, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(469, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(470, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(471, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(472, 'woocommerce_trash_pending_orders', '', 'no'),
(473, 'woocommerce_trash_failed_orders', '', 'no'),
(474, 'woocommerce_trash_cancelled_orders', '', 'no'),
(475, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(476, 'woocommerce_email_from_name', 'Testing_Website', 'no'),
(477, 'woocommerce_email_from_address', 'intern-03@vn.devinition.com', 'no'),
(478, 'woocommerce_email_header_image', '', 'no'),
(479, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(480, 'woocommerce_email_base_color', '#96588a', 'no'),
(481, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(482, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(483, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(484, 'woocommerce_cart_page_id', '81', 'yes'),
(485, 'woocommerce_checkout_page_id', '82', 'yes'),
(486, 'woocommerce_myaccount_page_id', '83', 'yes'),
(487, 'woocommerce_terms_page_id', '', 'no'),
(488, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(489, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(490, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(491, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(492, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(493, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(494, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(495, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(496, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(497, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(498, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(499, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(500, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(501, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(502, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(503, 'woocommerce_api_enabled', 'no', 'yes'),
(504, 'woocommerce_single_image_width', '600', 'yes'),
(505, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(506, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(507, 'woocommerce_demo_store', 'no', 'no'),
(508, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(509, 'current_theme_supports_woocommerce', 'no', 'yes'),
(510, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(513, 'default_product_cat', '26', 'yes'),
(518, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(519, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(520, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(521, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(522, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(523, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(524, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(525, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(526, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(527, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(528, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(529, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(530, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(531, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(535, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(541, 'woocommerce_product_type', 'both', 'yes'),
(542, 'woocommerce_sell_in_person', '1', 'yes'),
(543, 'woocommerce_allow_tracking', 'yes', 'yes'),
(545, 'woocommerce_tracker_last_send', '1531290827', 'yes'),
(546, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(547, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(548, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(549, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(551, '_transient_shipping-transient-version', '1530615075', 'yes'),
(557, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(564, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530843610;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(565, 'woocommerce_admin_notice_jetpack_install_error', 'Jetpack could not be installed (Could not copy file.). <a href=\"http://localhost:8080/wordpress/wordpress_1/wp-admin/index.php?wc-install-plugin-redirect=jetpack\">Please install it manually by clicking here.</a>', 'yes'),
(566, 'mailchimp_woocommerce_version', '2.1.6', 'no'),
(567, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(569, 'mailchimp-woocommerce-store_id', '5b3b553f4ae52', 'yes'),
(571, 'woocommerce_catalog_rows', '4', 'yes'),
(572, 'woocommerce_catalog_columns', '3', 'yes'),
(573, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(575, 'storefront_nux_fresh_site', '0', 'yes'),
(576, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(602, 'storefront_nux_dismissed', '1', 'yes'),
(603, 'storefront_nux_guided_tour', '1', 'yes'),
(605, '_transient_product_query-transient-version', '1531298928', 'yes'),
(610, '_transient_product-transient-version', '1530783777', 'yes'),
(634, '_transient_timeout_wc_product_loop56bf1530615331', '1533207373', 'no'),
(635, '_transient_wc_product_loop56bf1530615331', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:113;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(636, '_transient_timeout_wc_product_loop6c431530615331', '1533207373', 'no'),
(637, '_transient_wc_product_loop6c431530615331', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(638, '_transient_timeout_wc_product_loopfe2c1530615331', '1533207373', 'no'),
(639, '_transient_wc_product_loopfe2c1530615331', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:113;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(642, '_transient_timeout_wc_product_loop53131530615331', '1533207373', 'no'),
(643, '_transient_wc_product_loop53131530615331', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:113;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(644, '_transient_timeout_wc_product_loop76d31530615331', '1533207374', 'no'),
(645, '_transient_wc_product_loop76d31530615331', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:113;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(652, 'woocommerce_tracker_ua', 'a:1:{i:0;s:114:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36\";}', 'yes'),
(709, 'cptui_taxonomies', 'a:1:{s:15:\"member_taxonomy\";a:21:{s:4:\"name\";s:15:\"member_taxonomy\";s:5:\"label\";s:16:\"member_taxonomy1\";s:14:\"singular_label\";s:15:\"member_taxonom2\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:6:\"member\";}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(723, 'rewrite_rules', 'a:196:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"nf_sub/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"nf_sub/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"nf_sub/([^/]+)/embed/?$\";s:39:\"index.php?nf_sub=$matches[1]&embed=true\";s:27:\"nf_sub/([^/]+)/trackback/?$\";s:33:\"index.php?nf_sub=$matches[1]&tb=1\";s:35:\"nf_sub/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&paged=$matches[2]\";s:42:\"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?nf_sub=$matches[1]&cpage=$matches[2]\";s:32:\"nf_sub/([^/]+)/wc-api(/(.*))?/?$\";s:47:\"index.php?nf_sub=$matches[1]&wc-api=$matches[3]\";s:38:\"nf_sub/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"nf_sub/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"nf_sub/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?nf_sub=$matches[1]&page=$matches[2]\";s:23:\"nf_sub/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"nf_sub/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"nf_sub/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"member_taxonomy/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?member_taxonomy=$matches[1]&feed=$matches[2]\";s:51:\"member_taxonomy/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?member_taxonomy=$matches[1]&feed=$matches[2]\";s:32:\"member_taxonomy/([^/]+)/embed/?$\";s:48:\"index.php?member_taxonomy=$matches[1]&embed=true\";s:44:\"member_taxonomy/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?member_taxonomy=$matches[1]&paged=$matches[2]\";s:26:\"member_taxonomy/([^/]+)/?$\";s:37:\"index.php?member_taxonomy=$matches[1]\";s:34:\"member/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"member/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"member/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"member/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"member/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"member/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"member/([^/]+)/embed/?$\";s:39:\"index.php?member=$matches[1]&embed=true\";s:27:\"member/([^/]+)/trackback/?$\";s:33:\"index.php?member=$matches[1]&tb=1\";s:35:\"member/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?member=$matches[1]&paged=$matches[2]\";s:42:\"member/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?member=$matches[1]&cpage=$matches[2]\";s:32:\"member/([^/]+)/wc-api(/(.*))?/?$\";s:47:\"index.php?member=$matches[1]&wc-api=$matches[3]\";s:38:\"member/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"member/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"member/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?member=$matches[1]&page=$matches[2]\";s:23:\"member/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"member/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"member/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"member/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"member/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"member/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=217&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(733, 'theme_mods_sparkling', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530758883;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:15:\"footer-widget-3\";a:0:{}}}}', 'yes'),
(734, 'widget_sparkling-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(735, 'widget_sparkling_popular_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(736, 'widget_sparkling-cats', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(739, 'theme_mods_sparkling-child', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530771850;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:15:\"footer-widget-3\";a:0:{}}}}', 'yes'),
(744, 'piklist_post_meta_keys', 'a:1:{i:0;s:13:\"sanpham_price\";}', 'yes'),
(791, 'ninja_forms_oauth_client_secret', 'oRrwJIqJzmWkwfLbWeFEJAx9mLoRmlgcPAwhXjy9', 'yes'),
(792, 'ninja_forms_data_is_clean', 'true', 'yes'),
(793, 'ninja_forms_version', '3.3.8', 'yes'),
(794, 'ninja_forms_db_version', '1.0', 'no'),
(795, 'ninja_forms_settings', 'a:7:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;}', 'yes'),
(796, 'wp_nf_update_fields_batch_b208b12d4a9a535767c991ccdd21a0b7', 'a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:12\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:12\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:12\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-07-04 11:09:12\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}', 'no'),
(798, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(799, 'nf_admin_notice', 'a:1:{s:16:\"one_week_support\";a:3:{s:5:\"start\";s:9:\"7/11/2018\";s:3:\"int\";i:7;s:9:\"dismissed\";i:1;}}', 'yes'),
(800, 'nf_form_tel_data', '1', 'no'),
(801, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(802, 'ninja_forms_optin_reported', '1', 'yes'),
(803, 'nf_form_tel_sent', 'true', 'no'),
(804, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(831, 'wp_smtp_options', 'a:9:{s:4:\"from\";s:26:\"luongkhanhvu1392@gmail.com\";s:8:\"fromname\";s:4:\"usef\";s:4:\"host\";s:14:\"smtp.gmail.com\";s:10:\"smtpsecure\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:8:\"smtpauth\";s:3:\"yes\";s:8:\"username\";s:26:\"luongkhanhvu1392@gmail.com\";s:8:\"password\";s:16:\"uelacappvirgplqr\";s:10:\"deactivate\";s:0:\"\";}', 'yes'),
(883, 'woocommerce_version', '3.4.3', 'yes'),
(884, 'woocommerce_db_version', '3.4.3', 'yes'),
(906, '_transient_timeout_wc_shipping_method_count_1_1530615075', '1533364817', 'no'),
(907, '_transient_wc_shipping_method_count_1_1530615075', '2', 'no'),
(912, '_transient_timeout_wc_product_loop6adf1530772781', '1533364831', 'no'),
(913, '_transient_wc_product_loop6adf1530772781', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:147;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(914, '_transient_timeout_wc_product_loopef571530772781', '1533364832', 'no'),
(915, '_transient_wc_product_loopef571530772781', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:145;i:1;i:147;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(917, '_transient_timeout_wc_shipping_method_count_0_1530615075', '1533365018', 'no'),
(918, '_transient_wc_shipping_method_count_0_1530615075', '2', 'no'),
(947, 'product_cat_children', 'a:1:{i:37;a:3:{i:0;i:38;i:1;i:39;i:2;i:40;}}', 'yes'),
(949, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(988, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:3;s:3:\"all\";i:3;s:8:\"approved\";s:1:\"3\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(990, '_transient_timeout_wc_product_children_154', '1533375784', 'no'),
(991, '_transient_wc_product_children_154', 'a:2:{s:3:\"all\";a:4:{i:0;i:177;i:1;i:170;i:2;i:171;i:3;i:172;}s:7:\"visible\";a:4:{i:0;i:177;i:1;i:170;i:2;i:171;i:3;i:172;}}', 'no'),
(992, '_transient_timeout_wc_var_prices_154', '1533375784', 'no'),
(993, '_transient_wc_var_prices_154', '{\"version\":\"1530783777\",\"c9fa9c927f675baa2607a583bd814db6\":{\"price\":{\"177\":\"45\",\"170\":\"42\",\"171\":\"45\",\"172\":\"45\"},\"regular_price\":{\"177\":\"45\",\"170\":\"45\",\"171\":\"45\",\"172\":\"45\"},\"sale_price\":{\"177\":\"45\",\"170\":\"42\",\"171\":\"45\",\"172\":\"45\"}}}', 'no'),
(994, '_transient_timeout_wc_product_children_153', '1533375784', 'no'),
(995, '_transient_wc_product_children_153', 'a:2:{s:3:\"all\";a:3:{i:0;i:167;i:1;i:168;i:2;i:169;}s:7:\"visible\";a:3:{i:0;i:167;i:1;i:168;i:2;i:169;}}', 'no'),
(996, '_transient_timeout_wc_var_prices_153', '1533375784', 'no'),
(997, '_transient_wc_var_prices_153', '{\"version\":\"1530783777\",\"c9fa9c927f675baa2607a583bd814db6\":{\"price\":{\"167\":\"20\",\"168\":\"20\",\"169\":\"15\"},\"regular_price\":{\"167\":\"20\",\"168\":\"20\",\"169\":\"15\"},\"sale_price\":{\"167\":\"20\",\"168\":\"20\",\"169\":\"15\"}}}', 'no'),
(1010, '_transient_timeout_wc_low_stock_count', '1533377794', 'no'),
(1011, '_transient_wc_low_stock_count', '0', 'no'),
(1012, '_transient_timeout_wc_outofstock_count', '1533377794', 'no'),
(1013, '_transient_wc_outofstock_count', '0', 'no'),
(1051, '_transient_timeout_wc_product_loop1c101530783777', '1533435607', 'no'),
(1052, '_transient_wc_product_loop1c101530783777', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:162;i:1;i:160;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(1055, '_transient_timeout_wc_product_loopef571530783777', '1533435607', 'no'),
(1056, '_transient_wc_product_loopef571530783777', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:145;i:1;i:165;i:2;i:147;i:3;i:166;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(1058, 'theme_mods_learnWordPress', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:53;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531214093;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(1167, '_site_transient_timeout_browser_a54eb83090ed984332f4eca22d3ec5e4', '1531451910', 'no'),
(1168, '_site_transient_browser_a54eb83090ed984332f4eca22d3ec5e4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1178, 'category_children', 'a:0:{}', 'yes'),
(1240, '_transient_timeout_external_ip_address_::1', '1531824637', 'no'),
(1241, '_transient_external_ip_address_::1', '113.161.71.204', 'no'),
(1274, '_transient_timeout__woocommerce_helper_updates', '1531333998', 'no'),
(1275, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1531290798;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1292, '_site_transient_timeout_theme_roots', '1531366004', 'no'),
(1293, '_site_transient_theme_roots', 'a:9:{s:14:\"learnWordPress\";s:7:\"/themes\";s:15:\"sparkling-child\";s:7:\"/themes\";s:9:\"sparkling\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:19:\"template_demo-child\";s:7:\"/themes\";s:13:\"template_demo\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1295, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-6.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.6\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-6.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-rollback-6.zip\";}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.6\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1531364209;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(1296, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1531364211;s:7:\"checked\";a:9:{s:14:\"learnWordPress\";s:3:\"1.0\";s:15:\"sparkling-child\";s:0:\"\";s:9:\"sparkling\";s:5:\"2.4.4\";s:10:\"storefront\";s:5:\"2.3.2\";s:19:\"template_demo-child\";s:0:\"\";s:13:\"template_demo\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1297, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1531364213;s:7:\"checked\";a:19:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:23:\"debug-bar/debug-bar.php\";s:3:\"0.9\";s:45:\"debug-bar-post-types/debug-bar-post-types.php\";s:5:\"2.0.0\";s:9:\"hello.php\";s:3:\"1.7\";s:21:\"wp-learn/wp-learn.php\";s:3:\"1.0\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.1.8\";s:21:\"wp-learn/myplugin.php\";s:3:\"1.0\";s:27:\"ninja-forms/ninja-forms.php\";s:5:\"3.3.8\";s:39:\"ninja-forms-modal/ninja-forms-modal.php\";s:5:\"1.0.2\";s:19:\"piklist/piklist.php\";s:6:\"0.11.4\";s:21:\"polylang/polylang.php\";s:5:\"2.3.7\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.0.2\";s:24:\"wp-learn/usef-widget.php\";s:3:\"1.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.3\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";s:19:\"wp-smtp/wp-smtp.php\";s:5:\"1.1.9\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:5:\"3.3.9\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/ninja-forms.3.3.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=1649747\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=1649747\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:18:\"wordpress-importer\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"0.6.4\";s:7:\"updated\";s:19:\"2015-08-01 21:44:03\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/translation/plugin/wordpress-importer/0.6.4/zh_CN.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:14:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"debug-bar/debug-bar.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/debug-bar\";s:4:\"slug\";s:9:\"debug-bar\";s:6:\"plugin\";s:23:\"debug-bar/debug-bar.php\";s:11:\"new_version\";s:3:\"0.9\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/debug-bar/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/debug-bar.0.9.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:60:\"https://s.w.org/plugins/geopattern-icon/debug-bar_f1f1f1.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/debug-bar/assets/banner-1544x500.png?rev=1365496\";s:2:\"1x\";s:64:\"https://ps.w.org/debug-bar/assets/banner-772x250.png?rev=1365496\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"debug-bar-post-types/debug-bar-post-types.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/debug-bar-post-types\";s:4:\"slug\";s:20:\"debug-bar-post-types\";s:6:\"plugin\";s:45:\"debug-bar-post-types/debug-bar-post-types.php\";s:11:\"new_version\";s:5:\"2.0.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/debug-bar-post-types/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/debug-bar-post-types.2.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/debug-bar-post-types/assets/icon-256x256.png?rev=981219\";s:2:\"1x\";s:72:\"https://ps.w.org/debug-bar-post-types/assets/icon-128x128.png?rev=981219\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/debug-bar-post-types/assets/banner-772x250.png?rev=813104\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.1.8\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1557817\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1557817\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"ninja-forms-modal/ninja-forms-modal.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/ninja-forms-modal\";s:4:\"slug\";s:17:\"ninja-forms-modal\";s:6:\"plugin\";s:39:\"ninja-forms-modal/ninja-forms-modal.php\";s:11:\"new_version\";s:5:\"1.0.2\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/ninja-forms-modal/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/ninja-forms-modal.1.0.2.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:68:\"https://s.w.org/plugins/geopattern-icon/ninja-forms-modal_7f3923.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/ninja-forms-modal/assets/banner-772x250.png?rev=807055\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"piklist/piklist.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/piklist\";s:4:\"slug\";s:7:\"piklist\";s:6:\"plugin\";s:19:\"piklist/piklist.php\";s:11:\"new_version\";s:6:\"0.11.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/piklist/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/piklist.0.11.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/piklist/assets/icon-256x256.png?rev=972512\";s:2:\"1x\";s:59:\"https://ps.w.org/piklist/assets/icon-128x128.png?rev=972512\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/piklist/assets/banner-1544x500.png?rev=854080\";s:2:\"1x\";s:61:\"https://ps.w.org/piklist/assets/banner-772x250.png?rev=854080\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"2.3.7\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.2.3.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:69:\"https://s.w.org/plugins/geopattern-icon/wordpress-importer_5696b3.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"wp-smtp/wp-smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/wp-smtp\";s:4:\"slug\";s:7:\"wp-smtp\";s:6:\"plugin\";s:19:\"wp-smtp/wp-smtp.php\";s:11:\"new_version\";s:5:\"1.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/wp-smtp/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/wp-smtp.1.1.9.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:51:\"https://s.w.org/plugins/geopattern-icon/wp-smtp.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1300, '_transient_timeout_wc_report_sales_by_date', '1531457634', 'no'),
(1301, '_transient_wc_report_sales_by_date', 'a:16:{s:32:\"8cc37105eddf15c6305830bab68e47bd\";a:0:{}s:32:\"36cf5f79103db5e38d4083ab86adf9c9\";a:0:{}s:32:\"f6768e30d9fb68d35110c10914f5efe2\";a:0:{}s:32:\"d7b9d9fda4e8478f6299836b6b664cb0\";N;s:32:\"f83a5868902989b135eb36d4f1012f84\";a:0:{}s:32:\"7edcbff92ff49c771b67ff7fa2a7061e\";a:0:{}s:32:\"c02518a4ee1ef7c6941e82a52a66767b\";a:0:{}s:32:\"ed14cad3f176e0d951e2dbcf97dd6e10\";a:0:{}s:32:\"0b047aeb424c91f9aa71f597d9c35375\";a:0:{}s:32:\"8fea060f885dae859f3a938f21980076\";a:0:{}s:32:\"8e92eafa13a34a0992d1381e4cf63be2\";a:0:{}s:32:\"a1ea43252c8ccaaa0ef49d569e3b4521\";N;s:32:\"33041f576aede7326d01dc8d569d19ff\";a:0:{}s:32:\"73e4cb8fbb8c66f605ff302eabb2ba39\";a:0:{}s:32:\"4d62c115b16c2181577d7bb0788d011d\";a:0:{}s:32:\"40c1f0c2476d6dacf28c9fcab709ec20\";a:0:{}}', 'no'),
(1302, '_transient_timeout_wc_admin_report', '1531454422', 'no'),
(1303, '_transient_wc_admin_report', 'a:1:{s:32:\"600e2fd453c8e66d6b6f62007391cc4e\";a:0:{}}', 'no'),
(1304, '_site_transient_timeout_community-events-ffe9d354339be342ada1e9032d526207', '1531411225', 'no'),
(1305, '_site_transient_community-events-ffe9d354339be342ada1e9032d526207', 'a:2:{s:8:\"location\";a:3:{s:11:\"description\";s:6:\"Saigon\";s:8:\"latitude\";s:10:\"10.8230200\";s:9:\"longitude\";s:11:\"106.6296500\";}s:6:\"events\";a:0:{}}', 'no'),
(1306, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1531411227', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1307, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Fri, 06 Jul 2018 19:39:15 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43437\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Update on Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/news/2018/07/update-on-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Jul 2018 19:23:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:5:\"Focus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6118\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:328:\"Progress on the Gutenberg project, the new content creating experience coming to WordPress, has come a long way. Since the start of the project, there have been 30 releases and 12 of those happened after WordCamp US 2017. In total since then, there have been 1,764 issues opened and 1,115 closed as of WordCamp Europe. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Tammie Lister\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2261:\"<p>Progress on the Gutenberg project, the new content creating experience coming to WordPress, has come a long way. Since the start of the project, there have been 30 releases and 12 of those happened after WordCamp US 2017. In total since then, there have been 1,764 issues opened and 1,115 closed as of WordCamp Europe. As the work on phase one moves into its final stretch, here is what you can expect.<br /></p>\n\n<h4>In Progress</h4>\n\n<ul>\n	<li>Freeze new features in Gutenberg (the feature list can be found <a href=\"https://github.com/WordPress/gutenberg/issues/4894\">here</a>).</li>\n	<li>Hosts, agencies, teachers invited to opt-in sites they have influence over.</li>\n	<li>WordPress.com has opt-in for wp-admin users. The number of sites and posts will be tracked.</li>\n	<li>Mobile app support for Gutenberg will be across iOS and Android.</li>\n</ul>\n\n<h4>July</h4>\n\n<ul>\n	<li>4.9.x release with an invitation to install either Gutenberg or Classic Editor plugin.</li>\n	<li>WordPress.com will move to opt-out. There will be tracking to see who opts out and why.</li>\n	<li>Triage increases and bug gardening escalates to get blockers in Gutenberg down to zero.</li>\n	<li>Gutenberg phase two, Customization exploration begins by moving beyond the post.</li>\n</ul>\n\n<h4>August and beyond</h4>\n\n<ul>\n	<li>All critical issues within Gutenberg are resolved.</li>\n	<li>There is full integration with Calypso and there is opt-in for users there.</li>\n	<li>A goal will be 100k+ sites having made 250k+ posts using Gutenberg.</li>\n	<li>Core merge of Gutenberg begins the 5.0 release cycle.</li>\n	<li>5.0 moves into beta releases and translations are completed.</li>\n	<li>There will be a mobile version of Gutenberg by the end of the year.</li>\n</ul>\n\n<p>WordPress 5.0 could be as soon as August with hundreds of thousands of sites using Gutenberg before release. Learn more about Gutenberg <a href=\"https://wordpress.org/gutenberg/\">here</a>, take it for a <a href=\"https://testgutenberg.com/\">test drive</a>, <a href=\"https://wordpress.org/plugins/gutenberg/\">install</a> on your site, follow along on <a href=\"https://github.com/WordPress/gutenberg\">GitHub</a> and give your <a href=\"https://wordpressdotorg.polldaddy.com/s/gutenberg-support\">feedback</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6118\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 4.9.7 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 17:00:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6091\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"WordPress 4.9.7 is now available. This is a security and maintenance release for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately. WordPress versions 4.9.6 and earlier are affected by a media issue that could potentially allow a user with certain capabilities to attempt to delete files outside the uploads [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3984:\"<p>WordPress 4.9.7 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n<p>WordPress versions 4.9.6 and earlier are affected by a media issue that could potentially allow a user with certain capabilities to attempt to delete files outside the uploads directory.</p>\n\n<p>Thank you to <a href=\"https://hackerone.com/slavco\">Slavco</a> for reporting the original issue and <a href=\"https://www.wordfence.com/\">Matt Barry</a> for reporting related issues.</p>\n\n<p>Seventeen other bugs were fixed in WordPress 4.9.7. Particularly of note were:</p>\n\n<ul>\n	<li>Taxonomy: Improve cache handling for term queries.</li>\n	<li>Posts, Post Types: Clear post password cookie when logging out.</li>\n	<li>Widgets: Allow basic HTML tags in sidebar descriptions on Widgets admin screen.</li>\n	<li>Community Events Dashboard: Always show the nearest WordCamp if one is coming up, even if there are multiple Meetups happening first.</li>\n	<li>Privacy: Make sure default privacy policy content does not cause a fatal error when flushing rewrite rules outside of the admin context.</li>\n</ul>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.7</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n<p>The previously scheduled 4.9.7 is now referred to as 4.9.8, and will follow the <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">release schedule posted yesterday</a>.</p>\n\n<p>Thank you to everyone who contributed to WordPress 4.9.7:</p>\n\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a>, and <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6091\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"The Month in WordPress: June 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2018/07/the-month-in-wordpress-june-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Jul 2018 09:28:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6087\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:366:\"With one of the two flagship WordCamp events taking place this month, as well as some important WordPress project announcements, there’s no shortage of news. Learn more about what happened in the WordPress community in June. Another Successful WordCamp Europe On June 14th, WordCamp Europe kicked off three days of learning and contributions in Belgrade. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4627:\"<p>With one of the two flagship WordCamp events taking place this month, as well as some important WordPress project announcements, there’s no shortage of news. Learn more about what happened in the WordPress community in June.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Another Successful WordCamp Europe</h2>\n\n<p>On June 14th, WordCamp Europe kicked off three days of learning and contributions in Belgrade. Over 2,000 people attended in person, with hundreds more watching live streams of the sessions.</p>\n\n<p>The WordCamp was a great success with plenty of first-time attendees and new WordPress contributors getting involved in the project and community. Recorded sessions from the 65 speakers at the event will be available on WordPress.tv in the coming weeks. In the meantime, check out the <a href=\"https://www.flickr.com/photos/wceu/albums\">photos from the event</a>.</p>\n\n<p><a href=\"https://2018.europe.wordcamp.org/2018/06/16/wordcamp-europe-2019/\">The next WordCamp Europe</a> takes place on June 20-22 2019 in Berlin, Germany. If you’re based in Europe and would like to serve on the organizing team, <a href=\"https://2019.europe.wordcamp.org/2018/06/16/call-wordcamp-europe-2019-organizers/\">fill in the application form</a>.</p>\n\n<h2>Updated Roadmap for the New WordPress Content Editor</h2>\n\n<p>During his keynote session at WordCamp Europe, Matt Mullenweg presented <a href=\"https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/\">an updated roadmap</a> for <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a>, the new content editor coming in WordPress 5.0.</p>\n\n<p>While the editor is in rapid development, <a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\">with v3.1 being released this past month</a>, the team is aiming to ship Gutenberg with WordPress Core in August, 2018. This is not set in stone — the release date may shift as development progresses — but this gives the first realistic idea of when we can expect the editor to be released.</p>\n\n<p>If you would like to contribute to Gutenberg, read <a href=\"https://wordpress.org/gutenberg/handbook/\">the handbook</a>, follow the <a href=\"https://make.wordpress.org/core/\">Core team blog</a>, and join the #core-editor channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>WordCamp Incubator Cities Announced</h2>\n\n<p>The WordCamp Incubator program helps spread WordPress to underserved communities by providing organizing support for their first WordCamp. The first iteration of this program ran successfully in 2016 and empowered three cities to start their own WordPress communities.</p>\n\n<p>This year, the Community Team is running the Incubator program again. After receiving applications from 104 communities, <a href=\"https://make.wordpress.org/community/2018/06/26/wordcamp-incubator-program-2018-locations-announcement/\">they have selected</a> Montevideo, Uruguay and Kota Kinabalu, Malaysia to participate in the program. Both cities will receive direct help from experienced WordCamp organizers to run their first-ever WordCamp as a way to help their WordPress community get started.</p>\n\n<p>To find out more about the Incubator program follow the <a href=\"https://make.wordpress.org/community/\">Community team blog</a>, and join the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n	<li>The WordPress community of Spain recently <a href=\"https://twitter.com/wp_es/status/1004681694660603904\">received an award</a> for being the best open-source community in the country.</li>\n	<li>This month, WordPress reached <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">the milestone of powering 31% of websites</a>.</li>\n	<li><a href=\"https://wprig.io/introducing-wprig-wordpress/\">WP Rig</a> is a brand new tool to help WordPress developers build better themes.</li>\n	<li><a href=\"https://richtabor.com/gutenberg-block-unit-test/\">Block Unit Test</a> is a new plugin to help theme developers prepare for Gutenberg.</li>\n	<li>Near the end of the month, Zac Gordon hosted <a href=\"https://javascriptforwp.com/conference/\">an online conference</a> focused on JavaScript development in WordPress &#8211; the session videos will be available on YouTube soon.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6087\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"The Month in WordPress: May 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2018/06/the-month-in-wordpress-may-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Jun 2018 09:09:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6065\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"This month saw two significant milestones in the WordPress community — the 15th anniversary of the project, and GDPR-related privacy tools coming to WordPress Core. Read on to find out more about this and everything else that happened in the WordPress community in May. Local Communities Celebrate the 15th Anniversary of WordPress Last Sunday, May [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4537:\"<p>This month saw two significant milestones in the WordPress community — the 15th anniversary of the project, and GDPR-related privacy tools coming to WordPress Core. Read on to find out more about this and everything else that happened in the WordPress community in May.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Local Communities Celebrate the 15th Anniversary of WordPress</h2>\n\n<p>Last Sunday, May 27, WordPress turned 15 years old. This is a noteworthy occasion for an open-source project like WordPress and one well worth celebrating. To mark the occasion, <a href=\"https://wp15.wordpress.net/\">WordPress communities across the world gathered</a> for parties and meetups in honor of the milestone.</p>\n\n<p>Altogether, there were 224 events globally, with <a href=\"https://wp15.wordpress.net/about/\">a few more of those still scheduled</a> to take place in some communities — attend one in your area if you can.</p>\n\n<p>If your city doesn’t have a WordPress meetup group, this is a great opportunity to start one! Learn how with <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/\">the Meetup Organizer Handbook</a>, and join the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>Privacy Tools added to WordPress core</h2>\n\n<p>In light of recent changes to data privacy regulations in the EU, WordPress Core shipped important updates <a href=\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\">in the v4.9.6 release</a>, giving site owners tools to help them comply with the new General Data Protection Regulation (GDPR). It is worth noting, however, that WordPress cannot ensure you are compliant — this is still a site owner’s responsibility.</p>\n\n<p>The new privacy tools include a number of features focused on providing privacy and personal data management to all site users — asking commenters for explicit consent to store their details in a cookie, providing site owners with an easy way to publish a Privacy Policy, and providing data export and erasure tools to all site users that can be extended by plugins to allow the handling of data that they introduce.</p>\n\n<p>To find out more about these features and the other updates, read the <a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">4.9.6 update guide</a>. You can also get involved in contributing to this part of WordPress Core by jumping into the #core-privacy channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>, and following<a href=\"https://make.wordpress.org/core/\"> the Core team blog</a>.</p>\n\n<h2>Updates to the WordPress.org Privacy Policy</h2>\n\n<p>In a similar vein, WordPress.org itself has received <a href=\"https://wordpress.org/about/privacy/\">an updated Privacy Policy</a> to make clear what is being tracked and how your data is handled. Along with that, a <a href=\"https://wordpress.org/about/privacy/cookies/\">Cookie Policy</a> has also been added to explain just what is collected and stored in your browser when using the site.</p>\n\n<p>These policies cover all sites on the WordPress.org network — including WordPress.org, WordPress.net, WordCamp.org, BuddyPress.org, bbPress.org, and other related domains and subdomains. It’s important to note that this does not mean that anything has changed in terms of data storage; rather that these documents clarify what data is stored and how it is handled.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n	<li>WordCamp US 2018 has <a href=\"https://2018.us.wordcamp.org/2018/05/29/speak-at-wordcamp-us/\">opened up speaker submissions</a> for the December event.</li>\n	<li><a href=\"https://2018.europe.wordcamp.org/2018/05/15/wceu-live-stream-tickets/\">Live stream tickets are now available for WordCamp Europe</a>, happening on June 14-16.</li>\n	<li>Gutenberg, the new editor for WordPress Core, is getting ever closer to the final stages with <a href=\"https://make.wordpress.org/core/2018/05/18/whats-new-in-gutenberg-18th-may/\">a major update</a> this month.</li>\n	<li>In preparation for Gutenberg, <a href=\"https://core.trac.wordpress.org/changeset/43309\">significant work has been done</a> to improve WordPress Core’s build process.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6065\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"WordPress.org Privacy Policy Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/05/wordpress-org-privacy-policy-updates/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 08:06:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"privacy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6047\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:325:\"The WordPress.org privacy policy has been updated, hurray! While we weren&#8217;t able to remove all the long sentences, we hope you find the revisions make it easier to understand: how we collect and use data, how long the data we collect is retained, and how you can request a copy of the data you&#8217;ve shared [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:657:\"<p>The <a href=\"https://wordpress.org/about/privacy/\">WordPress.org privacy policy</a> has been updated, hurray! While we weren&#8217;t able to remove <strong>all</strong> the long sentences, we hope you find the revisions make it easier to understand:</p>\n<ul>\n<li>how we collect and use data,</li>\n<li>how long the data we collect is retained, and</li>\n<li>how you can request a copy of the data you&#8217;ve shared with us.</li>\n</ul>\n<p>There hasn&#8217;t been any change to the data that WordPress.org collects or how that data is used; the privacy policy just provides more detail now. Happy reading, and thanks for using WordPress!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6047\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress 4.9.6 Privacy and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 19:21:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5920\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:358:\"WordPress 4.9.6 is now available. This is a privacy and maintenance release. We encourage you to update your sites to take advantage of the new privacy features. Privacy The European Union&#8217;s General Data Protection Regulation (GDPR) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Allen Snook\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:13399:\"<p>WordPress 4.9.6 is now available. This is a <strong>privacy and maintenance release</strong>. We encourage you to update your sites to take advantage of the new privacy features.</p>\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=632&#038;ssl=1\" alt=\"A decorative header featuring the text &quot;GDPR&quot; and a lock inside of a blue shield, on multicolor green background.\" class=\"wp-image-5988\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=300%2C150&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=768%2C384&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=1024%2C512&amp;ssl=1 1024w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<h2 style=\"text-align:left\">Privacy</h2>\n\n<p>The European Union&#8217;s General Data Protection Regulation (<strong>GDPR</strong>) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, use, and share personal data. It also gives individuals more access and choice when it comes to how their own personal data is collected, used, and shared.<br /></p>\n\n<p>It’s important to understand that while the GDPR is a European regulation, its requirements apply to all sites and online businesses that collect, store, and process personal data about EU residents no matter where the business is located.<br /></p>\n\n<p>You can learn more about the GDPR from the European Commission&#8217;s <a href=\"http://ec.europa.eu/justice/smedataprotect/index_en.htm\">Data Protection page</a>.<br /></p>\n\n<p>We&#8217;re committed to supporting site owners around the world in their work to comply with this important law. As part of that effort, we’ve added a number of new privacy features in this release.</p>\n\n<h2 style=\"text-align:left\">Comments</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=632&#038;ssl=1\" alt=\"A screenshot of a comment form, where the new &quot;Save my name, email, and website in this browser for the next time I comment&quot; checkbox is featured.\" class=\"wp-image-5986\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=300%2C291&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=768%2C744&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=1024%2C992&amp;ssl=1 1024w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<p>Logged-out commenters will be given a choice on whether their name, email address, and website are saved in a cookie on their browser.</p>\n\n<h2 style=\"text-align:left\">Privacy Policy Page</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=632&#038;ssl=1\" alt=\"A screenshot of the new Privacy Settings page.\" class=\"wp-image-5995\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=1898&amp;ssl=1 1898w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=300%2C177&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=768%2C453&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=1024%2C604&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<p>Site owners can now designate a privacy policy page. This page will be shown on your login and registration pages. You should manually add a link to your policy to every page on your website. If you have a footer menu, that’s a great place to include your privacy policy.<br /></p>\n\n<p>In addition, we’ve created a guide that includes insights from WordPress and participating plugins on how they handle personal data. These insights can be copied and pasted into your site&#8217;s privacy policy to help you get started.<br /></p>\n\n<p>If you maintain a plugin that collects data, we recommend including that information in WordPress’ privacy policy guide. <a href=\"https://developer.wordpress.org/plugins/privacy/\">Learn more in our Privacy section of the Plugin Handbook</a>.</p>\n\n<h2 style=\"text-align:left\">Data Handling</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=632&#038;ssl=1\" alt=\"A screenshot of the new Export Personal Data tools page. Several export requests are listed on the page, to demonstrate how the new feature will work.\" class=\"wp-image-5999\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=2372&amp;ssl=1 2372w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=300%2C221&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=768%2C565&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=1024%2C753&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<div class=\"wp-block-columns has-2-columns\">\n		<h3 class=\"layout-column-1\">Data Export</h3>\n	\n		<p class=\"layout-column-1\">Site owners can export a ZIP file containing a user&#8217;s personal data, using data gathered by WordPress and participating plugins.</p>\n	\n		<h3 class=\"layout-column-2\">Data Erasure</h3>\n	\n		<p class=\"layout-column-2\">Site owners can erase a user&#8217;s personal data, including data collected by participating plugins.</p>\n	</div>\n\n<blockquote class=\"wp-block-quote\">\n	<p>Howdy,</p>\n	<p>A request has been made to perform the following action on your account:<br /> </p>\n	<p><strong>Export Personal Data</strong><br /> </p>\n	<p>To confirm this, please click on the following link:<br /><a href=\"#\">http://.wordpress.org/wp-login.php?action=confirmaction&#8230;</a><br /> </p>\n	<p>You can safely ignore and delete this email if you do not want to<br /> take this action.<br /> </p>\n	<p>This email has been sent to <a href=\"#\">you@example.com</a>.<br /> </p>\n	<p>Regards,<br /><em>Your friends at WordPress</em><br /><a href=\"http://wordpress.org\"><em> http://wordpress.org</em></a></p>\n</blockquote>\n\n<p>Site owners have a new email-based method that they can use to confirm personal data requests. This request confirmation tool works for both export and erasure requests, and for both registered users and commenters.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2 style=\"text-align:left\">Maintenance</h2>\n\n<p>95 updates were made in WordPress 4.9.6. In addition to the above, particularly of note were:<br /></p>\n\n<ul>\n	<li>&#8220;Mine&#8221; has been added as a filter in the media library.</li>\n	<li>When viewing a plugin in the admin, it will now tell you the minimum PHP version required.</li>\n	<li>We&#8217;ve added new PHP polyfills for forwards-compatibility and proper variable validation.</li>\n	<li>TinyMCE was updated to the latest version (4.7.11).<br /></li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">This post has more information about all of the issues fixed in 4.9.6 if you&#8217;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.6</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates will start updating soon.<br /></p>\n\n<p class=\"has-background has-very-light-gray-background-color\">Please note that if you’re currently on WordPress 4.9.3, you should manually update your site immediately.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>Thank you to everyone who contributed to WordPress 4.9.6:<br /><a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/allendav/\">allendav</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/burlingtonbytes/\">Burlington Bytes</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/claudiu/\">claudiu</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ericdaams/\">Eric Daams</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jesperher/\">Jesper V Nielsen</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/dejliglama/\">Kåre Mulvad Steffensen</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbarthmaier/\">pbrocks</a>, <a href=\"https://profiles.wordpress.org/postphotos/\">postphotos</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/satollo/\">Stefano Lissa</a>, <a href=\"https://profiles.wordpress.org/stephdau/\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/teddytime/\">teddytime</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">thomasplevy</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/voneff/\">voneff</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, and <a href=\"https://profiles.wordpress.org/xkon/\">Xenos (xkon) Konstantinos</a>.<br /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5920\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: April 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/05/the-month-in-wordpress-april-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 08:30:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5891\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April. The WordPress 15th Anniversary is Coming On May 27 2018, WordPress will turn 15 years old — this is [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4981:\"<p>This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>The WordPress 15th Anniversary is Coming</h2>\n\n<p>On May 27 2018, <a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">WordPress will turn 15 years old</a> — this is a huge milestone for the project, or, indeed, for any open-source platform. The Community Team has been hard at work helping communities around the world plan local anniversary parties.</p>\n\n<p>Check <a href=\"https://wp15.wordpress.net/\">the central anniversary website</a> to see if there’s already a party being planned near you. These parties are all organized by local communities — if there’s no local community in your area, you can <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">start one today</a> and host a party yourself.</p>\n\n<h2>Work has Started on a Gutenberg Migration Guide</h2>\n\n<p>With Gutenberg, the upcoming WordPress content editor, in rapid development, a lot of people have been wondering how they will convert their existing plugins to work with the new features. To mitigate the issues here and help people overcome any migration hurdles, <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">a Gutenberg Migration Guide is underway</a> to assist developers with making their code Gutenberg-compatible.</p>\n\n<p>If you’d like to contribute to this guide, you can review <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">the existing documentation on GitHub</a> and <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">open a new issue</a> if you find something to add.</p>\n\n<h2>Theme Review Team Launches Trusted Authors Program</h2>\n\n<p>Reviews of themes submitted to the Theme Directory can take quite a while to complete. In order to combat this issue and to make the theme submission process smoother for everyone, <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">the Theme Review Team is introducing a Trusted Authors Program</a>.</p>\n\n<p>This program will allow frequent and reliable theme authors to apply for trusted status, allowing them to upload themes more frequently and to have their themes automatically approved. This will allow more high-quality themes to be added to the directory, as well as recognize the hard work that authors put in to build their themes.</p>\n\n<p>If you would like to get involved with reviewing themes, you can read <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">their getting started guide</a>, follow the <a href=\"https://make.wordpress.org/themes/\">team blog</a> and join the #themereview channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li><a href=\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\">WordPress 4.9.5 was released</a> early this month, fixing numerous bugs and potential security issues. The two leads for this release <a href=\"https://make.wordpress.org/core/2018/04/20/4-9-5-feedback-leading-a-wordpress-minor-release/\">published some interesting feedback</a> about the process.</li>\n    <li>In addition to the Trusted Authors Program mentioned above, the Theme Review Team is <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/\">making some changes to their review process</a> to minimize theme review delays.<br /></li>\n    <li>The Marketing Team produced <a href=\"https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/\">a handy Contributor Day onboarding PDF</a> for organizers to hand out to contributors attending WordCamps.</li>\n    <li>The Accessibility Team is actively looking for contributors for <a href=\"https://make.wordpress.org/accessibility/handbook/\">their handbook</a>.</li>\n    <li>A new type of WordCamp, <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">targeted at organizers</a>, is in the planning stages now.</li>\n    <li><a href=\"https://wordpress.org/about/\">The WordPress.org About pages</a> received a significant redesign to make them more clear and useful.</li>\n    <li>The Community Team <a href=\"https://make.wordpress.org/community/2018/04/27/wordcamp-incubator-program-2018-2019-roadmap/\">posted the roadmap</a> for this year’s WordCamp Incubator program.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5891\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Celebrate the WordPress 15th Anniversary on May 27\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 21:07:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:5:\"Store\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:4:\"wp15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5753\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"May 27, 2018 is the 15th anniversary of the first WordPress release ﻿— and we can&#8217;t wait to celebrate! Party time! Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun: Check the WordPress 15th Anniversary website to see [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3948:\"<p>May 27, 2018 is the <strong>15th anniversary</strong> of the <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">first WordPress release</a> <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">﻿</a>— and we can&#8217;t wait to celebrate!</p>\n\n<figure class=\"wp-block-image aligncenter\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=342%2C268&#038;ssl=1\" alt=\"\" class=\"wp-image-5841\" width=\"342\" height=\"268\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=2188&amp;ssl=1 2188w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=300%2C236&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=768%2C605&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=1024%2C806&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 342px) 100vw, 342px\" data-recalc-dims=\"1\" /></figure>\n\n<h2>Party time!</h2>\n\n<p>Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun:</p>\n\n<ol>\n    <li>Check the <a href=\"https://wp15.wordpress.net/about/\">WordPress 15th Anniversary website</a> to see if there&#8217;s a party already planned for your town. If there is, RSVP for the party and invite your friends!<br /></li>\n    <li>If there isn&#8217;t, then pick a place to go where a bunch of people can be merry — a park, a pub, a backyard; any family-friendly venue will do!</li>\n    <li>List your party with <a href=\"https://www.meetup.com/pro/wordpress/\">your local WordPress meetup group</a> (Don&#8217;t have a group? <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">Start one!</a>)  and then spread the word to other local meetups, tech groups, press, etc and get people to say they’ll come to your party.</li>\n    <li><a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/wordpress-15th-anniversary-celebrations/#request-wordpress-15th-anniversary-swag\">Request</a> some special 15th anniversary WordPress swag (no later than April 27, please, so we have time to ship it to you).<br /></li>\n    <li>Have party attendees post photos, videos, and the like with the #WP15 hashtag, and <a href=\"https://wp15.wordpress.net/live/\">check out the social media stream</a> to see how the rest of the world is sharing and celebrating.</li>\n</ol>\n\n<p>Don&#8217;t miss this chance to participate in a global celebration of WordPress!<br /></p>\n\n<h2>Special Swag</h2>\n\n<p>In honor of the 15th anniversary, we’ve added some <a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">special 15th anniversary items</a> in the swag store — you can use the offer code <strong>CELEBRATEWP15</strong> to take 15% off this (and any other WordPress swag you buy), all the way through the end of 2018!</p>\n\n<p>Keep checking the swag store, because we&#8217;ll be adding more swag over the next few weeks!</p>\n\n<h2>Share the fun</h2>\n\n<p>However you celebrate the WordPress 15th anniversary — with <a href=\"https://wp15.wordpress.net/about/\">a party</a>, with <a href=\"https://wp15.wordpress.net/swag/\">commemorative swag</a>, by <a href=\"https://wp15.wordpress.net/live/\">telling the world</a> what WordPress means to you — remember to use the #WP15 hashtag to share it! And don&#8217;t forget to <a href=\"https://wp15.wordpress.net/live/\">check the stream of WordPress 15th anniversary posts</a>.</p>\n\n<p>When <a href=\"https://venturebeat.com/2018/03/05/wordpress-now-powers-30-of-websites/\">30% of the internet</a> has a reason to celebrate, you know it&#8217;s going to be great! </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"GDPR Compliance Tools in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2018/04/gdpr-compliance-tools-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Apr 2018 20:11:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5728\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:188:\"GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew Ozz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3914:\"<p>GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core. </p>\n\n<h2>What is GDPR?</h2>\n\n<p>GDPR stands for <a href=\"https://en.wikipedia.org/wiki/General_Data_Protection_Regulation\">General Data Protection Regulation</a> and is intended to strengthen and unify data protection for all individuals within the European Union. Its primary aim is to give control back to the EU residents over their personal data. <br /></p>\n\n<p>Why the urgency? Although the GDPR was introduced two years ago, it becomes  enforceable starting May 25, 2018.</p>\n\n<h2>Make WordPress GDPR Compliance Team</h2>\n\n<p>Currently, the GDPR Compliance Team understands that helping WordPress-based sites become compliant is a large and ongoing task. The team is focusing on creating a comprehensive core policy, plugin guidelines, privacy tools and documentation. All of this requires your help.<br /></p>\n\n<p>The GDPR Compliance Team is focusing on four main areas:</p>\n\n<ul>\n    <li>Add functionality to assist site owners in creating comprehensive privacy policies for their websites.</li>\n    <li>Create guidelines for plugins to become GDPR ready.</li>\n    <li>Add administration tools to facilitate compliance and encourage user privacy in general.</li>\n    <li>Add documentation to educate site owners on privacy, the main GDPR compliance requirements, and on how to use the new privacy tools.</li>\n</ul>\n\n<h2>Don’t we already have a privacy policy?</h2>\n\n<p>Yes and no. That said, The GDPR puts tighter guidelines and restrictions. Though we have many plugins that create privacy pages, we need means to generate a unified, comprehensive privacy policy. We will need tools for users to easily come into compliance.<br /></p>\n\n<p>Site owners will be able to create GDPR compliant privacy policy in three steps:</p>\n\n<ol>\n    <li>Adding a dedicated page for the policy.<br /></li>\n    <li>Adding privacy information from plugins.</li>\n    <li>Reviewing and publishing the policy.</li>\n</ol>\n\n<p>A new &#8220;postbox&#8221; will be added to the Edit Page screen when editing the policy. All plugins that collect or store user data will be able to add privacy information there. In addition it will alert the site owners when any privacy information changes after a plugin is activated, deactivated, or updated.<br /></p>\n\n<p>There is a new functionality to confirm user requests by email address. It is intended for site owners to be able to verify requests from users for displaying, downloading, or anonymizing of personal data.<br /></p>\n\n<p>A new &#8220;Privacy&#8221; page is added under the &#8220;Tools&#8221; menu. It will display new, confirmed requests from users, as well as already fulfilled requests. It will also contain the tools for exporting and anonymizing of personal data and for requesting email confirmation to avoid abuse attempts.<br /></p>\n\n<p>New section on privacy will be added to the <a href=\"https://developer.wordpress.org/plugins/\">Plugin Handbook</a>. It will contain some general information on user privacy, what a plugin should do to be compliant, and also tips and examples on how to use the new privacy related functionality in WordPress.<br /></p>\n\n<p>The new privacy tools are scheduled for release at the end of April or beginning of May 2018.</p>\n\n<h2>How can you get involved?</h2>\n\n<p>We would love to have your help. The first step is awareness and education. For more information about the upcoming privacy tools see ﻿<a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">the roadmap</a>.</p>\n\n<p>If you would like to get involved in building WordPress Core and testing the new privacy tools, please join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress</a> Slack group.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5728\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 4.9.5 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Apr 2018 19:56:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5645\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:376:\"WordPress 4.9.5 is now available. This is a security and maintenance release for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately. WordPress versions 4.9.4 and earlier are affected by three security issues. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6347:\"<p>WordPress 4.9.5 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n<p>WordPress versions 4.9.4 and earlier are affected by three security issues. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented in 4.9.5:</p>\n\n<ol>\n    <li>Don&#x27;t treat <code>localhost</code> as same host by default.</li>\n    <li>Use safe redirects when redirecting the login page if SSL is forced.</li>\n    <li>Make sure the version string is correctly escaped for use in generator tags.</li>\n</ol>\n\n<p>Thank you to the reporters of these issues for practicing <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">﻿coordinated security disclosure</a>: <a href=\"https://profiles.wordpress.org/xknown\">xknown</a> of the WordPress Security Team, <a href=\"https://hackerone.com/nitstorm\">Nitin Venkatesh (nitstorm)</a>, and <a href=\"https://twitter.com/voldemortensen\">Garth Mortensen</a> of the WordPress Security Team.</p>\n\n<p>Twenty-five other bugs were fixed in WordPress 4.9.5. Particularly of note were:</p>\n\n<ul>\n    <li>The previous styles on caption shortcodes have been restored.</li>\n    <li>Cropping on touch screen devices is now supported.</li>\n    <li>A variety of strings such as error messages have been updated for better clarity.</li>\n    <li>The position of an attachment placeholder during uploads has been fixed.</li>\n    <li>Custom nonce functionality in the REST API JavaScript client has been made consistent throughout the code base.</li>\n    <li>Improved compatibility with PHP 7.2.</li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/04/03/wordpress-4-9-5/\">This post has more information about all of the issues fixed in 4.9.5 if you&#x27;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.5</a> or venture over to Dashboard → Updates and click &quot;Update Now.&quot; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n<p>Thank you to everyone who contributed to WordPress 4.9.5:</p>\n\n<p><a href=\"https://profiles.wordpress.org/1265578519-1/\">1265578519</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/alexgso/\">alexgso</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andrei0x309/\">andrei0x309</a>, <a href=\"https://profiles.wordpress.org/antipole/\">antipole</a>, <a href=\"https://profiles.wordpress.org/aranwer104/\">Anwer AR</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/blair-jersyer/\">Blair jersyer</a>, <a href=\"https://profiles.wordpress.org/bandonrandon/\">Brooke.</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/codegrau/\">codegrau</a>, <a href=\"https://profiles.wordpress.org/conner_bw/\">conner_bw</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/designsimply/\">designsimply</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/electricfeet/\">ElectricFeet</a>, <a href=\"https://profiles.wordpress.org/ericmeyer/\">ericmeyer</a>, <a href=\"https://profiles.wordpress.org/fpcsjames/\">FPCSJames</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/junaidkbr/\">Junaid Ahmed</a>, <a href=\"https://profiles.wordpress.org/kristastevens/\">kristastevens</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/lancewillett/\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/leemon/\">leemon</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mrmadhat/\">mrmadhat</a>, <a href=\"https://profiles.wordpress.org/nandorsky/\">nandorsky</a>, <a href=\"https://profiles.wordpress.org/jainnidhi/\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/qcmiao/\">qcmiao</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">RavanH</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sebastienthivinfocom/\">Sebastien SERRE</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/thomas-vitale/\">Thomas Vitale</a>, <a href=\"https://profiles.wordpress.org/kwonye/\">Will Kwon</a>, and <a href=\"https://profiles.wordpress.org/yahil/\">Yahil Madakiya</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5645\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 12 Jul 2018 03:59:32 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Fri, 06 Jul 2018 19:39:15 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20180628072410\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1308, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1531411227', 'no'),
(1309, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1531368027', 'no'),
(1310, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1531411229', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1311, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"WPTavern: WPWeekly Episode 323 – Recap of WordCamp Grand Rapids and A Gutenberg Road Map\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=82285&preview=true&preview_id=82285\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/wpweekly-episode-323-recap-of-wordcamp-grand-rapids-and-a-gutenberg-road-map\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2142:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> recaps his trip to WordCamp Grand Rapids and shares his experience. WordCamp Grand Rapids had a strong focus on tools, plugins, and themes and by all accounts, was a successful event.</p>\n<p>We discussed Matt Mullenweg&#8217;s Summertime update, the roadmap for merging Gutenberg into core, and what comes after Gutenberg. We shared our thoughts on Automattic&#8217;s new board member, General Ann Dunwoody and speculated on Automattic&#8217;s vision.</p>\n<p>We wrap up the show by talking about generational divides in WordPress.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/\">WordPress 4.9.7 Security and Maintenance Release</a><br />\n<a href=\"https://wordpress.org/news/2018/07/update-on-gutenberg/\">Update on Gutenberg</a><br />\n<a href=\"https://make.wordpress.org/core/2018/07/06/whats-new-in-gutenberg-6th-july/\">What’s New in Gutenberg? (6th July)</a><br />\n<a href=\"https://ma.tt/2018/06/automattics-first-new-board-member-general-ann-dunwoody/\">Automattic’s First New Board Member: General Ann Dunwoody</a><br />\n<a href=\"https://wptavern.com/block-unit-test-plugin-helps-wordpress-theme-developers-prepare-for-gutenberg\">Block Unit Test Plugin Helps WordPress Theme Developers Prepare for Gutenberg</a><br />\n<a href=\"https://twitter.com/NaomiCBush/status/1014991902691790848\">Generational divides in WordPress</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, July 18th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #323:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Jul 2018 00:42:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"WPTavern: Video: A Quick Introduction to Gutenberg and the New WordPress Block Editor from LinkedIn Learning\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82276\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://wptavern.com/video-a-quick-introduction-to-gutenberg-and-the-new-wordpress-block-editor-from-linkedin-learning\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1005:\"<p>Although WordPress developers and professionals have been inundated with Gutenberg news for more than a year, there&#8217;s a whole wide world of users who will learn about the project for the first time when 4.9.8 includes a &#8220;Try Gutenberg&#8221; prompt in the admin. If you haven&#8217;t been following the news closely and are wondering what all of this <a href=\"https://wordpress.org/plugins/gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg</a> talk is about, Morten Rand-Hendriksen provides a succinct introduction to the new editor that is coming in WordPress 5.0.</p>\n<p>The video was created as part of LinkedIn&#8217;s <a href=\"https://www.linkedin.com/learning/wordpress-essential-training/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress Essentials Training</a> course. The first part explains the basic concept of a block and includes a mini tour of the new interface, followed by a short overview of where the Gutenberg project is going in the future.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Jul 2018 23:04:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WPTavern: WordCamp Ticket Sales Move from PayPal to Stripe for Default Payment Gateway\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82267\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/wordcamp-ticket-sales-move-from-paypal-to-stripe-for-default-payment-gateway\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1857:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/07/stripe.jpg?ssl=1\"><img /></a></p>\n<p>The WordPress Community Team <a href=\"https://make.wordpress.org/community/2018/07/10/stripe-is-now-available-to-all-wordcamps/\" rel=\"noopener noreferrer\" target=\"_blank\">announced</a> an update to the CampTix, the plugin used for selling WordCamp tickets, that makes Stripe the default payment method. The gateway was previously available as a beta plugin and could be enabled on a per-site basis but is now available to all WordCamps.</p>\n<p>When <a href=\"https://make.wordpress.org/community/2018/04/03/moving-wordcamp-ticket-sales-from-paypal-to-stripe/\" rel=\"noopener noreferrer\" target=\"_blank\">proposing Stripe as the default payment gateway</a> in April, Hugh Lashbrooke cited the fact that PayPal is entirely blocked and inaccessible in some countries. He also identified Stripe&#8217;s simpler UI and larger number of supported currencies as its chief advantages.</p>\n<p>PayPal has been the default for years on WordCamp websites but it currently supports only 26 currencies. Stripe supports 136 currencies, allowing WordCamp organizers to offer ticket purchases in more places than before. Previously, some communities were forced to build a local gateway integration to sell WordCamp tickets via PayPal, requiring those sales to be inconveniently funneled through a local bank account. The Stripe gateway option is a welcome update to support WordPress&#8217; growing international community, which held camps in 73 countries in 2017.</p>\n<p>It&#8217;s important to note that Stripe isn&#8217;t fully replacing PayPal. The Camptix plugin allows organizers to activate multiple payment gateways for cases where one or both make more sense, retaining the flexibility to support ticket sales at camps with different payment requirements.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Jul 2018 18:02:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"HeroPress: Translating For Love\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2587\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://heropress.com/translating-for-love/#utm_source=rss&utm_medium=rss&utm_campaign=translating-for-love\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3006:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/09/092816-vladimir_petkov-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I started translating WordPress so that my seven-year-old daughter can share her personal stories.\" /><p>We all have our reasons for the things we do. Money, love, orders, etc. Vladimir Petkov started using WordPress because it solved a problem. As the years went by it continued to solve problems, and he continued to use it. His time to give back didn&#8217;t arrive until much later though.</p>\n<p>His 7 year old daughter wanted a blog, and WordPress wasn&#8217;t completely translated into her language. So Vladimir learned how to translate WordPress, so his little girl (and every other Bulgarian speaker) can use their voice to speak to the world.</p>\n<p>Why do you give back to WordPress? If you&#8217;d like more info about how you can (no coding required!) drop a note in the comments.</p>\n<p>Also, check out Vladimir&#8217;s essay.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/rebirth/\">Rebirth</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Translating For Love\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Translating%20For%20Love&via=heropress&url=https%3A%2F%2Fheropress.com%2Ftranslating-for-love%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Translating For Love\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Ftranslating-for-love%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Ftranslating-for-love%2F&title=Translating+For+Love\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Translating For Love\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/translating-for-love/&media=https://heropress.com/wp-content/uploads/2016/09/092816-vladimir_petkov-150x150.jpg&description=Translating For Love\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Translating For Love\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/translating-for-love/\" title=\"Translating For Love\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/translating-for-love/\">Translating For Love</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Jul 2018 12:13:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: Video: Matt Mullenweg’s Summertime Update At WCEU 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82254\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/video-matt-mullenwegs-summertime-update-at-wceu-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:861:\"<p>Sessions from <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\">WordCamp Europe 2018</a> are making their way <a href=\"https://wordpress.tv/event/wordcamp-europe-2018/\">onto WordPress.tv</a>, including <a href=\"https://wordpress.tv/2018/07/04/matt-mullenweg-a-summertime-update-keynote-and-qa/\">Matt Mullenweg&#8217;s Summertime Update</a>. </p>\n\n<p>In the video, Mullenweg shares the progress that&#8217;s been made on Gutenberg, WordPress core development, a Gutenberg road map for including it into core, and what to expect after WordPress 5.0 is released. <br /></p>\n\n<p>Be sure to watch the video to the end to catch the memorable, <a href=\"https://twitter.com/dimensionmedia/status/1007605535993221120\">GDPR cookie joke</a>.</p>\n\n\n	<div class=\"embed-wrap\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Jul 2018 23:56:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WPCampus Will Be Streamed Live For Free July 13-14\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82252\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/wpcampus-will-be-streamed-live-for-free-july-13-14\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:779:\"<p><a href=\"https://wpcampus.org/\">WPCampus</a>, a conference focused on WordPress in higher-education takes place this week between July 12-14 at Washington University in St. Louis, Missouri. </p>\n\n<p>If you&#8217;re unable to attend in-person or would like to watch the event from home, visit the <a href=\"https://2018.wpcampus.org/watch/\">WPCampus Stream page</a>. Beginning July 13th at 9AM CDT, all general sessions will be streamed live for free. Sessions will be recorded and be available after the event as well. </p>\n\n<p>To see a list of sessions taking place, check out the <a href=\"https://2018.wpcampus.org/schedule/\">event&#8217;s schedule</a> and for more information about WPCampus, visit the <a href=\"https://wpcampus.org/about/\">site&#8217;s about page</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Jul 2018 23:36:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"WPTavern: New Classic Editor Addon Plugin Disables the “Try Gutenberg” Prompt Coming in WordPress 4.9.8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82232\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"https://wptavern.com/new-classic-editor-addon-plugin-disables-the-try-gutenberg-prompt-coming-in-wordpress-4-9-8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3251:\"<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/stop.jpg?ssl=1\"><img /></a>photo credit: <a href=\"https://stocksnap.io/photo/V4WAM6G46H\">Hermes Rivera</a>\n<p>Gutenberg development continues along the roadmap Matt Mullenweg announced at WordCamp Europe with WordPress 4.9.8 set to introduce a <a href=\"https://core.trac.wordpress.org/ticket/41316\" rel=\"noopener noreferrer\" target=\"_blank\">“Try Gutenberg” prompt</a> to increase usage and testing. Core design contributors are currently working on a few new iterations of the callout. They are also considering including a section inside the prompt with an option to install the <a href=\"https://wordpress.org/plugins/classic-editor/\" rel=\"noopener noreferrer\" target=\"_blank\">Classic Editor</a> plugin in preparation for Gutenberg.</p>\n<p>Developers and agencies have time to install the Classic Editor on client sites that are not ready for Gutenberg, but this will not prevent users from seeing the &#8220;Try Gutenberg&#8221; prompt. <a href=\"https://gschoppe.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Greg Schoppe</a>, one of Gutenberg&#8217;s most outspoken critics, partnered with <a href=\"https://so-wp.com/plugin/classic-editor-addon\" rel=\"noopener noreferrer\" target=\"_blank\">Pieter Bos</a> to develop a plugin called <a href=\"https://wordpress.org/plugins/classic-editor-addon/\" rel=\"noopener noreferrer\" target=\"_blank\">Classic Editor Addon</a> that changes how the Classic Editor plugin works.</p>\n<p>&#8220;For agencies supporting many sites, whose users have no way of knowing whether Gutenberg will break their site or not, this nag screen is a danger,&#8221; Schoppe commented on our most recent Gutenberg update. &#8220;Pre-emptively installing Classic Editor unfortunately won’t suppress the nag notice either, but since Classic Editor is being used as a bellwether of the success of Gutenberg, it’s important that you install it, if you expect issues.&#8221;</p>\n<p>Schoppe co-wrote the Classic Editor Addon to solve this problem. It suppresses the &#8220;Try Gutenberg&#8221; prompt and when the new editing experience ships in 5.0, it will automatically suppress Gutenberg as well.</p>\n<p>Since the Classic Editor plugin doesn&#8217;t remove Gutenberg by default, the addon plugin sets the option to fully replace Gutenberg. It also removes the Classic Editor&#8217;s options from the Settings > Writing screen. Schoppe said he believes this is what the Classic Editor plugin should have done out of the box, instead of requiring the user to find the settings screen to replace Gutenberg.</p>\n<p>Installing both the Classic Editor and Classic Editor Addon on tens or hundreds of client sites could be time consuming, so Schoppe suggests using a site management dashboard, such as MainWP, ManageWP, or Jetpack, to bulk install both plugins for clients.</p>\n<p>According to stats on WordPress.org, Gutenberg is active on more than 10,000 sites and the Classic Editor is active on 4,000+ sites. The &#8220;Try Gutenberg&#8221; prompt is expected to go out in WordPress 4.9.8, which is targeted for the end of July. The goal for the prompt is to make users aware of the plugin and get more testers involved before Gutenberg lands in WordPress 5.0.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Jul 2018 22:35:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Post Status: Working on your own website — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=46462\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://poststatus.com/working-on-your-own-website-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1619:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, the Brians discuss the challenges of working on your own business website, when your company offers services or makes products for websites. Agencies often disregard their own websites, as do product companies. We discuss our own histories of attempting in-house redesign projects, strategies to get them done, and how we approach things today owning our own tiny businesses.</p>\n<p></p>\n<h3>Episode Links</h3>\n<ul>\n<li><a href=\"https://www.codeinwp.com/blog/redesign-your-business-website-transparency-report-40/\"><span>CodeInWP Transparency Report: Redesigning Your Business Website</span></a></li>\n</ul>\n<h3>Sponsor: Pagely</h3>\n<p><a href=\"https://pagely.com\"><span>Pagely</span></a><span> offers best in class managed WordPress hosting, powered by the Amazon Cloud, the Internet’s most reliable infrastructure. Post Status is proudly hosted by Pagely. Thank you to </span><a href=\"https://pagely.com\"><span>Pagely</span></a><span> for being a Post Status partner</span></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 Jul 2018 18:34:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: How WordPress is Powering a New Community on the Remote Island of Ogijima\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82204\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wptavern.com/how-wordpress-is-powering-a-new-community-on-the-remote-island-of-ogijima\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10699:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/junkonukaga.jpg?ssl=1\"><img /></a><a href=\"https://profiles.wordpress.org/nukaga\" rel=\"noopener noreferrer\" target=\"_blank\">Junko Nukaga</a> began her journey into the world of WordPress in 2011, just after her hometown in Fukushima prefecture was hit by the 9.0 magnitude Tōhoku earthquake and tsunami. The catastrophic event, referred to in Japan as the Great East Japan Earthquake, devastated the region&#8217;s infrastructure and took more than 15,000 lives. It also caused a level 7 meltdown at three reactors in the Fukushima Daiichi Nuclear Power Plant complex.</p>\n<p>Until this point Nukaga had only used WordPress as a blogging tool, but her hometown prefecture needed a fast way to get a website up for publishing accurate measurements of the radiation levels. Although she was living in Osaka at the time, Nukaga joined the volunteer team and built the site using WordPress. In addition to local radiation levels, it also had FAQ&#8217;s about radiation from scientists to combat the misinformation that was rampant at the time. People found the site through social networks and word of mouth.</p>\n<p>After making a difference for her hometown with WordPress, Nukaga wanted to find out more about the community behind the software. She joined an offline <a href=\"https://www.meetup.com/ja-JP/WordBench/?_cookie-check=ng_FrFUqDlEMFkbN\">WordBench</a> meetup and got connected to the WordPress community. The next year she co-organized WordCamp Osaka 2012, and in 2014 she became the lead organizer of WordCamp Kansai, an area that includes seven prefectures: Mie, Shiga, Kyoto, Osaka, Hyogo, Nara, Wakayama.</p>\n<p>As Nukaga became more deeply involved in the WordPress community as a speaker, organizer, and contributor, she developed a new understanding of the power of open source collaboration. After moving to the remote island of Ogijima in 2014, she was inspired to create a library and cultural center, using WordPress to organize a team of more than 200 volunteers.</p>\n<p>“When my family and I moved to this island, the school here was closed, because there were no kids on Ogijima,” Nukaga said. “We have a daughter, so we urged the government to reopen the school.</p>\n<p>&#8220;Although the school restarted, I thought that it would be meaningless for the school to stop or close again when our daughter graduated. The island is an aging society and no new children will be born here. I figured that if there was a library, I could call migrants to the island. A library which is free and an open space would help solve many things, such as children’s learning environment, communication support for the islanders, and migration consultation, for example.”</p>\n<p>Nukaga set up a WordPress website before constructing the library so her team of volunteers could disclose the progress of the building and recruit followers. They promoted the website through social networks and were able to crowdfund efforts to construct and maintain the building.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/ogijima-library.jpg?ssl=1\"><img /></a></p>\n<p>The <a href=\"https://ogijima-library.or.jp/\" rel=\"noopener noreferrer\" target=\"_blank\">Ogijima Library</a> opened in February 2014 as a non-profit organization that is rooted in the community, providing a place where people can connect through books and share knowledge with one another. Residents on the island now have access to titles and periodicals that would previously have required a boat trip to acquire. More than 50 migrants have moved to the island within the last four years since the library opened, including families with babies born last year.</p>\n<p>&#8220;Without WordPress, none of this would have been possible,&#8221; Nukaga said.  “WordPress opened my way. It taught me the philosophy of open source. I have used this philosophy to involve many unspecified people from the beginning of the process of making the library. We built the building ourselves with the help of 200 volunteers, and we continue to get support through book donations. Also, thanks to the flexibility of WordPress, the things I wanted to do, such as updating, providing a search system for books, and linking to social networks, were all possible.”</p>\n<h3>WordCamp Ogijima: “Empowering the Smalls to Go Big”</h3>\n<p>The WordPress community on the island is also thriving, thanks to community organizers who call Ogijima home. Nukaga organizes the meetups, which average 5 to 20 attendees at each event. <a href=\"https://ogi.osampo-radio.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Shinichi Nishikawa</a>, who organized WordCamp Tokyo in 2012 and helped build a new WordPress community in Bangkok, made his home on the island in March 2016. He is joining forces with Nukaga and a team of 35 leaders and volunteers to organize the first <a href=\"https://2018.ogijima.wordcamp.org\" rel=\"noopener noreferrer\" target=\"_blank\">WordCamp Ogijima</a> on July 15, 2018.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/wc-ogijima.jpg?ssl=1\"><img /></a></p>\n<p>This will be the first Japanese WordCamp not held in the cities. Organizers have chartered two ferries to transport more than 250 attendees to the island. Camping is the primary lodging option in tents beside the island’s lighthouse and organizers have planned a BBQ after party. Although the event is currently sold out, 10 additional <a href=\"https://2018.ogijima.wordcamp.org/2018/05/20/registration-information-en/\" rel=\"noopener noreferrer\" target=\"_blank\">tickets</a> will go on sale on July 10 due to cancellations and an estimation of no-shows.</p>\n<p>“The uniqueness of the community in this area is that there are many with different backgrounds,” Shinichi Nishikawa said. “WordCamps in the city are mainly attended by engineers, designers and bloggers, but here there are people who are restaurant managers, farmers, a barber, an illustrator, a ranger (nature protection officer), baker, and others who are interested in WordPress.”</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/wcogijima-organizers.jpg?ssl=1\"><img /></a></p>\n<p>The organizing team, which includes many new contributors from all walks of life, along with meetup organizers in the Setouchi inland sea area, has adopted the theme “Empowering the smalls to go big.”</p>\n<p>Ogijima’s local community includes members like Kaisho Damonte, who is using WordPress and WooCommerce to power <a href=\"https://wptavern.com/feed\">a website for the bakery and cafe business he started</a> after renovating a 100-year-old barn on the island. Kentaro Yamaguchi, another island resident, uses WordPress for his <a href=\"https://wptavern.com/feed\">barber shop’s website</a>.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/screely-1531150922541.png?ssl=1\"><img /></a></p>\n<p>Nishikawa said he sees WordCamp Ogijima as “a WordCamp in a new place, for new audiences, by new organizers.&#8221; He appreciates the openness of the islanders who are willing to embrace new things.</p>\n<p>“The WordPress community on the island represents this atmosphere,” Nishikawa said. “Everyone has their own views, plans for their lives, and their own ways of thinking. WordPress, with its ‘Democratization of Publishing’ mission is a great match to us, who are trying to make our lives in different ways. We have built a library, cafe, a barbershop, and offices DIY ourselves.  When it comes to websites, WordPress helps us a lot.”</p>\n<h3>The WordPress Community in Ogijima is Defined by a Focus on Cooperative Learning</h3>\n<p>One of the most inspirational aspects of the community in Ogijima, along with the greater Japanese WordPress community, is the strong emphasis on helping each other learn and succeed. New members are often woven into the community through meetups that focus on connecting around specific interests outside of WordPress technical skill. The community warmly welcomes users who are new to WordPress who want to get help with their websites. Nishikawa said this is the particular audience that the Ogijima meetup is trying to reach.</p>\n<p>“We want to connect with individuals who want to achieve something; small business owners, designers, photographers, writers, editors, and anyone who is struggling doing something on the web,” Nishikawa said. “By coming together, you notice that there are many friends who are struggling as well. Experienced developers attend as usual but their role this time is to share their knowledge to the new people. We help each other build and improve our websites. It&#8217;s a very relaxed and helping atmosphere in the meetups. We do have some presentations sometimes but that&#8217;s not the main thing.”</p>\n<p>WordPress Core Committer <a href=\"https://profiles.wordpress.org/mikeschroder/\" rel=\"noopener noreferrer\" target=\"_blank\">Mike Schroder</a> will be speaking at WordCamp Ogijima about how everyone has something unique to bring to the community to help it grow.</p>\n<p>“I initially visited Japan for WordCamp Tokyo a few years ago — largely because it was the biggest WordCamp in the world at the time,” Schroder said. “The community in Japan is extremely active and welcoming, and I quickly made many friends. One unique part of the community is that it has a big focus on education. The <a href=\"http://wordbench.org\" rel=\"noopener noreferrer\" target=\"_blank\">WordBench</a> events are excellent!”</p>\n<p>“As the theme of the event is ‘Empower the smalls to go big,’ I’m looking forward to sharing some bits of my background, and how others have helped me grow, in an effort to show folks that they have a lot to offer,” Schroder said. (He’s also doing a bit of research and is interested to hear stories from others about unique aspects of their lives that have helped them succeed in the WordPress ecosystem. You can ping him @mike on WP Slack if you want to contribute.)</p>\n<p>The community in Ogijima is a beautiful example of how WordPress is powering a new wave of makers and doers on the island. The software has enabled them to establish new businesses, commerce, and cultural centers in a remote area where they are building their lives. WordCamp Ogijima is a classic example of what a WordCamp should be &#8211; an event that highlights the successes of local WordPress users.</p>\n<p>“While I don&#8217;t think our numbers will grow, our lives will always need WordPress and its community,” Nishikawa said regarding the local meetups. “And we welcome ambitious attendees who need help.”</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 Jul 2018 16:09:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Dev Blog: Update on Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6118\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/news/2018/07/update-on-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2260:\"<p>Progress on the Gutenberg project, the new content creating experience coming to WordPress, has come a long way. Since the start of the project, there have been 30 releases and 12 of those happened after WordCamp US 2017. In total since then, there have been 1,764 issues opened and 1,115 closed as of WordCamp Europe. As the work on phase one moves into its final stretch, here is what you can expect.<br /></p>\n\n<h4>In Progress</h4>\n\n<ul>\n	<li>Freeze new features in Gutenberg (the feature list can be found <a href=\"https://github.com/WordPress/gutenberg/issues/4894\">here</a>).</li>\n	<li>Hosts, agencies, teachers invited to opt-in sites they have influence over.</li>\n	<li>WordPress.com has opt-in for wp-admin users. The number of sites and posts will be tracked.</li>\n	<li>Mobile app support for Gutenberg will be across iOS and Android.</li>\n</ul>\n\n<h4>July</h4>\n\n<ul>\n	<li>4.9.x release with an invitation to install either Gutenberg or Classic Editor plugin.</li>\n	<li>WordPress.com will move to opt-out. There will be tracking to see who opts out and why.</li>\n	<li>Triage increases and bug gardening escalates to get blockers in Gutenberg down to zero.</li>\n	<li>Gutenberg phase two, Customization exploration begins by moving beyond the post.</li>\n</ul>\n\n<h4>August and beyond</h4>\n\n<ul>\n	<li>All critical issues within Gutenberg are resolved.</li>\n	<li>There is full integration with Calypso and there is opt-in for users there.</li>\n	<li>A goal will be 100k+ sites having made 250k+ posts using Gutenberg.</li>\n	<li>Core merge of Gutenberg begins the 5.0 release cycle.</li>\n	<li>5.0 moves into beta releases and translations are completed.</li>\n	<li>There will be a mobile version of Gutenberg by the end of the year.</li>\n</ul>\n\n<p>WordPress 5.0 could be as soon as August with hundreds of thousands of sites using Gutenberg before release. Learn more about Gutenberg <a href=\"https://wordpress.org/gutenberg/\">here</a>, take it for a <a href=\"https://testgutenberg.com/\">test drive</a>, <a href=\"https://wordpress.org/plugins/gutenberg/\">install</a> on your site, follow along on <a href=\"https://github.com/WordPress/gutenberg\">GitHub</a> and give your <a href=\"https://wordpressdotorg.polldaddy.com/s/gutenberg-support\">feedback</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Jul 2018 19:23:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Tammie Lister\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: WordPress 4.9.8 to Introduce “Try Gutenberg” Callout\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82174\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/wordpress-4-9-8-to-introduce-try-gutenberg-callout\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2027:\"<p>Paul Biron and Joshua Wold are leading the upcoming WordPress 4.9.8 release, which was originally announced as 4.9.7. WordPress core contributors met yesterday to decide the general focus and set the release schedule. In the meantime, the <a href=\"https://make.wordpress.org/core/2018/07/05/wordpress-4-9-7/\" rel=\"noopener noreferrer\" target=\"_blank\">4.9.7 security and maintenance release</a> was rolled out to fix an authenticated arbitrary file deletion vulnerability, along with a few other minor updates.</p>\n<p>WordPress 4.9.8 is targeted for July 31, 2018, with a beta as early as July 17. The release will focus on introducing the &#8220;<a href=\"https://core.trac.wordpress.org/ticket/41316\" rel=\"noopener noreferrer\" target=\"_blank\">Try Gutenberg</a>&#8221; callout and adding privacy fixes and enhancements. The ticket proposing the callout was opened a year ago and was planned to be included in WordPress 4.9.5 but was eventually <a href=\"https://wptavern.com/try-gutenberg-prompt-pushed-back-to-a-later-release\" rel=\"noopener noreferrer\" target=\"_blank\">pulled</a> before the release in favor of allowing Gutenberg contributors to iron out a few important issues.</p>\n<p>WordPress Core Committer Mel Choyce added the most recent round of designs to the ticket four weeks ago and contributors are still iterating on the design and text for the callout. Another iteration is expected to be added to the ticket early next week.</p>\n<p>WordPress 4.9.8 is another step in Matt Mullenweg&#8217;s <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\" rel=\"noopener noreferrer\" target=\"_blank\">roadmap for getting Gutenberg into 5.0</a>. The goal is to make more users aware of Gutenberg and to gather more testing and feedback before the new editor lands in core. The prompt will include a prominent button that users can click to install the Gutenberg plugin, along with links for where to learn more and how to report issues.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 21:39:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: Just Write: A Client-Side React App for Writing and Editing WordPress Posts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82147\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wptavern.com/just-write-a-client-side-react-app-for-writing-and-editing-wordpress-posts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5227:\"<p>WordPress developer <a href=\"https://www.jasonbobich.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Jason Bobich</a> has created an open source client-side React app called <a href=\"https://github.com/themeblvd/justwrite\">Just Write</a> that provides a decoupled editing experience for WordPress. Bobich said he built the app in 10 days to explore the possibilities of React and the WP REST API.</p>\n<p>Although it&#8217;s still a work in progress, the app has a <a href=\"http://justwrite.app\" rel=\"noopener noreferrer\" target=\"_blank\">demo</a> where curious testers can manage posts from any WordPress website that&#8217;s secured with HTTPS and has the JWT Authentication plugin installed. Alternatively, testers can click on the &#8220;play in the sandbox&#8221; to bypass authentication.</p>\n<p>Once logged in, the user sees a dashboard with the most recent posts, a deliberate design decision that Bobich made to &#8220;motivate the user to do one thing &#8211; to just write.&#8221;</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/just-write-dashboard.jpeg?ssl=1\"><img /></a></p>\n<p>The editor includes support for Markdown and a simple preview with a sticky toolbar at the top. Just Write also allows the user to edit their profile and personal information in a dropdown at the top of the screen.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/Screen-Shot-2018-07-03-at-4.17.02-PM.png?ssl=1\"><img /></a></p>\n<p>Bobich said he created to the app to improve his JavaScript skills and doesn&#8217;t have a plan to use it for business.</p>\n<p>&#8220;Ever since we were all told a couple of years ago, &#8216;Learn JavaScript deeply,&#8217; I’ve seen just how many holes I had in my own JavaScript knowledge,&#8221; Bobich said. &#8220;I’ve been working hard the last couple of years to become more than just a jQuery monkey. And so this project is just another step towards my personal growth surrounding the technologies involved here. It’s so exciting to think about the potential things that we can build in the community with React and the WordPress API.&#8221;</p>\n<h3>WP REST API Currently Poses Complicated Hurdles for App Developers</h3>\n<p>After the REST API was merged into core, the time seemed ripe for developers to build a proliferation of different writing experiences for users. However, working with the API still has many hurdles for application developers, limitations that Bobich said he became acquainted with while developing Just Write.</p>\n<p>&#8220;For anyone wanting to build a practical application like this, the first glaring issue is around authentication,&#8221; Bobich said. &#8220;WordPress has no way to securely authenticate from outside of the WordPress admin. So expecting any average user to set up oAuth or JWT with a third-party plugin is a bit of a reach.&#8221;</p>\n<p>Bobich also encountered issues working with media and saving content the WordPress way (which allows shortcodes to get parsed before <code>wpautop()</code>). The application is not yet ready for real, practical use but would require even more API calls to do things like get ahold of categories and tags or add the ability to create new ones.</p>\n<p>&#8220;Think about all the work WordPress has put into the way we embed media in different ways,&#8221; Bobich said. &#8220;Just having basic things we take for granted — pasting a YouTube link, a tweet, uploading an image and having it cropped 100 ways ’til Sunday — for all  work properly would all take custom JavaScript coding.&#8221;</p>\n<p>Bobich said he thinks these limitations are the reason why there aren&#8217;t yet more applications built with decoupled editing experiences. Yet, in the new era of Gutenberg, Just Write&#8217;s alternative writing interface offers a simplicity that some users may prefer.</p>\n<p>&#8220;As the WordPress admin continues to grow and become more complex, some people get excited and others moan and grown,&#8221; Bobich said. &#8220;But building something like Just Write shows us that there’s more to WordPress than just what we see. There’s more than a menu full of plugins and a new editor built in React that we may or may not like. WordPress can be what we want. It can fit our own needs or any client’s. And this all comes from the potential ability to decouple the editing experience.&#8221;</p>\n<p>As WordPress has evolved to accommodate different user types from blogging, websites, and niche applications, Bobich said he thinks the next logical step is for developers to begin creating admin interfaces catered specifically to users&#8217; individual needs.</p>\n<p>&#8220;Gutenberg marks an important turn in the evolution,&#8221; Bobich said. &#8220;For those that were clinging to the simplicity of WordPress and blocking out some of the other noise, this might not be something they end up liking&#8230; or maybe it will?</p>\n<p>&#8220;But the bigger point is that what we see there in the admin doesn’t have to be it. I hope people will be braver than me and really set out to build these different alternatives. If I can polish my React skills and build that myself in 10 days, I can only imagine what others can do.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 18:09:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Dev Blog: WordPress 4.9.7 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6091\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3983:\"<p>WordPress 4.9.7 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n<p>WordPress versions 4.9.6 and earlier are affected by a media issue that could potentially allow a user with certain capabilities to attempt to delete files outside the uploads directory.</p>\n\n<p>Thank you to <a href=\"https://hackerone.com/slavco\">Slavco</a> for reporting the original issue and <a href=\"https://www.wordfence.com/\">Matt Barry</a> for reporting related issues.</p>\n\n<p>Seventeen other bugs were fixed in WordPress 4.9.7. Particularly of note were:</p>\n\n<ul>\n	<li>Taxonomy: Improve cache handling for term queries.</li>\n	<li>Posts, Post Types: Clear post password cookie when logging out.</li>\n	<li>Widgets: Allow basic HTML tags in sidebar descriptions on Widgets admin screen.</li>\n	<li>Community Events Dashboard: Always show the nearest WordCamp if one is coming up, even if there are multiple Meetups happening first.</li>\n	<li>Privacy: Make sure default privacy policy content does not cause a fatal error when flushing rewrite rules outside of the admin context.</li>\n</ul>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.7</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n<p>The previously scheduled 4.9.7 is now referred to as 4.9.8, and will follow the <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">release schedule posted yesterday</a>.</p>\n\n<p>Thank you to everyone who contributed to WordPress 4.9.7:</p>\n\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a>, and <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jul 2018 17:00:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"HeroPress: Coding under trees and in 24 hour coffee shops\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2582\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:166:\"https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/#utm_source=rss&utm_medium=rss&utm_campaign=coding-under-trees-and-in-24-hour-coffee-shops\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9173:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/07/070418-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Taking risks and being able to look like a fool have enabled me to become a WordPress core committer.\" /><p>People were paying me to write code two years before I had wifi in my house. Home wifi would have cost $45 a month. The cable company wanted a $100 deposit to create my account. It wasn&#8217;t going to happen, I could get wifi with a cup of coffee for $3 (including the tip) at a coffee shop a few blocks away from my place that meant I got some semblance of being social. I couldn&#8217;t imagine giving up 15 days a month at coffee shops just so it was easier to work from home, not when I could get away with sitting on my porch poaching wifi from my neighbors when I got stuck and had to google regular expressions for the 400th time. Or, my favorite, sit in a park down the street where there were three unprotected wifi networks and a strong tree to lean against.</p>\n<p>My path to becoming a web developer started when I packed up my beat up Chevy Prizm and drove to Portland, Oregon. I had graduated college with degrees in Economics and Political Science. While there, I become a Linux user when I discovered that it used less space meaning I had more space for music. I had never written code, but when my friends and I decided we wanted to create our version of The Onion, I started searching. After a little bit of trial ( blogger ) and error ( blogger ), I found WordPress and it&#8217;s &#8220;Famous Five Minute Install&#8221;. I purchased a domain and hosting from a place that advertised heavily and set about creating our site.</p>\n<p>The public library was my initial source of information. After all, having fun isn&#8217;t hard when you&#8217;ve got a library card. I picked up books on CSS, PHP, Java, Database design, and anything I could get my hands on. I was working evenings as an usher for the Portland Trailblazers and would head over to a 24 hour coffee shop to cowboy code under fluorescent lights until I was ready to crash.</p>\n<hr class=\"ttfmake-hr\" />\n<p>I can think of three big breaks that really helped move me along. Each of these ended up being &#8220;Flash Forward&#8221; moments where I was able to grow.</p>\n<h3>My First Client</h3>\n<p>I was scouring craigslist looking for anything I could get my hands on when I found someone offering $25 to move their WordPress site from one domain to another. Having just done that, I sent an email and crossed my fingers. Somehow, my eagerness (and likely willingness to work for peanuts) got my their trust. I had my first client. It took me way longer than I would have hoped as I learned about things like DNS Propagation, but I completed the task. And did such a good job that I was asked if I could build a website for one of their friends who was a standup comic. I was honest that I had never built a real site from scratch, but they liked how I had communicated, so I got the gig.</p>\n<h3>My First Core Experience</h3>\n<p>Before the first time I contributed to WordPress, I went to the Portland WordPress User Group to ask if something I was seeing was possibly an issue that warranted emailing the wp-hackers mailing list. I was so scared of being wrong that I felt like I needed to ask permission. I assumed that I was going to make a fool of myself and be laughed at. I ended up <a href=\"http://lists.automattic.com/pipermail/wp-hackers/2009-June/026386.html\">emailing the list</a> and it turned out, I had found a <a href=\"https://core.trac.wordpress.org/ticket/10022\">spot where WordPress could be better</a>! In the grand scheme of WordPress, passing a parameter to three `do_action` calls didn&#8217;t help WordPress gain 1% of market share, but it did help me with the plugin I was working on. And I was exposed to the process. I learned about trac, and the weekly devchat, and patches and svn. While I didn&#8217;t get props, I still consider this my first contribution to WordPress Core.</p>\n<h3>My first WordCamp</h3>\n<p>WordCamps are cheap compared to most tech conferences, but when you are playing the game of &#8220;How do I eat on $10 a week&#8221; for months on end, $40 for a conference whose value is unknown is a hard sell. Luckily, the Portland WordPress User Group did a raffle for a ticket and I won. All I had to pay for was the $2 in bus fare each way and I had the chance to learn. The 2009 WordCamp Portland ended up being where Matt Mullenweg announced that WPMU was going to be merged into core in WordPress 3.0 and it&#8217;s where I saw a talk entitled &#8220;<a href=\"https://wordpress.tv/2009/09/20/will-norris-building-plugins-portland09/\">How Not to Build a WordPress Plugin</a>&#8221; by Will Norris. Will&#8217;s talk exposed me to WordPress development in a way that I would never have imagined on my own. It helped me level up from someone who mostly was copy and pasting PHP to someone who was writing code.</p>\n<p>Additionally, I was able to network for the first time. It no longer was the same 15 people who went to the meetup, it was now about 200 WordPress fanatics, many who wanted to hire someone like me to work on their website!</p>\n<p>Looking back, these flash forward moments contributed almost as much to luck to my success. In many ways, a lot of my success can be attributed to the luck of being born as someone who is essentially a white cis-male into a family where I was exposed to computers and had a chance to gain a solid liberal arts education.</p>\n<p>But it&#8217;s not just that luck that helped me. I had to provide good customer service to turn a $25 task into a contract to build my first website. I had to be willing to embarrass myself by asking what I thought was a dumb question. I had to show up and become a part of my local community to get a ticket for a conference where I learned and networked.</p>\n<p>Soon after WordCamp Portland 2009, I had enough client work coming in that it made sense to have wifi. Home wifi meant I could start being connected to the WordPress community more than once a month in person or a few hours here and there at coffee shops. It meant I could read dev chat every week and eventually it meant I could earn props. Networking at meetups, WordCamps and conferences led to full time jobs. Taking risks and being willing to look like a fool in front of the WordPress community have enabled me to become a WordPress Core committer (and sometimes continue to look like a fool). In addition to volunteering on WordPress Core, I&#8217;m now the Director of Editorial Technology for Penske Media Corporation where I help brands like Rolling Stone and Variety run on WordPress, but I&#8217;ll never forget when if I needed to code, I was going to sit under trees in parks or the fluorescent lights of a 24 hour coffee shop.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Coding under trees and in 24 hour coffee shops\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Coding%20under%20trees%20and%20in%2024%20hour%20coffee%20shops&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fcoding-under-trees-and-in-24-hour-coffee-shops%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Coding under trees and in 24 hour coffee shops\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fcoding-under-trees-and-in-24-hour-coffee-shops%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fcoding-under-trees-and-in-24-hour-coffee-shops%2F&title=Coding+under+trees+and+in+24+hour+coffee+shops\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Coding under trees and in 24 hour coffee shops\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/&media=https://heropress.com/wp-content/uploads/2018/07/070418-150x150.jpg&description=Coding under trees and in 24 hour coffee shops\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Coding under trees and in 24 hour coffee shops\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/\" title=\"Coding under trees and in 24 hour coffee shops\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/coding-under-trees-and-in-24-hour-coffee-shops/\">Coding under trees and in 24 hour coffee shops</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Jul 2018 18:30:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Aaron Jorbin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"WPTavern: WordCamp Incubator Program 2018 to Host Events in Montevideo, Uruguay and Kota Kinabalu, Malaysia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82134\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"https://wptavern.com/wordcamp-incubator-program-2018-to-host-events-in-montevideo-uruguay-and-kota-kinabalu-malaysia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2465:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/07/montevideo.jpg?ssl=1\"><img /></a>The Pocitos neighborhood of Montevideo, Uruguay. Skyline from the shore -photo credit: <a href=\"https://en.wikipedia.org/wiki/File:Pocitos,_2017.jpg\">Rimbaldine</a>\n<p>The WordCamp Incubator Program has selected <a href=\"https://make.wordpress.org/community/2018/06/26/wordcamp-incubator-program-2018-locations-announcement/\" rel=\"noopener noreferrer\" target=\"_blank\">Montevideo, Uruguay and Kota Kinabalu, Malaysia to host WordCamps in 2018</a>. The program provides a jump start for new WordPress communities where meetups have not yet been well-established. Montevideo and Kota Kinabalu were selected from a <a href=\"https://make.wordpress.org/community/2018/05/15/wordcamp-incubator-program-2018-update/\" rel=\"noopener noreferrer\" target=\"_blank\">short list of 14 communities</a> that had been whittled down from 104 applications for the program.</p>\n<p>WordPress Community Deputies will co-lead the events and mentor a local team that will organize a one-track WordCamp with approximately 50-75 attendees. The goal is to empower the new organizers and the fledgling communities to host more local events, ideally regular meetups and an annual WordCamp. Mentors will assist in finding speakers and sponsors. A global sponsorship grant will cover 100% of the events&#8217; costs, relieving the organizers of the burden of local fundraising.</p>\n<p>WordPress Community Team member Rocío Valdivia announced the program&#8217;s new cities for 2018 and said she anticipates the events will happen in the last quarter of this year. Local co-leads have been charged with starting a monthly meetup group before setting a date for the new WordCamps.</p>\n<p>Round 2 of the WordCamp Incubator Program follows up a successful run in 2016 that brought WordCamps to Denpasar, Harare, and Medellín. <a href=\"https://wptavern.com/harare-and-nairobi-host-2nd-round-of-successful-wordcamps\" rel=\"noopener noreferrer\" target=\"_blank\">Harare hosted its second WordCamp in 2017</a> and a <a href=\"https://2018.harare.wordcamp.org/\" rel=\"noopener noreferrer\" target=\"_blank\">2018 camp</a> is in the early planning stages. This particular African community, along with the neighboring Nairobi community (on the short list in 2016), are strong examples of how the incubator program can provide a boost in areas of the world where the WordPress community is not yet deeply rooted.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Jul 2018 03:41:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: Block Unit Test Plugin Helps WordPress Theme Developers Prepare for Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81919\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wptavern.com/block-unit-test-plugin-helps-wordpress-theme-developers-prepare-for-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4606:\"<p><a href=\"https://themebeans.com/\" rel=\"noopener noreferrer\" target=\"_blank\">ThemeBeans</a> founder Rich Tabor has released a new plugin called <a href=\"https://wordpress.org/plugins/block-unit-test/\" rel=\"noopener noreferrer\" target=\"_blank\">Block Unit Test for Gutenberg</a> that helps theme authors test their themes for Gutenberg-readiness. It is similar to the <a href=\"https://codex.wordpress.org/Theme_Unit_Test\" rel=\"noopener noreferrer\" target=\"_blank\">Theme Unit Test</a> but is limited to testing Gutenberg blocks.</p>\n<p>After installing and activating both Gutenberg and sBlock Unit Test, the plugin creates a new page as a draft with an example of every core Gutenblock. This makes it easy to see how the blocks will appear on the frontend of any theme. Block Unit Test also includes variations on the core blocks with different alignment and column settings applied.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530556922797.png?ssl=1\"><img /></a></p>\n<p>Tabor said he knew it would be advantageous to start using/writing in Gutenberg daily to better understand what he needed to do to make his products at ThemeBeans compatible.</p>\n<p>&#8220;I added initial support for Gutenberg in my Tabor WordPress theme, as I use it on my own personal blog with Gutenberg,&#8221; he said. &#8220;I needed a way to easily test each of the core Gutenberg blocks (and eventually third-party blocks) without having to manually add them every time I wanted to test something. As Gutenberg blocks get more dynamic and complicated, it’s a bit trickier to test for &#8211; as many blocks have different variations/styles/columns/grids/etc.&#8221;</p>\n<p>Tabor took inspiration from the Theme Unit Test and created Block Unit Test with Gutenblock variations included. He is using the plugin while preparing the 20+ themes in his ThemeBeans catalog to support Gutenberg. He wrote the plugin to be extensible and made it open source on <a href=\"https://github.com/thatplugincompany/block-unit-test\" rel=\"noopener noreferrer\" target=\"_blank\">GitHub</a> for other developers and theme shops to use.</p>\n<p>Theme developers can install Block Unit Test as a first step towards making sure the front-end styles match the editor styles. This will be essential to making the transition process easier for new Gutenberg users once WordPress 5.0 ships. Tabor also published a tutorial for <a href=\"https://richtabor.com/add-wordpress-theme-styles-to-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">adding WordPress Theme Styles to Gutenberg</a> to help others get started.</p>\n<p>In getting his first theme compatible, Tabor said he relied heavily on the <a href=\"https://wordpress.org/gutenberg/handbook/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg Handbook</a>, as well as following discussions on the <a href=\"https://github.com/WordPress/gutenberg\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg GitHub repository</a>.</p>\n<p>&#8220;It’s not terribly difficult to add support for Gutenberg, although applying proper theme styles within the Gutenberg editor is a bit of task — there’s so much that can be accidentally overlooked,&#8221; Tabor said. &#8220;For the theme side of things, there wasn&#8217;t much technical leveling-up — though developing blocks is a different story. I did need to raise the bar and dive deeply into the world of Javascript, though looking at the block examples on the GitHub repository really helped me along.&#8221;</p>\n<p>Tabor said he started &#8220;living and breathing all things Gutenberg&#8221; after WordCamp US 2017, and began writing development articles while learning the ropes. He created several projects focused on the new editor, including <a href=\"https://writy.io/\" rel=\"noopener noreferrer\" target=\"_blank\">Writy</a>, a Gutenberg-centric writing experience for publishers, and <a href=\"https://richtabor.com/coblocks/\" rel=\"noopener noreferrer\" target=\"_blank\">Co-Blocks</a>, a beta suite of Gutenberg blocks for content marketers.</p>\n<p>&#8220;As a founder of a theme shop it was apparent that I needed to hone in on Gutenberg and level-up my knowledge, technical skills, and consequently my products, in order to compete in a post-Gutenberg era of WordPress,&#8221; Tabor said.</p>\n<p>&#8220;I believe the foundation of the future of WordPress lies in the success of Gutenberg. I use the new editor just about daily now. I know it’s a great move in the right direction and I’m doing my part to make sure folks using my themes can experience everything that Gutenberg has to offer.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Jul 2018 21:43:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Dev Blog: The Month in WordPress: June 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6087\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2018/07/the-month-in-wordpress-june-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4626:\"<p>With one of the two flagship WordCamp events taking place this month, as well as some important WordPress project announcements, there’s no shortage of news. Learn more about what happened in the WordPress community in June.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Another Successful WordCamp Europe</h2>\n\n<p>On June 14th, WordCamp Europe kicked off three days of learning and contributions in Belgrade. Over 2,000 people attended in person, with hundreds more watching live streams of the sessions.</p>\n\n<p>The WordCamp was a great success with plenty of first-time attendees and new WordPress contributors getting involved in the project and community. Recorded sessions from the 65 speakers at the event will be available on WordPress.tv in the coming weeks. In the meantime, check out the <a href=\"https://www.flickr.com/photos/wceu/albums\">photos from the event</a>.</p>\n\n<p><a href=\"https://2018.europe.wordcamp.org/2018/06/16/wordcamp-europe-2019/\">The next WordCamp Europe</a> takes place on June 20-22 2019 in Berlin, Germany. If you’re based in Europe and would like to serve on the organizing team, <a href=\"https://2019.europe.wordcamp.org/2018/06/16/call-wordcamp-europe-2019-organizers/\">fill in the application form</a>.</p>\n\n<h2>Updated Roadmap for the New WordPress Content Editor</h2>\n\n<p>During his keynote session at WordCamp Europe, Matt Mullenweg presented <a href=\"https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/\">an updated roadmap</a> for <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a>, the new content editor coming in WordPress 5.0.</p>\n\n<p>While the editor is in rapid development, <a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\">with v3.1 being released this past month</a>, the team is aiming to ship Gutenberg with WordPress Core in August, 2018. This is not set in stone — the release date may shift as development progresses — but this gives the first realistic idea of when we can expect the editor to be released.</p>\n\n<p>If you would like to contribute to Gutenberg, read <a href=\"https://wordpress.org/gutenberg/handbook/\">the handbook</a>, follow the <a href=\"https://make.wordpress.org/core/\">Core team blog</a>, and join the #core-editor channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>WordCamp Incubator Cities Announced</h2>\n\n<p>The WordCamp Incubator program helps spread WordPress to underserved communities by providing organizing support for their first WordCamp. The first iteration of this program ran successfully in 2016 and empowered three cities to start their own WordPress communities.</p>\n\n<p>This year, the Community Team is running the Incubator program again. After receiving applications from 104 communities, <a href=\"https://make.wordpress.org/community/2018/06/26/wordcamp-incubator-program-2018-locations-announcement/\">they have selected</a> Montevideo, Uruguay and Kota Kinabalu, Malaysia to participate in the program. Both cities will receive direct help from experienced WordCamp organizers to run their first-ever WordCamp as a way to help their WordPress community get started.</p>\n\n<p>To find out more about the Incubator program follow the <a href=\"https://make.wordpress.org/community/\">Community team blog</a>, and join the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n	<li>The WordPress community of Spain recently <a href=\"https://twitter.com/wp_es/status/1004681694660603904\">received an award</a> for being the best open-source community in the country.</li>\n	<li>This month, WordPress reached <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">the milestone of powering 31% of websites</a>.</li>\n	<li><a href=\"https://wprig.io/introducing-wprig-wordpress/\">WP Rig</a> is a brand new tool to help WordPress developers build better themes.</li>\n	<li><a href=\"https://richtabor.com/gutenberg-block-unit-test/\">Block Unit Test</a> is a new plugin to help theme developers prepare for Gutenberg.</li>\n	<li>Near the end of the month, Zac Gordon hosted <a href=\"https://javascriptforwp.com/conference/\">an online conference</a> focused on JavaScript development in WordPress &#8211; the session videos will be available on YouTube soon.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Jul 2018 09:28:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Matt: Work and Play\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48231\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://ma.tt/2018/06/work-and-play/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:527:\"<blockquote class=\"wp-block-quote\">\n	<p>A master in the art of living draws no sharp distinction between his work and his play; his labor and his leisure; his mind and his body; his education and his recreation. He hardly knows which is which. He simply pursues his vision of excellence through whatever he is doing, and leaves others to determine whether he is working or playing. To himself, he always appears to be doing both.</p>\n</blockquote>\n\n<p>Lawrence Pearsall Jacks in <em>Education through Recreation</em>, 1932</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 01 Jul 2018 01:13:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"Post Status: An Abundance of Acquisitions — Draft Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=46292\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://poststatus.com/an-abundance-of-acquisitions-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2301:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, the Brians have a chat about a number of different acquisitions that have occurred in the WordPress space over these past few weeks. Listen in as they unpack some of the news surrounding StudioPress, WPEngine, Automattic, WPNinjas, Prospress, and AutomateWoo. Check out our episode links for further stories about each of those businesses as well as the virtual JavaScript for WordPress conference taking place live on July 29.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://wpengine.com/blog/wp-engine-acquires-studiopress/\">WPEngine acquired StudioPress</a></li>\n<li><a href=\"https://poststatus.com/notes/automattic-acquries-atavist/\">Automattic acquired Atavist</a></li>\n<li><a href=\"http://ninjashop.site/open-letter-exchangewp/\">WPNinjas acquired ExchangeWP (formerly iThemes Exchange)</a></li>\n<li><a href=\"https://prospress.com/automatewoo-joins-prospress/\">Prospress acquires AutomateWoo</a></li>\n<li><a href=\"https://subscribe.me/\">Prospress announced Subscribe.me</a></li>\n<li><a href=\"https://javascriptforwp.com/conference/\">JSforWP Conf on Friday</a></li>\n<li><a href=\"https://2018.grandrapids.wordcamp.org\">WCGR on Saturday</a></li>\n<li><a href=\"https://florianziegler.com/wordcamp-europe-2018/\">WCEU Photos</a></li>\n</ul>\n<h3>Sponsor: Jilt</h3>\n<p><a href=\"https://jilt.com/?utm_source=Post+Status&utm_medium=banner&utm_campaign=Post+Status+Sponsorship\">Jilt</a> offers powerful email marketing built for eCommerce. Join thousands of stores that have already earned over $28,000,000 in extra sales using Jilt. <a href=\"https://jilt.com/?utm_source=Post+Status&utm_medium=banner&utm_campaign=Post+Status+Sponsorship\">Try Jilt for free</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Jun 2018 22:11:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: WCEU Panel Discusses Progressive WordPress Themes, AMP, and Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82078\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wptavern.com/wceu-panel-discusses-progressive-wordpress-themes-amp-and-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4940:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/progressive-themes-panel.png?ssl=1\"><img /></a></p>\n<p>Progressive themes was a hot topic at WordCamp Europe 2018. During the event I had the opportunity to set up a panel with four experts who are working to integrate progressive web development practices more deeply in WordPress core, plugins, and themes. These practices make it possible for a website (or app) to work offline, load quickly, deliver content on unreliable networks, and use device-specific features to provide a better experience for the user. The <a href=\"https://wptavern.com/wordcamp-europe-introduces-official-mobile-app-new-tech-for-on-site-badge-printing\" rel=\"noopener noreferrer\" target=\"_blank\">PWA (progressive web app) created for WordCamp Europe</a> is a good example of this in action.</p>\n<p><a href=\"https://twitter.com/TweetyThierry\" rel=\"noopener noreferrer\" target=\"_blank\">Thierry Muller</a>, <a href=\"https://twitter.com/iAlbMedina\" rel=\"noopener noreferrer\" target=\"_blank\">Alberto Medina</a>, <a href=\"https://twitter.com/westonruter\" rel=\"noopener noreferrer\" target=\"_blank\">Weston Ruter</a>, and <a href=\"https://twitter.com/mor10\" rel=\"noopener noreferrer\" target=\"_blank\">Morten Rand-Hendriksen</a> joined me for an interview, exploring the future of WordPress themes in the era of progressive web development. (see video below)</p>\n<p>&#8220;At the most abstract level, it&#8217;s all about user experience,&#8221; Medina said. &#8220;How do we maximize the pleasure that our users get when they use our websites? And delightfulness in this context means things like performance, speed, having content that isn&#8217;t blocked. If you think about themes built according to those principles, then we are basically seeking an awesome user experience in WordPress.&#8221;</p>\n<p>It&#8217;s not yet clear what this will look like for the WordPress theme landscape, as current solutions are somewhat fragmented. WordPress contributors are working to standardize progressive technologies in core so the ecosystem can collaborate better together.</p>\n<p>&#8220;There are many progressive themes being built these days,&#8221; Medina said. &#8220;One of the problems that is happening is that there is a lot of fragmentation. There&#8217;s a lot of plugins that are using service workers but in their own ways. What we want is to say, &#8216;This is the best way to do things,&#8217; this is a uniform API to do it, and then enable progressive theme developers to take advantage of the core functionality.&#8221;</p>\n<p>Currently, the prospect of setting up a WordPress site that uses progressive web technologies would be a daunting task for regular users, even if they are implementing existing solutions.</p>\n<p>&#8220;There&#8217;s also a user aspect of it, because the people for whom we design WordPress, plugins, and themes, are the people who actually publish their own content onto the web,&#8221; Rand-Hendriksen said. &#8220;There&#8217;s a really valid question in how much should they need to know about how the web works to be able to publish some content. When they spin up a WordPress site, should we impose on them to know that they need to add all these optimization plugins and do all this other stuff just to make the site work properly? How much of that can be offloaded onto the theme itself, or plugins, or even WordPress core?&#8221;</p>\n<p>The members of the panel are working together to on various projects and core contributions that will standardize the use of progressive enhancement technologies in WordPress.</p>\n<p>&#8220;The goal is to have a common API for service workers so that plugins and themes can each install their own logic, just like they can enqueue their own scripts today,&#8221; Ruter said. &#8220;Also to be able to enqueue their own service workers and then core can manage the combination of them, as well as having a common app manifest that plugins and themes can collaborate on and have a single output into the page.&#8221;</p>\n<p>This is how Rand-Hendriksen&#8217;s <a href=\"https://wprig.io/\" rel=\"noopener noreferrer\" target=\"_blank\">WP Rig starter theme</a> project came about &#8211; to help developers take advantage of these best practices in the meantime, without having to figure out how to put all the pieces together.</p>\n<p>&#8220;WP Rig gives you the platform to build a progressive theme that uses all the latest performance and WordPress best practices, in a convenient package, and over time it will evolve with these new progressive technologies,&#8221; Rand-Hendriksen said.</p>\n<p>We also discussed AMP and Gutenberg compatibility, <a href=\"https://core.trac.wordpress.org/ticket/43328\" rel=\"noopener noreferrer\" target=\"_blank\">core support for web app manifests</a>, and how the commercial theme industry will react to these new technologies. Check out the full interview in the video below.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Jun 2018 22:03:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WPWeekly Episode 322 – WP Engine Acquires StudioPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=82088&preview=true&preview_id=82088\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/wpweekly-episode-322-wp-engine-acquires-studiopress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2238:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I spend the first half of the show discussing WP Engine&#8217;s acquisition of StudioPress. We share reactions from social media, debate on whether it&#8217;s a good or bad thing for the WordPress ecosystem, and webhosts being at the top of the food chain.</p>\n<p>We also talk about a recent security vulnerability that was publicly disclosed, ProsPress acquires AutomateWoo, and the release of Tide beta 1. Also of note, we identified an issue that causes John&#8217;s audio to turn into static. His audio should be fixed in the next episode.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wpengine.com/blog/why-wp-engine-is-acquiring-studiopress/\">Why WP Engine is Acquiring StudioPress</a><br />\n<a href=\"https://studiopress.blog/announcement/\">An Important Announcement About the Future of StudioPress</a><br />\n<a href=\"https://techcrunch.com/2018/01/04/wp-engine-a-managed-wordpress-platform-raises-250m-from-silver-lake/\">WP Engine, a managed WordPress platform, raises $250M from Silver Lake</a><br />\n<a href=\"https://twitter.com/bgardner/status/1012011823279824901\">https://twitter.com/bgardner/status/1012011823279824901</a><br />\n<a href=\"https://automatewoo.com/blog/automatewoo-joins-prospress/\">AutomateWoo joins Prospress</a><br />\n<a href=\"https://prospress.com/automatewoo-joins-prospress/\">AutomateWoo joins Prospress to Further eCommerce Automation on WooCommerce</a><br />\n<a href=\"https://make.wordpress.org/tide/2018/06/26/announcing-tide-1-0-0-beta/\">Tide Beta 1 Released</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, July 4th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #322:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Jun 2018 01:21:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Drop It Plugin Brings Gifs and Unsplash Photos to Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81814\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/drop-it-plugin-brings-gifs-and-unsplash-photos-to-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2642:\"<p>If you&#8217;re writing all your posts in the new Gutenberg editor but don&#8217;t want to give up convenient access to your fancy gifs and stock images, the new <a href=\"https://wordpress.org/plugins/dropit/\" rel=\"noopener noreferrer\" target=\"_blank\">Drop It</a> plugin has you covered. <a href=\"https://twitter.com/riadbenguella\" rel=\"noopener noreferrer\" target=\"_blank\">Riad Benguella</a>, one of the engineers who is working on Gutenberg, created the plugin to offer one-click image insertion/upload from <a href=\"https://unsplash.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Unsplash.com</a>.</p>\n<p>Drop It adds a droplet icon to the Gutenberg sidebar that launches a search form for Unsplash.com or Giphy.com (a feature contributed by <a href=\"https://twitter.com/jmau111\" rel=\"noopener noreferrer\" target=\"_blank\">Julien Maury</a>). Users can click the &#8220;+&#8221; sign on the image or simply drag and drop it into the content area.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-28-at-1.14.10-PM.png?ssl=1\"><img /></a></p>\n<p>Drop It seamlessly connects Gutenberg to the Unsplash and Giphy libraries, putting hundreds of thousands of stock photos and gifs at your fingertips while composing in WordPress. In the earlier days of Unsplash, many of the same images were used all over the web, but over the past few years its library has grown to include more than 550,000 high-resolution photos.</p>\n<p>Check out this demo to see how how fast it is to search and insert images:</p>\n<p><a href=\"https://cloudup.com/cUCoAEcq9lG\"><img src=\"https://i2.wp.com/cldup.com/2HRQQ2GAg3.gif?resize=627%2C437&ssl=1\" alt=\"Drop it\" width=\"627\" height=\"437\" /></a></p>\n<p>Benguella originally created the plugin for a talk he gave at WPtech Lyon where he demonstrated <a href=\"https://riad.blog/2018/04/29/explorons-gutenberg-sous-le-capot-au-wptech-lyon/\" rel=\"noopener noreferrer\" target=\"_blank\">how plugin developers can make use of Gutenberg&#8217;s reusable modules</a>. His presentation and slides explore Gutenberg&#8217;s architecture and show how he created the Drop It plugin.</p>\n<p>Benguella said the Drop It plugin&#8217;s code is a good example of how developers can extend Gutenberg&#8217;s UI using “pinnable” sidebar plugins. It also shows how to use the Data module to access and update Gutenberg’s state (data).</p>\n<p>In the future, Benguella plans to add more sources for inserting media. He currently has a proof of concept for adding content from Google Docs and will add more depending on contributions from others and his availability to work on the plugin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 22:52:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"Matt: Automattic’s First New Board Member: General Ann Dunwoody\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48215\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://ma.tt/2018/06/automattics-first-new-board-member-general-ann-dunwoody/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8216:\"<img />\n\n<p>As Automattic keeps growing we’ve been bringing in a lot of talented people behind the scenes to help expand on our vision as we go from hundreds to thousands of colleagues, and hundreds of millions to billions in revenue. Recently, former New York Times digital executive Kinsey Wilson joined our team as <a href=\"https://www.poynter.org/news/one-time-npr-and-nyt-digital-chief-new-adventure-wordpress\">president of WordPress.com</a>, the Chief Design Officer of Axios <a href=\"http://www.alexislloyd.com/\">Alexis Lloyd</a> has joined <a href=\"https://twitter.com/alexislloyd/status/1006882661040877568?lang=en\">as head of Design Innovation</a>, the former CEO of Bluehost James Grierson is leading <a href=\"https://jetpack.com/\">Jetpack</a> partnerships, and today I&#8217;m excited to announce a change to my bosses, the board of directors.<br /></p>\n\n<p>Gen. Ann Dunwoody served for 37 years in the U.S. Army, and she is the first woman in U.S. Military history to achieve a four-star officer rank. She’s also the author of <a href=\"https://www.amazon.com/dp/0738217794\"><em>A Higher Standard: Leadership Strategies from America&#8217;s First Female Four-Star General</em></a>, a book I really loved and highly recommend. Automattic&#8217;s board has had no new members since its founding in 2005, so this is our first addition in 13 years. I became familiar with General Dunwoody&#8217;s work while researching distributed organizations outside of technology, which led me to the military, which led me to geek out on logistics, which led me to her book and eventually flying out to Florida to meet in person.<br /></p>\n\n<p>Below is a brief interview with Gen. Dunwoody &#8212; we chatted with her about global leadership, finding your passion, and building a business. <br /></p>\n\n<p><strong>We&#8217;re excited to have you onboard, General Dunwoody. It&#8217;s interesting &#8212; at Automattic we like to point out that we&#8217;re all over the globe (over 740 employees in more than 60 countries) but you oversaw 69,000 military and civilians across 140 countries! Were there any big leadership lessons from managing operations across such a wide range of distances, timezones, and cultures? </strong><br /><br /></p>\n\n<p>That’s a great question. When I started out as a young officer in the Army, the leadership philosophy that was espoused back then was “Leadership by walking around.” When you&#8217;re in charge of a platoon, a company or even a battalion or Brigade that is not globally dispersed this philosophy is very sound. When you’re running a global organization with 69,000 folks in 140 countries, you have to leverage technology to keep real-time communications flowing and keep leaders updated. I would host (with the leadership) a global video teleconference every Wednesday connecting every organization from Afghanistan, Kuwait, Iraq, Europe, etc. and sites &#8212; hundreds across the United States. Our headquarters  would provide an operational update and then we go around the globe to get update from from everyone &#8212; what&#8217;s going well, where they need help or additional resources. In the old days I think people believed information was power and often withheld information to use for personal advantage, but I believe shared information is power. By leveraging the power of the entire industrial base we could solve problems in real time. I still travelled around a lot to see our people, but it is not possible to keep everyone informed and in the loop with current operations without leveraging technology. <br /></p>\n\n<p><strong>I love your answer about &#8220;shared information is power.&#8221; Did you ever find it difficult to break down the silos and embrace that concept? </strong></p>\n\n<p>Oh my, yes. They weren’t just silos, they were silos with concertina wire around them!   Parochialism was rampant and everyone wanted their own system and own their own information. We had over 200 stand alone systems that didn’t talk to each other. So to field and design an enterprise IT system that leveraged systems with the needed information to support “foxhole to factory” was challenging and exciting. <br /></p>\n\n<p><strong>And how did you decide what technological means to communicate an idea or a directive, versus, say, meeting in-person? </strong></p>\n\n<p>I would say it depended on the idea. If it was personal, probably a phone call (one on one); if trying to generate support for an idea or transformational concept, meet in-person with my initiatives group to socialize the idea and get their input modifications and buy-in. Then Commanders conference to socialize idea with them, as they will have to implement it. Once socialized with leadership, we worldwide videoconference with the entire organization to define and describe the purpose, intent, how, and why &#8212; so everyone knew what we were trying to do and what their role was in execution. I found you cannot over-communicate when trying to make changes.<br /></p>\n\n<p><strong>It&#8217;s an incredible accomplishment to become the first woman in U.S. Military history to achieve the four-star officer rank. Can you tell me about how things changed (or maybe still need to change further) in terms of your experience during your 37 years of service, and how you addressed diversity and inclusion in the military? </strong><br /><br /></p>\n\n<p>First, I certainly didn’t accomplish this by myself &#8212; I had a lot of help along the way! I joined the Army as part of the Women’s Army Corps (WAC) back in 1975. A few years later they disestablished the WAC and began the integration of women into the regular Army. This was the first time women had the opportunity to have the same career opportunities as their male counterparts in the branches now open to women. The challenge for the women who came into the Army back then was to force the integration &#8212; fight being put into traditional jobs like being a secretary, admin, clerk, or cook &#8212; and fight to be platoon leaders, etc., to support and move the integration of women into the regular Army.</p>\n\n<p>What I witnessed during my time in the Army was that the doors continued to open. Yes, there were roadblocks &#8212; but there were also many leaders along the way who were willing to help. I never worked for a woman. I worked for men who either believed in me or didn’t. My experience in my almost four decades was that the doors continued to open for women. I thought jumping out of airplanes was really neat &#8212; now my niece in the USAF is an A-10 fighter pilot, and we have women graduating from Ranger school!  <br /></p>\n\n<p>On diversity, I realized that being the only female in many forums, my voice was hard to be heard. And I also realized that most folks promoted and surrounded themselves with people in their own image. What my philosophy was &#8212; and I still think it is an issue today &#8212; is that diversity is not about numbers, it’s about getting the best and brightest from all walks of life, to help leaders solve the very complex issues that face us today. Don’t surround yourself with only people that think or act or look like you. <br /></p>\n\n<p><strong>Who are the leaders that inspire you today? </strong></p>\n\n<p>I think we are products of our past &#8212; Mom and Dad, even though not here on earth, gave me the values that still guide me. Many of my military mentors, Gen. Hugh Shelton, Gen. Pete Schoomaker, Gen. Gordon Sullivan, Gen. Dick Cody, are still coaches and mentors to me today.  </p>\n\n<p>Folks I admire: Warren Buffett, only met him once but I like his concern for the betterment of our country; Oprah Winfrey, although I have never met her I admire her for what she does for our country how she presents herself and how she handles herself &#8212; awesome; Gen. Mattis &#8212; wow, I admire him for taking on this extremely tough assignment for the good of our country and our defense. Secretary Gates served two administrations, Republican and Democrat. <br /></p>\n\n<p>People that inspire me are people I believe are true leaders &#8212; valuing honesty and having the best interests of the country at heart. No hubris!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 19:54:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WPTavern: WP Engine Acquires StudioPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81948\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wptavern.com/wp-engine-acquires-studiopress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4332:\"<p><a href=\"https://www.studiopress.com/\">StudioPress</a>, founded by Brian Gardner in 2007, has been acquired <a href=\"https://wpengine.com/blog/wp-engine-acquires-studiopress/\">by managed WordPress hosting company WP Engine</a>, for an undisclosed amount. </p>\n\n<p>In 2007, Gardner created the Revolution theme which took the WordPress world by storm. According to some people, it ignited the WordPress Premium theme market. <br /></p>\n\n<img />\n	Revolution Church Theme \n\n\n<p>In the midst of a GPL debate regarding themes in 2008, Gardner <a href=\"https://www.briangardner.com/blog/revolution-going-open-source.htm\">decided to license</a> the Revolution theme <a href=\"https://web.archive.org/web/20081011070936/https://www.briangardner.com/blog/revolution-going-open-source.htm\">as 100% GPL</a>. In 2009, Gardner <a href=\"https://www.studiopress.com/revolution-rebrands-as-studiopress/\">rebranded Revolution</a> to StudioPress due to legal reasons. </p>\n\n<p>Early in 2010, <a href=\"https://www.studiopress.com/introducing-genesis-framework/\">StudioPress released the Genesis Framework</a>. This framework would go on to power thousands of themes and be the cornerstone of StudioPress&#8217; theme business. In 2010, StudioPress <a href=\"https://www.studiopress.com/studiopress-merges-into-copyblogger-media-llc/\">was merged into Copyblogger Media LLC</a>, which eventually went on to create the Rainmaker platform. </p>\n\n<p>Fast forward to 2018 and StudioPress has been acquired by <a href=\"https://wpengine.com/\">WP Engine</a>, a managed WordPress hosting company founded in 2010 that earlier this year, <a href=\"https://techcrunch.com/2018/01/04/wp-engine-a-managed-wordpress-platform-raises-250m-from-silver-lake/\">received $250M in venture capital funding</a> from Silver Lake.  </p>\n\n<p>According to Jason Cohen, founder of WP Engine, this is the largest acquisition in the company&#8217;s history.</p>\n\n<p>&#8220;In all, our contributions to the WordPress community in time, money, writing, coding and thought leadership totaled more than $1.7 million in 2017 and we’re already doing even more this year,&#8221; he said.<br /></p>\n\n<p>&#8220;As WP Engine continues to grow and scale, the way we give back to the WordPress community must grow and scale also, which was one of the deciding factors behind our acquisition of <a href=\"https://wpengine.com/blog/wp-engine-acquires-studiopress/\">StudioPress</a>—our largest acquisition in WP Engine’s history.&#8221;</p>\n\n<p>The company plans to heavily invest in the Genesis Framework community and ecosystem by hiring people to work on different aspects of the framework. Support will receive a boost as well as the ecosystem surrounding StudioPress&#8217; products. </p>\n\n<p>With Gutenberg on the horizon, Cohen says the Genesis Framework will be a shining example of what&#8217;s possible with WordPress&#8217; new editor. </p>\n\n<p>&#8220;There’s been plenty of concern about how Gutenberg will affect existing plugins and themes, so Genesis can serve as an example for how Gutenberg can work brilliantly,&#8221; Cohen said. </p>\n\n<p>&#8220;This directly advances the goals of WordPress Core. This precedent doesn’t stop with Gutenberg, either. Gutenberg is the transformation of today—there will be more tomorrow. While the topic of the day will change, the idea of supporting Core through themes and theme frameworks that support those efforts is an asset for the wider WordPress community.&#8221;</p>\n\n<p>Gardner will stay on board and be part of StudioPress&#8217; leadership team at WP Engine with an emphasis on product development and community. Nathan Rice along with the support team will transition to WP Engine with Rice continuing to serve as the lead developer of Genesis. </p>\n\n<p>Gardner admits that the acquisition is bittersweet, but that it&#8217;s a founding moment in the company&#8217;s history.</p>\n\n<p>&#8220;As my new colleague, Jason Cohen, the founder of WP Engine often says, &#8216;There are many founding moments in the history of a company.&#8217; This is one of those moments and I know it’s time for StudioPress to take the next step—and WP Engine is the right partner to take it with.&#8221;</p>\n\n<p>StudioPress customers can expect better support, more themes to choose from, and little to no disruption of service.  </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 08:11:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: Free “JavaScript for WordPress Conference” to Stream Live Friday, June 29\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81931\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wptavern.com/free-javascript-for-wordpress-conference-to-stream-live-friday-june-29\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3834:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/06/jsconf-2018.png?ssl=1\"><img /></a>JavaScript for WordPress conference\n<p>Zac Gordon is hosting a &#8220;<a href=\"https://javascriptforwp.com/conference/\" rel=\"noopener noreferrer\" target=\"_blank\">JavaScript for WordPress Conference</a>&#8221; with two tracks on Friday, June 29, from 9:30 AM &#8211; 5:30 PM EDT. The free conference, sponsored by <a href=\"https://10up.com/\" rel=\"noopener noreferrer\" target=\"_blank\">10up</a> and <a href=\"https://wpbuffs.com/\" rel=\"noopener noreferrer\" target=\"_blank\">WP Buffs</a>, includes a full day of online talks from JavaScript professionals who work in the WordPress ecosystem.</p>\n<p>Gordon will be streaming the talks live via Crowdcast. Approximately 1,300 seats have been reserved so far, a number that rivals most WordCamps. Unlike WordCamps, however, the entire schedule is focused around developer education, featuring more technical talks that are often missing from traditional WordPress events.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530150620973.png?ssl=1\"><img /></a></p>\n<p>&#8220;I figured there was an interest in more JS-specific WordPress content and, given my courses and getting to know some people working a lot with JavaScript, I figured I would give it a shot,&#8221; Gordon said.</p>\n<p>Gordon has been working for the past several years as a freelance educator after his former employer, Treehouse, <a href=\"https://wptavern.com/treehouse-drops-support-for-wordpress-education\" rel=\"noopener noreferrer\" target=\"_blank\">dropped support for WordPress education</a>. He said his first project, the JavaScript for WordPress Master Course, was a huge undertaking. He is not offering that course anymore but is instead focusing on smaller, more targeted courses on his site <a href=\"https://javascriptforwp.com/\" rel=\"noopener noreferrer\" target=\"_blank\">javascriptforwp.com</a>.</p>\n<p>&#8220;Most of my courses this year will be Gutenberg related (have one now and a theme course launching next week, followed by an Advanced one after that),&#8221; Gordon said. He has also done courses at Udemy, Frontend Master, WP Sessions, WP101, and some consulting with Udacity.</p>\n<p>&#8220;I&#8217;m still learning the right price points and packaging and size,&#8221; Gordon said. &#8220;A few companies have gotten group accounts for their teams which is really positive and encouraging for me.&#8221;</p>\n<p>Gordon took a deep dive into JavaScript education after Matt Mullenweg issued a challenge to &#8220;Learn JavaScript Deeply&#8221; during his <a href=\"https://wptavern.com/state-of-the-word-2015-javascript-and-api-driven-interfaces-are-the-future-of-wordpress\" rel=\"noopener noreferrer\" target=\"_blank\">2015 State of the Word</a> address. He said so far the courses he offers have been going well and the community seems to have embraced the challenge.</p>\n<p>&#8220;The funny thing about Learning JavaScript Deeply is that people will still be able to build things in Gutenberg and beyond without really knowing it deeply,&#8221; Gordon said. &#8220;However most in the community have already picked up React or delved deeper into Vanilla JavaScript, and those who haven&#8217;t I believe certainly will be in the coming months and years.</p>\n<p>&#8220;Now with React in Core and the rebuilding of many parts of the admin with JS, we will have more real practical reasons to heed Matt&#8217;s call than we did before.&#8221;</p>\n<p>If the &#8220;JavaScript for WordPress Conference&#8221; goes well, Gordon said he hopes to make it an annual event. He is also considering doing a free day of workshops. All the talks given during the conference on Friday will be recorded and Gordon plans to drip them out over the coming months on his YouTube channel.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2018 02:49:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: Gutenberg 3.1 Introduces Tips Interface to Guide New Users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81787\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wptavern.com/gutenberg-3-1-introduces-tips-interface-to-guide-new-users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3663:\"<p><a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg 3.1</a> added a tips interface that supports and guides new users who are learning to navigate the editor&#8217;s blocks and settings. The tips appear when a new user opens Gutenberg, highlighting useful items on the page.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530113565627.png?ssl=1\"><img /></a></p>\n<p>Although the tips may seem cluttered and intrusive to users who already know what they are doing, they are a necessary evil for introducing the UI to new users. Gutenberg is not yet intuitive enough to be able to stand on its own without explanation inside the interface.</p>\n<p><a href=\"https://10up.com/blog/2018/user-testing-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">10up recently conducted Gutenberg usability tests</a> that unearthed some startling realities about how new users interact with the new editor. The tests were done on previous versions of the plugin (2.9.2) with users who frequently create content using the classic WordPress editor. 10up asked testers, who have had no training on Gutenberg, to write a news-style blog post.</p>\n<p>One of the most surprising results was that participants struggled with the simple task of adding an image to a post.</p>\n<p>&#8220;Although the interface is clean, a lack of focused attention or hierarchy on the page became apparent,&#8221; 10up Experience Designer Sarah James said. &#8220;Participants struggled to complete tasks like adding an image that did not have a clearly exposed and labeled element like the title and paragraph fields. Heatmap tracking of the backend captured 734 unique clicks in the new post interface and only 40 of these clicks were on actual clickable elements. This suggests a struggle to find basic interactive elements, such as image blocks.&#8221;</p>\n<p>Participants also had a difficult time finding and inserting additional block types &#8211; several testers overlooked the “+” symbol that triggers interface for adding a new block.</p>\n<p>Gutenberg 3.0 and 3.1 have already improved on these pain points with changes that highlight common tasks. The 3.0 release <a href=\"https://github.com/WordPress/gutenberg/pull/6636\" rel=\"noopener noreferrer\" target=\"_blank\">redesigned the inserter, ditching tabs for collapsible panels</a>. This makes it more friendly for hunting among blocks. Version 3.1 includes a new design of the sibling inserter (the &#8220;+&#8221; symbol that appears to allow user to insert blocks between other blocks).</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/06/screely-1530126900744.png?ssl=1\"><img /></a></p>\n<p>In addition to improving usability issues with the inserter, Gutenberg 3.1 fixes some of the mechanics of previewing and saving posts. Users can now <a href=\"https://github.com/WordPress/gutenberg/pull/7189\" rel=\"noopener noreferrer\" target=\"_blank\">preview changes to a published post without updating the post</a>. The editor was also updated to trigger autosave as a standard save for a draft by the user currently authoring the post.</p>\n<p>HTML blocks that have been converted into shared blocks now show in preview mode, which makes it easier for users to see what they do and insert them visually. The code will only show if the user wants to edit the block.</p>\n<p>For a full list of the changes in 3.1, check out the <a href=\"https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/\" rel=\"noopener noreferrer\" target=\"_blank\">release post on make.wordpress.org</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2018 19:44:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"HeroPress: The Power Of WordCamps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2577\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"https://heropress.com/the-power-of-wordcamps/#utm_source=rss&utm_medium=rss&utm_campaign=the-power-of-wordcamps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3085:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2017/06/062117-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I was helping hundreds of people that were using WordPress for their business. That\'s powerful.\" /><p>WordCamps have a unique power to impact lives and careers. Without people and community, WordPress is simply software. But when you add in a large group of passionate people, people who are and are interested, everything changes. There&#8217;s excitement, encouragement, and education. Entrepreneurship can be a long and lonely road. Having a solid support community can make all the difference, and WordCamps can be a huge shot in the arm.</p>\n<p>This week&#8217;s HeroPress replay is by Juan Hernando from <a href=\"https://www.google.com/maps/place/Pontevedra%2C+Spain/@42.6208401,-8.572101599999996,5z/\">Pontevedra, Spain</a>. His essay details his journey from an unknown member of his local WordPress community to being a leader in that same community.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/becoming-known-wordpress-community/\">Becoming Known in the WordPress Community</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: The Power Of WordCamps\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=The%20Power%20Of%20WordCamps&via=heropress&url=https%3A%2F%2Fheropress.com%2Fthe-power-of-wordcamps%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: The Power Of WordCamps\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fthe-power-of-wordcamps%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fthe-power-of-wordcamps%2F&title=The+Power+Of+WordCamps\" rel=\"nofollow\" target=\"_blank\" title=\"Share: The Power Of WordCamps\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/the-power-of-wordcamps/&media=https://heropress.com/wp-content/uploads/2017/06/062117-150x150.jpg&description=The Power Of WordCamps\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: The Power Of WordCamps\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/the-power-of-wordcamps/\" title=\"The Power Of WordCamps\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/the-power-of-wordcamps/\">The Power Of WordCamps</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2018 13:04:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"WPTavern: TaxJar to Host Free Webinar June 27: Tax Experts Answer Questions on State Tax Compliance for Online Stores\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81886\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://wptavern.com/taxjar-to-host-free-webinar-june-27-tax-experts-answer-questions-on-state-tax-compliance-for-online-stores\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3544:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-26-at-4.10.19-PM.png?ssl=1\"><img /></a></p>\n<p><a href=\"https://www.taxjar.com/\" rel=\"noopener noreferrer\" target=\"_blank\">TaxJar</a>, a company that offers automated sales tax software, is hosting a <a href=\"https://www.crowdcast.io/e/supreme-court-taxjar\" rel=\"noopener noreferrer\" target=\"_blank\">free webinar June 27</a> at 11:30 AM CDT to answer questions regarding the U.S. Supreme Court&#8217;s decision on <a href=\"http://www.scotusblog.com/2018/06/opinion-analysis-court-expands-states-ability-to-require-internet-retailers-to-collect-sales-tax/\" rel=\"noopener noreferrer\" target=\"_blank\">South Dakota v. Wayfair</a>. The court ruled in favor of South Dakota on June 21st, 2018, allowing any state to require online sellers to collect taxes for sales made from customers in that state.</p>\n<p>The provisions identified in the South Dakota vs. Wayfair ruling identifies retailers making $100K+ or 200+ transactions in the state as having an &#8220;economic presence&#8221; that would require out-of-state retailers to render sales tax. However, it&#8217;s not yet clear how other states will measure sales tax liability.</p>\n<p>TaxJar has gathered a panel of tax experts to discuss the requirements of the new sales tax compliance burden for online businesses. Nearly 2,000 people are currently signed up to tune in and attendees can also <a href=\"https://www.crowdcast.io/e/supreme-court-taxjar\" rel=\"noopener noreferrer\" target=\"_blank\">submit questions</a> in advance. A few popular questions submitted so far include:</p>\n<p><em>&#8220;How will we know which states we are required to pay taxes in, and do we have to create accounts in every state and pay for returns in all 50?&#8221;</em></p>\n<p><em>&#8220;I read that South Dakota, Colorado and Louisiana have a threshold of 100K in sales in their state to start collecting taxes. Is this really the case, and where can we find the threshold for other states?&#8221;</em></p>\n<p><em>&#8220;Does each state that wants to participate have to pass a law like South Dakota or is this now automatic for all states with a sales tax?&#8221;</em></p>\n<p>WooCommerce has created <a href=\"https://woocommerce.com/2018/06/woocommerce-sales-tax-for-the-us-how-to-enable-automated-calculations-and-filing/\" rel=\"noopener noreferrer\" target=\"_blank\">a guide to help users set up and collect taxes</a> as required by the tax jurisdiction where their stores are located. Online store owners in the US and Canada can set enable automated tax calculations using either the WooCommerce Tax or TaxJar add-ons (both free), depending on whether the merchant operates within a single tax nexus or multiple nexus locations.</p>\n<p>Automatic sales tax calculations are also available for merchants using Easy Digital Downloads. Pippin Williamson built <a href=\"https://wordpress.org/plugins/edd-taxjar/\" rel=\"noopener noreferrer\" target=\"_blank\">a free integration for EDD and TaxJar</a> that passes all tax rate determinations to TaxJar to calculate automatically, eliminating the need for manual tax rate entry.</p>\n<p>The Supreme Court&#8217;s ruling is very new and many state-specific details are yet to be worked out, but state legislatures are likely to be highly motivated and eager to rake in this new source of revenue. The <a href=\"https://blog.taxjar.com/\" rel=\"noopener noreferrer\" target=\"_blank\">TaxJar blog</a> will be a good source for updates as more compliance information becomes available.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Jun 2018 21:26:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Interview with Matías Ventura on Building the Vision for Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81807\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/interview-with-matias-ventura-on-building-the-vision-for-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2952:\"<p>At WordCamp Europe I had the opportunity to sit down with <a href=\"https://matiasventura.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Matías Ventura</a>, the technical lead for Gutenberg. Ventura, who has been responsible for building the vision for Gutenberg (in addition to building the actual product), shared a few things the team might have done differently in the earlier days to improve its reception in the community.</p>\n<p>&#8220;I think we should have put a little bit more effort into clarifying what we meant by the &#8216;editor,\'&#8221; Ventura said. &#8220;When Matt announced that we&#8217;re going to be focusing on the editor, the WordPress community generally took it that we were going to focus on TinyMCE. But the idea from the start was to focus on the editing experience as a whole, how a user perceives that, which is the whole page. I think it took some time to rectify that that was always what was meant &#8211; to look at the whole editing interface at once.</p>\n<p>&#8220;With some of these projects people are going to be in different places at different times and things will coalesce and make sense at different paces. I think we&#8217;ve gotten to a point now where we have built enough of the Gutenberg vision that we can see where it can lead us.&#8221;</p>\n<p>Several representatives from the Gutenberg team were available at WordCamp Europe for informal chats with the community. They also conducted workshops and gave presentations to prepare designers and developers for what&#8217;s coming in the next few months. Momentum for the new editor is building and Ventura shared what he hopes the world will see when version 1 is included in core.</p>\n<p>&#8220;The thing that has been the most fulfilling, at least to me, has been seeing the regular users when they can use Gutenberg and build things that would have been very hard for them to do before,&#8221; Ventura said. &#8220;When they share those impressions &#8211; that they can build something that they are proud of and express themselves &#8211; to me that is the most fulfilling because that&#8217;s really one of the major points behind this. At the same time, I&#8217;m really looking forward to seeing what the design and developer community can build with it and where their imaginations can take us from there. Core is going to supply the infrastructure and the main building blocks but it&#8217;s everything that can be built around it that&#8217;s going to be exciting, as always with WordPress.&#8221;</p>\n<p>Ventura also described some of the interesting possibilities of templates, nested blocks, and child blocks, and how they can be combined to create more sophisticated solutions. He recommends the <a href=\"https://wordpress.org/gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress.org/Gutenberg</a> page for resources on getting started with the new editor. Check out the video below for the full interview.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 22:59:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: Three Minute Movie Showcases The WordCamp EU 2018 Experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81821\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/three-minute-movie-showcases-the-wordcamp-eu-2018-experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:741:\"<p>If you happened to <a href=\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\">miss out on WordCamp EU</a> this year, check out the following short film produced by <a href=\"https://www.facebook.com/Production-Pool-402255476588176/\">Production Pool</a>. Production Pool is a video production company based in Belgrade, Serbia that was hired to record all of the videos and wrap up the live stream for WordCamp Europe.</p>\n\n<p>The video is just shy of three minutes in length, highlights the size and scope of the event, and is well produced. You can almost feel what it was like to be an attendee.</p>\n\n<p>How many people can you name in the video?<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 21:28:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Matt: Mass Unsubscribe Mailchimp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48190\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://ma.tt/2018/06/mass-unsubscribe-mailchimp/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1082:\"<p>I&#8217;m a huge fan of <a href=\"https://mailchimp.com/\">Mailchimp</a>, but <em>dang</em> does the service get abused by folks aggressively opting you into mailing lists. I have a very early, very generic Gmail address that people put as a filler address into every possible service and it gets tens of thousands of list and spam mails. A good trick to find and unsubscribe from all the Mailchimp lists you&#8217;re on is to search for <code>mcsv.net</code> and then select all, report as spam, and unsubscribe. Gmail doesn&#8217;t deal well when the unsubscribe list is taller than your screen, so you may need to hit <code>command + -</code> a few times to make it all fit. Also <a href=\"https://www.facebook.com/mailchimp/posts/10152104546810777\">according to this post</a>, &#8220;you can also get in touch with our compliance team directly at <a href=\"mailto:compliance@mailchimp.com\">compliance@mailchimp.com</a> with the email address you would like to remove from all lists and they will be happy to further assist you there as well.&#8221; I will try that as well.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jun 2018 15:19:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Atavist &amp; Automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48169\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://ma.tt/2018/06/atavist-automattic/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:884:\"<img />\n\n<p>As <a href=\"https://www.wsj.com/articles/wordpress-com-owner-buys-atavist-maker-of-subscription-offering-publishing-software-1529597700?mod=searchresults&page=1&pos=1\">reported by the Wall Street Journal</a>, and <a href=\"https://en.blog.wordpress.com/2018/06/21/atavist-joins-wordpress-dot-com/\">an interview about on the WP.com blog</a>, Automattic has acquired the <a href=\"https://atavist.com/\">Atavist platform</a>, <a href=\"https://magazine.atavist.com/\">magazine</a>, and team. Looking forward to working alongside the team: we&#8217;re keeping the magazine going and it&#8217;ll complement <a href=\"https://longreads.com/\">Longreads</a>, and integrating the best of the platform&#8217;s CMS and publisher features into WordPress.com and Jetpack and after that&#8217;s done providing an upgrade path so all of its publishers can move to being WordPress-powered.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 19:14:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"WPTavern: Matt Mullenweg Unveils Gutenberg Roadmap at WCEU, WordPress Agencies and Product Developers Sprint to Prepare\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://wptavern.com/matt-mullenweg-unveils-gutenberg-roadmap-at-wceu-wordpress-agencies-and-product-developers-sprint-to-prepare\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11163:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/06/matt-keynote-wceu-2018.jpg?ssl=1\"><img /></a>photo credit: WordCamp Europe Photography Team\n<p>At his WCEU keynote address in Belgrade, Matt Mullenweg laid out a detailed roadmap for Gutenberg to land in WordPress 5.0 within the next few months, garnering mixed reactions from attendees. Gutenberg&#8217;s timeline is one of the most pressing questions for those who work in the WordPress ecosystem.</p>\n<p>The Gutenberg team has sustained a rapid pace of development over the past year with 30 releases since development began. There are currently 14,000 sites actively using the plugin and Mullenweg plans to roll it out to WordPress.com users in the near future. He announced that the WordPress 5.0 release could be ready as soon as August. In the meantime, the Gutenberg team will continue to refine its current features according to the roadmap Mullenweg outlined in his keynote:</p>\n<p><strong>June 2018</strong></p>\n<ul>\n<li>Freeze new features into Gutenberg</li>\n<li>Hosts, agencies and teachers invited to opt-in sites they have influence over</li>\n<li>Opt-in for wp-admin users on WP.com</li>\n<li>Mobile App support in the Aztec editor across iOs and Android</li>\n</ul>\n<p><strong>July 2018</strong></p>\n<ul>\n<li>4.9.x release with a strong invitation to install either Gutenberg or Classic Editor plugin</li>\n<li>Opt-out for wp-admin users on WP.com</li>\n<li>Heavy triage and bug gardening, getting blockers to zero</li>\n<li>Explore expanding Gutenberg beyond the post into site customization</li>\n</ul>\n<p><strong>August 2018 and beyond</strong></p>\n<ul>\n<li>All critical issues resolved</li>\n<li>Integration with Calypso, offering opt-in users</li>\n<li>100k+ sites having makde 250k+ post using Gutenberg</li>\n<li>Core merge, beginning the 5.0 release cycle</li>\n<li>5.0 beta releases and translations completed</li>\n<li>Mobile version of Gutenberg by the end of the year</li>\n</ul>\n<p>Mullenweg said he hopes to increase Gutenberg usage to 100,000 sites with 250,000 posts made over the next few months. WordPress.com will be instrumental in that goal with a call to action for opt-in that will appear on several hundred thousand sites. In July, WordPress.com will switch the Gutenberg editor to opt-out. Mullenweg said he hopes to gather data from how users respond, especially those who have third-party plugins active on their sites.</p>\n<p>Switching between editing posts in the mobile apps currently breaks but Mullenweg anticipates this will be resolved by August, with full mobile versions of Gutenberg available by the end of the year.</p>\n<p>Mullenweg opened his keynote by drawing attendees&#8217; attention to a new &#8220;<a href=\"https://publiccode.eu/\" rel=\"noopener noreferrer\" target=\"_blank\">Public Code</a>&#8221; link in the footer of WordPress.org. This campaign, organized by <a href=\"https://fsfe.org/index.en.html\" rel=\"noopener noreferrer\" target=\"_blank\">Free Software Foundation Europe</a>, aims to require any publicly financed software developed for the public sector be made available under a Free and Open Source Software license.</p>\n<p>Mullenweg also announced St. Louis, MO, as the next location for WordCamp US in 2019-2020. The local WordPress community in the city spans two states with members from both Missouri and Illinois who have hosted seven WordCamps since 2011.</p>\n<h3>Developers and Agencies Double Down on Gutenberg Preparation, &#8220;Playing for Keeps&#8221;</h3>\n<p>The process of getting products and client websites ready for Gutenberg is a leap for nearly every company and freelancer invested in the WordPress ecosystem. Mullenweg said he cannot guarantee a specific date for release but thinks that &#8220;5.0 is going be ready within a relatively short time frame.&#8221;</p>\n<p>Although many WCEU attendees expressed skepticism about the accelerated timeline for Gutenberg&#8217;s inclusion in core, most recognize the importance of working towards making their clients and products compatible with the new editor.</p>\n<p>Gutenberg technical lead <a href=\"https://matiasventura.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Matias Ventura</a> said it&#8217;s too early to tell whether the WordPress community will be ready by the time Gutenberg is included in core. &#8220;I think people have already been trying to get ready and we&#8217;re already seeing many major sites being launched using Gutenberg,&#8221; Ventura said. &#8220;From what we&#8217;ve seen with plugin authors building compatibility for Gutenberg, it seems there&#8217;s already enough momentum going on that it could be achievable.&#8221;</p>\n<p>Brad Williams, CEO of WebDevStudios, said his company&#8217;s team of engineers has been <a href=\"https://webdevstudios.com/2018/03/20/webdevstudios-gutenberg-planning-wordpress/\">actively preparing for Gutenberg</a> since late last year and is &#8220;very excited about what it means for the future of WordPress publishing.&#8221; Williams assigned two Gutenberg Leads internally to head up everything related to the new editor and conducted internal training with staff. WebDevStudios also built and released its own Gutenberg add-on framework called <a href=\"https://github.com/WebDevStudios/WDS-Blocks/releases\">WDS Blocks</a>, a framework that includes new custom blocks that many WDS clients use.</p>\n<p>&#8220;Having a potential release date, even if it’s only a target month, is incredibly helpful,&#8221; Williams said. &#8220;This gives us a goal to work towards with each of our clients to verify we are ready for the release. I expect the majority of our clients will not enable Gutenberg on release, but we still need to make sure we have an upgrade plan ready for WordPress 5.0. We are working closely with each of our clients so they understand what is coming, the benefits Gutenberg can provide them, and what a potential roll-out plan will look like. We are also making sure any new leads coming in the door are aware of Gutenberg and the impact it will have on their new WordPress project.&#8221;</p>\n<p>Gary Jones, plugin developer and WordPress engineer at <a href=\"https://gamajo.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Gamajo</a>, expressed apprehension about the timeline. He also plans to make use of the <a href=\"https://wordpress.org/plugins/classic-editor/\" rel=\"noopener noreferrer\" target=\"_blank\">Classic Editor</a> plugin to opt sites out of using Gutenberg.</p>\n<p>&#8220;With 737 open issues, I think the August timeline may still be a little short,&#8221; Jones said. &#8220;That&#8217;s only for the &#8216;critical issues&#8217; to be resolved but introducing such a massive change to the basics of managing content like this needs more than just the critical issues resolved; it needs all of the workflow to be very smooth as well.&#8221;</p>\n<p>Jones said he doesn&#8217;t think the typical rhetoric of getting a &#8216;1.0&#8217; release out the door applies in the case of Gutenberg. &#8220;There&#8217;s too much riding on it for it not to make a great first impression for the user base who haven&#8217;t been following its progress,&#8221; Jones said. &#8220;A plugin can have a much quicker release turnaround time for non-critical improvements and fixes than what WP core would have.&#8221;</p>\n<p>Jones said he plans to wait until the merge proposal before tackling plugin compatibility and will wait until 5.0 is out to start improving the experience for his clients. He said this may require creating custom blocks or installing plugins that add custom blocks clients might need. &#8220;By then we&#8217;d also know how ACF, Pods. and other plugins we use, and the Genesis theme, are supporting Gutenberg editor (or not),&#8221; Jones said.</p>\n<p>Jake Goldman, President and founder of <a href=\"https://10up.com/\" rel=\"noopener noreferrer\" target=\"_blank\">10up</a>, said his company already has an internal mandate that all new public plugins and major plugin updates must have at least &#8220;beta&#8221; support for Gutenberg. 10up&#8217;s <a href=\"https://distributorplugin.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Distributor</a> product is already Gutenberg-ready and the company has several Gutenberg-ready plugins and updates expected to ship in the next 1-2 months.</p>\n<p>&#8220;Clients are trickier,&#8221; Goldman said. &#8220;We have two big client projects started in the last couple of months that are using Gutenberg, and some pretty complicated custom blocks and extensions. We have a couple of other customers who are curious or in the exploratory phase. Two big client projects have us a bit gun shy about adopting [Gutenberg] as the &#8216;standard&#8217; on newer projects until it matures a bit more and begins to focus a bit more on the &#8216;enterprise use case / user stories&#8217; &#8211; there are some real challenges with those user stories.&#8221;</p>\n<p>Goldman also said he was encouraged to hear that Calypso will adopt Gutenberg in the next couple of months, because he hopes it will address some of the confusion and fragmentation issues.</p>\n<p>He doesn&#8217;t anticipate Gutenberg actually landing in August, however. &#8220;I don’t see August, frankly, because I don’t think the core team has a clear vision for &#8216;how&#8217; an upgrade with Gutenberg will work,&#8221; Goldman said. &#8220;That said, I suspect Matt is knowingly putting timeline pressure on the team &#8211; a bit of &#8216;if I say August, we can probably hit November&#8217; type mentality.&#8221;</p>\n<p>Mason James, founder of <a href=\"https://www.valet.io/\">Valet</a>, said he is confident his clients and products will be ready after testing Gutenberg on hundreds of sites. His team is watching a few products that have compatibility issues but he is hopeful these will be resolved soon.</p>\n<p>&#8220;The timeline of August seems a bit optimistic,&#8221; James said. &#8220;I’d be surprised if that is met, but our clients will be in good shape if that happens. We’ve also been sending information to our clients via email, a whitepaper, to try to mitigate any surprises ahead of time.</p>\n<p>&#8220;We decided last year that Gutenberg was a tremendous opportunity for us to reinforce our value proposition to our clients,&#8221; James said. &#8220;It’s an ongoing important initiative for us this year; We&#8217;re playing for keeps.&#8221;</p>\n<p><a href=\"https://thefearlessfreelancer.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Carrie Dils</a>, a WordPress developer, consultant, and educator, has also jumped head first into getting her products compatible with Gutenberg ahead of the new timeline.</p>\n<p>&#8220;I’m feverishly working to get an updated version of the <a href=\"https://store.carriedils.com/downloads/utility-pro/\" rel=\"noopener noreferrer\" target=\"_blank\">Utility Pro theme</a> (my primary product) out the door,&#8221; Dils said. &#8220;The Gutenberg updates are just one part of a larger overhaul (including a minimum requirement of PHP7 and WP 5.0+). I’ve also made the decision not to incorporate Classic Editor theme styles. All looking forward, no looking back.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 16:37:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Matt: WordPress in Uber\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48160\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://ma.tt/2018/06/wordpress-in-uber/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:923:\"<p>I really love this thread and the replies sharing stories about Val Vesa&#8217;s experience talking about WordPress in an Uber / Lyft ride:</p>\n\n\n	<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">My <a href=\"https://twitter.com/Uber?ref_src=twsrc%5Etfw\">@Uber</a> driver last night, going home from airport asked me where was I coming from.<br />Told here about <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a><br />&#8211; what is that, she asked.<br />&#8211; the European Conference for <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a>, I said.<br />Her eyes sparkling, she grabbed the wheel firm, looked in the rear view mirror at me and said,</p>&mdash; Val Vesa | Social Media &amp; Travel Photography (@adspedia) <a href=\"https://twitter.com/adspedia/status/1008782561638801413?ref_src=twsrc%5Etfw\">June 18, 2018</a></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 05:20:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WPWeekly Episode 321 – Recap of WordCamp EU 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81758&preview=true&preview_id=81758\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/wpweekly-episode-321-recap-of-wordcamp-eu-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1901:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"https://lanche86.com/\">Milan Ivanović</a> who helped organize WordCamp EU in Belgrade, Serbia this past weekend. Ivanović describes what it was like to organize such a large event, challenges the team overcame, and a few details related to WordCamp EU 2019 that will be held in Berlin, Germany. John and I finished the show discussing Matt Mullenweg&#8217;s keynote presentation and Gutenberg&#8217;s proposed timeline.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/gutenberg-team-panel-talks-release-timeline-theme-building-and-customization-at-wceu\">Gutenberg Team Panel Talks Release Timeline, Theme Building, and Customization at WCEU</a><br />\n<a href=\"https://wptavern.com/wordcamp-europe-2018-contributor-day-posts-record-turnout-amid-wi-fi-outage\">WordCamp Europe 2018 Contributor Day Posts Record Turnout Amid Wi-Fi Outage</a><br />\n<a href=\"https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/\">Mullenweg announced Gutenberg Roadmap</a><br />\n<a href=\"https://wptavern.com/wp-rig-a-wordpress-starter-theme-and-build-process-in-one\">WP Rig – A WordPress Starter Theme and Build Process in One</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 27th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #321:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jun 2018 01:31:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"HeroPress: Proving Geography Doesn’t Matter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/proving-geography-doesnt-matter/#utm_source=rss&utm_medium=rss&utm_campaign=proving-geography-doesnt-matter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3698:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/08/082416-Uriahs-Victor-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Time passed, and I fell more and more in love with WordPress.\" /><p><img class=\"alignright size-full wp-image-2574\" src=\"https://s20094.pcdn.co/wp-content/uploads/2019/06/Screen-Shot-2018-06-20-at-10.16.54-AM.png\" alt=\"Map of Kansas with St. Lucia overlaid.\" width=\"403\" height=\"273\" />Almost exactly two years ago I was looking at Google Analytics Realtime and someone from St. Lucia popped up.  St. Lucia isn&#8217;t a very big place. In the map on the right you can see a little pink dot in the center.  That&#8217;s the size of St. Lucia compared to Kansas. The entire country has fewer people than my city. I wondered who that was, so I tweeted out to the world, asking if anyone knew who that might be. A friend from Themeisle said &#8220;Our man Uriahs lives there, maybe it&#8217;s him!&#8221;</p>\n<p>I looked up Uriahs, and sure enough, it was him! I was fascinated to learn what a WordPress community would look like on an island that size. As it turns out, he&#8217;s fairly alone in WordPress geographically. When I met him, he had never been off his tiny island in the Caribbean.</p>\n<p>Uriahs&#8217; essay is about learning and finding a career in a global workspace, having a GOOD job, all while living someplace where that job didn&#8217;t even exist.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/minority-amongst-minorities/\">A Minority Amongst Minorities</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Proving Geography Doesn&#8217;t Matter\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Proving%20Geography%20Doesn%27t%20Matter&via=heropress&url=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Proving Geography Doesn&#8217;t Matter\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fproving-geography-doesnt-matter%2F&title=Proving+Geography+Doesn%26%238217%3Bt+Matter\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Proving Geography Doesn&#8217;t Matter\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/proving-geography-doesnt-matter/&media=https://heropress.com/wp-content/uploads/2016/08/082416-Uriahs-Victor-150x150.jpg&description=Proving Geography Doesn\'t Matter\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Proving Geography Doesn&#8217;t Matter\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/proving-geography-doesnt-matter/\" title=\"Proving Geography Doesn&#8217;t Matter\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/proving-geography-doesnt-matter/\">Proving Geography Doesn&#8217;t Matter</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Jun 2018 14:06:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Matt: Link Roundup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48154\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://ma.tt/2018/06/link-roundup/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3688:\"<ul>\n	<li><a href=\"https://www.theatlantic.com/family/archive/2018/06/imagining-a-better-boyhood/562232/\">The Atlantic on today&#8217;s masculinity being stifling and imagining a better boyhood</a>.<br />.<br /><a href=\"https://www.newyorker.com/magazine/2018/01/15/when-deportation-is-a-death-sentence\"></a></li>\n	<li><a href=\"https://www.newyorker.com/magazine/2018/01/15/when-deportation-is-a-death-sentence\">When Deportation is a Death Sentence</a> is one of the most devastating articles I&#8217;ve read in a long time. <br /><a href=\"https://www.nytimes.com/2018/04/11/arts/design/cy-twombly-review-gagosian-gallery.html\"></a></li>\n	<li><a href=\"https://www.nytimes.com/2018/04/11/arts/design/cy-twombly-review-gagosian-gallery.html\">A review of the Cy Twombly show</a>, he has an amazing museum in Houston and I enjoy learning more about him.<br /><a href=\"http://thephilosophersmail.com/perspective/the-great-anthropologists-margaret-mead/\"></a></li>\n	<li><a href=\"http://thephilosophersmail.com/perspective/the-great-anthropologists-margaret-mead/\">The Great Anthropologists: Margaret Mead</a>, so fascinating.<br /><a href=\"https://nypost.com/2018/06/02/dating-columnist-reveals-how-sex-and-the-city-ruined-her-life/amp/\"></a></li>\n	<li><a href=\"https://nypost.com/2018/06/02/dating-columnist-reveals-how-sex-and-the-city-ruined-her-life/amp/\">Dating columnist reveals how ‘Sex and the City’ ruined her life</a>, has a happy ending.<br /><a href=\"https://magazine.atavist.com/barbearians-at-the-gate-new-hampshire-libertarians-fake-news\"></a></li>\n	<li><a href=\"https://magazine.atavist.com/barbearians-at-the-gate-new-hampshire-libertarians-fake-news\">Barbearians at the Gate</a> &#8220;A journey through a quixotic New Hampshire town teeming with libertarians, fake news, guns, and—possibly—furry invaders.&#8221; Amazing.<br /><a href=\"https://www.vogue.com/article/lena-dunham-break-up-vogue-june-2018\"></a></li>\n	<li><a href=\"https://www.vogue.com/article/lena-dunham-break-up-vogue-june-2018\">Lena Dunham Explores Alone Time After a Break-Up</a><br /><br /><a href=\"https://www.nytimes.com/interactive/2018/05/15/magazine/health-issue-my-adventures-with-hallucinogenic-drugs-medicine.html\"></a></li>\n	<li><a href=\"https://www.nytimes.com/interactive/2018/05/15/magazine/health-issue-my-adventures-with-hallucinogenic-drugs-medicine.html\">My Adventures with the Trip Doctors</a>, aka &#8220;Michael Pollan takes psychedelics.&#8221; See also: <a href=\"https://longreads.com/2018/05/30/michael-pollan-on-why-its-a-good-idea-to-lose-your-self/\">Interview with Longreads</a>.<br />.<br /><a href=\"https://pitchfork.com/thepitch/kanye-west-and-why-the-myth-of-genius-must-die/\"></a></li>\n	<li><a href=\"https://pitchfork.com/thepitch/kanye-west-and-why-the-myth-of-genius-must-die/\">Kanye West and Why the Myth of “Genius” Must Die</a>.<br />.<br /><a href=\"https://www.newyorker.com/magazine/2017/02/27/why-facts-dont-change-our-minds\"></a></li>\n	<li><a href=\"https://www.newyorker.com/magazine/2017/02/27/why-facts-dont-change-our-minds\">Why Facts Don&#8217;t Change Our Minds</a>, also well-covered in a great book I just finished, <a href=\"https://www.amazon.com/dp/B00SI0B8XC/\">Black Box Thinking</a>.<br />.<br /><a href=\"http://2012.dconstruct.org/conference/burke/transcript/\"></a></li>\n	<li><a href=\"http://2012.dconstruct.org/conference/burke/transcript/\">Admiral Shovel and the Toilet Roll</a> — wow.<br /><a href=\"https://www.fs.blog/2013/04/the-work-required-to-have-an-opinion/\"></a></li>\n	<li><a href=\"https://www.fs.blog/2013/04/the-work-required-to-have-an-opinion/\">The Work Required to Have an Opinion</a>, wisdom from Charlie Munger.</li>\n</ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 22:24:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.0.8 of the Akismet WordPress Plugin Is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=2023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/06/19/version-4-0-8-of-the-akismet-wordpress-plugin-is-now-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:784:\"<p>Version 4.0.8 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available.</p>\n<p>4.0.8 contains the following changes:</p>\n<ul>\n<li>Improved the grammar and consistency of the in-admin privacy related notes (notice and config).</li>\n<li>Revised in-admin explanation of the comment form privacy notice to make its usage clearer.</li>\n<li>Added <code>rel=”nofollow noopener”</code> to the comment form privacy notice to improve SEO and security.</li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 18:35:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Josh Smith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Mark Jaquith: Making ScoutDocs: Build Tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5665\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://markjaquith.wordpress.com/2018/06/19/making-scoutdocs-build-tools/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2928:\"<p>Continuing my series about <a href=\"https://wordpress.org/plugins/scoutdocs/\">ScoutDocs</a> and the process of building it, this week I&#8217;m talking about <strong>Build Tools</strong>.</p>\n<p><img /><em>What is <a href=\"https://scoutdocs.com/\">ScoutDocs</a>? ScoutDocs is a WordPress plugin that adds simple file-sharing to your WordPress site.</em></p>\n<p>Coding in React involves JSX, a bizarre-but-wonderful XML syntax that you dump directly into the middle of your JavaScript code. It feels exquisitely wrong. Browsers agree, so your JSX-containing JS code will have to be transpiled to regular JavaScript. This can involve using a complex maze of tools. Babel, NPM, Webpack, Browserify, Gulp, Grunt, Uglify, Uglifyify (yes, you read that right), and more. You have decisions to make, and you will find fierce advocates for various solutions.</p>\n<p>For ScoutDocs, I decided to go with <a href=\"https://gruntjs.com/\">Grunt</a> for task running, because I was already comfortable with it, and I needed it for <a href=\"https://www.npmjs.com/package/grunt-wp-deployhttps://www.npmjs.com/package/grunt-wp-deploy\">grunt-wp-deploy</a>. <b>Use a task runner you are already comfortable with.</b> Even if it is just NPM scripts. You’re learning a lot of new things already. It’s okay to keep your task runner setup.</p>\n<p>Next, I had to choose a JS bundler which would let me write and use modular code that gets pulled together into a browser-executable bundle. After deliberating between <a href=\"https://webpack.js.org\">Webpack</a> and <a href=\"http://browserify.org/\">Browserify</a>, I chose Browserify. <b>Webpack is really complicated.</b> It is also very powerful. I recommend you avoid it until you need it. I haven’t needed it yet, and found Browserify to be easier to configure and use, even though it’s a bit on the slow side.</p>\n<p>As I was building ScoutDocs and tweaking my dev tools, tweaking my Grunt file, and writing code to search/replace strings etc, I began to feel like the time I was spending too much time on tooling. Was I becoming one of those people who spend all their time listening to productivity podcasts instead of… being productive? I can see how someone could get sucked into that trap, but putting a reasonable amount of time into configuring your development tools can pay dividends for you beyond simply the time saved. It can also prevent mistakes, keep you in coding mode more often, and increasing your confidence in your code builds. <b>Spend the time up front to make your tools work for you.</b></p>\n<p>Other posts in this series:</p>\n<ul>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/\">Outsourcing</a></li>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react\">React</a></li>\n<li>WordPress Rest API</li>\n<li>PHP 7</li>\n<li>Build tools</li>\n<li>Unit testing</li>\n</ul>\n<p>&nbsp;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 17:59:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: WP Rig – A WordPress Starter Theme and Build Process in One\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81618\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/wp-rig-a-wordpress-starter-theme-and-build-process-in-one\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3750:\"<p><a href=\"http://mor10.com/\">Morten Rand-Hendricksen</a>, Senior Staff Instructor at <a href=\"https://www.linkedin.com/learning/\">LinkedIn Learning</a>, has released <a href=\"https://wprig.io/\">WP Rig</a>. WP Rig is a WordPress starter theme and build process combined into one. The starter theme provides a minimal set of templates with the ability to drag-and-drop files from the <a href=\"https://developer.wordpress.org/themes/basics/template-hierarchy/\">WordPress template hierarchy</a>.</p>\n\n<p>It contains a heavily optimized code and file structure, support for lazy-loading images, and documented helper functions. The build process requires no configuration and provides a modern foundation to develop on top of. </p>\n\n<p>Although WP Rig ships with a starter theme, the build process works with any theme you choose to use. WP Rig uses <a href=\"https://gulpjs.com/\">Gulp</a> to manage and optimize files, <a href=\"https://browsersync.io/\">BrowserSync</a> to immediately preview from inside the browser, and ES2015 to parse JavaScript. <a href=\"https://babeljs.io/\">Babel</a>, <a href=\"https://github.com/postcss/postcss\">PostCSS</a>, and <a href=\"http://cssnext.io/\">CSSNext</a> is used to parse CSS. The <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards\">WordPress Coding Standards</a> and <a href=\"https://eslint.org/\">ESLint</a> are used to check code quality. </p>\n\n<p><a href=\"https://code.visualstudio.com/\">VS Code</a> is tightly integrated with WP Rig but developers can use any code editor they choose. </p>\n\n<p>Rand-Hendriksen says the goal of the project is to provide a starting point where developers can write accessible and performant code from the start using best practices. <br /></p>\n\n<p>&#8220;WordPress and the web it lives on has evolved,&#8221; he said. &#8220;So have the tools we use to build experiences and interactions on and with the web. WordPress theme development is no longer &#8216;just&#8217; about writing PHP and CSS and JavaScript. </p>\n\n<p>&#8220;It’s also about accessibility and build processes and coding standards and performance best practices and and modern coding languages and browser support and a myriad of other topics.</p>\n\n<p>&#8220;WP Rig bridges this gap by building accessibility, performance, coding standards, and modern coding best practices in by default.&#8221;</p>\n\n<p>LinkedIn Learning donated Rand-Hendriksen&#8217;s time to WP Rig. In collaboration with <a href=\"https://xwp.co/\">XWP</a>, <a href=\"https://medinathoughts.com/2018/05/17/progressive-wordpress/\">Google</a>, and other members of the WordPress community, it was released as an open source project that is maintained by him and <a href=\"https://github.com/bamadesigner\">Rachel Cherry</a>. <br /></p>\n\n<p>&#8220;It is not owned or branded by any company, nor beholden to a company goal or ideology,&#8221; he said. &#8220;The purpose and goal of WP Rig is to provide the WordPress community with a theme development rig that puts accessibility, performance, and modern best practices in the front seat to the benefit of the end-user and the web as a whole.&#8221;</p>\n\n<p>You can download WP Rig for free <a href=\"https://wprig.io\">from the project&#8217;s site</a> or <a href=\"https://github.com/wprig/wprig/\">on GitHub</a>. To learn how to use it, LinkedIn Learning is offering a free course entitled &#8220;<a href=\"https://wprig.io/learn/\">Build WordPress Themes with WP Rig</a>.&#8221; The course covers a myriad of topics including, configuring the VS Code workpace settings, Templates, and AMP integration. </p>\n\n<p>For more information about WP Rig check out the <a href=\"https://wprig.io/introducing-wprig-wordpress/\">project&#8217;s official announcement</a>. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jun 2018 01:19:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WordCamp Europe 2018 Contributor Day Posts Record Turnout Amid Wi-Fi Outage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81514\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://wptavern.com/wordcamp-europe-2018-contributor-day-posts-record-turnout-amid-wi-fi-outage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7440:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/wceu-2018-contributor-day.jpg?ssl=1\"><img /></a></p>\n<p>WordCamp Europe hosted a successful contributor day in Belgrade despite a wi-fi outage during the first half of the day. The event posted record numbers with 529 attendees registered to contribute across 24 teams.</p>\n<p>Contributors had the opportunity to make connections and conversations with team members and representatives from other teams while the wi-fi was down.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Had the chance to meet <a href=\"https://twitter.com/aaroncampbell?ref_src=twsrc%5Etfw\">@aaroncampbell</a> and discuss WordPress core security with him and a couple of attendees on <a href=\"https://twitter.com/hashtag/wceu?src=hash&ref_src=twsrc%5Etfw\">#wceu</a> contributor day. Thanks for the amazing chat folks!</p>\n<p>It is my first WordCamp Europe and it definitely won\'t be the last!</p>\n<p>&mdash; Bojidar Valchovski (@bdvalchovski) <a href=\"https://twitter.com/bdvalchovski/status/1007306648862494720?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Had an awesome <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> contributor day today. Had some great conversations and made good progress on a few patches to improve the development experience despite the WiFi issues. Was also very proud to see SIX <a href=\"https://twitter.com/yoast?ref_src=twsrc%5Etfw\">@Yoast</a>\'ers lead different contributor teams! <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> <a href=\"https://twitter.com/hashtag/family?src=hash&ref_src=twsrc%5Etfw\">#family</a></p>\n<p>&mdash; Omar Reiss (@OmarReiss) <a href=\"https://twitter.com/OmarReiss/status/1007291207171616768?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<p>Contributors submitted patches and made more progress online later in the day when the wi-fi resumed.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">So proud of the WordPress Coding Standards team at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> contributor day. Look at all the patches which are flooding in!!!!<a href=\"https://twitter.com/FlipKeijzer?ref_src=twsrc%5Etfw\">@flipkeijzer</a> <a href=\"https://twitter.com/GaryJ?ref_src=twsrc%5Etfw\">@GaryJ</a> <a href=\"https://twitter.com/fimdalinha?ref_src=twsrc%5Etfw\">@fimdalinha</a> <a href=\"https://twitter.com/Wonderm00n?ref_src=twsrc%5Etfw\">@Wonderm00n</a> <a href=\"https://twitter.com/Niq1982?ref_src=twsrc%5Etfw\">@niq1982</a> <a href=\"https://twitter.com/moorscode?ref_src=twsrc%5Etfw\">@moorscode</a> <a href=\"https://twitter.com/vladilie94?ref_src=twsrc%5Etfw\">@vladilie94</a> <a href=\"https://twitter.com/MCiufudean?ref_src=twsrc%5Etfw\">@MCiufudean</a> <a href=\"https://t.co/lchrR4ZmHX\">pic.twitter.com/lchrR4ZmHX</a></p>\n<p>&mdash; Juliette (@jrf_nl) <a href=\"https://twitter.com/jrf_nl/status/1007263406838173697?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Look at all these lovely people contributing to <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> Contributor Day <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.4/72x72/2764.png\" alt=\"❤\" class=\"wp-smiley\" /></p>\n<p>Thank you, you rock! <a href=\"https://t.co/LtRlyolYPL\">pic.twitter.com/LtRlyolYPL</a></p>\n<p>&mdash; Milana Cap (@DjevaLoperka) <a href=\"https://twitter.com/DjevaLoperka/status/1007164509197357056?ref_src=twsrc%5Etfw\">June 14, 2018</a></p></blockquote>\n<p></p>\n<p>Attendees worked on a variety of different projects from improving the project&#8217;s coding standards to documenting best practices for hosts working with WordPress.</p>\n<p><a href=\"https://twitter.com/EvangeliaPappas\" rel=\"noopener noreferrer\" target=\"_blank\">Evangelia Pappa</a> traveled from Greece to attend her first WordCamp Europe, joining the community team to get answers about helping her local deaf community.</p>\n<p>&#8220;In my country you have a lot of deaf people who want to attend WordCamp and also the meetups that we do for the Greek WP community,&#8221; Pappa said. &#8220;We have found a way to assist them while they are at WordCamps with sign language, but are still struggling with meetups, so I am trying to find answers here in order to help other members of the community.&#8221;</p>\n<p><a href=\"http://twitter.com/rociovaldi\" rel=\"noopener noreferrer\" target=\"_blank\">Rocío Valdivia</a> traveled from Spain to attend her 6th WordCamp Europe and also joined the Community Team for contributor day, creating documentation and mentoring WordCamp organizers.</p>\n<p>&#8220;I&#8217;ve been having a meeting with the WordCamp Nordic organizing team,&#8221; Valdivia said. &#8220;We are talking about the next WordCamp Nordic, a large regional WordCamp, that will be held next year in Helsinki in March.&#8221;</p>\n<p>The Hosting team was also able to work, despite the wi-fi outage, bringing together representatives from different countries and hosting companies.</p>\n<p>&#8220;We&#8217;ve been going through and writing some best practices and documentation,&#8221; <a href=\"http://twitter.com/GetSource\" rel=\"noopener noreferrer\" target=\"_blank\">Michael Schroder</a> said. &#8220;We&#8217;ve been making some good progress on the performance area of the docs, so I feel pretty good about getting some of that committed today.&#8221;</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">The Contribution Area is being put to good use at <a href=\"https://twitter.com/hashtag/WCEU?src=hash&ref_src=twsrc%5Etfw\">#WCEU</a> . First time we’re using a dedicated room to allow for a continuance of Contributor Day. <a href=\"https://t.co/lTgR8OdLBf\">pic.twitter.com/lTgR8OdLBf</a></p>\n<p>&mdash; Remkus de Vries (@DeFries) <a href=\"https://twitter.com/DeFries/status/1007628138522861568?ref_src=twsrc%5Etfw\">June 15, 2018</a></p></blockquote>\n<p></p>\n<p>For the first time, WordCamp Europe also set aside a spacious, designated room for attendees who wanted to continue collaborating on contributions during the main conference.</p>\n<p>Wifi outages are a common occurrence at WordCamp Contributor days. While many attendees I spoke with said they were frustrated and inconvenienced by the inability to be productive, others expressed happy sentiments about the opportunity to be together in one place.</p>\n<p>&#8220;The most important thing about contributor day is talking to people, getting to know each other, face timing in real life,&#8221; Polyglots team lead <a href=\"http://twitter.com/petyeah\" rel=\"noopener noreferrer\" target=\"_blank\">Petya Raykovska</a> said. &#8220;These are always very useful connections to have, learning everybody&#8217;s name, asking questions about their experience contributing, and them asking you questions about general experience with the team. It&#8217;s actually been great. I feel like it&#8217;s given people a chance to talk to each other. No time is lost in contributor day, really.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 18 Jun 2018 11:23:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"Post Status: Productizing your service business, with Brian Casel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=46103\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://poststatus.com/productizing-your-service-business-with-brian-casel/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2663:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian is joined by guest-host <a href=\"https://twitter.com/casjam\">Brian Casel</a>. Brian runs <a href=\"https://audienceops.com/\">Audience Ops</a>, a productized service that offers all aspects of content creation for companies. Brian has been in the WordPress community for a long time, and for years has worked on creating processes around his business to enable him to get beyond a freelancer work life and into treating services like products.</p>\n<p>Before Audience Ops, he ran Restuarant Engine &#8212; a niche WordPress site provider, where he really honed many of the processes his company still uses today &#8212; which he sold for six figures.</p>\n<p>We dig in to why he decided to make a transformation with his businesses to be so process oriented, and how he turned that into the 30-person organization it is today, as well as the various courses and communities around Productize and Scale.</p>\n<p>By the way, if you like this interview, Brian has an active job posting on Post Status for a <a href=\"https://poststatus.com/job/audience-ops-united-states-1899-writer-for-blog-content-covering-wordpress-web-dev-business-topics/\">blog content writer for Audience Ops</a>.</p>\n<p>&nbsp;</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://audienceops.com/\">Audience Ops</a></li>\n<li><a href=\"https://productizeandscale.com/\">Productize and Scale</a> newsletter</li>\n<li><a href=\"http://productizepodcast.com/\">Productize Podcast</a></li>\n<li><a href=\"https://productizecourse.com/\">Productize Course</a></li>\n<li><a href=\"https://restaurantengine.com/\">Restaurant Engine</a></li>\n<li><a href=\"http://opscalendar.com/\">Ops Calendar</a></li>\n<li><a href=\"http://www.tropicalmba.com/dc/\">Tropical MBA DC</a></li>\n</ul>\n<h3>Sponsor: Yoast</h3>\n<p>Yoast SEO Premium gives you 24/7 support from a great support team and extra features such as a redirect manager, recommended internal links, tutorial videos and integration with Google Webmaster Tools! Check out <a href=\"https://yoast.com/\">Yoast SEO Premium</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Jun 2018 18:11:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"WPTavern: Gutenberg Team Panel Talks Release Timeline, Theme Building, and Customization at WCEU\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81546\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://wptavern.com/gutenberg-team-panel-talks-release-timeline-theme-building-and-customization-at-wceu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5847:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/06/gutenberg-workshop.jpg?ssl=1\"><img /></a></p>\n<p>The Gutenberg team took questions from a full room users and developers this morning before diving into the specifics of the editor&#8217;s design, block creation, and how to further extend the new interface. The first question they addressed is the one everyone is asking: When will Gutenberg land in core?</p>\n<p>The team said the editor is pretty close to feature complete and should achieve that in the next few months when version 3.3 is released. At that point the focus will be on refining the current experience. They estimate this to happen in June or the first week of July but also hinted at more information coming in Matt Mullenweg&#8217;s keynote address this afternoon.</p>\n<p>Developers also asked about the criteria that will be used to decide that Gutenberg is ready for a WordPress release. The project has a <a href=\"https://github.com/WordPress/gutenberg/issues/4894\" rel=\"noopener noreferrer\" target=\"_blank\">scope and features MVP issue on GitHub</a> that provides an overview for the major functionality that will be introduced in the first version of the new editor. It shows which features have already been shipped and which ones are remaining.</p>\n<p>The team explained that many of the final features have come from developer and user feedback. Some features were not necessarily planned for V1, but it became more apparent that these were needed because they improved either the developer or user experience. For example, within the past four or five months the team found that the child blocks would be necessary to allow developers to be more expressive in extending the editor. A few of the remaining issues include inline images and post locking for concurrent users, but the team doesn&#8217;t anticipate any major new features on the horizon before V1 is released.</p>\n<p>Gutenberg engineers also assured workshop attendees that the project is being built with backwards compatibility in mind. One person asked what will happen when the 5.0 release lands. The team explained that the Gutenberg update will not change all the content on WordPress sites. When users open a post in the editor they will have the option to convert that content to block format so it will work with the new editor. If it doesn&#8217;t quite work, users be able to fall back to the classic editor.</p>\n<p>The team said they took great lengths not to alter how WordPress deals with data. Gutenberg does not change the content structure. One of the cornerstones for the project is providing an update that will not fragment the content structure. There will be a lot of resources available ahead of the release for helping everyone move forward together.</p>\n<p>Gutenberg engineers said they are working to be conscious not to delay the project, because the longer the delay, the more potential users WordPress is losing because the software is not easy enough for them to build and customize content and websites.</p>\n<h3>How Will Theme Building Change with Gutenberg?</h3>\n<p>Gutenberg designers and engineers also tackled questions about how the new editor will change the theme building experience. Design lead Tammie Lister emphasized the importance of theme developers first getting better at creating themes that do not try to do everything. The basic purpose of a theme is to style the frontend and provide an editor style. One potential way forward for theme developers is to provide additional features by releasing a suite of blocks via a plugin. Lister said she hopes that themes will become a lot lighter in the Gutenberg era and encouraged developers to utilize style guides.</p>\n<p>The team also said that existing themes will continue to function and redesigning a theming API, without the hassle of editing a bunch of PHP files, may be possible in the future. However, it&#8217;s too early to know what that will look like. For now, the rendering engine is not changing. Theme developers interested in Gutenberg compatibility should start looking towards deconstructing their themes into individual elements and learn how to express a theme as a list of blocks.</p>\n<h3>How Will Gutenberg Handle Customization?</h3>\n<p>Attendees asked several questions regarding the specific plan to implement customization, or live previewing, after Gutenberg is in core. The current phase 1 handles content editing and puts the infrastructure in place to support customization. There are some issues on GitHub for transforming widgets into blocks, which will be a step towards the site building experience. The team has already implemented direct manipulation on the WYSIWYG road but phase 2 will cover more aspects of customization.</p>\n<p>Gutenberg is not ready to replace the Customizer anytime soon, but the next phase will explore what a block-based experience of customization will look like. When asked if Gutenberg will &#8220;kill off some of the page builders,&#8221; the team said the goal is for page building type applications to be able to use Gutenberg as a springboard for different implementations that extend the editor in ways that benefit different types of users.</p>\n<p>An attendee asked how the team plans to enhance adoption once Gutenberg lands in core. The team said they are working on an experimental feature called &#8216;tips&#8217; that offers a story walkthrough of the publishing workflow. It includes helpful nudges to assist users in getting better at navigating the interface. The wider ecosystem has already responded with courses and tutorials to help developers get on board. The WordPress training team is also working on some training materials to use at WordCamps with tutorials for developers to learn how to convert existing plugins and themes to be Gutenberg-ready.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Jun 2018 11:18:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: WPWeekly Episode 320 – Building a Sustainable Web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=81508&preview=true&preview_id=81508\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/wpweekly-episode-320-building-a-sustainable-web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1741:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by Jack Lenox, Software Engineer at Automattic, to discuss his new project, <a href=\"https://sustywp.com/\">SustyWP</a>. Lenox explains how he built the site so that it only has 7KB of data transfer, what sustainability on the web means to him, and the relationship between sustainability and optimization to create a better user experience. We end the show discussing the latest WordPress headlines and share information on how you can watch WordCamp EU for free.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://www.wordfence.com/blog/2018/06/babayaga-wordpress-malware/\">BabaYaga: The WordPress Malware That Eats Other Malware</a><br />\n<a href=\"https://blog.threatpress.com/vulnerable-wordpress-plugins-multidots/\">Ten WordPress Plugins By Multidots For WooCommerce Identified As Vulnerable And Dangerous</a><br />\n<a href=\"https://wptavern.com/plugin-detective-wins-wordcamp-orange-county-2018-plugin-a-palooza\">Plugin Detective Wins WordCamp Orange County’s 2018 Plugin-a-Palooza</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 20th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #320:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2018 02:04:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: Watch WordCamp EU for Free via Livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81466\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/watch-wordcamp-eu-for-free-via-livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:889:\"<p><a href=\"https://2018.europe.wordcamp.org/\">WordCamp EU 2018</a> is scheduled to take place this weekend in Belgrade, Serbia. Although the event is sold out, you can watch the event for free via livestream. Simply visit the WCEU <a href=\"https://2018.europe.wordcamp.org/tickets/\">tickets page</a> and register a livestream ticket.</p>\n\n<p>Sessions begin on Friday, June 15th. To see a list of sessions and speakers, check out the <a href=\"https://2018.europe.wordcamp.org/schedule/\">event&#8217;s schedule</a>. Note that there is a six hour time difference between Eastern Daylight Time and Belgrade, Serbia. </p>\n\n<p>As we near the halfway point of 2018 and no imminent release of WordPress 5.0 on the horizon, it will be interesting to see what information is shared during <a href=\"https://2018.europe.wordcamp.org/session/matt-on-wordpress/\">Matt Mullenweg&#8217;s keynote.</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2018 00:35:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"HeroPress: By Helping Others, I Save Myself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2568\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/by-helping-others-i-save-myself/#utm_source=rss&utm_medium=rss&utm_campaign=by-helping-others-i-save-myself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3397:\"<img width=\"960\" height=\"547\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/05/osmi-1024x583.png\" class=\"attachment-large size-large wp-post-image\" alt=\"Banner for OSMI, Open Sourcing Mental Illness\" /><p>I think I met Ed Finkler at WordCamp Milwaukee in 2016. It was at the speaker dinner, and he sat across from me for a while. He seemed like a pretty normal WordPress developer and several weeks later I asked him to do a HeroPress essay. His answer surprised me. &#8220;Well sure, that sounds pretty cool, aside from the fact that I don&#8217;t really do WordPress anymore&#8221;.</p>\n<p>As it turns out, he had mostly retired from active WordPress development. His every day world was now filled with working in different frameworks and languages, amongst people who help WordPress in disdain. But Ed&#8217;s view fascinated me. For all that he was working with more modern frameworks, WordPress is what made him a great developer. The empathy and compassion for the user that WordPress holds so dearly carried over into the rest of his life.</p>\n<p>So what was he doing at WordCamp? Spreading the word about his cool new organization, which I will leave for you to read about.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/wordpress-taught-better-developer/\">How WordPress Taught Me To Be a Better Developer</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: By Helping Others, I Save Myself\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=By%20Helping%20Others%2C%20I%20Save%20Myself&via=heropress&url=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: By Helping Others, I Save Myself\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fby-helping-others-i-save-myself%2F&title=By+Helping+Others%2C+I+Save+Myself\" rel=\"nofollow\" target=\"_blank\" title=\"Share: By Helping Others, I Save Myself\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/by-helping-others-i-save-myself/&media=https://heropress.com/wp-content/uploads/2016/05/osmi-150x150.png&description=By Helping Others, I Save Myself\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: By Helping Others, I Save Myself\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/by-helping-others-i-save-myself/\" title=\"By Helping Others, I Save Myself\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/by-helping-others-i-save-myself/\">By Helping Others, I Save Myself</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Jun 2018 13:14:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: Plugin Detective Wins WordCamp Orange County’s 2018 Plugin-a-Palooza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81315\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/plugin-detective-wins-wordcamp-orange-county-2018-plugin-a-palooza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3482:\"<p><a href=\"https://2018.oc.wordcamp.org/\">WordCamp Orange County</a>, CA, took place this past weekend and the winners of the <a href=\"https://wptavern.com/wordcamp-orange-county-plugin-a-palooza-first-place-prize-is-3000\">Plugin-a-Palooza</a> have been crowned. <a href=\"https://profiles.wordpress.org/croixhaug\">Nathan Tyler</a> and <a href=\"https://profiles.wordpress.org/nataliemac\">Natalie MacLees</a> took the first place prize of $3,000 with their submission, <a href=\"https://wordpress.org/plugins/plugin-detective/\">Plugin Detective</a>.</p>\n\n<img />\n	Creating a new case in Plugin Detective\n\n\n<p>When it comes to troubleshooting WordPress, disabling and re-enabling plugins is one of the first steps in the process. This is time consuming and involves browsing to the plugin management page multiple times to turn a plugin on or off.</p>\n\n<p>Plugin Detective simplifies the process by quickly identifying the culprit. Once installed, a Troubleshooting quick link is added to the WordPress Toolbar. From here, users can open or continue a case. When a case is opened, a bot named Detective Otto asks users to navigate to the page where the problem is occurring.</p>\n\n<p>After the location is identified, users inform Detective Otto which plugins are required for the site to function properly. Interrogations is the act of of disabling and enabling plugins. Multiple interrogation attempts are made until the culprit is identified through the process of elimination. The following video does a great job of explaining and showing how it works. <br /></p>\n\n\n	<div class=\"embed-vimeo\"></div>\n\n\n<p>It can also be used to <a href=\"https://wordpress.org/plugins/plugin-detective/#i%20just%20see%20errors%20or%20a%20white%20screen.%20can%20i%20still%20use%20plugin%20detective%20to%20troubleshoot%20what%E2%80%99s%20gone%20wrong%3F\">identify and fix</a> White Screen of Death errors caused by plugins.<br /></p>\n\n<p>Plugin Detective is partly inspired by a software program from the 90s called <a href=\"https://en.wikipedia.org/wiki/Conflict_Catcher\">Conflict Catcher</a>.</p>\n\n<p>&#8220;I used &#8216;Conflict Catcher&#8217; to troubleshoot conflicts between system extensions on my Mac,&#8221; Tyler said. &#8220;I thought the concept was cool and would often run it for fun to try to figure out how it worked. Eventually, I learned that the computer science concept is a &#8216;binary search.&#8217;</p>\n\n<p>&#8220;Applying the concept to WordPress plugins seemed like a good approach to the plugin conflict problem we all experience.&#8221;</p>\n\n<p>Tyler developed the functionality and MacLees is credited with the plugin&#8217;s design, user experience, JavaScript, API calls, etc. The duo plan to establish relationships with plugin authors to help get them better bug reports. <br />><br /><br /><br /><br /><br />&#8220;Basically, if an author opts-in, we can help the end-user file a support ticket right there in Plugin Detective after we&#8217;ve identified the problem,&#8221; he said. &#8220;The support team gets a helpful bug report with notes from the customer, along with system information, other installed plugins, active theme, etc.&#8221;</p>\n\n<p>If you troubleshoot sites often or want an easier way to figure out which plugin is causing a conflict, consider adding Plugin Detective to your toolkit. Plugin Detective is free and <a href=\"https://wordpress.org/plugins/plugin-detective/\">available for download</a> from the WordPress plugin directory. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Jun 2018 02:12:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Matt: Other Cultures\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48139\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://ma.tt/2018/06/other-cultures/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:311:\"<blockquote class=\"wp-block-quote\">\n	<p>As the traveller who has once been from home is wiser than he who has never left his own doorstep, so a knowledge of one other culture should sharpen our ability to scrutinize more steadily, to appreciate more lovingly, our own.</p><cite>Margaret Mead</cite></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Jun 2018 23:35:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: WordCamp Europe Introduces Official Mobile App, New Tech for On-site Badge Printing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=81001\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/wordcamp-europe-introduces-official-mobile-app-new-tech-for-on-site-badge-printing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4132:\"<img />\n\n<p>WordCamp Europe debuted its new <a href=\"https://app.wp-europe.org/\">official mobile app</a> today, providing attendees with a quick way to access the event’s schedule, maps, and announcements. Several unofficial apps have popped up over the years, but this is the first one produced and supported by WCEU organizers.</p>\n\n<p>The team opted for creating a PWA (Progressive Web App), which loads inside a mobile browser while offering an experience similar to native apps. It’s also far less complicated than supporting multiple platform-specific mobile apps. Users don’t have to download anything, since it is loaded via the browser, and the site can be accessed offline in case of network failure. <br /></p>\n\n<img />\n\n<p>The app was built using React on the frontend and is hosted on a node server. It uses WordPress for content management on the backend, along with the <a href=\"https://wordpress.org/plugins/wp-pwa/\">WordPress PWA</a> plugin and <a href=\"https://wordpress.org/plugins/onesignal-free-web-push-notifications/\">OneSignal Push Notifications ﻿</a>.</p>\n\n<p>“This first iteration isn’t scalable for the community, but we wanted to test the possibilities and have the opportunity to explore what it would take to eventually make this available for all WordCamps,” WCEU team leader Jenny Beaumont said. “It’s a lofty goal, and we’re not there yet, but we’ve learned a lot along the way and looking forward to pursuing the ambition.”</p>\n\n<p>Attendees can expect to find any last minute schedule changes in the app and may also opt to receive push notifications for important updates. The Favorites feature lets users to bookmark all the sessions they plan to attend and toggle them into view.</p>\n\n<img />\n\n<p>WCEU’s official PWA is lightweight and re-usable &#8211; it can easily be updated to display content for future editions of the WordCamp.</p>\n\n<p>“We’ll only need to update our feeds, since WordCamps are issued a new website every year, but the basic functionality will be in place and can be developed on as browsers offer better support and new team members join the team with their great ideas,” Beaumont said. </p>\n\n<p>The current theme is open source and available on GitHub. It can be rebranded for future events to reflect the design for that year and city. Beaumont said the long term goal is to have a PWA generated directly from WordCamp sites. </p>\n\n<h3>New Tech for Badges Generates a Barcode for Sponsors to Scan</h3>\n\n<p>The technology for badge creation will be getting an overhaul as well this year. WCEU organizers are renting the materials from a <a href=\"https://www.azavista.com/\">Azavista</a>, a Dutch event management company that provides badges, badge printers and scanning devices (iPhones). The new tech will make it more efficient for volunteers to process more than 2,000 attendees at registration.</p>\n\n<p>The badge scanners also streamline attendee interaction with sponsors, replacing the signup sheets and tablets that sponsors usually have for collecting attendee information. </p>\n\n<p>“It’s tied to attendees’ Attendee ID number, created when attendees register on our WordCamp site,” Beaumont said. “Say an attendee is visiting a sponsor booth and having a nice conversation, the sponsor can ask if they’d like to leave their name and email address to stay in touch. If the attendee agrees, then they show their badge to have it scanned by the sponsor using the closed-technology on devices provided by our vendor. &#8220;</p>\n\n<p>After the event, WCEU organizers will send the names and email addresses of attendees to the sponsors based on the signups from scanned badges.</p>\n\n<p>If attendee feedback is positive, Beaumont said organizers plan to implement the quick registration feature next year. This will allow attendees to receive a QR code via email and get it scanned in order to receive their badges. These tech improvements should relieve traffic bottlenecks at the registration desk and sponsor booths, freeing up more time for WCEU attendees to spend in sessions and networking activities.</p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Jun 2018 15:38:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Mark Jaquith: Making ScoutDocs: React\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5658\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://markjaquith.wordpress.com/2018/06/11/making-scoutdocs-react/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6209:\"<p>Continuing my series about <a href=\"https://wordpress.org/plugins/scoutdocs/\">ScoutDocs</a> and the process of building it, this week I&#8217;m talking about <strong>React</strong>.</p>\n<p><img /><em>What is <a href=\"https://scoutdocs.com/\">ScoutDocs</a>? ScoutDocs is a WordPress plugin that adds simple file-sharing to your WordPress site.</em></p>\n<p>After the first iteration of ScoutDocs was built and none of the partners on the project were happy with its experience, it became clear that in order to deliver a clean, simple interface for file uploading and sharing we needed to leave the bounds of the WordPress admin. It didn’t take me long to decide that <a href=\"https://reactjs.org/\">React</a> would be the tool I used to build the new interface.</p>\n<p>There is an incredible momentum behind React, and a rich ecosystem of libraries, tools, and educational resources. But beyond all that, React is just plain <em>fun</em> to code. Once you accept the central premise that a view layer and the controller that handles that view are inextricably linked, and once you get over the weirdness of quasi-HTML-in-JS that is JSX, coding in React is a joy.</p>\n<p><img /></p>\n<p>Make no mistake, learning React is not a weekend project. It will take a while before it feels like home. But once you get it, you feel very powerful.</p>\n<p>The first lesson I learned was <b>don’t learn React by rewriting your app in React</b>. I tried this. I read some tutorials about React and it felt straightforward, and I was like “let’s <i>do</i> this.”</p>\n<p><img /></p>\n<p>This was a bad idea. I was overwhelmed. I had no idea where to start. Next, I tried following some of the interactive tutorials that required me to build a simple React app and then slowly add functionality to it, refactoring it multiple times, until I understood not just the code that I ended up with, but the <i>process</i> of creating it. This went much better.</p>\n<p><b>Start small, and build a bunch of “toy” apps before you use React for your own apps.</b> Once you are able to “think in React”, you’ll be nearly physically itchy to go re-code your app in React, and that’s how you know you’re ready. If you jump the gun, you are going to get stuck a lot, and it will be frustrating.</p>\n<p>As you learn React and explore the React ecosystem, you will likely hear about <a href=\"https://redux.js.org/\">Redux</a>, which is a system for storing application state, and is commonly used with React apps. It looked complicated, and even its creator wrote a post saying <a href=\"https://medium.com/@dan_abramov/you-might-not-need-redux-be46360cf367\">you might not need Redux</a>. So I skipped it. This was probably the right call when I was starting out. But as I fleshed out the ScoutDocs app and its complexity increased, I ran into a problem.</p>\n<p>See, React breaks your app up into these nested chunks of UI and functionality called components. Data flows down through your components. So if a user updates their name, that change will flow down from higher up components like a Page component down to a PageHeader, down to a NavBar, down to a UserStatus. Once this is all set up and you update data in a parent component, the changes automatically flow downstream, and the UserStatus component updates and re-renders. It’s great. Except that there are a bunch of intermediate components that accept and “forward” that user name data to their children, without actually caring about it themselves. When you inevitably refactor something and need to add new data that flows through these components, every single intermediate one needs to be updated to pass it on. It is tedious. You will hate it.</p>\n<p>Worse, because events in React flow upwards, if a user updates their name in the UserName component, that change needs to flow up to ProfileForm, up to Profile, up to Page, and then up to your main App component. When you refactor, you need to make sure this event forwarding chain stays connected. Yet more tedium that you will hate.</p>\n<p>Redux solves this by letting your React components, no matter how deeply they are nested, subscribe directly to the data they need.</p>\n<p>I really wish Dave Ceddia had written <a href=\"https://daveceddia.com/what-does-redux-do/\">this excellent post about Redux</a> two months earlier.</p>\n<blockquote><p>If you have a component structure like the one above – where props are being forwarded down through many layers – consider using Redux.</p></blockquote>\n<p>This is what I needed to hear, and knowing this would have saved me a lot of frustration and time that I now have to spend converting ScoutDocs to use Redux.</p>\n<p><b>Use Redux when your React data flow starts to get unwieldy.</b></p>\n<p>Another mistake I made early on was making the data my React components accepted too restrictive. For example, I wanted the ability to prefix a <code class=\"code-inline\">Row</code> component with a clickable icon. So I let the component accept an <code class=\"code-inline\">icon</code> and <code class=\"code-inline\">onClickIcon</code> property. I just passed a Font Awesome icon name in, and a function I wanted to run when clicked. It worked great.</p>\n<p><img /></p>\n<p>Then I needed to add a second icon in front, in some circumstances. Ugh. I certainly didn’t want to do <code class=\"code-inline\">otherIcon</code> and <code class=\"code-inline\">onClickOtherIcon</code>. Instead, what I should have done was let the component accept <code class=\"code-inline\">beforeRow</code> which could be anything… like an array of <code class=\"code-inline\">&lt;Icon&gt;</code> components or a single one or even other components altogether.</p>\n<p><img /></p>\n<p>This can be used for many more situations than the one (&#8220;put an icon before the row&#8221;) that I&#8217;d originally envisioned.</p>\n<p><b>Your React components should be flexible, so they can be reusable.</b></p>\n<p>Other posts in this series:</p>\n<ul>\n<li><a href=\"https://markjaquith.wordpress.com/2018/06/01/lessons-learned-making-scoutdocs-outsourcing/\">Outsourcing</a></li>\n<li>React</li>\n<li>WordPress Rest API</li>\n<li>PHP 7</li>\n<li>Build tools</li>\n<li>Unit testing</li>\n</ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Jun 2018 14:36:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 12 Jul 2018 03:59:33 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Thu, 12 Jul 2018 03:45:27 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20180628072410\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1312, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1531411229', 'no'),
(1313, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1531368029', 'no'),
(1314, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1531411229', 'no'),
(1315, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/07/update-on-gutenberg/\'>Update on Gutenberg</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpweekly-episode-323-recap-of-wordcamp-grand-rapids-and-a-gutenberg-road-map\'>WPTavern: WPWeekly Episode 323 – Recap of WordCamp Grand Rapids and A Gutenberg Road Map</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/video-a-quick-introduction-to-gutenberg-and-the-new-wordpress-block-editor-from-linkedin-learning\'>WPTavern: Video: A Quick Introduction to Gutenberg and the New WordPress Block Editor from LinkedIn Learning</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordcamp-ticket-sales-move-from-paypal-to-stripe-for-default-payment-gateway\'>WPTavern: WordCamp Ticket Sales Move from PayPal to Stripe for Default Payment Gateway</a></li></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1530174818:1'),
(4, 6, '_wp_attached_file', '2018/06/6_type-name-and-generate-theme.png'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:775;s:6:\"height\";i:218;s:4:\"file\";s:42:\"2018/06/6_type-name-and-generate-theme.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"6_type-name-and-generate-theme-300x218.png\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"6_type-name-and-generate-theme-600x169.png\";s:5:\"width\";i:600;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"6_type-name-and-generate-theme-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"6_type-name-and-generate-theme-300x84.png\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"6_type-name-and-generate-theme-768x216.png\";s:5:\"width\";i:768;s:6:\"height\";i:216;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"sparkling-featured\";a:4:{s:4:\"file\";s:42:\"6_type-name-and-generate-theme-750x218.png\";s:5:\"width\";i:750;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:40:\"6_type-name-and-generate-theme-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"sanpham_thumb\";a:4:{s:4:\"file\";s:42:\"6_type-name-and-generate-theme-370x104.png\";s:5:\"width\";i:370;s:6:\"height\";i:104;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"6_type-name-and-generate-theme-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 6, '_wp_attachment_custom_header_last_used_website_one', '1530174826'),
(7, 6, '_wp_attachment_is_custom_header', 'website_one'),
(8, 5, '_wp_trash_meta_status', 'publish'),
(9, 5, '_wp_trash_meta_time', '1530174826'),
(10, 3, '_edit_lock', '1530864434:1'),
(11, 1, '_edit_lock', '1530848342:1'),
(12, 8, '_edit_last', '1'),
(13, 8, '_edit_lock', '1530256282:1'),
(14, 11, '_edit_last', '1'),
(15, 11, '_edit_lock', '1530864134:1'),
(18, 13, '_edit_lock', '1530256638:1'),
(19, 13, '_wp_trash_meta_status', 'publish'),
(20, 13, '_wp_trash_meta_time', '1530256644'),
(21, 16, '_wp_trash_meta_status', 'publish'),
(22, 16, '_wp_trash_meta_time', '1530256808'),
(25, 20, '_edit_lock', '1530497372:1'),
(26, 20, '_edit_last', '1'),
(27, 20, '_wp_page_template', 'default'),
(28, 20, '_wp_trash_meta_status', 'publish'),
(29, 20, '_wp_trash_meta_time', '1530498406'),
(30, 20, '_wp_desired_post_slug', 'home-page'),
(31, 22, '_edit_lock', '1531371101:1'),
(32, 22, '_edit_last', '1'),
(33, 22, '_wp_page_template', 'home-page.php'),
(34, 24, '_edit_lock', '1531214661:1'),
(35, 24, '_edit_last', '1'),
(36, 24, 'field_5b398dbd218d8', 'a:14:{s:3:\"key\";s:19:\"field_5b398dbd218d8\";s:5:\"label\";s:9:\"main text\";s:4:\"name\";s:9:\"main_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(41, 24, 'position', 'normal'),
(42, 24, 'layout', 'default'),
(43, 24, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(44, 24, 'field_5b398e379027f', 'a:14:{s:3:\"key\";s:19:\"field_5b398e379027f\";s:5:\"label\";s:5:\"line1\";s:4:\"name\";s:5:\"line1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(48, 24, 'field_5b398e72c75ae', 'a:14:{s:3:\"key\";s:19:\"field_5b398e72c75ae\";s:5:\"label\";s:5:\"line2\";s:4:\"name\";s:5:\"line2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(49, 24, 'field_5b398e85c75af', 'a:14:{s:3:\"key\";s:19:\"field_5b398e85c75af\";s:5:\"label\";s:5:\"line3\";s:4:\"name\";s:5:\"line3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(50, 24, 'field_5b398e99c75b0', 'a:8:{s:3:\"key\";s:19:\"field_5b398e99c75b0\";s:5:\"label\";s:12:\"Below header\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(53, 25, 'main_text', 'Get The Best Of SEA'),
(54, 25, '_main_text', 'field_5b398dbd218d8'),
(55, 25, 'line1', 'Buy Now'),
(56, 25, '_line1', 'field_5b398e379027f'),
(57, 25, 'line2', 'Check Now'),
(58, 25, '_line2', 'field_5b398e72c75ae'),
(59, 25, 'line3', 'Find More'),
(60, 25, '_line3', 'field_5b398e85c75af'),
(61, 22, 'main_text', 'Get The Best Of SEA in the world'),
(62, 22, '_main_text', 'field_5b398dbd218d8'),
(63, 22, 'line1', 'Buy Now'),
(64, 22, '_line1', 'field_5b398e379027f'),
(65, 22, 'line2', 'Check Now'),
(66, 22, '_line2', 'field_5b398e72c75ae'),
(67, 22, 'line3', 'Find More'),
(68, 22, '_line3', 'field_5b398e85c75af'),
(69, 24, 'field_5b3990128147a', 'a:11:{s:3:\"key\";s:19:\"field_5b3990128147a\";s:5:\"label\";s:9:\"tag_label\";s:4:\"name\";s:9:\"tag_label\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(72, 26, '_wp_attached_file', '2018/07/tag.png'),
(73, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:75;s:4:\"file\";s:15:\"2018/07/tag.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"tag-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:13:\"tag-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"tag-100x75.png\";s:5:\"width\";i:100;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 27, 'main_text', 'Get The Best Of SEA'),
(75, 27, '_main_text', 'field_5b398dbd218d8'),
(76, 27, 'line1', 'Buy Now'),
(77, 27, '_line1', 'field_5b398e379027f'),
(78, 27, 'line2', 'Check Now'),
(79, 27, '_line2', 'field_5b398e72c75ae'),
(80, 27, 'line3', 'Find More'),
(81, 27, '_line3', 'field_5b398e85c75af'),
(82, 27, 'tag_label', '26'),
(83, 27, '_tag_label', 'field_5b3990128147a'),
(84, 27, '_', 'field_5b3990328147b'),
(85, 22, 'tag_label', '26'),
(86, 22, '_tag_label', 'field_5b3990128147a'),
(87, 22, '_', 'field_5b3990328147b'),
(89, 24, 'field_5b3992e081d7d', 'a:14:{s:3:\"key\";s:19:\"field_5b3992e081d7d\";s:5:\"label\";s:5:\"text1\";s:4:\"name\";s:5:\"text1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(91, 24, 'field_5b39931445d05', 'a:8:{s:3:\"key\";s:19:\"field_5b39931445d05\";s:5:\"label\";s:9:\"uper_body\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(92, 24, 'field_5b3992fc45d03', 'a:14:{s:3:\"key\";s:19:\"field_5b3992fc45d03\";s:5:\"label\";s:5:\"text2\";s:4:\"name\";s:5:\"text2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(93, 24, 'field_5b39930945d04', 'a:14:{s:3:\"key\";s:19:\"field_5b39930945d04\";s:5:\"label\";s:5:\"text3\";s:4:\"name\";s:5:\"text3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(94, 24, 'field_5b39935245d07', 'a:11:{s:3:\"key\";s:19:\"field_5b39935245d07\";s:5:\"label\";s:5:\"image\";s:4:\"name\";s:5:\"image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(96, 28, '_wp_attached_file', '2018/07/left-logo.png'),
(97, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:86;s:6:\"height\";i:115;s:4:\"file\";s:21:\"2018/07/left-logo.png\";s:5:\"sizes\";a:2:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:19:\"left-logo-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"left-logo-86x100.png\";s:5:\"width\";i:86;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 29, 'main_text', 'Get The Best Of SEA'),
(99, 29, '_main_text', 'field_5b398dbd218d8'),
(100, 29, 'line1', 'Buy Now'),
(101, 29, '_line1', 'field_5b398e379027f'),
(102, 29, 'line2', 'Check Now'),
(103, 29, '_line2', 'field_5b398e72c75ae'),
(104, 29, 'line3', 'Find More'),
(105, 29, '_line3', 'field_5b398e85c75af'),
(106, 29, 'tag_label', '26'),
(107, 29, '_tag_label', 'field_5b3990128147a'),
(108, 29, 'text1', 'SUBSCRIBE'),
(109, 29, '_text1', 'field_5b3992e081d7d'),
(110, 29, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN ONE PLACE'),
(111, 29, '_text2', 'field_5b3992fc45d03'),
(112, 29, 'text3', 'Subscribe to the UNRESERVED magazine and see Southeast Asia from a unique perspective'),
(113, 29, '_text3', 'field_5b39930945d04'),
(114, 29, 'image', '28'),
(115, 29, '_image', 'field_5b39935245d07'),
(116, 22, 'text1', 'SUBSCRIBE Now'),
(117, 22, '_text1', 'field_5b3992e081d7d'),
(118, 22, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN '),
(119, 22, '_text2', 'field_5b3992fc45d03'),
(120, 22, 'text3', 'Subscribe to the UNRESERVED magazine and'),
(121, 22, '_text3', 'field_5b39930945d04'),
(122, 22, 'image', '28'),
(123, 22, '_image', 'field_5b39935245d07'),
(124, 30, 'main_text', 'Get The Best Of SEA'),
(125, 30, '_main_text', 'field_5b398dbd218d8'),
(126, 30, 'line1', 'Buy Now'),
(127, 30, '_line1', 'field_5b398e379027f'),
(128, 30, 'line2', 'Check Now'),
(129, 30, '_line2', 'field_5b398e72c75ae'),
(130, 30, 'line3', 'Find More'),
(131, 30, '_line3', 'field_5b398e85c75af'),
(132, 30, 'tag_label', '26'),
(133, 30, '_tag_label', 'field_5b3990128147a'),
(134, 30, 'text1', 'SUBSCRIBE Now'),
(135, 30, '_text1', 'field_5b3992e081d7d'),
(136, 30, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN '),
(137, 30, '_text2', 'field_5b3992fc45d03'),
(138, 30, 'text3', 'Subscribe to the UNRESERVED magazine and'),
(139, 30, '_text3', 'field_5b39930945d04'),
(140, 30, 'image', '28'),
(141, 30, '_image', 'field_5b39935245d07'),
(143, 24, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"22\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(144, 31, '_edit_lock', '1530501259:1'),
(145, 31, '_edit_last', '1'),
(146, 32, '_edit_lock', '1531291672:1'),
(147, 32, '_edit_last', '1'),
(148, 32, '_wp_page_template', 'order-form.php'),
(149, 34, '_edit_lock', '1531214638:1'),
(150, 34, '_edit_last', '1'),
(152, 34, 'position', 'normal'),
(153, 34, 'layout', 'default'),
(154, 34, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(155, 31, '_wp_trash_meta_status', 'draft'),
(156, 31, '_wp_trash_meta_time', '1530501478'),
(157, 31, '_wp_desired_post_slug', ''),
(158, 34, 'field_5b399a1709e86', 'a:8:{s:3:\"key\";s:19:\"field_5b399a1709e86\";s:5:\"label\";s:11:\"content_tag\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(159, 34, 'field_5b399a0509e85', 'a:14:{s:3:\"key\";s:19:\"field_5b399a0509e85\";s:5:\"label\";s:9:\"main_text\";s:4:\"name\";s:9:\"main_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(160, 34, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"32\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(161, 36, 'main_text', 'Your Items'),
(162, 36, '_main_text', 'field_5b399a0509e85'),
(163, 32, 'main_text', 'Your Items'),
(164, 32, '_main_text', 'field_5b399a0509e85'),
(165, 38, '_edit_lock', '1530516121:1'),
(166, 38, '_edit_last', '1'),
(167, 39, '_edit_lock', '1530516144:1'),
(168, 39, '_edit_last', '1'),
(169, 40, '_edit_lock', '1530532449:1'),
(170, 40, '_edit_last', '1'),
(171, 40, '_wp_page_template', 'about.php'),
(172, 38, '_wp_trash_meta_status', 'draft'),
(173, 38, '_wp_trash_meta_time', '1530517054'),
(174, 38, '_wp_desired_post_slug', ''),
(175, 39, '_wp_trash_meta_status', 'draft'),
(176, 39, '_wp_trash_meta_time', '1530517055'),
(177, 39, '_wp_desired_post_slug', ''),
(232, 50, '_edit_lock', '1531214644:1'),
(233, 50, '_edit_last', '1'),
(234, 50, 'field_5b39d83a9e352', 'a:14:{s:3:\"key\";s:19:\"field_5b39d83a9e352\";s:5:\"label\";s:8:\"about_us\";s:4:\"name\";s:8:\"about_us\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(235, 50, 'field_5b39d85c9e353', 'a:14:{s:3:\"key\";s:19:\"field_5b39d85c9e353\";s:5:\"label\";s:15:\"company_history\";s:4:\"name\";s:15:\"company_history\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(236, 50, 'field_5b39d89b9e354', 'a:11:{s:3:\"key\";s:19:\"field_5b39d89b9e354\";s:5:\"label\";s:6:\"slide1\";s:4:\"name\";s:6:\"slide1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(237, 50, 'field_5b39d8b89e355', 'a:11:{s:3:\"key\";s:19:\"field_5b39d8b89e355\";s:5:\"label\";s:6:\"slide2\";s:4:\"name\";s:6:\"slide2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(238, 50, 'field_5b39d8c69e356', 'a:11:{s:3:\"key\";s:19:\"field_5b39d8c69e356\";s:5:\"label\";s:6:\"slide3\";s:4:\"name\";s:6:\"slide3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(239, 50, 'field_5b39d8da9e357', 'a:11:{s:3:\"key\";s:19:\"field_5b39d8da9e357\";s:5:\"label\";s:5:\"icon1\";s:4:\"name\";s:5:\"icon1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(240, 50, 'field_5b39d8ea9e358', 'a:11:{s:3:\"key\";s:19:\"field_5b39d8ea9e358\";s:5:\"label\";s:5:\"icon2\";s:4:\"name\";s:5:\"icon2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(241, 50, 'field_5b39d8f99e359', 'a:11:{s:3:\"key\";s:19:\"field_5b39d8f99e359\";s:5:\"label\";s:5:\"icon3\";s:4:\"name\";s:5:\"icon3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(242, 50, 'field_5b39d91b9e35a', 'a:14:{s:3:\"key\";s:19:\"field_5b39d91b9e35a\";s:5:\"label\";s:10:\"left_text1\";s:4:\"name\";s:10:\"left_text1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(243, 50, 'field_5b39d92f9e35b', 'a:14:{s:3:\"key\";s:19:\"field_5b39d92f9e35b\";s:5:\"label\";s:10:\"left_text2\";s:4:\"name\";s:10:\"left_text2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(244, 50, 'field_5b39d93d9e35c', 'a:14:{s:3:\"key\";s:19:\"field_5b39d93d9e35c\";s:5:\"label\";s:10:\"left_text3\";s:4:\"name\";s:10:\"left_text3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(245, 50, 'field_5b39d94b9e35d', 'a:14:{s:3:\"key\";s:19:\"field_5b39d94b9e35d\";s:5:\"label\";s:10:\"left_info1\";s:4:\"name\";s:10:\"left_info1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}'),
(246, 50, 'field_5b39d9609e35f', 'a:14:{s:3:\"key\";s:19:\"field_5b39d9609e35f\";s:5:\"label\";s:10:\"left_info2\";s:4:\"name\";s:10:\"left_info2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:13;}'),
(247, 50, 'field_5b39d9699e360', 'a:14:{s:3:\"key\";s:19:\"field_5b39d9699e360\";s:5:\"label\";s:10:\"left_info3\";s:4:\"name\";s:10:\"left_info3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:14;}'),
(249, 50, 'position', 'normal'),
(250, 50, 'layout', 'no_box'),
(251, 50, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(252, 51, '_wp_attached_file', '2018/07/slide3.jpg'),
(253, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:1962;s:4:\"file\";s:18:\"2018/07/slide3.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"slide3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"slide3-600x392.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide3-300x196.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide3-768x502.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:502;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slide3-1024x670.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:670;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sparkling-featured\";a:4:{s:4:\"file\";s:18:\"slide3-750x410.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"sparkling-featured-fullwidth\";a:4:{s:4:\"file\";s:19:\"slide3-1140x624.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:16:\"slide3-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"sanpham_thumb\";a:4:{s:4:\"file\";s:18:\"slide3-370x242.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"slide3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 52, 'about_us', 'About US Information'),
(255, 52, '_about_us', 'field_5b39d83a9e352'),
(256, 52, 'company_history', 'Our company History'),
(257, 52, '_company_history', 'field_5b39d85c9e353'),
(258, 52, 'slide1', '51'),
(259, 52, '_slide1', 'field_5b39d89b9e354'),
(260, 52, 'slide2', '51'),
(261, 52, '_slide2', 'field_5b39d8b89e355'),
(262, 52, 'slide3', '51'),
(263, 52, '_slide3', 'field_5b39d8c69e356'),
(264, 52, 'icon1', '51'),
(265, 52, '_icon1', 'field_5b39d8da9e357'),
(266, 52, 'icon2', '51'),
(267, 52, '_icon2', 'field_5b39d8ea9e358'),
(268, 52, 'icon3', '51'),
(269, 52, '_icon3', 'field_5b39d8f99e359'),
(270, 52, 'left_text1', 'Brand Identity Of Company'),
(271, 52, '_left_text1', 'field_5b39d91b9e35a'),
(272, 52, 'left_text2', 'Visual Design'),
(273, 52, '_left_text2', 'field_5b39d92f9e35b'),
(274, 52, 'left_text3', 'Dogital UX of Company'),
(275, 52, '_left_text3', 'field_5b39d93d9e35c'),
(276, 52, 'left_info1', 'maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere. Ut auctor, nisis sit amet volutpat aliquam'),
(277, 52, '_left_info1', 'field_5b39d94b9e35d'),
(278, 52, 'left_info2', 'maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere. Ut auctor, nisis sit amet volutpat aliquam'),
(279, 52, '_left_info2', 'field_5b39d9609e35f'),
(280, 52, 'left_info3', 'maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere. Ut auctor, nisis sit amet volutpat aliquam'),
(281, 52, '_left_info3', 'field_5b39d9699e360'),
(282, 40, 'about_us', 'About US Information'),
(283, 40, '_about_us', 'field_5b39d83a9e352'),
(284, 40, 'company_history', 'Our company History'),
(285, 40, '_company_history', 'field_5b39d85c9e353'),
(286, 40, 'slide1', '51'),
(287, 40, '_slide1', 'field_5b39d89b9e354'),
(288, 40, 'slide2', '51'),
(289, 40, '_slide2', 'field_5b39d8b89e355'),
(290, 40, 'slide3', '51'),
(291, 40, '_slide3', 'field_5b39d8c69e356'),
(292, 40, 'icon1', '51'),
(293, 40, '_icon1', 'field_5b39d8da9e357'),
(294, 40, 'icon2', '51'),
(295, 40, '_icon2', 'field_5b39d8ea9e358'),
(296, 40, 'icon3', '51'),
(297, 40, '_icon3', 'field_5b39d8f99e359'),
(298, 40, 'left_text1', 'Brand Identity Of Company'),
(299, 40, '_left_text1', 'field_5b39d91b9e35a'),
(300, 40, 'left_text2', 'Visual Design'),
(301, 40, '_left_text2', 'field_5b39d92f9e35b'),
(302, 40, 'left_text3', 'Dogital UX of Company'),
(303, 40, '_left_text3', 'field_5b39d93d9e35c'),
(304, 40, 'left_info1', 'maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere. Ut auctor, nisis sit amet volutpat aliquam'),
(305, 40, '_left_info1', 'field_5b39d94b9e35d'),
(306, 40, 'left_info2', 'maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere. Ut auctor, nisis sit amet volutpat aliquam'),
(307, 40, '_left_info2', 'field_5b39d9609e35f'),
(308, 40, 'left_info3', 'maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere. Ut auctor, nisis sit amet volutpat aliquam'),
(309, 40, '_left_info3', 'field_5b39d9699e360'),
(310, 50, 'field_5b39dd6df8ccc', 'a:8:{s:3:\"key\";s:19:\"field_5b39dd6df8ccc\";s:5:\"label\";s:11:\"upper about\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(311, 50, 'field_5b39dd87f8ccd', 'a:8:{s:3:\"key\";s:19:\"field_5b39dd87f8ccd\";s:5:\"label\";s:4:\"team\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:15;}'),
(312, 50, 'field_5b39dd9bf8cce', 'a:14:{s:3:\"key\";s:19:\"field_5b39dd9bf8cce\";s:5:\"label\";s:9:\"tem_title\";s:4:\"name\";s:9:\"tem_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:16;}'),
(313, 50, 'field_5b39ddb0f8ccf', 'a:11:{s:3:\"key\";s:19:\"field_5b39ddb0f8ccf\";s:5:\"label\";s:7:\"member1\";s:4:\"name\";s:7:\"member1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:17;}'),
(314, 50, 'field_5b39ddc6f8cd2', 'a:11:{s:3:\"key\";s:19:\"field_5b39ddc6f8cd2\";s:5:\"label\";s:7:\"member2\";s:4:\"name\";s:7:\"member2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:18;}'),
(315, 50, 'field_5b39ddc5f8cd1', 'a:11:{s:3:\"key\";s:19:\"field_5b39ddc5f8cd1\";s:5:\"label\";s:7:\"member3\";s:4:\"name\";s:7:\"member3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:19;}'),
(316, 50, 'field_5b39ddc4f8cd0', 'a:11:{s:3:\"key\";s:19:\"field_5b39ddc4f8cd0\";s:5:\"label\";s:7:\"member4\";s:4:\"name\";s:7:\"member4\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:20;}'),
(318, 53, 'about_us', 'About US Information'),
(319, 53, '_about_us', 'field_5b39d83a9e352'),
(320, 53, 'company_history', 'Our company History'),
(321, 53, '_company_history', 'field_5b39d85c9e353'),
(322, 53, 'slide1', '51'),
(323, 53, '_slide1', 'field_5b39d89b9e354'),
(324, 53, 'slide2', '51'),
(325, 53, '_slide2', 'field_5b39d8b89e355'),
(326, 53, 'slide3', '51'),
(327, 53, '_slide3', 'field_5b39d8c69e356'),
(328, 53, 'icon1', '51'),
(329, 53, '_icon1', 'field_5b39d8da9e357'),
(330, 53, 'icon2', '51'),
(331, 53, '_icon2', 'field_5b39d8ea9e358'),
(332, 53, 'icon3', '51'),
(333, 53, '_icon3', 'field_5b39d8f99e359'),
(334, 53, 'left_text1', 'Brand Identity Of Company'),
(335, 53, '_left_text1', 'field_5b39d91b9e35a'),
(336, 53, 'left_text2', 'Visual Design'),
(337, 53, '_left_text2', 'field_5b39d92f9e35b'),
(338, 53, 'left_text3', 'Dogital UX of Company'),
(339, 53, '_left_text3', 'field_5b39d93d9e35c'),
(340, 53, 'left_info1', 'maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere. Ut auctor, nisis sit amet volutpat aliquam'),
(341, 53, '_left_info1', 'field_5b39d94b9e35d'),
(342, 53, 'left_info2', 'maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere. Ut auctor, nisis sit amet volutpat aliquam'),
(343, 53, '_left_info2', 'field_5b39d9609e35f'),
(344, 53, 'left_info3', 'maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere. Ut auctor, nisis sit amet volutpat aliquam'),
(345, 53, '_left_info3', 'field_5b39d9699e360'),
(346, 53, 'tem_title', 'All Member of Our Team'),
(347, 53, '_tem_title', 'field_5b39dd9bf8cce'),
(348, 53, 'member1', '51'),
(349, 53, '_member1', 'field_5b39ddb0f8ccf'),
(350, 53, 'member2', '51'),
(351, 53, '_member2', 'field_5b39ddc6f8cd2'),
(352, 53, 'member3', '51'),
(353, 53, '_member3', 'field_5b39ddc5f8cd1'),
(354, 53, 'member4', '51'),
(355, 53, '_member4', 'field_5b39ddc4f8cd0'),
(356, 40, 'tem_title', 'All Member of Our Team'),
(357, 40, '_tem_title', 'field_5b39dd9bf8cce'),
(358, 40, 'member1', '51'),
(359, 40, '_member1', 'field_5b39ddb0f8ccf'),
(360, 40, 'member2', '51'),
(361, 40, '_member2', 'field_5b39ddc6f8cd2'),
(362, 40, 'member3', '51'),
(363, 40, '_member3', 'field_5b39ddc5f8cd1'),
(364, 40, 'member4', '51'),
(365, 40, '_member4', 'field_5b39ddc4f8cd0'),
(366, 54, '_edit_lock', '1530691086:1'),
(367, 54, '_edit_last', '1'),
(368, 54, 'field_5b39e06ba3e27', 'a:14:{s:3:\"key\";s:19:\"field_5b39e06ba3e27\";s:5:\"label\";s:12:\"member1_post\";s:4:\"name\";s:12:\"member1_post\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(369, 54, 'field_5b39e08aa3e28', 'a:14:{s:3:\"key\";s:19:\"field_5b39e08aa3e28\";s:5:\"label\";s:15:\"member_position\";s:4:\"name\";s:15:\"member_position\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(370, 54, 'field_5b39e09ca3e29', 'a:11:{s:3:\"key\";s:19:\"field_5b39e09ca3e29\";s:5:\"label\";s:12:\"member_image\";s:4:\"name\";s:12:\"member_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(371, 54, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"member\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(372, 54, 'position', 'normal'),
(373, 54, 'layout', 'no_box'),
(374, 54, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(375, 56, '_edit_lock', '1530689997:1'),
(376, 56, '_edit_last', '1'),
(377, 56, 'member1_post', 'sasuke'),
(378, 56, '_member1_post', 'field_5b39e06ba3e27'),
(379, 56, 'member_position', 'designer'),
(380, 56, '_member_position', 'field_5b39e08aa3e28'),
(381, 56, 'member_image', '51'),
(382, 56, '_member_image', 'field_5b39e09ca3e29'),
(383, 57, '_edit_lock', '1530693694:1'),
(384, 57, '_edit_last', '1'),
(385, 57, 'member1_post', 'naruto'),
(386, 57, '_member1_post', 'field_5b39e06ba3e27'),
(387, 57, 'member_position', 'president of leaf village'),
(388, 57, '_member_position', 'field_5b39e08aa3e28'),
(389, 57, 'member_image', '51'),
(390, 57, '_member_image', 'field_5b39e09ca3e29'),
(394, 8, '_wp_trash_meta_status', 'publish'),
(395, 8, '_wp_trash_meta_time', '1530525371'),
(396, 8, '_wp_desired_post_slug', 'first-page'),
(397, 11, 'usef_awepop_views', '2'),
(398, 61, '_edit_lock', '1530530480:1'),
(399, 61, '_edit_last', '1'),
(402, 61, 'usef_awepop_views', '4'),
(403, 61, '_wp_trash_meta_status', 'publish'),
(404, 61, '_wp_trash_meta_time', '1530533142'),
(405, 61, '_wp_desired_post_slug', 'new-post-test-hook'),
(406, 40, '_wp_trash_meta_status', 'publish'),
(407, 40, '_wp_trash_meta_time', '1530533186'),
(408, 40, '_wp_desired_post_slug', 'about-us'),
(409, 63, '_edit_lock', '1530591388:1'),
(410, 63, '_edit_last', '1'),
(411, 63, '_wp_page_template', 'default'),
(412, 65, '_wp_attached_file', '2018/07/cropped-slide3.jpg'),
(413, 65, '_wp_attachment_context', 'custom-header'),
(414, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:419;s:4:\"file\";s:26:\"2018/07/cropped-slide3.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-slide3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"cropped-slide3-600x251.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:251;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-slide3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-slide3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-slide3-300x126.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"cropped-slide3-768x322.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(415, 65, '_wp_attachment_custom_header_last_used_website_two', '1530585837'),
(416, 65, '_wp_attachment_is_custom_header', 'website_two'),
(417, 51, '_wp_attachment_is_custom_background', 'website_two'),
(420, 67, '_wp_attached_file', '2018/07/cropped-slide3-1.jpg'),
(421, 67, '_wp_attachment_context', 'custom-header'),
(422, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:954;s:6:\"height\";i:1300;s:4:\"file\";s:28:\"2018/07/cropped-slide3-1.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"cropped-slide3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"cropped-slide3-1-600x818.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:818;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-slide3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-slide3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-slide3-1-220x300.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"cropped-slide3-1-768x1047.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1047;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-slide3-1-751x1024.jpg\";s:5:\"width\";i:751;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-slide3-1-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(423, 67, '_wp_attachment_custom_header_last_used_twentyfifteen', '1530586086'),
(424, 67, '_wp_attachment_is_custom_header', 'twentyfifteen'),
(425, 68, '_wp_trash_meta_status', 'publish'),
(426, 68, '_wp_trash_meta_time', '1530586086'),
(427, 69, '_edit_lock', '1530591549:1'),
(428, 69, '_edit_last', '1'),
(429, 71, '_edit_lock', '1530591918:1'),
(430, 71, '_edit_last', '1'),
(431, 71, '_wp_page_template', 'trang_chu.php'),
(432, 71, '_wp_trash_meta_status', 'publish'),
(433, 71, '_wp_trash_meta_time', '1530593252'),
(434, 71, '_wp_desired_post_slug', 'home-page-2'),
(435, 63, '_wp_trash_meta_status', 'publish'),
(436, 63, '_wp_trash_meta_time', '1530593255'),
(437, 63, '_wp_desired_post_slug', 'adddddd'),
(438, 69, '_wp_trash_meta_status', 'draft'),
(439, 69, '_wp_trash_meta_time', '1530593281'),
(440, 69, '_wp_desired_post_slug', ''),
(441, 74, '_edit_lock', '1530865191:1'),
(442, 74, '_edit_last', '1'),
(443, 74, '_wp_page_template', 'about-us.php'),
(444, 50, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"74\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(445, 76, 'about_us', 'About Us'),
(446, 76, '_about_us', 'field_5b39d83a9e352'),
(447, 76, 'company_history', 'Company History of me'),
(448, 76, '_company_history', 'field_5b39d85c9e353'),
(449, 76, 'slide1', '51'),
(450, 76, '_slide1', 'field_5b39d89b9e354'),
(451, 76, 'slide2', '51'),
(452, 76, '_slide2', 'field_5b39d8b89e355'),
(453, 76, 'slide3', '51'),
(454, 76, '_slide3', 'field_5b39d8c69e356'),
(455, 76, 'icon1', '51'),
(456, 76, '_icon1', 'field_5b39d8da9e357'),
(457, 76, 'icon2', '51'),
(458, 76, '_icon2', 'field_5b39d8ea9e358'),
(459, 76, 'icon3', '51'),
(460, 76, '_icon3', 'field_5b39d8f99e359'),
(461, 76, 'left_text1', 'left information'),
(462, 76, '_left_text1', 'field_5b39d91b9e35a'),
(463, 76, 'left_text2', 'information left text 2'),
(464, 76, '_left_text2', 'field_5b39d92f9e35b'),
(465, 76, 'left_text3', 'information left text 3'),
(466, 76, '_left_text3', 'field_5b39d93d9e35c'),
(467, 76, 'left_info1', 'left_info1'),
(468, 76, '_left_info1', 'field_5b39d94b9e35d'),
(469, 76, 'left_info2', 'left_info2'),
(470, 76, '_left_info2', 'field_5b39d9609e35f'),
(471, 76, 'left_info3', 'left_info3'),
(472, 76, '_left_info3', 'field_5b39d9699e360'),
(473, 76, 'tem_title', 'My Team member'),
(474, 76, '_tem_title', 'field_5b39dd9bf8cce'),
(475, 76, 'member1', '51'),
(476, 76, '_member1', 'field_5b39ddb0f8ccf'),
(477, 76, 'member2', '51'),
(478, 76, '_member2', 'field_5b39ddc6f8cd2'),
(479, 76, 'member3', '51'),
(480, 76, '_member3', 'field_5b39ddc5f8cd1'),
(481, 76, 'member4', '51'),
(482, 76, '_member4', 'field_5b39ddc4f8cd0'),
(483, 74, 'about_us', 'About Us'),
(484, 74, '_about_us', 'field_5b39d83a9e352'),
(485, 74, 'company_history', 'Company History of me'),
(486, 74, '_company_history', 'field_5b39d85c9e353'),
(487, 74, 'slide1', '51'),
(488, 74, '_slide1', 'field_5b39d89b9e354'),
(489, 74, 'slide2', '51'),
(490, 74, '_slide2', 'field_5b39d8b89e355'),
(491, 74, 'slide3', '51'),
(492, 74, '_slide3', 'field_5b39d8c69e356'),
(493, 74, 'icon1', '51'),
(494, 74, '_icon1', 'field_5b39d8da9e357'),
(495, 74, 'icon2', '51'),
(496, 74, '_icon2', 'field_5b39d8ea9e358'),
(497, 74, 'icon3', '51'),
(498, 74, '_icon3', 'field_5b39d8f99e359'),
(499, 74, 'left_text1', 'left information'),
(500, 74, '_left_text1', 'field_5b39d91b9e35a'),
(501, 74, 'left_text2', 'information left text 2'),
(502, 74, '_left_text2', 'field_5b39d92f9e35b'),
(503, 74, 'left_text3', 'information left text 3'),
(504, 74, '_left_text3', 'field_5b39d93d9e35c'),
(505, 74, 'left_info1', 'left_info1'),
(506, 74, '_left_info1', 'field_5b39d94b9e35d'),
(507, 74, 'left_info2', 'left_info2'),
(508, 74, '_left_info2', 'field_5b39d9609e35f'),
(509, 74, 'left_info3', 'left_info3'),
(510, 74, '_left_info3', 'field_5b39d9699e360'),
(511, 74, 'tem_title', 'My Team member'),
(512, 74, '_tem_title', 'field_5b39dd9bf8cce'),
(513, 74, 'member1', '51'),
(514, 74, '_member1', 'field_5b39ddb0f8ccf'),
(515, 74, 'member2', '51'),
(516, 74, '_member2', 'field_5b39ddc6f8cd2'),
(517, 74, 'member3', '51'),
(518, 74, '_member3', 'field_5b39ddc5f8cd1'),
(519, 74, 'member4', '51'),
(520, 74, '_member4', 'field_5b39ddc4f8cd0'),
(521, 77, 'main_text', 'Get The Best Of SEA in the world'),
(522, 77, '_main_text', 'field_5b398dbd218d8'),
(523, 77, 'line1', 'Buy Now'),
(524, 77, '_line1', 'field_5b398e379027f'),
(525, 77, 'line2', 'Check Now'),
(526, 77, '_line2', 'field_5b398e72c75ae'),
(527, 77, 'line3', 'Find More'),
(528, 77, '_line3', 'field_5b398e85c75af'),
(529, 77, 'tag_label', '26'),
(530, 77, '_tag_label', 'field_5b3990128147a'),
(531, 77, 'text1', 'SUBSCRIBE Now'),
(532, 77, '_text1', 'field_5b3992e081d7d'),
(533, 77, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN '),
(534, 77, '_text2', 'field_5b3992fc45d03'),
(535, 77, 'text3', 'Subscribe to the UNRESERVED magazine and'),
(536, 77, '_text3', 'field_5b39930945d04'),
(537, 77, 'image', '28'),
(538, 77, '_image', 'field_5b39935245d07'),
(539, 78, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(540, 78, '_mail', 'a:8:{s:7:\"subject\";s:32:\"Testing_Website \"[your-subject]\"\";s:6:\"sender\";s:41:\"[your-name] <intern-03@vn.devinition.com>\";s:4:\"body\";s:197:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Testing_Website (http://localhost:8080/wordpress/wordpress_1)\";s:9:\"recipient\";s:27:\"intern-03@vn.devinition.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(541, 78, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"Testing_Website \"[your-subject]\"\";s:6:\"sender\";s:45:\"Testing_Website <intern-03@vn.devinition.com>\";s:4:\"body\";s:139:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Testing_Website (http://localhost:8080/wordpress/wordpress_1)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:37:\"Reply-To: intern-03@vn.devinition.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(542, 78, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(543, 78, '_additional_settings', NULL),
(544, 78, '_locale', 'en_US'),
(1018, 113, '_wc_review_count', '0'),
(1019, 113, '_wc_rating_count', 'a:0:{}'),
(1020, 113, '_wc_average_rating', '0'),
(1021, 113, '_edit_lock', '1530615229:1'),
(1022, 113, '_edit_last', '1'),
(1023, 113, '_sku', ''),
(1024, 113, '_regular_price', '5555'),
(1025, 113, '_sale_price', '555'),
(1026, 113, '_sale_price_dates_from', ''),
(1027, 113, '_sale_price_dates_to', ''),
(1028, 113, 'total_sales', '0'),
(1029, 113, '_tax_status', 'taxable'),
(1030, 113, '_tax_class', ''),
(1031, 113, '_manage_stock', 'no'),
(1032, 113, '_backorders', 'no'),
(1033, 113, '_sold_individually', 'no'),
(1034, 113, '_weight', ''),
(1035, 113, '_length', ''),
(1036, 113, '_width', ''),
(1037, 113, '_height', ''),
(1038, 113, '_upsell_ids', 'a:0:{}'),
(1039, 113, '_crosssell_ids', 'a:0:{}'),
(1040, 113, '_purchase_note', ''),
(1041, 113, '_default_attributes', 'a:0:{}'),
(1042, 113, '_virtual', 'no'),
(1043, 113, '_downloadable', 'no'),
(1044, 113, '_product_image_gallery', ''),
(1045, 113, '_download_limit', '-1'),
(1046, 113, '_download_expiry', '-1'),
(1047, 113, '_stock', NULL),
(1048, 113, '_stock_status', 'instock'),
(1049, 113, '_product_version', '3.4.3'),
(1050, 113, '_price', '555'),
(1051, 80, '_edit_lock', '1530673589:1'),
(1053, 115, '_edit_lock', '1530673849:1'),
(1054, 115, '_edit_last', '1'),
(1056, 117, '_edit_lock', '1530686108:1'),
(1057, 117, '_edit_last', '1'),
(1058, 117, '_wp_page_template', 'custom-facebook.php'),
(1059, 118, '_wp_page_template', 'custom-facebook.php'),
(1060, 119, '_wp_page_template', 'custom-facebook.php'),
(1061, 115, '_wp_trash_meta_status', 'draft'),
(1062, 115, '_wp_trash_meta_time', '1530674225'),
(1063, 115, '_wp_desired_post_slug', ''),
(1064, 120, '_wp_trash_meta_status', 'draft'),
(1065, 120, '_wp_trash_meta_time', '1530674225'),
(1066, 120, '_wp_desired_post_slug', ''),
(1067, 82, '_wp_trash_meta_status', 'publish'),
(1068, 82, '_wp_trash_meta_time', '1530685049'),
(1069, 82, '_wp_desired_post_slug', 'checkout'),
(1070, 121, '_wp_trash_meta_status', 'publish'),
(1071, 121, '_wp_trash_meta_time', '1530685049'),
(1072, 121, '_wp_desired_post_slug', 'checkout'),
(1073, 81, '_wp_trash_meta_status', 'publish'),
(1074, 81, '_wp_trash_meta_time', '1530685052'),
(1075, 81, '_wp_desired_post_slug', 'cart'),
(1076, 122, '_wp_trash_meta_status', 'publish'),
(1077, 122, '_wp_trash_meta_time', '1530685052'),
(1078, 122, '_wp_desired_post_slug', 'cart'),
(1079, 83, '_wp_trash_meta_status', 'publish'),
(1080, 83, '_wp_trash_meta_time', '1530685066'),
(1081, 83, '_wp_desired_post_slug', 'my-account'),
(1082, 123, '_wp_trash_meta_status', 'publish'),
(1083, 123, '_wp_trash_meta_time', '1530685066'),
(1084, 123, '_wp_desired_post_slug', 'my-account'),
(1085, 80, '_wp_trash_meta_status', 'publish'),
(1086, 80, '_wp_trash_meta_time', '1530685070'),
(1087, 80, '_wp_desired_post_slug', 'shop'),
(1088, 124, '_wp_trash_meta_status', 'publish'),
(1089, 124, '_wp_trash_meta_time', '1530685070'),
(1090, 124, '_wp_desired_post_slug', 'shop'),
(1091, 125, '_wp_page_template', 'home-page.php'),
(1092, 125, 'main_text', 'Get The Best Of SEA in the world'),
(1093, 125, '_main_text', 'field_5b398dbd218d8'),
(1094, 125, 'line1', 'Buy Now'),
(1095, 125, '_line1', 'field_5b398e379027f'),
(1096, 125, 'line2', 'Check Now'),
(1097, 125, '_line2', 'field_5b398e72c75ae'),
(1098, 125, 'line3', 'Find More'),
(1099, 125, '_line3', 'field_5b398e85c75af'),
(1100, 125, 'tag_label', '26'),
(1101, 125, '_tag_label', 'field_5b3990128147a'),
(1102, 125, '_', 'field_5b3990328147b'),
(1103, 125, 'text1', 'SUBSCRIBE Now'),
(1104, 125, '_text1', 'field_5b3992e081d7d'),
(1105, 125, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN '),
(1106, 125, '_text2', 'field_5b3992fc45d03'),
(1107, 125, 'text3', 'Subscribe to the UNRESERVED magazine and'),
(1108, 125, '_text3', 'field_5b39930945d04'),
(1109, 125, 'image', '28'),
(1110, 125, '_image', 'field_5b39935245d07'),
(1122, 126, '_wp_page_template', 'custom-facebook.php'),
(1123, 128, '_wp_page_template', 'about-us.php'),
(1124, 128, 'about_us', 'About Us'),
(1125, 128, '_about_us', 'field_5b39d83a9e352'),
(1126, 128, 'company_history', 'Company History of me'),
(1127, 128, '_company_history', 'field_5b39d85c9e353'),
(1128, 128, 'slide1', '51'),
(1129, 128, '_slide1', 'field_5b39d89b9e354'),
(1130, 128, 'slide2', '51'),
(1131, 128, '_slide2', 'field_5b39d8b89e355'),
(1132, 128, 'slide3', '51'),
(1133, 128, '_slide3', 'field_5b39d8c69e356'),
(1134, 128, 'icon1', '51'),
(1135, 128, '_icon1', 'field_5b39d8da9e357'),
(1136, 128, 'icon2', '51'),
(1137, 128, '_icon2', 'field_5b39d8ea9e358'),
(1138, 128, 'icon3', '51'),
(1139, 128, '_icon3', 'field_5b39d8f99e359'),
(1140, 128, 'left_text1', 'left information'),
(1141, 128, '_left_text1', 'field_5b39d91b9e35a'),
(1142, 128, 'left_text2', 'information left text 2'),
(1143, 128, '_left_text2', 'field_5b39d92f9e35b'),
(1144, 128, 'left_text3', 'information left text 3'),
(1145, 128, '_left_text3', 'field_5b39d93d9e35c'),
(1146, 128, 'left_info1', 'left_info1'),
(1147, 128, '_left_info1', 'field_5b39d94b9e35d'),
(1148, 128, 'left_info2', 'left_info2'),
(1149, 128, '_left_info2', 'field_5b39d9609e35f'),
(1150, 128, 'left_info3', 'left_info3'),
(1151, 128, '_left_info3', 'field_5b39d9699e360'),
(1152, 128, 'tem_title', 'My Team member'),
(1153, 128, '_tem_title', 'field_5b39dd9bf8cce'),
(1154, 128, 'member1', '51'),
(1155, 128, '_member1', 'field_5b39ddb0f8ccf'),
(1156, 128, 'member2', '51'),
(1157, 128, '_member2', 'field_5b39ddc6f8cd2'),
(1158, 128, 'member3', '51'),
(1159, 128, '_member3', 'field_5b39ddc5f8cd1'),
(1160, 128, 'member4', '51'),
(1161, 128, '_member4', 'field_5b39ddc4f8cd0'),
(1186, 129, '_wp_page_template', 'about-us.php'),
(1187, 129, 'about_us', 'About Us'),
(1188, 129, '_about_us', 'field_5b39d83a9e352'),
(1189, 129, 'company_history', 'Company History of me'),
(1190, 129, '_company_history', 'field_5b39d85c9e353'),
(1191, 129, 'slide1', '51'),
(1192, 129, '_slide1', 'field_5b39d89b9e354'),
(1193, 129, 'slide2', '51'),
(1194, 129, '_slide2', 'field_5b39d8b89e355'),
(1195, 129, 'slide3', '51'),
(1196, 129, '_slide3', 'field_5b39d8c69e356'),
(1197, 129, 'icon1', '51'),
(1198, 129, '_icon1', 'field_5b39d8da9e357'),
(1199, 129, 'icon2', '51'),
(1200, 129, '_icon2', 'field_5b39d8ea9e358'),
(1201, 129, 'icon3', '51'),
(1202, 129, '_icon3', 'field_5b39d8f99e359'),
(1203, 129, 'left_text1', 'left information'),
(1204, 129, '_left_text1', 'field_5b39d91b9e35a'),
(1205, 129, 'left_text2', 'information left text 2'),
(1206, 129, '_left_text2', 'field_5b39d92f9e35b'),
(1207, 129, 'left_text3', 'information left text 3'),
(1208, 129, '_left_text3', 'field_5b39d93d9e35c'),
(1209, 129, 'left_info1', 'left_info1'),
(1210, 129, '_left_info1', 'field_5b39d94b9e35d'),
(1211, 129, 'left_info2', 'left_info2'),
(1212, 129, '_left_info2', 'field_5b39d9609e35f'),
(1213, 129, 'left_info3', 'left_info3'),
(1214, 129, '_left_info3', 'field_5b39d9699e360'),
(1215, 129, 'tem_title', 'My Team member'),
(1216, 129, '_tem_title', 'field_5b39dd9bf8cce'),
(1217, 129, 'member1', '51'),
(1218, 129, '_member1', 'field_5b39ddb0f8ccf'),
(1219, 129, 'member2', '51'),
(1220, 129, '_member2', 'field_5b39ddc6f8cd2'),
(1221, 129, 'member3', '51'),
(1222, 129, '_member3', 'field_5b39ddc5f8cd1'),
(1223, 129, 'member4', '51'),
(1224, 129, '_member4', 'field_5b39ddc4f8cd0'),
(1249, 130, '_wp_page_template', 'about-us.php'),
(1250, 130, 'about_us', 'About Us'),
(1251, 130, '_about_us', 'field_5b39d83a9e352'),
(1252, 130, 'company_history', 'Company History of me'),
(1253, 130, '_company_history', 'field_5b39d85c9e353'),
(1254, 130, 'slide1', '51'),
(1255, 130, '_slide1', 'field_5b39d89b9e354'),
(1256, 130, 'slide2', '51'),
(1257, 130, '_slide2', 'field_5b39d8b89e355'),
(1258, 130, 'slide3', '51'),
(1259, 130, '_slide3', 'field_5b39d8c69e356'),
(1260, 130, 'icon1', '51'),
(1261, 130, '_icon1', 'field_5b39d8da9e357'),
(1262, 130, 'icon2', '51'),
(1263, 130, '_icon2', 'field_5b39d8ea9e358'),
(1264, 130, 'icon3', '51'),
(1265, 130, '_icon3', 'field_5b39d8f99e359'),
(1266, 130, 'left_text1', 'left information'),
(1267, 130, '_left_text1', 'field_5b39d91b9e35a'),
(1268, 130, 'left_text2', 'information left text 2'),
(1269, 130, '_left_text2', 'field_5b39d92f9e35b'),
(1270, 130, 'left_text3', 'information left text 3'),
(1271, 130, '_left_text3', 'field_5b39d93d9e35c'),
(1272, 130, 'left_info1', 'left_info1'),
(1273, 130, '_left_info1', 'field_5b39d94b9e35d'),
(1274, 130, 'left_info2', 'left_info2'),
(1275, 130, '_left_info2', 'field_5b39d9609e35f'),
(1276, 130, 'left_info3', 'left_info3'),
(1277, 130, '_left_info3', 'field_5b39d9699e360'),
(1278, 130, 'tem_title', 'My Team member'),
(1279, 130, '_tem_title', 'field_5b39dd9bf8cce'),
(1280, 130, 'member1', '51'),
(1281, 130, '_member1', 'field_5b39ddb0f8ccf'),
(1282, 130, 'member2', '51'),
(1283, 130, '_member2', 'field_5b39ddc6f8cd2'),
(1284, 130, 'member3', '51'),
(1285, 130, '_member3', 'field_5b39ddc5f8cd1'),
(1286, 130, 'member4', '51'),
(1287, 130, '_member4', 'field_5b39ddc4f8cd0'),
(1312, 131, '_wp_page_template', 'about-us.php'),
(1313, 131, 'about_us', 'About Us'),
(1314, 131, '_about_us', 'field_5b39d83a9e352'),
(1315, 131, 'company_history', 'Company History of me'),
(1316, 131, '_company_history', 'field_5b39d85c9e353'),
(1317, 131, 'slide1', '51'),
(1318, 131, '_slide1', 'field_5b39d89b9e354'),
(1319, 131, 'slide2', '51'),
(1320, 131, '_slide2', 'field_5b39d8b89e355'),
(1321, 131, 'slide3', '51'),
(1322, 131, '_slide3', 'field_5b39d8c69e356'),
(1323, 131, 'icon1', '51'),
(1324, 131, '_icon1', 'field_5b39d8da9e357'),
(1325, 131, 'icon2', '51'),
(1326, 131, '_icon2', 'field_5b39d8ea9e358'),
(1327, 131, 'icon3', '51'),
(1328, 131, '_icon3', 'field_5b39d8f99e359'),
(1329, 131, 'left_text1', 'left information'),
(1330, 131, '_left_text1', 'field_5b39d91b9e35a'),
(1331, 131, 'left_text2', 'information left text 2'),
(1332, 131, '_left_text2', 'field_5b39d92f9e35b'),
(1333, 131, 'left_text3', 'information left text 3'),
(1334, 131, '_left_text3', 'field_5b39d93d9e35c'),
(1335, 131, 'left_info1', 'left_info1'),
(1336, 131, '_left_info1', 'field_5b39d94b9e35d'),
(1337, 131, 'left_info2', 'left_info2'),
(1338, 131, '_left_info2', 'field_5b39d9609e35f'),
(1339, 131, 'left_info3', 'left_info3'),
(1340, 131, '_left_info3', 'field_5b39d9699e360'),
(1341, 131, 'tem_title', 'My Team member'),
(1342, 131, '_tem_title', 'field_5b39dd9bf8cce'),
(1343, 131, 'member1', '51'),
(1344, 131, '_member1', 'field_5b39ddb0f8ccf'),
(1345, 131, 'member2', '51'),
(1346, 131, '_member2', 'field_5b39ddc6f8cd2'),
(1347, 131, 'member3', '51'),
(1348, 131, '_member3', 'field_5b39ddc5f8cd1'),
(1349, 131, 'member4', '51'),
(1350, 131, '_member4', 'field_5b39ddc4f8cd0'),
(1375, 132, '_wp_page_template', 'home-page.php'),
(1376, 132, 'main_text', 'Get The Best Of SEA in the world'),
(1377, 132, '_main_text', 'field_5b398dbd218d8'),
(1378, 132, 'line1', 'Buy Now'),
(1379, 132, '_line1', 'field_5b398e379027f'),
(1380, 132, 'line2', 'Check Now'),
(1381, 132, '_line2', 'field_5b398e72c75ae'),
(1382, 132, 'line3', 'Find More'),
(1383, 132, '_line3', 'field_5b398e85c75af'),
(1384, 132, 'tag_label', '26'),
(1385, 132, '_tag_label', 'field_5b3990128147a'),
(1386, 132, '_', 'field_5b3990328147b'),
(1387, 132, 'text1', 'SUBSCRIBE Now'),
(1388, 132, '_text1', 'field_5b3992e081d7d'),
(1389, 132, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN '),
(1390, 132, '_text2', 'field_5b3992fc45d03'),
(1391, 132, 'text3', 'Subscribe to the UNRESERVED magazine and'),
(1392, 132, '_text3', 'field_5b39930945d04'),
(1393, 132, 'image', '28'),
(1394, 132, '_image', 'field_5b39935245d07'),
(1406, 133, '_wp_page_template', 'home-page.php'),
(1407, 133, 'main_text', 'Get The Best Of SEA in the world'),
(1408, 133, '_main_text', 'field_5b398dbd218d8'),
(1409, 133, 'line1', 'Buy Now'),
(1410, 133, '_line1', 'field_5b398e379027f'),
(1411, 133, 'line2', 'Check Now'),
(1412, 133, '_line2', 'field_5b398e72c75ae'),
(1413, 133, 'line3', 'Find More'),
(1414, 133, '_line3', 'field_5b398e85c75af'),
(1415, 133, 'tag_label', '26'),
(1416, 133, '_tag_label', 'field_5b3990128147a'),
(1417, 133, '_', 'field_5b3990328147b'),
(1418, 133, 'text1', 'SUBSCRIBE Now'),
(1419, 133, '_text1', 'field_5b3992e081d7d'),
(1420, 133, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN '),
(1421, 133, '_text2', 'field_5b3992fc45d03'),
(1422, 133, 'text3', 'Subscribe to the UNRESERVED magazine and'),
(1423, 133, '_text3', 'field_5b39930945d04'),
(1424, 133, 'image', '28'),
(1425, 133, '_image', 'field_5b39935245d07'),
(1439, 137, '_edit_lock', '1530701328:1'),
(1440, 137, '_edit_last', '1'),
(1441, 137, 'sanpham_price', '5000'),
(1442, 137, 'sanpham_attributes', 'a:2:{i:0;a:2:{s:16:\"sanpham_att_name\";s:11:\"comfortable\";s:17:\"sanpham_att_value\";s:10:\"execellent\";}i:1;a:2:{s:16:\"sanpham_att_name\";s:11:\"convenience\";s:17:\"sanpham_att_value\";s:7:\"awesome\";}}'),
(1443, 137, '_thumbnail_id', '51'),
(1444, 138, '_edit_lock', '1530701515:1'),
(1445, 138, '_edit_last', '1'),
(1446, 139, '_wp_attached_file', '2018/07/slide1.jpg'),
(1447, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2459;s:6:\"height\";i:1844;s:4:\"file\";s:18:\"2018/07/slide1.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"slide1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"slide1-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slide1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sparkling-featured\";a:4:{s:4:\"file\";s:18:\"slide1-750x410.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"sparkling-featured-fullwidth\";a:4:{s:4:\"file\";s:19:\"slide1-1140x624.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:16:\"slide1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"sanpham_thumb\";a:4:{s:4:\"file\";s:18:\"slide1-370x277.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:16:\"slide1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1448, 138, 'sanpham_price', '6000'),
(1449, 138, 'sanpham_attributes', 'a:1:{i:0;a:2:{s:16:\"sanpham_att_name\";s:16:\"supper beautiful\";s:17:\"sanpham_att_value\";s:5:\"Great\";}}'),
(1450, 138, '_thumbnail_id', '139'),
(1451, 140, '_edit_lock', '1530700426:1'),
(1452, 140, '_edit_last', '1'),
(1453, 141, '_wp_attached_file', '2018/07/member4.jpg'),
(1454, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2592;s:6:\"height\";i:1728;s:4:\"file\";s:19:\"2018/07/member4.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"member4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"member4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"member4-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"member4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"member4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"member4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"member4-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sparkling-featured\";a:4:{s:4:\"file\";s:19:\"member4-750x410.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"sparkling-featured-fullwidth\";a:4:{s:4:\"file\";s:20:\"member4-1140x624.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:17:\"member4-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"sanpham_thumb\";a:4:{s:4:\"file\";s:19:\"member4-370x247.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:17:\"member4-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1455, 140, 'sanpham_price', '4000'),
(1456, 140, 'sanpham_attributes', 'a:1:{i:0;a:2:{s:16:\"sanpham_att_name\";s:4:\"cold\";s:17:\"sanpham_att_value\";s:4:\"best\";}}'),
(1457, 140, '_thumbnail_id', '141'),
(1458, 142, '_edit_lock', '1530701709:1'),
(1459, 142, '_edit_last', '1'),
(1460, 143, '_wp_attached_file', '2018/07/slide2.jpg'),
(1461, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5472;s:6:\"height\";i:3648;s:4:\"file\";s:18:\"2018/07/slide2.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"slide2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"slide2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"slide2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slide2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sparkling-featured\";a:4:{s:4:\"file\";s:18:\"slide2-750x410.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"sparkling-featured-fullwidth\";a:4:{s:4:\"file\";s:19:\"slide2-1140x624.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:16:\"slide2-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"sanpham_thumb\";a:4:{s:4:\"file\";s:18:\"slide2-370x247.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:16:\"slide2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1462, 142, 'sanpham_price', '3000'),
(1463, 142, 'sanpham_attributes', 'a:1:{i:0;a:2:{s:16:\"sanpham_att_name\";s:3:\"hot\";s:17:\"sanpham_att_value\";s:6:\"so hot\";}}'),
(1464, 142, '_thumbnail_id', '143'),
(1465, 143, '_edit_lock', '1530700791:1'),
(1466, 145, '_wc_review_count', '0'),
(1467, 145, '_wc_rating_count', 'a:0:{}'),
(1468, 145, '_wc_average_rating', '0'),
(1469, 145, '_edit_lock', '1530772487:1'),
(1470, 145, '_edit_last', '1'),
(1471, 146, '_wp_attached_file', '2018/07/ao1.jpg'),
(1472, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:756;s:4:\"file\";s:15:\"2018/07/ao1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"ao1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ao1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"ao1-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"ao1-416x582.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"ao1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"ao1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"ao1-416x582.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"ao1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:13:\"ao1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1473, 145, '_thumbnail_id', '146'),
(1474, 145, '_sku', ''),
(1475, 145, '_regular_price', '5000'),
(1476, 145, '_sale_price', ''),
(1477, 145, '_sale_price_dates_from', ''),
(1478, 145, '_sale_price_dates_to', ''),
(1479, 145, 'total_sales', '0'),
(1480, 145, '_tax_status', 'taxable'),
(1481, 145, '_tax_class', ''),
(1482, 145, '_manage_stock', 'no'),
(1483, 145, '_backorders', 'no'),
(1484, 145, '_sold_individually', 'no'),
(1485, 145, '_weight', ''),
(1486, 145, '_length', ''),
(1487, 145, '_width', ''),
(1488, 145, '_height', ''),
(1489, 145, '_upsell_ids', 'a:0:{}'),
(1490, 145, '_crosssell_ids', 'a:0:{}'),
(1491, 145, '_purchase_note', ''),
(1492, 145, '_default_attributes', 'a:0:{}'),
(1493, 145, '_virtual', 'no'),
(1494, 145, '_downloadable', 'no'),
(1495, 145, '_product_image_gallery', '141,139'),
(1496, 145, '_download_limit', '-1'),
(1497, 145, '_download_expiry', '-1'),
(1498, 145, '_stock', NULL),
(1499, 145, '_stock_status', 'instock'),
(1500, 145, '_product_version', '3.4.3'),
(1501, 145, '_price', '5000'),
(1502, 147, '_wc_review_count', '0'),
(1503, 147, '_wc_rating_count', 'a:0:{}'),
(1504, 147, '_wc_average_rating', '0'),
(1505, 147, '_edit_lock', '1530772618:1'),
(1506, 147, '_edit_last', '1'),
(1507, 148, '_wp_attached_file', '2018/07/quan1.jpg'),
(1508, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:756;s:4:\"file\";s:17:\"2018/07/quan1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"quan1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"quan1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"quan1-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"quan1-416x582.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"quan1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"quan1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"quan1-416x582.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"quan1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:15:\"quan1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1509, 149, '_wp_attached_file', '2018/07/ao2.jpg'),
(1510, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:756;s:4:\"file\";s:15:\"2018/07/ao2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"ao2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ao2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"ao2-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"ao2-416x582.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"ao2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"ao2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"ao2-416x582.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"ao2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:13:\"ao2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1511, 150, '_wp_attached_file', '2018/07/quan2.jpg'),
(1512, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:756;s:4:\"file\";s:17:\"2018/07/quan2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"quan2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"quan2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"quan2-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"quan2-416x582.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"quan2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"quan2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"quan2-416x582.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"quan2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:15:\"quan2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1513, 147, '_thumbnail_id', '150'),
(1514, 147, '_sku', ''),
(1515, 147, '_regular_price', '70000'),
(1516, 147, '_sale_price', '20000'),
(1517, 147, '_sale_price_dates_from', ''),
(1518, 147, '_sale_price_dates_to', ''),
(1519, 147, 'total_sales', '0'),
(1520, 147, '_tax_status', 'taxable'),
(1521, 147, '_tax_class', ''),
(1522, 147, '_manage_stock', 'no'),
(1523, 147, '_backorders', 'no'),
(1524, 147, '_sold_individually', 'no'),
(1525, 147, '_weight', ''),
(1526, 147, '_length', ''),
(1527, 147, '_width', ''),
(1528, 147, '_height', ''),
(1529, 147, '_upsell_ids', 'a:0:{}'),
(1530, 147, '_crosssell_ids', 'a:0:{}'),
(1531, 147, '_purchase_note', ''),
(1532, 147, '_default_attributes', 'a:0:{}'),
(1533, 147, '_virtual', 'no'),
(1534, 147, '_downloadable', 'no'),
(1535, 147, '_product_image_gallery', '148,149,150'),
(1536, 147, '_download_limit', '-1'),
(1537, 147, '_download_expiry', '-1'),
(1538, 147, '_stock', NULL),
(1539, 147, '_stock_status', 'instock'),
(1540, 147, '_product_version', '3.4.3'),
(1541, 147, '_price', '20000'),
(1542, 113, '_wp_trash_meta_status', 'publish'),
(1543, 113, '_wp_trash_meta_time', '1530772780'),
(1544, 113, '_wp_desired_post_slug', 'new-product'),
(1548, 153, '_sku', 'woo-vneck-tee'),
(1551, 153, '_sale_price_dates_from', ''),
(1552, 153, '_sale_price_dates_to', ''),
(1553, 153, 'total_sales', '0'),
(1554, 153, '_tax_status', 'taxable'),
(1555, 153, '_tax_class', ''),
(1556, 153, '_manage_stock', 'no'),
(1557, 153, '_backorders', 'no'),
(1558, 153, '_sold_individually', 'no'),
(1559, 153, '_weight', ''),
(1560, 153, '_length', ''),
(1561, 153, '_width', ''),
(1562, 153, '_height', ''),
(1563, 153, '_upsell_ids', 'a:0:{}'),
(1564, 153, '_crosssell_ids', 'a:0:{}'),
(1565, 153, '_purchase_note', ''),
(1566, 153, '_default_attributes', 'a:0:{}'),
(1567, 153, '_virtual', 'no'),
(1568, 153, '_downloadable', 'no'),
(1569, 153, '_product_image_gallery', '181,182'),
(1570, 153, '_download_limit', '0'),
(1571, 153, '_download_expiry', '0'),
(1572, 153, '_stock', NULL),
(1573, 153, '_stock_status', 'instock'),
(1574, 153, '_wc_average_rating', '0'),
(1575, 153, '_wc_rating_count', 'a:0:{}'),
(1576, 153, '_wc_review_count', '0'),
(1577, 153, '_downloadable_files', 'a:0:{}'),
(1578, 153, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1579, 153, '_product_version', '3.4.3'),
(1582, 154, '_sku', 'woo-hoodie'),
(1585, 154, '_sale_price_dates_from', ''),
(1586, 154, '_sale_price_dates_to', ''),
(1587, 154, 'total_sales', '0'),
(1588, 154, '_tax_status', 'taxable'),
(1589, 154, '_tax_class', ''),
(1590, 154, '_manage_stock', 'no'),
(1591, 154, '_backorders', 'no'),
(1592, 154, '_sold_individually', 'no'),
(1593, 154, '_weight', ''),
(1594, 154, '_length', ''),
(1595, 154, '_width', ''),
(1596, 154, '_height', ''),
(1597, 154, '_upsell_ids', 'a:0:{}'),
(1598, 154, '_crosssell_ids', 'a:0:{}'),
(1599, 154, '_purchase_note', ''),
(1600, 154, '_default_attributes', 'a:0:{}'),
(1601, 154, '_virtual', 'no'),
(1602, 154, '_downloadable', 'no'),
(1603, 154, '_product_image_gallery', '184,185,186'),
(1604, 154, '_download_limit', '0'),
(1605, 154, '_download_expiry', '0'),
(1606, 154, '_stock', NULL),
(1607, 154, '_stock_status', 'instock'),
(1608, 154, '_wc_average_rating', '0'),
(1609, 154, '_wc_rating_count', 'a:0:{}'),
(1610, 154, '_wc_review_count', '0'),
(1611, 154, '_downloadable_files', 'a:0:{}'),
(1612, 154, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(1613, 154, '_product_version', '3.4.3'),
(1616, 155, '_sku', 'woo-hoodie-with-logo'),
(1617, 155, '_regular_price', '45'),
(1618, 155, '_sale_price', ''),
(1619, 155, '_sale_price_dates_from', ''),
(1620, 155, '_sale_price_dates_to', ''),
(1621, 155, 'total_sales', '0'),
(1622, 155, '_tax_status', 'taxable'),
(1623, 155, '_tax_class', ''),
(1624, 155, '_manage_stock', 'no'),
(1625, 155, '_backorders', 'no'),
(1626, 155, '_sold_individually', 'no'),
(1627, 155, '_weight', ''),
(1628, 155, '_length', ''),
(1629, 155, '_width', ''),
(1630, 155, '_height', ''),
(1631, 155, '_upsell_ids', 'a:0:{}'),
(1632, 155, '_crosssell_ids', 'a:0:{}'),
(1633, 155, '_purchase_note', ''),
(1634, 155, '_default_attributes', 'a:0:{}'),
(1635, 155, '_virtual', 'no'),
(1636, 155, '_downloadable', 'no'),
(1637, 155, '_product_image_gallery', ''),
(1638, 155, '_download_limit', '0'),
(1639, 155, '_download_expiry', '0'),
(1640, 155, '_stock', NULL),
(1641, 155, '_stock_status', 'instock'),
(1642, 155, '_wc_average_rating', '0'),
(1643, 155, '_wc_rating_count', 'a:0:{}'),
(1644, 155, '_wc_review_count', '0'),
(1645, 155, '_downloadable_files', 'a:0:{}'),
(1646, 155, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1647, 155, '_product_version', '3.4.3'),
(1648, 155, '_price', '45'),
(1650, 156, '_sku', 'woo-tshirt'),
(1651, 156, '_regular_price', '18'),
(1652, 156, '_sale_price', ''),
(1653, 156, '_sale_price_dates_from', ''),
(1654, 156, '_sale_price_dates_to', ''),
(1655, 156, 'total_sales', '0'),
(1656, 156, '_tax_status', 'taxable'),
(1657, 156, '_tax_class', ''),
(1658, 156, '_manage_stock', 'no'),
(1659, 156, '_backorders', 'no'),
(1660, 156, '_sold_individually', 'no'),
(1661, 156, '_weight', ''),
(1662, 156, '_length', ''),
(1663, 156, '_width', ''),
(1664, 156, '_height', ''),
(1665, 156, '_upsell_ids', 'a:0:{}'),
(1666, 156, '_crosssell_ids', 'a:0:{}'),
(1667, 156, '_purchase_note', ''),
(1668, 156, '_default_attributes', 'a:0:{}'),
(1669, 156, '_virtual', 'no'),
(1670, 156, '_downloadable', 'no'),
(1671, 156, '_product_image_gallery', ''),
(1672, 156, '_download_limit', '0'),
(1673, 156, '_download_expiry', '0'),
(1674, 156, '_stock', NULL),
(1675, 156, '_stock_status', 'instock'),
(1676, 156, '_wc_average_rating', '0'),
(1677, 156, '_wc_rating_count', 'a:0:{}'),
(1678, 156, '_wc_review_count', '0'),
(1679, 156, '_downloadable_files', 'a:0:{}'),
(1680, 156, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1681, 156, '_product_version', '3.4.3'),
(1682, 156, '_price', '18'),
(1684, 157, '_sku', 'woo-beanie'),
(1685, 157, '_regular_price', '20'),
(1686, 157, '_sale_price', '18'),
(1687, 157, '_sale_price_dates_from', ''),
(1688, 157, '_sale_price_dates_to', ''),
(1689, 157, 'total_sales', '0'),
(1690, 157, '_tax_status', 'taxable'),
(1691, 157, '_tax_class', ''),
(1692, 157, '_manage_stock', 'no'),
(1693, 157, '_backorders', 'no'),
(1694, 157, '_sold_individually', 'no'),
(1695, 157, '_weight', ''),
(1696, 157, '_length', ''),
(1697, 157, '_width', ''),
(1698, 157, '_height', ''),
(1699, 157, '_upsell_ids', 'a:0:{}'),
(1700, 157, '_crosssell_ids', 'a:0:{}'),
(1701, 157, '_purchase_note', ''),
(1702, 157, '_default_attributes', 'a:0:{}'),
(1703, 157, '_virtual', 'no'),
(1704, 157, '_downloadable', 'no'),
(1705, 157, '_product_image_gallery', ''),
(1706, 157, '_download_limit', '0'),
(1707, 157, '_download_expiry', '0'),
(1708, 157, '_stock', NULL),
(1709, 157, '_stock_status', 'instock'),
(1710, 157, '_wc_average_rating', '0'),
(1711, 157, '_wc_rating_count', 'a:0:{}'),
(1712, 157, '_wc_review_count', '0'),
(1713, 157, '_downloadable_files', 'a:0:{}'),
(1714, 157, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1715, 157, '_product_version', '3.4.3'),
(1716, 157, '_price', '18'),
(1718, 158, '_sku', 'woo-belt'),
(1719, 158, '_regular_price', '65'),
(1720, 158, '_sale_price', '55'),
(1721, 158, '_sale_price_dates_from', ''),
(1722, 158, '_sale_price_dates_to', ''),
(1723, 158, 'total_sales', '0'),
(1724, 158, '_tax_status', 'taxable'),
(1725, 158, '_tax_class', ''),
(1726, 158, '_manage_stock', 'no'),
(1727, 158, '_backorders', 'no'),
(1728, 158, '_sold_individually', 'no'),
(1729, 158, '_weight', ''),
(1730, 158, '_length', ''),
(1731, 158, '_width', ''),
(1732, 158, '_height', ''),
(1733, 158, '_upsell_ids', 'a:0:{}'),
(1734, 158, '_crosssell_ids', 'a:0:{}'),
(1735, 158, '_purchase_note', ''),
(1736, 158, '_default_attributes', 'a:0:{}'),
(1737, 158, '_virtual', 'no'),
(1738, 158, '_downloadable', 'no'),
(1739, 158, '_product_image_gallery', ''),
(1740, 158, '_download_limit', '0'),
(1741, 158, '_download_expiry', '0'),
(1742, 158, '_stock', NULL),
(1743, 158, '_stock_status', 'instock'),
(1744, 158, '_wc_average_rating', '0'),
(1745, 158, '_wc_rating_count', 'a:0:{}'),
(1746, 158, '_wc_review_count', '0'),
(1747, 158, '_downloadable_files', 'a:0:{}'),
(1748, 158, '_product_attributes', 'a:0:{}'),
(1749, 158, '_product_version', '3.4.3'),
(1750, 158, '_price', '55'),
(1752, 159, '_sku', 'woo-cap'),
(1753, 159, '_regular_price', '18'),
(1754, 159, '_sale_price', '16'),
(1755, 159, '_sale_price_dates_from', ''),
(1756, 159, '_sale_price_dates_to', ''),
(1757, 159, 'total_sales', '0'),
(1758, 159, '_tax_status', 'taxable'),
(1759, 159, '_tax_class', ''),
(1760, 159, '_manage_stock', 'no'),
(1761, 159, '_backorders', 'no'),
(1762, 159, '_sold_individually', 'no'),
(1763, 159, '_weight', ''),
(1764, 159, '_length', ''),
(1765, 159, '_width', ''),
(1766, 159, '_height', ''),
(1767, 159, '_upsell_ids', 'a:0:{}'),
(1768, 159, '_crosssell_ids', 'a:0:{}'),
(1769, 159, '_purchase_note', ''),
(1770, 159, '_default_attributes', 'a:0:{}'),
(1771, 159, '_virtual', 'no'),
(1772, 159, '_downloadable', 'no'),
(1773, 159, '_product_image_gallery', ''),
(1774, 159, '_download_limit', '0'),
(1775, 159, '_download_expiry', '0'),
(1776, 159, '_stock', NULL),
(1777, 159, '_stock_status', 'instock'),
(1778, 159, '_wc_average_rating', '0'),
(1779, 159, '_wc_rating_count', 'a:0:{}'),
(1780, 159, '_wc_review_count', '0'),
(1781, 159, '_downloadable_files', 'a:0:{}'),
(1782, 159, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1783, 159, '_product_version', '3.4.3'),
(1784, 159, '_price', '16'),
(1786, 160, '_sku', 'woo-sunglasses'),
(1787, 160, '_regular_price', '90'),
(1788, 160, '_sale_price', ''),
(1789, 160, '_sale_price_dates_from', ''),
(1790, 160, '_sale_price_dates_to', ''),
(1791, 160, 'total_sales', '0'),
(1792, 160, '_tax_status', 'taxable'),
(1793, 160, '_tax_class', ''),
(1794, 160, '_manage_stock', 'no'),
(1795, 160, '_backorders', 'no'),
(1796, 160, '_sold_individually', 'no'),
(1797, 160, '_weight', ''),
(1798, 160, '_length', ''),
(1799, 160, '_width', ''),
(1800, 160, '_height', ''),
(1801, 160, '_upsell_ids', 'a:0:{}'),
(1802, 160, '_crosssell_ids', 'a:0:{}'),
(1803, 160, '_purchase_note', ''),
(1804, 160, '_default_attributes', 'a:0:{}'),
(1805, 160, '_virtual', 'no'),
(1806, 160, '_downloadable', 'no'),
(1807, 160, '_product_image_gallery', ''),
(1808, 160, '_download_limit', '0'),
(1809, 160, '_download_expiry', '0'),
(1810, 160, '_stock', NULL),
(1811, 160, '_stock_status', 'instock'),
(1812, 160, '_wc_average_rating', '0'),
(1813, 160, '_wc_rating_count', 'a:0:{}'),
(1814, 160, '_wc_review_count', '0'),
(1815, 160, '_downloadable_files', 'a:0:{}'),
(1816, 160, '_product_attributes', 'a:0:{}'),
(1817, 160, '_product_version', '3.4.3'),
(1818, 160, '_price', '90'),
(1820, 161, '_sku', 'woo-hoodie-with-pocket'),
(1821, 161, '_regular_price', '45'),
(1822, 161, '_sale_price', '35'),
(1823, 161, '_sale_price_dates_from', ''),
(1824, 161, '_sale_price_dates_to', ''),
(1825, 161, 'total_sales', '0'),
(1826, 161, '_tax_status', 'taxable'),
(1827, 161, '_tax_class', ''),
(1828, 161, '_manage_stock', 'no'),
(1829, 161, '_backorders', 'no'),
(1830, 161, '_sold_individually', 'no'),
(1831, 161, '_weight', ''),
(1832, 161, '_length', ''),
(1833, 161, '_width', ''),
(1834, 161, '_height', ''),
(1835, 161, '_upsell_ids', 'a:0:{}'),
(1836, 161, '_crosssell_ids', 'a:0:{}'),
(1837, 161, '_purchase_note', ''),
(1838, 161, '_default_attributes', 'a:0:{}'),
(1839, 161, '_virtual', 'no'),
(1840, 161, '_downloadable', 'no'),
(1841, 161, '_product_image_gallery', ''),
(1842, 161, '_download_limit', '0'),
(1843, 161, '_download_expiry', '0'),
(1844, 161, '_stock', NULL),
(1845, 161, '_stock_status', 'instock'),
(1846, 161, '_wc_average_rating', '0'),
(1847, 161, '_wc_rating_count', 'a:0:{}'),
(1848, 161, '_wc_review_count', '0'),
(1849, 161, '_downloadable_files', 'a:0:{}'),
(1850, 161, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1851, 161, '_product_version', '3.4.3'),
(1852, 161, '_price', '35'),
(1854, 162, '_sku', 'woo-hoodie-with-zipper'),
(1855, 162, '_regular_price', '45'),
(1856, 162, '_sale_price', ''),
(1857, 162, '_sale_price_dates_from', ''),
(1858, 162, '_sale_price_dates_to', ''),
(1859, 162, 'total_sales', '0'),
(1860, 162, '_tax_status', 'taxable'),
(1861, 162, '_tax_class', ''),
(1862, 162, '_manage_stock', 'no'),
(1863, 162, '_backorders', 'no'),
(1864, 162, '_sold_individually', 'no'),
(1865, 162, '_weight', ''),
(1866, 162, '_length', ''),
(1867, 162, '_width', ''),
(1868, 162, '_height', ''),
(1869, 162, '_upsell_ids', 'a:0:{}'),
(1870, 162, '_crosssell_ids', 'a:0:{}'),
(1871, 162, '_purchase_note', ''),
(1872, 162, '_default_attributes', 'a:0:{}'),
(1873, 162, '_virtual', 'no'),
(1874, 162, '_downloadable', 'no'),
(1875, 162, '_product_image_gallery', ''),
(1876, 162, '_download_limit', '0'),
(1877, 162, '_download_expiry', '0'),
(1878, 162, '_stock', NULL),
(1879, 162, '_stock_status', 'instock'),
(1880, 162, '_wc_average_rating', '0'),
(1881, 162, '_wc_rating_count', 'a:0:{}'),
(1882, 162, '_wc_review_count', '0'),
(1883, 162, '_downloadable_files', 'a:0:{}'),
(1884, 162, '_product_attributes', 'a:0:{}'),
(1885, 162, '_product_version', '3.4.3'),
(1886, 162, '_price', '45'),
(1888, 163, '_sku', 'woo-long-sleeve-tee'),
(1889, 163, '_regular_price', '25'),
(1890, 163, '_sale_price', ''),
(1891, 163, '_sale_price_dates_from', ''),
(1892, 163, '_sale_price_dates_to', ''),
(1893, 163, 'total_sales', '0'),
(1894, 163, '_tax_status', 'taxable'),
(1895, 163, '_tax_class', ''),
(1896, 163, '_manage_stock', 'no'),
(1897, 163, '_backorders', 'no'),
(1898, 163, '_sold_individually', 'no'),
(1899, 163, '_weight', ''),
(1900, 163, '_length', ''),
(1901, 163, '_width', ''),
(1902, 163, '_height', ''),
(1903, 163, '_upsell_ids', 'a:0:{}'),
(1904, 163, '_crosssell_ids', 'a:0:{}'),
(1905, 163, '_purchase_note', ''),
(1906, 163, '_default_attributes', 'a:0:{}'),
(1907, 163, '_virtual', 'no'),
(1908, 163, '_downloadable', 'no'),
(1909, 163, '_product_image_gallery', ''),
(1910, 163, '_download_limit', '0'),
(1911, 163, '_download_expiry', '0'),
(1912, 163, '_stock', NULL),
(1913, 163, '_stock_status', 'instock'),
(1914, 163, '_wc_average_rating', '0'),
(1915, 163, '_wc_rating_count', 'a:0:{}'),
(1916, 163, '_wc_review_count', '0'),
(1917, 163, '_downloadable_files', 'a:0:{}'),
(1918, 163, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1919, 163, '_product_version', '3.4.3'),
(1920, 163, '_price', '25'),
(1922, 164, '_sku', 'woo-polo'),
(1923, 164, '_regular_price', '20'),
(1924, 164, '_sale_price', ''),
(1925, 164, '_sale_price_dates_from', ''),
(1926, 164, '_sale_price_dates_to', ''),
(1927, 164, 'total_sales', '0'),
(1928, 164, '_tax_status', 'taxable'),
(1929, 164, '_tax_class', ''),
(1930, 164, '_manage_stock', 'no'),
(1931, 164, '_backorders', 'no'),
(1932, 164, '_sold_individually', 'no'),
(1933, 164, '_weight', ''),
(1934, 164, '_length', ''),
(1935, 164, '_width', ''),
(1936, 164, '_height', ''),
(1937, 164, '_upsell_ids', 'a:0:{}'),
(1938, 164, '_crosssell_ids', 'a:0:{}'),
(1939, 164, '_purchase_note', ''),
(1940, 164, '_default_attributes', 'a:0:{}'),
(1941, 164, '_virtual', 'no'),
(1942, 164, '_downloadable', 'no'),
(1943, 164, '_product_image_gallery', ''),
(1944, 164, '_download_limit', '0'),
(1945, 164, '_download_expiry', '0'),
(1946, 164, '_stock', NULL),
(1947, 164, '_stock_status', 'instock'),
(1948, 164, '_wc_average_rating', '0'),
(1949, 164, '_wc_rating_count', 'a:0:{}'),
(1950, 164, '_wc_review_count', '0'),
(1951, 164, '_downloadable_files', 'a:0:{}'),
(1952, 164, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1953, 164, '_product_version', '3.4.3'),
(1954, 164, '_price', '20'),
(1956, 165, '_sku', 'woo-album'),
(1957, 165, '_regular_price', '15'),
(1958, 165, '_sale_price', ''),
(1959, 165, '_sale_price_dates_from', ''),
(1960, 165, '_sale_price_dates_to', ''),
(1961, 165, 'total_sales', '0'),
(1962, 165, '_tax_status', 'taxable'),
(1963, 165, '_tax_class', ''),
(1964, 165, '_manage_stock', 'no'),
(1965, 165, '_backorders', 'no'),
(1966, 165, '_sold_individually', 'no'),
(1967, 165, '_weight', ''),
(1968, 165, '_length', ''),
(1969, 165, '_width', ''),
(1970, 165, '_height', ''),
(1971, 165, '_upsell_ids', 'a:0:{}'),
(1972, 165, '_crosssell_ids', 'a:0:{}'),
(1973, 165, '_purchase_note', ''),
(1974, 165, '_default_attributes', 'a:0:{}'),
(1975, 165, '_virtual', 'yes'),
(1976, 165, '_downloadable', 'yes'),
(1977, 165, '_product_image_gallery', ''),
(1978, 165, '_download_limit', '1'),
(1979, 165, '_download_expiry', '1'),
(1980, 165, '_stock', NULL),
(1981, 165, '_stock_status', 'instock'),
(1982, 165, '_wc_average_rating', '0'),
(1983, 165, '_wc_rating_count', 'a:0:{}'),
(1984, 165, '_wc_review_count', '0'),
(1985, 165, '_downloadable_files', 'a:2:{s:36:\"ed4d75e7-8509-4a84-98bc-f2816c7a6f04\";a:3:{s:2:\"id\";s:36:\"ed4d75e7-8509-4a84-98bc-f2816c7a6f04\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"e5ef0f28-e928-4ca4-987c-b43fb4161bec\";a:3:{s:2:\"id\";s:36:\"e5ef0f28-e928-4ca4-987c-b43fb4161bec\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
(1986, 165, '_product_attributes', 'a:0:{}'),
(1987, 165, '_product_version', '3.4.3'),
(1988, 165, '_price', '15'),
(1990, 166, '_sku', 'woo-single'),
(1991, 166, '_regular_price', '3'),
(1992, 166, '_sale_price', '2'),
(1993, 166, '_sale_price_dates_from', ''),
(1994, 166, '_sale_price_dates_to', ''),
(1995, 166, 'total_sales', '0'),
(1996, 166, '_tax_status', 'taxable'),
(1997, 166, '_tax_class', ''),
(1998, 166, '_manage_stock', 'no'),
(1999, 166, '_backorders', 'no'),
(2000, 166, '_sold_individually', 'no'),
(2001, 166, '_weight', ''),
(2002, 166, '_length', ''),
(2003, 166, '_width', ''),
(2004, 166, '_height', ''),
(2005, 166, '_upsell_ids', 'a:0:{}'),
(2006, 166, '_crosssell_ids', 'a:0:{}'),
(2007, 166, '_purchase_note', ''),
(2008, 166, '_default_attributes', 'a:0:{}'),
(2009, 166, '_virtual', 'yes'),
(2010, 166, '_downloadable', 'yes'),
(2011, 166, '_product_image_gallery', ''),
(2012, 166, '_download_limit', '1'),
(2013, 166, '_download_expiry', '1'),
(2014, 166, '_stock', NULL),
(2015, 166, '_stock_status', 'instock'),
(2016, 166, '_wc_average_rating', '0'),
(2017, 166, '_wc_rating_count', 'a:0:{}'),
(2018, 166, '_wc_review_count', '0'),
(2019, 166, '_downloadable_files', 'a:1:{s:36:\"4cbe809a-f96d-45c3-b060-86ddb86de8c8\";a:3:{s:2:\"id\";s:36:\"4cbe809a-f96d-45c3-b060-86ddb86de8c8\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}}'),
(2020, 166, '_product_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2021, 166, '_product_version', '3.4.3'),
(2022, 166, '_price', '2'),
(2024, 167, '_sku', 'woo-vneck-tee-red'),
(2025, 167, '_regular_price', '20'),
(2026, 167, '_sale_price', ''),
(2027, 167, '_sale_price_dates_from', ''),
(2028, 167, '_sale_price_dates_to', ''),
(2029, 167, 'total_sales', '0'),
(2030, 167, '_tax_status', 'taxable'),
(2031, 167, '_tax_class', ''),
(2032, 167, '_manage_stock', 'no'),
(2033, 167, '_backorders', 'no'),
(2034, 167, '_sold_individually', 'no'),
(2035, 167, '_weight', ''),
(2036, 167, '_length', ''),
(2037, 167, '_width', ''),
(2038, 167, '_height', ''),
(2039, 167, '_upsell_ids', 'a:0:{}'),
(2040, 167, '_crosssell_ids', 'a:0:{}'),
(2041, 167, '_purchase_note', ''),
(2042, 167, '_default_attributes', 'a:0:{}'),
(2043, 167, '_virtual', 'no'),
(2044, 167, '_downloadable', 'no'),
(2045, 167, '_product_image_gallery', ''),
(2046, 167, '_download_limit', '0'),
(2047, 167, '_download_expiry', '0'),
(2048, 167, '_stock', NULL),
(2049, 167, '_stock_status', 'instock'),
(2050, 167, '_wc_average_rating', '0'),
(2051, 167, '_wc_rating_count', 'a:0:{}'),
(2052, 167, '_wc_review_count', '0'),
(2053, 167, '_downloadable_files', 'a:0:{}'),
(2054, 167, '_product_attributes', 'a:0:{}'),
(2055, 167, '_product_version', '3.4.3'),
(2056, 167, '_price', '20'),
(2058, 168, '_sku', 'woo-vneck-tee-green'),
(2059, 168, '_regular_price', '20'),
(2060, 168, '_sale_price', ''),
(2061, 168, '_sale_price_dates_from', ''),
(2062, 168, '_sale_price_dates_to', ''),
(2063, 168, 'total_sales', '0'),
(2064, 168, '_tax_status', 'taxable'),
(2065, 168, '_tax_class', ''),
(2066, 168, '_manage_stock', 'no'),
(2067, 168, '_backorders', 'no'),
(2068, 168, '_sold_individually', 'no'),
(2069, 168, '_weight', ''),
(2070, 168, '_length', ''),
(2071, 168, '_width', ''),
(2072, 168, '_height', ''),
(2073, 168, '_upsell_ids', 'a:0:{}'),
(2074, 168, '_crosssell_ids', 'a:0:{}'),
(2075, 168, '_purchase_note', ''),
(2076, 168, '_default_attributes', 'a:0:{}'),
(2077, 168, '_virtual', 'no'),
(2078, 168, '_downloadable', 'no'),
(2079, 168, '_product_image_gallery', ''),
(2080, 168, '_download_limit', '0'),
(2081, 168, '_download_expiry', '0'),
(2082, 168, '_stock', NULL),
(2083, 168, '_stock_status', 'instock'),
(2084, 168, '_wc_average_rating', '0'),
(2085, 168, '_wc_rating_count', 'a:0:{}'),
(2086, 168, '_wc_review_count', '0'),
(2087, 168, '_downloadable_files', 'a:0:{}'),
(2088, 168, '_product_attributes', 'a:0:{}'),
(2089, 168, '_product_version', '3.4.3'),
(2090, 168, '_price', '20'),
(2092, 169, '_sku', 'woo-vneck-tee-blue'),
(2093, 169, '_regular_price', '15'),
(2094, 169, '_sale_price', ''),
(2095, 169, '_sale_price_dates_from', ''),
(2096, 169, '_sale_price_dates_to', ''),
(2097, 169, 'total_sales', '0'),
(2098, 169, '_tax_status', 'taxable'),
(2099, 169, '_tax_class', ''),
(2100, 169, '_manage_stock', 'no'),
(2101, 169, '_backorders', 'no'),
(2102, 169, '_sold_individually', 'no'),
(2103, 169, '_weight', ''),
(2104, 169, '_length', ''),
(2105, 169, '_width', ''),
(2106, 169, '_height', ''),
(2107, 169, '_upsell_ids', 'a:0:{}'),
(2108, 169, '_crosssell_ids', 'a:0:{}'),
(2109, 169, '_purchase_note', ''),
(2110, 169, '_default_attributes', 'a:0:{}'),
(2111, 169, '_virtual', 'no'),
(2112, 169, '_downloadable', 'no'),
(2113, 169, '_product_image_gallery', ''),
(2114, 169, '_download_limit', '0'),
(2115, 169, '_download_expiry', '0'),
(2116, 169, '_stock', NULL),
(2117, 169, '_stock_status', 'instock'),
(2118, 169, '_wc_average_rating', '0'),
(2119, 169, '_wc_rating_count', 'a:0:{}'),
(2120, 169, '_wc_review_count', '0'),
(2121, 169, '_downloadable_files', 'a:0:{}'),
(2122, 169, '_product_attributes', 'a:0:{}'),
(2123, 169, '_product_version', '3.4.3'),
(2124, 169, '_price', '15'),
(2126, 170, '_sku', 'woo-hoodie-red'),
(2127, 170, '_regular_price', '45'),
(2128, 170, '_sale_price', '42'),
(2129, 170, '_sale_price_dates_from', ''),
(2130, 170, '_sale_price_dates_to', ''),
(2131, 170, 'total_sales', '0'),
(2132, 170, '_tax_status', 'taxable'),
(2133, 170, '_tax_class', ''),
(2134, 170, '_manage_stock', 'no'),
(2135, 170, '_backorders', 'no'),
(2136, 170, '_sold_individually', 'no'),
(2137, 170, '_weight', ''),
(2138, 170, '_length', ''),
(2139, 170, '_width', ''),
(2140, 170, '_height', ''),
(2141, 170, '_upsell_ids', 'a:0:{}'),
(2142, 170, '_crosssell_ids', 'a:0:{}'),
(2143, 170, '_purchase_note', ''),
(2144, 170, '_default_attributes', 'a:0:{}'),
(2145, 170, '_virtual', 'no'),
(2146, 170, '_downloadable', 'no'),
(2147, 170, '_product_image_gallery', ''),
(2148, 170, '_download_limit', '0'),
(2149, 170, '_download_expiry', '0'),
(2150, 170, '_stock', NULL),
(2151, 170, '_stock_status', 'instock'),
(2152, 170, '_wc_average_rating', '0'),
(2153, 170, '_wc_rating_count', 'a:0:{}'),
(2154, 170, '_wc_review_count', '0'),
(2155, 170, '_downloadable_files', 'a:0:{}'),
(2156, 170, '_product_attributes', 'a:0:{}'),
(2157, 170, '_product_version', '3.4.3'),
(2158, 170, '_price', '42'),
(2160, 171, '_sku', 'woo-hoodie-green'),
(2161, 171, '_regular_price', '45'),
(2162, 171, '_sale_price', ''),
(2163, 171, '_sale_price_dates_from', ''),
(2164, 171, '_sale_price_dates_to', ''),
(2165, 171, 'total_sales', '0'),
(2166, 171, '_tax_status', 'taxable'),
(2167, 171, '_tax_class', ''),
(2168, 171, '_manage_stock', 'no'),
(2169, 171, '_backorders', 'no'),
(2170, 171, '_sold_individually', 'no'),
(2171, 171, '_weight', ''),
(2172, 171, '_length', ''),
(2173, 171, '_width', ''),
(2174, 171, '_height', ''),
(2175, 171, '_upsell_ids', 'a:0:{}'),
(2176, 171, '_crosssell_ids', 'a:0:{}'),
(2177, 171, '_purchase_note', ''),
(2178, 171, '_default_attributes', 'a:0:{}'),
(2179, 171, '_virtual', 'no'),
(2180, 171, '_downloadable', 'no'),
(2181, 171, '_product_image_gallery', ''),
(2182, 171, '_download_limit', '0'),
(2183, 171, '_download_expiry', '0'),
(2184, 171, '_stock', NULL),
(2185, 171, '_stock_status', 'instock'),
(2186, 171, '_wc_average_rating', '0'),
(2187, 171, '_wc_rating_count', 'a:0:{}'),
(2188, 171, '_wc_review_count', '0'),
(2189, 171, '_downloadable_files', 'a:0:{}'),
(2190, 171, '_product_attributes', 'a:0:{}'),
(2191, 171, '_product_version', '3.4.3'),
(2192, 171, '_price', '45'),
(2194, 172, '_sku', 'woo-hoodie-blue'),
(2195, 172, '_regular_price', '45'),
(2196, 172, '_sale_price', ''),
(2197, 172, '_sale_price_dates_from', ''),
(2198, 172, '_sale_price_dates_to', ''),
(2199, 172, 'total_sales', '0'),
(2200, 172, '_tax_status', 'taxable'),
(2201, 172, '_tax_class', ''),
(2202, 172, '_manage_stock', 'no'),
(2203, 172, '_backorders', 'no'),
(2204, 172, '_sold_individually', 'no'),
(2205, 172, '_weight', ''),
(2206, 172, '_length', ''),
(2207, 172, '_width', ''),
(2208, 172, '_height', ''),
(2209, 172, '_upsell_ids', 'a:0:{}'),
(2210, 172, '_crosssell_ids', 'a:0:{}'),
(2211, 172, '_purchase_note', ''),
(2212, 172, '_default_attributes', 'a:0:{}'),
(2213, 172, '_virtual', 'no'),
(2214, 172, '_downloadable', 'no'),
(2215, 172, '_product_image_gallery', ''),
(2216, 172, '_download_limit', '0'),
(2217, 172, '_download_expiry', '0'),
(2218, 172, '_stock', NULL),
(2219, 172, '_stock_status', 'instock'),
(2220, 172, '_wc_average_rating', '0'),
(2221, 172, '_wc_rating_count', 'a:0:{}'),
(2222, 172, '_wc_review_count', '0'),
(2223, 172, '_downloadable_files', 'a:0:{}'),
(2224, 172, '_product_attributes', 'a:0:{}'),
(2225, 172, '_product_version', '3.4.3'),
(2226, 172, '_price', '45'),
(2228, 173, '_sku', 'Woo-tshirt-logo'),
(2229, 173, '_regular_price', '18'),
(2230, 173, '_sale_price', ''),
(2231, 173, '_sale_price_dates_from', ''),
(2232, 173, '_sale_price_dates_to', ''),
(2233, 173, 'total_sales', '0'),
(2234, 173, '_tax_status', 'taxable'),
(2235, 173, '_tax_class', ''),
(2236, 173, '_manage_stock', 'no'),
(2237, 173, '_backorders', 'no'),
(2238, 173, '_sold_individually', 'no'),
(2239, 173, '_weight', ''),
(2240, 173, '_length', ''),
(2241, 173, '_width', ''),
(2242, 173, '_height', ''),
(2243, 173, '_upsell_ids', 'a:0:{}'),
(2244, 173, '_crosssell_ids', 'a:0:{}'),
(2245, 173, '_purchase_note', ''),
(2246, 173, '_default_attributes', 'a:0:{}'),
(2247, 173, '_virtual', 'no'),
(2248, 173, '_downloadable', 'no'),
(2249, 173, '_product_image_gallery', ''),
(2250, 173, '_download_limit', '0'),
(2251, 173, '_download_expiry', '0'),
(2252, 173, '_stock', NULL),
(2253, 173, '_stock_status', 'instock'),
(2254, 173, '_wc_average_rating', '0'),
(2255, 173, '_wc_rating_count', 'a:0:{}'),
(2256, 173, '_wc_review_count', '0'),
(2257, 173, '_downloadable_files', 'a:0:{}'),
(2258, 173, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(2259, 173, '_product_version', '3.4.3'),
(2260, 173, '_price', '18'),
(2262, 174, '_sku', 'Woo-beanie-logo'),
(2263, 174, '_regular_price', '20'),
(2264, 174, '_sale_price', '18'),
(2265, 174, '_sale_price_dates_from', ''),
(2266, 174, '_sale_price_dates_to', ''),
(2267, 174, 'total_sales', '0'),
(2268, 174, '_tax_status', 'taxable'),
(2269, 174, '_tax_class', ''),
(2270, 174, '_manage_stock', 'no'),
(2271, 174, '_backorders', 'no'),
(2272, 174, '_sold_individually', 'no'),
(2273, 174, '_weight', ''),
(2274, 174, '_length', ''),
(2275, 174, '_width', ''),
(2276, 174, '_height', ''),
(2277, 174, '_upsell_ids', 'a:0:{}'),
(2278, 174, '_crosssell_ids', 'a:0:{}'),
(2279, 174, '_purchase_note', ''),
(2280, 174, '_default_attributes', 'a:0:{}'),
(2281, 174, '_virtual', 'no'),
(2282, 174, '_downloadable', 'no'),
(2283, 174, '_product_image_gallery', ''),
(2284, 174, '_download_limit', '0'),
(2285, 174, '_download_expiry', '0'),
(2286, 174, '_stock', NULL),
(2287, 174, '_stock_status', 'instock'),
(2288, 174, '_wc_average_rating', '0'),
(2289, 174, '_wc_rating_count', 'a:0:{}'),
(2290, 174, '_wc_review_count', '0'),
(2291, 174, '_downloadable_files', 'a:0:{}'),
(2292, 174, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(2293, 174, '_product_version', '3.4.3'),
(2294, 174, '_price', '18'),
(2296, 175, '_sku', 'logo-collection'),
(2299, 175, '_sale_price_dates_from', ''),
(2300, 175, '_sale_price_dates_to', ''),
(2301, 175, 'total_sales', '0'),
(2302, 175, '_tax_status', 'taxable'),
(2303, 175, '_tax_class', ''),
(2304, 175, '_manage_stock', 'no'),
(2305, 175, '_backorders', 'no'),
(2306, 175, '_sold_individually', 'no'),
(2307, 175, '_weight', ''),
(2308, 175, '_length', ''),
(2309, 175, '_width', ''),
(2310, 175, '_height', ''),
(2311, 175, '_upsell_ids', 'a:0:{}'),
(2312, 175, '_crosssell_ids', 'a:0:{}'),
(2313, 175, '_purchase_note', ''),
(2314, 175, '_default_attributes', 'a:0:{}'),
(2315, 175, '_virtual', 'no'),
(2316, 175, '_downloadable', 'no'),
(2317, 175, '_product_image_gallery', '198,197,186'),
(2318, 175, '_download_limit', '0'),
(2319, 175, '_download_expiry', '0'),
(2320, 175, '_stock', NULL),
(2321, 175, '_stock_status', 'instock'),
(2322, 175, '_wc_average_rating', '0'),
(2323, 175, '_wc_rating_count', 'a:0:{}'),
(2324, 175, '_wc_review_count', '0'),
(2325, 175, '_downloadable_files', 'a:0:{}'),
(2326, 175, '_product_attributes', 'a:0:{}'),
(2327, 175, '_product_version', '3.4.3'),
(2330, 176, '_sku', 'wp-pennant'),
(2331, 176, '_regular_price', '11.05'),
(2332, 176, '_sale_price', ''),
(2333, 176, '_sale_price_dates_from', ''),
(2334, 176, '_sale_price_dates_to', ''),
(2335, 176, 'total_sales', '0'),
(2336, 176, '_tax_status', 'taxable'),
(2337, 176, '_tax_class', ''),
(2338, 176, '_manage_stock', 'no'),
(2339, 176, '_backorders', 'no'),
(2340, 176, '_sold_individually', 'no'),
(2341, 176, '_weight', ''),
(2342, 176, '_length', ''),
(2343, 176, '_width', ''),
(2344, 176, '_height', ''),
(2345, 176, '_upsell_ids', 'a:0:{}'),
(2346, 176, '_crosssell_ids', 'a:0:{}'),
(2347, 176, '_purchase_note', ''),
(2348, 176, '_default_attributes', 'a:0:{}'),
(2349, 176, '_virtual', 'no'),
(2350, 176, '_downloadable', 'no'),
(2351, 176, '_product_image_gallery', ''),
(2352, 176, '_download_limit', '0'),
(2353, 176, '_download_expiry', '0'),
(2354, 176, '_stock', NULL),
(2355, 176, '_stock_status', 'instock'),
(2356, 176, '_wc_average_rating', '0'),
(2357, 176, '_wc_rating_count', 'a:0:{}'),
(2358, 176, '_wc_review_count', '0'),
(2359, 176, '_downloadable_files', 'a:0:{}'),
(2360, 176, '_product_attributes', 'a:0:{}'),
(2361, 176, '_product_version', '3.4.3'),
(2362, 176, '_price', '11.05'),
(2364, 177, '_sku', 'woo-hoodie-blue-logo'),
(2365, 177, '_regular_price', '45'),
(2366, 177, '_sale_price', ''),
(2367, 177, '_sale_price_dates_from', ''),
(2368, 177, '_sale_price_dates_to', ''),
(2369, 177, 'total_sales', '0'),
(2370, 177, '_tax_status', 'taxable'),
(2371, 177, '_tax_class', ''),
(2372, 177, '_manage_stock', 'no'),
(2373, 177, '_backorders', 'no'),
(2374, 177, '_sold_individually', 'no'),
(2375, 177, '_weight', ''),
(2376, 177, '_length', ''),
(2377, 177, '_width', ''),
(2378, 177, '_height', ''),
(2379, 177, '_upsell_ids', 'a:0:{}'),
(2380, 177, '_crosssell_ids', 'a:0:{}'),
(2381, 177, '_purchase_note', ''),
(2382, 177, '_default_attributes', 'a:0:{}'),
(2383, 177, '_virtual', 'no'),
(2384, 177, '_downloadable', 'no'),
(2385, 177, '_product_image_gallery', ''),
(2386, 177, '_download_limit', '0'),
(2387, 177, '_download_expiry', '0'),
(2388, 177, '_stock', NULL),
(2389, 177, '_stock_status', 'instock'),
(2390, 177, '_wc_average_rating', '0'),
(2391, 177, '_wc_rating_count', 'a:0:{}'),
(2392, 177, '_wc_review_count', '0'),
(2393, 177, '_downloadable_files', 'a:0:{}'),
(2394, 177, '_product_attributes', 'a:0:{}'),
(2395, 177, '_product_version', '3.4.3'),
(2396, 177, '_price', '45'),
(2400, 179, '_wp_attached_file', '2018/07/cap-2.jpg'),
(2401, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2018/07/cap-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cap-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:15:\"cap-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2402, 179, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
(2403, 159, '_wpcom_is_markdown', '1'),
(2404, 159, '_wp_old_slug', 'import-placeholder-for-60'),
(2405, 159, '_thumbnail_id', '179'),
(2406, 180, '_wp_attached_file', '2018/07/vneck-tee-2.jpg'),
(2407, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2018/07/vneck-tee-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:21:\"vneck-tee-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2408, 180, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(2409, 181, '_wp_attached_file', '2018/07/vnech-tee-green-1.jpg'),
(2410, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2018/07/vnech-tee-green-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:27:\"vnech-tee-green-1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2411, 181, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(2412, 182, '_wp_attached_file', '2018/07/vnech-tee-blue-1.jpg'),
(2413, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2018/07/vnech-tee-blue-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:26:\"vnech-tee-blue-1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2414, 182, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(2415, 153, '_wpcom_is_markdown', '1'),
(2416, 153, '_wp_old_slug', 'import-placeholder-for-44'),
(2417, 153, '_thumbnail_id', '180'),
(2418, 183, '_wp_attached_file', '2018/07/hoodie-2.jpg'),
(2419, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/07/hoodie-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"hoodie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:18:\"hoodie-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2420, 183, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(2421, 184, '_wp_attached_file', '2018/07/hoodie-blue-1.jpg'),
(2422, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2018/07/hoodie-blue-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:23:\"hoodie-blue-1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2423, 184, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(2424, 185, '_wp_attached_file', '2018/07/hoodie-green-1.jpg'),
(2425, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2018/07/hoodie-green-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:24:\"hoodie-green-1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2426, 185, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(2427, 186, '_wp_attached_file', '2018/07/hoodie-with-logo-2.jpg'),
(2428, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2018/07/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2429, 186, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(2430, 154, '_wpcom_is_markdown', '1'),
(2431, 154, '_wp_old_slug', 'import-placeholder-for-45'),
(2432, 154, '_thumbnail_id', '183'),
(2433, 155, '_wpcom_is_markdown', '1'),
(2434, 155, '_wp_old_slug', 'import-placeholder-for-46'),
(2435, 155, '_thumbnail_id', '186'),
(2436, 187, '_wp_attached_file', '2018/07/tshirt-2.jpg'),
(2437, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/07/tshirt-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tshirt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:18:\"tshirt-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2438, 187, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
(2439, 156, '_wpcom_is_markdown', '1'),
(2440, 156, '_wp_old_slug', 'import-placeholder-for-47'),
(2441, 156, '_thumbnail_id', '187'),
(2442, 188, '_wp_attached_file', '2018/07/beanie-2.jpg'),
(2443, 188, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2018/07/beanie-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"beanie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:18:\"beanie-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2444, 188, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
(2445, 157, '_wpcom_is_markdown', '1'),
(2446, 157, '_wp_old_slug', 'import-placeholder-for-48'),
(2447, 157, '_thumbnail_id', '188'),
(2448, 189, '_wp_attached_file', '2018/07/belt-2.jpg'),
(2449, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/07/belt-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"belt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:16:\"belt-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2450, 189, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
(2451, 158, '_wpcom_is_markdown', '1'),
(2452, 158, '_wp_old_slug', 'import-placeholder-for-58'),
(2453, 158, '_thumbnail_id', '189'),
(2454, 190, '_wp_attached_file', '2018/07/sunglasses-2.jpg'),
(2455, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2018/07/sunglasses-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:22:\"sunglasses-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2456, 190, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
(2457, 160, '_wpcom_is_markdown', '1'),
(2458, 160, '_wp_old_slug', 'import-placeholder-for-62'),
(2459, 160, '_thumbnail_id', '190'),
(2460, 191, '_wp_attached_file', '2018/07/hoodie-with-pocket-2.jpg'),
(2461, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2018/07/hoodie-with-pocket-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2462, 191, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
(2463, 161, '_wpcom_is_markdown', '1'),
(2464, 161, '_wp_old_slug', 'import-placeholder-for-64'),
(2465, 161, '_thumbnail_id', '191'),
(2466, 192, '_wp_attached_file', '2018/07/hoodie-with-zipper-2.jpg'),
(2467, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2018/07/hoodie-with-zipper-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2468, 192, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
(2469, 162, '_wpcom_is_markdown', '1'),
(2470, 162, '_wp_old_slug', 'import-placeholder-for-66'),
(2471, 162, '_thumbnail_id', '192'),
(2472, 193, '_wp_attached_file', '2018/07/long-sleeve-tee-2.jpg'),
(2473, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2018/07/long-sleeve-tee-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2474, 193, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
(2475, 163, '_wpcom_is_markdown', '1'),
(2476, 163, '_wp_old_slug', 'import-placeholder-for-68'),
(2477, 163, '_thumbnail_id', '193'),
(2478, 194, '_wp_attached_file', '2018/07/polo-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2479, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2018/07/polo-2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"polo-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"polo-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"polo-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:16:\"polo-2-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2480, 194, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
(2481, 164, '_wpcom_is_markdown', '1'),
(2482, 164, '_wp_old_slug', 'import-placeholder-for-70'),
(2483, 164, '_thumbnail_id', '194'),
(2484, 195, '_wp_attached_file', '2018/07/album-1.jpg'),
(2485, 195, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2018/07/album-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"album-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:17:\"album-1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2486, 195, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/album-1.jpg'),
(2487, 165, '_wpcom_is_markdown', '1'),
(2488, 165, '_wp_old_slug', 'import-placeholder-for-73'),
(2489, 165, '_thumbnail_id', '195'),
(2490, 196, '_wp_attached_file', '2018/07/single-1.jpg'),
(2491, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2018/07/single-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"single-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:18:\"single-1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2492, 196, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
(2493, 166, '_wpcom_is_markdown', '1'),
(2494, 166, '_wp_old_slug', 'import-placeholder-for-75'),
(2495, 166, '_thumbnail_id', '196'),
(2496, 167, '_wpcom_is_markdown', ''),
(2497, 167, '_wp_old_slug', 'import-placeholder-for-76'),
(2498, 167, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2499, 167, '_thumbnail_id', '180'),
(2500, 167, 'attribute_pa_color', 'red'),
(2501, 167, 'attribute_pa_size', ''),
(2502, 168, '_wpcom_is_markdown', ''),
(2503, 168, '_wp_old_slug', 'import-placeholder-for-77'),
(2504, 168, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2505, 168, '_thumbnail_id', '181'),
(2506, 168, 'attribute_pa_color', 'green'),
(2507, 168, 'attribute_pa_size', ''),
(2508, 169, '_wpcom_is_markdown', ''),
(2509, 169, '_wp_old_slug', 'import-placeholder-for-78'),
(2510, 169, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2511, 169, '_thumbnail_id', '182'),
(2512, 169, 'attribute_pa_color', 'blue'),
(2513, 169, 'attribute_pa_size', ''),
(2514, 170, '_wpcom_is_markdown', ''),
(2515, 170, '_wp_old_slug', 'import-placeholder-for-79'),
(2516, 170, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2517, 170, '_thumbnail_id', '183'),
(2518, 170, 'attribute_pa_color', 'red'),
(2519, 170, 'attribute_logo', 'No'),
(2520, 171, '_wpcom_is_markdown', ''),
(2521, 171, '_wp_old_slug', 'import-placeholder-for-80'),
(2522, 171, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2523, 171, '_thumbnail_id', '185'),
(2524, 171, 'attribute_pa_color', 'green'),
(2525, 171, 'attribute_logo', 'No'),
(2526, 172, '_wpcom_is_markdown', ''),
(2527, 172, '_wp_old_slug', 'import-placeholder-for-81'),
(2528, 172, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2529, 172, '_thumbnail_id', '184'),
(2530, 172, 'attribute_pa_color', 'blue'),
(2531, 172, 'attribute_logo', 'No'),
(2532, 197, '_wp_attached_file', '2018/07/t-shirt-with-logo-1.jpg'),
(2533, 197, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:31:\"2018/07/t-shirt-with-logo-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:29:\"t-shirt-with-logo-1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2534, 197, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
(2535, 173, '_wpcom_is_markdown', '1'),
(2536, 173, '_wp_old_slug', 'import-placeholder-for-83'),
(2537, 173, '_thumbnail_id', '197'),
(2538, 153, '_price', '15'),
(2539, 153, '_price', '20'),
(2540, 153, '_regular_price', ''),
(2541, 153, '_sale_price', ''),
(2546, 198, '_wp_attached_file', '2018/07/beanie-with-logo-1.jpg'),
(2547, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2018/07/beanie-with-logo-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:28:\"beanie-with-logo-1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2548, 198, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
(2549, 174, '_wpcom_is_markdown', '1'),
(2550, 174, '_wp_old_slug', 'import-placeholder-for-85'),
(2551, 174, '_thumbnail_id', '198'),
(2552, 199, '_wp_attached_file', '2018/07/logo-1.jpg'),
(2553, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:18:\"2018/07/logo-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"logo-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"logo-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:16:\"logo-1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2554, 199, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
(2555, 175, '_wpcom_is_markdown', '1'),
(2556, 175, '_wp_old_slug', 'import-placeholder-for-87'),
(2557, 175, '_children', 'a:3:{i:0;i:155;i:1;i:156;i:2;i:157;}'),
(2558, 175, '_thumbnail_id', '199'),
(2559, 175, '_price', '18'),
(2560, 175, '_price', '45'),
(2561, 200, '_wp_attached_file', '2018/07/pennant-1.jpg'),
(2562, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/07/pennant-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"pennant-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"piklist_file_preview\";a:4:{s:4:\"file\";s:19:\"pennant-1-96x96.jpg\";s:5:\"width\";i:96;s:6:\"height\";i:96;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2563, 200, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
(2564, 176, '_wpcom_is_markdown', '1'),
(2565, 176, '_wp_old_slug', 'import-placeholder-for-89'),
(2566, 176, '_thumbnail_id', '200'),
(2567, 176, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(2568, 176, '_button_text', 'Buy on the WordPress swag store!'),
(2569, 177, '_wpcom_is_markdown', ''),
(2570, 177, '_wp_old_slug', 'import-placeholder-for-90'),
(2571, 177, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2572, 177, '_thumbnail_id', '186'),
(2573, 177, 'attribute_pa_color', 'blue'),
(2574, 177, 'attribute_logo', 'Yes'),
(2575, 154, '_price', '42'),
(2576, 154, '_price', '45'),
(2577, 154, '_regular_price', ''),
(2578, 154, '_sale_price', ''),
(2581, 201, 'usef_awepop_views', '2'),
(2586, 202, 'usef_awepop_views', '2'),
(2589, 1, '_edit_last', '1'),
(2602, 205, 'usef_awepop_views', '2'),
(2621, 206, '_wp_trash_meta_status', 'publish'),
(2622, 206, '_wp_trash_meta_time', '1530864731'),
(2641, 211, '_menu_item_type', 'post_type'),
(2642, 211, '_menu_item_menu_item_parent', '0'),
(2643, 211, '_menu_item_object_id', '74'),
(2644, 211, '_menu_item_object', 'page'),
(2645, 211, '_menu_item_target', ''),
(2646, 211, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2647, 211, '_menu_item_xfn', ''),
(2648, 211, '_menu_item_url', ''),
(2650, 212, '_menu_item_type', 'post_type'),
(2651, 212, '_menu_item_menu_item_parent', '0'),
(2652, 212, '_menu_item_object_id', '22'),
(2653, 212, '_menu_item_object', 'page'),
(2654, 212, '_menu_item_target', ''),
(2655, 212, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2656, 212, '_menu_item_xfn', ''),
(2657, 212, '_menu_item_url', ''),
(2659, 213, '_menu_item_type', 'post_type'),
(2660, 213, '_menu_item_menu_item_parent', '0'),
(2661, 213, '_menu_item_object_id', '32'),
(2662, 213, '_menu_item_object', 'page'),
(2663, 213, '_menu_item_target', ''),
(2664, 213, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2665, 213, '_menu_item_xfn', ''),
(2666, 213, '_menu_item_url', ''),
(2685, 216, '_wp_page_template', 'home-page.php'),
(2686, 216, 'main_text', 'Get The Best Of SEA in the worldhshshhshdhdfdf'),
(2687, 216, '_main_text', 'field_5b398dbd218d8'),
(2688, 216, 'line1', 'Buy Now'),
(2689, 216, '_line1', 'field_5b398e379027f'),
(2690, 216, 'line2', 'Check Now'),
(2691, 216, '_line2', 'field_5b398e72c75ae'),
(2692, 216, 'line3', 'Find More'),
(2693, 216, '_line3', 'field_5b398e85c75af'),
(2694, 216, 'tag_label', '26'),
(2695, 216, '_tag_label', 'field_5b3990128147a'),
(2696, 216, '_', 'field_5b3990328147b'),
(2697, 216, 'text1', 'SUBSCRIBE Now'),
(2698, 216, '_text1', 'field_5b3992e081d7d'),
(2699, 216, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN '),
(2700, 216, '_text2', 'field_5b3992fc45d03'),
(2701, 216, 'text3', 'Subscribe to the UNRESERVED magazine and'),
(2702, 216, '_text3', 'field_5b39930945d04'),
(2703, 216, 'image', '28'),
(2704, 216, '_image', 'field_5b39935245d07'),
(2716, 217, '_edit_lock', '1531274235:1'),
(2717, 217, '_edit_last', '1'),
(2718, 217, '_wp_page_template', 'login.php'),
(2719, 218, '_wp_page_template', 'login.php'),
(2720, 219, '_edit_lock', '1531217216:1'),
(2721, 219, '_edit_last', '1'),
(2722, 219, 'field_5b448599eb0ae', 'a:14:{s:3:\"key\";s:19:\"field_5b448599eb0ae\";s:5:\"label\";s:8:\"username\";s:4:\"name\";s:8:\"username\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(2723, 219, 'field_5b4485b8eb0af', 'a:11:{s:3:\"key\";s:19:\"field_5b4485b8eb0af\";s:5:\"label\";s:8:\"password\";s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(2724, 219, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"217\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(2725, 219, 'position', 'normal'),
(2726, 219, 'layout', 'no_box'),
(2727, 219, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(2728, 219, '_wp_trash_meta_status', 'publish'),
(2729, 219, '_wp_trash_meta_time', '1531217388'),
(2730, 219, '_wp_desired_post_slug', 'acf_login'),
(2731, 220, '_wp_page_template', 'login.php'),
(2732, 221, '_edit_lock', '1531289423:1'),
(2733, 221, '_edit_last', '1'),
(2734, 221, '_wp_page_template', 'default'),
(2735, 222, '_wp_page_template', 'default'),
(2736, 223, '_edit_lock', '1531289438:1'),
(2737, 223, '_edit_last', '1'),
(2738, 223, '_wp_page_template', 'default'),
(2739, 224, '_wp_page_template', 'default'),
(2740, 225, '_edit_last', '1'),
(2741, 225, '_wp_page_template', 'default'),
(2742, 226, '_wp_page_template', 'default'),
(2743, 225, '_edit_lock', '1531289460:1'),
(2744, 227, '_edit_lock', '1531289492:1'),
(2745, 227, '_edit_last', '1'),
(2746, 227, '_wp_page_template', 'default'),
(2747, 228, '_wp_page_template', 'default'),
(2748, 229, '_menu_item_type', 'post_type'),
(2749, 229, '_menu_item_menu_item_parent', '0'),
(2750, 229, '_menu_item_object_id', '221'),
(2751, 229, '_menu_item_object', 'page'),
(2752, 229, '_menu_item_target', ''),
(2753, 229, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2754, 229, '_menu_item_xfn', ''),
(2755, 229, '_menu_item_url', ''),
(2757, 230, '_menu_item_type', 'post_type'),
(2758, 230, '_menu_item_menu_item_parent', '0'),
(2759, 230, '_menu_item_object_id', '217'),
(2760, 230, '_menu_item_object', 'page'),
(2761, 230, '_menu_item_target', ''),
(2762, 230, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2763, 230, '_menu_item_xfn', ''),
(2764, 230, '_menu_item_url', ''),
(2766, 231, '_menu_item_type', 'post_type'),
(2767, 231, '_menu_item_menu_item_parent', '0'),
(2768, 231, '_menu_item_object_id', '32'),
(2769, 231, '_menu_item_object', 'page'),
(2770, 231, '_menu_item_target', ''),
(2771, 231, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2772, 231, '_menu_item_xfn', ''),
(2773, 231, '_menu_item_url', ''),
(2775, 232, '_menu_item_type', 'post_type'),
(2776, 232, '_menu_item_menu_item_parent', '0'),
(2777, 232, '_menu_item_object_id', '223'),
(2778, 232, '_menu_item_object', 'page'),
(2779, 232, '_menu_item_target', ''),
(2780, 232, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2781, 232, '_menu_item_xfn', ''),
(2782, 232, '_menu_item_url', ''),
(2784, 233, '_menu_item_type', 'post_type'),
(2785, 233, '_menu_item_menu_item_parent', '0'),
(2786, 233, '_menu_item_object_id', '225'),
(2787, 233, '_menu_item_object', 'page'),
(2788, 233, '_menu_item_target', ''),
(2789, 233, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2790, 233, '_menu_item_xfn', ''),
(2791, 233, '_menu_item_url', ''),
(2802, 235, '_wp_page_template', 'home-page.php'),
(2803, 235, 'main_text', 'Get The Best Of SEA in the worldhshshhshdhdfdf'),
(2804, 235, '_main_text', 'field_5b398dbd218d8'),
(2805, 235, 'line1', 'Buy Now'),
(2806, 235, '_line1', 'field_5b398e379027f'),
(2807, 235, 'line2', 'Check Now'),
(2808, 235, '_line2', 'field_5b398e72c75ae'),
(2809, 235, 'line3', 'Find More'),
(2810, 235, '_line3', 'field_5b398e85c75af'),
(2811, 235, 'tag_label', '26'),
(2812, 235, '_tag_label', 'field_5b3990128147a'),
(2813, 235, '_', 'field_5b3990328147b'),
(2814, 235, 'text1', 'SUBSCRIBE Now'),
(2815, 235, '_text1', 'field_5b3992e081d7d'),
(2816, 235, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN '),
(2817, 235, '_text2', 'field_5b3992fc45d03'),
(2818, 235, 'text3', 'Subscribe to the UNRESERVED magazine and'),
(2819, 235, '_text3', 'field_5b39930945d04'),
(2820, 235, 'image', '28'),
(2821, 235, '_image', 'field_5b39935245d07'),
(2833, 236, '_wp_page_template', 'home-page.php'),
(2834, 236, 'main_text', 'Get The Best Of SEA in the worldhshshhshdhdfdf'),
(2835, 236, '_main_text', 'field_5b398dbd218d8'),
(2836, 236, 'line1', 'Buy Now'),
(2837, 236, '_line1', 'field_5b398e379027f'),
(2838, 236, 'line2', 'Check Now'),
(2839, 236, '_line2', 'field_5b398e72c75ae'),
(2840, 236, 'line3', 'Find More'),
(2841, 236, '_line3', 'field_5b398e85c75af'),
(2842, 236, 'tag_label', '26'),
(2843, 236, '_tag_label', 'field_5b3990128147a'),
(2844, 236, '_', 'field_5b3990328147b'),
(2845, 236, 'text1', 'SUBSCRIBE Now'),
(2846, 236, '_text1', 'field_5b3992e081d7d'),
(2847, 236, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN '),
(2848, 236, '_text2', 'field_5b3992fc45d03'),
(2849, 236, 'text3', 'Subscribe to the UNRESERVED magazine and'),
(2850, 236, '_text3', 'field_5b39930945d04'),
(2851, 236, 'image', '28'),
(2852, 236, '_image', 'field_5b39935245d07'),
(2864, 237, '_wp_page_template', 'home-page.php'),
(2865, 237, 'main_text', 'Get The Best Of SEA in the world'),
(2866, 237, '_main_text', 'field_5b398dbd218d8'),
(2867, 237, 'line1', 'Buy Now'),
(2868, 237, '_line1', 'field_5b398e379027f'),
(2869, 237, 'line2', 'Check Now'),
(2870, 237, '_line2', 'field_5b398e72c75ae'),
(2871, 237, 'line3', 'Find More'),
(2872, 237, '_line3', 'field_5b398e85c75af'),
(2873, 237, 'tag_label', '26'),
(2874, 237, '_tag_label', 'field_5b3990128147a'),
(2875, 237, '_', 'field_5b3990328147b'),
(2876, 237, 'text1', 'SUBSCRIBE Now'),
(2877, 237, '_text1', 'field_5b3992e081d7d'),
(2878, 237, 'text2', 'GET THE BEST OF SOUTHEAST ASIA IN '),
(2879, 237, '_text2', 'field_5b3992fc45d03'),
(2880, 237, 'text3', 'Subscribe to the UNRESERVED magazine and'),
(2881, 237, '_text3', 'field_5b39930945d04'),
(2882, 237, 'image', '28'),
(2883, 237, '_image', 'field_5b39935245d07'),
(2895, 238, '_edit_lock', '1531295365:1'),
(2896, 239, '_wc_review_count', '0'),
(2897, 239, '_wc_rating_count', 'a:0:{}'),
(2898, 239, '_wc_average_rating', '0'),
(2899, 239, '_edit_lock', '1531300218:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-28 07:43:01', '2018-06-28 07:43:01', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-07-06 03:38:41', '2018-07-06 03:38:41', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-28 07:43:01', '2018-06-28 07:43:01', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8080/wordpress/wordpress_1/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-06-28 07:43:01', '2018-06-28 07:43:01', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-28 07:43:01', '2018-06-28 07:43:01', '<h2>Who we are</h2><p>Our website address is: http://localhost:8080/wordpress/wordpress_1.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-06-28 07:43:01', '2018-06-28 07:43:01', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-06-28 08:33:46', '2018-06-28 08:33:46', '{\n    \"blogname\": {\n        \"value\": \"website one _ FIRST\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-28 08:32:55\"\n    },\n    \"blogdescription\": {\n        \"value\": \"It is the first website that use wordpress\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-28 08:32:55\"\n    },\n    \"website_one::header_textcolor\": {\n        \"value\": \"#dd3333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-28 08:32:55\"\n    },\n    \"website_one::background_color\": {\n        \"value\": \"#e0e0e0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-28 08:33:46\"\n    },\n    \"website_one::header_image\": {\n        \"value\": \"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/06/6_type-name-and-generate-theme.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-28 08:33:46\"\n    },\n    \"website_one::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/06/6_type-name-and-generate-theme.png\",\n            \"thumbnail_url\": \"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/06/6_type-name-and-generate-theme.png\",\n            \"timestamp\": 1530174819128,\n            \"attachment_id\": 6,\n            \"width\": 775,\n            \"height\": 218\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-28 08:33:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0fafc6cb-60cd-42cc-85ad-5206d9e011da', '', '', '2018-06-28 08:33:46', '2018-06-28 08:33:46', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2018-06-28 08:33:19', '2018-06-28 08:33:19', '', '6_type name and generate theme', '', 'inherit', 'open', 'closed', '', '6_type-name-and-generate-theme', '', '', '2018-06-28 08:33:19', '2018-06-28 08:33:19', '', 0, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/06/6_type-name-and-generate-theme.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2018-06-29 07:12:46', '2018-06-29 07:12:46', 'hello the world, I am freshman who use wordpress. I am so pleasure to be a part of this community\r\n\r\n.', 'First Page', '', 'trash', 'closed', 'closed', '', 'first-page__trashed', '', '', '2018-07-02 09:56:11', '2018-07-02 09:56:11', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-06-29 07:12:46', '2018-06-29 07:12:46', 'hello the world, I am freshman who use wordpress. I am so pleasure to be a part of this community.', 'First Page', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-06-29 07:12:46', '2018-06-29 07:12:46', '', 8, 'http://localhost:8080/wordpress/wordpress_1/2018/06/29/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-06-29 07:12:56', '2018-06-29 07:12:56', 'hello the world, I am freshman who use wordpress. I am so pleasure to be a part of this community\r\n\r\n.', 'First Page', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-06-29 07:12:56', '2018-06-29 07:12:56', '', 8, 'http://localhost:8080/wordpress/wordpress_1/2018/06/29/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-06-29 07:14:19', '2018-06-29 07:14:19', 'I am otaku. i really love japanese manga.', 'Manga', '', 'publish', 'open', 'open', '', 'manga', '', '', '2018-07-06 03:53:48', '2018-07-06 03:53:48', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=11', 0, 'post', '', 2),
(12, 1, '2018-06-29 07:14:19', '2018-06-29 07:14:19', 'I am otaku. i really love japanese manga.', 'Manga', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-29 07:14:19', '2018-06-29 07:14:19', '', 11, 'http://localhost:8080/wordpress/wordpress_1/2018/06/29/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-06-29 07:17:24', '2018-06-29 07:17:24', '{\n    \"blogdescription\": {\n        \"value\": \"    It is the first website that use wordpress\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-29 07:17:18\"\n    },\n    \"custom_css[website_one]\": {\n        \"value\": \"body{\\n\\tbackground:yellow;\\n\\tcolor: red;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-29 07:17:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'df672003-eb33-45a2-8d62-fd6f5b4694a7', '', '', '2018-06-29 07:17:24', '2018-06-29 07:17:24', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2018-06-29 07:17:24', '2018-06-29 07:17:24', '', 'website_one', '', 'publish', 'closed', 'closed', '', 'website_one', '', '', '2018-06-29 07:20:08', '2018-06-29 07:20:08', '', 0, 'http://localhost:8080/wordpress/wordpress_1/2018/06/29/website_one/', 0, 'custom_css', '', 0),
(15, 1, '2018-06-29 07:17:24', '2018-06-29 07:17:24', 'body{\n	background:yellow;\n	color: red;\n}', 'website_one', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-06-29 07:17:24', '2018-06-29 07:17:24', '', 14, 'http://localhost:8080/wordpress/wordpress_1/2018/06/29/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-06-29 07:20:08', '2018-06-29 07:20:08', '{\n    \"custom_css[website_one]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-29 07:20:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'abdc658a-2210-4385-8337-6aa8e911b109', '', '', '2018-06-29 07:20:08', '2018-06-29 07:20:08', '', 0, 'http://localhost:8080/wordpress/wordpress_1/2018/06/29/abdc658a-2210-4385-8337-6aa8e911b109/', 0, 'customize_changeset', '', 0),
(17, 1, '2018-06-29 07:20:08', '2018-06-29 07:20:08', '', 'website_one', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-06-29 07:20:08', '2018-06-29 07:20:08', '', 14, 'http://localhost:8080/wordpress/wordpress_1/2018/06/29/14-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-07-02 02:11:43', '2018-07-02 02:11:43', '', 'Home Page', '', 'trash', 'closed', 'closed', '', 'home-page__trashed', '', '', '2018-07-02 02:26:46', '2018-07-02 02:26:46', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-07-02 02:11:43', '2018-07-02 02:11:43', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-07-02 02:11:43', '2018-07-02 02:11:43', '', 20, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-07-02 02:27:16', '2018-07-02 02:27:16', '', 'Home Page Order', '', 'publish', 'closed', 'closed', '', 'home-page-order', '', '', '2018-07-11 06:49:12', '2018-07-11 06:49:12', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-07-02 02:27:16', '2018-07-02 02:27:16', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-02 02:27:16', '2018-07-02 02:27:16', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-07-02 02:29:21', '2018-07-02 02:29:21', '', 'Home Page Order', '', 'publish', 'closed', 'closed', '', 'acf_home-page-order', '', '', '2018-07-02 03:08:00', '2018-07-02 03:08:00', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=acf&#038;p=24', 0, 'acf', '', 0),
(25, 1, '2018-07-02 02:33:55', '2018-07-02 02:33:55', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-02 02:33:55', '2018-07-02 02:33:55', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/22-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-07-02 02:39:19', '2018-07-02 02:39:19', '', 'tag', '', 'inherit', 'open', 'closed', '', 'tag', '', '', '2018-07-02 02:39:19', '2018-07-02 02:39:19', '', 22, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/tag.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2018-07-02 02:39:32', '2018-07-02 02:39:32', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-02 02:39:32', '2018-07-02 02:39:32', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/22-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-07-02 02:53:57', '2018-07-02 02:53:57', '', 'left-logo', '', 'inherit', 'open', 'closed', '', 'left-logo', '', '', '2018-07-02 02:53:57', '2018-07-02 02:53:57', '', 22, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/left-logo.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2018-07-02 02:54:05', '2018-07-02 02:54:05', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-02 02:54:05', '2018-07-02 02:54:05', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/22-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-07-02 03:00:30', '2018-07-02 03:00:30', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-02 03:00:30', '2018-07-02 03:00:30', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/22-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-07-02 03:17:58', '2018-07-02 03:17:58', '', 'Check Out', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-07-02 03:17:58', '2018-07-02 03:17:58', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-07-02 03:14:35', '2018-07-02 03:14:35', '', 'Check Out', '', 'publish', 'closed', 'closed', '', 'check-out', '', '', '2018-07-03 04:50:11', '2018-07-03 04:50:11', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-07-02 03:14:35', '2018-07-02 03:14:35', '', 'Check Out', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-07-02 03:14:35', '2018-07-02 03:14:35', '', 32, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-07-02 03:15:41', '2018-07-02 03:15:41', '', 'Check Out Page', '', 'publish', 'closed', 'closed', '', 'acf_check-out-page', '', '', '2018-07-02 03:21:44', '2018-07-02 03:21:44', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=acf&#038;p=34', 0, 'acf', '', 0),
(35, 1, '2018-07-02 03:17:58', '2018-07-02 03:17:58', '', 'Check Out', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-07-02 03:17:58', '2018-07-02 03:17:58', '', 31, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/31-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-07-02 03:22:01', '2018-07-02 03:22:01', '', 'Check Out', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-07-02 03:22:01', '2018-07-02 03:22:01', '', 32, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/32-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-07-02 07:37:34', '2018-07-02 07:37:34', '', 'About Us', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2018-07-02 07:37:34', '2018-07-02 07:37:34', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-07-02 07:37:35', '2018-07-02 07:37:35', '', 'About Us', '', 'trash', 'closed', 'closed', '', '__trashed-3', '', '', '2018-07-02 07:37:35', '2018-07-02 07:37:35', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=39', 0, 'page', '', 0),
(40, 1, '2018-07-02 07:22:53', '2018-07-02 07:22:53', '', 'About Us', '', 'trash', 'closed', 'closed', '', 'about-us__trashed', '', '', '2018-07-02 12:06:26', '2018-07-02 12:06:26', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-07-02 07:22:53', '2018-07-02 07:22:53', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-07-02 07:22:53', '2018-07-02 07:22:53', '', 40, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-07-02 07:37:34', '2018-07-02 07:37:34', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-07-02 07:37:34', '2018-07-02 07:37:34', '', 38, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/38-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-07-02 07:37:35', '2018-07-02 07:37:35', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-07-02 07:37:35', '2018-07-02 07:37:35', '', 39, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/39-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-07-02 07:52:05', '2018-07-02 07:52:05', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'acf_about-us', '', '', '2018-07-03 07:06:01', '2018-07-03 07:06:01', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=acf&#038;p=50', 0, 'acf', '', 0),
(51, 1, '2018-07-02 07:52:59', '2018-07-02 07:52:59', '', 'slide3', '', 'inherit', 'open', 'closed', '', 'slide3', '', '', '2018-07-02 07:52:59', '2018-07-02 07:52:59', '', 40, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/slide3.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-07-02 07:54:19', '2018-07-02 07:54:19', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-07-02 07:54:19', '2018-07-02 07:54:19', '', 40, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/40-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-07-02 08:14:14', '2018-07-02 08:14:14', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-07-02 08:14:14', '2018-07-02 08:14:14', '', 40, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/40-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-07-02 08:22:39', '2018-07-02 08:22:39', '', 'member of team', '', 'publish', 'closed', 'closed', '', 'acf_member-of-team', '', '', '2018-07-02 08:22:39', '2018-07-02 08:22:39', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=acf&#038;p=54', 0, 'acf', '', 0),
(56, 1, '2018-07-02 08:26:00', '2018-07-02 08:26:00', '', 'sasuke title', '', 'publish', 'closed', 'closed', '', 'member1', '', '', '2018-07-04 07:38:49', '2018-07-04 07:38:49', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=member&#038;p=56', 0, 'member', '', 0),
(57, 1, '2018-07-02 08:27:07', '2018-07-02 08:27:07', '', 'naruto title', '', 'publish', 'closed', 'closed', '', 'naruto', '', '', '2018-07-04 07:47:31', '2018-07-04 07:47:31', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=member&#038;p=57', 0, 'member', '', 0),
(61, 1, '2018-07-02 11:23:37', '2018-07-02 11:23:37', 'Hello world, This is my first post which use for testing hook function in plugin.', 'new post test hook', '', 'trash', 'open', 'open', '', 'new-post-test-hook__trashed', '', '', '2018-07-02 12:05:42', '2018-07-02 12:05:42', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=61', 0, 'post', '', 0),
(62, 1, '2018-07-02 11:23:37', '2018-07-02 11:23:37', 'Hello world, This is my first post which use for testing hook function in plugin.', 'new post test hook', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-07-02 11:23:37', '2018-07-02 11:23:37', '', 61, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-07-02 12:06:37', '2018-07-02 12:06:37', '', 'adddddd', '', 'trash', 'closed', 'closed', '', 'adddddd__trashed', '', '', '2018-07-03 04:47:35', '2018-07-03 04:47:35', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=63', 0, 'page', '', 0),
(64, 1, '2018-07-02 12:06:37', '2018-07-02 12:06:37', '', 'adddddd', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-07-02 12:06:37', '2018-07-02 12:06:37', '', 63, 'http://localhost:8080/wordpress/wordpress_1/2018/07/02/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-07-03 02:43:56', '2018-07-03 02:43:56', '', 'cropped-slide3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-slide3-jpg', '', '', '2018-07-03 02:43:56', '2018-07-03 02:43:56', '', 0, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/cropped-slide3.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-07-03 02:47:54', '2018-07-03 02:47:54', '', 'cropped-slide3-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-slide3-1-jpg', '', '', '2018-07-03 02:47:54', '2018-07-03 02:47:54', '', 0, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/cropped-slide3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-07-03 02:48:06', '2018-07-03 02:48:06', '{\n    \"twentyfifteen::header_image\": {\n        \"value\": \"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/cropped-slide3-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-03 02:48:06\"\n    },\n    \"twentyfifteen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/cropped-slide3-1.jpg\",\n            \"thumbnail_url\": \"http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/cropped-slide3-1.jpg\",\n            \"timestamp\": 1530586074918,\n            \"attachment_id\": 67,\n            \"width\": 954,\n            \"height\": 1300\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-03 02:48:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c305fafb-e991-45e6-b0e0-ab4cdeac9446', '', '', '2018-07-03 02:48:06', '2018-07-03 02:48:06', '', 0, 'http://localhost:8080/wordpress/wordpress_1/2018/07/03/c305fafb-e991-45e6-b0e0-ab4cdeac9446/', 0, 'customize_changeset', '', 0),
(69, 1, '2018-07-03 04:48:01', '2018-07-03 04:48:01', '', 'Home Page 2', '', 'trash', 'closed', 'closed', '', '__trashed-4', '', '', '2018-07-03 04:48:01', '2018-07-03 04:48:01', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=69', 0, 'page', '', 0),
(71, 1, '2018-07-03 04:19:53', '2018-07-03 04:19:53', '', 'Home Page 2', '', 'trash', 'closed', 'closed', '', 'home-page-2__trashed', '', '', '2018-07-03 04:47:32', '2018-07-03 04:47:32', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=71', 0, 'page', '', 0),
(72, 1, '2018-07-03 04:19:53', '2018-07-03 04:19:53', '', 'Home Page 2', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-07-03 04:19:53', '2018-07-03 04:19:53', '', 71, 'http://localhost:8080/wordpress/wordpress_1/2018/07/03/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-07-03 04:48:01', '2018-07-03 04:48:01', '', 'Home Page 2', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-07-03 04:48:01', '2018-07-03 04:48:01', '', 69, 'http://localhost:8080/wordpress/wordpress_1/2018/07/03/69-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-07-03 07:04:53', '2018-07-03 07:04:53', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-07-04 06:55:27', '2018-07-04 06:55:27', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=74', 0, 'page', '', 0),
(75, 1, '2018-07-03 07:04:53', '2018-07-03 07:04:53', '', 'About US', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-07-03 07:04:53', '2018-07-03 07:04:53', '', 74, 'http://localhost:8080/wordpress/wordpress_1/2018/07/03/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-07-03 07:08:12', '2018-07-03 07:08:12', '', 'About US', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-07-03 07:08:12', '2018-07-03 07:08:12', '', 74, 'http://localhost:8080/wordpress/wordpress_1/2018/07/03/74-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-07-03 07:34:54', '2018-07-03 07:34:54', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-03 07:34:54', '2018-07-03 07:34:54', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/03/22-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-07-03 08:12:19', '2018-07-03 08:12:19', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nTesting_Website \"[your-subject]\"\n[your-name] <intern-03@vn.devinition.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Testing_Website (http://localhost:8080/wordpress/wordpress_1)\nintern-03@vn.devinition.com\nReply-To: [your-email]\n\n0\n0\n\nTesting_Website \"[your-subject]\"\nTesting_Website <intern-03@vn.devinition.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Testing_Website (http://localhost:8080/wordpress/wordpress_1)\n[your-email]\nReply-To: intern-03@vn.devinition.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-07-03 08:12:19', '2018-07-03 08:12:19', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=wpcf7_contact_form&p=78', 0, 'wpcf7_contact_form', '', 0),
(80, 1, '2018-07-03 10:50:48', '2018-07-03 10:50:48', '', 'Shop', '', 'trash', 'closed', 'closed', '', 'shop__trashed', '', '', '2018-07-04 06:17:50', '2018-07-04 06:17:50', '', 0, 'http://localhost:8080/wordpress/wordpress_1/shop/', 0, 'page', '', 0),
(81, 1, '2018-07-03 10:50:48', '2018-07-03 10:50:48', '[woocommerce_cart]', 'Cart', '', 'trash', 'closed', 'closed', '', 'cart__trashed', '', '', '2018-07-04 06:17:32', '2018-07-04 06:17:32', '', 0, 'http://localhost:8080/wordpress/wordpress_1/cart/', 0, 'page', '', 0),
(82, 1, '2018-07-03 10:50:48', '2018-07-03 10:50:48', '[woocommerce_checkout]', 'Checkout', '', 'trash', 'closed', 'closed', '', 'checkout__trashed', '', '', '2018-07-04 06:17:29', '2018-07-04 06:17:29', '', 0, 'http://localhost:8080/wordpress/wordpress_1/checkout/', 0, 'page', '', 0),
(83, 1, '2018-07-03 10:50:48', '2018-07-03 10:50:48', '[woocommerce_my_account]', 'My account', '', 'trash', 'closed', 'closed', '', 'my-account__trashed', '', '', '2018-07-04 06:17:46', '2018-07-04 06:17:46', '', 0, 'http://localhost:8080/wordpress/wordpress_1/my-account/', 0, 'page', '', 0),
(113, 1, '2018-07-03 10:54:42', '2018-07-03 10:54:42', '', 'new product', '', 'trash', 'open', 'closed', '', 'new-product__trashed', '', '', '2018-07-05 06:39:40', '2018-07-05 06:39:40', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=product&#038;p=113', 0, 'product', '', 0),
(115, 1, '2018-07-04 03:17:05', '2018-07-04 03:17:05', '', 'Facebook like', '', 'trash', 'closed', 'closed', '', '__trashed-5', '', '', '2018-07-04 03:17:05', '2018-07-04 03:17:05', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=115', 0, 'page', '', 0),
(117, 1, '2018-07-04 03:11:53', '2018-07-04 03:11:53', '', 'Facebook Like', '', 'publish', 'closed', 'closed', '', 'facebook-like', '', '', '2018-07-04 06:37:30', '2018-07-04 06:37:30', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=117', 0, 'page', '', 0),
(118, 1, '2018-07-04 03:11:53', '2018-07-04 03:11:53', '', 'Facebook Like', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-07-04 03:11:53', '2018-07-04 03:11:53', '', 117, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-07-04 03:13:21', '2018-07-04 03:13:21', '', 'Facebook Like', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-07-04 03:13:21', '2018-07-04 03:13:21', '', 117, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/117-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-07-04 03:17:05', '2018-07-04 03:17:05', '', 'Facebook like', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-07-04 03:17:05', '2018-07-04 03:17:05', '', 115, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/115-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-07-04 06:17:29', '2018-07-04 06:17:29', '[woocommerce_checkout]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-07-04 06:17:29', '2018-07-04 06:17:29', '', 82, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/82-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-07-04 06:17:32', '2018-07-04 06:17:32', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-07-04 06:17:32', '2018-07-04 06:17:32', '', 81, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/81-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-07-04 06:17:46', '2018-07-04 06:17:46', '[woocommerce_my_account]', 'My account', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-07-04 06:17:46', '2018-07-04 06:17:46', '', 83, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/83-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-07-04 06:17:50', '2018-07-04 06:17:50', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-07-04 06:17:50', '2018-07-04 06:17:50', '', 80, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/80-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-07-04 06:35:14', '2018-07-04 06:35:14', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-04 06:35:14', '2018-07-04 06:35:14', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/22-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-07-04 06:37:30', '2018-07-04 06:37:30', '', 'Facebook Like', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-07-04 06:37:30', '2018-07-04 06:37:30', '', 117, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/117-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-07-04 06:46:14', '2018-07-04 06:46:14', '', 'About U', '', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2018-07-04 06:46:14', '2018-07-04 06:46:14', '', 74, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/74-autosave-v1/', 0, 'revision', '', 0),
(128, 1, '2018-07-04 06:46:16', '2018-07-04 06:46:16', '', 'About U', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-07-04 06:46:16', '2018-07-04 06:46:16', '', 74, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/74-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-07-04 06:51:42', '2018-07-04 06:51:42', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-07-04 06:51:42', '2018-07-04 06:51:42', '', 74, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/74-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-07-04 06:53:11', '2018-07-04 06:53:11', '', 'About Ussss', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-07-04 06:53:11', '2018-07-04 06:53:11', '', 74, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/74-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-07-04 06:55:27', '2018-07-04 06:55:27', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-07-04 06:55:27', '2018-07-04 06:55:27', '', 74, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/74-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-07-04 07:20:40', '2018-07-04 07:20:40', '', 'Home Page Orders', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-04 07:20:40', '2018-07-04 07:20:40', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/22-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-07-04 07:20:48', '2018-07-04 07:20:48', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-04 07:20:48', '2018-07-04 07:20:48', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/04/22-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-07-04 10:33:53', '2018-07-04 10:33:53', 'This is product one', 'product one', '', 'publish', 'closed', 'closed', '', 'product-one', '', '', '2018-07-04 10:33:53', '2018-07-04 10:33:53', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=sanpham&#038;p=137', 0, 'sanpham', '', 0),
(138, 1, '2018-07-04 10:35:19', '2018-07-04 10:35:19', 'this is product two', 'product two', '', 'publish', 'closed', 'closed', '', 'product-two', '', '', '2018-07-04 10:35:19', '2018-07-04 10:35:19', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=sanpham&#038;p=138', 0, 'sanpham', '', 0),
(139, 1, '2018-07-04 10:35:12', '2018-07-04 10:35:12', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2018-07-04 10:35:12', '2018-07-04 10:35:12', '', 138, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2018-07-04 10:36:08', '2018-07-04 10:36:08', 'this is product three', 'product three', '', 'publish', 'closed', 'closed', '', 'product-three', '', '', '2018-07-04 10:36:08', '2018-07-04 10:36:08', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=sanpham&#038;p=140', 0, 'sanpham', '', 0),
(141, 1, '2018-07-04 10:36:02', '2018-07-04 10:36:02', '', 'member4', '', 'inherit', 'open', 'closed', '', 'member4', '', '', '2018-07-04 10:36:02', '2018-07-04 10:36:02', '', 140, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/member4.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2018-07-04 10:37:01', '2018-07-04 10:37:01', 'this is product four', 'product four', '', 'publish', 'closed', 'closed', '', 'product-four', '', '', '2018-07-04 10:55:29', '2018-07-04 10:55:29', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=sanpham&#038;p=142', 0, 'sanpham', '', 0),
(143, 1, '2018-07-04 10:36:50', '2018-07-04 10:36:50', '', 'slide2', '', 'inherit', 'open', 'closed', '', 'slide2', '', '', '2018-07-04 10:36:50', '2018-07-04 10:36:50', '', 142, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/slide2.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2018-07-05 06:37:02', '2018-07-05 06:37:02', 'This one is awesome. Buy it right now.', 't-shirt', 'Hello World, this is the short description of this t-shirts.', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2018-07-05 06:37:03', '2018-07-05 06:37:03', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=product&#038;p=145', 0, 'product', '', 0),
(146, 1, '2018-07-05 06:35:28', '2018-07-05 06:35:28', '', 'ao1', '', 'inherit', 'open', 'closed', '', 'ao1', '', '', '2018-07-05 06:35:28', '2018-07-05 06:35:28', '', 145, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/ao1.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2018-07-05 06:39:14', '2018-07-05 06:39:14', 'This one also the awesome.', 'pants', 'Hello world, we can check more information here.', 'publish', 'open', 'closed', '', 'pants', '', '', '2018-07-05 06:39:14', '2018-07-05 06:39:14', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=product&#038;p=147', 0, 'product', '', 0),
(148, 1, '2018-07-05 06:38:14', '2018-07-05 06:38:14', '', 'quan1', '', 'inherit', 'open', 'closed', '', 'quan1', '', '', '2018-07-05 06:38:14', '2018-07-05 06:38:14', '', 147, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/quan1.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2018-07-05 06:38:29', '2018-07-05 06:38:29', '', 'ao2', '', 'inherit', 'open', 'closed', '', 'ao2', '', '', '2018-07-05 06:38:29', '2018-07-05 06:38:29', '', 147, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/ao2.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2018-07-05 06:38:30', '2018-07-05 06:38:30', '', 'quan2', '', 'inherit', 'open', 'closed', '', 'quan2', '', '', '2018-07-05 06:38:30', '2018-07-05 06:38:30', '', 147, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/quan2.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2018-07-05 07:00:23', '2018-07-05 07:00:23', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'V-Neck T-Shirt', 'This is a variable product.', 'publish', 'open', 'closed', '', 'v-neck-t-shirt', '', '', '2018-07-05 09:42:47', '2018-07-05 09:42:47', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-44/', 0, 'product', '', 0),
(154, 1, '2018-07-05 07:00:23', '2018-07-05 07:00:23', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', 'This is a variable product.', 'publish', 'open', 'closed', '', 'hoodie', '', '', '2018-07-05 09:42:57', '2018-07-05 09:42:57', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-45/', 0, 'product', '', 0),
(155, 1, '2018-07-05 07:00:24', '2018-07-05 07:00:24', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-logo', '', '', '2018-07-05 09:42:20', '2018-07-05 09:42:20', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-46/', 0, 'product', '', 0),
(156, 1, '2018-07-05 07:00:24', '2018-07-05 07:00:24', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt-2', '', '', '2018-07-05 09:42:22', '2018-07-05 09:42:22', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-47/', 0, 'product', '', 0),
(157, 1, '2018-07-05 07:00:25', '2018-07-05 07:00:25', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie', '', '', '2018-07-05 09:42:24', '2018-07-05 09:42:24', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-48/', 0, 'product', '', 0),
(158, 1, '2018-07-05 07:00:26', '2018-07-05 07:00:26', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', 'This is a simple product.', 'publish', 'open', 'closed', '', 'belt', '', '', '2018-07-05 09:42:26', '2018-07-05 09:42:26', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-58/', 0, 'product', '', 0),
(159, 1, '2018-07-05 07:00:26', '2018-07-05 07:00:26', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cap', 'This is a simple product.', 'publish', 'open', 'closed', '', 'cap', '', '', '2018-07-05 07:06:30', '2018-07-05 07:06:30', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-60/', 0, 'product', '', 0),
(160, 1, '2018-07-05 07:00:27', '2018-07-05 07:00:27', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Sunglasses', 'This is a simple product.', 'publish', 'open', 'closed', '', 'sunglasses', '', '', '2018-07-05 09:42:29', '2018-07-05 09:42:29', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-62/', 0, 'product', '', 0),
(161, 1, '2018-07-05 07:00:27', '2018-07-05 07:00:27', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Pocket', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-pocket', '', '', '2018-07-05 09:42:31', '2018-07-05 09:42:31', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-64/', 0, 'product', '', 0),
(162, 1, '2018-07-05 07:00:28', '2018-07-05 07:00:28', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Zipper', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-zipper', '', '', '2018-07-05 09:42:34', '2018-07-05 09:42:34', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-66/', 0, 'product', '', 0),
(163, 1, '2018-07-05 07:00:28', '2018-07-05 07:00:28', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Long Sleeve Tee', 'This is a simple product.', 'publish', 'open', 'closed', '', 'long-sleeve-tee', '', '', '2018-07-05 09:42:36', '2018-07-05 09:42:36', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-68/', 0, 'product', '', 0),
(164, 1, '2018-07-05 07:00:29', '2018-07-05 07:00:29', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Polo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'polo', '', '', '2018-07-05 09:42:38', '2018-07-05 09:42:38', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-70/', 0, 'product', '', 0),
(165, 1, '2018-07-05 07:00:29', '2018-07-05 07:00:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Album', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'album', '', '', '2018-07-05 09:42:41', '2018-07-05 09:42:41', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-73/', 0, 'product', '', 0),
(166, 1, '2018-07-05 07:00:30', '2018-07-05 07:00:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Single', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'single', '', '', '2018-07-05 09:42:43', '2018-07-05 09:42:43', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-75/', 0, 'product', '', 0),
(167, 1, '2018-07-05 07:00:30', '2018-07-05 07:00:30', '', 'V-Neck T-Shirt - Red', '', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-red', '', '', '2018-07-05 09:42:44', '2018-07-05 09:42:44', '', 153, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-76/', 0, 'product_variation', '', 0),
(168, 1, '2018-07-05 07:00:31', '2018-07-05 07:00:31', '', 'V-Neck T-Shirt - Green', '', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-green', '', '', '2018-07-05 09:42:44', '2018-07-05 09:42:44', '', 153, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-77/', 0, 'product_variation', '', 0),
(169, 1, '2018-07-05 07:00:31', '2018-07-05 07:00:31', '', 'V-Neck T-Shirt - Blue', '', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-blue', '', '', '2018-07-05 09:42:44', '2018-07-05 09:42:44', '', 153, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-78/', 0, 'product_variation', '', 0),
(170, 1, '2018-07-05 07:00:32', '2018-07-05 07:00:32', '', 'Hoodie - Red, No', '', 'publish', 'closed', 'closed', '', 'hoodie-red-no', '', '', '2018-07-05 09:42:44', '2018-07-05 09:42:44', '', 154, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-79/', 1, 'product_variation', '', 0),
(171, 1, '2018-07-05 07:00:32', '2018-07-05 07:00:32', '', 'Hoodie - Green, No', '', 'publish', 'closed', 'closed', '', 'hoodie-green-no', '', '', '2018-07-05 09:42:45', '2018-07-05 09:42:45', '', 154, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-80/', 2, 'product_variation', '', 0),
(172, 1, '2018-07-05 07:00:32', '2018-07-05 07:00:32', '', 'Hoodie - Blue, No', '', 'publish', 'closed', 'closed', '', 'hoodie-blue-no', '', '', '2018-07-05 09:42:45', '2018-07-05 09:42:45', '', 154, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-81/', 3, 'product_variation', '', 0),
(173, 1, '2018-07-05 07:00:33', '2018-07-05 07:00:33', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt-with-logo', '', '', '2018-07-05 09:42:47', '2018-07-05 09:42:47', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-83/', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(174, 1, '2018-07-05 07:00:33', '2018-07-05 07:00:33', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie-with-logo', '', '', '2018-07-05 09:42:51', '2018-07-05 09:42:51', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-85/', 0, 'product', '', 0),
(175, 1, '2018-07-05 07:00:34', '2018-07-05 07:00:34', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Logo Collection', 'This is a grouped product.', 'publish', 'open', 'closed', '', 'logo-collection', '', '', '2018-07-05 09:42:53', '2018-07-05 09:42:53', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-87/', 0, 'product', '', 0),
(176, 1, '2018-07-05 07:00:34', '2018-07-05 07:00:34', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'WordPress Pennant', 'This is an external product.', 'publish', 'open', 'closed', '', 'wordpress-pennant', '', '', '2018-07-05 09:42:56', '2018-07-05 09:42:56', '', 0, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-89/', 0, 'product', '', 0),
(177, 1, '2018-07-05 07:00:35', '2018-07-05 07:00:35', '', 'Hoodie - Blue, Yes', '', 'publish', 'closed', 'closed', '', 'hoodie-blue-yes', '', '', '2018-07-05 09:42:57', '2018-07-05 09:42:57', '', 154, 'http://localhost:8080/wordpress/wordpress_1/product/import-placeholder-for-90/', 0, 'product_variation', '', 0),
(179, 1, '2018-07-05 07:06:30', '2018-07-05 07:06:30', '', 'cap-2.jpg', '', 'inherit', 'open', 'closed', '', 'cap-2-jpg', '', '', '2018-07-05 07:06:30', '2018-07-05 07:06:30', '', 159, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/cap-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2018-07-05 09:42:06', '2018-07-05 09:42:06', '', 'vneck-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-jpg', '', '', '2018-07-05 09:42:06', '2018-07-05 09:42:06', '', 153, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2018-07-05 09:42:08', '2018-07-05 09:42:08', '', 'vnech-tee-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-green-1-jpg', '', '', '2018-07-05 09:42:08', '2018-07-05 09:42:08', '', 153, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/vnech-tee-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2018-07-05 09:42:10', '2018-07-05 09:42:10', '', 'vnech-tee-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-blue-1-jpg', '', '', '2018-07-05 09:42:10', '2018-07-05 09:42:10', '', 153, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/vnech-tee-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2018-07-05 09:42:13', '2018-07-05 09:42:13', '', 'hoodie-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-2-jpg', '', '', '2018-07-05 09:42:13', '2018-07-05 09:42:13', '', 154, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/hoodie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2018-07-05 09:42:15', '2018-07-05 09:42:15', '', 'hoodie-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-blue-1-jpg', '', '', '2018-07-05 09:42:15', '2018-07-05 09:42:15', '', 154, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/hoodie-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2018-07-05 09:42:17', '2018-07-05 09:42:17', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg', '', '', '2018-07-05 09:42:17', '2018-07-05 09:42:17', '', 154, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/hoodie-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2018-07-05 09:42:19', '2018-07-05 09:42:19', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg', '', '', '2018-07-05 09:42:19', '2018-07-05 09:42:19', '', 154, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2018-07-05 09:42:21', '2018-07-05 09:42:21', '', 'tshirt-2.jpg', '', 'inherit', 'open', 'closed', '', 'tshirt-2-jpg', '', '', '2018-07-05 09:42:21', '2018-07-05 09:42:21', '', 156, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2018-07-05 09:42:24', '2018-07-05 09:42:24', '', 'beanie-2.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-2-jpg', '', '', '2018-07-05 09:42:24', '2018-07-05 09:42:24', '', 157, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 1, '2018-07-05 09:42:26', '2018-07-05 09:42:26', '', 'belt-2.jpg', '', 'inherit', 'open', 'closed', '', 'belt-2-jpg', '', '', '2018-07-05 09:42:26', '2018-07-05 09:42:26', '', 158, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2018-07-05 09:42:28', '2018-07-05 09:42:28', '', 'sunglasses-2.jpg', '', 'inherit', 'open', 'closed', '', 'sunglasses-2-jpg', '', '', '2018-07-05 09:42:28', '2018-07-05 09:42:28', '', 160, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2018-07-05 09:42:31', '2018-07-05 09:42:31', '', 'hoodie-with-pocket-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-2-jpg', '', '', '2018-07-05 09:42:31', '2018-07-05 09:42:31', '', 161, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/hoodie-with-pocket-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2018-07-05 09:42:33', '2018-07-05 09:42:33', '', 'hoodie-with-zipper-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-jpg', '', '', '2018-07-05 09:42:33', '2018-07-05 09:42:33', '', 162, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/hoodie-with-zipper-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2018-07-05 09:42:35', '2018-07-05 09:42:35', '', 'long-sleeve-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2-jpg', '', '', '2018-07-05 09:42:35', '2018-07-05 09:42:35', '', 163, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/long-sleeve-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(194, 1, '2018-07-05 09:42:38', '2018-07-05 09:42:38', '', 'polo-2.jpg', '', 'inherit', 'open', 'closed', '', 'polo-2-jpg', '', '', '2018-07-05 09:42:38', '2018-07-05 09:42:38', '', 164, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/polo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 1, '2018-07-05 09:42:40', '2018-07-05 09:42:40', '', 'album-1.jpg', '', 'inherit', 'open', 'closed', '', 'album-1-jpg', '', '', '2018-07-05 09:42:40', '2018-07-05 09:42:40', '', 165, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/album-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2018-07-05 09:42:42', '2018-07-05 09:42:42', '', 'single-1.jpg', '', 'inherit', 'open', 'closed', '', 'single-1-jpg', '', '', '2018-07-05 09:42:42', '2018-07-05 09:42:42', '', 166, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/single-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(197, 1, '2018-07-05 09:42:46', '2018-07-05 09:42:46', '', 't-shirt-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 't-shirt-with-logo-1-jpg', '', '', '2018-07-05 09:42:46', '2018-07-05 09:42:46', '', 173, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/t-shirt-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(198, 1, '2018-07-05 09:42:50', '2018-07-05 09:42:50', '', 'beanie-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1-jpg', '', '', '2018-07-05 09:42:50', '2018-07-05 09:42:50', '', 174, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/beanie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2018-07-05 09:42:53', '2018-07-05 09:42:53', '', 'logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'logo-1-jpg', '', '', '2018-07-05 09:42:53', '2018-07-05 09:42:53', '', 175, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2018-07-05 09:42:56', '2018-07-05 09:42:56', '', 'pennant-1.jpg', '', 'inherit', 'open', 'closed', '', 'pennant-1-jpg', '', '', '2018-07-05 09:42:56', '2018-07-05 09:42:56', '', 176, 'http://localhost:8080/wordpress/wordpress_1/wp-content/uploads/2018/07/pennant-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2018-07-06 02:58:52', '2018-07-06 02:58:52', 'I am otaku. i really love japanese manga.', 'Manga', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-07-06 02:58:52', '2018-07-06 02:58:52', '', 11, 'http://localhost:8080/wordpress/wordpress_1/2018/07/06/11-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2018-07-06 02:59:24', '2018-07-06 02:59:24', 'I am otaku. i really love japanese manga.', 'Manga', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-07-06 02:59:24', '2018-07-06 02:59:24', '', 11, 'http://localhost:8080/wordpress/wordpress_1/2018/07/06/11-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2018-07-06 03:07:13', '2018-07-06 03:07:13', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-07-06 03:07:13', '2018-07-06 03:07:13', '', 1, 'http://localhost:8080/wordpress/wordpress_1/2018/07/06/1-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2018-07-06 03:38:41', '2018-07-06 03:38:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-07-06 03:38:41', '2018-07-06 03:38:41', '', 1, 'http://localhost:8080/wordpress/wordpress_1/2018/07/06/1-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2018-07-06 03:53:48', '2018-07-06 03:53:48', 'I am otaku. i really love japanese manga.', 'Manga', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-07-06 03:53:48', '2018-07-06 03:53:48', '', 11, 'http://localhost:8080/wordpress/wordpress_1/2018/07/06/11-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2018-07-06 08:12:11', '2018-07-06 08:12:11', '{\n    \"nav_menu_item[45]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-06 08:12:11\"\n    },\n    \"nav_menu_item[47]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-06 08:12:11\"\n    },\n    \"nav_menu_item[48]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-06 08:12:11\"\n    },\n    \"nav_menu_item[49]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-06 08:12:11\"\n    },\n    \"nav_menu_item[-232876507]\": {\n        \"value\": {\n            \"object_id\": 74,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"About Us\",\n            \"url\": \"http://localhost:8080/wordpress/wordpress_1/about-us/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About Us\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-06 08:12:11\"\n    },\n    \"nav_menu_item[-1212508130]\": {\n        \"value\": {\n            \"object_id\": 32,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Check Out\",\n            \"url\": \"http://localhost:8080/wordpress/wordpress_1/check-out/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Check Out\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-06 08:12:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9aea2e1d-1c98-4777-9032-8e4d8f7c93d6', '', '', '2018-07-06 08:12:11', '2018-07-06 08:12:11', '', 0, 'http://localhost:8080/wordpress/wordpress_1/2018/07/06/9aea2e1d-1c98-4777-9032-8e4d8f7c93d6/', 0, 'customize_changeset', '', 0),
(211, 1, '2018-07-06 08:31:37', '2018-07-06 08:31:37', ' ', '', '', 'publish', 'closed', 'closed', '', '211', '', '', '2018-07-06 08:31:37', '2018-07-06 08:31:37', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=211', 2, 'nav_menu_item', '', 0),
(212, 1, '2018-07-06 08:31:37', '2018-07-06 08:31:37', ' ', '', '', 'publish', 'closed', 'closed', '', '212', '', '', '2018-07-06 08:31:37', '2018-07-06 08:31:37', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=212', 1, 'nav_menu_item', '', 0),
(213, 1, '2018-07-06 08:31:37', '2018-07-06 08:31:37', ' ', '', '', 'publish', 'closed', 'closed', '', '213', '', '', '2018-07-06 08:31:37', '2018-07-06 08:31:37', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=213', 3, 'nav_menu_item', '', 0),
(216, 1, '2018-07-10 09:26:58', '2018-07-10 09:26:58', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-10 09:26:58', '2018-07-10 09:26:58', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/10/22-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2018-07-10 10:02:12', '2018-07-10 10:02:12', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2018-07-11 01:50:49', '2018-07-11 01:50:49', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=217', 0, 'page', '', 0),
(218, 1, '2018-07-10 10:02:12', '2018-07-10 10:02:12', '', 'Login', '', 'inherit', 'closed', 'closed', '', '217-revision-v1', '', '', '2018-07-10 10:02:12', '2018-07-10 10:02:12', '', 217, 'http://localhost:8080/wordpress/wordpress_1/2018/07/10/217-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2018-07-10 10:09:16', '2018-07-10 10:09:16', '', 'Login', '', 'trash', 'closed', 'closed', '', 'acf_login__trashed', '', '', '2018-07-10 10:09:48', '2018-07-10 10:09:48', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=acf&#038;p=219', 0, 'acf', '', 0),
(220, 1, '2018-07-11 01:50:49', '2018-07-11 01:50:49', '', 'Login', '', 'inherit', 'closed', 'closed', '', '217-revision-v1', '', '', '2018-07-11 01:50:49', '2018-07-11 01:50:49', '', 217, 'http://localhost:8080/wordpress/wordpress_1/2018/07/11/217-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2018-07-11 06:12:43', '2018-07-11 06:12:43', '', 'CULTURE', '', 'publish', 'closed', 'closed', '', 'culture', '', '', '2018-07-11 06:12:43', '2018-07-11 06:12:43', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=221', 0, 'page', '', 0),
(222, 1, '2018-07-11 06:12:43', '2018-07-11 06:12:43', '', 'CULTURE', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2018-07-11 06:12:43', '2018-07-11 06:12:43', '', 221, 'http://localhost:8080/wordpress/wordpress_1/2018/07/11/221-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2018-07-11 06:13:00', '2018-07-11 06:13:00', '', 'LIFE', '', 'publish', 'closed', 'closed', '', 'life', '', '', '2018-07-11 06:13:00', '2018-07-11 06:13:00', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=223', 0, 'page', '', 0),
(224, 1, '2018-07-11 06:13:00', '2018-07-11 06:13:00', '', 'LIFE', '', 'inherit', 'closed', 'closed', '', '223-revision-v1', '', '', '2018-07-11 06:13:00', '2018-07-11 06:13:00', '', 223, 'http://localhost:8080/wordpress/wordpress_1/2018/07/11/223-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2018-07-11 06:13:17', '2018-07-11 06:13:17', '', 'CURRENT AFFAIRS', '', 'publish', 'closed', 'closed', '', 'current-affairs', '', '', '2018-07-11 06:13:17', '2018-07-11 06:13:17', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?page_id=225', 0, 'page', '', 0),
(226, 1, '2018-07-11 06:13:17', '2018-07-11 06:13:17', '', 'CURRENT AFFAIRS', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2018-07-11 06:13:17', '2018-07-11 06:13:17', '', 225, 'http://localhost:8080/wordpress/wordpress_1/2018/07/11/225-revision-v1/', 0, 'revision', '', 0),
(227, 1, '2018-07-11 06:13:46', '2018-07-11 06:13:46', '', 'BUSINESS', '', 'publish', 'closed', 'closed', '', 'business', '', '', '2018-07-11 06:13:46', '2018-07-11 06:13:46', '', 225, 'http://localhost:8080/wordpress/wordpress_1/?page_id=227', 0, 'page', '', 0),
(228, 1, '2018-07-11 06:13:46', '2018-07-11 06:13:46', '', 'BUSINESS', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2018-07-11 06:13:46', '2018-07-11 06:13:46', '', 227, 'http://localhost:8080/wordpress/wordpress_1/2018/07/11/227-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2018-07-11 06:14:34', '2018-07-11 06:14:34', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2018-07-11 06:15:24', '2018-07-11 06:15:24', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=229', 2, 'nav_menu_item', '', 0),
(230, 1, '2018-07-11 06:14:33', '2018-07-11 06:14:33', ' ', '', '', 'publish', 'closed', 'closed', '', '230', '', '', '2018-07-11 06:15:24', '2018-07-11 06:15:24', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=230', 1, 'nav_menu_item', '', 0),
(231, 1, '2018-07-11 06:14:34', '2018-07-11 06:14:34', ' ', '', '', 'publish', 'closed', 'closed', '', '231', '', '', '2018-07-11 06:15:24', '2018-07-11 06:15:24', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=231', 4, 'nav_menu_item', '', 0),
(232, 1, '2018-07-11 06:14:34', '2018-07-11 06:14:34', ' ', '', '', 'publish', 'closed', 'closed', '', '232', '', '', '2018-07-11 06:15:24', '2018-07-11 06:15:24', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=232', 3, 'nav_menu_item', '', 0),
(233, 1, '2018-07-11 06:14:56', '2018-07-11 06:14:56', ' ', '', '', 'publish', 'closed', 'closed', '', '233', '', '', '2018-07-11 06:15:24', '2018-07-11 06:15:24', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=233', 5, 'nav_menu_item', '', 0),
(235, 1, '2018-07-11 06:47:03', '2018-07-11 06:47:03', '', 'Home Page Ordersss', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 06:47:03', '2018-07-11 06:47:03', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2018-07-11 06:49:03', '2018-07-11 06:49:03', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 06:49:03', '2018-07-11 06:49:03', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2018-07-11 06:49:12', '2018-07-11 06:49:12', '', 'Home Page Order', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-11 06:49:12', '2018-07-11 06:49:12', '', 22, 'http://localhost:8080/wordpress/wordpress_1/2018/07/11/22-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2018-07-11 07:48:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-11 07:48:39', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=acf&p=238', 0, 'acf', '', 0),
(239, 1, '2018-07-11 08:48:48', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-07-11 08:48:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?post_type=product&p=239', 0, 'product', '', 0),
(240, 1, '2018-07-12 04:53:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-12 04:53:54', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/wordpress/wordpress_1/?p=240', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 27, 'thumbnail_id', '97'),
(2, 27, 'product_count_product_cat', '0'),
(3, 28, 'thumbnail_id', '99'),
(4, 28, 'product_count_product_cat', '0'),
(5, 29, 'thumbnail_id', '98'),
(6, 29, 'product_count_product_cat', '1'),
(7, 26, 'product_count_product_cat', '0'),
(8, 32, 'product_count_product_tag', '1'),
(9, 33, 'product_count_product_tag', '1'),
(10, 34, 'order', '0'),
(11, 34, 'product_count_product_cat', '1'),
(12, 35, 'product_count_product_tag', '1'),
(13, 36, 'product_count_product_tag', '1'),
(14, 37, 'order', '0'),
(15, 38, 'order', '0'),
(16, 39, 'order', '0'),
(17, 40, 'order', '0'),
(18, 41, 'order', '0'),
(19, 42, 'order', '0'),
(20, 40, 'product_count_product_cat', '5'),
(21, 37, 'product_count_product_cat', '14'),
(22, 43, 'order_pa_color', '0'),
(23, 38, 'product_count_product_cat', '5'),
(24, 44, 'order_pa_color', '0'),
(25, 45, 'order_pa_color', '0'),
(26, 46, 'order_pa_color', '0'),
(27, 47, 'order_pa_size', '0'),
(28, 48, 'order_pa_size', '0'),
(29, 49, 'order_pa_size', '0'),
(30, 39, 'product_count_product_cat', '3'),
(31, 50, 'order_pa_color', '0'),
(32, 41, 'product_count_product_cat', '2'),
(33, 42, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu Links', 'primary-menu-links', 0),
(8, 'Uncategorized', 'uncategorized-fr', 0),
(12, 'Uncategorized', 'uncategorized-zh', 0),
(13, 'simple', 'simple', 0),
(14, 'grouped', 'grouped', 0),
(15, 'variable', 'variable', 0),
(16, 'external', 'external', 0),
(17, 'exclude-from-search', 'exclude-from-search', 0),
(18, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(19, 'featured', 'featured', 0),
(20, 'outofstock', 'outofstock', 0),
(21, 'rated-1', 'rated-1', 0),
(22, 'rated-2', 'rated-2', 0),
(23, 'rated-3', 'rated-3', 0),
(24, 'rated-4', 'rated-4', 0),
(25, 'rated-5', 'rated-5', 0),
(26, 'Uncategorized', 'uncategorized', 0),
(27, 'Accessories', 'accessories', 0),
(28, 'Hoodies', 'hoodies', 0),
(29, 'Tshirts', 'tshirts', 0),
(30, 'design', 'design', 0),
(31, 'creative', 'creative', 0),
(32, 'white shirt', 'white-shirt', 0),
(33, 'awesome', 'awesome', 0),
(34, 'pants', 'pants', 0),
(35, 'black', 'black', 0),
(36, 'yellow', 'yellow', 0),
(37, 'Clothing', 'clothing', 0),
(38, 'Tshirts', 'tshirts-clothing', 0),
(39, 'Hoodies', 'hoodies-clothing', 0),
(40, 'Accessories', 'accessories-clothing', 0),
(41, 'Music', 'music', 0),
(42, 'Decor', 'decor', 0),
(43, 'Yellow', 'yellow', 0),
(44, 'Blue', 'blue', 0),
(45, 'Green', 'green', 0),
(46, 'Red', 'red', 0),
(47, 'Large', 'large', 0),
(48, 'Medium', 'medium', 0),
(49, 'Small', 'small', 0),
(50, 'Gray', 'gray', 0),
(51, 'Hello World', 'hello-world', 0),
(52, 'Manga', 'manga', 0),
(53, 'Footer Menu Links', 'footer-menu-links', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 51, 0),
(11, 52, 0),
(12, 5, 0),
(56, 31, 0),
(57, 30, 0),
(61, 12, 0),
(113, 13, 0),
(113, 26, 0),
(145, 13, 0),
(145, 29, 0),
(145, 32, 0),
(145, 33, 0),
(147, 13, 0),
(147, 34, 0),
(147, 35, 0),
(147, 36, 0),
(153, 15, 0),
(153, 19, 0),
(153, 38, 0),
(153, 44, 0),
(153, 45, 0),
(153, 46, 0),
(153, 47, 0),
(153, 48, 0),
(153, 49, 0),
(154, 15, 0),
(154, 39, 0),
(154, 44, 0),
(154, 45, 0),
(154, 46, 0),
(155, 13, 0),
(155, 39, 0),
(155, 44, 0),
(156, 13, 0),
(156, 38, 0),
(156, 50, 0),
(157, 13, 0),
(157, 40, 0),
(157, 46, 0),
(158, 13, 0),
(158, 40, 0),
(159, 13, 0),
(159, 19, 0),
(159, 40, 0),
(159, 43, 0),
(160, 13, 0),
(160, 19, 0),
(160, 40, 0),
(161, 13, 0),
(161, 17, 0),
(161, 18, 0),
(161, 19, 0),
(161, 39, 0),
(161, 50, 0),
(162, 13, 0),
(162, 19, 0),
(162, 39, 0),
(163, 13, 0),
(163, 38, 0),
(163, 45, 0),
(164, 13, 0),
(164, 38, 0),
(164, 44, 0),
(165, 13, 0),
(165, 41, 0),
(166, 13, 0),
(166, 41, 0),
(167, 26, 0),
(168, 26, 0),
(169, 26, 0),
(170, 26, 0),
(171, 26, 0),
(172, 26, 0),
(173, 13, 0),
(173, 38, 0),
(173, 50, 0),
(174, 13, 0),
(174, 40, 0),
(174, 46, 0),
(175, 14, 0),
(175, 37, 0),
(176, 16, 0),
(176, 42, 0),
(177, 26, 0),
(211, 2, 0),
(212, 2, 0),
(213, 2, 0),
(229, 53, 0),
(230, 53, 0),
(231, 53, 0),
(232, 53, 0),
(233, 53, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(8, 8, 'category', '', 0, 0),
(12, 12, 'category', '', 0, 0),
(13, 13, 'product_type', '', 0, 16),
(14, 14, 'product_type', '', 0, 1),
(15, 15, 'product_type', '', 0, 2),
(16, 16, 'product_type', '', 0, 1),
(17, 17, 'product_visibility', '', 0, 1),
(18, 18, 'product_visibility', '', 0, 1),
(19, 19, 'product_visibility', '', 0, 5),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_visibility', '', 0, 0),
(22, 22, 'product_visibility', '', 0, 0),
(23, 23, 'product_visibility', '', 0, 0),
(24, 24, 'product_visibility', '', 0, 0),
(25, 25, 'product_visibility', '', 0, 0),
(26, 26, 'product_cat', '', 0, 0),
(27, 27, 'product_cat', 'A short category description', 0, 0),
(28, 28, 'product_cat', 'A short category description', 0, 0),
(29, 29, 'product_cat', 'A short category description', 0, 1),
(30, 30, 'member_taxonomy', '', 0, 1),
(31, 31, 'member_taxonomy', '', 0, 1),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'product_cat', '', 0, 1),
(35, 35, 'product_tag', '', 0, 1),
(36, 36, 'product_tag', '', 0, 1),
(37, 37, 'product_cat', '', 0, 1),
(38, 38, 'product_cat', '', 37, 5),
(39, 39, 'product_cat', '', 37, 4),
(40, 40, 'product_cat', '', 37, 5),
(41, 41, 'product_cat', '', 0, 2),
(42, 42, 'product_cat', '', 0, 1),
(43, 43, 'pa_color', '', 0, 1),
(44, 44, 'pa_color', '', 0, 4),
(45, 45, 'pa_color', '', 0, 3),
(46, 46, 'pa_color', '', 0, 4),
(47, 47, 'pa_size', '', 0, 1),
(48, 48, 'pa_size', '', 0, 1),
(49, 49, 'pa_size', '', 0, 1),
(50, 50, 'pa_color', '', 0, 3),
(51, 51, 'category', '', 0, 1),
(52, 52, 'category', '', 0, 1),
(53, 53, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice,theme_editor_notice,piklist_demos'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"7a7c38116080d591fe966a970451218ecdb8bf7295eb4f2be651ece041d61908\";a:4:{s:10:\"expiration\";i:1531386875;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531214075;}s:64:\"80936dc415453ab5a5d2648df4745b2fc4b010d23f3573897a4e99e37baf9293\";a:4:{s:10:\"expiration\";i:1531391413;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531218613;}s:64:\"e800d513649be6b83eccb3704345ff102ab677e3bae42e362e1a7291c3ecd835\";a:4:{s:10:\"expiration\";i:1531446626;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531273826;}s:64:\"69384864e85912b28b8f20afd663e16de84e8cce7ce799de694a0c62743f8be4\";a:4:{s:10:\"expiration\";i:1531540821;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531368021;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '240'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(19, 1, 'wp_user-settings-time', '1530848318'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(22, 2, 'nickname', 'manga'),
(23, 2, 'first_name', 'man'),
(24, 2, 'last_name', 'ga'),
(25, 2, 'description', ''),
(26, 2, 'rich_editing', 'true'),
(27, 2, 'syntax_highlighting', 'true'),
(28, 2, 'comment_shortcuts', 'false'),
(29, 2, 'admin_color', 'fresh'),
(30, 2, 'use_ssl', '0'),
(31, 2, 'show_admin_bar_front', 'true'),
(32, 2, 'locale', ''),
(33, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(34, 2, 'wp_user_level', '0'),
(35, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(37, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(38, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(39, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:77:\"revisionsdiv,acf_24,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(40, 1, 'screen_layout_page', '2'),
(41, 1, 'closedpostboxes_page', 'a:1:{i:0;s:12:\"revisionsdiv\";}'),
(42, 1, 'metaboxhidden_page', 'a:8:{i:0;s:6:\"acf_50\";i:1;s:6:\"acf_34\";i:2;s:6:\"acf_54\";i:3;s:10:\"postcustom\";i:4;s:16:\"commentstatusdiv\";i:5;s:11:\"commentsdiv\";i:6;s:7:\"slugdiv\";i:7;s:9:\"authordiv\";}'),
(43, 1, 'nav_menu_recently_edited', '53'),
(44, 1, 'wc_last_active', '1531353600'),
(45, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(46, 1, 'dismissed_install_notice', '1'),
(47, 1, 'closedpostboxes_member', 'a:0:{}'),
(48, 1, 'metaboxhidden_member', 'a:4:{i:0;s:6:\"acf_50\";i:1;s:6:\"acf_34\";i:2;s:6:\"acf_24\";i:3;s:7:\"slugdiv\";}'),
(49, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(50, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(51, 1, 'wp_nf_form_preview_tmp-1530702661', 'a:4:{s:2:\"id\";s:14:\"tmp-1530702661\";s:8:\"settings\";a:18:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:0;s:5:\"title\";s:5:\"Order\";s:10:\"show_title\";i:1;s:14:\"clear_complete\";i:1;s:13:\"hide_complete\";i:1;s:17:\"default_label_pos\";s:5:\"above\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:0:\"\";s:10:\"add_submit\";i:1;s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:9:\"logged_in\";b:0;s:17:\"not_logged_in_msg\";s:0:\"\";s:13:\"sub_limit_msg\";s:42:\"The form has reached its submission limit.\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:7:{i:0;s:23:\"full_name_1530702754570\";i:1;s:26:\"phone_number_1530702766935\";i:2;s:21:\"address_1530702779486\";i:3;s:19:\"email_1530702713273\";i:4;s:17:\"url_1530702812076\";i:5;s:19:\"title_1530702819003\";i:6;s:20:\"submit_1530702840505\";}}s:6:\"fields\";a:7:{s:5:\"tmp-1\";a:1:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:4:\"type\";s:7:\"textbox\";s:5:\"label\";s:9:\"Full Name\";s:3:\"key\";s:23:\"full_name_1530702754570\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}}s:5:\"tmp-2\";a:1:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:4:\"type\";s:7:\"textbox\";s:5:\"label\";s:12:\"Phone Number\";s:3:\"key\";s:26:\"phone_number_1530702766935\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}}s:5:\"tmp-3\";a:1:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:4:\"type\";s:7:\"textbox\";s:5:\"label\";s:7:\"Address\";s:3:\"key\";s:21:\"address_1530702779486\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}}s:5:\"tmp-5\";a:1:{s:8:\"settings\";a:18:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:5;s:4:\"type\";s:5:\"email\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:19:\"email_1530702713273\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:14:\"drawerDisabled\";b:0;}}s:5:\"tmp-6\";a:1:{s:8:\"settings\";a:10:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:6;s:4:\"type\";s:6:\"hidden\";s:5:\"label\";s:3:\"URL\";s:3:\"key\";s:17:\"url_1530702812076\";s:7:\"default\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}}s:5:\"tmp-7\";a:1:{s:8:\"settings\";a:10:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:7;s:4:\"type\";s:6:\"hidden\";s:5:\"label\";s:5:\"Title\";s:3:\"key\";s:19:\"title_1530702819003\";s:7:\"default\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}}s:5:\"tmp-8\";a:1:{s:8:\"settings\";a:10:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:9999;s:4:\"type\";s:6:\"submit\";s:5:\"label\";s:6:\"Submit\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:20:\"submit_1530702840505\";}}}s:7:\"actions\";a:3:{s:5:\"tmp-1\";a:1:{s:8:\"settings\";a:28:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:15:\"Success Message\";s:4:\"type\";s:14:\"successmessage\";s:7:\"message\";s:42:\"Your form has been successfully submitted.\";s:5:\"order\";i:1;s:6:\"active\";b:1;s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";}}s:5:\"tmp-2\";a:1:{s:8:\"settings\";a:21:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:11:\"Admin Email\";s:4:\"type\";s:5:\"email\";s:5:\"order\";i:2;s:6:\"active\";b:1;s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";}}s:5:\"tmp-3\";a:1:{s:8:\"settings\";a:27:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"label\";s:16:\"Store Submission\";s:4:\"type\";s:4:\"save\";s:5:\"order\";i:3;s:6:\"active\";b:1;s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:15:\"submitter_email\";s:19:\"email_1530702713273\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";}}}}'),
(52, 1, 'community-events-location', 'a:4:{s:11:\"description\";s:6:\"Saigon\";s:8:\"latitude\";s:10:\"10.8230200\";s:9:\"longitude\";s:11:\"106.6296500\";s:7:\"country\";s:2:\"VN\";}'),
(53, 1, 'dismissed_no_secure_connection_notice', '1'),
(54, 1, 'manageedit-shop_ordercolumnshidden', 'a:8:{i:0;s:2:\"cb\";i:1;s:12:\"order_number\";i:2;s:10:\"order_date\";i:3;s:12:\"order_status\";i:4;s:15:\"billing_address\";i:5;s:16:\"shipping_address\";i:6;s:11:\"order_total\";i:7;s:10:\"wc_actions\";}'),
(55, 1, 'wp_woocommerce_product_import_mapping', 'a:51:{i:0;s:2:\"id\";i:1;s:4:\"type\";i:2;s:3:\"sku\";i:3;s:4:\"name\";i:4;s:9:\"published\";i:5;s:8:\"featured\";i:6;s:18:\"catalog_visibility\";i:7;s:17:\"short_description\";i:8;s:11:\"description\";i:9;s:17:\"date_on_sale_from\";i:10;s:15:\"date_on_sale_to\";i:11;s:10:\"tax_status\";i:12;s:9:\"tax_class\";i:13;s:12:\"stock_status\";i:14;s:14:\"stock_quantity\";i:15;s:10:\"backorders\";i:16;s:17:\"sold_individually\";i:17;s:0:\"\";i:18;s:0:\"\";i:19;s:0:\"\";i:20;s:0:\"\";i:21;s:15:\"reviews_allowed\";i:22;s:13:\"purchase_note\";i:23;s:10:\"sale_price\";i:24;s:13:\"regular_price\";i:25;s:12:\"category_ids\";i:26;s:7:\"tag_ids\";i:27;s:17:\"shipping_class_id\";i:28;s:6:\"images\";i:29;s:14:\"download_limit\";i:30;s:15:\"download_expiry\";i:31;s:9:\"parent_id\";i:32;s:16:\"grouped_products\";i:33;s:10:\"upsell_ids\";i:34;s:14:\"cross_sell_ids\";i:35;s:11:\"product_url\";i:36;s:11:\"button_text\";i:37;s:10:\"menu_order\";i:38;s:16:\"attributes:name1\";i:39;s:17:\"attributes:value1\";i:40;s:19:\"attributes:visible1\";i:41;s:20:\"attributes:taxonomy1\";i:42;s:16:\"attributes:name2\";i:43;s:17:\"attributes:value2\";i:44;s:19:\"attributes:visible2\";i:45;s:20:\"attributes:taxonomy2\";i:46;s:23:\"meta:_wpcom_is_markdown\";i:47;s:15:\"downloads:name1\";i:48;s:14:\"downloads:url1\";i:49;s:15:\"downloads:name2\";i:50;s:14:\"downloads:url2\";}'),
(56, 1, 'wp_product_import_error_log', 'a:2:{i:0;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:38:\"A product with this ID already exists.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:2:{s:2:\"id\";i:159;s:3:\"row\";s:24:\"Cap, ID 159, SKU woo-cap\";}}}i:1;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:38:\"A product with this ID already exists.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:2:{s:2:\"id\";i:173;s:3:\"row\";s:46:\"T-Shirt with Logo, ID 173, SKU Woo-tshirt-logo\";}}}}'),
(57, 3, 'nickname', 'mama'),
(58, 3, 'first_name', 'mama'),
(59, 3, 'last_name', 'mama'),
(60, 3, 'description', ''),
(61, 3, 'rich_editing', 'true'),
(62, 3, 'syntax_highlighting', 'true'),
(63, 3, 'comment_shortcuts', 'false'),
(64, 3, 'admin_color', 'fresh'),
(65, 3, 'use_ssl', '0'),
(66, 3, 'show_admin_bar_front', 'true'),
(67, 3, 'locale', ''),
(68, 3, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(69, 3, 'wp_user_level', '10'),
(70, 3, 'dismissed_wp_pointers', 'wp496_privacy');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B5j9xhVJbYdo7E90J30l6YTfJHYcrc/', 'admin', 'intern-03@vn.devinition.com', '', '2018-06-28 07:43:00', '', 0, 'admin'),
(2, 'manga', '$P$Bg1qc84NrGx0e/a5hdmDtbvdfc4rdF.', 'manga', 'hung13923289@gmail.com', 'http://none', '2018-06-29 08:28:25', '1530260907:$P$BwGsdpWP7KaKSEfujDi1a7Yl9e81Ba1', 0, 'man ga'),
(3, 'mama', '$P$BEgpRtW/vM1zDMmEn5yejL66e32xZS1', 'mama', 'hunga13923289@gmail.com', '', '2018-07-10 10:50:58', '1531219861:$P$BkksUzCFuNnA.pc4yltQL2HmOS4sHC/', 0, 'mama mama');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0),
(2, 'size', 'Size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(6, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:715:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:27:\"intern-03@vn.devinition.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1531386878);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Vietnam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'VN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

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
  ADD KEY `order_id` (`order_id`);

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
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

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
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1325;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2900;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
