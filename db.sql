-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 08:43 AM
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
(1, 'Gerardo Lind', '37825 Jeffery Club\nLake Kelvin, IA 74039-8909', '(570) 990-9359', 'Pusat', '2022-06-07 22:48:08', '2022-06-07 22:48:08'),
(2, 'Catharine Casper Jr.', '29292 Gregoria Drive\nKuvalisbury, CO 55027', '435-748-5338', 'Pusat', '2022-06-07 22:48:08', '2022-06-07 22:48:08'),
(3, 'Stanley Schowalter', '330 Wehner Course Suite 329\nParkerville, UT 01900', '608.875.4635', 'Cabang', '2022-06-07 22:48:08', '2022-06-07 22:48:08'),
(4, 'Savannah Ullrich', '4598 Gottlieb Locks Suite 877\nSouth Geovanny, MD 49057-7297', '986.654.3430', 'Cabang', '2022-06-07 22:48:08', '2022-06-07 22:48:08'),
(5, 'Arturo Schowalter Jr.', '1222 Stokes Oval\nLake Jamaalland, PA 79278', '(785) 746-5591', 'Pusat', '2022-06-07 22:49:00', '2022-06-07 22:49:00'),
(6, 'Sandrine Swaniawski V', '481 Jess Isle Suite 107\nEast Floy, AZ 52891-0256', '(336) 438-3159', 'Cabang', '2022-06-07 22:49:00', '2022-06-07 22:49:00'),
(7, 'Mr. Devin Morar', '33151 Luella Shoals\nSigmundberg, LA 09870-4114', '754-915-7987', 'Cabang', '2022-06-07 22:49:00', '2022-06-07 22:49:00'),
(8, 'Dr. Rusty Schmitt', '1429 Blick Roads Suite 271\nNorth Lillaburgh, ME 57256', '941.400.9900', 'Cabang', '2022-06-07 22:49:00', '2022-06-07 22:49:00');

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
  `progress` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_vehs`
--

INSERT INTO `order_vehs` (`id`, `driver_id`, `approver_id`, `tambang`, `note`, `rent_id`, `vehicle_id`, `progress`, `created_at`, `updated_at`) VALUES
(5, 5, 1, 'Tambang 4', NULL, NULL, 'MN7NBHI', 2, '2022-06-07 23:01:00', '2022-06-07 23:41:04'),
(6, 5, 3, 'Tambang 4', NULL, NULL, 'ZIIUM6S', 0, '2022-06-07 23:01:18', '2022-06-07 23:01:18'),
(7, 3, 3, 'Tambang 4', NULL, NULL, 'ZIIUM6S', 0, '2022-06-07 23:01:27', '2022-06-07 23:01:27');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent_till` date NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_vehs`
--

INSERT INTO `rent_vehs` (`id`, `owner`, `rent_till`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'Padberg', '2022-06-10', '(510) 408-0366', '2022-06-07 22:49:01', '2022-06-07 22:49:01'),
(2, 'Nitzsche', '2022-06-11', '820-302-1014', '2022-06-07 22:49:01', '2022-06-07 22:49:01'),
(3, 'Conroy', '2022-06-11', '+1-334-717-7841', '2022-06-07 22:49:01', '2022-06-07 22:49:01'),
(4, 'Hilpert', '2022-06-19', '+1.623.652.6743', '2022-06-07 22:49:02', '2022-06-07 22:49:02');

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
(1, 'Aidan Ortiz', 'penyetuju@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Pusat', 'Approver', NULL, 'voe8P1k7hpww90F8LznWEoW1k2NT1TNd8MgV0DobhD4NttZIer1PqvznhhO7', '2022-06-07 22:48:07', '2022-06-07 22:48:07'),
(2, 'admin', 'admin@softui.com', '$2y$10$NSVEHjIMM9i0qoODB.yGVOWHbnFVoqKsjt6m0pzp4HtiVa15SeOB.', NULL, 'Pusat', 'Admin', NULL, NULL, '2022-06-07 22:48:55', '2022-06-07 22:48:55'),
(3, 'Annette Hammes', 'manajer@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Pusat', 'Manager', NULL, 'j855BgopHO', '2022-06-07 22:49:00', '2022-06-07 22:49:00');

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
  `date_back` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `image`, `owner`, `description`, `brand`, `carry`, `service_date`, `date_back`, `created_at`, `updated_at`) VALUES
('8GDDLKQ', 'Hayley Schmitt', 'img', 'Pusat', 'Facilis iste a est ipsam.', 'Eryn', 'person', '2022-06-08', NULL, '2022-06-07 22:49:00', '2022-06-07 22:49:00'),
('A5M9TIS', 'Jeffrey Dickinson', 'img', 'Pusat', 'Et soluta eaque in ducimus.', 'Mariah', 'person', '2022-06-08', NULL, '2022-06-07 22:49:00', '2022-06-07 22:49:00'),
('BISZRCD', 'Baby Eichmann', 'img', 'Pusat', 'Nemo est aut corporis.', 'Bernice', 'person', '2022-06-08', NULL, '2022-06-07 22:48:07', '2022-06-07 22:48:07'),
('ECS4B0P', 'Ernestine McClure', 'img', 'Pusat', 'Quia cumque ab nisi esse ea.', 'Alba', 'person', '2022-06-08', NULL, '2022-06-07 22:49:00', '2022-06-07 22:49:00'),
('MN7NBHI', 'Anastasia Williamson', 'img', 'Pusat', 'Quis quisquam beatae earum.', 'Peyton', 'material', '2022-06-08', NULL, '2022-06-07 22:48:07', '2022-06-07 22:48:07'),
('T06UGLY', 'Bart Wunsch', 'img', 'Pusat', 'Qui dolor totam qui voluptas.', 'Giles', 'person', '2022-06-08', NULL, '2022-06-07 22:48:07', '2022-06-07 22:48:07'),
('UJICXFS', 'Deron Botsford', 'img', 'Pusat', 'At ipsum consequatur dolorum.', 'Enrico', 'material', '2022-06-08', NULL, '2022-06-07 22:49:00', '2022-06-07 22:49:00'),
('ZIIUM6S', 'Judah Gleason V', 'img', 'Cabang', 'Veniam eos aliquid sunt.', 'Kennedi', 'person', '2022-06-08', NULL, '2022-06-07 22:48:07', '2022-06-07 22:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `veh_uses`
--

CREATE TABLE `veh_uses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
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
(1, 10, 'repair', 6883, 1498, NULL, NULL, '2022-06-07 22:49:02', '2022-06-07 22:49:02'),
(2, 3, 'fuel', 6008, 3851, NULL, NULL, '2022-06-07 22:49:02', '2022-06-07 22:49:02'),
(3, 9, 'other', 6727, 4102, NULL, NULL, '2022-06-07 22:49:02', '2022-06-07 22:49:02'),
(4, 3, 'fuel', 9125, 1771, NULL, NULL, '2022-06-07 22:49:02', '2022-06-07 22:49:02');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_vehs`
--
ALTER TABLE `rent_vehs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `veh_uses`
--
ALTER TABLE `veh_uses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
