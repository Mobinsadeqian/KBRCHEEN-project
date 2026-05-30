-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2026 at 05:24 PM
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
-- Database: `kbrcheen`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add دسته‌بندی', 7, 'add_category'),
(26, 'Can change دسته‌بندی', 7, 'change_category'),
(27, 'Can delete دسته‌بندی', 7, 'delete_category'),
(28, 'Can view دسته‌بندی', 7, 'view_category'),
(29, 'Can add شهر', 8, 'add_city'),
(30, 'Can change شهر', 8, 'change_city'),
(31, 'Can delete شهر', 8, 'delete_city'),
(32, 'Can view شهر', 8, 'view_city'),
(33, 'Can add استان', 9, 'add_state'),
(34, 'Can change استان', 9, 'change_state'),
(35, 'Can delete استان', 9, 'delete_state'),
(36, 'Can view استان', 9, 'view_state'),
(37, 'Can add گزارش', 10, 'add_report'),
(38, 'Can change گزارش', 10, 'change_report'),
(39, 'Can delete گزارش', 10, 'delete_report'),
(40, 'Can view گزارش', 10, 'view_report');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$WOGZIMVgyx5aHXPir1S4hL$dqfCwKFzjRWO+Yiwpb927rAnDHpbnO8FNSvO+hlBnBs=', '2026-05-26 09:02:40.385608', 1, 'root', '', '', 'root@gmail.com', 1, 1, '2026-05-26 09:02:13.260298');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2026-05-26 09:03:09.156062', '1', 'مرکزی', 1, '[{\"added\": {}}]', 9, 1),
(2, '2026-05-26 09:03:12.808741', '2', 'اردبیل', 1, '[{\"added\": {}}]', 9, 1),
(3, '2026-05-26 09:03:15.985692', '3', 'آذربایجان غربی', 1, '[{\"added\": {}}]', 9, 1),
(4, '2026-05-26 09:03:19.077845', '4', 'اصفهان', 1, '[{\"added\": {}}]', 9, 1),
(5, '2026-05-26 09:03:22.233481', '5', 'خوزستان', 1, '[{\"added\": {}}]', 9, 1),
(6, '2026-05-26 09:03:26.682922', '6', 'ایلام', 1, '[{\"added\": {}}]', 9, 1),
(7, '2026-05-26 09:03:29.931693', '7', 'خراسان شمالی', 1, '[{\"added\": {}}]', 9, 1),
(8, '2026-05-26 09:03:33.481281', '8', 'هرمزگان', 1, '[{\"added\": {}}]', 9, 1),
(9, '2026-05-26 09:03:36.881020', '9', 'بوشهر', 1, '[{\"added\": {}}]', 9, 1),
(10, '2026-05-26 09:03:40.624487', '10', 'خراسان جنوبی', 1, '[{\"added\": {}}]', 9, 1),
(11, '2026-05-26 09:03:44.196092', '11', 'آذربایجان شرقی', 1, '[{\"added\": {}}]', 9, 1),
(12, '2026-05-26 09:03:47.898652', '12', 'تهران', 1, '[{\"added\": {}}]', 9, 1),
(13, '2026-05-26 09:03:59.106593', '13', 'لرستان', 1, '[{\"added\": {}}]', 9, 1),
(14, '2026-05-26 09:04:02.699936', '14', 'گیلان', 1, '[{\"added\": {}}]', 9, 1),
(15, '2026-05-26 09:04:05.898536', '15', 'سیستان و بلوچستان', 1, '[{\"added\": {}}]', 9, 1),
(16, '2026-05-26 09:04:09.145218', '16', 'زنجان', 1, '[{\"added\": {}}]', 9, 1),
(17, '2026-05-26 09:04:12.110891', '17', 'مازندران', 1, '[{\"added\": {}}]', 9, 1),
(18, '2026-05-26 09:04:15.655003', '18', 'سمنان', 1, '[{\"added\": {}}]', 9, 1),
(19, '2026-05-26 09:04:19.604707', '19', 'کردستان', 1, '[{\"added\": {}}]', 9, 1),
(20, '2026-05-26 09:04:23.410383', '20', 'چهار محال و بختیاری', 1, '[{\"added\": {}}]', 9, 1),
(21, '2026-05-26 09:04:26.735300', '21', 'فارس', 1, '[{\"added\": {}}]', 9, 1),
(22, '2026-05-26 09:04:30.863735', '22', 'قزوین', 1, '[{\"added\": {}}]', 9, 1),
(23, '2026-05-26 09:04:34.332773', '23', 'قم', 1, '[{\"added\": {}}]', 9, 1),
(24, '2026-05-26 09:04:37.653047', '24', 'البرز', 1, '[{\"added\": {}}]', 9, 1),
(25, '2026-05-26 09:04:40.907591', '25', 'کرمان', 1, '[{\"added\": {}}]', 9, 1),
(26, '2026-05-26 09:04:44.145455', '26', 'کرمانشاه', 1, '[{\"added\": {}}]', 9, 1),
(27, '2026-05-26 09:04:49.440365', '27', 'گلستان', 1, '[{\"added\": {}}]', 9, 1),
(28, '2026-05-26 09:04:53.645306', '28', 'خراسان رضوی', 1, '[{\"added\": {}}]', 9, 1),
(29, '2026-05-26 09:04:56.549466', '29', 'همدان', 1, '[{\"added\": {}}]', 9, 1),
(30, '2026-05-26 09:04:59.682641', '30', 'کهگیلویه و بویر احمد', 1, '[{\"added\": {}}]', 9, 1),
(31, '2026-05-26 09:05:03.297523', '31', 'یزد', 1, '[{\"added\": {}}]', 9, 1),
(32, '2026-05-26 09:05:21.613640', '1', 'اراک (مرکزی)', 1, '[{\"added\": {}}]', 8, 1),
(33, '2026-05-26 09:05:27.628950', '2', 'اردبیل (اردبیل)', 1, '[{\"added\": {}}]', 8, 1),
(34, '2026-05-26 09:05:35.390927', '3', 'ارومیه (آذربایجان غربی)', 1, '[{\"added\": {}}]', 8, 1),
(35, '2026-05-26 09:05:40.689873', '4', 'اصفهان (اصفهان)', 1, '[{\"added\": {}}]', 8, 1),
(36, '2026-05-26 09:05:47.079511', '5', 'اهواز (خوزستان)', 1, '[{\"added\": {}}]', 8, 1),
(37, '2026-05-26 09:05:53.553565', '6', 'ایلام (ایلام)', 1, '[{\"added\": {}}]', 8, 1),
(38, '2026-05-26 09:05:59.871993', '7', 'بجنورد (خراسان شمالی)', 1, '[{\"added\": {}}]', 8, 1),
(39, '2026-05-26 09:06:08.552798', '8', 'بندر عبّاس (هرمزگان)', 1, '[{\"added\": {}}]', 8, 1),
(40, '2026-05-26 09:06:14.697009', '9', 'بوشهر (بوشهر)', 1, '[{\"added\": {}}]', 8, 1),
(41, '2026-05-26 09:06:20.375953', '10', 'بیرجند (خراسان جنوبی)', 1, '[{\"added\": {}}]', 8, 1),
(42, '2026-05-26 09:06:25.926378', '11', 'تبریز (آذربایجان شرقی)', 1, '[{\"added\": {}}]', 8, 1),
(43, '2026-05-26 09:06:31.653229', '12', 'تهران (تهران)', 1, '[{\"added\": {}}]', 8, 1),
(44, '2026-05-26 09:06:37.410759', '13', 'خرّم آباد (لرستان)', 1, '[{\"added\": {}}]', 8, 1),
(45, '2026-05-26 09:06:42.556915', '14', 'رشت (گیلان)', 1, '[{\"added\": {}}]', 8, 1),
(46, '2026-05-26 09:06:47.437506', '15', 'زاهدان (سیستان و بلوچستان)', 1, '[{\"added\": {}}]', 8, 1),
(47, '2026-05-26 09:06:52.808258', '16', 'زنجان (زنجان)', 1, '[{\"added\": {}}]', 8, 1),
(48, '2026-05-26 09:07:00.138099', '17', 'ساری (مازندران)', 1, '[{\"added\": {}}]', 8, 1),
(49, '2026-05-26 09:07:06.523136', '18', 'سمنان (سمنان)', 1, '[{\"added\": {}}]', 8, 1),
(50, '2026-05-26 09:07:12.480939', '19', 'سنندج (کردستان)', 1, '[{\"added\": {}}]', 8, 1),
(51, '2026-05-26 09:07:19.325483', '20', 'شهر کرد (چهار محال و بختیاری)', 1, '[{\"added\": {}}]', 8, 1),
(52, '2026-05-26 09:07:25.222226', '21', 'شیراز (فارس)', 1, '[{\"added\": {}}]', 8, 1),
(53, '2026-05-26 09:07:30.905463', '22', 'قزوین (قزوین)', 1, '[{\"added\": {}}]', 8, 1),
(54, '2026-05-26 09:07:36.677073', '23', 'قم (قم)', 1, '[{\"added\": {}}]', 8, 1),
(55, '2026-05-26 09:07:44.833536', '24', 'کرج (البرز)', 1, '[{\"added\": {}}]', 8, 1),
(56, '2026-05-26 09:07:51.774379', '25', 'کرمان (کرمان)', 1, '[{\"added\": {}}]', 8, 1),
(57, '2026-05-26 09:07:58.619533', '26', 'کرمانشاه (کرمانشاه)', 1, '[{\"added\": {}}]', 8, 1),
(58, '2026-05-26 09:08:08.537499', '27', 'گرگان (گلستان)', 1, '[{\"added\": {}}]', 8, 1),
(59, '2026-05-26 09:08:14.237598', '28', 'مشهد (خراسان رضوی)', 1, '[{\"added\": {}}]', 8, 1),
(60, '2026-05-26 09:08:19.381758', '29', 'همدان (همدان)', 1, '[{\"added\": {}}]', 8, 1),
(61, '2026-05-26 09:08:28.826205', '30', 'یاسوج (کهگیلویه و بویر احمد)', 1, '[{\"added\": {}}]', 8, 1),
(62, '2026-05-26 09:08:33.366225', '31', 'یزد (یزد)', 1, '[{\"added\": {}}]', 8, 1),
(63, '2026-05-27 13:07:07.111441', '1', '📢 عمومی', 1, '[{\"added\": {}}]', 7, 1),
(64, '2026-05-27 13:07:13.490067', '2', '🌐 اینترنت و ارتباطات', 1, '[{\"added\": {}}]', 7, 1),
(65, '2026-05-27 13:07:21.180424', '3', '📅 رویداد پیش‌رو', 1, '[{\"added\": {}}]', 7, 1),
(66, '2026-05-27 13:07:30.225508', '4', '🚗 تصادف و شلوغی', 1, '[{\"added\": {}}]', 7, 1),
(67, '2026-05-27 13:07:38.199278', '5', '🏪 بازار و کسبه', 1, '[{\"added\": {}}]', 7, 1),
(68, '2026-05-27 13:08:04.831235', '1', 'گزارش ناشناس در تبریز - اینترنت و ارتباطات', 1, '[{\"added\": {}}]', 10, 1),
(69, '2026-05-28 04:06:11.554839', '4', 'گزارش اشرف در ارومیه - عمومی', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(70, '2026-05-28 04:06:11.561920', '1', 'گزارش ناشناس در تبریز - اینترنت و ارتباطات', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(71, '2026-05-28 04:06:19.488317', '1', 'گزارش ناشناس در تبریز - اینترنت و ارتباطات', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(72, '2026-05-28 04:10:25.333974', '5', 'گزارش حمدالله در اهر - تصادف و شلوغی', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(73, '2026-05-28 04:17:20.085049', '1', 'گزارش ناشناس در تبریز - اینترنت و ارتباطات', 3, '', 10, 1),
(74, '2026-05-28 04:26:10.710822', '6', 'گزارش نمین در بوشهر - تصادف و شلوغی', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(75, '2026-05-28 04:33:26.842177', '7', 'گزارش علی در آذرشهر - رویداد پیش‌رو', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(76, '2026-05-28 04:37:02.084729', '8', 'گزارش سعید در بستان‌آباد - عمومی', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(77, '2026-05-28 08:59:21.428392', '9', 'گزارش گوربا در اسلامشهر - عمومی', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(78, '2026-05-29 03:34:52.611440', '10', 'گزارش نسرین در گلپایگان - بازار و کسبه', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(79, '2026-05-29 06:29:04.844055', '12', 'گزارش نادر در تبریز - عمومی', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(80, '2026-05-29 06:33:13.841272', '13', 'گزارش مسعود در ارومیه - تصادف و شلوغی', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(81, '2026-05-29 07:37:08.947901', '14', 'گزارش نفس در بوشهر - عمومی', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(82, '2026-05-30 06:52:32.124904', '6', '🏫 آموزش و مدارس', 1, '[{\"added\": {}}]', 7, 1),
(83, '2026-05-30 06:52:44.386961', '7', '🏥 بهداشت و درمان', 1, '[{\"added\": {}}]', 7, 1),
(84, '2026-05-30 06:53:03.778563', '8', '🐕 حیوانات ولگرد', 1, '[{\"added\": {}}]', 7, 1),
(85, '2026-05-30 06:53:14.425065', '9', '🏗️ ساخت و ساز غیرمجاز', 1, '[{\"added\": {}}]', 7, 1),
(86, '2026-05-30 06:53:27.683669', '10', '🚶 معابر و پیاده‌رو', 1, '[{\"added\": {}}]', 7, 1),
(87, '2026-05-30 09:49:45.249138', '15', 'گزارش نفس در بجنورد - آموزش و مدارس', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1),
(88, '2026-05-30 14:13:18.767194', '16', 'گزارش نگار در مشگین‌شهر - معابر و پیاده‌رو', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u06cc\\u06cc\\u062f \\u0634\\u062f\\u0647\\u061f\"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'reports', 'category'),
(8, 'reports', 'city'),
(10, 'reports', 'report'),
(9, 'reports', 'state'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-05-26 09:01:50.717206'),
(2, 'auth', '0001_initial', '2026-05-26 09:01:51.291735'),
(3, 'admin', '0001_initial', '2026-05-26 09:01:51.431183'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-05-26 09:01:51.438541'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-05-26 09:01:51.449342'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-05-26 09:01:51.518960'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-05-26 09:01:51.597622'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-05-26 09:01:51.613749'),
(9, 'auth', '0004_alter_user_username_opts', '2026-05-26 09:01:51.622750'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-05-26 09:01:51.692539'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-05-26 09:01:51.695568'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-05-26 09:01:51.704411'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-05-26 09:01:51.719807'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-05-26 09:01:51.736890'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-05-26 09:01:51.754703'),
(16, 'auth', '0011_update_proxy_permissions', '2026-05-26 09:01:51.766257'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-05-26 09:01:51.781421'),
(18, 'reports', '0001_initial', '2026-05-26 09:01:52.049236'),
(19, 'sessions', '0001_initial', '2026-05-26 09:01:52.088629');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0d5lufsigt7zo8l2vgrq2p6y8rxetkze', '.eJxVjMsOwiAQAP-FsyEsBbr16L3fQFhYpGog6eNk_HdD0oNeZybzFj4ce_HHxqtfkrgKEJdfRiE-uXaRHqHem4yt7utCsifytJucW-LX7Wz_BiVspW-DyjCgNpNDYFRJO0aeDLKiGPQ0jEA224jEACZlRSNpAHDWGXQDis8XxmE24g:1wRngO:Cli80iNWfSfQlP0DNOFe3E1X2U34DyyL0x3jm4GQOkA', '2026-06-09 09:02:40.389169');

-- --------------------------------------------------------

--
-- Table structure for table `reports_category`
--

CREATE TABLE `reports_category` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `icon` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports_category`
--

INSERT INTO `reports_category` (`id`, `title`, `icon`) VALUES
(1, 'عمومی', '📢'),
(2, 'اینترنت و ارتباطات', '🌐'),
(3, 'رویداد پیش‌رو', '📅'),
(4, 'تصادف و شلوغی', '🚗'),
(5, 'بازار و کسبه', '🏪'),
(6, 'آموزش و مدارس', '🏫'),
(7, 'بهداشت و درمان', '🏥'),
(8, 'حیوانات ولگرد', '🐕'),
(9, 'ساخت و ساز غیرمجاز', '🏗️'),
(10, 'معابر و پیاده‌رو', '🚶');

-- --------------------------------------------------------

--
-- Table structure for table `reports_city`
--

CREATE TABLE `reports_city` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports_city`
--

INSERT INTO `reports_city` (`id`, `name`, `state_id`) VALUES
(1, 'اراک', 1),
(2, 'اردبیل', 2),
(3, 'ارومیه', 3),
(4, 'اصفهان', 4),
(5, 'اهواز', 5),
(6, 'ایلام', 6),
(7, 'بجنورد', 7),
(8, 'بندر عبّاس', 8),
(9, 'بوشهر', 9),
(10, 'بیرجند', 10),
(11, 'تبریز', 11),
(12, 'تهران', 12),
(13, 'خرّم آباد', 13),
(14, 'رشت', 14),
(15, 'زاهدان', 15),
(16, 'زنجان', 16),
(17, 'ساری', 17),
(18, 'سمنان', 18),
(19, 'سنندج', 19),
(20, 'شهر کرد', 20),
(21, 'شیراز', 21),
(22, 'قزوین', 22),
(23, 'قم', 23),
(24, 'کرج', 24),
(25, 'کرمان', 25),
(26, 'کرمانشاه', 26),
(27, 'گرگان', 27),
(28, 'مشهد', 28),
(29, 'همدان', 29),
(30, 'یاسوج', 30),
(31, 'یزد', 31),
(32, 'مراغه', 11),
(33, 'مرند', 11),
(34, 'اهر', 11),
(35, 'میانه', 11),
(36, 'خوی', 3),
(37, 'بوکان', 3),
(38, 'مهاباد', 3),
(39, 'میاندوآب', 3),
(40, 'مشگین‌شهر', 2),
(41, 'پارس‌آباد', 2),
(42, 'خلخال', 2),
(43, 'کاشان', 4),
(44, 'خمینی‌شهر', 4),
(45, 'نجف‌آباد', 4),
(46, 'شاهین‌شهر', 4),
(47, 'فردیس', 24),
(48, 'کمال‌شهر', 24),
(49, 'هشتگرد', 24),
(50, 'دهلران', 6),
(51, 'ایوان', 6),
(52, 'مهران', 6),
(53, 'برازجان', 9),
(54, 'بندر کنگان', 9),
(55, 'بندر گناوه', 9),
(56, 'عسلویه', 9),
(57, 'شهریار', 12),
(58, 'اسلامشهر', 12),
(59, 'ملارد', 12),
(60, 'قدس', 12),
(61, 'ری', 12),
(62, 'ورامین', 12),
(63, 'شهرکرد', 32),
(64, 'بروجن', 32),
(65, 'لردگان', 32),
(66, 'فارسان', 32),
(67, 'قائنات', 10),
(68, 'طبس', 10),
(69, 'فردوس', 10),
(70, 'نیشابور', 28),
(71, 'سبزوار', 28),
(72, 'تربت حیدریه', 28),
(73, 'قوچان', 28),
(74, 'شیروان', 7),
(75, 'اسفراین', 7),
(76, 'دزفول', 5),
(77, 'آبادان', 5),
(78, 'خرمشهر', 5),
(79, 'ماهشهر', 5),
(80, 'ایذه', 5),
(81, 'ابهر', 16),
(82, 'خرمدره', 16),
(83, 'خدابنده', 16),
(85, 'شاهرود', 18),
(86, 'دامغان', 18),
(87, 'گرمسار', 18),
(88, 'زابل', 15),
(89, 'ایرانشهر', 15),
(90, 'چابهار', 15),
(91, 'سراوان', 15),
(92, 'مرودشت', 21),
(93, 'جهرم', 21),
(94, 'فسا', 21),
(95, 'کازرون', 21),
(96, 'لارستان', 21),
(97, 'تاکستان', 22),
(98, 'الوند', 22),
(99, 'اقبالیه', 22),
(100, 'قنوات', 23),
(101, 'جعفریه', 23),
(102, 'سقز', 19),
(103, 'مریوان', 19),
(104, 'بانه', 19),
(105, 'قروه', 19),
(106, 'سیرجان', 25),
(107, 'رفسنجان', 25),
(108, 'جیرفت', 25),
(109, 'بم', 25),
(110, 'اسلام‌آباد غرب', 26),
(111, 'کنگاور', 26),
(112, 'جوانرود', 26),
(114, 'دوگنبدان', 33),
(115, 'دهدشت', 33),
(116, 'گنبد کاووس', 27),
(117, 'بندر ترکمن', 27),
(118, 'علی‌آباد کتول', 27),
(119, 'بندر انزلی', 14),
(120, 'لاهیجان', 14),
(121, 'لنگرود', 14),
(122, 'تالش', 14),
(123, 'آستارا', 14),
(124, 'بروجرد', 13),
(125, 'دورود', 13),
(126, 'کوهدشت', 13),
(127, 'الیگودرز', 13),
(128, 'بابل', 17),
(129, 'آمل', 17),
(130, 'قائم‌شهر', 17),
(131, 'بهشهر', 17),
(132, 'تنکابن', 17),
(133, 'رامسر', 17),
(134, 'ساوه', 1),
(135, 'خمین', 1),
(136, 'محلات', 1),
(137, 'میناب', 8),
(138, 'قشم', 8),
(139, 'کیش', 8),
(140, 'بندر لنگه', 8),
(141, 'ملایر', 29),
(142, 'نهاوند', 29),
(143, 'تویسرکان', 29),
(144, 'میبد', 31),
(145, 'اردکان', 31),
(146, 'بافق', 31),
(147, 'کلیبر', 11),
(148, 'آذرشهر', 11),
(149, 'اسکو', 11),
(150, 'بستان‌آباد', 11),
(151, 'جلفا', 11),
(152, 'ورزقان', 11),
(153, 'سراب', 11),
(154, 'سلماس', 3),
(155, 'سردشت', 3),
(156, 'ماکو', 3),
(157, 'سرعین', 2),
(158, 'شهرضا', 4),
(159, 'آران و بیدگل', 4),
(160, 'گلپایگان', 4),
(161, 'آبدانان', 6),
(162, 'بندر دیلم', 9);

-- --------------------------------------------------------

--
-- Table structure for table `reports_report`
--

CREATE TABLE `reports_report` (
  `id` int(11) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports_report`
--

INSERT INTO `reports_report` (`id`, `display_name`, `text`, `is_approved`, `created_at`, `category_id`, `city_id`, `state_id`) VALUES
(12, 'نادر', 'هوا در تبریز به شدت طوفانی است و در لاله بعضی درختان شکسته است', 1, '2026-05-29 08:28:37.000000', 1, 11, 11),
(13, 'مسعود', 'در جاده مارمیشیو یه تصادف شدید رخ داده و جاده بسته است', 1, '2026-05-29 08:32:47.000000', 4, 3, 3),
(14, 'نفس', 'الان چند تا موشک زدن رف هوا بعدش صدا زیاد بود', 1, '2026-05-29 09:36:08.000000', 1, 9, 9),
(15, 'نفس', 'من بچه ام رو بردم مدرسه خاقانی ثبت نام کنم یه جوری رفتار کردن سریع از اونجا اومدم بیرون خیلی جای بدی بود', 1, '2026-05-30 11:49:05.000000', 6, 7, 7),
(16, 'نگار', 'خیابون نجف زاده رو گودبرداری کردن مسیر مسدوده', 1, '2026-05-30 16:13:13.000000', 10, 40, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reports_state`
--

CREATE TABLE `reports_state` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports_state`
--

INSERT INTO `reports_state` (`id`, `name`) VALUES
(1, 'مرکزی'),
(2, 'اردبیل'),
(3, 'آذربایجان غربی'),
(4, 'اصفهان'),
(5, 'خوزستان'),
(6, 'ایلام'),
(7, 'خراسان شمالی'),
(8, 'هرمزگان'),
(9, 'بوشهر'),
(10, 'خراسان جنوبی'),
(11, 'آذربایجان شرقی'),
(12, 'تهران'),
(13, 'لرستان'),
(14, 'گیلان'),
(15, 'سیستان و بلوچستان'),
(16, 'زنجان'),
(17, 'مازندران'),
(18, 'سمنان'),
(19, 'کردستان'),
(20, 'چهار محال و بختیاری'),
(21, 'فارس'),
(22, 'قزوین'),
(23, 'قم'),
(24, 'البرز'),
(25, 'کرمان'),
(26, 'کرمانشاه'),
(27, 'گلستان'),
(28, 'خراسان رضوی'),
(29, 'همدان'),
(30, 'کهگیلویه و بویر احمد'),
(31, 'یزد'),
(32, 'چهارمحال و بختیاری'),
(33, 'کهگیلویه و بویراحمد');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `reports_category`
--
ALTER TABLE `reports_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports_city`
--
ALTER TABLE `reports_city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `reports_city_state_id_0e73456e_fk_reports_state_id` (`state_id`);

--
-- Indexes for table `reports_report`
--
ALTER TABLE `reports_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_report_category_id_7a7857a8_fk_reports_category_id` (`category_id`),
  ADD KEY `reports_report_city_id_4d3d9044_fk_reports_city_id` (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `reports_state`
--
ALTER TABLE `reports_state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `reports_category`
--
ALTER TABLE `reports_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reports_city`
--
ALTER TABLE `reports_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `reports_report`
--
ALTER TABLE `reports_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reports_state`
--
ALTER TABLE `reports_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `reports_city`
--
ALTER TABLE `reports_city`
  ADD CONSTRAINT `reports_city_state_id_0e73456e_fk_reports_state_id` FOREIGN KEY (`state_id`) REFERENCES `reports_state` (`id`);

--
-- Constraints for table `reports_report`
--
ALTER TABLE `reports_report`
  ADD CONSTRAINT `reports_report_category_id_7a7857a8_fk_reports_category_id` FOREIGN KEY (`category_id`) REFERENCES `reports_category` (`id`),
  ADD CONSTRAINT `reports_report_city_id_4d3d9044_fk_reports_city_id` FOREIGN KEY (`city_id`) REFERENCES `reports_city` (`id`),
  ADD CONSTRAINT `reports_report_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `reports_city` (`state_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
