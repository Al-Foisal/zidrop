-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2022 at 07:27 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zicoexco_maindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `image`, `title`, `subtitle`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/about/img-1.png', 'About Us', 'As Quick as a Click', 'Looking for your delivery partner; We are always here to provide services with accuracy. Our motto is “As Quick as a Click”. Create, track and oversee deliveries in real-time. Zidrop is Designed primarily for E-commerce operations, efficient and effective transaction management, visibility and payment reconciliations. Zidrop Logistics', 1, '2021-02-09 06:55:28', '2022-08-30 20:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `agentpayments`
--

CREATE TABLE `agentpayments` (
  `id` int NOT NULL,
  `agentId` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agentpayments`
--

INSERT INTO `agentpayments` (`id`, `agentId`, `created_at`, `updated_at`) VALUES
(1, 5, '2021-11-08 15:38:44', '2021-11-08 15:38:44'),
(2, 4, '2021-11-08 23:35:39', '2021-11-08 23:35:39'),
(3, 4, '2021-11-08 23:35:48', '2021-11-08 23:35:48'),
(4, 4, '2021-11-08 23:36:00', '2021-11-08 23:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint UNSIGNED NOT NULL,
  `state` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwordReset` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public/avatar/avatar.png',
  `commision` int DEFAULT NULL,
  `commisiontype` int DEFAULT NULL,
  `bookcommision` int DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `state`, `name`, `email`, `phone`, `designation`, `password`, `passwordReset`, `image`, `commision`, `commisiontype`, `bookcommision`, `status`, `created_at`, `updated_at`) VALUES
(17, 14, 'Newton Obioha', 'newtonobioha@outlook.com', '0706 912 5866', 'Station Manager', '$2y$10$Eknc9rqa/rchb1A86fNgZuN63gWHzgUIU7InfX24XE3m2.hvhWwxi', NULL, 'uploads/agent/1663683866147879277_3894440410586962_5700772173547706385_n.jpg', 0, 1, 0, 1, '2022-09-20 13:24:26', '2022-09-20 13:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(16, 'Helping you to grow better', 'Delivery at anywhere in Bangladesh', 'we ensure the proper security and comfort, we are providing door to door service at your preferred location.', 'uploads/banner/298284332_1052269638989954_7021341154566293518_n.jpg', 1, '2021-08-23 08:03:28', '2022-08-17 10:16:20'),
(17, 'Always on time', 'Enjoy the Fastest Payment', 'We know the time importance, experience fast service', 'uploads/banner/290345637_2269215276590432_6331526860854415225_n.jpg', 1, '2021-08-23 08:14:16', '2022-08-17 10:16:32'),
(18, 'Pick up - Delivery - Payment all in one day!', 'A courier company which understands your comfort.', ';fdglplgmdffgjdflkgmdflgkj', 'uploads/banner/292058811_1729991117360475_6438624705718809147_n.jpg', 1, '2021-10-20 11:43:03', '2022-08-17 10:16:43'),
(20, 'Zidrop Logistics', 'Zidrop Logistics', NULL, 'uploads/banner/294500050_563866468820346_6164338927246153203_n.jpg', 1, '2021-12-06 23:42:32', '2022-08-28 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exprience` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientfeedbacks`
--

CREATE TABLE `clientfeedbacks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clientfeedbacks`
--

INSERT INTO `clientfeedbacks` (`id`, `name`, `subtitle`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Esther', 'Founder', 'uploads/clientfeedback/1661676575-26114184_1586777378073730_5356274285171302355_n.jpg', 'Best alternative to Pay-on-Delivery delivery  companies. At last we have a system that will compete with others and give them a real wake up call.😍. I love your merchant dashboard and dedication to customer service.❤. Please do not be like others.\r\nHighly recommended there service \r\n\r\n- Fast & Sleek!!!', 1, '2021-09-07 20:15:50', '2022-08-28 07:49:35'),
(7, 'Martins', 'Founder', 'uploads/clientfeedback/1661676642-20451607_137287146863449_7418944862891910788_o.jpg', 'Superb delivery service with personalized experience — just what I was looking for, especially the Express Delivery service which was always very timely. A really good choice for new Merchants looking for a good delivery company. Customer Reps were always helpful and friendly. I hope the good work is kept up. Best of wishes for the future \r\n\r\n- Bravo', 1, '2021-09-08 05:32:58', '2022-08-28 07:50:42'),
(8, 'Newton', 'Founder', 'uploads/clientfeedback/1661676617-147879277_3894440410586962_5700772173547706385_n.jpg', 'Zidrop Logistics App is the best in the market. Their app is so transparent and enables you to monitor real time shipment.❤️❤️Pick up and delivery are so fast and merchant settlement remittance is fast ..😍.\r\n\r\n- Way to go!', 1, '2021-09-08 17:54:24', '2022-08-28 07:50:17'),
(9, 'Chiddy', 'Founder', 'uploads/clientfeedback/1661676437-77359304_2950500414962590_4594706354848923648_n.jpg', 'Best delivery service ever😍. Pickup and delivery system is very fast. Also they are helpful and trustworthy and you will get your payment in time always❤.\r\nHighly recommended their service \r\n\r\n- Snap & Buy', 1, '2021-11-17 22:18:18', '2022-08-28 07:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `codcharges`
--

CREATE TABLE `codcharges` (
  `id` bigint UNSIGNED NOT NULL,
  `codcharge` int NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `codcharges`
--

INSERT INTO `codcharges` (`id`, `codcharge`, `status`, `created_at`, `updated_at`) VALUES
(2, 15, 1, '2021-11-08 23:45:12', '2021-11-08 23:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `phone1`, `phone2`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Shop 18A, Ground Floor, Grace Plaza, Broad Street, Lagos Island', '0807 690 9835', '0807 690 9835', 'e-tailing@zidrop.com', '2022-08-26 23:53:59', '2022-08-28 09:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliverycharges`
--

CREATE TABLE `deliverycharges` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(151) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(151) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliverycharge` int DEFAULT NULL,
  `extradeliverycharge` int DEFAULT NULL,
  `cod` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliverycharges`
--

INSERT INTO `deliverycharges` (`id`, `title`, `slug`, `subtitle`, `time`, `deliverycharge`, `extradeliverycharge`, `cod`, `description`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Abuja', 'abuja', NULL, NULL, 2500, 250, 1, NULL, 1, '2022-09-13 04:36:54', '2022-09-13 17:22:57'),
(15, 'Lagos', 'lagos', NULL, NULL, 1000, 200, 0, NULL, 1, '2022-09-13 17:23:26', '2022-09-21 09:46:42'),
(16, 'Lagos (Balogun Merchants)', 'lagos-(balogun-merchants)', NULL, NULL, 1000, 0, 0, NULL, 1, '2022-09-23 11:48:37', '2022-09-23 11:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `deliverymanpayments`
--

CREATE TABLE `deliverymanpayments` (
  `id` int NOT NULL,
  `deliverymanId` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliverymanpayments`
--

INSERT INTO `deliverymanpayments` (`id`, `deliverymanId`, `created_at`, `updated_at`) VALUES
(1, 5, '2021-11-08 13:21:12', '2021-11-08 13:21:12'),
(2, 5, '2021-11-08 13:36:47', '2021-11-08 13:36:47'),
(3, 5, '2021-11-08 13:37:56', '2021-11-08 13:37:56'),
(4, 4, '2021-11-09 00:08:43', '2021-11-09 00:08:43'),
(5, 3, '2021-11-09 17:54:50', '2021-11-09 17:54:50'),
(6, 4, '2021-11-17 21:47:32', '2021-11-17 21:47:32'),
(7, 4, '2021-11-17 21:48:25', '2021-11-17 21:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `deliverymen`
--

CREATE TABLE `deliverymen` (
  `id` bigint UNSIGNED NOT NULL,
  `state` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwordReset` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public/avatar/avatar.png',
  `commision` int DEFAULT NULL,
  `commisiontype` int DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliverymen`
--

INSERT INTO `deliverymen` (`id`, `state`, `name`, `email`, `phone`, `designation`, `password`, `passwordReset`, `image`, `commision`, `commisiontype`, `status`, `created_at`, `updated_at`) VALUES
(1, 15, 'Robiul Awal (Pickman)', 'pickman@gmail.com', '01734899944', 'test', '$2y$10$h5RMI00vuw1yBoflFFWnF.jBOUViBxq9MNADy8OCR609SvIbPUM.S', NULL, 'uploads/deliveryman/1636192161Capture.GIF', NULL, NULL, 0, '2021-11-06 15:49:21', '2021-12-01 16:30:05'),
(3, 15, 'Robi ( Rider )', 'rider@gmail.com', '+8801748340719', 'test', '$2y$10$3H74wg6XQK6FopdmTv5dvONQtwtlsjRrStdCec5EAUshBYAYGxLBu', NULL, 'uploads/deliveryman/163619225046505892_1037020029804078_1518606766923841536_o.jpg', 10, 2, 0, '2021-11-06 15:50:50', '2022-04-08 16:40:07'),
(4, 15, 'Robiul Awal', 'robiraloit@gmail.com', '+8801748340730', 'test', '$2y$10$KgtrwH5bvlfitBZ/oS34r.0fjxJxKaK3zm9rIRlHXujAO5KakRvnO', NULL, 'uploads/deliveryman/1636222346sorkerit.png', 10, 1, 1, '2021-11-07 00:12:27', '2022-02-14 17:23:11'),
(5, 15, 'Deliveryman', 'deliveryman1@gmail.com', '01925883214', 'Deliveryman', '$2y$10$gPfhY3hYrZw1Te2tpJWd3un9.Ml7Zy9ESL0kRYVKGZGwaA4/Jlzye', '468161', 'uploads/deliveryman/1636351485avatar.png', 10, 1, 0, '2021-11-08 12:04:45', '2022-08-07 11:04:29'),
(6, 15, 'Mahsin ( Pickup Man )', 'mdmahsin@zuri.express', '01746845163', 'Pickup Man', '$2y$10$cvFUeXl87cqpjAp6DO8Hq.Hu1tlkwqVNoH1YJDlmIHGbU/5LcQEfS', NULL, 'uploads/deliveryman/1637171049mahsin.jpeg', NULL, NULL, 0, '2021-11-17 23:44:09', '2021-12-01 16:30:49'),
(7, 15, 'Dulal ( Deliveryman )', 'dulalhasan@zuri.express', '01711132240', 'Deliveryman', '$2y$10$Obbdgqda4DAGf.D6Sf4K3uJekL5Pfok.w7GyO00.fOHGxW1/WC6GO', NULL, 'uploads/deliveryman/1637171227Dulal.JPG', 10, 1, 0, '2021-11-17 23:47:07', '2021-12-01 16:30:46'),
(8, 15, 'MD Ahsan Habib', 'habiv404@gmail.com', '01310639967', 'delivery rider', '$2y$10$BN.UJXcL.uB7a246LmAipuhhNlw0rXv0EXVWNX5r77lECX2fZl4VO', NULL, 'uploads/deliveryman/1637473036WIN_20211121_11_35_35_Pro.jpg', NULL, NULL, 0, '2021-11-21 11:37:16', '2022-02-19 18:06:15'),
(9, 15, 'Robiul Awal', 'robiraloit1@gmail.com', '01748340718', 'IT OFFICER', '$2y$10$2dqoVIdxqMDD2rC9Dm9LWemTCKjqLK4uz8RkRtexl1U9bAYJBzfP2', NULL, 'uploads/deliveryman/1637597507pic.jpg', 10, 1, 0, '2021-11-22 22:11:47', '2021-12-01 16:30:41'),
(10, 15, 'Mehedi sordar( DEL-BOY)PURAN DHAKA', 'mdmahsin1993@gmail.com', '01636469924', 'delivery rider', '$2y$10$gNF4FwWAJ90WZemdPDdHF.0iKzAHg3rjBFdpYGhKOyUFhurwIgABK', NULL, 'uploads/deliveryman/1637998911WIN_20211121_11_35_35_Pro.jpg', 10, 1, 0, '2021-11-27 13:41:51', '2021-12-01 16:30:36'),
(11, 15, 'dulal vai pickup boy', 'mdmahsin1993@zuri.express', '01719100506', 'pickup boy', '$2y$10$a1tav57LQzNJjy0AvvskyO5ZitvY8ZkQx6qQhR1qR34fFI.XIJbqi', NULL, 'uploads/deliveryman/1637999414WIN_20211121_11_35_35_Pro.jpg', 0, 1, 0, '2021-11-27 13:50:14', '2021-12-01 16:29:53'),
(12, 15, 'Developer', 'developer@gmail.com', '01700000000', 'developer', '$2y$10$uG8cVMwzPskcvjx3fWJUnu7SejvtS/414FsDb3pDPejVSqi3GRI32', NULL, 'uploads/deliveryman/1638120055Nagad-Logo.wine.png', 5, 1, 0, '2021-11-28 23:20:55', '2021-12-01 16:29:49'),
(13, 15, 'Sezan Sharker', 'Rifat@zuri.express', '01977-439673', 'Pickman', '$2y$10$wtKEtxNPXFTlcy93OhenLekkR1Or4qAwuT3b9o7lxJNs.7tjRMdzC', NULL, 'uploads/deliveryman/1638353382Zuri Express  Picked.xlsx', NULL, NULL, 1, '2021-12-01 16:09:42', '2021-12-01 16:49:42'),
(14, 15, 'MD Hasibul Islam', 'mhasib303@gmail.com', '01952-963344', 'Delivaryman', '$2y$10$oIgBtRHu9SaHWeyDHLukCuAVbnHO08eJme55UrbfjYa8Sfidy5UQ6', NULL, 'uploads/deliveryman/1638416970a.jpg', NULL, 1, 1, '2021-12-02 09:49:30', '2021-12-02 09:49:30'),
(20, 15, 'MD. Sabbir Ahmed', 'sabbir3210@gmail.com', '09611677587', 'Delivaryman', '$2y$10$oyLDPZHSDoNEAkha9Kwgq.Rs0pleTXt9jK/AyN3yC3IsgTs0cbjVa', NULL, 'uploads/deliveryman/1638423786b.jpg', NULL, 1, 0, '2021-12-02 11:43:06', '2022-03-30 17:51:27'),
(31, 15, 'Md. Al-Amin', 'mdalamin55199@gmail.com', '0162739281', 'Delivery Rider', '$2y$10$D7tFTphZGv8FeFogb0S1.OorEl0IGCee/BtdNEPD7uybSFykD7nFe', NULL, 'uploads/deliveryman/1639282970alamin.jpg', NULL, NULL, 1, '2021-12-12 10:22:50', '2021-12-12 10:22:50'),
(32, 15, 'Sujon', 'issujon@gmail.com', '01619396771', 'Delivery Rider', '$2y$10$CoIGx3zhrch79jGgUyj6S.IQlMw1vyVf6TvBI3uf2bUSYtc75Eu.6', NULL, 'uploads/deliveryman/1639311700IMG20211212000015.jpg', NULL, NULL, 1, '2021-12-12 18:21:41', '2021-12-12 18:21:41'),
(33, 15, 'MD. Mamun', 'mdmamunmirza89@gmail.com', '01622055966', 'Delivaryman', '$2y$10$8g5PjRMfmGFzZOk3mFcLH.EF9k70mLJrJYnAvtrYB/y1Dic6P0z/a', NULL, 'uploads/deliveryman/1639367365IMG-20211102-WA0009.jpg', NULL, NULL, 1, '2021-12-13 09:49:25', '2021-12-13 09:49:25'),
(40, 15, 'MD. Shimul', 'mdalamin9v@gmail.com', '01408296007', 'Deliveryman', '$2y$10$JLP6EUC.nsMRSso4/SwMlesHgqFl.YsBxWpVKyJWb49psi4uq2Mgm', NULL, 'uploads/deliveryman/1640067129IMG_20211221_113037 (1).jpg', 30, 2, 0, '2021-12-21 12:12:09', '2022-01-05 16:49:25'),
(43, 15, 'Hemu', 'mdmahsin@email.com', '01999567696', 'Rider', '$2y$10$4r7biNURCIZAffY29JFD2.MZxLZNf3soAXL.n1OHRr1B4VPysvDea', NULL, 'uploads/deliveryman/1640769837WhatsApp Image 2021-12-13 at 1.20.04 PM.jpeg', 0, 1, 0, '2021-12-29 15:23:57', '2022-02-19 18:05:42'),
(47, 15, 'Sahadat Hossain', 'mdmahsin@gmail.com', '01832819882', 'Rider', '$2y$10$44Wn5nYAKbZguxWD4OmMq.DBL49XM/r8xF4CIKaH6phq2sEhtfRJy', NULL, 'uploads/deliveryman/1640853436WhatsApp Image 2021-12-13 at 1.20.04 PM.jpeg', 0, 1, 0, '2021-12-30 14:37:16', '2022-02-15 13:12:41'),
(53, 15, 'Sumon', 'mdmahsin2@gmail.com', '01790345571', 'Mirpur', '$2y$10$/h75bgKXFHpVmpA0vMSZte5tStJcxTo0BwkrZauMjyxZCjdpCXOZq', NULL, 'uploads/deliveryman/1641188999IMG-20211102-WA0009.jpg', 1790345571, 1, 1, '2022-01-03 11:49:59', '2022-01-09 17:29:33'),
(59, 15, 'Deliveryman(Motijheel)', 'sokalahamed6412@gmail.com', '01929116412', 'Deliveryman', '$2y$10$Vvatoo0YXn1hJgjc8DVok.6P2225JJDVLZcE.2YbJ5dySwjaS8AAe', NULL, 'uploads/deliveryman/1641379713x27-1488173053-2.jpg.pagespeed.ic.fuWlatTrYr.jpg', 0, 1, 0, '2022-01-05 16:48:33', '2022-01-06 15:07:02'),
(61, 15, 'Arafat', 'arafataksh137@gmail.com', '01874366111', 'Mirpur', '$2y$10$sRzzihIUvTr.PbSE.7eztul9lr0VPQ7uDrWGZ46ZnxOeZYiiTX.RW', '940340', 'uploads/deliveryman/1641443288IMG-20211102-WA0009.jpg', 0, 1, 0, '2022-01-06 10:28:08', '2022-02-17 13:04:43'),
(62, 15, 'Sajib', 'mdsajibhossain678@yahoo.com', '01687454107', 'Mirpur', '$2y$10$NKaYTco77/HyPwWLwxbIx.BKb4T2I2lIatq2F85CLtPpuzoqDmUiK', NULL, 'uploads/deliveryman/1641445232IMG-20211102-WA0009.jpg', 0, 1, 0, '2022-01-06 11:00:32', '2022-03-30 17:51:05'),
(64, 15, 'Deliveryman(Motijheel)-2', 'sokalahamed@zuri.express', '01929116410', 'Deliveryman', '$2y$10$177KvqNEIwvt1pr7mqocHOLMGN5DTREd1ILG6dZbdRtB72gS/Jyle', NULL, 'uploads/deliveryman/16414602769A247C19-288E-4892-96F6-6A5811FB9846.png', 0, 1, 1, '2022-01-06 15:11:16', '2022-01-06 15:11:16'),
(65, 15, 'Mainuddin ( Mirpur Hub )', 'mainuddin6246@gmail.com', '01792897385', 'Mirpur  Hub Manager', '$2y$10$.DHn.vy3uwWgBCAeasaz5eNbsMZt1NMfxWZDfd2dN8VGFHmA0GXHC', NULL, 'uploads/deliveryman/1641654957IMG-20211102-WA0009.jpg', 0, 1, 1, '2022-01-08 21:15:57', '2022-01-08 21:15:57'),
(66, 15, 'Sohel', 'mainuddin@zuri.express', '01782049451', 'Mirpur', '$2y$10$EVTw1Bag3XWUGBQMztKJYuapKX/gSfnEXHrybcan/bovl.pL8Y0ga', NULL, 'uploads/deliveryman/1642658771IMG-20211102-WA0009.jpg', 0, 1, 0, '2022-01-20 12:06:11', '2022-02-15 12:22:23'),
(69, 15, 'Salekin', 'mainuddin@zuri.com', '01980881000', 'Mirpur pickup', '$2y$10$xNBWVY5u.B2P6.XQVOepzeEhlw0G7itrpDxDvOOG6ekeaf2y1Giz2', NULL, 'uploads/deliveryman/1642665450IMG-20211102-WA0009.jpg', 0, 1, 0, '2022-01-20 13:57:30', '2022-03-30 17:50:35'),
(70, 15, 'Kamruzzaman', 'kamruzzamanmd979@gmail.com', '01793105912', 'Mirpur', '$2y$10$Q9Ecg8xOkoXqLeS9si3glOtTMs3DafOJLrBFk/JuqdNmn0UF5l5jS', NULL, 'uploads/deliveryman/1642998989IMG-20211102-WA0009.jpg', 0, 1, 1, '2022-01-24 10:36:29', '2022-01-24 10:36:29'),
(71, 15, 'Jakaria', 'mainuddin2@zuri.com', '01310484590', 'Mirpur', '$2y$10$5FdsD7Kd4rcDyapL8OT2P.kRPHOlrjDrEZlXhALdjhzFjFoLa3Tim', NULL, 'uploads/deliveryman/1642999077IMG-20211102-WA0009.jpg', 0, 1, 1, '2022-01-24 10:37:57', '2022-01-24 10:37:57'),
(72, 15, 'Hasan', 'lufaynao@gmail.com', '01861671044', 'uttora', '$2y$10$nImisg9HEojgW3o2MsRjuO7LQvLA8FqqOV1na.1dRfc9sSbfQMpZq', NULL, 'uploads/deliveryman/1643172293IMG-20211102-WA0009.jpg', 0, 1, 0, '2022-01-26 10:44:53', '2022-04-08 16:39:23'),
(73, 15, 'Masum billah', 'masumbabu36@gmail.com', '01765309890', 'Mirpur rider', '$2y$10$OMjALjUSHYqQvHJxnI8sW.cwYl0TkcZSK3gq/UryI9W95seyEvPHa', NULL, 'uploads/deliveryman/1644404730zuri-logo-removebg-preview.png', 0, 1, 1, '2022-02-09 17:05:30', '2022-02-09 17:05:30'),
(75, 15, 'Mamun', 'mamun@gmail.com', '01940117882', 'Rider', '$2y$10$DH1Hdw7h6hEbz5jh9Q5fTuR0.Bj/jZZUmfs.tquvpsOb3P4vQNvJG', NULL, 'uploads/deliveryman/1647341945Screenshot (2).png', 0, 1, 1, '2022-03-15 16:59:05', '2022-03-15 16:59:05'),
(76, 15, 'Sohanur Rahman', 'mainuddin@zuri.expressn', '01319638109', 'mirpur', '$2y$10$Ar.RSBQ0DT49/m93prwXmOaBWcGQ2DYPa06yNdABQ3MA3tchlV23K', NULL, 'uploads/deliveryman/1648363651Screenshot (3).png', 0, 1, 1, '2022-03-27 12:47:32', '2022-03-27 12:47:32'),
(77, 15, 'Sagor', 'mainuddin2@zuri.express', '01759518803', 'mirpur', '$2y$10$aX7BNfqx0a1Ab8xL/2yw4egGPI1wIFQeM8kp.xa51J7YZP2irIKi6', NULL, 'uploads/deliveryman/1648621172275112845_136611058877421_7614987956360408207_n.png', 0, 1, 1, '2022-03-30 12:19:32', '2022-03-30 12:19:32'),
(78, 15, 'Md Mujahid', 'mainuddin3@zuri.express', '01742035844', 'mirpur', '$2y$10$U3mNgdFLrwjVG2nzBw4SeehbPFYxfkl.1tKWyDWhMG3nQZ3Owyo8y', NULL, 'uploads/deliveryman/1648882257275112845_136611058877421_7614987956360408207_n.png', 0, 1, 1, '2022-04-02 12:50:57', '2022-04-02 12:50:57'),
(79, 15, 'Jihad Hasan', 'mainuddin4@zuri.express', '01784027490', 'mirpur', '$2y$10$SlKVicu8Iy/pNDedKd20i.mX4HrCwwLA90zNfV3yiq9r5Ck76rT6a', NULL, 'uploads/deliveryman/1649135713275112845_136611058877421_7614987956360408207_n.png', 0, 1, 1, '2022-04-05 11:15:13', '2022-04-05 11:15:13'),
(80, 15, 'Rajon', 'mainuddin5@zuri.express', '01798096899', 'mirpur', '$2y$10$g5xKJEqBuCaHp29VE.g0Hu67Q38xCAHIiH4LXBpc5eRKXfrU6jsY2', NULL, 'uploads/deliveryman/1649136560275112845_136611058877421_7614987956360408207_n.png', 0, 1, 1, '2022-04-05 11:29:20', '2022-04-05 11:29:20'),
(81, 15, 'Nafiz Islam', 'mainuddin6@zuri.express', '01617070244', 'Mirpur', '$2y$10$7jr/swuCdHbjTQ08CvA2EuDokIVmQeJA4s0r9m.1anmoikfUbAcAy', NULL, 'uploads/deliveryman/1649414254275112845_136611058877421_7614987956360408207_n.png', 0, 1, 1, '2022-04-08 16:37:34', '2022-04-08 16:37:34'),
(82, 15, 'test rider', 'rider@yahoo.com', '098383838', 'Rider', '$2y$10$cAEw8jSdp0LsuFgjiNTPJezMTiDQmKrCTsZKaGk82LNI/VH2brR8i', NULL, 'uploads/deliveryman/1661397682WhatsApp Image 2022-08-21 at 1.18.11 PM.jpeg', 0, 1, 1, '2022-08-25 02:21:22', '2022-08-25 02:21:22'),
(83, 15, 'Md Hafiz Al Foisal', 'quicktech.foisal@gmail.com', '+8801756232223', 'web develop[er', '$2y$10$ndaky6VorlCIWfOUrH7gfeGnObcD0zY99mA5sZUrQ9XR8.CGoTWU6', NULL, 'uploads/deliveryman/1663049313screenshot.png', 122, 1, 1, '2022-09-13 01:08:33', '2022-09-13 01:08:33'),
(84, 15, 'Martins', 'martins@zidrop.com', '09160561841', 'Rider', '$2y$10$ABLPrU0LD8AxZSLRtBdhi.hYmm178sjOqu4AQOij.NPXQitV8qrKu', NULL, 'uploads/deliveryman/1663494832WhatsApp Image 2022-09-18 at 12.38.21 AM.jpeg', 0, 1, 1, '2022-09-18 08:53:52', '2022-09-18 08:53:52'),
(85, 15, 'Basil', 'basil@zidrop.com', '09064905218', 'Rider', '$2y$10$.duGx417IbAtdMxs/gVN9egk0igbBs0leBvKLkvEhOcmgBOowpeca', NULL, 'uploads/deliveryman/1663494930WhatsApp Image 2022-09-18 at 10.52.14 AM.jpeg', 0, 1, 1, '2022-09-18 08:55:30', '2022-09-18 08:55:30'),
(86, 15, 'for app', 'apps.quicktech@gmail.com', '01955249001', 'pickup man', '$2y$10$75Goxzlxh.pUbPqsTUGG4ONbZnfN/B9O/.UcTQ5hNZVJOEB1PrAGG', NULL, 'uploads/deliveryman/1663501701Logo-For-Quick-LMS-2.png', 20, 1, 1, '2022-09-18 10:48:21', '2022-09-18 10:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'IT', 1, '2020-08-09 15:36:00', '2021-01-03 09:09:25'),
(2, 'Management', 1, '2020-12-28 17:55:28', '2021-06-26 19:02:14'),
(3, 'Agent', 1, '2021-01-07 22:29:30', '2021-07-06 01:02:27'),
(4, 'Delivery', 1, '2021-01-07 22:29:49', '2021-01-08 07:44:25'),
(5, 'Account', 1, '2021-01-07 22:30:12', '2021-01-07 22:30:40'),
(6, 'Merketing', 1, '2021-01-07 22:31:10', '2021-09-11 14:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `disclamers`
--

CREATE TABLE `disclamers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disclamers`
--

INSERT INTO `disclamers` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'DISCLAIMER: Don\'t pay into individual account for our services. \r\nPAY TO: 1225450780 | ZIDROP LOGISTICS | ZENITH BANK.\r\nCall 08076909835 for more information.', '2022-08-24 04:22:38', '2022-09-07 12:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `areatype` int NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `areatype`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mirpur', 1, 1, '2021-02-09 10:45:56', '2021-02-09 10:45:56'),
(2, 'New Market', 1, 1, '2021-02-09 10:46:27', '2021-02-09 10:46:27'),
(3, 'Sylhet Metro', 2, 1, '2021-02-09 10:46:47', '2021-02-09 10:46:47'),
(4, 'Rangpur Metro', 2, 1, '2021-02-09 10:47:08', '2021-02-09 10:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `department` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public/avatar/avatar.png',
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `subtitle`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', 'At Eparcel  We\'ll Take The Cash From Your Customer.', 'Our Trusted Delivery Man Will Deliver Your Parcel To Your Customer & Collect The Money. And Then We Will Pay You Your Money, Along With Our Various Payment Methods.', 1, '2021-02-09 07:55:41', '2021-02-09 07:55:41'),
(2, 'Daily Pick up, No limitations', 'You Can Request For Pickup Anytime.', 'Our Trusted Pickup Rider Will Visit Your Location & Pickup Your Parcels.You Can Give Any Amount Of Parcels And Eparcel Give You The Opportunity Of Unlimited Pickup.', 1, '2021-02-09 07:57:27', '2021-02-09 07:57:27'),
(3, 'Faster Payment Service', 'Our Payment Services Are Very Faster And Secure Payment Service.', 'At Eparcel  You Can Request For Your Payment Every Six Days Of The Week. We Are Providing Multiple Payment Methods. Such As Cash,Bkash & Bank Transfer.', 1, '2021-02-09 07:58:18', '2021-02-09 07:58:18'),
(4, 'Real Time Tracking', 'Eparcel Provides An Unique Tracking Code For Your Every Parcel.', 'Through Our Website, You Can See The Current Status Of The Products And Stay Up To Date.', 1, '2021-02-09 07:58:56', '2021-02-09 07:58:56'),
(5, 'Advanced Customer Service', 'Our Call Center Executives Are Always Available 24/7 To Help You With Your Problems.', 'They Are Fast, Well Trained, Reliable And Always Ready To Solve Your Problems. You Will Also Can Contact Us On Our Facebook Page As Well. Our Facebook Page Admins Are Always Active To Give You Feedbacks.', 1, '2021-02-09 07:59:29', '2021-02-09 07:59:29'),
(6, 'Online Management', 'Our Online Management System Are Very Well & Easy.', 'We Will Provide You A Dashboard. You Can View Your User Dashboard To Stay Updated. Whether It’s About A Parcel Or Payment, You Can Get All Of Your Information With Just Simple Clicks.', 1, '2021-02-09 08:00:09', '2021-02-09 08:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `subtitle`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Next Day Delivery Inside Lagos', 'We are delivering inside every city of Lagos next day.', 'fa-bicycle', 1, '2021-08-21 00:10:52', '2022-08-30 20:45:12'),
(3, 'Delivery  Lagos Suburb', 'We are delivering in suburbs with in 48 hours.', 'fa-motorcycle', 1, '2021-08-21 03:36:51', '2022-08-30 20:46:31'),
(4, 'Same Day Delivery Inside Lagos', 'We provide same day delivery within Lagos cities. Pickup request has to be made before 9 AM.', 'fa-bicycle', 1, '2021-08-21 04:02:56', '2022-08-30 20:48:36'),
(5, 'Delivery Outside Lagos', 'We are working on delivering all over Nigeria. Updates will be made when new States are added. Watch Out!', 'fa-truck', 1, '2021-08-21 04:29:44', '2022-08-30 20:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Additions', 'uploads/gallery/WhatsApp Image 2022-09-04 at 8.21.55 AM.jpeg', 1, '2021-02-15 13:09:27', '2022-09-04 06:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int NOT NULL,
  `name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `done_by` varchar(200) DEFAULT NULL,
  `date` varchar(100) DEFAULT 'Pending',
  `note` text,
  `status` varchar(100) DEFAULT NULL,
  `parcel_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `name`, `done_by`, `date`, `note`, `status`, `parcel_id`, `created_at`, `updated_at`) VALUES
(1, 'Chuks Bright', 'Zidrop', '2022-08-23 14:11:22', 'Successfully Delivered', 'In Transit', 4, '2022-08-24 16:06:59', '2022-08-24 16:06:59'),
(2, 'Chuks Bright', 'Zidrop', '2022-08-24 18:08:09', 'Successfully Delivered', 'Delivered', 4, '2022-08-24 16:08:10', '2022-08-24 16:08:10'),
(3, 'Customer: Chuks Bright<br><b>(Agent: )</b>Abuja Hub (Newton)', 'Zidrop', '2022-08-25 04:16:59', NULL, '', 4, '2022-08-25 02:16:59', '2022-08-25 02:16:59'),
(4, 'Customer: Chuks Bright<br><b>(Deleveryman: )</b>test rider', 'Zidrop', '2022-08-25 08:11:20', NULL, '', 4, '2022-08-25 06:11:20', '2022-08-25 06:11:20'),
(5, 'Customer: Emeka John<br><b>(Deleveryman: )</b>test rider', 'Zidrop', '2022-08-25 08:11:44', NULL, '', 3, '2022-08-25 06:11:44', '2022-08-25 06:11:44'),
(6, 'Chuks Bright', 'test rider', '2022-08-25 11:45:59', 'Successfully Delivered', 'Delivered', 4, '2022-08-25 09:45:59', '2022-08-25 09:45:59'),
(7, 'Chuks Bright', 'Abuja Hub (Newton)', '2022-08-25 22:23:35', NULL, 'Paid', 4, '2022-08-25 20:23:35', '2022-08-25 20:23:35'),
(8, 'Emeka John', 'test rider', '2022-08-25 22:26:18', 'Successfully Delivered', 'Delivered', 3, '2022-08-25 20:26:18', '2022-08-25 20:26:18'),
(9, 'Customer: Emeka John<br><b>(Agent: )</b>Abuja Hub (Newton)', 'Zidrop', '2022-08-25 22:27:55', NULL, '', 3, '2022-08-25 20:27:55', '2022-08-25 20:27:55'),
(10, 'Emeka John', 'Abuja Hub (Newton)', '2022-08-25 22:28:45', NULL, 'Collected amount from DA', 3, '2022-08-25 20:28:45', '2022-08-25 20:28:45'),
(11, 'Customer: sam sam<br><b>(Agent: )</b>Abuja Hub (Newton)', 'Zidrop', '2022-08-28 09:56:25', NULL, '', 5, '2022-08-28 07:56:25', '2022-08-28 07:56:25'),
(12, 'sam sam', 'Abuja Hub (Newton)', '2022-08-28 09:57:35', NULL, 'DeliveryMan Asign From Agent.', 5, '2022-08-28 07:57:35', '2022-08-28 07:57:35'),
(13, 'sam sam', 'test rider', '2022-08-28 10:01:18', 'Successfully Delivered', 'Delivered', 5, '2022-08-28 08:01:18', '2022-08-28 08:01:18'),
(14, 'sam sam', 'Abuja Hub (Newton)', '2022-08-28 10:01:46', NULL, 'Collected amount from DA', 5, '2022-08-28 08:01:46', '2022-08-28 08:01:46'),
(15, 'sam sam', 'Abuja Hub (Newton)', '2022-08-28 10:02:56', NULL, 'Paid', 5, '2022-08-28 08:02:56', '2022-08-28 08:02:56'),
(16, 'Emeka John', 'Abuja Hub (Newton)', '2022-09-01 17:49:32', NULL, 'Paid', 3, '2022-09-01 15:49:32', '2022-09-01 15:49:32'),
(17, 'Customer: UcheJoe<br><b>(Agent: )</b>Abuja Hub (Newton)', 'Zidrop', '2022-09-01 17:59:34', NULL, '', 6, '2022-09-01 15:59:34', '2022-09-01 15:59:34'),
(18, 'UcheJoe', 'Zidrop', '2022-09-01 18:00:34', 'In Transit To Delivery Facility', 'Picked', 6, '2022-09-01 16:00:35', '2022-09-01 16:00:35'),
(19, 'UcheJoe', 'Abuja Hub (Newton)', '2022-09-01 18:01:36', NULL, 'DeliveryMan Asign From Agent.', 6, '2022-09-01 16:01:36', '2022-09-01 16:01:36'),
(20, 'UcheJoe', 'test rider', '2022-09-01 18:02:42', 'Wrong Product! return Pending!', 'Return To Merchant', 6, '2022-09-01 16:02:42', '2022-09-01 16:02:42'),
(21, 'UcheJoe', 'Abuja Hub (Newton)', '2022-09-01 18:05:00', NULL, 'Cancelled', 6, '2022-09-01 16:05:00', '2022-09-01 16:05:00'),
(22, 'Customer: John Mike<br><b>(Agent: )</b>Abuja Hub (Newton)', 'Zidrop', '2022-09-01 19:16:11', NULL, '', 8, '2022-09-01 17:16:11', '2022-09-01 17:16:11'),
(23, 'John Mike', 'Zidrop', '2022-09-01 19:16:44', 'In Transit To Delivery Facility', 'Picked', 8, '2022-09-01 17:16:45', '2022-09-01 17:16:45'),
(24, 'Customer: Cj Ume<br><b>(Agent: )</b>Abuja Hub (Newton)', 'Zidrop', '2022-09-01 19:16:53', NULL, '', 7, '2022-09-01 17:16:53', '2022-09-01 17:16:53'),
(25, 'Cj Ume', 'Zidrop', '2022-09-01 19:17:07', 'In Transit To Delivery Facility', 'Picked', 7, '2022-09-01 17:17:07', '2022-09-01 17:17:07'),
(26, 'John Mike', 'Abuja Hub (Newton)', '2022-09-01 19:17:40', NULL, 'DeliveryMan Asign From Agent.', 8, '2022-09-01 17:17:40', '2022-09-01 17:17:40'),
(27, 'Cj Ume', 'Abuja Hub (Newton)', '2022-09-01 19:17:48', NULL, 'DeliveryMan Asign From Agent.', 7, '2022-09-01 17:17:48', '2022-09-01 17:17:48'),
(28, 'John Mike', 'Abuja Hub (Newton)', '2022-09-01 19:18:34', NULL, 'Awaiting', 8, '2022-09-01 17:18:34', '2022-09-01 17:18:34'),
(29, 'Cj Ume', 'Abuja Hub (Newton)', '2022-09-01 19:19:30', NULL, 'Awaiting', 7, '2022-09-01 17:19:30', '2022-09-01 17:19:30'),
(30, 'John Mike', 'test rider', '2022-09-01 19:21:01', NULL, 'Partial Delivery', 8, '2022-09-01 17:21:01', '2022-09-01 17:21:01'),
(31, 'John Mike', 'Zidrop', '2022-09-01 19:30:32', NULL, 'Partial Delivery', 8, '2022-09-01 17:30:33', '2022-09-01 17:30:33'),
(32, 'John Mike', 'Zidrop', '2022-09-01 19:30:32', 'Partially Delivered', 'Partial Delivery', 8, '2022-09-01 17:34:09', '2022-09-01 17:34:09'),
(33, 'John Mike', 'Abuja Hub (Newton)', '2022-09-01 19:47:33', NULL, 'Paid', 8, '2022-09-01 17:47:33', '2022-09-01 17:47:33'),
(34, 'Cj Ume', 'Abuja Hub (Newton)', '2022-09-01 20:38:38', NULL, 'Return To Merchant', 7, '2022-09-01 18:38:39', '2022-09-01 18:38:39'),
(35, 'Cj Ume', 'Zidrop', '2022-09-01 20:39:52', 'Parcel returned to Merchant', 'Cancelled', 7, '2022-09-01 18:39:52', '2022-09-01 18:39:52'),
(36, 'UcheJoe', 'Zidrop', '2022-09-02 06:34:51', NULL, 'Paid', 6, '2022-09-02 04:34:51', '2022-09-02 04:34:51'),
(37, 'Cj Ume', 'Zidrop', '2022-09-02 06:35:16', 'Parcel returned to Merchant', 'Return To Merchant', 7, '2022-09-02 04:35:16', '2022-09-02 04:35:16'),
(38, 'Customer: Mark Jay<br><b>(Agent: )</b>Abuja Hub (Newton)', 'Zidrop', '2022-09-02 06:37:51', NULL, '', 9, '2022-09-02 04:37:51', '2022-09-02 04:37:51'),
(39, 'Mark Jay', 'Zidrop', '2022-09-02 06:38:17', 'In Transit To Delivery Facility', 'Picked', 9, '2022-09-02 04:38:19', '2022-09-02 04:38:19'),
(40, 'Mark Jay', 'Abuja Hub (Newton)', '2022-09-02 06:41:42', NULL, 'DeliveryMan Asign From Agent.', 9, '2022-09-02 04:41:42', '2022-09-02 04:41:42'),
(41, 'Mark Jay', 'Abuja Hub (Newton)', '2022-09-02 06:42:17', NULL, 'Awaiting', 9, '2022-09-02 04:42:17', '2022-09-02 04:42:17'),
(42, 'Mark Jay', 'test rider', '2022-09-02 06:43:44', 'Customer Not Available in This Address', 'Return To Hub', 9, '2022-09-02 04:43:44', '2022-09-02 04:43:44'),
(43, 'Mark Jay', 'Zidrop', '2022-09-02 06:46:29', 'Parcel returned to Merchant', 'Return To Merchant', 9, '2022-09-02 04:46:29', '2022-09-02 04:46:29'),
(44, 'Customer: Mr. Alexgender Flex<br><b>(Agent: )</b>Md Hafiz Al Foisal', 'superadmin', '2022-09-13 05:50:53', NULL, '', 2, '2022-09-12 23:50:53', '2022-09-12 23:50:53'),
(45, 'Customer: Cj Ume<br><b>(Agent: )</b>Md Hafiz Al Foisal', 'superadmin', '2022-09-13 05:57:49', 'agent change', '', 7, '2022-09-12 23:57:49', '2022-09-12 23:57:49'),
(46, 'Cj Ume', 'superadmin', '2022-09-13 06:00:58', NULL, 'Return To Hub', 7, '2022-09-13 00:00:58', '2022-09-13 00:00:58'),
(47, 'Cj Ume', 'Md Hafiz Al Foisal', '2022-09-13 06:18:14', 'note from agent', 'Return To Merchant', 7, '2022-09-13 00:18:14', '2022-09-13 00:18:14'),
(48, 'Cj Ume', 'Md Hafiz Al Foisal', '2022-09-13 06:19:46', 'note from agent', 'Cancelled', 7, '2022-09-13 00:19:46', '2022-09-13 00:19:46'),
(49, 'Customer: Mark Jay<br><b>(Deleveryman: )</b>Md Hafiz Al Foisal', 'superadmin', '2022-09-13 07:09:51', 'rider change', '', 9, '2022-09-13 01:09:52', '2022-09-13 01:09:52'),
(50, 'Md Hafiz Al Foisal', 'superadmin', '2022-09-13 08:26:02', 'Return Pending', 'Cancelled', 10, '2022-09-13 02:26:02', '2022-09-13 02:26:02'),
(51, 'Md Hafiz Al Foisal', 'superadmin', '2022-09-13 08:31:50', NULL, 'Awaiting', 10, '2022-09-13 02:31:50', '2022-09-13 02:31:50'),
(52, 'Md Hafiz Al Foisal', 'superadmin', '2022-09-13 08:32:34', NULL, 'Cancelled', 10, '2022-09-13 02:32:34', '2022-09-13 02:32:34'),
(53, 'Md Hafiz Al Foisal', 'superadmin', '2022-09-13 08:34:58', NULL, 'Picked', 10, '2022-09-13 02:34:58', '2022-09-13 02:34:58'),
(54, 'Md Hafiz Al Foisal', 'superadmin', '2022-09-13 08:35:13', NULL, 'Cancelled', 10, '2022-09-13 02:35:13', '2022-09-13 02:35:13'),
(55, 'Customer: sub1<br><b>(Created By: )</b>superadmin', 'superadmin', '2022-09-13 13:28:45', 'bc', 'Parcel Created By superadmin', NULL, '2022-09-13 07:28:45', '2022-09-13 07:28:45'),
(56, 'Customer: Joe Umeh<br><b>(Agent: )</b>Abuja HUB (Newton)', 'Zidrop', '2022-09-13 23:20:18', NULL, '', 16, '2022-09-13 21:20:18', '2022-09-13 21:20:18'),
(57, 'Joe Umeh', 'Zidrop', '2022-09-13 23:20:39', 'In Transit To Delivery Facility', 'Picked', 16, '2022-09-13 21:20:40', '2022-09-13 21:20:40'),
(58, 'Customer: Joe Umeh<br><b>(Agent: )</b>Newton', 'Zidrop', '2022-09-13 23:31:34', NULL, '', 16, '2022-09-13 21:31:34', '2022-09-13 21:31:34'),
(59, 'Joe Umeh', 'Newton', '2022-09-13 23:32:02', NULL, 'Delivered', 16, '2022-09-13 21:32:02', '2022-09-13 21:32:02'),
(60, 'Joe Umeh', 'Zidrop', '2022-09-13 23:36:20', NULL, 'Paid', 16, '2022-09-13 21:36:20', '2022-09-13 21:36:20'),
(61, 'Newton', 'Zidrop', '2022-09-14 14:10:37', 'Successfully Delivered', 'Delivered', 18, '2022-09-14 12:10:38', '2022-09-14 12:10:38'),
(62, 'Customer: Prince<br><b>(Agent: )</b>Newton', 'Zidrop', '2022-09-14 19:27:44', NULL, '', 19, '2022-09-14 17:27:44', '2022-09-14 17:27:44'),
(63, 'Prince', 'Newton', '2022-09-14 19:29:37', NULL, 'DeliveryMan Asign From Agent.', 19, '2022-09-14 17:29:37', '2022-09-14 17:29:37'),
(64, 'Prince', 'Zidrop', '2022-09-14 19:32:43', 'In Transit To Delivery Facility', 'Picked', 19, '2022-09-14 17:32:43', '2022-09-14 17:32:43'),
(65, 'Prince', 'Zidrop', '2022-09-14 23:04:08', 'Successfully Delivered', 'Delivered', 19, '2022-09-14 21:04:08', '2022-09-14 21:04:08'),
(66, 'AKEEM ADIGUN', 'Zidrop', '2022-09-16 11:00:27', 'Item is a pair of shoe size 44. Please call the customer before leaving. Thanks.', 'Parcel Edited By Zidrop', 21, '2022-09-16 09:00:27', '2022-09-16 09:00:27'),
(67, 'Customer: Paul James<br><b>(Deleveryman: )</b>test rider', 'Zidrop', '2022-09-16 11:25:01', NULL, '', 20, '2022-09-16 09:25:01', '2022-09-16 09:25:01'),
(68, 'Customer: Paul James<br><b>(Agent: )</b>Newton', 'Zidrop', '2022-09-16 11:25:51', NULL, '', 20, '2022-09-16 09:25:51', '2022-09-16 09:25:51'),
(69, 'Customer: test test<br><b>(Agent: )</b>Newton', 'Zidrop', '2022-09-16 11:29:58', NULL, '', 22, '2022-09-16 09:29:58', '2022-09-16 09:29:58'),
(70, 'Customer: AKEEM ADIGUN<br><b>(Agent: )</b>Newton', 'Zidrop', '2022-09-16 19:18:30', NULL, '', 26, '2022-09-16 17:18:30', '2022-09-16 17:18:30'),
(71, 'AKEEM ADIGUN', 'Newton', '2022-09-16 19:19:46', NULL, 'DeliveryMan Asign From Agent.', 26, '2022-09-16 17:19:46', '2022-09-16 17:19:46'),
(72, 'Customer: Md Rashedul Islam<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-18 03:04:17', 'Note', 'Parcel Created By Zidrop', NULL, '2022-09-18 01:04:17', '2022-09-18 01:04:17'),
(73, 'Customer: Newton<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-18 06:46:53', 'A pair of shoe', 'Parcel Created By Zidrop', NULL, '2022-09-18 04:46:53', '2022-09-18 04:46:53'),
(74, 'Customer: Emma Lag<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-18 06:54:53', 'Jean', 'Parcel Created By Zidrop', NULL, '2022-09-18 04:54:53', '2022-09-18 04:54:53'),
(75, 'Customer: Emma Lag<br><b>(Deleveryman: )</b>Basil', 'Zidrop', '2022-09-18 10:57:44', NULL, '', 30, '2022-09-18 08:57:44', '2022-09-18 08:57:44'),
(76, 'Emma Lag', 'Basil', '2022-09-18 10:59:39', 'The Customer will take this parcel tomorrow.', 'Hold', 30, '2022-09-18 08:59:39', '2022-09-18 08:59:39'),
(77, 'Customer: Newton<br><b>(Agent: )</b>Newton', 'Zidrop', '2022-09-18 11:04:01', NULL, '', 29, '2022-09-18 09:04:01', '2022-09-18 09:04:01'),
(78, 'Newton', 'Newton', '2022-09-18 11:05:20', NULL, 'Picked', 29, '2022-09-18 09:05:20', '2022-09-18 09:05:20'),
(79, 'Customer: Newton<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-18 13:12:12', 'hsshsh', 'Parcel Created By Zidrop', NULL, '2022-09-18 11:12:12', '2022-09-18 11:12:12'),
(80, 'Newton', 'Zidrop', '2022-09-18 13:14:23', 'hsshsh', 'Parcel Edited By Zidrop', 31, '2022-09-18 11:14:23', '2022-09-18 11:14:23'),
(81, 'Customer: Peter Michael<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-18 18:04:16', '1 Slide size 45', 'Parcel Created By Zidrop', NULL, '2022-09-18 16:04:16', '2022-09-18 16:04:16'),
(82, 'Customer: Peter Michael<br><b>(Deleveryman: )</b>Martins', 'Zidrop', '2022-09-18 18:07:47', NULL, '', 32, '2022-09-18 16:07:47', '2022-09-18 16:07:47'),
(83, 'Peter Michael', 'Zidrop', '2022-09-18 18:08:43', 'The Customer will take this parcel tomorrow.', 'Awaiting', 32, '2022-09-18 16:08:44', '2022-09-18 16:08:44'),
(84, 'AKEEM ADIGUN', 'Zidrop', '2022-09-18 18:15:00', 'Item is a pair of shoe size 44.', 'Parcel Edited By Zidrop', 21, '2022-09-18 16:15:00', '2022-09-18 16:15:00'),
(85, 'Customer: Newton test<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-18 18:18:08', 'oooso', 'Parcel Created By Zidrop', NULL, '2022-09-18 16:18:08', '2022-09-18 16:18:08'),
(86, 'Customer: Newton test<br><b>(Agent: )</b>Newton', 'Zidrop', '2022-09-18 19:19:27', NULL, '', 33, '2022-09-18 17:19:27', '2022-09-18 17:19:27'),
(87, 'Customer: Peter Michael<br><b>(Agent: )</b>Newton', 'Zidrop', '2022-09-18 22:31:20', NULL, '', 32, '2022-09-18 20:31:20', '2022-09-18 20:31:20'),
(88, 'Customer: AKEEM ADIGUN<br><b>(Deleveryman: )</b>test rider', 'Zidrop', '2022-09-18 22:47:14', NULL, '', 21, '2022-09-18 20:47:14', '2022-09-18 20:47:14'),
(89, 'Customer: AKEEM ADIGUN<br><b>(Deleveryman: )</b>Basil', 'Zidrop', '2022-09-19 03:10:57', NULL, '', 21, '2022-09-19 01:10:57', '2022-09-19 01:10:57'),
(90, 'Customer: Hamed Eletu<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 09:20:59', 'Sneakers 44', 'Parcel Created By Zidrop', NULL, '2022-09-19 07:20:59', '2022-09-19 07:20:59'),
(91, 'Customer: Hamed Eletu<br><b>(Deleveryman: )</b>Basil', 'Zidrop', '2022-09-19 09:21:23', NULL, '', 34, '2022-09-19 07:21:23', '2022-09-19 07:21:23'),
(92, 'Hamed Eletu', 'Zidrop', '2022-09-19 09:24:06', 'On the way to deliver!', 'Awaiting', 34, '2022-09-19 07:24:07', '2022-09-19 07:24:07'),
(93, 'Peter Michael', 'Zidrop', '2022-09-18 22:31:20', 'On the way to deliver!', 'Awaiting', 32, '2022-09-19 07:24:21', '2022-09-19 07:24:21'),
(94, 'Customer: Adophus Peter<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 11:02:57', 'sneakers 44', 'Parcel Created By Zidrop', NULL, '2022-09-19 09:02:57', '2022-09-19 09:02:57'),
(95, 'Customer: Osakwe Ugichukwu<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 11:05:32', '3 slippers', 'Parcel Created By Zidrop', NULL, '2022-09-19 09:05:32', '2022-09-19 09:05:32'),
(96, 'Customer: Dele Bisiriyu<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 11:07:43', '2 slides', 'Parcel Created By Zidrop', NULL, '2022-09-19 09:07:43', '2022-09-19 09:07:43'),
(97, 'Customer: Ozimi Onome<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 11:10:10', '2 belts', 'Parcel Created By Zidrop', NULL, '2022-09-19 09:10:10', '2022-09-19 09:10:10'),
(98, 'Customer: Akano Lateef<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 11:14:16', '1 Sneakers', 'Parcel Created By Zidrop', NULL, '2022-09-19 09:14:16', '2022-09-19 09:14:16'),
(99, 'Customer: Moses Olatuji<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 11:21:30', 'sneakers 44', 'Parcel Created By Zidrop', NULL, '2022-09-19 09:21:30', '2022-09-19 09:21:30'),
(100, 'Customer: Olayiwola Buhari<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 11:56:56', '1 Sneakers size 45', 'Parcel Created By Zidrop', NULL, '2022-09-19 09:56:56', '2022-09-19 09:56:56'),
(101, 'Customer: Anthony Oneya<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 12:11:21', '1 Jersey xxxl and 1 Slide 45', 'Parcel Created By Zidrop', NULL, '2022-09-19 10:11:21', '2022-09-19 10:11:21'),
(102, 'Customer: Michael Abams<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 12:16:55', 'Nike Tracksuit  size L', 'Parcel Created By Zidrop', NULL, '2022-09-19 10:16:55', '2022-09-19 10:16:55'),
(103, 'Dele Bisiriyu', 'Zidrop', '2022-09-19 12:59:42', 'Cancel by Customer', 'Cancelled', 37, '2022-09-19 10:59:42', '2022-09-19 10:59:42'),
(104, 'Customer: Bakere Sakiru<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 13:17:13', 'Tracksuit XL', 'Parcel Created By Zidrop', NULL, '2022-09-19 11:17:13', '2022-09-19 11:17:13'),
(105, 'Customer: Bakere Sakiru<br><b>(Deleveryman: )</b>Martins', 'Zidrop', '2022-09-19 13:17:46', NULL, '', 44, '2022-09-19 11:17:46', '2022-09-19 11:17:46'),
(106, 'Customer: Ejike Nwodo<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-19 13:33:06', 'Denin shirt', 'Parcel Created By Zidrop', NULL, '2022-09-19 11:33:06', '2022-09-19 11:33:06'),
(107, 'Customer: Ejike Nwodo<br><b>(Deleveryman: )</b>Martins', 'Zidrop', '2022-09-19 13:33:36', NULL, '', 45, '2022-09-19 11:33:36', '2022-09-19 11:33:36'),
(108, 'Osakwe Ugochukwu', 'Zidrop', '2022-09-19 13:35:45', '3 slippers', 'Parcel Edited By Zidrop', 36, '2022-09-19 11:35:45', '2022-09-19 11:35:45'),
(109, 'Ejike Nwodo', 'Zidrop', '2022-09-19 15:14:31', 'Successfully Delivered', 'Delivered', 45, '2022-09-19 13:14:32', '2022-09-19 13:14:32'),
(110, 'Anthony Oneya', 'Zidrop', '2022-09-19 15:44:18', 'Successfully Delivered', 'Delivered', 42, '2022-09-19 13:44:19', '2022-09-19 13:44:19'),
(111, 'AKEEM ADIGUN', 'Zidrop', '2022-09-19 21:16:35', 'On the way to deliver!', 'Awaiting', 21, '2022-09-19 19:16:35', '2022-09-19 19:16:35'),
(112, 'Customer: Bakere Sakiru<br><b>(Deleveryman: )</b>test rider', 'Zidrop', '2022-09-20 03:41:32', NULL, '', 44, '2022-09-20 01:41:32', '2022-09-20 01:41:32'),
(113, 'Michael Abams', 'Zidrop', '2022-09-20 07:58:52', 'Customer Mobile Number Switch Off', 'Awaiting', 43, '2022-09-20 05:58:53', '2022-09-20 05:58:53'),
(114, 'Bakere Sakiru', 'Zidrop', '2022-09-20 08:34:20', 'Successfully Delivered', 'Delivered', 44, '2022-09-20 06:34:21', '2022-09-20 06:34:21'),
(115, 'AKEEM ADIGUN', 'Zidrop', '2022-09-20 14:18:40', 'Successfully Delivered', 'Delivered', 21, '2022-09-20 12:18:41', '2022-09-20 12:18:41'),
(116, 'Customer: Newton<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-20 14:33:52', 'jfjf', 'Parcel Created By Zidrop', NULL, '2022-09-20 12:33:52', '2022-09-20 12:33:52'),
(117, 'Newton', 'Zidrop', '2022-09-20 16:58:09', 'On the way to deliver!', 'Awaiting', 47, '2022-09-20 14:58:09', '2022-09-20 14:58:09'),
(118, 'Adophus Peter', 'Zidrop', '2022-09-21 09:18:40', 'Successfully Delivered', 'Delivered', 35, '2022-09-21 07:18:41', '2022-09-21 07:18:41'),
(119, 'Akano Lateef', 'Zidrop', '2022-09-21 09:21:30', 'Successfully Delivered', 'Delivered', 39, '2022-09-21 07:21:30', '2022-09-21 07:21:30'),
(120, 'Hamed Eletu', 'Zidrop', '2022-09-21 09:22:34', 'Cancel by Customer', 'Return To Merchant', 34, '2022-09-21 07:22:34', '2022-09-21 07:22:34'),
(121, 'Osakwe Ugochukwu', 'Zidrop', '2022-09-21 09:24:54', 'Item Did Not Size Customer', 'Return To Merchant', 36, '2022-09-21 07:24:54', '2022-09-21 07:24:54'),
(122, 'Michael Abams', 'Zidrop', '2022-09-21 09:26:35', 'The customer has no money', 'Return To Merchant', 43, '2022-09-21 07:26:35', '2022-09-21 07:26:35'),
(123, 'Olayiwola Buhari', 'Zidrop', '2022-09-21 09:28:04', 'Customer Not Picking Call', 'Awaiting', 41, '2022-09-21 07:28:06', '2022-09-21 07:28:06'),
(124, 'Ozimi Onome', 'Zidrop', '2022-09-21 09:33:12', 'Successfully Delivered', 'Delivered', 38, '2022-09-21 07:33:12', '2022-09-21 07:33:12'),
(125, 'Peter Michael', 'Zidrop', '2022-09-21 09:33:47', 'Customer Not Picking Call', 'Return To Merchant', 32, '2022-09-21 07:33:47', '2022-09-21 07:33:47'),
(126, 'Olayiwola Buhari', 'Zidrop', '2022-09-21 09:28:04', 'Customer Not Picking Call', 'Awaiting', 41, '2022-09-21 07:34:07', '2022-09-21 07:34:07'),
(127, 'Moses Olatuji', 'Zidrop', '2022-09-21 09:36:36', 'Customer Not Picking Call', 'Return To Merchant', 40, '2022-09-21 07:36:36', '2022-09-21 07:36:36'),
(128, 'Olayiwola Buhari', 'Zidrop', '2022-09-21 09:53:40', 'Customer Not Picking Call', 'Return To Merchant', 41, '2022-09-21 07:53:40', '2022-09-21 07:53:40'),
(129, 'Customer: Vincent Dike<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-21 11:42:42', 'Roberto Cavalli 43', 'Parcel Created By Zidrop', NULL, '2022-09-21 09:42:42', '2022-09-21 09:42:42'),
(130, 'Customer: Ken Egbelughe<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-21 11:44:58', 'Roberto Cavalli 42', 'Parcel Created By Zidrop', NULL, '2022-09-21 09:44:58', '2022-09-21 09:44:58'),
(131, 'Ken Egbelughe', 'Zidrop', '2022-09-21 12:11:35', 'Successfully Delivered', 'Delivered', 49, '2022-09-21 10:11:35', '2022-09-21 10:11:35'),
(132, 'Vincent Dike', 'Zidrop', '2022-09-21 12:50:53', 'Successfully Delivered', 'Delivered', 48, '2022-09-21 10:50:53', '2022-09-21 10:50:53'),
(133, 'Customer: Nicholas Drams<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-21 13:27:20', '2 Shoes for Excahnge', 'Parcel Created By Zidrop', NULL, '2022-09-21 11:27:20', '2022-09-21 11:27:20'),
(134, 'Customer: OLA SAMUEL<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-21 13:29:31', '3 PAIRS OF SHOES', 'Parcel Created By Zidrop', NULL, '2022-09-21 11:29:31', '2022-09-21 11:29:31'),
(135, 'Customer: MUSTAPHA YISA<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-21 13:31:23', 'Roberto Cavalli', 'Parcel Created By Zidrop', NULL, '2022-09-21 11:31:23', '2022-09-21 11:31:23'),
(136, 'Customer: TAIWO ADESINA<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-21 13:33:22', 'Roberto Cavalli', 'Parcel Created By Zidrop', NULL, '2022-09-21 11:33:22', '2022-09-21 11:33:22'),
(137, 'Customer: MR FATAI<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-21 13:35:46', 'ZARA', 'Parcel Created By Zidrop', NULL, '2022-09-21 11:35:46', '2022-09-21 11:35:46'),
(138, 'Customer: CHIEF HARRY<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-21 13:39:06', 'JERSEY & SHORT', 'Parcel Created By Zidrop', NULL, '2022-09-21 11:39:06', '2022-09-21 11:39:06'),
(139, 'Customer: BUHARI MANI<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-21 13:42:48', 'TRACKSUIT', 'Parcel Created By Zidrop', NULL, '2022-09-21 11:42:48', '2022-09-21 11:42:48'),
(140, 'CHIEF HARRY', 'Zidrop', '2022-09-21 16:08:19', 'Successfully Delivered', 'Delivered', 55, '2022-09-21 14:08:21', '2022-09-21 14:08:21'),
(141, 'BUHARI MANI', 'Zidrop', '2022-09-21 20:55:00', 'Successfully Delivered', 'Delivered', 56, '2022-09-21 18:55:01', '2022-09-21 18:55:01'),
(142, 'MR FATAI', 'Zidrop', '2022-09-21 20:55:30', 'Successfully Delivered', 'Delivered', 54, '2022-09-21 18:55:30', '2022-09-21 18:55:30'),
(143, 'TAIWO ADESINA', 'Zidrop', '2022-09-21 13:47:03', 'The Customer will take this parcel tomorrow.', 'Awaiting', 53, '2022-09-21 18:56:01', '2022-09-21 18:56:01'),
(144, 'MUSTAPHA YISA', 'Zidrop', '2022-09-21 20:56:21', 'Successfully Delivered', 'Delivered', 52, '2022-09-21 18:56:21', '2022-09-21 18:56:21'),
(145, 'OLA SAMUEL', 'Zidrop', '2022-09-21 20:56:39', 'Successfully Delivered', 'Delivered', 51, '2022-09-21 18:56:39', '2022-09-21 18:56:39'),
(146, 'Nicholas Drams', 'Zidrop', '2022-09-21 20:57:09', 'Successfully Delivered', 'Delivered', 50, '2022-09-21 18:57:10', '2022-09-21 18:57:10'),
(147, 'Customer: Mr Omisore<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-22 12:08:32', 'ZARA', 'Parcel Created By Zidrop', NULL, '2022-09-22 10:08:32', '2022-09-22 10:08:32'),
(148, 'Customer: EBHOGIE DANIEL<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-22 12:11:26', 'TRACKSUIT & DIESEL SNEAKERS', 'Parcel Created By Zidrop', NULL, '2022-09-22 10:11:26', '2022-09-22 10:11:26'),
(149, 'Customer: EMMANUEL MOEMEKE<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-22 12:57:39', 'SNEAKERS SIZE 45', 'Parcel Created By Zidrop', NULL, '2022-09-22 10:57:39', '2022-09-22 10:57:39'),
(150, 'Customer: CHAMBERLIN<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-22 13:01:20', 'Roberto Cavalli & NIKE ZOOM SIZE 44', 'Parcel Created By Zidrop', NULL, '2022-09-22 11:01:20', '2022-09-22 11:01:20'),
(151, 'Customer: TEMITOPE BODUNDE<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-22 13:03:48', '3 PIECES OF POLO L,L,XL', 'Parcel Created By Zidrop', NULL, '2022-09-22 11:03:48', '2022-09-22 11:03:48'),
(152, 'Customer: Roberto Cavalli & NIKE ZOOM<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-22 13:24:08', 'Sneakers size 46', 'Parcel Created By Zidrop', NULL, '2022-09-22 11:24:08', '2022-09-22 11:24:08'),
(153, 'Customer: Ade Israel<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-22 13:28:24', 'Roberto Cavalli 46', 'Parcel Created By Zidrop', NULL, '2022-09-22 11:28:24', '2022-09-22 11:28:24'),
(154, 'Customer: MR ABUBAKAR<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-22 13:51:43', 'POLO XL', 'Parcel Created By Zidrop', NULL, '2022-09-22 11:51:43', '2022-09-22 11:51:43'),
(155, 'Chief Justice', 'Zidrop', '2022-09-22 14:23:27', 'Sneakers size 46', 'Parcel Edited By Zidrop', 62, '2022-09-22 12:23:27', '2022-09-22 12:23:27'),
(156, 'Customer: Peace<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-22 15:36:12', 'A pair of shoe picked up for delivery', 'Parcel Created By Zidrop', NULL, '2022-09-22 13:36:12', '2022-09-22 13:36:12'),
(157, 'MR ABUBAKAR', 'Zidrop', '2022-09-22 16:31:48', 'Successfully Delivered', 'Delivered', 64, '2022-09-22 14:31:49', '2022-09-22 14:31:49'),
(158, 'Mr Omisore', 'Zidrop', '2022-09-22 16:32:39', 'Successfully Delivered', 'Delivered', 57, '2022-09-22 14:32:39', '2022-09-22 14:32:39'),
(159, 'Chief Justice', 'Zidrop', '2022-09-22 20:13:57', 'Partially Delivered', 'Partial Delivery', 62, '2022-09-22 18:13:58', '2022-09-22 18:13:58'),
(160, 'EBHOGIE DANIEL', 'Zidrop', '2022-09-22 20:17:00', 'Successfully Delivered', 'Delivered', 58, '2022-09-22 18:17:01', '2022-09-22 18:17:01'),
(161, 'EMMANUEL MOEMEKE', 'Zidrop', '2022-09-22 20:17:33', 'Successfully Delivered', 'Delivered', 59, '2022-09-22 18:17:33', '2022-09-22 18:17:33'),
(162, 'TAIWO ADESINA', 'Zidrop', '2022-09-22 20:20:44', 'Successfully Delivered', 'Delivered', 53, '2022-09-22 18:20:44', '2022-09-22 18:20:44'),
(163, 'CHAMBERLIN', 'Zidrop', '2022-09-22 21:01:39', 'Successfully Delivered', 'Delivered', 60, '2022-09-22 19:01:40', '2022-09-22 19:01:40'),
(164, 'Ade Israel', 'Zidrop', '2022-09-22 14:20:38', 'The Customer will take this parcel tomorrow.', 'Awaiting', 63, '2022-09-22 20:54:52', '2022-09-22 20:54:52'),
(165, 'TEMITOPE BODUNDE', 'Zidrop', '2022-09-22 22:56:05', '3 PIECES OF POLO L,L,XL', 'Parcel Edited By Zidrop', 61, '2022-09-22 20:56:05', '2022-09-22 20:56:05'),
(166, 'TEMITOPE BODUNDE', 'Zidrop', '2022-09-22 22:56:42', 'Successfully Delivered', 'Delivered', 61, '2022-09-22 20:56:42', '2022-09-22 20:56:42'),
(167, 'TEMITOPE BODUNDE', 'Zidrop', '2022-09-22 22:57:59', '3 PIECES OF POLO L,L,XL', 'Parcel Edited By Zidrop', 61, '2022-09-22 20:57:59', '2022-09-22 20:57:59'),
(168, 'Customer: Peace<br><b>(Deleveryman: )</b>Basil', 'Zidrop', '2022-09-23 12:26:52', NULL, '', 65, '2022-09-23 10:26:52', '2022-09-23 10:26:52'),
(169, 'Customer: MR ABUBAKAR<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 12:33:00', 'Chinos & Polo', 'Parcel Created By Zidrop', NULL, '2022-09-23 10:33:00', '2022-09-23 10:33:00'),
(170, 'Customer: OLAWALE ALEX<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 12:45:24', 'SLIDE 45', 'Parcel Created By Zidrop', NULL, '2022-09-23 10:45:24', '2022-09-23 10:45:24'),
(171, 'Customer: OLUSINA SONEKAN<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 12:47:54', 'SLIDE & SHOE 44', 'Parcel Created By Zidrop', NULL, '2022-09-23 10:47:54', '2022-09-23 10:47:54'),
(172, 'Customer: JONATHAN KAURA<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 12:50:29', 'SHOE 43', 'Parcel Created By Zidrop', NULL, '2022-09-23 10:50:29', '2022-09-23 10:50:29'),
(173, 'Customer: ALUKO ABAYOMI<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 12:55:34', 'SNEAKERS 43', 'Parcel Created By Zidrop', NULL, '2022-09-23 10:55:34', '2022-09-23 10:55:34'),
(174, 'OLAWALE ALEX', 'Zidrop', '2022-09-23 12:57:39', 'Parcel returned to Merchant', 'Cancelled', 67, '2022-09-23 10:57:39', '2022-09-23 10:57:39'),
(175, 'Customer: CHIEF HARRY<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 13:00:11', 'JERSEY', 'Parcel Created By Zidrop', NULL, '2022-09-23 11:00:11', '2022-09-23 11:00:11'),
(176, 'Customer: MICHAEL ASABORO<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 13:03:08', 'SLIDE 44', 'Parcel Created By Zidrop', NULL, '2022-09-23 11:03:08', '2022-09-23 11:03:08'),
(177, 'Customer: ZUBAIRU ELAMAH<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 13:08:47', 'SNEAKERS 45', 'Parcel Created By Zidrop', NULL, '2022-09-23 11:08:47', '2022-09-23 11:08:47'),
(178, 'Customer: EMMAUEL UKPOMHAN<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 13:13:18', 'SNEAKERS 43', 'Parcel Created By Zidrop', NULL, '2022-09-23 11:13:18', '2022-09-23 11:13:18'),
(179, 'Customer: Engr Sam<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 13:58:05', 'Shoes', 'Parcel Created By Zidrop', NULL, '2022-09-23 11:58:05', '2022-09-23 11:58:05'),
(180, 'Customer: WALE AKINFOLARIN<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 14:10:22', 'SNEAKERS 42', 'Parcel Created By Zidrop', NULL, '2022-09-23 12:10:22', '2022-09-23 12:10:22'),
(181, 'Customer: WALE AKINFOLARIN<br><b>(Deleveryman: )</b>Basil', 'Zidrop', '2022-09-23 14:17:31', NULL, '', 76, '2022-09-23 12:17:31', '2022-09-23 12:17:31'),
(182, 'CHIEF HARRY', 'Zidrop', '2022-09-23 16:43:29', 'Successfully Delivered', 'Delivered', 71, '2022-09-23 14:43:30', '2022-09-23 14:43:30'),
(183, 'ALUKO ABAYOMI', 'Zidrop', '2022-09-23 16:43:54', 'Successfully Delivered', 'Delivered', 70, '2022-09-23 14:43:55', '2022-09-23 14:43:55'),
(184, 'JONATHAN KAURA', 'Zidrop', '2022-09-23 16:44:26', 'Successfully Delivered', 'Delivered', 69, '2022-09-23 14:44:26', '2022-09-23 14:44:26'),
(185, 'Customer: JOHNSON ADEYI<br><b>(Created By: )</b>Zidrop', 'Zidrop', '2022-09-23 17:10:27', 'Roberto Cavalli & ZARA 44', 'Parcel Created By Zidrop', NULL, '2022-09-23 15:10:27', '2022-09-23 15:10:27'),
(186, 'Peace', 'Zidrop', '2022-09-23 22:15:48', 'Successfully Delivered', 'Delivered', 65, '2022-09-23 20:15:49', '2022-09-23 20:15:49'),
(187, 'MICHAEL ASABORO', 'Zidrop', '2022-09-23 22:18:25', 'SLIDE 44', 'Parcel Edited By Zidrop', 72, '2022-09-23 20:18:25', '2022-09-23 20:18:25'),
(188, 'MICHAEL ASABORO', 'Zidrop', '2022-09-23 22:19:37', 'SLIDE 44', 'Parcel Edited By Zidrop', 72, '2022-09-23 20:19:37', '2022-09-23 20:19:37'),
(189, 'MICHAEL ASABORO', 'Zidrop', '2022-09-23 22:20:34', 'Successfully Delivered', 'Delivered', 72, '2022-09-23 20:20:34', '2022-09-23 20:20:34'),
(190, 'MICHAEL ASABORO', 'Zidrop', '2022-09-23 22:21:29', 'SLIDE 44', 'Parcel Edited By Zidrop', 72, '2022-09-23 20:21:29', '2022-09-23 20:21:29'),
(191, 'Engr Sam', 'Zidrop', '2022-09-23 14:06:17', 'Customer Not Picking Call', 'Awaiting', 75, '2022-09-23 21:08:12', '2022-09-23 21:08:12'),
(192, 'ZUBAIRU ELAMAH', 'Zidrop', '2022-09-23 14:06:18', 'Customer Not Available in This Address', 'Awaiting', 73, '2022-09-23 21:08:39', '2022-09-23 21:08:39'),
(193, 'OLUSINA SONEKAN', 'Zidrop', '2022-09-23 14:06:18', 'Customer Not Picking Call', 'Awaiting', 68, '2022-09-23 21:09:10', '2022-09-23 21:09:10'),
(194, 'WALE AKINFOLARIN', 'Zidrop', '2022-09-23 23:10:10', 'Successfully Delivered', 'Delivered', 76, '2022-09-23 21:10:10', '2022-09-23 21:10:10'),
(195, 'EMMAUEL UKPOMHAN', 'Zidrop', '2022-09-24 08:03:58', 'Successfully Delivered', 'Delivered', 74, '2022-09-24 06:03:59', '2022-09-24 06:03:59'),
(196, 'test', 'Zidrop', '2022-09-24 08:41:07', 'Successfully Delivered', 'Delivered', 78, '2022-09-24 06:41:08', '2022-09-24 06:41:08'),
(197, 'Customer: JOHNSON ADEYI<br><b>(Deleveryman: )</b>Basil', 'Zidrop', '2022-09-24 10:01:12', NULL, '', 77, '2022-09-24 08:01:12', '2022-09-24 08:01:12'),
(198, 'JOHNSON ADEYI', 'Zidrop', '2022-09-24 10:01:37', 'Successfully Delivered', 'Delivered', 77, '2022-09-24 08:01:37', '2022-09-24 08:01:37'),
(199, 'test', 'Zidrop', '2022-09-24 11:40:04', 'Successfully Delivered', 'Delivered', 79, '2022-09-24 09:40:04', '2022-09-24 09:40:04'),
(200, 'test2', 'Zidrop', '2022-09-24 12:02:06', 'Successfully Delivered', 'Delivered', 81, '2022-09-24 10:02:06', '2022-09-24 10:02:06'),
(201, 'Newton', 'Zidrop', '2022-09-24 12:03:24', 'Successfully Delivered', 'Delivered', 80, '2022-09-24 10:03:24', '2022-09-24 10:03:24'),
(202, 'Contrary to popular', 'superadmin', '2022-09-25 04:13:46', 'Successfully Delivered', 'Delivered', 82, '2022-09-25 02:13:47', '2022-09-25 02:13:47'),
(203, 'Mr. Alexgender Flex', 'superadmin', '2022-09-25 04:16:14', 'Successfully Delivered', 'Delivered', 83, '2022-09-25 02:16:15', '2022-09-25 02:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/logo/294135775_772984620576790_7551507577598885055_n.png', 1, 1, '2020-12-21 10:09:49', '2022-08-17 10:15:10'),
(2, 'uploads/logo/294135775_772984620576790_7551507577598885055_n.png', 1, 1, '2021-11-19 12:59:35', '2022-08-17 10:27:09'),
(3, 'uploads/logo/favicon-zidrop.png', 3, 1, '2022-08-23 19:54:52', '2022-08-23 19:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `merchantcharges`
--

CREATE TABLE `merchantcharges` (
  `id` bigint UNSIGNED NOT NULL,
  `merchantId` int NOT NULL,
  `packageId` int NOT NULL,
  `delivery` int NOT NULL,
  `extradelivery` int NOT NULL,
  `cod` int NOT NULL,
  `codpercent` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merchantcharges`
--

INSERT INTO `merchantcharges` (`id`, `merchantId`, `packageId`, `delivery`, `extradelivery`, `cod`, `codpercent`, `created_at`, `updated_at`) VALUES
(1, 4, 14, 2500, 250, 1, NULL, '2022-09-17 08:31:41', '2022-09-17 08:31:41'),
(2, 4, 15, 1000, 200, 1, NULL, '2022-09-17 08:31:41', '2022-09-17 08:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `merchantpayments`
--

CREATE TABLE `merchantpayments` (
  `id` bigint UNSIGNED NOT NULL,
  `merchantId` int NOT NULL,
  `parcelId` int NOT NULL,
  `done_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merchantpayments`
--

INSERT INTO `merchantpayments` (`id`, `merchantId`, `parcelId`, `done_by`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Zidrop', '2022-08-25 20:40:50', '2022-08-25 20:40:50'),
(2, 2, 2, 'Zidrop', '2022-08-28 08:05:00', '2022-08-28 08:05:00'),
(3, 2, 2, 'Zidrop', '2022-09-01 16:14:38', '2022-09-01 16:14:38'),
(4, 2, 2, 'Zidrop', '2022-09-01 18:34:09', '2022-09-01 18:34:09'),
(5, 2, 2, 'Zidrop', '2022-09-13 21:34:27', '2022-09-13 21:34:27'),
(6, 12, 12, 'Zidrop', '2022-09-20 06:18:25', '2022-09-20 06:18:25'),
(7, 14, 14, 'Zidrop', '2022-09-20 10:31:38', '2022-09-20 10:31:38'),
(8, 13, 13, 'Zidrop', '2022-09-21 07:45:04', '2022-09-21 07:45:04'),
(9, 12, 12, 'Zidrop', '2022-09-22 19:17:19', '2022-09-22 19:17:19'),
(10, 12, 12, 'Zidrop', '2022-09-23 14:45:59', '2022-09-23 14:45:59'),
(11, 13, 13, 'Zidrop', '2022-09-23 20:22:39', '2022-09-23 20:22:39'),
(12, 14, 44, 'Zidrop', '2022-09-24 06:16:06', '2022-09-24 06:16:06'),
(13, 14, 56, 'Zidrop', '2022-09-24 06:16:06', '2022-09-24 06:16:06'),
(14, 14, 58, 'Zidrop', '2022-09-24 06:16:06', '2022-09-24 06:16:06'),
(15, 14, 74, 'Zidrop', '2022-09-24 06:16:06', '2022-09-24 06:16:06'),
(16, 2, 21, 'Zidrop', '2022-09-24 06:41:30', '2022-09-24 06:41:30'),
(17, 2, 78, 'Zidrop', '2022-09-24 06:41:30', '2022-09-24 06:41:30'),
(18, 2, 21, 'Zidrop', '2022-09-24 09:40:22', '2022-09-24 09:40:22'),
(19, 2, 78, 'Zidrop', '2022-09-24 09:40:22', '2022-09-24 09:40:22'),
(20, 2, 79, 'Zidrop', '2022-09-24 09:40:22', '2022-09-24 09:40:22'),
(21, 2, 81, 'Zidrop', '2022-09-24 10:02:29', '2022-09-24 10:02:29'),
(22, 2, 80, 'Zidrop', '2022-09-24 10:04:00', '2022-09-24 10:04:00'),
(23, 2, 81, 'Zidrop', '2022-09-24 10:04:00', '2022-09-24 10:04:00'),
(24, 12, 12, 'Zidrop', '2022-09-24 18:01:20', '2022-09-24 18:01:20'),
(25, 2, 80, 'superadmin', '2022-09-25 02:16:30', '2022-09-25 02:16:30'),
(26, 2, 81, 'superadmin', '2022-09-25 02:16:30', '2022-09-25 02:16:30'),
(27, 2, 82, 'superadmin', '2022-09-25 02:16:30', '2022-09-25 02:16:30'),
(28, 2, 83, 'superadmin', '2022-09-25 02:16:30', '2022-09-25 02:16:30'),
(29, 2, 82, 'superadmin', '2022-09-25 02:35:31', '2022-09-25 02:35:31'),
(30, 2, 83, 'superadmin', '2022-09-25 02:35:31', '2022-09-25 02:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` bigint UNSIGNED NOT NULL,
  `firstName` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickLocation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailAddress` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nearestZone` int DEFAULT NULL,
  `pickupPreference` int DEFAULT NULL,
  `socialLink` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentMethod` tinyint DEFAULT NULL,
  `paymentmode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawal` tinyint DEFAULT NULL,
  `nameOfBank` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankBranch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankAcHolder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankAcNo` varchar(41) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bkashNumber` int DEFAULT NULL,
  `roketNumber` int DEFAULT NULL,
  `nogodNumber` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwordReset` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public/uploads/default/avator.png',
  `agree` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'yes',
  `verifyToken` int DEFAULT '0',
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `firstName`, `lastName`, `username`, `companyName`, `pickLocation`, `phoneNumber`, `emailAddress`, `nearestZone`, `pickupPreference`, `socialLink`, `paymentMethod`, `paymentmode`, `withdrawal`, `nameOfBank`, `bankBranch`, `bankAcHolder`, `bankAcNo`, `bkashNumber`, `roketNumber`, `nogodNumber`, `balance`, `password`, `passwordReset`, `logo`, `agree`, `verifyToken`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Onyekachi Umejiaku', NULL, NULL, 'Zicomart', NULL, '08076909835', 'contact@zicomart.com', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 555, '$2y$10$pa4rfrEF5wuq9qUHtogV6.g4an0twjxKK921oG/dHO7zeLh8PjTjy', NULL, 'uploads/merchant/zicofav.png', '1', 451971, 1, '2022-08-23 11:20:34', '2022-09-18 13:40:22'),
(5, 'Prince', NULL, NULL, 'Polobozz', NULL, '09016270256', 'iheanachoracheal60@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 500, '$2y$10$Qj8Ji1XuMKeg0n8rzxcgT.DKlUgzQ9oyrERrTEgucyDheBsMXNJ.K', NULL, 'public/uploads/default/avator.png', '1', 612172, 1, '2022-08-29 20:56:34', '2022-09-18 17:49:03'),
(6, 'Peace', NULL, NULL, 'Nuyofluffy', NULL, '08161580033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UUzlRw6B8qV6aXPHhNriTu.gUSXT0OVSvxCIH1B2U0HCW0T8rDlr6', NULL, 'public/uploads/default/avator.png', '1', 839668, 1, '2022-08-30 08:05:40', '2022-08-30 08:05:40'),
(8, 'SUNNY', NULL, NULL, 'SLAYWEARS MART', NULL, '07069733310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200, '$2y$10$89QMsxMzYsMnPFCZepVz5OKgFjrBisPBmQ8Lj.LIrdIyCGTZRd1Km', NULL, 'public/uploads/default/avator.png', NULL, 9302, 1, '2022-08-30 12:02:13', '2022-09-18 17:50:09'),
(9, 'CJay', NULL, NULL, 'CjClassique', NULL, '08061365007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NJv2HfUC7z6FsdGTkTulweS.6L48M9lX8Oks2Ok.AWznDrjzxbPQa', NULL, 'public/uploads/default/avator.png', '1', 293080, 1, '2022-08-30 20:35:53', '2022-08-30 20:35:53'),
(12, 'Chinaza Umejiaku', NULL, NULL, 'CartDrip', NULL, '08100520581', 'christianumejiaku@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1100, '$2y$10$bOzJw043p36bygf8BJyzGe2TviguapB/K5xr8mXX97YyG.daUMeEO', NULL, 'public/uploads/default/avator.png', '1', 420920, 1, '2022-09-18 14:06:28', '2022-09-22 11:28:24'),
(13, 'Onyekachi Nwani', NULL, NULL, 'Tinkini Price', NULL, '08099900322', 'kachiwani@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$v4kj.mxVoLzs8rAzUj.bs.UZCgItE8Tye9uJk1kgtOIgYZY1EP2ru', NULL, 'public/uploads/default/avator.png', '1', 844858, 1, '2022-09-18 14:18:40', '2022-09-18 17:46:14'),
(14, 'Nwani Onyekachi', NULL, NULL, 'Style Lug', NULL, '08099900322', 'nwamikach@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Access bank', NULL, 'Style Lug online Ltd', '1634472669', NULL, NULL, NULL, NULL, '$2y$10$7CzxKaamLUCgeqzpPNZeYOPqU8LXXV3CUHx2vuUoMnFuyi6GAxA2K', NULL, 'public/uploads/default/avator.png', '1', 904204, 1, '2022-09-18 14:22:28', '2022-09-22 15:29:24'),
(15, 'Ejike Nwodo', NULL, NULL, 'Chris Wears', NULL, '09073457470', 'chriswears@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$G0V2nTobOqmQLCxtKtNLzu7mc55gaYhaw9H.lw7rTWlNr8zrviHYu', NULL, 'public/uploads/default/avator.png', '1', 228386, 1, '2022-09-19 11:28:10', '2022-09-19 11:29:28'),
(17, 'Chidi Onyekachi', NULL, NULL, 'Tinkiniprice Female', NULL, '08063437353', 'chiddywealth@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GROaGEbCEq2DQB2Mnpovxu8hf7.DF8ub19K4kGjhQMcMGbPaMdAL2', NULL, 'public/uploads/default/avator.png', '1', 139353, 1, '2022-09-21 06:39:36', '2022-09-21 06:52:11'),
(18, 'SAMSON', NULL, NULL, 'SNEAKDUX', NULL, '09063497768', 'info@sneakdux.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CHKTXwPS5grBYQlMrPbG5eJUfkT7jsUjU./HCsfegpZAThnJX6xd2', NULL, 'public/uploads/default/avator.png', '1', 890809, 1, '2022-09-22 11:36:37', '2022-09-22 11:39:11'),
(19, 'Peace', NULL, NULL, 'Peace Feet', NULL, '08147902120', 'peacefeet001@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8AsI037IXpKRBsrF.9kGceAqufspNiIpFWvYBD2S70os91WvUPtKS', NULL, 'public/uploads/default/avator.png', '1', 761082, 1, '2022-09-22 13:25:10', '2022-09-22 13:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_30_113236_create_roles_table', 1),
(4, '2019_07_31_064441_create_logos_table', 1),
(5, '2020_03_04_160445_create_merchants_table', 1),
(6, '2020_03_10_144143_create_nearestzones_table', 1),
(7, '2020_03_24_142231_create_deliverycharges_table', 1),
(9, '2020_03_27_051853_create_codcharges_table', 1),
(10, '2020_03_29_234337_create_departments_table', 1),
(11, '2020_03_30_202953_create_employees_table', 1),
(12, '2020_08_09_171103_create_pickups_table', 1),
(13, '2019_12_30_163131_create_districts_table', 1),
(14, '2020_03_24_161302_create_parcels_table', 1),
(15, '2020_04_07_151122_create_services_table', 1),
(16, '2020_12_30_170501_create_agents_table', 1),
(17, '2020_12_31_121855_create_deliverymen_table', 1),
(18, '2021_01_01_224110_create_merchantpayments_table', 1),
(19, '2021_01_04_110828_create_parcelnotes_table', 1),
(20, '2019_05_30_150731_create_socialmedia_table', 1),
(21, '2021_02_09_121935_create_abouts_table', 1),
(22, '2021_02_09_133620_create_partners_table', 1),
(23, '2021_02_09_134747_create_faqs_table', 1),
(24, '2020_10_24_234912_create_features_table', 2),
(26, '2021_02_09_124527_create_counters_table', 2),
(27, '2020_06_20_105300_create_clientfeedbacks_table', 2),
(28, '2021_02_15_175711_create_careers_table', 2),
(29, '2021_02_15_185904_create_galleries_table', 2),
(30, '2021_02_15_192437_create_notices_table', 2),
(31, '2021_02_16_170149_create_parceltypes_table', 2),
(32, '2020_04_07_093608_create_banners_table', 2),
(62, '2020_04_07_160658_create_prices_table', 3),
(64, '2021_02_14_124640_create_blogs_table', 4),
(69, '2020_04_07_103452_create_partners_table', 5),
(70, '2022_08_22_051547_create_topups_table', 6),
(71, '2022_08_23_073748_create_remain_topups_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `nearestzones`
--

CREATE TABLE `nearestzones` (
  `id` bigint UNSIGNED NOT NULL,
  `state` int NOT NULL,
  `zonename` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extradeliverycharge` int NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nearestzones`
--

INSERT INTO `nearestzones` (`id`, `state`, `zonename`, `extradeliverycharge`, `status`, `created_at`, `updated_at`) VALUES
(9, 0, 'Azimpur', 0, 1, '2021-03-10 02:28:19', '2021-11-19 14:43:47'),
(10, 0, 'Badda', 0, 1, '2021-03-10 02:28:42', '2021-03-10 02:28:42'),
(11, 0, 'Bangshal', 0, 1, '2021-03-10 02:28:59', '2021-03-10 02:28:59'),
(12, 0, 'Bimanbandar', 0, 1, '2021-03-10 02:29:24', '2021-03-10 02:29:24'),
(13, 0, 'Mirpur Cantonment', 0, 1, '2021-03-10 02:30:00', '2021-09-08 00:32:53'),
(14, 0, 'Chowkbazar', 0, 1, '2021-03-10 02:30:18', '2021-03-10 02:30:18'),
(15, 0, 'Darus Salam', 0, 1, '2021-03-10 02:30:37', '2021-03-10 02:30:37'),
(16, 0, 'Savar Cantonment', 0, 1, '2021-03-10 02:30:53', '2021-09-08 00:20:57'),
(17, 0, 'Dhanmondi', 0, 1, '2021-03-10 02:31:13', '2021-03-10 02:31:13'),
(18, 0, 'Gendaria', 0, 1, '2021-03-10 02:31:31', '2021-03-10 02:31:31'),
(19, 0, 'Gulshan', 0, 1, '2021-03-10 02:31:48', '2021-03-10 02:31:48'),
(20, 0, 'Hazaribagh', 0, 1, '2021-03-10 02:35:56', '2021-03-10 02:35:56'),
(21, 0, 'Kadamtali', 0, 1, '2021-03-10 02:50:19', '2021-03-10 02:50:19'),
(22, 0, 'Rupnagar Residential Area', 0, 1, '2021-03-10 02:51:21', '2021-09-08 20:27:49'),
(23, 0, 'Kalabagan', 0, 1, '2021-03-10 02:51:52', '2021-03-10 02:51:52'),
(24, 0, 'Kamrangichor', 0, 1, '2021-03-10 02:52:12', '2021-03-10 02:52:12'),
(25, 0, 'Basabo', 0, 1, '2021-03-10 02:52:39', '2021-06-13 03:22:33'),
(26, 0, 'Khilgaon', 0, 1, '2021-03-10 02:57:37', '2021-03-10 02:57:37'),
(27, 0, 'Khilkhet', 0, 1, '2021-03-10 02:58:10', '2021-03-10 02:58:10'),
(28, 0, 'Kotwali', 0, 1, '2021-03-10 02:58:50', '2021-03-10 02:58:50'),
(29, 0, 'Lalbagh', 0, 1, '2021-03-10 02:59:09', '2021-03-10 02:59:09'),
(30, 0, 'Mirpur Model', 0, 1, '2021-03-10 02:59:33', '2021-03-10 02:59:33'),
(31, 0, 'Mohammadpur', 0, 1, '2021-03-10 03:00:03', '2021-03-10 03:00:03'),
(32, 0, 'Motijheel', 0, 1, '2021-03-10 03:00:28', '2021-11-19 14:43:58'),
(33, 0, 'Newmarket', 0, 1, '2021-03-10 03:00:48', '2021-11-19 14:44:03'),
(34, 0, 'Pallabi', 0, 1, '2021-03-10 03:02:30', '2021-03-10 03:02:30'),
(35, 0, 'Ramna', 0, 1, '2021-03-10 03:03:25', '2021-03-10 03:03:25'),
(36, 0, 'Rampura', 0, 1, '2021-03-10 03:05:54', '2021-03-10 03:05:54'),
(37, 0, 'Sabujbagh', 0, 1, '2021-03-10 03:06:14', '2021-03-10 03:06:14'),
(38, 0, 'Shah Ali', 0, 1, '2021-03-10 03:06:33', '2021-03-10 03:06:33'),
(39, 0, 'Shahbagh', 0, 1, '2021-03-10 03:06:53', '2021-03-10 03:06:53'),
(40, 0, 'Sher e bangla', 0, 1, '2021-03-10 03:07:22', '2021-03-10 03:07:22'),
(41, 0, 'Shyampur', 0, 1, '2021-03-10 03:07:42', '2021-03-10 03:07:42'),
(42, 0, 'Shutrapur', 0, 1, '2021-03-10 03:08:10', '2021-03-10 03:08:10'),
(43, 0, 'Tejgaon Indutrial Area', 0, 1, '2021-03-10 03:08:30', '2021-03-10 03:08:30'),
(44, 0, 'Tejgaon', 0, 1, '2021-03-10 03:08:46', '2021-03-10 03:08:46'),
(45, 0, 'Turag', 0, 1, '2021-03-10 03:09:03', '2021-03-10 03:09:03'),
(46, 0, 'Uttarkhan', 0, 1, '2021-03-10 03:09:31', '2021-03-10 03:09:31'),
(47, 0, 'Uttara', 0, 1, '2021-03-10 03:09:48', '2021-03-10 03:09:48'),
(48, 0, 'Vatara', 0, 1, '2021-03-10 03:10:05', '2021-03-10 03:10:05'),
(49, 0, 'Wari', 0, 1, '2021-03-10 03:10:20', '2021-03-10 03:10:20'),
(50, 0, 'Jatrabari', 0, 1, '2021-06-01 21:09:38', '2021-06-01 21:09:38'),
(51, 0, 'Dakkhin Khan', 0, 1, '2021-06-03 22:14:13', '2021-06-03 22:14:13'),
(52, 0, 'Moghbazar', 0, 1, '2021-06-03 23:18:48', '2021-06-03 23:18:48'),
(53, 0, 'Bashundhara R/A', 0, 1, '2021-06-07 19:49:12', '2021-06-07 19:49:12'),
(54, 0, 'Mirpur-1', 0, 1, '2021-06-07 19:49:39', '2021-06-07 19:49:39'),
(55, 0, 'Mirpur-2', 0, 1, '2021-06-07 19:49:58', '2021-06-07 19:49:58'),
(56, 0, 'Mirpur-10', 0, 1, '2021-06-07 19:50:19', '2021-06-07 19:50:19'),
(57, 0, 'Mirpur-12', 0, 1, '2021-06-07 19:50:42', '2021-06-07 19:50:42'),
(58, 0, 'Malibag', 0, 1, '2021-06-13 03:20:13', '2021-06-13 03:20:13'),
(59, 0, 'Azimpur', 0, 1, '2021-06-13 03:24:05', '2021-06-13 03:24:05'),
(60, 0, 'Motijheel', 0, 1, '2021-06-13 03:33:19', '2021-06-13 03:41:20'),
(61, 0, 'Banani', 0, 1, '2021-06-13 03:38:04', '2021-06-13 03:38:04'),
(62, 0, 'Mohakhali', 0, 1, '2021-06-13 03:38:30', '2021-06-13 03:38:30'),
(63, 0, 'Bangshal', 0, 1, '2021-06-13 03:39:44', '2021-06-13 03:39:44'),
(64, 0, 'Demra', 0, 1, '2021-06-13 03:40:11', '2021-06-13 03:40:11'),
(65, 0, 'Mohammadpur(Dhaka)', 0, 1, '2021-06-13 03:40:52', '2021-09-08 00:08:27'),
(66, 0, 'Mugda', 0, 1, '2021-06-13 03:41:39', '2021-06-13 03:41:54'),
(67, 0, 'Paltan', 0, 1, '2021-06-13 03:42:22', '2021-06-13 03:42:22'),
(68, 0, 'Rupnagar', 0, 1, '2021-06-13 03:43:10', '2021-06-13 03:43:10'),
(69, 0, 'Shahjahanpur', 0, 1, '2021-06-13 03:43:44', '2021-06-13 03:43:44'),
(70, 0, 'Vasantek', 0, 1, '2021-06-13 03:44:20', '2021-06-13 03:44:20'),
(71, 0, 'Hatirjheel', 0, 1, '2021-06-13 03:46:22', '2021-06-13 03:46:22'),
(72, 0, 'Bangla Bazar', 0, 1, '2021-06-22 21:35:51', '2021-08-24 00:01:36'),
(73, 0, 'Kallayanpur', 0, 1, '2021-06-25 00:19:54', '2021-06-25 00:19:54'),
(74, 0, 'Shewrapara', 0, 1, '2021-06-25 00:28:02', '2021-06-25 00:28:02'),
(75, 0, 'Mirpur', 0, 1, '2021-06-25 21:25:45', '2021-06-25 21:25:45'),
(76, 0, 'Bulk Upload Area', 0, 1, '2021-06-26 19:00:38', '2021-08-16 23:15:14'),
(77, 0, 'Shajahanpur, Dhaka', 0, 1, '2021-08-26 19:12:51', '2021-11-19 14:44:09'),
(78, 0, 'Segunbagicha', 0, 1, '2021-08-26 23:50:45', '2021-08-26 23:52:00'),
(79, 0, 'Bangshal', 0, 1, '2021-08-26 23:51:44', '2021-08-26 23:51:44'),
(80, 0, 'Shonir akhra', 0, 1, '2021-08-29 01:55:07', '2021-08-29 01:55:07'),
(81, 0, 'Rayer Bazaar', 0, 1, '2021-08-29 18:26:23', '2021-08-29 18:26:23'),
(82, 0, 'Mirpur DOHS', 0, 1, '2021-08-29 18:28:35', '2021-08-29 18:28:35'),
(83, 0, 'Ulan road', 0, 1, '2021-09-01 05:16:09', '2021-09-08 01:08:37'),
(84, 0, 'Kafrul', 0, 1, '2021-09-02 22:53:19', '2021-09-02 22:53:19'),
(85, 0, 'kakrail', 0, 1, '2021-09-02 22:53:35', '2021-09-02 22:53:35'),
(86, 0, 'Shamoli', 0, 1, '2021-09-02 22:54:08', '2021-09-02 22:54:08'),
(87, 0, 'Collagegate', 0, 1, '2021-09-02 22:54:32', '2021-09-02 22:54:32'),
(88, 0, 'Asadgate', 0, 1, '2021-09-02 22:54:56', '2021-09-02 22:54:56'),
(89, 0, 'Jigatola', 0, 1, '2021-09-02 22:55:20', '2021-09-02 22:55:20'),
(90, 0, 'New market', 0, 1, '2021-09-02 22:55:44', '2021-09-02 22:55:44'),
(91, 0, 'Lalbug', 0, 1, '2021-09-02 22:55:58', '2021-11-19 14:44:14'),
(92, 0, 'Kollanpur', 0, 1, '2021-09-02 22:56:45', '2021-09-02 22:56:45'),
(93, 0, 'Farmgate', 0, 1, '2021-09-02 22:57:42', '2021-09-02 22:57:42'),
(94, 0, 'kawran Bazar', 0, 1, '2021-09-02 22:58:07', '2021-09-02 22:58:07'),
(95, 0, 'Tejgaon', 0, 1, '2021-09-02 22:58:33', '2021-11-19 14:44:20'),
(96, 0, 'Mirpur 6', 0, 1, '2021-09-03 02:05:47', '2021-09-03 02:05:47'),
(97, 0, 'Mirpur 13', 0, 1, '2021-09-03 02:06:26', '2021-09-03 02:06:26'),
(98, 0, 'Mirpur 14', 0, 1, '2021-09-03 02:06:48', '2021-09-03 02:06:48'),
(99, 0, 'Aftab Nagar', 0, 1, '2021-09-03 20:45:20', '2021-09-03 20:45:20'),
(100, 0, 'Bijoynagar', 0, 1, '2021-09-06 00:58:53', '2021-09-06 00:58:53'),
(101, 0, 'Green road', 0, 1, '2021-09-06 02:20:29', '2021-09-06 02:20:29'),
(102, 0, 'Gulistan', 0, 1, '2021-09-06 21:23:12', '2021-09-06 21:23:12'),
(103, 0, 'Nobabpur', 0, 1, '2021-09-06 21:23:27', '2021-09-06 21:23:27'),
(104, 0, 'Kallyanpur', 0, 1, '2021-09-08 00:12:03', '2021-09-08 00:12:03'),
(105, 0, 'Shyamoli', 0, 1, '2021-09-08 00:12:20', '2021-09-08 00:12:20'),
(106, 0, 'Adabor', 0, 1, '2021-09-08 00:12:43', '2021-09-08 00:12:43'),
(107, 0, 'Darussalam', 0, 1, '2021-09-08 00:12:56', '2021-09-08 00:12:56'),
(108, 0, 'Gabtoli', 0, 1, '2021-09-08 00:13:13', '2021-09-08 00:13:13'),
(109, 0, 'Pallabi', 0, 1, '2021-09-08 00:13:24', '2021-09-08 00:13:24'),
(110, 0, 'Lalmatia', 0, 1, '2021-09-08 00:13:40', '2021-09-08 00:13:40'),
(111, 0, 'Kochukhet', 0, 1, '2021-09-08 00:14:02', '2021-09-08 00:14:02'),
(112, 0, 'Gudaraghat', 0, 1, '2021-09-08 00:14:21', '2021-09-08 00:14:21'),
(113, 0, 'Agargaon', 0, 1, '2021-09-08 00:17:16', '2021-09-08 00:17:16'),
(114, 0, 'Dhamrai', 0, 1, '2021-09-08 00:18:45', '2021-09-08 00:18:45'),
(115, 0, 'Keranigonj', 0, 1, '2021-09-08 00:19:07', '2021-09-08 00:19:07'),
(116, 0, 'Kamrangichar', 0, 1, '2021-09-08 00:19:35', '2021-09-08 00:19:35'),
(117, 0, 'Amin Bazar', 0, 1, '2021-09-08 00:19:52', '2021-09-08 00:19:52'),
(118, 0, 'Ashulia', 0, 1, '2021-09-08 00:20:09', '2021-09-08 00:20:09'),
(119, 0, 'Tongi', 0, 1, '2021-09-08 00:21:12', '2021-09-08 00:21:12'),
(120, 0, 'Savar', 0, 1, '2021-09-08 00:23:12', '2021-09-08 00:23:12'),
(121, 0, 'Boddhovumi (Mohammadppur)', 0, 1, '2021-09-08 00:23:29', '2021-09-08 00:23:45'),
(122, 0, 'Garden City', 0, 1, '2021-09-08 00:24:01', '2021-09-08 00:24:01'),
(123, 0, 'Washpur', 0, 1, '2021-09-08 00:24:12', '2021-09-08 00:24:12'),
(124, 0, 'Arshinagar', 0, 1, '2021-09-08 00:24:53', '2021-09-08 00:24:53'),
(125, 0, 'Uttara Sector - 18', 0, 1, '2021-09-08 00:25:06', '2021-09-08 00:25:06'),
(126, 0, 'Uttara Sector - 17', 0, 1, '2021-09-08 00:25:20', '2021-09-08 00:25:20'),
(127, 0, 'Uttara Sector - 16', 0, 1, '2021-09-08 00:25:53', '2021-09-08 00:25:53'),
(128, 0, 'Dhanmondi Staff Quarter', 0, 1, '2021-09-08 00:26:06', '2021-09-08 00:26:06'),
(129, 0, 'Katasur', 0, 1, '2021-09-08 00:26:16', '2021-09-08 00:26:16'),
(130, 0, 'Sher e Bangla Road', 0, 1, '2021-09-08 00:26:27', '2021-09-08 00:26:27'),
(131, 0, 'Sadek Khan Road', 0, 1, '2021-09-08 00:26:41', '2021-09-08 00:26:41'),
(132, 0, 'Zafrabad', 0, 1, '2021-09-08 00:26:52', '2021-09-08 00:26:52'),
(133, 0, 'Dhanmondi - Rd 29', 0, 1, '2021-09-08 00:27:01', '2021-09-08 00:27:01'),
(134, 0, 'Dhanmondi - Rd 28', 0, 1, '2021-09-08 00:27:13', '2021-09-08 00:27:13'),
(135, 0, 'Dhanmondi - Rd 27', 0, 1, '2021-09-08 00:27:24', '2021-09-08 00:27:24'),
(136, 0, 'Sher-E-Bangla Nagar', 0, 1, '2021-09-08 00:27:27', '2021-09-08 01:19:29'),
(137, 0, 'Dhanmondi - Rd 15 A', 0, 1, '2021-09-08 00:27:38', '2021-09-08 00:27:38'),
(138, 0, 'Dhanmondi - Rd 12A', 0, 1, '2021-09-08 00:28:00', '2021-09-08 00:28:00'),
(139, 0, 'Dhanmondi - Rd 10', 0, 1, '2021-09-08 00:28:37', '2021-09-08 00:28:37'),
(140, 0, 'Dhanmondi - Rd 8A', 0, 1, '2021-09-08 00:28:53', '2021-09-08 00:29:12'),
(141, 0, 'Dhanmondi - Rd 8', 0, 1, '2021-09-08 00:29:57', '2021-09-08 00:29:57'),
(142, 0, 'Dhanmondi - Rd 6A', 0, 1, '2021-09-08 00:30:14', '2021-09-08 00:30:14'),
(143, 0, 'Monipur', 0, 1, '2021-09-08 00:30:21', '2021-09-08 00:30:21'),
(144, 0, 'Dhanmondi - Rd 6', 0, 1, '2021-09-08 00:30:29', '2021-09-08 00:30:29'),
(145, 0, 'Ibrahimpur', 0, 1, '2021-09-08 00:31:02', '2021-09-08 00:31:02'),
(146, 0, 'Dhanmondi - Rd 4A', 0, 1, '2021-09-08 00:31:06', '2021-09-08 00:31:06'),
(147, 0, 'Cantonment Post Office', 0, 1, '2021-09-08 00:32:09', '2021-09-08 00:32:09'),
(148, 0, 'Manikdi', 0, 1, '2021-09-08 00:34:16', '2021-09-08 00:34:16'),
(149, 0, 'Matikata', 0, 1, '2021-09-08 00:34:43', '2021-09-08 00:34:43'),
(150, 0, 'M.E.S', 0, 1, '2021-09-08 00:35:02', '2021-09-08 00:35:02'),
(151, 0, 'Duaripara', 0, 1, '2021-09-08 00:35:44', '2021-09-08 00:35:44'),
(152, 0, 'Dhanmondi - Rd 4', 0, 1, '2021-09-08 00:35:58', '2021-09-08 00:35:58'),
(153, 0, 'Rainkhola', 0, 1, '2021-09-08 00:36:21', '2021-09-08 00:36:21'),
(154, 0, 'Mirpur Diabari', 0, 1, '2021-09-08 00:36:43', '2021-09-08 00:36:43'),
(155, 0, 'Mazar Road', 0, 1, '2021-09-08 00:37:00', '2021-09-08 00:37:00'),
(156, 0, 'Dhanmondi - Rd 2', 0, 1, '2021-09-08 00:37:05', '2021-09-08 00:37:05'),
(157, 0, 'Shagufta', 0, 1, '2021-09-08 00:37:22', '2021-09-08 00:37:22'),
(158, 0, 'Dhanmondi - Rd 1', 0, 1, '2021-09-08 00:37:25', '2021-09-08 00:37:25'),
(159, 0, 'Bawnia', 0, 1, '2021-09-08 00:37:53', '2021-09-08 00:37:53'),
(160, 0, 'Uttara Sector - 15', 0, 1, '2021-09-08 00:38:01', '2021-09-08 00:38:01'),
(161, 0, 'Uttara Sector - 13', 0, 1, '2021-09-08 00:38:13', '2021-09-08 00:38:13'),
(162, 0, 'Uttara Sector - 12', 0, 1, '2021-09-08 00:38:36', '2021-09-08 00:38:36'),
(163, 0, 'Uttara Sector - 10', 0, 1, '2021-09-08 00:38:49', '2021-09-08 00:38:49'),
(164, 0, 'Uttara Sector - 8', 0, 1, '2021-09-08 00:39:16', '2021-09-08 00:39:16'),
(165, 0, 'Uttara Sector - 6', 0, 1, '2021-09-08 00:39:36', '2021-09-08 00:39:36'),
(166, 0, 'Uttara Sector - 6', 0, 1, '2021-09-08 00:39:36', '2021-09-08 00:39:36'),
(167, 0, 'Uttara Sector - 2', 0, 1, '2021-09-08 00:39:51', '2021-09-08 00:39:51'),
(168, 0, 'Uttara Sector - 1', 0, 1, '2021-09-08 00:41:01', '2021-09-08 00:41:01'),
(169, 0, 'Banasree Block - N', 0, 1, '2021-09-08 00:41:14', '2021-09-08 00:41:14'),
(170, 0, 'Banasree Block - M', 0, 1, '2021-09-08 00:41:26', '2021-09-08 00:41:26'),
(171, 0, 'Banasree Block - L', 0, 1, '2021-09-08 00:41:38', '2021-09-08 00:41:38'),
(172, 0, 'Banasree Block - K', 0, 1, '2021-09-08 00:41:51', '2021-09-08 00:41:51'),
(173, 0, 'Banasree Block - J', 0, 1, '2021-09-08 00:42:00', '2021-09-08 00:42:00'),
(174, 0, 'Banasree Block - I', 0, 1, '2021-09-08 00:42:14', '2021-09-08 00:42:14'),
(175, 0, 'Banasree Block - H', 0, 1, '2021-09-08 00:42:36', '2021-09-08 00:42:36'),
(176, 0, 'Banasree Block - G', 0, 1, '2021-09-08 00:42:47', '2021-09-08 00:42:47'),
(177, 0, 'Banasree Block - F', 0, 1, '2021-09-08 00:42:58', '2021-09-08 00:42:58'),
(178, 0, 'Banasree Block - E', 0, 1, '2021-09-08 00:43:09', '2021-09-08 00:43:09'),
(179, 0, 'Banasree Block - D', 0, 1, '2021-09-08 00:43:19', '2021-09-08 00:43:19'),
(180, 0, 'Banasree Block - C', 0, 1, '2021-09-08 00:43:32', '2021-09-08 00:43:32'),
(181, 0, 'Banasree Block - B', 0, 1, '2021-09-08 00:43:42', '2021-09-08 00:43:42'),
(182, 0, 'Banasree Block - A', 0, 1, '2021-09-08 00:43:58', '2021-09-08 00:43:58'),
(183, 0, 'Mirpur 60 feet', 0, 1, '2021-09-08 00:44:18', '2021-09-08 00:44:18'),
(184, 0, 'SDA', 0, 1, '2021-09-08 00:44:30', '2021-09-08 00:44:30'),
(185, 0, 'Kodomtoli (Jatrabari)', 0, 1, '2021-09-08 00:44:47', '2021-09-08 00:44:47'),
(186, 0, 'Nazimuddin Road (Malibag)', 0, 1, '2021-09-08 00:45:01', '2021-09-08 00:45:01'),
(187, 0, 'Nazimuddin Road (Puran Dhaka)', 0, 1, '2021-09-08 00:45:15', '2021-09-08 00:45:15'),
(188, 0, 'Arambag (Mirpur)', 0, 1, '2021-09-08 00:45:27', '2021-09-08 00:45:27'),
(189, 0, 'MES colony', 0, 1, '2021-09-08 00:45:39', '2021-09-08 00:45:39'),
(190, 0, 'Zia Colony', 0, 1, '2021-09-08 00:45:51', '2021-09-08 00:45:51'),
(191, 0, 'BAF Bashar (Dhaka cantonment)', 0, 1, '2021-09-08 00:46:03', '2021-09-08 00:46:03'),
(192, 0, 'Nijhum gate', 0, 1, '2021-09-08 00:46:13', '2021-09-08 00:46:13'),
(193, 0, 'Jahangir Gate', 0, 1, '2021-09-08 00:46:23', '2021-09-08 00:46:23'),
(194, 0, 'Eastern Housing (Pallabi)', 0, 1, '2021-09-08 00:46:34', '2021-09-08 00:46:34'),
(195, 0, 'Niketon Bazar', 0, 1, '2021-09-08 00:46:47', '2021-09-08 00:46:47'),
(196, 0, 'Zoo', 0, 1, '2021-09-08 00:46:57', '2021-09-08 00:46:57'),
(197, 0, 'BRTA(Mirpur)', 0, 1, '2021-09-08 00:47:13', '2021-09-08 00:47:13'),
(198, 0, 'BRTA(Uttara)', 0, 1, '2021-09-08 00:47:24', '2021-09-08 00:47:24'),
(199, 0, 'Senpara', 0, 1, '2021-09-08 00:47:38', '2021-09-08 00:47:38'),
(200, 0, 'Rupnagor', 0, 1, '2021-09-08 00:47:50', '2021-09-08 00:47:50'),
(201, 0, 'Purobi', 0, 1, '2021-09-08 00:48:01', '2021-09-08 00:48:01'),
(202, 0, 'Palashnagor', 0, 1, '2021-09-08 00:48:20', '2021-09-08 00:48:20'),
(203, 0, 'Mondir-Mirpur', 0, 1, '2021-09-08 00:48:32', '2021-09-08 00:48:32'),
(204, 0, 'Purobi Cinema Hall', 0, 1, '2021-09-08 00:48:43', '2021-09-08 00:48:43'),
(205, 0, 'Buddhijibi Road', 0, 1, '2021-09-08 00:48:57', '2021-09-08 00:48:57'),
(206, 0, 'Beribadh-Mirpur', 0, 1, '2021-09-08 01:07:01', '2021-09-08 01:07:01'),
(207, 0, 'Benaroshi Polli', 0, 1, '2021-09-08 01:07:17', '2021-09-08 01:07:17'),
(208, 0, 'Mirpur 13 /14 / 15', 0, 1, '2021-09-08 01:07:27', '2021-09-08 01:07:27'),
(209, 0, 'Mirpur Technical', 0, 1, '2021-09-08 01:07:39', '2021-09-08 01:07:39'),
(210, 0, 'Oxygen', 0, 1, '2021-09-08 01:07:53', '2021-09-08 01:07:53'),
(211, 0, 'Namapara-Mirpur', 0, 1, '2021-09-08 01:08:05', '2021-09-08 01:08:05'),
(212, 0, 'Gudaraghat-Mirpur', 0, 1, '2021-09-08 01:08:19', '2021-09-08 01:08:19'),
(213, 0, 'TV gate', 0, 1, '2021-09-08 01:08:47', '2021-09-08 01:08:47'),
(214, 0, 'Rampura TV center', 0, 1, '2021-09-08 01:09:00', '2021-09-08 01:09:00'),
(215, 0, 'Modhubagh', 0, 1, '2021-09-08 01:09:10', '2021-09-08 01:09:10'),
(216, 0, 'Mirbagh', 0, 1, '2021-09-08 01:09:19', '2021-09-08 01:09:19'),
(217, 0, 'Meradiya Bazar', 0, 1, '2021-09-08 01:09:29', '2021-09-08 01:09:29'),
(218, 0, 'Gulbagh', 0, 1, '2021-09-08 01:09:38', '2021-09-08 01:09:38'),
(219, 0, 'Aftab Nagar', 0, 1, '2021-09-08 01:09:47', '2021-09-08 01:09:47'),
(220, 0, 'Pakuria-Uttara', 0, 1, '2021-09-08 01:09:59', '2021-09-08 01:09:59'),
(221, 0, 'Habib Market-Uttara', 0, 1, '2021-09-08 01:10:12', '2021-09-08 01:10:12'),
(222, 0, 'Ainusbag-Uttara', 0, 1, '2021-09-08 01:10:28', '2021-09-08 01:10:28'),
(223, 0, 'Ahalia-Uttara', 0, 1, '2021-09-08 01:10:38', '2021-09-08 01:10:38'),
(224, 0, 'Namapara-Khilkhet', 0, 1, '2021-09-08 01:10:52', '2021-09-08 01:10:52'),
(225, 0, 'Barua', 0, 1, '2021-09-08 01:11:03', '2021-09-08 01:11:03'),
(226, 0, 'Munda', 0, 1, '2021-09-08 01:11:39', '2021-09-08 01:11:39'),
(227, 0, 'Masterpara', 0, 1, '2021-09-08 01:11:59', '2021-09-08 01:11:59'),
(228, 0, 'Ismailkholla', 0, 1, '2021-09-08 01:12:09', '2021-09-08 01:12:09'),
(229, 0, 'Society', 0, 1, '2021-09-08 01:12:18', '2021-09-08 01:12:18'),
(230, 0, 'Chamur Khan', 0, 1, '2021-09-08 01:14:21', '2021-09-08 01:14:21'),
(231, 0, 'Helal Market', 0, 1, '2021-09-08 01:14:38', '2021-09-08 01:14:38'),
(232, 0, 'Kachkura', 0, 1, '2021-09-08 01:14:47', '2021-09-08 01:14:47'),
(233, 0, 'Prembagan', 0, 1, '2021-09-08 01:14:56', '2021-09-08 01:14:56'),
(234, 0, 'Kosaibari', 0, 1, '2021-09-08 01:15:09', '2021-09-08 01:15:09'),
(235, 0, 'Gawair', 0, 1, '2021-09-08 01:15:19', '2021-09-08 01:15:19'),
(236, 0, 'Mollartek', 0, 1, '2021-09-08 01:15:28', '2021-09-08 01:15:28'),
(237, 0, 'Abdullahpur (Uttara)', 0, 1, '2021-09-08 01:15:44', '2021-09-08 01:15:44'),
(238, 0, 'Kot Bari', 0, 1, '2021-09-08 01:15:57', '2021-09-08 01:15:57'),
(239, 0, 'Atipara', 0, 1, '2021-09-08 01:16:08', '2021-09-08 01:16:08'),
(240, 0, 'Moinartek', 0, 1, '2021-09-08 01:16:21', '2021-09-08 01:16:21'),
(241, 0, 'BDR Market-Sector 6', 0, 1, '2021-09-08 01:16:31', '2021-09-08 01:16:31'),
(242, 0, 'BDR Market-House Building', 0, 1, '2021-09-08 01:16:44', '2021-09-08 01:16:44'),
(243, 0, 'Johura Market', 0, 1, '2021-09-08 01:17:06', '2021-09-08 01:17:06'),
(244, 0, 'Joynal Market', 0, 1, '2021-09-08 01:17:18', '2021-09-08 01:17:18'),
(245, 0, 'Ranavola', 0, 1, '2021-09-08 01:17:30', '2021-09-08 01:17:30'),
(246, 0, 'Hajipara-Dakshinkhan', 0, 1, '2021-09-08 01:17:40', '2021-09-08 01:17:40'),
(247, 0, 'Dakshinkhan Bazar', 0, 1, '2021-09-08 01:17:52', '2021-09-08 01:17:52'),
(248, 0, 'Uttarkhan Mazar', 0, 1, '2021-09-08 01:18:03', '2021-09-08 01:18:03'),
(249, 0, 'Rail Station', 0, 1, '2021-09-08 01:18:14', '2021-09-08 01:18:14'),
(250, 0, 'Badekomelosshor', 0, 1, '2021-09-08 01:18:28', '2021-09-08 01:18:28'),
(251, 0, 'Baigertek', 0, 1, '2021-09-08 21:13:20', '2021-09-08 21:13:20'),
(252, 0, 'Madina nagar', 0, 1, '2021-09-08 21:14:10', '2021-09-08 21:14:10'),
(253, 0, 'Dewanpara', 0, 1, '2021-09-08 21:14:24', '2021-09-08 21:14:24'),
(254, 0, 'Mastertek', 0, 1, '2021-09-08 21:14:49', '2021-09-08 21:14:49'),
(255, 0, 'Balughat', 0, 1, '2021-09-08 21:15:02', '2021-09-08 21:15:02'),
(256, 0, 'Barontek', 0, 1, '2021-09-08 21:15:15', '2021-09-08 21:15:15'),
(257, 0, 'Goltek', 0, 1, '2021-09-08 21:15:29', '2021-09-08 21:15:29'),
(258, 0, 'Kurmitola', 0, 1, '2021-09-08 21:15:42', '2021-09-08 21:15:42'),
(259, 0, 'Shewra', 0, 1, '2021-09-08 21:16:09', '2021-09-08 21:16:09'),
(260, 0, 'Rajlokkhi (Uttara)', 0, 1, '2021-09-08 21:16:23', '2021-09-08 21:16:23'),
(261, 0, 'Dakshinkhan', 0, 1, '2021-09-08 21:16:50', '2021-09-08 21:16:50'),
(262, 0, 'Fayedabad', 0, 1, '2021-09-08 21:17:04', '2021-09-08 21:17:04'),
(263, 0, 'Ashkona', 0, 1, '2021-09-08 21:17:18', '2021-09-08 21:17:18'),
(264, 0, 'Kuril', 0, 1, '2021-09-08 21:17:32', '2021-09-08 21:17:32'),
(265, 0, 'Nikunja', 0, 1, '2021-09-08 21:17:55', '2021-09-08 21:17:55'),
(266, 0, 'Azampur (Uttara)', 0, 1, '2021-09-08 21:18:07', '2021-09-08 21:18:07'),
(267, 0, 'Kawla', 0, 1, '2021-09-08 21:18:27', '2021-09-08 21:18:27'),
(268, 0, 'Naddapara', 0, 1, '2021-09-08 21:18:41', '2021-09-08 21:18:41'),
(269, 0, 'Baridhara', 0, 1, '2021-09-08 21:19:16', '2021-09-08 21:19:16'),
(270, 0, 'Baridhara DOHS', 0, 1, '2021-09-08 21:19:29', '2021-09-08 21:19:29'),
(271, 0, 'Notun Bazar', 0, 1, '2021-09-08 21:19:42', '2021-09-08 21:19:42'),
(272, 0, 'Adarsha Nagar (Badda)', 0, 1, '2021-09-08 21:19:56', '2021-09-08 21:19:56'),
(273, 0, 'Shahjadpur', 0, 1, '2021-09-08 21:20:22', '2021-09-08 21:20:22'),
(274, 0, 'Uttor Badda', 0, 1, '2021-09-08 21:20:35', '2021-09-08 21:20:35'),
(275, 0, 'Middle Badda', 0, 1, '2021-09-08 21:20:47', '2021-09-08 21:20:47'),
(276, 0, 'South Badda', 0, 1, '2021-09-08 21:21:00', '2021-09-08 21:21:00'),
(277, 0, 'Merul Badda', 0, 1, '2021-09-08 21:21:13', '2021-09-08 21:21:13'),
(278, 0, 'Niketon', 0, 1, '2021-09-08 21:21:27', '2021-09-08 21:21:27'),
(279, 0, 'Banani DOHS', 0, 1, '2021-09-08 21:21:45', '2021-09-08 21:21:45'),
(280, 0, 'Mohakhali DOHS', 0, 1, '2021-09-08 21:22:05', '2021-09-08 21:22:05'),
(281, 0, 'South Monipur', 0, 1, '2021-09-08 21:22:17', '2021-09-08 21:22:17'),
(282, 0, 'Shah Ali Bag', 0, 1, '2021-09-08 21:22:30', '2021-09-08 21:22:30'),
(283, 0, 'Aziz Palli', 0, 1, '2021-09-08 21:22:41', '2021-09-08 21:22:41'),
(284, 0, 'Bashtola', 0, 1, '2021-09-08 21:22:54', '2021-09-08 21:22:54'),
(285, 0, 'South Baridhara DIT Project', 0, 1, '2021-09-08 21:23:07', '2021-09-08 21:23:07'),
(286, 0, 'Aftabnagar', 0, 1, '2021-09-08 21:23:19', '2021-09-08 21:23:19'),
(287, 0, 'Bijoy Shoroni', 0, 1, '2021-09-08 21:23:32', '2021-09-08 21:23:32'),
(288, 0, 'Indira Road', 0, 1, '2021-09-08 21:23:52', '2021-09-08 21:23:52'),
(289, 0, 'Tejkunipara', 0, 1, '2021-09-08 21:24:16', '2021-09-08 21:24:16'),
(290, 0, 'Razabazar', 0, 1, '2021-09-08 21:24:32', '2021-09-08 21:24:32'),
(291, 0, 'Sukrabad', 0, 1, '2021-09-08 21:24:44', '2021-09-08 21:24:44'),
(292, 0, 'Panthopath', 0, 1, '2021-09-08 21:24:57', '2021-09-08 21:24:57'),
(293, 0, 'Manik Mia Avenue', 0, 1, '2021-09-08 21:25:24', '2021-09-08 21:25:24'),
(294, 0, 'Asad Avenue', 0, 1, '2021-09-08 21:25:36', '2021-09-08 21:25:36'),
(295, 0, 'West Dhanmondi', 0, 1, '2021-09-08 21:25:48', '2021-09-08 21:25:48'),
(296, 0, 'Shankar', 0, 1, '2021-09-08 21:26:01', '2021-09-08 21:26:01'),
(297, 0, 'Rayer Bazar', 0, 1, '2021-09-08 21:26:15', '2021-09-08 21:26:15'),
(298, 0, 'Tallabag', 0, 1, '2021-09-08 21:26:27', '2021-09-08 21:26:27'),
(299, 0, 'Pilkhana', 0, 1, '2021-09-08 21:26:46', '2021-09-08 21:26:46'),
(300, 0, 'Nawabgonj Puran Dhaka', 0, 1, '2021-09-08 21:27:01', '2021-09-08 21:27:01'),
(301, 0, 'Nilkhet', 0, 1, '2021-09-08 21:27:51', '2021-09-08 21:27:51'),
(302, 0, 'Chawkbazar (Dhaka)', 0, 1, '2021-09-08 21:28:12', '2021-09-08 21:28:12'),
(303, 0, 'Naya Bazar', 0, 1, '2021-09-08 21:28:24', '2021-09-08 21:28:24'),
(304, 0, 'Tatibazar', 0, 1, '2021-09-08 21:28:38', '2021-09-08 21:28:38'),
(305, 0, 'Luxmi Bazar', 0, 1, '2021-09-08 21:28:51', '2021-09-08 21:28:51'),
(306, 0, 'Puran Dhaka', 0, 1, '2021-09-08 21:29:10', '2021-09-08 21:29:10'),
(307, 0, 'Siddique Bazar', 0, 1, '2021-09-08 21:29:24', '2021-09-08 21:29:24'),
(308, 0, 'Tikatuly', 0, 1, '2021-09-08 21:29:36', '2021-09-08 21:29:36'),
(309, 0, 'Nawabpur', 0, 1, '2021-09-08 21:30:07', '2021-09-08 21:30:07'),
(310, 0, 'Kaptan Bazar', 0, 1, '2021-09-08 21:30:20', '2021-09-08 21:30:20'),
(311, 0, 'Bongo Bazar', 0, 1, '2021-09-08 21:30:39', '2021-09-08 21:30:39'),
(312, 0, 'Chankarpul', 0, 1, '2021-09-08 21:30:50', '2021-09-08 21:30:50'),
(313, 0, 'Palashi', 0, 1, '2021-09-08 21:31:03', '2021-09-08 21:31:03'),
(314, 0, 'Dhakeshwari', 0, 1, '2021-09-08 21:31:17', '2021-09-08 21:31:17'),
(315, 0, 'Kamalapur', 0, 1, '2021-09-08 21:32:22', '2021-09-08 21:32:22'),
(316, 0, 'Narinda', 0, 1, '2021-09-08 21:32:41', '2021-09-08 21:32:41'),
(317, 0, 'Dainik Bangla Mor', 0, 1, '2021-09-08 21:32:53', '2021-09-08 21:32:53'),
(318, 0, 'Fakirapul', 0, 1, '2021-09-08 21:33:05', '2021-09-08 21:33:05'),
(319, 0, 'Naya Paltan', 0, 1, '2021-09-08 21:33:23', '2021-09-08 21:33:23'),
(320, 0, 'Press Club', 0, 1, '2021-09-08 21:33:42', '2021-09-08 21:33:42'),
(321, 0, 'High Court', 0, 1, '2021-09-08 21:34:01', '2021-09-08 21:34:01'),
(322, 0, 'Dhaka University', 0, 1, '2021-09-08 21:34:14', '2021-09-08 21:34:14'),
(323, 0, 'Dhaka Medical', 0, 1, '2021-09-08 21:34:26', '2021-09-08 21:34:26'),
(324, 0, 'Bongo Bondhu Avenue', 0, 1, '2021-09-08 21:34:39', '2021-09-08 21:34:39'),
(325, 0, 'Kazi Nazrul Islam Avenue', 0, 1, '2021-09-08 21:34:51', '2021-09-08 21:34:51'),
(326, 0, 'Shantinagar', 0, 1, '2021-09-08 21:35:17', '2021-09-08 21:35:17'),
(327, 0, 'Shantibag', 0, 1, '2021-09-08 21:35:29', '2021-09-08 21:35:29'),
(328, 0, 'Baily Road', 0, 1, '2021-09-08 21:35:42', '2021-09-08 21:35:42'),
(329, 0, 'Minto Road', 0, 1, '2021-09-08 21:36:06', '2021-09-08 21:36:06'),
(330, 0, 'Old Elephant Road', 0, 1, '2021-09-08 21:36:19', '2021-09-08 21:36:19'),
(331, 0, 'Eskaton Garden Road', 0, 1, '2021-09-08 21:36:31', '2021-09-08 21:36:31'),
(332, 0, 'Mouchak', 0, 1, '2021-09-08 21:36:57', '2021-09-08 21:36:57'),
(333, 0, 'Katabon', 0, 1, '2021-09-08 21:37:30', '2021-09-08 21:37:30'),
(334, 0, 'Hatirpool', 0, 1, '2021-09-08 21:37:43', '2021-09-08 21:37:43'),
(335, 0, 'Bashabo', 0, 1, '2021-09-08 21:37:55', '2021-09-08 21:37:55'),
(336, 0, 'Middle Bashabo', 0, 1, '2021-09-08 21:38:17', '2021-09-08 21:38:17'),
(337, 0, 'Goran', 0, 1, '2021-09-08 21:38:29', '2021-09-08 21:38:29'),
(338, 0, 'Madartek', 0, 1, '2021-09-08 21:40:14', '2021-09-08 21:40:14'),
(339, 0, 'Manik Nagar', 0, 1, '2021-09-08 21:40:26', '2021-09-08 21:40:26'),
(340, 0, 'Banasree (Rampura)', 0, 1, '2021-09-08 21:40:47', '2021-09-08 21:40:47'),
(341, 0, 'Meradia', 0, 1, '2021-09-08 21:40:59', '2021-09-08 21:40:59'),
(342, 0, 'Khilbari Tek (Badda)', 0, 1, '2021-09-08 21:41:12', '2021-09-08 21:41:12'),
(343, 0, 'Bawaliapara (Narayangaj)', 0, 1, '2021-09-08 21:41:25', '2021-09-08 21:41:25'),
(344, 0, 'Mughdapara', 0, 1, '2021-09-08 21:41:40', '2021-09-08 21:41:40'),
(345, 0, 'Golapbag (Dhaka)', 0, 1, '2021-09-08 21:41:52', '2021-09-08 21:41:52'),
(346, 0, 'Banglamotor', 0, 1, '2021-09-08 21:42:16', '2021-09-08 21:42:16'),
(347, 0, 'Paribag', 0, 1, '2021-09-08 21:42:28', '2021-09-08 21:42:28'),
(348, 0, 'Bakshibazar', 0, 1, '2021-09-08 21:42:40', '2021-09-08 21:42:40'),
(349, 0, 'Elephant Road', 0, 1, '2021-09-08 21:43:02', '2021-09-08 21:43:02'),
(350, 0, 'Kathalbagan', 0, 1, '2021-09-08 21:43:15', '2021-09-08 21:43:15'),
(351, 0, 'Malibagh Taltola', 0, 1, '2021-09-08 21:43:34', '2021-09-08 21:43:34'),
(352, 0, 'Central Road', 0, 1, '2021-09-08 21:43:48', '2021-09-08 21:43:48'),
(353, 0, 'Shiddheswari', 0, 1, '2021-09-08 21:44:09', '2021-09-08 21:44:09'),
(354, 0, 'Dolaikhal', 0, 1, '2021-09-08 21:44:25', '2021-09-08 21:44:25'),
(355, 0, 'Shegunbagicha', 0, 1, '2021-09-08 21:44:40', '2021-09-08 21:44:40'),
(356, 0, 'Rajarbag', 0, 1, '2021-09-08 21:44:51', '2021-09-08 21:44:51'),
(357, 0, 'Babubazar', 0, 1, '2021-09-08 21:45:04', '2021-09-08 21:45:04'),
(358, 0, 'Islampur(Dhaka)', 0, 1, '2021-09-08 21:45:16', '2021-09-08 21:45:16'),
(359, 0, 'Imamgonj', 0, 1, '2021-09-08 21:45:29', '2021-09-08 21:45:29'),
(360, 0, 'Nayabazar', 0, 1, '2021-09-08 21:45:46', '2021-09-08 21:45:46'),
(361, 0, 'Zigatola', 0, 1, '2021-09-08 21:46:14', '2021-09-08 21:46:14'),
(362, 0, 'Kazipara', 0, 1, '2021-09-08 21:46:38', '2021-09-08 21:46:38'),
(363, 0, 'Kalshi', 0, 1, '2021-09-08 21:46:58', '2021-09-08 21:46:58'),
(364, 0, 'Sutrapur', 0, 1, '2021-09-08 21:47:21', '2021-09-08 21:47:21'),
(365, 0, 'Purana Paltan', 0, 1, '2021-09-08 21:47:37', '2021-09-08 21:47:37'),
(366, 0, 'Dholaipar', 0, 1, '2021-09-08 21:47:55', '2021-09-08 21:47:55'),
(367, 0, 'Monipuripara', 0, 1, '2021-09-08 21:48:08', '2021-09-08 21:48:08'),
(368, 0, 'Bosila', 0, 1, '2021-09-08 21:48:21', '2021-09-08 21:48:21'),
(369, 0, 'Bongshal', 0, 1, '2021-09-08 21:48:53', '2021-09-08 21:48:53'),
(370, 0, 'Siddweswari', 0, 1, '2021-09-08 21:49:14', '2021-09-08 21:49:14'),
(371, 0, 'Nakhalpara', 0, 1, '2021-09-08 21:49:27', '2021-09-08 21:49:27'),
(372, 0, 'Dokshingaon', 0, 1, '2021-09-08 21:49:39', '2021-09-08 21:49:39'),
(373, 0, 'Joar Shahara', 0, 1, '2021-09-08 21:49:53', '2021-09-08 21:49:53'),
(374, 0, 'Science Lab', 0, 1, '2021-09-08 21:50:06', '2021-09-08 21:50:06'),
(375, 0, 'Sobhanbag', 0, 1, '2021-09-08 21:50:19', '2021-09-08 21:50:19'),
(376, 0, 'ECB Chattar', 0, 1, '2021-09-08 21:50:32', '2021-09-08 21:50:32'),
(377, 0, 'Armanitola', 0, 1, '2021-09-08 21:50:53', '2021-09-08 21:50:53'),
(378, 0, 'Islambag', 0, 1, '2021-09-08 21:51:06', '2021-09-08 21:51:06'),
(379, 0, 'Kamarpara', 0, 1, '2021-09-08 21:51:19', '2021-09-08 21:51:19'),
(380, 0, 'Mitford', 0, 1, '2021-09-08 21:51:31', '2021-09-08 21:51:31'),
(381, 0, 'Shakhari Bazar', 0, 1, '2021-09-08 21:51:43', '2021-09-08 21:51:43'),
(382, 0, 'Katherpol', 0, 1, '2021-09-08 21:51:57', '2021-09-08 21:51:57'),
(383, 0, 'Patuatuly', 0, 1, '2021-09-08 21:52:18', '2021-09-08 21:52:18'),
(384, 0, 'Nandipara', 0, 1, '2021-09-08 21:52:30', '2021-09-08 21:52:30'),
(385, 0, 'Nazira Bazar', 0, 1, '2021-09-08 21:52:41', '2021-09-08 21:52:41'),
(386, 0, 'Gopibag', 0, 1, '2021-09-08 21:52:58', '2021-09-08 21:52:58'),
(387, 0, 'Shwamibag', 0, 1, '2021-09-08 21:53:55', '2021-09-08 21:53:55'),
(388, 0, 'Sayedabad', 0, 1, '2021-09-08 21:54:09', '2021-09-08 21:54:09'),
(389, 0, 'Sadarghat (Dhaka)', 0, 1, '2021-09-08 21:54:22', '2021-09-08 21:54:22'),
(390, 0, 'Kaltabazar', 0, 1, '2021-09-08 21:54:35', '2021-09-08 21:54:35'),
(391, 0, 'Jurain', 0, 1, '2021-09-08 21:54:48', '2021-09-08 21:54:48'),
(392, 0, 'Gandaria', 0, 1, '2021-09-08 21:55:02', '2021-09-08 21:55:02'),
(393, 0, 'RayerBag', 0, 1, '2021-09-08 21:55:16', '2021-09-08 21:55:16'),
(394, 0, 'Faridabad (Jatrabari)', 0, 1, '2021-09-08 22:08:13', '2021-09-08 22:08:13'),
(395, 0, 'Matuail', 0, 1, '2021-09-08 22:08:27', '2021-09-08 22:08:27'),
(396, 0, 'Donia', 0, 1, '2021-09-08 22:09:13', '2021-09-08 22:09:13'),
(397, 0, 'Postogola', 0, 1, '2021-09-08 22:09:26', '2021-09-08 22:09:26'),
(398, 0, 'Konapara', 0, 1, '2021-09-08 22:09:38', '2021-09-08 22:09:38'),
(399, 0, 'Dhaka Uddyan', 0, 1, '2021-09-08 22:09:50', '2021-09-08 22:09:50'),
(400, 0, 'Shekhertek', 0, 1, '2021-09-08 22:10:02', '2021-09-08 22:10:02'),
(401, 0, 'CWH', 0, 1, '2021-09-08 22:10:14', '2021-09-08 22:10:14'),
(402, 0, 'Mirpur Taltola', 0, 1, '2021-09-08 22:10:27', '2021-09-08 22:10:27'),
(403, 0, 'Manda(Dhaka)', 0, 1, '2021-09-08 22:10:43', '2021-09-08 22:10:43'),
(404, 0, 'Shahjahanpur (Dhaka)', 0, 1, '2021-09-08 22:10:54', '2021-09-08 22:10:54'),
(405, 0, 'Haterrjheel', 0, 1, '2021-09-08 22:11:38', '2021-09-08 22:11:38'),
(406, 0, 'Dhaka uddan', 0, 1, '2021-09-08 22:11:50', '2021-09-08 22:11:50'),
(407, 0, 'Nobodoy', 0, 1, '2021-09-08 22:12:02', '2021-09-08 22:12:02'),
(408, 0, 'Chad Uddan', 0, 1, '2021-09-08 22:12:15', '2021-09-08 22:12:15'),
(409, 0, 'Mohammadia Housing', 0, 1, '2021-09-08 22:12:28', '2021-09-08 22:12:28'),
(410, 0, 'Ring Road', 0, 1, '2021-09-08 22:12:39', '2021-09-08 22:12:39'),
(411, 0, 'Tajmahal Road', 0, 1, '2021-09-08 22:12:51', '2021-09-08 22:12:51'),
(412, 0, 'Nurjahan Road', 0, 1, '2021-09-08 22:13:02', '2021-09-08 22:13:02'),
(413, 0, 'Rajia Sultana Road', 0, 1, '2021-09-08 22:13:23', '2021-09-08 22:13:23'),
(414, 0, 'Uttara Sector-4', 0, 1, '2021-09-08 22:13:35', '2021-09-08 22:13:35'),
(415, 0, 'Goaltek', 0, 1, '2021-09-08 22:13:47', '2021-09-08 22:13:47'),
(416, 0, 'Chalabon', 0, 1, '2021-09-08 22:13:58', '2021-09-08 22:13:58'),
(417, 0, 'Mollapara', 0, 1, '2021-09-08 22:14:10', '2021-09-08 22:14:10'),
(418, 0, 'Azampur (East) (Uttara)', 0, 1, '2021-09-08 22:14:23', '2021-09-08 22:14:23'),
(419, 0, 'Uttara Sector 5', 0, 1, '2021-09-08 22:14:48', '2021-09-08 22:14:48'),
(420, 0, 'Uttara Sector 14', 0, 1, '2021-09-08 22:15:00', '2021-09-08 22:15:00'),
(421, 0, 'Uttara Sector 3', 0, 1, '2021-09-08 22:15:21', '2021-09-08 22:15:21'),
(422, 0, 'Uttara Sector 7', 0, 1, '2021-09-08 22:15:37', '2021-09-08 22:15:37'),
(423, 0, 'Uttara Sector-9', 0, 1, '2021-09-08 22:15:57', '2021-09-08 22:15:57'),
(424, 0, 'Uttara Sector 11', 0, 1, '2021-09-08 22:16:11', '2021-09-08 22:16:11'),
(425, 0, 'Nalbhog', 0, 1, '2021-09-08 22:16:46', '2021-09-08 22:16:46'),
(426, 0, 'Azampur (West) (Uttara)', 0, 1, '2021-09-08 22:17:00', '2021-09-08 22:17:00'),
(427, 0, 'Phulbaria', 0, 1, '2021-09-08 22:17:16', '2021-09-08 22:17:16'),
(428, 0, 'Dhour', 0, 1, '2021-09-08 22:17:32', '2021-09-08 22:17:32'),
(429, 0, 'Bhatuliya', 0, 1, '2021-09-08 22:17:44', '2021-09-08 22:17:44'),
(430, 0, 'Bamnartek', 0, 1, '2021-09-08 22:17:57', '2021-09-08 22:17:57'),
(431, 0, 'Kallanpur', 0, 1, '2021-09-08 22:18:32', '2021-09-08 22:18:32'),
(432, 0, 'Lalkuthi', 0, 1, '2021-09-08 22:18:46', '2021-09-08 22:18:46'),
(433, 0, 'Tolarbag', 0, 1, '2021-09-08 22:19:19', '2021-09-08 22:19:19'),
(434, 0, 'Ahmed Nagar', 0, 1, '2021-09-08 22:19:53', '2021-09-08 22:19:53'),
(435, 0, 'Paikpara', 0, 1, '2021-09-08 22:20:05', '2021-09-08 22:20:05'),
(436, 0, 'Pirerbag', 0, 1, '2021-09-08 22:20:18', '2021-09-08 22:20:18'),
(437, 0, 'Ajiz Market', 0, 1, '2021-09-08 22:20:57', '2021-09-08 22:20:57'),
(438, 0, 'Aga Nagar', 0, 1, '2021-09-08 22:21:19', '2021-09-08 22:21:19'),
(439, 0, 'Babli Masjid', 0, 1, '2021-09-08 22:21:39', '2021-09-08 22:21:39'),
(440, 0, 'Kaderabad Housing', 0, 1, '2021-09-08 22:21:51', '2021-09-08 22:21:51'),
(441, 0, 'Kunia', 0, 1, '2021-09-08 22:22:14', '2021-09-08 22:22:14'),
(442, 0, 'Gacha', 0, 1, '2021-09-08 22:22:28', '2021-09-08 22:22:28'),
(443, 0, 'Boro Bari', 0, 1, '2021-09-08 22:22:41', '2021-09-08 22:22:41'),
(444, 0, 'Board Bazar', 0, 1, '2021-09-08 22:22:53', '2021-09-08 22:22:53'),
(445, 0, 'Kamarjuri', 0, 1, '2021-09-08 22:23:07', '2021-09-08 22:23:07'),
(446, 0, 'Dattapara', 0, 1, '2021-09-08 22:23:24', '2021-09-08 22:23:24'),
(447, 0, 'Ershadnagar', 0, 1, '2021-09-08 22:23:38', '2021-09-08 22:23:38'),
(448, 0, 'Sataish', 0, 1, '2021-09-08 22:23:50', '2021-09-08 22:23:50'),
(449, 0, 'Apollo', 0, 1, '2021-09-08 22:24:02', '2021-09-08 22:24:02'),
(450, 0, 'Nurer Chala', 0, 1, '2021-09-08 22:24:14', '2021-09-08 22:24:14'),
(451, 0, 'Bawaila Para', 0, 1, '2021-09-08 22:24:29', '2021-09-08 22:24:29'),
(452, 0, 'Satarkul', 0, 1, '2021-09-08 22:24:41', '2021-09-08 22:24:41'),
(453, 0, 'Buddho Mondir', 0, 1, '2021-09-08 22:25:03', '2021-09-08 22:25:03'),
(454, 0, 'Sipahibag', 0, 1, '2021-09-08 22:25:16', '2021-09-08 22:25:16'),
(455, 0, 'TT Para', 0, 1, '2021-09-08 22:25:31', '2021-09-08 22:25:31'),
(456, 0, 'Eastern Housing (Adabor)', 0, 1, '2021-09-08 22:25:46', '2021-09-08 22:25:46'),
(457, 0, 'Teskunipara', 0, 1, '2021-09-08 22:30:12', '2021-09-08 22:30:12'),
(458, 0, 'Dhaka Tenari More', 0, 1, '2021-09-08 22:30:44', '2021-09-08 22:30:44'),
(459, 0, 'Shahidnagar', 0, 1, '2021-09-08 22:30:57', '2021-09-08 22:30:57'),
(460, 0, 'Jhigatola', 0, 1, '2021-09-08 22:31:10', '2021-09-08 22:31:10'),
(461, 0, 'Polashi', 0, 1, '2021-09-08 22:31:22', '2021-09-08 22:31:22'),
(462, 0, 'Satmoshjid Road', 0, 1, '2021-09-08 22:31:38', '2021-09-08 22:31:38'),
(463, 0, 'Shukrabad', 0, 1, '2021-09-08 22:31:51', '2021-09-08 22:31:51'),
(464, 0, 'BNP Bazar', 0, 1, '2021-09-08 22:32:03', '2021-09-08 22:32:03'),
(465, 0, 'Kalachandpur', 0, 1, '2021-09-08 22:32:15', '2021-09-08 22:32:15'),
(466, 0, 'Jogonnathpur', 0, 1, '2021-09-08 22:32:28', '2021-09-08 22:32:28'),
(467, 0, 'Kuratuli', 0, 1, '2021-09-08 22:32:42', '2021-09-08 22:32:42'),
(468, 0, 'Alatunnessa School Road', 0, 1, '2021-09-08 22:32:54', '2021-09-08 22:32:54'),
(469, 0, 'Purbo Rampura', 0, 1, '2021-09-08 22:33:08', '2021-09-08 22:33:08'),
(470, 0, 'Bou Bazar', 0, 1, '2021-09-08 22:33:21', '2021-09-08 22:33:21'),
(471, 0, 'Chairman Goli', 0, 1, '2021-09-08 22:33:37', '2021-09-08 22:33:37'),
(472, 0, 'Confidence Tower', 0, 1, '2021-09-08 22:33:59', '2021-09-08 22:33:59'),
(473, 0, 'Fuji Trade Center', 0, 1, '2021-09-08 22:34:11', '2021-09-08 22:34:11'),
(474, 0, 'Khil Barirtek', 0, 1, '2021-09-08 22:34:27', '2021-09-08 22:34:27'),
(475, 0, 'Korail', 0, 1, '2021-09-08 22:34:42', '2021-09-08 22:34:42'),
(476, 0, 'Mahanogor', 0, 1, '2021-09-08 22:35:01', '2021-09-08 22:35:01'),
(477, 0, 'Nimtola', 0, 1, '2021-09-08 22:35:21', '2021-09-08 22:35:21'),
(478, 0, 'Nurerchala', 0, 1, '2021-09-08 22:35:36', '2021-09-08 22:35:36'),
(479, 0, 'Pastola Bazar', 0, 1, '2021-09-08 22:35:49', '2021-09-08 22:35:49'),
(480, 0, 'West Badda', 0, 1, '2021-09-08 22:38:46', '2021-09-08 22:38:46'),
(481, 0, 'East Badda', 0, 1, '2021-09-08 22:39:31', '2021-09-08 22:39:31'),
(482, 0, 'Sat-Tola Bazar', 0, 1, '2021-09-08 22:39:52', '2021-09-08 22:39:52'),
(483, 0, 'Shaheenbagh', 0, 1, '2021-09-08 22:40:06', '2021-09-08 22:40:06'),
(484, 0, 'Subastu', 0, 1, '2021-09-08 22:40:19', '2021-09-08 22:40:19'),
(485, 0, 'ICDDRB', 0, 1, '2021-09-08 22:40:50', '2021-09-08 22:40:50'),
(486, 0, 'Satrasta', 0, 1, '2021-09-08 22:41:03', '2021-09-08 22:41:03'),
(487, 0, 'Tekpara Adorsonagor', 0, 1, '2021-09-08 22:41:17', '2021-09-08 22:41:17'),
(488, 0, 'Uttar Badda', 0, 1, '2021-09-08 22:41:37', '2021-09-08 22:41:37'),
(489, 0, 'Wireless', 0, 1, '2021-09-08 22:41:53', '2021-09-08 22:41:53'),
(490, 0, 'Solmaid', 0, 1, '2021-09-08 22:42:05', '2021-09-08 22:42:05'),
(491, 0, '300 Feet', 0, 1, '2021-09-08 22:42:18', '2021-09-08 22:42:18'),
(492, 0, 'Mirhazirbagh', 0, 1, '2021-09-08 22:42:31', '2021-09-08 22:42:31'),
(493, 0, 'Mahut Tuli', 0, 1, '2021-09-08 22:43:19', '2021-09-08 22:43:19'),
(494, 0, 'Alubazar', 0, 1, '2021-09-08 22:43:31', '2021-09-08 22:43:31'),
(495, 0, 'Badam Toli', 0, 1, '2021-09-08 22:43:45', '2021-09-08 22:43:45'),
(496, 0, 'Chamelibag', 0, 1, '2021-09-08 22:43:57', '2021-09-08 22:43:57'),
(497, 0, 'Dholaikhal', 0, 1, '2021-09-08 22:44:09', '2021-09-08 22:44:09'),
(498, 0, 'Doyagonj', 0, 1, '2021-09-08 22:44:21', '2021-09-08 22:44:21'),
(499, 0, 'Farashgong', 0, 1, '2021-09-08 22:44:35', '2021-09-08 22:44:35'),
(500, 0, 'Dholpur', 0, 1, '2021-09-08 22:44:46', '2021-09-08 22:44:46'),
(501, 0, 'Kodomtoli(Keraniganj)', 0, 1, '2021-09-08 22:44:58', '2021-09-08 22:44:58'),
(502, 0, 'Kotwali (Puran Dhaka)', 0, 1, '2021-09-08 22:45:12', '2021-09-08 22:45:12'),
(504, 0, 'Rajar Dewri', 0, 1, '2021-09-08 22:45:44', '2021-09-08 22:45:44'),
(505, 0, 'Sat rowja', 0, 1, '2021-09-08 22:46:06', '2021-09-08 22:46:06'),
(506, 0, 'Tantibazar', 0, 1, '2021-09-08 22:46:18', '2021-09-08 22:46:18'),
(507, 0, 'Rosulbagh(Mohakhali)', 0, 1, '2021-09-08 22:46:30', '2021-09-08 22:46:30'),
(508, 0, 'Gopalpur', 0, 1, '2021-09-08 22:46:43', '2021-09-08 22:46:43'),
(509, 0, 'College Gate (Tongi),', 0, 1, '2021-09-08 22:46:56', '2021-11-08 14:25:20'),
(511, 0, 'Dhaka', 0, 1, '2021-11-19 14:49:09', '2021-11-19 14:49:09'),
(512, 0, 'Gazipur', 0, 1, '2021-11-19 14:49:15', '2021-11-19 14:49:15'),
(513, 0, 'Narayanganj', 0, 1, '2021-11-19 14:49:22', '2021-11-19 14:49:22'),
(514, 0, 'Faridpur', 0, 1, '2021-11-19 14:49:29', '2021-11-19 14:49:29'),
(515, 0, 'Gopalganj', 0, 1, '2021-11-19 14:49:36', '2021-11-19 14:49:36'),
(516, 0, 'Jamalpur', 0, 1, '2021-11-19 14:49:44', '2021-11-19 14:49:44'),
(517, 0, 'Kishoreganj', 0, 1, '2021-11-19 14:49:50', '2021-11-19 14:49:50'),
(518, 0, 'Madaripur', 0, 1, '2021-11-19 14:49:56', '2021-11-19 14:49:56'),
(519, 0, 'Manikganj', 0, 1, '2021-11-19 14:50:02', '2021-11-19 14:50:02'),
(520, 0, 'Munshiganj', 0, 1, '2021-11-19 14:50:09', '2021-11-19 14:50:09'),
(521, 0, 'Mymensingh', 0, 1, '2021-11-19 14:50:14', '2021-11-19 14:50:14'),
(522, 0, 'Norshingdi', 0, 1, '2021-11-19 14:50:21', '2021-11-19 14:50:21'),
(523, 0, 'Netrokona', 0, 1, '2021-11-19 14:50:34', '2021-11-19 14:50:34'),
(524, 0, 'Rajbari', 0, 1, '2021-11-19 14:50:40', '2021-11-19 14:50:40'),
(525, 0, 'Shariatpur', 0, 1, '2021-11-19 14:51:06', '2021-11-19 14:51:06'),
(526, 0, 'Sherpur', 0, 1, '2021-11-19 14:51:15', '2021-11-19 14:51:15'),
(527, 0, 'Tangail', 0, 1, '2021-11-19 14:51:27', '2021-11-19 14:51:27'),
(528, 0, 'Bagerhat', 0, 1, '2021-11-19 14:51:33', '2021-11-19 14:51:33'),
(529, 0, 'Chuadanga', 0, 1, '2021-11-19 14:51:46', '2021-11-19 14:51:46'),
(530, 0, 'Jessore', 0, 1, '2021-11-19 14:51:52', '2021-11-19 14:51:52'),
(531, 0, 'Jhenaidah', 0, 1, '2021-11-19 14:52:01', '2021-11-19 14:52:01'),
(532, 0, 'Khulna', 0, 1, '2021-11-19 14:52:09', '2021-11-19 14:52:09'),
(533, 0, 'Kushtia', 0, 1, '2021-11-19 14:52:15', '2021-11-19 14:52:15'),
(534, 0, 'Magura', 0, 1, '2021-11-19 14:52:27', '2021-11-19 14:52:27'),
(535, 0, 'Meherpur', 0, 1, '2021-11-19 14:53:05', '2021-11-19 14:53:05'),
(536, 0, 'Narail', 0, 1, '2021-11-19 14:53:11', '2021-11-19 14:53:11'),
(537, 0, 'Satkhira', 0, 1, '2021-11-19 14:53:17', '2021-11-19 14:53:17'),
(538, 0, 'Bogra', 0, 1, '2021-11-19 14:53:23', '2021-11-19 14:53:23'),
(539, 0, 'Chapai Nawabganj', 0, 1, '2021-11-19 14:53:30', '2021-11-19 14:53:30'),
(540, 0, 'Joypurhat', 0, 1, '2021-11-19 14:53:38', '2021-11-19 14:53:38'),
(541, 0, 'Naogaon', 0, 1, '2021-11-19 14:53:47', '2021-11-19 14:53:47'),
(542, 0, 'Natore', 0, 1, '2021-11-19 14:53:53', '2021-11-19 14:53:53'),
(543, 0, 'Pabna', 0, 1, '2021-11-19 14:54:00', '2021-11-19 14:54:00'),
(544, 0, 'Bandarban', 0, 1, '2021-11-19 14:54:30', '2021-11-19 14:54:30'),
(545, 0, 'Barguna', 0, 1, '2021-11-19 14:54:36', '2021-11-19 14:54:36'),
(546, 0, 'Barisal', 0, 1, '2021-11-19 14:54:41', '2021-11-19 14:54:41'),
(547, 0, 'Bhola', 0, 1, '2021-11-19 14:54:46', '2021-11-19 14:54:46'),
(548, 0, 'Brahmanbaria', 0, 1, '2021-11-19 14:54:51', '2021-11-19 14:54:51'),
(549, 0, 'Chandpur', 0, 1, '2021-11-19 14:55:02', '2021-11-19 14:55:02'),
(550, 0, 'Chittagong', 0, 1, '2021-11-19 14:55:08', '2021-11-19 14:55:08'),
(551, 0, 'Comilla', 0, 1, '2021-11-19 14:55:15', '2021-11-19 14:55:15'),
(552, 0, 'Cox\'s Bazar', 0, 1, '2021-11-19 14:55:21', '2021-11-19 14:55:21'),
(553, 0, 'Dinajpur', 0, 1, '2021-11-19 14:55:27', '2021-11-19 14:55:27'),
(554, 0, 'Feni', 0, 1, '2021-11-19 14:55:33', '2021-11-19 14:55:33'),
(555, 0, 'Gaibandha', 0, 1, '2021-11-19 14:55:39', '2021-11-19 14:55:39'),
(556, 0, 'Habiganj', 0, 1, '2021-11-19 14:55:46', '2021-11-19 14:55:46'),
(557, 0, 'Jhalokathi', 0, 1, '2021-11-19 14:55:51', '2021-11-19 14:55:51'),
(558, 0, 'Khagrachari', 0, 1, '2021-11-19 14:55:57', '2021-11-19 14:55:57'),
(559, 0, 'Kurigram', 0, 1, '2021-11-19 14:56:02', '2021-11-19 14:56:02'),
(560, 0, 'Laksmipur', 0, 1, '2021-11-19 14:56:09', '2021-11-19 14:56:09'),
(561, 0, 'Lalmonirhat', 0, 1, '2021-11-19 14:56:14', '2021-11-19 14:56:14'),
(562, 0, 'Moulvibazar', 0, 1, '2021-11-19 14:56:20', '2021-11-19 14:56:20'),
(563, 0, 'Nilphamari', 0, 1, '2021-11-19 14:56:26', '2021-11-19 14:56:26'),
(564, 0, 'Noakhali', 0, 1, '2021-11-19 14:56:33', '2021-11-19 14:56:33'),
(565, 0, 'Panchagarh', 0, 1, '2021-11-19 14:56:38', '2021-11-19 14:56:38'),
(566, 0, 'Patuakhali', 0, 1, '2021-11-19 14:56:44', '2021-11-19 14:56:44'),
(567, 0, 'Perojpur', 0, 1, '2021-11-19 14:56:51', '2021-11-19 14:56:51'),
(568, 0, 'Rajshahi', 0, 1, '2021-11-19 14:56:57', '2021-11-19 14:56:57'),
(569, 0, 'Rangamati', 0, 1, '2021-11-19 14:57:02', '2021-11-19 14:57:02'),
(570, 0, 'Rangpur', 0, 1, '2021-11-19 14:57:07', '2021-11-19 14:57:07'),
(571, 0, 'Sirajganj', 0, 1, '2021-11-19 14:57:12', '2021-11-19 14:57:12'),
(572, 0, 'Sunamganj', 0, 1, '2021-11-19 14:57:18', '2021-11-19 14:57:18'),
(573, 0, 'Sylhet', 0, 1, '2021-11-19 14:57:25', '2021-11-19 14:57:25'),
(574, 3, 'Thakurgaon', 30, 1, '2021-11-19 14:57:31', '2022-09-13 04:59:57'),
(575, 14, 'Wuse', 500, 1, '2022-09-13 17:18:35', '2022-09-13 17:18:35'),
(576, 15, 'Abule Egba (Agbado Ijaye Rd)', 2500, 1, '2022-09-13 18:17:10', '2022-09-13 18:17:10'),
(577, 15, 'Abule Egba (Ajasa Command Rd)', 2500, 1, '2022-09-13 18:18:48', '2022-09-13 18:18:48'),
(578, 15, 'Abule Egba (Ajegunle)', 2500, 1, '2022-09-13 18:20:34', '2022-09-13 18:20:34'),
(579, 15, 'Abule Egba (Alagbado)', 2500, 1, '2022-09-13 18:21:10', '2022-09-13 18:21:10'),
(580, 15, 'Abule Egba (Alakuko)', 2500, 1, '2022-09-13 18:21:56', '2022-09-13 18:21:56'),
(581, 15, 'Abule Egba (Ekoro Rd)', 2500, 1, '2022-09-13 18:25:51', '2022-09-17 23:07:28'),
(582, 15, 'Abule Egba (Meiran Rd)', 2500, 1, '2022-09-13 18:26:47', '2022-09-13 18:26:47'),
(583, 15, 'Abule Egba (New Oko Oba)', 2500, 1, '2022-09-13 18:27:28', '2022-09-13 18:27:28'),
(584, 15, 'Abule Egba (Old Otta Rd)', 2500, 1, '2022-09-13 18:28:19', '2022-09-13 18:28:19'),
(585, 15, 'Agbara', 3000, 1, '2022-09-13 18:47:46', '2022-09-13 18:48:01'),
(586, 15, 'Agege (Ajuwon Akute Rd)', 2500, 1, '2022-09-13 18:57:25', '2022-09-13 18:57:25'),
(587, 15, 'Agege (Dopemu)', 2500, 1, '2022-09-13 18:58:02', '2022-09-13 18:58:02'),
(588, 15, 'Agege (Iju Rd)', 2500, 1, '2022-09-13 18:58:34', '2022-09-13 18:58:34'),
(589, 15, 'Agege (Old Abeokuta Rd)', 2500, 1, '2022-09-13 18:59:46', '2022-09-13 18:59:46'),
(590, 15, 'Agege (Old Otta Rd)', 2500, 1, '2022-09-13 19:01:38', '2022-09-13 19:01:38'),
(591, 15, 'Agege (Orile Agege)', 2500, 1, '2022-09-13 19:02:11', '2022-09-13 19:02:11'),
(592, 15, 'Agiliti', 3500, 1, '2022-09-13 19:03:51', '2022-09-13 19:03:51'),
(593, 15, 'Ajao Estate', 1500, 1, '2022-09-13 19:05:56', '2022-09-13 19:05:56'),
(594, 15, 'Alfa Beach', 2000, 1, '2022-09-13 19:10:32', '2022-09-13 19:10:32'),
(595, 15, 'Amuwo', 2000, 1, '2022-09-13 19:13:42', '2022-09-13 19:13:42'),
(596, 15, 'Anthony Village', 1500, 1, '2022-09-13 19:14:51', '2022-09-13 19:14:51'),
(597, 15, 'Apapa (Ajegunle)', 1500, 1, '2022-09-13 19:17:00', '2022-09-13 19:17:00'),
(598, 15, 'Apapa (Amukoko)', 1000, 1, '2022-09-13 19:19:02', '2022-09-13 19:19:02'),
(599, 15, 'Apapa (GRA)', 1000, 1, '2022-09-13 19:19:45', '2022-09-13 19:19:45'),
(600, 15, 'Apapa (Kiri Kiri)', 1000, 1, '2022-09-13 19:21:20', '2022-09-13 19:21:20'),
(601, 15, 'Apapa (Olodi)', 1000, 1, '2022-09-13 19:21:57', '2022-09-13 19:21:57'),
(602, 15, 'Apapa (Suru Alaba)', 1500, 1, '2022-09-13 19:22:48', '2022-09-13 19:22:48'),
(603, 15, 'Apapa (Tincan)', 1000, 1, '2022-09-13 19:23:41', '2022-09-13 19:23:41'),
(604, 15, 'Apapa (Warf Rd)', 1000, 1, '2022-09-13 19:25:31', '2022-09-13 19:25:31'),
(605, 15, 'Awoyaya', 2500, 1, '2022-09-13 19:30:17', '2022-09-13 19:30:17'),
(606, 15, 'Awoyaya-Container Bus Stop', 2500, 1, '2022-09-13 19:31:26', '2022-09-13 19:31:26'),
(607, 15, 'Awoyaya-Eko Akete Estate', 2500, 1, '2022-09-13 19:31:58', '2022-09-13 19:31:58'),
(608, 15, 'Awoyaya-Eputu', 2500, 1, '2022-09-13 19:32:27', '2022-09-13 19:32:27'),
(609, 15, 'Awoyaya-Gbetu Iwerekun Rd', 2500, 1, '2022-09-13 19:33:38', '2022-09-13 19:33:38'),
(610, 15, 'Awoyaya-Idowu Eletu', 2500, 1, '2022-09-13 19:34:32', '2022-09-13 19:34:32'),
(611, 15, 'Awoyaya-Mayfair Gardens', 2500, 1, '2022-09-13 19:35:27', '2022-09-13 19:35:27'),
(612, 15, 'Awoyaya-Mayfair Gardens', 2500, 1, '2022-09-13 19:35:27', '2022-09-13 19:35:27'),
(613, 15, 'Awoyaya-Ogunlana Bus Stop', 2500, 1, '2022-09-13 19:35:49', '2022-09-13 19:35:49'),
(614, 15, 'Awoyaya-Ologunfe', 2500, 1, '2022-09-13 19:36:40', '2022-09-13 19:36:40'),
(615, 15, 'Awoyaya-Oribanwa', 2500, 1, '2022-09-13 19:38:02', '2022-09-13 19:38:02'),
(616, 15, 'Badagry', 3000, 1, '2022-09-13 19:39:26', '2022-09-13 19:39:26'),
(617, 15, 'Berger', 2000, 1, '2022-09-13 19:41:07', '2022-09-13 19:41:07'),
(618, 15, 'Bogije', 3000, 1, '2022-09-13 19:41:47', '2022-09-13 19:41:47'),
(619, 15, 'Coker', 1500, 1, '2022-09-13 19:44:22', '2022-09-13 19:44:22'),
(620, 15, 'Doyin', 2000, 1, '2022-09-13 19:46:12', '2022-09-13 19:46:12'),
(621, 15, 'Ejigbo', 2000, 1, '2022-09-13 19:49:12', '2022-09-13 19:49:12'),
(622, 15, 'Elemoro', 3000, 1, '2022-09-13 19:50:08', '2022-09-13 19:50:08'),
(623, 15, 'Epe', 5000, 1, '2022-09-13 19:51:20', '2022-09-13 19:51:20'),
(624, 15, 'Fagba (Iju Rd)', 2500, 1, '2022-09-13 20:00:31', '2022-09-13 20:00:31'),
(625, 15, 'Festac', 2000, 1, '2022-09-13 20:01:41', '2022-09-13 20:01:41'),
(626, 15, 'Gbagada', 1500, 1, '2022-09-13 20:02:41', '2022-09-13 20:02:41'),
(627, 15, 'Ibeju-Lekki-Aiyeteju', 3000, 1, '2022-09-13 20:05:00', '2022-09-13 20:05:00'),
(628, 15, 'Ibeju-Lekki-Akodo', 3000, 1, '2022-09-13 20:05:26', '2022-09-13 20:05:26'),
(629, 15, 'Ibeju-Lekki-Amen Estate', 3000, 1, '2022-09-13 20:05:53', '2022-09-13 20:05:53'),
(630, 15, 'Ibeju-Lekki-Dangote Fertilizer', 3000, 1, '2022-09-13 20:06:15', '2022-09-13 20:06:15'),
(631, 15, 'Ibeju-Lekki-Dangote Refinery', 3000, 1, '2022-09-13 20:06:37', '2022-09-13 20:06:37'),
(632, 15, 'Ibeju-Lekki-Dano Milk', 3000, 1, '2022-09-13 20:06:58', '2022-09-13 20:06:58'),
(633, 15, 'Ibeju-Lekki-Eleko Junction', 3000, 1, '2022-09-13 20:07:26', '2022-09-13 20:07:26'),
(634, 15, 'Ibeju-Lekki-Igando', 3000, 1, '2022-09-13 20:07:50', '2022-09-13 20:07:50'),
(635, 15, 'Ibeju-Lekki-Magbon', 3000, 1, '2022-09-13 20:08:35', '2022-09-13 20:08:35'),
(636, 15, 'Ibeju-Lekki-Onosa', 3000, 1, '2022-09-13 20:08:59', '2022-09-13 20:08:59'),
(637, 15, 'Ibeju-Lekki-Orimedu', 3000, 1, '2022-09-13 20:09:24', '2022-09-13 20:09:24'),
(638, 15, 'Ibeju-Lekki-Pan African University', 3000, 1, '2022-09-13 20:09:51', '2022-09-13 20:09:51'),
(639, 15, 'Ibeju-Lekki-Shapati', 3000, 1, '2022-09-13 20:10:48', '2022-09-13 20:10:48'),
(640, 15, 'Idimu', 2500, 1, '2022-09-13 20:12:44', '2022-09-13 20:12:44'),
(641, 15, 'Igando', 2500, 1, '2022-09-13 20:13:08', '2022-09-13 20:13:08'),
(642, 15, 'Ijanikin', 3000, 1, '2022-09-13 20:14:52', '2022-09-13 20:14:52'),
(643, 15, 'Ijegun-Ikotun', 2500, 1, '2022-09-13 20:16:26', '2022-09-13 20:16:26'),
(644, 15, 'Ijegun-Obadore Rd', 2500, 1, '2022-09-13 20:16:53', '2022-09-13 20:16:53'),
(645, 15, 'Ijora', 1000, 1, '2022-09-13 20:18:58', '2022-09-13 20:18:58'),
(646, 15, 'Ikorodu', 2000, 1, '2022-09-13 20:19:37', '2022-09-21 08:25:50'),
(647, 15, 'Ikota', 2000, 1, '2022-09-13 20:20:49', '2022-09-13 20:20:49'),
(648, 15, 'Ikotun', 2000, 1, '2022-09-13 20:21:33', '2022-09-13 20:21:33'),
(649, 15, 'Ikoyi', 1000, 1, '2022-09-13 20:21:56', '2022-09-13 20:21:56'),
(650, 15, 'Ilaje (Bariga)', 1500, 1, '2022-09-13 20:23:12', '2022-09-13 20:23:12'),
(651, 15, 'Ilupeju', 1500, 1, '2022-09-13 20:23:33', '2022-09-13 20:23:33'),
(652, 15, 'Isheri Ikotun', 2000, 1, '2022-09-13 20:28:48', '2022-09-13 20:28:48'),
(653, 15, 'Isheri Magodo', 2000, 1, '2022-09-13 20:29:27', '2022-09-13 20:29:27'),
(654, 15, 'Isolo', 1500, 1, '2022-09-13 20:30:04', '2022-09-13 20:30:04'),
(655, 15, 'Iyana Ejigbo', 2000, 1, '2022-09-13 20:30:32', '2022-09-13 20:30:32'),
(656, 15, 'Iyana Iba', 3000, 1, '2022-09-13 20:31:53', '2022-09-13 20:31:53'),
(657, 15, 'Iyana Ipaja', 3000, 1, '2022-09-13 20:32:22', '2022-09-13 20:32:22'),
(658, 15, 'Jakande (Isolo)', 2000, 1, '2022-09-13 20:35:23', '2022-09-13 20:35:23'),
(659, 15, 'Ketu', 1500, 1, '2022-09-13 20:36:19', '2022-09-13 20:36:19'),
(660, 15, 'Lagos Island', 0, 1, '2022-09-13 20:37:01', '2022-09-13 20:37:01'),
(661, 15, 'Lakowe', 3000, 1, '2022-09-13 20:37:44', '2022-09-13 20:37:44'),
(662, 15, 'Lekki-VGC', 2000, 1, '2022-09-13 20:38:13', '2022-09-13 20:38:13'),
(663, 15, 'Lekki Phase 1', 1000, 1, '2022-09-13 20:39:18', '2022-09-13 20:39:18'),
(664, 15, 'Lekki-Agungi', 1500, 1, '2022-09-13 20:40:46', '2022-09-13 20:40:46'),
(665, 15, 'Lekki-Ajah (Abijo)', 2500, 1, '2022-09-13 20:41:59', '2022-09-13 20:41:59'),
(666, 15, 'Lekki-Ajah (Addo Road)', 2000, 1, '2022-09-13 20:42:33', '2022-09-13 20:42:33');
INSERT INTO `nearestzones` (`id`, `state`, `zonename`, `extradeliverycharge`, `status`, `created_at`, `updated_at`) VALUES
(667, 15, 'Lekki-Ajah (Badore)', 2000, 1, '2022-09-13 20:43:06', '2022-09-13 20:43:06'),
(668, 15, 'Lekki-Ajah (Ilaje)', 2000, 1, '2022-09-13 20:43:30', '2022-09-13 20:43:30'),
(669, 15, 'Lekki-Ajah (Ilasan)', 2000, 1, '2022-09-13 20:44:55', '2022-09-13 20:44:55'),
(670, 15, 'Lekki-Ajah (Jakande)', 1500, 1, '2022-09-13 20:45:31', '2022-09-13 20:45:31'),
(671, 15, 'Lekki-Ajah (Sangotedo)', 2000, 1, '2022-09-13 20:46:14', '2022-09-13 20:46:14'),
(672, 15, 'Lekki-Chisco', 1500, 1, '2022-09-13 20:47:11', '2022-09-13 20:47:11'),
(673, 15, 'Lekki-Chevron Drive', 1500, 1, '2022-09-13 20:49:12', '2022-09-13 20:49:12'),
(674, 15, 'Lekki-Elf', 1500, 1, '2022-09-13 20:49:35', '2022-09-13 20:49:35'),
(675, 15, 'Lekki-Igboefon', 1500, 1, '2022-09-13 20:50:03', '2022-09-13 20:50:03'),
(676, 15, 'Lekki-Ikate Elegushi', 1500, 1, '2022-09-13 20:50:29', '2022-09-13 20:50:29'),
(677, 15, 'Lekki-Jakande (Kazeem Eletu)', 1500, 1, '2022-09-13 20:50:50', '2022-09-13 20:50:50'),
(678, 15, 'Lekki-Maruwa', 1500, 1, '2022-09-13 20:51:44', '2022-09-13 20:51:44'),
(679, 15, 'Lekki-Oniru Estate', 1500, 1, '2022-09-13 20:52:22', '2022-09-13 20:52:22'),
(680, 15, 'Lekki-Osapa London', 1500, 1, '2022-09-13 20:52:53', '2022-09-13 20:52:53'),
(681, 15, 'Magboro', 5000, 1, '2022-09-13 20:55:24', '2022-09-13 20:55:24'),
(682, 15, 'Magodo', 2000, 1, '2022-09-13 20:55:43', '2022-09-13 20:55:43'),
(683, 15, 'Marryland', 1500, 1, '2022-09-13 20:56:04', '2022-09-13 20:56:15'),
(684, 15, 'Mile 12', 2000, 1, '2022-09-13 20:56:54', '2022-09-13 20:56:54'),
(685, 15, 'Mile 2', 1500, 1, '2022-09-13 20:58:31', '2022-09-13 20:58:31'),
(686, 15, 'Mushin', 1500, 1, '2022-09-13 20:58:48', '2022-09-13 20:58:48'),
(687, 15, 'Ogba', 2000, 1, '2022-09-13 21:00:19', '2022-09-21 08:23:47'),
(688, 15, 'Ogudu', 1500, 1, '2022-09-13 21:01:32', '2022-09-13 21:01:32'),
(689, 15, 'Ojo', 3000, 1, '2022-09-13 21:01:57', '2022-09-13 21:01:57'),
(690, 15, 'Ojodu', 3000, 1, '2022-09-13 21:04:35', '2022-09-13 21:04:35'),
(691, 15, 'Ojokoro', 3500, 1, '2022-09-13 21:05:44', '2022-09-13 21:05:44'),
(692, 15, 'Ojota', 2000, 1, '2022-09-13 21:06:08', '2022-09-13 21:06:08'),
(693, 15, 'Okokomaiko', 3000, 1, '2022-09-13 21:08:41', '2022-09-13 21:08:41'),
(694, 15, 'Okota', 1500, 1, '2022-09-13 21:09:14', '2022-09-13 21:09:14'),
(695, 15, 'Oregun', 2000, 1, '2022-09-13 21:10:51', '2022-09-13 21:10:51'),
(696, 15, 'Orile', 1000, 1, '2022-09-13 21:11:13', '2022-09-13 21:11:13'),
(697, 15, 'Oshodi', 1500, 1, '2022-09-13 21:11:34', '2022-09-13 21:11:34'),
(698, 15, 'Palmgove-Onipanu', 1000, 1, '2022-09-13 21:12:07', '2022-09-21 08:22:48'),
(699, 15, 'Satelite Town', 2000, 1, '2022-09-13 21:12:31', '2022-09-13 21:12:31'),
(700, 15, 'Somolu', 1000, 1, '2022-09-13 21:12:53', '2022-09-21 08:23:09'),
(701, 15, 'Surulere', 1000, 1, '2022-09-13 21:13:16', '2022-09-21 08:22:23'),
(702, 15, 'Victoria Island', 500, 1, '2022-09-13 21:13:46', '2022-09-21 08:26:23'),
(703, 15, 'Yaba', 1000, 1, '2022-09-13 21:14:01', '2022-09-21 08:22:05'),
(704, 15, 'Ayoba', 2500, 1, '2022-09-19 09:18:50', '2022-09-19 09:18:50'),
(705, 15, 'Ikeja', 1000, 1, '2022-09-22 09:57:04', '2022-09-22 09:57:04'),
(706, 15, 'Matori', 1500, 1, '2022-09-23 10:53:59', '2022-09-23 10:53:59'),
(707, 15, 'Egbeda', 2000, 1, '2022-09-23 11:05:50', '2022-09-23 11:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint NOT NULL,
  `title` text NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `status`, `updated_at`) VALUES
(3, 'In Transit To Delivery Facility', 1, '2022-08-23 11:43:15'),
(4, 'Arrived Delivery Facility', 1, '2022-08-23 11:59:29'),
(5, 'Successfully Delivered', 1, '2022-08-23 12:08:47'),
(6, 'Partially Delivered', 1, '2022-09-01 17:22:50'),
(7, 'The Customer will take this parcel tomorrow.', 1, '2021-11-14 21:29:32'),
(8, 'Parcel returned to Merchant', 1, '2021-11-14 21:29:42'),
(9, 'Parcel returned to Hub', 1, '2021-11-14 21:29:50'),
(10, 'On the way to deliver!', 1, '2021-11-14 21:30:01'),
(11, 'Wrong Product! return Pending!', 1, '2021-11-14 21:31:02'),
(12, 'Ex-Change', 1, '2021-11-26 22:54:07'),
(13, 'Return Pending', 1, '2022-01-22 19:09:49'),
(14, 'Cancel by Customer', 1, '2022-01-22 19:08:30'),
(15, 'Customer Not Available in This Address', 1, '2022-01-22 19:09:31'),
(16, 'The customer has changed his mind', 1, '2022-01-22 19:07:17'),
(17, 'The customer has no money', 1, '2021-12-28 19:07:45'),
(18, 'Duplicate orders', 1, '2021-12-28 19:09:41'),
(20, 'Customer Did Not Like', 1, '2022-01-10 09:50:31'),
(22, 'Customer Mobile Number Switch Off', 1, '2022-01-22 19:06:49'),
(23, 'Item Did Not Size Customer', 1, '2022-09-21 07:24:22'),
(24, 'Customer Not Picking Call', 1, '2022-09-21 07:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `slug`, `text`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Eid-ul-adha Vaction Notice.', 'eid-ul-adha-vaction-notice.', 'For Details Click Here: https://www.facebook.com/', 1, '2021-11-03 11:23:20', '2021-11-17 22:22:44'),
(3, 'Offers', 'offers', 'test', 1, '2021-11-17 22:23:03', '2021-11-17 22:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `parcelnotes`
--

CREATE TABLE `parcelnotes` (
  `id` bigint UNSIGNED NOT NULL,
  `parcelId` int DEFAULT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parcelnotes`
--

INSERT INTO `parcelnotes` (`id`, `parcelId`, `note`, `created_at`, `updated_at`) VALUES
(1, 2, 'Ex-Change', '2022-08-21 05:49:04', '2022-08-21 05:49:04'),
(2, 1, 'The customer couldn\'t receive this Parcel today.', '2022-08-21 05:50:30', '2022-08-21 05:50:30'),
(3, 1, 'The Customer will take this parcel tomorrow.', '2022-08-21 05:53:16', '2022-08-21 05:53:16'),
(4, 3, 'In Transit To Delivery Facility', '2022-08-23 11:44:14', '2022-08-23 11:44:14'),
(5, 3, 'Arrived Delivery Facility', '2022-08-23 12:00:33', '2022-08-23 12:00:33'),
(6, 3, 'Arrived Delivery Facility', '2022-08-23 12:01:55', '2022-08-23 12:01:55'),
(7, 3, 'On the way to deliver!', '2022-08-23 12:03:44', '2022-08-23 12:03:44'),
(8, 4, 'In Transit To Delivery Facility', '2022-08-23 12:07:25', '2022-08-23 12:07:25'),
(9, 4, 'In Transit To Delivery Facility', '2022-08-23 12:09:39', '2022-08-23 12:09:39'),
(10, 3, 'Successfully Delivered', '2022-08-23 12:10:17', '2022-08-23 12:10:17'),
(11, 4, 'Arrived Delivery Facility', '2022-08-23 12:11:22', '2022-08-23 12:11:22'),
(12, 4, 'Successfully Delivered', '2022-08-24 16:06:58', '2022-08-24 16:06:58'),
(13, 4, 'Successfully Delivered', '2022-08-24 16:08:09', '2022-08-24 16:08:09'),
(14, 4, 'Successfully Delivered', '2022-08-25 09:45:59', '2022-08-25 09:45:59'),
(15, 4, 'Parcel delivered successfully', '2022-08-25 09:45:59', '2022-08-25 09:45:59'),
(16, 4, 'Your parcel Paid', '2022-08-25 20:23:35', '2022-08-25 20:23:35'),
(17, 3, 'Successfully Delivered', '2022-08-25 20:26:18', '2022-08-25 20:26:18'),
(18, 3, 'Parcel delivered successfully', '2022-08-25 20:26:18', '2022-08-25 20:26:18'),
(19, 3, 'Your parcel Collected amount from DA', '2022-08-25 20:28:45', '2022-08-25 20:28:45'),
(20, 5, 'Your parcel Picked', '2022-08-28 07:58:49', '2022-08-28 07:58:49'),
(21, 5, 'Successfully Delivered', '2022-08-28 08:01:18', '2022-08-28 08:01:18'),
(22, 5, 'Parcel delivered successfully', '2022-08-28 08:01:18', '2022-08-28 08:01:18'),
(23, 5, 'Your parcel Collected amount from DA', '2022-08-28 08:01:46', '2022-08-28 08:01:46'),
(24, 5, 'Your parcel Paid', '2022-08-28 08:02:56', '2022-08-28 08:02:56'),
(25, 3, 'Your parcel Paid', '2022-09-01 15:49:32', '2022-09-01 15:49:32'),
(26, 6, 'In Transit To Delivery Facility', '2022-09-01 16:00:34', '2022-09-01 16:00:34'),
(27, 6, 'Wrong Product! return Pending!', '2022-09-01 16:02:42', '2022-09-01 16:02:42'),
(28, 6, 'Your parcel Cancelled', '2022-09-01 16:05:00', '2022-09-01 16:05:00'),
(29, 8, 'In Transit To Delivery Facility', '2022-09-01 17:16:44', '2022-09-01 17:16:44'),
(30, 7, 'In Transit To Delivery Facility', '2022-09-01 17:17:07', '2022-09-01 17:17:07'),
(31, 8, 'Your parcel Awaiting', '2022-09-01 17:18:34', '2022-09-01 17:18:34'),
(32, 7, 'Your parcel Awaiting', '2022-09-01 17:19:30', '2022-09-01 17:19:30'),
(33, 8, 'Partially Delivered', '2022-09-01 17:34:08', '2022-09-01 17:34:08'),
(34, 8, 'Your parcel Paid', '2022-09-01 17:47:33', '2022-09-01 17:47:33'),
(35, 7, 'Your parcel Return To Merchant', '2022-09-01 18:38:38', '2022-09-01 18:38:38'),
(36, 7, 'Parcel returned to Merchant', '2022-09-01 18:39:52', '2022-09-01 18:39:52'),
(37, 7, 'Parcel returned to Merchant', '2022-09-02 04:35:16', '2022-09-02 04:35:16'),
(38, 9, 'In Transit To Delivery Facility', '2022-09-02 04:38:17', '2022-09-02 04:38:17'),
(39, 9, 'Your parcel Awaiting', '2022-09-02 04:42:17', '2022-09-02 04:42:17'),
(40, 9, 'Customer Not Available in This Address', '2022-09-02 04:43:44', '2022-09-02 04:43:44'),
(41, 9, 'Parcel returned to Merchant', '2022-09-02 04:46:29', '2022-09-02 04:46:29'),
(42, 7, 'agent change', '2022-09-12 23:57:49', '2022-09-12 23:57:49'),
(43, 7, 'Return To Merchant', '2022-09-13 00:18:14', '2022-09-13 00:18:14'),
(44, 7, 'note from agent', '2022-09-13 00:19:46', '2022-09-13 00:19:46'),
(45, 9, 'rider change', '2022-09-13 01:09:51', '2022-09-13 01:09:51'),
(46, 10, 'Return Pending', '2022-09-13 02:26:02', '2022-09-13 02:26:02'),
(47, 16, 'In Transit To Delivery Facility', '2022-09-13 21:20:39', '2022-09-13 21:20:39'),
(48, 16, NULL, '2022-09-13 21:32:02', '2022-09-13 21:32:02'),
(49, 18, 'Successfully Delivered', '2022-09-14 12:10:37', '2022-09-14 12:10:37'),
(50, 19, 'In Transit To Delivery Facility', '2022-09-14 17:32:43', '2022-09-14 17:32:43'),
(51, 19, 'Successfully Delivered', '2022-09-14 21:04:08', '2022-09-14 21:04:08'),
(52, 30, 'The Customer will take this parcel tomorrow.', '2022-09-18 08:59:39', '2022-09-18 08:59:39'),
(53, 29, NULL, '2022-09-18 09:05:20', '2022-09-18 09:05:20'),
(54, 26, 'Pickup Man Asign', '2022-09-18 12:24:54', '2022-09-18 12:24:54'),
(55, 32, 'The Customer will take this parcel tomorrow.', '2022-09-18 16:08:43', '2022-09-18 16:08:43'),
(56, 34, 'On the way to deliver!', '2022-09-19 07:24:06', '2022-09-19 07:24:06'),
(57, 32, 'On the way to deliver!', '2022-09-19 07:24:19', '2022-09-19 07:24:19'),
(58, 37, 'Cancel by Customer', '2022-09-19 10:59:42', '2022-09-19 10:59:42'),
(59, 42, 'Delivery Man Asign', '2022-09-19 11:09:02', '2022-09-19 11:09:02'),
(60, 35, 'Delivery Man Asign', '2022-09-19 11:10:03', '2022-09-19 11:10:03'),
(61, 45, 'Successfully Delivered', '2022-09-19 13:14:31', '2022-09-19 13:14:31'),
(62, 42, 'Successfully Delivered', '2022-09-19 13:44:18', '2022-09-19 13:44:18'),
(63, 21, 'On the way to deliver!', '2022-09-19 19:16:35', '2022-09-19 19:16:35'),
(64, 43, 'Customer Mobile Number Switch Off', '2022-09-20 05:58:52', '2022-09-20 05:58:52'),
(65, 44, 'Successfully Delivered', '2022-09-20 06:34:20', '2022-09-20 06:34:20'),
(66, 21, 'Successfully Delivered', '2022-09-20 12:18:40', '2022-09-20 12:18:40'),
(67, 47, 'On the way to deliver!', '2022-09-20 14:58:09', '2022-09-20 14:58:09'),
(68, 35, 'Successfully Delivered', '2022-09-21 07:18:40', '2022-09-21 07:18:40'),
(69, 39, 'Successfully Delivered', '2022-09-21 07:21:30', '2022-09-21 07:21:30'),
(70, 34, 'Cancel by Customer', '2022-09-21 07:22:34', '2022-09-21 07:22:34'),
(71, 36, 'Item Did Not Size Customer', '2022-09-21 07:24:54', '2022-09-21 07:24:54'),
(72, 43, 'The customer has no money', '2022-09-21 07:26:35', '2022-09-21 07:26:35'),
(73, 41, 'Customer Not Picking Call', '2022-09-21 07:28:04', '2022-09-21 07:28:04'),
(74, 38, 'Successfully Delivered', '2022-09-21 07:33:12', '2022-09-21 07:33:12'),
(75, 32, 'Customer Not Picking Call', '2022-09-21 07:33:47', '2022-09-21 07:33:47'),
(76, 41, 'Customer Not Picking Call', '2022-09-21 07:34:07', '2022-09-21 07:34:07'),
(77, 40, 'Customer Not Picking Call', '2022-09-21 07:36:36', '2022-09-21 07:36:36'),
(78, 41, 'Customer Not Picking Call', '2022-09-21 07:53:40', '2022-09-21 07:53:40'),
(79, 48, 'Delivery Man Asign', '2022-09-21 09:45:22', '2022-09-21 09:45:22'),
(80, 49, 'Successfully Delivered', '2022-09-21 10:11:35', '2022-09-21 10:11:35'),
(81, 48, 'Successfully Delivered', '2022-09-21 10:50:53', '2022-09-21 10:50:53'),
(82, 55, 'Delivery Man Asign', '2022-09-21 11:44:44', '2022-09-21 11:44:44'),
(83, 50, 'Delivery Man Asign', '2022-09-21 11:47:03', '2022-09-21 11:47:03'),
(84, 55, 'Successfully Delivered', '2022-09-21 14:08:19', '2022-09-21 14:08:19'),
(85, 56, 'Successfully Delivered', '2022-09-21 18:55:00', '2022-09-21 18:55:00'),
(86, 54, 'Successfully Delivered', '2022-09-21 18:55:30', '2022-09-21 18:55:30'),
(87, 53, 'The Customer will take this parcel tomorrow.', '2022-09-21 18:56:01', '2022-09-21 18:56:01'),
(88, 52, 'Successfully Delivered', '2022-09-21 18:56:21', '2022-09-21 18:56:21'),
(89, 51, 'Successfully Delivered', '2022-09-21 18:56:39', '2022-09-21 18:56:39'),
(90, 50, 'Successfully Delivered', '2022-09-21 18:57:09', '2022-09-21 18:57:09'),
(91, 57, 'Delivery Man Asign', '2022-09-22 12:20:38', '2022-09-22 12:20:38'),
(92, 58, 'Delivery Man Asign', '2022-09-22 12:21:13', '2022-09-22 12:21:13'),
(93, 60, 'Delivery Man Asign', '2022-09-22 12:36:00', '2022-09-22 12:36:00'),
(94, 64, 'Successfully Delivered', '2022-09-22 14:31:48', '2022-09-22 14:31:48'),
(95, 57, 'Successfully Delivered', '2022-09-22 14:32:39', '2022-09-22 14:32:39'),
(96, 62, 'Partially Delivered', '2022-09-22 18:13:57', '2022-09-22 18:13:57'),
(97, 58, 'Successfully Delivered', '2022-09-22 18:17:00', '2022-09-22 18:17:00'),
(98, 59, 'Successfully Delivered', '2022-09-22 18:17:33', '2022-09-22 18:17:33'),
(99, 53, 'Successfully Delivered', '2022-09-22 18:20:44', '2022-09-22 18:20:44'),
(100, 60, 'Successfully Delivered', '2022-09-22 19:01:39', '2022-09-22 19:01:39'),
(101, 63, 'The Customer will take this parcel tomorrow.', '2022-09-22 20:54:51', '2022-09-22 20:54:51'),
(102, 61, 'Successfully Delivered', '2022-09-22 20:56:42', '2022-09-22 20:56:42'),
(103, 67, 'Parcel returned to Merchant', '2022-09-23 10:57:39', '2022-09-23 10:57:39'),
(104, 68, 'Delivery Man Asign', '2022-09-23 12:06:18', '2022-09-23 12:06:18'),
(105, 69, 'Delivery Man Asign', '2022-09-23 12:58:40', '2022-09-23 12:58:40'),
(106, 71, 'Successfully Delivered', '2022-09-23 14:43:29', '2022-09-23 14:43:29'),
(107, 70, 'Successfully Delivered', '2022-09-23 14:43:54', '2022-09-23 14:43:54'),
(108, 69, 'Successfully Delivered', '2022-09-23 14:44:26', '2022-09-23 14:44:26'),
(109, 65, 'Successfully Delivered', '2022-09-23 20:15:48', '2022-09-23 20:15:48'),
(110, 72, 'Successfully Delivered', '2022-09-23 20:20:34', '2022-09-23 20:20:34'),
(111, 75, 'Customer Not Picking Call', '2022-09-23 21:08:12', '2022-09-23 21:08:12'),
(112, 73, 'Customer Not Available in This Address', '2022-09-23 21:08:38', '2022-09-23 21:08:38'),
(113, 68, 'Customer Not Picking Call', '2022-09-23 21:09:09', '2022-09-23 21:09:09'),
(114, 76, 'Successfully Delivered', '2022-09-23 21:10:10', '2022-09-23 21:10:10'),
(115, 74, 'Successfully Delivered', '2022-09-24 06:03:58', '2022-09-24 06:03:58'),
(116, 78, 'Successfully Delivered', '2022-09-24 06:41:07', '2022-09-24 06:41:07'),
(117, 77, 'Successfully Delivered', '2022-09-24 08:01:37', '2022-09-24 08:01:37'),
(118, 79, 'Successfully Delivered', '2022-09-24 09:40:04', '2022-09-24 09:40:04'),
(119, 81, 'Successfully Delivered', '2022-09-24 10:02:06', '2022-09-24 10:02:06'),
(120, 80, 'Successfully Delivered', '2022-09-24 10:03:24', '2022-09-24 10:03:24'),
(121, 82, 'Successfully Delivered', '2022-09-25 02:13:46', '2022-09-25 02:13:46'),
(122, 83, 'Successfully Delivered', '2022-09-25 02:16:14', '2022-09-25 02:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

CREATE TABLE `parcels` (
  `id` bigint UNSIGNED NOT NULL,
  `invoiceNo` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchantId` int DEFAULT NULL,
  `paymentInvoice` int DEFAULT NULL,
  `cod` int DEFAULT NULL,
  `merchantAmount` int NOT NULL,
  `merchantDue` int NOT NULL,
  `merchantpayStatus` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchantPaid` int NOT NULL DEFAULT '0',
  `recipientName` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipientAddress` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipientPhone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryCharge` int DEFAULT NULL,
  `codCharge` int DEFAULT NULL,
  `productPrice` int DEFAULT NULL,
  `deliverymanId` int DEFAULT NULL,
  `deliverymanAmount` int DEFAULT NULL,
  `dPayinvoice` int DEFAULT NULL,
  `deliverymanPaystatus` int DEFAULT NULL,
  `pickupmanId` int DEFAULT NULL,
  `agentId` int DEFAULT NULL,
  `agentAmount` int DEFAULT NULL,
  `aPayinvoice` int DEFAULT NULL,
  `agentPaystatus` int DEFAULT NULL,
  `productName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `productColor` text COLLATE utf8mb4_unicode_ci,
  `productQty` int DEFAULT NULL,
  `productWeight` int DEFAULT NULL,
  `trackingCode` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percelType` int DEFAULT NULL,
  `helpNumber` int DEFAULT NULL,
  `reciveZone` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderType` int DEFAULT NULL,
  `codType` int DEFAULT NULL,
  `payment_option` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parcels`
--

INSERT INTO `parcels` (`id`, `invoiceNo`, `merchantId`, `paymentInvoice`, `cod`, `merchantAmount`, `merchantDue`, `merchantpayStatus`, `merchantPaid`, `recipientName`, `recipientAddress`, `recipientPhone`, `note`, `deliveryCharge`, `codCharge`, `productPrice`, `deliverymanId`, `deliverymanAmount`, `dPayinvoice`, `deliverymanPaystatus`, `pickupmanId`, `agentId`, `agentAmount`, `aPayinvoice`, `agentPaystatus`, `productName`, `productColor`, `productQty`, `productWeight`, `trackingCode`, `percelType`, `helpNumber`, `reciveZone`, `orderType`, `codType`, `payment_option`, `status`, `created_at`, `updated_at`) VALUES
(32, NULL, 12, NULL, 0, 20259, 20259, NULL, 0, 'Peter Michael', 'Lagos Oribanwa', '09067086330', '1 Slide size 45', 3500, 0, NULL, 84, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Nike Benassi', 'Black', 1, 1, 'ZIDROP741568', 1, NULL, '615', 15, 1, 2, 8, '2022-09-18 16:04:16', '2022-09-21 07:33:47'),
(34, NULL, 12, NULL, 0, 40070, 40070, NULL, 0, 'Hamed Eletu', 'No 7 Efuntide Anike Crescent Oke-Afa', '08129220815', 'Sneakers 44', 2500, 0, NULL, 85, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nike Lunar', 'Green', 1, 1, 'ZIDROP457033', 1, NULL, '654', 15, 1, 2, 8, '2022-09-19 07:20:59', '2022-09-21 07:22:34'),
(35, NULL, 13, 8, 38000, 34620, 0, '1', 34620, 'Adophus Peter', 'Sunfit Hotel Festac', '09069400013', 'sneakers 44', 3000, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Diesel Sneakers', 'Blue', 1, 1, 'ZIDROP983242', 1, NULL, '625', 15, 1, 2, 4, '2022-09-19 09:02:57', '2022-09-22 18:26:30'),
(36, NULL, 13, NULL, 0, 95040, 95040, NULL, 0, 'Osakwe Ugochukwu', '25 Adele Street Apapa', '07030283263', '3 slippers', 2400, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nike slippers', 'Black', 3, 3, 'ZIDROP194886', 1, NULL, '600', 15, 1, 2, 8, '2022-09-19 09:05:32', '2022-09-21 07:24:54'),
(37, NULL, 13, NULL, 61000, 58000, 0, '1', 58610, 'Dele Bisiriyu', '5 Gafaru Street off Ijegun', '08091083406', '2 slides', 3000, 610, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gucci & Nike slides', 'Black', 2, 1, 'ZIDROP198540', 1, NULL, '648', 15, 1, 2, 9, '2022-09-19 09:07:43', '2022-09-19 10:59:42'),
(38, NULL, 13, 8, 31000, 27190, 0, '1', 27190, 'Ozimi Onome', '410 Lagos Abeokuta Exp. Way Awori Bus Stop, Karolynda Pharmacy', '08106398131', '2 belts', 3500, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belts', 'Brown & Black', 2, 1, 'ZIDROP220729', 1, NULL, '576', 15, 1, 2, 4, '2022-09-19 09:10:10', '2022-09-22 18:26:30'),
(39, NULL, 12, NULL, 39000, 35110, 0, '1', 35110, 'Akano Lateef', 'Shop E & F POWA shopping complex, off Fagbola Street,', '08087639392', '1 Sneakers', 3500, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nike MID', 'White', 1, 1, 'ZIDROP435535', 1, NULL, '586', 15, 1, 2, 4, '2022-09-19 09:14:16', '2022-09-23 10:26:30'),
(40, NULL, 12, NULL, 0, 35110, 35110, NULL, 0, 'Moses Olatuji', 'No 32 Ifelodun Alaja Road', '08162487927', 'sneakers 44', 3500, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nike MID', 'White', 1, 1, 'ZIDROP448594', 1, NULL, '704', 15, 1, 2, 8, '2022-09-19 09:21:30', '2022-09-21 07:36:36'),
(41, NULL, 14, NULL, 0, 34120, 34120, NULL, 0, 'Olayiwola Buhari', '6 Aribidara St. Peaceland Estate Oko Owo Gbaga Bus Stop off Ijede Road', '08024357729', '1 Sneakers size 45', 3500, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reebok Energy', 'White', 1, 1, 'ZIDROP493388', 1, NULL, '646', 15, 1, 2, 8, '2022-09-19 09:56:56', '2022-09-21 07:53:40'),
(42, NULL, 12, 6, 56000, 53440, 0, '1', 53440, 'Anthony Oneya', '10A Ilubirin Estate 2 Osborne Foreshore', '07065506551', '1 Jersey xxxl and 1 Slide 45', 2000, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jersey/Slide', 'Black', 1, 1, 'ZIDROP500311', 1, NULL, '649', 15, 1, 2, 4, '2022-09-19 10:11:21', '2022-09-22 19:26:43'),
(43, NULL, 13, NULL, 0, 39070, 39070, NULL, 0, 'Michael Abams', 'Oribanwa Phase 11', '09126343930', 'Nike Tracksuit  size L', 3500, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nike Tracksuit', 'Black', 1, 1, 'ZIDROP902456', 1, NULL, '605', 15, 1, 2, 8, '2022-09-19 10:16:55', '2022-09-21 07:26:35'),
(44, NULL, 14, 7, 43000, 40070, 0, '1', 40070, 'Bakere Sakiru', '37 Balee Street Igbo Efon Ajah', '08024401895', 'Tracksuit XL', 2500, 0, NULL, 82, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nike Tracksuit', 'White/Black', 1, 1, 'ZIDROP494386', 1, NULL, '675', 15, 1, 2, 4, '2022-09-19 11:17:13', '2022-09-21 19:15:26'),
(45, NULL, 15, NULL, 13000, 10870, 0, '1', 10870, 'Ejike Nwodo', 'Ikoyi Passport Office', '08032675561', 'Denin shirt', 2000, 0, NULL, 84, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Denim Shirt', 'Blue', 1, 1, 'ZIDROP847550', 1, NULL, '649', 15, 1, 2, 4, '2022-09-19 11:33:06', '2022-09-20 04:00:51'),
(48, NULL, 12, NULL, 48000, 46020, 0, '1', 46020, 'Vincent Dike', 'Plot 161C Raufu Taylor Close, Off Idejo Street', '08033024238', 'Roberto Cavalli 43', 1500, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Roberto Cavalli', 'Brown', 1, 1, 'ZIDROP646987', 1, NULL, '702', 15, 1, 2, 4, '2022-09-21 09:42:42', '2022-09-23 10:26:30'),
(49, NULL, 12, NULL, 48000, 46020, 0, '1', 46020, 'Ken Egbelughe', 'NTA Ahmed Bello Way', '08055216056', 'Roberto Cavalli 42', 1500, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Roberto Cavalli', 'Brown', 1, 1, 'ZIDROP698788', 1, NULL, '702', 15, 1, 2, 4, '2022-09-21 09:44:58', '2022-09-23 10:26:30'),
(50, NULL, 12, NULL, 0, 0, 0, '1', 0, 'Nicholas Drams', '16 TIGBEBE STREET OJOKORO IJAYE', '09037795579', '2 Shoes for Excahnge', 3500, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 Shoes for Excahnge', 'Green/White', 2, 1, 'ZIDROP743887', 1, NULL, '576', 15, 1, 1, 4, '2022-09-21 11:27:20', '2022-09-22 19:26:43'),
(51, NULL, 12, NULL, 82000, 0, 0, '1', 0, 'OLA SAMUEL', '14 AREGBESOLA STREET EKORO JUNCTION OKE ODO', '08066099807', '3 PAIRS OF SHOES', 2400, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3 PAIRS OF SHOES', 'Green/White', 3, 3, 'ZIDROP540590', 1, NULL, '703', 15, 1, 1, 4, '2022-09-21 11:29:31', '2022-09-22 19:26:43'),
(52, NULL, 12, NULL, 48000, 45000, 0, '1', 45000, 'MUSTAPHA YISA', '11B JOY AKUGBO CLOSE OPP. UNILAG ESTATE MAGODO ISHERI', '08032168432', 'Roberto Cavalli', 3000, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Roberto Cavalli', 'Black', 1, 1, 'ZIDROP906198', 1, NULL, '653', 15, 1, 2, 4, '2022-09-21 11:31:23', '2022-09-23 10:26:30'),
(53, NULL, 12, 9, 48000, 45000, 0, '1', 45000, 'TAIWO ADESINA', 'NO 8 IJAIYE ROAD BESIDE SAMSUNG OFFICE OGBA', '08062084431', 'Roberto Cavalli', 3000, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Roberto Cavalli', 'Brown', 1, 1, 'ZIDROP836646', 1, NULL, '687', 15, 1, 2, 4, '2022-09-21 11:33:22', '2022-09-22 19:26:43'),
(54, NULL, 12, NULL, 35000, 32000, 0, '1', 32000, 'MR FATAI', '23B JOHN OLANRELE ISHERI BLOCK 4 MAGODO PHASE 1', '08184706262', 'ZARA', 3000, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZARA', 'White/Black', 2, 1, 'ZIDROP402572', 1, NULL, '682', 15, 1, 2, 4, '2022-09-21 11:35:46', '2022-09-23 10:26:30'),
(55, NULL, 12, NULL, 31000, 29000, 0, '1', 29000, 'CHIEF HARRY', 'BANANA ISLAND IKOYI', '07034888267', 'JERSEY & SHORT', 2000, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JERSEY & SHORT', 'White/Black', 1, 1, 'ZIDROP291690', 1, NULL, '649', 15, 1, 2, 4, '2022-09-21 11:39:06', '2022-09-23 10:26:30'),
(56, NULL, 14, NULL, 39000, 37000, 0, '1', 37000, 'BUHARI MANI', 'TINCAN INLAND CUSTOMS COMMAND SECOND GATE APAPA', '08026542920', 'TRACKSUIT', 2000, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRACKSUIT', 'Black', 1, 1, 'ZIDROP441639', 1, NULL, '603', 15, 1, 2, 4, '2022-09-21 11:42:48', '2022-09-22 18:40:26'),
(57, NULL, 13, NULL, 46000, 44000, 0, '1', 44000, 'Mr Omisore', 'LEGEND HOTEL QUITS AVIATION SERVICES @ MURTALA MUHAMMED INTERNATIONAL AIRPORT', '08027860018', 'ZARA', 2000, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Zara', 'Black', 1, 1, 'ZIDROP254656', 1, NULL, '705', 15, 1, 2, 4, '2022-09-22 10:08:32', '2022-09-22 18:26:30'),
(58, NULL, 14, NULL, 76000, 73800, 0, '1', 73800, 'EBHOGIE DANIEL', 'ELEGANZE APAPA AQUARIUS BLOCK LAST FLOOR', '08032654820', 'TRACKSUIT & DIESEL SNEAKERS', 2200, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRACKSUIT & DIESEL SNEAKERS', 'Black', 1, 2, 'ZIDROP229912', 1, NULL, '601', 15, 1, 2, 4, '2022-09-22 10:11:26', '2022-09-24 06:16:06'),
(59, NULL, 12, 9, 38000, 35500, 0, '1', 35500, 'EMMANUEL MOEMEKE', '28 VITUS OKPALA STREET AJAO ESTATE', '08038847728', 'SNEAKERS SIZE 45', 2500, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DIESEL', 'white', 1, 1, 'ZIDROP512539', 1, NULL, '593', 15, 1, 2, 4, '2022-09-22 10:57:39', '2022-09-22 19:26:43'),
(60, NULL, 12, 9, 83000, 79800, 0, '1', 79800, 'CHAMBERLIN', '50 ABIMBOLA STREET SEASIDE ESTATE AJAH', '08069003148', 'Roberto Cavalli & NIKE ZOOM SIZE 44', 3200, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Roberto Cavalli & NIKE ZOOM', 'BROWN AND BLACK', 1, 2, 'ZIDROP950656', 1, NULL, '667', 15, 1, 2, 4, '2022-09-22 11:01:20', '2022-09-22 19:26:43'),
(61, NULL, 12, NULL, 48500, 48500, 0, '1', 45000, 'TEMITOPE BODUNDE', 'ALIMOSHO GENERAL HOSPITAL IGANDO/LASU EXPRESSWAY IGANDO', '09025053233', '3 PIECES OF POLO L,L,XL', 3500, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'POLOS', 'BLACK', 3, 1, 'ZIDROP266836', 1, NULL, '641', 15, 1, 2, 4, '2022-09-22 11:03:48', '2022-09-23 10:26:30'),
(62, NULL, 12, 9, 47000, 82000, 0, '1', 82000, 'Chief Justice', 'No 30 karimu street, Ojuelegba surulere', '07037944982', 'Sneakers size 46', 2200, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sneakers', 'Green/White', 2, 2, 'ZIDROP145680', 1, NULL, '701', 15, 1, 2, 6, '2022-09-22 11:24:08', '2022-09-22 18:13:57'),
(63, NULL, 12, NULL, 0, 0, 0, NULL, 0, 'Ade Israel', 'Magodo', '07037944982', 'Roberto Cavalli 46', 3000, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Roberto Cavalli', 'Green/White', 1, 1, 'ZIDROP138672', 1, NULL, '682', 15, 1, 1, 3, '2022-09-22 11:28:24', '2022-09-22 12:20:38'),
(64, NULL, 18, NULL, 19000, 17000, 0, '1', 17000, 'MR ABUBAKAR', 'DOVERS HOTEL IKEJA', '08065585929', 'POLO XL', 2000, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'POLO', 'Black', 1, 1, 'ZIDROP815128', 1, NULL, '705', 15, 1, 2, 4, '2022-09-22 11:51:43', '2022-09-22 18:26:30'),
(65, NULL, 19, NULL, 3500, 0, 0, NULL, 0, 'Peace', 'Badek filling station, Ayobo', '08147902120', 'A pair of shoe picked up for delivery', 3500, 0, NULL, 85, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Air Jordan', 'white', 1, 1, 'ZIDROP131851', 1, NULL, '704', 15, 1, 2, 4, '2022-09-22 13:36:12', '2022-09-23 20:15:48'),
(66, NULL, 18, NULL, 49000, 46600, 46600, NULL, 0, 'MR ABUBAKAR', 'DOVERS HOTEL IKEJA', '08065585929', 'Chinos & Polo', 2400, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chinos & Polo', 'Black', 3, 3, 'ZIDROP835784', 1, NULL, '705', 15, 1, 2, 1, '2022-09-23 10:33:00', '2022-09-23 10:33:00'),
(67, NULL, 12, NULL, 35000, 32000, 0, '1', 32000, 'OLAWALE ALEX', '38 ABEOKUTA STREET BY IRAWO BUS STOP', '08034800586', 'SLIDE 45', 3000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TOMFORD', 'GREEN', 1, 1, 'ZIDROP267369', 1, NULL, '646', 15, 1, 2, 9, '2022-09-23 10:45:24', '2022-09-23 10:57:39'),
(68, NULL, 12, NULL, 73000, 70800, 70800, NULL, 0, 'OLUSINA SONEKAN', 'HENKEL/EGIL ADDAS MALL 4TH FLOOR 8/10 HAKEEM BALOGUN STREET AGIGINGBI IKEJA', '08035312065', 'SLIDE & SHOE 44', 2200, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Roberto Cavalli & BERLUTI', 'Black', 2, 2, 'ZIDROP958546', 1, NULL, '705', 15, 1, 2, 3, '2022-09-23 10:47:54', '2022-09-23 12:06:18'),
(69, NULL, 12, 10, 48000, 46500, 0, '1', 46500, 'JONATHAN KAURA', 'EKO HOTEL VICTORIA ISLAND', '08035681565', 'SHOE 43', 1500, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Roberto Cavalli', 'BROWN', 1, 1, 'ZIDROP712903', 1, NULL, '702', 15, 1, 2, 4, '2022-09-23 10:50:29', '2022-09-23 14:44:26'),
(70, NULL, 12, 10, 38000, 35500, 0, '1', 35500, 'ALUKO ABAYOMI', 'FATAI ATERE WAY MATORI', '08067600524', 'SNEAKERS 43', 2500, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DIESEL', 'white', 1, 1, 'ZIDROP658767', 1, NULL, '706', 15, 1, 2, 4, '2022-09-23 10:55:34', '2022-09-23 14:43:54'),
(71, NULL, 12, 10, 2000, 0, 0, '1', 0, 'CHIEF HARRY', 'BANANA ISLAND IKOYI', '07034888267', 'JERSEY', 2000, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JERSEY', 'Black', 1, 1, 'ZIDROP318364', 1, NULL, '649', 15, 1, 2, 4, '2022-09-23 11:00:11', '2022-09-23 14:43:29'),
(72, NULL, 13, 11, 46000, 46000, 0, '1', 46000, 'MICHAEL ASABORO', 'SOPHIA COURT ALONG PALM SPRING ROAD IKATE', '07064542428', 'SLIDE 44', 2500, 0, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZARA', 'Black', 1, 1, 'ZIDROP660731', 1, NULL, '676', 15, 1, 2, 4, '2022-09-23 11:03:08', '2022-09-23 20:21:29'),
(73, NULL, 12, NULL, 38000, 35000, 35000, NULL, 0, 'ZUBAIRU ELAMAH', '4 DISU ALIMASHUN CLOSE OFF PONLE STREET EGBEDA', '07011177216', 'SNEAKERS 45', 3000, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DIESEL', 'white', 1, 1, 'ZIDROP159808', 1, NULL, '707', 15, 1, 2, 3, '2022-09-23 11:08:47', '2022-09-23 12:06:18'),
(74, NULL, 14, NULL, 38000, 35000, 0, '1', 35000, 'EMMAUEL UKPOMHAN', 'AJAH UNDER BRIDGE BY 6 AM 24/09/2022', '08031874100', 'SNEAKERS 43', 3000, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TOMMY SNEAKERS', 'White', 1, 1, 'ZIDROP966059', 1, NULL, '667', 15, 1, 2, 4, '2022-09-23 11:13:18', '2022-09-24 06:16:06'),
(75, NULL, 12, NULL, 95000, 92800, 92800, NULL, 0, 'Engr Sam', 'FAAN POWER HOUSE, MMIA OPPOSITE NEWREST ASL, International Airport, Ikeja', '09047710818', 'Shoes', 2200, 0, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shoes', 'Green/White', 2, 2, 'ZIDROP398440', 1, NULL, '705', 15, 1, 2, 3, '2022-09-23 11:58:05', '2022-09-23 12:06:17'),
(76, NULL, 12, 24, 43000, 40000, 0, '1', 40000, 'WALE AKINFOLARIN', '18 THOMAS SALAKO ST. OGBA BESIDE TANTERLIZER BY B/S', '08023086777', 'SNEAKERS 42', 3000, 0, NULL, 85, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AIR JORDAN', 'white', 1, 1, 'ZIDROP649706', 1, NULL, '687', 15, 1, 2, 4, '2022-09-23 12:10:22', '2022-09-23 21:10:10'),
(77, NULL, 12, 24, 82000, 79000, 0, '1', 79000, 'JOHNSON ADEYI', 'BLENCO SUPERMARKET SANGOTEDO', '08067168407', 'Roberto Cavalli & ZARA 44', 3000, 0, NULL, 85, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Roberto Cavalli & ZARA', 'Black', 2, 1, 'ZIDROP444311', 1, NULL, '671', 15, 1, 2, 4, '2022-09-23 15:10:27', '2022-09-24 08:01:37'),
(80, NULL, 2, NULL, 20000, 16500, 0, '1', 16500, 'Newton', '2\r\nAustin Ogbogbe Street, Destiny Homes Estate', '08076909835', 'hhhh', 3500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NKE Dunk Low Disrupt 2', 'white', 1, 1, 'ZIDROP293136', 1, NULL, '576', 15, 1, 2, 4, '2022-09-24 09:59:49', '2022-09-25 02:16:30'),
(81, NULL, 2, NULL, 10000, 6500, 0, '1', 6500, 'test2', '2\r\nAustin Ogbogbe Street, Destiny Homes Estate', '08076909835', 'jjk', 3500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NKE Dunk Low Disrupt 2', 'Blue', 1, 1, 'ZIDROP978973', 1, NULL, '576', 15, 1, 2, 4, '2022-09-24 10:01:42', '2022-09-24 10:04:00'),
(82, NULL, 2, NULL, 10000, 6900, 0, '1', 6900, 'Contrary to popular', '12', '678', '12', 3000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1212', '12', 1, 1, 'ZIDROP527055', 1, NULL, '575', 14, 1, 2, 4, '2022-09-25 02:13:03', '2022-09-25 02:35:31'),
(83, NULL, 2, NULL, 20000, 16800, 0, '1', 16800, 'Mr. Alexgender Flex', '12', '678', '45', 3000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1212', '1', 1, 1, 'ZIDROP256012', 1, NULL, '575', 14, 1, 2, 4, '2022-09-25 02:15:26', '2022-09-25 02:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `parceltypes`
--

CREATE TABLE `parceltypes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parceltypes`
--

INSERT INTO `parceltypes` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', NULL, NULL),
(2, 'Picked', 'picked', NULL, NULL),
(3, 'Awaiting', 'awaiting', NULL, NULL),
(4, 'Delivered', 'deliverd', NULL, NULL),
(5, 'Hold', 'hold', NULL, NULL),
(6, 'Partial Delivery', 'partial-delivery', NULL, NULL),
(7, 'Return To Hub', 'return-to-hub', NULL, NULL),
(8, 'Return To Merchant', 'return-to-merchant', NULL, NULL),
(9, 'Cancelled', 'cancelled', NULL, NULL),
(10, 'Collected amount from DA', 'Collected-amount-from-DA', NULL, NULL),
(11, 'Paid', 'paid', '2021-08-16 22:02:26', '2021-08-16 22:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/partner/Logo (2).png', 1, '2021-11-06 11:02:24', '2022-08-24 22:50:47'),
(2, 'uploads/partner/polob.png', 1, '2021-11-06 11:03:03', '2022-08-24 22:51:13'),
(3, 'uploads/partner/sad.png', 1, '2021-11-06 18:19:07', '2022-08-24 23:01:34'),
(4, 'uploads/partner/Slaylogo_1.png', 1, '2021-11-06 18:19:29', '2022-08-23 19:25:02'),
(5, 'uploads/partner/tnk.png', 1, '2021-11-06 18:19:59', '2022-08-24 23:00:42'),
(6, 'uploads/partner/ZicoLogo.png', 1, '2021-11-06 19:03:12', '2022-08-24 22:56:23'),
(7, 'uploads/partner/jk.png', 1, '2021-11-06 19:03:27', '2022-08-24 23:02:09'),
(8, 'uploads/partner/officeSleek_logo_final.png', 1, '2021-11-17 22:26:30', '2022-08-24 22:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` bigint UNSIGNED NOT NULL,
  `pickuptype` tinyint NOT NULL,
  `date` date NOT NULL,
  `pickupAddress` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchantId` int NOT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimedparcel` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` int DEFAULT NULL,
  `agent` int DEFAULT NULL,
  `deliveryman` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `image`, `price`, `name`, `text`, `status`, `created_at`, `updated_at`) VALUES
(43, 'uploads/price/Untitled design (11).png', '1500', 'Inside Lagos  City', '<p>Delivery Timeline - 24 Hours</p><p>After 1 KG, N200&nbsp;will be added per KG</p><p><strong>1% COD charge</strong></p><p><strong>No return charge</strong></p>', 1, '2021-10-02 21:21:14', '2022-09-14 20:48:27'),
(44, 'uploads/price/Untitled design (12).png', '3000', 'Lagos Suburb', '<p>Delivery Timeline - 48 Hours&nbsp;</p><p>After 1 KG, N200&nbsp;will be added per KG</p><p><strong>1% COD charge</strong></p><p><strong>Return charge - Yes</strong></p>', 1, '2021-10-02 21:23:03', '2022-09-14 20:49:28'),
(45, 'uploads/price/Untitled design (13).png', '2500', 'Outside Lagos', '<p>Delivery Timeline - 3 to 7 working&nbsp;Days</p><p>After 1 KG, N400&nbsp;will be added per KG</p><p><strong>1% COD charge</strong></p><p><strong>Return charge - Yes</strong></p>', 1, '2021-10-02 21:24:15', '2022-09-14 20:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `remain_topups`
--

CREATE TABLE `remain_topups` (
  `id` bigint UNSIGNED NOT NULL,
  `parcel_id` bigint UNSIGNED NOT NULL,
  `parcel_status` int NOT NULL,
  `merchant_id` bigint UNSIGNED NOT NULL,
  `amount` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `remain_topups`
--

INSERT INTO `remain_topups` (`id`, `parcel_id`, `parcel_status`, `merchant_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 18, 1, 2, 2000, '2022-09-14 12:00:30', '2022-09-14 12:00:30'),
(2, 50, 1, 12, 3500, '2022-09-21 11:27:20', '2022-09-21 11:27:20'),
(3, 51, 1, 12, 2400, '2022-09-21 11:29:31', '2022-09-21 11:29:31'),
(4, 63, 1, 12, 3000, '2022-09-22 11:28:24', '2022-09-22 11:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', NULL, NULL),
(2, 'Admin', NULL, NULL),
(3, 'Editor', NULL, NULL),
(4, 'Author', '2021-11-01 13:42:23', '2021-11-01 13:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `image`, `title`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fa-home', 'uploads/service/home-delivery-typography-with-delivery-man-vector-30910204.jpg', 'Home Delivery', 'Door to door delivery is a convenient way for you to stay free of arrangement with the shipment. Want to send your grandmother a handmade gift? This service is the best for you!', 1, '2020-12-30 09:12:43', '2022-08-30 21:25:17'),
(2, 'fa-bicycle', 'uploads/service/ezgif.com-gif-maker (25).jpg', 'Pick and Drop', 'Delivering your product from a destination to another as it would be stated, quickly!', 1, '2020-12-30 09:13:02', '2022-08-30 21:31:19'),
(3, 'fa-hospital-o', 'uploads/service/service.jpg', 'Warehousing', 'We have warehouse facilities to store your parcel for a limited time, so we can courier it to your destination as soon as possible!', 0, '2020-12-30 09:13:20', '2022-08-30 07:08:23'),
(4, 'fa-handshake-o', 'uploads/service/Kelebihan-Vs-Kekurangan-Sistem-Cash-On-Delivery-COD.jpg', 'Cash on Delivery', 'We offer Cash-On-Delivery services Nationwide with prompt weekly remittance of settlements to merchants.\r\nOur delivery application offers transparency on all transactions, as you are able to view and audit all\r\nyour packages.', 1, '2020-12-30 09:13:36', '2022-08-30 21:14:27'),
(5, 'fa-cogs', 'uploads/service/New-delivery-services-pop-up-amid-social-distancing-era.jpg', 'Logistics Services', 'We offer reliable and economic \r\nEnd-To-End logistics solution. \r\nWe have the ability to tap into an\r\nextensive network of services and solutions\r\nto meet your unique needs.', 1, '2021-02-15 06:12:20', '2022-08-30 21:15:35'),
(6, 'fa-mobile', 'uploads/service/service.jpg', 'Dhaka Metro', 'The best and the fastest local courier service on the market!', 0, '2021-02-15 06:12:43', '2022-08-30 07:08:04'),
(7, 'fa-rocket', 'uploads/service/courier-deliver-package-to-customer-in-home-village-with-truck-courier-delivery-service-express-concept-in-cartoon-flat-illustration-vector.jpg', 'Online Booking', 'Our service can be totally handled online , nobody needs to leave their house to deliver products . Click the button and your products will be delivered, with full tracking experience!', 1, '2021-02-15 06:13:14', '2022-08-31 03:32:00'),
(8, 'fa-cutlery', 'uploads/service/service.jpg', 'Food Delivery', 'L O D D I N G ! ! !', 0, '2021-02-15 06:13:44', '2022-08-30 07:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

CREATE TABLE `socialmedia` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialmedia`
--

INSERT INTO `socialmedia` (`id`, `name`, `icon`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'fa fa-facebook', '#', 1, '2021-01-17 08:17:14', '2022-08-23 19:58:38'),
(4, 'Instagram', 'fa fa-instagram', '#', 1, '2021-08-22 08:34:19', '2022-08-23 19:58:54'),
(5, 'Twitter', 'fa fa-twitter', '#', 1, '2021-11-16 21:33:32', '2022-08-23 19:59:06'),
(6, 'Linkedin', 'fa fa-linkedin', '#', 1, '2021-11-16 21:34:01', '2022-08-23 19:59:19'),
(7, 'Pinterest', 'fa fa-pinterest', '#', 1, '2021-11-16 21:34:31', '2022-08-23 19:59:32'),
(8, 'Youtube', 'fa fa-youtube', '#', 1, '2021-11-16 21:35:01', '2022-08-23 19:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `topups`
--

CREATE TABLE `topups` (
  `id` bigint UNSIGNED NOT NULL,
  `merchant_id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topups`
--

INSERT INTO `topups` (`id`, `merchant_id`, `email`, `mobile`, `amount`, `reference`, `status`, `channel`, `currency`, `created_at`, `updated_at`) VALUES
(1, 2, 'umejiaku87@yahoo.com', '0147896325', '20', 'Zi_7494_83491369_61452', 'success', 'card', 'NGN', '2022-08-24 15:58:00', '2022-08-24 15:58:00'),
(2, 2, 'umejiaku87@yahoo.com', '0147896325', '500', 'Zi_4196_48455994_92041', 'success', 'card', 'NGN', '2022-08-24 22:37:59', '2022-08-24 22:37:59'),
(3, 2, 'umejiaku87@yahoo.com', '0147896325', '400', 'Zi_8384_85603483_94670', 'success', 'card', 'NGN', '2022-08-24 22:39:41', '2022-08-24 22:39:41'),
(4, 2, 'umejiaku87@yahoo.com', '0147896325', '300', 'Zi_4739_11516167_72871', 'success', 'card', 'NGN', '2022-08-24 22:41:29', '2022-08-24 22:41:29'),
(5, 2, 'umejiaku87@yahoo.com', '08032968501', '350', 'Zi_6953_7987720_76827', 'success', 'card', 'NGN', '2022-08-25 13:14:15', '2022-08-25 13:14:15'),
(6, 2, 'umejiaku87@yahoo.com', '08032968501', '150', 'Zi_7076_64166497_43054', 'success', 'card', 'NGN', '2022-08-25 16:40:16', '2022-08-25 16:40:16'),
(7, 2, 'umejiaku87@yahoo.com', '08032968501', '110', 'Zi_5932_35206505_12556', 'success', 'card', 'NGN', '2022-08-26 07:09:35', '2022-08-26 07:09:35'),
(8, 2, 'estherebosie@gmail.com', '0803 296 8501', '25', 'Zi_7484_52785864_95341', 'success', 'card', 'NGN', '2022-08-27 09:28:58', '2022-08-27 09:28:58'),
(9, 2, 'umejiaku87@yahoo.com', '08032968501', '200', 'Zi_7219_26811352_17117', 'success', 'card', 'NGN', '2022-09-14 10:35:16', '2022-09-14 10:35:16'),
(10, 5, 'iheanachoracheal60@gmail.com', '09127593511', '500', 'Zi_7600_65539580_33821', 'success', 'bank_transfer', 'NGN', '2022-09-14 13:14:31', '2022-09-14 13:14:31'),
(11, 2, 'umejiaku87@yahoo.com', '08032968501', '500', 'Zi_8602_73516935_85372', 'success', 'card', 'NGN', '2022-09-18 13:40:22', '2022-09-18 13:40:22'),
(12, 8, 'slaywears1@yahoo.com', '07069733310', '200', 'Zi_6328_72783376_18298', 'success', 'card', 'NGN', '2022-09-18 15:46:43', '2022-09-18 15:46:43'),
(13, 12, 'christianumejiaku@gmail.com', '08100520581', '10000', 'Zi_4899_35927836_61904', 'success', 'card', 'NGN', '2022-09-18 19:00:57', '2022-09-18 19:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `role_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public/avatar/avatar.png',
  `status` tinyint NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `phone`, `designation`, `password`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 1, 'superadmin', 'User01', 'superadmin@gmail.com', '+8801877100001', 'CEO', '$2y$10$4STdZ3YxAx6PTipYmFQZ5ODS3F4Qer9QcavYP4wtaiEI2cFzLfj4u', 'avatar/avatar.png', 0, NULL, NULL, '2022-05-25 21:32:44'),
(27, 1, 'Zidrop', 'zidrop', 'umejiaku87@yahoo.com', '08076909835', 'Managing Director', '$2y$10$6IZU.xUpEuv7RuX6N45OL.MDsF4tETENOlDICsmOeV3f1wsZD/k4e', 'uploads/user/1661675026272428556_142700968170932_6266831985706492592_n.jpg', 1, NULL, '2022-08-23 11:21:24', '2022-08-28 07:23:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agentpayments`
--
ALTER TABLE `agentpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agents_email_unique` (`email`),
  ADD UNIQUE KEY `agents_phone_unique` (`phone`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientfeedbacks`
--
ALTER TABLE `clientfeedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codcharges`
--
ALTER TABLE `codcharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverycharges`
--
ALTER TABLE `deliverycharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverymanpayments`
--
ALTER TABLE `deliverymanpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverymen`
--
ALTER TABLE `deliverymen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deliverymen_email_unique` (`email`),
  ADD UNIQUE KEY `deliverymen_phone_unique` (`phone`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disclamers`
--
ALTER TABLE `disclamers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD UNIQUE KEY `employees_phone_unique` (`phone`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchantcharges`
--
ALTER TABLE `merchantcharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchantpayments`
--
ALTER TABLE `merchantpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nearestzones`
--
ALTER TABLE `nearestzones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcelnotes`
--
ALTER TABLE `parcelnotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcels`
--
ALTER TABLE `parcels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parceltypes`
--
ALTER TABLE `parceltypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remain_topups`
--
ALTER TABLE `remain_topups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialmedia`
--
ALTER TABLE `socialmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topups`
--
ALTER TABLE `topups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agentpayments`
--
ALTER TABLE `agentpayments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clientfeedbacks`
--
ALTER TABLE `clientfeedbacks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `codcharges`
--
ALTER TABLE `codcharges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliverycharges`
--
ALTER TABLE `deliverycharges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `deliverymanpayments`
--
ALTER TABLE `deliverymanpayments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deliverymen`
--
ALTER TABLE `deliverymen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `disclamers`
--
ALTER TABLE `disclamers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `merchantcharges`
--
ALTER TABLE `merchantcharges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `merchantpayments`
--
ALTER TABLE `merchantpayments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `nearestzones`
--
ALTER TABLE `nearestzones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=708;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parcelnotes`
--
ALTER TABLE `parcelnotes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `parcels`
--
ALTER TABLE `parcels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `remain_topups`
--
ALTER TABLE `remain_topups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `socialmedia`
--
ALTER TABLE `socialmedia`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `topups`
--
ALTER TABLE `topups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
