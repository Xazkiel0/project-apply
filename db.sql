-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 08:29 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `softui`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_logs`
--

CREATE TABLE `app_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` enum('create','update','delete','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_logs`
--

INSERT INTO `app_logs` (`id`, `user_id`, `action`, `log`, `created_at`, `updated_at`) VALUES
(1, 2, 'update', 'Unde voluptas rem.', '2022-06-08 18:59:11', '2022-06-08 18:59:11'),
(2, 3, 'create', 'Doloribus dolorum.', '2022-06-08 18:59:11', '2022-06-08 18:59:11'),
(3, 2, 'create', 'Iste corporis.', '2022-06-08 18:59:11', '2022-06-08 18:59:11'),
(4, 2, 'delete', 'Minus animi id.', '2022-06-08 18:59:11', '2022-06-08 18:59:11'),
(5, 2, 'create', 'Quos eum.', '2022-06-08 18:59:38', '2022-06-08 18:59:38'),
(6, 3, 'delete', 'Expedita maiores.', '2022-06-08 18:59:38', '2022-06-08 18:59:38'),
(7, 2, 'update', 'Aut aut voluptatem.', '2022-06-08 18:59:38', '2022-06-08 18:59:38'),
(8, 3, 'delete', 'Nesciunt ex in.', '2022-06-08 18:59:38', '2022-06-08 18:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` enum('Pusat','Cabang') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `address`, `phone`, `from`, `created_at`, `updated_at`) VALUES
(1, 'Jayde Koepp', '246 O\'Connell Common\nHettieberg, TX 67662', '+1-757-359-8442', 'Pusat', '2022-06-08 03:14:16', '2022-06-08 03:14:16'),
(2, 'Alexis Konopelski', '3745 Balistreri Summit Suite 092\nMitchellton, OR 88447', '+16467279695', 'Pusat', '2022-06-08 03:14:16', '2022-06-08 03:14:16'),
(3, 'Mr. Emery Champlin', '2356 Upton Dam\nLake Charley, RI 61088-6707', '810-882-6959', 'Pusat', '2022-06-08 03:14:17', '2022-06-08 03:14:17'),
(4, 'Ms. Margarita Gottlieb', '51855 Maryse Corners\nSouth Erich, NM 27585', '(706) 257-0975', 'Cabang', '2022-06-08 03:14:17', '2022-06-08 03:14:17'),
(5, 'Pegawai 1', 'JI Kh Hasan Mimbar', '238239', 'Pusat', '2022-06-08 05:05:42', '2022-06-08 05:05:42'),
(7, 'Kari Bogisich', '2026 Friesen Street\nPort Camila, NH 51080', '(917) 471-2417', 'Cabang', '2022-06-08 18:59:09', '2022-06-08 18:59:09'),
(8, 'Paxton Labadie', '1089 Kessler Street\nO\'Harachester, AR 05567-7042', '458-790-3312', 'Pusat', '2022-06-08 18:59:09', '2022-06-08 18:59:09'),
(9, 'Prof. Marvin Mraz Jr.', '243 Geovanni Rapids Apt. 049\nSouth Tracey, TN 84970', '+1 (351) 252-4652', 'Cabang', '2022-06-08 18:59:10', '2022-06-08 18:59:10'),
(10, 'Mr. Hector Ritchie V', '662 Kutch Wall\nNorth Hattieshire, TX 69385-9040', '678.751.6750', 'Pusat', '2022-06-08 18:59:10', '2022-06-08 18:59:10'),
(11, 'Dr. Nash Frami Sr.', '7774 Ismael Forks\nSouth Simeonbury, KY 35212-8438', '+15103174325', 'Pusat', '2022-06-08 18:59:37', '2022-06-08 18:59:37'),
(12, 'Susana Welch Sr.', '38389 Ellen Route Suite 309\nRandishire, ND 03359-0161', '+16789785209', 'Pusat', '2022-06-08 18:59:37', '2022-06-08 18:59:37'),
(13, 'Karlee Russel', '581 Kub Corners\nEast Monica, FL 98905', '+1 (636) 710-1990', 'Cabang', '2022-06-08 18:59:37', '2022-06-08 18:59:37'),
(14, 'Erna Langworth', '21971 Bethel Union Suite 963\nNew Yadiramouth, IN 12173', '+1 (458) 394-6155', 'Pusat', '2022-06-08 18:59:37', '2022-06-08 18:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_07_024011_create_vehicles_table', 1),
(6, '2022_06_07_025705_create_order_vehs_table', 1),
(7, '2022_06_07_025811_create_drivers_table', 1),
(8, '2022_06_07_025841_create_veh_uses_table', 1),
(9, '2022_06_07_025918_create_app_logs_table', 1),
(10, '2022_06_07_025941_create_rent_vehs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_vehs`
--

CREATE TABLE `order_vehs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` int(11) NOT NULL,
  `approver_id` int(11) NOT NULL,
  `tambang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rent_id` int(11) DEFAULT NULL,
  `vehicle_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `date_back` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_vehs`
--

INSERT INTO `order_vehs` (`id`, `driver_id`, `approver_id`, `tambang`, `note`, `rent_id`, `vehicle_id`, `progress`, `date_back`, `created_at`, `updated_at`) VALUES
(5, 2, 2, 'Tambang 3', 'coba 1', NULL, 'O1R71RS', 2, NULL, '2022-06-08 17:00:27', '2022-06-08 22:27:12'),
(6, 3, 2, 'Tambang 4', 'coba 2', NULL, 'RZGAMKT', 0, NULL, '2022-06-08 04:09:54', '2022-06-08 04:09:54'),
(7, 4, 2, 'Tambang 5', 'coba 3', NULL, 'RZGAMKT', 0, NULL, '2022-06-08 04:10:29', '2022-06-08 04:10:29'),
(14, 4, 2, 'Tambang 5', NULL, 2, NULL, 2, NULL, '2022-06-08 18:59:37', '2022-06-08 18:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_vehs`
--

CREATE TABLE `rent_vehs` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carry` enum('person','material') COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Perusahaan 1',
  `rent_till` date NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_vehs`
--

INSERT INTO `rent_vehs` (`id`, `name`, `brand`, `carry`, `owner`, `rent_till`, `contact`, `created_at`, `updated_at`) VALUES
('2ZCDDT7', 'Glenda', 'Douglas', 'material', 'Runolfsdottir', '2022-06-17', '1-605-616-9051', '2022-06-08 18:59:37', '2022-06-08 18:59:37'),
('7FJ5ESV', 'Bridgette', 'Sanford', 'material', 'Balistreri', '2022-06-17', '774.496.1174', '2022-06-08 03:14:18', '2022-06-08 03:14:18'),
('9AY7VFG', 'Zelda', 'Marks', 'material', 'Harvey', '2022-06-21', '256-414-9108', '2022-06-08 18:59:37', '2022-06-08 18:59:37'),
('9YMKOK0', 'Maximo', 'Kling', 'material', 'Mayert', '2022-06-24', '(239) 622-1632', '2022-06-08 18:59:10', '2022-06-08 18:59:10'),
('E8PH2BE', 'Briana', 'Zieme', 'person', 'Kunze', '2022-06-24', '407.900.9826', '2022-06-08 18:59:10', '2022-06-08 18:59:10'),
('EXJMTVS', 'Kendaraan Sewa 1', 'Gatau', 'person', 'Gatau', '2022-06-18', '2392389', '2022-06-08 05:30:30', '2022-06-08 05:30:30'),
('HG3B6FM', 'Gianni', 'Kuvalis', 'person', 'Stracke', '2022-06-26', '312-868-8490', '2022-06-08 18:59:10', '2022-06-08 18:59:10'),
('KF0XQN3', 'Richie', 'Kreiger', 'person', 'Schmitt', '2022-06-23', '(415) 960-5582', '2022-06-08 03:14:18', '2022-06-08 03:14:18'),
('MBMGKPB', 'Timmothy', 'Fahey', 'person', 'Feil', '2022-06-18', '+1.925.856.0806', '2022-06-08 03:14:18', '2022-06-08 03:14:18'),
('NYCJJL7', 'Denis', 'Farrell', 'material', 'Bruen', '2022-06-10', '(540) 313-4040', '2022-06-08 18:59:37', '2022-06-08 18:59:37'),
('XBUCPET', 'Precious', 'Auer', 'person', 'Kovacek', '2022-06-15', '1-986-423-3196', '2022-06-08 18:59:10', '2022-06-08 18:59:10'),
('Y4B7JAD', 'Malinda', 'Quitzon', 'person', 'Reilly', '2022-06-21', '262-816-8600', '2022-06-08 18:59:37', '2022-06-08 18:59:37'),
('ZQNOMRZ', 'Morgan', 'Hills', 'material', 'Beahan', '2022-06-12', '657.465.2902', '2022-06-08 03:14:18', '2022-06-08 03:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `from` enum('Pusat','Cabang') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pusat',
  `role` enum('Admin','Approver','Manager') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Approver',
  `about_me` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `from`, `role`, `about_me`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$sfq60OGtnsUBlru0VaAW1eglV5BokW/FcMI3UvfXIEoEo8IZMT.m.', NULL, 'Pusat', 'Admin', NULL, NULL, '2022-06-08 03:16:00', '2022-06-08 03:16:00'),
(2, 'penyetuju', 'penyetuju@gmail.com', '$2y$10$j9/vyfsJLNZ4wm3AIEDQMueGRlfScmb4zMACgUMtKAFS9yQahsixy', NULL, 'Pusat', 'Approver', NULL, NULL, '2022-06-08 03:16:00', '2022-06-08 03:16:00'),
(3, 'manajer', 'manajer@gmail.com', '$2y$10$oT4xyMpljnNePyucU8tMkeQndNXnnmwWNQ1nFferb.NrQIh0aiNHi', NULL, 'Pusat', 'Manager', NULL, NULL, '2022-06-08 03:16:01', '2022-06-08 03:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` enum('Cabang','Pusat') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carry` enum('person','material') COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `image`, `owner`, `description`, `brand`, `carry`, `service_date`, `created_at`, `updated_at`) VALUES
('06MMFLX', 'Miguel Harber', 'img', 'Cabang', 'Quo neque cum nam.', 'Florence', 'material', '2022-06-09', '2022-06-08 18:59:37', '2022-06-08 18:59:37'),
('2KFZIOT', 'Kendall Cole DDS', 'img', 'Cabang', 'Nobis dolorum atque a.', 'Michel', 'person', '2022-06-09', '2022-06-08 18:59:09', '2022-06-08 18:59:09'),
('DJGFXQ5', 'Felipa Hessel V', 'img', 'Pusat', 'Explicabo aut et et magnam.', 'Halie', 'person', '2022-06-09', '2022-06-08 18:59:36', '2022-06-08 18:59:36'),
('DMK50XC', 'Dane Jerde', 'img', 'Pusat', 'Quia sed voluptas ipsam ut.', 'Leann', 'material', '2022-06-09', '2022-06-08 18:59:09', '2022-06-08 18:59:09'),
('F5ZNOQP', 'Alayna Keebler II', 'img', 'Cabang', 'Eius quam qui ex eaque.', 'Jacky', 'material', '2022-06-09', '2022-06-08 18:59:09', '2022-06-08 18:59:09'),
('GBJGOHT', 'Kendaraan 1', 'img', 'Cabang', 'mobil', 'Toyota', 'person', '2022-06-18', '2022-06-08 05:12:31', '2022-06-08 05:12:31'),
('J8HWCXN', 'Amara Gottlieb', 'img', 'Pusat', 'Omnis aut temporibus aperiam.', 'Minerva', 'person', '2022-06-09', '2022-06-08 18:59:09', '2022-06-08 18:59:09'),
('MM5J5IX', 'Dianna Champlin', 'img', 'Pusat', 'Aut est id fugiat ducimus.', 'Jessie', 'person', '2022-06-08', '2022-06-08 03:14:16', '2022-06-08 03:14:16'),
('N1C9FTR', 'Jacinto Kutch', 'img', 'Cabang', 'Quis voluptatem et qui.', 'Mackenzie', 'person', '2022-06-09', '2022-06-08 18:59:36', '2022-06-08 18:59:36'),
('O1R71RS', 'Jaydon Ferry', 'img', 'Cabang', 'Ducimus est ab nulla.', 'Kyleigh', 'person', '2022-06-08', '2022-06-08 03:14:16', '2022-06-08 03:14:16'),
('RZGAMKT', 'Melvin Reichert', 'img', 'Cabang', 'Qui id aut voluptatibus.', 'Clarabelle', 'person', '2022-06-08', '2022-06-08 03:14:16', '2022-06-08 03:14:16'),
('SFJNCKK', 'Camila Hodkiewicz', 'img', 'Pusat', 'Ab id quaerat debitis modi.', 'Ryan', 'material', '2022-06-08', '2022-06-08 03:14:16', '2022-06-08 03:14:16'),
('UOFTVAH', 'Kendall Hintz', 'img', 'Pusat', 'Modi dolorum dicta enim et.', 'Jennyfer', 'person', '2022-06-09', '2022-06-08 18:59:36', '2022-06-08 18:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `veh_uses`
--

CREATE TABLE `veh_uses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `type` enum('fuel','repair','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `spend` int(11) NOT NULL,
  `fuel` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `veh_uses`
--

INSERT INTO `veh_uses` (`id`, `order_id`, `type`, `spend`, `fuel`, `note`, `photo`, `created_at`, `updated_at`) VALUES
(1, 6, 'repair', 3248, 4780, NULL, NULL, '2022-06-08 03:14:18', '2022-06-08 03:14:18'),
(2, 7, 'repair', 4955, 2501, NULL, NULL, '2022-06-08 03:14:18', '2022-06-08 03:14:18'),
(5, NULL, 'fuel', 77832, 3000, NULL, NULL, '2022-06-08 18:48:40', '2022-06-08 18:48:40'),
(10, 6, 'other', 1933, 2826, NULL, NULL, '2022-06-08 18:59:37', '2022-06-08 18:59:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_logs`
--
ALTER TABLE `app_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_vehs`
--
ALTER TABLE `order_vehs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rent_vehs`
--
ALTER TABLE `rent_vehs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `veh_uses`
--
ALTER TABLE `veh_uses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_logs`
--
ALTER TABLE `app_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_vehs`
--
ALTER TABLE `order_vehs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `veh_uses`
--
ALTER TABLE `veh_uses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
