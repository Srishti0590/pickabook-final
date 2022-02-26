-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 10:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_ebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `username`, `email`, `firstname`, `lastname`, `phone`, `profile_pic`, `created_date`, `user_id`) VALUES
(1, 'ebook', '', 'ebook', 'none', '9877654321', 'static/profile/88257384_3017095428309674_432538403964190720_o_0s6odr6.jpg', '2022-01-25 04:39:55.090499', 5),
(2, 'pickabook', '', 'pickabook', 'none', '9866555941', 'static/profile/1637192348-1637192348_goodreads_misc.png', '2022-02-26 17:02:08.874920', 6),
(3, 'janardan', '', 'janardan', 'parajuli', '9866555941', 'static/profile/381031.jpg', '2022-02-26 21:32:35.869342', 7);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admins_notifications`
--

CREATE TABLE `admins_notifications` (
  `id` bigint(20) NOT NULL,
  `notification_title` varchar(200) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `notification_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins_notifications`
--

INSERT INTO `admins_notifications` (`id`, `notification_title`, `created_date`, `notification_description`) VALUES
(4, 'Hi!!', '2022-02-26 21:25:08.643661', 'Hello there!!');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can view permission', 1, 'view_permission'),
(5, 'Can add group', 2, 'add_group'),
(6, 'Can change group', 2, 'change_group'),
(7, 'Can delete group', 2, 'delete_group'),
(8, 'Can view group', 2, 'view_group'),
(9, 'Can add user', 3, 'add_user'),
(10, 'Can change user', 3, 'change_user'),
(11, 'Can delete user', 3, 'delete_user'),
(12, 'Can view user', 3, 'view_user'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add quotes', 6, 'add_quotes'),
(22, 'Can change quotes', 6, 'change_quotes'),
(23, 'Can delete quotes', 6, 'delete_quotes'),
(24, 'Can view quotes', 6, 'view_quotes'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add books', 8, 'add_books'),
(30, 'Can change books', 8, 'change_books'),
(31, 'Can delete books', 8, 'delete_books'),
(32, 'Can view books', 8, 'view_books'),
(33, 'Can add book_detail', 9, 'add_book_detail'),
(34, 'Can change book_detail', 9, 'change_book_detail'),
(35, 'Can delete book_detail', 9, 'delete_book_detail'),
(36, 'Can view book_detail', 9, 'view_book_detail'),
(37, 'Can add profile', 10, 'add_profile'),
(38, 'Can change profile', 10, 'change_profile'),
(39, 'Can delete profile', 10, 'delete_profile'),
(40, 'Can view profile', 10, 'view_profile'),
(41, 'Can add news', 11, 'add_news'),
(42, 'Can change news', 11, 'change_news'),
(43, 'Can delete news', 11, 'delete_news'),
(44, 'Can view news', 11, 'view_news'),
(45, 'Can add writings', 12, 'add_writings'),
(46, 'Can change writings', 12, 'change_writings'),
(47, 'Can delete writings', 12, 'delete_writings'),
(48, 'Can view writings', 12, 'view_writings'),
(49, 'Can add notifications', 13, 'add_notifications'),
(50, 'Can change notifications', 13, 'change_notifications'),
(51, 'Can delete notifications', 13, 'delete_notifications'),
(52, 'Can view notifications', 13, 'view_notifications'),
(53, 'Can add site', 14, 'add_site'),
(54, 'Can change site', 14, 'change_site'),
(55, 'Can delete site', 14, 'delete_site'),
(56, 'Can view site', 14, 'view_site'),
(57, 'Can add email address', 15, 'add_emailaddress'),
(58, 'Can change email address', 15, 'change_emailaddress'),
(59, 'Can delete email address', 15, 'delete_emailaddress'),
(60, 'Can view email address', 15, 'view_emailaddress'),
(61, 'Can add email confirmation', 16, 'add_emailconfirmation'),
(62, 'Can change email confirmation', 16, 'change_emailconfirmation'),
(63, 'Can delete email confirmation', 16, 'delete_emailconfirmation'),
(64, 'Can view email confirmation', 16, 'view_emailconfirmation'),
(65, 'Can add social account', 17, 'add_socialaccount'),
(66, 'Can change social account', 17, 'change_socialaccount'),
(67, 'Can delete social account', 17, 'delete_socialaccount'),
(68, 'Can view social account', 17, 'view_socialaccount'),
(69, 'Can add social application', 18, 'add_socialapp'),
(70, 'Can change social application', 18, 'change_socialapp'),
(71, 'Can delete social application', 18, 'delete_socialapp'),
(72, 'Can view social application', 18, 'view_socialapp'),
(73, 'Can add social application token', 19, 'add_socialtoken'),
(74, 'Can change social application token', 19, 'change_socialtoken'),
(75, 'Can delete social application token', 19, 'delete_socialtoken'),
(76, 'Can view social application token', 19, 'view_socialtoken'),
(77, 'Can add contactus', 20, 'add_contactus'),
(78, 'Can change contactus', 20, 'change_contactus'),
(79, 'Can delete contactus', 20, 'delete_contactus'),
(80, 'Can view contactus', 20, 'view_contactus');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$320000$CKcJzKEtwaoenpygQj7pWz$cFDZpL6shypA+K+QE7e/yR8rDgwjtTa8HNHaMvyEy+8=', '2022-02-26 21:29:44.303367', 1, 'gaurav', '', '', 'srishtiparajuli2056@gmail.com', 1, 1, '2022-01-17 16:10:46.776575'),
(3, 'pbkdf2_sha256$320000$s5TAEn0RLBHKF0luaYGqgw$320+BIc1mDYxlzJ+YgNvJD7u/AY7FNuOJ/Nf1XuRqz4=', '2022-01-25 04:34:16.081816', 0, 'srijana', '', '', 'srishtiparajuli2056@gmail.com', 0, 1, '2022-01-19 15:16:43.636995'),
(5, 'pbkdf2_sha256$320000$MZkhKsOCCdvgnPNDcIZzWR$a2BYUt4mKtfX39OxUoHPK/mlXAjFciW3HiNvRSzs3Bk=', '2022-02-26 18:52:58.199809', 0, 'ebook', '', '', 'ebook@gmail.com', 0, 1, '2022-01-25 04:39:54.953658'),
(6, 'pbkdf2_sha256$320000$H4qnFbQbCfxpnDEVUUPlbv$O/B5jnlOG134ntLzOsypzV7iqXboTn1HRvIJgFInzeY=', '2022-02-26 21:27:00.694451', 0, 'pickabook', '', '', 'srishti.bradford@gmail.com', 0, 1, '2022-02-26 17:02:08.422290'),
(7, 'pbkdf2_sha256$320000$AaXsapAJ5UCeOpJXjG9byk$w+lcc7NwPG1aINB4Qskd47gm8KwicrhcZeTIEElj0r0=', '2022-02-26 21:32:45.593264', 0, 'janardan', '', '', 'jparajuli@gmail.com', 0, 1, '2022-02-26 21:32:35.481843');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(15, 'account', 'emailaddress'),
(16, 'account', 'emailconfirmation'),
(10, 'accounts', 'profile'),
(13, 'admins', 'notifications'),
(2, 'auth', 'group'),
(1, 'auth', 'permission'),
(3, 'auth', 'user'),
(4, 'contenttypes', 'contenttype'),
(20, 'frontend', 'contactus'),
(12, 'frontend', 'writings'),
(8, 'pickabook', 'books'),
(9, 'pickabook', 'book_detail'),
(7, 'pickabook', 'category'),
(11, 'pickabook', 'news'),
(6, 'pickabook', 'quotes'),
(5, 'sessions', 'session'),
(14, 'sites', 'site'),
(17, 'socialaccount', 'socialaccount'),
(18, 'socialaccount', 'socialapp'),
(19, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-03 17:36:10.400052'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-01-03 17:36:10.496338'),
(3, 'auth', '0001_initial', '2022-01-03 17:36:11.516301'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-01-03 17:36:11.742037'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-01-03 17:36:11.781867'),
(6, 'auth', '0004_alter_user_username_opts', '2022-01-03 17:36:11.790882'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-01-03 17:36:11.868760'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-01-03 17:36:11.873744'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-01-03 17:36:11.880718'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-01-03 17:36:11.915334'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-01-03 17:36:11.942545'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-01-03 17:36:11.966493'),
(13, 'auth', '0011_update_proxy_permissions', '2022-01-03 17:36:11.974874'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-01-03 17:36:11.998805'),
(15, 'pickabook', '0001_initial', '2022-01-03 17:36:12.046906'),
(16, 'sessions', '0001_initial', '2022-01-03 17:36:12.113069'),
(17, 'pickabook', '0002_category', '2022-01-03 17:36:40.400225'),
(18, 'pickabook', '0003_books', '2022-01-10 05:40:55.546135'),
(19, 'pickabook', '0004_remove_quotes_quote_title_quotes_quote_author_and_more', '2022-01-10 15:20:01.246702'),
(20, 'pickabook', '0005_quotes_created_date', '2022-01-10 16:56:54.683167'),
(21, 'accounts', '0001_initial', '2022-01-22 16:56:28.167191'),
(22, 'pickabook', '0006_book_detail', '2022-01-22 16:56:28.269104'),
(23, 'pickabook', '0007_news', '2022-01-24 17:17:59.797265'),
(24, 'frontend', '0001_initial', '2022-01-31 17:30:52.916986'),
(25, 'frontend', '0002_rename_quote_author_writings_name', '2022-01-31 17:44:41.950757'),
(26, 'frontend', '0003_alter_writings_image', '2022-01-31 17:46:11.185046'),
(27, 'frontend', '0004_alter_writings_image', '2022-01-31 17:47:49.278314'),
(28, 'admins', '0001_initial', '2022-02-03 04:22:20.845925'),
(29, 'admins', '0002_rename_notifications_notifications_notification_title_and_more', '2022-02-03 16:48:19.581972'),
(30, 'pickabook', '0008_quotes_author', '2022-02-14 06:57:36.193382'),
(31, 'pickabook', '0009_books_book_author', '2022-02-14 07:06:51.932454'),
(32, 'account', '0001_initial', '2022-02-26 14:05:42.638281'),
(33, 'account', '0002_email_max_length', '2022-02-26 14:05:42.670733'),
(34, 'sites', '0001_initial', '2022-02-26 14:05:42.731106'),
(35, 'sites', '0002_alter_domain_unique', '2022-02-26 14:05:42.786930'),
(36, 'socialaccount', '0001_initial', '2022-02-26 14:05:43.682341'),
(37, 'socialaccount', '0002_token_max_lengths', '2022-02-26 14:05:43.796525'),
(38, 'socialaccount', '0003_extra_data_default_dict', '2022-02-26 14:05:43.820238'),
(39, 'frontend', '0005_contactus', '2022-02-26 19:09:09.471336');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('26tqlq7asp02gvvpkovw06v04iorw1vn', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1n9iz1:PkVeInfMzrfw9y_Nk-zPj73bcEhyDiTCSzzSbrVqGko', '2022-02-01 07:32:47.761162'),
('7u9mx17jm43nq1m6u8nvvipgul1r2cyz', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1nC3bq:tkf7xls3SPUieixTXHpOB1o_0kbEwye7LwnVP7DoXmc', '2022-02-07 17:58:30.678808'),
('9okvf08mcm9ihgjcn40ni1sat4chrb56', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1n9j0X:VjyqN1m2oNZsMSdkXNLn0JpfdZLtXoQvQCwA4EqtEw4', '2022-02-01 07:34:21.933666'),
('d4iua1eetjmj4kxou6wjg4xlpc0g9v7y', '.eJxVjEEOwiAQRe_C2pACpQwu3XsGwsyAVA0kpV0Z765NutDtf-_9lwhxW0vYelrCzOIsrDj9bhjpkeoO-B7rrUlqdV1mlLsiD9rltXF6Xg7376DEXr51BmVjRh2dIhogg584OedBaT9pxGH0BI4VgEbDIxlU4EGzRTBGKyveH-BMNyw:1nNYnb:e-iCXACF3Q71oQ3aGVqJ9BwLdERGOgJe35rMuZBZVt8', '2022-03-11 11:30:11.467830'),
('d6y0rxb5qwo20j9dpkxnknpqtnzh9yil', '.eJxVjEEOwiAQRe_C2pACpQwu3XsGwsyAVA0kpV0Z765NutDtf-_9lwhxW0vYelrCzOIsrDj9bhjpkeoO-B7rrUlqdV1mlLsiD9rltXF6Xg7376DEXr51BmVjRh2dIhogg584OedBaT9pxGH0BI4VgEbDIxlU4EGzRTBGKyveH-BMNyw:1nJVdj:pmkeLeGFGiv48w1URRJJHmjAcRw4hy_riPZOXFPG7I0', '2022-02-28 07:19:15.195573'),
('de7x59hou2vg0iabcp79o8xhal6216hh', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1n9hP0:oROYOCgbjo8xfAFuDMn-yY-f2TgV840Bmaupzq8sto4', '2022-02-01 05:51:30.881159'),
('eeqi73fmurftvxp8tu4i4ifqakxjtxem', '.eJxVjEEOwiAQRe_C2pACpQwu3XsGwsyAVA0kpV0Z765NutDtf-_9lwhxW0vYelrCzOIsrDj9bhjpkeoO-B7rrUlqdV1mlLsiD9rltXF6Xg7376DEXr51BmVjRh2dIhogg584OedBaT9pxGH0BI4VgEbDIxlU4EGzRTBGKyveH-BMNyw:1nICfs:FsZ3JWKG-eEs99KjFwBLqVN1Mrhzd_ABWxMKq4xogMs', '2022-02-24 16:52:04.298395'),
('fcgtxou7bliqeit62tojtnsic3cio4tr', '.eJxVjEEOwiAQRe_C2pACpQwu3XsGwsyAVA0kpV0Z765NutDtf-_9lwhxW0vYelrCzOIsrDj9bhjpkeoO-B7rrUlqdV1mlLsiD9rltXF6Xg7376DEXr51BmVjRh2dIhogg584OedBaT9pxGH0BI4VgEbDIxlU4EGzRTBGKyveH-BMNyw:1nEZ4A:D_uDtAjDrpT_tblkZUdQruzWLkGcmJ9I7ofdSu3ElaY', '2022-02-14 15:58:06.395900'),
('idcnobapgipw00vjcq110wekvzga7b2x', '.eJxVjMsOwiAQRf-FtSHlMTC4dO83EB6DVA0kpV0Z_12bdKHbe865L-bDtla_DVr8nNmZKXb63WJID2o7yPfQbp2n3tZljnxX-EEHv_ZMz8vh_h3UMOq3ltY4FJSTLpJs0qCkc2QjymKKhZjjhNFgFiDITaQ0gLZYLBoDGkGz9wfUsDbq:1nADEK:4BXWvDttSBN37I7teFxVhmCxXiVh_4xTN_rQbIRbo64', '2022-02-02 15:50:36.468582'),
('jrznhus9yyfwl2bojdxpuqou8k2kotrw', '.eJxVjEEOwiAQRe_C2pACpQwu3XsGwsyAVA0kpV0Z765NutDtf-_9lwhxW0vYelrCzOIsrDj9bhjpkeoO-B7rrUlqdV1mlLsiD9rltXF6Xg7376DEXr51BmVjRh2dIhogg584OedBaT9pxGH0BI4VgEbDIxlU4EGzRTBGKyveH-BMNyw:1nFffI:1QNsH3jSftDeS_oOSArEKQfo7s-7jkZOlgfPhnuCHKA', '2022-02-17 17:13:00.293906'),
('ls7mqwzmwsw2izuhkzfgj7fbp50cvbxz', '.eJxVjDsOwjAQBe_iGln-bhxKes5grddrHECOFCcV4u4QKQW0b2beS0Tc1hq3zkucsjgLI06_W0J6cNtBvmO7zZLmti5TkrsiD9rldc78vBzu30HFXr81Km-M1kwFmGxQWIbRFqdZARbrwCofcsKkvQEoxEWNQD44zIrcYJ14fwDhZjfD:1nNcDC:u867W73VKi0joLX8rSrfp11e7m2dZOAwO_pz3Sj57Z4', '2022-03-11 15:08:50.194904'),
('mg631fotawulhe6da6fls8nmvm0qaq7h', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1n9fum:baoy5nK3CjZqHWcRVqaPiRLOSkyfz47vVMWIVx82QUs', '2022-02-01 04:16:12.344425'),
('mk5zhuq1nk74hchgg8u0i23d7hy8g4jk', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1n9j2j:1_eiJdp-t5WFaLPCyJGnRaD2A-FbNE5Wv6MgCqXVtvM', '2022-02-01 07:36:37.049286'),
('p8b44z688d5r9axu3e0o8kz238jyc21l', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1nNWtV:LXoJbwgl0Ldgn0xdVulVI0I0nR3WMADVbsO93gZGQzo', '2022-03-11 09:28:09.983229'),
('qolyr0njxmgefdx0q1030vn24zgq2wn6', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1n9gRt:qYTNLIhrzXxBxeONc68nd1ccUUjzyRVZuWX1wzN5ku4', '2022-02-01 04:50:25.516165'),
('raufi95c7cuzu6x1n3u2txsvjojzv8vz', '.eJxVjMsOwiAQRf-FtSHlMTC4dO83EB6DVA0kpV0Z_12bdKHbe865L-bDtla_DVr8nNmZKXb63WJID2o7yPfQbp2n3tZljnxX-EEHv_ZMz8vh_h3UMOq3ltY4FJSTLpJs0qCkc2QjymKKhZjjhNFgFiDITaQ0gLZYLBoDGkGz9wfUsDbq:1nBzRG:nlhJCmo8mrDIf4xj8uYgvSi2WkaQFc43agNWzRK_Fag', '2022-02-07 13:31:18.731538'),
('s4lybqp7jh2lpku4waaspjo0zozrwk6t', '.eJxVjEEOwiAQRe_C2pACpQwu3XsGwsyAVA0kpV0Z765NutDtf-_9lwhxW0vYelrCzOIsrDj9bhjpkeoO-B7rrUlqdV1mlLsiD9rltXF6Xg7376DEXr51BmVjRh2dIhogg584OedBaT9pxGH0BI4VgEbDIxlU4EGzRTBGKyveH-BMNyw:1nNxph:G-WqJ0C0EFMm0K-rfgOwFcd7xx5yKuOK6jDYb7PuGoc', '2022-03-12 14:14:01.101390'),
('slw6me5dczsr6ivj95f9ogn096d6leup', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1nEPD2:cu_H0UaqriA-9gifwCQHibviFHMErHtuql2M1Mhgae8', '2022-02-14 05:26:36.579180'),
('sv9b9emg4us8970m86i54mjhr9b6czn2', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1n9in2:PnUjG_g42nPPoRTtXLJO-vj1JtOFiKiDOu7sfBbtjhU', '2022-02-01 07:20:24.738179'),
('tgrw0h454fw1hf80f9barw1ikvtw3w0n', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1nCEPv:q4ijtphpXlnNCi52kDq7rx8UIlCBc9tahktslWKhKbk', '2022-02-08 05:30:55.476308'),
('vdxvu2zh2lhutf4amym87oi42p0eabmo', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1nCMUZ:6YRuYkwwSuOwwL2aQZGeqAKihC3O8hvGdB0MGKq75R8', '2022-02-08 14:08:15.508031'),
('wvbbghf3dap3xxgnuoquuuf35if6w9zd', '.eJxVjEEOwiAQRe_C2hAYUgZcuvcMZDoDUjVtUtpV491tky50-997f1OJ1qWmteU5DaKuCtTld-uJX3k8gDxpfEyap3GZh14fij5p0_dJ8vt2un8HlVrda3QSIXcYGUIkQDYAiN6XwOxd4Q6DFTAukEULHo0VW7zsXiByXNTnC7wbNx0:1n9nDO:DKDz3EfQ0dCYu_n7MaKg5WDzUiaeCpDAF2cSY5Rz6FI', '2022-02-01 12:03:54.742924');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_contactus`
--

CREATE TABLE `frontend_contactus` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `messages` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frontend_contactus`
--

INSERT INTO `frontend_contactus` (`id`, `username`, `phone`, `email`, `topic`, `messages`) VALUES
(1, 'xcv', '9865432', 'pickabook@gmail.com', 'hgfsdf', 'sdfg'),
(2, 'xcv', '9865432', 'pickabook@gmail.com', 'hgfsdf', 'sdfg');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_writings`
--

CREATE TABLE `frontend_writings` (
  `id` bigint(20) NOT NULL,
  `topic` varchar(500) DEFAULT NULL,
  `story` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pickabook_books`
--

CREATE TABLE `pickabook_books` (
  `id` bigint(20) NOT NULL,
  `book_title` varchar(500) DEFAULT NULL,
  `book_image` varchar(100) DEFAULT NULL,
  `book_pdf` varchar(100) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `book_author` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pickabook_books`
--

INSERT INTO `pickabook_books` (`id`, `book_title`, `book_image`, `book_pdf`, `created_date`, `category_id`, `book_author`) VALUES
(8, 'Rich Dad Poor Dad', 'static/uploads/9781612680170.jpg', 'static/uploads/Rich_Dad_Poor_Dad__PDFDrive_.pdf', '2022-02-26 16:09:44.210605', 14, 'Robert T. Kiosaki'),
(9, 'Think and Grow Rich', 'static/uploads/9781585428960.jpg', 'static/uploads/Think_And_Grow_Rich__PDFDrive_.pdf', '2022-02-26 16:11:41.365552', 14, 'Nepolean Hill'),
(11, 'How to win friends and Influence People', 'static/uploads/how-to-win-friends-and-influence-people-dc_BCJK2jd.jpg', 'static/uploads/How_To_Win_Friends.pdf', '2022-02-26 16:14:36.773630', 14, 'Dale Carneige'),
(12, 'Little Women', 'static/uploads/381031.jpg', 'static/uploads/Little_Women_bgA8igz_lWd6Kxn.pdf', '2022-02-26 16:23:25.497267', 10, 'May Alcott'),
(13, 'Ric dad Poor Dad', 'static/uploads/9781612680170_229OPd5.jpg', 'static/uploads/Rich_Dad_Poor_Dad__PDFDrive__ckaVXkp.pdf', '2022-02-26 18:50:54.101235', 14, 'Robert T. Kiosaki');

-- --------------------------------------------------------

--
-- Table structure for table `pickabook_book_detail`
--

CREATE TABLE `pickabook_book_detail` (
  `id` bigint(20) NOT NULL,
  `book_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pickabook_category`
--

CREATE TABLE `pickabook_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `category_description` longtext NOT NULL,
  `created_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pickabook_category`
--

INSERT INTO `pickabook_category` (`id`, `category_name`, `category_description`, `created_date`) VALUES
(10, 'Romance', 'The romance genre is a popular category of books that consistently churns out bestsellers. The aim of the genre is simple, showcasing a love story where two people overcome adversity to obtain their happily ever after.', '2022-02-26 16:01:56.198658'),
(11, 'Sci-Fi', 'Science fiction (abbreviated SF or sci-fi with varying punctuation and capitalization) is a broad genre of fiction that often involves speculations based on current or future science or technology.', '2022-02-26 16:02:32.134725'),
(12, 'Comedy', 'Comedy. In a modern sense, comedy (from the Greek: κωμῳδία, kōmōidía) refers to any discourse or work generally intended to be humorous or to amuse by inducing laughter, especially in theatre, television, film and stand-up comedy.', '2022-02-26 16:04:26.832409'),
(14, 'Motivational/ biographies', 'No description available.', '2022-02-26 16:05:37.257708'),
(15, 'Drama/fantacy', 'No description Available.', '2022-02-26 16:25:51.542202');

-- --------------------------------------------------------

--
-- Table structure for table `pickabook_news`
--

CREATE TABLE `pickabook_news` (
  `id` bigint(20) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `created_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pickabook_news`
--

INSERT INTO `pickabook_news` (`id`, `title`, `image`, `video`, `description`, `created_date`) VALUES
(3, 'Tips to Read More Books in 2022 with the Goodreads Reading Challenge!', 'static/uploads/1637192348-1637192348_goodreads_misc.png', 'static/uploads/Snapchat-1492310779_JDngfmc.mp4', 'Congrats! You\'ve already accomplished the first (and very important) part of the 2022 Goodreads Reading Challenge—signing up! Just by joining, you\'ve committed to taking time out of the constant hustle and bustle of everyday life to read more, whether it\'s relaxing with a cozy mystery, indulging in a romance novel, or learning something new via nonfiction. Give yourself 5 stars!\r\n\r\n(And if you haven’t signed up, what are you waiting for? You can set your goal below.)\r\n\r\nSTART YOUR 2022 READING CHALLENGE\r\n\r\nWant tips on how to reach this year\'s goal? Fellow Goodreaders who have successfully participated in the Goodreads Reading Challenge share their best advice:\r\n\r\n \r\nPro Tips for Reaching Your Goal:\r\n \r\nPlan Accordingly\r\n \r\nPush yourself, but be realistic. Avoid the dreaded reading slump by committing to an achievable goal. (Psst…you can always increase or decrease your goal throughout the year. This is meant to be a fun way to motivate yourself, after all, so no pressure from us if you need to adjust.)\r\n\r\nTrying to figure out a goal? Use the calendar as a guideline: 12 books (one per month), 24 books (two per month), or even 52 books (one per week).\r\n\r\nGet scientific: Check out this expert advice on how to develop a reading habit.\r\n\r\n\r\n\r\n\r\n\r\n \r\n                        \r\n\r\n\r\nBoost Your Progress\r\n  \r\nRereading counts! So by all means, go ahead and dive into those old favorites.\r\n \r\nListen to audiobooks. This is a great way to read more and multitask. And check out these great listens to get resolution ready! \r\n \r\nUse your Want to Read shelf to help keep track of what you\'d like to read next.\r\n \r\nPut books on hold at your local library so it\'s easier to start your next book.\r\n \r\nIf you’re an Amazon Prime member, there are multiple ways you can read free books as part of your membership! You can read for free with Prime Reading (available in the U.S., Canada, Brazil, the U.K., Germany, Spain, France, Italy, India, Japan, China, and Australia). Or check out First Reads to get one free, pre-release Kindle book a month (available in the U.S., U.K., and Australia).\r\n\r\n                             \r\n \r\n\r\nFind More Books You\'ll Love\r\n \r\nExplore our News and Interviews section for great book lists, interviews with favorite authors, and much more.\r\n\r\nCheck out the winners and nominees from the 2021 Goodreads Choice Awards for hundreds of new books Goodreads members love.\r\n\r\nBrowse through Goodreads, including our user-generated reading lists, the most popular new books of the month, and the most popular book club picks right now.\r\n\r\nGet started with a seasonal read with these snowed in-themed mysteries and thrillers. (And for our friends in the southern hemisphere, there are some great year-round reads on these lists of Goodreads staffers\' top three books of the year, readers\' 60 most popular books from the past five years, and the most read books of the 2021 Goodreads Reading Challenge.)\r\n\r\nDiscover new books in favorite genres, including speculative fiction, mystery, and young adult.\r\n\r\nWishing you all a wonderful year of good reading! Tell us in the comments how many books you aspire to read this year!\r\n\r\nCheck out more recent articles, including:\r\nHot and Fresh: 60 Highly Anticipated Debut Novels\r\nThe Most Anticipated Books of 2022\r\nReaders\' Most Anticipated Books of January', '2022-01-24 18:02:01.420906'),
(4, 'The Year\'s 36 Most Anticipated Romances', 'static/uploads/1639697582-1639697582_goodreads_misc.png', 'static/uploads/Snapchat-1492310779_MA75DJI.mp4', 'People fall in love with people all the time. That’s no secret, and it’s one of the unmitigated upsides of life on this planet. People fall in love with books, too. And some people fall in love with books about people falling in love. Everybody wins!\r\n \r\nBelow we have collected 36 of the most anticipated romance novels of the new year, as determined by the titles Goodreads members are tagging in their Want to Read lists. Each of these books is scheduled to be published sometime in 2022, so now’s the time to take notes on your calendar app.\r\n \r\nIn keeping with our theme of books and love, several of this year’s new titles play around with the idea of books, readers, and the notional spaces in between.\r\n \r\nEmily Henry (Beach Read) takes a straightforward approach with the title of her latest story: Book Lovers. Jasmine Guillory (The Wedding Date) delivers a new take on romance in the publishing business with By the Book. And things get decidedly meta in The Roughest Draft, in which real-life romance authors Emily Wibberley and Austin Siegemund-Broka write about a pair of fictional romance authors.\r\n \r\nSome other themes are developing, too. It seems that witches will be having a good time in 2022. Keep an eye out for new books from Elizabeth Bass (A Letter to Three Witches), April Asher (Not the Witch You Wed), and India Holton (The League of Gentlewomen Witches.)\r\n \r\nAlso on the schedule for the new year: Alexis Hall follows up his 2020 hit Boyfriend Material with the next logical title: Husband Material. #BookTok favorite Colleen Hoover returns with Reminders of Him. And Ashley Herring Blake delivers a new queer rom-com: Delilah Green Doesn\'t Care.\r\n\r\nScroll over the book covers to learn more about each title, and add the ones that pique your interest to your Want to Read shelf!', '2022-01-24 18:00:29.322946'),
(5, 'Get Creeped Out with These 33 New and Upcoming Horror Novels', 'static/uploads/1642625652-1642625652_goodreads_misc.png', 'static/uploads/Snapchat-1492310779_xFOkSxZ.mp4', 'For dedicated horror fans, every season is Halloween season. October is a fine month; it just doesn’t come around often enough.\n \nroughly 1 million niche genres. But the lines can get blurry, and horror tends to creep its way into adjacent genres. Sci-fi horror, for instance, is a vibe unto itself in books, films, and video games. Weird fiction is its own numinous awesomeness.\n \nDiversity is most definitely part of the fun with horror fiction, which brings us to our current roundup here, featuring new and upcoming titles from all corners of the vast horror genre map. Each of the books listed here is on shelves now or will be soon—you can check the release date in the individual listings.\n \nFamiliar faces include genre godfather Stephen King (Gwendy’s Final Task coauthored with Richard Chizmar) and perennial contender Grady Hendrix (How to Sell a Haunted House). Fans of old-school paranormal horror will want to scan Devil House by John Darnielle, also known for his work with (or sometimes as) North Carolina indie band the Mountain Goats. On the thriller-suspense tip, try Simone St. James’ The Book of Cold Cases.\n \nIf you’re looking for something more specific, you may want to check out the postapocalyptic transgender horror of Gretchen Felker-Martin’s Manhunt. Or maybe the Mexican haunted house–historical fiction hybrid of The Hacienda from Isabel Cañas. In the pretty-much-a-sure-bet category, veteran author Alma Katsu (The Hunger) is back with The Fervor, her tale of contagion and spider demons in World War II Japanese internment camps.\n \nIt really is quite a spread, for connoisseurs and newcomers alike. So dig in, have fun, and remember: As long as the covers are tucked in, the monsters can’t get you. Union bylaws, you see.\n\nScroll over the book covers to learn more about each title, and add the ones that pique your interest to your Want to Read shelf!', '2022-01-24 17:47:23.916935');

-- --------------------------------------------------------

--
-- Table structure for table `pickabook_quotes`
--

CREATE TABLE `pickabook_quotes` (
  `id` bigint(20) NOT NULL,
  `quote_author` varchar(500) DEFAULT NULL,
  `quote_description` longtext DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pickabook_quotes`
--

INSERT INTO `pickabook_quotes` (`id`, `quote_author`, `quote_description`, `created_date`, `author`) VALUES
(10, '― William W. Purkey', '“I\'m selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can\'t handle me at my worst, then you sure as hell don\'t deserve me at my best.”', '2022-02-25 10:30:07.231307', 'static/uploads/racing-motorcycle_1f3cd-fe0f.png'),
(11, '― William W. Purkey', '“You\'ve gotta dance like there\'s nobody watching, Love like you\'ll never be hurt, Sing like there\'s nobody listening, And live like it\'s heaven on earth.”.', '2022-02-26 16:32:22.030350', 'static/uploads/a1_SXb0iKi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` bigint(20) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `admins_notifications`
--
ALTER TABLE `admins_notifications`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `frontend_contactus`
--
ALTER TABLE `frontend_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_writings`
--
ALTER TABLE `frontend_writings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickabook_books`
--
ALTER TABLE `pickabook_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pickabook_books_category_id_db5997d4_fk_pickabook_category_id` (`category_id`);

--
-- Indexes for table `pickabook_book_detail`
--
ALTER TABLE `pickabook_book_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pickabook_book_detail_book_id_12d94925_fk_pickabook_books_id` (`book_id`);

--
-- Indexes for table `pickabook_category`
--
ALTER TABLE `pickabook_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickabook_news`
--
ALTER TABLE `pickabook_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickabook_quotes`
--
ALTER TABLE `pickabook_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins_notifications`
--
ALTER TABLE `admins_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `frontend_contactus`
--
ALTER TABLE `frontend_contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `frontend_writings`
--
ALTER TABLE `frontend_writings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickabook_books`
--
ALTER TABLE `pickabook_books`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pickabook_book_detail`
--
ALTER TABLE `pickabook_book_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickabook_category`
--
ALTER TABLE `pickabook_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pickabook_news`
--
ALTER TABLE `pickabook_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pickabook_quotes`
--
ALTER TABLE `pickabook_quotes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

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
-- Constraints for table `pickabook_books`
--
ALTER TABLE `pickabook_books`
  ADD CONSTRAINT `pickabook_books_category_id_db5997d4_fk_pickabook_category_id` FOREIGN KEY (`category_id`) REFERENCES `pickabook_category` (`id`);

--
-- Constraints for table `pickabook_book_detail`
--
ALTER TABLE `pickabook_book_detail`
  ADD CONSTRAINT `pickabook_book_detail_book_id_12d94925_fk_pickabook_books_id` FOREIGN KEY (`book_id`) REFERENCES `pickabook_books` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
