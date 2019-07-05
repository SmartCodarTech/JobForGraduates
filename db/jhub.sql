-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2019 at 01:52 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcategory`
--

CREATE TABLE `addcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addcategory`
--

INSERT INTO `addcategory` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Information Science', '2019-07-03 12:59:43', '2019-07-03 12:59:43'),
(2, 'General Science', '2019-07-03 13:00:02', '2019-07-03 13:00:02'),
(3, 'Financial Business', '2019-07-03 13:00:26', '2019-07-03 13:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `add_country`
--

CREATE TABLE `add_country` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_country`
--

INSERT INTO `add_country` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Afghanistan', NULL, NULL),
(3, 'Albania ', NULL, NULL),
(4, 'Algeria', NULL, NULL),
(5, 'Angola', NULL, NULL),
(6, 'Armenia ', NULL, NULL),
(7, 'Australia ', NULL, NULL),
(8, 'Azerbaijan ', NULL, NULL),
(9, 'Bahrain', NULL, NULL),
(10, 'Bangladesh', NULL, NULL),
(11, 'Belarus', NULL, NULL),
(12, 'Benin', NULL, NULL),
(13, 'Bhutan', NULL, NULL),
(14, 'Bosnia and Herzegovina ', NULL, NULL),
(15, 'Botswana', NULL, NULL),
(16, 'Bulgaria', NULL, NULL),
(17, 'Burkina Faso', NULL, NULL),
(18, 'Burundi', NULL, NULL),
(19, 'Cameroon', NULL, NULL),
(20, 'Canada ', NULL, NULL),
(21, 'Cape Verde', NULL, NULL),
(22, 'Central African Republic', NULL, NULL),
(23, 'Chad', NULL, NULL),
(24, 'Channel Islands ', NULL, NULL),
(25, 'China', NULL, NULL),
(26, 'China, Hong Kong Special Administrative Region', NULL, NULL),
(27, 'China, Macao Special Administrative Region', NULL, NULL),
(28, 'Comoros', NULL, NULL),
(29, 'Congo', NULL, NULL),
(30, 'C?te d\'Ivoire', NULL, NULL),
(31, 'Croatia ', NULL, NULL),
(32, 'Cyprus', NULL, NULL),
(33, 'Czech Republic', NULL, NULL),
(34, 'Democratic People\'s Republic of Korea', NULL, NULL),
(35, 'Democratic Republic of the Congo', NULL, NULL),
(36, 'Denmark ', NULL, NULL),
(37, 'Djibouti', NULL, NULL),
(38, 'Egypt', NULL, NULL),
(39, 'Equatorial Guinea', NULL, NULL),
(40, 'Eritrea', NULL, NULL),
(41, 'Estonia ', NULL, NULL),
(42, 'Ethiopia', NULL, NULL),
(43, 'Finland ', NULL, NULL),
(44, 'France', NULL, NULL),
(45, 'Gabon', NULL, NULL),
(46, 'Gambia', NULL, NULL),
(47, 'Georgia ', NULL, NULL),
(48, 'Germany', NULL, NULL),
(49, 'Ghana', NULL, NULL),
(50, 'Greece ', NULL, NULL),
(51, 'Guinea', NULL, NULL),
(52, 'Guinea-Bissau', NULL, NULL),
(53, 'Hungary', NULL, NULL),
(54, 'Iceland ', NULL, NULL),
(55, 'India', NULL, NULL),
(56, 'Indonesia', NULL, NULL),
(57, 'Iran (Islamic Republic of)', NULL, NULL),
(58, 'Iraq', NULL, NULL),
(59, 'Ireland ', NULL, NULL),
(60, 'Israel', NULL, NULL),
(61, 'Italy ', NULL, NULL),
(62, 'Japan ', NULL, NULL),
(63, 'Jordan', NULL, NULL),
(64, 'Kazakhstan ', NULL, NULL),
(65, 'Kenya', NULL, NULL),
(66, 'Kuwait', NULL, NULL),
(67, 'Kyrgyzstan ', NULL, NULL),
(68, 'Lao People\'s Democratic Republic', NULL, NULL),
(69, 'Latvia ', NULL, NULL),
(70, 'Lebanon', NULL, NULL),
(71, 'Lesotho', NULL, NULL),
(72, 'Liberia', NULL, NULL),
(73, 'Libyan Arab Jamahiriya', NULL, NULL),
(74, 'Lithuania ', NULL, NULL),
(75, 'Luxembourg', NULL, NULL),
(76, 'Madagascar', NULL, NULL),
(77, 'Malawi', NULL, NULL),
(78, 'Malaysia', NULL, NULL),
(79, 'Maldives', NULL, NULL),
(80, 'Mali', NULL, NULL),
(81, 'Malta ', NULL, NULL),
(82, 'Mauritania', NULL, NULL),
(83, 'Mauritius', NULL, NULL),
(84, 'Mayotte', NULL, NULL),
(85, 'Mongolia', NULL, NULL),
(86, 'Montenegro ', NULL, NULL),
(87, 'Morocco', NULL, NULL),
(88, 'Mozambique', NULL, NULL),
(89, 'Myanmar', NULL, NULL),
(90, 'Namibia', NULL, NULL),
(91, 'Nepal', NULL, NULL),
(92, 'Netherlands', NULL, NULL),
(93, 'New Zealand ', NULL, NULL),
(94, 'Niger', NULL, NULL),
(95, 'Nigeria', NULL, NULL),
(96, 'Norway ', NULL, NULL),
(97, 'Occupied Palestinian Territory', NULL, NULL),
(98, 'Oman', NULL, NULL),
(99, 'Pakistan', NULL, NULL),
(100, 'Philippines', NULL, NULL),
(101, 'Poland', NULL, NULL),
(102, 'Portugal ', NULL, NULL),
(103, 'Qatar', NULL, NULL),
(104, 'Republic of Korea', NULL, NULL),
(105, 'Republic of Moldova', NULL, NULL),
(106, 'R?union', NULL, NULL),
(107, 'Romania', NULL, NULL),
(108, 'Russian Federation', NULL, NULL),
(109, 'Rwanda', NULL, NULL),
(110, 'Sao Tome and Principe', NULL, NULL),
(111, 'Saudi Arabia', NULL, NULL),
(112, 'Senegal', NULL, NULL),
(113, 'Serbia ', NULL, NULL),
(114, 'Sierra Leone', NULL, NULL),
(115, 'Singapore', NULL, NULL),
(116, 'Slovakia', NULL, NULL),
(117, 'Slovenia ', NULL, NULL),
(118, 'Somalia', NULL, NULL),
(119, 'South Africa', NULL, NULL),
(120, 'Spain ', NULL, NULL),
(121, 'Sri Lanka', NULL, NULL),
(122, 'Sudan ', NULL, NULL),
(123, 'Swaziland', NULL, NULL),
(124, 'Sweden ', NULL, NULL),
(125, 'Switzerland', NULL, NULL),
(126, 'Syrian Arab Republic', NULL, NULL),
(127, 'Tajikistan ', NULL, NULL),
(128, 'Thailand', NULL, NULL),
(129, 'The former Yugoslav Republic of Macedonia ', NULL, NULL),
(130, 'Timor-Leste', NULL, NULL),
(131, 'Togo', NULL, NULL),
(132, 'Tunisia', NULL, NULL),
(133, 'Turkey', NULL, NULL),
(134, 'Turkmenistan ', NULL, NULL),
(135, 'Uganda', NULL, NULL),
(136, 'Ukraine', NULL, NULL),
(137, 'United Arab Emirates', NULL, NULL),
(138, 'United Kingdom of Great Britain and Northern Ireland e', NULL, NULL),
(139, 'United Republic of Tanzania', NULL, NULL),
(140, 'United States of America ', NULL, NULL),
(141, 'Uzbekistan ', NULL, NULL),
(142, 'Viet Nam', NULL, NULL),
(143, 'Western Sahara', NULL, NULL),
(144, 'Yemen', NULL, NULL),
(145, 'Zambia', NULL, NULL),
(146, 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `add_course`
--

CREATE TABLE `add_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_course`
--

INSERT INTO `add_course` (`id`, `name`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor of Science Information Technology', 1, '2019-07-03 13:10:02', '2019-07-03 13:10:02'),
(2, 'Diploma Information Technology', 2, '2019-07-03 13:10:51', '2019-07-03 13:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `add_shool`
--

CREATE TABLE `add_shool` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_shool`
--

INSERT INTO `add_shool` (`id`, `name`, `type`, `location`, `created_at`, `updated_at`) VALUES
(3, 'Academic City University College', 'Private', 'Accra', NULL, NULL),
(4, 'Accra Institute of Technology', 'Government', 'Accra', NULL, NULL),
(5, 'Accra Technical University', 'Government', 'Accra', NULL, NULL),
(6, 'Advanced Business College', 'Private', 'Accra', NULL, NULL),
(7, 'African University College of Communications', 'Government', 'Accra', NULL, NULL),
(8, 'All Nations University College', 'Private', 'Koforidua', NULL, NULL),
(9, 'Anglican University College of Technology', 'Government', 'Teshie', NULL, NULL),
(10, 'Ashesi University', 'Private', 'Berekuso', NULL, NULL),
(11, 'BlueCrest College', 'Private', 'Accra', NULL, NULL),
(12, 'Bolgatanga Polytechnic', 'Government', 'Bolgatanga', NULL, NULL),
(13, 'Cape Coast Technical University', 'Government', 'Cape Coast', NULL, NULL),
(14, 'Catholic Institute of Business and Technology', 'Private', 'Accra North', NULL, NULL),
(15, 'Catholic University College of Ghana', 'Private', 'Sunyani', NULL, NULL),
(16, 'Central University', 'Private', 'Tema ...', NULL, NULL),
(17, 'Christ Apostolic University College', 'Private', 'Kumasi', NULL, NULL),
(18, 'Christian Service University College', 'Private', 'Santasi-Kumasi', NULL, NULL),
(19, 'Data Link Institute', 'Private', 'Tema ...', NULL, NULL),
(20, 'Dominion University College', 'Private', 'Accra', NULL, NULL),
(21, 'Evangelical Presbyterian University College', 'Private', 'Ho ...', NULL, NULL),
(22, 'Garden City University College', 'Private', 'Kumasi', NULL, NULL),
(23, 'Ghana Baptist University College', 'Private', 'Abuakwa-Kumasi', NULL, NULL),
(24, 'Ghana Christian University College', 'Government', 'Accra', NULL, NULL),
(25, 'Ghana Institute of Journalism', 'Government', 'Accra', NULL, NULL),
(26, 'Ghana Institute of Languages', 'Government', 'Accra', NULL, NULL),
(27, 'Ghana Institute of Management and Public Administration', 'Government', 'Accra', NULL, NULL),
(28, 'Ghana Technology University College', 'Government', 'Accra North', NULL, NULL),
(29, 'Ho Technical University', 'Government', 'Ho', NULL, NULL),
(30, 'Islamic University College, Ghana', 'Government', 'Accra', NULL, NULL),
(31, 'Jayee University College', 'Private', 'Accra', NULL, NULL),
(32, 'KAAF University College', 'Private', 'Kasoa ...', NULL, NULL),
(33, 'Kessben College', 'Private', 'Kuntenase', NULL, NULL),
(34, 'Kings University College', 'Private', 'Accra', NULL, NULL),
(35, 'Knutsford University College', 'Government', 'Accra ...', NULL, NULL),
(36, 'Koforidua Technical University', 'Government', 'Koforidua', NULL, NULL),
(37, 'Kumasi Technical University', 'Government', 'Kumasi', NULL, NULL),
(38, 'Kwame Nkrumah University of Science and Technology', 'Government', 'Kumasi ...', NULL, NULL),
(39, 'Lancaster University, Ghana', 'Private', 'Accra', NULL, NULL),
(40, 'Maranatha University College', 'Private', 'Accra', NULL, NULL),
(41, 'Marshalls University College', 'Private', 'Accra ...', NULL, NULL),
(42, 'Methodist University College', 'Private', 'Accra', NULL, NULL),
(43, 'Mountcrest University College', 'Private', 'Accra ...', NULL, NULL),
(44, 'Pentecost University College', 'Private', 'Accra', NULL, NULL),
(45, 'Perez University College', 'Private', 'Winneba', NULL, NULL),
(46, 'Presbyterian University College', 'Private', 'Abetifi ...', NULL, NULL),
(47, 'Radford University College', 'Private', 'Accra', NULL, NULL),
(48, 'Regent University College of Science and Technology', 'Private', 'Accra', NULL, NULL),
(49, 'Regional Maritime University', 'Private', 'Accra', NULL, NULL),
(50, 'Spiritan University College', 'Private', 'Ejisu', NULL, NULL),
(51, 'Sunyani Technical University', 'Government', 'Sunyani', NULL, NULL),
(52, 'Takoradi Technical University', 'Government', 'Takoradi', NULL, NULL),
(53, 'Tamale Technical University', 'Government', 'Tamale', NULL, NULL),
(54, 'University College of Agriculture and Environmental Studies', 'Government', 'Bunso', NULL, NULL),
(55, 'University College of Management Studies', 'Government', 'Accra ...', NULL, NULL),
(56, 'University for Development Studies', 'Government', 'Tamale', NULL, NULL),
(57, 'University of Cape Coast', 'Government', 'Cape Coast', NULL, NULL),
(58, 'University of Education, Winneba', 'Government', 'Winneba ...', NULL, NULL),
(59, 'University of Energy and Natural Resources', 'Government', 'Sunyani', NULL, NULL),
(60, 'University of Ghana', 'Government', 'Legon Accra', NULL, NULL),
(61, 'University of Health and Allied Sciences', 'Government', 'Ho', NULL, NULL),
(62, 'University of Mines and Technology', 'Government', 'Tarkwa', NULL, NULL),
(63, 'University of Professional Studies Accra', 'Government', 'Accra', NULL, NULL),
(64, 'Valley View University', 'Private', 'Accra ...', NULL, NULL),
(65, 'Wa Polytechnic', 'Government', 'Wa', NULL, NULL),
(66, 'Webster University Ghana', 'Private', 'Accra', NULL, NULL),
(67, 'West End University College', 'Private', 'Accra', NULL, NULL),
(68, 'Wisconsin International University College', 'Private', 'Accra', NULL, NULL),
(69, 'Zenith University College', 'Private', 'Accra', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `graduate_id` bigint(20) UNSIGNED NOT NULL,
  `appoint_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appoint_description` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appoint_date` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employeers`
--

CREATE TABLE `employeers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `graduate`
--

CREATE TABLE `graduate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lastname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(10) UNSIGNED NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employeers_id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_description` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_qualification` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_date` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_06_26_151430_create_users_table', 1),
(3, '2019_06_27_163046_create_role_user_table', 1),
(4, '2019_07_02_091927_create_roles_table', 1),
(5, '2019_06_26_092335_create_graduate_table', 2),
(6, '2019_06_26_092425_create_employeers_table', 2),
(7, '2019_06_26_092500_create_appointment_table', 2),
(8, '2019_06_26_092615_create_jobs_table', 2),
(9, '2019_06_26_134349_create_schools_table', 2),
(10, '2019_06_27_091016_create_skills_table', 2),
(11, '2019_07_03_113843_create_add_shool_table', 3),
(12, '2019_07_03_113926_create_add_country_table', 3),
(13, '2019_07_03_114649_create_addcategory_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-07-03 08:30:27', '2019-07-03 08:30:27'),
(2, 'employeer', '2019-07-03 08:30:27', '2019-07-03 08:30:27'),
(3, 'user', '2019-07-03 08:30:27', '2019-07-03 08:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `graduate_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cert_number` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cert_file` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `graduate_id` bigint(20) UNSIGNED NOT NULL,
  `personal_skill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_skill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_skill_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `firstname`, `lastname`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'wisdomkukah@hotmail.com', 'Wisdom', 'Nanayaw', 'admin', NULL, '$2y$10$2B1h3VfhwEXbS4Tr/e8qMedepdnHfneUHXiRvTLYKzqX1ICpJEGGm', NULL, '2019-07-03 08:30:27', '2019-07-03 08:30:27'),
(2, 'Chris', 'chrisadahene@gmail.com', 'Chris', 'Adahene', 'employeer', NULL, '$2y$10$XhwqfFR.jj8WMoDiHhrBAuN9lEILiXlJNKaWXyxgCHuVDlrhiNEkq', NULL, '2019-07-03 08:30:27', '2019-07-03 08:30:27'),
(3, 'Saint', 'saintman@gmail.com', 'Sainty', 'Godwin', 'user', NULL, '$2y$10$zXauc4UMBKxnbCmzRyGT/ORzZtsNgNrNv/wHL/JEVnSLSLgfyrh8i', NULL, '2019-07-03 08:30:27', '2019-07-03 08:30:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcategory`
--
ALTER TABLE `addcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_country`
--
ALTER TABLE `add_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_course`
--
ALTER TABLE `add_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_shool`
--
ALTER TABLE `add_shool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_graduate_id_foreign` (`graduate_id`);

--
-- Indexes for table `employeers`
--
ALTER TABLE `employeers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graduate`
--
ALTER TABLE `graduate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `graduate_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_employeers_id_foreign` (`employeers_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schools_graduate_id_foreign` (`graduate_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_graduate_id_foreign` (`graduate_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcategory`
--
ALTER TABLE `addcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `add_country`
--
ALTER TABLE `add_country`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `add_course`
--
ALTER TABLE `add_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `add_shool`
--
ALTER TABLE `add_shool`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeers`
--
ALTER TABLE `employeers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `graduate`
--
ALTER TABLE `graduate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_graduate_id_foreign` FOREIGN KEY (`graduate_id`) REFERENCES `graduate` (`id`);

--
-- Constraints for table `graduate`
--
ALTER TABLE `graduate`
  ADD CONSTRAINT `graduate_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_employeers_id_foreign` FOREIGN KEY (`employeers_id`) REFERENCES `employeers` (`id`);

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_graduate_id_foreign` FOREIGN KEY (`graduate_id`) REFERENCES `graduate` (`id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_graduate_id_foreign` FOREIGN KEY (`graduate_id`) REFERENCES `graduate` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
